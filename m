Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 75x0MZsDKGo97QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:14:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3294165FEEF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:14:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UxgznhMx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B671B10E2CA;
	Tue,  9 Jun 2026 12:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71B710E280;
 Tue,  9 Jun 2026 12:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781007255; x=1812543255;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MgQmZWZsWTA0S+ktTKWFAu4filvNAIUbiVfIEVlUHnA=;
 b=UxgznhMx8bZcP/arR7sE/0pIG3t97AxIqwEFy8JYPbSXvG0iH7wioZXX
 OV/o8cCZw4KeG8YolTt/Mw54oL6rECHaYC85IyaPqbYNUAenCLzMGl1CN
 uQrIcmElYjwhZuCQ4TyEn+TWRNP7JIFsRFfybZl2DT+P4Eg+q6fydABhg
 kmcuq4a2bj4OQIqi+AJ0Ahg8srJ63JrIraATztg8D1SeF32GkwUspyLip
 Mjd6HG0uXExohuvWk4DfkoefN1TrNADoPiu3nBWczQMcJVT3y5fAckOZp
 ntq78MwLducjudtWNsqzW6zMc/gXkNcZKb9+6PiyDFb41694gwxctmcKj g==;
X-CSE-ConnectionGUID: 0uW8SlNzSrKaaMVWvNLHAQ==
X-CSE-MsgGUID: Dq2UcWLCTOmaHW1rYeGWGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92328748"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="92328748"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:14:15 -0700
X-CSE-ConnectionGUID: QCQyIeq5RxOHccYvQu03hw==
X-CSE-MsgGUID: NsS0KZxzQ7OIyHRdLYfJfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244696074"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:14:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 05:14:14 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 05:14:14 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 05:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ywHrTYOUFFciBrSKMx9/ah5J/FOK6ey4yVcbG/S5W78tOHVlS5TOIRKvM8QfVOrbj7cKR12O/uGNLxkYKYVPuezRL7KAngxyukZRqfPE70ZbGb+wYXXbmeABcPaCnYcc3p6QCOnIf80YtPbvt7WwI86ZsHPCrVFmRhUY29Fd4lywX8VfkDo/VnoS467ImKtAI/MG3g8bz5lfP3RpEVXdpSJKhcVTr/ycerU0iCP2y6GEyIiWYCigJKZRLnoJf2lryCxCwavFw7UeDe3++dcUbYdvha/wi5WO/jCwSPjuvgqW85l2JAvzBM50ITEtnZMrB4Nksxzqj763mEVHedNYMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCFhV8m4ZcbrFPaxox+jG6/Vty6ES/nr1F5ywPmd5a0=;
 b=mL4ZmMwWK4c007ONKZFvgQvfF4iwfC/QISA/QItXNAc9ZXZd1LsLxejy6kdBiXxXTOzdjRzytf/Rp6h2a6DQK/2C/RNtnxkNWf6eYULDAnmU7WCLO+yncUma3jYxDNOdPCiTbG6hhWfIjIf4pgn/GbaDZT6Mo1ikq4cR9b3NZYYIM9BH+FveoZaEhve3ULCELXu5uf2ctbpRItXou0dEDJ5EugrudHRdbkZ3WjgKbxwTiOsogLrPW8XvZexiFW5jb76zz8LnYP9ia3sVhn0cZSjQj17e7eW67Oy7nr/opYYT9+6lo7JfI9yBpfhTygIP3joZCpURx+5UisOQw4kGUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF46CD353BF.namprd11.prod.outlook.com (2603:10b6:518:1::d1b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.15; Tue, 9 Jun 2026
 12:14:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 12:14:11 +0000
Message-ID: <52f74617-93ff-417c-a48d-4a2c58262e1f@intel.com>
Date: Tue, 9 Jun 2026 17:44:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link to
 detect crtc DSC status
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
 <20260608141124.144878-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260608141124.144878-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF46CD353BF:EE_
X-MS-Office365-Filtering-Correlation-Id: 2040564f-73c4-4f1f-faa7-08dec6209d71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: r/GqrKymCarvm6jHxxqsoEFG13nRv7VzgpNxAUR18scwK3cnW6ItaCRF8qbbp77EellwFy56bp+vyoM65x6G6GeFBnT65MCjYJmjQh8up41OX6DZPPeAQNpHKjkBJBEqdfktsRBHNxZ9wEcWh3RpHybXg10qZT6SV7Iyu/1vfNTicbDJdXlGOzL+lW85OECGBXZr6dbSWyrSH/XuvL4YB0zjU1ZcuGGTWcFBaLTqNCQU7bb0kqdQIgUcZK0ZO4/oyDtHF77SYqPgPHm4k11WamfuTKms0McGqaNbGIzrdhD1DatTlkD0U1AZYJ6BHSCf0quijb7m9kJ0nR3tRybyPLUUoXGCx6VZVTo8x9c+bmxg2wGdQFS0wvdY36frLnY3+yG7OhOYAGGl5qdXoliFmngspvYdOimbgrlpD00rnNqKzeodWi6961jT/tTRiSV3Y6oZIwULeSEfIi0HvZYi3iOzaVMa1xsYtDCxEIY8YkN+SvKzs7BS2z6/K17ZwOfJ5Htmj69+cSNz0NI6YE8RteAO5g8LV68vbX2n5fCHoFF5LqIPZIebhn+jH8rsPpfIOhct9TDbGlaEfNDqpFfGhd9rjSp+io4paRtLFtVptXCqfHucGmyibkkd5KW3h+eyQOJnxz77GuZFbS9EJHYNv426N4ngqgA2tv8jkXltOY1X6LYqe/cEe+4jCGPHN8pK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1JOQzF5UHU2d1JHT0ltNUJSRDdMc3pCTzkyRjhnUk0zMDV2R0E5MURYL1Bh?=
 =?utf-8?B?NTdodGNTNUx1Rk1nR2xvOTJCK0VlZGpuNzM5bjBXMkFNWlN6d2ttQmoreHNh?=
 =?utf-8?B?Rkpac0ZRUFlVUFdhV3NVME1mb1ZiWDdCMEhENDhmMUN0R282WmhpNnhvRHky?=
 =?utf-8?B?QkJVSURHQlVOQzIrQkVKTVFOdzk4R0FTNXFsLzI3ZXFVU1VtTEpUU2h1ci9X?=
 =?utf-8?B?aGxCWFk4WTVkbi9tRUQ3NEluSzUvcmpuSFdxaDlBaWFRM3RmVFUwRHdHdnBO?=
 =?utf-8?B?ZGNSa291eWhoZGwyWEFsT1Rwc1RLMnRoRmFsS21qVmpPaVVRSEkzZ3ZtcHZX?=
 =?utf-8?B?NTJyTlh5M3ZtVnBmdVl6MTlaU1FvenBIY2FKY2FNSmVuc1NJSjl2cVBHRmVn?=
 =?utf-8?B?SUFOTWdQMDZ0LzdiamhpakRnckxGT0N3RGlSdERrM3hoblRqUHRXVGk0bkFQ?=
 =?utf-8?B?dkEzZkhLRWdHekNmOVRNSFlINmRvRU5hMnJXdk1PdVFUSEQwTWJtem1Ja1BW?=
 =?utf-8?B?VU94OXdvV0JDcW96clVKMDAzc2hTU3ROWWNrS1dJeUVzZ0xlaUNmdVM3OGJC?=
 =?utf-8?B?cUlxQ2xzcVlRbU8ra041elVwRDdGMUJRS3FndEJZN2t5K0NyVU5udHJUeWZz?=
 =?utf-8?B?dWwwcENtNjFDSWh3cW1EQnY3cVlLTUlEL1NSNkpHZHA0OEU4M2dLNGJ6ZzVo?=
 =?utf-8?B?a05yN3B1RzYxNWlZSUQzTnkzZlpyQ2tnN3d1WkF2aVhBZUJjR0pHeTdwQi80?=
 =?utf-8?B?anFFMGhXNEIwRnlDNm5Pc1V1Q2VZYUsyYjdhZ2pwNUdRSVU4R3lQRnc1TlBi?=
 =?utf-8?B?VGJSU0RzUkRJaFdVMldNQ0tHdWc4cWdjSCtlWmVoeXkvK013bFdWcHVZVkFP?=
 =?utf-8?B?bUU3WG1GM2hCUmU4M3FDZVk2dVUzcWdXM1hLV1lua1Z5SzZLbzhNMGczS2E5?=
 =?utf-8?B?eHFxRGJrbWQ3U3RkYlVzWk82TU5tM1Q4U2hJK3RRdUZaUGkxN0kzaitudTM5?=
 =?utf-8?B?cmlyTDVqQk42MEFadExzMU5Yd2gvaCtiRHFjMzVFdWNNcVVkZnZaZGFSbUtI?=
 =?utf-8?B?NlkrQnl0ZWlvM2lWaS84akErbTB5R3hLTkNuZ2tmNXRMWWdrd3hTakdiQVNV?=
 =?utf-8?B?RVExblZ6NjBvbFlXVVQ2SXpBZDFEWFVIQkRadFRBTXpOM3lvcWFvMjA0ZGJR?=
 =?utf-8?B?eHo2RFFBcEhIaDVSTGR2cUt2MXY1VEVqenAzbFlFeGFJMWNHVWVra1puNURo?=
 =?utf-8?B?eU03Q0xQZkxjNllGaTV5cThDdVNPdENiZnRhRENMMHVSZGFCNjR2V3VXekQ1?=
 =?utf-8?B?UWl1c0g1T0tNZjFtdW9aV2ZndlowNTRLY2NMK0JtWXN0cmpmTlh4NGRmWDdx?=
 =?utf-8?B?U3ZjWkpUdm9ZRkVXOHpqRWZrdkhSMUZSYk1nV3F5VDdocnJZZFVSRUI3WFpn?=
 =?utf-8?B?cnQ4Ym9ORHNtb09QWFNPQzJFUklXUXZ5VENQZVQ2c0xFTjh2VUt5eDlQa1dm?=
 =?utf-8?B?N3ordmxmSTRaMVJab2VWS1hFWFZBV3BYMWdzRW1vd1EvaDI0K0VkMDdtQ0lH?=
 =?utf-8?B?RDJDY1NsK0hNTjNYRW5JL2JnL2NwRXhqREtsQmQ3NzRCZ2NBT054clZhRHR3?=
 =?utf-8?B?YVZFNXJVU2xDRjFobUNhYTcxd2FqdEpNL3VnSC9RZjZjOUEwSUNPbzZSL25a?=
 =?utf-8?B?dm13OE1kRDAreGVRU3N2ekIyclUzM3JuZjFVYlpiN2FSUDZqNksvQkFXRTM0?=
 =?utf-8?B?M3F0K1VsU01hQytkN1VRLy9WZ3JRYUJCaThkayttYjJiVXZrNzJEeDZBRWFr?=
 =?utf-8?B?dldDQlFtNWlhOHBIeGo5d3FrbktGelRLMEd5Z0ZPd3JlNUUwRktKTTF0eHVq?=
 =?utf-8?B?UytWT21NSFB5WlhRemhSYXM0WURHdWp5eTRHdk5PUldzaXVmaGcxMDZzSTRV?=
 =?utf-8?B?OU5XenZUR0FyamwxNHFrT216RmpDVlpHdFFRaFJnakdGcGVtcGNzM1JQVzM5?=
 =?utf-8?B?WWZ4ZnI4UWMwdDZQOGJsajJUdlZ2ZlNCNE15N1FyTWNzQk03S05Ibmw5T2xS?=
 =?utf-8?B?WnFJVUlWUTFyRDJObWJvQzU4RVpycjJPV3pVNkpwMlFVc2pTTENZd1ltdWgv?=
 =?utf-8?B?YWRlZ0ZWTDB6bm9jSkNFd3p2bUprZy9WV1FocjdlWk9GYWJoTnpPcVJ5dk9x?=
 =?utf-8?B?V1phZGZ0RlBxMGdiZVJqSTh0Tk1PcGZOTVVBNENIeWRlTWtMcm1oclNPYnVD?=
 =?utf-8?B?UGMvQ1FYZkkzZ2pQNlFnR0NnczRxelI1Y05OaENHN2l0bGsrLzBnZWRHQlFh?=
 =?utf-8?B?UDA2d2FReDh2eFJsM0twR0tJUXJnU3VXVUJoNzJtd1dTdis5UGhCM2hQaHhp?=
 =?utf-8?Q?InmSUtPiZV/29JlE=3D?=
X-Exchange-RoutingPolicyChecked: D1yZhOLTLSPgVXTO3WbFVB2OZBB3yXhiOMoPYU0uc0LnH+pk9sGb2LcxUJWVdUOW5zjgxQWCAEMEwzfzdXR/26CEr2hO25NEMQRXbNA/GUaunybRBPrV3PRuYhl1l0C1bRrYMCPKErPB9BpBDT8u73elhsWy9gUXZKEEhEqk7ejMNtrxiv8hfC1bBgZjh/ZPw3h4GuHdkq7FNePRJUVMcJrenoqQBreKborpftAFU1MlrvRCJYYoS9M/r4w0jeYBMM6ygcDJUpaKNHlkco6tuwaI8KtJtESr2hSZNYMbOYDNBGZ2zDmgFnNzBM+vp3z156Lp0E40g9BKg0WBI5JV4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2040564f-73c4-4f1f-faa7-08dec6209d71
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 12:14:11.9220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EsW6yTIqsG2POEZxrZAI1/2+qT6dUfHExU1NEK/O99wYxyrd8PhWSCTlfqZKrsfrez9qCVDsfPzLbjy80MMjZrhUyxpucSWii5hvwRno0+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF46CD353BF
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3294165FEEF


On 6/8/2026 7:41 PM, Jouni Högander wrote:
> Intel_dsc_enabled_on_link is not really about DSC being enabled on crtc. It
> is telling if FEC is enabled on link.

Hmm... This is a bit unclear to me.

As per commit 470b84af457e ("drm/i915/dp_mst: Recompute all MST link 
CRTCs if DSC gets enabled on the link")

We wanted to do away with FEC tracking, and instead tracked DSC. FEC for 
UHBR was not getting filled so it makes sense to track DSC (FEC being 
mandatory for DP DSC).

 From commit message for commit 470b84af457e

"...

Based on the above, to be able to determine the DSC state on both

non-UHBR and UHBR MST links, track the more generic DSC-enabled-on-link

state (instead of the FEC-enabled-on-link state) for each CRTC in

intel_link_bw_limits."

So to me it appears that we were actually concerned about DSC and not 
FEC and started using intel_dsc_enabled_on_link()

(later, fec_enable was unused and removed).

Perhaps I am missing some context?

> Instead of intel_dsc_enabled_on_link
> check status directly from crtc->dsc.compression_enable.

I agree to this part though. We can separate it out in any case.


Regards,

Ankit

>
> Also rename intel_dsc_enabled_on_link as intel_fec_enabled_on_link.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c  | 6 +++---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_vdsc.h | 2 +-
>   3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ad2f6c79f5808..f58200d38ac2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1740,7 +1740,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
>   		if (!connector->dp.panel_replay_caps.su_support)
>   			goto unsupported;
>   
> -		if (intel_dsc_enabled_on_link(crtc_state) &&
> +		if (crtc_state->dsc.compression_enable &&
>   		    connector->dp.panel_replay_caps.dsc_support !=
>   		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
>   			drm_dbg_kms(display->drm,
> @@ -1840,7 +1840,7 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>   		return false;
>   	}
>   
> -	if (intel_dsc_enabled_on_link(crtc_state) &&
> +	if (crtc_state->dsc.compression_enable &&
>   	    connector->dp.panel_replay_caps.dsc_support ==
>   	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
>   		drm_dbg_kms(display->drm,
> @@ -3235,7 +3235,7 @@ verify_panel_replay_dsc_state(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	drm_WARN_ON(display->drm,
> -		    intel_dsc_enabled_on_link(crtc_state) &&
> +		    crtc_state->dsc.compression_enable &&
>   		    crtc_state->panel_replay_dsc_support ==
>   		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8f06c3a4d56df..35c93fcbb6427 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -431,7 +431,7 @@ void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state)
>   	crtc_state->dsc.compression_enable = true;
>   }
>   
> -bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state)
> +bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 3372f8694054d..60d86399808c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -28,7 +28,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>   void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>   int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
>   void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state);
> -bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state);
> +bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state);
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>   enum intel_display_power_domain
>   intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
