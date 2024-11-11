Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156E69C3797
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 05:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B60810E41D;
	Mon, 11 Nov 2024 04:43:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQQjNWSe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A334510E41A;
 Mon, 11 Nov 2024 04:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731300193; x=1762836193;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UbNgVhHM1uDf6zwbmyCXXx0TiFtSIOnRdJdcrPjA6+g=;
 b=RQQjNWSezSAbEjq3Z5Yq3Y1Od9A+hjC9SCKTI0H24KGZdTB4BQCU/8vK
 PvymEOO0MNCHunYkynTTJ7eeEhxASvIbx0WE6Shj0Lk622z3h+X7ONbMR
 zJitX+v4XKPuw9NDsC7lmRSOkUEinwX9E/z2KeSlS6d9+Ngo7znUhwYI8
 EvLsj2zDEyZIMDNJyP9t2VJU/+q+Qr+b1wYIyt1Pxywes30DBnof08/bg
 oT68eSzk4ADQPATb1Vd8xpZCVZLSnb0V6YJcI2aSBXg6WmZqAri8dPSs+
 TQH/KB4D3Y9TvnYQvVKwy3kSG1SyS0x/9/liSXHHN+rpyCG97RCAq0Zpt w==;
X-CSE-ConnectionGUID: A4oFXMH4TVCO86CLkPqXyg==
X-CSE-MsgGUID: hJIX+p58Rd6SC01tkUujQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42193714"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42193714"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2024 20:43:13 -0800
X-CSE-ConnectionGUID: karOdeOUQMu9CaingpM3Zg==
X-CSE-MsgGUID: Nx2D3KsLQOSsJg5NS3QRrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86685727"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2024 20:43:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 10 Nov 2024 20:43:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 10 Nov 2024 20:43:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 10 Nov 2024 20:43:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jf5xOJneodtrwvs3uqHA+9BJqGe2LYINIKxpo2thWHJTOgrudObNfFMwOF8KnHLldTNajvLihk6UTzdZb+/i4P33PG8+FHt5B44o0TaUgk4jiP9PcnWglhZANBOagrCFP8n2Gcx1EOKzaV0y1x/2KvIt16rZ27fsEmBSY1otebADxLxfQqBkypSwH8V5xgc4x+iMMQW6QkuYoWpV5Gf63uqZGtwskfpIXeDCIPqQVGkIAi6eaL+rUqEK+MZ2OCluPypW00SxL40Bn6FQV+kuVxK9vyxYLsMNlBVO4QvEN9Ggko+WbPwl5ODm6FqZlk4PvvjY17YhjiSrHyHN5ERshw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KpswkklhozulUCdcSoEO8kvY2C/dxYf7KxotUoXDrsE=;
 b=DwLgmn2k6n5jMyb11k3SMoJuYpTi1iYQQPMYFn/daKSM46dA0qvI8ANrHLygGPiD2DZNRT+oSPc+yngtdE0QKrudpZ7smaswHiWxOBdwWZFIum5MRJX3n5EuvqBSAqrQnVYoooC/sn+ydQlIyM4ZQTH8BA6z+A3ciWzkK2KBkMNoKLU3bBwjy9RXWilQ6GKunVmzqxzGMwkzER3WA8Q0BFWHKAbFC9IB9vGmtFJksS65qYt1MeC4R08fAMPZFHcVoiSEWlpnwg80Tgr+cYNax99AKWsKGqSDQZ7WJOOLwr8b/Wg4pgfOJdqvScf/uRnQeuxtj3nBUI/huLg0V+n9yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by DS0PR11MB6495.namprd11.prod.outlook.com (2603:10b6:8:c1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.26; Mon, 11 Nov
 2024 04:43:09 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 04:43:09 +0000
Message-ID: <c4629355-0667-40b4-84b8-e637ef495f8b@intel.com>
Date: Mon, 11 Nov 2024 10:13:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i914/watermark: Modify latency programmed into
 PKG_C_LATENCY
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 <sai.teja.pottumuttu@intel.com>
References: <20241107113240.887316-1-suraj.kandpal@intel.com>
 <5b6a3491-cde8-40f3-9e58-b6e3a5825fc4@intel.com>
 <SN7PR11MB6750006AB8283B3F9A3BC9C8E3582@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <SN7PR11MB6750006AB8283B3F9A3BC9C8E3582@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::19) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|DS0PR11MB6495:EE_
