Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999FA8D175C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E778510E21D;
	Tue, 28 May 2024 09:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4kR9px3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A3110E3CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716889186; x=1748425186;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mDtrXQOEZjSRcZFpair+S00pKweg0+O68zIzZ/0h7so=;
 b=f4kR9px3VZgvYj0K1fD6N1lC55l87D47F7klUptoHuEkyfxNlyWZeH5B
 S6MUTTAoGrqjd+B4dFg3bk8cA17qOCuwMiaskeekhgX8LiTWtU0n2nf2m
 0qrOzZ1NMP82N2wcdhFNExvkxtCHmuVi5oiN3E7h3574UticyBt9p/OEo
 b85yQZ2SDMhDsQNZhq68WHMr5TPsMPcVMtpaTX6XWgrSC6yw+pmu8BHGX
 j/9IAAXd+otbZ4duA8ZhIxF+qgNV1Pw7Pz85s5cmzpDtEllgzymaKaDTY
 +3+LSyzXreB5uZE5/r2S+iTm8NPn4b3UH7yCW6TQiNa9ZC4iRvIJhJsRW A==;
X-CSE-ConnectionGUID: nvMAHq33Rf6BQJe5N+xFIg==
X-CSE-MsgGUID: SeAGxJRTSo6D3AHTt5Vqxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24635856"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="24635856"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:39:42 -0700
X-CSE-ConnectionGUID: q66V0bK5Rb2IC5ZraG2B5A==
X-CSE-MsgGUID: drQBGcXVQ6iD1UrULbfGKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="72442587"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:39:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:39:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:39:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:39:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:39:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HD3DlfvqPJtd2QyzzipDYXfeXwMManzLrXpjuySjn+oA3dmh5o/+tMCpbjukKtGmmtzLqUdLrrMqllJAGoOKkpxs5pDFkIQ11H86J+1K4mvHGCxR9R0yATnMl7OReWFawmg1OwNiw9Qi7QMsX85/lTSv8koSlLzpH1bsyIciKnwiMvxwJiyZUAMuQJWzf1NQE+SVqQ5bqb+odPmRDNrbAacw75XpO8rSxp+/p6uTQG4xeNVV+5XZ397jbDClIagBCpy/BHVb7ZuOkzjqs6vt1GqshEDoZQfTgcMAsiBdiVN2X9+amwbycZZ8v7WfW1nnxDIJy/9xaJp0tOvIDEBEyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVCIAt8LsXu7XMhw1WwGmxKsxq18bXkn6tUzNFNbavo=;
 b=VcqV4v64+ZHnRoFagfASjIp5S20fcesDOxWAnpW7ZAU9I2SJcoeo0oXhSz5p83K9BGTunUPt1wvIvR3zWFDOCZ6BbNQ7E1G+JXPWnOnSV4GyYkw8x/i42bbNygbXQ6YkSQ09vQpiL/xjPQlG8xv3p37MbJoXRDdRYWHkhpzy6Mq6PZGkLk1JqoyXar5X/quDUP2df6FoM+QXtXlPM/Jd7SejLfFdDjTYDEEEkCOryrfCQxWNQyO9swyI9qbcGQ+jKSuP0Y6b//0KZJY0DFLJ+YftERYgEvonNrkaxI73mffOk/+Wrr7QNpJs9GRxdmeBrd/Py0sT9iUKQtExOHQ6/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6777.namprd11.prod.outlook.com (2603:10b6:510:1c8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 09:39:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.017; Tue, 28 May 2024
 09:39:39 +0000
