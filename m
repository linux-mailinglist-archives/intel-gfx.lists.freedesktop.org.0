Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB15AC23629
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 07:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D33589B70;
	Fri, 31 Oct 2025 06:25:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5mWxxID";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E52489B70;
 Fri, 31 Oct 2025 06:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761891915; x=1793427915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9gCLVud58HBkmBcqsHlWT3Ic+UU4MZ+ZQZwFss+kfk8=;
 b=N5mWxxIDIpOM6R/Yks8gY3uVvSzgK9kBsQVpeIGTKdkteVX2nKXdBJly
 P9OJYYiVKJ58D3/cJTfiZqo1Z2A8YcP9qgsQ7FG9TxxSEYraMe04xldG2
 rE2Tme7vzb8xuFl4TNZYpeWRB+D8+lxheLAi4rMohz9zGESXTHd090Lbw
 ArnkSnVcF3/vf+i4ZIhTMi8ZHh+RAWNhBEeiBW7c6Z0DkTuqfFF4sz31f
 VPlljje0ZzJyyWwa6/oOi61Rg5rscRkgTFzf3RHCuUfUIcuCFQPd99PVT
 CEQc/CtKLp2itiJ+qJqQGLi+Onhe7BuL8AUkxkIkX1IfHsrRMwZklj08Q Q==;
