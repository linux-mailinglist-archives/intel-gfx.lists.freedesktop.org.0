Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oL7YJ5xpDGo8hQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 15:46:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0869957FF04
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 15:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85F710E466;
	Tue, 19 May 2026 13:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvbu0hqP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349C410E466;
 Tue, 19 May 2026 13:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779198361; x=1810734361;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=flYx0yEG1Zl3ZbXgXIYNaZutNbBzBSrGf6FmN8hAPn0=;
 b=hvbu0hqP3+5UQ3eMbWeZs7WhhS9BIzmrHr9An0MygeMzJE5nR3McsfKL
 EqVZJhGumBJEFG9H/KYOAqz80Mwevm/fVJBm3i9TfyqZV5aOn/UEYD0nJ
 wm6xrgD8n5P6Kn5NIWaHNtm10RsccrK9A2Q6Yqs6GYXuysrXTQKjqH/jU
 7zRjxPOv8oDBbJvqSEm8Qe8uhLjR7mzFJYCGM7c2HITNuGO6z0bmdxIwT
 RZGOQUVUE07n97CeybVg986HRW0jPricEhsWhatC/a2wT62SYPg+61esS
 bvcz2j/w44qurJndTmY+0ZcfLDtNbH7Vf8yvZJKHXJyYfLHeZ1guG85t+ Q==;
