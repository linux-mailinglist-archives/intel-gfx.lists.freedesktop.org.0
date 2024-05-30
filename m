Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8500B8D4E3F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 16:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7555810E686;
	Thu, 30 May 2024 14:44:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nA09fFHp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F047A10E686;
 Thu, 30 May 2024 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717080274; x=1748616274;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=XWuC68Ymxu+qscPXITcNDE8QopUAS/Sqku+VcDLa+uY=;
 b=nA09fFHpw0FWzYdqzFOXuH7mI03BKOYRGMsNKxHQmUZiFtQItiet4/sg
 PXvnWK8Gudb7cBYERfX1T2w4h27Lkvp+XglCxRnpQOFVK9v5lqaAdxJhD
 Ciydfe9QN1jQlWVQ2zfLcHHP7hkhc9QCffocvOZcsrgiU/IdCKmFQj8Un
 w+0uisrQxK2kq+SEqImelMA/GhPtT5NcofUBdlE9Ygogy0G1td6ofNXSa
 zqZurseb1UgnG1bz4h4yp51+WcepGiBKCfpbvB6B+K+7641h8miFmwEdz
 YtuSpUOHgTBYcKmT1/qyH2frCBSDm6TuswxBbebED/vxqTMogoHGV1Xzd w==;
X-CSE-ConnectionGUID: MxYGXrRmRmypgM5M22aexA==
X-CSE-MsgGUID: FrxjVAxnRYeCdUZxzyacPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="36093492"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="36093492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 07:44:33 -0700
X-CSE-ConnectionGUID: 1dDblkjoTHmFtKqVppxsyA==
X-CSE-MsgGUID: XV1bdY3rTBSsJf53PkSKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="35813850"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 07:44:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [v6 0/3] Fix cursor FB unpinning.
In-Reply-To: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
Date: Thu, 30 May 2024 17:44:28 +0300
Message-ID: <87le3rgy0j.fsf@intel.com>
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

On Wed, 22 May 2024, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> =
wrote:
> Hopefully last attempt.
> Small bug in drm_vblank_work_flush_all left, fixed now hopefully.

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via drm-misc, but drm-intel is also fine by me. No big deal
this time of the cycle when we can get the backmerge fairly quickly.

>
> Maarten Lankhorst (2):
>   drm: Add drm_vblank_work_flush_all().
>   drm/i915: Use the same vblank worker for atomic unpin
>
> Ville Syrj=C3=A4l=C3=A4 (1):
>   drm/i915: Use vblank worker to unpin old legacy cursor fb safely
>
>  drivers/gpu/drm/drm_vblank_work.c             | 22 +++++++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  3 ++
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  include/drm/drm_vblank_work.h                 |  2 ++
>  9 files changed, 102 insertions(+), 3 deletions(-)

--=20
Jani Nikula, Intel
