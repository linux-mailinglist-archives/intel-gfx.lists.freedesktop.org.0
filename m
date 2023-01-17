Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D888766E501
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 18:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B7010E2F2;
	Tue, 17 Jan 2023 17:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E99110E2F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673976871; x=1705512871;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n4sGsQ2xvS/ARsStEQnb88DMarQHqebj54xxl8LBIJs=;
 b=Avpqe5DRtTwy9BIILT+C/or8Ke1vAVBwVdsbFzXqgTri2axy2wrQySus
 /j6b+RrJabZXxYrSGSQymvdSrFtd+FXn11gmHjSUbGDWgnf2tC9R2IviR
 j1QxMnDDjS4Zx0iz1AqceYobcVxeFpFVtUKKkmj8MVHQ+OGV8cEG6PTtZ
 as2CcF/5zBbkCwjSBa9JL/yOQ7rscdrw485wz+0B/ZtYfzpeWUlwzXNBN
 JGQzCF7UqPnjqtCK/C9rLVW3cdSumn7wVmYVLoeeRlCNyVMRZDyJLDnvY
 BkDRBNu4YDqC0RbN29Y43hc9oKofPTja/eoFeO2ScOSw4jEOQu/g1kzZj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="305138778"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="305138778"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 09:34:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801823948"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="801823948"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga001.fm.intel.com with SMTP; 17 Jan 2023 09:34:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jan 2023 19:34:27 +0200
Date: Tue, 17 Jan 2023 19:34:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bcI7udqQu8SzvP@intel.com>
References: <cover.1673873708.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1673873708.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: extract vblank/scanline
 code to a separate file
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

On Mon, Jan 16, 2023 at 02:56:11PM +0200, Jani Nikula wrote:
> Basically just https://patchwork.freedesktop.org/series/111854/ with the
> two controversial patches dropped for now.
> 
> BR,
> Jani.
> 
> Jani Nikula (5):
>   drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
>   drm/i915/display: move more scanline functions to intel_vblank.[ch]
>   drm/i915/display: use common function for checking scanline is moving
>   drm/i915/vblank: use intel_de_read()
>   drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
>     counter

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_de.h       |   7 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
>  .../drm/i915/display/intel_display_trace.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 441 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vblank.h   |  23 +
>  drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
>  drivers/gpu/drm/i915/i915_irq.h               |   6 -
>  9 files changed, 476 insertions(+), 466 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
