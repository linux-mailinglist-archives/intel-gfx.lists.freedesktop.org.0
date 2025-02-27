Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1694CA479E3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:13:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA9110EA88;
	Thu, 27 Feb 2025 10:13:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zd4WUXkA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC17510EA86;
 Thu, 27 Feb 2025 10:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651225; x=1772187225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yieqPnvwvGXoOf4k9FIRV2hDq2XiuwgFHWy7wpFAwNQ=;
 b=Zd4WUXkAVDHRhytwj/iCUcd6R1QJH9u+W7zRg9ZZTfc1TFziyn35s3jj
 /Gy7nel2hNeE7uj23wKAc/ZgsukDDJPml2mU+E222zg5CJe2E6ZXIegmR
 nDx7evwRV5pEE/b0ZKYKSmcmUbgb69JIe/MCzSowBxWtWDW2rH86puuRL
 3LYQcbIbXbv9EPYJnHooxC3HxO4wR8jMaUvWxtSx1XyFmRM34QlvdnkYU
 LXpqh5EDETBR6xEiZ8BoHOg/yt9HzBEjTx5jd42KVJc1g84SwUGglHASn
 79hYf++lPUZlce8BT6bdqEsSKOmE9aD612dKWKXn6dA67LDAdyhJ/l7Kr g==;
X-CSE-ConnectionGUID: QlbGq2w9QZucDAdahC723A==
X-CSE-MsgGUID: C9/w6/DkQ3mTAVdrc9LV9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52172059"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52172059"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:13:45 -0800
X-CSE-ConnectionGUID: BDIY9+8ES/ma80ztuYkT3A==
X-CSE-MsgGUID: gd8otKbGS4+dnUs0pIjzSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="117471584"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:13:45 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:13:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 02:13:44 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:13:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FGhloOUYHX5pi8YNsr7AuV+fsZ3hYbi3IwrKI+9N+ExNPn4EnA/qCEqZurugFTXdlrShJDAWoAZKenqX7JPKgI1SL0w6k7qgpgFNL6GWztkd+MvGouaNBadmzF6HNDSwFc6snokCHbRy/RlPS2tnQdPHc9g2H4h2CLBdKJay9KRJ2MNYpSEvKJZFtN5cAk3mLS8Q5llvqvNIb091d53UNat6yGQN8tBIHk7ke7yiwwp9UIXFqf99gvLW66ZBK4wUuvZ3Was4qYnIsc/QOjJVN7hZY+tekDlERcgx9TX0L7VVD2ktB7UFgaqD1y2vl/d0GU+ITO8togaCbrdqww2rYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FjOMgsE1N9dwECLhJRRaDCibF8FTt4eC+pgHI5KkYSc=;
 b=MQnVp4WWt+4h1VtpdG3rSopJT89ONqQM9u4EaT+yJguSkRqqfTjveHsFW8l2YRqt4N8Zt1I5p7++ppy1XDjrMWIXHUjICT4J5IEAqsZuVrcz0OA6CL1tXH2PtAsfbzsEAbxQeDal+xozMtf0cwTTYY5UrLABaPuNZo4M/C+jiUUl+PZKa15WYaKJFd0u8IANE0lc+Vu17DjtBSadhlSxmFBmzvlsvtkwul2r+4LxK9TSV4m/juUdhrEwl5z9l4cDWizjLx+hmmzhQzsRFmrQFvyTLKJlieEfvMWKVA8+G53KIpWAnVXyO657Of510C4DqnNpGRmw9L/9/IZIVx3QOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8453.namprd11.prod.outlook.com (2603:10b6:510:308::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.21; Thu, 27 Feb
 2025 10:13:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:13:23 +0000
Message-ID: <357957a7-ad7c-41c0-b100-74b1bfd08d7c@intel.com>
Date: Thu, 27 Feb 2025 15:43:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/20] drm/i915:vrr: Separate out functions to compute
 vmin and vmax
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-3-ankit.k.nautiyal@intel.com>
 <Z78QP3O50UYhdeq2@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78QP3O50UYhdeq2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8453:EE_
