Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFu4CX20y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:48:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A03690DC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C049510E38E;
	Tue, 31 Mar 2026 11:48:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="huT2ab4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0575E10E38E;
 Tue, 31 Mar 2026 11:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957690; x=1806493690;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jLoD4hctE6R6yHXCvixcuZMuUQRUU7NreyR1lCIE3r4=;
 b=huT2ab4Vb51qPiIlv3C7lpG65kP1arvQuKd6mseVfb9DUgemY2wrXZZg
 gZvFir3K8gZM0NfLANKxPYDRg4AQGjFXl+TAPEwUBDglPT5EYJwOSLpyF
 dd244xZWP5FA1F+pjkqCdSzd15ETKhliYmJ4nTlFLdcLZlpGte7QrnUbu
 hOxG9425uw2PMZ4lm8tvy2OOR1a/POLvob6SHZ5ycGLcjfiSBCTCs3tO1
 g85SrC2EL/FSQWflS6cStVyx9IQCiCAGay0CDpiK8Nt1yN4a1Lpo6EPHI
 d47Lf9XHo7MSU/JEC8sa7vaHrfILkA9aSQwCLyxoCJ+JhAT1nonWrMfRn A==;
X-CSE-ConnectionGUID: U6bCDWjxRaCFhxUbcxJQjA==
X-CSE-MsgGUID: JTInBZCUR3mZd3KvcNqbJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87432776"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87432776"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:48:07 -0700
X-CSE-ConnectionGUID: WP5nPQMHSUm1ttG8UrmiQA==
X-CSE-MsgGUID: hIdE3tUyRvmrkgRiAvKD+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223044018"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:48:07 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:48:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:48:06 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h+nOq0vdCfyTaTFHy6R0IPw8zihX1T0V3M+t0Bq2tgguWC+/7NYG1cKd+f69aU8jI/rpBvaNYSXJ9wqfBQ7CKqicgkK4KaBa6WmjwET8hbuggKjIf3wCiuHNCnD4qqanGQZE8lAfVjmiZxVri610ZxUtHtJnKRC4vGA/mXkJITV50do5O6a2T7sIYRyEoEK4KD1vKBFLLPoqqjyFfbhsBkF/70CyfeEh2gkdjAjh6JFeK0UN66hsu17Ho9zkNuIKthq9M6lFpD5R0rNqgu/kBtVGl2BT/hbUOtnRQIwxkcsf0iLpoGuV4HyBZWi+d6dpx/A3oX3eON7Q7cP0R0bYdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7Djne6NLHnUprzBP6KtroYEiXfSSHV6fUcu5g2JAoM=;
 b=Lh67xKyop+EvukoDGoQY293shh2leXUTtwznjfFvfr8CcFSVAoC0QOYj2CtntA0/1CALItrRpj4Px7pn+KYJ5z0gcpw93e3KFVWw/DFEdWK8BaDgiluZ5F0cWS7p1vPLSJe0IxvxL5TveTlYhBrv7YkIq5CuknsVFs+VQBYfQpunio4fObyNr/Yzdi+nuNwE1P0y/cpHkIjMrTy2tYzQGD/Kl7qIUsO6/BGs9DyAEmjWSbFcQCxUE5JRPiSOPAQPRUmOJA0UcAl1F3zh5TWf5Kr4cBjUWjMTD6Ijilg+1pZxrp9X43rFYKmPoLH6Dv9ezMWpg26eLyHXARlM0vf27w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7031.namprd11.prod.outlook.com (2603:10b6:303:22c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 11:48:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:48:00 +0000
Message-ID: <6e09e2b0-c318-401b-96f9-16660a48de0e@intel.com>
Date: Tue, 31 Mar 2026 17:17:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/19] drm/i915/dp: Include all relevant AS SDP fields in
 comparison
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-12-ankit.k.nautiyal@intel.com>
 <acrAY8wl5oduAZVT@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrAY8wl5oduAZVT@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0137.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7031:EE_
