Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D44BFABFA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1958710E6D0;
	Wed, 22 Oct 2025 08:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hqofkx7c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E501F10E6D0;
 Wed, 22 Oct 2025 08:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761120121; x=1792656121;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fdycEmZN8aaJvKRo7ZbZuSN1jUuBKZDIdSERg6jg4SY=;
 b=Hqofkx7coxA+Lwxy0j2EIv+8Au8itBZ8AohnT68CcQnqQAX08aWhvwVk
 BGXpifAalfR74s/S6O+rFtxpwXrTG74WwxkV3RxQU6l8qt5Y6t0WQXJvw
 TQAR9T4taHPM+J4K8pgPsp0MgRtdrprUIeucAnDNLh/PuY+hO9sj8hn7N
 9z7CLEZl+pYj4Qs4oE/mw+rvZbBFes/j6jspIyrhsXeNNly9iG0knTMpu
 EbveBxHgiujj9NMAH0sd8bE6LX6zDu29EXKxBwpg9G5PFryRrmIJroqHd
 wQ0Px1z0lvDMYpszmZwPadSBzw+RY2UETCFlBhWkLomHyBTv2jLOrKz8W A==;
X-CSE-ConnectionGUID: ThBLr7RHTf2chI/2jwdn/Q==
X-CSE-MsgGUID: PNqIklm4SCaNswW0lKf8IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74698333"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74698333"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:02:01 -0700
X-CSE-ConnectionGUID: NqyiSIp3SJS2i5cnoEX3UA==
X-CSE-MsgGUID: Iwfme0vZR3+JT3E+asnMlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214448421"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:02:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:02:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 01:02:00 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:02:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iZwAchMK8F1Z4fnThcqRB0hxOtsPcHqh48bFV0wjwlX+/NJv5CTbvkXSw0tuNwsPMsc/WQMraUnHBllLkEPFiOD2fHvCQUXGrqRqnSGnrfz1cvcXOchr9Hza/jrT7hTGCSh7xe/NUvJdjBBspC1j1KX4lS3/IsTOE0cAPL32vAqVP7uvtDxBKcFV07hL3vWbxdmwwI23xhpUaVcl8yNJU0+mdBoHfrdputpZO3nWWo10dp2nkSVrAQ/JjDaBMhLI+P7nFODQnB+tB+0gUZz9qG/x3s9i3yxGMm5rcDMWwKoTSSACiocoKBLVy/MxGqFM97uLu3bjUDMoQn+2QlJ/bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fqkDqVmHj83trJdyMrjMnPeRqorBLs+/SJogliPJgLk=;
 b=Wp/th4cVYmRBnahokup9SguRyL9eQWl0cROa5tbNimzOmJYTiq8sSwEIQ6Lqr8iGPIa7beTus7ZRwE0GcrzRdRqYHIEbpGmYMcDiUtqH7C8ht1GVJha59yio9694oAhN3tWvEmiCTWV+iXph9IhuAf7qYJeLBifTJcCRMOCVu4mAsOQYzTY6YHM88em6o9TbksxTMDhs+Jbsvyd+IPdOSBmbOD8jUp4JLUuQlXRmgLu11vwh9/asaqvCDvHEHSbVkY+4gCrxiiFORwaQMC67BadMJSDIFRhjOxv0OXngLkIpk5fRtDp5y4knYMnYuepk0DAxj+9zBuootW9J3h1g6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 08:01:58 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 08:01:58 +0000
