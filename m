Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFCDABD21C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8DA10E453;
	Tue, 20 May 2025 08:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BR9wvDQW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C4189A1A;
 Tue, 20 May 2025 08:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747730223; x=1779266223;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UwRlHVpiiElIshXTCXbgixiBIXTIOF+bJcQoKTFQAos=;
 b=BR9wvDQWBKm9jVqB6N5417NdCAGIm7dd2b5W55Trxzr/Y+LT7oJOmttm
 Z9yVp/fxfF0xEv3ZniUZxH5U99Sj+vO29P/8nnMP1OwxcSRLFYO870tcw
 dA0EtFjWN+CW0LS0g50nPxgHoDMy3AE13bZ0K6d678zq/C5Sx0S2SpQ/H
 hTTCxa3dZnpJZYtmByYlkjfzx4Iq54+QlmSCzXdsEzzRrCmaC8rosK/Sm
 HSRKIdo8NRkQ/uNTd/gW1RIDFSTQqN1hYbAI/KvqSJF0Fp5d76ZNhUrjF
 WM3rv6WGWOyozKaWZFbcBpsEt9FEttMUuHLrvKudlhpYCqW0DMIkceHLH A==;
X-CSE-ConnectionGUID: 8MwK1trLQP+vt1hzVGRWsg==
X-CSE-MsgGUID: SWpZmb1USBuSzpkvajsiqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49805677"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49805677"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:37:02 -0700
X-CSE-ConnectionGUID: KUmrSM/3ROOBMCi25CMwAw==
X-CSE-MsgGUID: jZZfOpuITzOiKj3Irh+3wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170513824"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:37:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:37:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:37:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BAnifib5VRfgjnSBou0logzQoE2oQC3MtyTqkeOvqcbO5ttq/1aKG4NjmWdmovEaB9jbioBzl7e1T8vP35GFrOPq+SUDHeQnY+C43IgTEPFdT8qPXM66svVnUv5QqAgN9JCIZwXfx4mT915XMdL671Dy9Eq+MG4dCKOYCXnDsP7M/yiGSEoMmnd9eiXDOR0pGqx9Y0+2C/3iSVN2ZS2k8XVK4SbkrgNkVcQgYYEeLD0f7k0EQHXePaG6pSE67x0DZ1NACno9WoB9PmCfbeb3x3V94ZU809fRGnYGxlVOMuC719llCArv9lWK2HyIwEBNHFKqIxWuvdt99FunIkk6Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQV7hVDpSi1M/UtFRkaJ++tuya2QfAhuLTmTxZuHC+g=;
 b=OJKO6JHNIeHpMR9gYIDMfqtzrL+DB05a6acbImtS0lUOdafpLr4Vs2qvo0AIrw60EPDVyVs92hHcEMK9d+AkMphsnTp6ienTO3to3T8GDLxJX7hxtm/8rsVmGpH33J88rVxwzoNxQ/NKmloudddF7hfBmB1x+PcegTdEUoiA/v03nXQ3TxJynDddhN4QzyNaEghWnf4cq+ogP4+4BPDM96pUYVl9C8zich50pCZ7JarElBh5ItbgdYExijNiTf8/yTBYppJ1G1wSuYjt/zsWYXZHldh1HWuW8cmYYKtqnSxm2mcgAqFmn2cRCkbUGsGt7i+p1Jfk/hJdAvpPcxqvjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7194.namprd11.prod.outlook.com (2603:10b6:930:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:36:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:36:54 +0000
Message-ID: <8af5523e-1732-4e53-86c4-36fb1465d585@intel.com>
Date: Tue, 20 May 2025 14:06:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from DP2.1
 specification
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-2-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7194:EE_
X-MS-Office365-Filtering-Correlation-Id: 4da136d0-2e76-412a-f936-08dd9779798d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmRWTVlXcVdyOWxiTzRUSnRONGMzamVJQ1F0Nm5pc0RoMlZodEJlTFVFd3h2?=
 =?utf-8?B?bmZGcGI2TkpPYmVubmdLa0lxa1RiZCtGOVR0QVZnN1NGZTZVOU9TWjhOb29v?=
 =?utf-8?B?c3doM0tWOGs5UUtCZEkvSWpVdnhvSWVTSnQwaXNIZlhydVQrR3UwS2sxbUli?=
 =?utf-8?B?bm5IMFV4djBnZmtEUE5HMlBnK2xGS2hqRWtPbGttaWRqZmRmTFhncFZ2VG8r?=
 =?utf-8?B?VDdaRzc5cjY2MEE2YVFSL2tadnY1QlQyQXlCNHZuV3U3dzZOTDJrMzF5TytQ?=
 =?utf-8?B?V2g3QTloOHZEUC9xdUJURmNPb0VMbmh5OTFNUGE2dUNGY3lrSG5jbmNXd0Uy?=
 =?utf-8?B?R1k2YUxMdk5mLzkveXd5NERHejJwYUpnVVFWT0ZzOTU2SjVySmFUb1NSenF0?=
 =?utf-8?B?TUFkelNpZFpXUmg0bWpSaW8vbzc1ajdKOUg0SFdoTDJiZkRUV05Jdmp1eHBx?=
 =?utf-8?B?YVprWFIycXZhQ2doZ0k3T1l4dGFYSlpSekt4bmlpOU5nU2g2N3VHbmRaaktC?=
 =?utf-8?B?aUttTFBsT0l0alJ3c2lBNUdsY1FzdThZUkxFYUNwMFdXdUVQakZrbmFaMk10?=
 =?utf-8?B?TE9Ta2IrRDM1Zk50NTVpMnJrYnRpYVZsZTY3R1VheG5ibzVQYjJMblIwUjUy?=
 =?utf-8?B?YnAzM0tzRmJEZXB5YnM4UWsyamd0d3ExRWlDbnZsdnJNZDFlZ2NIdFZiK25J?=
 =?utf-8?B?bHR3OXd1SkhQNmZmRXR1UXZhSW9CLzlYVGlrVHVqS3Nhd1kwdEFqRy8yYUxi?=
 =?utf-8?B?QTNMN1dINCtBejljdHA5VEpDNFlqWnFnOVZkSjZtTXp1MjE5ekwvVE9KSHNk?=
 =?utf-8?B?c0pzNEpJSEVnV2NiSHUvWkxSdFoxdEcwdmYyeTQzOGdyK29sZklSMUljWEdD?=
 =?utf-8?B?bC9VUlQzd1dtNG9HTmhOVHZNWithTFlHY2liR0tmQ3p6T2xYc0YxYzA2RlZT?=
 =?utf-8?B?dkVTVjJISEFoUGFBQXJEclM2b01QaWxvY3NjTDJWeDBtU1dZd1dCeXluUTFM?=
 =?utf-8?B?N2IyT05VV0NhcDRFbDdXbWJDL3lJSEwxZEEyU2NTa2F1VkZqK3hEcGc2Z20w?=
 =?utf-8?B?QW9oQm5YVTFGbFBuNG1tWWNRaDBISUhuWTUvNnFpL04wQmthMUdDNWRTM1l1?=
 =?utf-8?B?OFpxY2tuNElUZ1pDcHE3a0F5cDIrZ2o2a0pMR0duU0s4RFFqNXRHc3ZBNWdT?=
 =?utf-8?B?dUJPbGJzU1dreURKNzh3aFFVVENGdjMvTU5WOTZOQVZzRWs0Rk1qME5BbWxU?=
 =?utf-8?B?TXlDbzV4dDN1N0NCUExCdWpMMGZUc3lGdFg5V0dCWXd4RldNSjY2aERXbTJm?=
 =?utf-8?B?YUE3aFpEODgwZFN2NnVxWkM0V3dwcmp3dVpFdWdqamJDVFZEcmE3eHN6SVcz?=
 =?utf-8?B?azVkbkJSNWR5VFByRkxJVWYzWnorcTY1cnk3TnRrdzFiVG5uY1dvZVc5QnJu?=
 =?utf-8?B?eFhHOWgzdVYzTFZnTktCUFBONmtGMG5JUlc4c0pRSExkWGpuK1B1ZVhjbkJa?=
 =?utf-8?B?WVlxWmhkQTY4eFV1ajJzMmxUTEFJdzN6L1hOV2xtM0JBS1diN0ZqdXk1TDVO?=
 =?utf-8?B?N216VFhSM0sraXBXZ3U3U1JyaFNSVVB4MkJxNy9uOURNL3BkTlAxNVJaaU1Q?=
 =?utf-8?B?ckhzam8wRkFKcWtNZy95UzhKM1BYMmNuUDlaY000T0NUUEthS3JJdGdFeUJt?=
 =?utf-8?B?eGlPc0hMcmxWMmVQYnVJM2RPWUltc2VURnU5bkRYT0dSTlFlaDBDenVvdHpz?=
 =?utf-8?B?bmtMM0hjNlNyUXNuazdkTE15bFB4SG9FajdWTzM1UDFING1LYndPR1NRTTR2?=
 =?utf-8?B?dHZLeDNDQmlsOXpqOUJGdkhxYy82UDVtekVJYTE1UlEwYUhZOFFmdmxrNHpV?=
 =?utf-8?B?LzQ2cDlxNEJLZS9ZcUtERDN2WmE0SWhNZkZwbVdWTFpGdXpjLytGUXM2Z0pD?=
 =?utf-8?Q?DTxH4UalSRI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXJabzRYandJRVpCZytWMmE5cnI1Z1Q2WWFqZXhhczJPUk5pZVA1UmVQNDQz?=
 =?utf-8?B?VFJ3V1NTbnlXRmN6ZFU3U2Z0NGY2aHE3bVVTVlE1YmpBZWk4Sy8vcFdYTlJY?=
 =?utf-8?B?SjU1K3FvR0JKOWVFd0s3ZHNWV0poRVN5K1V3L2VmR3FPMUc3N0xBUUFoencz?=
 =?utf-8?B?U1pjejk0aGc3STJrTjJwZU9PaXJUdjc4QUM1dnhzQTJIZ0pjOE9KaGZCVkdM?=
 =?utf-8?B?d0doQ0pGZ3RTTkF1L2lzbW5TTkJzdHBpa3kxSUJBNHBmQ2EveFpzM0hzQVRX?=
 =?utf-8?B?bWVQMG5rdlFNM3dtNU43RkRkZVF5ZnpmRHlTM2JDdkJxL1l6c3NsMzhFV1RW?=
 =?utf-8?B?T09qSExhcHdKMVlNa0Y3dDhBS3hCNXdZeDB6SGJGQ3JDYlhjM0JxcmJiWU5W?=
 =?utf-8?B?am1Wb0dwaHkxb2EwWEpJZ3lSTkRxU2RWdi8wY0U2ci96RVJ0M0pZdHV0Rmsr?=
 =?utf-8?B?TXY4Q1llRnVBc3g0aWp5UGNMNS90cmVJcjg4ZUM3bitDVmFMcTE1WjZTN1Bn?=
 =?utf-8?B?cEd5bWNBazJGNElZSlVrWlFNb3JUc3BLUHFnYWIzcTdTRGR3SEVOSndST0Ir?=
 =?utf-8?B?WSt5a3U2bi81RXBXSTNNbS90ZTZ3RUpYQ1NsMlB6OUpLYjZ1TUF6TUNKblBz?=
 =?utf-8?B?V3lGa3ZwM3N3SDFtTDJwRHdvRWJTM0ViRXVvODY0L0FiRXQ1UzNoUVRUTzEy?=
 =?utf-8?B?dk9zRkhIOXZGUVdTQ25ZekJaWkZhMi9scWJnSnZPMDBhR1htRXJmRk45T2dk?=
 =?utf-8?B?a2o3U3p6YnJ1S3FTSVczOFh4NEpTUFJYU1BrM3FyVjJtWTBkMFZScDdnSDVZ?=
 =?utf-8?B?WFNpdmFpV3Y3Q2RXOEdQNTVRb2diRndwbGQ0UEF3Y2RQa2RjblVGRTdGa0tY?=
 =?utf-8?B?VURUMEpvTlNPLzN3SHJTeXRtMXpzcVR4dVhZWHVuRVlrWjhzdUNOS0MvNUk4?=
 =?utf-8?B?ZlRIYVQ5QkkxKzRlTXBMZWRlRW1MS1NDcm56cHllUDBjeVc3Nk9uR2F0UGlm?=
 =?utf-8?B?NmZkWTVGeU8xK05XQmxnb29wckljdWhoeCs0QVFwMU5xaGZMbmhsbTNlZ2Ix?=
 =?utf-8?B?RWRzMC9pbEx4bjVtN0x2bFczWnJHcER6N0RwaS9pUTZLaDk4Z0gxRit0bDJo?=
 =?utf-8?B?Vk1lbUxrQnkwWjE4bFRLL2dQLzR6QUh1VFZqNkpUcmgzbG4zOFR3enBTemZY?=
 =?utf-8?B?eEJZcGtaV3VOS1EzYjZCMlpZV1J1OUNhcnZnUHh6c0xvUElzcUpvT04vNWZn?=
 =?utf-8?B?bGp6RndlWndmdkVqSU9FSkJrTXBISzBzYzNaMDdRcndMWXd1ZzIzZ0RIMTFU?=
 =?utf-8?B?NUUySzYxK3oxU1JnNmRuRFg5dHFQK3YyQnNJeW51eW5UenNxL2tnVy96Z2hv?=
 =?utf-8?B?SHQwSTNaOFA0ckh1UUpYbHNNUHFzYWRLV0RFZ2ViZ3l6RStMMzBoQnlSMm9X?=
 =?utf-8?B?dzhtRDV5VDdlUnFndGUyUTNrR0twZEMrOEY4NGpmRW1jS0MrU2Qzb3NFTXI5?=
 =?utf-8?B?SzJsNTJzRjg5WEE3STdGU1ZqblR1eVpNTmdyUU5Ha2pRQzByaXA5T3BjMlg3?=
 =?utf-8?B?RWNPK3dja3NoQnVJRVU4OEo0eEdRUmZ1SEpkMWszOVRscEtRSUgvby9GZzhV?=
 =?utf-8?B?aUJaSTJvNG9EYzJ6V1VxekJDc0pLaU56WTJuTTgzd1hFRlVjM3J1MDRKcDBs?=
 =?utf-8?B?dE1DL1Q2a2ZFd1UraGpTc1ArTzJvTm9mOFU2MXJ6NVQ1Lys4NGwyMGFGbFRY?=
 =?utf-8?B?OWMvUGZkaVd0akFVMHUya2xoOTF1S0RmYXVQb0tFTWI4OExwbEZGM1R4WXh4?=
 =?utf-8?B?QlpydWs3YjNHVzd5YXRYRTZsQWYzQkl6VWV1STRUWkVkamc0bHVEQVNSbUtx?=
 =?utf-8?B?bkk2WVlaMXRRY2IyamRZdUpyZWl5YXdpWUFZT2JKVU0yekdYMmg3NEc5M3NI?=
 =?utf-8?B?VkhhQThUS2RLL2NieG16cEFnUVJIU21KdFM3ZHVYZktYbXNCV0RuTnMrME5i?=
 =?utf-8?B?Y3FJUmVZVm96Si8rbEwyNTZiNDJBdjh0ZGtGSXNIT0dRTFkzUk5kVGUyZ0ZO?=
 =?utf-8?B?R1hGanF3a0JsallTcWwwOEduZzJzM0l6ZUdJRGRmaHZtTkNoOGY5ZU5JQjJB?=
 =?utf-8?B?OUN4eGE5bThaK2pLb005RXVqN2xwRG15citNRXhVc3hXcFluTUp0SFFlWDhp?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4da136d0-2e76-412a-f936-08dd9779798d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:36:54.6827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Ka7tODcIpObnp79ru1QzQ8GEZ2N5BW3OWEJcEES5/RSLZ37nPGL0uJLuJA9aTmcEpuWD0rx0RsRmUN+5wGub0IiYimcekYO94h3HWfl24s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7194
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> Add PANEL REPLAY CAPABILITY register (0xb1) bits.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   include/drm/display/drm_dp.h | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 3001c0b6e7bb3..47e7d55e2803f 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -552,8 +552,14 @@
>   # define DP_PANEL_REPLAY_SU_SUPPORT			(1 << 1)
>   # define DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT	(1 << 2) /* eDP 1.5 */
>   
> -#define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1


Though not introduced in this patch, the name 
DP_PANEL_PANEL_REPLAY_CAPABILITY doesn’t seem quite right.

Since we are adding bits for Panel Replay capabilities, would it be more 
appropriate to use DP_PANEL_REPLAY_CAPABILITY instead?

Also, IMHO, DP_PANEL_REPLAY_CAP could be renamed to 
DP_PANEL_REPLAY_CAP_SUPPORT for better clarity.

Lastly, since Panel Replay capabilities are defined from 0xb0 to 0xb6, 
perhaps we could introduce a DP_PANEL_REPLAY_CAP_SIZE to reflect the range?


Regards,

Ankit


> -# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
> +#define DP_PANEL_PANEL_REPLAY_CAPABILITY					0xb1
> +# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_SHIFT			1 /* DP 2.1 */
> +# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK			(3 << 1)
> +# define DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR			(1 << 3)
> +# define DP_PANEL_REPLAY_DSC_CRC_OF_MULTIPLE_SUS_SUPPORTED			(1 << 4)
> +# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED				(1 << 5)
> +# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_CAPABILITY_SUPPORTED		(1 << 6)
> +# define DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP	(1 << 7)
>   
>   #define DP_PANEL_PANEL_REPLAY_X_GRANULARITY		0xb2
>   #define DP_PANEL_PANEL_REPLAY_Y_GRANULARITY		0xb4
