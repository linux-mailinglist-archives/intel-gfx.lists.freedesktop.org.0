Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E57CCC496
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 15:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944D710E13A;
	Thu, 18 Dec 2025 14:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POjJRXnO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70FC610E13A;
 Thu, 18 Dec 2025 14:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766068348; x=1797604348;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BlbJkBT0xuMLJnsHTi9Xu9qlK4xTQtQf8ICQQAz1vIk=;
 b=POjJRXnOMn1WvuGkuk0KrjT5DTPRXLXohUSGCPMTLFx8TLAM9ApvzSTG
 B99C3+KVhHzbq0kOm9rqFvDCeM7P2R96fTMev5vNf3XbiLNY/5TxFdzL2
 p/twMyPHrHQH19oOzE4Zem26KPdJtrrX6No058RxlNvsJKNJMSSfYFLGd
 /CUh6TbRviXBxatURpdtS/UP8diCQ5OFJSjePcEs45BRANCCE38m2Em9F
 Dt2PAmkWQCRp8nzWk94tcRALyebHCc7DVnkR+Cr6OXUykT3kw7mdqT9jv
 5Z9ly2cwHfW4XlQofPgHcH/BPVMdUliUaqMNo2eJa3RVZ4uL7q3uPFYOp A==;
X-CSE-ConnectionGUID: BtqCmKrMSYa0z63DO8mccQ==
X-CSE-MsgGUID: +u7u6YSZRV6CsSFWBn9YtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67900154"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="67900154"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:32:27 -0800
X-CSE-ConnectionGUID: wSH3UNOrSjCwxxZs+8eKDg==
X-CSE-MsgGUID: QG7ICbDRQzCtE1U6xfF9Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203009419"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:32:27 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:32:26 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 06:32:26 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:32:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pnVbeePWz477BUPoSAKo8eXxkm+TicOrtKvU0S4DK+2TpnXdCGCZbycH6uMI1NHmg4w18dIzv40D6821t0+etTHxwO0ZXgUUKkfpnIvL4UJ65n8ByaXOBI/eB2Nq6KE8S8qJ+FZSFvyKToMT8u0Ia+Yu3yYY04DBxxibWKbeX41rMBrqaIkJ0vykcWftSaw+3qvwmWhznbl3e2wjPcZr83fGzYdWb0kQasNdm9DaX+xiD6BZl3IpuMyACisPdHFieJk77XjWHOT9MfGeXXExFfVxI/TTZ1paNyiDTExH9bP1A58pam8mit4Iy868mBg8p5yvcz3dMPCrMx7XIs7H9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wXDg1PYQv78VodWpuY+0r/jtGkiB1cbAcnNQ4XkxUpc=;
 b=Toa+OqUNxVPE9c1R8iYwCGRBN3QYNKcNehkwk0GQCTAbWHfMO2bzFgdSBb3Wv1LZvVcDLwhjMG60j3/nNX8BLWBZ0CSWlCbU0sslBTncr+dIBDZJF64NxldLyXlSnWMYOTgjZ8a27F08TMOVwNBVXX2ndKuVij2OS3MkUrcJ0OL0gxJ+9v/mjBNyOE/4OcvX5qByZ2W4t8vVRiq4Kz0pz4JO3EjCTl5+6f9RrkNEYrf7tYjeuwEz0FpxZh+uYAung8D7uS+XGTGLB1djqewmiCwy+lfJgfE8rAxkPTmXTYlfjDPdsiVgzqmKWScEMjqKWMM8M/XyYDqTUbFfqmxp4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 14:32:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 14:32:23 +0000