Message-ID: <b6527266-c60a-424d-8df4-b194b4eb7640@intel.com>
Date: Wed, 22 Oct 2025 13:31:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/25] drm/i915/cx0: Change register bit naming for
 powerdown values
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0179.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::11) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|SA0PR11MB4592:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aaa797b-be6e-42df-d9de-08de1141462b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2Q4Y0Vmc2h6YVZaNGxKQUNCUDVNL0g0Mk9ZakREQmo1Y04xUFAwRkZJOFA0?=
 =?utf-8?B?MUZoUVJLOFhXMjdlSk9vQUFuRndKVGZqSU40RWlCK0t5NTZDeENvQXl2d24x?=
 =?utf-8?B?KzJEaEtzb3kwM2NIamdRMjc4QmpyTWpTNm1ybFpoM0lBY0FwRjY1U1BSbFJP?=
 =?utf-8?B?eWNDMDZSZ2lJcVZMNys1Q21JbnoydUJjRm1PeHlhTWxEdmJQb1VTU0dYUE05?=
 =?utf-8?B?UXB0UEEwQjRnY3NsVFJtSFJZTjdHNjhoYVFIZ2tKUkw0aEsyNG51RFoxTUZL?=
 =?utf-8?B?L3VGVEZWWkZsaDM2K29mOWFnMW5PZURqSlgvSEVldHRpSXVGRC9UZkV0anF3?=
 =?utf-8?B?cndWdGIwWEc5NTB1NXZRQ1dZcE5qM0VvejFRajVoWWZzRW5ROGUrNFA4T3lh?=
 =?utf-8?B?NHozcEJtTVFRbDV6K0NqMEdkOTJCVEJrTzJNTG9LY0VzUnpEQzRNQkM5YWU1?=
 =?utf-8?B?aHRteGUxQWVRZFpWU0wwdkUzaHoyd1pndkRyNC80bW1YY1dSZ2tDMHgvNGdS?=
 =?utf-8?B?M3RNMFF4OCs1aytRMm5zL0lHOEo0alBYZjBrV2dWSDN1VTZrcnJoL3pXVERE?=
 =?utf-8?B?VW5vOXFjcUFMTkcvRG5ZYTgyUGN3c1QyN082NEEyUzFPTXBzS2tsNFU1dzBI?=
 =?utf-8?B?dlByOHJBclBHS2Zrc1I0SzJ4NUtjYnVNTGdhSTNudGgxb05PU3pKamFBSFVL?=
 =?utf-8?B?YlNSZWZ3Ung4TmRuZjRxeXp4ZDVxblFSSElaMHBMYU42eEVZcnhRcnNnWEV1?=
 =?utf-8?B?MnFObnpvTDRDalhTY2twU3RZR0FBSjRLSHdldWt0c0pZTjIxMk90dTZ3YzJu?=
 =?utf-8?B?UnBrQUl6QVRNditzOVhieVVmRVM0UE5GcXhaODFGbEJEdkhXQlcxamFGaVRX?=
 =?utf-8?B?SlUzN1I1K0c4RFdGQ015NzFGTEttay9CbDR2WEhIeWlnOGpQbVBYWkk1b2hy?=
 =?utf-8?B?Ui9NNGVHMEJ1cjZPYkdNbUVlTm1sQ1dxZXUyWlhVaVZNQXdNdm9HSDhESXRk?=
 =?utf-8?B?Mk5jTFVlSWF2c3dtalRIM1ZJZThDZGhJai80VjRsT0VRMlZLZUIyTW52Rnd2?=
 =?utf-8?B?QXBPNittL0l4cURHNkxoRHkrRkVuMi9wVDhWSjJFS2grTi95OVhMaFBlM3h2?=
 =?utf-8?B?Y2JETDZNb0QvWmpoem1MQkdoa2hGaURHdDA2RElNZ24ydHZKdnRsOUxpOHZS?=
 =?utf-8?B?QktJZ2pWNElxRFdKRmEreWljZ1Baa2taZThjOHh1MXFaME0vOHJVdVZhZGVX?=
 =?utf-8?B?b2s0eGhQdE5HVk9SaVhxSmlscTJFNDNHOGhJNWg1cjcycTZYQ3BqVEVyblBw?=
 =?utf-8?B?bjI0cmRMUFpXUW84NzR0TEZ3UTh3cXY2NGY5NXB2M3dKcStmNzBRS1pTTGZv?=
 =?utf-8?B?MCtaRVZpQkpRbTJjZ0tsRlpPVjR4MVhOTXNaMXovcWNqTkVTLzlnN0k0RWg0?=
 =?utf-8?B?UmlJaHNMTGlDMm5vTWkrZGVsMi8wdklRcW1xT0VWeU9qb2REUk5xRVhESWZK?=
 =?utf-8?B?bDRlNmNYY0R3SVlwMDk1dzVjbXhNY0ZBUHFveXFkUkIxb2RGZFdxU0ZOYXU0?=
 =?utf-8?B?clNQOVdzYlBWbjR4TEIzOFRZR2Yrblo4ZytML1BDUnVYNHJmcWx0N2NFWjhw?=
 =?utf-8?B?dGtFZ2VGR1ppQUp3Rkx6MHNPUmtEdllXRHNzdkEvTjV3Sm1oUVFwRTdhdUs1?=
 =?utf-8?B?ZHVOTlNKMC81SWFiZWNacUxLM3BTbUlWTFpZdFZaZWQ1QVBMOGZpWXNFaUFz?=
 =?utf-8?B?bWZ1cjg0UmFQeVplZW1PWTJ1RmJTdEVOT0Y5WVRnckc0MVA5dmFpSkR6ZFFL?=
 =?utf-8?B?ODZOOWVyaDk2WGhtY1lGNVBlKzBDZldyYW9JeS9MMGRYZXp1SGV4QzQxZXBV?=
 =?utf-8?B?VFE3aU1Qb1A3UjhPWlFyLytVakgvWmpkejZJVDNQNUxlQ2VyY1dFVEVnQ2di?=
 =?utf-8?Q?1YEHoHGeYOWizg3U4o5NQ+UvCuXEkNZh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rlc3SGh4clIyM2ZTV3l1VU1UVmZHc2VMQVdpaFVnYmVPWlE4TmtTbDRaRDFk?=
 =?utf-8?B?Qko0SG11RE5iNWRIRVJlcjY1QjdYeStsei9zWkozRlVCWkYxK2JNOFNkZ0FO?=
 =?utf-8?B?Vnlib0FDNE1UVERWVVNpUHRsaDV2b0tNbFFCYjZwSzVRajQwdHIwbVFNVm9p?=
 =?utf-8?B?aHJobnFPdnVQMUlxcHpvNzMwQ2Q0TFoxMWxzdXZYa3Y5UFB0ZTUwZ2lMMWZL?=
 =?utf-8?B?bU9qUkZ5Ukdyb0wrelFPNGE1eU4vVkEwS1M1TU1CSVhrOU5scjJUTXVESzRz?=
 =?utf-8?B?ZTVLY0VrMU5kSW9RaUdJVnBhK2hjNFoxMEtsZFZkL1lmeW5mOWw4UGo2WDJZ?=
 =?utf-8?B?OXFWcFo2Nmp5eVJoc2ErRE9mTDdjUnkvYy9yejVyRFd4aVQwalpzTDlwdmJO?=
 =?utf-8?B?M1ZqeHdhc1l4dWQrVVFPbkpTMHNuMnIwSm0xbmtiYTVGUStIUWZEK0FLTjdj?=
 =?utf-8?B?NFo4dG4wdTNmSUt1elN5akFwRFgzbTg3eFlqL3Q4M0RrWkVDMk55UFJSWGVQ?=
 =?utf-8?B?dTIzcDBIY2xyekNoekxZU25QMUg0NFd2d2FYNzFoZjNiekxRVTF5YlJxRi9E?=
 =?utf-8?B?ZUJyYXVjR005RjRpVldoUWp3UVoyMTZENW5qeDc3RnRWMVdOYU93MVpsOTIw?=
 =?utf-8?B?ODJLSUYzb0xadjIva3JPcE9EZllkVmdFbnRGNm9mcXNldnRYWG9jbGFEbXVt?=
 =?utf-8?B?RThKWVdCN0Izc3N4TE9Xd2Q0YVdvMlZMaHk0amZUUjVqQktDZkFCNiswSXBG?=
 =?utf-8?B?V252QnhKVWVqVTBCa1dpV1NjR2g3RlpNVnhUV1E5MEg4eGNZZFhYRkh5QkUx?=
 =?utf-8?B?MW10cUM0Ykx4YnhBSnhrOFlRdFA0MDVvREZvakR0L1FRdU1JaW1VR3dUNUlm?=
 =?utf-8?B?amlVU0hhU3h5RUhxQU9jcnN3QXlzemdBajFnNnR1ekVxMmFxYVplOElZZlVr?=
 =?utf-8?B?WEdvaGlabFNxdksyVjhCQU9YSkV6L3VnT3RiVmI1TkFEY0hxejhScmNJanEx?=
 =?utf-8?B?VnNGa0dwNDMwTjhYSUxvMG8xWlkvYzJaOXJnVjNmL1EydDFORWFlajlhM2ky?=
 =?utf-8?B?TTN1RjBSRTNHNDU5dUZiMVBid3VoUXVjTjU3V1crVVFWTE8vSDg2VGplL0ZZ?=
 =?utf-8?B?Z2xlamNsR2tSQ3NZdEE5TllZQmIrWTFjZ05GcjNWaEliZkRObTRKdXMrMzJl?=
 =?utf-8?B?UmMyWnhzL1JFOVI1SGVtcDVqMDN0L01lUXVvQk4zMFUrbmJ6T1NEbjI1bVVT?=
 =?utf-8?B?WmlXYXR3UDBGMVNnYStBYlpzdWZvQmZvaldhSFJ0b0RFWVFyUHNscDUza1ly?=
 =?utf-8?B?cForWTVoNzF0dUZWc0h4N1JobXh3MEVCSThESkVGd1lYbDh2YWYxeEhIN3FN?=
 =?utf-8?B?eVFYckhqdXRCMG50MGliVTVvbnlQMEFwSEEzZzRoNEJCc1NRMUFQdmtBRk4w?=
 =?utf-8?B?VytDY0tLSnlhTFJtQkpUeHhsNFhWS05rUkZvcmhvSzRXeFNwWWNiVHFqTHNJ?=
 =?utf-8?B?azlmM1BnVHdJT2xyQVZnN2sreFRjRmhWUkxLeVJJcEczYndIRFpDUXk4eExx?=
 =?utf-8?B?WWJPcjhWYktLeWRUemVDbnQxbGlpZHJXSDFUd3U0Q1ZkQnRXMVhtdXc3TDNq?=
 =?utf-8?B?WU9nbEdXYU8wK3BLbW4wRkNFQ0JTVmZZZURnWG1kcTNFaEorMkpLdnVGMGc2?=
 =?utf-8?B?VU1nUFdTNTJtTU1qUEFJdlhxRlFpaFBScmtOTkE0MU9CbzVDcVNmZGRHVU9y?=
 =?utf-8?B?aHZZVkdJOUpwenV6RVNxbTBRN0tsT0RkclZ0SStIYys4NFVVZlVJSnF5MXV6?=
 =?utf-8?B?Q2dvRzJ0aTY5bU1FY2QyOXRDQWFXbnVhZXBKeUtDM2JBMWNEWkNnTGpXUVBW?=
 =?utf-8?B?cWFSVzFsNVNDR1I5UWMxYXcybVBxc0oyNm5ITHJiblJTL1FMNTdXS1V5TGdm?=
 =?utf-8?B?TmFORFBIRzQ2VXZiMXg0aVhYRnF6TGJxczExb0tqYW1uTEo0L2k4U1ZuajR1?=
 =?utf-8?B?TlJMOGdueGV4YVMrOXptOTJyaGo3akViU2ZKckZVZXlKckUwQnNYallOTlB5?=
 =?utf-8?B?czJrdlRCOTRoL0FMdHhBRDNZOW9GSGNrNHhCcUxDeWplaWRoelRRTEpaYlli?=
 =?utf-8?B?M3VxREZ5VXBBWGNZUEFHdTIxdUQraVhjVGJ5dG9uVlNWdkVGOXlzMTFidTJs?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aaa797b-be6e-42df-d9de-08de1141462b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 08:01:58.5184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvrybulrdMnMynXq6IIW6xAvxWHdAc3NCgIif0HsyrQCrT68lYFDDW+5KYTuuPSinFvEoOfJeDZq2arsLhmuUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Change the register bit naming for powerdown values from CX0 to
