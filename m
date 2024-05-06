Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B312C8BCB0A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46F8112BDC;
	Mon,  6 May 2024 09:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJBr497d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6AB11228D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988833; x=1746524833;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rDug5Ozt0ZY3ezu4AyopybSgWnC/Y4n6QsWPUsNju44=;
 b=lJBr497di8siBUurXhtrolpkANG7kLqoRLxUPqZGIquKHt3mvcxggQ3g
 tajKK0C5YESa9TIRArX901IaFJAdMHvS+ztband5D6qo4NYA788qJXKxz
 5SY5afUuG0gNlRHVIa4qs0phGEQjYkZbBiopEmYp/rGdKtiT4+kPDLRv7
 CV0oMpcd6+6NnvRdm9CwXub8CbheCgONgV7Vyrr1xmokgPnUKWWxrBd9t
 Nbi8QS8yzHp+Kb/cK3xgi9q4HgVLqSdrj0jor9vd+HLsDgcY603bLj8Uz
 6zytXLJCyxKTuOTHAiGQwBjc/NOqN6UXSRpe2eSCUlpFtqZVOw/U+zoh+ g==;
X-CSE-ConnectionGUID: TRvWGnT3SU6vQYu0sYo7/Q==
X-CSE-MsgGUID: 7cwwcIt6QE6/HY0hxj/LPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10653600"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10653600"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:47:13 -0700
X-CSE-ConnectionGUID: 7MO1JFDkTOacnvR9CB7jXw==
X-CSE-MsgGUID: ZxoueogbRou7cfxwKJChvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="65548178"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:47:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/35] drm/i915/bios: Define (almost) all BDB blocks
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:47:07 +0300
Message-ID: <87a5l3mfvo.fsf@intel.com>
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I got curious about what gems (or turds) might be hiding
> inside the BDB blocks we aren't parsing. So I undertook the
> effort to dig up the definition for pretty much all of them.
>
> Unfortunately I didn't find anything really interesting, but
> might as well stick the definitions into the header for
> posterity. And I do have a followup to intel_vbt_decode to
> parse pretty much everything.
>
> I left out a few VBIOS only blocks, as well as the obsolete
> compression parameters block.
>
> The details were dug up from varius sources:
> - some came from various copies of the spec
> - some were derived from VBIOS sources
> - some I just had to reverse engineer by hand
>
> And I still have a few VBTs with a bunch of completely unknown
> blocks: one VLV with blocks 60-65, and one ADL with block 212.
> No clue as of now what those might be.

I R-b'd the ones that I could quickly look up and bothered to review,
and the rest is

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging.


>
> Ville Syrj=C3=A4l=C3=A4 (35):
>   drm/i915/bios: Define eDP DSC disable bit
>   drm/i915/bios: Remove version number comment from DEVICE_HANDLE_EFP4
>   drm/i915/bios: Indicate which VBT structures are based on EDID
>   drm/i915/bios: Get rid of "LVDS" from all LFP data stuff
>   drm/i915/bios: Rename SDVO DTD blocks a bit
>   drm/i915/bios: Define "TV" child device handle
>   drm/i915/bios: Flag "VBIOS only" VBT data blocks
>   drm/i915/bios: Add version notes for some blocks
>   drm/i915/bios: Define VBT block 3 (Display Toggle Option) contents
>   drm/i915/bios: Define VBT block 4 (Mode Support List) contents
>   drm/i915/bios: Define VBT block 5 (Generic Mode Table)
>   drm/i915/bios: Define VBT blocks 6,7,8 (register tables) contents
>   drm/i915/bios: Define VBT block 10 (Mode Removal Table) contents
>   drm/i915/bios: Define VBT block 12 (Driver Persistent Algorithm)
>     contents
>   drm/i915/bios: Define VBT block 15 (Dot Clock Override Table) contents
>   drm/i915/bios: Define ALM only VBT block 9 contents
>   drm/i915/bios: Define VBT block 17 (SV Test Functions) contents
>   drm/i915/bios: Define VBT block 18 (Driver Rotation) contents
>   drm/i915/bios: Define VBT blocks 16,29,31 (Toggle List) contents
>   drm/i915/bios: Define VBT blocks 19,30,32 (Display Configuration
>     Removal Table) contents
>   drm/i915/bios: Define VBT block 20 (OEM Customizable Modes) contents
>   drm/i915/bios: Define VBT block 21 (EFP List) contents
>   drm/i915/bios: Define VBT block 24 (SDVO LVDS PnP ID) contents
>   drm/i915/bios: Define VBT block 25 (SDVO LVDS PPS) contents
>   drm/i915/bios: Define VBT block 26 (TV Options) contents
>   drm/i915/bios: Define VBT block 28 (EFP DTD) contents
>   drm/i915/bios: Define VBT block 45 (eDP BFI) contents
>   drm/i915/bios: Define VBT block 46 (Chromaticity For Narrow Gamut
>     Panel) contents
>   drm/i915/bios: Define VBT block 51 (Fixed Set Mode Table) contents
>   drm/i915/bios: Define VBT block 55 (RGB Palette Table) contents
>   drm/i915/bios: Define VBT block 57 (Vswing PreEmphasis Table) contents
>   drm/i915/bios: Define VBT block 50 (MIPI) contents
>   drm/i915/bios: Define VBT block 55 (Compression Parameters)
>   drm/i915/bios: Define VBT block 252 (int15 Hook)
>   drm/i915/bios: Define VBT block 253 (PRD Table) contents
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 229 +++---
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 714 +++++++++++++++---
>  5 files changed, 742 insertions(+), 207 deletions(-)

--=20
Jani Nikula, Intel
