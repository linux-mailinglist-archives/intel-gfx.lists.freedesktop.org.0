Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD295B335
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 12:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484DF10E84E;
	Thu, 22 Aug 2024 10:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VmaJ1YfG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E262B10E84E;
 Thu, 22 Aug 2024 10:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724323945; x=1755859945;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UbOgD7BtPHsmjwDsx2lC5cPs62Us2y/HV4GX0Wphvj0=;
 b=VmaJ1YfGE23U5tSmsoTwnV3RXzJORUT46RkusMCAEyHl1MaNgVZzlH7A
 6zcf7FmjjatVU1x35U/hiZ4zViF+/2AbR1kYy8sOV9dWbZUzFmBkCEo94
 n/xF+wn88CukDcqp+Z/sg8MZuS+eHfHpsyABTXfyADGsT2dEt0x9GKEsR
 w9Hrq8fjRUxuovZqsvJ3KjeLwk5WLzsRU9f2RvDbCAQ/jR3A3W5q0QPol
 AxTcU2l5wT18xTKKgPAxYplrYW3IFhgFBAEysTkl+pI9GUlvd1Yzn/IUl
 hQ+CzyGphnyGl/PV5PenLViS5CNq5/BoF5bNUwNmx1VmcaxyvF1KdAYBb A==;
X-CSE-ConnectionGUID: /SkEjSOXSEKvMzR4iECqQw==
X-CSE-MsgGUID: wBae4Ay4Q6Gnoz32xBOa7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22881818"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22881818"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:52:25 -0700
X-CSE-ConnectionGUID: OFoK22DPQICKIWoKJvFdtw==
X-CSE-MsgGUID: pvlGgsbpRcOm8zb3JllX8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="66226251"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:52:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH 00/10] drm/i915/display: identify display steppings in
 display code
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724180287.git.jani.nikula@intel.com>
Date: Thu, 22 Aug 2024 13:52:18 +0300
Message-ID: <87cym04yot.fsf@intel.com>
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

On Tue, 20 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Use a Single Point of Truth for display stepping detection instead of
> duplicating in i915 and xe.

Lucas, Rodrigo, ack for merging this via drm-intel-next?

BR,
Jani.



>
> BR,
> Jani.
>
>
> Jani Nikula (10):
>   drm/xe/display: fix compat IS_DISPLAY_STEP() range end
>   drm/xe/display: remove intel_display_step_name() to simplify
>   drm/xe/display: remove the unused compat HAS_GMD_ID()
>   drm/xe/step: define more steppings E-J
>   drm/i915/display: rename IS_DISPLAY_IP_RANGE() to
>     IS_DISPLAY_VER_FULL()
>   drm/i915/display: rename IS_DISPLAY_IP_STEP() to IS_DISPLAY_VER_STEP()
>   drm/i915/display: identify display steppings in display probe
>   drm/i915/display: switch to display detected steppings
>   drm/i915: remove display stepping handling
>   drm/xe: remove display stepping handling
>
>  .../drm/i915/display/intel_display_device.c   | 226 +++++++++++++++++-
>  .../drm/i915/display/intel_display_device.h   |  19 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   8 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   5 -
>  drivers/gpu/drm/i915/intel_device_info.c      |   1 -
>  drivers/gpu/drm/i915/intel_step.c             |  84 +++----
>  drivers/gpu/drm/i915/intel_step.h             |   2 -
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   5 -
>  .../drm/xe/compat-i915-headers/intel_step.h   |  10 +-
>  drivers/gpu/drm/xe/xe_debugfs.c               |   3 +-
>  drivers/gpu/drm/xe/xe_pci.c                   |   3 +-
>  drivers/gpu/drm/xe/xe_step.c                  |  57 ++---
>  drivers/gpu/drm/xe/xe_step_types.h            |  30 ++-
>  18 files changed, 332 insertions(+), 135 deletions(-)

-- 
Jani Nikula, Intel
