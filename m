Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135892E39A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3411C10E1E9;
	Thu, 11 Jul 2024 09:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XE1xrNBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBF510E1E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 09:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690847; x=1752226847;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OGpSRAXuDnzWrnmfBTnCNtgA7DkzPcxUoXb/Oq7uhfY=;
 b=XE1xrNBevB2BYZcBA7WNCFg9Yyxlmcmy+D3sCLrEuhsLA2ojZSuaDeGC
 WfXzhfW8wHANb3m3vvbF7eGT3QyPJqBcot1OrPXGwbOAmWvQerCA81Fsh
 fiERDX1TMM3bQPZkTtCLsMPwDCfsAHS0sQnxwwPm12T2vrcD5vMwFVQyg
 O+CUzxVGWtM1YRFsiRnVUrzVsypU0rjdeK9jOZ/GoBgmSxkDNRR80OCaD
 qaLAsXCwpzqx9GL2DwxoGnZtEJYMGnqcdW0glZlZWJWZEsiwG0ttA1RGD
 WrqbyruRT9ycT6oeqViUt4WCo/LWeBFezlxoc9/cjP2jATnDkzvOfjCAd w==;
X-CSE-ConnectionGUID: N0IEZNocTgqPbVvbASh07Q==
X-CSE-MsgGUID: +Ls45riiTxmjrvViHMqlUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21875155"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21875155"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:40:46 -0700
X-CSE-ConnectionGUID: M05zizm3T3qXAiKAdbxnOA==
X-CSE-MsgGUID: MuBiF2YPRUmXsFGf25y7HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48495736"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 02:40:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 02:40:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 02:40:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 02:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SbUikQKEng6jXGKnkWh4DqSdPHaxBpzwr9EdD+goDvaSx7qHJAmcTaWhujZGyfU/MMdy/zwwrzU9FkjrQyn2WpZCNM4H9YlWI3VHz3kHk7+bFMHHjuRt3cTou8naTYVZr9E0bYmGjHU09rvVnlptTah0wmFLBXUY/x/TTfufaUIyiPNx5syEqH3SQlj1n1lY7wEPzCGpVNPW9Hebdkwh/nHQ6vzVPyAPlHCUXEjn56yJ9THqt0qUE/PmgEdAz2OI359jmzCfFpaCWeH2Fx0uEgJR1quOwrq+KVF/dVQYdMq7MQD3Mmx6GNmP2S/s7OA7YtlxzXLFJBYxU7ph0mUpTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H3YeXJjt3tI2CQ/r8jiILoRvN3WMqMoyIoCLjRUTOtk=;
 b=a0JPZYyU83E30QIT6srzpKaoO3mbzbI10iXODpPJInHNNAQh7xU5flZXkSltILjrE49DfKkUSNAtPq0Ns35yUgwwqhawmEloryDGF/0S06Lw++dFU8q86mAY1ZV/ZYfIMCdZYNrfz0t5aBg1E6fc6NIRLfLlxX7udoqwo0xUW+l3hflnDqcZ8VL9vNUuTIwOXWy3Vg4k3pt4AXrizcXwPrSxaLU3e6NX52Pp/2vQQiw30vTOa4yFJ6kGl1goTor3ttAxY+lbku9YcToUabk/m+8ryahlODzG27HgkH5cdlktEbWfVQn3bjfYa+RNO6v26jhYz5gc1tJ0DqTIIFJ/Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 09:40:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7762.016; Thu, 11 Jul 2024
 09:40:41 +0000
