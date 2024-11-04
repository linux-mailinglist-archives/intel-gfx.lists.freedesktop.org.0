Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497959BB9D7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 17:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB8B10E47C;
	Mon,  4 Nov 2024 16:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQEcI9zD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E887710E47C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 16:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730736513; x=1762272513;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OSrjBGnLwRplDsygRBxr3rPrVaJjyc/6R40+uSYdoLo=;
 b=RQEcI9zDOCOkAGvzedILhJTPeklpuUbhJ21+feQKy5zZg+7ySfy2DQzg
 cJX1qt16URi6KSVUjqri4KdHLMMOVcxqIEX+CJQxmwp0g8ohuedfMJWqF
 F2ebVsOmUF8HzH+wm/tGxayCpMm4hX215kuZik2hsqkCZqucgGgLj0irx
 inU89x8/By3GPk7tVsvEKVsv6TN2Yhkp7H/Y8LItXq2Wd2K7HwvRFJ304
 lN+LZuNpSPoXySxhyrcNs5xDExU4ELRWra/5P19nzoR7vZLWLFeV+plWc
 ewP88GpT8pc/jmE9lkXfei857V1Myh51+OVjjA9bIDKeTwntpW6+03FxJ g==;
X-CSE-ConnectionGUID: HNz9FSAzR6S79Q9tGotziw==
X-CSE-MsgGUID: z8b5/ouqQq6L2C0BrKzpQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47907166"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47907166"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 08:08:33 -0800
X-CSE-ConnectionGUID: 7wB8Rq7HQpSiQvvrH+kHPQ==
X-CSE-MsgGUID: 7EYvsIkxQ7y5hGrfriCAaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88835671"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 08:08:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com, Raag Jadav
 <raag.jadav@intel.com>
Subject: Re: [PATCH v3 0/4] Implement Wa_14022698537
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241030143418.410406-1-raag.jadav@intel.com>
Date: Mon, 04 Nov 2024 18:08:26 +0200
Message-ID: <878qtzhthh.fsf@intel.com>
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

On Wed, 30 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> This series implements Wa_14022698537 for DG2 along with its prerequisites
> in i915. Now that we have a common pciids.h in place, this can be extended
> to xe as well. Detailed description in commit message.

Overall looks good and my earlier comments were addressed, but will
still need detailed review,

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> v1: https://patchwork.freedesktop.org/series/139628/
>
> v2: Introduce DG2_WA subplatform for workaround (Jani)
>     Fix Wa_ID and include it in subject (Badal)
>     Rephrase commit message (Jani)
>     Move CPU whitelist to intel_wa_cpu.c
>
> v3: Rework subplatform naming (Jani)
>     Move CPU file out of gt directory (Riana)
>     Rephrase CPU file description (Jani)
>     Add kernel doc, re-order macro (Riana)
>     Move workaround to i915_pcode_init() (Badal, Anshuman)
>
> Raag Jadav (4):
>   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
>   drm/i915/dg2: Introduce DG2_D subplatform
>   drm/i915: Introduce intel_cpu_info.c for CPU IDs
>   drm/i915/dg2: Implement Wa_14022698537
>
>  drivers/gpu/drm/i915/Makefile            |  1 +
>  drivers/gpu/drm/i915/i915_driver.c       | 15 +++++++
>  drivers/gpu/drm/i915/i915_drv.h          |  2 +
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  drivers/gpu/drm/i915/intel_cpu_info.c    | 42 ++++++++++++++++++
>  drivers/gpu/drm/i915/intel_cpu_info.h    | 13 ++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  9 ++++
>  drivers/gpu/drm/i915/intel_device_info.h |  5 ++-
>  include/drm/intel/pciids.h               | 55 ++++++++++++++++++------
>  9 files changed, 129 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
>  create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h

-- 
Jani Nikula, Intel
