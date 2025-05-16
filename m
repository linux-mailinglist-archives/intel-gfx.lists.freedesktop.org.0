Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8D5AB9C64
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E91910E151;
	Fri, 16 May 2025 12:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNPf1Vzw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2532210E151
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 May 2025 12:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747399315; x=1778935315;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=agYMkEkUDfMiCmrcmY3/tdKoWdSDqIgtqhcWrpGHHqg=;
 b=CNPf1Vzw/juEkiYX8HCmmjSRLv02+swjib3KozIpWj6KQSU4QcDk2mox
 hYt1u50mH3GF11lACkhquDsv6PMlGi6zhZY0Roi3exDFmSQ3JhTYFUGQv
 ZFvaXzgR2yA938+PhDmTNWqNJjiOYkAnyw5YT9QSbk0PNSNXvwTFRu94g
 IkY666z1KOBBBCNv3/EXSGKIMgs/aJe2HdtHzDK/14GlTNAuX9Hudjo1X
 3ECIVNyCLkVrAhTlB2Ed7mqaO8wyxQQ4e7pn61A/+I1ZaTSmNDr7LTB5y
 x1KYnpyEAsa0GVOsF5s7qcYUI4NTYigRzNIP2accK1D5dtbYMbJ7MUVFl w==;
X-CSE-ConnectionGUID: olJtJ533T/apIMEkz3qqgA==
X-CSE-MsgGUID: slIugTq9QDyo0il8QSunxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="71874540"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="71874540"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:41:55 -0700
X-CSE-ConnectionGUID: NTeSzzHfTdiU1CDTwA06iQ==
X-CSE-MsgGUID: bo7lqLmnRLeZyuNQqAuPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="142690648"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:41:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 05:41:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 05:41:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 05:41:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Grn9afEvKg7EGrdkcWqaVKptYzGhwx9yNvnh2KyBip3d3WybY9f9v14yAUClEMEJgSgz6gHHg0AzQDZHgmLiDYxH1D3HGrHkdtqnAtIQd0wWzrIkl5IWIdDI3EKXGhm/hr4cWBz2LcDUbPNVYIIrUxSdMQq7Zba590AipAiQtrbQfuW+FB3ngK7+B1vOMc78zVg0xWE1iL3PGParOSZRdZzzUzFmdu4xv+jJ3kastp5Rp1tMrvOZTxoTwdUeafetgXeK4K3WLyWELWXr241uzslfzy8CrrwYBrN/sjZyZ/gMIbsZlorg1phmGEYpBIpOBCe6Ca2F+HkCdN+JjJEScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hki8E+nIon6R0Jg+hTpYSZQ5GfnnFnbsasGm+NLua4E=;
 b=gF0KWXdLm4vvsUwSG7GAq3AsSGSoTpKlgbLB+gNDBJuebDjPdx0oCXm7qZA+4iSb1sxHnc4dP+edERqqEMCe5Ppp6QQ9JR8kVIxFra7A3mzQi5fByt9PonAAAPinDlr8Nm4yvJZUSIo2qPRVrrbzLQhy35yjTDnrMM6GC1tdj0Ow5lwNWzQeoxNBiBCnCcv26uOQ13I5pbMKz9vfQKYznJVTD5ryY9hCZdOoWwny7GEUyYt0vk9M3pcrDzN4qLolBgEn9I0kpS3MmIPKZajWEFQvSqT5n/7fBndRAlLI0qQTkSqcnnO+e5c6FlT9S/Gjt7OS38TT7nfmeZvG4G3SXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18)
 by SN7PR11MB6922.namprd11.prod.outlook.com (2603:10b6:806:2a9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.32; Fri, 16 May
 2025 12:41:50 +0000
Received: from DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1]) by DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1%7]) with mapi id 15.20.8722.031; Fri, 16 May 2025
 12:41:50 +0000
