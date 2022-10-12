Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B495FC3B7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 12:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA57D10E2F6;
	Wed, 12 Oct 2022 10:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAD610E2F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665570411; x=1697106411;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:to:cc:from:message-id:date;
 bh=tx4vjRGPSI98SvG8z/1mNfqeYylGy9spBtrIeGHG8gs=;
 b=gUDkuxsQY7GPrqjtY0XUKnbTNyI7Dd9Kwm32DSSHYH7jsaV6rdaBSGWL
 bi4UzSjSe8HjEebGs6J/xIS/yX/MmMw+coa/84eqG4jVT4GjJ7WZEi1tC
 vemQKanS3jDQL85KOQYabjmXHJNSMbr9LtNQz/xTbzG5/Y1gjD11d1W4/
 DPliP4Ykcbk87fuAEh3Hr7hrAWcqzaW7IHn1o/1JbfypwJCq2rhgHZsBU
 MTLDEaSMZ/vivx5+crAP+0MPPJiwbF9NhpGaf8rx4nV3t3Uf+gEwc9HYc
 gGppGIKvIvX1bsMguHPMhs80cXcJJ62YukFcePkv10wFiv4Zl/v7Be9cW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292081891"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292081891"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 03:26:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="801796278"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="801796278"
Received: from mpiecho-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.25.11])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 03:26:48 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20221012083402.1069940-1-anshuman.gupta@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166557040585.17580.5212685833257862558@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 12 Oct 2022 13:26:45 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I think I commented on this already, but the patch subject should really be=
 as
informative as possible like: "Disable PCI runtime PM on dGPUs" as that is =
exactly
what the patch does.

Also bit unsure if the Fixes: tag should really point to the runtime PM
commit but maybe instead to the introduction of LMEM commit.

Regards, Joonas

Quoting Anshuman Gupta (2022-10-12 11:34:02)
> DGFX platforms has lmem and cpu can access the lmem objects
> via mmap and i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite
> requirement to keep GFX PCI endpoint in D0 for a supported
> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
>=20
> Both DG1/DG2 have a hardware bug that violates the PCIe specs
> and support the iomem read write transaction over PCIe bus despite
> endpoint is D3 state.
> Due to above H/W bug, we had never observed any issue with i915 runtime
> PM versus lmem access.
> But this issue becomes visible when PCIe gfx endpoint's upstream
> bridge enters to D3, at this point any lmem read/write access will be
> returned as unsupported request. But again this issue is not observed
> on every platform because it has been observed on few host machines
> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> which really disables the PCIe  power savings and leaves the bridge
> at D0 state.
>=20
> Till we fix all issues related to runtime PM, we need
> to keep autosupend control to 'on' on all discrete platforms with lmem.
>=20
> Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by defa=
ult")
> Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i9=
15/intel_runtime_pm.c
> index 6ed5786bcd29..410a5cb58a61 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm=
 *rpm)
>                 pm_runtime_use_autosuspend(kdev);
>         }
> =20
> -       /* Enable by default */
> -       pm_runtime_allow(kdev);
> +       /*
> +        *  FIXME: Temp hammer to keep autosupend disable on lmem support=
ed platforms.
> +        *  As per PCIe specs 5.3.1.4.1, all iomem read write request ove=
r a PCIe
> +        *  function will be unsupported in case PCIe endpoint function i=
s in D3.
> +        *  Let's keep i915 autosuspend control 'on' till we fix all know=
n issue
> +        *  with lmem access in D3.
> +        */
> +       if (!HAS_LMEM(i915))
> +               pm_runtime_allow(kdev);
> =20
>         /*
>          * The core calls the driver load handler with an RPM reference h=
eld.
> --=20
> 2.25.1
>=20
