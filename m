Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C88416B3AAB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 10:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A9B10E9B2;
	Fri, 10 Mar 2023 09:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078FF10E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 09:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678440976; x=1709976976;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=F1s60RbxR94I1a1Aw0itfSdgxLGfm83kyDprOA1tfwQ=;
 b=oBDQiX7L0MOeKKQWNlXPG58KJNLb542gFFbaL6kFkPAwZAr1Dc4pQKfr
 x6wTILWtA+bryBcu1JdbGfk7gmbb4eolsw1MGMRjaiQbgJThsVFiavZAU
 dAiQWBpg7kGPuxd4L+LGQz6j+alkLmrkwBDfcffBp4syWrEZTgtalP/1/
 IUleyexXOBYgAldbRPmtA6lx510VfU6y0/uN22z9+Ut9MLUG6SnclXN/z
 SweHnBr47SMQ4CO3OiZ8hyGRp1Zou2o57F/SHV2hAFUKLcKAcLNfoVvS+
 CNA8kn+ltpvWxU+URTqI+3afocjL6rJv6LxOnbLboNSPJBC21TvtYfGn1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401552065"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="401552065"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 01:36:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766771008"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766771008"
Received: from marisaku-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.187])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 01:36:13 -0800
Date: Fri, 10 Mar 2023 10:36:10 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <ZAr6CmhqcwNBhbi+@ashyti-mobl2.lan>
References: <20230309165852.1251-1-nirmoy.das@intel.com>
 <ZApcxlaM6vrITILC@ashyti-mobl2.lan>
 <8acdd087-4c49-e5c4-5f00-d76e297f4834@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8acdd087-4c49-e5c4-5f00-d76e297f4834@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > On Thu, Mar 09, 2023 at 05:58:52PM +0100, Nirmoy Das wrote:
> > > Change the function doc to reflect updated name.
> > > 
> > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > index ad3413242100..83532630b639 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > @@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
> > >   }
> > >   /**
> > > - * intel_engines_init_common - initialize cengine state which might require hw access
> > > + * engines_init_common - initialize engine state which might require hw access
> > You had one change to make and you missed it :-D
> 
> *facepalm*

btw, with that change,

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> > /engines_init_common/engine_init_common/
> > 
> > Andi
> > 
> > >    * @engine: Engine to initialize.
> > >    *
> > >    * Initializes @engine@ structure members shared between legacy and execlists
> > > -- 
> > > 2.39.0
