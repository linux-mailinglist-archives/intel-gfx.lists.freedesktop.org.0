Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D8847475
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 17:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41D710E0A8;
	Fri,  2 Feb 2024 16:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BsQ+BkXJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B122D10E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706890554; x=1738426554;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pzfykzBIp/XOHKAU7t0ktp9sR0fV8Fk5svQ7V5tka+I=;
 b=BsQ+BkXJlEq5D5nIyaX/Qt/Ivje7evus35Fe2T2zwTsHibjtbghNY7tu
 AT+sbnOU2Zcbe15sG3JxiX0MWagVZHs1+0KD5L5+hyIJ3baGa+PITsFFN
 TZmwypviP/nZ/BKuvo2BKTYFbftkSPUj/PTKrqq33MEUIFGUxOXRTL7u8
 tmZAaA4AXLseDJ6Ztemb0oBo2hQuQCv5CE/CCbuTHuEIrqBoApYoR9VZh
 ZrxSxxW7LK95dWjWx/On3HqlpaTsOb9+wgs0EmRLUaRm9Yq9k1lv8nG4q
 xubYfkdyM/yiAc1WDf2NkYG/emfl8o+dRSrQx+1De/bPMKkw7FIHrVrt5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="98724"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="98724"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 08:15:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="908609971"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="908609971"
Received: from mmermeza-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.59.198])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 08:15:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify
 intel_initial_plane_config() calling convention
In-Reply-To: <Zb0UVuTsYYk8_pzw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-13-ville.syrjala@linux.intel.com>
 <87ttmqew4i.fsf@intel.com> <Zb0UVuTsYYk8_pzw@intel.com>
Date: Fri, 02 Feb 2024 18:15:47 +0200
Message-ID: <87o7cyetak.fsf@intel.com>
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

On Fri, 02 Feb 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Feb 02, 2024 at 05:14:37PM +0200, Jani Nikula wrote:
>> On Tue, 16 Jan 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> So this fails to build on CONFIG_DRM_XE=3Dm, because it has its own
>> version of intel_plane_initial.c which has
>> intel_crtc_initial_plane_config(), but not intel_initial_plane_config().
>>=20
>> You'll get this as the first indication:
>>=20
>>   CC [M]  drivers/gpu/drm/xe/display/xe_plane_initial.o
>> ../drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: error: no previo=
us prototype for =E2=80=98intel_crtc_initial_plane_config=E2=80=99 [-Werror=
=3Dmissing-prototypes]
>>   270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
>>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>=20
>> but if you bypass that, eventually:
>>=20
>>   MODPOST Module.symvers
>> ERROR: modpost: "intel_initial_plane_config" [drivers/gpu/drm/xe/xe.ko] =
undefined!
>>=20
>> Needs to be fixed before merging.
>
> Can't see anything off in the CI results. Are we not at
> least build testing xe in i915 CI?

We're not. It's a work in progress.

You can Cc: intel-xe mailing list to get both build and testing on
Xe. (Also a work in progress to use the same config and builds for
both. Now they're completely detached.)


BR,
Jani.


--=20
Jani Nikula, Intel
