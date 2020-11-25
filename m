Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A632C4B10
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 23:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686366E49F;
	Wed, 25 Nov 2020 22:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37366E0FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 22:52:58 +0000 (UTC)
IronPort-SDR: LUyDOvzFhVVNEGZVXabzNXIjydGKu/B3FsiYtfihx0deOD6h7tE65kn5Hp1nEiT/9yBSpfqiWr
 CLFwa5OTeCSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172367441"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="172367441"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 14:52:56 -0800
IronPort-SDR: qSC5e68qcWVFzOLgJVGWLBf73APJ/dxwnG2NmQ2986D3TDnYAqTtz6tAj/STctCwduOcfruWgn
 7gioBUYaMM+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="313171484"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 25 Nov 2020 14:52:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 14:52:56 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 14:52:55 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 14:52:55 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 18/21] drm/i915/adl_s: Re-use TGL GuC/HuC
 firmware
Thread-Index: AQHWvRK4SIyKsbFsQkmJEiJNOpqW7qnZgRRg
Date: Wed, 25 Nov 2020 22:52:55 +0000
Message-ID: <ecaba392378246afba78cf046f3f0b2b@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-19-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-19-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 18/21] drm/i915/adl_s: Re-use TGL GuC/HuC
 firmware
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Aditya Swarup
> Sent: Tuesday, November 17, 2020 10:50 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 18/21] drm/i915/adl_s: Re-use TGL GuC/HuC
> firmware
> 
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> ADL-S, like RKL, uses the same internal device ID for the GuC and HuC as
> TGL did, making them all firmware-compatible.  Let's re-use TGL's firmware
> for ADL-S.
> 
> Bspec: 50668
> Cc: John Harrison <John.C.Harrison@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 180c23e2e25e..2d123158df0d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -44,9 +44,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw
> *uc_fw,
>   * List of required GuC and HuC binaries per-platform.
>   * Must be ordered based on platform + revid, from newer to older.
>   *
> - * Note that RKL uses the same firmware as TGL.
> + * Note that RKL and ADL-S have the same GuC/HuC device ID's and use
> + the same
> + * firmware as TGL.
>   */
>  #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
> +	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0))
> +\
>  	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
>  	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
>  	fw_def(JASPERLAKE,  0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
> --
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
