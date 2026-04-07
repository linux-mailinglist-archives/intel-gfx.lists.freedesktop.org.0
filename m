Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wG7ONI/i1Gn0yQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:55:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8580E3AD51E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C8910E3BD;
	Tue,  7 Apr 2026 10:55:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjGjEcdr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9124D10E3BD;
 Tue,  7 Apr 2026 10:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775559307; x=1807095307;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J+ngvL0UiAHVWdpaZaiH/y3uNh3hdlxXMXGNnKOqY50=;
 b=fjGjEcdrg7SdkrIvNINC2FB52PU/tGzrK52HKl6uZ7TUVj1ACatPeDIu
 ubeuCvMgMhiHpjnmwNlsSZYH7TV2YmecoRxkiS4tKSiRESCKJvARRyf/V
 6U6LJex2fg6I4xBZ/1QlyxSYMZIQILpWouGJ15iu3MJ24F5ttt7WomD4u
 wU78gu4btYNO5qCPvTsBZoAsITuW1tF9Wz16yp/JZT/XdjcNiuoSIFf8Y
 lXVjC1po5ce5HAdMy7ypVG1qNeb4sZahZ/3UxgU5ovGSuaOaF1TaEZqsi
 B9dhUukDw3JHvERa0MAVU0Y1yu+eO4CulZTNNEo96gb4w3wXhbDICoeUf w==;
X-CSE-ConnectionGUID: hHzJYovRQYmSZtiEfxlt4Q==
X-CSE-MsgGUID: G0UdMZIbTNW9OnHWANPyaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="80113626"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="80113626"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:55:07 -0700
X-CSE-ConnectionGUID: BOT21CdoSTCv6HbocjYyvg==
X-CSE-MsgGUID: YZQKn4jVRRitVmWZ81QMVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="224949012"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:55:06 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:55:05 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 03:55:05 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:55:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A2BhWVVhLCtHkyE4qhFA+gWZO3zx0SgaLE65hGvgjA4Mf+HXs4qqCLIDyTsaInuVe+sBgCLqJUydGBfc/zholE9ArwrU3xiBH08PmRNLOtp0FkZrFMWs7uPo6Ge4m2GcvIZpDSG6Ocbu+IVFA9I5XoASs8cw0LDK7Ht8f14gaqRmWp6tnRDFLJgh5rZUMd0GYV89l4vJfN7DFwsZ51eaS4MJ11nAR59o/MNJn/OVVx+P4EgSGdcaclo7JfaaEIrSDy7ddKHldGT/A0XvaWdFW1dX7FPwTbv0ZNWU6q3LuqSnQQaPAqfRQnuuol5ggpv9HXGpSrOVUUfgOeem8H7CVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yG0bNB2JAJWHy+UsqqTxj7HtVo8NfwtzUTkf6wcGFHY=;
 b=kS7Q40aPOVoIaP934hBKVz96VlA+wGu1TbcNz4f+Md441KJITr7oDV0+EDor3nZZst044YhH8MEi7t3eSQipGWC77F3XN5eUq8bssIycR+lYxJfWO5pKW7Zl6beQXXVAihlipdIcf7nD7sQBgaq9bz2ayN+q7lA+OwY47aSOqZNkQBwZIZjArPSSI0x8QNZYpBqpUS+IltMkPV7R7osL6L7RDCdoDdJe3DTs5FepEy+Nf+T8QtFLEheQW/eiN7raYD6P61VvYf3huLrcunZ5bsA6v1xEk+4g0+iRRzlTl+MOCIpxYdrwVIYwsOteWbvGtLp8r+BB5fSyk96DvKdxNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Tue, 7 Apr
 2026 10:55:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 10:55:02 +0000
Message-ID: <2ae5996e-1eec-4b33-9d4e-6a07aa805698@intel.com>
Date: Tue, 7 Apr 2026 16:24:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/23] drm/i915/dp: Compute and include coasting vtotal
 for AS SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-23-ankit.k.nautiyal@intel.com>
 <ac5Omw5rDxuGO-Bp@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ac5Omw5rDxuGO-Bp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0160.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5272:EE_
