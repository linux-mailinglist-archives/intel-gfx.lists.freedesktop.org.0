Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BF2B19D84
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 10:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD8210E423;
	Mon,  4 Aug 2025 08:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWHIcTSY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2F610E423
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 08:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754295689; x=1785831689;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VTNDcCGn0/ZdlhAgfYjPtPu3pDl/++XzNzJa3C/+ZDs=;
 b=VWHIcTSYWWue8SW50zlQ+UZIJkuZLUohsZb0OKEBu4t0iEAGKiaBcZmh
 /7NNDaUq5bT0t3KE6X7fS/s91nII58+Slerpk93tserFqBwiNKPSPinry
 L0/0GNjhNccODaeslyyYg42NTrM+hKhpH5CDp7yLcput4OQ7WJ5BtnXxs
 3n0QwAorb0y0gBp0aKTKJZwbSbKxIVZKvOR/2GOryApouNFiVs4nIuu1F
 alb0SGXC16STDEkgDMzw1Ft4mb/+zzi3PBWw/M1wWcmA0MbfDJcFG17M9
 CTKQGlRCK7sNqA+Htw8Tgo13kEhMnqrXwh8pdWx577ny6FuiUeenIx/Rz w==;
X-CSE-ConnectionGUID: o/cIdoiWTae1dYn5DK7F+Q==
X-CSE-MsgGUID: /Hj3f9VcS9yG2XYBMrGwUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="79106221"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="79106221"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:21:29 -0700
X-CSE-ConnectionGUID: ZgB7TxriQaGp0tGbZb5p3A==
X-CSE-MsgGUID: xjQK46ngQC+QVmbL2++O9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164487942"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.215])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:21:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Ren=C3=A9?= Herman <rene.herman@gmail.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
In-Reply-To: <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
Date: Mon, 04 Aug 2025 11:21:23 +0300
Message-ID: <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
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

On Sat, 02 Aug 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
> On 01-08-2025 11:19, Jani Nikula wrote:
>
>> On Thu, 31 Jul 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
>>> Here's that Ubuntu launchpad bug on freedesktop.org, but including a
>>> possibly interesting fix from 5 months ago in the currently last commen=
t:
>>>
>>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441
>>=20
>> Might be useful to attach dmesg and VBT to the bug as described at [1].
>
> Just in case: please note the freedesktop.org bug is not our bug but=20
> just a 4 year old same one. I also unfortunately don't have the hardware=
=20
> on hand, and it seems the person I am assisting with this can't due to=20
> vacation get to it right now.
>
> Although I'm not a graphics/display person, seems to me it's more or=20
> less fixed by Arun Murthy (added to the To: list) in the last, still=20
> recent-ish comment on that bug?
>
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_2803858
>
> I.e., could while working with the person with the hardware not figure=20
> out what the point of that i915_drrs_ctl would be if the system=20
> immediately enabled it again anyway, so Arun's approach seems to make=20
> sense to me.

Hacking debugfs is not a fix, it's a hack.

> This is probably going to be a more common issue soon when these older=20
> no-TPM Haswell systems get installed with Linux at the end of Windows 10=
=20
> support.

On the upside, we'll get more people with the hardware to test.


BR,
Jani.


--=20
Jani Nikula, Intel
