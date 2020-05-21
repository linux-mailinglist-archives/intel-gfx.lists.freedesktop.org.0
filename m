Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEE51DD96F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 23:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE226E95D;
	Thu, 21 May 2020 21:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3466E95D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 21:27:24 +0000 (UTC)
IronPort-SDR: lrciio0q82Cwy+k/5ouqgEJUxR7wGwjRJltqo+4VDBbTJLNNdrceomYmc1Mei3sxT6V49z1i58
 n4KPrnrKq6hQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 14:27:23 -0700
IronPort-SDR: BUqf72OR0RTQmw2CYnVyVKSteWhdeTjmn69YOP3U6WAKcKgT0CrobjFEKXAPUI6TEmA6hb1KYP
 7dwiMrBiQZ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,419,1583222400"; d="scan'208";a="289888798"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 21 May 2020 14:27:22 -0700
Date: Thu, 21 May 2020 14:28:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200521212841.GA19471@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v9 0/7] Consider DBuf bandwidth when
 calculating CDCLK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed the series to dinq, thank you for patches and reviews

Regards
Manasi

On Tue, May 19, 2020 at 04:11:10PM +0300, Stanislav Lisovskiy wrote:
> We need to calculate cdclk after watermarks/ddb has been calculated
> as with recent hw CDCLK needs to be adjusted accordingly to DBuf
> requirements, which is not possible with current code organization.
> 
> Setting CDCLK according to DBuf BW requirements and not just rejecting
> if it doesn't satisfy BW requirements, will allow us to save power when
> it is possible and gain additional bandwidth when it's needed - i.e
> boosting both our power management and perfomance capabilities.
> 
> This patch is preparation for that, first we now extract modeset
> calculation from modeset checks, in order to call it after wm/ddb
> has been calculated.
> 
> Stanislav Lisovskiy (7):
>   drm/i915: Decouple cdclk calculation from modeset checks
>   drm/i915: Extract cdclk requirements checking to separate function
>   drm/i915: Check plane configuration properly
>   drm/i915: Plane configuration affects CDCLK in Gen11+
>   drm/i915: Introduce for_each_dbuf_slice_in_mask macro
>   drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
>   drm/i915: Remove unneeded hack now for CDCLK
> 
>  drivers/gpu/drm/i915/display/intel_bw.c       | 118 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bw.h       |  10 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  40 +++---
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   1 -
>  drivers/gpu/drm/i915/display/intel_display.c  |  89 ++++++++++---
>  drivers/gpu/drm/i915/display/intel_display.h  |   7 ++
>  .../drm/i915/display/intel_display_power.h    |   1 +
>  drivers/gpu/drm/i915/i915_drv.h               |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               |  31 ++++-
>  drivers/gpu/drm/i915/intel_pm.h               |   3 +
>  10 files changed, 261 insertions(+), 40 deletions(-)
> 
> -- 
> 2.24.1.485.gad05a3d8e5
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
