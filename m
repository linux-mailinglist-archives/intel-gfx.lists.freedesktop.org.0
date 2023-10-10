Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3ED7BFADA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 14:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B01D10E168;
	Tue, 10 Oct 2023 12:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9A610E168
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696939854; x=1728475854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MhzqtUQNYcDXM0Qwafp8sxgn/nGKfGWW2YYmcm211do=;
 b=a8w4Z/VfIlLwOmR8g0oxr1k7/5UGDBUqegivRE7w/C0zCOo5csMiS1g3
 c32bUjOeKpp4E4hrEDSC1fzbbq3XNLbfNiAJKYL8+sA/bQF7/XBbG8+fx
 h3dQaqLM/ij3GPyhEpR9VckiWx0fNTPPJohqlwzFU2txWKJMEcr7hgc5y
 xptzYdeqbRW/h55/ZUrOogZNl70eMBuo1cyHorwNpwruzbZIQZGJesnz0
 fyNHxF77FMNiO8CnxTYYvKqaFgOUko9JJ0TKDXujK4J0ceHJC5q5GPWeo
 /p55BR87+TFf2mz9dozZG+WH00wwjOWVujh8Y/dg99WQV7W2CoR77lr0G Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="2965880"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="2965880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 05:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="823755667"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="823755667"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 05:10:48 -0700
Date: Tue, 10 Oct 2023 14:10:36 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZSU/PD5QhLA663Re@ashyti-mobl2.lan>
References: <20230925131359.2948827-1-andrzej.hajda@intel.com>
 <e0f9f143-b2b7-4281-8954-e981e744f0f6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0f9f143-b2b7-4281-8954-e981e744f0f6@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Thomas Gleixner <tglx@linutronix.de>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Oct 10, 2023 at 02:02:54PM +0200, Andrzej Hajda wrote:
> On 25.09.2023 15:13, Andrzej Hajda wrote:
> > After spinlock release object can be modified/freed by concurrent thread.
> > Using it in such case is error prone, even for printing object state.
> > To avoid such situation local copy of the object is created if necessary.
> > 
> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > ---
> > v2: add missing switch breaks
> > ---
> 
> Ping, any volunteer to review?

ops... sorry... this slipped from my review list. Will look at
it soon

Andi

