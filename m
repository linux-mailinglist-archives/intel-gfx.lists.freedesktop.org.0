Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMWeJHJCC2qsFAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:46:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DCE571272
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86CD10E354;
	Mon, 18 May 2026 16:46:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZUmDcu9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624F610E354;
 Mon, 18 May 2026 16:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779122799; x=1810658799;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uJF2jyanSmx8kTeYJc4hD5MgGPEnNVX08Kz486MldLg=;
 b=EZUmDcu9PdXctn8AmoapOiZePwiMw1QzHnNp8ebQfLmYisAvS1RkTZL0
 6CDUeCSuVLQLhG3y99kY5/qQv+KbabAvPAOSmkbb/JP+EwBcLZH+oHXJJ
 VeIAwuQoOHAiQ/0ynafavk0vyoIC+uGiFyLL7HzpJ7vRxBibaGosVJQI1
 +PQfHQW32NLY4Aw79qIdrUe0+/qx3YjF44e4QB6KBZGrXwCcHJfD48VwW
 +w4ODa2HBQq6+FCMKIqHx+eueufYdbYhrF101nKO9J80cNxkjQCXu5mXH
 vNJkG563AI/0m2uc//YcxEFBmnZLrh/OQLpNgy6aE+AzdxHaBxb5D4orQ w==;
X-CSE-ConnectionGUID: XXxdmNbcS7imGhCBQQSafA==
X-CSE-MsgGUID: aT6WEKWWT6KltwFdFm5+lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80033313"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="80033313"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:46:38 -0700
X-CSE-ConnectionGUID: WL/1GyNKSd23tum+oEnQjA==
X-CSE-MsgGUID: fCgELieWTCax5+9a48SARg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="244467322"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:46:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 09:46:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 09:46:36 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 09:46:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GzCtPXSbtLeg78iGvZJ9RU4bY4nj1nh6Qe0mSqdw4RjzHpodUiy95d2cnqlEpkJ8E+17Bc2W85sqH3v6TrjW/V2Icic9JkpQVuMzcIYZbII/YG27PN9/lMpKrwcC8y4GXil3CbCWbW7rY30eKRVWWa5XhSImTb7hY70CngkH6rN+KO2S10MCaRD9Q2tIPEbhB6TpvJfdyTD5FAEn70ZBnJYr07EKfdC+yWfxCoPEod8t200CMnkp2TjKOKwbXKd2zN37X1L/MKxwqS12+9MDTzs5rUg2JVtsyxg+wjurC8W30MEG1COzays7P670uJ4OyuNq1bIR+pbH9yQt4JsY2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QuHKGXpsiHUTQaHS43nkdqA8zdLbkPe00Q7CAxGephI=;
 b=LszufGFQX/CXHRhY0Nn7eZp01x4H+EYoEQ8QjvQg6x68sJr1DiUcSmYvYKFrsbe/DiAQ5v0RtM76yZreYj9QsmAM5r93s4qQOmolx3ExGx5kOKQ6FJA/pKldgk2ov5sogk0HRgdUKZA4CoJYd6WOiZcmBKvIuskS7oA1lZ6DCJZYXr9C3L6lisHlHiQJDEXefXn7CqpnPNTK9YoezgKFrzNdbRgLv42xyhPmrfJvy/swQ63sUmdh4kKB6AxDL++pstoWXJ2Kh8uAoJGiS2oSokXIkHdmEuyfsPit0repeApHORzfL4G5p/FazRzlS5HSuRmdG6fXr1EhvhxdFHXORw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS4PPFD24E991EC.namprd11.prod.outlook.com (2603:10b6:f:fc02::52) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 16:46:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 16:46:34 +0000
Date: Mon, 18 May 2026 09:46:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v4 2/5] drm/i915/bw: Extract platform-specific parameters
Message-ID: <20260518164631.GB3379914@mdroper-desk1.amr.corp.intel.com>
References: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
 <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-2-918528006549@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-2-918528006549@intel.com>
X-ClientProxiedBy: SJ0PR05CA0181.namprd05.prod.outlook.com
 (2603:10b6:a03:330::6) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS4PPFD24E991EC:EE_
