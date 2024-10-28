Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943189B2FF5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9059C10E485;
	Mon, 28 Oct 2024 12:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXdipoLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A3310E485
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 12:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730117950; x=1761653950;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=AK77oxGtIoDHtcdZ+BoKeGpX90iiHLVQWxMC8rFl9+0=;
 b=BXdipoLQJaorf94S7UZ72/Sv4vCXenhaMFmirRfbkDy/st9Orisd+lIN
 os81qcpT8Bd7cuxHlx4fuE38LUv9BlUUA7LZzM7Qta8I+CP8nE15q5sB2
 ZuC08AKt2omMd5DqGyG16X4BR6xLb/kOTsL5aManAq7QmG1pCxrIucXia
 pmPRfLpkmpwjIcegscz+QXeqTskKLL6hGN3S7D8niRIa6ZunX8zL0SYR4
 ArVoPr1suEXkfBWjTIoOzdsvXrjH8mL+F2idlyPidV3gQMuGtvg3QGYyO
 yQYFtbI/GCeGvb0mQ07/94bhL9/JF7o6e4Mk78Ot6SbpCTbtm7H/hVH7v A==;
X-CSE-ConnectionGUID: fjdi3MWBR5Go21RAUnN5+Q==
X-CSE-MsgGUID: CdozLL+TQx2LEYWUGjRJsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="40331557"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="40331557"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:19:10 -0700
X-CSE-ConnectionGUID: TJWN31ppQPGGFOTXZuOabA==
X-CSE-MsgGUID: Z049//RxQgy8H4nemBye8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81501636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 05:19:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 05:19:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 05:19:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 05:19:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vFn8L6fdHPUOWImw+WFTwaySBR1eRbX+qhod0Y11fW1xV6vg6FDiweYtY0Z0hlqwbQUQ+MlD/Cje9XApN2Zmw55rylpTJ7s3hB2fn1pGcwlNG/8CmbQUMmU1zV9h26Vq8f+MHm5pyJ2cokbQbt2jmLBeb8Xmtei1cpj/Im5J+E0SJdks9b8NM0XETl3WT+B6qTMqR7YjS0QA0QX7yIOT6pINxDUmBd9lNhXsQ80I5PIhnnjKflDIZJZD19RoQPe0cTVWQWklQlTp0KlgVZdUDZtW4el12CLtSpFvzDTQpzI+QXmkZzd9/dApDZFDvjnwoG7B1kTTvahoGfwCaapS1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dv417JUXG3g1rqEQ1jay+zBepKw8COR7q3JKtJoHgYY=;
 b=IgaRSJLF9PvPAqndqQAc9cz9xRg5vXnC4AE27GPJ1dpiBRjgHIjghwibjZXjEGCp8PsrHRCNM1ClwJzRSgzrXvEf5CbvTXxdRrKrcb4XAaf/K84qWircnf+N1U0IOrGUivz+QuWlEBzH28+zTNhLgOol18O1S0BTsfr2j+Ap06CboXOaaZJHQF67HQcmixNMa2buGZUjb9XYxPqDjPmoeu8UueLr71kvqlzSxYimZPqqMjEO8lAnitjvLKbDoye30F6KCsE0aCsuIT1WtsXUvyJanxx3AKLtB4wL/6may2T4Krbp0R6wWmb70bUo72Eq3HNU/+YRmjBY18AFStIiiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Mon, 28 Oct
 2024 12:19:04 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 12:19:04 +0000