X-MS-Office365-Filtering-Correlation-Id: 11ccb24a-3455-4c96-7714-08de94941e66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Hn6idPOqbB/7lXNPvXwy8EZwo5tzYgoVOQnXapb861zTiB79Gg0Wv2b2W56+a+WkEptUDN61+7haNiyaKq17VGwkF8vyRx4ny8o5ESRhQBcCrwc2es7AKXjgj/jKlPqvfgDEflGVqRufZRlj+dTNFJuDuvCNuWIVpeo+eofjAVv9ros4nkmkI4MbjMRUQnQyiFCvgEI/JfsNHqKmyHFwShWB2A90VTnS3U1ra0CyBv+3EkhKzy9bT9sJ136S11LBSFum7XBxU1ESHAQO266d58uaRh+qEru1qGTikgvKYgclljX61D85lTdHrr+d2SpOoZVflryCfoZEynI5EhJljxCvsfAB51VIM5ZezaUiQq/XjuCv/zrKh+G+flFQ40MOrdatzDw64qsFJW0OwnPSYhVHfFRVJVD8ezGrdzVi9+bRH9FGGUiwQH756pv5dlYg1Eg3PWwGstY1+L+YQoofxTFP3lDawqMLYoigXje3DcgPT+fYj4zEO++G5z5cGXKv7BBKs0tPBN7Ro5ThGuq1Nd5ZrnI5hf237nTu5te6bJtxzhIe4rPvcNO9meYncQofQ6DpWa1itiw3r0T4o6g9VEvcgQ8lw4FJ9t5iDeLMqzidGP5w9PVgBtgtKxlDRbOSXucRFgLZN5EiAmPad9EgBxeD7VA2aM52ZRGlxoC6x+qYWBniWdeBufDylnW8pynJtiUcmfXNlRXFhFhUEVaTBG9iK1J+YWGkmDfjY+ALSuE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1Y2UjJOaDRQaC90MG1qTHFxN1A1ejk4Z0hPVFJtNmgxemw0M3VMTm5LaU5o?=
 =?utf-8?B?V0JaSWgrcmlXWHJNeGQ3bkJZaVEvQmIxa0JGQXNNSlJHQTRybXJlY0xjKzJh?=
 =?utf-8?B?Y3NSTGdWSXhGVVF6MytTVXZnN3JtaGFzeUc3QzJ5anZlMGVXLzY4d3dkaXBP?=
 =?utf-8?B?Nk5yYlphN29ORXJIWGJLZ1NjdGVtaHhSUUVSRk5XSWc4S2RjNnhDcVl4MkpF?=
 =?utf-8?B?UEFUS2tqaCszMkdYSmg0dnpCVVJueDk3MC9pYnAvZ1ZQYkJsS1RnU0hFZENr?=
 =?utf-8?B?cEphaE1EMyticXU4bTVqbm1HWlhoS1JTdXpMaXNUNmFzbHMwU0RodUZiaENE?=
 =?utf-8?B?SnY5RmM2TTlQa3NCL3MzdkdTeFMzZ2kwU1J5Tk5LTUtuSUE2MnpZZzZCM2JV?=
 =?utf-8?B?aG9iUTRzZVk0MEhRMG1ES0hjb2o0WERuL0RmOHE2cmpuNHhhZTNoTTcxUUNI?=
 =?utf-8?B?K0U1eS85NHZJbHhaVVRCSjZvdmlMSEhwakhqdHF1V05pY1ZuUTl6aDlvZUox?=
 =?utf-8?B?N1IrUTVGU2FZUTJZckx0cFFoVG11VEhzdExiMC9NQ2dCN0FFZk5Xd3Z3VlRv?=
 =?utf-8?B?UlA1aTREa29WeDF5eGRwbmEzUUt4MEJ2UU9KRWczbnVOMFRUNjBwT1lUVklk?=
 =?utf-8?B?QW5PM20wS3o2SG9POU9naGliVWpXTEpkK2lVWW9wZENqTHBQeHpxWFV4UXk3?=
 =?utf-8?B?UWRpL1BOb2VHSjhtNHdaSXFPdTBtaW9Wam42dkxWSXlzZ210RmJ0SGlnU2Jv?=
 =?utf-8?B?SGFHcEFVdGM4VGg1bzNrd3FhOSs0UFFrT2doWDNkRTY2VEsrcTV0bC9jeVBu?=
 =?utf-8?B?S3pPem5aSHQ1bXBtb1Mzd25keDYzYk5ua0xIYUxDUlZIeVFyNkxpc3FIZzdD?=
 =?utf-8?B?UUVkQWVsOTJMd3NBaE1TS09md0dHMzB2OHBDVHpodW53ZG0vaGUrR3c0b1Ay?=
 =?utf-8?B?bUZ0a0VTSDFhL3pvcXVudmUzZXh2eXFleTNwZkwrOTRlTTRpYkZ0UzlSeWJB?=
 =?utf-8?B?a1RoTmRxLzdxcEN0dEd0Yk5xUHdlUEcvTmRIb3lVTzUwU2RyTFZtRTl6Y0VZ?=
 =?utf-8?B?UFl1aThNMzUzMUgwQmw2N2hkUVJWbnVtcFI1VzBCSGJad0lwYTJQWVlyWWxJ?=
 =?utf-8?B?RzJXWTh5Q3drUlNZRHJ3TmFxNzhQemErOWErMjU5aDU1c1YzQSs0aWloU0pa?=
 =?utf-8?B?U2IwZGdNMHl4cXd0elIyaHpRV2dzbHNLNG0rVU5iUyszNWJGangzVm8yb1BC?=
 =?utf-8?B?akx5Zk9wY2xtV2h6ZkNHN3N6OFRHS0NIc2ZKcEJNSmRKVVBjcE5mMkdIcGFx?=
 =?utf-8?B?ZmJ1em15NFJSak9neTR4STErYi92T0FJZFp0LzdyWG9GVmZ4cVVUMy9NenYx?=
 =?utf-8?B?MC9VS2FSakpZSkNlVkc1NXZCU2ltNHIwOHJIOW5PSEE0TTY4MDZIQlcwRWZK?=
 =?utf-8?B?T0JmVlQ2d1h4bDltTXFDYzdMNzVaVWJhR1JJQkVpTjFLcnU4eVZSZmFBOGxU?=
 =?utf-8?B?aEM5am5jdkJna21IMDlxY2EyZXk4aUdlNDJrTG1ibURTNlQ2a0RTb0tuV2wz?=
 =?utf-8?B?NlM1Z3ZEdGhnN3hPV3hSWjViTVVBZVcyTmZjcWQwVkw2UjhOc3gzblZEY09v?=
 =?utf-8?B?TUl1NjhxUGh4ZkVlYmxjS2VsaGc2TTZ0WGFseEhmSzRCZTdkNXdscTV4aStQ?=
 =?utf-8?B?YTdGM3I1SExGUllPMVN6UllHczZScTBYYkgvalJFY0tQdEZPUktSK2xRV1BC?=
 =?utf-8?B?M09jRXpzektsUWlkVk1pT2Fvb3R6NFZGOHJkUjJ6cjdOUGVvaXBRWEhHUC9x?=
 =?utf-8?B?cnpMM2lRMG5KdTVGSE1tNGRIZFMwTGVuVTRIbHkwdHUxL3g3S0Rtd3ozVlkr?=
 =?utf-8?B?R0FrYThVaEdOSGl5YkZEM1dEL0xDaUhiaHJ5L2luZjF5OUdESngxVVlYUmdl?=
 =?utf-8?B?VlpqZGcwYUx0TkZUUHlCdDZGUDZtMlhITWNIc1VzdU9wWUovL3g0dnNZOUZN?=
 =?utf-8?B?R3daVUtIeVZMUW14M3BBa3BJRG5MSDlaU3Qwa0hNUEVvUnliNy9OUW4rNE11?=
 =?utf-8?B?aUx5Q3RSRlZVQVZGSzdvYWVBRUZBRCtabXdvMlJyd0VaWjFSOVJIMkVCY2tZ?=
 =?utf-8?B?djJUTi9wZW9uRDdDZU4xZG84YTk2VFRXckVjdVA2b3hGNTJhZHY5RnQwZFVa?=
 =?utf-8?B?bDJWbW04aEZQbGlUdzF4Yy9rcm9GN25Sc1BnbnRkV2lPVCt6aWRqbHBIZkxj?=
 =?utf-8?B?WDJiV2RpcVV5T0FoVE01SGJSUVRjNXErZG5XSjVMWlE5emFnTUNQaXhmYkFK?=
 =?utf-8?B?ems2bTNVbEI1SkV0L1l0ei9WUUFvSXFVQmVSd1Byckd2cjU1Kys0U1p6eHRZ?=
 =?utf-8?Q?8JH1qxD+NgFsjKfo=3D?=
