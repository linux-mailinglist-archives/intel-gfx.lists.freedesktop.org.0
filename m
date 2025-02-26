Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD67A45FD5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 13:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9439D10E8E7;
	Wed, 26 Feb 2025 12:55:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="APsAFkvW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E395A10E8E5;
 Wed, 26 Feb 2025 12:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740574537; x=1772110537;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Ywl2Ct7g4Ldxupl9V0Ej7RkVUzFHOgFirpHcWev5uaM=;
 b=APsAFkvWq4ivkMML2YirUui+P6m4u5T8C5iZkqZOuEUWa72jR1Cj47yq
 V1VWhbN4ml4bb9MvvIV+9zWULPXMvYhBC2DlksOhp1JD3vwv38AflQ+7k
 6tkxgRS7PkZ4zWZa3UOCvkFQtKRoj50+GXlLuC0iq8qJOxZ6WX69Iahe0
 KqHBmxq/budQ8fnk0+Yi4rk76y/2ujxsZ7GskVnyX47qbKbg+fDF+SkPO
 ELKMQglJD/UKLZR/IyBhhKjdRUV6nUupJ9PfLxoFgDLfxJ2wy/t+6gODV
 uH9MkgAuG0DXJ0fpN8b292mwqYAs1BkpHAWueD8d83tf2MdiJ4o3phWFn Q==;
X-CSE-ConnectionGUID: nskhOHRfQryWNUQ1M+v/6A==
X-CSE-MsgGUID: 3UWPdh/KR0esVDmoKn5UXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52407708"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52407708"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:55:37 -0800
X-CSE-ConnectionGUID: ppKd086VQg6FFNPVp9URJA==
X-CSE-MsgGUID: 4pwH1a54R/CgFkaoyvF+2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121793070"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:55:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/dp: Fix link training interrupted by HPD pulse
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224193115.2058512-1-imre.deak@intel.com>
Date: Wed, 26 Feb 2025 14:55:32 +0200
Message-ID: <87jz9c50hn.fsf@intel.com>
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

On Mon, 24 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> This patchset fixes a problem during Display Port link training, where
> the link training is interrupted by a short HPD pulse generated by the
> sink. Generally the sink signals a bad link state via such short pulses,
> but the sink should prevent such signaling during link training.
>
> Some sinks do generate a short pulse as above during link training, or a
> pulse generated before the link training started may be handled from a
> scheduled work during link training. Such a handling may interfere with
> the link training (see patch 3 for the reason), so this patchset
> prevents the handling of pulses during link training.

I'm wondering if this series is made unnecessarily complicated by
blocking the hotplug handling at the hpd pin level, while what is
actually needed is blocking at the encoder level. I believe that would
be simpler too.

Thoughts?

BR,
Jani.

>
> Imre Deak (5):
>   drm/i915/hpd: Let an HPD pin be in the disabled state when handling
>     missed IRQs
>   drm/i915/hpd: Add support for suspending the IRQ handling on an HPD
>     pin
>   drm/i915/dp: Fix link training interrupted by a short HPD pulse
>   drm/i915/dp: Queue a link check after link training is complete
>   drm/i915/crt: Use intel_hpd_suspend/resume() instead of
>     intel_hpd_disable/enable()
>
>  drivers/gpu/drm/i915/display/intel_crt.c      |   7 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_dp_link_training.c |  23 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 264 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |   5 +-
>  5 files changed, 237 insertions(+), 64 deletions(-)

-- 
Jani Nikula, Intel
