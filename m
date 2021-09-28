Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A747C41ACE0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 12:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00AA6E0FB;
	Tue, 28 Sep 2021 10:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D635E6E0F8;
 Tue, 28 Sep 2021 10:22:34 +0000 (UTC)
Received: from relay1.suse.de (relay1.suse.de [149.44.160.133])
 by smtp-out2.suse.de (Postfix) with ESMTP id 538D7201F4;
 Tue, 28 Sep 2021 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1632824553; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tt5fvnB0Rph4QMU2fuRlXgFk+yrjdH4IJTG9J/9/qxk=;
 b=WxHveId86ce2OWT+TSt5yAtMYzHyXaDsFSKXbcunh+BiYH/Y3BGfM+kqLM1wsPvS5VYFHF
 nPtZly/7VuMwZYNPt92/lddN0f+kfX/QILsQI7Xx3ZUM1hLGSGFmsrvEI/wCL+eQ4NgK71
 j3SJj7J1xet8GJSJW6OZ0sU1DVNP9cU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1632824553;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tt5fvnB0Rph4QMU2fuRlXgFk+yrjdH4IJTG9J/9/qxk=;
 b=LGFhye+McS1JOnT8olRVfKsK7+9cqDcy3BrCoAZ7bK1rSoOuLKa327MV8FWitm+ZMczKvz
 o+Uogr3Jbo4bYfDg==
Received: from alsa1.suse.de (alsa1.suse.de [10.160.4.42])
 by relay1.suse.de (Postfix) with ESMTP id 292E825D4C;
 Tue, 28 Sep 2021 10:22:33 +0000 (UTC)
Date: Tue, 28 Sep 2021 12:22:33 +0200
Message-ID: <s5hh7e5ngnq.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, gregkh@linuxfoundation.org,
 alsa-devel@alsa-project.org, "Rafael J . Wysocki" <rafael@kernel.org>,
 jani.nikula@intel.com, Imre Deak <imre.deak@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Russell King <rmk+kernel@arm.linux.org.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210922085432.2776886-1-kai.vehmanen@linux.intel.com>
References: <20210922085432.2776886-1-kai.vehmanen@linux.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2] component: do not leave master devres
 group open after bind
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 22 Sep 2021 10:54:32 +0200,
Kai Vehmanen wrote:
(snip)
> --- a/drivers/base/component.c
> +++ b/drivers/base/component.c
> @@ -246,7 +246,7 @@ static int try_to_bring_up_master(struct master *master,
>  		return 0;
>  	}
>  
> -	if (!devres_open_group(master->parent, NULL, GFP_KERNEL))
> +	if (!devres_open_group(master->parent, master, GFP_KERNEL))
>  		return -ENOMEM;
>  
>  	/* Found all components */
> @@ -258,6 +258,7 @@ static int try_to_bring_up_master(struct master *master,
>  		return ret;
>  	}
>  
> +	devres_close_group(master->parent, NULL);

Just wondering whether we should pass master here instead of NULL,
too?


thanks,

Takashi
