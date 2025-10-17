Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 914DCBEC5CF
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Oct 2025 04:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E2510E2E9;
	Sat, 18 Oct 2025 02:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mHx4kYzZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01EF10E1DC;
 Sat, 18 Oct 2025 02:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760755584; x=1792291584;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rQ48I/R6mKFFYc9iAYBwRwAu3jX4bcKcMyNVXxkaE1Y=;
 b=mHx4kYzZqUa+7UOys/5wIF9MktAS95R1N78BX6kJns3WUWzo8w3MMWsQ
 3wxzaPllZQJXEhmE6XP5wZqkX9+UhhMfMgKyu5o9D6jjg3XKNcDKXU2WI
 41oND5m3hDeqYTtouvs784yO846RVngLNI6m1Os4L6/TwrXNENuyDuLzH
 oFsz/CCQGibsH6Z2WjzXfqxDmbWoToOya9vfi6N7Fe3s4DKTq1dJs1Iv5
 q6CbKJDze0HN+21JllE9NeuLbnI+EyX6On7HtLrjIzulp0Pex4fGMNaMq
 KRrllSY4rgwHZ3fYy11ErrVJP1Oy1Ok9zbT00vkn9J0XpWfCEnDl41E2k Q==;
X-CSE-ConnectionGUID: +zB56SpKStC6cGPslOscBg==
X-CSE-MsgGUID: rR/D90ONTDCqvMWpc7SVbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="88440027"
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="88440027"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:46:23 -0700
X-CSE-ConnectionGUID: NdcdntbHTOWohlbsmLB24g==
X-CSE-MsgGUID: eyx+SSutQRK4/OZlhQm1Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="213478151"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:46:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 11:38:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 11:38:22 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 11:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eq0djbwgfKxbjq4ugtxx7OD1S03OZgiEaQAavac87qcreCWwVarRxzqt8LgBaSsGtxjbNns2w5liW8qXbA+5ZPmuox/0rdTb5UfCaP7zezAjUOgeJMVI+VYtuZ4WO0CyWFS3FMedAO6pz9yK2aZX1LnhvWdtnu1JRS0UUE/siJvSvHzuZ9LSfCZRvppCLH2lrm8XH8gzQufgQyzxEXfCc4fHnpreZlSJ6pOOtAOpUzlI/LZT9lcyIwg4ppLM+RX/P0SHlRXZFsX24+R790W00uAmqq1akonpfR2qpFfLvAFJ6c5NUAeHKXKG6WNTeL417/ohRYwEx5ReMIz1LMDBsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2PDObLJ9UDULhCT0OAyM2zHwjlKPqhqHMNdTZ2NxMs=;
 b=Pgkvhi7q/VL4dZ/6Z1cBdF/mQPm9fICV9/NZzFAnjYqdk9ykhLprJGOYp4sSEPFwInQTiFaOewZ1YJjbzt3htrNS62Qj/S1Xuj4diesM9DXn4OTqIeI3GaiiYuoxUD8QYMemEl2UKBmfaC/DmprEjxO25k9YQXNKzrgP1VOqE0FZcB8nucPmaIuBm4oyXA2GQ+XeiiZeOauyLXZrxeGJYRfIG0qku1bE/igUPtbgk0zJASY64zf9oUbogtj1k+Y4TQWka+30cRv0uHc2PgkKIqsvpfPp+/AToocyb4MXuHUI/ssv+A5PIgYwLPPyf6LCJsR+Q+DK35xVyKyBf9E9pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7564.namprd11.prod.outlook.com (2603:10b6:510:288::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 18:38:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 18:38:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aPFdsf0JJ_3xZ1Of@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
 <aPFdsf0JJ_3xZ1Of@intel.com>
Subject: Re: [PATCH 15/32] drm/i915/xe3p_lpd: Always apply level-0 watermark
 adjustment
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Ankit
 Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 17 Oct 2025 15:38:16 -0300
Message-ID: <176072629673.2362.3460243848252918466@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7564:EE_
X-MS-Office365-Filtering-Correlation-Id: 48107b7b-0fb6-4c22-1408-08de0dac589a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTluSEw2bkxIWnIwNUtUSVNwUElzaElBdzkva1l1cWhsMVVZTWJUY2drK2NC?=
 =?utf-8?B?QVkyVjJBMHFUUUJHRnYwcnNydXBGRmFEQjUycHdRY1hvWk96cHdwN2JSQm5y?=
 =?utf-8?B?YUllMG1rNk9EeXRtQUQ3eGlzZ2J1OUtUUDhoSzVMZlNXWmRsc21MVy9DZjl4?=
 =?utf-8?B?S0JRZEdTVHA3MUJWVm5oSzRzb2hmTFBXL0lxelpDVE9xbkl6dSszSUt0WEV0?=
 =?utf-8?B?TElXbmxkMFVvSU5FNWFxdkJPbEZPN2dKT2g3WmVQRXAwbVNFb2NPWEpJaGYv?=
 =?utf-8?B?WjlmWnMzZUxnNnhmMG41dGZ3LzJ5RytmMHBwUElid2pvYWcxcDhKOW1YakdH?=
 =?utf-8?B?Z2JxcjMwbjBzdE5HeHlrbFhwRktUSmpEMTVSWEJkeWdzK3lsZDBTSHpCNys2?=
 =?utf-8?B?TUlQbEttZ3BndzV5c2ZpejVRU1llNmNoWS80TWV5UHFEWlhZSjN2MG1pWW9k?=
 =?utf-8?B?bVptellPZDBhVVV3SlFrMVd0VVlCSldiQzNGWmJTdmJKaWlDUCtnZnU2OXpF?=
 =?utf-8?B?WGxCakxnVTRCQXBhSlJQNHlMdHZaSzlOK3hnVkp5MEgyTlRvdlZjNlFxS2Fw?=
 =?utf-8?B?VnM2T1d0TUR1NW9Mc1dYd2lObEd0Tm5lS3BOUDd2NzBDdmxKTkJlcUxXbHFl?=
 =?utf-8?B?WnRvYUVxaWhwOXovbzg1R1hTOUR2NUFpKzMvZWl0cm9mT3cwNmZXRm9IaDJz?=
 =?utf-8?B?V1pMWE5uMTI1bEhBaExxem5COFYxVVZSa2hJbjFhOW81UVNFOWNWNk1iTWZj?=
 =?utf-8?B?SE9MMmpHV1ZtNlkyeWJHUUNXaEdLQlVTNlgrelRwV0p5QW9JbWw4SlZRNnFF?=
 =?utf-8?B?TjNyTGhEaHhjNVRHQzRieGdQNWN3emVMTmFkbk80cW5hbTNTWklRRmY4VnM3?=
 =?utf-8?B?NVBja0xlUGJQQWZTWmtmb3cyalYzMFJtM2tIcjBUcjU2YmlhaWg0QkJEa1I4?=
 =?utf-8?B?Wm45ZjFxbTdJOW95RnF4Q0JaQ0ZDazkyT0ZJRkxQd0xFditFYlF3NXN6b2Nl?=
 =?utf-8?B?TDRLbXZYeURpNWNQSjRUYlNwVUVzZmVMWHJ6NlV3NFArUytWM3BsU1g3WThi?=
 =?utf-8?B?Y3VtK1pZVE4weGdZZCsvOGk3ejk2ajRHVW0vbERWSzBqRUdsaVcraW1KRWdE?=
 =?utf-8?B?REU5VzhZdEhzZDF1eWk3cHA0bGhNNUZFUTFPWGJWVVBmdVA5bVA5ZUQrNFll?=
 =?utf-8?B?aThGZVc4NTVyQjRoMVA3ZXNLOFpIRjBiVXpqRlF1bUpBa1Jld1FuQjF5d0VY?=
 =?utf-8?B?ZUhsSklaVHR3RHkwY2dtVmpPL1BZWGpwaTlucHFQeDdxNkRpZjlMQTJ0U28y?=
 =?utf-8?B?bDRERWllUFBHM3lnbXZTaHpmbGEwY2VWZ1lUM0xJR0R2MWFhNWptUFZIdGta?=
 =?utf-8?B?anV3QThJS09uNFlhN2JGQy8xcWt0OGRQbDBKWjdnWnpIMlpSTFpWUVpRKzRt?=
 =?utf-8?B?c09HT1BLMEJ4OW00OENDRm03eXZpbGg3RFN3VS9USjRVZ0pYUC9wNkpQdzlV?=
 =?utf-8?B?Wm0wdHRRNVg5ZGtuay9LS3lDcmdud3FrdXVpd3pxcDNhWmZqdTZaamw0YlJP?=
 =?utf-8?B?R1N0dDFOTE9UUXpLYjVDSzJMMEMvSzgvbnBpczZsS2hkTVBwOGFJbHlQbHpx?=
 =?utf-8?B?enQzSWhZNE1XUEJUWU1WMVhKQ1Bhb2Q5NUxqWVFFMS96VWRBUUZ5OHp4T3A3?=
 =?utf-8?B?TjN1ZGNEYVVKdmIyQXFTVC9iM3FCM21rS1lRSnJEZi9JWC8xTzVVQXl6SGQ1?=
 =?utf-8?B?MnlnbVNUbXdxSkROVVNLSytIaEk5U29aeXdTa1BjWndWa21GeFREQ2R2OFVZ?=
 =?utf-8?B?WkJuTVRwQ0dVbUNlTXUrNW5Lbk9Tdmc5aGFWYVJIOEEzWFpLM2dJVTE3czg3?=
 =?utf-8?B?VDk0d3E2d2VSdVpHM1laWHdTSzQxQVpvR3F4TlJ1M09VdlpSWlJLd2I0WHRW?=
 =?utf-8?Q?2rZy70+OO06RphbNJ6tq2l6UG9IJ5SpU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnpFbVo4QXlhSG1xOXBjTktpQnc1c0Vwc2M3SWdFeWxhRlNaWHRuNmd1NTcy?=
 =?utf-8?B?MGkvUnFGamYrME4wbFRVaERyVDVVbUhIbEx1ZDNyS1RweU12OVo5STZJMTBM?=
 =?utf-8?B?bnZZLzhZWTVSWlljQ3hyMVQwQWZYSEsyUVYwd3RBMjJYaGJ6SFBpblhuSnRh?=
 =?utf-8?B?V2NKVVFFekxqWHI3WGVwNkxuUjRtaGNiN3NDcnc5UGUxK3VEdjdSM294TElU?=
 =?utf-8?B?SWg3d3VXU1dNZlhDVFMzd3VUUWJxemZkbGpjbHQzalZBWUVlMjlnZWFJTEt4?=
 =?utf-8?B?ZlJkMkJXbUNNN1Y0WlBVV2dHVEtVLzdmbzRDT1hKMytmTE9aVU0vMitLSzJY?=
 =?utf-8?B?T3ZRc2kxTzFrRkU3cWVuZDJYdEFhalZ1a3ZHbXExYWR5ZExsQ0tyUUdvQUIz?=
 =?utf-8?B?cjNtVmhVSm0wYUdrTzh1dFc0bHNGNHNIL3dOcE5VUFVRTGF3Mm1vOU9GRXNO?=
 =?utf-8?B?MDNCWnNlT3JjcEMxeVd0Zk81N3NVSmltLzlGTFhKWC83WklpSFlzRlR2KzVt?=
 =?utf-8?B?dlFkNk8vZE5RRGFDVDcyQWo1UHRBV29uejk0Qnpmc2l5ZGxSOWV2L1Q5ckRT?=
 =?utf-8?B?QjZVZy9UV2tSTEd2bHlwWGowUFp5RjVaQ0lMeXc4dTZlTEswdU5aelc2RGg5?=
 =?utf-8?B?QVJBeXVmUzZ6aHFyQzVpRVhHK0ROVnhEZmh0SHNEem83b2pyL05Tdjlka2x0?=
 =?utf-8?B?L0JOQkU1Wm9WaVZLRGFzbVlSU1FudmJ3U1lqdnR4Q1BCdUJZem4ydVJpQXEy?=
 =?utf-8?B?ZDJpRUF3cWZHLzBZSDFtdkNCYnZqZGVyY05FcmkwZE1taTR6UVNwYTdLSi83?=
 =?utf-8?B?SUwxM21xWkRrc1ZESFhTUHUrRitvU0tGWUZwaUhuWHFYSnVjelVEOXJkaEtH?=
 =?utf-8?B?dEpRM3lJd3U2bTF1M3FXcTUvZkdhRGVNb3BrZGFBZDVhVVh5UXI5dGRTWTdE?=
 =?utf-8?B?MkxKQVVNcnRaS3lKSFM2QXladEZDa1c2Qk5WcXQ0aVVxbm00Z2dKb1RhKy9R?=
 =?utf-8?B?ZnltU2dsdW9GK1pOSnhlN0RuZ0VOSTlkL0w1em91UkdCbXRQWFRmcUZXUHB0?=
 =?utf-8?B?UDV6U3Z5Yk56MzJRbU9JY3J6OE12T1Qrc1Z3bmtGbnFxaW9QZldaZ0hOakps?=
 =?utf-8?B?NUtoWDI2Sk0xSjVESDk3NUdoSWdtU3l6eTUwTXNLY1FmZ0MvdW1ueDFqRXgx?=
 =?utf-8?B?RGtSekhRd2JValo5YTF6Y0V4ZkNCb2ZlaVlMMFlZWFVxOWErUitYTUtERGI0?=
 =?utf-8?B?K3JwREJac0dzYm1VY1VkYm9TbDRjaTExTUJOOC9rMHc3OWVsSUpPQStTQ2Z5?=
 =?utf-8?B?eTZMVDZWVWRKUGFGckQwUDdUNzhNOHZ2OG9DakptWmw2dCtQR05zcDZubDMy?=
 =?utf-8?B?c1FVTTkyOFYyVzNKODV6K1YvdFg0UFF2MEJZc1dnbFhFR3hmczBYRUF1bFpP?=
 =?utf-8?B?T3NZY044Wmc1dTBLamIrbHlZUFdLTDFyR2lSNmxFZ0I1WVVoTzBqNUVtOER2?=
 =?utf-8?B?RTVEWWRvTnlBY3VNTEJPdkhhc2NCZ0gycTZLVFl0d3UyZ004cjRlOWhZaUpC?=
 =?utf-8?B?MW41cW5LTnVXN2EvVUxMUnN3RUpvUzNtVFU4RW5jRzdwRnhJMFN2aHliYnl0?=
 =?utf-8?B?a0hPbFVtY3pnNDJhUUZsVmxxSHZLUlRJMHRlRTVoUDRsVTRtbngyVElVUERB?=
 =?utf-8?B?aUNiLy96MCtxUkNaRngrWTJ5L2o0bGlCd3AvODhpMkEvMjBRSk9xa1hMaEdS?=
 =?utf-8?B?cDQ3MWFyZm9qdy9aSTdlZU83cExEdmZjMWp4QjZkWCtRbkpGdEFJSmdyaktT?=
 =?utf-8?B?cEV1a2xBaDJBeUpDakZKV1lkaEtaMXRqL2I5MEhSRkFad20wZkhVUDVzcE9a?=
 =?utf-8?B?Q3k5a0E4OWsweXNUZFRHMTRsWGJidjV0M05YMElEUS91N0JFeFRlNFdhT2J1?=
 =?utf-8?B?aFFDTnFrOHBxWnBwQ3hWUzNCOSt5MHJ0WHpxY1FGSFBLKzh3Z1l4Z2tJRTQ4?=
 =?utf-8?B?MGtUL1QwdUsyMGJ1TThHbDFvaW1XeGhNL1cvWHRieXBkY1pSWTRMV3lTTDk1?=
 =?utf-8?B?RGtnOFFOTko2OHY3OUh5amZOeXFRY2xSMWhzcmU1WWx5YXpKajVEcmRucmhm?=
 =?utf-8?B?NkZiQ1V2andrU2pZb3YzSGMyRHdzMjQ0aU5NZWFZZDAwcW9RWlVCQThyalFP?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48107b7b-0fb6-4c22-1408-08de0dac589a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 18:38:20.7272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: By6CBcDIMgLPElTkNRA8Wc5NnsXnA69a/Vlm3USG3NSYYMlMyW7IGMADK0uyBciN+SS3Jlnd/XGZ9x+rwcZyfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7564
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-10-16 18:03:45-03:00)
>On Wed, Oct 15, 2025 at 12:15:15AM -0300, Gustavo Sousa wrote:
>> When reading memory latencies for watermark calculations, previous
>> display releases instructed to apply an adjustment of adding a certain
>> value (e.g. 6us) to all levels when the level 0's memory latency read
>> from hardware was zero.
>>=20
>> For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
>> add that value to the other levels.  Update adjust_wm_latency()
>> accordingly.
>>=20
>> Bspec: 68986, 69126
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 41f64e347436..88342d07727f 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3249,6 +3249,13 @@ adjust_wm_latency(struct intel_display *display)
>> =20
>>          make_wm_latency_monotonic(display);
>> =20
>> +        /*
>> +         * Xe3p asks to ignore wm[0] read from the register and always
>> +         * use the adjustment done with read_latency.
>> +         */
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                wm[0] =3D 0;
>
>make_wm_latency_monotonic() already used wm[0]. I think this
>needs to be the very first thing you do in adjust_wm_latency().

