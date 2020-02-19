Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022711638DE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 01:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604EE6EAF1;
	Wed, 19 Feb 2020 00:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2296EAF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 00:59:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 16:59:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="382636757"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 16:59:53 -0800
Date: Tue, 18 Feb 2020 17:01:06 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200219010106.GE587076@intel.com>
References: <20200218230822.66801-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218230822.66801-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 18, 2020 at 03:08:22PM -0800, Jos=E9 Roberto de Souza wrote:
> We have a few TGL machines in our CI and it is mostly green with
> failures in tests that will not impact future Linux installations.
> Also there is no warnings, errors, flickering or any visual defects
> while doing ordinary tasks like browsing and editing documents in a
> dual monitor setup.
> =

> As a reminder i915.require_force_probe was created to protect
> future Linux installation's iso images that might contain a
> kernel from the enabling time of the new platform. Without this
> protection most of linux installation was recommending
> nomodeset option during installation that was getting stick
> there after installation.
> =

> Reference: https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-u.html
> Reference: https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglb.html
> Cc: James Ausmus <james.ausmus@intel.com>
> Cc: Jani Saarinen <jani.saarinen@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 24b1f0ce8743..2146b9a865ba 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -822,7 +822,6 @@ static const struct intel_device_info tgl_info =3D {
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_TIGERLAKE),
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -	.require_force_probe =3D 1,
>  	.display.has_modular_fia =3D 1,
>  	.engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> -- =

> 2.25.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
