Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 732AB1C1B70
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D463E6EAAC;
	Fri,  1 May 2020 17:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660DE6EAAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:16:55 +0000 (UTC)
IronPort-SDR: ykxLI0dEwM2rGS7g5eSOyOursbaK/wKxBLcO7TH7WRBNd54TpWOvLWXF7ux4aifVhTSij6aoSO
 dTIuSlEXy+aQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:16:54 -0700
IronPort-SDR: Lod2zBA/juUeNIQNPzt6/d0GMx+W6KuJMcMcy2RGD5fFUX/tsYeWHuvMcTUF4UTSNSjJuluGst
 AhDXKv+YJeOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="405796572"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga004.jf.intel.com with ESMTP; 01 May 2020 10:16:54 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 10:16:54 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.166]) with mapi id 14.03.0439.000;
 Fri, 1 May 2020 10:16:54 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 03/23] drm/i915/rkl: Re-use TGL GuC/HuC firmware
Thread-Index: AQHWH9sSfnsUqLPIb0e1i4758YSeNKiTeLxQ
Date: Fri, 1 May 2020 17:16:54 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482BD53D@ORSMSX108.amr.corp.intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
 <20200501170748.358135-4-matthew.d.roper@intel.com>
In-Reply-To: <20200501170748.358135-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjE2MzJmNTEtYzQ4MC00Yjg4LTk0N2YtY2ZlYTc5NDdlZGZkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV3ZjUEZMYlB3M1piXC9hd254VitTdEx2d0x1bGZxYTJSQTk3RGhuRmpvY2U5Q1ZVY3FKNHRcL1pvaWRQWDAyK2tUIn0=
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915/rkl: Re-use TGL GuC/HuC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, May 1, 2020 10:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH 03/23] drm/i915/rkl: Re-use TGL GuC/HuC firmware
> 
> RKL uses the same GuC and HuC as TGL and should load the same firmwares.
> 
> Bspec: 50668
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index e1caae93996d..9b6218128d09 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -47,8 +47,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw
> *uc_fw,
>   * TGL 35.2 is interface-compatible with 33.0 for previous Gens. The deltas
>   * between 33.0 and 35.2 are only related to new additions to support new
> Gen12
>   * features.
> + *
> + * Note that RKL uses the same firmware as TGL.
>   */
>  #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
> +	fw_def(ROCKETLAKE,  0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 12)) \
>  	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 12)) \
>  	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
>  	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0), huc_def(icl,  9, 0, 0)) \
> --
> 2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
