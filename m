Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PBYCqhhemk75gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 20:21:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C778A81F0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 20:21:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7E710E2E5;
	Wed, 28 Jan 2026 19:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzoMPJVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D283B10E276;
 Wed, 28 Jan 2026 19:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769628068; x=1801164068;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dKgDls3rJn8Gxnhg3Hxm2gnzYJh2dUnWYHpWDAMCxSY=;
 b=WzoMPJVPaFf5IpinM6hn0KaGpBQQVxlKE+orYRxlPXiDp9sD0Kn94YVo
 euNi0zm+5orBezorM/LWeo9IiQCGecfqqjtYxg+umaB4yNjuXlReH5GxP
 jul7ZXiZRT9YH5jiKBJU9Jf+yjAVTJ5klvd7QeSNleHttbOlmjOFA5XT6
 nlbbRswTsZ26Z37FxRMLjrnwBzDfIUVpUW67i1DO0qdrzVPealvuqoYNF
 +Iph3+cbxCLpnj4XbruI8tmUa/zT0voMGLsUOpRQ1BtwXsy0PsFx5lcIj
 dLIFSgsf2TchYDaqTiGyXR/ULhEkGg6Kf5R/xhelOJVe7uEuqVTFg0TlT Q==;
X-CSE-ConnectionGUID: kvwjA4YpRACgbzhHgCxfAA==
X-CSE-MsgGUID: o7K3fRULTeuQXvD9lgU7Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81965982"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81965982"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:21:07 -0800
X-CSE-ConnectionGUID: L07oULRDQzCyiifx5ez4Iw==
X-CSE-MsgGUID: 9dzP7g/STjWJJMu3i+jJRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208588348"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:21:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH v1] i915/i915_driver: move intel_gvt_init() level higher
In-Reply-To: <20260128180933.2561419-1-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260128180933.2561419-1-michal.grzelak@intel.com>
Date: Wed, 28 Jan 2026 21:21:00 +0200
Message-ID: <9f706b79a949d51fc97e8a5c2f68327413a22645@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 8C778A81F0
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> i915_driver_probe() cannot currently handle error of intel_gvt_init()
> because it is called from i915_driver_hw_probe(). Nevertheless, it's
> error path is done in i915_driver_probe(). Fault of
> i915_driver_hw_probe() thus causes list corruption, since
> intel_gvt_driver_remove() was called twice.
>
> Move intel_gvt_init() up to i915_driver_probe(). Adjust error path of
> i915_driver_hw_probe() so that intel_gvt_driver_remove() is called
> always once.
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 1e087dfe03d0..0f507b8ae2f1 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -557,10 +557,6 @@ static int i915_driver_hw_probe(struct drm_i915_priv=
ate *dev_priv)
>  			drm_dbg(&dev_priv->drm, "can't enable MSI");
>  	}
>=20=20
> -	ret =3D intel_gvt_init(dev_priv);
> -	if (ret)
> -		goto err_msi;
> -
>  	intel_opregion_setup(display);
>=20=20
>  	ret =3D i915_pcode_init(dev_priv);
> @@ -581,9 +577,6 @@ static int i915_driver_hw_probe(struct drm_i915_priva=
te *dev_priv)
>=20=20
>  err_opregion:
>  	intel_opregion_cleanup(display);
> -err_msi:
> -	if (pdev->msi_enabled)
> -		pci_disable_msi(pdev);

Why's this being moved?

BR,
Jani.

>  err_mem_regions:
>  	intel_memory_regions_driver_release(dev_priv);
>  err_ggtt:
> @@ -870,9 +863,13 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
>=20=20
> +	ret =3D intel_gvt_init(i915);
> +	if (ret)
> +		goto out_cleanup_hw;
> +
>  	ret =3D intel_display_driver_probe_noirq(display);
>  	if (ret < 0)
> -		goto out_cleanup_hw;
> +		goto out_cleanup_gvt;
>=20=20
>  	ret =3D intel_irq_install(i915);
>  	if (ret)
> @@ -921,6 +918,10 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>  	intel_irq_uninstall(i915);
>  out_cleanup_modeset:
>  	intel_display_driver_remove_nogem(display);
> +out_cleanup_gvt:
> +	if (pdev->msi_enabled)
> +		pci_disable_msi(pdev);
> +	intel_gvt_driver_remove(i915);
>  out_cleanup_hw:
>  	i915_driver_hw_remove(i915);
>  	intel_memory_regions_driver_release(i915);
> @@ -928,7 +929,6 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	i915_gem_drain_freed_objects(i915);
>  	i915_ggtt_driver_late_release(i915);
>  out_cleanup_mmio:
> -	intel_gvt_driver_remove(i915);
>  	i915_driver_mmio_release(i915);
>  out_runtime_pm_put:
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);

--=20
Jani Nikula, Intel
