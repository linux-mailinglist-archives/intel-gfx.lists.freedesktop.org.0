Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FC9B56701
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE0B10E226;
	Sun, 14 Sep 2025 06:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YiNjmjk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9327C10E02C;
 Sun, 14 Sep 2025 06:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757829718; x=1789365718;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C80jU9mrx2Ttx60YNU8LZhAotZuw+eky+U1l+BeFZM8=;
 b=YiNjmjk+oSkuX7rl/TaUfI2nSNs20YxNMdVDo8hj6MN8Uea4ecF1A73F
 XrpOIBAliM3QOqECIPfaw1uirhVJosKVOaIS8Meh5luaE21gQi+y/MNbg
 To1UM4Fzx0xsOLVPQJrHDstVKQmtXmAo6Uefwal0c2n+S13K/if7g1hyb
 357a54hWHmiW76pXruk36lUoIFVuSpUASmsvZNg8vHenEe43ZkKQUMbXD
 sH6daNJZ3UqDGJyzqJB3iB7pjUuisHCOH/67n5rnVR7AlvOTRRuNjMNsz
 JgT+2nrj8/tpGV9ptZeAzmr5Y6UfNMyGlp3ZIZlrHa9hYysH8BRCfY/Dr Q==;
X-CSE-ConnectionGUID: YLft5ThhTSSq87XJrW/bXg==
X-CSE-MsgGUID: QGVMKDNJSbu33TJsiIuT8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="60053751"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="60053751"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:01:58 -0700
X-CSE-ConnectionGUID: uu7v4PFST+S9BVPFQI9o9g==
X-CSE-MsgGUID: iLaVKKAIRCGYvNaF0Ug94A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="174405518"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:01:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:01:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:01:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.74)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:00:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=soEDNiXtolsWRrIuWgRLpVGnmUevIcvKXmBrvgz7sIGqVby+E3CHnkYzCiZMuVuW8XI8ymGyum7gv6ooFCDSa1UoI4ls13MFSsFggJHlDWdr98B9WHip11yCAyYdnTcvcWnDHBWxFbWUfa1Kk2GLMvdBeAuYs7GPcVIEyHOb395NEr8/cxtp501TmWqzLxJG9ZhX4tG2LRWNSbrUAmBOAM4Xkstf3g1dG8BcYP52y7WYuiY9L7S3bKj/YiGy/4+fW+7hnRuNNjIsZ4kGgcnKaQsLtGaCZJ+cbEfWo3LIo0M56mGW7VDJSMbF05fgY+r935Wug1OHLF87Pvo2AitklA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RTaKYiGZWkDDE1wiv/tN4t2USXtB8ELsaUOMIq7R33U=;
 b=FFmPhECZgvO1CCsztfex/ZHnQq0KkejbnStx8ZGXYaO75QVh8F9AqhLR0u+C3TMGbMFdhdHvcy+j1fcb2YK+a8Qu4wJy7AEraoAaiBx+b49YUHApWDElukTtxqKzxa7mLP90Z33vW6aMsVJsnkxko5f48G4qGtquzvuACnzub/8D+F9ScoB8D0UF5SB5SzVYzAzAA7nfmn8zCLaG4qVgKk9xPa32Tvp/3X4NtNO1EwnTLPGy+jqZOmv8u+yHP7BbvVeayVYOcKQXzRcoh++UXBNJQYo+4LWiSIDec/YdYGtK3Qlf4caR4tWkRK9RTlHcxgFIevXCglIJNxiIX9cumw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:00:49 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:00:49 +0000
