Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0E19A992E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 08:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B057489089;
	Tue, 22 Oct 2024 06:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EFu6N6iT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74CB89089;
 Tue, 22 Oct 2024 06:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729577048; x=1761113048;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=M5IeUHZQPHTqSc+wIE7b+E5bG94dNIl2Fv4kWCgJZcA=;
 b=EFu6N6iTHeGw9OATVbRotVd2Uzpmf1fT37jm5rtI8PSDIbbCFlcmvRpc
 bJKyk1LVXCP9tSWqD8uaS0KkCTz2SbGcHPUng1kysBPpky2kuxceuodUQ
 njHci9v3ZTUq0jXQGqusFiAhyU1Jf1WeIB3lk01qwLVmwGd2cU0O5R69w
 7TSx7frkyGicSWyPR3EbJhot6t+TOiKxPxy1d7VeMIT+8hVJ0mIOk8hRR
 JsebU5Ed108W49kwRk4geHoCiroV1F9FxPXkVavqPRHmjpCTq3AOMmcOi
 UuF0RRTEUeMAA47BaUykHHQq0XbthMs3gG+cKyWASm7wDX0oY3xjw9k2Q g==;
X-CSE-ConnectionGUID: RfODqu2HR+W2VHJU+9FwOg==
X-CSE-MsgGUID: oYOIQnkQTd6ivh5vkDyEfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39701971"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="39701971"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 23:04:07 -0700
X-CSE-ConnectionGUID: 0pcJgILJSPOtM63qU976Tg==
X-CSE-MsgGUID: K1zUg719QOG8ScaeaNMmiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="84349381"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 23:04:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 23:04:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 23:04:06 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 23:04:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eFub+g04sEc3h9eLw/iveO8gmpjsIJWatQYnlA35ciFgNRTzg4XVb0MphFgxT/4DtOKJ7hyeIRyVbAw1hzXtqbSXVLd5bUUX/1TcSVybz8fsjs+r0o2R5e2eajPV25ZnayHMRX2djoXQBiGIqBSIZE1rHqHGuqHjQrY9gsC94S/LY/CDMRFBeF2CrucOMiNH8/+bnRZVWPf3Nq3UZAjiFBk7QMxkYFHgAhSGIv61yRPfyYQJVOQeGakmQnDTeqbf0OmNKrOtB8BkHwOsQXcZ4ViDHHPxTd2zbkWbBIA95+rc4ZXcHV6UeyY1BUTGaUSJ/FU66/WsL32q3qcjJ/rt4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=33d0SyrAbqJihZdDTLn8M1FgdfwYj4b1T/lKUtkVaKM=;
 b=ICoo3+Khr7uipRWXKkPlOb+3CtvoJFkkUjyvU4rgkpq1/M/ZZrjKGb7AW5xNKDjLAgW/SN2UvmgWF2Qy4T2S9E5tcSudZRXumWOxRkN6EAQshPKl9R99KHo4xEWyw8N5unfMULY/2q1/Gw+yYhxr/Jx0r8UP95nrJeOXL0TtIRj6GfB8wzUH1Nghw2wAUnQcwiZqxw/aap2jF0h++3wnnRBJaOrRdOg/H0AniVQK7SugdmBgdHVAmrE4R6e6sWgko63OLfyV+GFOIHBcjX6ZSLN7BcoIh+3piWoVhr8ZnaV04O7WzuFcr6wloXBmaVk9d+dWZmbLkr1N/1AismD6Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CH3PR11MB8140.namprd11.prod.outlook.com (2603:10b6:610:15b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 06:04:04 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%5]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 06:04:04 +0000
