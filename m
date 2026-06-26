Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4BsUI0AKPmri+wgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 07:12:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9166CA3B1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 07:12:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=boCZEeWW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8BE10F42A;
	Fri, 26 Jun 2026 05:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A906710F425;
 Fri, 26 Jun 2026 05:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782450747; x=1813986747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CMOvPIN3YnAoIUS5m/do1o4I0UNxA3XDkXdBNhfNikw=;
 b=boCZEeWW8pn/ZCqQYJS5CuVY7DfPoMUbxLvZJwVfkPv3d/YrSYOZq72u
 keJiXxuf3EYERhwrC5knKK7az9/aqTKcH69GbcguEX9b4HEmHHTQur6cL
 Igl27v44Om8db5KPXC980vH8q261Smcqqpg2dFqvhG+HWbdM0Rw1cLJ/u
 CjkNGL6Gm/f5USGp175kv1OVc0+yZSLsCeCzIR4KqyV/ytNCKs7UhTccx
 Cg9ynrKMSDTYc1paNxJvhPWyTlcVHFreBrg0HZ6Y8vsrrNQkfp/QHy0ip
 VwsEWseiM3L4ulaHMhsW27YuWDiuEdtq21Op8v+aoAPT1K0zc/jMQPocD g==;
X-CSE-ConnectionGUID: zPVdxXZzQrGN20YAGqYq3Q==
X-CSE-MsgGUID: tHQLx2YQToydpbdRjq0A0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="100676795"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="100676795"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 22:12:27 -0700
X-CSE-ConnectionGUID: 4mHScpzvRGG6Q4+iC9dKrw==
X-CSE-MsgGUID: Z0KDDxD9Qfiq+CDuYkdJzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="254852307"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 22:12:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 22:12:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 22:12:26 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 22:12:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H6HbHQ9fkoPydg6kiGr+iffxJoUcOn8pVO+6U32/C6Z/zjRn5k5ZVzGDxS0FE7MrgK+8u2Bk/UHAEs9asaB8czuE5UJbQoI65Vz0y13Xbpn7Wdd7aPRtMiLeMG8MMHp13A+qeqxxrVD+1x7NoBo2wyWBITy0rjuFPIW2W/ekLCs7KYMC1lTjeZADvr+7UOl234DXm84Wjdw40uqZRLxm09F7wN/k68aLive5Y4r84DyalHjDU4s9ZHkMv+hleU6z799pYiigzOF3MUDEoYcpM27X9nrZLi4AdWllfRq2mLphwug2ZV8yzv3NGG5gNhIika2eBAvwWHdhwHU72sOPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awPG7zUwkukewGQaDM2rQ/c0Fauu6pJs4i8ZaWimJZQ=;
 b=qf38m5Jmj3fXI1h63R0OM7oS7dF9XnEDsZU0EqkFAwvOT+Jg6ps1wSNRs6+wi8U66z2VlnzgOY83jwPYNoauwgOgdIpUfEGgcTK9pYC2KFdkmIGy4BkjTbepj3zJLy3NZ5NUWCUqI5mSvrbaC2/30DOFrh7T6NVLC5VNOk3h9Z41VjHpaB4AZ8CcIo5SAQbU1MONcpoe6ECK97DYjJVq5Vw9b1Rtv37e96+w2u3b5tYfz4B7imuajXRQlo1dTPzkFddivTegu1KXLrfYo0+L1VHYrXOC6yxgY3chseTJ+lJOUwZt2VICQAMmaF/byaJoUaEm+JxY2wp7mCijUDmajg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DS7PR11MB6061.namprd11.prod.outlook.com (2603:10b6:8:74::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.159.17; Fri, 26 Jun 2026 05:12:24 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0139.018; Fri, 26 Jun 2026
 05:12:23 +0000
Message-ID: <10218b5f-6720-4517-abf0-2ab7e8d4c9c6@intel.com>
Date: Fri, 26 Jun 2026 10:42:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: require valid min/max vfreq for VRR
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Martin Hodo <martin.hodo@intel.com>, <stable@vger.kernel.org>
References: <20260625131040.1051272-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260625131040.1051272-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0258.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::6) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DS7PR11MB6061:EE_
X-MS-Office365-Filtering-Correlation-Id: 93bb0ba2-2de1-4d54-00c9-08ded34181a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|11063799006|56012099006|5023799004|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 2FWY1FrKrcZmIpJu2kzZ81MSwYY6GvgbAobFNK6zhKPynHyUnm7HMC5OhfYW/zW+oXpbt434ghC29N2BY1X2aasXcqyOo2Si1Sol+U/N48X5wVZZ06hxPkbKnxFB1R42M8KVSa+zNeQdBj03jpM5PCYFWzISrMT/2yDWTeSr+B/5TktyT0iKtIS3bMn3BJ+zkj5rnbKQIKrhS3utkKKveLAPyiQc3HAAcKI27p0bE6LFcJ4rYuOsKq1pJi7aIpPRabx/SeiJssZ42/w1FOL0PffCBQDV/Q2V2Tp9UlAsWseSCUJ/J1Guoa/JvgGjZ8xKpIG3wX1aeePdUQHMNj5rHvgpg8Z2UIAEtqvSqJiPzmQX5vcfldYm3XEaOi2dJTIb2vZTnWkkjX4f0O2rWQVhERBt45keEQd8B/LnT5TZoL2xPjT/eQFfzQF+wC1LryvqSiinVSxyio3IP/O7Fcqemyl16x3F9oeqCZmyod5DRB2389V2qBLQw7vshsan+33FCLpL4bBLsc65UjJNjY83AuNvCSwfEYNvTpskt2TXQ2l5Rb6u+5dqAp4OoOgCuSP8FM5uvyahzcph8KuGY9f6o3Te3hTlUsqWPpvXmlo8YgH+2nNw/kwiRZGaR+kEo18eoms6awNBVEPVoHJMosCRx8MkIYrSCcS/gI64eL6BY0A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(11063799006)(56012099006)(5023799004)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlpmazRTU3JlUUprTmljRGZYcVYyOXVkK1duN2c2aTJ5UnBTNFpKeGVzYmM4?=
 =?utf-8?B?OVo3cGRlTmR5cytWSjNDQXM5Sk1laWV4N2d2TllVTWVidi9aRk5pcjg5cnRD?=
 =?utf-8?B?U3V0TDlMbVhWdWZLQTQ2RDN2Uk1QQzlhSEMzekhQZ3lHSjhqb0NwdWJ2WTFJ?=
 =?utf-8?B?SlBQZksyV0NBWkxLVVZTWFgyRVVLbjhYMVZMLzNxczUrRGNBS2JIdGVuZTBI?=
 =?utf-8?B?NUhTWHZNbVpZalQ1czFkWDJIaWh6SmdnWnlSZUhaQUpyWWlWYnVOdnp6NVV3?=
 =?utf-8?B?a3ZvWm43T2p4VGd3YmZPQ1JteEprZTQzL21XeVdJQjNyV2RjR2dzVWg0ODQx?=
 =?utf-8?B?SVc3ZXppRVpIOUJlYkxURHBJckhKREp1MDJUM1NSQ1ZHNUVVYjZrK3hManFU?=
 =?utf-8?B?Z1d3anZ1NXNqYUFad2NHd0I0T0NkQVJjdEVyT0srcEFUM2ZsU1cydkRCYm5V?=
 =?utf-8?B?bmU3UktwWVhLcHFYK0VWVHM1OTNOZVV0b1VocGRQN2VQNUs4dnpqMGlDTnBt?=
 =?utf-8?B?a3IySks4OG5jaUlIOTMvREs5eTg3RUlSNndPUzlnVDJyNFUrTW82R1VQNDhG?=
 =?utf-8?B?MGJOL3I3WlRpRXJGRDVlUnptSUIxcnlpc0xYdXBCQ1FnTURRSGQrMjZWSmdt?=
 =?utf-8?B?ZFBzUzFxZHQ2REwzNXhCbmY5dXhZamJva3hPWEZPUXdpTlE1eUhDVjZ1MnlT?=
 =?utf-8?B?K2ZVY2JaRDhsVGpCZEZtY0VBR0R6bzdHc2NwclAyenRiNWs5RlZGUEpuYkZQ?=
 =?utf-8?B?V0pxYWFza0JoUU9jcjZWS1BuQXZQcWF6cEFBbTFLd25kTnVjV1dlTXNxNFAz?=
 =?utf-8?B?bEFXMmhjSjBTNnB6ZFdNems4MHZrak81NHRHd0FFOFFWdnIvM3NSMWxoZjJL?=
 =?utf-8?B?SEg0ZGlrWG56NnJYVjR5N3VBSGVPdnNTbU5Qbkt1UUw2eGN5UmlvTno3WFI0?=
 =?utf-8?B?QkxYcEM4ZWloNFQ4VzhzbDBZWDhtdTI5WkNOM2dwNUM1blJBVE1IS0V0SjB3?=
 =?utf-8?B?d2JSNTE3LzB4ZGVOR3VycUtPRkpKSDdWN0Rxc3ZtYUpiUzZsZFIveUxNdDdK?=
 =?utf-8?B?VGV3L0RqcHJHNy8wN1psS2F1RE5xV1hBeUVFZ1RhNlNTNm80Wnk1eW9OTzBR?=
 =?utf-8?B?dy9lZkxyVXErRFJmMkIzQ3dVWjN0dzNlZG5oVVpDZUtrc0NXMGNWSHUrOWY1?=
 =?utf-8?B?Rzk3UDZZVS9RdXJZS3RpRGhtRlFXbW9NakxzdVJEdVRkbFd3bXZKa0I4ejl0?=
 =?utf-8?B?ek5hd2ZUTUdtZGlWTktyb1NSbDV1L3BwWGdxQ0dkVWloZlJ0VVdRNXpJTklT?=
 =?utf-8?B?Nk5pT1QwMk50ZWhYYWJlT0IvMmJPUXZkRVdmWGhNeS92RWV2eHhLYnQ0eXU0?=
 =?utf-8?B?S0dETXAwYnAxdndqMW9MZHRwT1JXVVkrM3JaZXE4TWlEVFdUdlNKRXlVaXFz?=
 =?utf-8?B?ZGtkS1FuNE5FTzhaUlVhT1lSdGMrN09vbzhDcVoxNDMwSlVsalozSndvRUQ4?=
 =?utf-8?B?RjhtWWl0UlRoTjNqQXNXdHExWEVtWUNFbkoyTmFaV3N4YVZ3cU5PaktlQXdx?=
 =?utf-8?B?VzQwcUxzOHFJZWZzdXRzMWVkUGxGMzBkQzdZNkE0cnNrTWZDdytBa2w2RWdF?=
 =?utf-8?B?Nkl4REJsU3FnbHZjOVdiUTRWNWVwaVpIZXlWbG9FQ1RiT0tWRXY1UGlhY2xk?=
 =?utf-8?B?TVI3TE1wajFRMlQzU29pc0h2Q0ZqZzRidi9Ka3E1UUdMZFFlaUw0c3dFOVlB?=
 =?utf-8?B?OUdINzhHSDlPcWIxNnp4UDRrYWRuQ0g0c05IeFNEd2JWWS8xellwdVdaY0JK?=
 =?utf-8?B?b2xCMVk1S0tZOHptZG5ibFV6L1V3VEZHWHl6YUkwQ1RPbCtoQnBhZHdaY1lV?=
 =?utf-8?B?NUZ4d3pleWx3V1MzSzVkMzgrckZmU3RET1ExbVd5NlFoUjVVYWYzZ1o5U1BD?=
 =?utf-8?B?cTFRVmJraHlhWmNPN2t0K0dzd1lzSFNuUUM0UjhNVWVvK0tKdjRtLzQ3ZHlX?=
 =?utf-8?B?dnpNcEE5MFVTeDA0TWNyb2h6b2U3YUhmbHpIaGNzQWl0NlNVVWNBRldrU2pU?=
 =?utf-8?B?alRGQTlOaExvNVVDcWRtRG5ac3NldnVERnE1WG40Zk5MRWtMQVFYcHNTSXNm?=
 =?utf-8?B?TUM2bEVrT2ptaVBGVDN1c1cwTUVJNm1yTFd3c25wK1pEYlVpZEd4bjlNVWJa?=
 =?utf-8?B?UDlHemlYT1BsR1JiWFJ4NnFrNmxVN3p3SjZGZ1IyTGJhSHBicDAyaVV5ZStC?=
 =?utf-8?B?NXBwZTJ4V1N1UnczN2w4bkhXZisvU3hoZUVpRmNBMmdieVU5TmczR1BhVjln?=
 =?utf-8?B?L0hSc2YrS2xRZk45TnhmeTlLQzB1cHMwa1hEY0k2Z2NlYmVSL0FMZGk1RTB5?=
 =?utf-8?Q?17S6n8Gfy8/Nvcic=3D?=