> XELPDP so that it can be used with LT Phy too.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 14 +++++++-------
>   drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 10 +++++-----
>   2 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a2d2cecf7121..6d9ebc8717ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2850,11 +2850,11 @@ static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
>   
>   	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
>   		     XELPDP_POWER_STATE_READY_MASK,
> -		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> +		     XELPDP_POWER_STATE_READY(XELPDP_P2_STATE_READY));
>   	intel_de_rmw(display, XELPDP_PORT_BUF_CTL3(display, port),
>   		     XELPDP_POWER_STATE_ACTIVE_MASK |
>   		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
> -		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> +		     XELPDP_POWER_STATE_ACTIVE(XELPDP_P0_STATE_ACTIVE) |
>   		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
>   }
>   
> @@ -2927,7 +2927,7 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
>   			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
>   
>   	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> -					    CX0_P2_STATE_RESET);
> +					    XELPDP_P2_STATE_RESET);
>   	intel_cx0_setup_powerdown(encoder);
>   
>   	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset, 0);
> @@ -3032,7 +3032,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
>   	 * TODO: For DP alt mode use only one lane.
>   	 */
>   	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> -					    CX0_P2_STATE_READY);
> +					    XELPDP_P2_STATE_READY);
>   
>   	/*
>   	 * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer field to 0xA000.
> @@ -3273,13 +3273,13 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>   	struct intel_display *display = to_intel_display(encoder);
>   
>   	if (intel_encoder_is_c10phy(encoder))
> -		return CX0_P2PG_STATE_DISABLE;
> +		return XELPDP_P2PG_STATE_DISABLE;
>   
>   	if ((display->platform.battlemage && encoder->port == PORT_A) ||
>   	    (DISPLAY_VER(display) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
> -		return CX0_P2PG_STATE_DISABLE;
> +		return XELPDP_P2PG_STATE_DISABLE;
>   
> -	return CX0_P4PG_STATE_DISABLE;
> +	return XELPDP_P4PG_STATE_DISABLE;
>   }
>   
>   static void intel_cx0pll_disable(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 77eae1d845f7..18b91c23d547 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -149,11 +149,11 @@
>   #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
>   #define   XELPDP_POWER_STATE_ACTIVE_MASK		REG_GENMASK(3, 0)
>   #define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
> -#define   CX0_P0_STATE_ACTIVE				0x0
> -#define   CX0_P2_STATE_READY				0x2
> -#define   CX0_P2PG_STATE_DISABLE			0x9
> -#define   CX0_P4PG_STATE_DISABLE			0xC
> -#define   CX0_P2_STATE_RESET				0x2
> +#define   XELPDP_P0_STATE_ACTIVE			0x0
> +#define   XELPDP_P2_STATE_READY				0x2
> +#define   XELPDP_P2PG_STATE_DISABLE			0x9
> +#define   XELPDP_P4PG_STATE_DISABLE			0xC
> +#define   XELPDP_P2_STATE_RESET				0x2
>   
>   #define _XELPDP_PORT_MSGBUS_TIMER_LN0_A			0x640d8
>   #define _XELPDP_PORT_MSGBUS_TIMER_LN0_B			0x641d8
