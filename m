Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mvNACqQeMmoAvQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:12:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B8D696624
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:12:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XE6BOiw2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E2010E919;
	Wed, 17 Jun 2026 04:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A2F10E919;
 Wed, 17 Jun 2026 04:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781669537; x=1813205537;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RGPGXQQqVYKzcs44PHj/N5dTWDQlUHGPMTcZnn/hctU=;
 b=XE6BOiw2supjEwGhCgTypZZA7/MNf96c2bicCGWmWEyWCHw/o83FrOgA
 0s7joTUxxV3V03KZnJqWEf0PtfCmbkgWp8MYWMvfl/ktS/lS8zbCjvUDN
 pW513Qn357PlMmRnEm84ZHI/4WE2jxrhF3TBLATATWXweHKEYuqlBFcSy
 pD19OmRGSle/8ZkVkmdQ5fECHjkG9Qj8IDcLJu/9dqqqvCWGKgqeSDMNo
 zTz3eGxmUe4Ifigg1md6YwVtR4JT2k3iHfXcFa0RtO2zCCQyHPzq6VjyV
 aIK3NHiu04uVYEFi6BZe51qJnBUyC+JIbJ4METEgcee6cuQ9juHAVyhoZ A==;
X-CSE-ConnectionGUID: dWKrtXzoQqqxuHIMIx701Q==
X-CSE-MsgGUID: wzp+ezFeRuGsOMgh+/z+vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86105379"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="86105379"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 21:12:17 -0700
X-CSE-ConnectionGUID: UaeUwet2TcKAMfYQ5jKvVg==
X-CSE-MsgGUID: 3UqznmBBStaEkAcNUuWaDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="248038754"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 21:12:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 21:12:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 21:12:15 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 21:12:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tj9GSwLjRkpSbMeF3IroIv7uALFVFYewLOKoVZoT2nynCXyZ54YAVZ0k0m2B4CtghZgHejx/ruRJ+/Ig6OT1m9tOfYeOpK3V5jE9LPKS0CO+XFOY49ZjkW8gJTdZ/qj4lX7BEjqGrKlYKVBrwAe+Zu8/u1/G5gPeiWIkgSTYdqMIRq9cA5VW4RMaxXzIY+T7ePV8PSXEr8xPH1gI/M2b7nlqsMrkJnXBfoNF2j4bM1DNhxt/9V6e7dvJ0/MGykc+JQEmsCgICJTKd0CvAq6CX0XJ8vnHBibjC6Gd255jsTz+dz7Hd/ylvMpFFNZbA48UX/V5E3yIMvpWI3LRoawJZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5FCUuLDvq5+u2ZP6fojSfK1G5lC5NqHN1Ju9k2ORlw=;
 b=rvkEZL96cG5RdefRZmVmHxYh0MuewPKBIZaW3y2MzRPR6aMxEtkMVijXfY7vBoAwOyfJmOJkRS/FoYqFtR86nzVDi9hmUL937Dme105EVvgaH7uJbCNRExBGIfYp90xpq5plX1vfB5CcG+F5KZeQHdQaK+Og7wbBDDqNyZ4ZiUcUiorPso+Cz2XEjMUXPQQLqq6bBgZ8ah9bC4F7hfO39fokPEFRI6v04souCVrOFgSrtQQpUMWlJA1eIANekpt3x2F/vU4yjLFv30zJ5wWgAsSAv23BHyad/EyYfuRHuBDdbPgDHWR+1xeMNWfA2Xak8sZdtunk/HQrcBTE5wM5Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 04:12:11 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 04:12:11 +0000