Message-ID: <7d81c0d3-6396-4c04-a60a-3f2a0c9eee56@intel.com>
Date: Tue, 22 Oct 2024 11:33:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241022055655.1902-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::18) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CH3PR11MB8140:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d8b91b9-ee6b-4028-ffb1-08dcf25f54da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnVFdDk5SjJUVmg5VlZXWVJQVC9FQ3laQUlRbklDL2NoT09TU3FjYUZnWDNl?=
 =?utf-8?B?TGZ0aEsrenhmbFkzVzU4azNjcHAreFpTejg5Y1FqWHVnTWRnWXNkT090MFNN?=
 =?utf-8?B?NkI3elZkTGQ3aG0xNUZpY2puT3hjV25LSWJJK3JvZFZDam5rV3ppc0RsNUJW?=
 =?utf-8?B?NFFSMUhmbWVTQVFxMy9wQ0pleW9QUGVNNmtTYmRLQ2hVZGFPWE1IUUdFMlVN?=
 =?utf-8?B?RDlTN09WM1Z4SENDck5ES0hITFh3bW5rNEVwRm95dlRzUmNuV0xscUFkbVE3?=
 =?utf-8?B?YmE2RlhYa2dudC9BTjdsRG1CZVpaZFRCcjJ5QnFFQkRFS2hKRFZpQzV6TEtY?=
 =?utf-8?B?bGgyRHdsd1JLTWpORTRPNEQwTmNJMk5YVkYyZ0E0dU1mRVdFNW1yWXNFTkxI?=
 =?utf-8?B?aXFkZmtHOGpWZWlNKzFtcnptblQ0SUVRa1pRUWdlQ2laSWRNOW44Z0lrR2RM?=
 =?utf-8?B?MVRYZWxRb3o1YkNQRWFpbUFURmFuSGREeEhnNk1YdWxwZjBUNUN3WHNQUFFy?=
 =?utf-8?B?SkltV3Yzc1MxRDlIWWdFVFFpbzdrb01VL2VYQ0JSelFEQVREYWFHM0NjYnph?=
 =?utf-8?B?d1JwZE1xb2J5WVNkWXJWdVBUanBWY3pzQ2NhcDFzZ0pZa3hINFlmNnVBT2I1?=
 =?utf-8?B?RHVaZlFlYlJkZEc1bnlDWjk3S1h3U1c3VUpTNnhVZXQ3bzJjMExpNnE0bGJa?=
 =?utf-8?B?a2QyS0I3ZkxYMmtzMlpETDRtVVBzamlPTi8yUE1vL3p1bmVVajZlM1I5bDJB?=
 =?utf-8?B?cGlsOG9PNXJPRHlXTjVWNlR5Um1CUy9TcGtacVdBS1VXWGhJVEdrZ0U2dlFM?=
 =?utf-8?B?TnFXN1QwWUNXbG5BMHJaVndCY0R1ZExnNnFaR0wzMEtYaG9admczTk16UG1l?=
 =?utf-8?B?U0t2TEp0UXRhR3pJWFFRaUNlWXhwbVBUdXl4NUYrZnAxbmVQUmNuSE15R041?=
 =?utf-8?B?ODBxSlJpdlp4OS9zeUZ6SWxtKzljaWNHaFh5VTE0ZGZJNWhPeUJ1OUFTNDZn?=
 =?utf-8?B?RTVSdlFoK2JEY3kzalNIOE5wV0pxa3FnUi8vbHlMLzgrb1BMeXhJUk5BRXFW?=
 =?utf-8?B?Q2MwVGlISWhiMHczdGYrUUk4b2N6WE9VMzNQYUtxODIvSDhSaFBKbDZTc2Nq?=
 =?utf-8?B?UXRVQjUrVnZtK2JCMERPc3c5NFk5elR1emV5MkRHR1RJS0pLUUpsYWxVaUFh?=
 =?utf-8?B?OXUrU2VwZnd0RjJNdXphNnJTSWd1dlZ3cEVqaUhoWWduSWZtY2liRXBudkpH?=
 =?utf-8?B?RXNzaHhVN2ZjRzdTcEVGTlM3OUdtTFlFUzV1cEJuNFZtSEpPSjd3WG1UNjVy?=
 =?utf-8?B?OUl0aGE1L2xBSEJvU3VKS2JUNkpTYU5nT1FCVWx5TDNhK3ZkaTdEczFybnpU?=
 =?utf-8?B?V0QvaUo2aWptcTMvYVdFU0s2RkhRRXAvVFhJMlR1MURqYnBCVEt5K2tQVGN3?=
 =?utf-8?B?bjRYTldvYmpuaWVuUWdMK0ZwQVNZZDFYOHdENjRTTHJ5ZHdxeTJzeHBIMk5N?=
 =?utf-8?B?WlkzQUZCdnlIaUhraVFIVlZMVVZweVdzdEdSYzBhUUlPVi9uWlh3b1BkMHdM?=
 =?utf-8?B?R0wrYUZpMVVDN0lkZndRQ0tqRW5wWFJPMUNYSWFzcy9ZS0tmVk1YR2lqd3lu?=
 =?utf-8?B?cmVyNEtra3l1alU2Q2RFUVQwTkRIMVgvMTNkL1R6VFB0ejYwdG1DMmRtZ0Q4?=
 =?utf-8?B?ZXdxNmh3Rm5BSWwzRERlU25jWTdFMmJudTVmSGRXOGQzY3hLbW9yZjlKQ2tn?=
 =?utf-8?Q?T3obzEHPzXxZVNHumsdRWgAK3JOUzUYd+T62GBD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2pYNmt1ZE0zWGw1SFhLWHlzTk0zZEpKajAxVnpONktNOC8zOStiYU1TNHlo?=
 =?utf-8?B?ZGxCeE1aVGp3RG5JZHk3NXdUcWxFTkdyMmxMSlhoQWoxMTZ6bmowTW9jVzdO?=
 =?utf-8?B?QkY2a25yOG1kdk9RUUdQbHVRTVJ1MHNpUzhwbGtRa3pkZEZHeGE1OTdmVU55?=
 =?utf-8?B?MURnMm9raVRBdHIzQ2xwMEd1ZUswU1hDZHFwZmxsbzFaVG1qa2hraFdDNFli?=
 =?utf-8?B?UUlPSzNRMlExZndMN0Y1ODlaeXF1R2svY3p5c1RFLzYyY3R3SDAxMTFidmVw?=
 =?utf-8?B?VGl0dHl5ZEREQzJ2RUNlYVlZNUZ0cmRqUnAxTUhkM1NPVWVSSzZ3MEN5ZWtT?=
 =?utf-8?B?MndIYktldmtIWDg1MHhTYUZwUHpuQVlVV3ZhY3lrRVRKY1RjQXNXTnN5Rjlh?=
 =?utf-8?B?M1hwRkZ2eTZXaDNNZmRTUEJkdEtzZkdpVEdOT1NkczFIdzIyWlMxYVFPSUtI?=
 =?utf-8?B?L2xTWEp3NmFHRm82NmwzNUtEMHNFSnJlam1Sb2NXcVlySmN2MGFFYUdhWGVh?=
 =?utf-8?B?VHBrcnU1REFtcW9aQ1RNUnowQS9NdHJRTWtjeFI0RSsrZXFKRkNEMnhycktQ?=
 =?utf-8?B?RlBKdEhtbGQ4QmJDQkZKeGVWNCtPU25KLzVaWW9UbENTQ0FmcGtvYi9Pb3dN?=
 =?utf-8?B?cWVLRnpWT3RXOUNCaXJJVlk1Vkg0clFwenBLSDZrS3UrTXEzZkFhQ3RXOG1v?=
 =?utf-8?B?MkFmNENGZ1VNK2FFb280bTlmQmVuQjVPSVNTNC9vZVpxeU9pSWJqNExUUnJj?=
 =?utf-8?B?a2tFNXNlY0JLa2x5VDRpL2FjeDRESTFTdjNCRnU0STJndlpJbGdIMG1BZDFz?=
 =?utf-8?B?MHNkTFVCc2wwSFZEU1gwUnVqOFhmZmIvRWhTTUFBdy9rMjRtc0taaEhGQW5h?=
 =?utf-8?B?UHphbjFDbDg3M2tPZG9DS0pFUkFvdnc2azgwdG1ZYUp4MUhlTk93dFpFYUhC?=
 =?utf-8?B?WjFlK0N2WENoQ1Bzc1ZRWldnN3lCc3hNb1ZJOTlwRXh1eW9qVFJ2clZ3amhx?=
 =?utf-8?B?Y3JIY3FKY2g1dlZDeU92ZWNhZkNqSVR3cVUxTm1CVGoxNkY5dXZuYnVyNURu?=
 =?utf-8?B?UHdwMHp2R2Z5RVp4WDZiVzJ2NTRXVkp6dnk2MkZBQjU4NTAvWHRnS0lzY2lt?=
 =?utf-8?B?VWNpM0poS0hnRk13bG8vcU40a2tkS1hSOWRYcUxldFB4eDlCMXpTVVdCMDJk?=
 =?utf-8?B?eTF4dVFFTkFGbVdKcGU3T3B6VmxkWkVCUzQ0WkdFOFZXL2dQRmRZSjNsUk1a?=
 =?utf-8?B?OHBmWWtCTlp2SXVRbHA4akhzNktjWEgxRFNxbk15NkRGVUczQVhSZDBOTURw?=
 =?utf-8?B?a3NSdG8wSno2QitsNGNyamc4TlY4clVLdHJBYzNVaDhZSWsvRi9aV0QwTmVq?=
 =?utf-8?B?Vm1lN3V6SUFPSUE4SXd2NmNFSmpSTFlZWXVhTXJFYVg4aGhkMjBTMkVPZkda?=
 =?utf-8?B?Y3BVYUl6bjdjSHM0dys1RjJMVElKdmlVbU1GK1RneFBHUy9NUkRJdjludnJi?=
 =?utf-8?B?bDZSdWZHa2dUZWtqTlI1azRxeFpZWWJwSndsaTJTNkhBVGwxL2I3NmRobjR3?=
 =?utf-8?B?STFNZEtVai8vUUlnQXovd21zWGtRQjIwQWlDL1RTNEYrUmJjbjE0Z0t6eFAw?=
 =?utf-8?B?aHJZYkduZVlwL09BelBTd3dXWWk0QTdhTEU4dUNxcHh0Q2RNeTZ5aVFzZ1JY?=
 =?utf-8?B?ZHVZdzB2RUM5dmtGcVI4WHV4T0RldTY0dDlNWmd5SzhadUx1RlZjaENBaUtX?=
 =?utf-8?B?WkNmY0hWM09wWi9uU3daSEtEMjU0ZjNlb0RCeXRDdXZ3TEN3WHdWbHRTQ01I?=
 =?utf-8?B?UWkxZS9XeVp4Vy90NDdHL2ZDci93eXdRLzhXQmFUa0V4U2VVdEFJQUhJcHJI?=
 =?utf-8?B?TU5yc1dhZGN0YURaZ3JKNVI0ZnMzUVlBVjB6bnh0dHdBRXZqS3IwU0ExNHBt?=
 =?utf-8?B?cFVTN1QrR1Q4WVhTTmlzTXNlbTI5TXdZTElkZjFxVkJsOXFtZlo2TnpHSVNt?=
 =?utf-8?B?ZFhQcXFQWWQ5aVNIRkxDcytLUEtnbjJ3bFJoRURWWEt0QldaV2tmZ1VCNTlM?=
 =?utf-8?B?NSsyMlRDdERiYTJ0cUNxeTkrd0I3Um1BemZMZ1V4b3ZnaXdoV1JXR0IzUStZ?=
 =?utf-8?B?K1V1YTBlWTA0NWYvQnpZRVlndnNvNnJsUGJueWVaWHkva1pMRG1kR3VLSCta?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8b91b9-ee6b-4028-ffb1-08dcf25f54da
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 06:04:04.2625 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kmRkWdGtf0YAHf7H1ym8IiC/KhncvKcfd766B3ZeUTEeg+fZJ1lTdmfS1JxRBDnhxBfTyrjR9afmfm/0Rzo00NL576vWh+mxe5t1bfO1A70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8140
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


On 10/22/2024 11:26 AM, Suraj Kandpal wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..e3c57f0b79c4 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
