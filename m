Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A53B8CFE66
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FE910F9E3;
	Mon, 27 May 2024 10:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZsJXG0SV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DB910F9E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716807137; x=1748343137;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=q2fXpPeALbLC/20lq2m+5Uu65Zsg5sHk17K9h+aUnag=;
 b=ZsJXG0SVYywWRwYxcCLmDpuD+JTa1BNiaX34YLtIRkmB0U8u1QZO+yEZ
 4pl/XTQ7YutXjtljaxPgLoXjOcgns3d8x/0psLgGQU50HuAepVcV/sI6C
 deCKdLaC8H8hXUgGLJCZhRfWa+Qcr3qPVWrPSJCu9G3rw2K+p7InTm/FE
 on/ZdqcjNmdaPX857teT+XE6mbKcH3tlfwvVSe2gsA1Cw5ap7Ziafw9wQ
 Kd8xYE1YZpRyIBlo55DyUelr9acWBVbENS5yHP4j1SGGcS3SdLWfTfSox
 pnMb1PhPI9pyRibbVbb3mbD6JlSC6F7YAtG+O3gMyIBIzRoqgoera+YtR w==;
X-CSE-ConnectionGUID: MDMsgbgWTjWGkLAuBFjNZQ==
X-CSE-MsgGUID: plVdsHDDTnmEzUkmNMGkDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23719304"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23719304"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:52:17 -0700
X-CSE-ConnectionGUID: BEfcSX/iQ3Ktb4A0uoD8CQ==
X-CSE-MsgGUID: VVCKuv1qSJGE7VB2EF3Bzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39124477"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:52:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v9 1/8] drm/i915: Define and compute Transcoder CMRR
 registers
In-Reply-To: <87ttijmstp.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-2-mitulkumar.ajitkumar.golani@intel.com>
 <87ttijmstp.fsf@intel.com>
Date: Mon, 27 May 2024 13:52:12 +0300
Message-ID: <87r0dnmsrn.fsf@intel.com>
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

On Mon, 27 May 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 24 May 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>=
 wrote:
>> diff --git a/drivers/gpu/drm/i915/intel_vrr_reg.h b/drivers/gpu/drm/i915=
/intel_vrr_reg.h
>> new file mode 100644
>> index 000000000000..e1273b4e1b9b
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/intel_vrr_reg.h
>
> We'll want to call this intel_vrr_regs.h, not _reg.h.
>
> $ find drivers/gpu/drm/i915/ -name "*_reg*.h" | grep -o "regs*.h" | sort =
| uniq -c
>       4 reg.h
>      38 regs.h
>
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_VRR_REG_H__
>> +#define __INTEL_VRR_REG_H__
>> +
>> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>> +
>> +#define	_TRANS_CMRR_M_LO_A                  0x604F0
>> +#define	_TRANS_CMRR_M_HI_A		            0x604F4
>> +#define	_TRANS_CMRR_N_LO_A		            0x604F8
>> +#define	_TRANS_CMRR_N_HI_A		            0x604FC
>> +#define	TRANS_CMRR_M_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, tran=
s, _TRANS_CMRR_M_LO_A)
>> +#define	TRANS_CMRR_M_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, tran=
s, _TRANS_CMRR_M_HI_A)
>> +#define	TRANS_CMRR_N_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, tran=
s, _TRANS_CMRR_N_LO_A)
>> +#define	TRANS_CMRR_N_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, tran=
s, _TRANS_CMRR_N_HI_A)
>
> Please read the big comment near the top of i915_reg.h about ordering
> and indenting and all that stuff.
>
> See what Ville's doing here [1] to clean up.
>
>
> BR,
> Jani.
>
> [1] https://lore.kernel.org/r/20240516135622.3498-3-ville.syrjala@linux.i=
ntel.com

PS. This also depends on intel_display_reg_defs.h.


--=20
Jani Nikula, Intel
