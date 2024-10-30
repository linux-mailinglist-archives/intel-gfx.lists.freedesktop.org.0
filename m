Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C159B6946
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 17:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6225810E06E;
	Wed, 30 Oct 2024 16:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EKo78JeQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1053610E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 16:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730306150; x=1761842150;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wt9poPfa71iLBt/dNOdlX/nBAm2M0Jg/iKJuos5BqZw=;
 b=EKo78JeQ5rIMqU2Ng1/vXCA+D22EOH9cfDJS1wawiQ1ITvKm91t9uz+i
 v4Cjh+I8OzvujyZofSyxYoMz6SDjulf3MdQi2BbuHW6qLfXgeJr8YKg3s
 7YcJDGJuoP5eSea/ThRWRo/o5hXZ1Xre6TGYS+vQ2a9Tn2lj5iSKeeOO7
 +NzIwgLveLkxA6nA4G3h82bVSRiiqy7s5M5RDbCBaq6BPmxff0VvUN5bg
 IjFFbHAhwqZR9ZtNnsmDcYH7kOLhHhr5yjJAhdKq6gfZeQXcVIlZZUaUU
 k/ovj8YlUCbDMO34ju5lty4Qwrung7lXYE5+EXkSGi62LaYcKs7Q9vMQg g==;
X-CSE-ConnectionGUID: 09J2U53FTmCImLrDhXw8Qg==
X-CSE-MsgGUID: Gsfr3r75TQue8ZMT0CykFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="17662663"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="17662663"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 09:35:49 -0700
X-CSE-ConnectionGUID: 5zZp2C6uQRmYeOAPpUWbXQ==
X-CSE-MsgGUID: dzQmTxG4SwKoVEJMMkD/KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="119824433"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 09:35:47 -0700
Date: Wed, 30 Oct 2024 18:35:44 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <ZyJgYML0jLuHxG7G@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <ZyJR-fWLkXPHr-J8@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZyJR-fWLkXPHr-J8@ashyti-mobl2.lan>
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

On Wed, Oct 30, 2024 at 04:34:17PM +0100, Andi Shyti wrote:
> Hi Raag,
> 
> ...
> 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 89e4381f8baa..d400c77423a5 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3617,6 +3617,7 @@
> >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> >  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> > +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> 
> 0x06 for alignment, please.

This is aligned with POWER_SETUP_SUBCOMMAND macros which are not visible
in the diff :(

Raag

> >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> > -- 
> > 2.34.1