X-MS-Office365-Filtering-Correlation-Id: 046da426-961a-4ada-20f3-08deb4fd0536
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003|3023799003|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info: VkbDmMZ5BrxKAyL/kboOj7YoCvtQnJ9m/1HUP3pYhF2OOK3xhaYCZ8GJYWMsGtSF9/PZgqR/wk9ryMydjhOXnAWtIadXgKHTB+yCTGgUZpLVJc142TKXKaynwWBut8gZKXdruegZ27Lr3vbgF0HdDw94W9vuvzzXIw8gdmunglpJiuGEE6KFZbuCdYW8lSYDYXQmGBbhLlp1+sQ07/wmqZ3tTgbQqrO/betsj+ETBHynJtD5Pd4Q3+vABl3T37hhVuABjWXFjEh+co/FOEAtCsm63DF86/5MLtk7bAqcy6LuIZ74ldC4il8hChX5mMRkkEzNJFeCPrddrARHTwImZ6OnEAkDM1XV0ejtYvG3DLIELn9Oy201JVvrkbliSy9Rvjy31rsafas9YPZ5CIwS/fPoWdG39v2/KB4HADZqMpmOFZktrmen3rWSVhkmAt386nZ2XOWMEm6NZMnaIJb8cXrnvky3ogHdZt/bEA82qi41TkTSwtu10eBu7dwl3pNiqCT85A//WY4LEdMKXQsYJ1qBsGUZpp16Bp+JfKQcbKqkvWun7e5YakOi3juMW0X+8Jw42gSNvGB6xzygRIDXLVdocPQIhutH6eFrNGpVBCChGuEn1lj85+q1vVvOk2agdA60HfKVi8J2H0FZncQIWyOEsHED/pSDrB//8khKDgimCXCreY+8dyskhG3nai5e
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003)(3023799003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yP/73Pl525CXGKgahy+3+yfS4XvwLIL274XNv+pe9dEluzyuEC1az6eRsvEC?=
 =?us-ascii?Q?bXyQvG9ZNgqwiV+zwIuU5tICSY4ouHXf1f5yDPRCLCNzyNihYUY4vXDYH4H5?=
 =?us-ascii?Q?qG20MNchUJD59e+zqU9mlx8JWFtadGuTpB6e/m9fsMQ6FtrMorwYduHpzZOY?=
 =?us-ascii?Q?7fEX8RHTpAd53txbXKXIwq3ymJkoSePwYYm8FqpAPXQgE1iT6Bj9CHhDpRqp?=
 =?us-ascii?Q?PAAmXi+PKVWvUEPDjVmQE0bAnDbLzRD0WPhFIC+EcE/9txdtcBwO3crqmo9/?=
 =?us-ascii?Q?6I1te/mN+QgA80ehxguYYKOhS+lr6Yr/2qgUxGQMHXxwsbrfeiKtBBoOK6VW?=
 =?us-ascii?Q?5C3JhSfsGNWoeNrVb3nzFD4Awne7p4TU8NuKg8lukFqMTu10OhdmCsHsfNQJ?=
 =?us-ascii?Q?o4boNWDq5YC68l3GMpseXCEumnOd6ITnB/dTZ5iQ02ZcDCtTjWvszMWU4aHq?=
 =?us-ascii?Q?cTCb0TxZBgZf64RnURlveo4QUBy8eLLqpvB7YN0+ClXEluB7ABtuY+bIQiTV?=
 =?us-ascii?Q?aHmMXZ79wXynQhJ0FXH1RK02Q13XffYXyLkIGiRujZ74vTZjaQ9HiWTB141e?=
 =?us-ascii?Q?tY8Z2xdVlRy+z/P7EYz1TUaMGBUeMSW70QAi2k+GvS2wvoSmpYiz/A3Q632w?=
 =?us-ascii?Q?MYOxWzL516Iu37E7p8aMXLDcwHdcX9cBeqWoZpnEW9Y9oEvd3nTuIoKEHwW3?=
 =?us-ascii?Q?tgGTHVnK2Cbp8yofvesYf9s0HMZURtls1S+U3f7HPD1DL5wNyzpsL6BDB3B4?=
 =?us-ascii?Q?pOpuvkj5KWfb6jOOBN5E9xGKJhco3s+h0udSd37MHTHFeFkBgac6o+SI0Ilc?=
 =?us-ascii?Q?tjzIK+fDYkVrRQpTVd/cpG0iqZqrq/lNc+X1pdG8foLchsxGX2TF2TTPIj93?=
 =?us-ascii?Q?7OQdqRvQxUtd48Dd6AYjXjaHgL/gHdc1qIhmxhZ8oh0+sjkHQjbhek0xGDrm?=
 =?us-ascii?Q?/DCAIihfLuM8sc8toVl17IQuenPDKIO+xc+3ywUnfu8+6Elo3GPHOpipxf1D?=
 =?us-ascii?Q?qLJwKvv4ZbvESHKtSvtnldj4HvheqZ7982b1ob8IbJMdReBCbJkZjyriIWDJ?=
 =?us-ascii?Q?gtHJtgrMT65YyXRVuUnmjrtNkPVMgEcc3+kHOIK3apX4owvaItmEjFn/bDi5?=
 =?us-ascii?Q?lT73Qdr1TQSdsTUE3nLrtdMo4mxNN+f+U1UgXWabxtGU27l38yAzCfcbPTnE?=
 =?us-ascii?Q?WeTLDtUv+wA5NzYrNZULVt3x0gLK3dfI+VTgT3zXjZOexuNVVsbhkn8hJCLv?=
 =?us-ascii?Q?rQtgBAe8rWskCRvXf97EM+gnQQRyMO1vttQkvQBGbDlyFaq4gBlSb5OXwOdN?=
 =?us-ascii?Q?D5lKeR56eZv/K2zc+hSX6i1Nq0IsCnVVCBD4R3fYYViEdsuS/45hUXQFD7Df?=
 =?us-ascii?Q?sCKf8ip49GhArwr9sFfQqvt2yHQIGgeaAjMXThmMjHW4igWsbADTUN4KGm5U?=
 =?us-ascii?Q?a8NoSNUVnSvZ7ovAtnNbUXP24nZTTlGwCksXAGeNEkyjGoYLyw4HBEu2cP9L?=
 =?us-ascii?Q?E3zIToBV19g2dY27/HGlHcGnjsCX2MZfREiuUiPwC9MkitUnNvJ6zvUr6YP0?=
 =?us-ascii?Q?hPr55wdtHPLhpQxetSEpqpeao0cEudEigLl70oKrfkA8VXYTEJ267s27B/ez?=
 =?us-ascii?Q?K8bRFIuZtnzy+NmL+U9qsebUiZurtGViRQkzMQS3BobWdSS248PuAn9GqVyg?=
 =?us-ascii?Q?xJu3XMt+BC3T9vwkEm1/z/2SVGvxzBzQ+c5/0grLrkuQrStT6/I50V5FbfTR?=
 =?us-ascii?Q?pfXImj6hbDmT9U8fAuF6kdUGFPrj4bA=3D?=
X-Exchange-RoutingPolicyChecked: jET5wwyIyY8MZzRaLnMRA+swisuUJkDhgEuxAjP25PODhThRb/NqDbvpegxHaY+px1Ig1TRU9B0MCZBX+OLup6R5Y3XitPjAznD8nEhs7XReXeFvlfnEFaqPuPo04Le5roraKrOkPJLLj53f6UgDkhFuhmw5fYT8ukhzpXxUHe8sVQYIXFXZYs5+vPXZlC4YqMng0WNAP8KQsOn7cISb1en5lJgH9UcA6CPEehMOnq8PTMg3Yxfa2cKhwVBj9kmYB3cWIWK9YcmHJoLE0IUZavOVL/l94yuyK+DfXrxNL8ASl/Rvl/ZJrVRocMiRgI97Y/GWm6TnEF33DmUR6m/N1g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 046da426-961a-4ada-20f3-08deb4fd0536
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 16:46:34.2190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dSaM8jre/tae9oLyMeEDGOiPHgScifCvcqMHlzgpPHYsmwsl8ZF7JLpVVa3GyT3IS+6kcr8CWyWW28LH3zDfkTWRl2CHlw5hyQra4lNcZ6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFD24E991EC
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E6DCE571272
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 01:14:01PM -0300, Gustavo Sousa wrote:
> We got confirmation from the hardware team that the bandwidth parameters
> deprogbwlimit and derating are platform-specific and not tied to the
> display IP.  As such, let's make sure that we use platform checks for
> those.
> 
> The rest of the members of struct intel_sa_info are tied to the display
> IP and we will deal with them as a follow-up.
> 
> v2:
>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>     check platform, then return ret". (Jani, Matt)
>   - Have a single call site for get_platform_bw_params() and pass the
>     result as parameter to the *_get_bw_info() functions. (Jani)
>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>     prefixed with platform names. (Jani)
>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>     (Matt)
>   - Do not return a default value; prefer to return NULL and
>     intentionally cause a NULL pointer dereference if a platform is
>     missing. (Gustavo)
> 
> v3:
>   - Call get_soc_bw_params() only after the check on
>     HAS_DISPLAY(display). (Jani)
>   - Combine if-ladder branches for adl_s_bw_params into a single one.
>     (Matt)
>   - Flatten if-ladder by checking for WCL before PTL (as opposed to
>     checking for WCL inside the brace for PTL). (Matt)
>   - Bail out of intel_bw_init_hw() if display version is below 11.
>     (Gustavo)
> 
> v4:
>   - Drop drm_WARN() when no platform was matched to avoid
>     special-casing DG2 and any other platform that doesn't use
>     SoC-specific parameters. (Jani)
>   - Pass dram_info to get_soc_bw_params() to keep a single call to
>     intel_dram_info(). (Jani)
>   - Don't use 2 separate if-ladders (one for client and another for
>     discrete platforms) and keep a single one for simplicity. (Gustavo)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 151 ++++++++++++++++++++++----------
>  1 file changed, 103 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 7eef693b51ad..f5a0a3e009c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -372,81 +372,136 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  	return dclk;
>  }
>  
> +struct intel_soc_bw_params {
> +	u8 deprogbwlimit;
> +	u8 derating;
> +};
> +
> +static const struct intel_soc_bw_params icl_bw_params = {
> +	.deprogbwlimit = 25,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params tgl_bw_params = {
> +	.deprogbwlimit = 34,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params rkl_bw_params = {
> +	.deprogbwlimit = 20,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_s_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_p_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 20,
> +};
> +
> +static const struct intel_soc_bw_params bmg_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 30,
> +};
> +
> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 45,
> +};
> +
> +static const struct intel_soc_bw_params ptl_bw_params = {
> +	.deprogbwlimit = 65,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params wcl_bw_params = {
> +	.deprogbwlimit = 22,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display,
> +							   const struct dram_info *dram_info)
> +{
> +	if (display->platform.icelake ||
> +	    display->platform.jasperlake ||
> +	    display->platform.elkhartlake)
> +		return &icl_bw_params;
> +	else if (display->platform.tigerlake ||
> +		 display->platform.dg1)
> +		return &tgl_bw_params;
> +	else if (display->platform.rocketlake)
> +		return &rkl_bw_params;
> +	else if (display->platform.alderlake_s ||
> +		 display->platform.meteorlake ||
> +		 display->platform.lunarlake)
> +		return &adl_s_bw_params;
> +	else if (display->platform.alderlake_p)
> +		return &adl_p_bw_params;
> +	else if (display->platform.battlemage &&
> +		 dram_info->type == INTEL_DRAM_GDDR_ECC)
> +		return &bmg_ecc_bw_params;
> +	else if (display->platform.battlemage)
> +		return &bmg_bw_params;
> +	else if (display->platform.pantherlake_wildcatlake)
> +		return &wcl_bw_params;
> +	else if (display->platform.pantherlake ||
> +		 display->platform.novalake)
> +		return &ptl_bw_params;
> +
> +	return NULL;
> +}
> +
>  struct intel_sa_info {
>  	u16 displayrtids;
> -	u8 deburst, deprogbwlimit, derating;
> +	u8 deburst;
>  };
>  
>  static const struct intel_sa_info icl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 25, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info tgl_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 34, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info rkl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 20, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adls_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adlp_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 20,
>  };
>  
>  static const struct intel_sa_info mtl_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
> -};
> -
> -static const struct intel_sa_info xe2_hpd_sa_info = {
> -	.derating = 30,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
> -};
> -
> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> -	.derating = 45,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
>  };
>  
>  static const struct intel_sa_info xe3lpd_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 65, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 22, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -466,7 +521,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  	}
>  
>  	dclk_max = icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>  
> @@ -496,7 +551,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  
>  			drm_dbg_kms(display->drm,
>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> @@ -518,6 +573,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -554,7 +610,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  	dclk_max = icl_sagv_max_dclk(&qi);
>  
>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>  
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	/*
> @@ -599,7 +655,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>  							  num_channels *
>  							  qi.channel_width, 8);
> @@ -661,7 +717,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>  
>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>  			       const struct dram_info *dram_info,
> -			       const struct intel_sa_info *sa)
> +			       const struct intel_soc_bw_params *soc_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	int num_channels = dram_info->num_channels;
> @@ -676,14 +732,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>  	}
>  
>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>  
>  	for (i = 0; i < qi.num_points; i++) {
>  		const struct intel_qgv_point *point = &qi.points[i];
>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>  
>  		display->bw.max[0].deratedbw[i] =
> -			min(maxdebw, (100 - sa->derating) * bw / 100);
> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>  		display->bw.max[0].peakbw[i] = bw;
>  
>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> @@ -792,11 +848,13 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  void intel_bw_init_hw(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info;
> +	const struct intel_soc_bw_params *soc_bw_params;
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
>  	dram_info = intel_dram_info(display);
> +	soc_bw_params = get_soc_bw_params(display, dram_info);
>  
>  	/*
>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
> @@ -809,28 +867,25 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VER(display) >= 30) {
>  		if (DISPLAY_VERx100(display) == 3002)
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>  		else
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> -		else
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (display->platform.alderlake_p) {
> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>  	} else if (display->platform.alderlake_s) {
> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>  	} else if (display->platform.rocketlake) {
> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>  	} else if (DISPLAY_VER(display) == 12) {
> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>  	}
>  }
>  
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
