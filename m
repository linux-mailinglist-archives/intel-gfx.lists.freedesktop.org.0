Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A7799A20B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945A810E08F;
	Fri, 11 Oct 2024 10:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzPqwj42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED37D10E08F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728644051; x=1760180051;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Qgxe1k+TD64JkCOhWCcjl2ygP0b0df5LnGzYEJ5T5E8=;
 b=FzPqwj42vLYcGwgcndFFuP7lKrnp/h2OSBPxHR+a/k/KHnbuEtqAOtRG
 ZIIWqmHPTjH3GeeTSxbmX4uox4JJUOak2pBQa8S6yWTRIRJnkrDv3+0df
 eh9Mo8BlRCpVbSwC2BfO6BapkoGPZQTq9CId487GASo3cvZ8KO4tjKzis
 HRhcQpwb4TtPcGHUXeIgwuRB26E9IR8LboC9w6U22B824VAQmwCRE9DIU
 /3UAXepIo0J4FucYgMc+9E0PMnhumraTqorJ1ti1at4ryGQ+T9VZbVWWL
 GJKgKO7PS9FBd5vXNGchjt5Uw9gwGuQntqk6oZu4m7AfrGZnsrJvLsQbL A==;
X-CSE-ConnectionGUID: wFq6AtnwRuSV8urU/HGkJg==
X-CSE-MsgGUID: Tkgk4WT5RQOVIG7OTic8Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27488501"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27488501"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:54:10 -0700
X-CSE-ConnectionGUID: JdGPQr2gQYaoad8v/iFdyQ==
X-CSE-MsgGUID: YnqC/MTGReaNconlrDJfSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76502268"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:54:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com, Raag Jadav
 <raag.jadav@intel.com>
Subject: Re: [PATCH v2 0/4] Implement Wa_14022698537
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241011103250.1035316-1-raag.jadav@intel.com>
Date: Fri, 11 Oct 2024 13:54:01 +0300
Message-ID: <87bjzq6hbq.fsf@intel.com>
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

On Fri, 11 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> This series implements Wa_14022698537 along with its prerequisites.
> Detailed description in commit message.

The same workaround is also needed for the xe driver, right?

Please include that in the same series, so that we can unify the
solution in a way that suits everyone. Especially the PCI ID macros need
to match between i915_pciids.h and xe_pciids.h, because my plan is to
merge those two files together soonish.

BR,
Jani.

>
> v2: Introduce DG2_WA subplatform for workaround (Jani)
>     Fix Wa_ID and include it in subject (Badal)
>     Rephrase commit message (Jani)
>     Move CPU whitelist to intel_wa_cpu.c
> v1: https://patchwork.freedesktop.org/series/139628/
>
> Raag Jadav (4):
>   drm/i915/pciids: Refactor DG2 PCI IDs into workaround ranges
>   drm/i915/dg2: Introduce DG2_WA subplatform
>   drm/i915/wa: Introduce intel_wa_cpu.c for CPU specific workarounds
>   drm/i915/dg2: Implement Wa_14022698537
>
>  drivers/gpu/drm/i915/Makefile               |  1 +
>  drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
>  drivers/gpu/drm/i915/i915_drv.h             |  2 ++
>  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>  drivers/gpu/drm/i915/intel_device_info.c    | 34 +++++++++++++++------
>  drivers/gpu/drm/i915/intel_device_info.h    |  5 ++-
>  include/drm/intel/i915_pciids.h             | 34 +++++++++++++++------
>  9 files changed, 111 insertions(+), 20 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c

-- 
Jani Nikula, Intel
