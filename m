Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E3FAB5416
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 13:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E2A10E0B1;
	Tue, 13 May 2025 11:46:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cCU+aFBy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A791710E0B1;
 Tue, 13 May 2025 11:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747136771; x=1778672771;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=i0W+VAHFVjhsPwpq9QKO8x3bpfZnGazFtCCUGRJ+IIY=;
 b=cCU+aFBycespMCPo5QTxKdBd41KFx35ejzlD1zfF2tze3YrgwPxzemBb
 rKfkTTC+KPzaRs4nCx04S8k+imfwYyX4LLRWWfJ/Ah9vJCTXm+oh4YxOh
 Pwmj1lmI2f1lHhJTLXr4s4YCvM82LCFBlkVRPwpe2ARqAGBzA0twFgZO4
 D2VJJzXFFzJgPfZXKom9zrNhEfyJRC8TTZ3lnE1TmZNj4EDla5ClnnGne
 ls4KE/NNCiJg6mUzJJ24YpgWkpWzSaeorJftnra5LirEqfuMhxoGMB1dD
 /uUyt2Su91QQbW2w3a1QpexE49+6Rly8lzdHuYHIcJn5nInYk0B3VCndy w==;
X-CSE-ConnectionGUID: lHvF2BBMQwOyrKDTkvheiw==
X-CSE-MsgGUID: jPApkPPyT5295aOlBTalzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="49094433"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="49094433"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 04:46:10 -0700
X-CSE-ConnectionGUID: hszWXYmkRBWhzR+/+SlEiw==
X-CSE-MsgGUID: 7rXC3zOxSrGAPfncW0Eu/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="142802191"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 04:46:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Indicate which pipe lied about its interrupts
In-Reply-To: <20250513092820.18715-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250513092820.18715-1-ville.syrjala@linux.intel.com>
Date: Tue, 13 May 2025 14:46:05 +0300
Message-ID: <87plgcivia.fsf@intel.com>
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

On Tue, 13 May 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Indicate which pipe signalled the spurious DE PIPE interrupt.
> Might help with debugging a bit if we know where the interrupt
> is supposedly coming from.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 3e73832e5e81..a3261c7aad72 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1418,7 +1418,8 @@ void gen8_de_irq_handler(struct intel_display *disp=
lay, u32 master_ctl)
>  		iir =3D intel_de_read(display, GEN8_DE_PIPE_IIR(pipe));
>  		if (!iir) {
>  			drm_err_ratelimited(display->drm,
> -					    "The master control interrupt lied (DE PIPE)!\n");
> +					    "The master control interrupt lied (DE PIPE %c)!\n",
> +					    pipe_name(pipe));
>  			continue;
>  		}

--=20
Jani Nikula, Intel
