Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6773A9BEBD2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 14:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8461D10E1D8;
	Wed,  6 Nov 2024 13:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khhlia9m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C128910E1D8;
 Wed,  6 Nov 2024 13:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730898079; x=1762434079;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Md3NMpdd0S2Ylp4xwtZaQ9KWXuL6b9oVDyARAa+oQQk=;
 b=khhlia9mMOfPO1pd3lWdmJVTVML3TSXPdjlUzSyY+AyMKdCXvfr4ltiQ
 KjUCixP2v4zRPu40DDkyMxGBJpN0CbVUg0DulBR7EEf67/ML30OfKs8By
 tuKhMn7xOI1/L7vpymsw8qOxGXIOGPxEwsQ8WE096dYnFsn5Eq/1LMqP7
 OerEBR5Lcf0uo5IjD6s6UpTsMSekP6hUwVA8EuhWcclMWPfHxCTcS933V
 CbU+jeJyqQ3HuW2C8RDITXArkux/Jh97poDGbphlFKKHky2rVM4q0iMHY
 N9fCnCKeY2IejiD69VUaUiHelp64PedOXjW534XRlUUXdknHVGPiID5lL g==;
X-CSE-ConnectionGUID: RaIiuL/zSDyscq7kCjSoMA==
X-CSE-MsgGUID: nSACBSe7T6qmqIsm7+Wbjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48155435"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48155435"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 05:01:18 -0800
X-CSE-ConnectionGUID: /qS7dEWOSXqrMhbFbuc8ag==
X-CSE-MsgGUID: mRYwDNySTKyo/IhOzPsepg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115356706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 05:00:21 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 05:00:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 05:00:20 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 05:00:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n169+UxF+oqHJtFRAD8WXFv4pQ2b04C4VhDT0KGMaErQSitjlZO8exfZZPkRCk9kf+zIsJoCOjSNf/QcdgelDb7VzTxzSv5rJs1UTBP8tz6q2L+m/bcuCAzkeYGDMn9ZSFx329olR//2ML8nn9i43gAb0n7T4+lexkvRkjf5hO0974NJ+3DsBCEv9jPBOHpvxvVUaDy/TG381QQ2iySnkuKpqxgm5fZVNfSMGTGNcYQctwXgMnu7GRgKQmlH9SVWHADenWD2vn7N7keEPu0emhwE/gwRzkl70R0dGJdWSwOEbHwvQiBU+cx7YX5lZ7SGokFYD9llJdK9bOUFZFgBqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WJ5CmVkqAnL41shIpGk0nNeIaz68BahboJUynilFK4=;
 b=XibK5Ali9442zvOtknkEDkos15KD8dNvweqISNuP4EvMXqP3zEqQ+USoLF0g1GpEk5DPG0D+3Ntf3/KcI14aJoevjP6y/npwjcrcV6czySsOcNtGqhku/A3yZ0uwnnFhQTKBkqvcDhDDAsDSsipMnzv9KPbyVkdDcAeoFcQACTlLqVzBGKXon4cgR6ZIRH1UQUXRiljZfaiabDd6BtK5lU9DyGXkmC5jxac/93AK/RhAGtG/wtNMbXJrgya0Kj/rR7bmt+gzAtWotc9zQJrjV1ce6PfTSYh+Y2tquwiZguteoLhMIAAMiLFJhGbx9+GK7lSEBAgshbeLrygbukwyBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7084.namprd11.prod.outlook.com (2603:10b6:930:50::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 13:00:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 13:00:16 +0000
Message-ID: <cb3d0c31-c15a-4980-b6f5-00b98c2e414e@intel.com>
Date: Wed, 6 Nov 2024 18:30:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] Add support for 3 VDSC engines 12 slices
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>
References: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1P287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7084:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a8f4a0a-9b8f-40cb-25ad-08dcfe62f582
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0Z5S1RETm1SeUNtY3RGSUhsZG52NTcxMnRBM3pjMXk4cWZNanBncDRlQVI3?=
 =?utf-8?B?dXVOTEhuaW00M0VHRUhMYjI5N2pyNksvNnBpRjlXVDlrQWJpTStlVUFSTW03?=
 =?utf-8?B?VHVxSm10czJZcGMvWW9HREV3V2pBVTdITFJwUjdUS0dQUGl1OHB1a3pnY0tm?=
 =?utf-8?B?eGh6UGJTSUVRSzF2Um5EVW5leFR4NUZCaGFrQ2UwSDhHbFJybjM3VGhOQTZM?=
 =?utf-8?B?RDVUcU5odTJaa2NUbmV2Z3NnZ1ZoaUdMWm1NZDBudFIzbkVzNXZ2eFhJbjV5?=
 =?utf-8?B?dm5PMjdKeEtqQ2puYTZrS3BPOU12V3NRQ3RBdklBcENxckhnSWFEdnV6RitU?=
 =?utf-8?B?aDNhcmlSZU5PL0JibGd6YmZtR2txVU0zeGUybml4Smtjd1lsR3lka0p6MWRh?=
 =?utf-8?B?Uy9Sb3VrZEc3a01qV0FJWm04TGV1L1RRNzBDUVN3d3l3Y2JGZTFqMER3LzBB?=
 =?utf-8?B?ZnkvNjFQTnQ5TkVET3Juek9MemNvZEpHNkw4SzRQb1lscUtqSTM0dDIrRTRm?=
 =?utf-8?B?L3lDZFNkbURRREpIT3VkeDJ6Z1pHeFhHQk41U1E5dDk4L2lHdGdqNzI4Qi9s?=
 =?utf-8?B?QVN6dFZ4cTlMTUZveVQwcXJvSXdpYnlFaU1maldlb0JzbE9rVjhMSWRtTEVV?=
 =?utf-8?B?NnVlSVE5SUgzUk1qUERzM1RhL0VYQnJyQkVseGV5blZaZFBtbjlVM0dPYnBL?=
 =?utf-8?B?ZDk5a1FwZGtJeWFZNUNtYld3TWE2MU1ReXhOVWpGMXJNaURSWmtSS2JMeGdT?=
 =?utf-8?B?Y1hRd1p2YVR3NXVJcHFLdEcwMVg5UVdiaDhvTnRQRTdyVnpnanZ4LzA0WWVm?=
 =?utf-8?B?cUxwVi9wQTl2TzRvSG9xVC9xcnRTSEFPOEVkVHNZZ0NIRlNYbG1NMkN6UzFU?=
 =?utf-8?B?REZmYk5mUzFmZjg3RlFTaFBYQWRheS90eWV6b1VadkthMUN5dXlMNDNlNWxO?=
 =?utf-8?B?UnoreHdIRFd3MFg4TllxeG1MNm5sdHZuNXhqVWVmS3NBemlpTFdMNmNoSklR?=
 =?utf-8?B?TnJCTnRHYkRIL0ZBRDV4bVJMb1lhNnd6V1lGSlBwMTNFcGtkWkRMWlRPeENu?=
 =?utf-8?B?MVdBa0wwYlpjRUx5Y2tJYjQxN1hDMEVLQnRaTDNUNEJIWlNZT1lnS1NQYjBk?=
 =?utf-8?B?M1JLMThlUmJiUmFSbGpDb1pkYVc0d0prMFhZZzE5Qy9DcnVkaHhZTTF3V2tp?=
 =?utf-8?B?WWJCRHNwM2FreGZ2Zm1ET3hOaWhaaDJ1Z1N4TGZpNVpmOVV2NW4vRXdZUEJx?=
 =?utf-8?B?a3o2YjBvN01EVHZVbTFaOUhSdnJ0a2ZPZmU0a0c2bk1EQytVTjNRSmxlTmFa?=
 =?utf-8?B?NW92QmFZSFJRY0hIaHhwVHBOd21vdGIrZVUvRVZFVmlUd1dIYXVmL0tJdklt?=
 =?utf-8?B?dkRaSGtiNmdzSXgwelRqZUYyV3g5SU1CZlN5N2pNWm5kZG12b0hJaXF3UWdk?=
 =?utf-8?B?Szl6dXJRQytlaTZvZDBrUElpd3hCa09VekUyMEkyRFVRT3NXaG9hb0NPWk9R?=
 =?utf-8?B?SHQyZ0pnLzVzRFZiUWk0VEk4N1liY1lzRDN3azBwMlFGSzI2aEdDaXlpbGhu?=
 =?utf-8?B?Rjd5MHJIeE1Ga2Q1RURCOUV4T3FQb2VrRzV3Q2Y1QVdhR1VLQlRhL3NKRjVx?=
 =?utf-8?B?OHlvS1BES210d3M2V21teUtkNTUyT09TelBRTkJSVTBucjVpUkFvdmliUG84?=
 =?utf-8?B?U2x0ZjAvcjRBTzFGbThoZXM4SDQ3NTJnOVR4aWVZRStkeVFRRS9FYmNmaTQ2?=
 =?utf-8?Q?r28NTdhMz2Rs0KS6cTZ0eHLRBYWzgP/BUxfk1SN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2IyYXhtV3IxVzJQd3BnQjlMdVV2T2NxdHJWSjNEd3NQeVFsUnMxTGpzYWhp?=
 =?utf-8?B?SjVyMkNUVm4rUTZCMnRLaUN5cC94OWs3clBWOUpOZWJCd3dIQjIrd1Q2ZVhV?=
 =?utf-8?B?VklZL0QyQ2RMem5IMm15Zm9JNUlQZ1l0dWlUUzVQTTRGK2wzT3hRVlZ0SXdH?=
 =?utf-8?B?UVVlTkVtSVBHaUVvWmxZQXZ3Wml1ODFVZTFFTzNWTkVaNGZGeHRpbWZ4WCtL?=
 =?utf-8?B?dGVuY0pIenVoMit6aUVFRHN1S05SdlZaWXB5UUJzeGpXL0o4Wi84SGRiSjVx?=
 =?utf-8?B?SDJFM3RUNXFXVys4cXp6SkpDZlZJaHlLRE4rbEFQUzhjNVgvekdVOThwdkxk?=
 =?utf-8?B?djJrQ2tmU3Q0dVNXUk1mQzB0aEU5NHo3WTZLQmJzeURJaUFxdkZvOGNBWmVp?=
 =?utf-8?B?YTNvUnIyZnEraW4vV1YzeXVxUTlXWGp0VVVZRXZXUG9lLzA0RERDUUY3YUJE?=
 =?utf-8?B?YzBkQzRFbEp6UHVRZmJibnJDWEtWRVdWbk1VNkhMN2ZKZnRGK1dzNkRkSTBq?=
 =?utf-8?B?MjFPTFdxK25ZcVluMDhaWEZ1WjNPb0JhSVlmS01vdWpwdnBOaGNLaEpIa3Aw?=
 =?utf-8?B?Mk4yVDhwdVI2MlQzdWYzdnhiWlMrYTRtVCs5elpiUVBtQkdLTTFMekUxekw5?=
 =?utf-8?B?SnloaU4wclpIU1ZmVWpuaEltR1pXM0xwaVYyQkNPTzZaT1U3Mi85TDJLSFBV?=
 =?utf-8?B?aEdXZG96NXppeWFxWXZHeHl1ZDMwY3FuVTR3V1hNaVVNN0QzYmM4dHJPSUhv?=
 =?utf-8?B?MWN2V0ZqZmQwTk5xbWQ0N1BmMm9OMHptOWZzR3pKQStKTkZqak5VQjZWNzBM?=
 =?utf-8?B?aDdFSGFya1JJK2dCbzF1Q3FGQmlFMmJ6eHlsTU55TkNvbFhjK3BxRklrUmkv?=
 =?utf-8?B?OHg2WFU0UFBoU1pJalNKQVBZK1ZuQ1d1UVZiWTQrTGU4YmVCN0hkamZlNmRY?=
 =?utf-8?B?UjhnL1hUK1RjcjhsNW53dFpzaERsbVZrLzYzVTlOUnE4ekY1UFRFRTVhWlZJ?=
 =?utf-8?B?eEt0dERYSmlUbEFiYkttQWJEMXVxVDNKUEx5bU9rSUt0V2pCcld0T0dlb2Vv?=
 =?utf-8?B?ZS9ZQUdYOVhGcklMeVVQRE0rSm5rdWZRZCs2WllSeFd2MHd2cWJzRytCOUhE?=
 =?utf-8?B?ZUQ5U1p2aEl2THIwYlZKeGhoMEtzNWRrWVhObHVqYkVnV1dEdWhTa05VcEgy?=
 =?utf-8?B?eUpQRW9JN2kwSzF0VXh5YVRtKzlkNXBFZ1oyUnNxSFhzYW1Rc01ncFFmMGo3?=
 =?utf-8?B?MVM3V0lSR0lEZE9kVlB2KzdFcFBMcUlXTVNTLzM3SUFqTEsrV1J1VUdPQVpv?=
 =?utf-8?B?c0RkWW9EUHNibWhYUnBWRlRCazFoeWduc2Y0M2RoWUlZTkN3K1hpVTJoc2Fv?=
 =?utf-8?B?UnN6ZHc2Wkc0MFo0SWpESUc0YzlWZEpNaTh1Qk05N2twRnNLVjFaaTRiaTNl?=
 =?utf-8?B?dzNjMW9zUlFZTnFsa29vb25ZL1hPaDRiMW4yWXAvYzkvNUkxWnhBak1ycnhR?=
 =?utf-8?B?eUlRbm5mMGt5VmtmNkc1RXZNZEhLdEkveElEbmdNODJ3dmlwd2t1Nm80NGdz?=
 =?utf-8?B?bUhHajJydndLVlM5SmUvNUROSjFQTE15d0NNUEt6WkFIZU9qeEVNVzNuV2VS?=
 =?utf-8?B?NW42RngzcUpyNkJjUGYzR0hBU2pVb3BHTFBFK2VEaVkvaGl6TGdHTi9yWlQ2?=
 =?utf-8?B?cnlHUmVzUVNGN0hjbzZNK0dkRWNPOTJFL0duS24zOUE5bTZmd0d3emVGMG0z?=
 =?utf-8?B?N3QzOFA0TWttVU5IZkgwUHl6NFVMS0VIZzVHaHZ6VWovRHM3RlhWWHF3bUN5?=
 =?utf-8?B?L1pxbmFpditqOTVyRFdFWk4xcDZBMWxkc2x1V1l4RjBEN3IvbE9LdEp4RjhM?=
 =?utf-8?B?OU5teGZ4SmphQ09jM1dCNWJnUXJSeVk3dVNFbW9CdzZnZWVSZ1ppNGlOc1Bt?=
 =?utf-8?B?emdzaDhMYXc2dWpqQXI3eSthZWtMeVdUUVJROXV2UTMrdHJrdmlSVzhyRUE5?=
 =?utf-8?B?UTB4MENydjJVSUg5SnVKTndUZDc0SGc1NjAyK0N3Z2pmY0prc0RjYWFtU3FJ?=
 =?utf-8?B?ZGx5T2pjRW1CQ001a2oxMERtcFdLaENRSXR6b2ZMTVJNcDc0ZUpoNHhGRHFt?=
 =?utf-8?B?TkxrUTdCYjVOSXZsZWZQMEFycXpNWmI1b2xlTHpINnp6bkw2Z2pHVGc0WXcv?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a8f4a0a-9b8f-40cb-25ad-08dcfe62f582
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 13:00:16.3042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bYiVwpbC7DAld2KhKqKDupNnAa8nE0lrvA0IgKtzhLlfGQzRnSaEYZUQsd+YF7b6G1YOf/BQUj7Md82U71wNb6m58/nw0QBrH5yBAQy5fGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7084
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


