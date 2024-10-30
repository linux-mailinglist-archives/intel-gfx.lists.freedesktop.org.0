Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FEA9B6C43
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 19:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D463D10E3F7;
	Wed, 30 Oct 2024 18:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nYmfSYKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAD910E3F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 18:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730313657; x=1761849657;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HFJVEnhVEUfmBZrFu1peZD0ooQKoKoXJhv4U77s5Njo=;
 b=nYmfSYKaFjQ2MZBM0JmCcSc3XSOBSdSuL1HgbEAtLghHV/1GM7OtiC1x
 5LZejKNg/2t9zk6GsYvfbtNyXv8bfD5/xuZ1BA4IOTGUT7HM4xYbf6LAg
 Ds5SaDb1Rvx4xuHddVYnZnhhmT3eewR9znYBDeoq/AGg0R8R3cYG83jYi
 ASo8nHdLFrkBP/b7fwiKNq9qPvrFJwPlTOnJnm52/6cBTsZUxH3Tw+USS
 W1Sygha+4ne+6DVRInUMOOJcC2c9Glcy0TOn/ZYlFH8PF88BL1dsPTEJR
 NiNRSCfc88MIswUQVh/EtjWSRpoUw9MD6u3LjGxBrHX5++VCr6GI4CyXW A==;
X-CSE-ConnectionGUID: bnYfKCIxQOucTm9AMSz/5Q==
X-CSE-MsgGUID: vOj8ERzoQie4vm6Y+fd9NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="29452449"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="29452449"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 11:40:57 -0700
X-CSE-ConnectionGUID: RCvgrb0xTa+xQdwiig5daQ==
X-CSE-MsgGUID: ZQULB1ldRsWoQWLWAHnVzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82513720"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 11:40:53 -0700
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
Date: Wed, 30 Oct 2024 20:40:50 +0200
Message-ID: <874j4tl9hp.fsf@intel.com>
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

Okay, so this bumps the requirements during development, but where's the
implementation for xe? What's it going to look like?

BR,
Jani.



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
