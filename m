Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A127846478
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 00:34:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3420110EC09;
	Thu,  1 Feb 2024 23:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWqya/Lv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E579610EC09
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 23:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706830457; x=1738366457;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8Dgj68sxBOJ7fC7FsTT4IlRErsz5Rfvlr+gyyVDQM90=;
 b=AWqya/LvmL2+Z5NK0PnnGKIXDo+9zbGD42sQJx/pA2tiD3jbNR3kf3zi
 K9k1DgAHJej7NvMEcLPL9Ohyen0muZhkh0nOlG+6lyO2rz5qCmTDYmDxc
 ShLa3SWcxpfZ0m33aiLBYlWpNJdkBexZZIxQ62xJYA6/ouv3ngD9ZdG8N
 dcncXuV/mr+bouVeaaNdx8niEPh5qn1yhoBQKeayRA+r3Q+XVdCDAXCVX
 nyTRfPrVaIv6wWU3TRcIYP+EQci8pIMJA/uo3sgQImgg1qnpMePB50TqV
 sX4vAJfeVQVj66TH3cHGcw9QpEFAsY7t7OekrA3L3BJpxTAfbAXmfw0dZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="402877806"
X-IronPort-AV: E=Sophos;i="6.05,236,1701158400"; d="scan'208";a="402877806"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 15:34:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,236,1701158400"; 
   d="scan'208";a="210739"
Received: from mistoan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.140])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 15:34:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org, Suraj Kandpal
 <suraj.kandpal@intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, Sean Paul <sean@poorly.run>, Drew
 Davenport <ddavenport@chromium.org>
Subject: Re: [PATCH] drm/i915/display/vdsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
In-Reply-To: <CAE72mN=xxBKGyU++pmez3fGkvuY5o8rz5OHAirxpUC_ksT3dBw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240131211909.622419-1-navaremanasi@chromium.org>
 <87ttmsh7fn.fsf@intel.com>
 <CAE72mN=xxBKGyU++pmez3fGkvuY5o8rz5OHAirxpUC_ksT3dBw@mail.gmail.com>
Date: Fri, 02 Feb 2024 01:34:09 +0200
Message-ID: <87sf2bg3ny.fsf@intel.com>
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

On Thu, 01 Feb 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> On Thu, Feb 1, 2024 at 1:15=E2=80=AFAM Jani Nikula <jani.nikula@linux.int=
el.com> wrote:
>> On Wed, 31 Jan 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/=
gpu/drm/i915/display/intel_vdsc_regs.h
>> > index 64f440fdc22b..db29660b74f3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > @@ -51,8 +51,8 @@
>> >  #define DSCC_PICTURE_PARAMETER_SET_0         _MMIO(0x6BA00)
>> >  #define _DSCA_PPS_0                          0x6B200
>> >  #define _DSCC_PPS_0                          0x6BA00
>> > -#define DSCA_PPS(pps)                                _MMIO(_DSCA_PPS_=
0 + (pps) * 4)
>> > -#define DSCC_PPS(pps)                                _MMIO(_DSCC_PPS_=
0 + (pps) * 4)
>> > +#define DSCA_PPS(pps)                                ((pps < 12) ? _M=
MIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
>> > +#define DSCC_PPS(pps)                                ((pps < 12) ? _M=
MIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))
>>
>> There's no need to duplicate so much here, this could be just:
>>
>>         _MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps) : (pps) + 12) * 4)
>
> Yes thanks for suggesting the simplification
>
>
>>
>> Also the macro arguments need to be wrapped in braces.
>
> Your above suggestion should work as is right?
> #define DSCC_PPS(pps)                 _MMIO(_DSCC_PPS_0 + ((pps) < 12
> ? (pps) : (pps) + 12) * 4)
>
> Where are you suggesting extra braces?

I've added them in my suggestion.

The original had (pps < 12) and (pps + 12), which would fail if someone
passed in an expression with a lower precedence than < or +.

BR,
Jani.


--=20
Jani Nikula, Intel