Message-ID: <632a2e8f-a111-4e25-82e4-37fefefa15c1@intel.com>
Date: Fri, 16 May 2025 18:11:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
To: <intel-gfx@lists.freedesktop.org>
References: <20250516063019.2126702-1-jouni.hogander@intel.com>
 <MW4PR11MB7054E6900C106AB8024380E1EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
In-Reply-To: <MW4PR11MB7054E6900C106AB8024380E1EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::22) To DM6PR11MB4738.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4738:EE_|SN7PR11MB6922:EE_
X-MS-Office365-Filtering-Correlation-Id: 98f30ce3-c24f-43de-9057-08dd9477077d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVUvMjFZUnhwZk9BcXpDbWtpb0FXTHJVcTJqRjF2ZmVQd0R3YkxLMmQ1YWFF?=
 =?utf-8?B?c2dJdU1pQ2pPREdPZThnWk1ING5OUnJFc3laUStFNVV5YnIrQXpjZGRrak9J?=
 =?utf-8?B?TGVzQlZtcjNYTndqbzN3dTVRWXIyL09xRmtFb05ZSk5xa3Rzc09RdVc1TmJI?=
 =?utf-8?B?VStOMmtlSGh2Wm1WTzcxZU5TeUNBVXRNenNWOXh5RWlPVFhXbEJDL09iSnFF?=
 =?utf-8?B?VU53NGdleDFMVUhvMVJVbEpxKzlzcXhDMUhEckR0MmVEeXkvaVZVb0VrM21u?=
 =?utf-8?B?YTFwWlJyYlZVZXdoSm9UeDA4MzFnbFZuZnNPNE9YT21FVnB1SUp5Q2V5OEZv?=
 =?utf-8?B?d3d3cnIrU1F0OWVMYWZoQUJHNkRObjQ2M2dwdTM5YTl2bktuZEJLYk5oWHhW?=
 =?utf-8?B?bGYra1RMOFo5R1E2cHV6SHNlUXAvSG5VVm55NjRRZmN5QUp6ODFQQVhHalFN?=
 =?utf-8?B?UWlQb2grVkFXdmhINDBzMFozM3dRNit4VFNPMi9FNk5LZWpNQW9wRlIrZ3hx?=
 =?utf-8?B?OXc3Y0tCa21RS3BIcXZLaUxWY1FlQ25uZmk5b3lBU3pEWWVlNnpWcDRpS0ps?=
 =?utf-8?B?SG10d0lhaVlFYVZpbWtjQnVld2FTdHRwK2FXRS91N3p1R1ZPTE1XTU5DeXk4?=
 =?utf-8?B?b1c1d3lxbkpOTHFiM25PZ2ZzajhDSTA2alkxdTRMK0NzMzVOcWswcmZuTUo2?=
 =?utf-8?B?N0FUdjhkSmFRb1Ixdy9Bam5ZZEF0ZHBJQkU5UXlHUFltdmVUcjZsQUNBZVN5?=
 =?utf-8?B?aldUOHpMMjVZUUNkQXoxSXpCTW4yUEl6MWRZamI5K1BzcnJaQmhVSVJQTUwx?=
 =?utf-8?B?WlhrZ05UTkI3SmdlZnREbEsyTFRId1BEY00vUVhDdG9EQnpkR3lVSHdyLzha?=
 =?utf-8?B?bEh5dDB0ZXpTcnFMdU9GZVpEb0xKL2xnUUNSQXFhUTVMSEJpTnJNMC9lcFpx?=
 =?utf-8?B?N1FiUllTUHVQRjVkRi9hbk5VTi9vdjZ5RTVwUXM5S3RkK0hzSHFRajJ3WXJ2?=
 =?utf-8?B?QU93d25CRVhjTGdZbDhPTTBMRVVua0ptQ0pzSVQwd2FGdTRVYllMb20rb2Fn?=
 =?utf-8?B?UG1IdHArSWhPQ2RuMzBnTzl0WGtRMlE5OThxZU5La0V3bVNlUkNiYmhGb0dN?=
 =?utf-8?B?a01pNm1EY1hKT0hpZEJXZlo1bEtxTGJlZmNvVzFVbkpzb1BNeDMzZEs5SEJw?=
 =?utf-8?B?OTNsR1NJc1VmRlJWd05SQ1g0Mm4zZDBDMkhhdVhvd2FPbjRHQ2tKZUVHMlcz?=
 =?utf-8?B?SU1lUTlZOTh6b3czRG11Qk81UWQ0SHFYTDA1VThTZ20wajQvMDdTM24ybXRI?=
 =?utf-8?B?WHM2bnpWUytYd3grd3ZNN2tBemxZNnBGUlF3dzZ6dCtwWEdPZENwQjBCQkdX?=
 =?utf-8?B?UDdzU1N0WUFrRVFoT2VtRnU0QnlPcU5jRHlnREFsNzhRR25Ec2U2clN1ZDZG?=
 =?utf-8?B?eitiTC82d0hpaUtXK0FCVDRpN2o4NUt2NXd6cTRXaVFnSGZ4OURMa0pUS1Ba?=
 =?utf-8?B?N1V1VVdDS1psSkNmanYzZkJTeFoySC9CVS81OVRpYlc0YlpjamFHS0Rpbnh6?=
 =?utf-8?B?OEs5cmt0cm13bXlmVHhMUFR3cEdLUWtxWXVPMUZiNUY5cUJZRmNReWdncTlU?=
 =?utf-8?B?c0NUdnBDQUFaNmsxVlVMYmhSK2pkUXpER20wZjllcHhLSjNkSEQrSW9sK09h?=
 =?utf-8?B?QWxhRG9rT3hpZjRBWEFnWlFMS3Z0dUQ2Ny9LNlp0S0Y2NkxFVTZZa2hxWFcr?=
 =?utf-8?B?SFdQNjBiVXNwWVo3SzdhdVg3bDREV01uZWwyUEJzcWhib2tsOWdwNGQzNXA2?=
 =?utf-8?B?T2lwU1plcVVNSHZlYW9QVzdKQXE0QVhucXROcFNyVDZRMkVnM3Zra1lGMUh1?=
 =?utf-8?B?c3Zmd3FhWS9TKy9POUhkWCtrUy9vbHZTeW9oZDI1SGNrY3RLQkprSG9ZMTVq?=
 =?utf-8?Q?FX+mnZ1GYg0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S21Wa1hzd29yZFVRNjdqZ2xjcVhJRWQ3OUR2bC9WMGRyNjBEWWNSbUlEN1pr?=
 =?utf-8?B?c2sxKzF4M2dPMkF5ZEpJU3E4cFgxS2VUQnkwemNZeDVPUGhCdnVzMTJMRUFE?=
 =?utf-8?B?NXJLejVkMUovdjF1cXprOFFZWkxTZWlIZ2ZoclNWRDFIQmRsVXNmbElHTkFO?=
 =?utf-8?B?UE9iVUVCMlUrbHNaRGVISXozc3Y1a21laW9GSDY2TFFXRzdBeHpHcXk2WXJa?=
 =?utf-8?B?VGREMXpQbnZPczZLb0kvZ0hqMmVhMWFraFNxRnZ3WjM2cFZzcDI2S2FpOWJ6?=
 =?utf-8?B?M3ZxcWlobUVLc0RCTUVPVUxkT3doK0Q5bTVLZzRBSmRwdTQzOWN0eGlKVWdB?=
 =?utf-8?B?aXhBN20wZllIZkM2NnFGVFVFZ1lFek4ydUw5TEJDbWUwL1RucUdmdStBTVd6?=
 =?utf-8?B?aXVaT1ZFby9BbEcxRnNMN0NTc0p2d3VZWVYrS0xCSzdHd3VpeGl1SkNXaXpw?=
 =?utf-8?B?b3BZK2RHdEkyb241cG1QN29ZaC9obWZsMEpqR0JtN1JTVWRGNjdERVoweHBw?=
 =?utf-8?B?bTVsbUhNaGZ6anBmblBTUExzVGtmM1l0WDRHRW1mSkNDR1ZDTmNvWDVsS3Z1?=
 =?utf-8?B?dEFsa1UvRE8vMTVhcTFKSWxEV3Bxak8raHNhdnNURlNNTkJrRldtOHR6c2t2?=
 =?utf-8?B?TkhxK0NrTVF2ei9BSEQ5YldiZU9Yd1pPZEhBdGk3RC9OZU9NeGx3dnNpUUJv?=
 =?utf-8?B?b2g1eUszamFucUdmUDlDNWF5NWd6WGhNYURYRnk4Y1NocEVXV0U3Wm9yRWU0?=
 =?utf-8?B?ek1DcGVIU3dXRDJoL2UzRFpWQXlkcFpva2NYOGt4Szh3WEpUaU9zTGg4bzkx?=
 =?utf-8?B?K3VSaFc4YnpObWZZbCs5Uklzd3RLK0Q2QjZld2ZFc2JOK0VkbXYwckJXSDhU?=
 =?utf-8?B?V3dub2s0MlJaNmt4azQrN3dvTzN5Z3Flb1I2VXpHcnNDdTVBRmVZcXY1a094?=
 =?utf-8?B?dWQrbUM2d1BSVGhicEtlU2tEV3Z2N0Y3MGlQZ0FmV3VPVjJSdGxaY1Y4SzRy?=
 =?utf-8?B?WFArZWJzSEs3ekR2eHh4bWNPSWVDdWpubWxpc1dFU25XK1d5MHFJTkRRNmJo?=
 =?utf-8?B?V2w3TmU4cmM1VE1TRGlxK3R3SVFpMjFnQUtNcWRIdzF6YmhGSlJnWS95STk1?=
 =?utf-8?B?cjhUVk84SkZFU2k3VFdnckxDbmJ2WlBHZUpPOUd5S2VnTVJYcXlycnIzbkxU?=
 =?utf-8?B?UTA1ZkxaM2psOUo1ZHptMERGbXZyMEVrTE9aREdWMVpFZkttQnVRYjdibjVW?=
 =?utf-8?B?a3habm9obnBjRjBZOWhFODdwUFNGNGEwemVKVzZjM1VQV21jUFF5TmpmSTZQ?=
 =?utf-8?B?NEo0TVFpcHZhM0NSRFdHblhrdDFMcFZldFFldWZpK0xVV3A4MDl2Y1NjTW42?=
 =?utf-8?B?UlZtZ3BnYTF6d0V3ODFYMHpCTzVyNTlLL2JSbVhLOGNuNER4UnJOcUVBZ0F4?=
 =?utf-8?B?K0c4UWx0eHRFdDEzZzU4SW1jOGFuTmpEeHl3bkdDNm1OeHc2Rnh2SmpBWkcv?=
 =?utf-8?B?WThuaEkvK01LTlYyekpJMDQ1MS9nRVJYZm9OZ0RsaWFjb2s5dkhzSkJoYU1l?=
 =?utf-8?B?a2ovTStmdU10a3preEJtUGV5cFZxM21aWnFwVFRDWkVMY3pla25uU045WmNp?=
 =?utf-8?B?WmR5akdkUUlUSC94NWlhVzZwSmxWdEh0L2I4QlpEMjFwNmwwQ2xZVGw0YVIz?=
 =?utf-8?B?OW5RNGVxQXI4ejBaNnRTMkdseXQ1VCtNTjJPaHNuUFJjQUJ6Z2lGZTI3dlhx?=
 =?utf-8?B?ZXY1eHExY3lKRTEwTG5zOWoxRk9mUUwxSGNucmN3WmxsckZINlgweVhMcVdh?=
 =?utf-8?B?VFU1Uk51a1ZrZzh0QmxPVmlCby9hTzRZMzV4dVZRVEVsQm5meG9aWkFHV0ND?=
 =?utf-8?B?M1NhZ1JwY244KytDT0pONjhtZjZjNDA1dzRtY2d3UnlDRlBIeE9OUFNMVFdo?=
 =?utf-8?B?SkU3eE81OUx4cHNwTTVjai9xUjdVa1lwd245Qjk4bXZxZFJmQlAxT0NSTzNB?=
 =?utf-8?B?U0N2UnlpZWlsMDhXajMwN3BKTXhpdlNSOGxUdk1yOStCSmM0MDhCWC9NbWl2?=
 =?utf-8?B?SlZkWHNZSzVvMktVRU5QaUl4NkYvN3dJSFRKS2cvTU1sS1hhYm1CeWFRcEZq?=
 =?utf-8?B?ZE1tcTUxZGYwSjMwb1IyZ3lVcUlLMFlGSW5WdDVlUlBhZFBNZXlYeWFqc1dj?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f30ce3-c24f-43de-9057-08dd9477077d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 12:41:50.7665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OHVdC5MWl2XHsCQfIrJjo7qBDWjymdw0l3QttaIOwczsnkelzZOpe9JquGWEp3b8mTuM67r1asXZvZKF1bwy5P06glf/OAVNdLUP/xgiFY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6922
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