Message-ID: <0a1013c8-aa8a-484b-aeab-2adcd5c3b31e@intel.com>
Date: Thu, 18 Dec 2025 20:02:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/cx0: Use the consolidated HDMI tables
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <imre.deak@intel.com>, <mika.kahola@intel.com>
References: <20251216082732.1384018-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251216082732.1384018-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5077:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fd357d0-9698-4fd0-829e-08de3e42422b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWJhU2ptM3lVRG1KL2NyaFROTjFlVVZWeUZHNEJlTnRQcURVVTdJd1hRU3JR?=
 =?utf-8?B?RVB1bzFiUUVHNGxjWWVpR21vT1gxSDVtOW5mRWZDMTBEaVRrT1J0Z1RvVWFP?=
 =?utf-8?B?MXNhRndSYnhvM1RlZ2oxQUtqRVhUcE95bTQzUzljM1RWZEhVcFR2VitieFRm?=
 =?utf-8?B?RGtWVVVFaEdiOWVyQlBTaGV4d1BqdUpKNmlRS0I0VGd6aXFiUFVKV0RwZXhJ?=
 =?utf-8?B?VkVYRVJCQnhMOU5CL2g1NlVaV2VTRHErd3ZSeWtjZVpvYW1wOTBwbG4wVUZY?=
 =?utf-8?B?SzZNS3ZmekRLZ04wTWpDbjlXMHFHdGEyTStSM2xHU203SVdKdHpDNXFNM0JS?=
 =?utf-8?B?azBVemxlTHpEcGMxQnR1aEpIQStWaVVPa2JYNVpxYk5QZGY5VXpkSVNRalQ2?=
 =?utf-8?B?bFR1SkJuNlMzdUF6ZG1qRU5LQmU0b2syZk0wejdlSTlkNHZ2a3VKeTJTSlBt?=
 =?utf-8?B?eUJIbFF0L0thL0hHWlZuWkVkL2tZQlJrUElyTzNuNzFpenZuYlR4LzlNdlFm?=
 =?utf-8?B?ZS9NTUlOTnZJbTZLNlZxbW1ISzh2U01xMlpDMGJXTm1yVEc4YlhGSTdqVVJ3?=
 =?utf-8?B?Z3lXVTN4d3NBdDRmdlNCZHlKZU16cURyMUdmQWpTTFZqSTIxUHR0L1p1RlEz?=
 =?utf-8?B?eURPSEdyOStnaGxOdWRNMGhvbGVIUUkrOFUyb3FwejY1Zm5WcnZFMTdjWkFX?=
 =?utf-8?B?WXE3UktaaXFlMk5Mem9zQVNOdlN1VTFMbW56clUvM3VTejNJKzh1OXJrZjU5?=
 =?utf-8?B?SnpMMHRJWll0Skg2dzI1ekxReGNFZzJLazJCeVJIOHErd3lSUWwxQXhFY2Ja?=
 =?utf-8?B?VUZwUkttVk16Y2NadlFvR0M3aWMwYVovM3BGVFFzR2lpNmhMZXFXbWVGdHVq?=
 =?utf-8?B?N3hUK3Jjdkp3eTBXN1dkWEFJSEtkcldwa2VBUWE0N25lRTFRKzMwWXFlUldw?=
 =?utf-8?B?cnBxdHgxeVhFNWh2K3YzejRsTkY2UDFTMjBwcVVUTmxnS0o5b3NrUVMxK2xW?=
 =?utf-8?B?eitJUW55VTFyM3BONGR0VjY4SmRMbUVtRHV5b0dnZndzWW12a0hodGs3QjlC?=
 =?utf-8?B?WUlqMlNwM2JxUjk5a1BSVTlSZ3pWWmI5UVUrZnR4Yi93U00rSVNvaHEzNkNF?=
 =?utf-8?B?WW1NMnRjYXlpTWtBZm52QXFZZnYvdlE0OE0yaXlNd0MrWHNJSk9kWTUxWjda?=
 =?utf-8?B?RmRzcVZLUGRXaGdkYzNwc2J1NTlNakJvM2M2WndYT2JxSTh1eUZ1YTMwYVA1?=
 =?utf-8?B?KzQwUTRkakI1SWhMV0VaSWxKUVE4VDZMeVpWZll2eVdPVEJIMWhzSWJtbjl1?=
 =?utf-8?B?amdqQ2owSzgxZUM3SUdJeXYxZ2E0YmM4cUxJTlBRUS9nMDdzUTl1dmZROGd6?=
 =?utf-8?B?bnlxTjJqanpLbWpQcGRFeFRtcGpLM2lMNURwMGpWSlBSTWNNTHEyRFJ1U3VP?=
 =?utf-8?B?L2lUeTk2dXFJSTJ4dnNOem5kNUhJb2gra2NRNVpLb2pJajY3ckRLYTBxdHhO?=
 =?utf-8?B?MGVqdEtibWVqTG5QM01CT2lxZE5aanZCd2xSbllPa0FCamptYzVBUVUwbXd1?=
 =?utf-8?B?SlUvTmUwUUhXclFQQzRvelFPZFpsRi95d05BRFd3SG4zVy9rbi9FMnRpb1Rw?=
 =?utf-8?B?SXRlaTZtR0c3aWo5Y1JyMnJlREp4T29EcEduTk9HZHAxNnNOY1FHNzVjR00v?=
 =?utf-8?B?QVduSXNkSWQ5QWR0ZGhiNEp6bHJBQWdNcExKbWxkaFBCcUROb1lDcmkzcVhC?=
 =?utf-8?B?QjRDOXRpcmN6MEtPZnVQenNnak4rWW8zcnJEcURLZ3dsaURLRy9iUTN3TkIz?=
 =?utf-8?B?K1dUeHFMZlBEakpBNUhrSUtWb3RFSU9pRUpMSlJGMXhVTEpLZVJHSmlNMjF0?=
 =?utf-8?B?QXBiMUhsT1lGbEJkVGx0Vm55QWZCdDVLelo3bzUzNjRDbVhtdjAzZ3BQdUhD?=
 =?utf-8?Q?xzcwepSC1ML2xWrRWnHg+cIfZN6o4/z1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjVvc3hVVGxxSTAvajdQelMyZ3N2UGxTWXM2ellwZlVpTVA4czR4WHdvMnBx?=
 =?utf-8?B?VUJBT0Erd01LTGFkWndmUGtvL1BobTdObnpEeU8zL2J2bFhBLzJSRFZPUXFm?=
 =?utf-8?B?MlZTbnYydDFyenY4NFFwK0dxcjl5K25UYm5heFFWRXEySklyL2pJRGIrWTVS?=
 =?utf-8?B?T2lXTFFwVGVXcXNQQ1ZnWmFnRFpkclRtRE5kMDh0bXk3L25rOUdBYkJaL0xw?=
 =?utf-8?B?dTl5SGJ3a2FjYm1JNTBseG9KZ29GbTIydHowcWlRMGFyZlpoVlVVK3FzSERr?=
 =?utf-8?B?a0hSV1VGdFJhWmlvNjdjdHdjTmZLYTJ1cUxWV3BseHlDOTVIbTNpQVNwcWRm?=
 =?utf-8?B?NGxaK1FWWEtucEhoTjdNMmJ4WGRHL0srS0dJeHBydjVxZ3d0Q0ZnM2sxOHhE?=
 =?utf-8?B?WVFtRXVQNVA2S1NsVHNYZTA4cjdobUQ2emtybEpRT002ZVZQb2ltdVF5UGUz?=
 =?utf-8?B?amthemxseFhINTFIdnY0azVRY2VPRHZpMFVoV1c1dmpadENWLzJRTTFIZiti?=
 =?utf-8?B?ZDRGUEVUYzg3WS9MRGFHUWpBT0VGeENKVDQzTXNrT0s4TUJ1TkJNb3JpM3U5?=
 =?utf-8?B?YXEvTWR5bitING1IcVI3VHJTNm5pWHVEQkhFalpPMEdYc0tNMmt4alEwTlcr?=
 =?utf-8?B?dzQyN0F5YmFENFhzdHRqWFdwbSt1cmhRUWpJVFNNcDZWVHkxbEpQN1ZNYXZw?=
 =?utf-8?B?b2pPbnhiR09mRk1jaUhGZVZPUWpreTdlcCtYNXduMklubnNjNGNNNk1tNCsv?=
 =?utf-8?B?aTkxS0FUNVdTLy83VGZ4UkhvZEtCeE12NUZnT0t2M2gvdHIzeU1JN2pIdnhh?=
 =?utf-8?B?aXVhbWRMNEpZR1FlYzZ5bDR4Q2E4M3NnY2xBUVFyV3pGUVk4MFk4endXTVkz?=
 =?utf-8?B?cG1zNVZCejFRNVpLWTkyR0Vhc0ptZThlUEdaVTRBQ0dMOHBHeGxiVkhIZmRx?=
 =?utf-8?B?QXdlUmxwcGRuc3hqZU5rRXlBamhrbEVrc2E2U2piNnVQRXRIMlluYjlUUGRh?=
 =?utf-8?B?ZnVXVEJ0bDUrSmpTeThXQ1VJdGsvQVpHQ2MwbmZ0LzlZT0xBM3NLWi8vYVVM?=
 =?utf-8?B?b2EvRkk0WFhMZzhsTThERFZkamVxeVdyazAzUi9vNTFXWXdRVXYybnptdHhH?=
 =?utf-8?B?VWpIU0t6clNPNDFISk1BZndNOHZjNXN6OGR2WXFvZStrcnJLMkdnTG9CVThW?=
 =?utf-8?B?RVRHSGZDRWlvaFFLdldSOEVaR0c1R3NiT1BCMzFMNGhuQTFDeGxnRlI5cFBp?=
 =?utf-8?B?ZFBGTHAzc05YK0RCb1Y0bDNWRjg4c2ZmS0ZpWnVkV1VoWHFrOWJaQ28reWFQ?=
 =?utf-8?B?R2hCY2toQlpWd2xPNmp2YlUyR0UxNllrRFBLcTVncWFtd3FVTWZkYTZmeVN4?=
 =?utf-8?B?cy8vZTNWMi9vRHFad3F1M2dkem9UdnlXb2tSWlVmbXB4MDRSY0p6eG1sRFJR?=
 =?utf-8?B?QWpnckp0cCtQRkw3dnRrZjlaNXJVYzF4dmZqWkhzdnNhSlJGZFZ0bU1tQnpl?=
 =?utf-8?B?bmJOa0o2NEI1d0xPNFNoMDk4UTBIRmdDd3FEUm1XNVhIbEh6TEsxNjUwMDEy?=
 =?utf-8?B?RjNSdEYwNjJxY0Vhb0FmQjRVbUdkdkM5M1RCcEhxZTR3M0NZSUFEbWtJdlpR?=
 =?utf-8?B?ZndEZXpwTDFGNXVPUU02UU5PbzVKVEx2K3NWeHlzVzNGTDJ3Y0M4RVc0aXZl?=
 =?utf-8?B?bEdQME5aSmFweDZzV2plMWFVeEwzbGdkR3lBemlrQlFIemhESFVWWndHdXhD?=
 =?utf-8?B?WkJCSHlIMGllSkI5eEVpRGRFbk1OcHJkdHFySytjWEplVUVUOFpaQWVNYkk2?=
 =?utf-8?B?WEpSQ28wNHljRnBEYkZjeVY3YjVFVEVUTDNTUGxCb2ZxZG84OGlUMXBuS1Q4?=
 =?utf-8?B?T2dzRjhVeFRYM28xL2dZbFo1R2ltRmtuSVlrZ3R6eWRKRjAvd0F6RzZMd2t3?=
 =?utf-8?B?bkdVZ1B4UFIvek1ocjNvR2R1ZExDS25IU1NFRGl1V3U3aHJqTi84ZmdEKzRR?=
 =?utf-8?B?WVBVYzdtVVV1bitONmR0enE4NHBxOGtGblhCSUEveDl0VGVjOThrdXEyQ2lH?=
 =?utf-8?B?cmgzckhnRlhlYzFSdXNoRWNjV0Q5U3MwRHkyRWFtRTZ1Rzl4RnVtbUFUWmpo?=
 =?utf-8?B?SittQU51d0JsQjlhL0ROSUNzU2hzTVQ3YXgrQVpMWVV1WWF0ZGtnMWtoQ0pF?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fd357d0-9698-4fd0-829e-08de3e42422b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 14:32:23.7138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: saLSsFC7b/IzOxUJcWTfYgTdmdNJJTPDz3RltOVHSwFIIfadELjvDHaIbpiwvQ/NcYthgStiRfq5tYp2Rv/9aD20asq10hI7O5cOg4aFqhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5077
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


On 12/16/2025 1:57 PM, Suraj Kandpal wrote:
> Use the consolidated HDMI tables before we try to compute them via
> algorithm. The reason is that these are the ideal values and even
> though the values calculated via the HDMI algorithm are correct but
> not always ideal.


Will be good to mention that this change is for C20 PHY. For others we 
are already following the same policy.


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f6d69627154e..d0f764189567 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2671,15 +2671,18 @@ static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
>   	hw_state->cx0pll.use_c10 = false;
>   	hw_state->cx0pll.lane_count = crtc_state->lane_count;
>   
> -	/* try computed C20 HDMI tables before using consolidated tables */
> -	if (!is_dp)
> -		/* TODO: Update SSC state for HDMI as well */
> -		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
> -
> +	/*
> +	 * Try the ideal C20 HDMI tables before trying to compute them since the values
> +	 * calculated even though would be correct but not ideal
> +	 */
>   	if (err)
>   		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
>   							 &hw_state->cx0pll);
>   
> +	if (!is_dp && err)
> +		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
> +		/* TODO: Update SSC state for HDMI as well */

Nitpick: Let this comment be before the intel_c20_compute_hdmi_tmds_pl() 
call to match existing code.

In any case the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

> +
>   	if (err)
>   		return err;
>   
