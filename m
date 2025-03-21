Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 053C8A6BAD9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:40:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AABF10E7BA;
	Fri, 21 Mar 2025 12:40:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgfSVOtb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C8B10E7BA;
 Fri, 21 Mar 2025 12:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742560807; x=1774096807;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Z1YQnoXve8vInvOh7mhVh01I36/jYecykrFIZLw5ta4=;
 b=PgfSVOtbLAuiPCPhkTJErxdt1m1ZTRbJ447it9MQBN5bm+E0POEzD0IR
 kslnEwJtuoni/F6A/UdOHu3/aAifOkLi5O7mjsXISkfZE//iIuCHcb7om
 BOZti6XMC3Tr+B1F+z9I2obeKpINoOFrL/y6/ZYwhad3uar3FiyMc9kUj
 ZrmIHfEf7WD7bRoE+6WmCTQjvW+H035w+p27MdcBy+h4KKIQjxWXaaVuq
 oS0kv3YEXMt9yCE0SUMl29iD/hM1TxHtR4JTfLrCMCq1YyA/QhFst4KTQ
 S5txa7zojEA5cnqkCIo9iODaeVMl35977s3SsvUamxab32sUyRYZfJyMX w==;
X-CSE-ConnectionGUID: OGSAsSIeR4W+05eSvEIK8g==
X-CSE-MsgGUID: qBF4+PA8S5yYamVXE5XQKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54493346"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54493346"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:40:06 -0700
X-CSE-ConnectionGUID: YrQ3OFUnTfOfc4aSfeF7lg==
X-CSE-MsgGUID: G+hv3k7SRA2ifLfktzJ7LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="154399878"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:39:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 05/11] drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when
 enabling PSR
In-Reply-To: <20250317081905.3683654-6-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-6-jouni.hogander@intel.com>
Date: Fri, 21 Mar 2025 14:39:55 +0200
Message-ID: <871puqd0bo.fsf@intel.com>
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

On Mon, 17 Mar 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Write PIPEDMC_BLOCK_PKGC_SW when enabling PSR as described in workaround
> for underrun on idle PSR HW issue (Wa_16025596647).
>
> Bspec: 74151
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 1415e1e7aaf2c..a3946eef44f0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -37,6 +37,7 @@
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_types.h"
> +#include "intel_dmc_regs.h"

Mildly annoying to poke at dmc registers from psr code.

BR,
Jani.

>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
>  #include "intel_frontbuffer.h"
> @@ -1961,6 +1962,13 @@ static void intel_psr_enable_source(struct intel_d=
p *intel_dp,
>  			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>  	}
> +
> +	/* Wa_16025596647 */
> +	if ((DISPLAY_VER(display) =3D=3D 20 ||
> +	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
> +	    !intel_dp->psr.panel_replay_enabled)
> +		intel_de_rmw(display, PIPEDMC_BLOCK_PKGC_SW(intel_dp->psr.pipe), 0,
> +			     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS);
>  }
>=20=20
>  static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
> @@ -2186,6 +2194,13 @@ static void intel_psr_disable_locked(struct intel_=
dp *intel_dp)
>  					   DP_RECEIVER_ALPM_CONFIG, 0);
>  	}
>=20=20
> +	/* Wa_16025596647 */
> +	if ((DISPLAY_VER(display) =3D=3D 20 ||
> +	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
> +	    !intel_dp->psr.panel_replay_enabled)
> +		intel_de_rmw(display, PIPEDMC_BLOCK_PKGC_SW(intel_dp->psr.pipe),
> +			     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS, 0);
> +
>  	intel_dp->psr.enabled =3D false;
>  	intel_dp->psr.panel_replay_enabled =3D false;
>  	intel_dp->psr.sel_update_enabled =3D false;

--=20
Jani Nikula, Intel
