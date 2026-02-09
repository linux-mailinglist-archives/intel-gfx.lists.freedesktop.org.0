Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBQcLQnXiWnZCAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:46:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D97110EE95
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD27C10E3D3;
	Mon,  9 Feb 2026 12:45:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+tJQx97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB2210E3D3;
 Mon,  9 Feb 2026 12:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770641157; x=1802177157;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZK2qbWplA4RSlioEAH2sqSKKA9Nyp+y0QAibiJO9eDw=;
 b=D+tJQx97k4/q+oqTPmeXZaUkzaWY3l+hlhtlS7x+GIUpPY0yMAu3c1tI
 jYajgKdWDSDOWlmcTrighv+4WPZAWZxT5Rqjx8QaylTBZWQWf8Xj8TO3l
 OE9ns5jaVLLr4wCfRymnJPrD1Ft8U4bjvL0WvdaEdZOP3Do01Nhgzuu0m
 QNd3aJp8tk+mWYsrR1Jisug0G7SpgkoEND8HGbmB3FPbD0lDqfCwUVWGh
 n036nDSU0dfm61xAy0lE0XHfYrCEL7lSqRP0eOv4eezsgt1drOG4XqJ3U
 e3JKWluMtUmmmW9ku3+2C+tqREBbN7kSddiJoFIj2cx6DaMpALsuVEYLv Q==;
