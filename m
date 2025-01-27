Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1DBA20007
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 22:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C153C10E5BD;
	Mon, 27 Jan 2025 21:40:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDW4vkAW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5485910E5BD;
 Mon, 27 Jan 2025 21:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738014016; x=1769550016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hDjD4F0sdox2C4rLr6wOz9V3Za+tycKSpe3RZVWjiOU=;
 b=GDW4vkAWULMf9js5NEyDEIkP0yW7mGT/rwqzRkF/nHbetuf2GLj4wRW/
 1bSAlEh2nBv6hjeZtUYKbwPwvfPErbi0yLtYKGQKkWD49wTdWr52mMdM6
 geYiuJtIYTgxVzkVVh+TcCGchSXKu4JOYT8Mi+Rs2ojmKsGZNIvyo/acg
 FqDcyUmykGYwfAEv+/VM0qVcmvXPvx19feey2h/lWm9EJ8Oo7jriCJC1z
 S9ZwJnyMR01aW7GwLsF1YXGBfbmJZlw+Jy5GuBID1Y24ZgdAOsBgTHF9N
 4JU+2/1yR+Wf+RXMEFv2KW4IcFcONyB21ry5eEuRxM/uJVD+gDRBTE4sj g==;
X-CSE-ConnectionGUID: PB1uUcAoSGOc2dMa0w9spg==
X-CSE-MsgGUID: Jgu2jmHjTkCPr3e9WthbJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="49148286"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="49148286"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 13:40:16 -0800
X-CSE-ConnectionGUID: A1tObzG+RmW9qG2XrepMaQ==
X-CSE-MsgGUID: D9V7pjmGTr22fdBHEPdcCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112571538"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 13:40:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 13:40:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 13:40:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 13:40:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=POsAA1yhBBCha3Gi3eYhJ0s8K2xD0xjutLPrsm3YThMK60OuW9LqyETAevEX9LwS5Q/AEsrQmtkpgdQrQ8/x26S2xk5NPvnzB2cUsb6By2c5G29fdS84CF/WIPZz77SQaLjsjVSr1UpZArRlJEBBgRpgPi5L73HqzJvdNfPWwEMYDjrCFtB4gGWwe4+4mfCcIHeoJaWK6OxSoJrIgaEZlsfqzlTQd3Y9yT3rjCHripet8Dfg3NS6eK+87xxhq+4ylysfd3WoZk49MdRobp2FW6aLvzLEuzQZv7P/k94vaFluTr5DTN7IaiIeb62EBMqsz/47yvqr1QtXWvRYszJT1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hDjD4F0sdox2C4rLr6wOz9V3Za+tycKSpe3RZVWjiOU=;
 b=wlY5v2NUhLOlBD/BD8yRj7kCCmTOaZ1igLdKXfWcZzCFVTX7EUoDVL6uoSDNRFa5Hd3Dbb25YyyNvfjbLWEPJ8OGRaJBFHg1Awy2kZsGKlXYE+LBf/MO3IN4Oz/hF9SzMQwWwZrDNstxX+TK2VycMWgn+MbToYPpLe5KXRVcl3P/YTC7nc8bxWfiRbGnwfgrW63zwdcc9FQtNIdL9cQN1ALNEBzfsAEspj75RD8er1ffsQK4Qd3DNBLkBsbZPGplwxJQoZ13Y48Df2Xmo1/5PaZDsVz6XuichdDNMygmNSNsODBFDAWcHwYbGf+FVzYriChM3A20nJhi3y3OIP0OaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.21; Mon, 27 Jan
 2025 21:40:12 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 21:40:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