> Regards
> Andrzej
> 
> 
> 
> 
> >   lib/debugobjects.c | 206 +++++++++++++++++++++------------------------
> >   1 file changed, 97 insertions(+), 109 deletions(-)
> > 
> > diff --git a/lib/debugobjects.c b/lib/debugobjects.c
> > index a517256a270b71..3afff2f668fc1e 100644
> > --- a/lib/debugobjects.c
> > +++ b/lib/debugobjects.c
> > @@ -620,9 +620,8 @@ static void debug_objects_fill_pool(void)
> >   static void
> >   __debug_object_init(void *addr, const struct debug_obj_descr *descr, int onstack)
> >   {
> > -	enum debug_obj_state state;
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> >   	debug_objects_fill_pool();
> > @@ -644,23 +643,19 @@ __debug_object_init(void *addr, const struct debug_obj_descr *descr, int onstack
> >   	case ODEBUG_STATE_INACTIVE:
> >   		obj->state = ODEBUG_STATE_INIT;
> >   		break;
> > -
> > -	case ODEBUG_STATE_ACTIVE:
> > -		state = obj->state;
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > -		debug_print_object(obj, "init");
> > -		debug_object_fixup(descr->fixup_init, addr, state);
> > -		return;
> > -
> > -	case ODEBUG_STATE_DESTROYED:
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > -		debug_print_object(obj, "init");
> > -		return;
> >   	default:
> > -		break;
> > +		o = *obj;
> > +		obj = NULL;
> >   	}
> >   	raw_spin_unlock_irqrestore(&db->lock, flags);
> > +
> > +	if (obj)
> > +		return;
> > +
> > +	debug_print_object(&o, "init");
> > +	if (o.state == ODEBUG_STATE_ACTIVE)
> > +		debug_object_fixup(descr->fixup_init, addr, o.state);
> >   }
> >   /**
> > @@ -700,12 +695,9 @@ EXPORT_SYMBOL_GPL(debug_object_init_on_stack);
> >    */
> >   int debug_object_activate(void *addr, const struct debug_obj_descr *descr)
> >   {
> > -	struct debug_obj o = { .object = addr, .state = ODEBUG_STATE_NOTAVAILABLE, .descr = descr };
> > -	enum debug_obj_state state;
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> > -	int ret;
> >   	if (!debug_objects_enabled)
> >   		return 0;
> > @@ -717,49 +709,47 @@ int debug_object_activate(void *addr, const struct debug_obj_descr *descr)
> >   	raw_spin_lock_irqsave(&db->lock, flags);
> >   	obj = lookup_object_or_alloc(addr, db, descr, false, true);
> > -	if (likely(!IS_ERR_OR_NULL(obj))) {
> > -		bool print_object = false;
> > -
> > +	if (unlikely(!obj)) {
> > +		raw_spin_unlock_irqrestore(&db->lock, flags);
> > +		debug_objects_oom();
> > +		return 0;
> > +	} else if (likely(!IS_ERR(obj))) {
> >   		switch (obj->state) {
> >   		case ODEBUG_STATE_INIT:
> >   		case ODEBUG_STATE_INACTIVE:
> >   			obj->state = ODEBUG_STATE_ACTIVE;
> > -			ret = 0;
> >   			break;
> > -
> >   		case ODEBUG_STATE_ACTIVE:
> > -			state = obj->state;
> > -			raw_spin_unlock_irqrestore(&db->lock, flags);
> > -			debug_print_object(obj, "activate");
> > -			ret = debug_object_fixup(descr->fixup_activate, addr, state);
> > -			return ret ? 0 : -EINVAL;
> > -
> >   		case ODEBUG_STATE_DESTROYED:
> > -			print_object = true;
> > -			ret = -EINVAL;
> > +			o = *obj;
> > +			obj = NULL;
> >   			break;
> >   		default:
> > -			ret = 0;
> >   			break;
> >   		}
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > -		if (print_object)
> > -			debug_print_object(obj, "activate");
> > -		return ret;
> > +	} else {
> > +		o.object = addr;
> > +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> > +		o.descr = descr;
> > +		obj = NULL;
> >   	}
> >   	raw_spin_unlock_irqrestore(&db->lock, flags);
> > -	/* If NULL the allocation has hit OOM */
> > -	if (!obj) {
> > -		debug_objects_oom();
> > +	if (obj)
> >   		return 0;
> > -	}
> > -	/* Object is neither static nor tracked. It's not initialized */
> >   	debug_print_object(&o, "activate");
> > -	ret = debug_object_fixup(descr->fixup_activate, addr, ODEBUG_STATE_NOTAVAILABLE);
> > -	return ret ? 0 : -EINVAL;
> > +
> > +	switch (o.state) {
> > +	case ODEBUG_STATE_ACTIVE:
> > +	case ODEBUG_STATE_NOTAVAILABLE:
> > +		if (debug_object_fixup(descr->fixup_activate, addr, o.state))
> > +			return 0;
> > +		fallthrough;
> > +	default:
> > +		return -EINVAL;
> > +	}
> >   }
> >   EXPORT_SYMBOL_GPL(debug_object_activate);
> > @@ -771,9 +761,8 @@ EXPORT_SYMBOL_GPL(debug_object_activate);
> >   void debug_object_deactivate(void *addr, const struct debug_obj_descr *descr)
> >   {
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> > -	bool print_object = false;
> >   	if (!debug_objects_enabled)
> >   		return;
> > @@ -788,30 +777,29 @@ void debug_object_deactivate(void *addr, const struct debug_obj_descr *descr)
> >   		case ODEBUG_STATE_INIT:
> >   		case ODEBUG_STATE_INACTIVE:
> >   		case ODEBUG_STATE_ACTIVE:
> > -			if (!obj->astate)
> > +			if (!obj->astate) {
> >   				obj->state = ODEBUG_STATE_INACTIVE;
> > -			else
> > -				print_object = true;
> > -			break;
> > -
> > +				break;
> > +			}
> > +			fallthrough;
> >   		case ODEBUG_STATE_DESTROYED:
> > -			print_object = true;
> > +			o = *obj;
> > +			obj = NULL;
> >   			break;
> >   		default:
> >   			break;
> >   		}
> > +	} else {
> > +		o.object = addr;
> > +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> > +		o.descr = descr;
> > +		obj = NULL;
> >   	}
> >   	raw_spin_unlock_irqrestore(&db->lock, flags);
> > -	if (!obj) {
> > -		struct debug_obj o = { .object = addr,
> > -				       .state = ODEBUG_STATE_NOTAVAILABLE,
> > -				       .descr = descr };
> > +	if (!obj)
> >   		debug_print_object(&o, "deactivate");
> > -	} else if (print_object) {
> > -		debug_print_object(obj, "deactivate");
> > -	}
> >   }
> >   EXPORT_SYMBOL_GPL(debug_object_deactivate);
> > @@ -822,11 +810,9 @@ EXPORT_SYMBOL_GPL(debug_object_deactivate);
> >    */
> >   void debug_object_destroy(void *addr, const struct debug_obj_descr *descr)
> >   {
> > -	enum debug_obj_state state;
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> > -	bool print_object = false;
> >   	if (!debug_objects_enabled)
> >   		return;
> > @@ -836,8 +822,10 @@ void debug_object_destroy(void *addr, const struct debug_obj_descr *descr)
> >   	raw_spin_lock_irqsave(&db->lock, flags);
> >   	obj = lookup_object(addr, db);
> > -	if (!obj)
> > -		goto out_unlock;
> > +	if (!obj) {
> > +		raw_spin_unlock_irqrestore(&db->lock, flags);
> > +		return;
> > +	}
> >   	switch (obj->state) {
> >   	case ODEBUG_STATE_NONE:
> > @@ -846,22 +834,23 @@ void debug_object_destroy(void *addr, const struct debug_obj_descr *descr)
> >   		obj->state = ODEBUG_STATE_DESTROYED;
> >   		break;
> >   	case ODEBUG_STATE_ACTIVE:
> > -		state = obj->state;
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > -		debug_print_object(obj, "destroy");
> > -		debug_object_fixup(descr->fixup_destroy, addr, state);
> > -		return;
> > -
> >   	case ODEBUG_STATE_DESTROYED:
> > -		print_object = true;
> > +		o = *obj;
> > +		obj = NULL;
> >   		break;
> >   	default:
> >   		break;
> >   	}
> > -out_unlock:
> > +
> >   	raw_spin_unlock_irqrestore(&db->lock, flags);
> > -	if (print_object)
> > -		debug_print_object(obj, "destroy");
> > +
> > +	if (obj)
> > +		return;
> > +
> > +	debug_print_object(&o, "destroy");
> > +
> > +	if (o.state == ODEBUG_STATE_ACTIVE)
> > +		debug_object_fixup(descr->fixup_destroy, addr, o.state);
> >   }
> >   EXPORT_SYMBOL_GPL(debug_object_destroy);
> > @@ -872,9 +861,8 @@ EXPORT_SYMBOL_GPL(debug_object_destroy);
> >    */
> >   void debug_object_free(void *addr, const struct debug_obj_descr *descr)
> >   {
> > -	enum debug_obj_state state;
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> >   	if (!debug_objects_enabled)
> > @@ -885,24 +873,29 @@ void debug_object_free(void *addr, const struct debug_obj_descr *descr)
> >   	raw_spin_lock_irqsave(&db->lock, flags);
> >   	obj = lookup_object(addr, db);
> > -	if (!obj)
> > -		goto out_unlock;
> > +	if (!obj) {
> > +		raw_spin_unlock_irqrestore(&db->lock, flags);
> > +		return;
> > +	}
> >   	switch (obj->state) {
> >   	case ODEBUG_STATE_ACTIVE:
> > -		state = obj->state;
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > -		debug_print_object(obj, "free");
> > -		debug_object_fixup(descr->fixup_free, addr, state);
> > -		return;
> > +		o = *obj;
> > +		obj = NULL;
> > +		break;
> >   	default:
> >   		hlist_del(&obj->node);
> > -		raw_spin_unlock_irqrestore(&db->lock, flags);
> > +	}
> > +
> > +	raw_spin_unlock_irqrestore(&db->lock, flags);
> > +
> > +	if (obj) {
> >   		free_object(obj);
> >   		return;
> >   	}
> > -out_unlock:
> > -	raw_spin_unlock_irqrestore(&db->lock, flags);
> > +
> > +	debug_print_object(&o, "free");
> > +	debug_object_fixup(descr->fixup_free, addr, o.state);
> >   }
> >   EXPORT_SYMBOL_GPL(debug_object_free);
> > @@ -955,9 +948,8 @@ debug_object_active_state(void *addr, const struct debug_obj_descr *descr,
> >   			  unsigned int expect, unsigned int next)
> >   {
> >   	struct debug_bucket *db;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	unsigned long flags;
> > -	bool print_object = false;
> >   	if (!debug_objects_enabled)
> >   		return;
> > @@ -970,28 +962,27 @@ debug_object_active_state(void *addr, const struct debug_obj_descr *descr,
> >   	if (obj) {
> >   		switch (obj->state) {
> >   		case ODEBUG_STATE_ACTIVE:
> > -			if (obj->astate == expect)
> > +			if (obj->astate == expect) {
> >   				obj->astate = next;
> > -			else
> > -				print_object = true;
> > -			break;
> > -
> > +				break;
> > +			}
> > +			fallthrough;
> >   		default:
> > -			print_object = true;
> > +			o = *obj;
> > +			obj = NULL;
> >   			break;
> >   		}
> > +	} else {
> > +		o.object = addr;
> > +		o.state = ODEBUG_STATE_NOTAVAILABLE;
> > +		o.descr = descr;
> > +		obj = NULL;
> >   	}
> >   	raw_spin_unlock_irqrestore(&db->lock, flags);
> > -	if (!obj) {
> > -		struct debug_obj o = { .object = addr,
> > -				       .state = ODEBUG_STATE_NOTAVAILABLE,
> > -				       .descr = descr };
> > +	if (!obj)
> >   		debug_print_object(&o, "active_state");
> > -	} else if (print_object) {
> > -		debug_print_object(obj, "active_state");
> > -	}
> >   }
> >   EXPORT_SYMBOL_GPL(debug_object_active_state);
> > @@ -999,11 +990,9 @@ EXPORT_SYMBOL_GPL(debug_object_active_state);
> >   static void __debug_check_no_obj_freed(const void *address, unsigned long size)
> >   {
> >   	unsigned long flags, oaddr, saddr, eaddr, paddr, chunks;
> > -	const struct debug_obj_descr *descr;
> > -	enum debug_obj_state state;
> >   	struct debug_bucket *db;
> >   	struct hlist_node *tmp;
> > -	struct debug_obj *obj;
> > +	struct debug_obj *obj, o;
> >   	int cnt, objs_checked = 0;
> >   	saddr = (unsigned long) address;
> > @@ -1026,12 +1015,11 @@ static void __debug_check_no_obj_freed(const void *address, unsigned long size)
> >   			switch (obj->state) {
> >   			case ODEBUG_STATE_ACTIVE:
> > -				descr = obj->descr;
> > -				state = obj->state;
> > +				o = *obj;
> >   				raw_spin_unlock_irqrestore(&db->lock, flags);
> > -				debug_print_object(obj, "free");
> > -				debug_object_fixup(descr->fixup_free,
> > -						   (void *) oaddr, state);
> > +				debug_print_object(&o, "free");
> > +				debug_object_fixup(o.descr->fixup_free,
> > +						   (void *) oaddr, o.state);
> >   				goto repeat;
> >   			default:
> >   				hlist_del(&obj->node);