X-CSE-ConnectionGUID: yF+aLfgkTDyZxc/QLpXjMg==
X-CSE-MsgGUID: Jy4YBVbsQk2q91yHKAjenQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63742376"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="63742376"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 23:25:14 -0700
X-CSE-ConnectionGUID: oHy5E37PRjytwZwYXLiJhQ==
X-CSE-MsgGUID: zk64OrmzRn2JrbZYv+7eqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="186897225"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 23:25:13 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 23:25:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 23:25:13 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 23:25:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1iy5OKmo4uP7br1tKFQJBaUsCAw7hmUc4deI6NUUJ78B4XJOWGCmdHQGqUZH9yqwXTxu9UGMRyvLn2XHvSK75jvE66OLzAVy1K4rnpW+uSouYVlCoAByPYZ+l1XO3m6RBV/lW7T54WS1GureKIAl/cEFZTbBVZdU9LIImGParvXDoetglKf7po7dqqvoeRrwI/9EnSPtMSW3bCykdvTZ9xljwvarLgEEcNGPUAUNd7JkSeOOySIw2KABAq64KW1C0Sth3xsdu/osMyFH+a8iEgu46ELtVtl0tcZWp9Q1XQgIhPRKUAdSKke8wzKl4S1+5F+GvWgdj3FFRsFIbKaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5bogrD5OKkL5fEnyzepgMXJ3vWfYQZePC9IIPGK5Ck=;
 b=NR/mjvJ5qEPq5Ix1khgpKCNOFqKr4vA89s4iPqy2tT/4DjyN7qGftEZ1eo2jtvJkdS/NRH5nYHyY8OBYdqjqkSz+40ZSDfBGNvPzWQxjvILt7rV9HzY1HvDMQevaeVpeoAB7IYvxsUiaasf40STor7rmSukw3uN/B9vbpgayHokMkN44Ia0GkTyQ9DvIenKAUidK9kZH9kYX8JkLnMVvDSL6qSOaJHkwRXCz0Bws13Hr3B/IKPBeuewXskPhOqTtVGoIwadaWPM3yfRM8H1fZJH9VEzPZ32hEdjImgav49qAlSRkZn3E1jLXAIc6Zq/8ux82I0OI3uojCv44fDHHoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7814.namprd11.prod.outlook.com (2603:10b6:208:408::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Fri, 31 Oct
 2025 06:25:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 06:25:05 +0000
Message-ID: <43d19b0d-a14f-420a-a060-bec3c1ac4308@intel.com>
Date: Fri, 31 Oct 2025 11:54:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 26/26] drm/i915/ltphy: Implement HDMI Algo for Pll state
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-27-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251024100712.3776261-27-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7814:EE_
X-MS-Office365-Filtering-Correlation-Id: b7bcf188-1aef-4ae0-979b-08de18463b2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFk5aUJyNUZJQmlHOVVtSFZjVDhXMjhXWUxrMFFrUVMvQ002NmtiY3A1bDNX?=
 =?utf-8?B?OGM4RmZ1V0QrL0VSaXpsblpTeTVoeFNiNGYwTS85bzlQWG5GeENvcmprY211?=
 =?utf-8?B?a3RBYzJoaUsvcjRmZWRpekRJNUZmZmhZTmVwVS82T3pWalRDZ0JzYzJjRVFv?=
 =?utf-8?B?MHVteU9ZaXh1OVQwaS9TaysyeDVic0lBV1ZnSUtHRHhYNVljQ1RqVk1RV3Zo?=
 =?utf-8?B?V0VrQlFFUXU0VURRSW9lcGNIemdUU3U2bjZ4dDZGT2xJbmJteng4by9QcTF2?=
 =?utf-8?B?dlNHbTlnRE82d1IzMkFEWUVVRVpiOGlmOEgxY2x2cW13djVCaGp1UUJKY0Vj?=
 =?utf-8?B?R1F1dzV4cFpSTjcyWnNEVHBZUVArbWR5cnJERlJsT2hReFgzVFdZRDVrYWFN?=
 =?utf-8?B?aFpLUDFoYm9sUWVSdVpxZ2NpWit1MTZSZE9EUmNaTXd1OVpVVkdSdGJzR09D?=
 =?utf-8?B?NEpmalJRaGwwSEF6Qk52SFA3TGJjajdJc2RtNXFLblk4T0l6bUs0aVV6RXl5?=
 =?utf-8?B?cGZzZmdtYUNNczZ6TXVCWXNoY2lkUFZyMk1DUXg4MFFVOUlpT0orNHpXeVhQ?=
 =?utf-8?B?MTVxVS9lTUdrSzZtcXY1K213cXQ0TGoxdDVMc3E4SkZqK24yMzI2SjQ2dVFD?=
 =?utf-8?B?cFlPT2N2dGdLQnc0SHNhTWJaZFYvRWFIdmoyZVVhSm1qOXM2MFVrS25nTTUv?=
 =?utf-8?B?c0Q1Wk5tY203MWtXcTdPZmw5YUVkczlJWUx6ak5lYWlYR25ab2l1dFAwQUNm?=
 =?utf-8?B?K1BzT3BMcnhVbWl4WTdKajg1MStzYVRBb2FMMVlZZHFBbzA2YVZWcFJPVm9h?=
 =?utf-8?B?ZDVIOUM5UmFQT1l3UUFqYng5aVRlT0d1T2NnTDRNNFdQZmRnL0RuRW5TL3Ja?=
 =?utf-8?B?cUZrVE1RQ1pPaUs1L3QyclNNeDViSTMybHovQS9QakVkYW5WYkR4VVVDMmNV?=
 =?utf-8?B?enlCMkxsVGcvamNGa2ZJUXhZWEpRdFBDTGQ0ZzZuQUU1U2ViK1lETkh2OTAv?=
 =?utf-8?B?UDUwRVRjT2U2TndYcTZWS0VZbGhyWkExeHgvdFBKMmpEazVtYmdLdnRxTXJr?=
 =?utf-8?B?SHBJZ2FKTUUrWE0yVExYeEtlbnhIUE9GQ093WUtEQVNBNXhZcGZjRFBLVW9R?=
 =?utf-8?B?emJDeEpvYjdhY3NaR044YVphNDYxRDhtNDNKVUFtQmxXSW5lcUZRYVJTMFY2?=
 =?utf-8?B?NWx2cGtMRFoxL1I2dytsemdONUJjaWtPNWh2Q0VEWVhmbG1tOHZULytRQ2tn?=
 =?utf-8?B?RU9mMXNOTzJ4dFdrTENRaEN4UmtQZjI5dW1xaUkrb1BGZjlXZHdnOFZDa2tF?=
 =?utf-8?B?c0VUb1lDN2UwMFZjNWtFRjd4VWZOUjdZSXBhaFpXUXVlRFV4RzhOMGlxcGFv?=
 =?utf-8?B?YXYyQ2duWCtyd05nd0xmZHV6eU0reTJlaEF4RGlSaXA3TnZ0UkRUemNHdXcv?=
 =?utf-8?B?MzF4RC9tRzlrVGxTeVJ0bDRSd2ZhU3dPZ2h2cDJJYTVZTmtha1BRM20yejY5?=
 =?utf-8?B?VW9ZNjdJR281bnVFNzdMVUlicTU0U1dkNmk4QWc4VTFrUUhaRU9MQk55cnFy?=
 =?utf-8?B?bjVHVk5zUjBhQ2JnY3RvMS9ybFBGQWpSK0dJTXZSOFJzanNzYWVnY1J0RnNj?=
 =?utf-8?B?QjVNaWM2cmNqNkNCWTRiNlhyQ2ZlOEVaQW5lL2ZTRkdzc2VXdVB5OW56ZHJI?=
 =?utf-8?B?WHIwNmtjMU1YZVkwWStQY0E1d3R0bDNRZzEyT2RIQzNLS3pLM3BEd0lBSFJE?=
 =?utf-8?B?M2RCeXg1bnpoSWNqN2JuK2xPUHlyQVpobWo0em0xcFRvZEpUbCtWZ0tySzhz?=
 =?utf-8?B?ZytKcGFzVURJM1F5N25RYmgzSTNMRjVjZStrbDNOU01PZVpGK1ZSbHBsek5F?=
 =?utf-8?B?NitOQnZORlMvZ2dTdmlJUkd4QlZ0YlAvSzhLYTJ6c3ZnMW1GV3pkL0wzYW5n?=
 =?utf-8?Q?Yj5uLBr1ZUgZJFoYdLmOVUPVJIVYNnq5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alVQV1ZMelpEcHA3TjFRclQ5cEpMNFV5LytVajNwdGVMeUNyMHdPVWMyd0ly?=
 =?utf-8?B?WDJ3T3lhM2FleDRBTXhDR0VVVjJkckYxdTNSbWNMM3VibXpxOWY2ZFpETjRF?=
 =?utf-8?B?NWN3ZGk4UlJLWTZpSk93UmN2a3pwcjhJSEZBMDVZdXNlV05yWU5yQ1ZmREEw?=
 =?utf-8?B?OFhCSnNSOFhKcnpvTlV5b3ZBcWVEbC82NW5vR3pROThtQTlhSlBsL2ZFaWEx?=
 =?utf-8?B?YWxLSXlKamhHbGhJRC9wV2JLMDNtTmpjcU4rYmxLbGxvMGtFN2pNZUxRdE5M?=
 =?utf-8?B?WnR3a0RURnlpQlAya2Z0L2tWNzlpM2FaaWNpK0d5TVROOWk4cFhlaTB0cUNR?=
 =?utf-8?B?eDV2NnQwYjlNTkVMZmJqUkZJOHZXVTFQOGhZV3lWb2JmbEtqUUpuSFk2VFNa?=
 =?utf-8?B?UVdqOEEwaU9XY3NOd0xQVzJ3d1k3MCtXYjhtdldLMHc5Z1h0U0FOT1FZMWdj?=
 =?utf-8?B?NlZDcFFNcUlqaDRnTm0xTGs1YVlyQkd1MXh3K09GVGptMXltVzNyQ2pMY3Rw?=
 =?utf-8?B?ZjhZdDlPZVRCdTZMSUtaYWNGNTdsU0pXRGNMVEdLSjBHQVNWY29NODlyOCtV?=
 =?utf-8?B?TEllQUhNdEZuNXRrUDROYnFUczZHY2I4Z3VKUnZURUNaZjhoc29kTnhqanNt?=
 =?utf-8?B?eEhkTjVBL3piK1ptenJJTzFRdmY2a2g5ekVSNU9Da21ZRU5mU3VNSDdOS2hB?=
 =?utf-8?B?V2IxYkNBaHFmR2JmVlBUUEJCNzZnMEdxQW80eXY3RXNla3JaTmJmK05HdmRm?=
 =?utf-8?B?QXQxaWlkM00vZTJBNjVPNlN4UjI5YzNGTHBkT3I3TkRGOFlvTm56SktjSU5L?=
 =?utf-8?B?RlpGTU44S1Y4UzMrMU8rZm1nTXl3cmprdXozaWM2VW01bTQ4ZlFmOFQ2NWtH?=
 =?utf-8?B?K3ppWmwvSnNtVkxWL2RpMlVkNTNtNUxJNFlGbUJpNHBESW56dVRmbzEvTFBw?=
 =?utf-8?B?RU9hR3RYOXcvVTlpcHgrM2RGTU4wSEhaQkxBemhRRkZwdHpsbE9WOHgxamxr?=
 =?utf-8?B?V09OSldocHZobDF5VWpqTWhpVFlTcTE4MTY3bDlUcGdyRlZhVjhIOFFibGpT?=
 =?utf-8?B?ZGZzL2psQjZjdmkzaUZTODN5TTYxaEp3YWlaTHNiQmkyY3o4cCt2WUpvbjI4?=
 =?utf-8?B?aG5GbmFzRVErSXpOTDRKbEJ2Vk4xbi9UZ3lSZExVazVMMndGNURGbXhpOFNs?=
 =?utf-8?B?YVRPaGs1b3lmWFFUS3ZTRU96L3FCb3d3ZXdLZmpRZnZqUDFYS1RBVHVhRVlN?=
 =?utf-8?B?STNWVGYrOWRnNEVlWlBFL1JSY25lank0R1piSGdjTXNkOGRjWmt0N3BOcUcz?=
 =?utf-8?B?aDh5VDkrcFBOU2V4RnZtKzZrNXdWRWlkbVdFbGtFcDFuS2RFRTEyUGxvNkM4?=
 =?utf-8?B?bk1CNW40RkRWYUJGeTBEMm1mY3pza2VPY3lKTXBrbVVSa0FQWnI5d1gwbEpK?=
 =?utf-8?B?cDAwcjh4NElxRDAyc0hlVGlXNlR4WDJxSXNqZ1J4bFJkRlVQNFkwekVzMGVW?=
 =?utf-8?B?MTBVTjMrbWtrNTMxMEovV1hOOTIxaFY1TXVodDdxQnlpeFI2TWVVTU1Hb2d0?=
 =?utf-8?B?dFJFaGhSVEFRaEJ0SnNNN2NqdU9sZE9GbUNsTFhrSjloa1dlZUtFSjhwYmNM?=
 =?utf-8?B?Z1l6ODIyTm0vdko2WUxocitUdGluS0RodzY4T2VmdFFYd2VrVFVBR0hvbnow?=
 =?utf-8?B?ejdEQXp4a0cwcktJbkF1VytKSkd2Q2pFMjBra21Ca3lTVDdiNzhEL3pBY0hj?=
 =?utf-8?B?YUlLaTQ5aG5ET20vR1pjdXRsdTk0QXM1MWdybzdEUGlxRTNOWUVyamk0NjZ6?=
 =?utf-8?B?WWI0QzY0MTBJS0JwQUhPWW5IVFhYSTRCdE4vc1VqckNLbWx2RkEvMlc0YTho?=
 =?utf-8?B?TFBpN3BHS3pOQUFaRXVqZVlEckh2MndjNHNqZE9QWWNsRW9qMm4xMDdKeUla?=
 =?utf-8?B?MmsreDlkUmQzMmpYU2FTU2pUS1BtMXJTbm5ZY0E2NEUwb2hqL08rYXMwUEYw?=
 =?utf-8?B?RitBeCtsbDF3VTlGQitJNDFsUU9NZnNUTzVlbWxJM1VYM1luQURoNkdhSm1L?=
 =?utf-8?B?VUxwSGlFeCtFWGFaUThlczFJZnFrTVA3Q2JNa2owMmJrSk9JWEEvZmlpMGVq?=
 =?utf-8?B?eHVHdmJSM0JDaUsyemNMOHZLQmowM0svVXpWVGw2clBEYzF2VE9YQjViNlNv?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bcf188-1aef-4ae0-979b-08de18463b2c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 06:25:05.6033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1YcmWjzOCiEO/JSEPHHN58aonZyPLxZ8vrUM7zurwTQCEbHGfV+lHnOZJ0/3fBZ2M90sTK8OQIZXLihSH9PmdS+3gxoygR0VwVhtWMn717k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7814
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


On 10/24/2025 3:37 PM, Suraj Kandpal wrote:
> Implement the HDMI Algorithm to dynamically create LT PHY state
> based on the port clock provided.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 318 +++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.h |   3 +
>   2 files changed, 320 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 11070aaf320d..163e7d5ef483 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1357,6 +1357,318 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +void
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz)
> +{
> +#define DATA_ASSIGN(i, val)	\
> +	do {			\
> +		lt_state->data[i][0] = (u8)(((val) & 0xFF000000) >> 24); \
> +		lt_state->data[i][1] = (u8)(((val) & 0x00FF0000) >> 16); \
> +		lt_state->data[i][2] = (u8)(((val) & 0x0000FF00) >> 8); \
> +		lt_state->data[i][3] = (u8)(((val) & 0x000000FF));	\
> +	} while (0)
> +#define MULQ32_U32(x, y)	\
> +	(((u64)((x) >> 32) * (y) << 32) + (u64)((x) & 0xFFFFFFFF) * (y))
> +#define Q32_TO_INT(x)	((x) >> 32)
> +#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
> +	bool found = false;
> +	u32 ppm_value = 1;
> +	u32 dco_min_freq = 11850;
> +	u32 dco_max_freq = 16200;
> +	u32 dco_min_freq_low = 10000;
> +	u32 dco_max_freq_low = 12000;
> +	u32 dcofmin = dco_min_freq;
> +	u64 val = 0;
> +	u64 refclk_khz = 38400;
> +	u64 m2div = 0;
> +	u64 val_with_frac = 0;
> +	u64 ppm = 0;
> +	u64 target_dco_mhz = 0;
> +	u64 tdc_fine;
> +	u64 iref_ndiv;
> +	u64 tdc_targetcnt;
> +	u64 feedfwdgain;
> +	u64 feedfwd_cal_en;
> +	u64 tdc_res = 30;
> +	u32 prop_coeff;
> +	u32 int_coeff;
> +	u32 ndiv = 1;
> +	u32 m1div = 1;
> +	u32 m2div_int;
> +	u32 m2div_frac;
> +	u32 frac_en;
> +	u32 settlingtime = 0;
> +	u32 ana_cfg;
> +	u32 loop_cnt = 0;
> +	u32 dcofine0_tune_2_0 = 0;
> +	u32 dcofine1_tune_2_0 = 0;
> +	u32 dcofine2_tune_2_0 = 0;
> +	u32 dcofine3_tune_2_0 = 0;
> +	u32 dcodith0_tune_2_0 = 0;
> +	u32 dcodith1_tune_2_0 = 0;
> +	u32 gain_ctrl = 2;
> +	u32 refclk_mhz_int = 38;
> +	u32 pll_reg4 = (refclk_mhz_int << 17) +
> +		(ndiv << 9) + (1 << 4);
> +	u32 pll_bias2_addr = 0;
> +	u32 pll_biastrim_addr = 0;
> +	u32 pll_dco_med_addr = 0;
> +	u32 pll_dcofine_addr = 0;
> +	u32 pll_sscinj_addr = 0;
> +	u32 pll_surv_bonus_addr = 0;
> +	u32 pll_lf_addr = 0;
> +	u32 pll_reg3_addr = 0;
> +	u32 pll_reg4_addr = 0;
> +	u32 pll_reg57_addr = 0;
> +	u32 pll_reg5_addr = 0;
> +	u32 pll_ssc_addr = 0;
> +	u32 pll_tdc_addr = 0;
> +	u32 pll_reg3 = 0;
> +	u32 pll_reg5 = 0;
> +	u32 postdiv = 0;
> +	u32 d6_new = 0;
> +	u32 pll_reg57 = 0;
> +	u32 dco12g = 0;
> +	u32 pll_type = 0;
> +	u32 d1 = 2;
> +	u32 d3 = 5;
> +	u32 d5 = 0;
> +	u32 d6 = 0;
> +	u32 d7;
> +	u32 d8 = 0;
> +	u32 d4 = 0;
> +	u32 lf = 0;
> +	int ssc_stepsize = 0;
> +	int ssc_steplen = 0;
> +	int ssc_steplog = 0;
> +	u32 ssc = 0;
> +	u32 lockthr = 0;
> +	u32 unlockthr = 0;
> +	u32 earlylock = 1;
> +	u32 truelock = 2;
> +	u32 lockovr_en = 1;
> +	u32 biasovr_en = 1;
> +	u32 coldstart = 1;
> +	u32 ssc_en_local = 0;
> +	u64 dynctrl_ovrd_en = 0;
> +	u32 bias2 = 0;
> +	u32 tdc = 0;
> +	u32 cselmedthr = 8;
> +	u32 cselmedratio = 39;
> +	u32 cselmed_dynadj = 0;
> +	u32 cselmed_en = 0;
> +	u32 dco_med = 0;
> +	u32 bonus_7_0 = 0;
> +	u32 surv_bonus = (bonus_7_0 << 16);
> +	u32 csel2fo = 11;
> +	u32 csel2fo_ovrd_en = 1;
> +	u32 biastrim = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
> +	u32 dcofine = 0;
> +	int ppm_cnt, dcocount, y;
> +	u64 refclk_mhz = div64_u64(refclk_khz, 1000);
> +	u64 frequency_mhz = div64_u64(frequency_khz, 1000);

I think with refclk_mhz and frequency_mhz we are going to loose 
precision. Perhaps we should use khz versions.


> +	u64 temp0, temp1, temp2, temp3, scale;
> +
> +	settlingtime = 15;
> +	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
> +		switch (ppm_cnt) {
> +		case 0:
> +			ppm_value = 1;
> +			break;
> +		case 1:
> +			ppm_value = 1;
> +			break;
> +		case 2:
> +			ppm_value = 2;
> +			break;
> +		default:
> +			ppm_value = 1;
> +			break;
> +		}


I think we can ditch the switch case and simply put:

ppm_value = ppm_cnt == 2 ? 2 : 1

> +
> +		for (dcocount = 0; dcocount < 2; dcocount++) {
> +			if (dcocount == 1) {
> +				dco_min_freq = dco_min_freq_low;
> +				dco_max_freq = dco_max_freq_low;


dco_min_freq_lowcan be local, or perhaps directly use the values here.

> +			}
> +			for (y = 2; y <= 255; y += 2) {
> +				val = ((u64)y * frequency_mhz * 5);

> +				m2div = div64_u64(((val) << 32), 2 * refclk_mhz);
> +				val_with_frac = MULQ32_U32(m2div, refclk_mhz * 2);
> +				temp1 = Q32_TO_INT(val_with_frac);
> +				temp0 = (temp1 > val) ? (temp1 - val) :
> +					(val - temp1);
> +				ppm = div64_u64(temp0, val);
> +				if (temp1 >= dco_min_freq &&
> +				    temp1 <= dco_max_freq &&
> +				    ppm < ppm_value) {
> +					/* Round to two places */
> +					scale = (1ULL << 32) / 100;
> +					temp0 = DIV_ROUND_CLOSEST_ULL(val_with_frac,
> +								      scale);
> +					target_dco_mhz = temp0 * scale;
> +					loop_cnt = y;
> +					found = true;
> +					break;
> +				}
> +			}
> +			if (found)
> +				break;
> +		}
> +		if (found)
> +			break;
> +	}
> +
> +	if (!found)
> +		return;

We can have a separate function with above code that fills 
target_dco_mhz and loop_cnt.


> +
> +	m2div = div64_u64(target_dco_mhz, (refclk_mhz * ndiv * m1div));
> +	if (Q32_TO_INT(m2div) > 511)
> +		return;
> +
> +	m2div_int = (u32)Q32_TO_INT(m2div);
> +	m2div_frac = (u32)(Q32_TO_FRAC(m2div));
> +	frac_en = (m2div_frac > 0) ? 1 : 0;
> +
> +	if (frac_en > 0)
> +		tdc_res = 70;
> +	else
> +		tdc_res = 36;
> +	tdc_fine = tdc_res > 50 ? 1 : 0;
> +	iref_ndiv = (refclk_khz > 80000) ? 4 : (refclk_khz > 38000) ? 2 : 1;
> +	temp0 = tdc_res * 40 * 11;
> +	temp1 = div64_u64((40000000ULL + temp0),  2 * temp0 * refclk_mhz);
> +	temp2 = temp0 * refclk_mhz;
> +	temp3 = div64_u64((80000000ULL + temp2), temp2);
> +	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
> +	tdc_targetcnt = (refclk_khz < 25000) ? (int)(tdc_targetcnt / 4) :
> +			(refclk_khz < 50000) ? (int)(tdc_targetcnt / 2) :
> +			tdc_targetcnt;
> +	temp0 = MULQ32_U32(target_dco_mhz, tdc_res);
> +	temp0 >>= 32;
> +	feedfwdgain = (m2div_frac > 0) ? div64_u64(m1div * 10000000ULL, temp0) : 0;
> +	feedfwd_cal_en = frac_en;
> +	settlingtime = (u32)div64_u64(refclk_khz, iref_ndiv * 1000);
> +
> +	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
> +	prop_coeff = (temp0 >= dcofmin) ? 3 : 4;
> +	int_coeff = (temp0 >= dcofmin) ? 7 : 8;
> +	ana_cfg = (temp0 >= dcofmin) ? 8 : 6;
> +	dco12g = (temp0 >= dcofmin) ? 0 : 1;
> +
> +	if (temp0 > 12960)
> +		d7 = 10;
> +	else
> +		d7 = 8;
> +
> +	d8 = loop_cnt / 2;
> +	d4 = d8 * 2;
> +
> +	/* Compute pll_reg3,5,57 & lf */
> +	pll_reg3 = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
> +	pll_reg5 = m2div_frac;
> +	postdiv = (d5 == 0) ? 9 : d5;
> +	d6_new = (d6 == 0) ? 40 : d6;
> +	pll_reg57 = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
> +	lf = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
> +		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
> +		   (gain_ctrl << 24) + (feedfwdgain << 16) +
> +		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
> +
> +	/* Compute ssc / bias2 */
> +	ssc = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
> +		(ssc_stepsize << 8) + ssc_steplen;
> +	bias2 = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
> +		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
> +
> +	lockthr = tdc_fine ? 3 : 5;
> +	unlockthr = tdc_fine ? 5 : 11;
> +	settlingtime = 15;

This variable is set multiple times but is used only in below line. So 
just initialize this with 15.


> +
> +	/* Compute tdc/dco_med */
> +	tdc = (u32)((2 << 30) + (settlingtime << 16) + (biasovr_en << 15) +
> +		    (lockovr_en << 14) + (coldstart << 12) + (truelock << 10) +
> +		    (earlylock << 8) + (unlockthr << 4) + lockthr);
> +
> +	dco_med = (cselmed_en << 31) + (cselmed_dynadj << 30) +
> +		(cselmedratio << 24) + (cselmedthr << 21);
> +
> +	/* Compute dcofine */
> +	dcofine0_tune_2_0 = dco12g ? 4 : 3;
> +	dcofine1_tune_2_0 = dco12g ? 2 : 2;
> +	dcofine2_tune_2_0 = dco12g ? 2 : 1;
> +	dcofine3_tune_2_0 = dco12g ? 5 : 5;
> +	dcodith0_tune_2_0 = dco12g ? 4 : 3;
> +	dcodith1_tune_2_0 = dco12g ? 2 : 2;
> +
> +	dcofine = (dcodith1_tune_2_0 << 19)
> +		+ (dcodith0_tune_2_0 << 16)
> +		+ (dcofine3_tune_2_0 << 11)
> +		+ (dcofine2_tune_2_0 << 8)
> +		+ (dcofine1_tune_2_0 << 3)
> +		+ dcofine0_tune_2_0;

I think this again can be a separate function to compute dcofine.


> +
> +	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
> +		    (frequency_khz == 2500) || (dco12g == 1)) ? 0 : 1;
> +
> +	pll_reg4_addr = pll_type ? 34576 : 34064;
> +	pll_reg3_addr = pll_type ? 34572 : 34060;
> +	pll_reg5_addr = pll_type ? 34580 : 34068;
> +	pll_reg57_addr = pll_type ? 34788 : 34276;
> +	pll_lf_addr = pll_type ? 34828 : 34316;
> +	pll_tdc_addr = pll_type ? 34832 : 34320;
> +	pll_ssc_addr = pll_type ? 34836 : 34324;
> +	pll_bias2_addr = pll_type ? 34840 : 34328;
> +	pll_biastrim_addr = pll_type ? 34888 : 34376;
> +	pll_dco_med_addr = pll_type ? 34880 : 34368;
> +	pll_dcofine_addr = pll_type ? 34892 : 34380;
> +	pll_sscinj_addr = pll_type ? 34852 : 34340;
> +	pll_surv_bonus_addr = pll_type ? 34884 : 34372;


I understand these addresses are given in decimal but these will make 
more sense in hex.

pll_reg4_addr = pll_type ? 0x8710 : 0x8510;
pll_reg3_addr = pll_type ? 0x870C : 0x850C;

I am wondering we should put them in lt_phy_regs.h and define macros 
such that we can use:

pll_reg4_addr = PLL_REG4_ADDR(pll_type);


> +
> +	lt_state->config[0] = 0x84;
> +	lt_state->config[1] = 0x2d;
> +	lt_state->addr_msb[0] = (pll_reg4_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[0] = pll_reg4_addr & 0xFF;
> +	lt_state->addr_msb[1] = (pll_reg3_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[1] = pll_reg3_addr & 0xFF;
> +	lt_state->addr_msb[2] = (pll_reg5_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[2] = pll_reg5_addr & 0xFF;
> +	lt_state->addr_msb[3] = (pll_reg57_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[3] = pll_reg57_addr & 0xFF;
> +	lt_state->addr_msb[4] = (pll_lf_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[4] = pll_lf_addr & 0xFF;
> +	lt_state->addr_msb[5] = (pll_tdc_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[5] = pll_tdc_addr & 0xFF;
> +	lt_state->addr_msb[6] = (pll_ssc_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[6] = pll_ssc_addr & 0xFF;
> +	lt_state->addr_msb[7] = (pll_bias2_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[7] = pll_bias2_addr & 0xFF;
> +	lt_state->addr_msb[8] = (pll_biastrim_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[8] = pll_biastrim_addr & 0xFF;
> +	lt_state->addr_msb[9] = (pll_dco_med_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[9] = pll_dco_med_addr & 0xFF;
> +	lt_state->addr_msb[10] = (pll_dcofine_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[10] = pll_dcofine_addr & 0xFF;
> +	lt_state->addr_msb[11] = (pll_sscinj_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[11] = pll_sscinj_addr & 0xFF;
> +	lt_state->addr_msb[12] = (pll_surv_bonus_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[12] = pll_surv_bonus_addr & 0xFF;
> +	DATA_ASSIGN(0, pll_reg4);
> +	DATA_ASSIGN(1, pll_reg3);
> +	DATA_ASSIGN(2, pll_reg5);
> +	DATA_ASSIGN(3, pll_reg57);
> +	DATA_ASSIGN(4, lf);
> +	DATA_ASSIGN(5, tdc);
> +	DATA_ASSIGN(6, ssc);
> +	DATA_ASSIGN(7, bias2);
> +	DATA_ASSIGN(8, biastrim);
> +	DATA_ASSIGN(9, dco_med);
> +	DATA_ASSIGN(10, dcofine);
> +	DATA_ASSIGN(11, 0);
> +	DATA_ASSIGN(12, surv_bonus);


The change seems to be inline with the Bspec overall.

I think you can change some of the variable names like dcofine, biastrim 
to dco_fine, bias_trim etc. to be consistent with rest of the code.

Regards,

Ankit

> +}
> +
>   static int
>   intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   {
> @@ -1455,7 +1767,11 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   		}
>   	}
>   
> -	/* TODO: Add a function to compute the data for HDMI TMDS*/
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
> +						  crtc_state->port_clock);
> +		return 0;
> +	}
>   
>   	return -EINVAL;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index a538d4c69210..1693e9f2bc6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   				       struct intel_lt_phy_pll_state *pll_state);
>   void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   				   struct intel_crtc *crtc);
> +void
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
