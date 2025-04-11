Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB15A8648E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 19:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FE110EC41;
	Fri, 11 Apr 2025 17:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFBb1guX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB5B10EC41
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 17:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744392076; x=1775928076;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dVGb6UQcdCPrjedyExPH5W8l0Rmq6JvMgSiZ4Pyz6Qk=;
 b=CFBb1guXqBAXZGQilAEJ1T3yHqMureQz5A+Bn0q1CsYzbZhjSKS1o3jw
 IPr/0AIIQjmxDXnUO4VD3fw3ULUdyswNJpGEMf+KvrjqzPaM1AQwzwcgi
 pWCTJY8OH4evrEp1ViE2qUyCBCuRPI/SUa0wdwrQkcac2ZtcAc7+tFM2O
 XvPQFKdAdcrpjlmlHtYWfKXo7nKDwZhXBFQHbRO0hzK2UA9bCRzpnYWcD
 RRIJbiVtTp2e3eMByipvq9Q8b9BNgiZKxLPaf21TD1Hag3Go9ROVjGSGC
 DBYCSC/6YEGpveaFymnwrIrgAqiKhGd1Yu9dRsfGEH8BkLnkAR/q/lNj+ w==;
X-CSE-ConnectionGUID: VeBaTtWjTwa4TpR8xJmttA==
X-CSE-MsgGUID: o6Z/hzEjQyy4gH/+x48a1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="46080345"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="46080345"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 10:21:15 -0700
X-CSE-ConnectionGUID: ixu+iYEQQNSR2dZlQA5rzg==
X-CSE-MsgGUID: qTPIBf82SuWaJyxnMewugw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134408840"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 10:21:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 10:21:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 10:21:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 10:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eHSKhvzS1N3jYqQzqPpIvSoQ5ZWKLQyxQ91H7TKvjAebIOuZEt4LQLjhNk/5+lnjDrw/zZBlG12SoCbnAcADXgM9sKGNd0tqKRJ/AHLDRRtEKFCJ4cEPXVv4qUJClNNz99f2t9fFn3q+Fg34WhtoSOvlA8sT81DTBiw2iz55PO0QXHS0WLnZRvYdmMxU4sMs00V/vK1x55NTVlUJn/cniwtRNvqSGg964y+O8wNqgh9E5Fkcxg7xZWU3abAI6DJsWQXfXoDqZTJlxn8E8i52XfXRYlEpWlh5FbwDGqpiequXd+J3+rQt7Od/owMZyBQAwN4lXqsqlzAksee4tXRqtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67/jufTzCNOrh/AwCSM8bcUJcJinP/HA2AdXkSDZl7I=;
 b=rWK45YgFbQJOT2tmkas5nhO/6CEo1QzN2QkLIavM2iQjnaLkYUR/sJYqVHaRutLqF2yhCauALpGnpMWA4spwjLJexOTLTRZuk+VzcqqVOCu44OuXmSthUDdY1l80N8O4m7B4vqJ1pSfxzz08LPsoahTYcmfX8wF5cKWtSdrp72f3AIPFXjqvQfc88lnuyFEhgE1v2+Rk5h3+qmPI4z/JxdE/+K0XJJroFGhXlZYNvCzewKDSOm6sB1/LvWygYiikhIncF7Se7oQh+8z6NTqaaLRhfZaltx5pNcw1U1ItlwXVXZiAex9qICWC+LiDSI2xVwheYRI5xUKsSeB2/DLW+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CH3PR11MB8547.namprd11.prod.outlook.com (2603:10b6:610:1bd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.24; Fri, 11 Apr
 2025 17:21:12 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%4]) with mapi id 15.20.8632.021; Fri, 11 Apr 2025
 17:21:12 +0000
