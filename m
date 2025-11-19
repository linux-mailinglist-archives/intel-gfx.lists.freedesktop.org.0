Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDB2C6EB81
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 14:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E57D10E5FD;
	Wed, 19 Nov 2025 13:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Shbwn/GJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E6C10E5FB;
 Wed, 19 Nov 2025 13:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763557765; x=1795093765;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=X6YRXptdX+IyDsK1pAz3w4DAhGXXxaj0w9TQXh8R6C0=;
 b=Shbwn/GJMz+xGQCThwbXOgd9ex2q0S8mLN0X/xAXurWWewZQLwu4+rpb
 0JQJlXtgf9ElaBlg0edfm7tSR58Qm6ddjhjLpvVk1fphzWeYPzAe21NCQ
 sLaWdLBIQOcCmWMldixuLVO4z71lcmNO3bpWSVAJagVFOtXZ8DELCLVjk
 v3/V9rj+kkMkcsdTImms+lAYkDU7brQfIi0EoOyS5BAl81fEHgiAVQ5+V
 eExq2kVZ7/vliWyCMOLwP/v/Ma1Dz7FxW0Hywetx3gNfF16WyQ7erXZbc
 ny4YbcWtNRgsRwc0g2Sok2AJ2SLLokcxa6CIxN8cke8G7Fkxjn+1fSg+j g==;
X-CSE-ConnectionGUID: 4JFHGJXKTD62J14QxKb0Yg==
X-CSE-MsgGUID: Ewaw1eJ0S0avslnF0y8leg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="53167226"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="53167226"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:09:25 -0800
X-CSE-ConnectionGUID: yq5Pe6uiTVusURRFOh1oZg==
X-CSE-MsgGUID: KYIlpNqzS6+0/kmJjyxmlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190317279"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:09:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: change pipe order for platforms
 with big joiner
In-Reply-To: <aRzKK_fxBHnpjp-w@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251118095801.2248786-1-jani.nikula@intel.com>
 <20251118133758.2373008-1-jani.nikula@intel.com>
 <0989b7647aef0c1dfacbdd302e5b3720d3a558c4@intel.com>
 <aRyvdsdmuS7LvI1F@intel.com> <aRzKK_fxBHnpjp-w@intel.com>
Date: Wed, 19 Nov 2025 15:09:20 +0200
Message-ID: <3a89c42f9c513d6b601cf603be551d998de9d9ce@intel.com>
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

On Tue, 18 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Nov 18, 2025 at 07:40:06PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Nov 18, 2025 at 03:43:35PM +0200, Jani Nikula wrote:
>> > On Tue, 18 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
>> > > When big joiner is enabled, it reserves the adjacent pipe as the
>> > > secondary pipe. This happens without the user space knowing, and
>> > > subsequent attempts at using the CRTC with that pipe will fail. If t=
he
>> > > user space does not have a coping mechanism, i.e. trying another pip=
e,
>> > > this leads to a black screen.
>> > >
>> > > If the platform allows joining A+B, map the CRTCs to pipes in order =
A,
>> > > C, B, and D to trick userspace to using pipes that are more likely t=
o be
>> > > available for joining.
>> > >
>> > > Although there are currently no platforms with more than four pipes,=
 add
>> > > a fallback for initializing the rest of the pipes to not miss them.
>> > >
>> > > v2: Also remove WARN_ON()
>> >=20
>> > There's still this in intel_atomic_check_joiner():
>> >=20
>> > 		/*
>> > 		 * The state copy logic assumes the primary crtc gets processed
>> > 		 * before the secondary crtc during the main compute_config loop.
>> > 		 * This works because the crtcs are created in pipe order,
>> > 		 * and the hardware requires primary pipe < secondary pipe as well.
>> > 		 * Should that change we need to rethink the logic.
>> > 		 */
>> > 		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
>> > 			    drm_crtc_index(&secondary_crtc->base)))
>> > 			return -EINVAL;
>> >=20
>> > This still works for A+B and C+D joining, but will fail loudly for B+C
>> > joining.
>> >=20
>> > Ideas?
>>=20
>> Hmm, I think I got rid of that requirement semi-accidentally in
>> commit 3a5e09d82f97 ("drm/i915: Fix intel_modeset_pipe_config_late() for
>> bigjoiner")
>>=20
>> So it looks to me like we can just drop that check entirely.
>
> After some pondering we might have a bit of problem with=20
> the for_each_intel_crtc*() stuff. At least during
> the hardware programming phase we'd like those to walk the
> crtcs in pipe order but currently they use the crtc index
> order.
>
> Say we have a commit with pipes A+B,C. Currently we do
> everything in the C->B->A or A->B->C order. Thus the joined
> pipe A+B are always updated back-to-back, giving us the best
> chance to get an atomic update across them. With the shuffling
> pipe C will now sneak in between A and B, making it less likely
> that the updates on A and B will happen on the same frame.
>
> So I'm thinking we probably want to change all the=20
> for_each_intel_crtc*() macros to use the pipe order as well.
> Either that or we need to review each use case and rewrite
> the important ones to use the pipe order.

Could this be the cause for [1]?

BR,
Jani.


[1] https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-2/i=
gt@i915_module_load@load.html#dmesg-warnings352


--=20
Jani Nikula, Intel
