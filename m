Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA70A19708
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 17:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303B310E155;
	Wed, 22 Jan 2025 16:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dhN11g7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1565A10E155;
 Wed, 22 Jan 2025 16:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737565166; x=1769101166;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8jLvvkkLt8RK8RpqI3qYLh9aoibRSjEg5jGiveAw4Gw=;
 b=dhN11g7EqZ98ah0NyC9CoeRqFIcJTZx0Fm+mYBN+sWgTcshxfQ97nVBe
 kuJLq1MwmuOdhmMnoUXj4RtV4pfLhRRR/c6uAmSYoQ6NRKsLzvjKXpdaJ
 ZfzvLI1BQuNYWvv2e7RLnQXMmpjtJW1QT3pxu/VYbJQblj7cjfp9S02i8
 Y7ILdfSZZgYt1quiDr7PrU4STvRRFoY8Tcpg4IwbWPEJWC2x7IIpUcuvz
 nZ5AhGjhz0+JbIr/+D3/OsmvMxqPvYkxnDtC0hfxJPyRQZJkUNDV4TdZ5
 eFwm7n+21kx0x/dgEsEWLXkTJcXMhGslj5gobNPYAzAxenYyUGustcGpb g==;
X-CSE-ConnectionGUID: 27XalQ+SQ2C2WNzOo7OYUg==
X-CSE-MsgGUID: BKFjsqbKRxurk27al8YtYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38282019"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="38282019"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 08:52:25 -0800
X-CSE-ConnectionGUID: i9jP9b62TM6dg9yslfwJWQ==
X-CSE-MsgGUID: omU61pGISma0eiFDCznVHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107795705"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 08:52:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>
Subject: Re: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
In-Reply-To: <5848e8d3-8b0f-4d98-bc19-ba21b13444e5@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
 <444eadb3d664c4624c70d8205770b28e75b2061d.camel@intel.com>
 <5848e8d3-8b0f-4d98-bc19-ba21b13444e5@intel.com>
Date: Wed, 22 Jan 2025 18:52:19 +0200
Message-ID: <87a5biokos.fsf@intel.com>
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

On Wed, 22 Jan 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 1/22/2025 4:15 AM, Almahallawy, Khaled wrote:
>> Thank You for the series.
>> Tested a modeline that is not pre-computed and able to see pixel clock
>> calculation done correctly and the analyzer turns on:
>>
>> adjusted mode: "3440x1440": 50 265250 3440 3488 3520 3600 1440 1443
>> 1453 1474 0x48 0x9
>> crtc timings: clock=3D265250, hd=3D3440 hb=3D3440-3600 hs=3D3488-3520 ht=
=3D3600,
>> vd=3D1440 vb=3D1440-1474 vs=3D1443-1453 vt=3D1474, flags=3D0x9
>>
>> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>
> Thanks Khaled for the testing.
>
> Jani, does the series looks alright to merge?

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
>
> Regards,
>
> Ankit
>
>>
>> On Mon, 2025-01-20 at 09:51 +0530, Ankit Nautiyal wrote:
>>> The HDMI PLL programming involves pre-calculated values for specific
>>> frequencies and an algorithm to compute values for other frequencies.
>>> While the algorithm itself wasn't part of the driver, tables were
>>> added based on it for known modes.
>>>
>>> Some HDMI modes were pruned due to lack of support (for example
>>> issues
>>> [1],[2], and [3]).
>>> This series adds the algorithm for computing HDMI PLLs for
>>> SNPS/C10PHY
>>> to work with all modes supported by the hardware.
>>>
>>> The original algorithm uses floating-point math, which has been
>>> converted to integers while preserving precision. As a result,
>>> the values in the existing computable tables are very close but not
>>> exact. Testing with DG2 and MTL on various panels revealed no issues.
>>>
>>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9722
>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10654
>>> [3] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10956
>>>
>>> Rev2:
>>> -Change the name of the new file for HDMI PLL algorithm.
>>> -Fix styling issues and bit refactoring for readbility.
>>> -Fix issues reported by kernel test bot.
>>>
>>> Rev3:
>>> -Modify the names of helper functions to align with filename.
>>>
>>> Rev4:
>>> -Rebase, added Bspec references, and address review comments.
>>>
>>> Ankit Nautiyal (5):
>>>  =C2=A0 drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm f=
or
>>> DG2
>>>  =C2=A0 drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
>>>  =C2=A0 drm/i915/cx0_phy_regs: Add C10 registers bits
>>>  =C2=A0 drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algori=
thm
>>>  =C2=A0 drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>>>
>>>  =C2=A0drivers/gpu/drm/i915/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0 1 +
>>>  =C2=A0drivers/gpu/drm/i915/display/intel_cx0_phy.c=C2=A0 |=C2=A0 49 +--
>>>  =C2=A0drivers/gpu/drm/i915/display/intel_cx0_phy.h=C2=A0 |=C2=A0=C2=A0=
 1 -
>>>  =C2=A0.../gpu/drm/i915/display/intel_cx0_phy_regs.h |=C2=A0 24 ++
>>>  =C2=A0drivers/gpu/drm/i915/display/intel_hdmi.c=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 12 -
>>>  =C2=A0.../drm/i915/display/intel_snps_hdmi_pll.c=C2=A0=C2=A0=C2=A0 | 3=
64
>>> ++++++++++++++++++
>>>  =C2=A0.../drm/i915/display/intel_snps_hdmi_pll.h=C2=A0=C2=A0=C2=A0 |=
=C2=A0 17 +
>>>  =C2=A0drivers/gpu/drm/i915/display/intel_snps_phy.c |=C2=A0 37 +-
>>>  =C2=A0drivers/gpu/drm/i915/display/intel_snps_phy.h |=C2=A0=C2=A0 1 -
>>>  =C2=A0drivers/gpu/drm/xe/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0=C2=A0 1 +
>>>  =C2=A010 files changed, 427 insertions(+), 80 deletions(-)
>>>  =C2=A0create mode 100644
>>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>>>  =C2=A0create mode 100644
>>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>>>

--=20
Jani Nikula, Intel
