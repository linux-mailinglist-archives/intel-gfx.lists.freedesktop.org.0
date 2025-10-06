Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A794BBEAF7
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00FAF10E42F;
	Mon,  6 Oct 2025 16:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IwpkwXPH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FA610E42E;
 Mon,  6 Oct 2025 16:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759768936; x=1791304936;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NSFTEdxfNHdZ2q9YxpDKyRc3dKFkL4RSZSSP/FgorKY=;
 b=IwpkwXPHxncFnyFDOCgPtztD0+kEqskPH2fKJMel6og1YUImW7LJ7R0Q
 rvAUhYpyGH0ZZnLjBnGDqKJsiBIwYGjikz3xUWK+KFZItHICzYaL1siKV
 E74x8vzZqQgIMxtznDmVMetr0Z6pWbesJQiSubHKKPZxRhTNmxpcXgZai
 BH+gnIgBnRAQYs/YDh+McPPuKUszSJTLlvxAqOFfmFUoUHbdKZkU2uXGn
 SLBlpP7X01yKfAlRCX0IS60CBDeWDP8fRYtNINqMYUI77GjWSFtG6Xk4C
 3uwSAPBr93AVpRsm0DTSF7QhI4XmB8t0kWQPUflPK/TSIm//iC+jmXu4Z g==;
X-CSE-ConnectionGUID: 0oy/AyxFQoSGVy03WVkTrQ==
X-CSE-MsgGUID: sFP8JG6+RLKYj1xKzqgrIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="60983285"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="60983285"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:42:15 -0700
X-CSE-ConnectionGUID: jKBDNLrAROWkcmOaKkOubg==
X-CSE-MsgGUID: z72o4CBeQlq6QLpKJDtjbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="180715591"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.162])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:42:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [RFC] drm/{i915,xe}/display: pass hooks to display probe
In-Reply-To: <aOPrG54HmCDbJK5B@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251003092107.2892508-1-jani.nikula@intel.com>
 <aOO7gF9zvg_SCaJf@intel.com>
 <4010feb576de4f20b7f2323acf12693411344468@intel.com>
 <aOPrG54HmCDbJK5B@intel.com>
Date: Mon, 06 Oct 2025 19:42:11 +0300
Message-ID: <ce9fd8e5066b5e350264a673ad5e25ba15c169ce@intel.com>
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
> On Mon, Oct 06, 2025 at 06:11:41PM +0300, Jani Nikula wrote:
>> On Mon, 06 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Fri, Oct 03, 2025 at 12:21:07PM +0300, Jani Nikula wrote:
>> >> Let's gradually start calling i915 and xe core drivers from display v=
ia
>> >> function pointers passed at display probe. For starters, just add a
>> >> small feature test hook ->has_flat_ccs.
>> >>=20
>> >> FIXME: "hooks" is a terrible name, both as a parameter and a struct
>> >> intel_display member name. It should reflect that we're calling the c=
ore
>> >> or parent driver. This is a placeholder name for now.
>> >>=20
>> >> FIXME: Initially, one struct is fine... but once it accumulates a lot=
 of
>> >> functions, should it have more indirection? Maybe everything should be
>> >> in sub-structs, or the top struct should just be a collection of
>> >> pointers to hook structs?
>> >>=20
>> >> 	struct intel_core_hooks {
>> >> 		const struct intel_rpm_hooks *rpm;
>> >> 	};
>> >>=20
>> >> The above would allow having the struct initialization inside the
>> >> implementation file, and the functions themselves static. In any case,
>> >> it seems best to have just one initialization of the hooks, instead of
>> >> one init/register call for each functional area.
>> >>=20
>> >> The downside is of course having to call the functions like:
>> >>=20
>> >> 	display->hooks->rpm->get(display->drm);
>> >>=20
>> >> FIXME: It would really be convenient if we could stop using a display
>> >> device with mock_gem_device() in mock_gem_device.c. The purpose of the
>> >> mock gem device is to run mock *gem* tests. Could we make it happen
>> >> without display?
>> >
>> > Haven't really thought too much about the display->xe/i915 direction
>> > yet, but I was pondering the opposite direction. Should we even use
>> > vfuncs there or perhaps just export the symbols from the display side?
>> >
>> > But symbol name collisions do worry me. There does seem to be a
>> > EXPORT_SYMBOL_FOR_MODULES() now, but I have a nagging feeling that it
>> > doesn't actually implement symbol namespaces (as in the same symbol
>> > name could be defined in multiple namespaces) but rather just prevents
>> > modules from loading when they don't have the permission to use a
>> > "namespaced" symbol.
>> >
>> > So with exports we'd probably have to carefully prefix each exported
>> > symbol with "intel_display_" (or whatever). We could of course still
>> > use EXPORT_SYMBOL_FOR_MODULES() to make sure other stuff can't access
>> > those symbols.
>>=20
>> There's EXPORT_SYMBOL_NS() and MODULE_IMPORT_NS() nowadays that should
>> help. We should probably still have the prefixes, but it the namespace
>> should tackle the collisions.
>
> I just did a quick test and the build already fails at modpost
> if two modules try to export the same symbol name with different
> "namespaces". So the "namespace" in the name of this feature is
> basically a complete lie. All the symbols still live in the same
> global namespace and some modules are just forbidden from calling
> some of them. Any actual namespace will still have to be baked
> into the symbol name at the exporter.

Ugh. *facepalm*.


--=20
Jani Nikula, Intel
