Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDA954DE8F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA12113E92;
	Thu, 16 Jun 2022 10:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5C4113E92
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655373726; x=1686909726;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z8Ns/8iHFjOtZndenBOHJjElkf7o8rEcNvKY4kxrtR8=;
 b=J0LyL/9933qzr3JSpwXO2sQCak+vkQVtSq5x/gD3dvqNJUOyHNCh/4Qy
 6jBIbJlswYfWJKPtgd+FQxft2fzjjhI8B4jYm3kZYO7vE4idfRz0s3EAK
 TceJlIpAnWKY3UXyhqBplg9HGk7104l8w3pegUSK411zyePWUfggRDzty
 i/6CmKlN79aaTcBO2wEyPaoxnv+OouCrA6oPFatuobhq0YOb8RXWW93D3
 eiLvP/lo/j9Aft7KZUKP754Kr04dynbqUCn/lI0yTnUof+tvBZGIrnfPu
 ofw2O1Pq0dxCLGeGIzYx6M3PARDYx059Myvob+ATfOjBjc1c5Wjp6XJbt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="304655007"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="304655007"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="674956438"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 16 Jun 2022 03:02:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jun 2022 13:02:03 +0300
Date: Thu, 16 Jun 2022 13:02:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yqr/my9kwkXzvNfz@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 00/11] drm/i915: drm/i915/display: split
 out verification, hw readout and dump from intel_display.c
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

On Thu, Jun 16, 2022 at 12:48:10PM +0300, Jani Nikula wrote:
> v2 of [1]. Address review comments, drop crtc state compare move, add hw
> state readout&sanitization split, and sprinkle some struct
> drm_i915_private *i915 cleanups on top.
> 
> BR,
> Jani.
> 
> [1] https://patchwork.freedesktop.org/series/105156/
> 
> 
> Jani Nikula (11):
>   drm/i915/wm: move wm state verification to intel_pm.c
>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
>   drm/i915/display: split out modeset verification code
>   drm/i915/display: split out crtc state dump to a separate file
>   drm/i915/display: change who adds [] around crtc state dump context
>     string
>   drm/i915/display: rename dev_priv -> i915 in crtc state dump
>   drm/i915/display: split out hw state readout and sanitize
>   drm/i915/display: some struct drm_i915_private *i915 conversions
>   drm/i915/display: convert modeset setup to struct drm_i915_private
>     *i915

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |    3 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |  314 +++
>  .../drm/i915/display/intel_crtc_state_dump.h  |   16 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 1680 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   18 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
>  .../drm/i915/display/intel_modeset_setup.c    |  724 +++++++
>  .../drm/i915/display/intel_modeset_setup.h    |   15 +
>  .../drm/i915/display/intel_modeset_verify.c   |  246 +++
>  .../drm/i915/display/intel_modeset_verify.h   |   21 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
>  drivers/gpu/drm/i915/intel_pm.c               |  138 +-
>  drivers/gpu/drm/i915/intel_pm.h               |   14 +-
>  15 files changed, 1724 insertions(+), 1606 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
