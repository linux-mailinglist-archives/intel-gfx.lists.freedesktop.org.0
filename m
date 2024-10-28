Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2A39B35A9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 17:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3C810E519;
	Mon, 28 Oct 2024 16:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KzfQeOh7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5535010E510
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 16:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730131406; x=1761667406;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=PxJVOSetLGeMFuBaXF22MiYIRUXePUL07NqPK3wcCgw=;
 b=KzfQeOh7xL4CdVzNMzfimBvbeT+OWk9nr3SXVo3oCXpsGQ7NAq0H35qp
 ZPGqZxfeIMvd0h80o/GfcA6vcPwwCg+0zmA+BE88VsTNPzduILHyLpzBg
 WA4tPt+oXQ+zHSxZ8PQPKuReVQXv1b8dOQUgsB+3oXYdzv+7YQ+cIDkCd
 gDBdHqH3W4+ul7PPIPyh6/EuJ3RJCPytV0t5mhCbOzigLpOopVc4RIC/Z
 XfShJGDekzKuI9DLhjEJlkHSfENXeq52k8hs4EIO7GSvK9M0EMm+M642A
 xyQy17+6wglgCpXM/jEXjJT94dUbxxF3Ae41hmhpV9O5i44wD+85Ay2bH Q==;
X-CSE-ConnectionGUID: qCw7GQLWQhCIewsQEk1IzQ==
X-CSE-MsgGUID: 6fLUlGdZTHeVbkLlrI8C/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47195373"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47195373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 09:01:07 -0700
X-CSE-ConnectionGUID: 4RUExR0wSqmVEAOjo8RO+g==
X-CSE-MsgGUID: B222NQwYSJONsWxuz1N/Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82081050"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 09:01:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 09:01:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 09:01:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 09:01:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IetCkAw/jMTezg6Xek8as5cBkAA8PsrP2I+VY4dYcWHmbh7EZDNqy8mJtTLx9Q+3Z/Z6FOvRJa5H9iPRSN0WJnIOEVpTZ587Zn5Rf6VUeIqpnLJ29fGyOlIrW+VRZp0UziWyPOnLHKJJ9l18bm1aHMZIDIXTYreCkRwpRFUqH4ZlPs+ASLptWL8GqvguUS0xY7FVStkKEbzmCKl/YayYDt4cTlgPXD0fr3jtJ3zHL7rFm7gfC5VLf4mAm94v6yyQbWJv2PBmo2Kp2oOErYXZ/SH9I0CtTh0czWAvquWw0CI4ovD77gMmSB3ij2BNE1J58ZaSUUeX0UPtlkPaNvxzIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71kUaU3lLFrJ1aSQWUJVBWjDni/kn6rtJbxXZ51MnzA=;
 b=vycYeuptWUQXe4cSPjNuvpRKjrY3mjkMPw1P6dYoyk9aOg3NPgclzEd0pmwC+wP/VNwCj3Ls4HQJupCR9tFHPKCBhKtf5j8P7bL0LocSEQC4O0dFpxyS88EnxmqW7LAVfIZ4Phk8y6sIzn59dle+zbMWPHaSKfSn5svdJoSJ5ZdGRUqwv7mAgsrc23W5oc88fufj/cfbhVWBbvENTPIZcEbKODuFQhoyDaUwmSTkEslaJ1d6xTdpG42JKSy7cxwJAEVbF9UWrv/KWc5g6oaorFoysS7As6/Npa2NFcGvjwN5dtuJvt7XGRgx0XlOi14EhWgKYfxEKfOwS7wTO+rE0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Mon, 28 Oct
 2024 16:00:57 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 16:00:57 +0000