Right.  Or as an alternative, maybe we could have
make_wm_latency_monotonic() be the last thing to be done?

I was thinking about having this as the end result:

    |diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gp=
u/drm/i915/display/skl_watermark.c
    |index 237af46c1974..b3f8cbadeb99 100644
    |--- a/drivers/gpu/drm/i915/display/skl_watermark.c
    |+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
    |@@ -3213,39 +3213,44 @@ static void
    | adjust_wm_latency(struct intel_display *display)
    | {
    | 	u16 *wm =3D display->wm.skl_latency;
    |+	int inc =3D 0;
    |=20
    | 	if (display->platform.dg2)
    | 		multiply_wm_latency(display, 2);
    |=20
    | 	sanitize_wm_latency(display);
    |=20
    |-	make_wm_latency_monotonic(display);
    |-
    | 	/*
    | 	 * Xe3p asks to ignore wm[0] read from the register and always
    | 	 * use the adjustment done with read_latency.
    | 	 */
    |-	if (DISPLAY_VER(display) >=3D 35)
    |+	if (DISPLAY_VER(display) >=3D 35) {
    | 		wm[0] =3D 0;
    |-
    |-	/*
    |-	 * WaWmMemoryReadLatency
    |-	 *
    |-	 * punit doesn't take into account the read latency so we need
    |-	 * to add proper adjustment to each valid level we retrieve
    |-	 * from the punit when level 0 response data is 0us.
    |-	 */
    |-	if (wm[0] =3D=3D 0)
    |-		increase_wm_latency(display, wm_read_latency(display));
    |+		inc =3D wm_read_latency(display);
    |+	} else if (wm[0] =3D=3D 0) {
    |+		/*
    |+		 * WaWmMemoryReadLatency
    |+		 *
    |+		 * punit doesn't take into account the read latency so we need
    |+		 * to add proper adjustment to each valid level we retrieve
    |+		 * from the punit when level 0 response data is 0us.
    |+		 */
    |+		inc =3D wm_read_latency(display);
    |+	}
    |=20
    | 	/*
    | 	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
    | 	 * If we could not get dimm info enable this WA to prevent from
    | 	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
    | 	 * to avoid any underrun.
    | 	 */
    | 	if (need_16gb_dimm_wa(display))
    |-		increase_wm_latency(display, 1);
    |+		inc +=3D 1;
    |+
    |+	if (inc)
    |+		increase_wm_latency(display, inc);
    |+
    |+	make_wm_latency_monotonic(display);
    | }
    |=20
    | static void mtl_read_wm_latency(struct intel_display *display)


With that, we:

    * make sure to differentiate between WaWmMemoryReadLatency
      and what now is a "normal" Bspec instruction starting with
      Xe3p_LD.

    * have a single call to increase_wm_latency().

It could be split into 2 patches, if you prefer: first to use a single
call to increase_wm_latency() and then another for Xe3p_LPD (which would
include moving make_wm_latency_monotonic()).

What do you think?

--
Gustavo Sousa

>
>> +
>>          /*
>>           * WaWmMemoryReadLatency
>>           *
>>=20
>> --=20
>> 2.51.0
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
