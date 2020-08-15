Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E3A245059
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Aug 2020 03:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808A16EC5A;
	Sat, 15 Aug 2020 01:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AA16EC5A
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Aug 2020 01:31:23 +0000 (UTC)
IronPort-SDR: VoBqOiwXNUupTanYOXOW28SfyA2v554Hi1pWa9b8G33ksyMC1W0mGIfHIlzlmo2LMdKfXOPx+X
 gEFx9BQPD7uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="153753399"
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="153753399"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 18:31:23 -0700
IronPort-SDR: LyCyqwjm2RYj3IQevgbW6jg8I80dG1i3ur0VH0SIa5/rZvdler1wlw1E5jfYe0aqG0a8P++3TR
 ew0n4t8nSypw==
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="470766309"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 18:31:23 -0700
Date: Fri, 14 Aug 2020 18:31:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200815013121.GG3049026@mdroper-desk1.amr.corp.intel.com>
References: <20200813200029.25307-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200813200029.25307-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Update TGL and RKL DMC
 firmware versions
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 13, 2020 at 01:00:28PM -0700, Jos=E9 Roberto de Souza wrote:
> Fixes around DC5, DC6 and DC3CO in those new firmwares.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

for both patches in this series.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i=
915/display/intel_csr.c
> index f22a7645c249..d5db16764619 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -40,12 +40,12 @@
>  =

>  #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>  =

> -#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
> -#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> +#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
> +#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>  MODULE_FIRMWARE(RKL_CSR_PATH);
>  =

> -#define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
> -#define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
> +#define TGL_CSR_PATH			"i915/tgl_dmc_ver2_08.bin"
> +#define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
>  #define TGL_CSR_MAX_FW_SIZE		0x6000
>  MODULE_FIRMWARE(TGL_CSR_PATH);
>  =

> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
