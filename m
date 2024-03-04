Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADFB870AFD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 20:50:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030C210F8B1;
	Mon,  4 Mar 2024 19:50:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gt4EbvOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD92710F8B1;
 Mon,  4 Mar 2024 19:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709581857; x=1741117857;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cjss/sch9lV+EbjLZyTOrBk4vt1aDlR/KFnR7QYR/Dw=;
 b=gt4EbvOn/hR0FdzlpchXlBx3rgVHBvWCye075k9JCXbQu2MZ11Gj726q
 sXFnjjsESI8cxmQRzzz7cSTZ55JttAGmfMR/acS0bpdIvv+BHLihD6jTT
 +MjWR1gs3Lgdxmt34x1R96u4jUiG+FoS3mNOfneM4WdaplF6Ex3Nh4SDL
 EUyqQmApe++Wxp3/Jzo3sHl2vxmeBlANQPmwKr2EzhEsFtVTT3uBmnVXj
 ZdVb4RirJ+C9LiSNI1fSNTU4a3tQOEy2YB8uNTSSQBql938wgBTqn0aJQ
 peSKTDFdvHE/C8gftYa7OUZ89enTpnnd8Yrvwfe/bCK+rDAyfOEdJriQ7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7912478"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="7912478"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 11:50:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="8959625"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 11:50:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 11:50:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 11:50:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 11:50:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 11:50:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6klPq+jlK4qF/R/wfBgwK77fAyKINwTQdHaX0kLC+sTMfZ4k/Qj/PcyIxhNneoSnwyXppGc9eLmt9CEvtrhvxGk0/zxWDFGKOF2RK1ffcsDriZXZMD3zkPitqh7TtM7NuKB3IIsDbAfkjfFE8MxgU9DCO7TYHTZOoFTdeiw2CBXlFeMgNhOuGfXiwzKbwyAZuCGhfl+05/eqI2vrdHVmalvcRXNnDvSTeJJT7YUMUTxZReWrPDfgt/NTirADrmsS+0gbIqbtjl2/c+gXZpelWZliysh9BTH8SZbuLUl08T0tkHDSayimX4qvONF6LQT7AlxC8lZQIGw5bbQZ3Y5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uWYuFVMlWpnz0z8VdtxIuM78Bc0ZawYZnLkiM+NX8FU=;
 b=lfdv+Hf25qX1O//qNICE1ocM8Vu07kNVLN38WHLnlKH5bt0scRAuQb2XSuQrad6ODP9zWD/SzwlmehP+wJHM9JCkpfAHNILuWSGJUszm/EcyYv3M5uWG2FPb+lJyFw/a3ozNqrE0qqzeH18/imhM7CfX2jxZ6uA2UHZ2hEg9BqD3hIXIpV3tO+2d5cxZxqEoLxpVdaSUb06GWRdnJpBTgIQaA94CRNfKSO+MmeNBX/y5g9A5XxTaOUueL2bpSW7bfJ6CUGjMmBV01E5ACJYMbBSIk3MPtbjOiyz2/2CAIqLXTdvbkEjnquM3GKKdfzPJfSF0E7z/ybqcVxo07LwsNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB8020.namprd11.prod.outlook.com (2603:10b6:8:114::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 19:50:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 19:50:51 +0000