Thread-Topic: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
Thread-Index: AQHbcQLMOoBPtBlEpUO+tMlYJpe8O7MrJM/Q
Date: Mon, 27 Jan 2025 21:40:12 +0000
Message-ID: <CH0PR11MB54445354D7CADC3046E2905EE5EC2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250127213055.640-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250127213055.640-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB8000:EE_
x-ms-office365-filtering-correlation-id: 177d0256-6961-4c7d-b001-08dd3f1b2de8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Vkc0WGZzYWloazRDdERNWExKRW1vaUlzSDlHM2lZdi9mQUtNUVZIaFZCZUkv?=
 =?utf-8?B?Z2JQaHAydERDMXhnUHV2WUcyWWpEQUhIRjNJQU0yZzAyT1dmVUtYS21QRDEx?=
 =?utf-8?B?RVAzci9TdjVHdlpvL21iVVdkNllwVXIzYTlSRjkyUGJIL3JWVXVrNGtsOHRT?=
 =?utf-8?B?RGFleG5tQklodEhjV3h5bkFBejh5SXZOLzl1YlpENTJ2SmY3alVlbW9KRFRt?=
 =?utf-8?B?MFNmNjlGWkRLcTU5bmwwclNQcVYzRzV1RFQ2UXJGUGtkWnFNd2VFSTA5dWxa?=
 =?utf-8?B?bnBYTmZCdlRwTDBJQytPUmZ5aU5PSTcyZVoxOU9CZ09oaXQ0M2Z0VXFEWFJ3?=
 =?utf-8?B?M1dMVzNCNGpLRnZ5NUEyNnFqVnpRaXR0ZW9keXdRQVV1NkV5RWRBUGtDSzha?=
 =?utf-8?B?ZG5Zd0lBS3l6YW12dUZmdVRPSGJScG1Ec2hIcGc0RlRKMVQzV3hZSVBaUmFu?=
 =?utf-8?B?MThTUEM5Y1hKVlZWVDZkWGhRTGxtNktydXh6RHpabDU3MjZyOUZYUGFJUDdK?=
 =?utf-8?B?OTFYYlduNm5TbVF5L09jZmVuNEtZRXJSeXJTWmJ6RUNFUFNycXl3ZUI4T2xI?=
 =?utf-8?B?emhLa1ozZDlDVU1DNTVad3hOWlJJZC9paE1vcE5oZzZhR1dtZlJuc2VRSkFy?=
 =?utf-8?B?eWwyQUZHYUtXcXBMZnBCclRPVjkyTW9XeEQ1alBNelF6WkR6TGQ4OWZHZ2Zy?=
 =?utf-8?B?ZVhiYjZLY2Zhd3k1S0V0bTQ2RTB3NjZGay9KWmN6VFR1Z1dTaGRGaEpiSFln?=
 =?utf-8?B?dXZnRVJsenE2YWZQTnloOENwQmxrZ2ZvUW9ra0xEVFN6eGU1bi80b1QxUU9k?=
 =?utf-8?B?d04wSVExUnNVNmhIak50MFhvVjF2OVo0TFJmR3VNc2VKNzAvNWpuT21pQ1A0?=
 =?utf-8?B?UVh0TFUvS0drUVhIRTFReUIxTEV4MzZSazQ5SUdhVzF2QmZrcllSaVdwN1FW?=
 =?utf-8?B?T3FER2NGMVdLemE4SktkLzUydEs5RmdqckJHbXlvWTc4VlN0QUY3OVRVeVZ1?=
 =?utf-8?B?bmRYak9PaEJDd0I3aTJjaUJNYncrS21zMjVjbFJVSDM1V1c4ZEJBM2RUNXdp?=
 =?utf-8?B?RnlvL2JEL3FPSVhEd2N3dVhmdVFIaGsySUNjakJOQzNZZWxseHZnS3E5dkdU?=
 =?utf-8?B?Z25oSGhtZ0FUQ3Ryd3ZvblBjdmJIV3QzUHBLaVIwNExBc2docHRRdEFzcHFv?=
 =?utf-8?B?ZVZycVdkdnpZQW1ja3NZa1UvcjRvcktkREExVndIWGlTMENBNC9VMjczckM2?=
 =?utf-8?B?dGVGalJyTEFObmdYTVNHSlZ5dDh5QlVnYzRTd1Vqelk3ZWZ3ZWFCTzFNSmx2?=
 =?utf-8?B?eTV1L0UzU0ZoMm9xVmdPa3ZsaURHSSt3cFZiQnkrN01xZVVDMUJBVExaTmM2?=
 =?utf-8?B?SXVjbU8zaFZDMDRaT3VCZktUTGJsS0ZrOG1SSjF6T1dYVlhuL29pMGRNTm5u?=
 =?utf-8?B?UjdHQlc4akE3c0hWYzJhZzRhTXhnWWpCSlgwalhmYXFuaVJoSWhxelJBUHZ5?=
 =?utf-8?B?Q25LSjZzakdqWWVvelpHeTBWamxUaGIzZGtnZEZocWpxZFlXMk1mMW55MXlU?=
 =?utf-8?B?bis3ZU5IeFNyU3dJU0JVRWxhTFc4ckpMb3h2RW8rdENpeUlWU2NxdEgwT08v?=
 =?utf-8?B?akJtODdUMG9Scnl2K05hL3Y0MW10LzZGeTdleVYvMEt3RTI0eU9uL0dWOFlQ?=
 =?utf-8?B?em8yYzhZMWxvam1NVFR4Z1EyWW9INFo0UFdOR1VCUlVFSzhGODJlcTlZNlBL?=
 =?utf-8?B?ZS9KZC9JbnlkUEtxSXJUQ0ROTlZwVWpISkNBL1EzMjlCVXNFaWU1UXJTL2JF?=
 =?utf-8?B?YkhPQ200Kzc3dVZmdkVVRWFkbjlUZlpxanJibmdZaXNOTCtSMzBmblZLbDR3?=
 =?utf-8?B?NGtjazdoa1crU3ZXMnRLazlpN1ZZdFVSMmdIR1N2RHdOL2xpSnNYZ3l5enI2?=
 =?utf-8?Q?+2lfyrSaF4HN0aX2M34SzdKX5K7kS7PI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0F4NXZjaCtFZ1FWbDdNMG1iRlB0S0VWNWwvN09Eb2Z6ZklUaVZrQXRRLzk3?=
 =?utf-8?B?Y0hPVU9ueU5ZeElBRkkyUCtWdm04SHUzbHpwZnlDWm1vd01ka05ZSVdhbExI?=
 =?utf-8?B?QTRJaGpaam1ZV2E4WnBhK21YYnVTcUQ5U2RJeWkvbjh3bFVWRjNhbzVXdW5Q?=
 =?utf-8?B?YmdZSlV5YzNpbnI0aFFMKzQzbUlPYVdvSWx6cndlYkNQZC9tVmlIRHFoTGFv?=
 =?utf-8?B?eE9Fc3ZRMjM0Y0tPSnIySjNYL01ZU2laWUtLemZic2NQQyt0aUF2QzU2emlH?=
 =?utf-8?B?WENOVll0V2pWNjBwYmRPeDZPekxENW1YN3BhR2ZUY3R3TDdPaC9yZ3ZJUU1i?=
 =?utf-8?B?MFRqNE4vOHQzOGxHY3hhaHBZbWI5N3JNUUhXeVdFdXE2c0hpcUJEbE82YlZz?=
 =?utf-8?B?YWpjSGhJSWFKV0JlazBJc3ViZCtuZ1NBNVk1OStiWnF3ZFlraVVTWmFzVWYy?=
 =?utf-8?B?bXoybzJVMEFuemhKV25FcmtvWlNTRXpMb1VKZGg2YzVSUUcwSm9lZkgvZE5O?=
 =?utf-8?B?Rk5YSzFSM1JwaE1YNFBQQUFSRGExUTdGbnhXcytENit2aWlYdE1ZcWdqVGN4?=
 =?utf-8?B?RmF3Ulk5eFZYSjMwN1FrZVdSMWpFaDhzNVpPSnFqOFp4VlVVNjY1MEhWZ2lP?=
 =?utf-8?B?VXhsVmMzdllUWWhJcExndmU4U1pnTldZYWdwNENvbC9ORjBJUzZJc0w1REZ2?=
 =?utf-8?B?Umhub2E1WnNSZnJCSWN5YUI1cWNmdGlqUkl2aGdtK2JJclA5aysxQnY3RjBs?=
 =?utf-8?B?dmtkbm5EdUtZcXZNSDJwcVpqMmptVWFEUnpRaHV2Y0NNSHNmQ2tBY2pGWHFM?=
 =?utf-8?B?d2JjOHNSdmprbktIanpTL2N4MzI4dCtzUnlhMXlXN1NFUDRJQThzM2Y3aGlZ?=
 =?utf-8?B?NFFHT3pyNnRDK0tHYWE0SzRjWTlKRGFmWVhqRERpRzJUWm96am9pRU9GMmZq?=
 =?utf-8?B?dlZnV1pDUjE5SXpsYzBOYU4zQzRCWmZPOUVuay83elBtbXhBOXU2ME5nejJE?=
 =?utf-8?B?RkplQ3ovbzg5cGwwcUtnZ2w5enhFN2lKYW5UdC9yT0kvaWZrQnFnazlEUkhK?=
 =?utf-8?B?eThZNVNtZGUxWjZrK2VPWFRyOGpJVXBuV1lHSHRYZXQ1bC93cGk3b3p2cTFW?=
 =?utf-8?B?YVJQN1R5VlZuTENNdXFTbkUraEFLbjJXR3R4ck15c0NSMjc5MFNNeEx0Z0xa?=
 =?utf-8?B?OXhKNC8rVjVYZmwyQmZ3N09FZmlreVZmaTNXN0xBdEM4TlZCVkNYZkRCbDU1?=
 =?utf-8?B?ajdBTUNRZ1JXNFhDbm44MmdjSmZISmJPVEVmajRKZVAwTXA4UFBTNjhzTnJ6?=
 =?utf-8?B?dkhOWSs0bWtMOU8wZHlRRkZLRFU1WlFnb2QvN255RzhTUDRReHNXVmN6K25m?=
 =?utf-8?B?aWVPcTJxeEJFck5uR2RRVFIyRWpWam1FRVhaSXB3N3lXR3ZCVDB5ZU52dmN5?=
 =?utf-8?B?dEV2SGEyZjFES1lHT0dXdjMzek1jc2lyQ0t4YUhQUWRuWHkxOTVUeml0WjdR?=
 =?utf-8?B?K3F1SndocGRCbmc0WXd3RlRnbkpIcWZxeFNzTUVnZ1kzWW0rYzJOUG95RTVI?=
 =?utf-8?B?bUNTbFdBcVh1blNEQ2ovSENUckFVZnd4b09tdGkwTWhUNnNxZDlCaTVWbGgv?=
 =?utf-8?B?SDN5NEQ3VTNTL3Zqd2h4L2hMM1FpRmU4bUF6TExNYW5RVUdJWllta3RZY2Jj?=
 =?utf-8?B?RS9mSUdwNWtOeWZKbjVFRmpqTU0zRThYTFZTc0pzVktLSDlpQnJUcithbS85?=
 =?utf-8?B?WFpBaUVld3NiUjhSK09hSDczMldJY2laZUQ5OGJmZ252WktFWWNtb1lzL1FP?=
 =?utf-8?B?T2NGNWNTYXdsUTRVWEJ2M1ZpRnE5WnArWk5xWWNwZjh2Nld2UHZBVDV5Rmcy?=
 =?utf-8?B?ai83V3A2VzRJUG9vVGNoejJsUis3ajZDQWhSc3BSUVNCUFl4QXRnL3REV2VT?=
 =?utf-8?B?Y1VVOXppYmg2bXdPZlFzMUIrYXNKUGN6TUplVzNIV1RmZXpRalRFYzhIQjlt?=
 =?utf-8?B?Nml3c3lHd0NiNzVDT2VKZWNUUkNEcjlnOUU2UWVBL0FDWmw4YXJJcGFyUHFs?=
 =?utf-8?B?SG9UVUQ2akdjU0xEV1NXK1l5NHlEUjFaRFF4UUhISGsweThFckJtZ25QTndv?=
 =?utf-8?Q?1aqDjD8J6ZRLTwUH6PnuZgiD+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 177d0256-6961-4c7d-b001-08dd3f1b2de8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 21:40:12.3110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K2IMorlIybqgLChuBRit/tDi6ohh/Id+96M23nTVkG14UyKIEGyiPRGsf4IQXeLwRfThOLZhjMeowFbcpjQwinMNqiORrsU0aJ5kEN0OKbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLXhlIDxpbnRlbC14ZS1ib3Vu
