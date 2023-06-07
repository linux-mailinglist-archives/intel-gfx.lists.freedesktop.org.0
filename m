Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF3F725BB2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 12:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3655010E03E;
	Wed,  7 Jun 2023 10:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9750C10E03E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686134242; x=1717670242;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yNDD9BgMgqmR/xWm5zXpF75SYKUIR/RHuehml/4drYA=;
 b=FGrR8204WynGfTEY3LY4X2gB/xxqh47aWD5YCiMOme9onL1jEgoyPy9f
 zy3SLXDQfSJPBPTuCaKz9Z1xNzuuv7su1iCf5Y+S3WjKZSMNL3fZL3gWz
 VJ1AhK4mPtc6Q+P8biDaMAoEs80JLVk7Yzcv+LdNbs0DGTXriYJJds1vy
 VdHXVq3AybQhEdGsHbQBDMR1n6PUIngbTgLqjkY/kU7HuVRYQIJTP1Plw
 Lh5ywU27ZKvnmGsI8fcKzxIFQll19Vg5KZIOZl2HBdEAsrG/EEE0+Hr6r
 eFPPcqAr7fA8e04M5GPAX4PvlITeA0JeLGs1LQRmMZzRsK3/3S8cuhtm0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443316279"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="443316279"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 03:37:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="779356433"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="779356433"
Received: from nnesher-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.222])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 03:37:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <47e1e5df376354c07fb428a49acbb14cd3dd6f11.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1685119006.git.jani.nikula@intel.com>
 <47e1e5df376354c07fb428a49acbb14cd3dd6f11.camel@intel.com>
Date: Wed, 07 Jun 2023 13:37:18 +0300
Message-ID: <87edmntv6p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/15] drm/i915: re-enable
 -Wunused-but-set-variable
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

On Wed, 07 Jun 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Fri, 2023-05-26 at 19:37 +0300, Jani Nikula wrote:
>> Bring back -Wunused-but-set-variable both in W=3D1 build as well as
>> locally for CI and development. This already found dubious code.
>
> for the whole set (including v2 of patch 01) :
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks for the review, pushed patches 1-13 to drm-intel-next. There's a
different version for patch 14 pending from Zhi, and can't enable the
warning in patch 15 without it.

BR,
Jani.

>
>>
>> Jani Nikula (15):
>>   drm/i915/plane: warn on non-zero plane offset
>>   drm/i915/ddi: drop unused but set variable intel_dp
>>   drm/i915/dsi: drop unused but set variable data
>>   drm/i915/dsi: drop unused but set variable vbp
>>   drm/i915/dpll: drop unused but set variables bestn and bestm1
>>   drm/i915/fb: drop unused but set variable cpp
>>   drm/i915/irq: drop unused but set variable tmp
>>   drm/i915/gt/uc: drop unused but set variable sseu
>>   drm/i915/gem: drop unused but set variable unpinned
>>   drm/i915/gem: annotate maybe unused but set variable c
>>   drm/i915/selftest: annotate maybe unused but set variable unused
>>   drm/i915: annotate maybe unused but set intel_plane_state variables
>>   drm/i915: annotate maybe unused but set intel_crtc_state variables
>>   drm/i915/gvt: annotate maybe unused gma_bottom variables
>>   drm/i915: re-enable -Wunused-but-set-variable
>>
>>  drivers/gpu/drm/i915/Makefile                      |  2 +-
>>  drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 ++
>>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  2 +-
>>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c           |  4 ----
>>  drivers/gpu/drm/i915/display/intel_display.c       | 10 +++++-----
>>  drivers/gpu/drm/i915/display/intel_display_irq.c   |  4 ++--
>>  drivers/gpu/drm/i915/display/intel_dpll.c          |  4 +---
>>  drivers/gpu/drm/i915/display/intel_fb.c            |  3 +--
>>  drivers/gpu/drm/i915/display/intel_fbc.c           |  6 +++---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  1 +
>>  drivers/gpu/drm/i915/display/skl_watermark.c       |  2 +-
>>  drivers/gpu/drm/i915/display/vlv_dsi.c             |  6 ++----
>>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  3 +--
>>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c          |  2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c     |  2 --
>>  drivers/gpu/drm/i915/gvt/cmd_parser.c              |  4 ++--
>>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +-
>>  18 files changed, 26 insertions(+), 35 deletions(-)
>>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
