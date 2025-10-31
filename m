Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E46C249E2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF3510EBB2;
	Fri, 31 Oct 2025 10:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UM1pSzcf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60FF910EBB1;
 Fri, 31 Oct 2025 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907854; x=1793443854;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Cb6MTIuOM4SH7cmeevF5Q23tPtbQmpIpsuPcvDJlj6o=;
 b=UM1pSzcfoYR2wXUuFJyNrs6byZnjGiOIzV0VZupXakgr5LurdnEuMh+P
 rbGIlgCbQR8XuXf/sfunwgcK5ZMBA0NY7ZQ8y7fTFKJoBc3MtZzwrZg5D
 UfLxhTFcFE4K1UBtD1vr8uufap7a0mSg1j868jDDlFm6Bqbm+Kg/K4apM
 5mS1B31BTZALcMt+0by+/DJKJpP1vWHTi5GG70OL1L981QlzpPSV98CZ3
 0xGL2bm5SIQHUHOxp9pUT7S0KGzXVwOF4Y8JMZnKMMK/SdS5e/8HMECno
 tFKkqa1H92/uZVSW3n+S0I+9VvZG8VMGRzQ25arFKpXqSY4rv/6JBIS0/ w==;
X-CSE-ConnectionGUID: dl8zCnmFSymfpIJrY1L1Tw==
X-CSE-MsgGUID: Bd2pM6DrRzS9x28RhZKN2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63953412"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="63953412"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:50:54 -0700
X-CSE-ConnectionGUID: XmIJn75iRdijZW1PXiPhpA==
X-CSE-MsgGUID: p4UL7hfTQSmeg4245HZqPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="186539415"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:50:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 0/6] Use display parent interface for runtime pm
In-Reply-To: <20251030202836.1815680-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251030202836.1815680-1-jouni.hogander@intel.com>
Date: Fri, 31 Oct 2025 12:50:49 +0200
Message-ID: <d28d4a6355e691f27c2dc2dffe62cc0242b11860@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 30 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Add struct intel_display_parent_interface which is supposed to contain
> function pointers passed at display probe. This is supposed to allow
> differing implementations between i915 and xe drivers.
>
> Add runtime pm as an example and first set of functions using this new
> mechanism. Pass own implementations of runtime from i915 and xe
> drivers during probe.

Good stuff, let's merge? We've got two sets of eyes on patch 1, that's
enough.

BR,
Jani.

>
> v3:
>   - useless includes removed
>   - drop xe_display_rpm_{get, put}_raw
> v2:
>   - unrelated include removal dropped
>   - add _interface suffix to rpm function pointer struct
>   - add struct ref_tracker forward declaration
>   - use kernel-doc comments as needed
>   - move i915 display rpm interface implementation to intel_runtime_pm.c
>   - rename intel_display as i915_display
>   - move xe_display_rpm_interface code into xe_display_rpm.c
>   - rename xe_rpm as xe_display_rpm
>   - use <> when including drm/intel/display_parent_interface.h
>   - drop checks for validity of rpm function pointers
>   - keep xe_display_rpm.c
>
> Jani Nikula (1):
>   drm/{i915,xe}/display: pass parent interface to display probe
>
> Jouni H=C3=B6gander (5):
>   drm/{i915,xe}/display: Add display runtime pm parent interface
>   drm/i915/display: Runtime pm wrappers for display parent interface
>   drm/xe/display: Runtime pm wrappers for display parent interface
>   drm/i915/display: Use display parent interface for i915 runtime pm
>   drm/xe/display: Use display parent interface for xe runtime pm
>
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +
>  .../drm/i915/display/intel_display_device.c   |  5 +-
>  .../drm/i915/display/intel_display_device.h   |  4 +-
>  .../gpu/drm/i915/display/intel_display_rpm.c  | 33 ++++----
>  drivers/gpu/drm/i915/i915_driver.c            | 12 ++-
>  drivers/gpu/drm/i915/i915_driver.h            |  2 +
>  drivers/gpu/drm/i915/intel_runtime_pm.c       | 77 +++++++++++++++++++
>  drivers/gpu/drm/i915/intel_runtime_pm.h       |  3 +
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +-
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  drivers/gpu/drm/xe/display/xe_display.c       |  8 +-
>  drivers/gpu/drm/xe/display/xe_display_rpm.c   | 61 +++++++--------
>  drivers/gpu/drm/xe/display/xe_display_rpm.h   | 11 +++
>  include/drm/intel/display_parent_interface.h  | 45 +++++++++++
>  14 files changed, 215 insertions(+), 55 deletions(-)
>  create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h
>  create mode 100644 include/drm/intel/display_parent_interface.h

--=20
Jani Nikula, Intel