X-MS-Office365-Filtering-Correlation-Id: 23e8314d-2353-4d2e-dda7-08dd57175de8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SVRsankyQmdaS1dMcUdmblZlTVVDNk80UG5sdm5RUG5nVlQ1QVBFN1VQWDdP?=
 =?utf-8?B?cGwvMEIxaGN4aFp2d3RsUm9DTGw0cURpV2dHOERpSVo5ckpFOWt2cjNOZnZ0?=
 =?utf-8?B?VnpvWTlDdjdvOWc3MXF2UG5SUGVkdG1RcDhjcXFDQ3VCRjN5d1NmNmZGTWFj?=
 =?utf-8?B?NW5pRTZUbzU1dCsvQ3UrSkwvV1JPa3FPTkk5VUdNRjRyR3BiRnVRc2h2ZVRk?=
 =?utf-8?B?dURHYTYxTEMxbEVvK2tmRmxpRVF4cnJXWXNlYnI2aEFjRVI4eDk3MXIyeHJY?=
 =?utf-8?B?UFpyVkVSdnpER1BqRmpXN0R5OFNTWVAyV0VnUXZLREU5c0g3QktoUUZxWVV6?=
 =?utf-8?B?V2Yra2UxeVMzYm81YmZMMHk0ZmZaWkNvMjZPOEpITC9qS2xGTDQxVWoyS3Zk?=
 =?utf-8?B?K1BRKzEvTjNoWU82Tjc4MDZoUU4rS3k1cGp5eDdISHRFOEcwVEVyckZ1UlRt?=
 =?utf-8?B?QXBPZjlFU01ibHdPN0NzNFhheUF3emdXa2xyT29rdFp6cmp4WmRDNFhaSUoy?=
 =?utf-8?B?eEVrNklvT3hHTUptVDBQSmw2TFhnY3EvaGw2aXg4Z0FUeFRBTzdWaWxsYjlY?=
 =?utf-8?B?Z3VaK0hneHZsSEZyRnYrclJkK29abEdyUU1ETlFiSk53VlF1NHpaL09SS3hr?=
 =?utf-8?B?QzRzYVU4TzZqb2NvNFV1OHVyd0RTSkZEcDVrUmhMM0FZZ0ZDRGltTFJwNHJU?=
 =?utf-8?B?SDIwcHpxVkl2S1EzR1BxejFZcjlqQ3Jwb09XVlJ0djhFYjdwUWVISTA1V1px?=
 =?utf-8?B?M2E4eWNVNTVkMVpPUlFWOWJaZmgyY2xQSjdMREkvZ3lIU2RzUG9DYWI0ckNY?=
 =?utf-8?B?d3UvdFQ3V1F3RGh6RE9RY1lEZDNyQUlVS1U3a0UwVG5nVHoxSWJsME9TS0dK?=
 =?utf-8?B?SDBOeU5YU1ljZUVpaFpXR2hFb1F5K3J4bjJhTVFDdXJKQ0VJdER1dkgxUFZs?=
 =?utf-8?B?QS9RSnNWVkdWOUpFSkorVVRSUDFybGdEWUNoREhzWG1EbXZFMG8vRmF0NEhV?=
 =?utf-8?B?eTZ6dkpTQm9LOHNLcXdEOUZHSFVJRlF0SHl4bU9OZFVGbGVma1YrS3E2R3NX?=
 =?utf-8?B?RzI5UFhidEdHWGRNUjlQN0ZSUmFJbS91TFcza2lSRHBBOHo4eXRMbjNHTzE4?=
 =?utf-8?B?WkI0V3FUR3Z1QjRGeTRESTNNTmh1SE8rbXQxOTlUTFZ3YTQxWmxzZGZIOWdw?=
 =?utf-8?B?dHVnRUt6aW5yeTdKZUdYalk5azVOWkhiWGF1N0I3dXF1SUt5K09XTmphUVR6?=
 =?utf-8?B?YXhRTjFxZ1ExNlh5WTcxNmRPMkVDejdIMFBKdzhHOXg2SSt6SzBYZHJKQzBC?=
 =?utf-8?B?QVZWMWpISGY0TzE0MTI4V1JkcFNCRmw1L2JaNENpQ29DTktCZG5KT0hzei9F?=
 =?utf-8?B?QU1IQ0U2Q2hrTXAyY2hVeEN5V0J4T3dMTHZtRzI3K0FsNnBvQ3QvaEkrYVVI?=
 =?utf-8?B?OTRWaDI4eml0NFF2NkVWK0dtRHhDSjlIQ2tZQ0hEQWVjTUUxTzhUbjRUUW9E?=
 =?utf-8?B?MHVydjh0VnFWYWlmS0hxck9OOEwxNzlDYjBLdE8ySm5nNmo4Y1cwQzNWYzBW?=
 =?utf-8?B?Ylo5eU8vcTRXUDhpdDhiZk1WUE0rdVNIZDhOazVpSjNQWDZjYm9rcVJCdTRh?=
 =?utf-8?B?RTZJL1p6SDc4Q29xT2NhSWJYYThIa1A2TGtmMEZkYzdtbkl1enZsUHhZOTFm?=
 =?utf-8?B?ek1uRW55aVBBbDV1OGtCTEgwNjFxU2R5OGZGYnhabVR2YUZrdHM1T282NkNX?=
 =?utf-8?B?ZUFBcWovUm9QWUdIdjdGbXNBVlkvMUZieERIZ2Q0blhXNTBuYXI1dlBlZWNy?=
 =?utf-8?B?U1laaU03TDVlQURmamVlZCtLdm1aeTVYNmE1S1AvS1Qyc3l2M1NIWk9pWFh4?=
 =?utf-8?Q?u66l7iTVfz4Az?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFgvTjV5cE5nOVN3WGVBYkxQdm1wN3JmKzhFbGR5bTNUM214ckZEbXY4akhj?=
 =?utf-8?B?TU8yTEJnYnMvU2FFN2pVZnNaN0R5cFROb2pzTHlXZ2VLR1M0em5KRE42OTJi?=
 =?utf-8?B?SzE1Q2JUYjlBdG9RcWNnOTRSWGY5endOSEZJZGVTaXFORDFtZUROOGcxK0Iz?=
 =?utf-8?B?VU53NW1ieGtXMVFheUtLVmtWL0g4Uk83WmI5Z0hyaVVIUUYzeTBZYXpmdndC?=
 =?utf-8?B?NTg2S2xzcm53a0plRDB4aHEyZW9ZNVdhK3VmZmcybUVkOC9RUWdGUnp0YWtS?=
 =?utf-8?B?Z3YveXFXOExXdTVEZEtKaW11UzBDRFFDWU1odWhQL2lkQnFzWVgzZnVabXBC?=
 =?utf-8?B?c2dmRGUwY0FndXd4Z25sNEgzSTVMblIrcVdibEI2by9ZRkpqc05vQ004c243?=
 =?utf-8?B?T1B5ZmNOa2VJZEdla2ZOaWozRy9pNDVZZWE3YlFocUZXUldETkp6MHRTL2Rt?=
 =?utf-8?B?NzBkZU9PWmNDOElMSnJ4WnJzTGVYMG5vTFJBNjhvSElPWURMWkF2UERQVVVr?=
 =?utf-8?B?VFJMeEljMmRQbmNZL0dRM1ptRWNEckxzOW5vaFhHUGxTeU01c3prWXo3cWxv?=
 =?utf-8?B?WlllcW5kMThVMFZjT3dxTUd1RjI2S1ZuV0k1VUM3MDRLRS8xa3J0NXVsaXB2?=
 =?utf-8?B?MWtFcHdJdFBteHQ5M28veE5mMU9yNmxQb21TWG93MlhPTnBHNHY4Umlta2Yv?=
 =?utf-8?B?bW5PUVlCNHpGdFpsYlR2MUkvOWlPTVNFY0Vwc3o4WUFRd2tmcEs0T3I1N2ln?=
 =?utf-8?B?Ky9BR0U0U1BTcnVZWm5EYnI5SDl0WDU2ZU9oakZJZ1N6c29aa2ZnQW5lbnls?=
 =?utf-8?B?b0pTb0hFQ1h3N2k5bGVIczJ5c3BVSlRtUEphQ0FFTkZFV1FlVUhvWk43MXYx?=
 =?utf-8?B?dDBLTkpHeHJxSXNENWRpZWhPeExhWHAwQWhCc3RodnUycHZTcGw5Mkg5bVAy?=
 =?utf-8?B?S3o0R241MWdSQVl5emRpTU1TRTRTMGs5alhMM1NrWEl6akpMOHdkQkRWTFU0?=
 =?utf-8?B?V3pVQ3M1VG9oeVlvblMwaGt0Wi9UUmhHQ2drU3pMbDlyNnRBOUk4RUt4SzlX?=
 =?utf-8?B?Mk9GZW5iV2hzK2pNVFB0bi9oR21nU0ZsWVVac0t5Z05Bbzd1RThQOGlCVUFj?=
 =?utf-8?B?THRLbjdhZHVaMVR3QldSU2FlRUsvL2pTZkRybkVsMWtETCtMZXBBZ3VoS1BG?=
 =?utf-8?B?aUk4N016UFRwY3JFWnkrVHJzUG5qN3BxLzE0RWVJOUp1WmFOSTM3dSs2eWN2?=
 =?utf-8?B?NDZVM09mUnlkbFhCNjdyTTRUbTRYdUo1b0F1WlVBNkJDVFdpSHora2NuYURR?=
 =?utf-8?B?YkVGdXFhajFsTUNJdWFxNS9VY3dGTFZCcTIyanp0SWNxTWhOZXdJbnE5TVJo?=
 =?utf-8?B?eHBVMXhDRTNreE4zNWZGak9PcUdJNkEzTkg0YkV3UkJ5MEdlc1c1UCtjdWp3?=
 =?utf-8?B?UklnbE9QV0E3WmlRejliZWpQMTd5VEpqc1h4Q1FsL2Nvb2dwa0lVbytXOGlG?=
 =?utf-8?B?YmFVRmUvYkFXWE4zbzBYb0JTSUN0bG4zUUo1OFVMcHhpOGFyQmxUKzkvSk1U?=
 =?utf-8?B?NVdiTXJPZTd2Wlh5UnF1dXBxa3N0RW9QV0duaS84Nyt4SXVMQXdoK2xvMnA0?=
 =?utf-8?B?MFdwdWRKOUNtcDYxR1JQSFpmSGcyTWZDMGlLVVVORUJNYTQ1R3FHSEpFY3Rj?=
 =?utf-8?B?aFpJdlVKVzF5QURhS216Vm8wSTROaDdSc1FEYjVHUXVGM1FXM0lYS25ML2FP?=
 =?utf-8?B?c2k3S0JMSzJHUkJVdVV6UEFxNDAyZTVPcFFEVHZLV0ZTSk9sTmUvNEdHemdw?=
 =?utf-8?B?bFg2bzlIR0lFMHo3by9zSDRTZzhwdk15cktKelJvd0hyenNQRnlxd2VCOS9w?=
 =?utf-8?B?U1hBa0xscGZMTktuM3B0NXNuVVYzNTVyaUxnQ0EwNE1FWUVZb2gvdDhWZkJL?=
 =?utf-8?B?bDFWYlVtMjNJRmJZVWpQZUpGeXh5TjlMcHJHZlZTZkM1Y0NmMXZta0tYVVZr?=
 =?utf-8?B?Q1VFelJzd0RyU2J2dDAvRm00SjU5MURpN3I1cHZ3UWwrUURBQXZJeFNvY3d1?=
 =?utf-8?B?MUZDSjdJWGduVW9JZmRkYlV6SUo3YlUzT21IWk05M2RocVJ2bWJPMHQ2MDlI?=
 =?utf-8?B?MTBLWnJ4dFlsbCtFU2VHSkFlRXFxWCtmLzNhUEV4VTNnN0dmalEwcDJWeDNm?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23e8314d-2353-4d2e-dda7-08dd57175de8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:13:23.1843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8v8wJtrzMssBmvRflElK9COBYdaDs4YnrIzhNk1JS+g19c6s+HsEA61jgQO23ONgCNzyYy8YrZerXsUiyQ1o3fAC55RU6cZXZbCGZxe3rHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8453
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