X-CSE-ConnectionGUID: fiJB0z6jTWKkepKN89812g==
X-CSE-MsgGUID: P3znXasnRzelsWB2Omm/xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="97209950"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="97209950"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 04:45:57 -0800
X-CSE-ConnectionGUID: R3DHUT1vTwyL+o38PRFv7g==
X-CSE-MsgGUID: fG3qGP60RXKKyRy/38Sh/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="211395455"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 04:45:57 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 04:45:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 04:45:56 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 04:45:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M4NDS3ZKp8D32qbGIwey+yGFCHwaEWPIOtYtKhiZPAp8b/L+WodPWlDx8hCoxF+VI8oHmxSeEtw+zXbZF8qlOTisAewij1Eqf0XdLy7j7JAC2i0DiWDMx88XLR2+UOkZohKKOyA2GbKYBHwA3HeZ747+l4nfpln/oNUFzi0ggvqGS/FCJEAp2om8ocLjQza2uFTYtSO1Vu5ieCNCX99isDZB9gljKWD/WYGHmROk94h7g145uqPuMTynn8Ezq4ElDEel+PbN9NH19VydNNKiLozbsSasHkfa7hRzOtCnrClund2upWtEDKY+L4lM2ca1Z8Dp8cxfmX/V4/XHYY6HIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyqeKin2N8H106UFOqq0hDMjsmrmS4a+4xA2J/wBntY=;
 b=RrZ9lZWlF7eg4aUAf58JiEvrfyBtNoLRMOKeQAL6K26frIjIYAZw1L1m56uYGjWtRpBrXE9bE0RpJiFLDHop2AUOTFQ69c0DMijT4nxODBRLpgT6GpeWIGnQeenJnDUnqN/nqX0w0vfvCUpLLY+WoDvBSyUJ8AplmxHqtTrE2lrOqLDcP0oSmA8dQnDLsmo7p8wQap6olYyIZgz0SPduoVkwKTj4gY336E9G0walnoBchYtd3rfFHDs9sv2/WnsII6pXRRT1mE8owpC7LJLlXVZnuzpbYrRlRlkklY+hX/X2xg0doKLopO7AQwx7/QNzKYJr3vuz2XclbPmvl3Uw1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4843.namprd11.prod.outlook.com (2603:10b6:806:fb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 12:45:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 9 Feb 2026
 12:45:53 +0000
Message-ID: <c17654bf-83df-420a-8a30-2c93cafb2208@intel.com>
Date: Mon, 9 Feb 2026 18:15:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
To: <imre.deak@intel.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan> <aYmyafbsHVRH2crC@ideak-desk.lan>
 <371ae01a-acb4-485b-b063-c23999a0f958@intel.com>
 <aYnK7Osk9sMUwAhO@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYnK7Osk9sMUwAhO@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0224.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4843:EE_
X-MS-Office365-Filtering-Correlation-Id: f1b07f37-56b0-4b9b-f712-08de67d92961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmdjOEpLdHUwZExBMitMWk10MGE5bzJvRE44SXZjejg1cUJSbVZQZ3R5WUhW?=
 =?utf-8?B?WWZJWmRUdzRiRW1KTXBNbzRUNmJiRjV3MlNEVDAyV2J2YWdwRE1SVHc1cGht?=
 =?utf-8?B?UDhGYXNUYkdKUE9UbWxnQ29rL2x6ajZ2WnR1aW45NXZqclVoaVRUcTd4eUN4?=
 =?utf-8?B?ZTQ5d2NJUk9XVHRrSUNiRXEreVQwWlhUbU1BV1V6VEFZREdFQUFaa3d1Zk1o?=
 =?utf-8?B?V2diVFN3bUkzczArYndYd3FPSzcwanM5Q0FyUU5VMlhlSEFzSXQxVGN6UFM3?=
 =?utf-8?B?eko2TVlLTkRPNE5BUHFUYUpxYlM3ci9LY2JOaEZTV3dhK2E0alllcW1wNG9i?=
 =?utf-8?B?TVczWFFUT3VBd1ppNFBxcGt5RVhxNGxTTEpDUU15RW9rdGZySjIrTE9jWWZM?=
 =?utf-8?B?VXBWdjdOWEc4T0lMRlBCQTg3YXZvd1BEU0Qzdmt2YjBBcVFhK0J2NkdZUWtD?=
 =?utf-8?B?MVl4WGdUVm45MWxkeWg1YmxLT3k1ZWM1ZkVOMzFCWVlidFpXaXBicHFDZHcz?=
 =?utf-8?B?YWtZWW8yM1lpSExxUGd2WWpOU1AwTzVySU9lb0JVZVVUeVBiU2xNZG1qUVE3?=
 =?utf-8?B?bGw2d2FIdHRQYW05NHFHOVdFc3gvbzZUeEltT1dNTnpOZmFTT2tnNnpmczR2?=
 =?utf-8?B?TWJyUGFzYUxKdTlFUnUrL3FUeVRNQ0RlOHRHbFZUQ2EyU2U2OFl6ZW5jendP?=
 =?utf-8?B?SHRwVC9QRDAwckJpclpyTmxVWlF5eUtlbTBIVllYQTcvTlVlVnAzNkRGVmVX?=
 =?utf-8?B?MjhsaHlUMDVxQU9JcUtOUGE4NlN3Y2h1Qkx6NUpZdThEdzRpRk81ZGQvRTFE?=
 =?utf-8?B?elNzMWlOc1lYWEZqdkR6aWltVE9nWk1PMWU3VnVwZEU3RHdmdng4WC9BNHNk?=
 =?utf-8?B?SzB1RGk3RW5pY04xTmhvY1cwaWV4SytJSzgrdVMrNUl3SittVkhPMTVJeVA2?=
 =?utf-8?B?MEQ5Q3QxVDNWajRnK3Fodjh4Uks0UkUwQW5Ec1cvK0pTb3BzMW1jTTlwUE1O?=
 =?utf-8?B?eG9QL2lPK3l0L2NLTTlVWll2U1lCWGhyblVEVlZ2YmZUWk4vMkhTQWxMQWlE?=
 =?utf-8?B?K05ON0pNek9LRU5XcTRBNVBlaTg2WklEb1psWXQ4WXo4TmcrTVd0eUNXNXFE?=
 =?utf-8?B?ZWEzRDhnRk13TEZSdDVUVGdBV0w0UlJzTFAyZzF5Y2p3RGVJSmFwRTZTZFF3?=
 =?utf-8?B?RUREeWloNmNrdDRwWWIxeFR5WDRZaUFkaklCZUdwTGd5N0VFYWphS0RTOGli?=
 =?utf-8?B?RFNTUzU2dW5zNjdPK3JTYm1qUkpWVnBtNDEyY3o5UzVOTzNHazU5Q1AvdTUr?=
 =?utf-8?B?aHU0ampjMUxsY1dIeklEZ3pMSzBMSExMYTl1eTN0MTJpWExIR2l1VDhNM0ZI?=
 =?utf-8?B?QXpLM3V2MXI1UUtRL2h6LzdDOUhQYWNYOHErWGptdVhTSWhLQUlHVHpZZWU2?=
 =?utf-8?B?ZnNQZFkyUEZHelcxT0g4UnJQQ1liZFh5S21YamRCdFNDdmgzMS9vVHZWQ2Vk?=
 =?utf-8?B?S0p6SDg4UnZhSDZHMkx3Q3FraUNrd0ZCVWV3US9Lc0g5N1N1TWtpTXlPcXd6?=
 =?utf-8?B?MnBXUDRqVnRPbG1ZOEEvUjFwalRaL25UQlFsUlF0TEE5R2FIRmg0ckljQS8r?=
 =?utf-8?B?aDlaWFgvZk5rV3Ezdk0zWkFRWFlaUGVQMG40bVNzSHZsaStFY1hCL2dNMm4r?=
 =?utf-8?B?Y3JqTlFRZzlsRThaV1lPa1FnWGZSc3NuQ1NIM1VTSHFJa1UyeFNETFA2alJx?=
 =?utf-8?B?YnVwMld1a1cvaVB6emxXMDBhODlMSVdPUDZ3OFcvbmZkbmN4TVRYaGp4bkRM?=
 =?utf-8?B?aWplTVNvcTFYVjZOZFBlUmRUOFlIZExoMXNWM0l4RWZjcFpuUkRYTzEwUkFZ?=
 =?utf-8?B?TEpXUmdJMG9RUnhKaWkvRUVQN05kamZydmlZcEVXRmtXYzVwalZjZXFxYTUx?=
 =?utf-8?B?ZUdReDFtQW10N0lzMHlrUmtuVnE4TVFCVnQrN2liNEtCbkRqUVhkdzdIZWpu?=
 =?utf-8?B?U1lmVEhiU3IzV3BnMnZkeTQ4QUQraXMrY0xzTVNJaWNsLzRDQlZpSmh0VHND?=
 =?utf-8?Q?qFVWFC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVV3UnF2a0xpUFNhMVFxSWs1dlpTR0RFd2QvSDd2Wmp4NkJYU3lhamdlWDNC?=
 =?utf-8?B?Tk1hbFlxZk8xbHQraXlOVmVJYlZJR2FXUURQSWZiaVlyN0hiTldTM3lma1F2?=
 =?utf-8?B?eUNRZkVXUFFsMzRucDNsSEt2Sk9wbjk4bi9hMU95MXhWUm9jNEVPUjlTUEs3?=
 =?utf-8?B?ZFBiek9sUTR1SmlBVXRQS0ZiNzhkcWMvd0R0TlFjTE15YlRXa2k0SEQ5cHlw?=
 =?utf-8?B?eDNIU1JwVGVmeXFEYVFkWEk2UmxmalhISkJFQTUwMlJ4bTY4ZzlVUDhOQnE1?=
 =?utf-8?B?aDk0UGNOWTMvMmJiM0JWVXpmRFBRWTNpRnoycTNCQlUycjRPNmRxQUZpNHJ6?=
 =?utf-8?B?bUlUaUpTejIvamI3WTlYYjFmMGNqR1NxZ29VUkNCNXA2NE5YODJheEJLaVRq?=
 =?utf-8?B?bDlNc1psbzBmN01lOEtZakM1U08vRVhwQmVCeXB0c2hzSkYxZmtmdnZ6UzMv?=
 =?utf-8?B?SFlHOE53dTlLN3BjbFhOL1Z4Q29pOVpuUTVJbG4zYyt1Z200Nm9tVUlmcHFJ?=
 =?utf-8?B?NStJT3VZN2lmUDlPVm4yeEN1RWdOZlAyc3VqUEVOSUFTTUhaTm9pTExvTy9I?=
 =?utf-8?B?VkZ6UmlPbFZzeGZSbXFQbU55RzI1ZWl1NC9mMXlDejNDaHJTZkpuWUI4VERh?=
 =?utf-8?B?YnRiVkJXU2tHTityZjl1ZTQ1OTltSEdRU2x5SkdFbVZWOHlhUHoyV25EcWt0?=
 =?utf-8?B?NEJyNjNiY3JObG85UWorQlhLaUVRNnFqSFl4MGQxYlBCY3JQZ1VpRmVXOGV0?=
 =?utf-8?B?c2ZDSk5qcHJOQkdFbExINzZzdG5Tak5NZUNmSVhOS1czOW9KK2JaUWJ0THJN?=
 =?utf-8?B?RS80MjlNb09kWWFvc01YQUtmMVBpWSt0Y1hUWStjbk1ma2plOTZrRXN3eUFB?=
 =?utf-8?B?U05iVTFLRzlIK09ScEpLM2t1NzhuNXBjVkl1djFaT1pTdzdzNVo0UW9zZ3cx?=
 =?utf-8?B?U2hOTVlweXpmTkxRZHZoNlgwNDdvQTlQS1l1Mmk1VEdVR3FoV0g5UVRBTWZV?=
 =?utf-8?B?LzJSRUp5d1UySHdPVzQrZ0dXV083c0ZiUFNsTTVwMUtycGtGaTlIajhiK3pK?=
 =?utf-8?B?aDR1UHlBeU9XMHVQd0xYVktoRy94ckxiakdPZVcvM0dNaE56aVdxVFBwZ2tL?=
 =?utf-8?B?R0V6MjZ1S0xJS010RFFVWFJ2ZitIem83Z2pOVmdsWGVKSUdFNlZad3NXM29I?=
 =?utf-8?B?ZStOaFk4VEZqUHNFY0NtZjdrWWJjZEExRDAzNG5OM2dNY1MzemlDQnFjK05O?=
 =?utf-8?B?NTVpQmxFV3NSK2F6dE1nNEdNcVlVNGFHaHdqSlRQdDFLOWh1amFOeDViSmwz?=
 =?utf-8?B?ZDVWSnFyRThzVmFDZHRjcFdjaE83TTFwc2p2dWN2Ry9qQ2pjMDB6b0hnREFT?=
 =?utf-8?B?aGlMMVhuN29QendUTXA0cURDeUovSnpnczVHbEVIK1NxMFpYVS93cE5vVXZz?=
 =?utf-8?B?Y2srVDdRTUhaZVQ1dkRZY3RMTFBjK0g0WEFZNUFjRFcxdWpXNURuSXlNNUto?=
 =?utf-8?B?dGpsMzZFSnIzTVFxVHlSRVJYYU5URG1wSmx2OGJXV1FabDU4RGR5SkNNajhK?=
 =?utf-8?B?eVN3NG4vdU9RajZUbElTOWtSc242S0ljcVh4aG8xS1lnSkttV3huRE12ekM1?=
 =?utf-8?B?TVNESXpON2Nwa1Qvc1VaYVJLY1FrUWxNdUlvWmd1RFRhbDJGLzlCTXZYbFk0?=
 =?utf-8?B?Qk1XVGNUejVjUzhURkNRc1BWZmEvVUZtUllOektOc0MvR2J2ZHRYcTd4dDhC?=
 =?utf-8?B?V3R1QStNSjI1Mm01UXZCcWp4d0I4V212MXJ0Q3NWSFVKWWU4eGtsQktpRU9i?=
 =?utf-8?B?RVVoY1FPUWVENVBEVnNIcWZvTnIxVWxjWk96c0FBWXdKbW01UlBiL1ZkQk5W?=
 =?utf-8?B?U3FQUDhtZGxXR25vMnlyYklvVzh3ZFllYkFEK3Bib3hjazl4MVUxenQrV2du?=
 =?utf-8?B?WVdqbWFUWUtMQmFyaWYyUFkvWitHL1BoSDRJVkZYZ0ZBRW1JTDhWdnFwZFlj?=
 =?utf-8?B?NU1ScHFuWnVUVzE1dGE5a1g4djdrMFhOdFBMbzgrcjV6RjZhVkkvWHhKelhn?=
 =?utf-8?B?cWYxTnJ2a1JSb01hTXJrb0gvUEkwbm91bTdsTVROT1I3WjdrV0xsZk0rdDdQ?=
 =?utf-8?B?bnFRVjZaa1U4a0phOVdaZlJmb0hKd2lkdmVqMG1vQXIybFZRbytUR0lXOTkw?=
 =?utf-8?B?NUQrb29WcWt5SE84dGhKazk1SVI2ajhLRDRQZkRnU3VCeVRaVGxDVDN0U0wv?=
 =?utf-8?B?WTBRa1NSSjF0QTQxSVNCOFhGR0IxUUI2cXYvZzJQaHU0a1BHaW84Y3pNaXV3?=
 =?utf-8?B?R3V2N0VzeTJIUjlQK0o1SHQ3UWxwL0F0TUZrTGV3d3pzVVlEeENWYTQvRUxi?=
 =?utf-8?Q?fystJns/hTcZALRU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b07f37-56b0-4b9b-f712-08de67d92961
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 12:45:53.8082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WBJy3sMMxPEhafVQRcUD9UD6sM7Mwmi/AU9WPiRLyLezXbWAAvSmVfoZbQ786z0Xp9JGAPDbkqNcIvpRMx2l1i5I6FZTPUy7Z8tpTJRYV6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4843
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1D97110EE95
X-Rspamd-Action: no action


On 2/9/2026 5:24 PM, Imre Deak wrote:
> On Mon, Feb 09, 2026 at 05:00:13PM +0530, Nautiyal, Ankit K wrote:
>> On 2/9/2026 3:39 PM, Imre Deak wrote:
>>> On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
>>>> On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
>>>>> On 2/9/2026 2:10 PM, Imre Deak wrote:
>>>>>> On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
>>>>>>> On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
>>>>>>>> On 2/6/2026 4:12 PM, Imre Deak wrote:
>>>>>>>>> The pipe BPP value shouldn't be set outside of the source's / sink's
>>>>>>>>> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
>>>>>>>>> value to 30 due to HDR.
>>>>>>>>>
>>>>>>>>> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
>>>>>>>>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>>>>>>> Cc: <stable@vger.kernel.org> # v6.18+
>>>>>>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>>>>>>> ---
>>>>>>>>>      drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>>>>>>>>      1 file changed, 12 insertions(+), 2 deletions(-)
>>>>>>>>>
>>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
>>>>>>>>> drm/i915/display/intel_dp.c
>>>>>>>>> index 2b8f43e211741..4d8f480cf803f 100644
>>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>>> @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>>>> *intel_dp,
>>>>>>>>>                         bool dsc,
>>>>>>>>>                         struct link_config_limits *limits)
>>>>>>>>>      {
>>>>>>>>> +    struct intel_display *display = to_intel_display(intel_dp);
>>>>>>>>>          bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>>>>>>>>>          struct intel_connector *connector =
>>>>>>>>>              to_intel_connector(conn_state->connector);
>>>>>>>>> @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>>>> *intel_dp,
>>>>>>>>>          limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>>>>>>>>>          limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>>>>>>>>> -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
>>>>>>>>> -                intel_dp_min_bpp(crtc_state->output_format);
>>>>>>>>> +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>>>>>>>>          if (is_mst) {
>>>>>>>>>              /*
>>>>>>>>>               * FIXME: If all the streams can't fit into the link with their
>>>>>>>>> @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
>>>>>>>>> intel_dp *intel_dp,
>>>>>>>>>                                  respect_downstream_limits);
>>>>>>>>>          }
>>>>>>>>> +    if (intel_dp_in_hdr_mode(conn_state)) {
>>>>>>>>> +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
>>>>>>>>> +            limits->pipe.min_bpp = 30;
>>>>>>>>> +        else
>>>>>>>>> +            drm_dbg_kms(display->drm,
>>>>>>>>> +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
>>>>>>>>> valid pipe bpp range (%d-%d)\n",
>>>>>>>>> +                    connector->base.base.id, connector->base.name,
>>>>>>>>> +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
>>>>>>>> pipe.max_bpp < 30 will be either due to the max_bpc property set to less
>>>>>>>> than 10, or perhaps when the panel itself does not support 10 bpc
>>>>>>>> (limited by EDID or VBT).
>>>>>>>> With these constraints doesn't make sense to enable HDR and send HDR
>>>>>>>> metadata.
>>>>>>>> However, as we see in some reported issues [1] [2], in practice some
>>>>>>>> compositor seems to enable HDR by default and with the hard limit set,
>>>>>>>> they report blankout.
>>>>>>>> So it does make sense to raise the min bpp limit only if its inside the
>>>>>>>> supported range.
>>>>>>>>
>>>>>>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>>>
>>>>>>>>
>>>>>>>> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
>>>>>>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
>>>>>>>> issues/5969#note_3248404
>>>>>>>>
>>>>>>> I am not sure if this patch would help with the above gitlabs. For example
>>>>>>> in case of #7052 pipe max bpp is 30 and the commit still fails.
>>>>>> It does fix though reported cases where the sink does not support 10 BPC
>>>>>> at all. Yes the monitor in #7052 is still a problem, since it supports
>>>>>> 10 BPC only with lower resolution, where the link BW would allow this
>>>>>> and he monitor doesn't have DSC either.
>>>>>>
>>>>>>> However, I need to look deeper.
>>>>>>>
>>>>>>> I am thinking of relaxing this restriction all together because the earlier
>>>>>>> assumption that a panel advertising HDR will support atleast 10bpc in all
>>>>>>> it's mode turns out to be false.
>>>>>>>
>>>>>>> Currently, I am inclined on the following policy.
>>>>>>>
>>>>>>> - If DSC is not available, fall back to normal bandwidth calculations and
>>>>>>> select the highest bpp the link can support. (Also preferred by Kwin)
>>>>>>>
>>>>>>> - If DSC is available, prefer falling back to DSC and attempt the highest
>>>>>>> bpp allowed by bandwidth constraints.
>>>>>> The patch does the above, except for not handling the case where the
>>>>>> monitor doesn't support DSC. The attach patch handles that too and so
>>>>>> fixes #7052 as well, are you ok with it?
>>>>> This should work since [1] did.
>>>> I think the sink / source support for 10 BPC should be still checked as
>>>> in this patch.
>>>>
>>>>> There is one more (theoritical) scenario that I think is still not covered.
>>>>> What happens in a case where 30bpp doesnot fit into DSC bandwidth?
>>>>> As I understand, the min bpp limit of 30bpp would become a bottle-neck even
>>>>> then?
>>>> No, the link BW requirement is determined by the link BPP, not the pipe
>>>> BPP for which the minimum is set. The link BPP in DSC mode can be
>>>> lowered below that, based on the sink's minimum compressed BPP support.
>>>> So in the fallback case, where 30 BPP uncompressed mode is not
>>>> supported by the sink due to a BW limit, DSC is used instead lowering
>>>> the compressed link BPP as required.
>>> Although, it's still possible that the sink wouldn't support the minimum
>>> pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP
>>> in DSC mode isn't actually needed, since the highest possible BPP will
>>> be selected there anyway. So I think the actual condition for setting
>>> pipe.min_bpp = 30 above should be:
>>>
>>>           if (intel_dp_in_hdr_mode(conn_state) &&
>>>               intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
>>>               !dsc) {
>>>               ...
>> Hmm makes sense.
>>
>> Perhaps we should also add a debug message right after pipe_bpp is finalized
>> (and before the full link config dump) to make it clear when HDR is selected
>> but the chosen input/pipe bpp ends up below 30 bpp.
>>
>> Something like below, in intel_dp_compute_link_for_joined_pipes() before the
>> link config dump:
>>
>> if (intel_dp_in_hdr_mode(conn_state) && pipe_config->pipe_bpp < 30)
>>          drm_dbg_kms(display->drm,
>>              "HDR mode selected but pipe bpp is limited to %d\n",
>>               pipe_config->pipe_bpp);
>>
>> This will help flag out the cases where HDR is enabled but the pipe can’t
>> reach 10bpc due to sink or bandwidth limits.
> Ok, can also debug print the connector's HDR mode, like
>
> 	DP lane count ... bpp input x compressed y HDR-sink yes/no ...
>
> at the end of intel_dp_compute_link_for_joined_pipes().


That sounds good. IMHO, let's just drop '-sink' and just have HDR yes/no 
(HDR-sink might imply HDR capability of the sink)


Regards,

Ankit

>
>>
>> Regards,
>>
>> Ankit
>>
>>>>> [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
>>>>>
>>>>>>> I am working on a patch for this and should be able to float something soon.
>>>>>>> Imre, if you agree with this policy, would you please wait for the patch.
>>>>>>> That should make it easier to send out fix for stable kernels.
>>>>>>>
>>>>>>> ==
>>>>>>> Chaitanya
>>>>>>>
>>>>>>>>> +    }
>>>>>>>>> +
>>>>>>>>>          if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
>>>>>>>>> limits))
>>>>>>>>>              return false;
