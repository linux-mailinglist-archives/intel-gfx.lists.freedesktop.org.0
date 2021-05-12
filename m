Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679D37BE5C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95616E081;
	Wed, 12 May 2021 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE4C6E081
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 13:40:15 +0000 (UTC)
IronPort-SDR: qO0k8IJ74MCmBjyh+2A5NSd/MViR5gUOUyt8SOY1kTWvBGjIRHxqQ0k17ZaQuIS9nG9I4ga82u
 Twmb8CErMYOg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="187130700"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="187130700"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:40:14 -0700
IronPort-SDR: jzHaOqkiqi4nlVfhXlBS17lC1MRAeJy4hgGIVi0zh1KUAxrTK0K/vOL4qXIgXcQHj3RHc5CRBs
 htB9R1nkg6bg==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="625390076"
Received: from olovaszi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:40:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210511231757.14873-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210511231757.14873-1-anusha.srivatsa@intel.com>
Date: Wed, 12 May 2021 16:40:07 +0300
Message-ID: <87pmxwt6iw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] Rename all CSR references to DMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 May 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Currently in our driver we use both CSR and DMC interchangeably.
> Even though the spec mentions both, we do not follow that convention
> in the driver.
>
> Renaming all references of CSR to just be DMC. This hopefully makes
> the driver of this part a litlle less confusing.
>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Anusha Srivatsa (5):
>   drm/i915/dmc: s/intel_csr/intel_dmc
>   drm/i915/dmc: s/HAS_CSR/HAS_DMC
>   drm/i915/dmc: Rename macro names containing csr
>   drm/i915/dmc: Rename functions names having "csr"
>   drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +-
>  drivers/gpu/drm/i915/display/intel_csr.h      |  21 --
>  drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  30 +-
>  .../drm/i915/display/intel_display_power.c    |  82 ++---
>  .../i915/display/{intel_csr.c => intel_dmc.c} | 335 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  21 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
>  drivers/gpu/drm/i915/i915_drv.c               |   8 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   6 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  12 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   4 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  28 +-
>  drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
>  15 files changed, 285 insertions(+), 286 deletions(-)
>  delete mode 100644 drivers/gpu/drm/i915/display/intel_csr.h
>  rename drivers/gpu/drm/i915/display/{intel_csr.c => intel_dmc.c} (66%)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc.h

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
