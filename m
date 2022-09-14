Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BECE5B8E58
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 19:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593E110E0C8;
	Wed, 14 Sep 2022 17:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C4C10E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663177854; x=1694713854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7QNg88z4sNLbW6kZ2c237g8tkMvyNkGwX4HsSKg/i3M=;
 b=eMMIc5eoMo2sSWALUqnj/y6lpmPqVE3PqGPkWU4Em9rBq95u/+bP0dD+
 3HiQVzjTbsVxCUXZ6gO5SnLio3Aa7IEia9bMq0ODJ0E/AWcCzyY/EvWbW
 cPMDPcQMoFpS222nsxQKBcAZ5ESTQ83joiCnjxzDccgVnvYyB4ZgmYJPP
 rcwbYG0w62FVraXZhAYVSKIYYBTg1ruXnAEl3StFqz5Jd99HtyhBMD8aa
 Z80kQYSnezNlhXzP5WeXCZoQ3l12RhlWIIwzpJEf8GHp7iEkTgVJOsbPI
 O9f4iFVKWTdKNZTRAo51MLJyH5BtE0uU71iloC0RbO9PV27LcbZ35NN5i A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324754924"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="324754924"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 10:50:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679156650"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 10:50:51 -0700
Date: Wed, 14 Sep 2022 19:50:49 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YyIUeb35VM8nwE5i@alfio.lan>
References: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
 <20220913161039.155964-3-janusz.krzysztofik@linux.intel.com>
 <d338517e-853e-98a5-1e24-59f43f2ac212@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d338517e-853e-98a5-1e24-59f43f2ac212@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Really move
 i915_gem_context.link under ref protection
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
Cc: intel-gfx@lists.freedesktop.org, drm-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[...]

> >   	struct i915_address_space *vm;
> > +	unsigned long flags;
> >   	trace_i915_context_free(ctx);
> >   	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
> > +	spin_lock_irqsave(&ctx->i915->gem.contexts.lock, flags);
> 
> Why irqsave and the conversion to irq safe elsewhere? Worker context does
> not require it and I don't see the connection to the change of list_del
> location.

yah! I think there is no reason, this is just inherited from
other code.

Andi

> Regards,
> 
> Tvrtko
> 
> > +	list_del(&ctx->link);
> > +	spin_unlock_irqrestore(&ctx->i915->gem.contexts.lock, flags);
> > +
> >   	if (ctx->syncobj)
> >   		drm_syncobj_put(ctx->syncobj);

...
