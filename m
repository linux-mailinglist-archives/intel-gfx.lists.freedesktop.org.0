Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPRBEevlAWqKmAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:21:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A473F50FFE1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AF010E786;
	Mon, 11 May 2026 14:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FmKy2IF5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FFC10E75A;
 Mon, 11 May 2026 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778509287; x=1810045287;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kU/cCJqG31PLZgXHffsBBzPdKKv43wn0xEtVnYaSI2o=;
 b=FmKy2IF5d0LxF4aS2x+jfvOYwxJEHhc9cxHnayswO5iVt37Wf6Eki7fC
 O4equWQMuIiU/THgjeww1sfKUZ/1vZBM53u4bp3tWsK7rxdJASBWQ/xIl
 65xXc/ysMr6G6E0dQ7TKnezPRChwkDaJA97c42O94RvZiRcO+E9SklviV
 zQi23jdmGImCsizhl0BtpY0ZanM1R2xokAI+FglBKJwkGytZD0kjbIj4D
 95Xe87lkKdWPekoI9c1kmqJMgNZrsdmpl7mYb/WZeR8P99KZvb2U2jQu5
 DwhkqUoPjgYFQP1fqA+UGT2PMVI4f78QMdBMowCuFwy4daK8FdM+UgMz/ w==;
X-CSE-ConnectionGUID: lv0Yi1LbT8SfWr0Bne43+A==
X-CSE-MsgGUID: UGPmlOd5TderEU2T28AooA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79257296"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79257296"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:21:27 -0700
X-CSE-ConnectionGUID: byVus94eQYOhiHlHDBhzmw==
X-CSE-MsgGUID: X/3jLWMRR6igrrN/iyWqaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="261204497"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:21:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 07:21:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 07:21:16 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 07:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a7ktUGzOPhT10C3pBAIFtEuAS1tZhSBdKPbGzyvCFidGxUtfRW4NovB+ofGAtB4qJvWsIl8QOK+R940QP1okPHkWi1hmwv5tKVIklYIYFUNXqTLpX0L0+C1Cu416mcP4lUzJb2GMCjjIC+LMrX8Z/Edy64W20kqll3Z4EAkCUT0y71GjV12R6sN9BrClJRVftcWTv67PB4EQXgn/ID4pxkKbbHq55p19NoyuBIiBhtoyr9BwtkhSD1bIIHWvSaIsHVll6dtZOPUk+xP6/Z52xfUTv2/mCews+9MvUVYZXK9agZz8tYcaqrffjEUaMc+UtSWV1BrD4C8UhncV3G0bAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNnjA0WKfSiJE9WA7MhzlpVUW6F7ncoFFijt2lbCvhQ=;
 b=oVu712f9H7VoAILD11fixOA3n3Q0waKRnAFQtKXa5rb8DuRaPYI48p6tukL352nabLiPepz1z/znGcqGpyMwbLaCmocrdmaNZ6pq2Dw43hZVGJBpTvzAPLH0YNVxoN13DuycrI4HQeQX8w4gkMXOZO4vIh5vruZHrPWUQtlaWHFgLGVLbjxE+jKRKPoXWhyvb8UllymdXB0j0dfh5rnWMjFcy4w+EYJkA0W6Ztx8i3ilJht2YmfXgrWSJN0f+Tpht1Z1NK3U0a1T49Ps94gjzdbdcfmUKEZZDawnaOLv6rPojrzeDGb/eSWkreF8sxYpBCDcFyeEaBL/zp+uMUG0ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF2720D4410.namprd11.prod.outlook.com (2603:10b6:f:fc02::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 14:21:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 14:21:14 +0000
Message-ID: <50ee7fc8-6eda-4b52-8dd5-43f167e660b0@intel.com>
Date: Mon, 11 May 2026 19:51:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] AS SDP cleanups and additions for Panel Replay + VRR
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@linux.intel.com>, "Kandpal, 
 Suraj" <suraj.kandpal@intel.com>
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0094.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF2720D4410:EE_
X-MS-Office365-Filtering-Correlation-Id: de717280-9d80-4902-4098-08deaf688e7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: rlKTYKzhbirhHirMsB1pN7zP/IS3nbwvaEJgsGI/OexZBpmLDSXxEeiG4Kvs6nLKlHFyXEVkBBmvbNtY5uxr0uKy/WAxUh/fl/nHlxBhWXx87Jc+9GRtfxTSVQetooKozMmI2NdkZZQDMO4PgzQP7o9Ydsog+5w3RFwVDJcHhi5zQa7Yaqxy7UOC51SKcG5W8x/lKl2+wFL3BGn7C14XqKE6Q9xsXcckCAebgB+reGjjFYRuF/maFRuWYeYPRHLMw7Z/J5wKknJcLu1nuxWxMJ3JI3LYLU380DHKmLGkr8l5lv7GpWalWfI2Dg8s7bIVzyoIvZANiHQMXfRV+LG4F+GTlqNFKpNGHieECH36m6AtRtUP0k6mh26u2R4tHE27fnPxTLqJVAInyZdpUIHzswqS/8g/UEwcZpv9vSTd2QgMKRretdWizA8OV0BcxYftwJIRWofVPtadgjfZ3fBQeLRCwFpUoRmgVhdO1Buyce3aXafkXaFApl+uyr7S8qpUSGYVNV4u+iL0X5KBSomf57yZZxvjHOoIYovYaaTFZOSDgRWiXCYQxT/qfnGpBUyD9s28KjnWn6BS66Jviw5vjo97CIobMCSLD01ZI0pToWbY9VLt2oN96ab7fs7MdVeHEKdd61o81gjc9epGrMSH1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkVhMk5BUWlXTC93MG14MVo1R2xzeUNPQlB5U2tydmh5bDIvVGhSUGtiOVov?=
 =?utf-8?B?SXRPVGR5SE9qNEVzOU1IYWdNL1UxaC9MblZzN3JFV0w1NlpQcVZEZHVQQklZ?=
 =?utf-8?B?TzBwS2tvb3FMM0dvYlFUZUpOK2ozK25pd2Z3SHNobUhRZHpyU2c5Z08yRVg0?=
 =?utf-8?B?T0IzazFtZjQyeDZuNktVRVdqVHJhcFZ4YkZQcERwVG1vNUVtNmVTenpEa0ZU?=
 =?utf-8?B?bk5FZTBRZEp6Nms0Y3ltNTBOcnhOWTMvUUg1TnlMajN0QzVSZWxGSHpmRi9X?=
 =?utf-8?B?dVl5RHNvcnh1MVBMNW80a1RhQ3RpdFNObVVWaktRZTZDWTRFaGN5bXlQZHh5?=
 =?utf-8?B?R2Z5NkRpVHR5M3lHanlqOFNPbU8vYXBENWVVZEduVDJ2RUpjcEZzQWphZkpE?=
 =?utf-8?B?Tmd2Um9Ud01QYitkVU1vZjNqNEpXcEx5V05hZHJrMUZMUUVuaEw1c0hFUWhn?=
 =?utf-8?B?Vys1dFJVTS9mK2NWWXpDRW41enNzQjlFTHptQ0dOcklaa1BxNS9LOWNGRStj?=
 =?utf-8?B?S2VicW9kSHlhMWxzU01BekVqTG12T3BUMytFVk1VeTdXN0RJR2dZemlrY2RW?=
 =?utf-8?B?RS9KQW84UnhQdy90b2N4SXdscHVkY295b0crb2RKUjFLN2RvR0ZaVnlodmJB?=
 =?utf-8?B?MFBWU3pmOEJ1cVNwZUFEUFNkS014TGs4NU4zYmh6RUVYUHU3SnNCcUxhLy9V?=
 =?utf-8?B?ZE00Wk5vSnVhN21vQU9KSU95NlNMaFk3UXltYkZsaGpBYllxOHc3ekZQd2Ju?=
 =?utf-8?B?OHd2eU1UbkRkYWY0T01jWmpqeUFJS20zQVI0YkVwTW96NCtqY3krVVJIcnVy?=
 =?utf-8?B?NnBHbjFFK0MrM2xCVVBQcThxWFhoQzhJVlhCRU1ESGd0ODNwLzdaa1RpZnhu?=
 =?utf-8?B?TG5xeUpyQkszbkM3Q2FwZnFaV3dLQVZESlhmVWFSU1VLMUlBSWNFWTBQeEo2?=
 =?utf-8?B?UTdHd2lFZUVVQjdGMmRPQzZ5SEZCQ01RYm1QYWc1Y044Mks3N2JCOURGRElx?=
 =?utf-8?B?Mk51Z1Q3ckI2UGRWajgrTEEyeVVtUHlycXlaUXNtaXJsc21KazN3VFZMeWQ5?=
 =?utf-8?B?dmY1SGRLRml6ZFMrUkE4RUNiclVyY01RemJyclpESE9DR2VLa1VJNzJxRlhQ?=
 =?utf-8?B?YkhWRHBsL0c5eWhYS3Y0NUZPNE5ObDRJcy9YaG5JMDRDUmUzbm5xaFJQK2Fo?=
 =?utf-8?B?UVNmRG44b1NrWW5WQ0JUMzVhTFpaYkpoRVh2cjRaY2YrWkN5Sy9DcFUvREdk?=
 =?utf-8?B?NHdCc1UrT1MrTFJXc2xsR2V6d0tmci93MlBIYTY1Z05Ddjlqd2llOXVuM3h5?=
 =?utf-8?B?aFhYWFdTQzJxQTVrQWdETStHYWphSkhqWWIxYnd3VG5QejR4RVVmRUYzTUky?=
 =?utf-8?B?N2V0VVhod1dLanVoaUFoWWQzcFExckNaYysrOHFhQkhrcno4a0p5bURrWVh2?=
 =?utf-8?B?ZXZmNGpzd0t6aXNzWXB3YlphaGkrVWpqa1YzeWQxODJIeDdGajB4RUVBcis5?=
 =?utf-8?B?Y3E4cXM4cDRKbDl4YTZnM0ZaWXljbFlTT1JkL05xTy9TR2laOTZSZGlxNUpR?=
 =?utf-8?B?amc5TkZSY2dGVXJnYWdsK0tNUmdsdUQxdWpFOFU0OWNyNlBjamJCazU2WGdN?=
 =?utf-8?B?OURlU0VYTU9PYVFrYkN2TlIzcmQ5Z1VacERHbndRTVh2SStNMGNXZlRHMWFT?=
 =?utf-8?B?LzJwRXk2eXNMOHUybHBQTWZZRUZrUWlPR2VSWVFPeEhIUlFpN3ZwZVQ3YnJP?=
 =?utf-8?B?alp1WHZLZUsxQ01rZnVPdU1GbEYxSlZNUk1SUnUxVUpMZVV1d1Nua0lsc1BS?=
 =?utf-8?B?Z1FVeGlra0EvYWhCOTVwYk5XYkc5Wm1EZng0VWNYbGVtanRNZkZsY2F0WXY4?=
 =?utf-8?B?QUUvMjUybTMzeUw4elVoc2RJWFdyaHdmay9rRmF3eGVGbExEbGU2RVNjODMz?=
 =?utf-8?B?alF5eEZDQlpKVmVzTG5pdUJISEp1eDBaRndYV2M0YldwM1dWRGsvTTB1L3p5?=
 =?utf-8?B?OGM4aXNCOER6WWVXemw0S3ltNzd3d1doaHNyQ3FiME9KSTJtUVhnNVgxOTQ0?=
 =?utf-8?B?WDhGcDhab1FTZVNuNFZkSCtsdUlUSWhTY0JiWHQvZDNTcXN5bEJaZzU2ZWV4?=
 =?utf-8?B?VXRSUUNiVGF1bHJrNVp1azYyc3VEZmJFeGRSdWYrNjBTY08zbmEvQnFhOHRV?=
 =?utf-8?B?M3hJUVhTcW40RnV2RFdMRGFOQmhxZXZuU1h1Y1JTbkVJTG1kQlFwTTlSRThP?=
 =?utf-8?B?dGtyaksvZTIxMU9udmNSeGx3TG1sZG9vK1RVems0MUx6WEJIU284Mmd1a1Zx?=
 =?utf-8?B?eUdibWQ4cU5WQmd5Unc2NWFoOUFpZUZzbzFvanB6T2QyVFYwN3poTThGUW5P?=
 =?utf-8?Q?AjnBsNhKbxJzBhkI=3D?=
