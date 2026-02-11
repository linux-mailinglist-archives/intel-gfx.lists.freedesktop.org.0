Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGPVK097jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:51:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CC512489C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEBE10E564;
	Wed, 11 Feb 2026 12:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWt7dU/q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7AE10E099;
 Wed, 11 Feb 2026 12:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814283; x=1802350283;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HD+fotsSE2dje1Pvm/8NaQfpKnwODhS2EdJ/qE00+Lc=;
 b=WWt7dU/qxmdfI/VYuXmudRn8I4Ds2Xe6htylk+q0zpo839dsNrz531vO
 D7FchIrpXMQRUixN0Eors+zGNFroDBCfNq/bi4RXrwdmAI/zijPwRdJpi
 alC7/4jR6H6VO9WdvTUW3+tl3fHT3BdQ+dR/AgHtTBQ+KQ4LkDjuzg8LK
 PCFEIGUCPQosdihAOWCR5RrkvcLjMqklO/OBOjE2n079ntOV6AiG7cnpW
 3bfFg9HwHLzUGnWLZ76/JhQmQSea15oIVRbxKVrnWRuWD2Prfe5uLnOSB
 mj8Rx29zMZkRT9WGSqzbzeCo0XOg/Zq/Dn1j9apb4Kzo9mR8chJA6CRZK Q==;
X-CSE-ConnectionGUID: pOLCMD7xQgqiiU91G5lnTg==
X-CSE-MsgGUID: A+6cEoExQFmQJlkYgjCojg==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="72053508"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="72053508"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:51:23 -0800
X-CSE-ConnectionGUID: MvDItGPwRaWS9L0DY4AFRw==
X-CSE-MsgGUID: +nrNJAuMSDmZAT3tr6cO2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216759261"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:51:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 14/20] drm/i915: Remove i915_reg.h from intel_rom.c
In-Reply-To: <20260205094341.1882816-15-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-15-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:51:17 +0200
Message-ID: <0ce67726e2a109cd2ebe6a759b520879fa36271d@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E7CC512489C
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make intel_rom.c free from including i915_reg.h.
>
> v4: Move oprom reg to separate header (Ville)
>
> v3: Update patch header
>
> v2: Use display header instead of gmd common include (Jani)
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_oprom_regs.h   | 36 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_rom.c      |  3 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  8 -----
>  3 files changed, 37 insertions(+), 10 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_oprom_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_oprom_regs.h b/drivers/gp=
u/drm/i915/display/intel_oprom_regs.h
> new file mode 100644
> index 000000000000..2cf723aa4ab0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_oprom_regs.h
> @@ -0,0 +1,36 @@
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.
> + *
> + */

Please use SPDX for new files. Can be fixed while applying if there's no
other reason to resend.

> +
> +#ifndef _INTEL_OPROM_REGS_H_
> +#define _INTEL_OPROM_REGS_H_
> +
> +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> +#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> +#define OROM_OFFSET				_MMIO(0x1020c0)
> +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i=
915/display/intel_rom.c
> index c8f615315310..024db7b1a1c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_rom.c
> +++ b/drivers/gpu/drm/i915/display/intel_rom.c
> @@ -7,10 +7,9 @@
>=20=20
>  #include <drm/drm_device.h>
>=20=20
> -#include "i915_reg.h"
> -
>  #include "intel_rom.h"
>  #include "intel_uncore.h"
> +#include "intel_oprom_regs.h"
>=20=20
>  struct intel_rom {
>  	/* for PCI ROM */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 2c279bd3342d..9cb753b65bc2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -892,14 +892,6 @@
>  #define   SGGI_DIS			REG_BIT(15)
>  #define   SGR_DIS			REG_BIT(13)
>=20=20
> -#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> -#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> -#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> -#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> -#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> -#define OROM_OFFSET				_MMIO(0x1020c0)
> -#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> -
>  #define MTL_MEDIA_GSI_BASE		0x380000
>=20=20
>  #endif /* _I915_REG_H_ */

--=20
Jani Nikula, Intel