Message-ID: <39f95722-1b0c-4d1c-86b5-f373814f1fbd@intel.com>
Date: Wed, 17 Jun 2026 09:42:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/display: Program TRANS_VTOTAL from mode vtotal
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <suraj.kandpal@intel.com>
References: <20260616073805.779362-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260616073805.779362-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::15) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: 93f1eaed-daa0-4d09-b746-08decc269aa8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 5llL4Yb850ECZ7IKgLH25D7r94D9Y0jnDRSXkuEwb3RujKmBdGmpK4PZB3EL1nZAsTFl8BqvMdIwF06YRIPbSeKP+ES7bhW4qBHWi8fLZpLwwWrDaYmSgjWkuuXkkiyn+d8Hajpa4ovHDQoX8wQIkKEk/qbUVHYOPMYJvjuM2vZc8mY5jVV1iQ7bv9NBADAyx0y/Up56EE+m6uncIHOYVUGPBCRKOapTjsrVqwd8slUTH6fK1XbTDMauxmWcpvbsnItbWuEfHIZX4q2HJFfjDwXi5mVaWJmo8HaD/HnTm48CiT8oOfoVlQWchZe0Rd/Bqto2QxLusuY+hHB+WPhiJI9g3PgKRUQyAJyMioPHL4arN/r6ri4AoMwHwXzazhyP2dib7WCrp2/3M3asOvfK7qhFd/h8KQjLmcLJbli84+N+OqZ7cDJDgKht6m+efuAkEf1p8S/00l52W5/6qb0JjOB1gc2X4DZB3d3DPJUVlIulOKfVPlnJowpvEdnifC4oXamCjRlcgorF9zS6eTBeFHx6ZCbjfBdyY3/JzROnmbJ3N8c5LzGoYt669ynWFjzQrdUCIjJO2uKLChp67Wsimuap6OjBitxg7uMAKlCp1To2kOd43PdjIRKOk+DSw8hm+GoQ+jOva5Z2szKjqTzHCAIesE+tm4KeQ8NYEiRS6qwQpP0cU2i+CkejFKHgBzcq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SndjTFIvYVhkS01MZ2wyNmNDc3NPTVZaWm85eXJpU2pheE9HbnBuZDMwc29D?=
 =?utf-8?B?VDdra21sMG94dXg5ZnZMQmFrMnY0TThvclJHZnFhV3lrZ2gyV3pFdkhYa2I0?=
 =?utf-8?B?bkJrZ2xxd3FCenNZeDkzSS81NXNMd0RsNkJvaEZkNjhvbDQ4ZTNOWktadGJO?=
 =?utf-8?B?WnRnL0dPY2VDSGZzRDRBT3pxRVUxVS9TVnBTWFU0V1FzTHZmTml3QWNPNVE1?=
 =?utf-8?B?MDlnbENyRFErTjlwTDVBSnFGVm96VUV0NmxvZHJNbG5ZN3RMVmN3b3FJekJ5?=
 =?utf-8?B?MThodHdSNHNBbEZZQWxMWUZMSVlENFBVQVh2QUxoR2thOUhPeEUweEdEaXZF?=
 =?utf-8?B?aDVnVmVobmlBT0RGbU1nNkt0YVY5d0hWUHMvT1VkM3Z1b0d5WXJlbW01Ym5T?=
 =?utf-8?B?TDJUbUpjNm5hMmNLOHEzWDlkUVkrekNPaVg4eWtiOGVtU2tzNFM4aGduYVow?=
 =?utf-8?B?V29relBvSFcrK0VBQUU1a3V0R2s0YzhXUnVmWG9xNFNLRmZzMmM4WmdqYk0x?=
 =?utf-8?B?alZqWlQvVDU3WGpuWTFDbzMzamtwU1U1R1RsZmZFdWdSSHczMzkyd1BBL01G?=
 =?utf-8?B?MkhaNWFHNTZVSk9PQlFhR2pGSkthYlRSQU82Q1BnOHphdjF5MVdTdzhVbTlx?=
 =?utf-8?B?RkE3VVlyWmRzMTRGaGRXNjIya0U0SjZRUkRud1ZpS21WK0xEeVl4OGFvdWhE?=
 =?utf-8?B?ZHlCZy81Sk1jRGF0bnN6U1cydWlqK3lYRDBFbzRwV0tiNWJzckl0RXFWWDRH?=
 =?utf-8?B?SzAvOFpzeTdQQmM0N3dzblZYdnhoQzkyWjlsVzdpdThqQ1JGRCtnd2tVWFpY?=
 =?utf-8?B?R01MQkYrTFZzem44WDhGMXJqcXppL3pRcVBhRjh1eWl6OG5IeEE0V2NiVXRX?=
 =?utf-8?B?a3NrOVo2MjBLL0w3RzdvOS9uUEJRZUlxbXhVZkMxUmp5SEZYTXJPa1hGZ2Rq?=
 =?utf-8?B?RU1neGVvZWVhVDlUNVBiS0hxaXh6a2UzMmV3d29QVGUzMkU5VlFjNXlqOE1N?=
 =?utf-8?B?U3d1cG53Y29ua3hXWWZJa1lJd3N4TjlKdnVLcmVYZ29GOHBkMkVVWTA2ZlV3?=
 =?utf-8?B?VWxQTFM3ZXBtSm5EK1lKcXhadlE2Y2p1dFJrakhzc09IcWpId3FTS2hqdmRB?=
 =?utf-8?B?VXhRalQ2bExNRGhTTHdnSTdSK1kyN01Gcm5LL3RRSklnS3lld3g3RHc2Vi8y?=
 =?utf-8?B?WXlaSUFLalRzd2JsVjlXWjBDODVnTUsvRmc0Y1Vkd2hJV3ZYYnp6TS9ZQzcv?=
 =?utf-8?B?M1NnZmo3SjE2dFI0TTl5Z3NVVXk5NVZSVW1Qdld1UitkemYzeXVnZ0dEUmdi?=
 =?utf-8?B?Y0V2U0Fjb0szS0cydHgxL25yQU5tOGRaSGplTHRiNVl6SCsybkdOVTV4R0Vq?=
 =?utf-8?B?ZXVhNDdQb3RKbmNsSUM1YnN1d1hCSFI3Wjd1bGpjYlpGWE0wVlREVzlTZEhZ?=
 =?utf-8?B?WG5rbTFBSnFnNHozRmpJNXdzYkp4S244ZmlrUUVUTE9jWVZTd2FuRVRlYzdG?=
 =?utf-8?B?ekYvOHgyY2ltM21jUWdhWklwVS9MaG9PckgxdGllanc4dk9QS0JGeTZHTy9U?=
 =?utf-8?B?MlE4UjgvNmdENktCYkdyZytqWk1KVTg5eW9CQnlXcGdDcVNrSEdmYzdyUUdu?=
 =?utf-8?B?aEtZem5WVm0xejhVQ0VUMkZXZURyK1RmbzZLVUtHcllEUXZwb2srVmljY1Bw?=
 =?utf-8?B?S3JtQ2ZoeVlMWHBTZ2xtbGNBdHpBZGx2ckdiU29zT3NqbXQ4TlgwYkgvVnBl?=
 =?utf-8?B?QjV2STN6WDBpY1BsMTRZTXVxZk5XbktVbmRNYUQ1UHBjMWsyYWxQNmhjWkNr?=
 =?utf-8?B?cGtRQkNBbXJjSTgraUx1T2NwWjIxcHpNa0lCREFLWjRKWWZkRko4d0Q5aWwx?=
 =?utf-8?B?TDZ3WERQNzVrRGZzd1EzQ0dBczdUWlNlaHV2S0Q2WnlwVFNLOGx1d085SU9o?=
 =?utf-8?B?QkliNGVQZnI3b0U3clJnWlVFSlRNRW5hSy9HZUxnblNvSkx0ZjFWb3VqblY2?=
 =?utf-8?B?NWk3WjFIdTRyQ2w3VlJSSkxNWXI3c1Z3QWQ0bDFxZUJHYTlZWVIwZGJsKy9N?=
 =?utf-8?B?N0xvdUpQTHdkanJSSkpsenBCcU5UdFVHcjgvbVJmeVJqWGNERCtrYzlQRzdJ?=
 =?utf-8?B?WEdqakgrREVzWDdpK3A2TXZPN1ZYWmxBMzBSZTNnTjBubnFqdHJ5VHpEeVpC?=
 =?utf-8?B?cDIrQkdaNURZSGdkZG45M1hzeHE1UmJCNE9rdjd4YTEwZ3hIT1h5RmpoYmtt?=
 =?utf-8?B?TVd3MG9GMkFaWkc0Nk9MazlrRWdENys5bWFaMUQ2TDEwcVhHbkVFQXJLWldX?=
 =?utf-8?B?RmYvTmc3MG10MWNKaGN2eS9URGJiWFVhZlhUcEc5aUpoNUcvbTc0TUFHL2xU?=
 =?utf-8?Q?xAxtNau7HXdwkqiY=3D?=
