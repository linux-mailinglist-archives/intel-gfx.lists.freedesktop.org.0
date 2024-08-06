Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 837439487F3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 05:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C1610E2E1;
	Tue,  6 Aug 2024 03:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hBCQyJgx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594C110E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 03:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722915453; x=1754451453;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aDaEYjW8G1Z1jaNFKKNhEYdS5w7mblyNn51MAiJDypQ=;
 b=hBCQyJgxjK9IY2BizbJ06PzdyPidlHQa1xMhqOFL9Plp5Zarqg170lhz
 Kr2mwBClR4X99HNuvZUcduDSO5ovNWO6WagEGZ3U7qRSPvi38Bc2LOf/t
 jd8pR3SbA8NdsoGy9rhiasRlGKGSclgjpCpIjZ1nvWIjw1sl4K6o04brk
 DMnJXrM3V6G9m/DNqXOvks4i1iavDmw4x5rArfYzFPbn79qu8y8SflLGR
 uH55wt+B+m174arGgVBlNucMx6ZyOaLr29USXqj9S9+HT21CypYA62CWe
 zRWBpEaYS1O8dX+JM26a64ppSk3IZ6jtAnmv+B/XwxL42K06hv+htSqzC g==;
X-CSE-ConnectionGUID: idzB6uTHRrqsSrCAb/hbLQ==
X-CSE-MsgGUID: 1NrfcZ13Q2Cuft0S2gAm1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="24674711"
X-IronPort-AV: E=Sophos;i="6.09,266,1716274800"; d="scan'208";a="24674711"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 20:37:32 -0700
X-CSE-ConnectionGUID: 38OAnsdvTSWSgHVPLRXNLw==
X-CSE-MsgGUID: 46JWx+YMQxOzFF6RSLJ55w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,266,1716274800"; d="scan'208";a="61189284"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 20:37:31 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 20:37:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 20:37:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 20:37:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=trTkZc/06x8LiVe3bCISqb9Atm4PddNafW8mI7QP64LJFYy8umL3A9iuDVpf4VcCFkkSyM3vd8253HClpW8QnOij12UE/qJx70hHmnjA+LrSoX/4hjjQ5PYuH9kwLgOP4BCSJ4VdJUhGW27kPtEbUVkQjUoL0vyy2fEdfClJfTF1eREzd72trMWkAJ45tAF6wkB3TUaluhk2JwLoMqKhpTfiGCyj2OK/g634krc+y61bLRE8av8hAfLNabfPhLFVuyXrVfsrAv2D7Ru28EaJ3cWCcdxF99+lz8NVln/7Hru6zy/axTbCSnCCE7qIWtaPQd+g3mqtv6cQDI60IPOR/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCKjNlKkBJ4QTYrWx5IE6fE+ArE4SbsORVYgxVxqKqI=;
 b=K4QC2u3YeZfsWPZkBj3N10N4FUF44+W82eyAdLT88Gi4E9qBRzK6zIdtzSoU7Q30PAoLm5oj62Ip6/XsZp+o1eO2YQ85moYZ8ZJ0UdQWxuGpc6x+a+7SiceCCq8Y24guTWq1hrb/JksHYxAlVe67KglxVEd1qW4GzGKaG7ABGud0X3k0ZSKT5dWY2chPb/J70VWdoeo/L83W1GMBJNM28UABnjr+qixJrZBr0vc+NU0OQuVYzatQni3OWJQIT2mbvsASJXKloIAYRBTqSS2DbQyBf/xf6VnFPm2kXt3IG365mM7DJPEuZRSxP4t1GczLjZ6UVDF4x2j17NiWQ9ezCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Tue, 6 Aug
 2024 03:37:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 03:37:27 +0000
Message-ID: <7fc2752e-3662-4355-a585-214320955f4b@intel.com>
Date: Tue, 6 Aug 2024 09:07:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: Refactor pch_panel_fitting to use
 local variables for crtc dimensions
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240805062538.1844291-1-nemesa.garg@intel.com>
 <20240805062538.1844291-2-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240805062538.1844291-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB5988:EE_
