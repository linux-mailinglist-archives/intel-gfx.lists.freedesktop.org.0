Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71EB1B2C7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492FF10E65D;
	Tue,  5 Aug 2025 11:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ol5atVF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB2810E65D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754394591; x=1785930591;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=STODJBrNUbgVpDyWM1FA1AgjgZpn1bWnivt+3brDLfA=;
 b=Ol5atVF3PEUW/VWzRgyME4gfG7ca98uKSXeFVUQq7DPyQxhixE7sAfHn
 lzQmT3MzwuM1ldFbfD1NVWZR/blDrNCOrXVT9jpSpeTDiXO6fUHyiFXW7
 6rircC/3hk4W/V3zYhN6jSGkdjsZW1PM9BUguDbcwlMQQx8bV/XR2g4OS
 tt7NZb0T4ffQVbJa25SAy9WH9O0oJrzwjVhsE5SlmlpU5r/BVQ+StkW05
 Av/oas5E6omQwTRapz92sRQNsNvgbxUw10V+GfBTI4lb3zlUVD2qKXgCO
 3Glc0qH3HdrXNYT3rGHFzAJSWMQjVraY8sihQGDVYd0I51d2XbF2LC8RT A==;
X-CSE-ConnectionGUID: NPrgt/pkSvajUUs6h/KY0w==
X-CSE-MsgGUID: c1KGcH6fRl6SuRSc5Gqxag==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="55724535"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="55724535"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:49:51 -0700
X-CSE-ConnectionGUID: +t7VtmS6Te+VVMg/M/0iew==
X-CSE-MsgGUID: 8g5/HJt8SfaGlcmp/mfmIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168629045"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:49:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:49:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 04:49:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:49:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ubizETLT6vBmOtu1KCPDpTBTJr1AAeEJAX5LphVnQNIg2uSPwHsmbr+0lmEvAvDGmU/FtK6TROPVXAOq1cSX54QoHvaVwkg79U/sxwlJGprv+jKAEIZM6RqlpMjiVv61coNcSXFxAQixxsaaWiHuj13k7ENXxcqYUD8laC8Zf+b+Ewjehdia9QvS3Dz3IfLk4lkBys5WnhVgPdNQLnTOzk3ITghJtXSisGj7kd0XBmB8e3nhyr3iBn3Q4eGKqIsLYCE6Wz2cqPz1LO/nCdDxrlUIfT7ggL54XYYjnQXDvRSKJZJ1K9ZVzohB9AKOJTP6fYoCbVusRMvrp8vmvPC2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ocwj0gC+xgdTyfbayJOL0fopvqJNkJUaNMfzISJVNNA=;
 b=LIsgSwmlPMSXYS3wHEz51RaKwLuuHJQEXyuexYSnpwLkO4DnHimYljJ99MfzLKdDz32vUJZtlRPwj+kiLfGWkfQ2MqHr5Z2T1/CmgaQe3PaArnuxSkAi8qXB8LDPeU2Mn3C4YftOuCqUqDkn65fidJc3bEPrXqP3GJY/ncyCnBWu+lqt63LiHqtHl43aWikmYrcwU3UWeSrrDULctNzOQltw+Ft+h136Li81ki1wVD3fCNmMJ06YLajl1pDI3lbXD4qcQYJHxrzu5Q/ivXV5gjGL2+XWEz4jLai292LvVZAn36/lG8Vp+nnqB6Y5SHrgZa9TLxBe9l7fHjo/aBlABA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB7086.namprd11.prod.outlook.com (2603:10b6:806:2b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 11:49:45 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 11:49:45 +0000
Date: Tue, 5 Aug 2025 11:49:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH] drm/i915/gt: Ensure sleep calculations in wait_for_freq() do
 not use negative value of timeout_ms
Message-ID: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DU2PR04CA0049.eurprd04.prod.outlook.com
 (2603:10a6:10:234::24) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB7086:EE_