Date: Mon, 28 Oct 2024 12:18:55 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v3] drm/i915: ensure segment offset never exceeds allowed max
Message-ID: <luc7dpd4iag4nh4wvdhcfab34b2tcpryai3hgy22k3xmgvhyy7@xeglttypvlsf>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DU7P250CA0006.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::21) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: e348937b-05aa-4b1a-5dca-08dcf74ab6a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVRjUWllb21yRWNTSENlbEM5UVpnRzVmanYvWjRsWXdHUFgvL2lNczJPYzVB?=
 =?utf-8?B?M0tKbFppS1VKOGNZL0JkODNzbFY4ZEpxdTlNTnB6S21ZOEgyOThVdGVCdkFo?=
 =?utf-8?B?eTBnR2o5STFYNTZnTlBVdFZFM0doT2MxeC9tUGhpd3JjSzF1L0F4T0YxL2x5?=
 =?utf-8?B?bXJadU5GTUN2aFJMODF0TExILzQ3VXo3aW9qSXNSVk5wOE9hYUNBcWJQUG5v?=
 =?utf-8?B?QkJVMTc0TWRVeUxyTzY5WTQyNHNhd3AxcnAxcS9EQ2JhNldZWlJBTUpqbmlN?=
 =?utf-8?B?NWRDYWp0S0hYRHFKN2JXdW9HbDNqVjZCMS96K2xZczA5S3ZudE45MVNTMldN?=
 =?utf-8?B?aDh6Q2tkVHVDK2cvRkh4cUtmODFLRGw1Q2paOHp3akVpbGhMdlByOE5SY2lW?=
 =?utf-8?B?OTA5YjkydUYrcFVSbmtuZ1VNeFVPd1VmUWk4ZTl6bVBGYzVOc05uYkNpMXZk?=
 =?utf-8?B?dFgzZjg2UnlHZC9xNS9iSDJsUGh6WDhLSTkydm9ldWVYbEJiazliTC9WemNT?=
 =?utf-8?B?N3pORzdQcFQ0c1dwU2tlblNGSXA2Zy83UUhnWEthcS9oK1NxR3l2c3ZzN1Zk?=
 =?utf-8?B?K0tsN1VLV2x5UnQzanNnMHlVem5md3kvVGs2emNQZDk5K3lDWWd1UG5ybDZN?=
 =?utf-8?B?N2d0dGpwOERvMjNnZCs0dlBrYU1QeVlNTWZDbkxVNXM1RlJMY2xUZGpkS0k3?=
 =?utf-8?B?akpjQ3N4dGtXTjRqNUIySis1TS9maTAvRkVvbWcvNUNUVXVRdTc4bHhUZ0d0?=
 =?utf-8?B?dURlclpCNXFZc1U2a1dPZ3dxaFc5ODhJWkJ4YndjcC96MHoxV2Zmb2d2N09B?=
 =?utf-8?B?ZHVvZWNzaFQ3dFFWUTF3UTB1RmVZaXBwMjVNTzAyZWRxUDhxZ2h4ZXZWK29y?=
 =?utf-8?B?VnN6U2ZZVVI1azV5dFh5UjVYSWExNE1WSWl1TDJMbFlqUHlLSXlsaU14bVU5?=
 =?utf-8?B?TWRKNmFGMDJ0bFlqU3p5YVJ6UXlrdUU3NlVWMWFMMTN1Z21xRG00L2xmNEVi?=
 =?utf-8?B?dThaNUprdWZIMkdNSVJNeWNOb1pXaDV5Z3ZDUDNEMVFzRWZwTmlER1Qwbkl6?=
 =?utf-8?B?QWdFbW0zMXEzQXRTS1Y1M0JEU1NZc0ZNV1hvU01xZzhXekV2ZnlvejIzS2NN?=
 =?utf-8?B?dHRFWWwwYnoxN0hRN050YnVyMUNSRDdnMzdGTXpDZTdNRkI2cnJGQnVoVDht?=
 =?utf-8?B?K1YxVXZCM0Y1UUlSdU9XaGVLSFkyUlA5Rm04YW42cW0zZzllelR0NHZUbzY0?=
 =?utf-8?B?SFVHMFNKVUY3eFZSWEc5QUNOZllGenFwbzRuYUtRUVNyRGxqZUEyYXRPcm5Z?=
 =?utf-8?B?a0YyWDQ3ZUkxUHRYQ1VxcW1TR2VMcjJHOUxRM0NDdFZwVnhGM0d5SlhnSWg1?=
 =?utf-8?B?R3drTmhaaGFjRC80RXFsU1FTa2twMjFtMW55TXdFeC9uL3NoQWcwS1F1YXQ2?=
 =?utf-8?B?VlEwNWdzM2xscGozbHYzak1iM0RoUE1BeXJTcDBuU0RnM2FyTVhWMGwxckxL?=
 =?utf-8?B?bm5uYzJ6RDZLNjJDZVZkRVlqcUhHUjRnQjlQNEgrOHI2cU5pdTQ4TEROZ3Mw?=
 =?utf-8?B?N0JxdEFnZlJ1a3VKeUZIbnl3VjhuYVhkTnF3cFdMQ0lEUVBqekcxanp3K2tv?=
 =?utf-8?B?dnJNak4wc0x4cmV4dlVTdEttUzRqMDRTeSs3VHZuMFZUaEZYVkQ5OGZiMDJ2?=
 =?utf-8?B?dzlZWE04elZtV0taeUQzZzYva1kvd29Kb1hhdU5HTkFVSlJYMytSU2plT05u?=
 =?utf-8?B?Y0h1eVNQVkVGRlpqK0Y4RFBsOTllTldmRnJxaEk2dlY5a0dNQUxkRFBrSm5Q?=
 =?utf-8?Q?dRtLXhysOOOJTSYSFaFiVmfpRNSpU6gzgZ514=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzgzUm1IMGZFYzR0aWxIcFN3N0RxN1pwNnVxRWFzY3JjNE9QTGExa0d0NjM1?=
 =?utf-8?B?bUdDOUc4MDBiOGllRExYaERXbEF5Q2VXekRCd1RUOVdXWjltSXgySTBhQkpD?=
 =?utf-8?B?ZU1sZ0liMHd2Z3BpaDJzTkUrbWZPQjJEc3ZFUE1SY1pZUERsSTJPN0J6dWNK?=
 =?utf-8?B?bm5xUTNKOXNLM2l3ZTBmVkJneW1Rby9LenluclkzaGZlSGcvYXRhTE5hcFhp?=
 =?utf-8?B?RkpiL0dsZ2xRSDE0N3kwQTlHa25UbDJVM3pkSVh3blBZM3NveWdYVFJNR1hq?=
 =?utf-8?B?RzI0MWVRai9Hbmp5RE9xMVNsK3MxMzcyS1pGSHlmQ2tXTVdJN2ZQMjJsVzAw?=
 =?utf-8?B?dWg0dFJYcjVlSytPOWVXMkFueG51SHVvN2dXTTJDdXlISjhvNy9POHdHY3Mw?=
 =?utf-8?B?bDgzdk1tdysvQjBjeHNrMk5FTThwVUgwQjFZZUNHbzh2TXl0VmtwMjNNcUFj?=
 =?utf-8?B?T3lPZDl6cHlTS3pPazBSVFRlL0t2ZU5raUtlYXVEYldsZjJVZGhlTjIyZnk2?=
 =?utf-8?B?ZldEM3Npd2VDTGF3WHhhZVZTenc2OTU0RU41c0Y1ZnhnOHFxYUpkSThKTysy?=
 =?utf-8?B?c09hQ0VDMnJIcjZWOW9ETzhoVnlvRmM0ckVNMGN1elRVS2xxRUx6SDBjNFNE?=
 =?utf-8?B?YlNYUjN1akFPZ1VBOXptWEdPcUVzVUxpQmpyWG9mMkZoeEpVRk00bi9SZXg0?=
 =?utf-8?B?alNDeDBpVUJjTDlNb1dRUHVnVXNJYUFySEF2RTRqRUdQOWcrbHF4UmloUEZ1?=
 =?utf-8?B?dHFVTUhEZTZjTEpIV0RrLzBPUkVRS3RDb0pWTlRVQjRZeEcxTDhkK2M1YUpW?=
 =?utf-8?B?eUFlOEYzbHd6eXNsS3VvSzkvejI2eWZ4S1ljTlE2Vm9lRDVLSU95UE16cnkv?=
 =?utf-8?B?bWlLSklWTnBnSU1UOUtYNkRzcVZPTUMyZytiSHIwdFl3V3RvditMRmNPRHRD?=
 =?utf-8?B?U1BYUjdLNmtpeE4zRXlVRm9EUjVZbEwvdU8xN2ZNcGFNOFlBRHd1MEZJVEk0?=
 =?utf-8?B?R05FajJoRGsrcm9MVlE0S0s5YWdFZ01rc2Q0ZTJ0RVlNVnFmNVpueUFpNUVu?=
 =?utf-8?B?TGx1NkpQemsvdDNlc0p2TFZLbjVVTU1rMmxyaHl0YVJGU21VbnlySXJGWUh0?=
 =?utf-8?B?MXVKRXNyV1V5UGFXaHdtSW9nd1E1YlBSQXBWdHk4UTZsKzE2STc0dkdJM1FQ?=
 =?utf-8?B?bG5ueXh1MXhyZjExN0pWd3NNdThUVGhRcFErSDlSdEUvREMvUHZNbTlSaC8x?=
 =?utf-8?B?ZW8zVmJuWmhpbTIwdWNGajNKZzdTc08rVFJKQjdyOFpQTGJjSVU5azhnWGFW?=
 =?utf-8?B?dlltSVo3S0VIVnV3c2lmSmJaV0F2T2U0cGdWeVRPajYzVHk0dzVGZTJiNjBL?=
 =?utf-8?B?aXFwdGRtNTVXeVFnQ0ZvTmlQUUFtVFpkU3FxbHZkVWlOdGdndy9NT1hDMlor?=
 =?utf-8?B?M1NMZ0doZXZDblR2Qjk3cVd4WVhodVA0MmxVdDRqZk9mNjVIY1c3VEpjbFJO?=
 =?utf-8?B?Nzd3L0ZDd3VjYkp5dVU2T0lBSVMrQnBacEZpYTFrdDVRdm9zcGJUdTdmdzMv?=
 =?utf-8?B?M1JDa3RrZlpPa1Fpb1dOaEVHS3AyczZ5QWZnTlFsVGJhTmdKcjNRaVV3blNu?=
 =?utf-8?B?dmFJR0NqNTV4eStZYmh1cmVpamhYMlJmaUF1SFlFOStmUlRnTjc2ZTY4MEsr?=
 =?utf-8?B?SWpKNUV3U0U2WVlXNzdmRHZRSlNIaE9xZ2N0ZWc1emxmTmxpcTNxSWZlMzNt?=
 =?utf-8?B?cTdMb2NubXl3cVpiQXBRSzh2YkRvSGszRVdKd08rRmV4aElCSUpyZ0lTbGRP?=
 =?utf-8?B?a091MjRPMG1sbm9sWEF0bGxKR0FnaXNLaSt6am83WTc1UFJZWFN6eFZla1Q0?=
 =?utf-8?B?TUlLUUljRlJJVm9Oa3BBd2NNV1R0elJWYm13Z0RuSjZYVXFXUXN4MG9zUzl2?=
 =?utf-8?B?NWpWSEJqS1U4NUxIdlJlM0o0c0VReWIyY0tSekE2cHRGLzc5Ti94TU03SVo0?=
 =?utf-8?B?S0ZVV3ppeWh2TGFWSmw0cUQ2V1JOdmlaWVRLc2V4R1A0WjZ6eVFqUTEwbHMv?=
 =?utf-8?B?dStYSmFCN3prUHhKN3dRYlZwQy9YREp5U3MralQ0UU1XaDFVM1JNSXhOQ05Z?=
 =?utf-8?B?TldDd0dTbHJNTFVRSnBscHBEVlNjMnJ5ZXhlT3JyLzV1czY4UlN3TXF0NGEv?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e348937b-05aa-4b1a-5dca-08dcf74ab6a7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 12:19:04.6114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A92VmXZS7v3KQfI7SjVvKwwGulH/O1BOwbmVqICDqg4wiL2wd7ZFycvCWRPLs7j3lv7WITOoFl1cwVXJ2DPfdKhMtIuF4s01p5VuOBQtQcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
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

Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
partial memory mapping") introduced a new offset that is compared to
sg_dma_len(r.sgt.sgp) in remap_io_sg() function. However, later in
remap_sg() the offset (which at that point resides in r->sgt.curr)
is compared to r->sgt.max. Scatter-gather list's max relies on one
of two values (see i915_scatterlist.h):
 a) sg_dma_len(s.sgp) when `dma` is true,
 b) s.sgp->length otherwise.
This suggests that in cases where `dma` is false, we should use
s.sgp->length to determine the max value instead of sg_dma_len(),
which is used regardless in remap_io_sg() (use_dma(iobase) might return
false there).

This patch uses r.sgt.max to check if offset is within allowed bounds,
because that max value is already set according to the `dma` setting.

v3:
 - instead of checking if r.sgt.curr would exceed allowed max, changed
the value in the while loop to be aligned with `dma` value.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 8a2779191f18..3723291f2fef 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -143,8 +143,8 @@ int remap_io_sg(struct vm_area_struct *vma,
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
-		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
+	while (offset >= r.sgt.max >> PAGE_SHIFT) {
+		offset -= r.sgt.max >> PAGE_SHIFT;
 		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
 		if (GEM_WARN_ON(!r.sgt.sgp))
 			return -EINVAL;
-- 
2.43.0

