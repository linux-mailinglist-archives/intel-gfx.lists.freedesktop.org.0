Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 602FE8BCA4A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6DF10E07D;
	Mon,  6 May 2024 09:10:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nO7CS4DK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E78210E07D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714986615; x=1746522615;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JVuHa6SE9+LpCo2PyReU5MWlsJuDDsljeqF4bYhyhiE=;
 b=nO7CS4DK1Hvas+4zubMWXyr7j6cBTBlyPnkGt0jQs89A+ZLLdcY732iA
 sXRbwfHktxtcch3bR0OS/RBPYOdbsLANaWJ+8n+n9N+WiO5R9fJHx1kqf
 wJqk6AqecuzpEOkcr6WVCfxh0ICj8IKPjGfrSLu/fpWceKTmBgZtUrNgW
 JjBW/wx0TRGqBddt56xUWL4Mxg/YGOwL8SVTWhZUD+hGT8p2OfOrx6Vmd
 /XHelThhXbrG+TwxXJRh1WXPVDOKZ59aQH7URPEkKcTPr1U/KXF74HzMi
 ZvZzAfKySxSKE9oZl+N4oPTP0Ln/0IHVk9VRGay7c5KPslsm6ZuXD6urY A==;
X-CSE-ConnectionGUID: UOqDytk4QwO0LUMLi2TIXg==
X-CSE-MsgGUID: ZFndc4NIRJiZglSEQxnVzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14508284"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14508284"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:10:15 -0700
X-CSE-ConnectionGUID: p9cIJiZUSZOkTIiTrxLUXw==
X-CSE-MsgGUID: vo7UTLPbSSKLBVXHJTX6nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="51293228"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:10:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/35] drm/i915/bios: Define eDP DSC disable bit
In-Reply-To: <20240503122449.27266-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-2-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:10:10 +0300
Message-ID: <87pltznw5p.fsf@intel.com>
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There's a new "DSC disable" bit in the eDP VBT block. Define it.
>
> TODO: actually use it?

Probably should.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 3815aa21d19f..d7b9bde5dcc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -749,6 +749,7 @@ struct bdb_edp {
>  	struct edp_apical_params apical_params[16];		/* 203+ */
>  	u16 edp_fast_link_training_rate[16];			/* 224+ */
>  	u16 edp_max_port_link_rate[16];				/* 244+ */
> +	u16 edp_dsc_disable;					/* 251+ */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel
