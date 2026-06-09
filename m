Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qi0LOh/5J2oS6gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 13:29:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4964165F7DF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 13:29:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fwdE3X5m;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F8710E1B5;
	Tue,  9 Jun 2026 11:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BF210E1E7;
 Tue,  9 Jun 2026 11:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781004572; x=1812540572;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mdkRaKgf8XSOCiqHLHxzK8dduomoOykoYThZVoksNGI=;
 b=fwdE3X5mFr1ImQw8kinhPFf1WG8psH442sNMeSx6j44kXjHP08sclrPQ
 KJt0/84/SUvlzpNZx5ow+pq91DImz8p5W5x2MArO6A8k/xC85oRXc9srb
 KLcTYw5V3SrWDT5XgLrXoURiqOQsxvd3FX8byULsjnB0umP2i03ylyocO
 TwTm6enwayRZ7JDnnOCPTBps/9TjF9eYUzQUhaw5j3eRnQ9mJ/locm1zu
 y7Rs2PzilVXWKY5Wyv10kSl+957B7OeMCzUxgJhi4HujCwLuAxq01HRBo
 Kbuiwl0LbpOIbuKW0V17juvdMy17MtwtoXsiYNl9vkKw51bYOvd+brb6k A==;
X-CSE-ConnectionGUID: S9P6a9erR7uMQFFEbc7nLA==
X-CSE-MsgGUID: eoHp12ehRoy8D39oyiH7Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81508229"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="81508229"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 04:29:32 -0700
X-CSE-ConnectionGUID: aPsRYQJ0Rh6Pnmg1XZLw0g==
X-CSE-MsgGUID: 0AtY/G6/RyqueWWet5IKLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="239497463"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 04:29:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 04:29:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 04:29:31 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 04:29:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZFmx72S5zNANGLIGq8WBHZAgEIMEv7PHP/fz8E6PncGws5ZHyEk+6zyjYfasoRrSazVd+Hj08q+L++z/6A10LCGHftxEPKfL4lUL+QzyBa21Z7zS5TGpwKGn09AaYVPBfNgnSZz0m79JQ2OvajQCPi2lNkqtN+hsBQ85BTOOSHqNKrikXi8tZnmlMiIn8JB8t8xD/H4bK51Z9YO+XqqyOKYVRgzlTdYcLAsKb39cPvTDX/u7xxJdi3DU5ir0FB9ZffoHn7xp7HWGG0nXv7jsz9tZMgzD37X7sXV1ZPG3a1sAGMkGuJ1o8Byc/X7UktogLFnS58J00oUYr9Z6miy+cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tfp50dOG0BO6EcnKlz64n54tXApIAAvouOr/+MCVGUY=;
 b=w9kOdyTGq2MvR/y6u8k+WlTeiXv4BTmcKvsVnUvf+cz68vVJUx54w7/Kek5H9wbwXCWtVWR5iDBIJukiE5ZNt+/JouTXSPjmJ3+0oRKb7A+RlobQ9436jcQuzQ5cyEui1aSvXEGwt9unUKa3mt67kWfG7iJ2PzN44stkpBvbgq5hfSZtgZgiglGKZATSudzyxXErvvum4P5nsiNYAuQFoyk0nfcxFKD6wH/w6IBUfVen90QhDAtomELBVTJIapJgXhCZTPVxiPaofH7XdG2UjKdDXqHctuwgu0BssI0p3Brd/yKFyJfSv7hNlSAv6UyGDIZBgD8cb/q4qn9Czso6Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 11:29:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 11:29:27 +0000
Message-ID: <d538583d-d31a-4f9f-bae5-540b27d5f4f1@intel.com>
Date: Tue, 9 Jun 2026 16:59:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] drm/i915/psr: Check FEC support for DP Panel Replay
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
 <20260608141124.144878-2-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260608141124.144878-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0231.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7549:EE_
