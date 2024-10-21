Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228079A67B8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0474210E187;
	Mon, 21 Oct 2024 12:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2/JeTCn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28E510E187;
 Mon, 21 Oct 2024 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729512909; x=1761048909;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PbqdJJwbfwihlkMKGgR1vOWh+6uDNRo1ZdKZHL8L61U=;
 b=J2/JeTCnq3Eg30TYDJ9z6T8jmvLAQH34Xnibfj3f/HUnTCFkSs1cy4lN
 JEU5Jx/Y9Pp7Dqgrb03i4++7ALq/z1yKsebBU36TLrqLDNCXFBNvAX6+a
 TzIsgsyQzZoRM/IO0Na6TEVAyoEWV9/fkbEnIy627NwouIo+KZ9lU0xa1
 OjF5DijsqvfqP7MFhBTwpmSZbIoeFU2RShV4VLQpARFTcZuhPzJy+oUUC
 Lc+3ZByAyNOE6pHS/p7G0fr7oO7ngarduwujLpZsABgy0VXjWY/vPyPX1
 KD+/oLC5hACi/BkoUYN9kdKpCBhCiuc1N5kssLvvkJbI/OUAbFvikkP0f g==;
X-CSE-ConnectionGUID: m2kGNV2ESki722AZiMiYOg==
X-CSE-MsgGUID: K7jfIY7DRl+D1RMDSK+QDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="28446238"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28446238"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:15:08 -0700
X-CSE-ConnectionGUID: QbkxFOvPR5ac8NKRXAMTqQ==
X-CSE-MsgGUID: Zt1pkDuqTu+Kcp1xluaZlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84571022"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:15:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:15:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:15:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:15:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ab3PVA42QA4zTOOfY5VR3DeILv5Mvife5CJY2VOaxSPAGa7SiT8px8+O5UJatbG1TNQRRg+Q3Zbax+D3ZkdHuxA9axOGFFIhpFtMPanz/lUjpK3OpGsgeq0ZERrDCs8wJiznZd2+6KkjRO411paayZKWEicrsew1HMS0fk/mD51c2fbDoc3VbeZG6mTD05XRJvuBthe2NJKA3A+valbbPCUY+v4FZeoHMZiNSn8hHiFeJXpjqgx1gkXu3+3qY/x3XPwua+kP69oTohuMJnN/R0YwISORc1/zA18kRvLXjs1y6FfSF2l3OV8CidoGz+DXitS4QqzaZuBkSNLUbLnVzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R2iZNXvsppUZfbw3wFn5WGv+AUMLL2W5fzcwTHgCjy4=;
 b=hLS1THLEi8Ju5qilytqBVJCgWlBN9mG3DKuqJIPdbTTTx5hQX8odjpk9G0ftDWZ1Gc/MlAL0GLFSu+C7g3PsgBEZu/diBYPnRQAzhQbSj8gHpw3BOy4+JnBDpUHlW4iQ+NUhIpZlZT4X7sTl/vwY1pLzSl48x99xH2pyE5iDMZcZwDIgK7ARZJIwx+LIsEV0wdw1ZGiapMvSV8IIFbgjNnIxMKA5HihlTH0CcUfMm18sDpfH7bWyYc39F4rxP/tX0B/Mc+8vTMs8nFmnUseAyKVo3Q95ZCyIy1G5OqJp5Tlgfgm5gCZUFrDjFjebewEGWUOpu5RXbqBW94bBWfaPHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Mon, 21 Oct
 2024 12:15:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:15:02 +0000
