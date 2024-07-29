Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F17D93F87B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEC610E400;
	Mon, 29 Jul 2024 14:43:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fs2C6TBy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7755610E400
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 14:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722264197; x=1753800197;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=my2XoFN23r0fOd+wsrDVSpYcw5p2Ke07oDQaBHGvcE4=;
 b=Fs2C6TBy5L+qloNgyfMm1Dv6pWTBTbOoWP4IRKOSY8sVXgEq4Z4uXa39
 cJh/lOugRkyVh3OErxQoxVs23gh99Iqe7bqyu4vC3Gh0U7l+n3c60XQlD
 cdIJc0JsdiaaSw6+OwFpmZFpcPgfh6uyCQrFHQd8U8N2rBaa60vxjnCjw
 Z1fWKrKnTeMJxQwlS9uIf2l3jCznUHWs9sswESmlH22yVp/vZ6Mxam34V
 h/x4XtuOZ6dk9px27UKw2H5j1cvmwG5V801Lxsmx3WhzxKFsLVKsZgisQ
 PwDJWYsaGA8ev/LvWtFgAoVJhAzMAD3XfaBpcDxt5jthovvfKmjvd/GUo w==;
X-CSE-ConnectionGUID: XtV05avCTCm5R+XWvJop0Q==
X-CSE-MsgGUID: b2k4ZVbrT5ayRTDhqQmTBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="22930323"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="22930323"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:43:16 -0700
X-CSE-ConnectionGUID: bYpqNUZqTDyKHLHwZ7TMTQ==
X-CSE-MsgGUID: p/qqQErQQh611cMCevkNEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53938270"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 07:43:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:43:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:43:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 07:43:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 07:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OGH3viFJ6wQmkI4sgoRi9LS6CdrOQvUZoWA4CIzjvO25GwTgoD/ApNveMnwDximA5cKd+MXR0OG4brBt/DpZU7wLQTm2wpIPnv3vhXKebjkBuD1BbhbnlKTCjH9QdI55fFVAajLruFJq8+CBLuECcPjF3Mb3Xsudk0Ff+f9aRLTubN3D6IReRZeVsqYDuV10kR9o7a3IPZ74xzS7nalB+DuN926vmt37fc4TE6zRebOhsEmcShnVxSk0/j8P1FQEc8WHHNhHznlmQAj13InGNtUKX/SUuI/P199FNoirNPT9l+NTaZkAw7dSrScEuoJ2uG+DR01Kct8RLYCPevdZVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KBtaJ1kqJL7d8i3R6v9A6NFzDjv+nrJjNKytli0zmt0=;
 b=lUga70w3UBNRyTFn/6vkLnQQa/yhGs8jcBjKvzK97tFyuo3s7Zg7THitni/B48HyUkJUJkUJoPfbogqa6x+7xVzQvy7Z52F3OrKCFeo5A815lbOhRuoXqZXdKgdjGuEQ24+k5XnOXn/4Ajb6K4heb59ShChy+Gf19PVJbM5mIiGM0F3czOjW0MgT6BXpGveHInE7kgtlEMPWjS0Z1yqkjDEpi0z63bamiX91RdrFMPH1wUdApSp3fOE25kuc3vcvxXFXbjt2ewci4yh6D8sl6YRREmIxYZrzFLye1Zv4FES//lS+XAfBGNmt5AmyKYYiB6QpoAiWt3IM20OzhAgPNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5938.namprd11.prod.outlook.com (2603:10b6:a03:42d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 14:43:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 14:43:12 +0000
Message-ID: <df9d6b0a-cc31-41df-a3a4-638b5ecd7ee1@intel.com>
Date: Mon, 29 Jul 2024 20:13:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: Refactor pch_panel_fitting to use
 local variables for crtc dimensions
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
 <20240726095357.1261804-2-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240726095357.1261804-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5938:EE_
