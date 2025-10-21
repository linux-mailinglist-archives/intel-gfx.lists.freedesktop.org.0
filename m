Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A49BF5628
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 11:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8286910E59F;
	Tue, 21 Oct 2025 09:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5Nrx4e6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2AE10E59F;
 Tue, 21 Oct 2025 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761037233; x=1792573233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WwHAnkVlR+wohcwwm3sBupJqu6pAI7WUN9h0u4Hqx7Q=;
 b=J5Nrx4e6Awg34QhH+saq5SfS7lEukJHmLInYjUtQpeUEI9M78IqH0TXn
 SfUEnsOeUjhprdsIYZvvu3jimMZYtXHGNtjDdcnTXl7/P6za/m7YbZ6cw
 sDedHjSSJY4PG/idGvHn+bW69ciIjTzQUZjkF0f+V8Fk0PvnCI9R8B/WX
 oF+NCpjjUrhe92OU11k3W78wR0Cwog6gwyrwEoLcw8uytw8JTJJqYRf7y
 5l/+QfukAnzPRR0cJdYoTV+RBDUh7zBBmRXmHWeCE6u5tQ51q5Jo3mjnD
 xiov22QyM0ySeuFe1bmxqA+GObmXTbZ+bbG5sw/0eukCrE+0yWZsmEJM3 g==;
X-CSE-ConnectionGUID: Lr12XqAZRUeUNnjFvI50TQ==
X-CSE-MsgGUID: 0TVjxF+fTzm1jXMeVNOeeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62367254"
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="62367254"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 02:00:33 -0700
X-CSE-ConnectionGUID: XCYOVnC9R5W3y5Xea2ShFA==
X-CSE-MsgGUID: mXV+EoxZTW6hbCpqOY/n7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="188651238"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 02:00:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Lucas
 De Marchi <lucas.demarchi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
In-Reply-To: <aPFKieIQItOPUE0d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015160140.2296120-1-jani.nikula@intel.com>
 <aPFKieIQItOPUE0d@intel.com>
Date: Tue, 21 Oct 2025 12:00:27 +0300
Message-ID: <72ccceeca6ecfb2c5a6c57c0ee80e3b0fe533b19@intel.com>
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

On Thu, 16 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Oct 15, 2025 at 07:01:40PM +0300, Jani Nikula wrote:
>> The display/ subdirectory currently contains files that are about i915
>> core driver adaptation to display rather than generic display
>> implementation. Move them to a new i915 subdirectory display-adapt/.
>>=20
>> In the xe driver, all of its display/ is basically xe core adaptation to
>> display. It's just that i915 display/ contains the actual display
>> implementation for both. Ideally, we'd have the shared display code
>> somewhere else, and the adaptation in i915 would be under display/, but
>> we're not quite ready for that kind of churn yet. So let's just call it
>> display-adapt for now.
>>=20
>> xe basically has equivalent files to the ones that are being moved,
>> apart from intel_dpt.c, for which the implementation is quite different.
>>=20
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
>>  .../{display =3D> display-adapt}/intel_bo.c     |  3 ++-
>>  .../intel_display_rpm.c                       |  5 ++--
>>  .../{display =3D> display-adapt}/intel_dpt.c    | 11 +++++----
>>  .../intel_dsb_buffer.c                        |  5 ++--
>>  .../{display =3D> display-adapt}/intel_fb_bo.c  |  9 ++++----
>>  .../{display =3D> display-adapt}/intel_fb_pin.c | 14 +++++------
>>  .../intel_fbdev_fb.c                          |  5 +++-
>>  .../intel_hdcp_gsc.c                          |  2 +-
>>  .../{display =3D> display-adapt}/intel_panic.c  |  6 ++---
>>  .../intel_plane_initial.c                     | 17 +++++++-------
>>  11 files changed, 56 insertions(+), 44 deletions(-)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_bo.c (98=
%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_display_=
rpm.c (95%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_dpt.c (9=
7%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_dsb_buff=
er.c (96%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fb_bo.c =
(94%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fb_pin.c=
 (97%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_fbdev_fb=
.c (94%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_hdcp_gsc=
.c (99%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_panic.c =
(84%)
>>  rename drivers/gpu/drm/i915/{display =3D> display-adapt}/intel_plane_in=
itial.c (97%)
>
> or perhaps we are ready to move everything else not in above list to
> to drivers/gpu/drm/intel-display/ ?

That's probably the end goal, but I'm a bit hesitant to do it before
we're closer to actually making it a dedicated kernel module. Doing it
now would require hackish makefiles in both i915 and xe, now we only
have it in xe. ;)

> then keep i915/display like the xe/display both as this adapt layer
> tending minimize or even die at some point?!

I kind of like having the display adaptation in a separate
directory. Especially in xe it can be left out completely when
CONFIG_DRM_XE_DISPLAY=3Dn.

BR,
Jani.


--=20
Jani Nikula, Intel