Message-ID: <ba59dff3-7ac1-4300-9397-051c50bb6254@intel.com>
Date: Mon, 21 Oct 2024 17:44:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] drm/i915/vdsc: Add support for read/write PPS for
 DSC3
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-5-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675053E11032DB03A558DA63E3402@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB675053E11032DB03A558DA63E3402@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4723:EE_
X-MS-Office365-Filtering-Correlation-Id: 75b60304-f7c5-41b9-f7f5-08dcf1c9fd25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVJ0aFc0RnZnSkdQK0U2VVd6b1dlS0ZMSVdqWkU0WDYyem8zd3RjZ0tJSmJG?=
 =?utf-8?B?Wms0c3NLUm9TNXVlYWN2T052WEdmQVVLZXZ2Y2d0UW1MYms4eUJiZFJROFh0?=
 =?utf-8?B?MkhteEROenJLckloeVJLRWVUaktDemQxditJeUpiamxqdjRnVkJJTElSR2V6?=
 =?utf-8?B?ZmM5aUd2VUpYaVh3UDFrTzlUdWFVQjlGVk1aRDlITjNIRWRnWTQ5dUZOelZu?=
 =?utf-8?B?WUVhQjJ4c0FDOVN4STZLc1FUcEFTaEVUT2xNd2VrWEpHMjhDZzIwVEtISnZ4?=
 =?utf-8?B?dG1URFlramN4eEJ2NnMxbTVjWXdJcEFJZjlVT0xFMnJZQjljVUNKbHNkQU5x?=
 =?utf-8?B?eXlNeER2TDBYYThGQllydDhFTjUvY241eUc2aytnN2xWRE0yWFg3SkhOVSs0?=
 =?utf-8?B?Tlc5dzAxblR5aEZtRVB3eElmc3ZsZmZrcU1TRmplRk9URE1QcElWcENZR2Fm?=
 =?utf-8?B?RityMHZGQVdQV04wQlJhNDRCM2ZOZE9rS3gyaVZhL0tERGIzdzhpSC9wY01T?=
 =?utf-8?B?QkdmYWR1M2lqWkRXQUJHY2grbG04R3FtMVZhZzNoQjhXZmM3eGpsNVJUeE1q?=
 =?utf-8?B?K2M2UHJ4NVNrbCtpZXdGMUdFM3d0WmlUSjY2U0FkYkVpNmZZOWd2ZkQrQWxm?=
 =?utf-8?B?cTgvYkJwbklKWnd1bFpCbmdWaEVIdjBkc1VWNUM3WFRHQXpxdHBGbnprcWNR?=
 =?utf-8?B?RHNOOXptajFCem91RjJwSUEwTFhtWURMRVVrNFZ2aWl2NVZPNGxVMU52dkVR?=
 =?utf-8?B?Q2MySThYcmI5YUV3ejFpYTJMbHl4amIrNFkxTEdBRlhYQXRPZzJIQkZRV3ZH?=
 =?utf-8?B?NXEwZ05PUGt0dXBVRTlRN25XcUJjMlpDMDlrWDd4aGZQUzl2TXZoZjRKUnFp?=
 =?utf-8?B?cnk5VXhpRXlPaTRtaW42NHpOMFpuZ0N6bFVqcVFidTF5dHlQbWp6b1ZwaGhS?=
 =?utf-8?B?YVZkZ3pqeXRXcEh5QVRMOFl4ZnU5TGpUdVBGZ2U1d2tuNjFmaWNQN2xJZktV?=
 =?utf-8?B?cDJDZUtFOHRlSHRIZE1mVlV6M2ZGT2lFWmF6ZmdEbUx5QXkyc2Z3b255dng1?=
 =?utf-8?B?NEtJOElOeHQ5TFBKeEFyOCt4RCtwNER1YnY3OTBXMEliMTZ0NGkvYTVXd0Ez?=
 =?utf-8?B?WGJqczVQM0wrR1VGd1R4NWVabW4rVkJNUUFXMllVTThoME9OR0t0ck1qYndI?=
 =?utf-8?B?ZTdRYndlU1RFOUxoRkhnbmE0QXZjY0MvTzV2cUlJRmVyNjQrREdiZlJpT1cw?=
 =?utf-8?B?dEdwQnRPUWJ4bXNLVmxpaENrWXR4akE0MGhBUDV0NUo2NWl3NXFaWGVqMmlG?=
 =?utf-8?B?MFFyYlZyMHcreWovNTEvU2I2czhFOXRjRytzaWc5eFNuZXpzYkpBU2YxcFZ3?=
 =?utf-8?B?aCszZGJEa2ZvcS8yTkxOSmI1MDZKT1Vrd3dYS1cycmpIVXRhTmVlVlBKcGhI?=
 =?utf-8?B?ZGxIS3hIdm5MOEJpdC83VyttckxwZGxWRzdLQ0ZORWh0d0Q1U3RySE5tYVho?=
 =?utf-8?B?RFAyZU5BU0dtY3Y5WVY1dUdDOVIvcUVVQ2hJTjk5SU0xVzdVYkxROTBQOGNN?=
 =?utf-8?B?NC9KOEJxR21ocGNwcG1MZkpiOTJkTlkvTm4rY1B0a0NOY0xtaUY3T3ZPRjdv?=
 =?utf-8?B?QWRQckQyNGdZMDhUVnR4alFLdmZGeGlDTDhObG5RNndSRldzYUlucFFDbFhB?=
 =?utf-8?B?TE85a2VseWFIb2xYekwwbEJqWHVoV2Q1SUF3c0JFdk5UWGxpT2hkc0xXc2Rp?=
 =?utf-8?Q?aYEkiMtDIMeLA8JK9E845PgZCtXUe3Wa/UFSou6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmdOMnBLM3VTUUEzNW9jNkhpZTJIelFhQzJzWnJSTUpQcnA0N0ZFUnROVkph?=
 =?utf-8?B?L1YzQjYwSDVGeXR1eXYzNVMva0E4bkZwcnh5YTNSZTZLSzU4eS9iNElVWDNF?=
 =?utf-8?B?VzZXSEVmTkp6N20ranBDWjF6VTFOR2ZIdWRLeFVMZUN1dmFHNHNnQ2JDdWxs?=
 =?utf-8?B?UmpJSHVOQk1vOGtXVGR3UDNWaUhyTXlJT2x1UG9rU1BKU21ranA4WmhHS0VQ?=
 =?utf-8?B?ak1VeXRvMm1qVVJUbk0xWFc2U3FqcS9yYXMyQXhjZDdiWmVZRXNxYk5VZ2s2?=
 =?utf-8?B?QW4vTGp6ZHpjNTFJdmVrUWZZcUlteDJZZlRNc3VCcSs4MW1lNDUwOVc1dXV2?=
 =?utf-8?B?ZitVcmVsWHdxbzkwb0JyVDliYm9IR25mc3JhWExLeXo0cGlzOWxlVWtpS2tk?=
 =?utf-8?B?eHA3NXE3NXZ6WEI1SDJrQ2VzWEhZd09LSys3SW4wSWFZQnVzM2tNOVJWbGVt?=
 =?utf-8?B?bGdFQTVvNjNJMCsrMFByYUk3N2FmSUpxOFJRSWtaMmJqdGNNRFk2ejJ3WU5z?=
 =?utf-8?B?Z01mWk9PZzhsTUFaWkptcGNYMzR0aVZRWGxDNlRvM25ja0U4UDFrK095a28w?=
 =?utf-8?B?cm5ta0plQWF1ZHNUVDJHdFUydm5Kc0N0L0FUbHRGVUdjelJQMnFoSForV0M1?=
 =?utf-8?B?a3JlaXA2L0NhL2ZneUJoUTNjYzcyRm1Qd3JMb05qLys0OVliRitodGJEZEMv?=
 =?utf-8?B?MGdwd1k5bkhSc3l5SHdJVlBuazdueU8xSUNDRTlhckVPcXdYdmVYTTlDM0hr?=
 =?utf-8?B?QVpOSWV4VDFMSGhXWGh6eEVXWG5kaUNDeDJhSXQ0MmZlV0g3VDBBd3l4VEZU?=
 =?utf-8?B?SWlsMlNoYWFtS2M1cGMrSGFFM3JKNDR4RkVxOTlnSzRpUDh6MjdpZFdiNjVP?=
 =?utf-8?B?OXlRRWdjMzVLb08vWHFRNUZVdkgvektJYk9CSHR3SmY3a21mVVNiUkF3R285?=
 =?utf-8?B?T2N0VldvdUwwZEczSy9hU0cyN2lGdG5VVnVxVGJRTGhsQ1NkenU5bVhyaEJr?=
 =?utf-8?B?WHRJa3ViQVFIUkpxUWV3NU9LdXlwZit4c254N0wzZFJiRDBkaHcvYjZxaVdZ?=
 =?utf-8?B?QlBnbzdEczVPS1AxNjBkdElZSksza2dtR3J4eVNzMDVpM2hGS1VMNXNhdDlZ?=
 =?utf-8?B?SGh0SXRSUzhYQXkycnhzaWZzTmZaaVBPdTdSZVNhOEFMRTJNSWhzL2ZFUDBW?=
 =?utf-8?B?Wi90TzJKaURtWG1WaXpHWlBXL1NqOFJGaVo5NjhPSWM5UTIwRkhadjFVd2t6?=
 =?utf-8?B?RWNzVm5YM3lsZFRGcVQwVW5zUk1oeERnZmg5R1BDRFhEcmZVM2wyT3Q2Ynlp?=
 =?utf-8?B?dlBUT2FDSHZoNE5XL3ZVZTJlamI0NEZFZFhGYjZEcHduZFRsYXVyN0ROaW5y?=
 =?utf-8?B?aTlCWlZjTThjWUlRbzhrTVA1aU1HdzdOb1lIMU9JYUcvTUFGb2FOT1Jjdlph?=
 =?utf-8?B?enZaSko4amlaN2VocXNaVUZJeHlmSlpjUzE1bVY1QjcvdzQ2TDk2b3pKeDZV?=
 =?utf-8?B?eFc5WGxoaENBMmJCNXdkVXhSczNXakYzdVFnZW4vWTczRThqSjhIR3RwVEZs?=
 =?utf-8?B?RG1NZzlQMC9BcWw3aEtIbW1zTXE2OFZUOEc2dW14V0hDRURBQkdCM0ROTFla?=
 =?utf-8?B?bjJxcThqNmUvUXF5RTk1RE1KbnlUeXR5cHhCWUVwZDhteUNxZWx5d0RFUGJV?=
 =?utf-8?B?OGxKYTdKckVBb3l0V0FZSjVCWWRGNk9LWVliSzNjS3k3R2FxNFFQSWl0Mk85?=
 =?utf-8?B?a01VTEdlWDFQanlVQ0pvbU5LbUpJNE1iRWJvMEt6VFd3ZTRiWHlXeEIxNEVu?=
 =?utf-8?B?eUhyRUtGWEp5TTR3dVlkeVlYRzhqZXcvWHVXdzI5Kzh5MjljUUFpQXkvSXRJ?=
 =?utf-8?B?QlEzSHRybGN3Tm5kK3B4Q0dpU3NCdVNkOU9DQ1psZkdET2p1N3lkUW1qV3RK?=
 =?utf-8?B?Z3EzdC9ubDJhUUIzTE1mUTVoN2kycVFOT0k5ZHZmdXBXUVpscEtsZnBiY1RP?=
 =?utf-8?B?MXIzcEs3d0FCemxTbGZsTEhZbmF4M2hNcm85T3JJWVdJRG03VUlJUURaYlVG?=
 =?utf-8?B?WnBaZXptWWpJNHJNa1FqcjV6dnRRbVE5eWpPQitTaDh1SW9CQU5hUUV6SkpD?=
 =?utf-8?B?MkRHTWk2Z1JoaG1aUjdIb3ZGY09kUXhTSmlTa1d0NTBiNWtIeWZScDVIOEtQ?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75b60304-f7c5-41b9-f7f5-08dcf1c9fd25
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:15:02.1012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 713CpKH4kJPxfxdurjuowbHmoeMpc/rgPP5YG3abxTDhn/lxmhc2CXH1AQ7eyek7FjzWKGDY3mOqmaRN3eeDLIqCg4jc2b+ZqoZYQq2DU6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
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

