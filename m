Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B37C3B25F
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B96E10E33E;
	Thu,  6 Nov 2025 13:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXv2gGUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8A410E2E3;
 Thu,  6 Nov 2025 13:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762435038; x=1793971038;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Xpe7pE/+HiBvIC2FvilFXJ2UIlGuAnBrszakZOti3Bg=;
 b=NXv2gGUzJsgH1/5A76xouWNDGjMq2Sw0WE8bPTPRWEmUzDNhvUbauGGp
 oQyyn5oOQJlVAr/NnHkiGQLMRvceroduBUw5C8a9MkLlFaQqW96gAGFlc
 gQ7OPg5jJjV+ghWPkOvZZI1RA5pdD1giLtxWzcNVETJfjqg6s/vUTBrO7
 +NuXBSuxwuKyZJjkbRjx0gGU9ncvDo6vgKW/MUEJvnVMIuvXGvaCUHKM5
 NZDaLVV3KfGIV0dUk3FiUbp5wDdx+MJYBCyT8IJMXIAuBF84rSOsHJ7mQ
 XqnxFkfahqxLWQj0lZ1/P/5Pl17XQlMZJICLgNlVqsgwN0W1yyUgetRkw Q==;
X-CSE-ConnectionGUID: d1/cE7A7StKkocrYJLqMuw==
X-CSE-MsgGUID: 6AnPimBgS32bieW0r9/HzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68219171"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68219171"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:17:18 -0800
X-CSE-ConnectionGUID: 6hnHVXVeR1SfqCtsi/7XUw==
X-CSE-MsgGUID: Yg37TPX+Rhyj+ZxfUMVzvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187913886"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:17:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout change
In-Reply-To: <DM3PPF208195D8DD9FE41C2ABEDBBF4D32CE3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-2-ville.syrjala@linux.intel.com>
 <6a1805606fe7963cc5ee998401a22c6b71476fe0@intel.com>
 <DM3PPF208195D8DD9FE41C2ABEDBBF4D32CE3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Thu, 06 Nov 2025 15:17:13 +0200
Message-ID: <06768caad8c135692c6ad4038e3059fd7fb47ff3@intel.com>
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

On Thu, 06 Nov 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: Re: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout chan=
ge
>>=20
>> On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Undo the bogus timeout change to
>> > intel_cx0_powerdown_change_sequence(). If this was intentional then it
>> > should have been justifie in the commit message.
>> >
>> > This is also now abusing intel_de_wait_custom() in way that prevents
>> > future conversion to poll_timeout_us().
>> >
>> > Fixes: fc9be0a10ca4 ("drm/i915/ltphy: Add a wrapper for LT Phy
>> > powerdown change sequence")
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > index b3b506d0e040..e7fe974129fe 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > @@ -2830,7 +2830,7 @@ void
>> intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>> >  	/* Update Timeout Value */
>> >  	if (intel_de_wait_custom(display, buf_ctl2_reg,
>> >
>> intel_cx0_get_powerdown_update(lane_mask), 0,
>> > -
>> XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
>> > +
>> XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
>
> According to Bspec: 74494
> The powerdown change update delay can go from anywhere to 2us to
> 1.2ms

Then use intel_de_wait_for_clear() with a 2 ms timeout. There's no
reason to use intel_de_wait_custom().

BR,
Jani.


--=20
Jani Nikula, Intel
