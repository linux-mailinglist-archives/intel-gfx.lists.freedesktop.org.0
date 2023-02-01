Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE87686C96
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DAC10E434;
	Wed,  1 Feb 2023 17:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E4C10E434
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675271755; x=1706807755;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2nLD6rlsLFJAHCQR+4y1QdVOYsj+XNUQHHyMIWLDf9E=;
 b=PXMcyBpEP1C0gOM3X2+04uudZdRyOF86qtVqCpncahhgU3kbp5dbFI4/
 urYmUTE1N+vaRHVy/S7j6eqE8da/+MaOUnt4c1s5DAQgUmVZ2bwpOxtiA
 CSKWWsP8WmC/ueomTg8JpjZd3JpqRejK7bvRE53L05ipWYFeYUFdm6Gyi
 MUZmdn4dRTHZRcde3tVU9+fLW9LnYhrULkUxgDdrZ4z83pDfOupP2MuyP
 qOvu9jqF4LQVi4FLdmbqui9tqj1p9JbuTi2VPRqJPGeIa0Lyl+T8b5BPd
 qicwA6ozui+SvJDTlr+9ZvxcRPWKUHZltoV5sxKmzmFpqsPiXGU2jXIfG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308549355"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="308549355"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:09:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="788961329"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="788961329"
Received: from disherwo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.241])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:09:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230201135329.514677-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230201135329.514677-1-luciano.coelho@intel.com>
Date: Wed, 01 Feb 2023 19:09:12 +0200
Message-ID: <87zg9x1fev.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Feb 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
> There are a few macros (e.g. DPLL()) that implicitly use dev_priv, by
> using other macros that implcitily use dev_priv.
>
> In an effort to align all definitions of struct drm_i915_private to be
> declared as i915 instead of arbitrarily using either i915 or dev_priv,
> we need to make these macros explicitly use dev_priv, so that we can
> change them later to be defined as i915.

Lucas posted a slightly related patch [1], and I think based on the
discussion we should probably add AUX and DPLL registers that are
VLV/CHV specific, and include the MMIO offset directly without dev_priv,
and non-VLV/CHV macros that will have MMIO offset 0. This would reduce
the implicit dev_priv considerably, and avoid the need to pass i915
pointer to those register macros altogether.

> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> index abbe427e462e..d00e9321064a 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> @@ -100,7 +100,7 @@
>  
>  #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>  #define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
> -#define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
> +#define MIPI_DEVICE_READY(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)

While this kind of passes dev_priv as parameter, the dev_priv in
_MIPIA_DEVICE_READY and _MIPIC_DEVICE_READY is still implicit. I think
these could use a similar treatment as in [1], moving the
_MIPI_MMIO_BASE() part one level up.


BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20230131191542.1695398-2-lucas.demarchi@intel.com

-- 
Jani Nikula, Intel Open Source Graphics Center
