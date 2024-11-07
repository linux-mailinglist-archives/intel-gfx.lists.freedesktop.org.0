Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE199C0113
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:23:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF7C10E7D6;
	Thu,  7 Nov 2024 09:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Byvvnj6I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFD210E7D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971379; x=1762507379;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=r7XY3zE3TihKGfckCWYvzdH6hCQ/tH70+dxNStVfPq8=;
 b=Byvvnj6IjjtCm3tL5/yCWG1pjRBXQ1u9zcb3a24ADC4rAraOHlNueyEj
 leWjZFWk6QkwXC9O17qeLxj44Iz8xMXW6iVIpiqQX4U7KGGYJVnaPwuOq
 NwECvilmIznb1JaEg9f0XmiQ1j08Va6eVVaBeCKSzueCdjdTCv3SNOQ67
 hpDy27KAvWy3xSaHV9wxaIQLvWwX8GMbEXgpTRF/LJCY/ahMGbXlL6W7A
 jYgWYX/FGNbDb4rgOKXeBTRiFdHF8kHwrikkE0Uqmk4hIhLZK4tAKNAKN
 bix64+w7DULyRUq7n2FpZsupo6zQWkMSRaJL18mlbqg6AwQZWz5ZW1n/d A==;
X-CSE-ConnectionGUID: SW1jZuAaQHif+81O/MFjUg==
X-CSE-MsgGUID: eaPUnFzPSA+T9D3aR118zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="18427021"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="18427021"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:22:58 -0800
X-CSE-ConnectionGUID: 6/KEaQmbQwKOmzjd9JOJ5g==
X-CSE-MsgGUID: B+6h0I6vT1eDm8nR1Lxywg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85416722"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:22:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915/pps: Some PPS cleanups
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:22:53 +0200
Message-ID: <87wmhfe6tu.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I just wanted to defuse the mess around struct
> edp_power_seq, but ended up super confused by the PPS
> delay initialization code and so ended up untangling
> some of that mess as well.

Thanks, this was long overdue, nice cleanup.

The one thing I missed (that could be added on top) was units in the
debug logs, 100 us for struct intel_pps_delays, and ms for struct
intel_pps *_delay members.

BR,
Jani

>
> Ville Syrj=C3=A4l=C3=A4 (8):
>   drm/i915/pps: Store the power cycle delay without the +1
>   drm/i915/pps: Decouple pps delays from VBT struct definition
>   drm/i915/pps: Rename intel_pps_delay members
>   drm/i915/lvds: Use struct intel_pps_delays for LVDS power sequencing
>   drm/i915/pps: Spell out the eDP spec power sequencing delays a bit
>     more clearly
>   drm/i915/pps: Extract msecs_to_pps_units()
>   drm/i915/pps: Extract pps_units_to_msecs()
>   drm/i915/pps: Eliminate pointless get_delay() macro
>
>  drivers/gpu/drm/i915/display/intel_bios.c     |  15 +-
>  drivers/gpu/drm/i915/display/intel_bios.h     |   8 -
>  .../drm/i915/display/intel_display_types.h    |  15 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   1 -
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  49 +++---
>  drivers/gpu/drm/i915/display/intel_pps.c      | 149 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +
>  7 files changed, 136 insertions(+), 109 deletions(-)

--=20
Jani Nikula, Intel
