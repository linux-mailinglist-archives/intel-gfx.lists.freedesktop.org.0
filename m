Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NmSF4ylpWngCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:58:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B51491DB44F
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DB910E51F;
	Mon,  2 Mar 2026 14:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGgHkw8Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7645C10E51E;
 Mon,  2 Mar 2026 14:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772463495; x=1803999495;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BrmHKAelhQyXF4eylB8ggRzPVP5mJeDjgM/HokOrIro=;
 b=MGgHkw8QLqoBT1wKaWDf/N1kU/1tMj0j+Y3f+gV19QmZGPriKUHAD1p5
 B18gDTv8uMLqBPgpiEdVLtY0HXw0/66EAbxVbNlrQvsrrEUY7Pqyax55I
 LFQ1elHDhCA4OjuFwzbVDjfLCvzDSLvww/ckgK0O/7u7M+0EvWUl/q2ws
 SS1cwNlaXYAs3r7IRfzb9iLf45OqVjTWeAz2z8ogT5DkWUAtAh1mnqRR5
 /WAWvcvAgJXy5AxUA/qVu3GrGPtFG2CBssndx6HLbooTiFsdkle/o9kz3
 Tr6rlVI1PFM6gapfmm/naT1TQH4a/6fvkOXM+ODTiwCRw7DyWW4Y7mVj1 g==;
X-CSE-ConnectionGUID: exXgPGD+Sy2sUJJXSz8XyQ==
X-CSE-MsgGUID: e2YhmfSCRoWJwAhh2QWRiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="98940425"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="98940425"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:58:14 -0800
X-CSE-ConnectionGUID: 0lSrdl/5RQqTI1BIBHeyIg==
X-CSE-MsgGUID: QsidPzoeT2abdJ1Dj5aWGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214878333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:58:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:58:13 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 06:58:13 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bUf497cRh0h+3guUeluperbz3JvxTW0eJzWli8AgTNeHVM4vVR2BOMSIFroH46gqCvv8pgLOrvMX8QJmpyjN6eCkUqKxNo4Ko0AQTZrq0lRcPSw8oAfTWh1RB+bd+kl5buDAcWCoy3YkUUSvdDB18Q/X0PxQZ9/XrvNbslS1MUftQdqRRfGGXM7vZd+sMlF8Tzgzg1saAO2FeU3ngZ6EWt11KPLyzdi8oXy4vYQ68Bus//FQMK5VXGqJ4aLWf3N36rTg1ggJla88UF/7dHczmzJmcUuGHML04m48m4YFDaSK9/riyPoqO3lb1rqifZxGkx3ctgvK8ut/AQ0RphjZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rhQOGV+opiR2KFel/9d7G9EkkZhea7Pq39qYLB7lgvw=;
 b=bFACwJZMOnFADQrSjJqkYGx0X65xHxy8zLNCADxGykalXEPkwKJrgbnQFZBVP8PvtSywePOLhBo9u8QhuZN8kmxB38f7Rhxyy+n1qHKDG+7x+M2y+dw9Zg7dpqwzh5h8c04G3YVvb2aY4kCKPFTnwHQjQOmba37YGFa0XDMA0rrcAqQlT3Xz841rdCotUS2I9iJfg9WyNCHbrA349oYIikTCKCAQPiLrH8nXA6bb7KE2XtNnFOwi9j0Hqk3kXkJ7E+0hLqSjBnFamqAgXIFgkzJZPIhmkrULq9n17a2xC8YfLkMd8urSl1fI0g3Oqq+o1jDfb7AP8CLfDrTi8SAu1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SJ5PPF263E38237.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::81a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Mon, 2 Mar
 2026 14:58:11 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 14:58:11 +0000
Message-ID: <6f9c65e1-b110-4cad-b2dd-d9d8a1b73a51@intel.com>
Date: Mon, 2 Mar 2026 20:28:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
To: Arun R Murthy <arun.r.murthy@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <ankit.k.nautiyal@intel.com>,
 <jani.nikula@intel.com>, <jouni.hogander@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260302084030.463284-1-arun.r.murthy@intel.com>
 <20260302084030.463284-2-arun.r.murthy@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260302084030.463284-2-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SJ5PPF263E38237:EE_
