Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8CBC887F0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 08:49:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0FD10E52D;
	Wed, 26 Nov 2025 07:49:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dtKNngMC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFA810E52D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 07:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764143383; x=1795679383;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=3uPA2G6kHq3ezdOzHFIM84uEjoAH/AabyehPDC4ylxM=;
 b=dtKNngMCcy8V9LQiX/XoNoFqT9sl+JxYrfMmr0Wctahat1z5/s4jPlYe
 NQbl9W4qbnl8TwWHLLR3Tryk2AG75++ieZLGxrOo0WCDua2kZP1UkI5ae
 9M7IuMI+FIsgkDakqOzsLX3EkXXGmfxgQ3hrGKSWgbI6PiwmNClQ1oKad
 PnGiKnStFcwVOf/DllHN16dt6C4ADBy8X4IYBEUCJL6VE14Jg47gLDFfZ
 ESBQgkmS60Xd1UCmZZX0cyVJuV23T+f+AYmskjSm1KKtPmYALC+AE4NCS
 6+/rAQeDdEUE8BeZk/ISPfBBzYhmJOp20fTrgArUmDMxUWDETWabz/ZdV w==;
X-CSE-ConnectionGUID: HpLQsH+TSlCVjPLVNPNgEw==
X-CSE-MsgGUID: ytuQPQ+QTE6CVHesjj2X9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66129691"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66129691"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:49:43 -0800
X-CSE-ConnectionGUID: j2liwLkOTHKb7oHI/h6fKA==
X-CSE-MsgGUID: QgXoRnrgT2aXzOZiLgeMCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="197811055"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:49:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:49:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 23:49:42 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:49:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ESvPqEEi6jWIi1mksOHOOiQY18Ih7TEILRlfjvMv3Z4m7shpTQS6FkORMX45+EN5uEgg46jNR2Nn3+tu2fkltM11xVbInPlrIyc8mooLADakbL8s/PiiI5aCIZNiVwIecc8wSTjQ3UJOFFSqOIWSmCmhyP2GsPJmQSmEi0Mp9JfSUcYqpYzE2DEHbM91/EHXNg8DWq5+BivueMKxe+En+G5NjpksIDukY8bmYpaitSOMm+1jBsTnskVM1Lca/c7IuUH0JrniBglmcZOBGlQudh98J6v+OnboAm54OGysI7wuTFyFQHQZJqJohYdK4Z3LRyyQnwIoKY7RflGsmD16cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUFjSZsC4x2feYRwFSlwEw2tqZ5tMeCmRCd2Qd+5Psw=;
 b=AXC2Cj8lttIikJJwZCLlfLjND0upDP9XucwwB7hPD5j1Zxq+Kc+qVTfXnnCp9lEoqHih8DoVW5pLyiK+rvgg4dCQtFBHQvhk6gGP1z00u14vrV3YfI2ZsXw5exwRPFYUrEjG5PvYbF1/LqfttNZz8qjnSzaFcbTkdsEuIIRKAn6J3ho1uYaA1dNwTCcRbonJGzvkHMYf0cck0v70JgsBPPc891HkefhemyTTON/0p8e6XHcvE1kvDHSE/ahD5vK3FyTrqmae8xcMXObXyU9FRbQltAO22oQkuwqWSAEqhu9IIdcapIJ7KsshxzDMjD9LMzPTIWCF9SwSAVe+a+pG6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS4PPF46B98A11D.namprd11.prod.outlook.com (2603:10b6:f:fc02::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 07:49:34 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 07:49:34 +0000
Date: Wed, 26 Nov 2025 07:49:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH RESEND v4] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: LO4P302CA0001.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c2::6) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS4PPF46B98A11D:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b8e590e-ad5e-40d5-fb6d-08de2cc05747
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDNxWVNCZ0JOS29IckZiOUhDN1JUL0s3MW5PcmxwMnpzcGhnNmdPTCswVThJ?=
 =?utf-8?B?QTg1MGJwNWVaNHJ2ZW01cDFJVkk1Y29WdjNoUWo4WEtCdUlHWXQxWGVVTFZE?=
 =?utf-8?B?eU5pWUs1dk52dUw1MUNZS3QzYml6eG1JVlZxUld1N1FHKzJMYStZNFZiOWxG?=
 =?utf-8?B?V2FkUU14NVVYeEl6RTloeHV3MVl4T2R2UnpOZnR1ejlrYXlBa2lSUEw0VXNM?=
 =?utf-8?B?eDNkWUlPNlZHVWtyWHJuVVZZQzN1MTI3Rmg0S3d6MHJuS3JiMnh1blNvVDR3?=
 =?utf-8?B?VzBiOEt1emhZZGpaczJDWEFBWkVjWDg3aFErOWJ1N29nTGl6bDd0VldiSnN6?=
 =?utf-8?B?MGNSTXVLQXJyaDJZSEZRUjFaTDl2V09XMTBNaWo4YU43eU9wMkd2UWJVMFFh?=
 =?utf-8?B?RU5zOVkzUDMxemxVa2hBRXlObXRFbXJ5L2hGSnlFRmZETTBvb2l1TjFoTHQ5?=
 =?utf-8?B?TlQzNGRLSk1ON0l1K2FlRG5heXJ2YWZqL0hhUVNXbVdEK3hCSHVlRUVEa3Nv?=
 =?utf-8?B?RmJLNUVJaTkzeC9tdnhVSVR5NGwrVXpHZFFQUlcxSkNETUxvZEhKb1YydkZZ?=
 =?utf-8?B?S3dTL2d6dy9PV05sbHJyVlVxTmRIMEd1QXgzcVA3OU1pZDZyTFBzTGZSV0dl?=
 =?utf-8?B?eEhnNlB0cGIyQ2MxSnJiMVlSbmNhQm1YS1dPM0J2SE5Dc2NDSzRyT2tFZk1y?=
 =?utf-8?B?dnJ2TFUvTGpETk5aZFBIM1VHZVR2RkJSR2RrWlEybUlvVE00Y3M4TDVWRndR?=
 =?utf-8?B?RHJxTFBRcnJjR05mQ2FNemVJSDhoQ1N2UWZIRGlMWjVOczZPN285YzI4aXJq?=
 =?utf-8?B?Z0hCc20yT0JmR0tjOWJaNmlZYThLR0xvTDBmTW0yWjBlOXNYdFB2aEdkTzBm?=
 =?utf-8?B?UDRrZDM4cFFIbzdQWFdGazQ1S1Y5SG5JVFo4dkVhUTdjdE1raThkRkxDMHpC?=
 =?utf-8?B?dkZzbUh0VHFRUEkyWGlqVGt5OVNkRExSMXJwajRaWmU0TkVleXBVOVRYNTJL?=
 =?utf-8?B?azVRbVlHWUh2OFVUbjI3RjhJanVMTFVFRU95TUNmM21xS2VZQ1hGUUt3d0Zr?=
 =?utf-8?B?M0JaT05ra2JxdlNjVTBQQWlhYU05a1ZNVk9yQzRHeGgwMWZzMTY5Tk5YQXhX?=
 =?utf-8?B?Z1pQbUs0ZXp0VzZOZmRCZFB2ZkdRNDUwa3c2NnpLRUEzTkxkK0NoSmNHWHpz?=
 =?utf-8?B?blF0NnB6RlN5ZU05dURUQlVsODgvTG9iSy9VVXpOQTBLZ0VHSUNtNHJURDA5?=
 =?utf-8?B?MDFCanNhdHRlVWpDRmZteVU5UVFRQVp5RXdzZUxINHlPWkcxelFUTGxHUDVY?=
 =?utf-8?B?VU5NVDlnZHVQcjhJUjFBbUNnL1M5Y0k2NWM3NW05L1ZXYjNzdFpjQ3hRRGkx?=
 =?utf-8?B?ZFJSV2dKVzEvd0ZBRDlhUUJTZ0JucHBNVGdrSmhIc21PY1FPTUdVYnlqQ2lq?=
 =?utf-8?B?VDI2Y2doM3lPSk9aUnJNRlhaSm1ZbGJpS2gzN1FMeUZ2UTNGMEgyQ0p2LzV1?=
 =?utf-8?B?dTIrdHRranJJUituRFBMcFdZUk1UNEgxN3VVRVFJazBnVXVPSW41WXFYSHRr?=
 =?utf-8?B?MEltQ3dGUFhvT2VyaHJMeUsveHhKcWZiNlBWSTcxMmc1UU1tR0RGb3E1UlRK?=
 =?utf-8?B?S3lxSmEvMllmKzA3VFhIU2p6bm5XOWd5c3k5RHVmMUpjcnJyNlVuU2MzR3lJ?=
 =?utf-8?B?MU5QenA4SVFjRHlHV2xJU0VxdmZRMXNLMjF2Kzl6bUVja2I4NnR3TXcra2JH?=
 =?utf-8?B?bzJPN1FnUlJ1Z3IyMFB0c1gzekU3WkVtMmplb2VCd2o2dmVYbzJSVDlHK3BN?=
 =?utf-8?B?andvTDV3dThtL09Xb0REcTVhcE9YMFZGbUkwVmRUQWJOczIzOVdsaEdZOGtQ?=
 =?utf-8?B?UmZNa1k3ZEF2V1pMY3hyVGZkcG1STTZRVEM2YzB5T0hGTnZ5ektpcVZ1Y00v?=
 =?utf-8?Q?0AxkZ1KPmTCje5f3zoBympAfxFJ3D5Yv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z256QWVmZmVOTkFHdXJERVN2S2ZwWGptSU81eEdEWmFNK0xiaHhiQnoxZEwy?=
 =?utf-8?B?VGEyWC9RVHk2NGVNTnpZMHNnZDhTSlA5cm54a3l5RnBUU0FrbnF1WmxRdlc1?=
 =?utf-8?B?L2xIK3BRbjhKejUrR2k0YjVVLytVZ0tDcTNCVnR2c2g2WjY0TDJCRmROSEQ5?=
 =?utf-8?B?R0RPQzNRRWJzNGdmRXNtZkI2OERPUHZ4S1I3UFkvWE1RK24rQ0xmY0FnTjJK?=
 =?utf-8?B?eUN3Ujg4dmdEWkE4bytRcHRWZCsxVUFnLzBVdXBBOXB1VnZtR1oyMnhaeXBm?=
 =?utf-8?B?VzdRZ2NYT0tXcEpvNjJwT1BPeWFLTWVqaXBBVkZDNzNKT3ZVcFRTUWZra05P?=
 =?utf-8?B?bnIxb0RMOUl3MWJQSDdBYUpxdXA3QzkxZFpiVUw2UkMwb0tVcDhkcXJJNnJK?=
 =?utf-8?B?bHhVNmVhVmZvUG56TC9Obm0wdndiR0pYdHZTMlZJd1lMTGNqVEMrT2ViMmE3?=
 =?utf-8?B?RTVabHdCbFQ3OWMyd1hGK2w0Rm9WRExCd3RmZkdwTzVYSThhY2l6UUpNYU44?=
 =?utf-8?B?bzMwWkxaQkhOUlV4RjZiL0JOL1RWVHVKUllJVURHOXJMQUk2UC9PazFCU3hr?=
 =?utf-8?B?a3JaU09GMlFBNm9iV3puVy9lUEV2UDd4NFZIakZ1OUJ6KzNFMjhmWGI2enJE?=
 =?utf-8?B?b09oMmc0a2UvaU53STB1VlBZUUh3ZjZQNnhtMEp4SzZZQXVsWVhMZUFDQVpm?=
 =?utf-8?B?NDltMStwMXFSL1h0Q1lXaitnWUFhVTFqVk9XbzdCYjFPMXNBN0gvNlluSEdW?=
 =?utf-8?B?Vml2ekM0VW1URTdNZWdtbTRSMmJkZXhQYjZndE1sTWxIeHNwQmphOHpoVnNG?=
 =?utf-8?B?VHJ5R1pQeEQ5bjVhS1R2RWwyVGtFeUs2MWx1UzJHTzVrclNXbDhDaTROakN5?=
 =?utf-8?B?VThNNWVKMFZrR1hQMmlENFJWS3VSM1lSejRFdlFiY09oTCtvYzFGVlVuZjB5?=
 =?utf-8?B?aW95WTR6RkZITjhUcTkwU1BQN2J3cm0yR015c0dFN2o1VGNybjlnbzdwV3Na?=
 =?utf-8?B?NFpBaHA4SHcxbE9CT0RQNEY1VDc0NjN6R2NjUG5sWWkwVHkrS09GTStTN3d3?=
 =?utf-8?B?K3B4dHBBOTRUUmdGaHZhODdnS0h6SDIyeUl5QnF2eksrT2dhMGloZy91Ky95?=
 =?utf-8?B?RFJTWkQ1clNBbFVzY0ozZnA4SUppQm5ja25KQ3pDZGxPZzhSd1F4ZU44blFn?=
 =?utf-8?B?TmlTNjR2Kzk2MXRNSjVUMGhuM1dCbWRCaDRhN1orQXdhVlpIRjJPanJOY3Vt?=
 =?utf-8?B?Zjd0TkR4cjFsTjRvZ1BtMjc1aU1lUGVNRmt0VWpobmlQalFDN0NHRUIyejVi?=
 =?utf-8?B?MUhqdWpKaUJQVDBNRjA1ZW8ydjJxRDFqem5WcTRBdEZ3SEJBZHJxTUlqckJm?=
 =?utf-8?B?UUJLS3dlVXRwMmVRZkZYaUhKMTc4QnBmVGVtV3lOY0V4WnE4R3htZVpVeng3?=
 =?utf-8?B?Q1ZCcU1pWUU4dlpObkFjeWMzTHZkZ2FJRW1wNzMyUm5PaXUxUDdjOXpqZ29N?=
 =?utf-8?B?QXRsMUg1RG5ZamRyNzFBUE4wNUd5WHJ2K0o4RGFQUXI5aFBGaTZLenBYOUhj?=
 =?utf-8?B?YzJ5VlBHMUZvdUp6a3A4RFd6Y2l2anpWQnRKai9WZ2JScUU2dlpGMUlhem1F?=
 =?utf-8?B?U0RRWXlBMllHNSt1VTJoV0h2L0h2c1hnbHpOVkIvSVRGWkZlM0dyUWdlTEEr?=
 =?utf-8?B?Z3F3ZUFMeCsxTXJ1a3pJUm1nWTh1NEtHSFVqVGpuT0hkclV6N2tqQ1VBSkpC?=
 =?utf-8?B?V0JoZGVpT2xJQ2t4dkY5Si9DUlVxU3BvUi9vSDF0eUx5RS84cmgzNTYzc3g5?=
 =?utf-8?B?YTFQczRzbVZYNE41dFl2Z0pjUXlRZ3k1c3ZtSUF2N2p3M2VJNWdJQ3ZlZ2Mr?=
 =?utf-8?B?ajJpUHI3SnI2TnZpRHhSNmduNzd0bWpjS05BQzBvK1BKTjFmeStDKzFrSEMr?=
 =?utf-8?B?RGlyemhxL2FUQXhZZEs2YWpNT2hlNEZPNWx5NWcvV0tlaE1GUXlFM1N1VUgr?=
 =?utf-8?B?NzFIcldrOTNNdUt5TFpLY2o4VXIwYnVhTVNEYW5MTktRNHhwcmxMbEkzSDZO?=
 =?utf-8?B?V3NyUzB6ekRMTjFJczZzWmoyRzlvQ0kvWDViWUcxTHZHcUNEcTZWS0IvSVdP?=
 =?utf-8?B?bXlmTkh0clI0QjVJUmVlbFRUMFlUWlhjSzAvakhWc2l2aWxWdmRBbndRbkp1?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b8e590e-ad5e-40d5-fb6d-08de2cc05747
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 07:49:34.4796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wv0i3zeFfhgTlKGnLAUfZcDr/THGKuGNaRKxHoN0dP/NwDMtFh+gZ09cjAmqsngB+VDSpHfMbsHso5jKfiOj0a8wiHOb1yoZDrPYokm8nm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF46B98A11D
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test, a mock file is opened in
igt_mmap_offset(), which results in allocating GEM objects for
page table structures and scratch in GPU mappable memory.