X-MS-Office365-Filtering-Correlation-Id: 6063cd2e-aa6a-4592-60b1-08de8f1b5c03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 5rH4M2MLlxHxKwkTCM8MN20SBbrFAcIn9SVirI2p2SISXC6zDTPuNd0XSXagY05gfICto5ONh7Ekdji86u9/wmH2nLFUuudI1yCGAKzfw6NtZTd0yhSVXd/r2BZ7C4q7dleKl2i1NF7iosAH6ePwJTbqQyI0VjRi9ksuEJKyL4Fde4pPZ7CixnzTez5ULkI+O4xz6rRH26thy+m/97A2tU8VYAz6waOSfeJUZW/8fbMdKzRj6nBm+75Fwo6U/T2VdH7lf4SEM6i5BvVSQ3p6wUWZ0HOjREXHJTMB63LrW1GLfdsXJpQC07qLfnTUWcwTKrB+SAyK5XGW8qpi5utkVaEfmti8JRnbk54MQOZ/AsvT2/Hti4lR6BxyTb/Me2zkXIez6ukXzsuIRoocoGPzBZfjxhnuyRrGamZVMk2glqCa7AQ4tFA1yIJX83GfABmi65+gzRG0rpKL9bIY2/4/Be7zvdfktVJFhGMvteHdRqGECNpfJfARndPljvz4hPb2Ti8Th3+J2JzeuUoPx7R0jkL+pEpe6X95S0etu/gFOMWbrPr7QaoP7tBIFPF3xIwULDGY7im/CHvj3YBDTphvivoMVNm3i0rB0mxc0Kvk1aC4Mi7g7D6XllUpO3/4VN/SZ/IF3UmCAZJcgpJfUjdnClIq25iVeqsXc6uy6fY7PTEngBwRwhKjeJySg9JDBuD1MmCk9EOtP5tsM0mzuDgSBNDvjEShWwK+Io0G/KR5Ed8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3dwZWtIM1hPV1hScmdQWlZoT0toaVVGdmpvc3JqK2EzRHd4RnNPWkJITU1p?=
 =?utf-8?B?ZE5QUGpmaWVxWFNseTM4d3N4WFFnQUxBWlR6UENtb2c1elB5Ri9tV2ZvQTRt?=
 =?utf-8?B?VnRFSlR2TnNvWGdMWW42RjRReUROaktQN0F6dUpmOUt6SHlmVnU2N1o0bVlq?=
 =?utf-8?B?aW1Md2pmVWRVaGloVmwzbFBqeWJvNCtQSHNHVmV0ZFN2T1B3ajZGeHVZWnJV?=
 =?utf-8?B?MEl0aXcyaXFQMHQ4d1hLYzJMbjU5akc4dXlUVk03VHlTekNaRDhUZUpaKzRQ?=
 =?utf-8?B?NGd0b1dDVytpdVg0MFNLaUtKMDlpaXU2ZmRobDhzckg1MXZOUGFmS0dScEti?=
 =?utf-8?B?R2lPa3FxQWNwdzAvbDFtYXJ3UUhKYmIxU093RXdFVWVYSU9JdzhLMDBxUUNo?=
 =?utf-8?B?eHl1NVc2MFVWUENFRUZZWERiQTNXdXlxOUNIcWxORVdXKy9NZ0taMEFvZlVV?=
 =?utf-8?B?RHJEck5WMG5iVGlBSE9FbWdPRjdWYXVRUFcvUWkxMmV0ZTZZT1hPWUk5emkw?=
 =?utf-8?B?RkI1L1hITVVJU3RPZzByeW5JZ2pKUldvZGhYL2pzVWNXak9iRldBUWVsdnBw?=
 =?utf-8?B?NUhJM2dKdWF2L1hHS3VQcENYMkh3SW1xZmcvcHpNN2xnS094cXhTb0dkd2do?=
 =?utf-8?B?MWVuZE0zckxKcWp2SERRNzJJWlJoSjd4THh3VjRydW5ndTU1ck1QRENqYm15?=
 =?utf-8?B?TDNJTTRNN2h0V2ljSDhNcnNIcGpvWUVXaUliVGJLeHhDQ3Y0MHZJS2llaG4v?=
 =?utf-8?B?TWUyMmpOcklQVVpiZFQrbW5EOWdIQ1lKWGljci9sb1Fxd0hvSlJLSHp3UVhC?=
 =?utf-8?B?bk4wWEh4MGp2NGZzalFqa1BTb0R0WDIwM25WVHlpK3lMY01iMU9tQTJFTXNS?=
 =?utf-8?B?RDdTd2dXWkJtYk5xZ3JMZm4vVm9JREVEMEduQkg5NG5iem9va1VLQ3VRWDMw?=
 =?utf-8?B?bVdGV1N5STlRZG5UaFk1WitTN0VvQnZvZmkvbWtZbnlnTDA1dDlkTVd3Lyt3?=
 =?utf-8?B?SlMzMlpMQlViV1pGWk5GdHUwaHNIYkpoU2hmMWgvcjlhZmcrS1ZaK2pNNmxo?=
 =?utf-8?B?ZkJCMkNZbDdRQUFSTkw4SDNrbWVoaFRoa3NITkZmNWlNUmh3KzdXOUpJME1n?=
 =?utf-8?B?aG9Ia2luTER2UStBQkM3YndKN2JqT3ZqOTVvdEpnWDhuNkFoS2tLanBQQXpQ?=
 =?utf-8?B?cXd0d3B5VnZpdVp6cG1GRG9LdXlwYWk5Q0o0WG50U0U0SXVVWHRDV2NyNmNy?=
 =?utf-8?B?WmErZ0FWblBGcmpmcWhNRm1LK2QwOVplb05hQ3BDZnVvQnNlL1RJVnRsWk9n?=
 =?utf-8?B?dUlTNFlITmM5TGlDOVpTZzFOKzRRUkJMazF3VFNMWmEwdzhFWjN0U0VNdXJY?=
 =?utf-8?B?d0o1Wm5ZQ1cxbUNrdzBjYUNwbEdJeTVrZ1ZkN1FwNC9zbFdOaHA1SGVyeElN?=
 =?utf-8?B?TmgvSzhlTW0ycWJEdlBhdmQzamNiVnU5alczTVRzNERUekptQkU3V3dmTmJI?=
 =?utf-8?B?SnFJZ3J2eUxqTEpFbXd0SWhiT2I0RUgxK3o5SmVmVTgxZTBRV1YyVDlodVBJ?=
 =?utf-8?B?RFQ4eFFidGtycnN1YW9WMWJoblp5THNmUW5KVWNyQ25WYlR4V1ZXeTdHNlJj?=
 =?utf-8?B?ZVBGSVVqM2Vud0IzU3U3ZFBCVDZkVGE4bk5YaVl4U05uSCtVc2t5R3IrYXlN?=
 =?utf-8?B?YWlzd3hwNSttSkdGQjNlS0J6QWs3OG1zK3F6N3NyMUVLL09SRXI4N2lLVnY3?=
 =?utf-8?B?eFFRNHp3S0J0MVdwaW5PeGVLQkY0SWlrM2k3eEg0cmgybmQwMFdpR1FJK1pl?=
 =?utf-8?B?SllrSlphSERzQldUN3p6amJveUJ1WDdGOGVEN3hIK3VnS1VITzMwclhGNTh2?=
 =?utf-8?B?dlFMaXpGVWlVc1JOYzRoYjU5VmxNOUF2QlRLWW9ndlhaNG5sRUs0Z0FVNDly?=
 =?utf-8?B?OHdqUFA3S01LOUZaWkRqa1JvSXErelE3SGZ5TG1EMXhZVlhDUmJyVHh2NVBo?=
 =?utf-8?B?TGM4b2J2cUcxWExzc2crVHNjbGxCeXU5b05VRTczOTBOcy9IRjdsTVZaT1Aw?=
 =?utf-8?B?NEpLMzZNYUJPRmg5UlhkUU55RWRIMTA2UG9JV2ZjSlVidkp2cFlRRE5Cem9z?=
 =?utf-8?B?S0R2LzNlR0JKdWdpZWtDK3FzWWp0N1dCNHRZR0wvRWN1cFZja01EY2FWUmN4?=
 =?utf-8?B?a3F1V2p3YjdRMDdJSU45UnRjZkE5aVlodEErTXl0SytkdmpvZkR1SVhOTERY?=
 =?utf-8?B?MXJDeVVrS0k1RXR0dXBaUWI2TW9HNkxBOTFPMm5qaTF6NUoyei9SR3lqNUg1?=
 =?utf-8?B?cHNZK09KMGlUd0ZoTGdkd1JVR2pGenBKSFJlUzhTbFA4OVROWHNjbzdZS1dQ?=
 =?utf-8?Q?niF94NcQKlypp/H8=3D?=