X-Exchange-RoutingPolicyChecked: pqhw2F/2hYDBeybzDjo8LvRXzR7MkS+l4dCQDtq3PIqNaQgUrp2jegQUd1MUpgysfXRvDIL57e89lgVdkFPt2A6gebC++ZtLXXN8G9GZaO9FcvTwcwjtZ3FBDdt7v6dUOC2x8JciVAOivDi5ysDuLccc1IvBs+zxyf+z45UoSPmWt/d/6J5dyJY/7pw5SjQc9Y/pZJUiEzgh8qU+qfMlYyLVA1I/gl/dzfw0k2rZfz3fIVoe1pJYBA7pAxo+35CSKfKgYVNgP6MEDTA2DW+xZWdLaSut5XTAlYO7uF+SH+WWtpGHM0VGcr7UhtPTP9TqsmJLpc7XwnIW1dDsNQMlTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f1eaed-daa0-4d09-b746-08decc269aa8
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 04:12:11.0208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zn/YfHuYPnNS16psgXmYsH7I7XK/TbIyEhKes1LaHLo27VqCF9eRM3F/M9viueH3rKMYwb5HKcaxBN6eCX+1I7I3D/HytBEf9yNk2g7X4kU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78B8D696624


On 6/16/2026 1:08 PM, Mitul Golani wrote:
> DP transcoder uses TRANS_VTOTAL to derive MSA VTotal. Avoid
> overriding crtc_vtotal to 1 on platform which supports VRR
> Timing generator and always program VTOTAL from mode timing
> in transcoder timing paths.
>
> Bspec: 70001
> Fixes: 94f608992f8c ("drm/i915/display: Avoid use of VTOTAL.Vtotal bits")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

We need to also remove code that sets 
crtc_state->hw.adjusted_mode.crtc_vtotal with intel_vrr_vmin_vtotal().

Its not a fix per se, the specs were changed, since there were some 
issues found with some panels.


Regards,

Ankit

> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 17 -----------------
>   1 file changed, 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e2e4b00a8fa9..eb54f20b1859 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2731,15 +2731,6 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>   		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>   		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>   
> -	/*
> -	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> -	 * bits are not required. Since the support for these bits is going to
> -	 * be deprecated in upcoming platforms, avoid writing these bits for the
> -	 * platforms that do not use legacy Timing Generator.
> -	 */
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		crtc_vtotal = 1;
> -
>   	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>   		       VACTIVE(crtc_vdisplay - 1) |
>   		       VTOTAL(crtc_vtotal - 1));
> @@ -2826,14 +2817,6 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>   	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
>   		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>   		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> -	/*
> -	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> -	 * bits are not required. Since the support for these bits is going to
> -	 * be deprecated in upcoming platforms, avoid writing these bits for the
> -	 * platforms that do not use legacy Timing Generator.
> -	 */
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		crtc_vtotal = 1;
>   
>   	/*
>   	 * The double buffer latch point for TRANS_VTOTAL
