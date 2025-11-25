Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C7FC854C7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 15:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EF210E402;
	Tue, 25 Nov 2025 14:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Os/a3hPO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7098410E3FE;
 Tue, 25 Nov 2025 14:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764079276; x=1795615276;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GfjUfYEZvQmi23kNQSIcYMWuQXkq3P5ymJMeGYCfmYk=;
 b=Os/a3hPOAHYMFpaDRxThfie6czPXdqRFEyTbYSb+0cct7UGkRwtrog9W
 F7vThdha3X4GmBvGKv5mzhPEu3KafAKfvFRkg1EuEB58JOuyPogEPI2y8
 FfhRbwvrIgjc0tUGzuEktr2Rah6UE7coQBvRaTHBXnJB5Jqiwg6XwjNeP
 x8N1Xper+gBYlEAXy+ZeV63j03ubWLrGPVsjFFR4YSn4dUOY9wCERyGX5
 s014BGADmjR6Fv318oJTGUNc6onS8ZBHjnSfWkcf8xKyQSUhwRTuJHFdR
 zJeeU+7cUp1HKvl4oAVuQzO8buqlD9RNzGXwRrvIhUFaHheZp4iHyGCky Q==;
X-CSE-ConnectionGUID: VXPeXp6QTwaLgaLDXi4/9w==
X-CSE-MsgGUID: VDn551LnTTmcmG30qvE3cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="88748245"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="88748245"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:01:16 -0800
X-CSE-ConnectionGUID: uy+fowE7SH+QXbguTZ3JFg==
X-CSE-MsgGUID: 6Bujj5vNR0Wuya1nTMxQRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="223322531"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:01:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
In-Reply-To: <20251015160140.2296120-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015160140.2296120-1-jani.nikula@intel.com>
Date: Tue, 25 Nov 2025 16:01:11 +0200
Message-ID: <929e694adba1e3942c685826906bd8123a1696d3@intel.com>
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

On Wed, 15 Oct 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> The display/ subdirectory currently contains files that are about i915
> core driver adaptation to display rather than generic display
> implementation. Move them to a new i915 subdirectory display-adapt/.
>
> In the xe driver, all of its display/ is basically xe core adaptation to
> display. It's just that i915 display/ contains the actual display
> implementation for both. Ideally, we'd have the shared display code
> somewhere else, and the adaptation in i915 would be under display/, but
> we're not quite ready for that kind of churn yet. So let's just call it
> display-adapt for now.
>
> xe basically has equivalent files to the ones that are being moved,
> apart from intel_dpt.c, for which the implementation is quite different.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
>  .../{display =3D> display-adapt}/intel_bo.c     |  3 ++-
>  .../intel_display_rpm.c                       |  5 ++--
>  .../{display =3D> display-adapt}/intel_dpt.c    | 11 +++++----
>  .../intel_dsb_buffer.c                        |  5 ++--
>  .../{display =3D> display-adapt}/intel_fb_bo.c  |  9 ++++----
>  .../{display =3D> display-adapt}/intel_fb_pin.c | 14 +++++------
>  .../intel_fbdev_fb.c                          |  5 +++-
>  .../intel_hdcp_gsc.c                          |  2 +-
>  .../{display =3D> display-adapt}/intel_panic.c  |  6 ++---
>  .../intel_plane_initial.c                     | 17 +++++++-------
>  11 files changed, 56 insertions(+), 44 deletions(-)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_bo.c (98%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_display_r=
pm.c (95%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_dpt.c (97=
%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_dsb_buffe=
r.c (96%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fb_bo.c (=
94%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fb_pin.c =
(97%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fbdev_fb.=
c (94%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_hdcp_gsc.=
c (99%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_panic.c (=
84%)
>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_plane_ini=
tial.c (97%)

I've been postponing the series pending other refactoring.

Anyway, Ville, are you okay with moving intel_dpt.c to i915? Doesn't
that reflect the reality with i915 and xe implementations?

BR,
Jani.


--=20
Jani Nikula, Intel