X-MS-Office365-Filtering-Correlation-Id: 5894dc64-9fb2-4f56-35cd-08de786c1f62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: mL4mpOynKxUfwyV3Ql9zsC7b/n7sm019XHEj4475mE3gcOwSrY4/5ilLuZc3ZJBP0+CSnWmwZm9XXy6IllQCQ/C09ptDCxXUyZQ41NX1zu6GnhMcbSAdYn/3h1YSf1UA/MLXdmR3jwkMg1FNPctu2JAKQgoL2KCqf8uYQEF5EONXHTf0PEpDhNsEa3oqy6xga2X6bmCM8AEmC6UI2eCdaFrBQ0SVrS4won5IzLozTJaBPhcmtws8E7DmDL5VmsW3TSIOhTCQ/wAlXoUMFtHC4ee5Y6Fx+4VHMl5reEjQ4uN0MAgNg8reqDBPzZ5IDLDZ4G32UeZ0CzGaVIxDhYfC7UIYTS/X2J62/6+pA2r3zujl1xoQb9gD4zwPb0zXwpIUJ6WHJJRCX5zFWxp9VTUjlsjCJF/VTkm2T2ICWC9f3T6CAWYEAA83dhwpwGvwAwFJcSQTmk1ohaDNWUnG/kA6hj1j9L3eIraOxjNfSksbc00QAxSI1eCnNPGeN2NqnVrUHXvDu4xVasCd3IEQQSBoTrtTIWrkb/qfHB2Ew84XHjeG90V+8hISQKGYaUnOF6Q8t8LqSLauKSM/oJk54NYH8U+eSn1XggE1DV7FWJynM+FxJzGivwc/nY+dw1MMt/7iAkiB4icugN1veKolnhm7MKX892694Cg2raUxcFJJ6icKTmxbf19fBVw05L5XTp6jHbgFEFmcxzEojAVQ6PVqasO3cDlz83KieccOKTYrgbU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1hjUGdXMzBjSFFNeHZnNjl0SkRTUnF2SUlsVE4yZnZ5elV3TlJjc2VnQkZy?=
 =?utf-8?B?eG1aRTFTNk9WeWlkcU42WSsraDlGbXVHS0V6ZmI1R2dDdnpTOVZXaU5OanZt?=
 =?utf-8?B?WWxVcis5R1Z4MDF6enhoSFlHVDM0ZUhodlRab0g0V3ltR3VFdGQveElRU0Vq?=
 =?utf-8?B?RTdTVldldk1WL1JtWUlGMWJ4RGdiczBxTG1MNktBRXlUeDNtSDIxeUZGMUZO?=
 =?utf-8?B?QXIrNXRFcDJ4Qnp4eTVFM1hTQ2NsYVFsVURqbEpCbDZ5VjhiOFNrZk4vT2ta?=
 =?utf-8?B?QWkrUWpBVy9wYlBPay92bGhyYzg1VTZrSFEyNkRSS2xhTityL1lqazl0S3Bm?=
 =?utf-8?B?Z3NPaU5TTlFFbGlUdjRUNG54Z0R1N1FzdGU3Z21aZkVvQ2Jkb01DWUluZW4w?=
 =?utf-8?B?Qmo3eUZvNWwvRDJlVVZQRVhkVk0rbWtNRjhIcDQ0cFBaWDB5Tklwc2UxWmpz?=
 =?utf-8?B?WVZKMFl4VjdqMTEzZkU1a3ZYN0tva1dyVm5Jd2pzazY3TDU5RisrYVBGNkNP?=
 =?utf-8?B?dmRMR3REK2QxYnQxcWFRdzZLa2FPRWYvRlNYMUt2UllJSUxMWGlyUXd6eXdo?=
 =?utf-8?B?VVlESUhOTXJVWXNLZ0E5WXdhV3NuY0JWaVFRdlp2TGl1RnJ1YmFuWVpYTWly?=
 =?utf-8?B?UGRPbjdObUp3WWNmZEN4ZjlIT3B6dUxJWFZSUkFMdEdoQlhvb3hnenYvc2Jx?=
 =?utf-8?B?cTQrK2RGUkVudlMvcDVrVlFBK09zZVdpSS9mU2tENGNadDJBa1ZVTmNEVVA1?=
 =?utf-8?B?cmtFeDA4RVJaKzZUQ1RqdVZHZ2NJb3hONy9nOWs1SlhzR0FmSU03MUF4Ulh1?=
 =?utf-8?B?bld1QmNjR0RBbC8wRndEZkN2dFlaV3ZiSVR3TURPakVJOHBNWElkQmpZckFm?=
 =?utf-8?B?b1JqdU15Y09GRHc3M3F6WEFYMjhWWU15dDRaOEY1djIvTFZ2bCtIMTZNV3hX?=
 =?utf-8?B?S1JnM0JPOEVZTDdrQVAxV2JVMTdMa0ZHcm4wU1RvWVdBK1F2Nk1neHd5UUdR?=
 =?utf-8?B?LzZSWEdFTmNqY0dZeVBxZ0tZcTBWMlU4dHEwdDdFaVBMWXpwNUxXdldlREVv?=
 =?utf-8?B?cUFHd3ZIeHNxUWlld1pONXNUblQvTGl4NndOQ2NRMUNJVDltQnhEMVljTnJB?=
 =?utf-8?B?d1RzNjJuMk95dzI5WFJ5OGZDcEd1RjdLaWFvZlpNMFR3ckVGdFRHRnlTdVFW?=
 =?utf-8?B?WDA5SVpHcnlHTFZEWlpEOUxoSmJlMzBUM3loYStiVDIremllQjN4aWdWN1RF?=
 =?utf-8?B?UStiMWtyS0xudjAvN0xOUmxmYVMrclRRWVVVZHBsOEt4OUVvVUIyZVRkQmFk?=
 =?utf-8?B?VnJ2Z0dlYllUWFMzMHBzQW1acFhZcWIvY2QzcHQwSjVsM3p4UjhSdFFrcUVI?=
 =?utf-8?B?bG94SVF2NTBvMlRaTXNrQ2YyTS83V2d6MkxOY3J0STBxSUZKVlF3YjU3ZGFK?=
 =?utf-8?B?R2IxUS96bG9CT3MySFljTHByNFNrVjk1UFZka291WmwvOE1DZWMwRDNwR1pX?=
 =?utf-8?B?UXRDUFNxbWt2MzJsV0VsdWs1VFZvK0ZESGRnK0RQd3NSekd2MnlkSzREL3BN?=
 =?utf-8?B?UnpmOC9WZnJENXdEYWx1L1NKNmpQanNlbHArbTFZWHZKaG1IMTQ4UGVMbndn?=
 =?utf-8?B?ZUowTHE4bFBKeWFRWm9pbUVNTllHV1Z0b3FnS0hxenhiMGVVVGVtaFBobVQ1?=
 =?utf-8?B?VE1RTEJsYjdxVFNIR1lrSWdWUW5XVFAwQ0R4OExZaytxSTZNVGRvcU4zMlBk?=
 =?utf-8?B?R2c0NEZnV09Fc2laZ1k3aGNsN1pqbUhsVXpxL21HbU5NTnJaT3FRUkpaelhj?=
 =?utf-8?B?NlUvVkkwWHJSU01QVXlZeGlLcTkyZnVWUE1MY293dGEwRHdyMVBIMHR0dFlM?=
 =?utf-8?B?TFJIYjlrdno1bHlVdnp1OEs1eDlzdVBpdlJrTGZYL1l3bXFpZEZ6NG9KVWQr?=
 =?utf-8?B?eHlaZ1pNNHozbkFsSFNrYzlBZ0VGY25LYUxWRE5FTzBlRVlUcEhBRVZhRGMy?=
 =?utf-8?B?YzdTUHpWcTVDMm5pdmVLRDM3TkJwbFpUalhGRU12YkpLTExDUXVLSy9qZGk3?=
 =?utf-8?B?RERtZnpHdHFDQjlaOWE3UnpMbWhwZy90SjdyazFzYWlCdGhUTGlKTGREbkpp?=
 =?utf-8?B?dEdFNXdUcnpoRjgrY3JDeXJLN3pLYi9IbHgzdlpjTEJuQW81ek5GcDV3TFBa?=
 =?utf-8?B?eGpXVHFYYzA2MVZKV3libGM0UW13bERsY2ZvaUNxb0xlN2NKOHZYa0JmNE8x?=
 =?utf-8?B?dGp4UVh0dStVeTNxQm5MMWpSbXFiSGtwZ1VQbFpKNk1lenZZMjdFODM4ODVZ?=
 =?utf-8?B?bmxJbjNpNGFCUDR5N2VXSHNraHFjK1IwNkxmb3B0ZFozOE1UM1VFL2tvSG9K?=
 =?utf-8?Q?osl7LzD6wfsCVzXTj5135gwUM5Jr8Bk9Lhi+897W9fXtc?=
