Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA948B8452
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FD710FE8C;
	Wed,  1 May 2024 02:23:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxeFNqlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF9210FE8C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530196; x=1746066196;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ca/VI/8covvEQea1AdqU7JTK58D4RtPmGLJqWeodSaw=;
 b=cxeFNqlYeHXqfQMbLDNcRB2kQwK/6nR9APp/DgikCcQhz+dRF9mG0I4E
 Ksr4JwGYNMYkOAfqwwOhKGnOr2624r4/A1dYflS+GQVEa2jMy2Vi/mlQK
 IKJkRm4X0SUVsOFiaSlCWgdj4SSb06350b9YoSDx1gWPBwGG8zgwzoppA
 NMgAXf/EAQxdMXH6Yz+EYaqdzDlTCS587cYIV8kUkV2LZuhyjdbWfZdnC
 YlDulz1vMUwjPM/bs0kac7xhh8t5dZO2mYZQxQCFmoBgEe0VDeFVwRZ1P
 wJxWS+O4uYdSE7J9qQaDUHjMUMjPbR8K4EyoTRVPBrKtqZb0exauEHqx2 g==;
X-CSE-ConnectionGUID: VvEhNN2/RJeNkOkObMH6SQ==
X-CSE-MsgGUID: 3skxZNlmS6OHCYdjgrhX1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058827"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058827"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:23:16 -0700
X-CSE-ConnectionGUID: CIT9TLGXQdu4u39ZYRLYfw==
X-CSE-MsgGUID: urXqpEmWT9KHPdLsgWwVRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27156101"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:23:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:23:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:23:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:23:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0JcPIowqyRIiigoq6G0QeQtF/X3lSo8rhchJKigdHFzbhJPgl3vEnj51XD+bep7eopUJSeF8Iiypsnvdw7k+g9Eow8jIFPA7e7VpPGk/jY5p9jeNhDjLU1WYvZSz6+xe1HFtFr5cDeKbs5dtf4NnZzfbTUE1yDJ0RqI+SB84y3sTV4zUNAeuzK5l9GWw7/fhwrkkKFY4n7VW8m068Am18xp83hgF15mdCp/3Cnwb90bcfXghyhk/g7inNoeOumpaHY4PkXKP0NTH/4Wc4/MpyYfIFVHMLaPe4/lUVnt/tHL9Ac7XZAaIaA926Rf+j9m+Dqx20ryE7bZ355tGycWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGs4NVvt1nw7DBKAiSdtN+4Gr3eGmRF2x+H5aWZFkO4=;
 b=mkIMqiahhORxTqsjYBW5hw2HFlzUL2LtFZNxV3kQU1MhYquRyGHPAP5398ri99ZFZZ9LRN5VIlqq9qDFJvMPRZYCumT9inxgDZB8UqT/EbYPZCuQ7SdrsN45/CMokyQu6laE67nkEu3ZpaxtyBrnri5TpjmNSJfBnuKOIqHFjP5wIwwL85y/mrP0Q17vCQHiNqWqKJ4MBTQFQc8L+jy12svWb3fuFsyvE6CHtXwlgmDqFYrPXFBI2ongNpGqCFUJTu6rP3bGkRfzzrFmyePgRTDNKbfer9hKkZE8lgqwPKPSebM/biIvWTe/Pjs39TKwPnCArc8Nc0ZktHmOxFslfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:23:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:23:13 +0000
Date: Tue, 30 Apr 2024 22:23:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 13/19] drm/i915: pass dev_priv explicitly to
 _PSR2_SU_STATUS