Message-ID: <ddf4224a-ea1e-477e-b427-f455b610c0bd@intel.com>
Date: Sun, 14 Sep 2025 11:30:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/15] drm/i915/skl_watermark: Pass linetime as argument
 to latency helpers
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-4-ankit.k.nautiyal@intel.com>
 <aMLVhHbUNHJJypyM@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLVhHbUNHJJypyM@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: b3e73ee0-45f8-42b7-dcc7-08ddf3540c07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDZGays5V1ZrNWxYMTlGSkp4akdhLzlRZ0czMU91Y2puRWJ1WUdYRnlUeE54?=
 =?utf-8?B?YjA4MmRyUHBNOHFOUmZQelU3ck91anlxREphT2MwSytCZUMrME4yOWlDN1Nk?=
 =?utf-8?B?Tzgvd050bHNLV056TmMyQkczT1B1RE53bVU0RU85SUlHSll5cGw1RUZNUkxD?=
 =?utf-8?B?bGl0bStMYmZTb1ExZWlxL0FpRmFGNzVOem1QYlhSa0IvOEdpYlVrKzdSQ1I2?=
 =?utf-8?B?N21LZklFdzhLcExHRDI0RGdkUlFHVkRscFFsWjI1dlNWREhsR1p4bFFRamZK?=
 =?utf-8?B?Qzd5ZE5QMG1rMDJoaGhaRkR0a1NzWkkrQXdxUEJKTTBOYnpWeDhkWnVuQ2Vv?=
 =?utf-8?B?Z0lhY2RQUjkzUmN5dWlaTEp0TTFKVjM4WFdvVCtFT1BmUzdPdDhBajBRVGcz?=
 =?utf-8?B?YjRWQWdMY1hJSktTUlNrZU9XUjdxN2Vnd0dqT0VoZS9kaDdtcTh3eDlZMWxz?=
 =?utf-8?B?SGR5aG14WmVEdDNSRmg0eHZjdCtiY1JSUEphcDNzQWZGanpGVFQxVks4YzhG?=
 =?utf-8?B?djhBTGtIdDZ6UzUzUzRudEZOL25uZmhmTnhYbGpDYU1MZEpvakl4TEtJMTY2?=
 =?utf-8?B?endkOWd3WDU0SlRhZE9jekZXNXlPbjhMM3dFMmxKMDViQk5WelFCbVgveDNs?=
 =?utf-8?B?d1hiSzJWcGZ0QlRsMmNwL29vNFVpVWxDY252cGFZYVZjZ2hZZkxRUnIwRVl2?=
 =?utf-8?B?cUtiWkRIbWRjQnozMTR1UG54SlZ5ZC9DYWl6ZEpMRTdBcVhTYXhtVUVzRkZK?=
 =?utf-8?B?UkRldk1GLzl6NnoybDM3ZFYrTzFIbEVBYkxuZER5M2hBaENYNFlDS0p4RUJh?=
 =?utf-8?B?YlpzUU84d3dmVmhTS0YwTitlbFJiSjRoU29YclprWWREYjZ0Vm1yZmthUnZ1?=
 =?utf-8?B?RTFlZmo2NS9FSURmRzZ1UUJBaGNJbE5nMnFhTG9hc1FLandGMEpyZVo1VGFV?=
 =?utf-8?B?Z0xSYUQvQ0h4T24vTHdsdjZ0SVFkNDVHTjFuU1ZCSk9XenN4YTdzaERsTTZz?=
 =?utf-8?B?T3VMa0Y3Uk51dGtIK21xVVNmdEpJa0NaS0k4Z2VFQkszTVp3YVFRSUFadTFy?=
 =?utf-8?B?WDMxNThQRjdiSGw2UzdUUEYzdFY5TUdYTEVSVW9WMzBacjNvL0pKamlRYVlp?=
 =?utf-8?B?aFBWSmdSWlJ6TGNTMzVNMnEzOGE5aTN6UVJVVkFQNEo3akExSHM1bE5BRW1J?=
 =?utf-8?B?bUx6c3FkRTB2MTFjaHhPbDlkYnVqd2FyekEwN2F5U05JNXNRRG1qN0RBem5U?=
 =?utf-8?B?dEJOZUVROGtiRlgvYkZxdGNRZTlkNEtHcndjMFBIS21paDN6MDJjcXhRMHlv?=
 =?utf-8?B?eDY0Qit3NlJES2pkT0tXWmd2MDhacEpKaFJGclp6b3lPUi85emJ6YXBvWk1o?=
 =?utf-8?B?blVDRTNGUUg1MXNpVGczdElLSFUxdURaeXBVM0N5UzhZa0lXenhGMlc0RGdz?=
 =?utf-8?B?K2RiMjNZaUs2RTI4UWpSVThFNndsMEdLSVJZMk1XRnZWcWNuSVlTeXpGNlhj?=
 =?utf-8?B?OGZLcUZBNmJJa3JhaEU4aU1DcUtqUno3VHFMODk2L25KeUpGSURkTm9JQWdh?=
 =?utf-8?B?THJMN1hPYW44b2piZjNKRXJ0anN0WjBBaDIrRUF1aG9WQWxReG5Oc0dxanNW?=
 =?utf-8?B?a0Q1dEJNUVZQeVhYSXdDOFF2WmZoVFlRZTBJU1g5UGxTZ2xKZ2VobDhiQUQ1?=
 =?utf-8?B?VEZuVFRJUldCa0VwZ1JDT082RUZtYmMxSjdJT3hvaXRIeFRwRHpWV3ZpWTJw?=
 =?utf-8?B?T1BOUHhhRitHSUVZQjBZNUdsS3BwaC91UERYQXZMSVpIUHQ4RzNYNzlGR1RF?=
 =?utf-8?B?VUNLU1Vza1B0bUVuMzVRQWE4TGJ1Nkdyemt1NS9adW9ZOVIxaWVua2NYZ0hs?=
 =?utf-8?B?QTBGT3JEVjBJaERDdWpKMDFVZnJ0WXBXMXJrQ3E0aDhEeGYxcEhISmttaVB2?=
 =?utf-8?Q?kz3CxiUfat0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDRNdzlkRGw3SkdyTGZkRVQwVU1FNUVVNGl1T2c2ZHdCdmdLeGxKZU9YcVp6?=
 =?utf-8?B?elhnTkFvUG1JRkxUZGd4cFl0ODZZQzNsUTlRd3E5WU1kRkpTWXNHMENBNktx?=
 =?utf-8?B?Z1BSNGJianQraHQrNy80STRTL2ZyMzFSSm4vNzFVMGxieE9tSStTM0VXNWU2?=
 =?utf-8?B?RzExbXVCdFJPaVE1MkZBSzlCZ3pYOXpKYUV4UFZGdEJHNkxvTzdvbnQwcHpp?=
 =?utf-8?B?ZTUvaXZSYWQzbml4YWRQUlAyRjBpY1R3cnpqQ1NPMStyYXRCYWhXdTJNTnph?=
 =?utf-8?B?eUVVaGtBZFlZVXN1TC9jL01nV0lySmRxODJlWUpiMVhzMEI2WW1BYlBPV1Fw?=
 =?utf-8?B?RWFDcjBBWndkYnlsOFp1NnNWTnNDV3ZnVnRlNHVlSVZoRVlRK1dsY05INWd6?=
 =?utf-8?B?ZGNEbTV3c2xSeldGeGFMTlo4NE5RUkRLRVhDdStwOHdoNE5zUmZHTGxqZ2Mw?=
 =?utf-8?B?WTJWNGk0MGtUV2JZZ0lrNHdJbkt4alV5TXFBVmJZSEtwWnhDQjdwWGNuTGhV?=
 =?utf-8?B?ZWVIakw2NVI2TXN6dExxZ0ZCRkRDNXJOTHhKMmcyaG1wMDBPVlVxRUdyYTQ2?=
 =?utf-8?B?ay9wRjFSUEtnbzVCSHV0a0xJUlcraTBaUnRnMFVNZTBScmZoRFM3eTBYa0Ji?=
 =?utf-8?B?d3ZQaS81Nm1XUFcvQjB3WFg3WE9PMnNrcHFpR2FKcHl5VHE1S3dSTnhLcmQr?=
 =?utf-8?B?UFpTTXZiQVpwVWFmbzdEaG0wcFBNMkpVNEN2ejRXMDhybklUN3pCbkJ4aHRO?=
 =?utf-8?B?TVJYRjJ3NHk4bWZQbm1OVUNwYjlXd3ZxVjRMaC83eWY4R0hDYS96eURrSVR2?=
 =?utf-8?B?amtleVhXQ1VrTEZPQ1lBZ0Z5QnJPa2F2SkR2am5pM3RXREU2RG1SeFpBL2No?=
 =?utf-8?B?LzJQZU5Eby9GejFDc1RyOUNLWVl0UG9DS3IrNmZFZTNHa1krVHVYWGZqblZy?=
 =?utf-8?B?Qk9TYlNnSHhkWlFpd1hjcGg2RThVSFY4UlhDamJGVnBpYnA2UlN1RGlJVVdF?=
 =?utf-8?B?VE1DS1Arb3p2T29nT2ZTajNreCtVV2E3MlJFSXpibTdxUnlSZHZvWGJpY010?=
 =?utf-8?B?QnhBNTBQS3NHYnQ5eXhNNlYyWFhJR0x6UFRMTVM0U0JQZUdXQzZvWFhMQ1VN?=
 =?utf-8?B?Z2hrblE0Y3RXL0N3TzdkVU1BeG1Cb3VOMnRMaVhPYkxYSFIyMEpVYUFLbUty?=
 =?utf-8?B?MG9PcDBQNUNZR2sxR05rZDZmS295cjNTdlNMSzZ6VngyT2NMeHBtaS9yZDdM?=
 =?utf-8?B?a1VOTjlxWC8yTmxTTnU2c1RRSjBpa3l1eXJQZEZETXpLZ3paM2xjcmxHcmVU?=
 =?utf-8?B?OW5BbUZOWVRuZURYS05UdkRpM0l5NE41clNwanFCeHV4NXRBQWlWMEZHYkdU?=
 =?utf-8?B?RkJOSHJkeFhMcjlBZUpNc042VGcxa1NwZkpWaWFkRVhORWt3SUlrNWVrczlT?=
 =?utf-8?B?MTJCU0pxbWVLRUtZa2tqVWlpRjkrR1grK2Yyd0FZblhPVFFhVzkyMHFDSEVD?=
 =?utf-8?B?bGx4anU0WWlMcTdtZ2RObXdJbURnMGZwYmluVXhDSDdhZDVwcnJKTHNlVjR5?=
 =?utf-8?B?dFZPTVAvM2J3L3ljQjBnUXNjQzRSbWVLemJ2NEdiUkYzckQzM0x6WTNHalov?=
 =?utf-8?B?TzJ0di9xQTM4VUxZd2R1K3dKWklzZnJmVzJhY1FmYjFDeWpteUJHMHp3L2w5?=
 =?utf-8?B?dFR1ekszVEFKVXFtWld4T1NoV2lvVml0eXA1d3o5T2FLVFlxbFlhVUx6SWJp?=
 =?utf-8?B?dHFZV1hvVHhScUdzK2FVNGN2QmNDTHRJaTZDV01QZ3F6L2RrdytldXcwVFpH?=
 =?utf-8?B?ZzFOOSttV1pjVit6clV3aUJ3M085RDAvbVJFUHZBR1JSMFJWdDdOZWl4Qkta?=
 =?utf-8?B?UWZoMWk1WjJjaExtblZWZmZwVFpibExlbm1rR014WHMwNE5TeFFCS0luZWVn?=
 =?utf-8?B?Z1llanMyblhmZ1J5WEJIY29PQnFkbENDazd0bTVJK25kNGpMWUdPUndPd0pH?=
 =?utf-8?B?MTEra2ZiOTI2R1VSa2svZkR5dDMzbGZtL05HYXVmbmxZblpVQ212eElaNlpx?=
 =?utf-8?B?d1UyTXRIck94OFc5eERwdXVuNEw4NnIzOVIxaVNlMmxOSFRNb0o5bVJ5dDRV?=
 =?utf-8?B?YjdxUDFqS0hJdWlaV2I3Mlh6SnhRWitySkVRVE1RSzBtRmlpelJJdnVEa2N1?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3e73ee0-45f8-42b7-dcc7-08ddf3540c07
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:00:49.3450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aCOOTOlHbi8rO20n8Dw/UXgF8dz2nG4OwuLvCXgG0PNvaRbJo9zDW5B2k049i++hqz//873RGGx1A2Z6eZjDcvrc06MYgZZhYUKTiTGCMNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


