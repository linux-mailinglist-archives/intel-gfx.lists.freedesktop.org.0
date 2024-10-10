Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A5F9985D3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 14:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0715510E8DA;
	Thu, 10 Oct 2024 12:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZnUlYTpK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF03010E157;
 Thu, 10 Oct 2024 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728562954; x=1760098954;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FwLQ+7HxyyHuco3cxblOsFwG2WJu/a9vzRLHfdQKl/k=;
 b=ZnUlYTpKwVHpQFEX1hx/osB9UgdtR8Ny3Lnt/FdeTiR1RPwLKyJhR405
 PdsA9Gpcr1peZL8yFWOqCLqKaHVy+ThAViipmEj/BKtgUCvmikQmEuFJ2
 CwHPc5FLxMMbv1hUVnfPRapO+Oq1NGPpBiVFaiJZZTNj3n40q0wPWm1e2
 AkBue5jAKoLBlNrUdkbOqzbIcBEv08lxNoHhwiCQQj+hNE9LGiLroLvl5
 p563J3KQCL48uWhbHWgGntyOLB/bnkk6dijgTqeLV3j7VERKzdw1uixbe
 7/HH4/c0xctCfpUVBrRM+gIYNg/MukMjpgPjz4UVls1MEz0aehhlVT3iP g==;
X-CSE-ConnectionGUID: tCvEOXSvRHmx2h3VgE669w==
X-CSE-MsgGUID: TWHKTyweQp6XToG0ZVP1Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15541452"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="15541452"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 05:22:33 -0700
X-CSE-ConnectionGUID: xG0yq7q1S06Kml/iYeMdBw==
X-CSE-MsgGUID: F1pMsZRqTPCXgd4e7LucnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="76569925"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 05:22:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/irq: s/gen3/gen2/
In-Reply-To: <ZwfB6l8nQelIYx2c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
 <20241008214349.23331-4-ville.syrjala@linux.intel.com>
 <87o73ta86y.fsf@intel.com> <ZwfB6l8nQelIYx2c@intel.com>
Date: Thu, 10 Oct 2024 15:22:25 +0300
Message-ID: <87frp46tby.fsf@intel.com>
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

On Thu, 10 Oct 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 09, 2024 at 01:20:53PM +0300, Jani Nikula wrote:
>> On Wed, 09 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Now that we use the gen3 codepaths also for gen2
>> > rename everything to gen2_ to match.
>>=20
>> This was fine for the gt stuff where there are gen5 and gen6 functions,
>> but should we just call these something more generic since there are no
>> platform specific functions?
>>=20
>> The naming is a bit funky already.
>>=20
>> intel_irq_init() is *not* the higher level function for init. It's
>> actually intel_irq_install() -> intel_irq_postinstall() that calls
>> gen3_irq_init() and some other stuff.
>
> intel_irq_init() seems like it should be ripped apart and distributed to
> more appropriate places. The guc stuff at least. And most of the l3
> parity stuff also lives in some gt code, so the rest should probably
> move as well (Either that or we rip out the wole thing. I suspect no
> is actually using that anywhere).
>
> But no idea what to do about the gen2_ stuff.

*shrug* I guess in the mean time we can go ahead with this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



--=20
Jani Nikula, Intel