Message-ID: <ZjGnjLGVGQDSTcZb@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:303:2b::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: f101966e-1b9a-46c2-3953-08dc6985a6dd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9en8AamWCx03TzUQONXWFuvSRnat9TmOr/a2fvL5v726DRr0EZ1POH+ppSBL?=
 =?us-ascii?Q?oMFkauDVcD2UqcKpU9KD/STPIgfpHWJlsdKuJmFymmUqzlTulyzQ0nR0/BHk?=
 =?us-ascii?Q?eTZC2Hm/ojoL+VKn4UuJPtsk3FzJ8yqx5iMZm7a1MwfasqwhGqB4AGSfVwtK?=
 =?us-ascii?Q?rfqMGoFrDLVe13lMQL6a/TkB+nqNjPz+ljJrpqivxJHEkE/pfC0r29uIjx6O?=
 =?us-ascii?Q?+Vki/HjJ8S+kOr+ldldZMd+2CddS7u0gxgUm9dSphSUvZzHFVOJms4MQXOl2?=
 =?us-ascii?Q?gq1NKOAwaWJ3H1w+eWSU4O404BJDwCI/UaMhLMy1loovE1sfHdCKGVE4R7Md?=
 =?us-ascii?Q?pEgBKkclgAA3uEOX/4h8sehv7ngRsw+112SesVD/IqF/qeeOJon6yOIoqyVX?=
 =?us-ascii?Q?IzfnlZP7KwLu/mcb+IZ8EwPHEn4wBZDIEYZWy0duEcr/4nRykF8rWnj6vCwk?=
 =?us-ascii?Q?T7OulcgdwDxNIhXr5pcoVIneSKv6BKftGqQrL4cQFALyMkwnsPSTmcX2QnK2?=
 =?us-ascii?Q?37WHMyvtzLS8QgOpnpXnlkAmcEuFma2War+f/TeYM5evqrzHpybSI3hZK4rj?=
 =?us-ascii?Q?QNHEA3SEZf63Ng8ncI/4FLrhTnzpewTeen6gZiYHd9e1LIoFSCElESi8geEc?=
 =?us-ascii?Q?wQeXSxiBmyDTJmOIrBXpG1HDd9ycikk3HiM3HdxcbBm34hQJVAyvKdnt9MSw?=
 =?us-ascii?Q?H5lMCRiwHjm+bt6KajN3lnmP/n6SMMvp+ZjvrQJNdyUuhJM3dsCiv6Zxd69G?=
 =?us-ascii?Q?HmxND1sByeHsXPKPnV3gtkmIHGLicwxR/aYRhvbQV3w8nysvZbqbsWgGwwcw?=
 =?us-ascii?Q?zrfX70W4WoWRg57ZPBZXtOZTUSg2AqEs/FIhJolCUQ7ruINVQRs3NOkwNMqf?=
 =?us-ascii?Q?WswV6ZGmDqdYq4ilZSUPOuYu2HFfNmxA1jj4wJztaDfYpfaWer+NZQtXLQS3?=
 =?us-ascii?Q?rl0ge/840QQlBdb/7MMZ89HfVD7xX7dYFn/Ct4R7+87qG/m+R8IsC5sdBE3+?=
 =?us-ascii?Q?kpyKw+gdBk9TK1qQT0BLekWTeh+GTQZNFf3SUBRXsGWmPH/fyx3+T9H0nb4Y?=
 =?us-ascii?Q?siKOMXcbRvQtV9fJJgfGIV/6dxoWRvhFEHBijMEB755fdzHPXOwNadsI2Iox?=
 =?us-ascii?Q?KWJs/myvLlpUkFFlXb8sXxMiG5wVA3UdodW6i5RUehrERSCRLzsDjNfPDAlh?=
 =?us-ascii?Q?c/sNzumV8uz9DcbRt97aokNdNA6jWBasnsO3o9zZW/cQzsmh5F3kji2v/iz8?=
 =?us-ascii?Q?UcVh9+MriLZATNoKP6y5gTkH8pIzaubmGnn12Bj72w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2kY4KPVPjYQaxqX1Wspb3Wqnzm6xaHwCya5eRTKWAYqDDcZ+HFnIP8xqr9WL?=
 =?us-ascii?Q?VzcAMo0y4lXUKxXXCK+GIYhQZfNnvflCAirlVL+qW6OU4EuP67twF8W8P+Qc?=
 =?us-ascii?Q?4EaR2pPeRp07PVWtNHXIXcq6HTkuT8Fv5DzvoqtnhBMuput73ypQzFNbljyi?=
 =?us-ascii?Q?gyV+sISFOGOz+6nqeII372kCN+Wtd8AFs3FDFc/G/Ot5YgwwPy4tPqsg06+2?=
 =?us-ascii?Q?pKS75PZT7Zu8HvgE/wsn1TPlLopZvDkNZy/kXJIgrZH0mn1OWB1GKk/baXRJ?=
 =?us-ascii?Q?Fsk+2UasQP+sPN8aGcTKM7Q82bhnFQmDz3H7DDNpLaaoUv5J5OMTg4lXWQNA?=
 =?us-ascii?Q?Z88HW1bENFu4apQOyp/Lf/kAO3dugcgmIVBZFLjTYxzlvuwS3VeB8SuiSxPS?=
 =?us-ascii?Q?t2ZTV8ryG+V8Y3xX8i9Zx+p+saNU1P4O12sw75lOZo+4twL4p6tjffJdD58x?=
 =?us-ascii?Q?fEHMi1uCWAabJo89ZMPI5w8s5gy5z0nFrk1MOCx9nEgTXKHmOrnugUryS8t3?=
 =?us-ascii?Q?YmFynlYiLeF4Ard+dhrY04lj9yeCYZPDnqcp9quIQpzskZ2mr5mottzIPt8R?=
 =?us-ascii?Q?JsckCIbJiak722PE4p8L8AXU2I/DFlO9Vz5AuwrYWSHuktbQb1g0HsPqhVlq?=
 =?us-ascii?Q?dvz96r7cg+JFnafT+0K0y/87DlMJ4LuD44tDo3vjF0maLp4HLwGDhSoTmf+j?=
 =?us-ascii?Q?k31Lu3prJnyKBRYFqsoLqJ4Dufcpfj+8acFUEznTAH/L12vvyw7+QAiMpwRN?=
 =?us-ascii?Q?v1DGww4CrSkk22VAe+DRZR1QaQOcEjBk+HkifOsJCOffxNaSZrgxz95EIOwW?=
 =?us-ascii?Q?x7yI2U92Pbkedo9V6/mTOcgs6U9mKbsI/fQkcX9TbRz+G/38tnLJS7XEM5Un?=
 =?us-ascii?Q?luWdjemNLhH/uO01hKVVH3NBdUZPle+j6KolZlsaznp0FoGnMAD0kzehQH/z?=
 =?us-ascii?Q?+AwP+Zr2EOkpFqOs9VdWqlcOjUiAOwZcOp2Dgy42vxvtGozO1aAcSO2lgPD/?=
 =?us-ascii?Q?G1ll5ekU8HT3StJRBfpNNjSONdexsPOVKDDCwbSW/g4yyRkvU/eulNSjIAXD?=
 =?us-ascii?Q?ynmChaY7334mx8e+0lHg4WwzZQGTJISfoKJF3eE13bgEoQb9+DH/ml/EUVnC?=
 =?us-ascii?Q?S0s5mMwPWXqneFbVcgGk4pnXy9D4c33VGzG6cFf34rLPgFp3v3sJG0COUqtt?=
 =?us-ascii?Q?Z5Q/JGiCjFkj0/Ko8WASjadifYgFzN4VF5YaGlW3OFC4Ll8lLzxMBTiXmgw+?=
 =?us-ascii?Q?N9MQ29wDw49tZ+CleqxaEszZza/Fh/LGP73H/8zGEgyO0Ut8UrOg1UDfQtJK?=
 =?us-ascii?Q?VaV1ne2jcyKGp69aEQJBPEBs6tX6Cgv9yFDUz+wii8C0a/shN4gL+w7r8gX1?=
 =?us-ascii?Q?6pVkSS3Z/LrUcjvVVK+RBbqBdJo/aYA5ziA6/bl0WNxaEbkB9ppnBhR0dMTp?=
 =?us-ascii?Q?Zyd9g1Oz+ESILF54D6QaSfVnvybomZRLGOSbC4YQ07m097uEBdlQhL2ZGzdW?=
 =?us-ascii?Q?TtDiJ1SJQgn9nxHM5wkCe56W4/PBRSsDoKompM0vaCnkGEVV7J8EE0aq6iwc?=
 =?us-ascii?Q?TPBis5YjUpkKMAvI0p6D1HW/NFxqtjtyWeBEFkSYB+2xVXllT6LMHdIMQNOY?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f101966e-1b9a-46c2-3953-08dc6985a6dd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:23:13.2447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DZAmJLN89d8swG//IuI/4HnpfVcIGejZSy6hkSGqd4qurma9cDT+ObNGCIe713nco1Z0xIcI40/ozxAb9UbaLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7731
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

On Tue, Apr 30, 2024 at 01:10:07PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _PSR2_SU_STATUS register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

why aren't we going one level up here already?

> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index e6c62512512f..762fc0ad7eb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -221,8 +221,8 @@
>  
>  #define _PSR2_SU_STATUS_A		0x60914
>  #define _PSR2_SU_STATUS_EDP		0x6f914
> -#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
> -#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
> +#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
> +#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(dev_priv, tran, (frame) / 3))
>  #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
>  #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
>  #define PSR2_SU_STATUS_FRAMES		8
> -- 
> 2.39.2
> 
