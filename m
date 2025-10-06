Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6890FBBE741
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 17:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F7610E0D6;
	Mon,  6 Oct 2025 15:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KS9rj4sA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C4210E0AC;
 Mon,  6 Oct 2025 15:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759763507; x=1791299507;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QR/LpZUbD16qWjIr/UTzkfEY5pTxEs2wtGy/3wpcQ24=;
 b=KS9rj4sARsv1cD0Kk7g6tls3dwjDYwfS4YNM+fXKj7a1JQ9X5iksPd0X
 RmzJUH/VlUVpHOU7vszdJDgh6wEoInCxBFc+EaliTktsoCKOsz8BaDCEZ
 ot9c30aAgEeE9EIjdwVlcS6GRXfueBD6zM0TjQCKcxP/oyUOu00JzrOU/
 ZTaKqhqqMCQMWHayVHaOAB3VToIz33e41yPuOgQGuuXU2lDLNqB3pl72u
 Rh8ThurK/iaPpDa3EFbLaT3tLTAr1DDzt5pozWFwyFEdIzYTMq1Fteqgb
 FyzyIs7iCw6iO30+IGdjBch/G951gs6Q/6JloPrNR2PhB5qDkEdv7NBr6 g==;
X-CSE-ConnectionGUID: 5lVxdMPATmu+v0M8KZFe1w==
X-CSE-MsgGUID: Xfe2AZNWSsqVU1ulGv9ubw==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="72191362"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="72191362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 08:11:46 -0700
X-CSE-ConnectionGUID: 1/Yvz7YnRAOonMSAtMgMGw==
X-CSE-MsgGUID: exII/pc8Tm+scfanX/sCwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="180331295"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.162])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 08:11:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [RFC] drm/{i915,xe}/display: pass hooks to display probe
In-Reply-To: <aOO7gF9zvg_SCaJf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251003092107.2892508-1-jani.nikula@intel.com>
 <aOO7gF9zvg_SCaJf@intel.com>
Date: Mon, 06 Oct 2025 18:11:41 +0300
Message-ID: <4010feb576de4f20b7f2323acf12693411344468@intel.com>
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

On Mon, 06 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Oct 03, 2025 at 12:21:07PM +0300, Jani Nikula wrote:
>> Let's gradually start calling i915 and xe core drivers from display via
>> function pointers passed at display probe. For starters, just add a
>> small feature test hook ->has_flat_ccs.
>>=20
>> FIXME: "hooks" is a terrible name, both as a parameter and a struct
>> intel_display member name. It should reflect that we're calling the core
>> or parent driver. This is a placeholder name for now.
>>=20
>> FIXME: Initially, one struct is fine... but once it accumulates a lot of
>> functions, should it have more indirection? Maybe everything should be
>> in sub-structs, or the top struct should just be a collection of
>> pointers to hook structs?
>>=20
>> 	struct intel_core_hooks {
>> 		const struct intel_rpm_hooks *rpm;
>> 	};
>>=20
>> The above would allow having the struct initialization inside the
>> implementation file, and the functions themselves static. In any case,
>> it seems best to have just one initialization of the hooks, instead of
>> one init/register call for each functional area.
>>=20
>> The downside is of course having to call the functions like:
>>=20
>> 	display->hooks->rpm->get(display->drm);
>>=20
>> FIXME: It would really be convenient if we could stop using a display
>> device with mock_gem_device() in mock_gem_device.c. The purpose of the
>> mock gem device is to run mock *gem* tests. Could we make it happen
>> without display?
>
> Haven't really thought too much about the display->xe/i915 direction
> yet, but I was pondering the opposite direction. Should we even use
> vfuncs there or perhaps just export the symbols from the display side?
>
> But symbol name collisions do worry me. There does seem to be a
> EXPORT_SYMBOL_FOR_MODULES() now, but I have a nagging feeling that it
> doesn't actually implement symbol namespaces (as in the same symbol
> name could be defined in multiple namespaces) but rather just prevents
> modules from loading when they don't have the permission to use a
> "namespaced" symbol.
>
> So with exports we'd probably have to carefully prefix each exported
> symbol with "intel_display_" (or whatever). We could of course still
> use EXPORT_SYMBOL_FOR_MODULES() to make sure other stuff can't access
> those symbols.

There's EXPORT_SYMBOL_NS() and MODULE_IMPORT_NS() nowadays that should
help. We should probably still have the prefixes, but it the namespace
should tackle the collisions.

BR,
Jani.

--=20
Jani Nikula, Intel