Date: Mon, 28 Oct 2024 16:00:48 +0000
From: "Karas, Krzysztof" <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v4] drm/i915: ensure segment offset never exceeds allowed max
Message-ID: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0175.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: caa4481b-550e-465e-602d-08dcf769b5f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3dQNDEyMTFGcVNDOVFycVMrQjZMK1QwYmU2aXdBbDJjTjlQbkppL21WZFdx?=
 =?utf-8?B?ajJpcjhqR0l1WXVRVGxidTFhemRxMXprc0ZydEJCS1hOL3RQenBPVU1GRi9h?=
 =?utf-8?B?TExPMEwvaE9vU1lVQ203cUpWeTZDb3RRTmY1K0lOdUl1YTdrczZDcmRreEVY?=
 =?utf-8?B?M3p1T0x4YVdpQ2IyWmsybVlWR3VvTkJxNlNXSWFVSThCT3ZNSHdBVHRwTkxy?=
 =?utf-8?B?YnZpN1JLNkt5RC9pc0l0TEJpZjBoMmtyNExETUo1eXNNMnJ2UVovTFRaNE91?=
 =?utf-8?B?eXROcURud1AzMFNlMFRML3JvVHRyQUtzM2RiMlRPZnliN1haenhPNzZ2c0ZX?=
 =?utf-8?B?M0dBR29SbTRHK290emhTOU5CK1NJNVVreWVGVDAzeUhFazN2NG9TQnpxdFlI?=
 =?utf-8?B?L0VxNThqRDRveDRSWTk2YnRLWVEwelBDc3FTOC8rTnh6am13czdMWGFrM0w5?=
 =?utf-8?B?dVRSMVcvaFBqOFJRZ295eklndDcrTzVYZjM1TGpub2NBWExFMEV2ZEhSekdu?=
 =?utf-8?B?UnNPMWVlMElmZzhST1U0UGxpRmVRWXRxYm54RCs5eHpXMjNKZlhQTVhMZlRM?=
 =?utf-8?B?U2w5ZTJLUkVPaFBzdVN3L2J1NEtkUUlhc204Zk5DNCtEL0dldndyek9na1ZL?=
 =?utf-8?B?aWJ4VmxKay95U3lGbHpzMVNJblY5QmorbjZUd3ZmNG1HazRwKysralpscUND?=
 =?utf-8?B?U05xZWNkR2E4YU1BdXBUcWNqV1ZuWGE5N25Oak14eHNxRmlidmVjdEpyUVA5?=
 =?utf-8?B?NlF5MG5HNDMwMmYrb0EvMXZlWGxaR3BiZU1GYUIzaW4xOTZBaU8vZmdveG53?=
 =?utf-8?B?aGowNUxtcy9pK2RlVDJXekFuVFFDY1YrZnNONjNOR3pGME1rbzhyNmk5eDRD?=
 =?utf-8?B?c1VEZzZ6ZDBOTWUySDRFeDN3dDY5dCs2eENnYWxlZlVKRHQ4QTJLMjJqVnNV?=
 =?utf-8?B?ZFMyYnBTbDU3dVp0REprdE9POG5IeWhNK0lnTnlGbmNFYlBzWmIyalFYNW1q?=
 =?utf-8?B?Z1VhQkMrQVptT2NsZEgzQ0lkSnlzVnBWTWc4SmNxWXJGY3Q3RFZLMUhubFdt?=
 =?utf-8?B?SEk3VFVqVkFYL1RyQ2FJSitJNzFIZ3I5VDlmeWJTS3hZeWRxTk0zNUxLSGdq?=
 =?utf-8?B?NWlXRlRydXNLMlF5UUV1UEU0dnpGRDkzSTR3REE3NjBmeFNiS3NwaEJ5ei8w?=
 =?utf-8?B?L29EN1Q4enc0M0xjWkFRbCtjZGZrUU5CNGtaNGhoRmhQLy9TY2Rvd3JnRHhM?=
 =?utf-8?B?eDB4V1djRWNkSGF4aHNXdmVQLzZTSFVLSVNXMUIxaE5TaGZQY3lQOElEbUg3?=
 =?utf-8?B?enRpNVY2enR5YzV1TCttWUpmUk9JdmZmbUZsZlllNElBWVNwVU9UOXlrZ3d6?=
 =?utf-8?B?UitzTDdOWis1QUxXbUNjekp0SEZkWWZ5dVNaZncxdzJNcW9RelpDVWcxZ2U4?=
 =?utf-8?B?bXVIaWx5YVo4ZWloYkxyZ2Q5ckJFRTB2WVVrVFo0SGp5cW41S3ZBamdwekZy?=
 =?utf-8?B?akczTjFQc1EwcWYwbXB2RGhYRk9LM2lXK2dHZ1Jpc08yQVpIcmpjMUxiOWNK?=
 =?utf-8?B?TFlPZi92YkloOVdTbGEwbUMzR2J4OGVyMlJkODk4UlloNnVnMU5aclBDaHpV?=
 =?utf-8?B?UW5wMGxmdmZIRUFCQ003bE8vS0FNbWFXUnVZZk1LeDJqbjNkZmZhRzBjL2sz?=
 =?utf-8?B?ZkMxZ0Vudi9iYy9jWm8xbEZCUFEwNjk4QVo0dTlWZDBaTU5pZkwyYVpvZ1B4?=
 =?utf-8?Q?ENVbz9QV1EGIBPBuRY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjZnN0RKZW0vRzJRcms4am84empKZ21CaVpuOGI5Yk5vM2JVVjNqRTZVMDNX?=
 =?utf-8?B?VjFWMzNFdDI1QnNmb042WURPRXN5VEhqbEhFNU43Qm9EeFNRS0MwUlpSTXdp?=
 =?utf-8?B?TVBBYTY2dDh6OEJrVXdocXhBZ0ZxMkpWRnlMajFFVC94STZQc0lHOGJTSkRU?=
 =?utf-8?B?MnpiZTVmRDdJQzRKcFhZekM3dTNrZC9Ga203QmZLTWUvdjZmTE5oSlNqK2ZB?=
 =?utf-8?B?R215QmFDV25IenN3ZGdkVHN3RTFILytkcmo5TUtrYzQydXc4SzZ3VEsrSVBy?=
 =?utf-8?B?V3RxWEROVkRiSTZHRCtFQjBkOTlrWFZJaXAzTzhkZ2d5VS9LRW5GeWd4NVI4?=
 =?utf-8?B?OE9wRTRHLzNvZmZ0UVQyZTllSkM4VElxYzh3aS9uRHBRWjdpVVNxTEk5K1JC?=
 =?utf-8?B?U2FUT1BYOUdFK0tuTkNYRTBqUHZuQ3hpT2RnK3NDQXVOc3lPcGhtQWVTL1NS?=
 =?utf-8?B?OEF2OEQ1bnk3YnYyWk1Jdm91MHA5RVpsTGZzZmNTenNaNWxUUDVxVThNU3JI?=
 =?utf-8?B?a1pRZVdlT1FPdHB2OVZNblBnRy9oeVlUT3pSTXFacUF4anZlbnovNldRbm1z?=
 =?utf-8?B?ZUd3cTdoTTZXK2FuTG52Szd6T3RISWlBSXVUUHJUL1RBSURtYk1aS0lBcHY0?=
 =?utf-8?B?clF2SE1zYTg3NDVCWUVtc2xZeVBQS3RWSWR4MXN0Y1Y5NFA5Mjc3OWVsRmVU?=
 =?utf-8?B?L3U4R2tqTnVJUWd6MXd4RXhxVCt3S2NpcDJmSmpCQmd6d1lNWGtjSUh6ZE8y?=
 =?utf-8?B?QzJkV0htb3BpVWpOblQyUUZ1OFEyZmpWeEZSZ1kxdEhsOHhuckpsTWZFMTg0?=
 =?utf-8?B?TlczS01HdmFUcW0wTXIzVkMyNkdoSHFBcW9aQXBYMERGVHgxQy91VWNQS2Vr?=
 =?utf-8?B?dHlxazFVazRZdUg4Rlg3L2Qrb3hHbkhhbkZYbTk2SjhqM1dIWCtEc0RBNmd0?=
 =?utf-8?B?RG85eE52WnpjMHR1ZlVBS0VmYWFpYy83VXdxcjBUdGpsWkpLT00rY0JjTUQy?=
 =?utf-8?B?aWxDQXEzMC9PcUFCYWpMaTVORXhreUgxU3RqVEduYVRJV3dpZnNNQTBRcklh?=
 =?utf-8?B?MUVFbGtXTGgzTUxTOVVQbVpRamtOZHF6M2tzT1Boc2d6S01qdHMyTW1NdTd3?=
 =?utf-8?B?YnMzdnNDQXdJNHd0NUZFY0s1aHl5bUVOeFhrNVhXcSszbzZaU1ltbysyTnlT?=
 =?utf-8?B?YWp4Smh0T0k0Q3ZTb0k0STFQM0VSa2EvRTZBK1ZDdDF1c1ZReFZ6c1lnY0JQ?=
 =?utf-8?B?Wmw2eXFKUG9nelVaZXVvNlROK0VCRGVPY1Y1S1lGb2VZWnpPbFpHZjh5TDAz?=
 =?utf-8?B?U0ExTmdLalA3MnR6UzlnOXlTRXVQVjlpZ1BsNjVvVmZ1WjFjdkNyNkdjdmNM?=
 =?utf-8?B?TlJYRVBPMGNvV21uRHJoZ09kdWVXd1ZEQ0pNSno0am51ZVhndG9hOHA5dVly?=
 =?utf-8?B?TjlsQWdUMGRVUWI0cjQxWXFpRGMwcXNHMUlMVzhBUWhDQUlrT3ZZMGFybm5i?=
 =?utf-8?B?STc4Z3FFcVhMeDBlaGlNYjBxbTQ0S3RJT2NwYTVrcFRuV2NUZHl0SEpOV1F3?=
 =?utf-8?B?blNwWHZoQmpyZlZueStjTFFLSm5zemFKR3dFN05kTGMzem4ySjB6UEFNRmVa?=
 =?utf-8?B?MUs1T1BzaW8rZG9hdDFqL1IySW4wYThLajJVUGNadmY2Y2FpdXZaUjR0UnZN?=
 =?utf-8?B?REtkYXRHRUhNSVI4V0UvK2dmbS9PRUdiT05Ic3NMMEpGb2VjZ0hseHJTZWVY?=
 =?utf-8?B?bWRIQXBuK2dpcko5Sks1LzdoOEpkNm9zZklnVFViYkVlU0ZZbEtPRHJjamVX?=
 =?utf-8?B?NGozdEZ3dkowdVpFRnJza051akhSZFB0ODRNME1ZT05JZTczMjJOS1BMdDRj?=
 =?utf-8?B?Skh3aSswMEQvV3djZlpUR0JLclBMNks5SkZTTjZCVjFpUjVjRjl2SkU0NmY3?=
 =?utf-8?B?QUo0RGFqNHB4OURBSXRVeThFcHBicjFROHR4dks1Smo2SHNkYzZ2VkFBZnZ4?=
 =?utf-8?B?dlJ5bEl6V09WLzVqaWhjN1FJWXQ3QXRnMXB3VitkMHNMWUtmOHJmdUVRQnJy?=
 =?utf-8?B?RkZJK2lkTm5hcmdWWXowcjk0MC9CY1dxMDBYUERXSHhDak1xcitjQTBKVXEv?=
 =?utf-8?B?VUxFZHhZdW90NUtIcDU2L1hDVEcwVjQxQ3BtVWFlTjU5VUIyMWx4ZVRiNDlG?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa4481b-550e-465e-602d-08dcf769b5f3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 16:00:57.7219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6g2ouXKunfVo2dmwF7L3uVTgqBoYWhKJ120SdKmYG0GvlHAe1zxjcSkuAWZ4oAqGLNdEC+b1HSDExSQqUlC9JRg7/DN18A8u2hNOHhGx2ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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
because that max value is already set according to the `dma` value.

v3:
 - instead of checking if r.sgt.curr would exceed allowed max, changed
the value in the while loop to be aligned with `dma` value.

v4:
 - remove unnecessary parent relation

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..76e2801619f0 100644
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
 		if (!r.sgt.sgp)
 			return -EINVAL;
-- 
2.34.1

