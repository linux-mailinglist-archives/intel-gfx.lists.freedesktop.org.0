Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 125557AB264
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 14:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA14F10E032;
	Fri, 22 Sep 2023 12:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA8E10E032;
 Fri, 22 Sep 2023 12:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695386738; x=1726922738;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=h6bSY/xlg9WFQnB0ULPw2zGODeoXmWROPhstqXyPoCg=;
 b=f7r3YMcSAd+eEg+sYoxDV4yIWTfry5MxHI+q4njqM2qRr2san96PN+bY
 sTCv2AOL/Uxaifp40v7YrM1nARMERSxlcf4KWxvJP0IzTzcgdQl+9Byn5
 nguuJ9+kHAjnx0V3rgJ+B5cBed1H5lNQCkbh/IkFJI/QCQ5PVdffDW7d+
 cgs8sdMLZftDzgbQbPFsQT3h3gdHp5UKejy2JvBl6KJILcHgeepfs0CA0
 nyNgpg405CPvWqJJIKuAHqj6hAy6fZ+T01TbxpXPtDGaj/rkUpePNuzfn
 +MTspGfLlw9CTU3wKlr4m883oXQ4fC3VPjk5O4CGzY/jQI/wEQOyPif6o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="444914168"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="444914168"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 05:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="741089691"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="741089691"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 05:45:23 -0700
Date: Fri, 22 Sep 2023 15:45:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZQ2MeUOrx9bRtswt@ideak-desk.fi.intel.com>
References: <20230913060606.1105349-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913060606.1105349-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/8] Add DSC fractional bpp support
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 13, 2023 at 11:35:58AM +0530, Mitul Golani wrote:
> his patch series adds support for DSC fractional compressed bpp
> for MTL+. The series starts with some fixes, followed by patches that
> lay groundwork to iterate over valid compressed bpps to select the
> 'best' compressed bpp with optimal link configuration (taken from
> upstream series: https://patchwork.freedesktop.org/series/105200/).
> 
> The later patches, add changes to accommodate compressed bpp with
> fractional part, including changes to QP calculations.
> To get the 'best' compressed bpp, we iterate over the valid compressed
> bpp values, but with fractional step size 1/16, 1/8, 1/4 or 1/2 as per
> sink support.
> 
> The last 2 patches add support to depict DSC sink's fractional support,
> and debugfs to enforce use of fractional bpp, while choosing an
> appropriate compressed bpp.

MST/DSC is at the moment broken, so I'd prefer merging this patchset
only after it's fixed. This would mean merging 

https://lore.kernel.org/all/20230921195159.2646027-1-imre.deak@intel.com

first, followed by the DSC parts from

https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com

which would also need a rebase for this patchset.

> Ankit Nautiyal (5):
>   drm/display/dp: Add helper function to get DSC bpp prescision
>   drm/i915/display: Store compressed bpp in U6.4 format
>   drm/i915/display: Consider fractional vdsc bpp while computing m_n
>     values
>   drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
>   drm/i915/dp: Iterate over output bpp with fractional step size
> 
> Swati Sharma (2):
>   drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
>   drm/i915/dsc: Allow DSC only with fractional bpp when forced from
>     debugfs
> 
> Vandita Kulkarni (1):
>   drm/i915/dsc/mtl: Add support for fractional bpp
> 
>  drivers/gpu/drm/display/drm_dp_helper.c       | 27 ++++++
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 11 +--
>  drivers/gpu/drm/i915/display/intel_audio.c    | 17 ++--
>  drivers/gpu/drm/i915/display/intel_bios.c     |  6 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>  .../drm/i915/display/intel_display_debugfs.c  | 83 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 81 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 32 ++++---
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
>  .../i915/display/intel_fractional_helper.h    | 36 ++++++++
>  .../gpu/drm/i915/display/intel_qp_tables.c    |  3 -
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 30 +++++--
>  include/drm/display/drm_dp_helper.h           |  1 +
>  16 files changed, 275 insertions(+), 74 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fractional_helper.h
> 
> -- 
> 2.25.1
> 
