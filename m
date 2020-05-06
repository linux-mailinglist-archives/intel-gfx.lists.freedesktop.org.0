Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F771C6FAA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D6F76E233;
	Wed,  6 May 2020 11:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630FE6E233
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 11:51:59 +0000 (UTC)
IronPort-SDR: lwxuoQRCkKzv/Ej35NGGnoHFOoSPT/1s7gR6CMX31Bo7o+v95p32wnlRivL4qeRmg/y3UebM9b
 J9wbDrCu9E0w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:51:58 -0700
IronPort-SDR: BYODh/i66f6qdqJUC0J4CBuR9AZPLZWvMc/t634spqA1NVEjZbDIIeG/uRiMw9Y/n/DXIUww8a
 lNVMSxcVQ+0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="248893636"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2020 04:51:58 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.125]) with mapi id 14.03.0439.000;
 Wed, 6 May 2020 04:51:58 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory
 support
Thread-Index: AQHWIma9nHYenXN/nEiHwFgYkeVtY6ia9H6g
Date: Wed, 6 May 2020 11:51:57 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C132A@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-3-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzgyMjA4MjctZGYxNC00MDA3LTgzMTktMzE4Zjg5YjVkOWE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYWlRUW9YYmFzUno5VU90akNMSGZyYlJkUm5xalVFeFI3NlRydFJUMDBUMHMyUkN6KzVqQTVBQU5mcEJqcXo2KyJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory
 support
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Tuesday, May 5, 2020 4:22 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory support
> 
> RKL re-uses the same stolen memory registers as TGL and ICL.
> 
> Bspec: 52055
> Bspec: 49589
> Bspec: 49636
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Confirmed with Spec.
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  arch/x86/kernel/early-quirks.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 2f9ec14be3b1..a4b5af03dcc1 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -550,6 +550,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst = {
>  	INTEL_ICL_11_IDS(&gen11_early_ops),
>  	INTEL_EHL_IDS(&gen11_early_ops),
>  	INTEL_TGL_12_IDS(&gen11_early_ops),
> +	INTEL_RKL_IDS(&gen11_early_ops),
>  };
> 
>  struct resource intel_graphics_stolen_res __ro_after_init =
> DEFINE_RES_MEM(0, 0);
> --
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
