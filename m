Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A459887A2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BE710E00A;
	Fri, 27 Sep 2024 14:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jfZSFVg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5712410E00A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727449000; x=1758985000;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uA7fbk5qvroVdvzMsKahL+KMxSm+LGVb7nSDwa3G3To=;
 b=jfZSFVg8wG1euR7Q2UU1WPhl0zGsitTSQtQK5HKXtcD7Sudv7xUycRQ3
 pnBj6Ypp0/N2vkj/Aq9ohWb/S9IBIYtoILQASZ3TAyajIOow2AIH87XLz
 KBa3ji6Zgx/8ICQbGoKy9ImRQeEUDUDllB+RC2xpemyFrztwYBqisDKWD
 /p+QE5YyF+2TIiBGLrJ/M2BGORjx+EP+/l6aJnUoOyVfYDknCMSx3+/sk
 tdb/uhMtO28JY8lePfhdcJ0sKsDAMNyEsLCavZlLsP/X2HoWacpHC+58f
 JdUHKzQyI2mVLBrlCGFgS3au+3Wdv9YJImmxi4+vSOJkuPTHgaSsV3+Gt Q==;
X-CSE-ConnectionGUID: 6XJvSUXyRXSC/XWuKU1ssA==
X-CSE-MsgGUID: fZZr7aIxSYCU31J9iTZ+kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26541332"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26541332"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:56:39 -0700
X-CSE-ConnectionGUID: hKg/yVZcSgKLTobDX30ReA==
X-CSE-MsgGUID: n8Kjw99KS2u9aYYq1V+4Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77065086"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:56:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915: Use the gen3+ irq code on gen2
In-Reply-To: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
Date: Fri, 27 Sep 2024 17:56:31 +0300
Message-ID: <87ed55xi00.fsf@intel.com>
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

On Fri, 27 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Eliminate the special gen2 irq code by simply reusing the
> gen3+ code on gen2. Works just fine on actual hardware.
>
> I generated the last patch with -U20 to help with review.
> Unfortunately it still didn't pick up i915_irq_handler()
> I don't suppose there's a magic knob to tell git diff
> to include a specific function wholesale in the context?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Introduce i915_has_legacy_blc_interrupt()
>   drm/i915: Clean up gen3 hotplug irq setup
>   drm/i915: Clean up some comments in gmch irq code
>   drm/i915: Switch over to gen3 irq code on gen2
>
>  .../gpu/drm/i915/display/intel_display_irq.c  |  38 ++--
>  .../gpu/drm/i915/display/intel_display_irq.h  |   1 -
>  drivers/gpu/drm/i915/i915_irq.c               | 202 ++----------------
>  3 files changed, 28 insertions(+), 213 deletions(-)

--=20
Jani Nikula, Intel
