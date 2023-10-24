Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB7C7D5076
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A69D10E38F;
	Tue, 24 Oct 2023 12:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1251810E38F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:56:50 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1698152207;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0k8EHTgBuYIMb5TY+j+PPtTNGdHZXI6Ls9DQ9MAsNmk=;
 b=rLBcBr8dvCVZuquAzh672WEPpfBrFWcikNj5FTfBv9PZnSF3iMSIWacvbOCZgMnEDajR3z
 GfmwbayApVpSZChqvv8adT2Mcenm5s4bNnh8KprmpziVvtXgZCoZUdC2xyMdFZTzTFGkbg
 mBjyJ2qaFhWJVKQhx2bNwFm/UQd9XCRZyC0f0MYf1GDVqLHlToLAyvTZOcIbJoQ0khNjzq
 12PPHQtWB0yY7tRqjqGfnncDkxEoY/DBluzkn7QFAF5KhSMLvzXqW6AbhKtbp/9Gx8bKVm
 jab0H2JIALcE4ADMf7Rcfzy44VhzYPyZW3SXGn1DPzsvFa97Slm14+/TwooUMw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1698152207;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0k8EHTgBuYIMb5TY+j+PPtTNGdHZXI6Ls9DQ9MAsNmk=;
 b=HxurSiTuKO2wgC3txgFea08jZZeAAJs30rR0Ke9IgRU24WtZGATMAAdfbbvR7s2lDkpLTQ
 GnYhPtF3hQn+XxCQ==
To: Andrzej Hajda <andrzej.hajda@intel.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org
In-Reply-To: <20230925131359.2948827-1-andrzej.hajda@intel.com>
References: <20230925131359.2948827-1-andrzej.hajda@intel.com>
Date: Tue, 24 Oct 2023 14:56:47 +0200
Message-ID: <874jigch68.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] debugobjects: stop accessing objects
 after releasing spinlock
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 25 2023 at 15:13, Andrzej Hajda wrote:
> @@ -620,9 +620,8 @@ static void debug_objects_fill_pool(void)
>  static void
>  __debug_object_init(void *addr, const struct debug_obj_descr *descr, int onstack)
>  {
> -	enum debug_obj_state state;
>  	struct debug_bucket *db;
> -	struct debug_obj *obj;
> +	struct debug_obj *obj, o;
>  	unsigned long flags;
>  
>  	debug_objects_fill_pool();
> @@ -644,23 +643,19 @@ __debug_object_init(void *addr, const struct debug_obj_descr *descr, int onstack
>  	case ODEBUG_STATE_INACTIVE:
>  		obj->state = ODEBUG_STATE_INIT;
>  		break;
> -
> -	case ODEBUG_STATE_ACTIVE:
> -		state = obj->state;
> -		raw_spin_unlock_irqrestore(&db->lock, flags);
> -		debug_print_object(obj, "init");
> -		debug_object_fixup(descr->fixup_init, addr, state);
> -		return;
> -
> -	case ODEBUG_STATE_DESTROYED:
> -		raw_spin_unlock_irqrestore(&db->lock, flags);
> -		debug_print_object(obj, "init");
> -		return;
>  	default:
> -		break;
> +		o = *obj;
> +		obj = NULL;
>  	}
>  
>  	raw_spin_unlock_irqrestore(&db->lock, flags);
> +
> +	if (obj)
> +		return;

Hmm. I'd rather write is this way:

 	case ODEBUG_STATE_INIT:
 	case ODEBUG_STATE_INACTIVE:
 		obj->state = ODEBUG_STATE_INIT;
 		raw_spin_unlock_irqrestore(&db->lock, flags);
 		return;
 	default:
 		break;
 	}
 
	o = *obj;
 	raw_spin_unlock_irqrestore(&db->lock, flags);

	debug_print_object(&o, "init");
	if (o.state == ODEBUG_STATE_ACTIVE)
		debug_object_fixup(descr->fixup_init, addr, o.state);

This spares the 'obj' pointer modification and the conditional. The
extra raw_spin_unlock_irqrestore() is not the end of the world.

>  void debug_object_activate(void *addr, const struct debug_obj_descr *descr)
...
>  		default:
> -			ret = 0;
>  			break;
>  		}
> -		raw_spin_unlock_irqrestore(&db->lock, flags);
> -		if (print_object)
> -			debug_print_object(obj, "activate");
> -		return ret;
> +	} else {
> +		o.object = addr;
> +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> +		o.descr = descr;
> +		obj = NULL;

Hrmm. Just keep the

	struct debug_obj o = { .object = addr, .state = ODEBUG_STATE_NOTAVAILABLE, .descr = descr };

around and get rid of this else clause.

>  	}
>  
>  	raw_spin_unlock_irqrestore(&db->lock, flags);
>  
> -	/* If NULL the allocation has hit OOM */
> -	if (!obj) {
> -		debug_objects_oom();
> +	if (obj)
>  		return 0;

Plus a similar change as above to get rid of this conditional and just
have the failure path here.

> @@ -788,30 +777,29 @@ void debug_object_deactivate(void *addr, const struct debug_obj_descr *descr)
>  		case ODEBUG_STATE_INIT:
>  		case ODEBUG_STATE_INACTIVE:
>  		case ODEBUG_STATE_ACTIVE:
> -			if (!obj->astate)
> +			if (!obj->astate) {
>  				obj->state = ODEBUG_STATE_INACTIVE;
> -			else
> -				print_object = true;
> -			break;
> -
> +				break;
> +			}
> +			fallthrough;
>  		case ODEBUG_STATE_DESTROYED:
> -			print_object = true;
> +			o = *obj;
> +			obj = NULL;
>  			break;
>  		default:
>  			break;
>  		}
> +	} else {
> +		o.object = addr;
> +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> +		o.descr = descr;
> +		obj = NULL;
>  	}

Same here.
	struct debug_obj o = { .object = addr, .state = ODEBUG_STATE_NOTAVAILABLE, .descr = descr };
        ...
        
 	if (obj) {
 		switch (obj->state) {
		case ODEBUG_STATE_DESTROYED:
			o = *obj;
			break;
 		case ODEBUG_STATE_INIT:
 		case ODEBUG_STATE_INACTIVE:
 		case ODEBUG_STATE_ACTIVE:
			if (obj->astate) {
				o = *obj;
				break;
			}
			obj->state = ODEBUG_STATE_INACTIVE;
			fallthrough;
 		default:
			raw_spin_unlock_irqrestore(&db->lock, flags);
			return;
 		}
 	}

 	raw_spin_unlock_irqrestore(&db->lock, flags);
	debug_print_object(&o, "deactivate");

Hmm?

> @@ -970,28 +962,27 @@ debug_object_active_state(void *addr, const struct debug_obj_descr *descr,
>  	if (obj) {
>  		switch (obj->state) {
>  		case ODEBUG_STATE_ACTIVE:
> -			if (obj->astate == expect)
> +			if (obj->astate == expect) {
>  				obj->astate = next;
> -			else
> -				print_object = true;
> -			break;
> -
> +				break;
> +			}
> +			fallthrough;
>  		default:
> -			print_object = true;
> +			o = *obj;
> +			obj = NULL;
>  			break;
>  		}
> +	} else {
> +		o.object = addr;
> +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> +		o.descr = descr;
> +		obj = NULL;
>  	}

Same pattern here.
  
Thanks,

        tglx
