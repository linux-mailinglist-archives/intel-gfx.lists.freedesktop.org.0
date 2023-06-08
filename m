Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C7C727AC8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BA210E0A8;
	Thu,  8 Jun 2023 09:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07C110E0A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686215121; x=1717751121;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=gTbJENjhvy2+eIphnmFikwOIrTGenSxNowYbVEer2Us=;
 b=bVzeFctuF64kUR806/1hlr03XtTr4OYnGWZ/P19WH9JhwesiuKwBV80U
 ZJXmSHRKgiWA9ao4WIjipQSz6c5d6B74rJFVWBX3CaUV9RKnMaVBYcC8u
 hxoKq424yxXv6rpDTifB90J1ND3BBIBGeQ52AKEU5kZgrFVP7xvZBy+wn
 NHnj9cJk8FvsjPt3QudZpjWoKedGUhi89YwzxJ1pKnggDN5fVP5FaPqQe
 L9mnBhmpIIJNBNphORTVF2Skymmy0PKCgcVVOR1P82MUmYmrhzeXVa1To
 ruDCAT4bWkeH/wVFm+O+1BYmyvvR6t1uTKX9XKThqt01vju22EERkY/Lh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="356110431"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="356110431"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="704004738"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="704004738"
Received: from ovaispap-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.59.117])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:05:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87edmntv6p.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1685119006.git.jani.nikula@intel.com>
 <47e1e5df376354c07fb428a49acbb14cd3dd6f11.camel@intel.com>
 <87edmntv6p.fsf@intel.com>
Date: Thu, 08 Jun 2023 12:05:16 +0300
Message-ID: <87ttvis4s3.fsf@intel.com>
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

On Wed, 07 Jun 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 07 Jun 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
>> On Fri, 2023-05-26 at 19:37 +0300, Jani Nikula wrote:
>>> Bring back -Wunused-but-set-variable both in W=3D1 build as well as
>>> locally for CI and development. This already found dubious code.
>>
>> for the whole set (including v2 of patch 01) :
>>
>> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>
> Thanks for the review, pushed patches 1-13 to drm-intel-next. There's a
> different version for patch 14 pending from Zhi, and can't enable the
> warning in patch 15 without it.

And pushed the rest, thanks.

BR,
Jani.

>
> BR,
> Jani.
>
>>
>>>
>>> Jani Nikula (15):
>>>   drm/i915/plane: warn on non-zero plane offset
>>>   drm/i915/ddi: drop unused but set variable intel_dp
>>>   drm/i915/dsi: drop unused but set variable data
>>>   drm/i915/dsi: drop unused but set variable vbp
>>>   drm/i915/dpll: drop unused but set variables bestn and bestm1
>>>   drm/i915/fb: drop unused but set variable cpp
>>>   drm/i915/irq: drop unused but set variable tmp
>>>   drm/i915/gt/uc: drop unused but set variable sseu
>>>   drm/i915/gem: drop unused but set variable unpinned
>>>   drm/i915/gem: annotate maybe unused but set variable c
>>>   drm/i915/selftest: annotate maybe unused but set variable unused
>>>   drm/i915: annotate maybe unused but set intel_plane_state variables
>>>   drm/i915: annotate maybe unused but set intel_crtc_state variables
>>>   drm/i915/gvt: annotate maybe unused gma_bottom variables
>>>   drm/i915: re-enable -Wunused-but-set-variable
>>>
>>>  drivers/gpu/drm/i915/Makefile                      |  2 +-
>>>  drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 ++
>>>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  2 +-
>>>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
>>>  drivers/gpu/drm/i915/display/intel_ddi.c           |  4 ----
>>>  drivers/gpu/drm/i915/display/intel_display.c       | 10 +++++-----
>>>  drivers/gpu/drm/i915/display/intel_display_irq.c   |  4 ++--
>>>  drivers/gpu/drm/i915/display/intel_dpll.c          |  4 +---
>>>  drivers/gpu/drm/i915/display/intel_fb.c            |  3 +--
>>>  drivers/gpu/drm/i915/display/intel_fbc.c           |  6 +++---
>>>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  1 +
>>>  drivers/gpu/drm/i915/display/skl_watermark.c       |  2 +-
>>>  drivers/gpu/drm/i915/display/vlv_dsi.c             |  6 ++----
>>>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  3 +--
>>>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c          |  2 +-
>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c     |  2 --
>>>  drivers/gpu/drm/i915/gvt/cmd_parser.c              |  4 ++--
>>>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +-
>>>  18 files changed, 26 insertions(+), 35 deletions(-)
>>>
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