Date: Fri, 11 Apr 2025 19:21:02 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/selftest/mmap_migrate: wait for clear memory
Message-ID: <leazlf7ezspxkfvmvgggeyccizr7u4o5alifwdu6j6ftwigzi2@7hygc3ten3ah>
References: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
X-ClientProxiedBy: WA0P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::24) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CH3PR11MB8547:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b803822-9b9b-4fa8-0b8e-08dd791d419b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDhwTHN3Y1hqUmpYZHFmU2pqb2U3QTBuT2grOTdGNzRFY0dLY0RoTU1XSEJQ?=
 =?utf-8?B?MFR6ZXlxZ2hkRFdFU0JkWVJLM0FMeFcwK1VVb2ZPRjhBT1pZZDl5YTJNMEVy?=
 =?utf-8?B?ZEloMlQweUNKOHhWRmpUZDVZdU1qV0gyeVhLSndlakRnSXRtdUVMMzltaFND?=
 =?utf-8?B?VUFjMHV3b1hycjdoeHhpYW15Q1lMelFHNzVKa0ZEQUdTR1UwdHpOTm16MnFJ?=
 =?utf-8?B?OVg0RDMvL0tpZStRQ2RMU0FCOHJqYW1iNmNtWUFEdytBVWRSMWlrc2NsVGI5?=
 =?utf-8?B?Q2JERGxqN3QzUzUveG9aZWFtQU5IeUt4OGJWcUQybnNic3lJTk9BTmJkd3VM?=
 =?utf-8?B?UzBLUUgzMHBWSWEwTmV4UHAyTWtYb3pMbjk4YTVoZ0N0TEFicjRiWU9YRVl5?=
 =?utf-8?B?czdMYUFTcFZQL2JkM2gvbWVlY2grcVZwdTU4djQ5dnVDcXNUL2FvdTBaMGNK?=
 =?utf-8?B?TEg1Z2hnVVlKTDlBdWxLWlFCQmMweFQrVnpjNTJXbHp4bU9Uamt0eDNCbHYx?=
 =?utf-8?B?R3NsYVJaR051WjJuRkQzL2p5MElFTngyaFBNTlZDTnRzOCtlY3NDbXFSU0wx?=
 =?utf-8?B?VDdabkp6QS8weis5MGxEVVhXbzRVSXF3aXR1by9JT2ZBWWE3bTlDc292eUha?=
 =?utf-8?B?cThBWkdwVkZ2WlJzbkNMZVhYbE1tT3I1ZFlmaVhIaXc2dW5NVEZsMDd5SGNu?=
 =?utf-8?B?OE85UXdNSzdWQlgzb3ZkWDFDQjBlSURQZHVaczFsYzcrVEJtVzQ3dWg1YWg1?=
 =?utf-8?B?WkQ3Slo0czhiMVViajAzeUt2ZEdVQk5BdGhCUE14Zmp0dFkyTmVKV2JiTmp0?=
 =?utf-8?B?WGJJWWVKU2xuUDR0aFNHVTBaRU5SaXpySGg4ekdDUlBnREpEb1FIZGJFWlJm?=
 =?utf-8?B?OUQ4TGdvV3hiRWRMQmNWV2EySG8rT3ViZlkrVGl5aDBNaVRCZkNOR1Bna2Iw?=
 =?utf-8?B?a1h1dGM4L2MvOWw0QXVZQXJLNTZOWVplcmo0YjdmdW1tdW1IWUxKL2ZvS2Rk?=
 =?utf-8?B?WEhWSVhOZ2dpMHZIaGVPOElYTFdDRHBYbE55OTJKU05Iaitja0U4K0d2VFJE?=
 =?utf-8?B?cjVYYWU2Z2UrSkV4VDFYL3ZmNjNaRzFyMHhiaGlrTjhnM0tESW1qeGFvQUYy?=
 =?utf-8?B?N01rSk1UZ3VSTkVGL2EvamtKSG14UVgzbnlVK0VnVjVNUktaYjNaa2tXRW90?=
 =?utf-8?B?U0ZmR2U2NkkyMEV2bTVFa0JPTUNNMmlsVWNaN25Hb0RscEtBRnZYUWJZWXM3?=
 =?utf-8?B?Z0JHYUJzS3F4K00wemRtanE0QU1Ldm9LSHlqN3NuaTl3QVpsdnBBaVVXUFJW?=
 =?utf-8?B?emJsZVhCVkpqazd0c1R5NXFaWWFaNDVKbTJnS2ZCVWlvYlFHaVN4bFRwSGN5?=
 =?utf-8?B?NU1oRUhKYVBvY21KcmJZTDFmTWJYY1c5cjd2Q2dMdWFJMTAraTZCQ1AwSWx1?=
 =?utf-8?B?eWRKSEpYL2FST3RnWnVYMkN0aHVIOE4rWXJ4TE55VWJaUEw0Tk5GdHRYZTlm?=
 =?utf-8?B?Q0NCQkRTVVVyQWdkMmVpNHBKSFgyenlFWGZ0UWVuME1yZTF6eUJPa1VoQWdV?=
 =?utf-8?B?eE83bkJaeWhyelZMVVpna1NZM2o0TWRiN3ZQTFFZNGluNk50U3VKa044ZWNs?=
 =?utf-8?B?RmhxTVA1dEh4ZzV6Z2laOTNFVjFtOGJ1RHNMK09YVm1wRXpTU0UwaTZTRmpB?=
 =?utf-8?B?T01ZWE56S3VkOFQycXBsNDdibXVIRWFwa2V1UVE4NnFVVmduU0ZiR2ZoVVhx?=
 =?utf-8?B?R3B0V2JER0E1Tm4xWWJMd0ZVd1Vhc3FhRWxwa1A4RFdxS01zTGYyUGpDRkR5?=
 =?utf-8?Q?tpqdUb98KgACfTPYPUU3w8azybPnQNyZmd5YA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3U4MWcwQVJZbHRia0M2cXVLMTNNYmMxL3dGYnMyMXRLVGVLcUFRbVlzVXFp?=
 =?utf-8?B?TGsrTzhxYkd3Y2VMdWxQNWloQmUvR2lNanN6cUxPVjNxTDUwY3ZESWRGSXBn?=
 =?utf-8?B?cVJuYS9vbmoyamdVSEpnbnBsN3RsNmpkUG5sekVLcURJc2x1QXlPUExFY0hZ?=
 =?utf-8?B?QUdwdWY1d1RuQnVxTHl3MjIwcmZ2bFZwSTljdTh4SWI5dEc2KytBMFNrWmtN?=
 =?utf-8?B?NVFPZ1Y4SHJkbjduRmFvcVV2T3JxTjBvZWxaUUpDaXRORG9DRklmNnRVaWJF?=
 =?utf-8?B?NXFWaFQzc25mYk1nNFFkZ0RMK09HeUFmZU9KTEZlSmk1ZXVmbi8wU2J3YWVo?=
 =?utf-8?B?K05nekNiby9CVXh3UGZVWitFY29zWUlFbDF0VHUzZVh4MWNBMTc5dHI3alFI?=
 =?utf-8?B?dmgxTmRXM0dwOGJBdlFFbU5rYnRHU0FMaTFDbVhOZXU2eEQ5cTFkYlJ5OGti?=
 =?utf-8?B?dklWUU44Q0txQ1c3dGVoenR4NkU1YzVqbDBMSGNXVzI0VGhSR1hMbFJXL3ZJ?=
 =?utf-8?B?akRXaU1PZU1lTUlkTDBLUTYwc0ZnQzU5eW84V1o5NnVZdkViR3ZDemVwL2E1?=
 =?utf-8?B?ZjlMLzRoWnlMdHI4aFBKQ21lQUJGVW5kMmpaamZnS2pyYmU0cGErT28rSDgr?=
 =?utf-8?B?b0RBdHViWVlOa3gxdTlHZjRpY0orNTcyeDVRQTMwNXZmbHdoU1d5cXVKUVM3?=
 =?utf-8?B?SFZEOWFPSWhjY0xkNzYyTnVsRDV3WTMvK1kwdFJPTFpIdzdmNmlwWDNQUk1i?=
 =?utf-8?B?SHNwMzArQzlBSER6N1dlbVUxQ3BLc1NydWF2cVBkSHBZMHJ2QjlCdXc4WHZP?=
 =?utf-8?B?R29Rb3oxSXZ2UWduMS93TU80RTZlL3FBRDk2dUE5aGE0TmIvNzB1V0RRSG1V?=
 =?utf-8?B?eUQ3bXdZRlFzQ1IwVE1GSDRvdFdKN296eWFPd1dBWVc5Rm8zeFBVZzZEVGht?=
 =?utf-8?B?aXVVMklGamt0MVlGWldZNDkrNDFvbEpSaWViMHhSTFJXc2VCdU1idEJmY3Z0?=
 =?utf-8?B?emRsN2xZdnpJQ1preUNhdldLWXpCb29La1hhVUlyMzIrR283QmFZQ3MzUE02?=
 =?utf-8?B?Wm05MlVSbXc3RUM3TFVCVkRaQ09IckRNV3Bpd3BnS21nRDNVcWRobVc2RHlE?=
 =?utf-8?B?YjBNMXpKNmNQSTZhL3FFOGpiTXZUc1MzUng0VUMzb0JKZC8vNE4rcFhhcWJF?=
 =?utf-8?B?RXlzcEtXU3hUb0RHcDRoSlQ1bVEydEVnY2QxVU1GeVd6b1dsN3NSclU5bEM0?=
 =?utf-8?B?YlNxQUxRdGdJelhEK09oZG13eUl1YjUrckhUSEY0SFVDZEJFQiswM056Q0tp?=
 =?utf-8?B?QmhpUWpDOUplazBqRXB1c3NCMk5aSUFzWUEyNHNuMGZuakdxbVlVZVp0YlpP?=
 =?utf-8?B?a0NOUktzdGYxZ3R2dWhrNmgwMnVNYW9GUmZDMkZxaHhYS3E3YllpTzRGcDlz?=
 =?utf-8?B?S01XVnV5S1JrWXpuTHBpYmJlV2NVRmRkZG5pSGorT0NBdjl6aWlhalR0ZHc5?=
 =?utf-8?B?SEpqbElUcmk2bHF3TGJjazdUT29VcThHODJHZlZiY3lzMnExNUdLeFJaWlZJ?=
 =?utf-8?B?NFBQRExjMUhHelRXTWQ3RXZoNDRnakxvSHFvem16NmdRV1d4WUcxbjBEUzNK?=
 =?utf-8?B?NmFYTTNDYW9mTHVEMW9CN0VpOGw0djVKZGRZZlh1Wk1vanhEQTlheUYvS1di?=
 =?utf-8?B?eWlKMzQrZ212N0NlaWlpSXFLMTJkVk9oUGtTU2VIa1hERHpJQkFScWg5ZmZn?=
 =?utf-8?B?STlYY1dwellwSkxSRkN4TFRLQXFaS0taVUlXbURvYU1QcWlKWm5vS1poWFVh?=
 =?utf-8?B?enpiSXdwamp3emNHc3lsTW5aV0V0Skw2MzlpWmg2MXo1ZFdERDlNT3Z0c3pN?=
 =?utf-8?B?eEpGUzBLYzJKWUpqaGt5K2x6aEZCWDBDMHBKdW9YeE1EU25Ea2dKVTQzS005?=
 =?utf-8?B?Sjd2SXU2U0ZJM3hURVFBWFNsdFdBVHlSc05ONjRQVG9wYVIzVDEzMWFmUG43?=
 =?utf-8?B?bjJvTDUwSTgwVi9uTTRWNUsvRUVxazUvL1JxbUhPbEZjZVN5bXFGRWlzdm1J?=
 =?utf-8?B?OGFhck83SWJGMlBJOUYyUlZoWlBDdWsvL3FqQjU5RWcreHNuS1czNVFnWTRY?=
 =?utf-8?B?VXFtWU1zRzVBd1JzaWNRUzg2VkRVblltaUdxSDN3ZkNIUERSMTRnLzk4cUxz?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b803822-9b9b-4fa8-0b8e-08dd791d419b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 17:21:12.1286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zRhzhmBwrhGyqcK53QtmRimBLIqkpi6ZzgBWJhZGB3GIEft7YskMqMdqXQhM58D6bojtWfXrLp4yS7bghz/Lsnx+bGWRzT+crNT8XWcHu8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8547
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