X-Exchange-RoutingPolicyChecked: aXYrCedCA6bXrn4ji3Wpyv6dWT9Irwqy4b7Tx6viRNZoCZqf6iDPDjZH2vIdnMqoHt2WrhiDbwdr00UaAJrHhUt8MvExz+khja9zf3CVoQ4bfu3+TFl7oC2ysFTRkna95cx69ikdlSaxP7Q/IogB9TdBHnvN1rveGEsLDCTzO1oOimFA4QMxd1l3FnnC1NSZ531A2NGNuKEEoHZIckviu67XHYE110m3vBL2hH57A3cKrNgebOW/+UwQ+labxgRMPx/suQAN94gOkuLYUAWFcgvCr17iuS92ZSR5YrYu8K8oEX/XXfN3+zrdKtT0qiyjuN2bhMC/2wthZ5PNTU1yCg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93bb0ba2-2de1-4d54-00c9-08ded34181a2
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 05:12:23.8195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6M1VA0lpP1veQx1o8GDtEc9NIRQCQ6BTQXBy6YnfoXApOy2Mneb+CbsPvAU7vvmvHf4+PytQsMs6+mQfefBNlOYcwYXOJOSqQR4enGxAYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6061
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F9166CA3B1


On 6/25/2026 6:40 PM, Jani Nikula wrote:
> Ensure the EDID provided min/max vfreq are valid. Most scenarios are
> already covered (by coincidence) through the checks in
> intel_vrr_is_capable() and intel_vrr_is_in_range(), but be more explicit
> about it. At worst, a zero min_vfreq could lead to a division by zero in
> intel_vrr_compute_vmax().
>
> Discovered using AI-assisted static analysis confirmed by Intel Product
> Security.
>
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: 117cd09ba528 ("drm/i915/display/dp: Compute VRR state in atomic_check")
> Cc: <stable@vger.kernel.org> # v5.12+
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Makes sense.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5d9b11185296..bffbdee76ee1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -76,6 +76,10 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>   		return false;
>   	}
>   
> +	if (!info->monitor_range.min_vfreq || !info->monitor_range.max_vfreq ||
> +	    info->monitor_range.min_vfreq > info->monitor_range.max_vfreq)
> +		return false;
> +
>   	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>   }
>   