On 2/26/2025 6:29 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:46:59AM +0530, Ankit Nautiyal wrote:
>> Make helpers to compute vmin and vmax.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 39 +++++++++++++++++++-----
>>   1 file changed, 31 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 106bfaf6649b..a435b8d5b631 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -222,6 +222,35 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>>   	return vtotal;
>>   }
>>   
>> +static
>> +int intel_vrr_compute_vmin(struct intel_connector *connector,
>> +			   struct drm_display_mode *adjusted_mode)
> Make the adjusted mode const
>
>> +{
>> +	int vmin;
>> +	const struct drm_display_info *info = &connector->base.display_info;
> I generally prefer to order these approximately by the line length
> in descending order. So swapping these would look better to me.
> Same in the vmax counterpart.
>
>> +
>> +	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> +			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> +	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> +
>> +	return vmin;
>> +}
>> +
>> +static
>> +int intel_vrr_compute_vmax(struct intel_connector *connector,
>> +			   struct drm_display_mode *adjusted_mode)
> adjusted_mode should be const here as well
>
>> +{
>> +	int vmax;
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +	vmax = adjusted_mode->crtc_clock * 1000 /
>> +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>> +
> extra newline here but not in the vmin counterpart
>
>> +	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +
>> +	return vmax;
>> +}
>> +
> With those sorted this is
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks for the review and comments. I agree with the suggested changes 
and will fix these in next version.


Regards,

Ankit

>
>>   void
>>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			 struct drm_connector_state *conn_state)
>> @@ -232,7 +261,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   	bool is_edp = intel_dp_is_edp(intel_dp);
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> -	const struct drm_display_info *info = &connector->base.display_info;
>>   	int vmin, vmax;
>>   
>>   	/*
>> @@ -253,13 +281,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (HAS_LRR(display))
>>   		crtc_state->update_lrr = true;
>>   
>> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> -	vmax = adjusted_mode->crtc_clock * 1000 /
>> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>> -
>> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> -	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
>> +	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>>   
>>   	if (vmin >= vmax)
>>   		return;
>> -- 
>> 2.45.2