On 9/11/2025 7:28 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:42AM +0530, Ankit Nautiyal wrote:
>> Refactor dsc_prefill_latency and scaler_prefill_latency to take
>> linetime as an explicit parameter instead of computing it internally.
>>
>> This avoids redundant calculations and simplifies scanline conversion
>> logic in skl_is_vblank_too_short().
>>
>> This change also facilitates future extraction of these helpers for use
>> cases where latencies are computed for an optimized guardband, based on the
>> highest resolution mode, rather than the current mode.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++----------
>>   1 file changed, 8 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 51548447f4aa..49d424f5b305 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2176,13 +2176,11 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>>   }
>>   
>>   static int
>> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	const struct intel_crtc_scaler_state *scaler_state =
>>   					&crtc_state->scaler_state;
>> -	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
>> -				    crtc_state->hw.adjusted_mode.clock);
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>>   	int chroma_downscaling_factor =
>>   		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
>> @@ -2206,18 +2204,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>>   
>>   	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>>   
>> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
>> +	return dsc_prefill_latency;
>>   }
>>   
>>   static int
>> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>>   	const struct intel_crtc_scaler_state *scaler_state =
>>   					&crtc_state->scaler_state;
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>>   	int scaler_prefill_latency = 0;
>> -	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
>> -				    crtc_state->hw.adjusted_mode.clock);
>>   
>>   	if (!num_scaler_users)
>>   		return scaler_prefill_latency;
>> @@ -2238,7 +2234,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>>   
>>   	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>>   
>> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
>> +	return scaler_prefill_latency;
>>   }
>>   
>>   static bool
>> @@ -2247,11 +2243,13 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>>   {
>>   	const struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>> +	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
>> +				    adjusted_mode->clock);
>>   
>>   	return crtc_state->framestart_delay +
>>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>> -		scaler_prefill_latency(crtc_state) +
>> -		dsc_prefill_latency(crtc_state) +
>> +		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
>> +		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +
> Looks like you could just add up all the usec latency numbers and
> convert the whole thing with a single intel_usecs_to_scanlines() call
> instead of this mismash of hand rolled and non-hand rolled stuff.

Hmm.. sure can use intel_usecs_to_scanlines() here. Will change this in 
next revision.


Regards,

Ankit

>>   		wm0_lines >
>>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>>   }
>> -- 
>> 2.45.2
