Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D29AB699C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266A710E619;
	Wed, 14 May 2025 11:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X170/mqW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ECF410E612;
 Wed, 14 May 2025 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747221405; x=1778757405;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TN0qIaic7BjJqxYUGgL3OMocEO5vrTNUIdOSXlWgn+o=;
 b=X170/mqWlcG/Ln4z5FdmVQkAAdok3p7x0rBpT4Fj3XYi38y9VHVnxS7E
 3C3iWdaJ6siKQg0cfQuYXRCRtZbWD/jkIlgizCJFziZMnRn32ib1waLuy
 1jNiSVu0tZE9uwwcK21T+tOSmusQdn+l9Csg6wVE+XVDYK0QxLMQK5ZYs
 M8mN9mhQ3TG386QhrQqPwfpAqBY9564aWFJtj6IG8WiHUQpWiUsxkXfiz
 WK0gqcsrG5nFD6T1xIvOI1HnMB3lBkM8F1WB3Gb4h0pH3rbVVZf1/EPSy
 YpHOF57FMTCoXN2Eca3pUfU1NFlPGxRngd/uP5uwmfusJGn4E6QHjIMEc Q==;
X-CSE-ConnectionGUID: ca5nfrZAQKiQeF8f0uOnLA==
X-CSE-MsgGUID: vn7XsdNeS+ixah5VnjXPWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="59744634"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="59744634"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:16:45 -0700
X-CSE-ConnectionGUID: bye5iZOXSwGHxJ98h3bQFQ==
X-CSE-MsgGUID: lyNQVT9OS6iKToI46I3YJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="137891356"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.180])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:16:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
In-Reply-To: <20250407142359.1398410-2-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-2-chaitanya.kumar.borah@intel.com>
Date: Wed, 14 May 2025 14:16:38 +0300
Message-ID: <87o6vvh27d.fsf@intel.com>
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

On Mon, 07 Apr 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com=
> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the code that alings the next instruction to the next
> QW boundary into a small helper. I'll have some more uses for
> this later.
>
> Also explain why we don't have to zero out the extra DW.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Chaitanya, your Signed-off-by is *required* in addition.

See https://developercertificate.org/.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 0ddcdedf5453..c166e02b8af0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -228,13 +228,25 @@ static bool is_dsb_busy(struct intel_display *displ=
ay, enum pipe pipe,
>  	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_B=
USY;
>  }
>=20=20
> +static void intel_dsb_ins_align(struct intel_dsb *dsb)
> +{
> +	/*
> +	 * Every instruction should be 8 byte aligned.
> +	 *
> +	 * The only way to get unaligned free_pos is via
> +	 * intel_dsb_reg_write_indexed() which already
> +	 * makes sure the next dword is zeroed, so no need
> +	 * to clear it here.
> +	 */
> +	dsb->free_pos =3D ALIGN(dsb->free_pos, 2);
> +}
> +
>  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
>  {
>  	if (!assert_dsb_has_room(dsb))
>  		return;
>=20=20
> -	/* Every instruction should be 8 byte aligned. */
> -	dsb->free_pos =3D ALIGN(dsb->free_pos, 2);
> +	intel_dsb_ins_align(dsb);
>=20=20
>  	dsb->ins_start_offset =3D dsb->free_pos;
>  	dsb->ins[0] =3D ldw;

--=20
Jani Nikula, Intel
