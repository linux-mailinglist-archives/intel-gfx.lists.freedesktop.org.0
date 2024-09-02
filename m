Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511F2968763
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 14:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E536A10E2D3;
	Mon,  2 Sep 2024 12:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrFLvY4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83E110E2DA;
 Mon,  2 Sep 2024 12:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725279668; x=1756815668;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LxYjh18++3UCkOB/cl640SFC2B3RKgGX2+WYZL63xf4=;
 b=IrFLvY4aTL4CipUDgsgwoPl2Fp7FHOg1z64RFmbgEOoN2t7ALR71BLqa
 ygPTXLzsAXOaxc5DunfD+PB/WA5fMMH3x2ph8xSVZK8PPmr39vZJY8S0O
 VrpTajVaxuwImqQbq6NPV6rtN8LDIIAhJ6IW+BoyyWWL4bAYDdYmjjkhW
 ppVxIYxV4qjkDQStlR+jtr/TJl0etEpdYOl5YZtkBKB6pxAwyEhH+kMXY
 yI6OhWpts8ABSrsQMvO+M2N8KAC1LIMdz8HUPj1ajX68vFunKoQP/Rr50
 Bq9b0U14c8WuFHJ86xYP393rD0rDpMSaSmwdIGRYMESUWaTwOrJdo18Zg w==;
X-CSE-ConnectionGUID: D7pXujBjRli09BGWXsB6hw==
X-CSE-MsgGUID: bCDv1Qp4QDOBBwQrFxGNOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41335248"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41335248"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 05:21:08 -0700
X-CSE-ConnectionGUID: 3YQ075lQR9KQk15e9T+SYA==
X-CSE-MsgGUID: A0f6pkR1Tl+0D2hJF6+wTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64604566"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 05:21:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 0/6] drm/xe & drm/i915: drvdata usage changes follow-up
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724942754.git.jani.nikula@intel.com>
Date: Mon, 02 Sep 2024 15:20:52 +0300
Message-ID: <871q22utzv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 29 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Follow-up to [1].

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/cover.1723129920.git.jani.nikula@intel.com
>
> Jani Nikula (6):
>   drm/i915 & drm/xe: save struct drm_device to drvdata
>   drm/i915: support struct device and pci_dev in to_intel_display()
>   drm/i915/audio: migrate away from kdev_to_i915()
>   drm/i915/hdcp: migrate away from kdev_to_i915() in bind/unbind
>   drm/i915/hdcp: migrate away from kdev_to_i915() in GSC messaging
>   drm/xe/display: remove unused compat kdev_to_i915() and pdev_to_i915()
>
>  drivers/gpu/drm/i915/display/intel_audio.c    | 34 ++++++----
>  .../drm/i915/display/intel_display_types.h    |  8 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 +--
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  8 ++-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  7 --
>  drivers/gpu/drm/xe/xe_device.h                |  8 ++-
>  drivers/gpu/drm/xe/xe_pci.c                   |  2 +-
>  10 files changed, 94 insertions(+), 54 deletions(-)

-- 
Jani Nikula, Intel