X-MS-Office365-Filtering-Correlation-Id: 337767e0-aff6-4940-885d-08dd020b5714
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDhsUjc0SGNuRVF6ZDE2OVhBL3p5NEV6SE5pakp2MngzMWhiOHBKNW03WUNz?=
 =?utf-8?B?UzJzeXRDUkMzalJWTzk1eGV6cXc3dGtNYnZQYkFtQll4SGkwWUlyeW1NOE5n?=
 =?utf-8?B?dXBVa3owWGVxdExMdFA1ZFltcjduZml1cXcvM1RhZnBxNFZJV1BsT3ZHZ01u?=
 =?utf-8?B?Y2l0azJacE9CT3pYeE5qQ3Nrczc2Q1ZSNkVoNmdJeWIrcWM4amdtb0ZuVEhj?=
 =?utf-8?B?V0ZMZWFLVFZTcS9lWWdWVCt0WDZGc01EVHppM1VrZ29iZy8rWGNTazgrYVJG?=
 =?utf-8?B?WjIrd2o4VmIxenoyZEtiQmJlSkU5TTFmdFRVV3VpTHErMDdxMTBPeU52VG9q?=
 =?utf-8?B?SHJNL0hHSlVFTTF1U2NkWEN4SCtrcmNERW1neGs2dUFSUkFmTDRXbkRQQnNh?=
 =?utf-8?B?QkRYY0dQU2M1Y3hyU2xxYlo4ZEVlaHR6TDdweVFEM2NoSk1adE9xS2JPUjN0?=
 =?utf-8?B?RmtRN2xzWDV3K0NWbWNNY2VMVUpuano3VjR0ei9GbVphQ001SXgwdmRzMUVu?=
 =?utf-8?B?MjdCaFpNSDhQZ1ZpY1NsQkFHdmdQck5pb240QzQ0aFZNK29zdWRlYWNLVTFX?=
 =?utf-8?B?eXVZaVFYMHpOdjdPZzFyZFc2b2FJR2dHZm5FUjQ3cWE2dGNXM2JJeW5Gelh3?=
 =?utf-8?B?eVRJZU51V0VMWS9hdjhxVHhoaklXYW4wSGswclpXR2NiNkRXYm1kZ2dTTjhG?=
 =?utf-8?B?SHhpSEZGcU5TWGluNDdDZldjTzFxelNwOVhmYy9LZFNKZ243bXpMSVZxVzBI?=
 =?utf-8?B?R1RlTU5VR1VMR0xVUWIxM0NvWlhPQTVZSlVVMW9ORkNoRXhBOWYzUzBYK2Zs?=
 =?utf-8?B?SitLcXpjVCtIQnBUVG9GeTFXa3N4eGhIOFhSL1JRR29RaTNsei92WVJ5aUg4?=
 =?utf-8?B?OWFPN1VyV2FRM3VKL3dYZzhNaVF2dVNYK1N1K0lrZnk2TDdIRklOdk8zT3h4?=
 =?utf-8?B?Q1lzTmhJT0ZOcEFZNENJNGs1QnNkekNXL25rZUZRTVZxWGlHeTJCZmUyOEVy?=
 =?utf-8?B?eFdQQ1lvUlJueEFDSlI0VFZZUUhNbmUwWWRnNFFaRy9WQTBkMmhzazFoSjdx?=
 =?utf-8?B?QThZeW9sak1hRDU5eTFBZEtKSklyMGRMR05sK3BOYjZ6QUN6eDRHRVB2ek4w?=
 =?utf-8?B?S29oemJBVWc5QjBtQ0thc3hIWTZMMWpBTDVNNEpLdzhDdWY0cFp0Si9ZZ0JJ?=
 =?utf-8?B?aGRkRlFjTTlMNWx0VWk2MlJUZk84T0pqM1Y3WWxka2pUNHRPclZIbG1wWkdp?=
 =?utf-8?B?cDZHMXJhRU80RG5OTWpybjhrdUlKUHI5c2FEbHh2SE9yK1d6M29BdkVHbHlU?=
 =?utf-8?B?Wnd0Vml0RXAwdFJqNkJnb1luRjhYZDFCU1QxWExaRHRXWjBLSHZVeitKMDhi?=
 =?utf-8?B?NXdEbjM5M1o2dSs5N25yTW5KRXFJOTBMMWFNeXVzbFpNTUx0Q3lPWGxaaGFi?=
 =?utf-8?B?bUxsc0NJalR5bnBWMUFGbUo1bWJEUEQyeHdoaEV1eUdHRW5KN0JaSXpBTmNL?=
 =?utf-8?B?M3NCS0pKQmVBc25vQVdVQ0YybnFydmQxRUxqcm1kdkVLdFpkbWVFbHJVS3J6?=
 =?utf-8?B?NkRLM3NvVC9DM1lFQ0dpM2xZdHl0TEZBcUNkU0JHYTByMnZTM05xZDRhZzZ6?=
 =?utf-8?B?UlcwYTdBNmVDdzM5ZHk4blRiMjdrQXI2MFVrcHdYMFg3ZWhvZTRONkc4d3A4?=
 =?utf-8?Q?NtPklZWXVwU/JTyG+zgB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0Y2VmVkME5YU3ZXNytJZnl3bm96MnZBT3M4NkU5RTc2M1RFeGlYb1dHQWlm?=
 =?utf-8?B?M1p2QStCb1dvUTNLZHhkUmFjZDE4aFRNbWJIZnQzeXJyN2xodm8ybW9WME5o?=
 =?utf-8?B?VEF2UlZ4THN3aHUyUVVYTjJzSG5IWUY1cjhqTlozVGNucXlyV3dDSUZ1Y1RN?=
 =?utf-8?B?RU5aeVZ4SWZxeU1qR0lsVWt5Y1JIa1puR0g0OHM5RmNlcW80MnROREhWOWVN?=
 =?utf-8?B?bDBZTXZuSmFURU9vVHQrMWg5OThSVUlGOS91M09jZkY3NDNsYnFNVXlNMWto?=
 =?utf-8?B?V0NKNlk0THFMZk5jMm9ibGw4MEZvQ09ucjhZaTU2UW5WQStEdG1nb3R6TmRj?=
 =?utf-8?B?VjVFTGxwZDV4d2prcUhpTWJvMmJONlcwTXdoaWQzK2dGL3FINGlpVG92NGZh?=
 =?utf-8?B?cC9xTkJnVVlGK3VqZGgrUzJzSXE5M0ZuNmUyRENQbXcrd0dOTjB0aDU5ZjVH?=
 =?utf-8?B?UlVLbWhDSzJDb080dGx5cDJwYzVJaVRpdXRzOHRQQm9CZzRPUmZGWGFIY29w?=
 =?utf-8?B?cjR0SjE2SUFUdER1alljM3NUNEtPUXhmdkFoUmE0aVIyalUwRjR5U01melhy?=
 =?utf-8?B?L250Y3Z2dGhpQytvSG9wU2p4ZDFmRkFFcjlPVlhQSG80Y2FkaUpwM0FxK2c0?=
 =?utf-8?B?ODYwd3BBYVFxY2F3ZGdwRXNSeUhrdHMyS3pmU1hoV2xoR204MXhwYlpOVEtT?=
 =?utf-8?B?TkdGZWRXTGNEMVdVRXJEZTE4YXl5TjhqUWFmS1dpZm4vdGFrc25QQkpZck1i?=
 =?utf-8?B?OXpmVjhESWRUbk4zQ0F2M0VDZDZPYmdTUkZjSGdvcW9aRDg0Q0t1d0lCRXpT?=
 =?utf-8?B?a3RrRE41UUdkSnhSWE5Ca3RGTW1qbnZzM0VVOGt5TnN6NHR5Y3JnMFR3UXBu?=
 =?utf-8?B?RU0zQWY3dkVYM3dYSmJsSGZEVzJsNDVTNUpacVAvc1RaaWJVUlBCRWdyRXEz?=
 =?utf-8?B?eXdXNDdOU3NyeFhOV0g4ajZEdThCTWVEOXVCS1pWejc1amR5UG1mc00yVXFq?=
 =?utf-8?B?eS9HSnhFb2ZjY3g0aGJTMENHTHNkd0tBK1hBV0lNYjZPNDdyeEdTcW53Y1Jj?=
 =?utf-8?B?SDZyeFNCb1hZT0ZvNXF0eThlcXNNMkV6OWt3ZTRkZzl6NDFmUEJPT3ZhZ3Nu?=
 =?utf-8?B?c05CT3VIWkwxOWdqVFBQZkRRaXQ4MXhjU3RCcWNNSEo4cWtRZkRLZUUweTJu?=
 =?utf-8?B?eW9JYzE3NnU1STd4S1lNOXFjOVhqTjF5RnZ6M3UrVHRJK3g1TWZ2eVA1M1ZK?=
 =?utf-8?B?NnBnWTE2KzlxaitDMGw0WTJqaTBPUmxsbzF0MUVNaEpFWGJzS1o5anRUV1Bu?=
 =?utf-8?B?bGtXbjJrK3ZEblEvMHUzaGRqY2R2dWpmaTBGeWRPK2hVaGNYZkN1QXZEYVpj?=
 =?utf-8?B?MSt5R1RIRmFWbjV2R2c1eDFadk9LTGFJVUlkN0NRaW9rTlBIL2ZGNUlQSSt1?=
 =?utf-8?B?bXBqanBESGJwSFRIMGgxMjdZREo3ZDRwejFpQm9TZ0o1emZtaytSL1NTdG8v?=
 =?utf-8?B?ejNIR0ptWll1OHkwOW4zWWhiNTFRdEtCRm1UdmZoeXJ2Mis4Z2IrRTJMZ1ha?=
 =?utf-8?B?TUR3Y2p1akNubm9jR0YyMFJhTERPT3ZScG96UThyYlVneVNsN3NTbE5BTUJt?=
 =?utf-8?B?TG1HY1AwVlQ2REJUSnBUT29DS25FeXRKS2x3UjdhTEdoajl3czZFcU94cnNN?=
 =?utf-8?B?a0wwUE4wbk9oQjhUaGNoeGtaaUpEamtJZWs1VjNBdWhLeWU0NnNDS3B2NzJZ?=
 =?utf-8?B?Wms0SXNZdjRuQ2tLSFhUYStXK0lEaE9penFxYVRTUUlMd3BSdHAwZkIrYmoy?=
 =?utf-8?B?TThXQXYrK01HU1M5OVVueHdteUt3K3RkRHdVVnZHc2RTYzFNM2JMWXdWUWUx?=
 =?utf-8?B?b1hJVDZmV1JBYk8zblpXUmhwY09JMGVCb3QwRnRLelhMS2RhR1hKWVFNMUpM?=
 =?utf-8?B?L3R0ODB5NitabVV2QnBrcTFEUU5CWjZ0cFA1bFRHenBrWnJmZk5iaXIvK2pY?=
 =?utf-8?B?UUxZNC9RcFB0bnVRcmdTZFFkM09jRE5DSndZbWhYdlZDNkRkelhvWFRtalBT?=
 =?utf-8?B?NlUxMzRmMHZpRXEvOFhlZEJtck5oRVA1dmtHNkF4MGVZaWQzRXRxbmtZejhI?=
 =?utf-8?B?OEMyZVEwSDFkbFlKV0ZBNlVSU2Z4SFFpREtXYnc4YkZ1VlZ5NVNKTDdkbFo0?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 337767e0-aff6-4940-885d-08dd020b5714
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 04:43:08.8520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z5F7B5yGpl95o5Z6ErqpR0EyeFxOKsDQ82t0zUZonq+oBWSkEFzl0hhdas1PIzO+mgnkbxTYHa9LUoES10KyIBGmO+ShmdNSQkerswmSyLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6495
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