X-MS-Office365-Filtering-Correlation-Id: d75f203d-c7d1-4257-ed2d-08dec61a5d47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: /6dV9iucR9JXLdmQHFnjCwkFT5IcC99TK/IkMmp7Py0c3HLpSIkcBMCC5OVAJ2FwNlyFEsELT8yXVPDdJgs3LdP0RPf4LQQwIsRxf11Lis2iTSAy40En3wKrbsebGrlF+2+M6N3hd6p43T61XiexKY4181FoiarIpTYp2GlAm1WsZVOXtn67zoCtHQ6+3Lhv3vvwBg0GPjSnNgINRAm/f9kYXdpb/SAcw5chogUa2ygGBGBCjDTwIKSnScvTUU2VDzDhJ0K4VHE04Pnz/dExsxx/d24gJKdMvUu4Uyuejfwzuk12Ru4lEF8JjptUKLjpg03cSJVWHRD28d8wAgA3qxMHM3YwYBFG8vetJglLKoM/o0uT3E+RMThDxbcrpa18RuLlvFUQRPHp4Ud0NvLXK5V864E2moaWiyN7UY06hANq/kZAT8++kmfe9riC2+crECKvUA64gLfGfsxS/C377+tW4BwypEmVvnQiy2IZMAcML67GjAHHML3CkLXBuafoan/man7U7Rfhi266+nbHAlAIq/No6VR0Xx1eXiwLqaasYaTIhkqx/K1AEWhB7qhEjb5ZR1LvJs+p+oF+7bm7kXfTJPlje7H4V8vbPyhJfqj/30DZvXjK95Ua+gh1bekD5q5pxXb36yCBN1Pzl97/XWs1sd2jYjSdoLKXwpfrSV1InJ4u53BONwlmbolQydih
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0N2YlBxd0tEVmhHdUx3RWxTQnJ6cC9nbnN5bXRhSm5MazZaUndPbDZUWkZx?=
 =?utf-8?B?MVAyLytCZlUzcC9xUUxOS1A3bnlBTzA4L0ZTdkpJTTdKWmQzdGRvUFlFZURR?=
 =?utf-8?B?dWZ0YWFaYkI0Vy9YMUtnS2NVcnM1cHVaOVBxamRucmN6aEJBeWVCbFVScUhs?=
 =?utf-8?B?cGFFNTJFUTh1SnhKZVZCTjR3RXpKcW1CaUxyZHZnYVNkbUFnQ2IxUTFEeFNa?=
 =?utf-8?B?YjZHL09wQzF4UzJVenVlaTdFL2tDeFhxOE1sTEFoQTRVY1IrVDFwV0NncENv?=
 =?utf-8?B?ZXJGeXhzeWFPSXpEeWRPQkRDWkIyQWxCUzNVT0FVTEdXdUQ5Sm1ROTRJMHor?=
 =?utf-8?B?a2J5ZFdvS0xNZzBIYjFuZUNoSk9rL2tXaGxUTHYvZkZMcXJTUStseE1MQncx?=
 =?utf-8?B?SE1DNm5YZlMwYlhtYjRtNkRFNnhwMjlQaUo4MmRsT1czTTlET094NHFaUW5w?=
 =?utf-8?B?Q0U4blRveE9zQis2dldYeHU2dDIxdm5NMWRXMHJlL1M3bmxkN285ZjZwbThp?=
 =?utf-8?B?QzF1anFXc3crZkhOS0FFSHdmeVllK3VhY3BqRk5neW9uY3Q5Zi9GRnJ4dDVp?=
 =?utf-8?B?NTM1ZEppaDNMclI5RGs3OEp4MEVzbGFtdU9HRVVSeTk3RDYzMkRKcVFQNGl0?=
 =?utf-8?B?SGRoK2g5dGNUZkYyOGF6ZzRZUy9YQXc3UmpRVFFnZWg5dkFiRDdHZm5Tc09Z?=
 =?utf-8?B?YnpzYmRyQS9UT1ZzK0ttcm1VdGhLNUpScmljM09Qc2RUUS9OMysrWFVpV3Mv?=
 =?utf-8?B?TTQrWjVicldjcGoxdDFlMTBqZy82bHFEdFFwSXVmU1B1ZytFMlpjUG0xKzBO?=
 =?utf-8?B?VmpYb3o3UHhLR2hEN3MyenZpbjVNMGRBTDV0VU9Pb1hlOWIyZHQyR2lEc0hw?=
 =?utf-8?B?L29oWDZLaGxjTWVwQ0JRQnBoN3J3OVNLQk41VW1GSHhiOFR2U0N2NkVjVTVC?=
 =?utf-8?B?R1E5ajd3Q0VVaGl5d0FsTlU0VGtsZHF0NDl5UjhHL3BZcys0QmJnS1kwVWdZ?=
 =?utf-8?B?SG1Ib2V4Q1A1ajJiVGdUSkJOQWp2UytYbmIwS1ZrVnNXb1BkTWpkUnRoeWZa?=
 =?utf-8?B?QnN5c25jekoweVQxS0xFd2x3SmhMaW9YK0hZNStTdjFhZW0vR2lpa3hZMit3?=
 =?utf-8?B?dTI5QWVGOEp6V0tYamFIQXNlMEJuTlk3cFdLNUxQTW9tL2xKMXU1blFtRjVr?=
 =?utf-8?B?NGdjajJOVG1XOWhMekVQK3ZWYmx0TnJZRk9QSWlxMXpac3VMTy9iN2R4b0FF?=
 =?utf-8?B?TWNvc0JRYmFQaGxNaExOdTcvUWk4Szlwb0J2VEE4aDlIL0cxaDB4YWhBSDcv?=
 =?utf-8?B?MjNGN0FHOFF4M25rQXdVR2RVb0Z3QmhqY0N1LzR0dUR2RDVJb3BycitRKzhI?=
 =?utf-8?B?cUdETFpLR1JCTDBpWDB3cUFXUXV1bUpYQ1Nob2RrUUhnN3R0SE9qTnM5aDhy?=
 =?utf-8?B?V0dyeGRscnJWci9JMVlwM1JWZHhIdC9ZQWVNbzNjKzdhd0VZdllJcG53R1R2?=
 =?utf-8?B?UUNzeCt4ODFDL1B0d2dteGRkU3BoMldWV2Y5QWd1bUN4a1IxdmdXbWdtcm9s?=
 =?utf-8?B?MEM4MEhpTndPMmRUYndrTDdRS3BsenhGMldSVXArcFlFSXcxekhOS29oTXFk?=
 =?utf-8?B?MURwSi82M3Fhalp6SHM2V3BZY285VzBaUW8xRXYvYzIrQzFoSERiQWJqc3Zo?=
 =?utf-8?B?M014c1NyNzBMcUNBZ2VQSDZ1QzRwT2hUMi94alQ1NTl0NUhPOStzNkN5M1JH?=
 =?utf-8?B?RnVJbDRzeWxkNHVmdkh4VXh2TjV1UnpVZ21jMkRuUXpUcS92T3c2WHkyR2ZG?=
 =?utf-8?B?UWhEZVlGTzFlVjlBc0krQzFGVi9nTVl3TFdzMGlVNmtuWVZWYW9pUnZBT1VK?=
 =?utf-8?B?L0tMbmE3eHpnb0lqalc3QTU0VGxaOWhFbjlnQVpUM3hpOGMzTVlDRWNzWjlZ?=
 =?utf-8?B?WmVTR3FmelRNVUJXcFV1QlVkcHZFQjJTNUFUbFlEVy8rS2NmUVJEOG00UkdS?=
 =?utf-8?B?elRCZExTV0tENGVmZE9CcWJud2ZaeTdkZXBzaG85ZGQxUU8yY3VsdFN1OVZ6?=
 =?utf-8?B?TGoxOG45Q1VlL0JyWjllNm10ZEVLZWg2a1k3ZHZ2SFk3d0VNUzdZaGdCdFVX?=
 =?utf-8?B?RnNnbU02VWFtclZjVTJlNS9hOHRROVI2Y284UWNFQ1FYVmtUYWpaQzZ6eHFz?=
 =?utf-8?B?S0o1dk9Cb1pGS1crc0d3dWxhc1Z1b0RSODZVNmEvTnpnanZ5aVNETkdRQkNJ?=
 =?utf-8?B?T2lGUGNTNGUzd09zL3dhWVJ3cExyaHc3M0tjZW8zMjM4NTdQQ2FQemQvZUFm?=
 =?utf-8?B?cUtZblhqUzR3d1RKNmNJbERPOTFvc1Y2TmVSVmpmaUR1SXdwTmFOY3E1VzZt?=
 =?utf-8?Q?gzrnqSYvNn3Busqs=3D?=
