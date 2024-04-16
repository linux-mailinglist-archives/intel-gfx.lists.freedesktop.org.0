Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC69C8A6597
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 10:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1636510F0E5;
	Tue, 16 Apr 2024 08:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tznqvtzm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D767A10FFB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 08:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713254422; x=1744790422;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=A0UhEo5CtF09GvzOkw7zbAoV5m2oDHhNGJgV61WOf2U=;
 b=TznqvtzmO3+KOmFeTH4F/cMhYgTAND431DSeC3xIzEqHhIUb+crq/PCY
 C6TEh3/QaH5TtebbyOCWzl7vIpVSrgeT9A8BESke9XbUWcvrDSrxLZ3x0
 pcoisomKaleIeWn/8ddBXtTLMgRe6Nrwa5uMna0+TadiHpR3Bj2yWFrHJ
 KZPezJh/zfd0bWZOzfQxkvVqj819n0zz+DHCfxclkEv3BsWEoLQNv9mY3
 CodQFBL5D8+9d6JsDN2FB2Rqlvtm1ciwpkd9IfusTsB0IE0xVTt42cC7o
 F1mrEzZhJ/wg9lc4X6ieWeG/r4128wjFRjirbDqnpvjB51M2yj9gWLctu A==;
X-CSE-ConnectionGUID: eUNmxakcSC+aTAY6pgOmHA==
X-CSE-MsgGUID: tswoI9NeTdW6V6gYR8jVvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="12454241"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="12454241"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 01:00:16 -0700
X-CSE-ConnectionGUID: 9IuNJDEISWSvmZfPuQCU1g==
X-CSE-MsgGUID: SUR9e7yIRD2yz6AAHl0MOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22075952"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.100])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 01:00:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Relvas <josemonsantorelvas@gmail.com>,
 intel-gfx@lists.freedesktop.org
Cc: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [REQUEST] Add support for Intel DPST (Display Power Saving
 Technology)
In-Reply-To: <ZhADkdyItNEuoxKN@aquecedor-3-0.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZhADkdyItNEuoxKN@aquecedor-3-0.lan>
Date: Tue, 16 Apr 2024 11:00:12 +0300
Message-ID: <87sezlzqib.fsf@intel.com>
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

On Fri, 05 Apr 2024, Jos=C3=A9 Relvas <josemonsantorelvas@gmail.com> wrote:
> The best approach here would probably be to expose a similar attribute to=
 amdgpu's=20
> "panel_power_savings", with a scale that controls the feature's aggressiv=
eness,
> then update userspace tools, including power-profiles-daemon, to set the =
value
> based on the intended energy scheme.

I don't really know what panel_power_savings does or how it works, but
clearly it's not how this particular thing works on Intel
hardware. There isn't a trivial knob you could adjust.

Basically the goal is to reduce display brightness (and thus power
consumption) based on display content with the high level idea of:

reduced brightness, image enhancement params =3D fn(brightness, histogram)

Where you have to add an API for reading the image histogram, add an API
to set the image enhancement parameters, and how that function works is
userspace policy that needs to be implemented in userspace.


BR,
Jani.


--=20
Jani Nikula, Intel
