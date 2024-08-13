Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 397A394FD25
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 07:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5EB10E26E;
	Tue, 13 Aug 2024 05:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVegRfum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E3110E26E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 05:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723526347; x=1755062347;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ABq7BNV5bs0HFpxuaSNtgkcMwyPmVRXmWKeI81hMBlU=;
 b=AVegRfum+VhsumAiNrX0ujsws3LnHFpyyphlENMrjftZZ1XSEjCBC+DA
 OPYjyjqAyAaf2fGIu3Mcna77dZ61SrS3kShy844M3PYO6KTYBHUpAmUcN
 GrCwYI5MLXnc692BoH/zbWjKKzAT5hGB1UYfENo31BJOqvQAEXW2u2Ubr
 sxqlN7nbhHuauFhseJaPewieyPbc56lPXo8ymFfl4PM5SYJ75tVky33cb
 4IHOqA7cCKKR3BBIBvkpnzgyVtNAazuKliP6ClCJdDfuLpJi1LyEGJ+l1
 Rb80RtDHlmGIZgkuIZttT1uOUTqx6IQnFjYH7AHH4aPjMf/8x66kpJdRI g==;
X-CSE-ConnectionGUID: fom8QI7eSIa48TmQFiFXNg==
X-CSE-MsgGUID: As/lz5UiRLa7w5Bv5K/gdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21834675"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21834675"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 22:19:07 -0700
X-CSE-ConnectionGUID: c6rWCiWzRyui896AWoE2Jg==
X-CSE-MsgGUID: mpTWZY/pSxCmYUW0Mlx8gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="63232136"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 22:19:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 22:19:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 22:19:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 22:19:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 22:19:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w1zhSB4rRQYmhi8pZ8cOugseUuXp44c05hIJ0mbHlB3vB08jPbSPd7i8oSI2pI+C1Yk4M4mf8J26dPb1VAkP7WFA5JT1Lt5JkdOjA++jcQn5kdukN9wvBvGZvY6CH/TQGjVPLBKHc6I/XCzuS6LotKG0km4UdNfJbAEox8q5cg3otR4sdXKomCfdS6Aqkb010P5zFuNcl9GVXFA7EXn/X8ssPFSwXoZR6bpjeEnbHcdEEoZE65wMMcMgLPcZXW3CV35ydILcnUKthz+FINcyTfsdHMf1SS7baJXeFGSjBGJ/qILqm6kOw/UnzO1/IBgGBGns5lHqYwy7/84mzWzZOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EW1Ks7TeDkfrE6rLKwUEk6YEfqxQA3/Zp54W8dbmd98=;
 b=hznojG+TthlW4B9Ae2kqcV1afHo7xGod1ScFBeVQO/q7/jBi/ARTBK5N0q/hr8LqJ0x8492tyUpJnK+LCxC2EwFYRC50qfw/apGYP/gsWs8l0Lama9Yuf4szsHgrPaYzxh2pfG3+7HjhL/27RAS15RITJvYUVT2sjrVt3tqlt1uf9Ep2RyTMXsOZvsFiSChef5iziX9ebU/2VYIpKXF8zkMnVrV4532zCFekd/Lzm+XkIGtV+ECYyMBsy3CNze0QgeK7/7gMF+pwTamz/MbIYi7HrBYYKjoWuGOc5IWKpk/IVX0dmtV16nlYq9CTf6XgpqIqfe2CXReAEzL30ykpMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.29; Tue, 13 Aug
 2024 05:19:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7828.031; Tue, 13 Aug 2024
 05:19:03 +0000
Message-ID: <427aead2-af51-40a7-b200-79d2bba1cc60@intel.com>
Date: Tue, 13 Aug 2024 10:48:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240805062538.1844291-3-nemesa.garg@intel.com>
 <20240808045407.2365733-1-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240808045407.2365733-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6946:EE_