Message-ID: <18c251a6-abd0-48fc-bf3f-da3018c62ffd@intel.com>
Date: Tue, 28 May 2024 15:09:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/8] drm/i915/display: Compute Adaptive sync SDP params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240524102432.2499104-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6777:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e3135bf-6926-413a-b1c6-08dc7efa180e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEpJUGx0Y1dGM0MySTA1WDFvd0RkNFF2MGlvaDJjakQ3blFHeXkwV0xNdW5m?=
 =?utf-8?B?YXlwL0N4am5iNk1GYWVERUxrcEIxMlJLcW83R0J0anpTcDhsaXFsSzJoejQw?=
 =?utf-8?B?ek5vcFlnK1MzM2dhbFFzdmsyZ1NjbEpFdnNSSkR4czd2TjFxcitJZHBUZXJI?=
 =?utf-8?B?cXA2Y2tIbVh1Mjh1Y21hZ1RuaTRZV2ZONVI2YmNYQUJDTUI2ZGNuQVRuQldD?=
 =?utf-8?B?eXprSTB0aUU5STlxVE9nVHJueDFPVTJyc2dCc2V2T0ROZnNXNU51ckVRSkh2?=
 =?utf-8?B?cWpiand0cERNdmw4T0UwRHZWeENpNHNGeUZDVUU4OVJySklNMjU3ZTd1QWVu?=
 =?utf-8?B?eHV6emRFaldRSzh6Q3Jya3FYM3RTWS80cVBvdFdYY2FPenlJNXBWQXkvZVJQ?=
 =?utf-8?B?Uk5GdSs0SERialM4R05ibkM0WmRNQWNET3BSSDNyUmlRRkNzbVEzekFBU2dJ?=
 =?utf-8?B?d0Q0Sm55SG1GTk41NmFQZldGSTZ1cmRPMjBnMFBnWTZsZjhMOXhHZGRCaEpw?=
 =?utf-8?B?OG1yYzJhalpjK2s1aUxkSG9pY0wvUkxscGhVN3YvYVR6THNwa09jV3grMzRo?=
 =?utf-8?B?VHNIRTNxZXc1RWRRY1dLTkhYT3VIdFU0ZEtXTURHc2tsRmgvblVQYnBzUTdw?=
 =?utf-8?B?dGNaYmZSQW9FaTZoNkt6aTY2THdiOWN3enZiRGw0MkpoOWVwSVRZUDRrMGcw?=
 =?utf-8?B?TmhXRi94TWdRYktuc0xFRTlFMlNVQzl0MUNFcENIYUwwRW5Jb2tIQ2JsbFFi?=
 =?utf-8?B?Wk9hTDBJbzQ5QnpZNnEwenE2aWhzUXlFRmR2NE5IMVc3dHlHOVpUSjZxNVd0?=
 =?utf-8?B?ZjFpZzdwUUdhN1VMak9FdVpIQmxwd1hiWjhuNVdJaTJiRzZZUWd5T2pUVGNx?=
 =?utf-8?B?TkRNZnNteXQvNWdIaDVSU1ZOODRNV2ZlSCtPTThXQ21QOFpjWFdPb2RlcVBD?=
 =?utf-8?B?M3ZCbFdZOHRodmxLN0dEZVVucXM4c2xSTUh1VGdPOC93Q1pVUVhxQklmbjlG?=
 =?utf-8?B?dlE3ZjY0Zi85Q0VLeTUvaGtua1pyZjA0YU9QOU41cGZIOW9MWDE4SkJJTHhi?=
 =?utf-8?B?V20yNmxRT2ZBNWVwS2p3b3JCMEhUMGZ4aC9acjFRVjFlZmdaZzdDc0RtRk5C?=
 =?utf-8?B?djR0WE04R1MwLzY1UThCa3BaRUxwWEhQM2RUV1hYNXVJU3B4VDVXK1VtK0Nj?=
 =?utf-8?B?NHBmaU5wWjBySENKdWpyWGErNEhaL25ZeVdWbS95L3FaNTRZSWoxS00vbWVm?=
 =?utf-8?B?Qjd4MkFNSWZLb3pRbHVTVWYzQmMvcUtoZi9DejIwaGQwRm9GRHBaSENmSllv?=
 =?utf-8?B?M2NFZW0xY3p2VVpyQ01EM2dBR0UrUTh1blAwM0NFcW9OdmIvaGhxTjdtajRG?=
 =?utf-8?B?d3daaXpEWGh6WVdkNGQxclg3WkZrTTNlRmdkUlhJcno5VUxKaEtwbEtNOEdX?=
 =?utf-8?B?TnhrRmUzbFpYWndla05JdmhhbGVXTkJuNytpMlhGMmVTN09kRGxTYXRVc2wx?=
 =?utf-8?B?MFExUWs2WFJWNmFhckdoZ2svSlRWK3VGKzRncEt0ZGtYUVBPRUcxZ2w5b0lP?=
 =?utf-8?B?YWdWZ1RsOTNZWFkrNmJoU1cvaGN2R1dHZk1yLzZkMEFwUmN4YjFVRnV2TUlX?=
 =?utf-8?B?VnFrQjlUNm40N0Q0SW5HejduWVVPcS9yTTlYK2FpY3dJRURRZ0tWQjZEQ1FW?=
 =?utf-8?B?S1I4Z1NORkRpaFozc2I2eVVrektqVmRNUC9GL0dvS2MvcDE1KzREblZnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STg2ejZlS0FKRUp4ejZqR3BBM0RLaVBsMk02cldodXNlRkNEM3N4MERWYUU1?=
 =?utf-8?B?WER1Zkhhc3RZQjdDMDZXMUhDQXJPUlQxZ2p2K05oYmIwcVJRRjJVRDhQaGI1?=
 =?utf-8?B?MmdkTE1IUnZtU24vQUtCREtxOFRPK2FwWktHb0VQeTNsZExHMjU0WjIxV1Iv?=
 =?utf-8?B?OW5keCtSNm5JWmMrMk9xY2wxRVhuVjZGTGdlMzR3OTBGVlJUblJYSW92VG1K?=
 =?utf-8?B?T3VtU3RFb2Z5MG9YYkE4azlnZVJ3K25QUmxnME5UYkdEL3hScG9OY1ZRaWN4?=
 =?utf-8?B?UFl5NmIyRjY4SkVPQThJbnk2NnFyeW82L3d1cEVzNWdxeDkrYmZZb0YzRnZv?=
 =?utf-8?B?bjREbWdmdjNzK3o2NkZUblVnSmlIRVoyOEJ2MWpUZVovL3VQN1hYTHJyU3Na?=
 =?utf-8?B?eHJTeXFMV1RiRElCZVQwYml5TUFVWWhnMUMxZEdlQk1rZTZ4a0ZXM0xGTXB5?=
 =?utf-8?B?Y2tKSXd2WEkyanZVV1VsZFJtWDY0eHVXSXlxWlVZV3RUcmdYcHNlbDlXZk1u?=
 =?utf-8?B?UzlpZWozblIxOUVoQ2RvWXZVWGp3UVNYVTZQNGh2M2d1bmV3c0JaaEJnZExu?=
 =?utf-8?B?bTU3ODk2OEtaZGJIem1IUFMyMmRKWFBJOFBrcDZYZElXU0Z1ZklzT0p6SndE?=
 =?utf-8?B?VkdCYUdWalEybE5VZkplTWpRQmNpV0ovSWU3QTlpejNSZ0hPVTNuT2hLWHBB?=
 =?utf-8?B?RXE2TExTK3JnQmJLZHhNZkxJRUFNWHhsSEFJdUx1SThnQitHdVozeU1wS1BQ?=
 =?utf-8?B?VmprRmtaQm9DMVBuZ1l4ZXJiZGlNT2gwNGNYY1NvRGFkMk1pczJvN3Y3OS90?=
 =?utf-8?B?aHVZSzF0RFJDUFBabGZYMWZIbGloZ210OTUzSTN2N3FiNlFVLzlSSmVvcEhF?=
 =?utf-8?B?R3NmVzRLZ3cwQllVTnF0QXRQUUx2WWwzSDNBN1hFYUY1NzRCYUN0Sm9Ia1pE?=
 =?utf-8?B?WklXN2l6M1NzNmdmM3lCbmZvTzVYYUk0UW50MENMRktOaXJwbE93Z2crOXk1?=
 =?utf-8?B?RFdoVjY5MVF5NXZZbzJ0RVdpNStlK1hpeTFWRmR1MkxCZ0psVWtXcjJqbjBZ?=
 =?utf-8?B?R3hhWDQ1KzFnREtBbnkzVHJjTy90UVIrRVFxNG02elVKb3BDcnI1c3poaks1?=
 =?utf-8?B?SHVJR0wvbGtGK1R4aGJKQmdwcy9xMDZGb2dXSUR1V2J4ME9Dck03Z3RXaS8z?=
 =?utf-8?B?VlZJdmtjVDhLd3JCWnV5Q3lUTFFGbVlkdXh6UnZqU3VxaG9PM3B2bUJNd0tp?=
 =?utf-8?B?aU92cGo1bHpGbWZPTUlqNm5aRytJcEN5a3UwMHhzRmR3N0RvL1Juai9kaVpz?=
 =?utf-8?B?YUxRTERZYkd1WWJUL2ZzY0UwYWdKWlpRYVlwc3k3bDdqYWxDNm5Zb0RLRWEw?=
 =?utf-8?B?aWlHWjBrUG1ncVdmSTdkMVcrcFJ4SEdZR205YTZqZVZ0SUdvcTdDS0xoSlpw?=
 =?utf-8?B?SG1OQlhVRU1LeWR3dlUyMzRadXg4blU1YXZaQ1M2RWJuVmNLWHV6UUZFU2xG?=
 =?utf-8?B?R2x4NzJqWDlNMGJndW5lNDRxUWhDVGxEUUpwVk9XLzY4YUFVcUw0ZWp6bDIx?=
 =?utf-8?B?U1JqNnBtaVlvRVhlZDhSbmJrR0pQdktjd2NNd3pKWVVHWXo3WW1tWDJXeE9S?=
 =?utf-8?B?V0RsSnhqbi81ajcyRGRjaWdhd00yaWRGZk9STlNReUpRc2hNU2pFbllXMDBO?=
 =?utf-8?B?RGFKTjhGY1hMeVJ0VTVYT1NsWjFXeTVKbGhDVWtOVjQ1N1JDOENIaDhwVmcr?=
 =?utf-8?B?bFVpbk5HN3ZwREdGN0RaSkowOFZIQllYemJ3c0k3SmFnWU92a1UzeE44ZFhE?=
 =?utf-8?B?blh0WEdtRjVMVDNobFY4ODhKejVTME9tdjQ0SHdrSTdHaVZiek45L1dBV1I4?=
 =?utf-8?B?bm1JMlB0R0xtU3NLNFFNaHpjdEhuYVREUXVPSnkvenY3KzFtQitkbERNRGZz?=
 =?utf-8?B?Mm1NdVk2K1Q5a0V6dWZ6cEpYaXhGam5HVUN5WERuYmdhMFUxUEdiVHd3TUJX?=
 =?utf-8?B?aUNxUTFDcXpOWWRiaUd2bkhTOWVIN0hmdDZMRTgreCtReStLY01lRmtKY2Iv?=
 =?utf-8?B?YVR0RVhDdkpBM1NyWVZmN1g1TkRHR042dVlMdnplMENBbmorclFINk42dk5Z?=
 =?utf-8?B?Uzk1SnhuTE9ZQzFYS2dJSS92TnJPakkwR1FWSktZeHBJK3FCcGZuOFRXY3c3?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e3135bf-6926-413a-b1c6-08dc7efa180e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 09:39:39.1420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QPEXjZjfdPFt7QTgJ0CwTNu3J23k9+6gvNwu2iZs6wQ/QS0Fpj2z6KPloirc0h6cT8AzNrkwp1fUWZFn21ItE6KgOA3flcZcCVZBhrYcP9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6777
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


