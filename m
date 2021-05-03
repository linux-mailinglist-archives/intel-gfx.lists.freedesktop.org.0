Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D24371F5D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 20:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A431B6E150;
	Mon,  3 May 2021 18:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBB16E150
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 18:12:43 +0000 (UTC)
IronPort-SDR: x3Tze6QK4U/bcmhZld0cMDYPYoXB5HrHkJuaR/kyk+8F2LT0gP2P5ihaJNHf82wiMhtiOcjROX
 KXQDymME0/Gw==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="197862447"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="197862447"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 11:12:41 -0700
IronPort-SDR: y+C+6tgHyWquhDOuKkesBCw0XGwWktPmp2WQu0uFy4TT63Up8XyEbX+TR69uZQDNH/gN6VvL7t
 QukKYlJkw0YA==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432860680"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 11:12:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210428211249.11037-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
Date: Mon, 03 May 2021 21:12:37 +0300
Message-ID: <87fsz3znxm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/3] Pipe DMC Prep patches
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

On Wed, 28 Apr 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> This series adds the prep work needed before the
> actual Pipe DMC implementation.

When should we rename csr to dmc all over the place?

BR,
Jani.

>
> Anusha Srivatsa (3):
>   drm/i915/csr: s/DRM_ERROR/drm_err
>   drm/i915/csr: Add intel_csr_has_dmc_payload() helper
>   drm/i915/csr: Introduce DMC_FW_MAIN
>
>  drivers/gpu/drm/i915/display/intel_csr.c      | 94 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_csr.h      | 33 +++++++
>  .../drm/i915/display/intel_display_debugfs.c  |  4 +-
>  .../drm/i915/display/intel_display_power.c    | 16 ++--
>  drivers/gpu/drm/i915/i915_drv.h               | 18 +---
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
>  6 files changed, 92 insertions(+), 75 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