X-MS-Office365-Filtering-Correlation-Id: c8b5add3-3f54-4547-219f-08dcafdcc53c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wnpac2h4NjMwZzNuK0dDNFhPNS9kbldZQlBtWDZuWVp6T1liTi93eVFxY3Rm?=
 =?utf-8?B?MUFTdFVQaWtNbm1kelQxeDQya0FFdHlIQWVYUDhlV0Z5Z2JRbU9pUmRYT2RK?=
 =?utf-8?B?VnJRbmJhNWxOa3VCWHYwZzcxNHJKcm5IZWVYaVVTMCtNWkVmT2RzMmhnQjFB?=
 =?utf-8?B?S2thcXJlK0VMcmJvdDNlZlIxZU1ueXdGQko0aXRCdnVCcnBkYWR3ckZldy9y?=
 =?utf-8?B?dkw5RThOWmVaWnFiTXg2L2s4UDExdTJWMjRYMFBkU1pKYnpIOWFZYW5MNTl1?=
 =?utf-8?B?UGxCbjFzeVl1WmtvR0JuT1NSNkJXN1FwK2RhNnhFaEtmL2ZHYzViWHpQaTdB?=
 =?utf-8?B?TDBRVDNQbmUwNTZBL1VjbFVWdlNoZ29Mb0FkaGpnTFlDZGlKQzAwMU1qK3p6?=
 =?utf-8?B?K21iTFFQY1AyVEYvMHpvbnhUL3hkREpiWHhxMURRZ2NmbkdTNEI0RnpneGdK?=
 =?utf-8?B?MmM0dE0vbjJ6UXhKdlRScVQ1am5TZUlZbVppNVBNN1F5dHBkYjZzL1FrUitx?=
 =?utf-8?B?WlB2aXZ4TkVZdUp5dkRyQ1NYYVI0RFFRQkxGWTNOZm51OHAzVmF6WWxhaWR5?=
 =?utf-8?B?OFQ2K3MwZ3BGMHJSNWVyaTU0d05GNGZIZVhLNXJraHh5RXh2RFNldUxXQnJF?=
 =?utf-8?B?M0w4dENGSUhXa1VRZm4vaDNUN3d6U2tzcFdzTk9TMUFPbENjS0F4L2tFZjBS?=
 =?utf-8?B?MzM0S2RJV05MU0x4TmRSZ1NwSWVjYmRqOUtvS1Z5QTcxUmI3TjZCTVFXMnBC?=
 =?utf-8?B?empFanNUK0ZoQkVTYWd1MkVyclI5NCtwc21JMDJYMzhkY0gyMUZvazN4K1Mw?=
 =?utf-8?B?VnAwVi9HcWMyOUsrTFc3MHZlSlp5aU5SUjlUemNEZUxFV29wSTFnZ2QvbGN4?=
 =?utf-8?B?NHhOQnVJWjZWb0hwUVJubGdKQ1NzMk9CbEo2QVZUU1FLV0kxSVpMYzBiQ25D?=
 =?utf-8?B?U1N1UFk3SW9EUEsxbnFiNG5kUVMrWkx0SHZJSlBqZGVWcGFKWWx3S0F3RTdB?=
 =?utf-8?B?WlE5emtFR1JsVjI2R2VjejAzVXZhOUhjTSt2Q3luZnFCek1vdmxBbnR5ZVoy?=
 =?utf-8?B?dzZhMmRDRUhSUnNLY2o2R2lnNG92aW9zSFFrbStDOEJjQzVocWpNMFR3YitK?=
 =?utf-8?B?OFBicHQ5T1g2OU1WeGp0UXM5Q1ZiQytPd0Y2SmV2bjA3eTlWZ3k1bUU2NjlO?=
 =?utf-8?B?U2ZqdzlWd21wb2NoMWxmSHFKU2JMbklOUmJQZHBnaDBINlZxMzIrc3JGS0E2?=
 =?utf-8?B?Q2Yra0xyT29sNHMyNVA5QUVQc3JLQUpDSHp3YStrTmV1NFphbWdMdHRXQ00v?=
 =?utf-8?B?L1EwRmNFSGZSSm8ySGhabkZjWHZSanhUZU9qdG5NTGJIdXFwWTI1NlpLak45?=
 =?utf-8?B?NHZMU2c4dlFtNFJHaXorM3dKSjg0V0xHY3hFVk5lZFdGTWtaa0lRcGFSTkJw?=
 =?utf-8?B?VGdIcFExRFcyVE5YTWVYdzAvdHIzNkczMmx5RmltZFFGVWZKUTNUbnc2RmFK?=
 =?utf-8?B?dEJmZm9FVXlYM3RQaS9Zc2RjczY5WjZzaGJCZm5HS0w5WXd0cjRMaDVuSVAx?=
 =?utf-8?B?WG9FakNMa3VEcy9wMDBRN2hsZkNCSjhXa0tiYklINm9TN0dsNDVIN0E1SCs1?=
 =?utf-8?B?UUYrMit0QXVLWS9vWHN2RE1XRFc3a3hLbkZSbkl1SkZ1UGE4WW1YS3hVL08w?=
 =?utf-8?B?ckFZWmFFNWczZy8xbzhtYkJab3N6bWFKcUc1TndXSDJKM29rQy9xNDg2czAv?=
 =?utf-8?B?Y1E0Vzg5VUt1QktEWVRFM2R5UVREREJBUVJ6Zk4ybU9SeW1QSFNIYUN4UEFR?=
 =?utf-8?B?dDBDVEZZb3l4ZXZ3QmN3Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K08xdUVBZEdvTng4VUw3YUNzMjYxREsxTk9GUTlkeEErcG5YL3JaUHh4UW41?=
 =?utf-8?B?OVJYU0JadXkxcmNDcGZWYkdhWUZxQnhvZjNYa0pRMXA1b1duZkIyT3V6Umhh?=
 =?utf-8?B?MlFoZ0pjM0hYcXBsem5IOGFWejJ5djA5ZkorMmN0SlJ5dFk4aXlpN2k1RDYz?=
 =?utf-8?B?MHdLUmJOTE5lOUM5eG9oNzhpVVk0Z0ZxcWVvVHV5aityZXg5ZDBrZ1lzOGFy?=
 =?utf-8?B?MksreFZFaGV4ZXd5V3EzMkJ1ajhzNjhVRUZpbnlvR0EwaEpLdlhFZjN4Rm1H?=
 =?utf-8?B?bG16SkxDZnU5YzZPYmdLT1orL1l4M1V0cXMwT0xMUCtWVzRsVTZzeTJwSzBp?=
 =?utf-8?B?Y1c4bFNabWc2Z0wyRW1pRWJGNzZpRlZyOGFDY2VnNXRPZVoyOXBFb3Y0R0p4?=
 =?utf-8?B?U000MjFaM2FLRXVJT0hyWkMrOElzWUJvWXFEVXV5S3dtUVJ5ZktnbzJpd3g5?=
 =?utf-8?B?bUptL3dUWDlnUmhIVjBDalZMQStyaDN2dlUycy9Vb1lncklFN2FNeCtDaHF4?=
 =?utf-8?B?RlNoanNBdGxkcjZYM2hEMjRuVlNzTnhQN2M5N3VFVkpGNm5NcDM4aHNnSXpT?=
 =?utf-8?B?R01HcXVQNVVCb2FPWGtGZmVEMW1TbkRzelA0RXFZQ20wM2JsSkYzYzRwK0Vn?=
 =?utf-8?B?azJsc3ZUb0w4TXJIeDQyRHFkejczNFNSMTExc3VVcVdVa3djYkltV2JkQmJv?=
 =?utf-8?B?cDJ2dUlEVHhTK2F1SDd5Ymw2SVFuSUFxVXYyVUFNOWdFK2Vvc3czS3NkbVVJ?=
 =?utf-8?B?SzB2L0psRzE4QUhVa2pKYWgrWmhYYU1oU0NRVUJXMFkzMzZKMmFqNzNkNkJS?=
 =?utf-8?B?eGRRYTVjRkg4emtlWThJU3pMS3VZdE5LMmdaQlJIVWVDcFVxU3VxUGJ6Y2Fm?=
 =?utf-8?B?MFErRmo0UXFPaFcwZ3JaZG9KS0o2OXh5VXNrRlZDNGpSYUVTY0l4S1Q2bjM0?=
 =?utf-8?B?YndiWmN3TWI4cmpEQXdXbEROZGxkcy8zNFhicC94ZGE5UGdtZkxWZ3liS0Fl?=
 =?utf-8?B?WXZiRmJ5QUhaaWdFLzk5SURqcHB3NVJiV3dHNWZYc1FydWU5ZWp6cGJ5bUlq?=
 =?utf-8?B?bnI0UDljMytiT3plTlpHQlJRY0pETmJ1UjlCQ2s2SWpLQklzcnpycG96eEhT?=
 =?utf-8?B?MDh0TTdHTTBocGhVdjh6WEkzdkgyNVFrQ0pXZU95QmxuaitvMERxVmgzSzQ1?=
 =?utf-8?B?NTBhYTAxS0pwTU4zNXVBOTFYWHA4VHNKR1RmZVBtZE1PN0pyQUZQdDNzMzlZ?=
 =?utf-8?B?WW44eUZqWUJ2MjJCZ2JNOWF2a1BXNk50NG54aXZ4YWcyQXhDSTh1SDVjVmoz?=
 =?utf-8?B?SmZUMEIrRithaXZySTA4Vm1BZ2J0U2x3YjJUMlZPbEhPbFVOTWR4bms4Zlo1?=
 =?utf-8?B?SGZscTV0QmR6M2RVWGIvd0pqdmUwek9wVndqem5FV3pSZE5tQmVleTkzbGNo?=
 =?utf-8?B?ODBFZkVHWUNVSVJOYVRqRjVZTmhTTW1QYjV3S1JOK3Bsc2E2dllld2JzdlNM?=
 =?utf-8?B?RlNGRTgzVmdGNzF3Zm1PSXVpSC8vOGQ4NVBrQ1FScW0zRjJNaWNYeVFQa0RI?=
 =?utf-8?B?MFFKbS9PZGdxWG5mOTM4aXN2QndWbnVseGdmcm5rZ1l5L0VlNUxOZUZtZU81?=
 =?utf-8?B?MzExemxQYWZtWWY1YVhOdjVBSXorTkhiRk1vRzZCdTdIeGFPOHJCYU5McWJ0?=
 =?utf-8?B?N0kvUGJWR3IrVmoxTEhPeE4veVhiVTJ1cmR5VXFScWg1Y3RQeFRCZ01lOHBs?=
 =?utf-8?B?VTVGSFo5SDZTWnNsMlhnbFp6am8vdUpEeXAxKzM4Q3VwT2lYUk1wU0tBa0JJ?=
 =?utf-8?B?NFdaWmFQMnM5YU5DUDQwMGdHdjFsYmhMZVA0bzZXNUhNZnNabzVVYlBtb2ZC?=
 =?utf-8?B?VTFnb2lUd0VVenYraDF2Mi9oK0dobU9pbEZqK080WXVFWXA5U0h2RjJlRVFF?=
 =?utf-8?B?eURWbVk3NVdtY3RzTnFvbjhDSVJWcHpLZEV6dXptMXNFMUs5cmlVbjI0dkJr?=
 =?utf-8?B?ei9ydEYyRjJCUWZocmZiQVNmS1BsMzlid09mMVBqMFZYeEgvazNNSEVwMEV5?=
 =?utf-8?B?bmNmUGpPYUJ1bVF1eGgzTUVreS8rUnV0UjZnZXp5TGhNblBFdjRNMEUyYnVD?=
 =?utf-8?B?OG8yTnVvQ0FCLzVBRjlFU254b2F0YWJ0SHBMODdHVldLaG02MUg0bmRUQWtF?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b5add3-3f54-4547-219f-08dcafdcc53c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 14:43:11.9953 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJ78VDbAg01ZU8sRC98SYhec1xz6iMGL97Xk19wXaWmH6an8XGugaVoarYOcA7cV2QZXdRibJZu5DZE5EocL49VOAjhN/V0y+bxwjAaXhVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5938
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