X-CSE-ConnectionGUID: EhCMOuChSPCMy9FIWnxwAA==
X-CSE-MsgGUID: sKG8MEgqQEO4Jx67PPx4AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79795975"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79795975"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 06:46:00 -0700
X-CSE-ConnectionGUID: YA1DxTmmSz2r8guoWTQjyA==
X-CSE-MsgGUID: BRo9Gs/hQSeSr4UCDKry7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="270111948"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 06:45:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 06:45:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 06:45:59 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 06:45:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i0+WyBuSJB4OXGVNg/Er+fgIsfVpsO81VQKlxTVTVxCqiufi1YK35+2oBYh59gmc5hGYNWV+YKd2/GN+5C7Jhj/SgIJXUx/+QrCfizfbI91SCPb5yEWeZzMzNE8pWXHiGaT49oukDuFRFyEAmG2a/8lkcI00GWChhiiXNxeRj06A3hZIJMUhDGpl8kW5TUjOTc8dP9og1lrPQQyOfuCqquiBJJkwIbd4ZMb229/QU6p+qSmEtE/d+PRmTUxS/f2O6x/Ro75Vy+h5xi4U402ioXHyTP6ftPn1xtm4x7rD307v3Z+NdE0BVIAQY7pW8LgzF4bSaCHQzIsHx+WgWXSPxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TueccqmLJGQ4M8m+0iLIjOb/LvEghDbd6o/Dg+EmIh4=;
 b=QtVp/MNgh0lPyPORVqUMBBv8BTIFX3kKgCM8VJsH6A6jX+40NJNJDrgZzQE/oZ1t2o/fQxEsQdUR4Yt6uu7nevhxvXiXIFLmNT0tgkMJ7s703qAzuu4hjajEuEx4p5h7hw9hHo12Qq7yeIX1LI5an2GUfCpNiP3zygaVvA0W5C/jCfjy4AM8H+ilOtpiYjLKkBYb5vAGFZ7bgSTwvCFqxqhloh9w1g+dLiDjwzi0MLJCla6j3u7HiX0t1JX9FGhlzr9RuXOmpjwkvLE64IQdArreNM5bLzWptBr7jRN+om2kZNUYihQOAPXBrN9s3ZScEKdEH5YZz6SIUWllcDVxcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA4PR11MB9204.namprd11.prod.outlook.com (2603:10b6:208:56d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 13:45:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 13:45:55 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915/bw:
 Split bandwidth params
 into platform- and display-IP-specific structs (rev4)
In-Reply-To: <177917681954.84521.3965728903623704285@5ab824fced77>
References: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
 <177917681954.84521.3965728903623704285@5ab824fced77>
Date: Tue, 19 May 2026 10:45:51 -0300
Message-ID: <87zf1vpl68.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0264.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA4PR11MB9204:EE_
X-MS-Office365-Filtering-Correlation-Id: a630623e-0f6d-4a59-6240-08deb5acf349
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: fxQf6ouM0Aa/FfMDZonuxVbPAUdOJ4Wcn0Px+YPOwnZbtuZYnTKMNS/YK8JGtycIq9oWpmud26eCte7Wai1fGlYF1pv40wosjipqVnltR0CcTKJqLqv/3gHIYYI4yBfFCWYPfyCcrtKf6WMvbpmuAU4Z1fl9BQvjH8aszI2GLk8A52xOIOmqMm6eiB+9BofRY8S3koaXl+ro8jgZlqfIf03vHTvTqvMcrUT6TsD9o0e4VWUn0967bh1zd0TLLnO6W0xsaQGV15fibcMfZUiLtTBEw+FT/roBKyqyS+0y4PW0FFL8XEWJz29qqbnhspCF9kMiZ7UZ5Pjg4HFpaDrOsJFjLEBqC3PUuWsydt/+aHzWfZv+gIG5HjVNcTvLP25ef2Xjydc/7CLrykX27iOIh2eEV2z9/jgdUzC4QSVI7sj5WSXvLoxPDfuSfn1RG54mfQKMt+O85OhyZpJrnQaNi8UeQRBudCdAGDy0meucztvxrhyQJa2JPutBYE6I6gx4sVGLSmSkeKcnhlPr03cC8xEQsxA4+NxD481o1uJJQSrBZmXFDufpLVuHqXB+UySplmwjcspgZBBCMx3bTnCVZ+gNjvCiaNeGy6iqRYI0zzK6cvE8/Ov2dz92DFFJIGG/RQ9KFaT2x8RiAsXgRGu9Kg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4kZfYKdW62CEo52K+MkSlhBfBiM49XgStjE0XDTFDsyUEf/Z745q0BSF2OHC?=
 =?us-ascii?Q?nb2YQ778+U35h9KJ/iEKNrAKkidmkGZN2Ab/36lI9L1mY7cY32Ob32dBiPDx?=
 =?us-ascii?Q?AL/cofw2kvMvHMJsOaZC97eteJ7w1MFSqXUVy2NvKelt5XlHhXEOse94XEDE?=
 =?us-ascii?Q?XxlbzkACAmV4vgg1FkggFSAM6+8Ue1e8TsM2eMai7/ijHYLJsNT6CnfvKNmf?=
 =?us-ascii?Q?bMD17dyk2GKQRkiaC8kjGN5kKK8sFoWuE2TdiK+GDOjHGPBFrxdOG4Tr6Tnf?=
 =?us-ascii?Q?eVHrGdQXhWNMf+LMM7JP4UpvAMj3GZGXWWG3j60tdCYGk+Sn1pd4ALzpvuOd?=
 =?us-ascii?Q?K0RJ8GhqAFSsOOjvZeZeY+dXqgGc+6lMmumLJRaRJPn4Ty41JcT3DOiS3MVi?=
 =?us-ascii?Q?SYQM41qghSE758MuxvadTirCK7C76F50E5nCzWRvfB736CdEEGvotwZcP5Ea?=
 =?us-ascii?Q?EYYY1BPEAQgD1jWume4G//b8d4K41KeHDnIJXGcvTq34jjHGPA8A2MjtDjs6?=
 =?us-ascii?Q?Nmp71QIP6H9E5+ZFpGmLeH3dwRrAFsSAAsdcAcLHYh9uKRThV5GuvB3ygGwL?=
 =?us-ascii?Q?kA5/FPMHeoHFOpUx+BMEyWkKtCp5XabLumKpKIkzQyuMWXBRmHekMSbF4gtC?=
 =?us-ascii?Q?2//5l9RYKfR7fljQUCp5nX8D+oq1l1Tu8qQ8JCKlwyZ1AMqkk370tRVTejcO?=
 =?us-ascii?Q?13FAvKUyDvvjGd/acH38+nPKhe3fYYHX+07DaqgnZNO58f0+UPSCeIHFb8Ap?=
 =?us-ascii?Q?89AG3rmXWKtnnx3gyNTJBdAtplG70HDrpqV24UKF5zaxqoItFQfTLgJgHSx/?=
 =?us-ascii?Q?yn9vFC46VdcDKx5n5X7g0Qq3pJtx9/qHUAS3w77QP8dmdoDuzujbVfauaWjj?=
 =?us-ascii?Q?ZYlEnjOppfi/qACqJ6NYV8dxJG1+8LTvDdo26LFzevsq2b8a8NWHhE+TIXnO?=
 =?us-ascii?Q?ObDN6n0JkCUuQVM0FD7zsUgNRNof5Tzv5+hJ+7OtRfKXPEYTYNee1HULLr/3?=
 =?us-ascii?Q?0uyn4wMFFfXBgAU5p7IMOk6JeXwcureCzqiY2MF3LWU4skDxjmhx4bBBj/0r?=
 =?us-ascii?Q?Y2Dq9TTVg6IrHPnsk//CVbdRcBR7Ul7hxTUaALsoGBnMGszeeFYgxDA9Zg7Q?=
 =?us-ascii?Q?rFpNMSEJgeLgjZyGmax0qmpwhH4hBz2akzoOM3b+D+phor48FiJ4fsueIOhR?=
 =?us-ascii?Q?BaBpfUqGL9bRdlapRoNhsQxbQkMOXx+QrEtNzaaXGandTk2xC23JvSMq9lmE?=
 =?us-ascii?Q?ltGv5t9eWaKTGteUZmKTHVuEq9SQrowBRPQIoNPAerNKi7x8zzN053VgjiiY?=
 =?us-ascii?Q?Rbd0y0b3CXHn38f3h4U+lS7wzKop7OVx2uL2b736wui/Qk7TnZbUHo/n5NTB?=
 =?us-ascii?Q?duuMcnMmJ0I2bDt5qDUH209VB6qxM84C1QVGetGGJHowK9NYj+i42i2w2l4q?=
 =?us-ascii?Q?EnTYK1lB+XOl80OjTVQSEg7+I7eTzfqntnhSYO01XjiuWbTXpmIGJvKB/4YV?=
 =?us-ascii?Q?ub8604FYHAamAHTMmEOkqHG6mn2//c4deWq0iAuaVay2yUjUqDbC5qSRcAu+?=
 =?us-ascii?Q?y+lUqtXziDjnZT/0+zGJbfwUamopxqlIEG9EPRz3pOw9xEEvnIldQRKXiSpv?=
 =?us-ascii?Q?PyfBO3iTwuEhGy25nCTvaPgMRJCbi1gFqGpfWv1LFrI/rezmJdyTanfJgWHC?=
 =?us-ascii?Q?gPCbW1qTFwJsY7X0xpsve/PlWKdhVrubGE8Aytk0YyGiGOx7T0lyFEdCMcUh?=
 =?us-ascii?Q?OrhQ9OcOow=3D=3D?=
X-Exchange-RoutingPolicyChecked: UMeiQPtozC8IN5ZIJTFXqQL4DVqWCH6N+KgkHX8GloWmXvhyqBTmduU/4fgwWKlTlXcluvK4PJbRzLmsyazLSEeZ/rfqmzwj6qOGtGs6dqk7V7W747LPyXWG7BemanBBDR5R7ZKz44WX6nTuB9yVKfHiUSPkvutrtyAVUU9oqITN5ffQd3loy7xxfiqgzdBNdTHJnH77D+/acVKmsmR4SXKDURk6kRabLGh0U4Azwk46tshgWhmf2yDujwNXI6XLddaBLNNO3CU0W9irKutCId1m/SOYXQdlGUDTvCnAWunljVv81ojfwu1tYmIXmux4iZrpuyzXbXsoNKQA784HYw==
X-MS-Exchange-CrossTenant-Network-Message-Id: a630623e-0f6d-4a59-6240-08deb5acf349
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 13:45:55.5267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A17z2EH9StMWswqHWw8CCv+Sy4J8FYz1UCJtA2mopBrJmdBWUif0bOAxa0xVaj51JMFxohFUHEpFMNFfNvqSSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9204
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,patchwork.freedesktop.org:url,01.org:url,lists.freedesktop.org:email,emeril.freedesktop.org:email,a-vga1:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0869957FF04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Patchwork <patchwork@emeril.freedesktop.org> writes:

> == Series Details ==
>
> Series: drm/i915/bw: Split bandwidth params into platform- and display-IP-specific structs (rev4)
> URL   : https://patchwork.freedesktop.org/series/164567/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_18509_full -> Patchwork_164567v4_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_164567v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_164567v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   
>
> Participating hosts (10 -> 10)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_164567v4_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18509/shard-snb4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v4/shard-snb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html

This is an unrelated failure: SNB has display version 6 and, as such, is
not affected by this series.

--
Gustavo Sousa
