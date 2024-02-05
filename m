Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE5849901
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 12:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459D41124F2;
	Mon,  5 Feb 2024 11:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkrssOkl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2111124F2;
 Mon,  5 Feb 2024 11:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707133135; x=1738669135;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9E2cbT1BwCCaK6552/d94ICNOvAnLOQv/ix2bbLZWlk=;
 b=NkrssOkl3EeW7sFoWGTjQ4HImprnsOJiikSXIuHlHhZN9Do10Y1FgMUF
 FVf19pGvSqpWmHmbIScj3VrIloNoW4729llGaRoOQxa3gAdxR8Jidk9Ga
 Qxj9CrCMty40knOowbHUZkvvCJogtrj/RIQw6IOBlFqXa7eFCJ48vOQvH
 oQuj7N+wyDHcfPhKpO/MEAFSqtQvSvF2taB2ArcqTbO0grfLtQhLYJ5pD
 22HlZrvxdS0HoCE5tON2VG8VAn6mCJw4SPsu2UyUoB3iLoRXB2wiY36mR
 W0R6ejO5RqTTaggEl7lNJnzeBkoYKlHH5OByS5tfJpbAdYQDijCSFZw4K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="673094"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="673094"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 03:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="909275710"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="909275710"
Received: from bgrigorc-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.24])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 03:38:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi
 <lucas.demarchi@intel.com>, "Hellstrom, Thomas"
 <thomas.hellstrom@intel.com>, Oded Gabbay <ogabbay@kernel.org>
Cc: intel-xe@lists.freedesktop.org, Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH v4 00/16] drm/i915: (stolen) memory region related fixes
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
Date: Mon, 05 Feb 2024 13:38:45 +0200
Message-ID: <87cytbdttm.fsf@intel.com>
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

On Sat, 03 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>   drm/i915: Simplify intel_initial_plane_config() calling convention
>   drm/i915: Tweak BIOS fb reuse check
>   drm/i915: Try to relocate the BIOS fb to the start of ggtt

>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  67 +++--

Lucas, Thomas, Oded -

These three touch xe/display. Ack for merging via drm-intel-next?

BR,
Jani.


-- 
Jani Nikula, Intel