On 7/26/2024 3:23 PM, Nemesa Garg wrote:
> Refactor pch_panel_fitting to use local variables for crtc_hdisplay
> and crtc_vdisplay. This will help to adjust the hdisplay at one place
> when big/ultra joiner is involved. Introduce local variables crtc_hdisplay
> and crtc_vdisplay and update all references to adjusted_mode->crtc_hdisplay
> and adjusted_mode->crtc_vdisplay to use the new local variables.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_panel.c | 34 ++++++++++++----------
>   1 file changed, 18 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 71454ddef20f..dd18136d1c61 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -392,10 +392,12 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
>   	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>   	int x, y, width, height;
> +	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
> +	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>   
>   	/* Native modes don't need fitting */
> -	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
> -	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> +	if (crtc_hdisplay == pipe_src_w &&
> +	    crtc_vdisplay == pipe_src_h &&
>   	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>   		return 0;
>   
> @@ -403,45 +405,45 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	case DRM_MODE_SCALE_CENTER:
>   		width = pipe_src_w;
>   		height = pipe_src_h;
> -		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
> -		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
> +		x = (crtc_hdisplay - width + 1) / 2;
> +		y = (crtc_vdisplay - height + 1) / 2;
>   		break;
>   
>   	case DRM_MODE_SCALE_ASPECT:
>   		/* Scale but preserve the aspect ratio */
>   		{
> -			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
> -			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
> +			u32 scaled_width = crtc_hdisplay * pipe_src_h;
> +			u32 scaled_height = pipe_src_w * crtc_vdisplay;
>   			if (scaled_width > scaled_height) { /* pillar */
>   				width = scaled_height / pipe_src_h;
>   				if (width & 1)
>   					width++;
> -				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
> +				x = (crtc_hdisplay - width + 1) / 2;
>   				y = 0;
> -				height = adjusted_mode->crtc_vdisplay;
> +				height = crtc_vdisplay;
>   			} else if (scaled_width < scaled_height) { /* letter */
>   				height = scaled_width / pipe_src_w;
>   				if (height & 1)
>   				    height++;
> -				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
> +				y = (crtc_vdisplay - height + 1) / 2;
>   				x = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> +				width = crtc_hdisplay;
>   			} else {
>   				x = y = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> -				height = adjusted_mode->crtc_vdisplay;
> +				width = crtc_hdisplay;
> +				height = crtc_vdisplay;
>   			}
>   		}
>   		break;
>   
>   	case DRM_MODE_SCALE_NONE:
> -		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
> -		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
> +		WARN_ON(crtc_hdisplay != pipe_src_w);
> +		WARN_ON(crtc_vdisplay != pipe_src_h);
>   		fallthrough;
>   	case DRM_MODE_SCALE_FULLSCREEN:
>   		x = y = 0;
> -		width = adjusted_mode->crtc_hdisplay;
> -		height = adjusted_mode->crtc_vdisplay;
> +		width = crtc_hdisplay;
> +		height = crtc_vdisplay;
>   		break;
>   
>   	default:
