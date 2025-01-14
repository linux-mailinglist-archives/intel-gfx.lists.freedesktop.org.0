Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D510A10C78
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 17:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685E910E3DD;
	Tue, 14 Jan 2025 16:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXXFBHF6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4909A10E3DD;
 Tue, 14 Jan 2025 16:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736872843; x=1768408843;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lLOweiQp+85CJNUTpHXQFcF/ihinTW4A9zYEEkt7r7c=;
 b=GXXFBHF6XgwBJMwdcLZs0ruMmsCseO46R2weq3E6nDArPnqc0ut3sMLf
 lJCDnrxxrfxpIVs9BaZuMHPMhd97VaGK0Ae1k+kLGgazxJnFWc6yBxnlI
 LOfXc5Q0c0olkNi9u/pPpPnRF+cUE1JiFeeViddJvLy1m+tpNiNs3NfFs
 CRhypK7cTaDQQcuL5wBCTkxWvCjuKg0uzyHa77z8YYQPvnX4fm619QgMQ
 wK82q+TnX7GzApLDwGotKiQr5C2dkCAZGbS6ZSJ5v9W9XpgXyla6FxAHl
 nHUaucRLugVsNGelyUMIUto1pgbtb/zkoRNcyJzimYMiWILOsaaapfl6u g==;
X-CSE-ConnectionGUID: jg9jOijzSJOnmvm3x46Kxg==
X-CSE-MsgGUID: 3pBOAaRQQEu2/ZA3h6X/Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48587186"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48587186"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 08:40:42 -0800
X-CSE-ConnectionGUID: ogWAhzSYTEiFF3iXZs1C8g==
X-CSE-MsgGUID: OG8hHDTrSDy7fl+5WfJldQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="104690488"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 08:40:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 08:40:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 08:40:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 08:40:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pnFMpYJn5beDePNbeIf4IHGkSQjw0dycJRJn3PctGrkXLdjU6yReBNStIRdN5+2KcPsDgwUtbdumDRTJB7Xw98N2orAaTmcOEdq/uXb0UanfX51ZRg4t7f8UxWFAcHW5uCIzGFbLFhNvFLXj+YcTom4CsSuTvwvOtbeI/01mj8OpfHH51ab4VzuNCSwVRJh3BIKjxUJs6fKEn5JtxIY4N+5kPB9UYyMB6UjEv81rMtITaKcEHEBSGGS/AicetvnDx35SXFVrdYH7C5V33x+gFhyPsA1na9pkgjZNsmnBUJKz387rMiFkhg/yh5w1Nt0AVR88T5R3Eo1VS06fWOnp6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ApUfKh9+s+qh+ichRCPCXjlAIqJi4Uyf/KwqMQZE0Uw=;
 b=FFlDcbq3hddSWKjXJJjXFfgfYT/sZJAwGDPfbgwwBb9XOCM5SJ6TEz49EGoJH5+zROS5m0l+Qd6aTXsv14u6U2rIQWVjagbUcPYRAiE293XIOEp6x95zx7wVRDC6+rgpFWcyAExcJs0d6M+zAfoZur2NuvxZ4PrAS8zXAkANQI4Xb87aLK0hogSL1IIewuuHmHSm3m5hPegrhS72gMzXXc5pN3fy997kLy745Kg7jWpCrciE3+CTO5jkwenm0IjvcbB+LjmY9XtViZ68Ekm8o93KsdUxnD1pfXWRQfA4zAoLxmhNN+sogq1OLv+CBujIBE1HLSx7tYQaqyxeJQpOxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6835.namprd11.prod.outlook.com (2603:10b6:510:1ee::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 16:40:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 16:40:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173686396670.3614104.245245697828114588@b555e5b46a47>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <173686396670.3614104.245245697828114588@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/dmc_wl: Track
 pipe interrupt registers (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 14 Jan 2025 13:40:30 -0300
Message-ID: <173687283000.2823.18358723843554188449@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0048.namprd16.prod.outlook.com
 (2603:10b6:907:1::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6835:EE_
X-MS-Office365-Filtering-Correlation-Id: 4062f553-e65b-4a3d-848c-08dd34ba2ae6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OE9zVWNTR1JueHBnRVFvT1owQVNtTllUTG1nOUtiTjFIMC9kOGZvcGlJLzVQ?=
 =?utf-8?B?TDExbDhhaE5vR083UitoY1dsQXBHcDNyMVJ4SmNJZElkSXVxS0tsWFRpMVcv?=
 =?utf-8?B?OExGaGExUy9adXN3K0JGaTZqQldCOGEyY1lPQ3h5aGFNN01Tazl1L0NyWXZ1?=
 =?utf-8?B?ajlHaHdjTVFWZ1l3ZFRHR2lRUVFUTm55TTdWSDdUVDdlUXBFL3pVVFJBY0VY?=
 =?utf-8?B?eElhb2RLRU1ZV0NwbnVzQ0xQSDRYM1ZEb2wwdGNRaEdVc1RHYjNNdDB5OE8z?=
 =?utf-8?B?WWNvQzRBMGU4clpLR1BYWjRuVHNBd1ExWDFCNE5DMzJmL0ZhbTBZeDh2SkVp?=
 =?utf-8?B?R0hLVmpES3dsUUZ3SWcvV1NNRjQva0pXRmtPeFlnTTErOFdqY3RsZnRrTzVj?=
 =?utf-8?B?NldENlIxVm45b1VabDF2b3dvRmZYZlcydUJ0ak10dmRTQU1ianZ1bm5nNE5p?=
 =?utf-8?B?c1NiSEk1Mjl6T2V6S2N3ekw0b3FkS3Y1bmltaC9TeWt0OW9mN0w0dytwV1ow?=
 =?utf-8?B?NXh4SEhPSGZTUWZPMHZIS3pOQ0lwMFAvVFBRRGdPbGVWR1k4dGNHWnNNNndZ?=
 =?utf-8?B?bUNKRzRyRElWODNmMS9lSWdoMUVPaTdrTGxlb1YrMGNmZFFsb1V0UlBDcjZx?=
 =?utf-8?B?d25qcElBMTMzMFR6dktpU3kzdnpLRlVxckxPa240a25hbGRwVkE1YU93Zksy?=
 =?utf-8?B?aHdVUVhvQWVIQ2NJYWZRQXpmYWRyMTVsYTcrU2k5MWNLYnk4QkkxMEQ1WEd6?=
 =?utf-8?B?UHAzSDVubHlxeGtPU2FtcjlQUm9LZFpFeG1ldVNzSnVlNXFBWVMyM1NKL1Bq?=
 =?utf-8?B?OW9PZTRIbERXWUJhZW5Ya3VRMnkxNy8wcHlSRnd2aEc4azc4NGJOTk9abS9z?=
 =?utf-8?B?TFBPR0FLR3ZZVTVSRDNOM0tzeGtKWW1ZU1M1a2o1M0JZVk5mWmhFUTlGV2lF?=
 =?utf-8?B?TjQwZStPV2I4TjF5UnI5ZUpsZ0Nrd3pTTzFqWm8yemlZZGpBMk5kUlVpcXZG?=
 =?utf-8?B?blBpclgrT0E1cklUNitEU1JxR2JLOWFxL2NQbmw3RXBVWnlneWlPKzBkZ3dQ?=
 =?utf-8?B?a0Vnd0xPbzN4eTU2NUJCMnlSNHppdXZ3NVB3SnlwU0lWQmJkdTNQcUlwazJK?=
 =?utf-8?B?cFVxbHg2b1FMYzg2eWVxM0kxRWNqSlM3bXc0Ync1ZXloZDR4emVWNEdNVzVz?=
 =?utf-8?B?b2VGZDVIUkdXSEk1YzJHakJXeGNzV1hWdlp1amU3RDBWU3NYNjVNS2Jzcjdk?=
 =?utf-8?B?b3JMUkZpbkhQV3M5UU96MWc4amVubU1qQ3lkbkhtbnU3eUdqTlRoRUcwYmlR?=
 =?utf-8?B?V2JKeldTdjdpVC80anJUY0hYZG8wNG9ZU0lOa1Zxek5PbUJOWGNmeERoOVB4?=
 =?utf-8?B?bUxzZzJFcUNEUlArZ0FvTjlQMkxpU2RmQXBEQVM0WGxjUFFpTWxCLzUrb3c3?=
 =?utf-8?B?OVJkUUlOTStHdm5ZemFXNjFkOWlGNEs2Z1ZaL0dlRU5NTG1uQ29iVTRZQ3Bv?=
 =?utf-8?B?L1RVWHFLOWVnZjNyY3lLNUdaZmhlUHhpVm1yRWZldDRXazY1ZDVKYXNVaVJq?=
 =?utf-8?B?QTljTCtyUElZSTVmNmJXOVR1RDNXK2V6Z0Z2OFNnSThTZERvYjBSdEQ4VTlK?=
 =?utf-8?B?NyswV0hIb3JYUlJtUUFwTlFVcEp6SiszZnVTYjNqbGE0OUZwdDlEaXFRTWFY?=
 =?utf-8?B?MC94dzVweDV1Ynk1UUNBNEJtS3pjNHZndGhjOVhjcGYzK0FRcEpxYnNmUnho?=
 =?utf-8?B?UHJhaXpmcUQxRGo3YUExZEYwcGpBSXVSLzYrd0tzQmxVTHBHMUx0MUorVHRG?=
 =?utf-8?B?NDdlRlhmcURtbDBENDFGZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTNjbWd6cGNwZ2FnUVROeVFWMnlLQkZmYmFSemViajZjcTM3RXR6RlFCL2c2?=
 =?utf-8?B?cnZCbFZobW5LZnI3UURLdytVU1g2UHFVN1ZwVTJLMG9jaGh0cjR1U0xpY3M3?=
 =?utf-8?B?T2Q4VGJROHEzb3l5V1BkeFUvbGYvaGxpeDNzVnlPY0hUQ3czc2dna1FzUXNx?=
 =?utf-8?B?d1hVY1JVc1FoUFFnY1F3SUd3SkdrZ01uWVlBNHhRT3N5Vzd4cnlKZXhFUFZ0?=
 =?utf-8?B?UTRuRkVCZ0E4VzA0WVphcHVKRmVndDFxK2NzbnV2WmxJakl6TGRQdjhPYWgx?=
 =?utf-8?B?d0M5R1lUWGFaR2E2cVVPbDNlWVc3cldJWlN2ZDFOM0FNQVMxaElBNGZSQUsw?=
 =?utf-8?B?N3dXZE9XOWdRZFpuY1NHZzAwVWZkTGhkTGJHMTJPZVhVRks4SEhaQmY3dmtL?=
 =?utf-8?B?RE9Qd2lxNmoxb0xDb1I5anVmZVJGeG9pOVAzcHlOTXBZSXBmSWtNc0E0SHZa?=
 =?utf-8?B?VnBNL0h1cHpzNWdxTERaU01BOEVUc2ZoazAzeUFYalF0VkQwUGhIWlpUaG5t?=
 =?utf-8?B?Qk8wdUVCVlVpT0E3SkhYc1Ayd2hxM0hucldrNHhQTk80dHFmK05vWnQwcmxS?=
 =?utf-8?B?U29udHV2R08zS3BCbERxMjM5c2FUeW0yUzhjcEU5cUlsVStFMnNORVZVaFNE?=
 =?utf-8?B?TjNEdEZUNFEzeEx4bjBjZnFVR3lka2F1c21Hc1g1SEdUTHBHV1FJcW1iWFlY?=
 =?utf-8?B?anN6QjlQT1hQd2JveVh3enlmRmtHSzFkMHl0UnozTlJ3RnRCeUNETThhaDBi?=
 =?utf-8?B?ZUVsdlYwbW1TWHBjWlk3WSt3TUhPbUo0U1lRdlBETldxM3ZRcEt3RDlkTStZ?=
 =?utf-8?B?RXdMSnZ0Vit5UXZjMmFVN0ZQRzcvUExxTTUzUTdhbng5Vms5cnBNV0tCRnRN?=
 =?utf-8?B?K2ZJOVprcjU4TzZXOGxib21GeEczQXlYZmdLOFo2UlhkYjY4Y1JWWldGTjgv?=
 =?utf-8?B?WEQ5anQ0RGw5M05xYmNBcVB4T01NT0pjRzcyelBzZEY2N3lSL043K3hrbFA1?=
 =?utf-8?B?NUNvRnN3M3VjUW14cDVpbnpqVm00ZUY2dUJYenM5VVd6Y2U0c09UZllvaUsr?=
 =?utf-8?B?SjFKb0FKQTRwaDlmNERZUzFmbHY4bitBa2pzaFBmenFIRVkxQ3ZhUFhBZnhL?=
 =?utf-8?B?c1B1b1A1VXpKRDZzRy9sUDVNSk05emNOWlk4L2s3VGR0NzhDR2dYdTlCa2x3?=
 =?utf-8?B?T2hSSW1LcHBRWXAwbUc4OXdOcE5XT2xjbzcxMjk1cUFnNkxmcTNtQmdkeFJZ?=
 =?utf-8?B?dC9tVG1RVnRjN0xWTEcvdWlObmVZdy9ET2VTaTBIakJmY09ZeCtBbitwWEhQ?=
 =?utf-8?B?NWtRT0gxQUFneTV3RlhINXVvU2hKYWR6d1I1clNHZG9DaENxS2IwVVpKbFk3?=
 =?utf-8?B?K0Fxei9LSFgrbWVmMGJCVTg3YStXYlNFdnpIVlM0ZG5PVW5nTXU3bVFhS04x?=
 =?utf-8?B?cU42K3UwaFJGUTBydHdRdmdIbmR4TmcwRW9nTTUrbGFzTVB5TUJXWTVaNmZI?=
 =?utf-8?B?anQzeml1dDc2WVEyT1MrbXBsNGNQZnJ3L0JjWHIzK09iUlZUQWN5MUZtRVI4?=
 =?utf-8?B?L3U3N1pPbXc3c0VWTTZlMHBmcUZ2NERFbWZuam0yaTBQbStlTCtjSmFhQnlN?=
 =?utf-8?B?b1lEUTZhVW9qbDF4TFpFNWJWcHdWUkROUFREQjBvNHFrd21IMWhHa0krYTF2?=
 =?utf-8?B?T251R2hzZ2k0YlFSQm1qOHdIZDR1QWkwM0tDZStoODk4SWZqQTBCSmNYejdE?=
 =?utf-8?B?WTBHR1Z5TWl1RzlIM3Q2cCt6OXBKSWEwLy9kd0paVUNMNFltZEFTM3BxNk5s?=
 =?utf-8?B?V0Z6Y29Eb0tmTUFpaHIvM0dldG0xNHNHc1ZGMTVWVWgrYThLYWVOcFdrR0Y0?=
 =?utf-8?B?VWVFNTZ0aTJpV1FIemFSZFc1bGpKNXRZOHU4V0Y2c09pTm9PU1lhUmRxY1RL?=
 =?utf-8?B?a3dwMmw1TTRXQ3NlOXJxQTBNdWtWb0t5SU1uUXRBcjlhYnptZkI5SkRVRXJn?=
 =?utf-8?B?Z25pWGszaVh2c1J1V1MyNGF1ZEx4MGxlemdOaEM3aUF2M3YvRExxdUY2UE16?=
 =?utf-8?B?USs4NjR1bGZEd0hBZjlPdEFGL1RmRnpWcVBLREttaDRLU3IyNmtBbnRMN2l3?=
 =?utf-8?B?YXhWNVdOdGhBR1luelQxRVhTTWpublBwVFNncUNORmdvTnZKeU8wV2JKUlEy?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4062f553-e65b-4a3d-848c-08dd34ba2ae6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 16:40:34.6015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqzcw8W8aVXIMZcDi4ENrcWUKlZdTQuxEBk8xjwR5Guun3L/XJse0LnXv6LUkp23GOXVtXECh2Qzlk9LD6Hovw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6835
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

Quoting Patchwork (2025-01-14 11:12:46-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Track pipe interrupt registers (rev3)
>URL   : https://patchwork.freedesktop.org/series/143104/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15950 -> Patchwork_143104v3
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_143104v3 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_143104v3, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v=
3/index.html
>
>Participating hosts (44 -> 42)
>------------------------------
>
>  Missing    (2): fi-snb-2520m fi-skl-6600u=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
143104v3:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_selftest@live@memory_region:
>    - bat-jsl-3:          [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-jsl-3/ig=
t@i915_selftest@live@memory_region.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-js=
l-3/igt@i915_selftest@live@memory_region.html

Hi, CI team.

This should be unrelated to this series.

Could you re-report please?

--
Gustavo Sousa