X-Exchange-RoutingPolicyChecked: azGti2RDGDiVAzjq9DSatich1TMLxfzDMlKGhujSXCAKEKG2s58Xgh5g+wEY6fPKBK9tn6fZ7fv0nKn/KeJI4pNZOtF0b/ZTLmYTZrML3Sk50gSnmkzpnVk6Bsn+6jZ77phr5aE72C/x95wPere9aaH4tnWDRhHvD1b72UibT6GBuDtzxRZWlE2Bf0ZUHxThM0RM776qTsz0ZCIBBOWGWgakeq0hXEe3Q3jM1aiCnWxHXdV033LQ3TugX2RuCHHmU6kw4WocF+xcOPYDzn/rj1/9YvkjMzFQYumJChXP3FEIMEntt6OXVDhxjWeNHkL7YPRKUaasRlVLHpa33DZJ0g==
X-MS-Exchange-CrossTenant-Network-Message-Id: de717280-9d80-4902-4098-08deaf688e7e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 14:21:14.3566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kcxXg4Z/sVX/etaJgV3atnwGT7Fo1SvM4XaaMIV2sgFUvfdPJOEADvusiF1a9pgOM11ex2bfDl8fMsnB67kLNou+orbDvBgwzvmpDbkYOW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2720D4410
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
X-Rspamd-Queue-Id: A473F50FFE1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 4/28/2026 1:14 PM, Ankit Nautiyal wrote:
> This is a subset of patches separated from the series at
> https://patchwork.freedesktop.org/series/164512/ for merging.
>
> These are drm-core (drm/dp) patches that clean up and extend the
> Adaptive Sync SDP definitions and helpers in preparation for
> Panel Replay + VRR support.
>
> Rev2:
>   - Refactor SDP logging to use space-separated field and
>     drm_printf_indent. (Ville, Jani)
>
> Ankit Nautiyal (9):
>    drm/dp: Rename and relocate AS SDP payload field masks
>    drm/dp: Clean up DPRX feature enumeration macros
>    drm/dp: Add bits for AS SDP FAVT Payload Fields Parsing support
>    drm/dp: Add DPCD for configuring AS SDP for PR + VRR
>    drm/dp: Refactor AS SDP logging to use space-separated field names
>    drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
>    drm/dp: Add a helper to get the SDP type as a string
>    drm/dp: Add target_rr_divider field in AS SDP logging
>    drm/dp: Use drm_printf_indent for DP SDP logging


Thanks Ville and Jani for the reviews. Thanks Suraj to merge these into 
drm-misc.


Regards,

Ankit

>
>   drivers/gpu/drm/display/drm_dp_helper.c | 69 ++++++++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_dp.c |  4 +-
>   include/drm/display/drm_dp.h            | 20 ++++---
>   include/drm/display/drm_dp_helper.h     |  1 +
>   4 files changed, 68 insertions(+), 26 deletions(-)
>