X-MS-Exchange-AntiSpam-MessageData-1: i/tOlQILIsXD0w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5894dc64-9fb2-4f56-35cd-08de786c1f62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:58:11.5320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gfCUvYWcWTD6PffH2+HPeukuwZPEMqObgaqRzQFK0uqzENrEJwm3R+Dmmc344RJcq/46lf8ZsDoz45O5eqj+XL9Mvq6/rt17QerKwOHU+09xSR+LBUlFe4ofx7WUo3qh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
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
X-Rspamd-Queue-Id: B51491DB44F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 02-03-2026 14:10, Arun R Murthy wrote:
> In the function intel_alpm_init we are reading the ALPM_CAPABILITIES and
> storing them in intel_dp, so appending the function name to _dpcd so as
> to align with other function such as intel_psr_init_dpcd referenced in
> the same function.

Rename looks okay, but mutex_init(&intel_dp->alpm.lock)
looks to be out of the place in intel_psr_init_dpcd.

Regards,
Dibin

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_alpm.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_alpm.h | 2 +-
>   drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index b3334bc4d0f9..8ba7463d7fe1 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -42,7 +42,7 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
>   		(crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp));
>   }
>   
> -void intel_alpm_init(struct intel_dp *intel_dp)
> +void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
>   {
>   	u8 dpcd;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 1cf70668ab1b..a24a7a03bdaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -15,7 +15,7 @@ struct intel_connector;
>   struct intel_atomic_state;
>   struct intel_crtc;
>   
> -void intel_alpm_init(struct intel_dp *intel_dp);
> +void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>   bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>   			       struct intel_crtc_state *crtc_state);
>   void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1544758c0bbc..4e9df88b90cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4749,7 +4749,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>   	intel_dp_init_source_oui(intel_dp);
>   
>   	/* Read ALPM DPCD caps before reading the PSR CAPS */
> -	intel_alpm_init(intel_dp);
> +	intel_alpm_init_dpcd(intel_dp);
>   
>   	/*
>   	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