On 5/24/2024 3:54 PM, Mitul Golani wrote:
> Compute params for Adaptive Sync SDP when Fixed Average Vtotal
> mode is enabled.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++----
>   1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 15aab14c4206..7edc517b7859 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2627,7 +2627,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable ||
> +	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable) ||
>   	    !intel_dp_as_sdp_supported(intel_dp))
>   		return;
>   
> @@ -2636,11 +2636,20 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
>   	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>   	as_sdp->length = 0x9;
> -	as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> -	as_sdp->vtotal = adjusted_mode->vtotal;
> -	as_sdp->target_rr = 0;
>   	as_sdp->duration_incr_ms = 0;
>   	as_sdp->duration_incr_ms = 0;
> +
> +	if (crtc_state->vrr.enable) {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> +		as_sdp->vtotal = adjusted_mode->vtotal;
> +		as_sdp->target_rr = 0;
> +	} else {


Since vrr.enable is set in case of cmrr also, we should check for 
cmrr.enable first:

if ( crtc_state->cmrr.enable) {

...

} else if {

..

}

Regards,

Ankit

> +		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
> +		as_sdp->vtotal = adjusted_mode->vtotal;
> +		as_sdp->target_rr = DIV_ROUND_UP(adjusted_mode->clock * 1000,
> +						 adjusted_mode->htotal * adjusted_mode->vtotal);
> +		as_sdp->target_rr_divider = true;
> +	}



>   }
>   
>   static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