On 11-11-2024 08:49, Kandpal, Suraj wrote:
> Hi Teja,
> 
> I have revised this patch based on your feedback but please don’t reply/ 
> comment on patch series in the below format we don’t really support it 
> this also makes the subsequent replies to you comment come in the same 
> format. Please make sure you use the option to include the original 
> message prefixed with a “>” instead of a space.

Hi Suraj,

Thanks for pointing it out. Sorry for the wrong format. I am not really
sure how did it come in that format for this patch as my other reviews
went in with the ">" prefix only.

Thanks for the v2, I will take a look.

For others reference, leaving a link to v2 here (as its a different 
series now): https://patchwork.freedesktop.org/series/141091/

Regards,
Sai Teja

> 
> Regards,
> Suraj Kandpal
> 
> *From:*Pottumuttu, Sai Teja <sai.teja.pottumuttu@intel.com>
> *Sent:* Friday, November 8, 2024 12:20 PM
> *To:* Kandpal, Suraj <suraj.kandpal@intel.com>; intel- 
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> *Cc:* Govindapillai, Vinod <vinod.govindapillai@intel.com>
> *Subject:* Re: [PATCH] drm/i914/watermark: Modify latency programmed 
> into PKG_C_LATENCY
> 
> On 07-11-2024 17:02, Suraj Kandpal wrote:
> 
>     Increase the latency programmed into PKG_C_LATENCY latency to be
> 
>     a multiple of line time which is written into WM_LINETIME.
> 
> The commit subject prefix should be drm/i915/watermark (its i914 currently)
> 
>     WA: 22020299601
> 
>     Signed-off-by: Suraj Kandpal<suraj.kandpal@intel.com> <mailto:suraj.kandpal@intel.com>
> 
>     ---
> 
>       drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
> 
>       1 file changed, 18 insertions(+), 8 deletions(-)
> 
>     diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> 
>     index d3bbf335c749..856b20a683fd 100644
> 
>     --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> 
>     +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> 
>     @@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
> 
>        * Program PKG_C_LATENCY Added Wake Time = 0
> 
>        */
> 
>       static void
> 
>     -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
> 
>     +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> 
>     +                         bool enable_dpkgc,
> 
>     +                         u32 max_linetime)
> 
> Nit: This ^ argument can fit in the line before.
> 
>       {
> 
>     -       u32 max_latency = 0;
> 
>     +       u32 adjusted_latency = 0;
> 
>              u32 clear = 0, val = 0;
> 
>              u32 added_wake_time = 0;
> 
>       
> 
>     @@ -2858,18 +2860,23 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
> 
>                      return;
> 
>       
> 
>              if (enable_dpkgc) {
> 
>     -               max_latency = skl_watermark_max_latency(i915, 1);
> 
>     -               if (max_latency == 0)
> 
>     -                       max_latency = LNL_PKG_C_LATENCY_MASK;
> 
>     +               adjusted_latency = skl_watermark_max_latency(i915, 1);
> 
>     +               if (adjusted_latency == 0)
> 
>     +                       adjusted_latency = LNL_PKG_C_LATENCY_MASK;
> 
>     +
> 
>     +               /* Wa_22020299601 */
> 
>     +               if (IS_DISPLAY_VERx100(i915, 2000, 3000))
> 
> This wa is applicable only to IP versions 2000 and 3000. So, shouldn't 
> we be limiting this to only those IP versions instead of the full range?
> 
>     +                       adjusted_latency = max_linetime *
> 
>     +                        DIV_ROUND_UP(adjusted_latency, max_linetime);
> 
>                      added_wake_time = DSB_EXE_TIME +
> 
>                              i915->display.sagv.block_time_us;
> 
>              } else {
> 
>     -               max_latency = LNL_PKG_C_LATENCY_MASK;
> 
>     +               adjusted_latency = LNL_PKG_C_LATENCY_MASK;
> 
>                      added_wake_time = 0;
> 
>              }
> 
>       
> 
>              clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
> 
>     -       val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> 
>     +       val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
> 
>              val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
> 
>       
> 
>              intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> 
>     @@ -2882,6 +2889,7 @@ skl_compute_wm(struct intel_atomic_state *state)
> 
>              struct intel_crtc_state __maybe_unused *new_crtc_state;
> 
>              int ret, i;
> 
>              bool enable_dpkgc = false;
> 
>     +       u32 max_linetime;
> 
> max_linetime should be initialized to 0 I believe so that the max 
> comparison works correctly below.
> 
> Thanks
> Sai Teja
> 
>       
> 
>        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> 
>                      ret = skl_build_pipe_wm(state, crtc);
> 
>     @@ -2911,9 +2919,11 @@ skl_compute_wm(struct intel_atomic_state *state)
> 
>                           new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
> 
>                          !new_crtc_state->vrr.enable)
> 
>                              enable_dpkgc = true;
> 
>     +
> 
>     +               max_linetime = max(new_crtc_state->linetime, max_linetime);
> 
>              }
> 
>       
> 
>     - skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
> 
>     + skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc, max_linetime);
> 
>       
> 
>              skl_print_wm_changes(state);
> 
>       
> 
