Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGqAE9EcxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:47:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8CD334B0C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:47:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E576210E98E;
	Thu, 26 Mar 2026 11:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P60XCysG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C967610E98E;
 Thu, 26 Mar 2026 11:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774525644; x=1806061644;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aBRJ+zIEDd5MxT0Xu3fiSgNw7R1Y1jcYdfOoY+jjTkk=;
 b=P60XCysGp+QcDQ0NNO0+7u2BB01gvVFhsAYdSfko6bmcyjGARfxoOYpV
 amI4nkZAOBpoNvyO4EBqOiL9BS+2G0qXJu9x7EdSS6odlL0CCGbADxRcS
 akNRo1aKh6oYhLHVBMFBQQW/lQnQSWcJvtI1Jmf4B3jy7jXBHxHDXp6uH
 p/BAJ1ptD3b8FhdhNnp/DQ3Wy0b+/7GGcdE94ycOxQpVko2Ht+6m0a3+q
 HDrSWvj6vJRXwe6LYNxuhLx938xV+c2gCdnlSu0u2SgmfBQUnTGvLHdW2
 6x1MpIbQl36iQFP4Ub+L1wW77MpiBJlpt3BwVraY3q0kkAsWnLid8OzKt A==;
X-CSE-ConnectionGUID: WcQE/cASRDG/+5KyFUFZ2A==
X-CSE-MsgGUID: VqDMQCh0RSmS4emv7MxAdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="98198785"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="98198785"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:47:23 -0700
X-CSE-ConnectionGUID: qDP/FGCcT4aViONhaqW8nQ==
X-CSE-MsgGUID: g40QvmV6RfCvyR0Op56ZKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="255477419"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:47:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/12] drm/i915/rom: Use intel_de for SPI ROM register
 access
In-Reply-To: <20260325185342.11482-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-13-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:47:17 +0200
Message-ID: <d2fd286522bca63de052868b228920075511a4e8@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9E8CD334B0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since we moved intel_rom.c back into the display code, juse
> use intel_de_{read,write}() for the register accesses.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_rom.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i=
915/display/intel_rom.c
> index d573059fb0d9..54f842c09fb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_rom.c
> +++ b/drivers/gpu/drm/i915/display/intel_rom.c
> @@ -7,8 +7,9 @@
>=20=20
>  #include <drm/drm_device.h>
>=20=20
> +#include "intel_de.h"
> +#include "intel_display_types.h"
>  #include "intel_rom.h"
> -#include "intel_uncore.h"
>  #include "intel_oprom_regs.h"
>=20=20
>  struct intel_rom {
> @@ -17,7 +18,7 @@ struct intel_rom {
>  	void __iomem *oprom;
>=20=20
>  	/* for SPI */
> -	struct intel_uncore *uncore;
> +	struct intel_display *display;
>  	loff_t offset;
>=20=20
>  	size_t size;
> @@ -30,10 +31,10 @@ struct intel_rom {
>=20=20
>  static u32 spi_read32(struct intel_rom *rom, loff_t offset)
>  {
> -	intel_uncore_write(rom->uncore, PRIMARY_SPI_ADDRESS,
> -			   rom->offset + offset);
> +	intel_de_write(rom->display, PRIMARY_SPI_ADDRESS,
> +		       rom->offset + offset);
>=20=20
> -	return intel_uncore_read(rom->uncore, PRIMARY_SPI_TRIGGER);
> +	return intel_de_read(rom->display, PRIMARY_SPI_TRIGGER);
>  }
>=20=20
>  static u16 spi_read16(struct intel_rom *rom, loff_t offset)
> @@ -50,13 +51,13 @@ struct intel_rom *intel_rom_spi(struct drm_device *dr=
m)
>  	if (!rom)
>  		return NULL;
>=20=20
> -	rom->uncore =3D to_intel_uncore(drm);
> +	rom->display =3D to_intel_display(drm);
>=20=20
> -	static_region =3D intel_uncore_read(rom->uncore, SPI_STATIC_REGIONS);
> +	static_region =3D intel_de_read(rom->display, SPI_STATIC_REGIONS);
>  	static_region &=3D OPTIONROM_SPI_REGIONID_MASK;
> -	intel_uncore_write(rom->uncore, PRIMARY_SPI_REGIONID, static_region);
> +	intel_de_write(rom->display, PRIMARY_SPI_REGIONID, static_region);
>=20=20
> -	rom->offset =3D intel_uncore_read(rom->uncore, OROM_OFFSET) & OROM_OFFS=
ET_MASK;
> +	rom->offset =3D intel_de_read(rom->display, OROM_OFFSET) & OROM_OFFSET_=
MASK;
>=20=20
>  	rom->size =3D 0x200000;

--=20
Jani Nikula, Intel
