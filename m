Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /gFGO3b0k2k4+AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:54:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E9F148BCA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26FD10E152;
	Tue, 17 Feb 2026 04:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdtD/rT4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDDD10E152;
 Tue, 17 Feb 2026 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771304049; x=1802840049;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sVHwVDcADvwze35fCbOFTeJDQApZJ3oAmPVJZg+YkFw=;
 b=IdtD/rT4uIV8H3bkP6aEkUEy1yKzUuhDtKhDckDANZm7YHigpDmFgMXB
 qsat83kLhrOZRDQ98Fa2Nfn0UwKXz7E7O6ErKOFHT+KOWbTHCJjfgSOsg
 CzAXzvoSmIhXLRFkDglS7lP+eg4melRRbGiG5D/ITlUGzNNdfhHQ44iA8
 /CcrN6iYXVnEY82t1CwPumaHs2tpZ7YlZwfv1v4ZZv9XskvLPqivjCLHs
 7AMcj4vJ+at1G2xnxFyskdoKAFQc+Q1g7SXgxxOYPKLA/181nUk0lodyj
 9UywHBCb5cG/FIoGfWKKd6upla6cEXpyJlJFzRtZ9GPmZUlpSkPk4cfmo g==;
X-CSE-ConnectionGUID: 3qave/qmQVSczep27ZYkXg==
X-CSE-MsgGUID: geNBIhzqQHyi3S7S/hX1HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="89784580"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="89784580"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:54:07 -0800
X-CSE-ConnectionGUID: NLqo9QSGQxu+x/A0goBbJg==
X-CSE-MsgGUID: aZXXrW6iSN2rlNTpCDfdjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="217914536"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:54:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:54:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 20:54:06 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:54:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYQ4RD68sKIaQUdcVX359L7/qFfoHjfp9qBLqoCD12eEjduAakcCJNRRO9GquKvORh7mJZ6NvWlN2of+oah88DGF2hK8HFJE1PwjN/ELuxktwt9bfG0Gt2lSJXvTwuDsXdtbXKjnNQLvJyz+7v8kB149Hn06y73NHZLAdrMzFBY73JRXHfl3EHpFUxGOedCtQ1u8mT8cQvaUmydejqBNiKpoGqOCbPVnCENZknTHmy2/+ZqS6d9s5QoZzhrHiH66CtxnJfp/+tcOmU5AAQVd3TPMvMne06fhDZL/PppGosf5DLDNgQuKCr+U6U7GxrRVXmpUtg4vE4jcxZC2Wx3rMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4BhhvpuZ92rdnkOF1He8LSobIkl0ExNoqNt1QvWHZM=;
 b=R9M+iVTboK/SKdYtWfn/ssPgf3/OBhbIwM2miv1xGX9EAtoJPCt0hO/2myHW3e8ZlCD+bsMt8IDkdpLDuzsB1gtct5fQXhMjYYQmpSuHGhhA9PHs7EAtESZqTojMWgcsO4RNwSegcGwSV2x/aEB0vFzT3hn7YiC9fUjyqiSiAsDx69UtQnMkFvbgyWJAj6jBx08wnKtJ97kX5+P5QLfUMSZNvvAgH2PNH3lv6Erir2UcnLMxNY2E+RixpyFcBj8c+/H/ssAslXNd7105ChFJUfMUlclh4lyS/b33M3jUAtwef7cP4OxFHXb50PiwZcT6wLlORSY9FQz50ivS4fuS/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB8089.namprd11.prod.outlook.com (2603:10b6:8:17f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 04:53:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 04:53:58 +0000
Message-ID: <9961da24-68c6-4633-846e-7b059b45858c@intel.com>
Date: Tue, 17 Feb 2026 10:23:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/dp_mst: Allow modes requiring compression
 for DSC passthrough
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-5-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260216070421.714884-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB8089:EE_
X-MS-Office365-Filtering-Correlation-Id: e82cd768-05d4-4234-d028-08de6de08f94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUZhTUwxdFAvNFgrU1dqck9rM1VYc3orS1psWXZIM00zWXdSOFBzWDMyS0NQ?=
 =?utf-8?B?YVFFZTRYYlFhaXlpVjdDWVptR0ljQWkyV1llQU5EeWNCcG80VXVzVWFPTzNq?=
 =?utf-8?B?UU1UaVgzUGFNQUwxaTh2aGIvVnhLRlVLZFZHeWRVNkdHSGxpNFRhRHpGWEdi?=
 =?utf-8?B?TWVubWxUd09yRGhpYVB5dVMvV054dk1YdkZwQzRUdjYwRXpOdWErVmxzalE0?=
 =?utf-8?B?ai9aUHVJV29ia0JqMXg1Vm1pTzRSenRJczA5TWhLSk96a3p6Q3p5ZnovZDZV?=
 =?utf-8?B?RmRoYmpnY0RNWjBPTnRHbDE1UUsyMEJWNVRWWlYvOVUvVW1GRGF1YzN0ZkFx?=
 =?utf-8?B?YWh1cmJSY1d5R3p3bURaSXlrc0tpRU83c1FPWEFlUm01OWRkcnFBTCtleVBi?=
 =?utf-8?B?VGNPMERRUWlrQk1FemVlU04vTWdIZTE4R254ZjUyUDlQeVNsVVlScXI3ZHVP?=
 =?utf-8?B?eHRnNUhxQnNkdUtpVnFuRVhTSmY1Q1hMUGU0b0lnS2RyYkl5VTUwUEtRbjJO?=
 =?utf-8?B?Y0R2SjFMUW5FeENZN25oaWRYb2pOYkI3QUhFUE9lWXdDVVZMUEpKTUloUlRF?=
 =?utf-8?B?bXNpeklmc09WQVFXVXhWQ3pWQUFhVHYyK2U3OXlFTHk2anJmZzUxRFBxV3Vo?=
 =?utf-8?B?RXh4U09nZ3lTMUdDRnp4QzNYUUlVUXV6T1R6WWl3MFdYeS8xa09EYzZDd1F0?=
 =?utf-8?B?MDU3UG1BRGdzNnFucXhJcDd6VmQxdS9PdW1OT2hIZ0hwYnRHYUNDQlp1dUs2?=
 =?utf-8?B?cXc0aHI4T3MwVUdXTzFsSitkRDg5ek9ISzc3N1ZJUHZ1cVl1ZzR1cVB2ZGdx?=
 =?utf-8?B?Q1B0YWgwNVExa0ZiTkVBRkdGUHg5WVFua3hocWRLTmVBQ2lnTUJZUkJEOFVL?=
 =?utf-8?B?Nm1MM04zQnRGVHNrTEZLdmdaQ1hhUWd3SW5kN1VwNVZ6dFlrYTg3TUVicUY2?=
 =?utf-8?B?YXEvTzFDVmRTK2owQnljdXJSZFR2Q0tXaW1KR0RzcUwvQWM0S0w2S2dDRjg4?=
 =?utf-8?B?Vm9OYkNFOUd5SUE5aGZvQ1dzRExYSW9nTVJHeHRETnNzeXBOTG5XMEhnT2pi?=
 =?utf-8?B?VFVXVjIvNVIvMjFISzZxZzYrTFFDMGQ4d2QzQU84RXZKbVc1NnkvYndGLzdm?=
 =?utf-8?B?MXAyV2xMQmNMM0ExK0U5cG1IcVBZMUxrNG1rL2F2WVgwaVpxZFlkSU5zc0xV?=
 =?utf-8?B?dWxGRkdjNzNMbGxPWUM0SmQzekMyOTJUL1VsSUdGMjFkd0RPV1UzTTBqWDBO?=
 =?utf-8?B?RkdDdW8zblNxN0lqK1NVcVBiUkdMNHZoZ1JmOFR6VlQvOXplVElab1Yzc2Zn?=
 =?utf-8?B?QmZCUjBtWTEvUUxHaVBVREo3NjVEZFZINzNyVlJWazA5aE1MMFVzK2FWbVRO?=
 =?utf-8?B?dmJSekxrZzdhNXhqOXhtNkthZDB5MVhZbThaUldwRlR1ckhQdXZBbEphYy9E?=
 =?utf-8?B?cktEcThDUUphTFFYdmNoTXZ6OEJpRktJNS9kZ1ZPdnJXZVo4SFpsSTZMZS9j?=
 =?utf-8?B?c2xCYUh6Mk5WOWF4ejJuWElKcDlubXNVd3hud2NZb3ZVenowb2o5cDVhOUNK?=
 =?utf-8?B?Rm44ZU9ESzYvU1orckFyTlBkWkJ5WVZ2QWREOWRjTTNORVRFMExqSG9xQzli?=
 =?utf-8?B?YVZHRkl2VDIzM3dBRm1selpWK20wTmlKSENndjlqOWJnVVV0SHdnRmVNNUQ1?=
 =?utf-8?B?bUJVSk1LeklzZy8xQWU1QWNJZ0s5UUJmZ0c4bUd0bTd2b2JKVE85UnFQcU5x?=
 =?utf-8?B?TklocW1uRnl6WHQ4SXlqSVliZEljWDE1T3hwWStPcVhsMXZqdHg3UDh4M0FJ?=
 =?utf-8?B?cUY5N1lOQ29qMWZrR2pFeFlnMzN2Z2lCTlNMdXhVMURtQXFxWCtBVFhvWmN6?=
 =?utf-8?B?aGkzTytYeXIyb2F0UTFTU0x5OVArVkVUencyOVlUU280VEU1bDZLNEVyNWY3?=
 =?utf-8?B?bXJrVC9xWmpNY2ZHOVRLWGRIS0dZdkdOVzV0Rnhlc0FRZ1psWGNzRGVyUXRz?=
 =?utf-8?Q?eTd2y6TqVKgP0G18LBbDABK2pzd/HE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVN6VTRrYUhXbG1uaGhMOGRTd0dEVS8rVEJnU3oxamRoeFhHVkEwOVIvNVpR?=
 =?utf-8?B?S2I5M2J3TkJncUVyRTExVk1pUmU5aFlRQTFwTHpzU3hqSkd3eVJqL0R3Z0l4?=
 =?utf-8?B?amVBNkxOcDM3VWVSWmZDR3VIMnI2a000ZjRHTFh4U2QzSXcwYmdiUFZhL1lh?=
 =?utf-8?B?c1c5cFluR0RCR2NTZ0pNNWxQeVJicnNuQ1JyN28xN2x5WEp1cjQ4SVZyV2Vn?=
 =?utf-8?B?YzY1MjJJU3ozT0xQdDVYZzlVaDJvbm9GWnpwWHlxUDA4RTVaVndJQmlNSjIx?=
 =?utf-8?B?VzkzQTFVTFBNZjhHT1Eyb0NiM0d5YmlkWUh5clFFcUtQSVpuZFZZaDJkNHFR?=
 =?utf-8?B?eVNNcTg3VUpXb0w2aGpUNER5aEZKaXk5K1hvb2l6ZmFjMlJnZDZGMEkvbE5s?=
 =?utf-8?B?eTliK1pZZU8yWFZWZXZnYW1QbGZNQ3FGWEg4U01xOWdEUVI5TnhJdk1haGVu?=
 =?utf-8?B?eGRydHNaM21uNzF4akE4cnRTWXA0WkkrZzRUKzJYOWswa2hqT29YU1ZYa3lp?=
 =?utf-8?B?Q0JOcmc3ZWNZY1VKQTBLVXc0cXFTVnc0OFRYQ2taR2JOL1FXZGs1dGtITFJI?=
 =?utf-8?B?dm0vMVBDbCswVENTMGMwc3ZFYldlNEFtZmxKN3Zud3REZ2NJanQwZWZlTFNv?=
 =?utf-8?B?OUkyZ28vMjYwUVY2QUJKb2RoRThQc1ZheEVkY2RFdE12Zk0waG8yY0R5NDlx?=
 =?utf-8?B?a25GQUQ2RitKaGlCcnNJOUNFZm5HQzJ1MDJMQTZvUExjWVdzNXlBNGdPdnNC?=
 =?utf-8?B?Q3NnbUNGb3lYSDhYZCtSV2tqU2I5MHpTK2V0ekNmajRQNkFiVEUxanpZMEJ0?=
 =?utf-8?B?cjRETnlGZkpXOG8vTnVhaUFWWjZzSVcvOFpRSUVSdVo2dDFEN25mVFRMYURJ?=
 =?utf-8?B?eFJnMmZreWtCKzRSd3lTdXJaWEFnL0JWTU9NNndTK1dRU2J2b1Q3bUt3alZq?=
 =?utf-8?B?NWtmbmsvSWNlZXROaTRERHZ4NFNPNm9GWVRQdm4vNWEvVGVGQ0EyVkI5YjQ1?=
 =?utf-8?B?QkRtSnFOekpIQU8zYXNRTVRha090VFMweStuYmxZOW9ZTmU1MzBVTzVELzdT?=
 =?utf-8?B?dGIxenNuZGR0ZFhuYjFnMUVUYXBkTkx6OHZlQVBURGNwUStZZGhwZEJoY0la?=
 =?utf-8?B?aDJibFBhQ2Nad1dWYm1RNEdpT2pncTBaRHlXMHRJam1rT3ErVjB1T2FvMjA5?=
 =?utf-8?B?RGswc01wRkpmeHZIMS9WdXlGZEhxS0g2aXJyb2s5MVVRQ3pWWDhodVorWVJV?=
 =?utf-8?B?WVNRSmxuWHVXME81blE2L2lRK2NrUEw0Q3Arem1SL0c5Y1dETzZ6S0xQT2Ux?=
 =?utf-8?B?U3BmZmFrOXk2NmxUOHRiU3laSUQ1MUJ0UWZLOXAzNXJjaURDTkkzQnRTWmFN?=
 =?utf-8?B?L01Ua2d3dW5pTkpteUhrRXRuQkdjUUpSN2F0Z2tYMkFUT2ZPUndoM0Q0K3p4?=
 =?utf-8?B?ak1FVnl6T2Fwak9MaFN6bFpnTkNNTHhsR2E5TjlIbXRtamlVR2hpR2ZWUTFs?=
 =?utf-8?B?UXJ6WUJPcktBSkRabjd1TjNHMithU2EyVTNVWWhYQ0QvY3VjNjJEbzBodUkr?=
 =?utf-8?B?MGlMTXIxM2NINkd6N0Jxa3dxWnM1WW5PbDdaTldUS3diT01lVzh3cmRpYm8v?=
 =?utf-8?B?WDZVSnNYancrbWhCQlN4cGNjUUpZMWxXNVg4OWw0NkZmNWNPSGsrbUZRWEZZ?=
 =?utf-8?B?OVZkKzBLVGtLUUxGVVVRVTQxZUFhUVkzanhqZ0d6LzZ6Vk56MTAzTE52YUtL?=
 =?utf-8?B?RHlYaUU0bXA0WDR2a1k3UlhCN0R0WFZyb0NST2JMb0FGVlZkVW5KUnhSTDlS?=
 =?utf-8?B?V0l2cHpSU0NmWk8yOTVzNnkwMnU0NGhLVm5scTgwRDZEODY3RWVIVFRLVmFG?=
 =?utf-8?B?cDNRR2JmZy9ZMzQ4ZXoxMEJUa1REYWFsZVhDTnR4VU5RYjUrbG5Lckg4anVo?=
 =?utf-8?B?bW5pb283Slk5QTFDQVJrUzR2MGdMZi9YaThzdTN2R0VjRWNDRW51Q0o1bTEx?=
 =?utf-8?B?NnNSM1RBL3lITlNzVjlKaUw5Q2hzS2lKMnZycExRRGRTSkZ2aXJRa3NxQkZO?=
 =?utf-8?B?TGxxVkdLdWlyYjM3a1BDaVJhTThIaHA2blNSWElEdkRFbDgzUnFaaXZIbExw?=
 =?utf-8?B?SklCcFlMY3pHWEd2cGt2Q2cwWkgra3lBcW45SzJUSWlsQWJ0ZmN4SEo1ckRV?=
 =?utf-8?B?UE1Ub1lhOWdTZHlxWDdkZ1Y4dzRManJZL0pZNWYxZU5oUjFQb2RldFFpbGF5?=
 =?utf-8?B?WnFXb1gwTkxtdGlLVjcrN1B1UmNCK0MzcWpPU2U3MkdqN3pIMCtxOGo0TVFt?=
 =?utf-8?B?RHMrOEFIYVRkWC91bmdOZEtRU004QzNmeHUvV2R0U0o4aTgzUkVna3VHa2ww?=
 =?utf-8?Q?QYgn76HJCijgV0Bc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e82cd768-05d4-4234-d028-08de6de08f94
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 04:53:58.5483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M9dlwE8J3xphZbSpPTXDQhLq2ObYLIFaD1lGZwNSi46kY7mjXsZ35jJln1uZj4CcZF/Bz9CkHYRp1LzP0TFHGYyj9YOTPGKWjTAsF10K+8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8089
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B9E9F148BCA
X-Rspamd-Action: no action


On 2/16/2026 12:34 PM, Imre Deak wrote:
> The DSC passthrough mode allows a compressed stream to be forwarded
> to the sink instead of being decompressed at the last MST branch
> device, provided that the branch device supports passthrough and
> the sink supports decompression. This enables modes that would not
> be possible without compression, as the bandwidth required for the
> uncompressed stream exceeds what is available on the full MST path
> from source to sink.
>
> Currently, MST mode validation assumes the stream is uncompressed
> and uses the corresponding uncompressed minimum link BPP for
> bandwidth calculation. Use the minimum compressed link BPP instead
> when DSC passthrough is available to enable the modes described
> above.
>
> The non-passthrough DSC mode, where the last MST branch device
> decompresses the stream, may also allow enabling additional modes.
> This would require determining the link bandwidth between the last
> branch device and the sink based on the
> DFP_Link_Available_Payload_Bandwidth_Number reported by the branch
> device for the sink via the ENUM_PATH_RESOURCES MST message.
> Supporting this is left for a follow-up for the following reasons:
>
> 1. DFP Link Available PBN reporting is not supported by any of the
>     available MST devices used for testing.
> 2. Non-passthrough mode would enable additional modes only if the link
>     bandwidth between the last branch device and the sink exceeded that
>     of the full MST path. Unless multiple MST devices are used, or link
>     training forces a reduced bandwidth between the source and the first
>     branch device, both rare cases, this is unlikely.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4332
> Signed-off-by: Imre Deak <imre.deak@intel.com>


Makes sense to leave the non-passthrough mode for follow up.

Perhaps our kms_linktrain_fallback can be tweaked to test DSC 
non-passthrough and passthrough modes.

Not directly related but perhaps still on the topic: currently we are 
not exposing dsc related debugfs for MST connectors.

With the recent changes and checks for intel_dp->force_dsc_en in place 
for MST, can we start exposing the dsc related debugfs' for MST too?

(Though, there are still things which cannot be tested on MST - BPC 
tests, output format etc.)


In any case the changes look good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com


Regards,

Ankit

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++++++++++--
>   1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7ca2e2245fc70..f833f47643271 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1467,6 +1467,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   	unsigned long bw_overhead_flags =
>   		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
>   	int min_link_bpp_x16 = fxp_q4_from_int(18);
> +	static bool supports_dsc;
>   	int ret;
>   	bool dsc = false;
>   	int target_clock = mode->clock;
> @@ -1491,6 +1492,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   		return 0;
>   	}
>   
> +	supports_dsc = intel_dp_has_dsc(connector) &&
> +		       drm_dp_sink_supports_fec(connector->dp.fec_capability);
> +
> +	if (supports_dsc && connector->mst.port->passthrough_aux)
> +		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
> +									   INTEL_OUTPUT_FORMAT_RGB);
> +
>   	max_link_clock = intel_dp_max_link_rate(intel_dp);
>   	max_lanes = intel_dp_max_lane_count(intel_dp);
>   
> @@ -1504,6 +1512,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   	/*
>   	 * TODO:
>   	 * - Also check if compression would allow for the mode
> +	 *   in non-passthrough mode, i.e. the last branch device
> +	 *   decompressing the stream. This makes a difference only if
> +	 *   the BW on the link between the last branch device and the
> +	 *   sink is higher than the BW on the whole MST path from the
> +	 *   source to the last branch device. Relying on the extra BW
> +	 *   this provides also requires the
> +	 *   DFP_Link_Available_Payload_Bandwidth_Number described below.
>   	 * - Calculate the overhead using drm_dp_bw_overhead() /
>   	 *   drm_dp_bw_channel_coding_efficiency(), similarly to the
>   	 *   compute config code, as drm_dp_calc_pbn_mode() doesn't
> @@ -1527,8 +1542,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>   		int dsc_slice_count = 0;
>   
> -		if (intel_dp_has_dsc(connector) &&
> -		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +		if (supports_dsc) {
>   			/*
>   			 * TBD pass the connector BPC,
>   			 * for now U8_MAX so that max BPC on that platform would be picked
