Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F738CFE61
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D776610E173;
	Mon, 27 May 2024 10:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMa8S5ak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2309A10E173
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716807063; x=1748343063;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YZBYn7AYZiVEY0cRKKde+o9Eke6GwYm0t8gi5XU1JXI=;
 b=dMa8S5akknH++eRCWvVTU6qAZ6QnaWRie229meMOtOxp4SB0kY2axut5
 /k8AH0Mj+vD3Wyf+RBsxfxG2SQMjH1HKY+Olr7mPPM4OZz+c1ofijBfnn
 0FD4dkU1L7mSunGXW3TPxVAh50UYDR8eZR+o3mFiFYeyX3X7FPlurGW6b
 UNclTqHzipZ0DsURKCtdOrxJObUimqRApcRb0KCyKEI7T09l99sbMYKsE
 9qwVWLJw8k6BX4RzjYOt4N12HrhNB563yKh2Zn7WzQL2nC+ZEkCgkappS
 2U2iCehqO/ut3lV5bXWT/8Ss8QCHCjclVmRzyYsBkZ+C6o7tsIk5wMceT Q==;
X-CSE-ConnectionGUID: Il58lQdwRk2zSryBuvdc0w==
X-CSE-MsgGUID: i37B5cPQTPiC60V6yAA/gA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="30629334"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="30629334"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:51:03 -0700
X-CSE-ConnectionGUID: 8a2MzktbSISB416mw0gyWA==
X-CSE-MsgGUID: EOs2vJ14QHit3GJ6w9szyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39573342"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:51:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v9 1/8] drm/i915: Define and compute Transcoder CMRR
 registers
In-Reply-To: <20240524102432.2499104-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 27 May 2024 13:50:58 +0300
Message-ID: <87ttijmstp.fsf@intel.com>
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

On Fri, 24 May 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> w=
rote:
> diff --git a/drivers/gpu/drm/i915/intel_vrr_reg.h b/drivers/gpu/drm/i915/=
intel_vrr_reg.h
> new file mode 100644
> index 000000000000..e1273b4e1b9b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/intel_vrr_reg.h

We'll want to call this intel_vrr_regs.h, not _reg.h.

$ find drivers/gpu/drm/i915/ -name "*_reg*.h" | grep -o "regs*.h" | sort | =
uniq -c
      4 reg.h
     38 regs.h

> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_VRR_REG_H__
> +#define __INTEL_VRR_REG_H__
> +
> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
> +
> +#define	_TRANS_CMRR_M_LO_A                  0x604F0
> +#define	_TRANS_CMRR_M_HI_A		            0x604F4
> +#define	_TRANS_CMRR_N_LO_A		            0x604F8
> +#define	_TRANS_CMRR_N_HI_A		            0x604FC
> +#define	TRANS_CMRR_M_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans=
, _TRANS_CMRR_M_LO_A)
> +#define	TRANS_CMRR_M_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans=
, _TRANS_CMRR_M_HI_A)
> +#define	TRANS_CMRR_N_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans=
, _TRANS_CMRR_N_LO_A)
> +#define	TRANS_CMRR_N_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans=
, _TRANS_CMRR_N_HI_A)

Please read the big comment near the top of i915_reg.h about ordering
and indenting and all that stuff.

See what Ville's doing here [1] to clean up.


BR,
Jani.

[1] https://lore.kernel.org/r/20240516135622.3498-3-ville.syrjala@linux.int=
el.com


--=20
Jani Nikula, Intel