Hi Mikolaj,

thanks for the series.

On 2025-04-11 at 12:48:16 GMT, Mikolaj Wasiak wrote:
> Mmap_migrate test runs multiple times filling GPU memory
> with objects. Those objects are deleted after each run
> but cleaning pages takes some time after the objects are
> put. This patch lets tests to wait for cleanup after previous test
> if they need to allocate whole memory with new objects.
> 

I have a feeling that making sure that the GPU state is clean should be
a responsibility of the running test. Meaning, the wait should be placed
at the end of a finishing test, not at the start of the next test. That
way any and all other code that wants to use the GPU doesn't have to
worry about its state.

Though I suppose that this is an edge case anyway, as it's rare to fill
that much memory in back to back executions.

> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 35 +++++++++++++++++--
>  1 file changed, 32 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9c3f17e51885..e486a52b855a 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1047,8 +1047,36 @@ static void igt_make_evictable(struct list_head *objects)
>  	cond_resched();
>  }
>  
> +static int igt_try_pinning_pages(struct drm_i915_gem_object *obj,
> +				 bool force_pin)
> +{
> +	int retries;
> +	int max_retries;
> +	int err;

Rearrange the declarations like this:

	int max_retries;
	int retries;
	int err;

Kernel code style quirk. Declarations are sorted by length descending. I
don't think it's specified in the coding style document per se, but this
is generally followed at least around i915.

> +
> +	retries = 0;
> +	max_retries = 10;

Can max_retries be a #define symbol instead or is it overkill here?

> +	do {
> +		err = i915_gem_object_pin_pages_unlocked(obj);
> +		if (!err)
> +			break;
> +
> +		if (err != -ENXIO && err != -ENOMEM)
> +			break;
> +
> +		if (!force_pin)
> +			break;
> +
> +		retries++;
> +		msleep(20);
> +	} while (retries < max_retries);
> +
> +	return err;
> +}