Message-ID: <00975681-78ad-422f-a844-beb18c38417f@intel.com>
Date: Thu, 11 Jul 2024 15:10:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] drm/i915/dp: Don't switch the LTTPR mode on an
 active link
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Gareth Yu <gareth.yu@intel.com>, <stable@vger.kernel.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-3-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708190029.271247-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fcfd3e7-fcdf-4800-5843-08dca18d8769
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTArbjI4czd6RnNsMlhYaGdPSEs5aDZxbFZWN1lGQ0YxNmNhL1pCNlpRNkZQ?=
 =?utf-8?B?QmlLZS92SUxCdmF3VnFqOVZDcExRUk9xR0oyS0E3NkdMUEh1OFRtWDgzdEtX?=
 =?utf-8?B?d3ozZ29ocHpPM2VFSkc2UUJuNy83NStZZ05ySndkYjhiOFk1dk84K0xDSVFF?=
 =?utf-8?B?azVKYUI4bS81Z0VPeG9vSU5xR2ZwUi9OcjU0L3pHY3Z1RDNZSm95OUpMZ2RC?=
 =?utf-8?B?MzBaZFVtcDVKb1djc3huRjZuSFMvcjluSlhKMHdQTllURzRSRVBiUHQvYi9I?=
 =?utf-8?B?aEEvSEVZWTRtUFRmeWpoNFBIMHRSakhXQ1luY21UZVZ4eFFUUmNBMlRTU01X?=
 =?utf-8?B?S2lQZXFkTjB2TlE1Tzg1Q3owQmRjcjBCR0c1NEdtOE0xdDdIaDJzWHJGbzZq?=
 =?utf-8?B?TkY2ei9oOTYzT25TYjA1em44bDZ2Q0EvSUFVUXFUTmc4Q0NHZjBiU2UzK09r?=
 =?utf-8?B?dDhvcDUySmc2T0prdEZ4Z09KSktkVU1NWnlFYkxrTVFVUTZTdFc3bDYwMVFB?=
 =?utf-8?B?bEhkcW90cTMwVlhVSTd3dCtDanNUN2RmUk9QOHE3YXBNU2o3SkUwSHNYT29i?=
 =?utf-8?B?QUxKUFVZazFYV0RxTUlnSlE3MG5ZK1pnRjN4cUFrRUUxU1Y3TThlUm9tN1I0?=
 =?utf-8?B?NktNd3ZoK1lHQmVFRWhjU25FZVhUb2UwVmVITzRhZis2Q0pPVWFQcHlxTlJI?=
 =?utf-8?B?ck5PZ2xWM2pweDQrUjlqTnJvdVFLbCszTzNGOXRtelJuOXpocjN4ejcrL2VR?=
 =?utf-8?B?NDNZYlNUZC9oSDdmcUtGc3RURzNTaHdpL2UvY1k2NUNGeVhJbGwxVjIwRkVJ?=
 =?utf-8?B?akIyd3Y4NDJjRHc4U3pHdVYvVUkxejl5cjlvQXNpM2ZMNGlEd2dGbUpVMEk5?=
 =?utf-8?B?MXAxaDRYbTM5UW5UNTVCUlk0R1dXUkJHVlFqa2ZYTW5udWpYWjhMbTMrUTBk?=
 =?utf-8?B?WThKWmtqMXZyUk5ESHFBMWs1LzAyZVhWQ0RLR3k1Z3E1Vmd4cUhvYUpZQ3Jw?=
 =?utf-8?B?MUxTdGZ1cklVa3hqdXA1azNnbDl0YmhMTTNsajJwdmdtMEZIck05eFQySHIx?=
 =?utf-8?B?U2lOTGxrdW9NcmdleUFZTkYzVzVQMjk4bDZrdjNHOGxYSHFRSVoxcDd0STJl?=
 =?utf-8?B?cG5qcEN2bGNMQ3ZXRHM4bmVwTnpzcWF4ZjRyaEJWcUVlSkxhWWphbzZlKzYy?=
 =?utf-8?B?OUQrZko5dnBwa0F4STl3ZzlhSXpWclpBTjRMYk9ZaDlhcjFYSmlYYVlGT2sx?=
 =?utf-8?B?eTJzN001cnpUTFFoZ1BSM1FQdmR3NndDU1JPbUVJNDNIOVhkN2hWS1dHOU9T?=
 =?utf-8?B?VjFnMXhGeXZ0ZWpCVkVTOUJ6NXVzMzZJVFJTRmNiYk4vQjJtaWErNWtDU282?=
 =?utf-8?B?czFJTlk2a3hpVnR4d3Rxa2lJY1lzc3ZjOVlnNjdhajZXbFFkS3NqeXN5U1lz?=
 =?utf-8?B?Z1VmOFA0ZzhTcElWOWs4ZUE2d2tEcnp3VGwvVUdBTFUrKzBTVFFqNGVUYVJa?=
 =?utf-8?B?cTBGeFFJbUhXUWtnMXRMQzE0Nm04eTYyOUtBM29VTWJXaHRjNXRpRWoxYjdh?=
 =?utf-8?B?SGU4WXhkMDVxa0UrN1ZFa2xxR28ySUIwSWFsanY3K3VsZ1R3ZFFqbEdZclRz?=
 =?utf-8?B?eUVyc0Nvamg0WFI2UXdkYWVKbnpOV1d0Y1B6Mm0rYlI4aVkycGFTZ1FsOEdD?=
 =?utf-8?B?TnR0c3ZGeDNSYSt5NS9QOGJJSVNnaWZvTVlESUNWNEVZTWFHUk5TdS8vcjBp?=
 =?utf-8?Q?DWZ9RkINQQ/eWrcv/Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGhkdCsydzNtMitIUk5CUU9EYmhrYkFoUmF6N1hRS0piQjg2REMyZmRGZS9Q?=
 =?utf-8?B?SFZ2V1BSWEM5cEZmbnlmWW5aWmc0ZExTcmlKTmFNY1RPcVBteVEzOS8veVZr?=
 =?utf-8?B?WTJ1WjdOOFRqSkRoNzJXc1d0R3NFcm5VZGl6UEpKam95WTAybklPREZmYSto?=
 =?utf-8?B?UnZlOGh3SVYyTmk1WGpTTE1JY2NzU2x3N0U5OGhnSW10bDEvZmdYWExEbzdQ?=
 =?utf-8?B?WVV4SFlWWEE3a2VWS3Uvd3BnQ1NWMzVSWHptRXJSckZhdHFpUXFJbjhmSFd3?=
 =?utf-8?B?Smduejh2WExhL2g5N1FrZXV6czZCQUU2UXBQeVN1dzI2TVNYZjZZa2ZaaFVq?=
 =?utf-8?B?dENDeVQzN3N4Zy93SWNBb3NqdStNQVRPRnZvYzFNNGxFZGJ4cFBJaDVyYzZ3?=
 =?utf-8?B?QjRwcS9aQjZPTGtuV3JwN2syUlNuQzdOdENJMWo1YXZ5d1JpK0IwU2NnOHAx?=
 =?utf-8?B?QXIvQlRwdU5mNEFROSsxb0oyY1RpY3J6NmRVaXE4MFNsMTJaNllXcnNJSzc1?=
 =?utf-8?B?d2laVUZVTk9oRGk3dEtwRDhrWmNsa1U1eHFtSmYySk1xRGpQaWR3M0dLU0p4?=
 =?utf-8?B?MC9TMXlYUjNwSEM0OUVrR2pDZ1hsRHZ4VHh4Y1RKU09LM1J2dHdxZ3F5ZFVZ?=
 =?utf-8?B?eXdWUk9IcVZobUN5MlN1b0xsNDc5d2VCVkx2TytKeHIrdjFYUmFlZUNUbE5x?=
 =?utf-8?B?dkJvYTBScEdXUHcwTmNtT0NCWHlOWjNhMHVTZW0wVHVjYzhjZHFJU1FrK2tI?=
 =?utf-8?B?OUZMaTN5NEpQaUpBMXdXRjdVZCttTDVROWhZZzBBODlkYkxrU2pOV3hLQS9o?=
 =?utf-8?B?YjVEc2Q4OVFlMmtDUm9mS2Y2Vk5pL1ZHWFpsc1hLZng5dzNXTXI3MCtuWVpZ?=
 =?utf-8?B?NzZhUEE1ajlsOWtTbDVvWlJIVzVISnpHWjF4Y0pYYzZGU3h4RHVUMXJyc3hJ?=
 =?utf-8?B?Vk1la0c4NDdNZGQxZXVWcS9jKytXQlVKZ0FGclhLQW5GOXhyT0dKbDhEZXRY?=
 =?utf-8?B?TU9lQXRtWEl6VWROcitwOFF1WU9nU1dFQ0tvWHZENlJvWjhxOXFRUlRsZ1Z5?=
 =?utf-8?B?VzhjaVhkeU9LSEoyRXU2R0oweWlkbThqQ1l2QklmcDFucFFHLy84bXQ1TW5P?=
 =?utf-8?B?TWlTR0t5ZnR1Y1ZXWjlhdlZtbm5oNC9VYlNwVHI0WGdaOW1DN2FxOWxsZ090?=
 =?utf-8?B?YTh4SGd4QzhpbGJBZUYrcml6L0ZPRU9OYTNWZWwvRy9UcDAwYUF4VG5keGY3?=
 =?utf-8?B?Y3huMmpNcTJNdjlsN3l1aEJjTTVxL01HNUpsT1FOTW1NbTNsTFpGYy9sUmR6?=
 =?utf-8?B?Qkx2Q09QRnhpdm83NXZQQU9nb01HazRTSFVneWE3ak8wRmNEZWFobWpMZEVx?=
 =?utf-8?B?VmRJZ2hCdkZucFBmbWN2ZnM1cXRxakkxV0YvbFNQK2k4bys5TnhHZmQvdEJT?=
 =?utf-8?B?YklxV0FTQU51R3d5UmltWjhtYXhIRVY4SVR3UHRkMXRFazlqdnZQblpGUnBS?=
 =?utf-8?B?RVNNQ2l6RlZqZTYvNVgyaU5Ec2t5ZmtHSGVzYVBwYW1FL1puRy9tdmowTGZy?=
 =?utf-8?B?a1BnUUJ1ZEd5L1ZGRVZPTHJaZ1ZTVDV5Mjh0RWRYdSsybWZMSmxpN2FIOG9Q?=
 =?utf-8?B?RnA3NDByRFFxZ3Fya0FJUEdjNVBvbm12NnFLOXo2TVhnWHAzYmJoMzVUZ0hQ?=
 =?utf-8?B?dk9vZTkreEdOVlIxejNCdFBLbVpOeG1TWTdlT3c5V1d5TkY1bU85TzZLcmdZ?=
 =?utf-8?B?VHd0N0p3VXBiNTFaSmFpRHhQbHBYcE1jOUNWd3ZJL1VsU1U1ZzRqQ0lvTzBN?=
 =?utf-8?B?a2pjV0UyQ2t0Q3piMlo0aGQ1QVhqZWk2RENuUmZsdlpUUmdBcFVMNlozaG14?=
 =?utf-8?B?Y1NUa29vV1dvNW91S29iZmltL1BEaE01d21kS1lsOFozYUZaa0NDMUVaMkhl?=
 =?utf-8?B?U3pFMnhkOXVMMXlxQ3RZL1NhZ0JPRUo2bnQxYWQvYXNLRUV4ZlhRUGoyQk9j?=
 =?utf-8?B?N3dpdXJSc0lYK1lPM0JHYlJpc0F3NVlHZC9hSkh5RVcySXJWRjNCSDVpL2Zz?=
 =?utf-8?B?OGxmRFBMenRWdG5MS1lZbFI4UTRHTndXMVk1RHdKRGNTUnY3VUh6VFJQK2VK?=
 =?utf-8?B?K1pKTUl4LzNmSmc5czZlNWFEdWhUVWZoMWpzcGg3Rld3V0dXbnowVnpaR084?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fcfd3e7-fcdf-4800-5843-08dca18d8769
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 09:40:41.7207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +KBzZbw3oj/dubpHWGGEEIS1T3WI+xOIT9+VylgkyWQP9jvNNZmcgq8vQRFTCavKNuBMAf+Pj0OP+lGpY9yurI2YQslKXaJiY3NFIIAig34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
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

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/9/2024 12:30 AM, Imre Deak wrote:
> Switching to transparent mode leads to a loss of link synchronization,
> so prevent doing this on an active link. This happened at least on an
> Intel N100 system / DELL UD22 dock, the LTTPR residing either on the
> host or the dock. To fix the issue, keep the current mode on an active
> link, adjusting the LTTPR count accordingly (resetting it to 0 in
> transparent mode).
>
> v2: Adjust code comment during link training about reiniting the LTTPRs.
>     (Ville)
>
> Fixes: 7b2a4ab8b0ef ("drm/i915: Switch to LTTPR transparent mode link training")
> Reported-and-tested-by: Gareth Yu <gareth.yu@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10902
> Cc: <stable@vger.kernel.org> # v5.15+
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++---
>   1 file changed, 48 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1bc4ef84ff3bc..d044c8e36bb3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -117,10 +117,24 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
>   	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
>   }
>   
> -static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> +static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
> +{
> +	return intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
> +					   DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] ==
> +		DP_PHY_REPEATER_MODE_TRANSPARENT;
> +}
> +
> +/*
> + * Read the LTTPR common capabilities and switch the LTTPR PHYs to
> + * non-transparent mode if this is supported. Preserve the
> + * transparent/non-transparent mode on an active link.
> + *
> + * Return the number of detected LTTPRs in non-transparent mode or 0 if the
> + * LTTPRs are in transparent mode or the detection failed.
> + */
> +static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>   {
>   	int lttpr_count;
> -	int i;
>   
>   	if (!intel_dp_read_lttpr_common_caps(intel_dp, dpcd))
>   		return 0;
> @@ -134,6 +148,19 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>   	if (lttpr_count == 0)
>   		return 0;
>   
> +	/*
> +	 * Don't change the mode on an active link, to prevent a loss of link
> +	 * synchronization. See DP Standard v2.0 3.6.7. about the LTTPR
> +	 * resetting its internal state when the mode is changed from
> +	 * non-transparent to transparent.
> +	 */
> +	if (intel_dp->link_trained) {
> +		if (lttpr_count < 0 || intel_dp_lttpr_transparent_mode_enabled(intel_dp))
> +			goto out_reset_lttpr_count;
> +
> +		return lttpr_count;
> +	}
> +
>   	/*
>   	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
>   	 * non-transparent mode and the disable->enable non-transparent mode
> @@ -154,11 +181,25 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>   		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
>   
>   		intel_dp_set_lttpr_transparent_mode(intel_dp, true);
> -		intel_dp_reset_lttpr_count(intel_dp);
>   
> -		return 0;
> +		goto out_reset_lttpr_count;
>   	}
>   
> +	return lttpr_count;
> +
> +out_reset_lttpr_count:
> +	intel_dp_reset_lttpr_count(intel_dp);
> +
> +	return 0;
> +}
> +
> +static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> +{
> +	int lttpr_count;
> +	int i;
> +
> +	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
> +
>   	for (i = 0; i < lttpr_count; i++)
>   		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
>   
> @@ -1482,10 +1523,10 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	struct intel_encoder *encoder = &dig_port->base;
>   	bool passed;
> -
>   	/*
> -	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
> -	 * HW state readout is added.
> +	 * Reinit the LTTPRs here to ensure that they are switched to
> +	 * non-transparent mode. During an earlier LTTPR detection this
> +	 * could've been prevented by an active link.
>   	 */
>   	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
>   