Y2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmphbGENClNl
bnQ6IE1vbmRheSwgSmFudWFyeSAyNywgMjAyNSAxOjMxIFBNDQpUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3Vi
amVjdDogW1BBVENIXSBkcm0vaTkxNTogR2l2ZSBpOTE1IGFuZCB4ZSBlYWNoIHRoZWlyIG93biBk
aXNwbGF5IHRyYWNlcG9pbnRzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5IHdlIGp1c3QgZGVmaW5lIHRo
ZSBkaXNwbGF5IHRyYWNwb2ludHMgd2l0aA0KPiBUUkFDRV9TWVNURU0gaTkxNS4gSG93ZXZlciB0
aGUgY29kZSBnZXRzIGluY2x1ZGVkIHNlcGFyYXRlbHkNCj4gaW4gaTkxNSBhbmQgeGUsIGFuZCBu
b3cgYm90aCBtb2R1bGVzIGFyZSBjb21wZXRpbmcgZm9yIHRoZQ0KPiBzYW1lIHRyYWNwb2ludHMu
IEFwcGFyZW50bHkgd2hpY2hldmVyIG1vZHVsZSBpcyBsb2FkZWQgZmlyc3QNCj4gZ2V0cyB0aGUg
dHJhY2Vwb2ludHMgYW5kIHRoZSBvdGhlciBndXkgaXMgbGVmdCB3aXRoIG5vdGhpbmcuDQo+IA0K
PiBHaXZlIGVhY2ggbW9kdWxlIGl0cyBvd24gc2V0IG9mIGRpc3BsYXkgdHJhY3BvaW50cyBzbyB0
aGF0DQo+IHRoaW5ncyB3b3JrIGV2ZW4gd2hlbiBib3RoIG1vZHVsZXMgYXJlIGxvYWRlZC4NCj4g
DQo+IFRoaXMgb25lIGhhZCBtZSBzdHVtcGVkIGZvciBhIGJpdCB3aGVuIGFmdGVyIGEgcmVib290
IEkgbG9zdA0KPiBhbGwgaTkxNSBkaXNwbGF5IHRyYWNwb2ludHMgKG9uIGFjY291bnQgb2YgdGhl
IG5ldyBrZXJuZWwNCj4gYWxzbyBpbmNsdWRpbmcgeGUsIGFuZCBzb21ldGhpbmcgYWxzbyBlbmRl
ZCB1cCBsb2FkaW5nIGl0DQo+IGJlZm9yZSBJIG1hbnVhbGx5IGxvYWRlZCBpOTE1KS4NCg0Kcy90
cmFjcG9pbnRzL3RyYWNlcG9pbnRzDQoNCkFsc28sIHRoZSBsYXN0IHNlbnRlbmNlIGluIHRoaXMg
Y29tbWl0IG1lc3NhZ2UgcHJvYmFibHkgaXNuJ3QNCm5lY2Vzc2FyeSwgYnV0IGl0IGRvZXNuJ3Qg
ZGV0cmFjdCBmcm9tIGFueXRoaW5nLCBzbyBJIHdvbid0IGJsb2NrDQpvbiBpdHMgcmVtb3ZhbC4g
IEp1c3QgZml4IHRoZSB0cmFjZXBvaW50cyBzcGVsbGluZyBhbmQgdGhpcyBpczoNClJldmlld2Vk
LWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQoNClRob3Vn
aCBpdCB3b3VsZCBwcm9iYWJseSBiZSBnb29kIHRvIGZpbGUgYW4gaXNzdWUgcmVwb3J0IGRldGFp
bGluZw0KdGhlIGlzc3VlIHRoaXMgZml4ZXMsIHRoZW4gbWFyayB0aGlzIHBhdGNoIGFzIGhhdmlu
ZyBmaXhlZCB0aGF0DQpyZXBvcnRlZCBpc3N1ZS4NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHJhY2UuaCB8IDQgKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90cmFjZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3RyYWNlLmgNCj4gaW5kZXggNTRhNmUyYTQ2YjgyLi4wZTEwYzI4NTYwNTggMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90cmFjZS5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90cmFjZS5o
DQo+IEBAIC00LDcgKzQsMTEgQEANCj4gICAqLw0KPiAgDQo+ICAjdW5kZWYgVFJBQ0VfU1lTVEVN
DQo+ICsjaWZkZWYgSTkxNQ0KPiAgI2RlZmluZSBUUkFDRV9TWVNURU0gaTkxNQ0KPiArI2Vsc2UN
Cj4gKyNkZWZpbmUgVFJBQ0VfU1lTVEVNIHhlDQo+ICsjZW5kaWYNCj4gIA0KPiAgI2lmICFkZWZp
bmVkKF9fSU5URUxfRElTUExBWV9UUkFDRV9IX18pIHx8IGRlZmluZWQoVFJBQ0VfSEVBREVSX01V
TFRJX1JFQUQpDQo+ICAjZGVmaW5lIF9fSU5URUxfRElTUExBWV9UUkFDRV9IX18NCj4gLS0gDQo+
IDIuNDUuMw0KPiANCj4gDQo=
