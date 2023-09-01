Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AFE78FC16
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 13:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA0810E788;
	Fri,  1 Sep 2023 11:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63BD910E788
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 11:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693566544; x=1725102544;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Xj2Ummde3psriO9g7Z2CvRA3KivO9TScA7E1PWN6Hu0=;
 b=CouBIQpac2Y8mdpnvhxgWoz8lWchUq3OXc4PL6hEInoMZ+Uk59mj0Mi5
 4WxkseSFMeeTK86WjaeFtYLPABHXnxXe2XVYBR1S/DP238jMjKm3xp2GF
 EYA16ja9AJIWgUCdpajq7AurXV9p0vIOVEqalAVVdnTWt+9bCWRhrwmS9
 l4PlVJEQM2KGuOuNrFsbXSwWeRSLErSkjhmZGsQNswS6mksJblLIVqjLF
 47y91bn4hEhmOYwiwycEqAV0HShOk+Mo1zQwFVVRhMnmL9q8lp+7KTv+N
 ngQdpnsTb1s/CS7UGsC2KctUOxi/RZv17+b/Rg8oumrigSauRPUVRqYOL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="356510932"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="356510932"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 04:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854670892"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="854670892"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 01 Sep 2023 04:09:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 14:09:00 +0300
Date: Fri, 1 Sep 2023 14:09:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZPHGTJ15jPjAw4Je@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230901093500.3463046-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 0/4] Handle dma fences in dirtyfb ioctl
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

On Fri, Sep 01, 2023 at 12:34:56PM +0300, Jouni Högander wrote:
> Currently i915 dirtyfb ioctl is not taking dma fences into
> account. This works with features like FBC, PSR, DRRS because our gem
> code is triggering flush again when rendering completes. We are
> targeting in getting rid of frontbuffer tracking code: Flusing hook
> from gem code will be removed as well.
> 
> This patch set is adding dma fence handling into i915 dirtyfb ioctl.
> 
> v4:
>  - Move invalidate back being done before cb is added
> v3:
>  - Check frontbuffer bits before adding any fence fb
>  - Invalidate only when adding fence cb succeeds
>  - Check schedule work success rather than work being pending
>  - Init flush work when frontbuffer struct is initialized
> v2:
>  - Clear fbc and psr busy bits on flip
>  - Check if flush work is already pending
>  - Use dma_resv_get_singleton
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

For the series:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Jouni Högander (4):
>   drm/i915/fbc: Clear frontbuffer busy bits on flip
>   drm/i915/psr: Clear frontbuffer busy bits on flip
>   drm/i915: Add new frontbuffer tracking interface to queue flush
>   drm/i915: Handle dma fences in dirtyfb callback
> 
>  drivers/gpu/drm/i915/display/intel_fb.c       | 60 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 28 +++++++++
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      |  6 ++
>  5 files changed, 97 insertions(+), 7 deletions(-)
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
