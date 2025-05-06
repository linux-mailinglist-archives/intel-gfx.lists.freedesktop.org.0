Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9438AAC584
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2F910E691;
	Tue,  6 May 2025 13:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJkB+W1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FA910E691;
 Tue,  6 May 2025 13:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746537358; x=1778073358;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eAORNZ5ukySyN/4RoZh1PjIkC75jSYh6xUneaxIRsUo=;
 b=gJkB+W1Z8Vw89p9PA8qSnpnt9MFOULs0ffljNTPH3e7BAFhLMpzHxx/l
 jvx+z/Kd9pw5+outJWKdBHBGUqNt762QD4S6ghM6YXBJja/vNIezwoBsJ
 P0cFdXAVyz3Z0tlg480D1BdMD3ydLHaLjCgbmxnOCO0mvNjcAcFXSls7Z
 U+s1KWlMNz1mh/jCxfuJ9//vWjz979AOtw09A66hmWXI2r/vuBCt+/9Or
 TM4/CPgPfEe61Qy90F5Fna1FGRd/Eidd2scwKtMgXZPCkWamSrji9I4c4
 Plvt42XOxJUrQwnAS5JwpWnruaOUB9mUPD1y1/dmR04Pv7zkEOQ90s7A2 w==;
X-CSE-ConnectionGUID: BZYTdD8sRvSgFV7lfvAWyg==
X-CSE-MsgGUID: 1XsQtmubRIya4/HmnRbftg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48113469"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48113469"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:15:58 -0700
X-CSE-ConnectionGUID: dy5XmNETTMig7e6NY58oZA==
X-CSE-MsgGUID: OkRAUUW/SaqVBFEALodpsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="139681150"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:15:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 06:15:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 06:15:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 06:15:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hd3q7SJN7AtALXe9U3Vs8bcZ/7yFSN+WQgctIjbpSqak4OAyiNY/d72cr4+h+kG8Eh9wvubF0W9sHG9JstF/puLAnXJCdblbpeLVwwwqvAJ4r2HQDA8CQVmOg3nutcK0av9y3ZuXX6Lu3dyfESQqioaskRUKkenn9cDUZcun2PmIjd5Geamo+o/j0G3uNH05+c4F3rTh0P+A3+RadRi+lfgqYxu2Ow4GSSRleyhRlugOzQpEuesQb6REdp31WH8yzcq2p4Mw00N9AlqYbJDIl397dNqNM/eh3ugMiGBQP/v6kXH8meYh7xR3hp1QkogVUqlQghFRrzpHZMrxox/QAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6MQ2VJVx2qantED/IErBL5NxsiqD0I6fm6EE4sa14Nw=;
 b=wLE9WvnvnC+jKey2ubqcNlSCwbkmDndjPJUWC+mtm0P9hBTg2p0O9GG4/XCTF1AmxDQjZeIdIzDSFQnOGLOHW1WuwCujD5BlUB4GLPR4ucs9RD/w8ivZ1yq9BOlHnv+fzwYNEedUg7CIHSEcUPXVhRn4tyRwRFloJ/RG+XFRpqbQA18jeeqB476hegqQjS+YAyyXQig7UhEv+t3uggwiBDvvhWErvmPd2ApikpOsVOahKOoxhNC9GeVWV5PS6RoAqdBG9+j0uJpdm/Wm/BxDQniINOfWsj4eI/S/DOobdcjULvo7fHrlr8dJcPg75OYtTUon2WPWXPrDnxF0kFWJ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5035.namprd11.prod.outlook.com (2603:10b6:806:116::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 13:15:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 13:15:49 +0000
Message-ID: <aba744d9-ed10-4c8e-9332-f69310a60a07@intel.com>
Date: Tue, 6 May 2025 18:45:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/12] drm/i915/dp_mst: Enable fractional link bpps on
 MST if the bpp is forced
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-13-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-13-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5035:EE_
X-MS-Office365-Filtering-Correlation-Id: 384f1b8b-3e26-4cc6-e70a-08dd8ca01e84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L21uY1RRZ1NDK3RnUU1uTEEyVnVVcFlNaUFrajZrK2FGWnJaajhrOFA2b3Z5?=
 =?utf-8?B?YUhqeWw3bXA5eERvT3htcjRjTjdkckRiYWxvMXU2YXNsQWJtdGVhZTVjdGMr?=
 =?utf-8?B?Q2p2dmpPNm1iL2lKbjNPUnVEMVVKMXp3dHlUb3Y3OHdyZDZmMkFuQittUUpr?=
 =?utf-8?B?bm9UWmVYZnN1VnFNb21PZlpib25TczlaL3RpbjNMTGFtYjFzZm80TW9Ba0Qy?=
 =?utf-8?B?R2ZXRnVMZ3BENWdFWlpvdUF5bTlqb0xET21GOFdoMGcvcmpjamFNRnV4bWI1?=
 =?utf-8?B?OEV5WVZMNE51S3RpVk5OWkRYL055NlpKMDVZQi9aRC9uNmh6RUNRNlBmbzVo?=
 =?utf-8?B?T2ErQ2tTNlBSbEhFbmhZc2x2QnBhTTRHT0lBTTE4RU5pYkFuUVIrdVBjZG5n?=
 =?utf-8?B?b0xlYk5JQmxMRSt4blFKWFMxQ295bXFyM0crNFpzdFV1MFh3b0puMmYzT3NO?=
 =?utf-8?B?ZTlkZVQrTmlLYjlPVnpkYnZSSlJJTVBBVE1xYllFMUpZekZzemJEdWI2S3Fm?=
 =?utf-8?B?UGJGY3QxRmFsUUVlYUtMMngrU1IwZitUcmVFVEJUMEJlTGY0UEI1SDBRRUVv?=
 =?utf-8?B?NlpWR3ZoRmtWbC9lN25EdHc1QnBvTGZBVVZtQVFkeUN0RHlkK1dhd0RmM3JC?=
 =?utf-8?B?cU1LNnM1S25YN2ZMLzJGVGFUYjM5TlAvR1JVSVF0RkhXK2wycEpIYUpFbFJV?=
 =?utf-8?B?N1E2dDBxaDhaRHkwMUhZcDJ5eXdETGZwZGZRZzZQNWROQ3FJMzdVdElwQWNR?=
 =?utf-8?B?dmlxR0JBYzdraHZCYkJUQkc3NkxYSk04T3VRSmNrcTVMejhWc3QvNGo2RXg1?=
 =?utf-8?B?MUV0R1UxUld4bzBtYStqT05rZWpQRjd4WjQ2Z05UM25OSXJ0N3hWdlRabUhZ?=
 =?utf-8?B?ZG5seVFtMHlldU45eTE0aHBMY3NHM0FzUG9LcFVocjRVbXJRM2NGd2NLK2RE?=
 =?utf-8?B?d01GUWNBaTN5QUlaZmZVemxGS3c4Qy8wWWxCU3lSOWxBZEh4dU80TjRUYkxi?=
 =?utf-8?B?S0kzaTF2VVFvcFdNWDBucUZ1cE1adUswY2RpRXF6TVpUc21hcUl4UjFaUmZQ?=
 =?utf-8?B?SzRNNHBEVFYxYzZmVXF2RGZIS3RxMVVxeSt3dmpOa0oxTFJQOXpwMTRNcjZm?=
 =?utf-8?B?OFBwQVl2V1F6ZGdLKzlnZ1hocDQyWXg2ZXBmZ0xpRE5ZRzBUUHgvQ2FYVnIv?=
 =?utf-8?B?cExYMWVLRHJtUjhqUzlJNXlhMG81VjA0ZDFjUjlUSFYwZlJGTmxheHE5blBD?=
 =?utf-8?B?RlpMNmVMbVBFMmk5QWlnN0FZeFYrQXYwTW1vSEdVS3NQUVdxR1JkWEJPV1dM?=
 =?utf-8?B?aXdMTk14VndQSDUwRm5udkordHpwdDNuNzhJOUorM2lVUFYwOG4vNWZ6MzRT?=
 =?utf-8?B?ODgrODlmTGVEQkxsbVhwRWF2NHFQaU04L2JKUFhaM1NFU1VsbmpyMDNnUFFG?=
 =?utf-8?B?dE1uZkdxTWxOcElpdnhWMlk2Q1BCVGhGOFpKVHBBNlhGVUljL24wT0d1NHZL?=
 =?utf-8?B?MlFoQkhyNEFuOEFlaDdQWnNZM2RXSmFndm1GSHpqeVh2UCsyNG5GcWdBMDk3?=
 =?utf-8?B?L1Z5ZE5IczQwaHlERHBYKzhZZ1hLSmtwZTB4ZDFVRGk0R1JVMEZUUXo1MmRJ?=
 =?utf-8?B?Nk11L1hNTlpvOEJIcjJyY2MxWDFpc256dzRZcHBXNUZzMDlVeGpMQlRId3Ni?=
 =?utf-8?B?TFdCMWJHdXFIU3V0TEFmaFFPY05FWkxVNkJVdUJ1MFlUSzhzNDJaOGNMQ25K?=
 =?utf-8?B?cmk2TGRLcWtZbHFyK0NrNmIzZXNJZEl4Q051N2VIY0l1NjluYXZ1ZmE2SEU3?=
 =?utf-8?B?bGR3SWlwc244eExmZm05OFJpWTZYYVRBSmh0NXQ4akovMmhUL0M5QnBpVXZt?=
 =?utf-8?B?QlRGUU1POTJzMkJoT0hqblUzYUYxK0VpUjllUjRFcG54L3hVdGlqTTAyR2Vr?=
 =?utf-8?Q?AizxIxd4tLI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlcyS0YzdytQWUVvUng0WTBKNFdyQmExVFNnTlZkMkN6bXBNZUVzVGIrK05H?=
 =?utf-8?B?U3B1MTQ5RWlEL3ZCb081YjNvb3BFeVh2TjF4VElIRC9kOXExRXhBTU1hY2ww?=
 =?utf-8?B?d3owRlJYL2FCY1dQMFlBamJQY1FVMHFFcXZZSy9SeENXVkhDNkdCaU5zTnFS?=
 =?utf-8?B?UkdnWnNDN0hGYWhOM2tUSGY0VXQySGxaY0ZRVC9Mcnk2c01TM1dWUW80MVUx?=
 =?utf-8?B?dmlOdzBRRVpJRUQySFVQNTFlVGNObWVaVENCQ2JyVHJtTG14dnl3cWo5QTB5?=
 =?utf-8?B?T0FzNmlaVC9hYVR5RDNDNlFFcEJRcy92TkhiZ1ZHTkVWejRHL1AzMjU1bXdT?=
 =?utf-8?B?Z25iaEZCcmhUZC91azM5ZWNHUVJjU0dOaS8rR0o5N21zL3lmNFBrVDhEMXJY?=
 =?utf-8?B?MjR1cFdLaWx1Y3NPcFR6ZUh2Y1VpSVJRM3pmVWRGNmJDZ3ZDTHJ3R1dMZS80?=
 =?utf-8?B?K2I2a2VHZW1Sb010VlhCLy9DNVY0dk1UY3EwREtRQTFDSWpvemtZc2lNRnJ4?=
 =?utf-8?B?S1lTZ1FVdEdRUGVZR2NieTE4Vm4vZEQ4Z3Z4cjNGRnZCd3ZLWXdoSGF5bkI1?=
 =?utf-8?B?YmdmdVVuZnlYOG5DT0c4WEo0Wmd4N3oxVjcwcWNMa1BnWXhFenhjMzU1b09Z?=
 =?utf-8?B?U1oxc1ZQblFkWGY4S1o3ZlVueUJvRndhTGZvcVlNT0xYbmNpZFkvd0JETXZS?=
 =?utf-8?B?RlY1bzVKTVl5eTNTL2syNW9wRktPNEFsV09rTGdjZks0L1lQZ1p1TVZHdkVM?=
 =?utf-8?B?NEljUWtSTStjeWh1cnZQeGE1amRqRUgvb2c2aU9ycytTVS80ZmRqSnlUSCtY?=
 =?utf-8?B?SFhpT255TEdCa2g3L2hFdGxObHdieTFPWEJrWXVJVmhhRjA5N3h0NGZwV053?=
 =?utf-8?B?K2djeVRuVFNpdnVGK1dCUXROb2Jjdmxlc0J5VUw1eTJpSDRuY3NpOUNsS3Ra?=
 =?utf-8?B?OTFoN05VQ0dJWWxzM3lVbmNyREN3eEVocEhLNmhlZHZnMk9rZmorNm5OZGhV?=
 =?utf-8?B?OEx4K25wd1pZbmRlejNSNWRsL0dQbGdlUUNMUm1UdjlQSE85dzR2b0h0V1FY?=
 =?utf-8?B?VG9ScTcwYmFaZnF2NDdBNkljcS8rV0VXcnhJemtZNnlJd2RoUlE2dGhBeG9B?=
 =?utf-8?B?QWdpbFJlZjZ6S0dOUXFsSnF4elRwei9YVG1paGNybjNjWU94Yi9BMXQ1SWFV?=
 =?utf-8?B?VGFkZTFITktLeVRtUStpakNBb2doN201ZEI4dFB1ZEE0dDZKQllvUFN6a0pG?=
 =?utf-8?B?VjkwTlJhaFJ5Yzc2QldlOTNFTlJ6YjVxYnpraEVZblpsTEVpVlhNRjNyOER4?=
 =?utf-8?B?enpoUXJQbDlldzNyWkc1MThMTXZGVDVnanVZY1daQTFtZEZUK0hpNXk0KzRI?=
 =?utf-8?B?VEFWMDRQM2xCT1FrZ1ZVdzBXYmRZaWQrTDVmZ3pZcUdMV3ZEKzZXbWZNeDI5?=
 =?utf-8?B?L1hlZjYzc3U5OVpkeTJPRkxGdzVvQnhUMHFmNHBSTkxmbjFGdTZWVTFQL1Fz?=
 =?utf-8?B?UnVaUVZ4TFRmWGovb1VLMmo4RzZHRVhFMkxvd2g0dDMrOHVSaUhvd3hsWnRl?=
 =?utf-8?B?c3lsUmMxVW1zUWVIdDFyVXBsQ1FubFg5b3o5cmRtV2lIeDZEOHhFbTFFem1T?=
 =?utf-8?B?RHdTZldlUkRQajdCb1hRVW9kY3FQTGFJTlg5YWxzYngxNE4wellXZ3h4MTIw?=
 =?utf-8?B?NGZBUlRla0pTMU9QM2k3TlNVMGNwMFM3bytLM2dRbElLeXVod3RNR0dncVdQ?=
 =?utf-8?B?NmZSOTJzRVJiL2FrQ2htMEFlcElRdDFzcVNMbFlYRHpQUWtsNVJ1Y0FlM2Q2?=
 =?utf-8?B?eGFXREJtUC9FaUV6bnY2QkptL2UreDY0RG1YRlZRUkZ3eExXMmk3cWUveEFC?=
 =?utf-8?B?MXlMTFJEdFlTUDFhUjM4dTRBVEhDRktGM1dtZVN0YThmbnlUMkFQRHk2cTk0?=
 =?utf-8?B?T25XeU1JZmY4UGNxMkFLS3JSZ0lzWFM1QzJmL094RXFCK3BPZjAvSTcxUjQ2?=
 =?utf-8?B?VTI5MXIraE83dVpaaytvbXJOS1VzeGQzRk5sZFhjSk1XSnplSEx3amVFV1Rs?=
 =?utf-8?B?cWYwc1h1STBNRENqdlRNZmx6em9mdG05Qks1eGtSVWI5ZGx3MlBWSE9KT0xo?=
 =?utf-8?B?OEhES09PbEp6YXE5cGI4cTYrKzBUOXZOSzh2K1IxSGlyZmI1NVJSSHA0akVh?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 384f1b8b-3e26-4cc6-e70a-08dd8ca01e84
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 13:15:49.5071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S158n39t7IQCIBgF3vhWfnuSf/1dtbaGlaZnZILhwUj76F8sZ+3kP/tDpCQ7oBMHczOPnWbh7pJfJq20KeV5QIORv1H5jKHTEiVe24RmW+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5035
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Enable using a fractional (compressed) link bpp on MST links, if this is
> supported and the link bpp is forced. Fractional link bpps will be
> enabled by default as a follow-up change after testing this
> functionality within a set of commonly used MST monitors and docks/hubs
> which support it.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