X-MS-Office365-Filtering-Correlation-Id: 17afb6ca-5e9b-4233-bd7f-08dcb5c917e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0ZJdDY5aXVhdzRXSGFwUU5sdy9KOFdiZllUazNNbjJkbUdQcTJiaVl6QU1i?=
 =?utf-8?B?QUdxdlR1MjEvRGh0a0E1TW5mMTVydFNzanc2QlhKMGJxSWVTS09iaTExZjRs?=
 =?utf-8?B?Z0tpVVptS2hjMUoxR21MNDlGYTl6QVNXQ1lvQTJZaHNQeG41bXU5MTY4cDNI?=
 =?utf-8?B?YnBuQTFpMHRWSVVSY0JhbGNsK244WXJJTDEvU05jQll1ZmI4SitCaExwL0lh?=
 =?utf-8?B?NGRpWkxXQXJHY1BKV2x5eHJFMWdqU3RxQlF4MHpleHhwVWJ1YVYrbCtqRHgv?=
 =?utf-8?B?V3E2TTdFYjRNMnlEc1V6aS90VDZER3hsOC9RTnBVcGlvSlRBb09acEtIZjhO?=
 =?utf-8?B?MVJtVmxyS3lFRVB6aDQrVXNHM2ZWcHdNTG5Sd2NCcVpwU3ZjNlRaM0lzWkhX?=
 =?utf-8?B?QVZkWmMvcWpIT1YzUGkwdGw1Zlc5aTNzK05JT1dSOGlaM01SSVpCcUx2QTJN?=
 =?utf-8?B?Z1JCTThYWThBdTJIWUxlbDMxb0ZwQVE0Z01VaEtaaUNRZjhLMG5UeVIrM2t3?=
 =?utf-8?B?bTFaMG0rR2J1VEhRVHlVbXFCTlFEb2ZlenNHY0NCVVp2U2ZFRC9XMjdkNEZp?=
 =?utf-8?B?Vng0aStaQldZYkJRRk52dkpELzIxZGRMVkx2WEdEcmp0SEdTRnBuNHhrZ1RR?=
 =?utf-8?B?L2dRNEtLQVUwYWJxbmVuVnpNTUE2R3E3M2M1dGlrN1pIeDJ5VmtoMkxGUUgy?=
 =?utf-8?B?bWpPYmpyM1dDVGVJR09GdWhmdFMzTUgreWpUVFN5M2QrejU2MEZSN3plVDh2?=
 =?utf-8?B?Q2dsSUdWcitlSTFwSFM3dlBuSXlvQzRLU09YSFZ1dVdYMFk5akc0ZDJnQUE4?=
 =?utf-8?B?cDlGODdXTDdpRHlCZ1R5KzEwdEpjUy96ZXpJdm8yOHpxL3dGT1g3MXd6RWVk?=
 =?utf-8?B?MnhEVVBHaGhOUWNIbUtXR0xQMmxIQ0RLb2JYMHB5T0Jpa0ZHVVA4QkpDKzRS?=
 =?utf-8?B?a0c3Ull4WkN3WW5UMjFsL2FZN3ZUV3pVeS9kWm5DSyt3NFdJcEtDRkdHSEIz?=
 =?utf-8?B?cTZBd1RqTXppaWU1REc3TGZ6SVJlb1FDdU92NEpXRzh4V3IrdGVITVY4aXNa?=
 =?utf-8?B?cFpuQnNkVW9nRGpkdURxZXJ0bXYybDFTL2U4eGMvSzU2SlRKeVVBT0grWWNs?=
 =?utf-8?B?eVIzeWRQWnI5YUZReTMrMUxXZ1pOYlJ6d1IvY2hxbFR4SmZ1WThQWDdLMEFi?=
 =?utf-8?B?K0FWSURCd3VqWFNLMVZDMjFXUmlOUnhDamNyZ2FLV1pkL1FibGd4eEE1N1dK?=
 =?utf-8?B?dGhUejl2VzBhODVKY29pbksvUGwvWitLd1YyaVQzeFRFS3JBSlpQL0xTNkl6?=
 =?utf-8?B?Y2dlUk45Q2t0eUN4ay85bU9YdGhGNmpSUHBhK1FLOElsSXJhRmRoSHJrb0VT?=
 =?utf-8?B?U3dMVmpWaFN6cStYeVhiaFRKNUc1V3ZFSWQwVStnbUFYM1Mra1hub0h0MXJo?=
 =?utf-8?B?VVpaU2tlS1lzWUxhTnd5WXVvK21JbFBIYjJ5KzI1bXZYUjV1UkNGcDRQTFd5?=
 =?utf-8?B?bXpyR2ZxYjNpQXpYWmw0cThNTW1xUUlFYjMwdndJTUtWT05NVGJaejBRR0Ni?=
 =?utf-8?B?aXZhUi9TWng4SW9Rem9QYU1LUUIvVWdxQ3JSeUgrQjlDaVRDWWZRclVWNk5J?=
 =?utf-8?B?RldhZWFOOGFvcTdKVHd3NWw4K2FxWHFDKzViTzQ1ZXc0VW9wQ1NwUC8vREJ4?=
 =?utf-8?B?UWdYRk5iMHowTklVZERwazBBWG95cnR6bFprZTl3bnV0YjNyN0RSaDFTVlkr?=
 =?utf-8?B?VzNuN09ZS3MyRmhWTHY1YlJLZ2hnRm1qZkZHWThqbkpDeGkrTFNsUW95Nit4?=
 =?utf-8?B?MU5DTmMyZTFjYlA2cHIzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bm8vbnRnQVFYNjh6U2wxT0YyZEhrdzF4d3RLaU1zeEtpWUJ1SXE2QkFadUlK?=
 =?utf-8?B?UncxNGlYeWpFdi80MDBtRmNqVEpnRWpLOGpMeWVnRjdQbUorUE9IUEhOWS9n?=
 =?utf-8?B?Vyt4RjlmeE1jQXRaaXJxWkx0OVJqeWlqdHk3Q0VHT2lXR0hnNGJqMzNMY3Z6?=
 =?utf-8?B?Y3ltaXd2TkMvRFdKSy91V1kxUnZqYU9ybjVKQkp4WlFlT2tzQ3FXWk5sMy9m?=
 =?utf-8?B?WTZjeHhuNEF3cGlrQVZlUXB6QXlzUm84MWJMUkdJV2ExdUtER1AwWDErSTdZ?=
 =?utf-8?B?YUI5aXJoVEdySm5TVlR1R0IrY1ZQY25jU1hJMHVzZ1k2UTlkajJFQjc0U29K?=
 =?utf-8?B?U1RnNTRlNFowQWNDcGhyTmNNbVVFN05US3o1bnlUMlJaWTE2RTA4TGV0Ritn?=
 =?utf-8?B?d3d3dmM0K2MzZ2Z4YWFiU0FHWldwMHhuYjVKVzFndEpaUk1SZ1NBMHhXUXBW?=
 =?utf-8?B?dndNR2l5NVhIbjhsU0czRmRPUi9wQWZIUjF3bkpGVG5QeTF0cDFBaFZMczNl?=
 =?utf-8?B?aE9uOGtJNlRUN3dQS1ZjVGluUGEvVVkzNFp1YlloVmNEeWRYbzFIazZMMmFz?=
 =?utf-8?B?SkE3dHVMdm5zOEd5SnY3WStkOFBNQTBWeW1SZ1BOWGJRWnBJM25WaU42NUNl?=
 =?utf-8?B?azgzSnl6ZndKbGkzSGs2Rk9JakVIWXNsV21WK2N4OFBabG11Tmd0dC9mQVFM?=
 =?utf-8?B?UjljVjUrc08vOTBmRjJEN2tGenZuaHBzQ2lzSDQwbnhvVnVtd1Mxdmp0dkFZ?=
 =?utf-8?B?Mm5NMFhRZWdiQ05CSG1raHpVRUUxd2NlYTZsQzNRQU05TEIrR3pxZDRLK3BG?=
 =?utf-8?B?QTFGbW9USWh3eGZZUUQxMlp2b25IRVJaTTFUUXVJVG1ETlNpOGo2QWc1RzR4?=
 =?utf-8?B?SkR3UHhLWXByWWFoTTQyQmNocS9CNkJnOGtNUDZRb21ST042RjUrYkZDQnBN?=
 =?utf-8?B?TWZ0TnB0QnhPd2FxTWtFMWQwU2g0bVA4bmM2aUtPdnVKQ0c5dmgxMk5UOUk1?=
 =?utf-8?B?L0ptYmUvSlFmZGV0ekJjd2NlSXVGanpzbUFNYlNZL0JRZWhGc2dCR0pheGxq?=
 =?utf-8?B?R3VseVBINThrV3B6RmEwRTJCNXFDSFpFV2RpbmNURWxlSlpLSFBNUFhTMitD?=
 =?utf-8?B?TERIYkFWUEZsRUVPQ1F5T0laQWlEN1NzUDl5SWswdzcvaVAremdsOVpUeXpI?=
 =?utf-8?B?dlQrRXJxK3JlOEhWeUZsZTgwcUo3YTFSYlNOa2MrWnR3K1YxVzVPTFJtMTlK?=
 =?utf-8?B?U3lYNHJIU3ZQN3BBOU83eHlhOGozdzBIU2VGL1k2QWlEck5TdWdvejJUUVFO?=
 =?utf-8?B?QnYrVjVTakNsblQxbGlZd0NLRVlRaFd6SFdTVFduVjN1QkhFOUpoekhlbllo?=
 =?utf-8?B?cG9XWUdRd2FtYlp6Z3pvbUVJWVhsMVBJWU9NZDBOS0w1MmxTZy9RYk02QWZF?=
 =?utf-8?B?dFNOVndmRHNRbmNQeG1kN2tDclJjc094ZjlEdGdjNHozOFhFdDB1b2VWMDR0?=
 =?utf-8?B?U3ZrOVNmTGtsTHg2blB1emlzNXdNRi8wZDhkR0VUdmgzQy9aSmhlRXVxUmxI?=
 =?utf-8?B?c3hWNjNNVExrVCt6NXcvaGw5dEZiYVM2UDlpaEFzZmszLzNGWFhVRGtzZ2hw?=
 =?utf-8?B?K2x5TkllaXdUQ2Zib0djb0h4c3E5djU4WVE4bWI1NU8rUEZ2dGgwSjd3Rlh0?=
 =?utf-8?B?dUpWY0VCanZWWmZqczM5Ulk2eWFBbXJtd1JvOGhDdG8xeHE3akdBZ1c2YjFp?=
 =?utf-8?B?VzJOd0VXbzhuTW5sWXVFQTlZRTJVakVYd1NTOU16RUhwOUYvV3p5Ny8vclM3?=
 =?utf-8?B?NnpnaGZwTFZhdEs2NC9TNXR5OHpZOHpabWs2QnNuWjdPN3NNeGNhWXVyQ3Ez?=
 =?utf-8?B?bmJEUVRKOHBQYUpYL2hERmk3M3FRaS81dEF1RFdxTlA1T1NhK0IrVGZnOWJa?=
 =?utf-8?B?d3V3SElBUG1xSGFzTERwV245OW9wa3VoSDg2S2NVQlp1WHRiQUlSZWFvcjZZ?=
 =?utf-8?B?TEF5ZERMQUMwVHZVQTVxTk1FWHJoMjU5QXE4OGdtVjJ0VHNSS2llNzlsckZy?=
 =?utf-8?B?ZFJ1enhxSk9XYTM2WC9maVNva1ZnK0llSzQzK29LYTM0WTJ4L3lDMHpDUW45?=
 =?utf-8?B?TXBFbnlUT290Q0gvcnZVS3owNWREMFp2c3Zqd2ErTUtDWGY2RmJlZTdENWtL?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17afb6ca-5e9b-4233-bd7f-08dcb5c917e0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2024 03:37:27.4274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: azIzuDxge2zDNZaVCa5dBPipHyWB2oblAYEVOxOpI1tTLHfef9yOje/OH7xtyKHBQJjhzAlgCPhGjc97qmn4qctyaBCoz9IAszGciR8Hdow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
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


On 8/5/2024 11:55 AM, Nemesa Garg wrote:
> Refactor pch_panel_fitting to use local variables for crtc_hdisplay
> and crtc_vdisplay. This will help to adjust the hdisplay at one place
> when big/ultra joiner is involved. Introduce local variables crtc_hdisplay
> and crtc_vdisplay and update all references to adjusted_mode->crtc_hdisplay
> and adjusted_mode->crtc_vdisplay to use the new local variables.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

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