Hi Suraj,

Thanks for the review and comments.

I agree with most of the comments on the series and will send new 
version with those addressed.

Please find my explanation inline for your query:

On 10/18/2024 7:47 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Thursday, October 17, 2024 1:54 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
>> <suraj.kandpal@intel.com>
>> Subject: [PATCH 04/10] drm/i915/vdsc: Add support for read/write PPS for
>> DSC3
>>
>> With BMG each pipe has 3 DSC engines, so add bits to read/write the PPS
>> registers for the 3rd VDSC engine.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 +++++---
>>   drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 6 ++++++
>>   2 files changed, 11 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index e34483d5be36..718e1b400af5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -411,8 +411,10 @@ static void intel_dsc_get_pps_reg(const struct
>> intel_crtc_state *crtc_state, int
>>
>>   	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>>
>> -	if (dsc_reg_num >= 3)
>> +	if (dsc_reg_num >= 4)
>>   		MISSING_CASE(dsc_reg_num);
>> +	if (dsc_reg_num >= 3)
>> +		dsc_reg[2] = BMG_DSC2_PPS(pipe, pps);
>>   	if (dsc_reg_num >= 2)
> Quick question why is this condition not == that would make sense only the first condition
> Should have been >=

We want to set dsc_reg[1] for case where dsc_reg_num is 2 as well as 
when its 3 as we need to write PPS for 3 DSC engines.

Changing to 'if (dsc_reg_num == 2)' will only set dsc_reg[2], but skip 
dsc_reg[1] when dsc_reg_num is 3.

Thanks & Regards,

Ankit


> Maybe another patch to fix this
> Rest LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>>   		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) :
>> DSCC_PPS(pps);
>>   	if (dsc_reg_num >= 1)
>> @@ -424,7 +426,7 @@ static void intel_dsc_pps_write(const struct
>> intel_crtc_state *crtc_state,  {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> -	i915_reg_t dsc_reg[2];
>> +	i915_reg_t dsc_reg[3];
>>   	int i, vdsc_per_pipe, dsc_reg_num;
>>
>>   	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> @@ -824,7 +826,7 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state
>> *crtc_state, int pps,  {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> -	i915_reg_t dsc_reg[2];
>> +	i915_reg_t dsc_reg[3];
>>   	int i, vdsc_per_pipe, dsc_reg_num;
>>   	u32 val;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> index 941f4ff6b940..efaeb5e0aea3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> @@ -61,8 +61,10 @@
>>   #define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0
>> + ((pps) < 12 ? (pps) : (pps) + 12) * 4)
>>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>> +#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB	0x78970
>>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
>> +#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC	0x78A70
>>   #define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) -
>> PIPE_B, \
>>
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>>
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
>> @@ -75,8 +77,12 @@
>>   #define _ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>>
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>>
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>> +#define _BMG_DSC2_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>> +
>> _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB, \
>> +
>> _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC)
>>   #define  ICL_DSC0_PPS(pipe, pps)
>> 	_MMIO(_ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>>   #define  ICL_DSC1_PPS(pipe, pps)
>> 	_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>> +#define  BMG_DSC2_PPS(pipe, pps)
>> 	_MMIO(_BMG_DSC2_PPS_0(pipe) + ((pps) * 4))
>>
>>   /* PPS 0 */
>>   #define   DSC_PPS0_NATIVE_422_ENABLE		REG_BIT(23)
>> --
>> 2.45.2