X-MS-Office365-Filtering-Correlation-Id: 12512e29-cd58-4e5e-6a05-08dcbb57721b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUJtZk1SM1NJVzNXWFkzSTlackZtVUZnb2dCcnp4K1hNRXJMNjErODZCd3c3?=
 =?utf-8?B?c3J3eWFDYmxoWURybjNYL05oZ1hiQmdwU3BpVlhLK0hZVkJBZXpGMlFsT1Zw?=
 =?utf-8?B?OU5XazczbkdKbWxFYWFYMTNvVGpIdDJnRTFsa3dXVVplTGNSa1V0L3dGUnJ2?=
 =?utf-8?B?MTE2ZzV5Vy9INVE5elZoZ2lNeS9NaTlYY3pJTjU1OElKemROUzNpbjIxandm?=
 =?utf-8?B?UzhVVW9POCtoM2pRNUkrdTNTSDY2cHdPaFF5QW84ZHloVkZzSDBoZlo0TjJR?=
 =?utf-8?B?SHNQTFBCOEVWNTdPYkRKQ3dXTUpYZmVUNmdrdzUvMlFacTlFbnc0SkxFREd1?=
 =?utf-8?B?MzVyeFBNTnlFQk51Q1dzeVg5SjV5WGZTUVkrVFF2OVZRMFZBOWpYbXh5Y0lt?=
 =?utf-8?B?ZjFXem8zQ0tmeXlaN2Jld3d0Q1BwNk5wdTBTNlh5S1drUFlRK0JVS2lGVkt6?=
 =?utf-8?B?bUgxU0xIRzF2NmsrS1Y1bklYRHFHeHZIb056N1dhVGFiWkpIaml2N3Ezc0hH?=
 =?utf-8?B?QW1SZzltclJxQXRuSHZNVzhwSjQ4NVpmODRuZVlaYTMwOUk3RGkyQSs3bitB?=
 =?utf-8?B?ZExoOGJndnFNa3JlYlJkZzlwNzhYamZ4RXlDRTVPekJEM2Q2YTh5U0NWVjFR?=
 =?utf-8?B?bndnY0ppWW5jS3FyM2RwQVBoUDMrdHVObllDRnN4K1ZNNXNYb0gwc3NxM3RB?=
 =?utf-8?B?aUdSaW5Xa3VHd2dzN2tQOHdzb3VUS0JjLzArYmN1WXppclc2VHZ0VHl5WjYz?=
 =?utf-8?B?OE5PSGFRdUFLM0ZZVHVMa2lvbGorSVYyWE9nZkVxWHVrSHJDTlFaWE5yd2ZP?=
 =?utf-8?B?WTdKVWJncU5xRCsxcjkxVVNmRXNrRWhLTDhNM1VMOSs3TUppUEJQdEdrcDQ5?=
 =?utf-8?B?aG8rbERmRXdVdmdJMG9qb2dKZVF6alJNM3lJK2REdk0xeWhZKzU3cDY3VHll?=
 =?utf-8?B?aDhDTmVOVDFRZFgzVTJudFNVc0Y0dXM0WWJ1andUUmloNWkvZVBwT2llSWRG?=
 =?utf-8?B?UEIzTysxWk9CQUc0SlZiUGdDbWc3dU00T21qcXdKVHdKV0t5bHc2MlhmSncz?=
 =?utf-8?B?Ym5NVzlTa0dCVi83Q0R2akNyeTNqYkdEQUJrWlhjU2w3V2NDZE5Memt0QXo5?=
 =?utf-8?B?eHpOQUFhc0NWQjNGQmlJcVhKS2dQODViVlBiVG1IZFBMWHorMWMzRlNsRzRF?=
 =?utf-8?B?dTI2elNHL2N2UVB6dTJubVBLQkhUTm9VZFdtRkw3aHQ3TWNpYmxjaUcxUWVL?=
 =?utf-8?B?MzgvY095UVpheHFVS2xWZHhjTFVJd0xLeUhObExQd2M2UExyU2lOT2RPMWxs?=
 =?utf-8?B?UUd2YURGVnZ1WFNvNWVweHZ2Z2pDZmVzellCcEtUVG9QSG5tREJqaldWZFNG?=
 =?utf-8?B?c2czdUVDTFdTUVJ0TVNrVzRUcXdDY0dQM3RRZXN5K2pzWUVOd0pTYk9nOUVP?=
 =?utf-8?B?QlJLVnNCVlpYa1dJTUV1dHJUdVhjV0tLK2p0YVg4MjBYSUVIUUgvck9vbXM3?=
 =?utf-8?B?NWk5WUt6TFpVWXFkL1JKMlN6K0I4ejNuR0ZLZ1lSM3dsMWRZaDYvcGFoVzUr?=
 =?utf-8?B?VGJvaDRYZFczeVdqQXRaV1F3cUdrU1R6dGh4dGtOVWFSeWVqZ2o3QjhPd01O?=
 =?utf-8?B?OVAvR1p1QU1HcnZJSWJ0djZqYjgzQmdvaGdVOVNtemY5cDBvVDBSZktHYytT?=
 =?utf-8?B?bVkxaVFPenlLcE9IWGhlN0hTOHI5Q0VSU1hzMjRpVVAyWU12aGVsQnZNR01G?=
 =?utf-8?B?YVVjOEZ1UHluUE8xczdzS1BRdkZ1RDZFR2tjQUZwLzJIYitCSkRiMFpQQURJ?=
 =?utf-8?B?amp4Z1FVTDltQ0dpcWdsUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bERadjB3SWs4Q2ViU1dFZTZXcmJQQnI0V3U3ZC9Cb2lIRlNPMnkveFo3V0xl?=
 =?utf-8?B?NUJWaUxuT2FBY1JVRVpoZTFZSGdBNm9hNlpXNDdYbm5FU29SRm1zNHA3SVdu?=
 =?utf-8?B?SGJTUmR2K3pPUjNmb2phRktSNXJ1dHM5bUlZYndTZ0hNVDE1cGlrd1pvSG54?=
 =?utf-8?B?ZkwydzE0TjBDVzF0YUN0WCtWN3BNQlpxelFvYTRoYU5zL2JBU01ha1p6N0E0?=
 =?utf-8?B?Ym1Rdk14NVBTcE5qRmtNc1F4ZEduZ3orN1RjY0g3ZzFLNHErTytNOE9nc3Rh?=
 =?utf-8?B?NzZPSWZSN1VUL2NDdlNKMzlpWTJHZit4NTE2RUJ2NmRCTmlJM254ODBSd29G?=
 =?utf-8?B?RXlhRjRTTkxsdTVmYUJMVnNMNmJybmh1OVNjcWxwUWlNN3VoUFVzVnpBSnhO?=
 =?utf-8?B?L1pkNWw2M2dVTXMxaXZXUVdjR0hjVS9PZDVCT3lIU2czcFVlWjVxTWdBUDlP?=
 =?utf-8?B?YSs3KzRSSTQ4SytSNG5wS05TMjBSbTd6SzV1eXVtbUFGUHFzZlM5RjZRUW9I?=
 =?utf-8?B?TDFhNkJLV2dBbWpVc1IwUnBoN1gxZ0czWGRUb01EVE1ZUDVBREUxVFl6WTY1?=
 =?utf-8?B?SHNzNGZKSjU1UExVVTJTZlVHa0YwVFU2d0hya2RiZmVKQWdiVkJNMVRDTm9E?=
 =?utf-8?B?UUxrcWVzdnR3ZlZqSGpkdG5FMG9WTG9QeVZRTFpXTlc2QXQyeHhDRGR6MVlU?=
 =?utf-8?B?ZlprL21iaWtROU1kUWVPbW1ydldrbjJsWEtaQXBwSFAvN04wbjJNSnYrMm14?=
 =?utf-8?B?YjJyczhaTjJzT1A2R0FIYmcvNStxRE40ODhvWVlqVzdjTHo1MEUwYk1pclhQ?=
 =?utf-8?B?VXcvYnUrVGErMk5XVmFMTXYwUzZzSkxjUGVoYmltNGpEVEtLNzJhWDgzalVx?=
 =?utf-8?B?UExjUzVHSk9PSkpwbjdGQTU0NGRzU2RlWTljaU4wcVhGczlESjFSS05TUXpm?=
 =?utf-8?B?YTM2YkhKUzQwczJTZVg4WjYvd3JjOFhiZUo2NGxMdGJGM00yVDlMQ1BTMHdF?=
 =?utf-8?B?eWwvcGtvcm1qZFduZXRVQjhzdlg3QnFKcUFFOHkxdkVoaEZLZVhYQll6L0Rs?=
 =?utf-8?B?Rk43azZZU1d3cUt2OE1tMEVwelYwQlR0dCtKbGNDVnRrUVdENTYrNytXd3Bz?=
 =?utf-8?B?cUxOenUrdjRibm12L0lXM0ZFK21Zb1FqbjV5dVhjMHMwSk5Pa3luT0w5Mm44?=
 =?utf-8?B?RC9LbVduai9NdE82RjFMSXcyQ0pjbHZhWHVNdXQwekZzV2F6YkhtL2ZMRTJK?=
 =?utf-8?B?NzJzSWNkWFZESFZ5aTM2ckdQcHY0ck82TFc4UGtVMGphTE44MWtkYWQ1dnF5?=
 =?utf-8?B?eVpYMHRUUTU1NUZEaXZZUGdLZGZqR1Zra3FXMVo2NmZKWWNpWFpaUGhyRE51?=
 =?utf-8?B?ZDJtZVF0cmQ2TzB6U0s5NnZ5V2V3VVgyWVV1V3k0Q2Y2djRjRnFyKzNIaHh2?=
 =?utf-8?B?U1EzYnV6dmNSWXhUNlNmUXRqM09WNndxbFp2VGdVQjhyVm16SW55VStQTHBT?=
 =?utf-8?B?QnJjb3pZNEJvUUN0cFB6TW1wQUxRdEc2cmwrbjhHSVhYRGZUWVduYlNIbEh3?=
 =?utf-8?B?dlZqcDlVQ1NaY3ZDM20xTCs4eEtIUGZLM25jMkljdldXZStTK1MwK0hVWkh1?=
 =?utf-8?B?dkdtMjFPTVAwdGR4L2pPaHMwdmt4Zk5IdndueHlTODhkdThyeWdZWHhyZjR6?=
 =?utf-8?B?Nis5RVRKcVRTWWlNRGZvSVNZa0RUNFNmeVE4VFZKWE9HZGRkMTRnQXpUQ2s5?=
 =?utf-8?B?T1pGODQwSWkxRmF6eUg1bGE2QmZDMjAxdUhETE9IbFdMRzhyQ3Qva0ROTk5O?=
 =?utf-8?B?SVdOZEVNaWt0Uk9UOWxEdXRTUmdxMldUYnRXVGpmR2Y2cWtFU2IvM0pTL3NJ?=
 =?utf-8?B?QVh0YzlHQUJGYVlTWERySGdGbGJoRWZxc3dldkNqeDRGVy9wUzQ5RGZUd2Va?=
 =?utf-8?B?MlBSaFprV2QvZzR3Q3VQYXVjVzBpUjRtUlJTTGJCSEVBaFRzV0ljZE5ocTVF?=
 =?utf-8?B?STJLV3E5OVMySVZSQk1uNHNiakpPZDB1ZExyeDYrNTN2c1g4YytFZ1IxSWtJ?=
 =?utf-8?B?TzJXdHhYd01zWGZCdzdOalFQRDJEUlJoTEthS3VnZmFMN00rTkJjMjRmcUpH?=
 =?utf-8?B?YTVic0R2VWhvZWZaQXp0OUdpZjhrMWRsTUt2aStnaTBwUS9DWEdVUThOWEhz?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12512e29-cd58-4e5e-6a05-08dcbb57721b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 05:19:03.1687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qHfl6qm8UHXrFQ0KY8E4dIqVXmhgk5a9JutajHB8naeWXyIM6prhRVKDGg6SvWkQE44/0mUAC8LJUNMhQE8+42NztWTbiDIr8G/VkpksTWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
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


