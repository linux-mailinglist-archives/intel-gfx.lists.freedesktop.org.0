Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D0A6FF199
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 14:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220F710E0A4;
	Thu, 11 May 2023 12:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F73E10E0A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683808446; x=1715344446;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lJQuT49Go+oaOQohMo/rbeAFNnjuHDJkQDFSyKVQr7s=;
 b=NcryYraQFWtRbtS02/8Q/peDKt9+Op/kEHjDdGEA0sNCCTPh4DEUBh3+
 fLz70IkqNm6Zg8PLsreqOUAKznLsjATCpgLjE/qK2h/iWByECcoY25DpG
 rslDZbSkvq6AvX8dF43fK0g66/n913EDXrQlsV1KnbXGYAPHHKG7hGMdK
 nUmt/ds2IBeOMziPu+D1VkzhVOwcXoy70f2ZUwlzkEMunl/mgV+YmsBuy
 z/NnzLCKvnFWEcQ2ZW3FmHFSxIq8eY+lbcT9yy3jF2mOJrCLUnK0rQRlu
 2paacdt5thwODS6R3LtHMmk1vrj3tfllD1win60nTjc29PEk3K8eZsWc1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="347956305"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="347956305"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:33:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="811576740"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="811576740"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 11 May 2023 05:33:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 15:33:44 +0300
Date: Thu, 11 May 2023 15:33:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFzgqLtuY8gM96lE@intel.com>
References: <20230511090427.809243-1-jani.nikula@intel.com>
 <ZFzddTOx2QciRfXE@intel.com> <87sfc3kq23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sfc3kq23.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: drop dependency on
 VLV_DISPLAY_BASE
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 11, 2023 at 03:31:16PM +0300, Jani Nikula wrote:
> On Thu, 11 May 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, May 11, 2023 at 12:04:27PM +0300, Jani Nikula wrote:
> >> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
> >> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
> >> display base area.
> >> 
> >> Use the 0x182168 MMIO address directly to drop dependency on
> >> VLV_DISPLAY_BASE and thus display/intel_display_reg_defs.h in
> >> intel_gt_regs.h.
> >> 
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >> index b8a39c219b60..f38550dae6b8 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >> @@ -7,7 +7,6 @@
> >>  #define __INTEL_GT_REGS__
> >>  
> >>  #include "i915_reg_defs.h"
> >> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
> >>  
> >>  /*
> >>   * The perf control registers are technically multicast registers, but the
> >> @@ -1469,7 +1468,7 @@
> >>  #define GEN12_RCU_MODE				_MMIO(0x14800)
> >>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
> >>  
> >> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
> >> +#define CHV_FUSE_GT				_MMIO(0x182168)
> >
> > Or mmaybe s/VLV_DISPLAY_BASE/VLV_GUNIT_BASE/ here? Although all the
> > other Gunit register defintions are still in i915_reg.h, and using
> > VLV_DISPLAY_BASE. Not sure what to do about all that...
> 
> Works for me, as long as I can drop the dependency on
> display/intel_display_reg_defs.h.
> 
> Just let me know.

I'd probably go with the VLV_GUNIT_BASE approach. We can think
about what to do with all the other Gunit registers later.

> 
> BR,
> Jani.
> 
> 
> >
> >>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
> >>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
> >>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
> >> -- 
> >> 2.39.2
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