On 10/27/2024 7:15 PM, Ankit Nautiyal wrote:
> For BMG 3 VDSC engines are supported and each pipe can then support
> 3 slices. For Ultra joiner cases for modes like 8k@120 Hz we require
> ultrajoiner and 3 x 4= 12 slices.
> Add support for 3 VDSC engines and 12 DSC slices.
>
> Rev2: Rebase
> Rev3:
> -Add patch to account for pixel replication in pipe_src.
> -Fix kernel test bot warning.
> -Minor refactoring.
> Rev4:
> -Address review comments from last version.
> -Add BW consideration with pixel replication
> -Split Odd pixel handling in separate patches.
> Rev 5:
> -Use num_streams instead of dsc_split.
> Rev 6:
> -Dropped patches for pixel replication and odd pixel removal.
>
> Ankit Nautiyal (7):
>    drm/i915/dp: Update Comment for Valid DSC Slices per Line
>    drm/i915/display: Prepare for dsc 3 stream splitter
>    drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
>    drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
>    drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
>    drm/i915/dp: Ensure hactive is divisible by slice count
>    drm/i915/dp: Enable 3 DSC engines for 12 slices

Pushed to drm-intel-next. Thanks for the reviews and comments.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>   .../drm/i915/display/intel_display_types.h    |  2 +-
>   drivers/gpu/drm/i915/display/intel_dp.c       | 36 +++++++++++++++---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 38 +++++++++++++------
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    | 12 +++++-
>   6 files changed, 73 insertions(+), 21 deletions(-)
>