On 8/8/2024 10:24 AM, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner get enabled
> together.
>
> Introduce a new boolean flag need_joiner which is set during dp
> compute_config in joiner case and later is used to compute
> panel_fitting in pipe_config. Modify pch_panel_fitting to handle
> joiner pipes by adjusting crtc_hdisplay accordingly.
>
> v2: Address comments (Ankit)

In general, it would be good to document the changes patch went through.


> v3: Change flag name (Ankit)
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++---
>   drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
>   4 files changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bbde03f2508..82b67c0a90e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>   		return ret;
>   	}
>   
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		if (crtc_state->pch_pfit.need_joiner) {
> +			ret = intel_panel_fitting(crtc_state, connector_state);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>   	/* Dithering seems to not pass-through bits correctly when it should, so
>   	 * only enable it on 6bpc panels and when its not a compliance
>   	 * test requesting 6bpc video pattern.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a04d52dbf6e1..eb9713b088c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
>   		struct drm_rect dst;
>   		bool enabled;
>   		bool force_thru;
> +		bool need_joiner;
>   	} pch_pfit;
>   
>   	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 65182bf69b62..d5d9d4f21fc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2953,9 +2953,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   
>   	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
>   	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> +		if (!pipe_config->joiner_pipes) {
> +			ret = intel_panel_fitting(pipe_config, conn_state);
> +			if (ret)
> +				return ret;
> +		} else {
> +			 /* Incase of joiner panel_fitting is handled during pipe_config */

'pipe_config' seems confusing, as we already have a variable pipe_config.

Also, perhaps we can explain a bit more about the rationale behind 
handling this at later point.

Apart from the minor things above, the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +			pipe_config->pch_pfit.need_joiner = true;
> +		}
>   	}
>   
>   	pipe_config->limited_color_range =
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index dd18136d1c61..0da45c2330d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
>   	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>   
> +	if (crtc_state->joiner_pipes)
> +		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
> +
>   	/* Native modes don't need fitting */
>   	if (crtc_hdisplay == pipe_src_w &&
>   	    crtc_vdisplay == pipe_src_h &&