Is a do while loop here really necessary? I think a simple for loop
would be more idiomatic, as all this code is really doing is repeat the
pin a set amount of times.

Since the call to i915_gem_object_pin_pages() is the first statement in
the body, it will execute at least once anyway.

> +
>  static int igt_fill_mappable(struct intel_memory_region *mr,
> -			     struct list_head *objects)
> +			     struct list_head *objects,
> +			     bool force_fill)
>  {
>  	u64 size, total;
>  	int err;
> @@ -1066,7 +1094,7 @@ static int igt_fill_mappable(struct intel_memory_region *mr,
>  
>  		list_add(&obj->st_link, objects);
>  
> -		err = i915_gem_object_pin_pages_unlocked(obj);
> +		err = igt_try_pinning_pages(obj, force_fill);
>  		if (err) {
>  			if (err != -ENXIO && err != -ENOMEM)
>  				goto err_close;
> @@ -1208,7 +1236,8 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	}
>  
>  	if (flags & IGT_MMAP_MIGRATE_FILL) {
> -		err = igt_fill_mappable(placements[0], &objects);
> +		err = igt_fill_mappable(placements[0], &objects,
> +				flags & IGT_MMAP_MIGRATE_UNFAULTABLE);

Align 'flags & ...' so it's exactly below 'placements[0]':

	err = igt_fill_mappable(placements[0], &objects,
				flags & IGT_MMAP_MIGRATE_UNFAULTABLE);

>  		if (err)
>  			goto out_put;
>  	}

Thanks
Krzysztof

> -- 
> 2.43.0
> 
