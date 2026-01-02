Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2558BCEE0C7
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 10:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B9A10E0C1;
	Fri,  2 Jan 2026 09:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UcOOZDNd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA1810E0C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767345531; x=1798881531;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kTqazcJA6Pr564h4pP/edcCiGxb7lKPuInnqPVQpGyc=;
 b=UcOOZDNd3zsrfCemum9WWP1i+b564idz4v/liqkf0nCgmrzqHSzzxV+D
 mPp9gILvnplkAVKTkv/pqAZG9d0NDZ+uJJepjmF+ZLwqJjMiyjILEIy4/
 mL94IJ7FqKxJPKAPGHELHNCL3vJuzWx4Q/I5g7OR8BikIvK4OhW1z/s6l
 77RGQ8tub2RtESTkBXEu2hL5O/x3gZ8KuQzNNWt/Lz4oujzOpzNvajPlo
 s8OxNdo4gzH+AoVB44zA+xd8fKdkBubK+SLdj7lGrbaRoGiw9EMXYknXa
 gRVCAKbITEBESHDlXER76B9T67zBYI2SPoW0auVtu8GjoGGr7YiKuagcp A==;
X-CSE-ConnectionGUID: 2s7nnzeuRzORTG+lasfn/Q==
X-CSE-MsgGUID: rpyG9129QKC4O7McKtpJng==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="68745080"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="68745080"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 01:18:50 -0800
X-CSE-ConnectionGUID: 1QGzvCtsTBSQyILz5AoAcw==
X-CSE-MsgGUID: F555HNTbTrWnTDHaRhIbIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="225269104"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 01:18:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 01:18:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 2 Jan 2026 01:18:50 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 01:18:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=di4ATZd+bZLyEfF9ysVgD8PNbnmMiDuy6VJpO5rxgcxHpNRlHxQRtNiGxxUsGO6pZLSreV9U2tPjATioiA1R6s+Sf7NaVt/LpDnUQzkDifyQtXP/XIpIjhP/FcIsC6SQZ9xYtDfJbmfdMt/+F9erfY0SpUXOnT7Jf0zXSmPZ/TXktFf8GDiZQS0q1t/fCAqPbuKXffbbzt1+dLoqkMjSUkZW+w0/WRlD6bXas+8ff20+WNAYKYdJ8splG43egrp7FEx6zU6urgGYBA3oowzYqlkkZ2Wkk+U/N/hj1ROxIPIF+75jBDo+fWWjHJegKSGy37acews8X/cWAKFeOPnGkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DG6D3QIqXcu1/7vOT5II05nr1xMisNM9OfBdqkXpYfY=;
 b=JGeZLyHkVEzjgqEHNEuhdNOx7H/Fnrdg/U4w1Oq9RpDfDTZ4rbYH9pOHut/NLFW29Jb0axjCcwpUNVNYZcomNVpvsKHrZT8o/+fuW17QQY+Aqzm/+EWk3BjzGW8m+/8h35G2ybFjWcTzBDzCNS0G437wLRGKmgiN4rGzlOzbmHBHXpd1Q46CcFB0K9hNENgtxktkSFGsjIb6Cr0pDZdXKvHEmMW4ylhMMEKf5sFEKgGvejArtQLkE3JMjK4t01GIhDK0jff9qD7ktgJPAbn+4m3m8CvKH9L3oaNnUZFmj2WfMV+WSf+8Sbg7NgrMlz2wuF9SMALzw/s2XvyX3xXgUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8205.namprd11.prod.outlook.com (2603:10b6:8:162::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Fri, 2 Jan
 2026 09:18:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 09:18:47 +0000
Message-ID: <b6640904-6332-4175-9389-4a6161d92d17@intel.com>
Date: Fri, 2 Jan 2026 14:48:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/gvt: reduce include of vfio.h
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1767180318.git.jani.nikula@intel.com>
 <fbfca6252798ab58717486d1592fed310f880d42.1767180318.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <fbfca6252798ab58717486d1592fed310f880d42.1767180318.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8205:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d691887-612c-4036-a7e6-08de49dfef5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmhHZFFaRlNObXRlakE0NkduNnNCbWt1cFZzZFFVcWltR2IvY0tYa1EvcjNK?=
 =?utf-8?B?TEZCV0N4SEd0QXZVY1FGYW1tZldreXpNdjlLdU9NNFNmbVp0V2lQWGF3QlhZ?=
 =?utf-8?B?UVpzaVBvQUZwTjROL2ljc011ZFhoWGhpMWNxaVJRWFdRYXEzVTJYcy9BMDJj?=
 =?utf-8?B?Unk5VmRtMUpGS1ZBNnZuTFE1b3ZVNHRkWi9HTmxybktQbldIbUZtNzROK0lm?=
 =?utf-8?B?ckhIRGRuV3M3ckhuK3pxS1BwQm1XRHNNaGJNcFhjYTVDRGNLWUxSdTBBa0p2?=
 =?utf-8?B?Tjg4QWdITlhTeGt6YnlwOHUwZUR2dlR4ZVAzQi95SXhLVk0yNEVIUTIvVVRP?=
 =?utf-8?B?Y1Q4OVN6YUxQUlpjLzcra09vSURCaHIwSmNnK0l0WTl4WGNkbGR2ZWtsM1Fo?=
 =?utf-8?B?VzlnNGFaUkJVeUM2WUhNdEVaUEFRdFZoSzFXcHAvWXJZcWY3MFBpTkdlNDNQ?=
 =?utf-8?B?cENjaThMSVdhVmcvK2JhbC9sUC83Z2NOcGRydG9IQ0tYbUhKK0J5dXlTNVZi?=
 =?utf-8?B?OVNLSEVXSHltekJVQjVMcjBSb1JieGdLd3kzVWcrZkt5NVVBMGRzWitSWW0y?=
 =?utf-8?B?dGZLSEVhZ2FzMGYzUmU0cG8rZVBhOWRMNmZXOFBIaDFjWFFNdzVsZ2FISHQx?=
 =?utf-8?B?RU5CZXlCTXJjRUVtczc5MzJEay9BZWZCMmhqdXMyQmJRNmsxTml6UG8vTWJP?=
 =?utf-8?B?T2pLRlkxcCtwd0szbGhEZVp6SVhTaUlYbXdUMG1XYXMrejhkRHhQMjZuT1V1?=
 =?utf-8?B?d1Nnd0RRUkhjYzB1N2hxdWRUNWpuem8xMzRzSHVrQ21GakZOMGFFVlAyZ0ww?=
 =?utf-8?B?UEJ1RGlWakR6eHNKbnYvZEtSYUh5M3hJYmJFS1ZmTllhY2wrNHljM20wc3Rh?=
 =?utf-8?B?R2d2TU5rSWxJQmhWTmN1QnRqY1RGbzF3VmFuQklJSHA3S1FIcVBMNEtqK2Nr?=
 =?utf-8?B?UndBR1hEdjhFRTA5VjlwNmdoOTBVS0YzK1l4SFpyKzhORjhDV1NYVThFemVw?=
 =?utf-8?B?VGI0WmJYRzRJQ3lQRW9KemgwMnY2RVRSU3c1NmtoQ0JVN3FNNnNvN2w2SGZR?=
 =?utf-8?B?N2tNSzViMzJmY05YV0JsWlViZ2xmVUNaWjBid2p2QkVwVE1YRVMxYWpUMndR?=
 =?utf-8?B?NHR1eC9WaGkxcmxFTTRNLzU4cXQvb1B0OE1IbWhnb21uOG5ZdFFadUI3TW9x?=
 =?utf-8?B?WEdpeWJ5cnA1V2JpQk9xWFN2TnRkc3Y4RmtyNGszWlV2djY0dkcxQ09HdmxC?=
 =?utf-8?B?Wmg4N3ZVQmpRQVpJQ3Y1QUZDUzlQdHNCWjdmakZNUTVYbCtSWXRRUTQwQlEv?=
 =?utf-8?B?Zm5USGFWdm9wUitpSFBoL096MGdWS1BpYXdjQ0JHMktBTnA1MHZqR2hCQ0d1?=
 =?utf-8?B?OHpkejVJNkd3U2JPdThRZVlab2psR3Fud1BKZFVDaE5RZitkdm9SQTJQOUdL?=
 =?utf-8?B?SVQrYkkzbGhhT1c0UjdoYkgzd0dmQ0RaTDBkZ1I2eitQd2JYc1liL1BDUng2?=
 =?utf-8?B?SlBRbW9uRzUrWnFYck44OTRIdElRblRNSC85QXIvTDFQTmhKTVZuQnZ2aWcz?=
 =?utf-8?B?ZUtrR09rT1p0aEVnVEh2YlhnU3J3bDFQekhGRFN4THF4aTlUNlRLZ1hEZEZV?=
 =?utf-8?B?K083V3pTaFdLNE5kNzYwRk53NzNqdVRVZ0VxNk1pbjdnb0dBMnBDVG52SlpT?=
 =?utf-8?B?a0w2RnMxQ1ZEdU1pcTBEZ1FCNEY0cmx3YisxODlQRzduaEkrUjZxNkdxdmRC?=
 =?utf-8?B?a25Jbjd5YXNCT3lrT2dCVU1PaUJMK3Z6NlV2RzVsKysyNDB5T2NUTWxhME9h?=
 =?utf-8?B?NXBNSGpFc0tHdWRkdUovcUx6aHcvVzAwazFPUXB0ckFOVnJ3SnNScW4vRGlM?=
 =?utf-8?B?SGd1MC9nRHNLYmx5Mis4d0MvbmtDYWhmemUzT1IxK1p2bTdoSVVjYmRCTUI2?=
 =?utf-8?Q?haOMe08+/LbxRzL4+egHBZ+6pts8PZce?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnB6Vm1mdjEyZjZrS21TYXFoVEdteFBVZkhCMEJUQVhOTDl4SlJDMVhqNnFC?=
 =?utf-8?B?Vi9BeFhuNVl4UXQ2cWVDRmZJdUVhdXJyTzZGMXVHUm9McGw5Sncwc3RxNmRa?=
 =?utf-8?B?QTdQS3lOek1jRk1CblB5R2xLWjh5OExxdjMzYzZEOFl1SWtMdW1XY1pCUWVH?=
 =?utf-8?B?QnNzTlZJOXdsNUlJTURLQWRETkM4dDd0dmZQL2hNZW5oUC92ZjBVL1dUdGhL?=
 =?utf-8?B?Tlo4bEoyVFQ4Z0xkRitsWERHL3g5QzZRWU0vRG5aTGtjRFVNK1NJMXFQRDZa?=
 =?utf-8?B?cTNndWE5UTNISzZ2UHNMQVhLckE0c1ZUdTdRRStrazFCTC9nWlVibjhua0NT?=
 =?utf-8?B?cGt5T3d0QXNJYzVxcC91NHMxVEpBcXVmOTBnNzVmcDFZL1JieG9hc00rZWtz?=
 =?utf-8?B?ejBTd3R3bzAvMWx3T0RqNld5aE5rYXd1Wm1mekVPdFNLaVljWDliZjh0Mk0v?=
 =?utf-8?B?a0RtV0o0QnVmckRBWHNyTlhjZUxOd0JuK0RkdXhBcEl5dzM0V2tMM1RPVGdk?=
 =?utf-8?B?V1dXRDMzNlZaT1pIRlA4M1dHVVZqWHdhSUhJUGVsWEVCOEo3aGFSZFZVMUJP?=
 =?utf-8?B?cGMveEVVbEFXK3ZqV2JwdlZaMk9kYVdLQ3NhcnpGeWNydlhNeEh0bnVaOWYv?=
 =?utf-8?B?M2pLV2hMdWpIZHlpM3NQZTdRUzIxQ3BBMDF0RDdwNHBkbWI0ZDljWmhwVUhN?=
 =?utf-8?B?YWRTMW5DM1ZBVG5jWlk5b3lBZ3ZHcU5KanozUFZ2UHFzbDlCRXZBSHRnZk0z?=
 =?utf-8?B?RWN3eDUxMVI4Nm1OcG5oNEtEbGpndHY5ZFM3NVo0SHdDeC91dlpPNVhGaEhI?=
 =?utf-8?B?YjhPVkZyQy9VVVdmUXVoUldJSGNsVWpOWEljSXVRSXpsTTV1WjEybkN2VnA5?=
 =?utf-8?B?NldHUjF4MDZlU1E1TEEwbDRHcmJ6RXNFYUgrV3lRNzhEQlA3aVFMUzNFOUtU?=
 =?utf-8?B?QVR0b0xJTldEbzc3NVZ3c2JFSHIvcDI1b2NXeHVUNXBFQkFPcW85dWFia1Zl?=
 =?utf-8?B?SWFNdEsyN0dWUHF4OE9UVWNzZHZVWXhMNVYwaFl0UGtuMDRTaDM3a3NRUW9R?=
 =?utf-8?B?Q0hveE1VN0E2MXFrOW12SVJ1WXpVcW5XeVhlVS8vUmt5WUljTXVUWkVaQnd4?=
 =?utf-8?B?bVFVVU5COXhvZ0Nqd0JWY0RzU1o3b2N2VU1nZURwellxcTZPSldNQmtTZUZq?=
 =?utf-8?B?SmdCbEkvdXdmR2tSUFdwSXdoTjVxMVpFclNGRldKME43OUlSdXlCZ2VsdDhK?=
 =?utf-8?B?Qk9DeEtGdkducm5IclJCMEVYR01hWExPOExIN1VmdkFZZjEzSHU1Vjl5M21j?=
 =?utf-8?B?TmhtOS9QRTMzYURjZlBtVklYQjFLcGhFZm9jUHdHdW9hcFMyb053OHpVZDdn?=
 =?utf-8?B?QVVOOE1ha29Ybi93cmIrYjVYSzlObDQzOVQ3ZWZ5Mnpqd1NjN0ZtK0I0NHJw?=
 =?utf-8?B?NkNxczl5eUFlT296R29oRkMvV3hwVFFHMVhVVzJEcXVIbU8wYlIxZGN4WlUw?=
 =?utf-8?B?c2cwY2J0WVJQQUl5RW1WWnQvVE1zam83REk4dFNNOEtxMzR4MThEWlRyZjMz?=
 =?utf-8?B?N0hENWhuL09aMTdJQUJ1TVp0dHR1N1lzdkhWdVYxb1NCa0x6Um9xeDY5M2Jl?=
 =?utf-8?B?VUJ1eW9BOStiL3NMMVJVWksxUEZScDEzNkUydHhGS2tyaHpabGJDUklaVE5h?=
 =?utf-8?B?bGVRVERPeDdndm5zbXdMMHFLTk1jaU1CSlFqWWFGaC9XRFN0MFNGTWJESzVo?=
 =?utf-8?B?ZjZoMmF5ODdoT204QkpKQ3hkemdPaDBhaDZ0azVSYlE2dUwvL052Zks2QlRu?=
 =?utf-8?B?dzBDOWhpTU5yU2ZORzZXOWc0QWd0Yyt5TS9hcys0OGlaNW84bi9TWGdKV3k0?=
 =?utf-8?B?MlZrZVIyL243THZ5OHpLRlVoSWkzWVRGbW1PVmN0Z2c3em1HQ2lrdHhoY2Ix?=
 =?utf-8?B?WGg3SEpYZm5jU3FNbXRSYTlhS2Nhek1hcE40eTZiQk1sc2c1Q0NtVnEzcC9y?=
 =?utf-8?B?d3MrQytBZUdqSUxQZVg0QUhueFFyK0tvZEhXN3d5aS9Tb1FDY2lmQU5KbUhj?=
 =?utf-8?B?NFV4d1FkcUpSNklTWlBobDkyNmtSK1dSY1ExR2VUWWY2MVJWK0o4eFFuaW42?=
 =?utf-8?B?dzJpMnc3TEZYdzc5R0pGVW0wc2EyKzJjRWRZb082anhLL0EyY2tWN01wMG5V?=
 =?utf-8?B?bnZsUDQ4R3pXa2o2QzlWcnVHUG5pM2NhaTE2ZEREa2dCTnAwY0JpV3VKQUpo?=
 =?utf-8?B?T2NNRXNoY3NTRndBejFSM1g0di9YbndseXpVMXhEYytTS3BHc0RiK3lHT21u?=
 =?utf-8?B?cHVpN0ZneGJJQ2MraTRndDdxSSs4U1JQSW0rNm41NTRRV0wzdkd6aGowbURV?=
 =?utf-8?Q?F6F6qUdkO7vPljx4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d691887-612c-4036-a7e6-08de49dfef5d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 09:18:47.9106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LP1Pv6/fMqu72hj3wNHtAf1r0gPqCUa//CeSTD4BLE8lK4HDQt+5iet+LyEFvUbFf2wXdzc17nBS5NEPhiIIb6FpSWzgaY0sfcnsITo62cc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8205
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


On 12/31/2025 4:56 PM, Jani Nikula wrote:
> Nothing in dmabuf.h needs vfio.h. Replace with actually needed minimal
> includes.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/dmabuf.h | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.h b/drivers/gpu/drm/i915/gvt/dmabuf.h
> index 06445e1cf3cf..aa7523386d94 100644
> --- a/drivers/gpu/drm/i915/gvt/dmabuf.h
> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.h
> @@ -31,7 +31,11 @@
>   #ifndef _GVT_DMABUF_H_
>   #define _GVT_DMABUF_H_
>   
> -#include <linux/vfio.h>
> +#include <linux/kref.h>
> +#include <linux/types.h>
> +
> +struct intel_vgpu;
> +struct intel_vgpu_dmabuf_obj;
>   
>   struct intel_vgpu_fb_info {
>   	__u64 start;
