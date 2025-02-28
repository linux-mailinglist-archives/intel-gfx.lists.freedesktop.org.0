Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0802DA495D5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 10:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA7A10EC48;
	Fri, 28 Feb 2025 09:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7qzmQF5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2990D10EC35;
 Fri, 28 Feb 2025 09:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740736197; x=1772272197;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=C6pPncxQq6VWOcBlGf+UNeTXUh0W9iZGeSLeSppvz5k=;
 b=n7qzmQF5bfUlR7pvmYCNteLoQxFUyIbnm4oJb3kZ8ff070biSfZLriqQ
 MI7GO/wTASb6NDTjfZdxx3rarZlj5tPPhEQ8uakBySiqLEeW8Fovb21Ei
 fbQr061vydD5oYEkCbtkf7DOxJnP5t0drfnVF8lTLwnWaenTp8F9IFty6
 uMvne/7MphJlq9VTr6PQB0VRqwN/PvncrzzM9AeXYez6tfdbPhx6EAs0X
 omYudZyQeuFp6vBMstbjqXKxIoJNl/DDFng8alLJ2BkTVSa/IKNWBis4I
 9c8Xy1u8lxGWmLiFzJO/TQrIZw3hDd9NTXjmQSHozUSU1u6zhQJ1W6ekH A==;
X-CSE-ConnectionGUID: BoKHzRP3Tge/VeeoJM9wIw==
X-CSE-MsgGUID: LX9VutazTpmY3BJjH8PlZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="59197191"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="59197191"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:49:56 -0800
X-CSE-ConnectionGUID: hgAyYVA8SwyJcnbaXHqKbQ==
X-CSE-MsgGUID: Co+++8kbQaaShY9QjnidQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117269255"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:49:56 -0800
Date: Fri, 28 Feb 2025 11:40:51 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Gustavo Sousa <gustavo.sousa@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Kai Vehmanen <kai.vehmanen@linux.intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Map POWER_DOMAIN_AUDIO_PLAYBACK to DC_off
In-Reply-To: <20250227-xe3lpd-power-domain-audio-playback-v1-1-5765f21da977@intel.com>
Message-ID: <alpine.DEB.2.22.394.2502281138120.14041@eliteleevi.tm.intel.com>
References: <20250227-xe3lpd-power-domain-audio-playback-v1-1-5765f21da977@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi,

On Thu, 27 Feb 2025, Gustavo Sousa wrote:

> In Xe3_LPD, display audio has the core audio logic located in PG0 and
> per-transcoder logic in the same power well that provides power for the
> transcoder [1].
[...]
> Since intel_audio_component_get_power() uses
> POWER_DOMAIN_AUDIO_PLAYBACK, make sure to map that power domain to
> DC_off power well, so that we disable dynamic DC states (which includes
> DC6) while the audio driver needs display audio power.
[...]
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1694,6 +1694,7 @@ I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
>  	XE3LPD_PW_C_POWER_DOMAINS,
>  	XE3LPD_PW_D_POWER_DOMAINS,
>  	POWER_DOMAIN_AUDIO_MMIO,
> +	POWER_DOMAIN_AUDIO_PLAYBACK,
>  	POWER_DOMAIN_INIT);

ack, this looks good and covers audio expectations for 
drm_audio_component.h usage:

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