Date: Mon, 4 Mar 2024 13:50:49 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH 7/8] drm/i915/xe2lpd: Load DMC
Message-ID: <a3penzs4px34f4ue6cvadbmoxxjwbozzkfxxccgizxedj7p4id@5swom6lffbpk>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-8-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-8-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:40::36) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB8020:EE_
X-MS-Office365-Filtering-Correlation-Id: 40f6ee63-1f22-494d-52ea-08dc3c846555
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VcwKnT+ZswgQHCiDooPf3NNfax4TV1o81q0//n6GrbND1IWeStSFCbxsFIBnfmEO+rUwqibo6f0aYY+Qd5m9OxqLM4NchvguaXWMPyG3N+usqWF2KSMS8nPawn5n2b5t9yv5Rd+D5/jT4uBrgqhnCEDguV5km/tSlKSvfVnwsdjPPRwHKLAV39LwOcG9a8JAk9hEZm1uhRrWcoNiHZ/fCHOJWbin0cyy+i0tWe7V+if0AJ8GybiKhaWIwGNwk0D9CWVAulhBBmjYXDnATycmHc4Nt97n/VMI+V+B6DIQ0L1yfx+4Kj/7Eva/orYukpKOaBopjf01fCfSqEQI1x5PGm5Cb8MfzOgeNCw80ai5JSkqrFNSC269FkXCoMjzn00AClr9xB7ZFe6BxQo+QAYEmxxa1FWToD7L+dO0kMXV4WLFfMdyXEt51gKbMYKJcLweKWScVzJS9+YgNmqrhoBxjLwr+oRPn/T1BswrM5naKZOnbVwERT9zmK9kAUNuDU6DNRNV+MHMOLYwGdeKWUKcy4oAaQS8f4RFrx/KUqQikG8X5EREIibgXHtsuiXpjhB7N6V/98BAxg+XDOLmrjxBUqj9KkpeYS8U5mPC1P25nP4aOdmgsaYIFfOpOgyCCNyYo4muKXUPGoTxc9debiL7s0UsL+yZ4G78f6Tpn0jwHyc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Pu4Lyh6LHGo7ZKAUqs5Gx3JaqcnoSJQKJwZtVVNnaWDyS4B3w9JTdXtW93y?=
 =?us-ascii?Q?dIVI+aiR3UqYnhGUGApAs595Kd/PjQQpp86q2p3+Evzp+D36A10zvhePvcNf?=
 =?us-ascii?Q?nXPn3WsO7h52NZkPrdkA3Fi+zmB0GyAY0XshWj8ZhTUhi+hvsScXZyGh5Lcf?=
 =?us-ascii?Q?XOk4CN8WIIfb3DUacEnAGs5dOkiwKOO9wnJBAxfiKEUPmQbLo0Tz1E2Eajsn?=
 =?us-ascii?Q?ugxlY8+wNrHM1p+pKXB/r8pd8tRqpcqRcOCgr0ltrx3J5yWMa3c9BYDO2RWr?=
 =?us-ascii?Q?4+3IzIH93iB4N4XIJGfGHpAMvK7dIBr2dv4cLhwSG8faPRmZSdBjSSmQdb+A?=
 =?us-ascii?Q?SR0ahrAiFTN+p8ibdsc+iD9BFgtGW90qmiDFrGCJUsfXg/yQ1tz3VpMqB1xk?=
 =?us-ascii?Q?fPpxhlyR0QiQxXCLVkpdUw+yU2mQeGu4gPMm13kDSNYNhmT9f3OoEXqIkats?=
 =?us-ascii?Q?hobis1wPSyS2yP5yNB6zjGd1Lnm9IJkdlRjBl6TnsWIbvkJ4qJ4uvguqePaK?=
 =?us-ascii?Q?Ct5Lx3JrNgv1sndx0faZLkc8F3W1yl18bIWyTZ8xOysRnF+3GfFIDI5bPjcp?=
 =?us-ascii?Q?QvpxaLTFFroopW/4OS453I4UBOd5WVuJYU+7BlYWQUaodaBtHwQSvSUcNAU1?=
 =?us-ascii?Q?BQRKz/uWUaq2N5kXPJbw8B+h49gOQK3XjunVWEHyUKaQC8YoRdGysSPLN+aF?=
 =?us-ascii?Q?JONN+1BvUIgaHntefwWOSdFHE6JT69n/77ctk6XRb/ouBMzgIaSHYt3bTUSt?=
 =?us-ascii?Q?UXCAmVFwWPSSg4Iizq9OMP69qm17WOpzBkn4mB8mtkFA1Mlm//AqAnF257xG?=
 =?us-ascii?Q?UVMvIpxnRJ4aJiW1DkBaPIHlm2Wq1caN07V/SStQu2e1N/P4piM7mZVctMez?=
 =?us-ascii?Q?L7VfViiHHPoa9b5ok1lrTPuL/NN/1YPxrgY0v6BRwb1UV9qaDvdTyXdtCDQW?=
 =?us-ascii?Q?CtYBMzVBtWB2Ttg63I6L19+/3L2Uu+32pQAuDmTNTZ8XxtZ1Udt3e6d38PVO?=
 =?us-ascii?Q?Uge0XLxuhdLNNlFlhLUwnfF/A3opcKrvMGdZHqVXkfQKbAvOUraVDsRdjXf5?=
 =?us-ascii?Q?sdHmViR7wVN/ohU0qMeQ4GPFXEp86bPskK1RW3yegKXgo0D2A6n28kYQEU5l?=
 =?us-ascii?Q?KdIU8vYoYzj9UuM/K9uCQYB6qQa7KUoNHng05ClhdkxIx85QZKhrVoDmo0US?=
 =?us-ascii?Q?SZF+lEWl1KmL/NyJ7L5yTIeBWbryXtpdwlR3DQ/lXft3MXv2ut6WbUrdLL6+?=
 =?us-ascii?Q?HjtecztZ/9439uSLt+UdKj1lbn1oKPSNEQGqdntRlecpSRYtY3T9fFXNnRMr?=
 =?us-ascii?Q?2S9N2BRcVK1pZcfYYZOzgN58SreiRN4nKMLkqgHYaBZ3x/2jeQVa6eFtUH17?=
 =?us-ascii?Q?1dE10Aauo1RkJqRhSKahERHx/6eaYEqE6M6dGWiUvWV8VPh4CDX8NdSdrvNE?=
 =?us-ascii?Q?2K5QMKfYK/7G81FCVEHNAbN+oLhS6msLSj0urZzHOJ7eWJzpdVPEDgsH/U0a?=
 =?us-ascii?Q?p5cXHVxnIXVbWHmpk/undl6fkrMBgQS2sFsFJW7KdiyWoUu+S2cEg+JsLx7Z?=
 =?us-ascii?Q?3UZAlcVzWAXzLDqkpkkeNs7IlSY4vb6Rfr0Vr6M+3fICpVpAtcU0WPsPZFyr?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f6ee63-1f22-494d-52ea-08dc3c846555
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 19:50:51.4614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lgeo11Jqp+Ye8i+LvXEpG5juI+IAADxXqxct8RbAkYKjMPYkEZ7sfe78XBYkgGhWuRHKtfRpggSQa0ii4GWjplLD6kM9MurYbKPZ/lYxOUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8020
X-OriginatorOrg: intel.com
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

On Mon, Mar 04, 2024 at 03:30:26PM -0300, Gustavo Sousa wrote:
>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>
>Load DMC for Xe2LPD. The value 0x8000 is the maximum payload size for
>any Xe2LPD DMC firmware.
>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
> 1 file changed, 8 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 835781624482..54c5909de293 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
> 	__stringify(major) "_"			\
> 	__stringify(minor) ".bin"
>
>+#define XE2LPD_MAX_FW_SIZE		0x8000

		 ^ missing DMC_ here to be like the other macros below?

other than that, Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> #define XELPDP_DMC_MAX_FW_SIZE		0x7000
> #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>
>+#define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
>+MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>+
> #define MTL_DMC_PATH			DMC_PATH(mtl)
> MODULE_FIRMWARE(MTL_DMC_PATH);
>
>@@ -987,7 +991,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
>
> 	INIT_WORK(&dmc->work, dmc_load_work_fn);
>
>-	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
>+	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
>+		dmc->fw_path = XE2LPD_DMC_PATH;
>+		dmc->max_fw_size = XE2LPD_MAX_FW_SIZE;
>+	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
> 		dmc->fw_path = MTL_DMC_PATH;
> 		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> 	} else if (IS_DG2(i915)) {
>-- 
>2.44.0
>