On 5/16/2025 5:47 PM, Kahola, Mika wrote:
>> -----Original Message-----
>> From: Hogander, Jouni <jouni.hogander@intel.com>
>> Sent: Friday, 16 May 2025 9.30
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Kahola, Mika <mika.kahola@intel.com>; Hogander, Jouni <jouni.hogander@intel.com>
>> Subject: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake and onwards
>>
>> Bspec comment on PSR2_SU_STATUS:
>>
>> "This register has been tied-off since DG2/ADL-P (it returns zeros only) and it has been removed on Xe2_LPD."
>>
>> v2: fix inversed logic
>>
>> Bspec: 69889
> Indeed, the logic slipped inversed.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
>
>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 34 ++++++++++++++----------
>>   1 file changed, 20 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 430ad4ef7146..cd833b63ea6b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4021,24 +4021,30 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>>   		int frame;
>>
>>   		/*
>> -		 * Reading all 3 registers before hand to minimize crossing a
>> -		 * frame boundary between register reads
>> +		 * PSR2_SU_STATUS register has been tied-off since DG2/ADL-P
>> +		 * (it returns zeros only) and it has been removed on Xe2_LPD.
>>   		 */
>> -		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
>> -			val = intel_de_read(display,
>> -					    PSR2_SU_STATUS(display, cpu_transcoder, frame));
>> -			su_frames_val[frame / 3] = val;
>> -		}
>> +		if (DISPLAY_VER(display) < 13) {
>> +			/*
>> +			 * Reading all 3 registers before hand to minimize crossing a
>> +			 * frame boundary between register reads
>> +			 */
>> +			for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
>> +				val = intel_de_read(display,
>> +						    PSR2_SU_STATUS(display, cpu_transcoder, frame));
>> +				su_frames_val[frame / 3] = val;
>> +			}
>>
>> -		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
>> +			seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
>>
>> -		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
>> -			u32 su_blocks;
>> +			for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
>> +				u32 su_blocks;
>>
>> -			su_blocks = su_frames_val[frame / 3] &
>> -				    PSR2_SU_STATUS_MASK(frame);
>> -			su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
>> -			seq_printf(m, "%d\t%d\n", frame, su_blocks);
>> +				su_blocks = su_frames_val[frame / 3] &
>> +					PSR2_SU_STATUS_MASK(frame);
>> +				su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
>> +				seq_printf(m, "%d\t%d\n", frame, su_blocks);
>> +			}
>>   		}
>>
>>   		seq_printf(m, "PSR2 selective fetch: %s\n",
>> --
>> 2.43.0
Tested-by: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