X-MS-Office365-Filtering-Correlation-Id: 5223ec0d-b6ef-42e6-f859-08ddd4162c49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QjFCbHh5TXRCYVNzdjZtZUMrMmxtb2w3YnJmdTlkTHlTTkYxTkRWRkxkQThT?=
 =?utf-8?B?UXFoeTAzNTFyQ1ZOR0tVMXlKbG9BdGt0a3pnNVpMSHUrS1NHM2I3ZTIyVzJI?=
 =?utf-8?B?NHdiVjNXZmo1NFpoejdwbG5Od1RlYzV0UERsMUJwaDJNZnBTY09zYnVhdWly?=
 =?utf-8?B?b05qMWloUGdobGdTZ0JIakQvV0xBOVRJWmk2TFNOeUZvc01yYWxsdUk1NFpy?=
 =?utf-8?B?YjFoNHlBZUdRcnZNUm9xaUVxaXdacVp5TFV1NlJFOVpxalN4ZmRBaU9ick1o?=
 =?utf-8?B?TUhLaWlLTnl0MG9sdko0d3lxT3QwWXIxZ1RvNnBGZGVNejc4SXZoZTMzNk1i?=
 =?utf-8?B?a2JvMXZpUG9EcC9XNDNtWjgzUCs1TTI2S0tLdzhnazZZWVJrOUVPT1oxclU5?=
 =?utf-8?B?MU9ZbnNvS3RrVHlEWm5zRlFqQmVyZjN0ZVVKYVdnZTRSYzlMNDJEVEpqcVpK?=
 =?utf-8?B?T0gxb3h2bEVNeG54c2N3RFl5RDJaYXlWeWNUY0c1YVhqME9lR2E2NWJHUW9t?=
 =?utf-8?B?S0lLYVlJNkRpRkl4MmNwZ0hOR1JrUEZKTjRDRmRSM1RSVEl6cUs3bkIyS09i?=
 =?utf-8?B?c2lzL1FTdThUWlE4UlFraStDa1VZaXdnc0tPbDF1ZzBFRFU5SzlnZEo5N0gz?=
 =?utf-8?B?TWZoZWRKdERGT3Z5REZkc28wUS9FR2hxU3BLZERBNEZ1cnplcHIvZXdaeHBO?=
 =?utf-8?B?TjRrbUR0cmxYc0VjRklQQS9ZbzRZNXZOMk5sY2VQVkpMM0ppb0QrMGR3U3Z2?=
 =?utf-8?B?Z2hhY1JiOUpxM0lmc0tnWEpGYitNNG5ISnZKd3UyTVpjYlR2b05aUkljMDEw?=
 =?utf-8?B?eVB0ZE4xS1FCc3NuNDFWb09DWStKb3FpUk9WUGxqbEFvT1FiL0lScThQVnhK?=
 =?utf-8?B?bEVCNEo0ZWtUZFhzek82R2tBcno5eWlpeEVpZ2ZMVUx4bVJZSDBRWDcxUHR5?=
 =?utf-8?B?VVIrNzJqcEEyWkI3VHFGYWI0SWV2YTJhb1BveHNNRFpheG9DR0VsZmVmZXFk?=
 =?utf-8?B?YWlMd0ZSTUlvcFFqdmRQcXBJcnNmb3lING1WaXp3dFFCUHFjRWRBcENtY2tF?=
 =?utf-8?B?elhnb3NpSnNHbFVVNWwza3NGRVg3bTVSRytQQjhCdjhrU3hjUFpzRTkvR1Zr?=
 =?utf-8?B?a1RUb3U4SUN6M3JUZkRYSERmbHV2dUFVUzh6VmptdXhqVFpaVVRwdUJQUk1o?=
 =?utf-8?B?V2RhWGJiV3pka2NpZ2NGdkgzQ1lRLzF4TTRJRjRWd2FzWUs1NnM4YnJzYTZP?=
 =?utf-8?B?ZXFjblZyUmlDYTVMaEw5STRJcmZKZ3BaM21obGZmazRLNW1NeSttZXFQU3hY?=
 =?utf-8?B?am43bUZjWU85RTdjTG0yYnFRZjdWNmhVdHluT2w4U1VmT0RiLzZSVkFVYUVY?=
 =?utf-8?B?eUM4amNFOHlVZktkY1dZZW43RitrcmY2dS9WVE5RSzMyb09HbEtOMkpSZGJR?=
 =?utf-8?B?T05yQnRseFZuMFoyMGRodW9NMFhIcWFkWU1EeDdkQksyNWJ1eGJDeHVDVUkv?=
 =?utf-8?B?S1hSb3VRQUM3TGVDZ0t6YzBZK1VWV1lXNmRSdlpVcVdEQjh0VitZWWtvVWpE?=
 =?utf-8?B?MHNMYURWcDhRZTk5cVkvazVJamJUaWlSQy9tSVhPN0NieVBTdXZvTWZlVjJP?=
 =?utf-8?B?ZG1XWkxUcHZqeGl4aVdaTGtYNUR2a08yM2xrL0FZZzRGQUhJejhMZTJhYUNS?=
 =?utf-8?B?czkrR1FpanBCaHZZZzhSWEFjL3BRcXJWbXNUYll6djMvTXkydy9ORWtTbHZx?=
 =?utf-8?B?NFZCM1pTLzFUZHdNL1pWeHlVT09oMmUzQXRSVDI5Y084Mmp2b2doU0JRL1lq?=
 =?utf-8?B?K2xaU3dwcGo1SlFnNm1FcUZpenc1Mi9BWDBaak1DM3lyYklsdVlvdmxFTjBu?=
 =?utf-8?B?WXNINzVRdDFBdHdxdkVleHdhdmZsZGlBaCtyQjhaUWpPVlNjMTdhcHhzaTZD?=
 =?utf-8?Q?ud0Q4amUhQA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHhMaFdQaXRrOCs1b3NJSnpOcnF2bDVQTis2TmEzdHpKVUxsRldhU3dpSk05?=
 =?utf-8?B?SnpuMDZITElrS1dQb08wWVpLQThuNGtNSnlDc3pvRGJ5MEVuRFhHaDkrS2dv?=
 =?utf-8?B?TFpaTGkyUVhFSHF3b09GWFV0Z3pNZ2FSR1F4WlhwdndaRWNGdTBaaVhIZG1w?=
 =?utf-8?B?Vzl2RjBrUGVOTVJ0MXBRSWNNekdpU2xWZWVnUlFwUDF1ZDB6M1ZFSkxpYXhS?=
 =?utf-8?B?ekhBODdOdGNVUnlXc2E4RGZrSHZGdFB2VGVzUXpKTlE4VVdZOG1RNnhhcVpj?=
 =?utf-8?B?bkt6NFhTMnpRK0tlSStjbnNBNWxReDNqR2Z1V3BMTmd3RVcwRGZLa00vTHVp?=
 =?utf-8?B?WVlVVkdWcHdRbmRsVDBXV3htekZ1ek95blJoWlgzSTlqTkNXUWNaZm95SWhK?=
 =?utf-8?B?UldpMEN4RlBOeVFZYmtvTHc5d05nTFVOL3hNQU56am4rbXdsb29GV1JNczVj?=
 =?utf-8?B?MTc2Z0FZR3V6V2RQY2h4U1dieG1YY251RDlGQ0Jpa2dCeThYc2tFZHRzaW0v?=
 =?utf-8?B?aU4rR0RHSzNkYldxR1BkWUVJVE5PNFlxa2xLUzJBSEdkanVNeFpLcGRXcFAw?=
 =?utf-8?B?WDk5SnhjVUdzUkpaY3B1NkI4SG9iTjdiT1FKbHJvUllMc0h6NDd1UXV0bVhY?=
 =?utf-8?B?b1ZRWGF5eDJlYm9UMzlkTUJMWStRWnVYMVMrcmg0bDd2Z3dHaXo4TlNtZmJM?=
 =?utf-8?B?VTlPM1hTK1FvVUFzZlNYc0lXTmk2djYvOGtpWk1BUitrZlVLa0srK1Jpb3Nz?=
 =?utf-8?B?NWMvNERpbFUvZTNuM1E3b08zNTcxdWwwSlZ0djVhb2krQThrVGx4am9WaWEx?=
 =?utf-8?B?eFU4aUhzRlY0eDV1c24zZVZpR0JUdG03bXFuZEFKbk91VlZyZ1ZMbnBPaUN2?=
 =?utf-8?B?aDlYczBNd1lXYzBaR1VmK2xYNHE4Y0lraDVOU1VHVWVSVWN3N21Rd1ViQ2Vr?=
 =?utf-8?B?YzkyNHdyUkFleHFpR0pPKzNjMktmUExycm81Q1VxVnJ6bVpIN1RSdS9PSXl3?=
 =?utf-8?B?UFVDNGV4b01XbVFNelliQm03YU9nYTFoT2N4dlMyc04wLzdadWxjSzlGZ0RE?=
 =?utf-8?B?ZXRhbmZLQUhTelRCVTh1bnR3K20zWlgyTDZ3aUFIV3M0UXlPeTZEMjZXUm55?=
 =?utf-8?B?U29BY1RXd3gvajloT0dPQ0YvU2tGWnIvRzduQXh5SkpJRU96UXRTSUFQSlNl?=
 =?utf-8?B?TGtRREdzeWQvcHZyaHQ2alhkbnhvUk5jVnBoVk1td2hpSHhCN1Z6ZGhTY2VU?=
 =?utf-8?B?bHhuWFhMSCtMcFZBODkwV1F3Z1ZlTitzRTU3UW1yU2htZFlRWDRSTWR5d2hp?=
 =?utf-8?B?bXR2NWp4bGVVZXpjckg3dStiRXdDcGQ0YkIySmZVeXEzUFZRNmVKM0trdk9F?=
 =?utf-8?B?SVhqQXBYU2poQ0RDNDR1bGFsMG1pVm5rZkZacEw5R0F3d1lYdDJKN1F3a1JF?=
 =?utf-8?B?NTg4REp4Sy85eXZrM1FEbnhJbE9IV28xd2wzdG5ERG1rWjRXRUJMb0ZnM2RG?=
 =?utf-8?B?QmdzUitEbkRvYW9EeTlzaWx2aFJGMlpiTHlQaFZ1N0xjcjVtVVVvcVYvV3Vo?=
 =?utf-8?B?a284SWM1VHQ4eGgwNGltU0pUVStWLzVjUS9VVWkreTcvLy9JUS9vRTRwOXpZ?=
 =?utf-8?B?OGRIbWFtSlc3RUxrNjVnaS9PR2VMay96blorS2Z0UWlPU01NeHlaaHg3TzBP?=
 =?utf-8?B?RTZJZ3RBdnpMTnRQeHFvV0s2U2ZVSERmSk1hbzMxN0dwRWtQaG9MT25idjRR?=
 =?utf-8?B?VzVNZVNxWVJTeDJsTFpiWFh0Y2JGMFNxenhEdEpXOW5uVldFb2J5Sk5kMzB6?=
 =?utf-8?B?SVFBcGdLZGc5QVAzYW9PK09reFN5Sng1c3c0RDAybGpaQ09CTU9ZV2J3OVVE?=
 =?utf-8?B?SHFtU0hraitmdWhmUUtxSm00WGZ1QUxLVzBZbTF5Y0lSQXFJaGE5VEd4WUJY?=
 =?utf-8?B?SHdabVppTW9QKzUxVTZvN2V0cjdIWFcySkxHN2w4ZFVkYlZwaXlKY0hubm5L?=
 =?utf-8?B?ZEZoejltR0FvUG5Hd0Z2eUN3RThveDhCWUJMOTd5cE1QTnVEREs0QzJ1ai8r?=
 =?utf-8?B?T2c3eHdjV1d0d2ttMlorOUdIVG9PTGhDaCtMamRXZVJQWXBKcVg4WjhEZ05Y?=
 =?utf-8?B?Zk1sZmJReTYxSzRYbDZYdTYzendrd2lRWXRoZVlUdzAyM0VwQ01xWXY4UHJB?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5223ec0d-b6ef-42e6-f859-08ddd4162c49
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 11:49:45.4984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4/MwGYIsI+sbCH//GxjYCiImeMB5lEmCp5UfokzvzTZ8w32CPoCwDch9eTk/d1YDnqFe3eFfnHo0gE/8c+RdIyOu3Qq4Jq7facsvTrmli4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7086
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

wait_for_freq() allows timeout_ms to be negative to pass it down
to msecs_to_jiffies(). If the argument to the latter function is
indeed negative, then MAX_JIFFY_OFFSET is returned from it.

However, later in the wait_for_freq()'s "do while" loop,
"timeout_ms" is used to calculate a new value for "sleep", which
is a plain integer. While "sleep" being negative does not lead
to erroneous behavior, as the "sleep" is cast to unsigned type
in usleep_range(), it does not seem intentional.

Change the type of "sleep" variable to unsigned and ensure it
does not use "timeout_ms", when it is a negative value in the
calculations.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..20ec7c0c94dc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -152,7 +152,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
 {
 	u8 history[64], i;
 	unsigned long end;
-	int sleep;
+	unsigned int sleep;
 
 	i = 0;
 	memset(history, freq, sizeof(history));
@@ -180,7 +180,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
 
 		usleep_range(sleep, 2 * sleep);
 		sleep *= 2;
-		if (sleep > timeout_ms * 20)
+		if (sleep > timeout_ms * 20 && timeout_ms > 0)
 			sleep = timeout_ms * 20;
 	} while (1);
 }
-- 
2.34.1

-- 
Best Regards,
Krzysztof