X-Exchange-RoutingPolicyChecked: Px4JUinDZpmSBtXF8L2HK+SqNxCDLudHrdYhZFEZRZKAfxQCOl+C5/2HEhZqG0/hNFTfdutNytb+Gv2KYolK64feJ0CrwAzTHsDQ9M/FQUSFAOLfgz9VPsRg+84aM8J++AUBluwoZZwCaALwDjrq0cz1gYndxXGDPT7fKA70ReaeCxa/PoFHridqLimsqC9Oly7jd0HZvqr8OR+9FhS0dJJPOdRAFT/t0Ez4Q34aGCCWEsCIjg9V5ZX2dC+T4O3E+HFfbeqis/7gcnz7Wdgnbm0Wsjy1nZ6uMzWETACw5Z9bmb2AjcpTBtoBi9GEByj/Fg/sM8mCXxpzebNi5u6jgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d75f203d-c7d1-4257-ed2d-08dec61a5d47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 11:29:27.3386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0P72w789NujBpP9aS1wQBRj8YeFp1m3B8cVgNXT+sfnZzNZtR5+yYRJxxmhbBuysSNmU16RFs1DJ8YrMdPiC1Hkpm+Xr3ftydBB2kKhpJ7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4964165F7DF


On 6/8/2026 7:41 PM, Jouni Högander wrote:
> DP Panel Replay spec mentions FEC needs to be enabled when using Panel
> Replay. Check support for FEC and disable Panel Replay if not supported.


This matches the spec : FEC is mandatory for DP PR, but optional for eDP PR.

Confirmed against both eDP and DP specs.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e138982dc91f6..ad2f6c79f5808 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1851,8 +1851,15 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>   	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
>   	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
>   
> -	if (!intel_dp_is_edp(intel_dp))
> +	if (!intel_dp_is_edp(intel_dp)) {
> +		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state)) {
> +			drm_dbg_kms(display->drm,
> +				    "Panel Replay not enabled because FEC not supported\n");
> +			return false;
> +		}
> +
>   		return true;
> +	}
>   
>   	/* Remaining checks are for eDP only */
>   
