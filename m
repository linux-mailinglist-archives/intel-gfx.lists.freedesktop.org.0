Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D88246BB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9383710E4CF;
	Thu,  4 Jan 2024 16:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110DF10E4CF;
 Thu,  4 Jan 2024 16:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704387251; x=1735923251;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oSGpGNUMmxTlaVV5Xeb6kuYiSu/xdPWYpVqqHUCCJQM=;
 b=igVANJ24JNZXGwrAtP3lbARm+UI2i2H6ZOK2HglXbkfh5YBmk3kcl3V2
 ocObBQDuFQYiu/jkVoLn6KfdK999bqJUVXqRYgNBOJDttVzvH4I6gb59Z
 RzjsmwQNaCkugY8qNir6Qis75fKW0wlUorejmnkm3YB/71KTEMHKBjMjd
 Pz6twBouHRXm9nTi0AM8sr+ai3JUW0XYHT9U/yfngylxDV69PZGxPHcWa
 iR6GZFacqdUQmecwhA9U+qh/WrwIRe7T2YR92ApZqwyXPieJ2ACq+FWW2
 tU3U+rQfImQ9YSpjEW0s7X/jTvF4IHc8LMxqgUDL7JyfXLdfKpFCFFsZm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4075289"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4075289"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:54:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="22228740"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:54:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/i915: Disable DSB in Xe KMD
In-Reply-To: <20240104160557.48496-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240104160557.48496-1-jose.souza@intel.com>
Date: Thu, 04 Jan 2024 18:54:05 +0200
Message-ID: <87cyuhyr82.fsf@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 Jan 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Often getting DBS overflows when starting Xorg or Wayland compositors
> when running Xe KMD.
> Issue was reported but nothing was done, so disabling DSB as whole
> until properly fixed in Xe KMD.
>
> v2:
> - move check to HAS_DSB(Jani)
>
> v3:
> - use IS_ENABLED(I915) check in intel_dsb_prepare()
>
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 482c28b5c2de5..a6c7122fd671d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -453,6 +453,10 @@ struct intel_dsb *intel_dsb_prepare(const struct int=
el_crtc_state *crtc_state,
>  	if (!HAS_DSB(i915))
>  		return NULL;
>=20=20
> +	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
> +	if (!IS_ENABLED(I915))
> +		return NULL;
> +
>  	dsb =3D kzalloc(sizeof(*dsb), GFP_KERNEL);
>  	if (!dsb)
>  		goto out;

--=20
Jani Nikula, Intel