X-Exchange-RoutingPolicyChecked: byymB9CsWfBHC6PVFZ0pOEPpnwI4XERD7CToZ5nd9Hv5X/34cU11YRD/s+dqO33ZDw0WL8dPTqkTRnNU2srKawPHHmnVjlMmW9Sj5qPQx7kv97OGZyeL8ysXtE/lv1kZ5CEanyvi1f0PZTButqEzOsrlchC4J5Dszl8JD8142PsxyHM3yNNETPRXfePKzWL+lJIoYmLnCqZYWYn+g4KN5ya0/6bw/JfaOP63+L3rgNirZKjdfVyDoxFX5UCikYAKKhBVVG43m6OHJ0Y5rF+dc35m/0BuQbxPucLperdnSgrsxfjRm/3m8BclzbE2OKr/PkdvCUxDojwSTR0+bZjGGQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ccb24a-3455-4c96-7714-08de94941e66
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 10:55:02.2812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dQ7FpjLuNZJ+Mw9UrlEUy/1q1AqubVLCtojbF+4VGVZ/xqLEf1UGat9XvljxWfmjRhYdm01ksNbxO4gZ8ujwmN7aggOf0hDPyhDWrv2JC8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
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
X-Rspamd-Queue-Id: 8580E3AD51E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/2/2026 4:40 PM, Ville Syrjälä wrote:
> On Thu, Apr 02, 2026 at 01:34:22PM +0530, Ankit Nautiyal wrote:
>> DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
>> transmission while Panel Replay is active when the sink supports
>> asynchronous video timing.
>>
>> In such cases, the sink relies on the last transmitted AS SDP timing
>> information to maintain the refresh rate. To support this behavior,
>> compute and populate the coasting vtotal field in the AS SDP payload.
>>
>> Include coasting vtotal in AS SDP packing, unpacking, and comparison,
>> and set it during late AS SDP configuration for PR with Aux-less ALPM
>> when asynchronous video timing is supported.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
>>   2 files changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index a0e7ef2574b2..747dd3112d66 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4914,7 +4914,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>>   		a->duration_incr_ms == b->duration_incr_ms &&
>>   		a->duration_decr_ms == b->duration_decr_ms &&
>>   		a->target_rr_divider == b->target_rr_divider &&
>> -		a->mode == b->mode;
>> +		a->mode == b->mode &&
>> +		a->coasting_vtotal == b->coasting_vtotal;
>>   }
>>   
>>   static bool
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 902c09e0780f..de6f88a5400d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5123,6 +5123,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>>   	if (as_sdp->target_rr_divider)
>>   		sdp->db[4] |= 0x20;
>>   
>> +	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
>> +	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
>> +
>>   	return length;
>>   }
>>   
>> @@ -5306,6 +5309,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>>   	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
>>   	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
>> +	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
>>   
>>   	return 0;
>>   }
>> @@ -7383,6 +7387,21 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>>   	} else {
>>   		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>>   	}
>> +
>> +	/*
>> +	 * For Panel Replay with Async Video Timing support, the source can
>> +	 * disable sending the AS SDP during PR Active state. In that case,
>> +	 * the sink needs the coasting vtotal value to maintain the refresh
>> +	 * rate.
>> +	 *
>> +	 * #TODO:
>> +	 * If we ever advertise support for coasting at other refresh targets,
>> +	 * this logic could be revisited. For now, use the minimum refresh rate
>> +	 * as the only safe coasting value.
>> +	 */
>> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
>> +	    intel_psr_pr_async_video_timing_supported(intel_dp))
>> +		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
> Seems reasonable.
>
> Is this always under our control or could the hardware overwrite
> this with the current vtotal at the time of PR entry? Assuming
> we can enter PR before the vtotal goes back to vmax on its own
> anyway.


What I understand from Bspec in this regard is:

Do not write Adaptive Sync SDP Transmission Disable in PR Active State 
i.e. DB[2], instead use PR_ALPM_CTL[ AS SDP Transmission in Active 
Disable ] bit.

HW will sample the PR_ALPM_CTL bit only when PR is active, and it will 
get reflected in AS SDP payload in an 'appropriate' time.

HW will ignore this bit when PR is Inactive and always send AS SDP.

So I think HW will not touch the coasting vtotal DBs.

Driver should set appropriate coasting Vtotal and set the PR_ALPM_CTL[AS 
SDP Transmission in Active disable] bit.

During PR active Driver will set the DB[2] bit in payload which will 
trigger the sink to use Coasting Vtotal.

(Unless we start writing : DPCD 00B1[0] ie. 
PANEL_REPLAY_CONFIG2[PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED], in 
which sink starts using its own logic).


Regards,

Ankit



>
>>   }
>>   
>>   static
>> -- 
>> 2.45.2