X-Exchange-RoutingPolicyChecked: HxvuTzw/v472t9lMURAg8p3ye8B2kVgrRzh0J5VMxiNr2vyAG4c1W79Cw/rPrvW5ICbr6MZG61n8uZXAJPah6xVGBqOofz9LpVuIL8JdECT9LAwLvDM4twoMjprrXtiHf64R5SWAx4HrHM5IuBByBfndnzOIBVonMs9b7eJ1fBjaaA/VgpdTyqfYpcu22882GA5GHXtmpQ9ppeyljhDgLB6fRZRR4K+77ANpu0WeFgKqJker2eXe/GABb8qlLtkSg7xardSGRFG0GaE1hYOO/npw2Enwov3gmJUfdSOGNa3MvSa87kYtS6xThuQ+qPNz64wodB87zqlWGQ+elHcN9Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6063cd2e-aa6a-4592-60b1-08de8f1b5c03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:48:00.7572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z1rCAF42OblO4K0hoAFJvRAslY7XWRhAtT5BL1amgPbuOmVWku2JgpBek48ZiVRxB0qzAkIRlOfhU1iKeHNqHwYZ4xW+DhkxcPOyuebl3a0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7031
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 886A03690DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/30/2026 11:56 PM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:48AM +0530, Ankit Nautiyal wrote:
>> Add missing drm_dp_as_sdp header fields to intel_compare_dp_as_sdp()
>> comparison.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 57870baebfa5..a0e7ef2574b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4906,11 +4906,14 @@ static bool
>>   intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>>   			const struct drm_dp_as_sdp *b)
>>   {
>> -	return a->revision == b->revision &&
>> +	return a->sdp_type == b->sdp_type &&
>> +		a->revision == b->revision &&
>> +		a->length == b->length &&
>>   		a->vtotal == b->vtotal &&
>>   		a->target_rr == b->target_rr &&
>>   		a->duration_incr_ms == b->duration_incr_ms &&
>>   		a->duration_decr_ms == b->duration_decr_ms &&
>> +		a->target_rr_divider == b->target_rr_divider &&
>>   		a->mode == b->mode;
> BTW do we know if the hardware actually modifies the AS SDP DIP buffer,
> or does it just override some of the values as the SDP is being
> transmitted? If the former then I guess we have to keep in mind that
> the readout may have to do some sanitizing to avoid mismatches,
> if we do anything that require the hardware to dynamically adjust
> the AS SDP.


There are some things HW sends on its own like bits 2 and 3 of DB0 :
  - Adaptive sync SDP transmission disable Bit 2 and
  - Remote frame buffer update Bit 3

I think it overrides those values instead of modifying the SDP DIP buffer.
That’s what the spec implies I suppose.

"When PR ALPM is Active (AS SDP Version 2), hardware will automatically 
drive DB0[3:2].
Software should always program these bits to zero."

Regards,
Ankit

>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   }
>>   
>> -- 
>> 2.45.2
