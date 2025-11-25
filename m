Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC23C86D6B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 20:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6557E10E082;
	Tue, 25 Nov 2025 19:42:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmdHkdCr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84C510E082;
 Tue, 25 Nov 2025 19:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764099722; x=1795635722;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PI386nP+RcPyvriG3AEkYN5yihnLI+NdFE4WUucODGc=;
 b=hmdHkdCrZJImAcCPMwCNkSzA2jJ2Q2gfZ/ONdcp8LkjMr97pAkUPeYif
 sosUG72pZBDJkZUpXhQyKXT3/UGNntIbjaU4s7U2+k6qBlz7963O34j+M
 ndrxytGpjuJywBxcy9ms+oCNrBsk6t3i4Exdda8S01ZtXaZ1rowdBo2Pr
 0YHhPLxq89mnhfLnj5zG7CeNmedKytqsKx6icRtFMCgzDBMfMjcaYObJz
 xHAh6vpZRdi5wudGDEFfKo7tL87qr9I6867br/0dFsMaAGccwFzkHkI+V
 6s/3dWbBNH89wGDl3/CBafarhjAAF2bRrfdBOh5d6QA/9CYqcD0yXt9pq w==;
X-CSE-ConnectionGUID: tvK7au/WQ7OEl4NkGjxmqA==
X-CSE-MsgGUID: Z7xNouo4RA2AAxmsdAG8bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66207335"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="66207335"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 11:42:01 -0800
X-CSE-ConnectionGUID: 0g2ILfIYS3qnUdxYneHYhw==
X-CSE-MsgGUID: zhOy77ImSY2BS36uN9xKGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="192631831"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 11:42:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/i915: uapi vs. hw state fixes
In-Reply-To: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
Date: Tue, 25 Nov 2025 21:41:56 +0200
Message-ID: <edf417bd82db5bcb9572655d943a51cb1d686e75@intel.com>
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

On Wed, 19 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Spotted a few places using the uapi state when they most
> likely should have been using the hw state. Fix those up.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (6):
>   drm/i915: Use the proper (hw.crtc) for the cursor unpin vblank worker
>   drm/i915/psr: Use hw.crtc instead of uapi.crtc
>   drm/i915/psr: Use hw.rotation instead of uapi.rotation
>   drm/i915: Use hw.active instead of uapi.active in the initial plane
>     readout
>   drm/i915/panic: Get the crtc from the correct place
>   drm/i915/panic: Clean up the variables
>
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_plane.c    | 58 +++++++++----------
>  .../drm/i915/display/intel_plane_initial.c    |  6 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 12 ++--
>  drivers/gpu/drm/i915/display/intel_psr.h      |  3 +-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 +-
>  6 files changed, 45 insertions(+), 44 deletions(-)

--=20
Jani Nikula, Intel