Then, also in igt_mmap_offset(), the file is closed (fput) and
the cleanup of these objects is scheduled on a delayed worqueue,
which is designed to execute after unspecified amount of time.

Next, the test calls igt_fill_mappable() to fill mappable GPU
memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the objects allocated for the mock file get cleaned up after
    crucial part of the test is over, so the memory is full with
    the 1 MiB they occupy and N - 1 MiB added by
    igt_fill_mappable(), so the migration fails properly;
 2) the object cleanup fires before igt_fill_mappable()
    completes, so the whole memory is populated with N MiB from
    igt_fill_mappable(), so migration fails as well;
 3) the object cleanup is performed right after fill is done,
    so only N - 1 MiB are in the mappable portion of GPU memory,
    allowing the migration to succeed - we'd expect no space
    left to perform migration, but an object was able to fit in
    the remaining 1 MiB, which caused get_user() to succeed, so
    a page fault did not fail.

The test incorrectly assumes that the GPU mappable memory state
is unchanging during the test. Amend this by keeping the mock
file open until migration and page fault checking is complete.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
Resending, because the patch did not get any reviews.

There are 7 GEM objects in total allocated as a result of mock
file creation:
a) 1 object from __i915_gem_object_create_lmem_with_ps()
 -> i915_gem_object_create_region(),