I agree to the approach to first have the fractional compressed bpp 
support tested via the debugfs and later enable the full support.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++++-
>   drivers/gpu/drm/i915/display/intel_dp.h     | 2 ++
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>   3 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 047473e3f6e6a..bba0a9db17a3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2102,7 +2102,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
>   /*
>    * Note: for pre-13 display you still need to check the validity of each step.
>    */
> -static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
> +int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
>   	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
> @@ -2110,6 +2110,10 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
>   	if (DISPLAY_VER(display) < 14 || !incr)
>   		return fxp_q4_from_int(1);
>   
> +	if (connector->mst.dp &&
> +	    !connector->link.force_bpp_x16 && !connector->mst.dp->force_dsc_fractional_bpp_en)
> +		return fxp_q4_from_int(1);
> +
>   	/* fxp q4 */
>   	return fxp_q4_from_int(1) / incr;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index f883fc0b65c06..c5ab25ee1a015 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -210,4 +210,6 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
>   int intel_dp_dsc_min_src_input_bpc(void);
>   int intel_dp_dsc_min_src_compressed_bpp(void);
>   
> +int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
> +
>   #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a1203e5f570cb..4a5f920c11e2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -521,7 +521,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>   		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
>   		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
>   
> -	bpp_step_x16 = fxp_q4_from_int(1);
> +	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
>   
>   	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
>   
