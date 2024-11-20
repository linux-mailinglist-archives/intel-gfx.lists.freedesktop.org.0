Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572A89D3C6B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 14:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7884C10E75E;
	Wed, 20 Nov 2024 13:15:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwGYS+WU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396A010E75E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732108547; x=1763644547;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=62J5vD/IHZJBXAN4i06GzEEJSrX+2oLZpU94/OU6dY4=;
 b=lwGYS+WUxciSQov2ePCVz9i7eyTMVoTMHkhWr6luer7vfMTuOh5TdmqI
 32nwnCnwRVugTPKp6XQc6BuCcBvkHUkI6BYUf9bcfuP4U7Cxn/aqL3llr
 oXV6BOjX88nBLdt1WimFoVyTxKWckADGrxbxtdp6fwUuDkM/rfbp1oaFb
 X6LPemdJHwE1ZfcF7WB6+ve8xr0QGQD7I1/PJrlrwpEg0ifCOgYQ28H8L
 Q/yiIQQ7oNaeLUO4x0NJT+kL4Wox9dwAfBbeGCgS2PxpTjPFSHAhs3qjR
 5+DUlUsuirxjR5KvnAfGUQOPP/hTFjdvd4EaHWVJvfSq9n843ISoUp2zW g==;
X-CSE-ConnectionGUID: J0dv30zlQH2ElVb1/v2pqg==
X-CSE-MsgGUID: OezPgFpzQdur+piHLrkwkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="19758960"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="19758960"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 05:15:47 -0800
X-CSE-ConnectionGUID: WaUDXB/TTU6JCMM6hoeEOA==
X-CSE-MsgGUID: 0RLnN8vSQpKmB/S13JUOjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="120763961"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 05:15:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 05:15:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 05:15:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 05:15:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7Klz4Oonx0awJyRdaaSxNkdkqAwHbQtg3aZRPygNOaNSSkUkK+yY3R5AEkk1fHI3rERxGfxcYCur8SQNVuiEd5Q8Uac5jZrGBykNIdf+VOKzmad8UdfHTYWW2IsZUCYgg9NioE971zRJ1HDr24thV3Vx4Rz+DtXXV25GlKZ9U1ZaOjNecV93CLnJALZ0ujLbHbJN1fiiQXeA+2Wkwi7WaNPoPR/u7ByB15uBHaL5mHT/b8OH/oFqNCXIWfoVc7h/NPgpMvvS+xqjp1UhfPksCd5zeXX+IY3zSjUs6XUn9dZRuud6WJpBDaCZH+Y/QzEoU9Jwmf2P3hWY8twu1tdhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJdnLmQ2NfX+zatpvtzkHOG3JnQhNs0uHxLPVR9r1xU=;
 b=PgkqQ11H5XS1WNfsb6UFIg3xbRlqU9IqpE/x52ssIPgb82kL2pm9WLLuES7zhgNQkdSIT5teUZm82MiEjxsiIR5be8suCOG+62IEaQr1LpaoHs8fqZrO3yrGed8R0V4+vnmyySlq3p/E7WeT/8zOSxgLx3WmRynxuF6CbrM0F6sRdgVojvwM6bteMhb/j7mTsrnyEd0oG2WVP27SpmLd856Hpk29Ib5bzFRCeUoyG+P/8w0Z3PrTLuNPI16zUIfiB8GVEhyRczWoskj5vuZiyxTQsKueOqKzbwt7BCttlt4x/c7bef4D3G5lNaBSSTo68erymEnGWGaH8t+uLLU1dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7936.namprd11.prod.outlook.com (2603:10b6:208:3dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 13:15:41 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 13:15:41 +0000
Date: Wed, 20 Nov 2024 13:15:32 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU=?=
 =?utf-8?Q?=3A?= ensure segment offset never exceeds allowed max (rev7)
Message-ID: <s5nbl24otktokpp3nw3oe5u3vw5o6umareckodutszbrgr4ddm@pqnxsfau5xdi>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
 <173200153857.197425.11690663238253377514@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173200153857.197425.11690663238253377514@b555e5b46a47>
X-ClientProxiedBy: ZR2P278CA0061.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7936:EE_
X-MS-Office365-Filtering-Correlation-Id: 526b53c9-fc0c-4fef-6684-08dd09656ebe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0czd2FGUmY4c1lsRDNoajREeExPdzV0ZkhNOWVrcC9ydGJZOFprK04rbU5U?=
 =?utf-8?B?b0pKTTlvanpDc21LVDhZdUNuQW4xZkJEbUJnbjQxbkNKcENkRS9Ea3BkNXpu?=
 =?utf-8?B?QkkxZmpXcFQ5Z01QVWxqUU5UT3U4c25rdVdDdkpqQlVka1UyTUNhcEFiQXZD?=
 =?utf-8?B?QmZaV1hzaTRnYTcyNWVJN1hmV3NITDBISzdVOEJrdjlUc01SRUd1QjVJaS8v?=
 =?utf-8?B?blkzVm9iaGl2clRUTG5XMUhHQTkwZ0YyRm1FVll2bFhKUHNJK3NIcEdVbzU4?=
 =?utf-8?B?Yi9HUDdOOWw2elVkeXlVcDNuWFp5ek43Sit1KzVOeUxaSEZGalQ3UVRFOTdw?=
 =?utf-8?B?cVo1MWY0aHBjME40MXFWUUtNd1FHR3FhUTNxNEJEZlZpVnU0dFE1dElwdUNF?=
 =?utf-8?B?ZTQwMVNsSWtIYnlWcG1WNHlZL2FCNXcyWm1oTUM5QjlieThkcFdCSmVCVTNX?=
 =?utf-8?B?dnZMTDRIUEVmWEtCWk1kQ2pNdlp2bno1M0V6VUxTSTVId0lsbGNDZTNkRWs4?=
 =?utf-8?B?Z2tWcjlqRTM2Q0Mzb1hqcjdlc1d0TGRxUUNFZ1VLV1pWMThZNlYxajVBV2M2?=
 =?utf-8?B?TFlNa2cvMXVpSGhFVUZ0cVhZeURYZUwrTXQ2STJWT2R4cHdCWUVUa2MyblY0?=
 =?utf-8?B?SmhlTVo5ckdaK2h2cVM2SVNOVU5NdlZCQmdZWGVZeFJ3R0x5d3BDWUh0djBQ?=
 =?utf-8?B?QTV5anNZZmQrZ2Q2YytLQ3BRVGphSnVQdGlnVEc1ZFQ4TmpZaitVSzRvb0JW?=
 =?utf-8?B?dXgxV3RvRXlXM3U3RE9LSVVXQmh4NWpPUG9JandaTU5Nb1VrMFgzajlhWE9N?=
 =?utf-8?B?YjkrNEpieW1DeXREamdGRzBGa2FDOVd5VVFTTDVMWDQwMGVGaHhzQmNWVUdU?=
 =?utf-8?B?UlZyb0o2TEVFRXVpRHBNd1VQZkRON2JPSWR6em92amVkVDh5WS83ZmtCMEpF?=
 =?utf-8?B?eVd4TGhMNy9Gd0d6U052WUtxMkVPK2JPdit1cHQyck04VCtEYlBGdkswSytN?=
 =?utf-8?B?V080cGtvVnpPTDkwaTl3YTNUaTlrVjhmWjBtZUdPSjVCN0FHdjlrSHlzZWJp?=
 =?utf-8?B?ajVxMnVLcWRlN1M3aDVrUE5zWVRRa1R5OU9CYVV6WmI0dElLRzRHZDJvVzVi?=
 =?utf-8?B?bFA1emlIb0ZhS3d4VkowY0ZmTm5zcjNobU1HQzREazhwVkRicVcwTndKMTFi?=
 =?utf-8?B?NzRNamZqdHllVTRBYXdGQkE0empRTUVYMmVMVWF1bXhYMkpxMk9hOW9ZVm5R?=
 =?utf-8?B?VU5YRUVFNThtVGEwNStkbzU1a3RGTDdLUUpFMG5tRWxIR08zdVRUTURDM25h?=
 =?utf-8?B?NVZNVUh0cm8rV2RLRVo2NTBKTE1RLy9XSmRUZmFWaDhQMVRJYXBWSXVJRHNU?=
 =?utf-8?B?Y2RaTzdoeDQzY3JGSlF0UStRYXk1ZTBLYUtLKzJoRWhrZmxyUXZKZjBiN1Nj?=
 =?utf-8?B?bFpYeGZCTmVzVFF2REVSSXF0OU5EWjdqcFA5T3pEZ05DZmtRQ0RvT3dpR1FH?=
 =?utf-8?B?T3haMFlZYlVuZU5TOVE0TGFZd1NPN2ZZOTZFYUxHUmczVVRCNUQzVlFBRUhP?=
 =?utf-8?B?UUFFNHFFbHFwd2s5ZFJWcTRERmNUUVBzb0FubXFvUUZYSFdVbmIzQ0o5WWhX?=
 =?utf-8?B?QlBZR3UxWDhKUWFMRE5pSGxBRDFmOHNQTTFCRytpZ1dxSS9ndG1NTTFIYUlS?=
 =?utf-8?B?eDJVQ1dsWjlscUIzTUh6WWEwTHRFZXZvVWFsYUtVTEM1Wk9EbVhJcTZ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azlSNUowaWU4STNQeThjNDNZZ2hPUXRtWE9XSkw3VEhsT1VUQVZPeUpqcU54?=
 =?utf-8?B?Ui9pTmRBQ3F5LzdnaHdMd2x3alVEeXowTUlRcEVDM1Q5OUhiU09xa3VIZC9x?=
 =?utf-8?B?ZVNHTG1zQXEyTkM1bnhqcThIYWxqeTNMRzFqQUtydGpaNC9VYU0rWC8rL3VB?=
 =?utf-8?B?R2FGajZ4YXBKOGJKQkdIL2x2RnFHZ1djbk00cUhPd1Ntd2dTc1BkOHkwNXZZ?=
 =?utf-8?B?QzVCckZEYkdyR1ZDVzEzbnBWait3MFNBMC9RK0dwazFVWlBaaTB5eDlGNkxw?=
 =?utf-8?B?VnJkMkVHTWdCWTMzL1NLeW5YbDZKZkRiL2Y3SFBhdmk1R1M0bkwwTkRjMHRK?=
 =?utf-8?B?eFZCcklNUnRPRjJxVCtUb1psQUpYYjZNbGc3V0xtSzEyVFpQM0FTRGRmK2Fk?=
 =?utf-8?B?b0hDVXI4SnhlOGRjMjA2cExKa0ZTZTJVMmZ0ZlkxSHQrYTlnaHhMcDNtUnNs?=
 =?utf-8?B?YXNweVR5QVRmdGZTei92NVlRTXozOEtuYlV5L3pjNllZd1grNnBkYTRLOUlW?=
 =?utf-8?B?MytQcktsUE9aWEdWblh3dmtrOTUxRkRIV1R3N3dVVnNheXpoMlFUdExwVEtY?=
 =?utf-8?B?WHlmZXZ4MWNPQ0xHUFRSQWJNeUo4cTdtSUpUZ3VoekhiTDlNb2Z4MFhoY0V0?=
 =?utf-8?B?VnBXY08rQms5TERQZi81UG5uZUxjamRQWWliOVNJc3d5TDdBTjBicTdsYkdX?=
 =?utf-8?B?bzd4SktLSnltaWRzck1Zb2hNSWJicjBzS1hINXhuR3I2dFA0SlJnQXhHbVlH?=
 =?utf-8?B?MkN6Z3o0OTN4dis3K3pkOU1ra1dPTGI5SlFjeXZJZmRYcWpXcStVV1k3NHVI?=
 =?utf-8?B?V3ZCRzhWMktTZjc3S1BKenlTNFNtbDBudnpBOUt1WHRZL3IxZDVzaFRRMTA4?=
 =?utf-8?B?V0pRS0JKdTdPbE1vOGkwcTAxaWhzb0tZdXN1Q2kxN3BJNVRrUG9PSHFlU1pH?=
 =?utf-8?B?ZDZ6OGFNb211MEJwRXVNaVI4R3FyYXlBRlJHZGVoMmRndE5PTWtaMGx1ay91?=
 =?utf-8?B?MnRkanJiaGhkMzFlb05NTVhXYk1GRXNuKzErWFhORlp1ak9WQjMxMG1zY28y?=
 =?utf-8?B?N1Y1UWkvd0UyR2swdEZaTlpYMlZvZ2VzZ011dDYrRmVQeVNpNHI3b1ZUMFk2?=
 =?utf-8?B?ajd4VjFmUXFNM0RwaitYeHNYL3A5dXJFbEhxL0hSTTlWZ01VWG4wM2lhYkh4?=
 =?utf-8?B?MFJBYTkzeFIrang3NDZjOHFyenVzaUhEZkNoQnFRVU1CckdwS3F6WEg4MlZz?=
 =?utf-8?B?TXVKK2RBbi95U0ZSd1RqRnhTSUdsa1FFTGI1SW04SGNZTkhwMEJHaWtWSnBC?=
 =?utf-8?B?SUtNN0FxcWM4dllSU0pyakN6OXFrdlROWStwckdNajVSdzNWcFYwdkorallJ?=
 =?utf-8?B?MEt4eU9IMjU0OFRhejFTeUUwWUhjM1Q2UjJHbFM4RzdEOTh1b1dvcEZqRHFn?=
 =?utf-8?B?WTRIQXZTeDlkUGprWlJvNnVvY1BDZ0laVDM1SXJQUWFoblNyWHdHYm9ZcFRB?=
 =?utf-8?B?TEZ5dWpXMWdPUlZyUUMzYzBwTWNEbHFKQ3NRMzk2N1kwK1pIZUl5T0tXQWJR?=
 =?utf-8?B?MzdYL1l6UWNvaHFzS2IwWjhGODFqQ2NiYWVSdkZ2WHNUZUJKcjdWWXlWZVdV?=
 =?utf-8?B?VXVoUW1aMEZzaUl2SlhMcCtRV0Z6RHFVWHdFTDFQZlVUK01VUThXa29vTFRs?=
 =?utf-8?B?SEtxMitpY0I1Wk9PWmo2L3Fqb1hLek5FOXhkaU01c3BWaDZodU5KZjhOYng5?=
 =?utf-8?B?U1lycnRVVXlPZmdjUnZBU1lvVDhBNmphMmpGVG8weTRDWFZpSEFoNGxqUXd2?=
 =?utf-8?B?R1VjZ3lhT1pONHhaTFFGeXlEY3Z2Tm9ObjBuVGhpNGRvOHU3NDAzOWJrVEdZ?=
 =?utf-8?B?bWFSNFZxWDM3M3BSNmpoeWdTaklScFVhZ1F5QXdXWUpRaTJVbnltd1BCeDVs?=
 =?utf-8?B?NzRoanF3QzB0L0tiZDBqdnZZK0tnMHFWNHhOQWkwMndxbHUyKzgzRWxrVHB5?=
 =?utf-8?B?QVVxSndlVlI0aFg2SU5VYUJoZWhwSHg2VkMvZ25oODE0dndjYWcxb1B6eGJh?=
 =?utf-8?B?WjF2TkJQRklhK1IrNFBIa0FQcFdMZUNnOWx1bjNDUlh1cnhSZ0tMbjkvTTVS?=
 =?utf-8?B?bUNNNjhkWWt5OTdEWnJoQWNxeFZKVWpwUUhISHhnMnh3RVowRHJKYUNHYjFl?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 526b53c9-fc0c-4fef-6684-08dd09656ebe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 13:15:41.2258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HcOz8ThksLZHwWMubwLNLtaLHK5HN//PHjXbUKSZSDZ6GnDEIILB54acx9IVIlL6L84XXGJl1sKYsidF1l/QA65CKg9ZQQWLXvBVH85rPSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7936
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

On 2024-11-19 at 07:32:18 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: ensure segment offset never exceeds allowed max (rev7)
> URL   : https://patchwork.freedesktop.org/series/140374/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15717 -> Patchwork_140374v7
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140374v7 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140374v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/index.html
> 
> Participating hosts (46 -> 45)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140374v7:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6:
>     - {bat-mtlp-9}:       [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html
> 
>   
These issues do not appear in local testing and have not been detected
on v4 of the patch (the code has not changed since then). I am going to
retrigger the tests.

Krzysztof

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140374v7 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_tiled_blits@basic:
>     - fi-pnv-d510:        [PASS][5] -> [SKIP][6] +2 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/fi-pnv-d510/igt@gem_tiled_blits@basic.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/fi-pnv-d510/igt@gem_tiled_blits@basic.html
> 
>   * igt@i915_module_load@load:
>     - bat-adlp-6:         [PASS][7] -> [DMESG-WARN][8] ([i915#12253])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-adlp-6/igt@i915_module_load@load.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-adlp-6/igt@i915_module_load@load.html
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][9] -> [ABORT][10] ([i915#12829])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-arlh-3/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-arlh-3/igt@i915_selftest@live.html
>     - bat-mtlp-6:         [PASS][11] -> [ABORT][12] ([i915#12829])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-mtlp-6/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-mtlp-6/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][13] -> [ABORT][14] ([i915#12061])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-arlh-3/igt@i915_selftest@live@workarounds.html
> 
>   * igt@runner@aborted:
>     - bat-dg2-13:         NOTRUN -> [FAIL][15] ([i915#12658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-dg2-13/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_auth@basic-auth:
>     - bat-twl-1:          [DMESG-WARN][16] ([i915#1982]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-twl-1/igt@core_auth@basic-auth.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-twl-1/igt@core_auth@basic-auth.html
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][18] ([i915#12904]) -> [PASS][19] +1 other test pass
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-apl-1/igt@dmabuf@all-tests.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@dmabuf@all-tests@dma_fence_chain:
>     - fi-bsw-nick:        [INCOMPLETE][20] ([i915#12904]) -> [PASS][21] +1 other test pass
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [FAIL][22] ([i915#12903]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-2:         [ABORT][24] ([i915#12829]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-arlh-2/igt@i915_selftest@live.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-arlh-2/igt@i915_selftest@live.html
>     - {bat-mtlp-9}:       [ABORT][26] ([i915#12829]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-mtlp-9/igt@i915_selftest@live.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-mtlp-9/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-2:         [ABORT][28] ([i915#12061]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-arlh-2/igt@i915_selftest@live@workarounds.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-arlh-2/igt@i915_selftest@live@workarounds.html
>     - {bat-mtlp-9}:       [ABORT][30] -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
>     - fi-cfl-8109u:       [DMESG-WARN][32] -> [PASS][33] +2 other tests pass
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15717/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
>   [i915#12658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12658
>   [i915#12829]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15717 -> Patchwork_140374v7
> 
>   CI-20190529: 20190529
>   CI_DRM_15717: 1fe9a6cc7d136c9a34c47ccd6ee5a2b7d02c0bd6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8115: 4942fc57c20f9cb2195e70991c4e4df03dd3db21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140374v7: 1fe9a6cc7d136c9a34c47ccd6ee5a2b7d02c0bd6 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v7/index.html