b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
 -> alloc_pt_lmem(),
c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
 -> alloc_pt_lmem().

I inspected the behavior of this test on ATS-M and DG2
platforms. The latter always freed the GEM objects originating
from mock file creation at the end of the test. ATS-M, on the
other hand, performed the release much sooner - around the time
a call to igt_fill_mappable() would be returning, so there was
not much leeway in the timing. I confirmed this by delaying the
fill operation by one second and that did away with the issue.
On the other end, adding a delay to __i915_gem_free_objects()
produced 100% reproduction rate of the issue. However, I felt
that juggling delays would not have resolved the problem, only
decreased the probability of this race, so I decided to increase
control over the contents of mappable memory instead.

Chris Wilson had a suspicion that this patch papers over leaking
vm_area struct, which was addressed in
f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
resolve the original issue.

v2:
* change ownership of the file used in igt_mmap_offset*
  functions to the caller (Krzysztof, Sebastian);
* rename igt_mmap_offset_get_file() to
  igt_mmap_offset_with_file();

v3:
* remove double fput() call (Krzysztof);

v4:
* extend the comment above mock_drm_getfile();
* reword commit message to contain information about GEM
  objects;
* rebase;

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 23 +++++++---
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 46 +++++++++++++------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 57 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 0d250d57496a..c561df41ba49 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
 	struct vm_area_struct *area;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 
 	/*
-	 * This will eventually create a GEM context, due to opening dummy drm
-	 * file, which needs a tiny amount of mappable device memory for the top
-	 * level paging structures(and perhaps scratch), so make sure we
-	 * allocate early, to avoid tears.
+	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
+	 * context along with multiple GEM objects (for paging structures and
+	 * scratch) that are placed in mappable portion of GPU memory.
+	 * Calling fput() on the file places objects' cleanup routines in delayed
+	 * worqueues, which execute after unspecified amount of time.
+	 * Keep the file open until migration and page fault checks are done to
+	 * make sure object cleanup is not executed after igt_fill_mappable()
+	 * finishes and before migration is attempted - that would leave a gap
+	 * large enough for the migration to succeed, when we'd expect it to fail.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	vm_munmap(addr, obj->base.size);
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..6f1b6d5cc2d3 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,17 +9,22 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
+	if (!file) {
+		pr_info("file cannot be NULL\n");
+		return -EINVAL;
+	}
+
 	/* no need to refcount, we own this object */
 	drm_vma_offset_lock_lookup(i915->drm.vma_offset_manager);
 	node = drm_vma_offset_exact_lookup_locked(i915->drm.vma_offset_manager,
@@ -31,22 +36,35 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0


-- 
Best Regards,
Krzysztof
