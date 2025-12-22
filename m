Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E77CD62CA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED1310E087;
	Mon, 22 Dec 2025 13:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6DQEFj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A973210E087;
 Mon, 22 Dec 2025 13:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410621; x=1797946621;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=awJbFuVYcP9LBZPonTHNGmuvC5yHax6G1W6r2PVqL/w=;
 b=H6DQEFj/WZfTSG8zqaO+Aq0OiJf9vmP4JFQPOVcxeAe70aZQzYvAJUQl
 24G6mCmSOHEKnd9ue/UVna9Vm1f9BwHnB2xdZoKg/nECYZtAf+aTrNPzZ
 SCd5U1wq3DFTodaHzJ2Kq/Z8zIeroiQZZMGIky31WOopvg8zXOK7xNPt2
 Rcy1YEMd76LRrtcvqp56vYdON411Wmim+qGFuhJ9Zx580pLN97xKIeqE1
 SU6aIDfn52AvahTwTzPEegrVH/nTAMxzLliKTMelOyZ8sFwwA9zVEndi4
 TwXggwdfB0FN1Hc/swgaKZeoUQPVJ+aOrjKJabD0HtVKC/q8UTEHVLtxK A==;
X-CSE-ConnectionGUID: WU4hsVIYROa4iTTmQABdTw==
X-CSE-MsgGUID: Rfk9zN0KTFaGmkRJP8OHZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68418809"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68418809"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:37:01 -0800
X-CSE-ConnectionGUID: l1ngUigCTZib1Dq8hNzdAw==
X-CSE-MsgGUID: xzkllTJSTf6nTbhIWopWgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199504717"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:36:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/15] drm/{i915, xe}: clean up and deduplicate initial
 plane handling
In-Reply-To: <aUWy3YTOqqDvGZbS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1765812266.git.jani.nikula@intel.com>
 <aUWy3YTOqqDvGZbS@intel.com>
Date: Mon, 22 Dec 2025 15:36:55 +0200
Message-ID: <43a918a6019a900fc4a7db25bb6eb26fe0ee41a2@intel.com>
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

On Fri, 19 Dec 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Dec 15, 2025 at 05:28:14PM +0200, Jani Nikula wrote:
>> The i915 and xe initial plane handling deviate at a too high level,
>> leading to lots of duplication between the two. This series starts to
>> clean it up by moving it to display parent interface, and deduplicating
>> piecemeal.
>>=20
>> This is intentionally done in small chunks to ease review and catch
>> regressions (hopefully none).
>>=20
>> There's still more to be done, e.g. it's pointless to have both i915 and
>> xe call intel_framebuffer_init(), but there's some error path stuff to
>> figure out before doing this. And I ran out of steam a bit, and the
>> series got pretty long already.
>>=20
>> Anyway, by reducing duplication, the series highlights the differences
>> between i915 and xe.
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> Jani Nikula (15):
>>   drm/i915: move display/intel_plane_initial.c to i915_initial_plane.c
>>   drm/xe/display: rename xe_plane_initial.c to xe_initial_plane.c
>>   drm/i915: rename intel_plane_initial.h to intel_initial_plane.h
>>   drm/{i915,xe}: move initial plane calls to parent interface
>>   drm/{i915,xe}: deduplicate intel_initial_plane_config() between i915
>>     and xe
>>   drm/{i915,xe}: deduplicate plane_config_fini() between i915 and xe
>>   drm/{i915,xe}: start deduplicating intel_find_initial_plane_obj()
>>     between i915 and xe
>>   drm/i915: return plane_state from intel_reuse_initial_plane_obj()
>>   drm/xe: return plane_state from intel_reuse_initial_plane_obj()
>>   drm/i915: further deduplicate intel_find_initial_plane_obj()
>>   drm/{i915,xe}: deduplicate intel_alloc_initial_plane_obj() FB modifier
>>     checks
>>   drm/{i915,xe}: deduplicate initial plane setup
>>   drm/{i915,xe}: pass struct drm_plane_state instead of struct drm_crtc
>>     to ->setup
>>   drm/{i915,xe}: pass struct drm_device instead of drm_device to
>>     ->alloc_obj
>>   drm/i915: drop dependency on struct intel_display from i915 initial
>>     plane
>
> Everything looked quite reasonable. Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot to din.

BR,
Jani.


>
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |   3 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>>  .../drm/i915/display/intel_initial_plane.c    | 193 ++++++++
>>  ..._plane_initial.h =3D> intel_initial_plane.h} |   6 +-
>>  .../drm/i915/display/intel_plane_initial.c    | 442 ------------------
>>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>>  drivers/gpu/drm/i915/i915_initial_plane.c     | 290 ++++++++++++
>>  drivers/gpu/drm/i915/i915_initial_plane.h     |   9 +
>>  drivers/gpu/drm/xe/Makefile                   |   3 +-
>>  drivers/gpu/drm/xe/display/xe_display.c       |   2 +
>>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 189 ++++++++
>>  drivers/gpu/drm/xe/display/xe_initial_plane.h |   9 +
>>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 321 -------------
>>  include/drm/intel/display_parent_interface.h  |  17 +
>>  15 files changed, 723 insertions(+), 773 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_initial_plane.c
>>  rename drivers/gpu/drm/i915/display/{intel_plane_initial.h =3D> intel_i=
nitial_plane.h} (60%)
>>  delete mode 100644 drivers/gpu/drm/i915/display/intel_plane_initial.c
>>  create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.c
>>  create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.h
>>  create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.c
>>  create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.h
>>  delete mode 100644 drivers/gpu/drm/xe/display/xe_plane_initial.c
>>=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
