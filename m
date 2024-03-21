Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F91885938
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 13:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A874D10E7EC;
	Thu, 21 Mar 2024 12:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7yCpMyY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E93A10E7EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 12:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711024703; x=1742560703;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NkfTp5DEQlb6T4WXGpzPtZo6uhXgUwxPiUHfKBAQ6ao=;
 b=H7yCpMyYWIbp9cLFdkKcuMrHw/k0bdN8SUVrmXHmCCPJghRAbrHDRFek
 K4xqmU2Tjdvgg4+PoeAkrImDhihFtDZSNN+zK5iYlg19wZSNmhTebGzHN
 KWciYXaLtjzc57J43+rDmHtx7XBaEFLeolMwvz2XUY88Ods1bvdd1U7oC
 eVUdrYC6Z78rihjArjzLrS4IgIwVgKnGSA+NPN0dH2PgVeKWuc2Il7ZBo
 soB/9UuhUdGaoTQy9EG1AMThNcl0zaY42pJ+B+FHt59sEuYkfh1OK7F3i
 3LG0TQNswcQWrr2ZHIcD57D4idYcsKLyngAquaUcDm2BfvPE7qt2hGgkB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="9794090"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="9794090"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 05:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="19077147"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 05:38:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>, =?utf-8?Q?Jos=C3=A9?=
 Roberto de Souza <jose.souza@intel.com>
Subject: Re: [PATCH] drm/i915: Do not print 'pxp init failed with 0' when it
 succeed
In-Reply-To: <20240320210547.71937-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240320210547.71937-1-jose.souza@intel.com>
Date: Thu, 21 Mar 2024 14:38:18 +0200
Message-ID: <87bk77n4jp.fsf@intel.com>
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

On Wed, 20 Mar 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> It is misleading, if the intention was to also print something
> in case it succeed it should have a different string.
>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Fixes: 698e19da2914 ("drm/i915: Skip pxp init if gt is wedged")
Cc: <stable@vger.kernel.org> # v6.8+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 9ee902d5b72c4..4b9233c07a22c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -800,7 +800,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  		goto out_cleanup_modeset2;
>=20=20
>  	ret =3D intel_pxp_init(i915);
> -	if (ret !=3D -ENODEV)
> +	if (ret && ret !=3D -ENODEV)
>  		drm_dbg(&i915->drm, "pxp init failed with %d\n", ret);
>=20=20
>  	ret =3D intel_display_driver_probe(i915);

--=20
Jani Nikula, Intel
