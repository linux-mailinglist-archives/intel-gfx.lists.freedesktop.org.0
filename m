Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0A69EAFF6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 12:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB79310E117;
	Tue, 10 Dec 2024 11:33:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mD4JbuJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D516410E117
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 11:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733830416; x=1765366416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qqFQnAMli28OTh4lzAq5BlHi+7L4tVihCLsdts2XhKw=;
 b=mD4JbuJeoH4SChrHnIjy8wZpZ8PIYtfFGrOnrRmeEE0iQR7wa0NhrHh9
 MvR4BNgaNSzpTwgzBZjPY0Wex7E4x7Diikv3LRItK75IMncCUWAB14WsX
 BxeDduKxNFwEK2/kKoVjK9SxLbuonFIn5xN9TMgOGLgAGTJre/7EpgJoi
 +9jLwGCLIZmJMKy6nW5F8HfjjxNhQYhzRqNhqUa0ZuGkm4ZYJ/rNH/LpA
 C4tr4/COANlqMitU1OQvItXnBHjeu0datdh2t8XqJs/2tgajbdkn9tTw+
 EzVp/kcAgpbh7anqk3tl1+eZf/gxlRgD9Bw3rq7RK5U4RO/f8eMrdYwZx Q==;
X-CSE-ConnectionGUID: 3KKjGrZzTPGr3zzWpo5ijQ==
X-CSE-MsgGUID: hph5G/HGSD+cV8whQ/wETQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34070977"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="34070977"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:33:36 -0800
X-CSE-ConnectionGUID: C3teXAyySn+cfyx/mFWykA==
X-CSE-MsgGUID: dtG9J1nzTbmXqlEkpBWyag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="132768485"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:33:34 -0800
Date: Tue, 10 Dec 2024 13:33:30 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Riana Tauro <riana.tauro@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <Z1gnCmZSucKMnjx_@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <d46ae00a-d234-400b-b463-12dbff235493@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d46ae00a-d234-400b-b463-12dbff235493@intel.com>
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

On Tue, Dec 10, 2024 at 01:33:29PM +0530, Riana Tauro wrote:
> On 10/30/2024 8:04 PM, Raag Jadav wrote:
> > G8 power state entry is disabled due to a limitation on DG2, so we
> > enable it from driver with Wa_14022698537. For now we enable it for
> > all DG2 devices with the exception of a few, for which, we enable
> > only when paired with whitelisted CPU models. This works with Native
> > ASMP and reduces idle power consumption.
> %s/ASMP/ASPM

Turns out I already have it locally but I don't remember fixing it.
Bit of a supernatural moment.

> With that
> Reviewed-by: Riana Tauro <riana.tauro@intel.com>

Awesome :)

...

> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 89e4381f8baa..d400c77423a5 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3617,6 +3617,7 @@
> >   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> >   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> >   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> > +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> Is the alignment correct?

Yeah, we all fell for the same trick.
https://lore.kernel.org/intel-gfx/ZyJgYML0jLuHxG7G@black.fi.intel.com/

Raag

> >   #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> >   #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> >   /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> 
