Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656DD849BA8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E66510F686;
	Mon,  5 Feb 2024 13:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIg4eNh3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613FB10F99E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 13:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707139352; x=1738675352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TbughUJoxLDa27+xiM9O5hWLIZ8jItWnKN/JGGTzmKo=;
 b=jIg4eNh3sxzWoNPOQV3ESEybshNE5YTiTyEA9oKtYRaghecQcGwodLuI
 D0KkWyQ+XVrZfOG9x7BOHzUncug9Cl+SXfCSMM8DKyquFSfSV8ESJtO4c
 8I3tLh3fQ+14U+pCeOXcBX87yWsFE+0HfC14HXtYkatEMeLJwi646Zv+q
 nzJf2WNYah4Z3PNQB4gCAOkyVIdn8OKUgoiVaZJalcoloyhMfx6gdJKQR
 JuqcGnaJ85jOXSmGKGRDIf17gIhYlBYqHy4CpZwQAEqvqstFcVMixZR0Y
 PwyqiCt8xQYOYizTTFEDyC7HI5cuhAbxavmnBFKR/2L8HGWPxSdMWUkJi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="23003487"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="23003487"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="909297269"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="909297269"
Received: from bgrigorc-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.24])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:22:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 0/6] Cursor Fault Fixes
In-Reply-To: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 05 Feb 2024 15:22:23 +0200
Message-ID: <875xz3dp0w.fsf@intel.com>
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

On Mon, 05 Feb 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com=
> wrote:
> This series is based on top of [1] floated by Maarten.
> To fix regressions seen in CI, following changes were made on top of the
> original series.

You've sent at least three versions of this in the past 24 hours, with
no indication of the version. Please use the -vN parameter in git
format-patch or git send-email to indicate the series version number in
patch subjects, so it's easier for people to track.

Thanks,
Jani.



>
> 1. add a check in the plane state destroy hook to not move forward if the=
 vblank worker is scheduled.
> 2. add checks before accessing frame buffer object (we are not sure yet h=
ow much this helps but we have found that this operation causes dump stacks)
> 3. do not defer the intel atomic cleanup into a work queue, instead execu=
te it at the end of atomic commit tail.
>
> While this series is in noway a complete or proper solution it is meant t=
o trigger a discussion to arrive at one.
>
> [1] https://patchwork.freedesktop.org/series/126934/
>
> v2: Add missing patch
> v3: Remove misleading error log
>     Change condition to access fb object
>
> Chaitanya Kumar Borah (3):
>   drm/i915: do not destroy plane state if cursor unpin worker is
>     scheduled
>   drm/i915: Add sanity check before accessing fb buffer object
>   drm/i915: do not defer cleanup work
>
> Maarten Lankhorst (2):
>   drm: Add drm_vblank_work_flush_all().
>   drm/i915: Use the same vblank worker for atomic unpin
>
> Ville Syrj=C3=A4l=C3=A4 (1):
>   drm/i915: Use vblank worker to unpin old legacy cursor fb safely
>
>  drivers/gpu/drm/drm_vblank_work.c             | 22 ++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 53 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 27 ++++++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++-
>  drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
>  drivers/gpu/drm/i915/display/intel_display.c  | 11 ++--
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  include/drm/drm_vblank_work.h                 |  2 +
>  9 files changed, 142 insertions(+), 9 deletions(-)

--=20
Jani Nikula, Intel
