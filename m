Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKUYMq22/Wm4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:10:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3894A4F4CEB
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B775910E30F;
	Fri,  8 May 2026 10:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fs7SOI06";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E6310E30A;
 Fri,  8 May 2026 10:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778235050; x=1809771050;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=iX9QQuWYy/Hp1g/2f2+LzlmEnLUHyDa0Hv6OpDaSjeQ=;
 b=fs7SOI06aFS3pL41Uj4vrebfN4qUKJ8mU9SGjqYV2ER0jTpSHMPN6M2Z
 C+/VJ7nL2Kzc+kmOSsvDxUk4v1DATWRqjii5sCevSUpyyJ0YN69PfkZO+
 94CsDfJxyg7QXpLiJTo/vZ9EXgW5hw/ZJSfgv3o4YLX1ViMbF9MSiyKPs
 YYipc7O77sgxMHoSXn2isr7GT6zu0beswLDeCKZHIwmwLi462llPTJdNx
 g1DQGA1QvHGPz+WzfR1B4iBe3d9/vBfb9ZfpGsKn9CB9VtWSRK3h2NOVY
 O4G/h0xK1er95ggpLfD/TKe7krVgIa4H2e85ezOOUiEy43lo8lTIve3uG w==;
X-CSE-ConnectionGUID: V2Hf4tc8Qh2WJviaeBrbBw==
X-CSE-MsgGUID: th+733e/QI2puNdwg0B2TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96769716"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96769716"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:10:50 -0700
X-CSE-ConnectionGUID: g7tob2uJQQ+267sYcVl8jw==
X-CSE-MsgGUID: XYaL9EZjRMyI6BUSzNbbXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="232195254"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:10:50 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 03:10:49 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 03:10:49 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 03:10:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GowGJd//56GwpXUCKDGNbMZbPEBsyj5eFPBAKTXhKTzs97sh9cDus0lTFYNr99cwEErLq28/MZAtPHk6uMsbHQMi/7r7BYenLM2d/w0y7AKFVofgOLKlsnq6fTztnFnZHCT+CZJwiJXFnkF+VJwsYu8Mt72cg7L4gz+vGc5x7QEua7hm/ytIhsZWWhislwvjrnf5rw3C6IlQbsfRgJJWP789cVSDyTAlLfd7QD5AWK4SFFjyDtjHsO69IBVVuMsGFMKV4wzz4IFRXyt0+C07YioakgMo988d4rg/cWck4Wq/sIlEGlCBQXKP9PvAy7hmbVGi10ecrJxiqWs5UU5xWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Nv2By1+XazFRC2PF/FixpD/dioAmldFIeC7zJlw5UE=;
 b=Ax5OF1Jq8evBPEFHNpFzuqxhEVnXjflG5XvPU5VxP43a0uFJjHcW+O70JBhNMJ2kB4WFWV+w3kcrVqSTfiUUNS6zc1gz8UXbh2k2vfOb9rRpS79kNCv8yk4ONpmNtQ9lrZWTPzBK4fx9p8VFQY35mFUbr46xMy2zBoGMmeQOQEijAdhw9iR1K0gGU1q+3JN8cpROXCiFdNfR8nZuJw9l8+UhYJc4UtpYAt1AIYA+mSFWdK3lXB8iry7P3myhvJW1XYzrgGl2CIzz9Z49SkGcYrKaf+lAdahlXOn4yZnB5s6UXDSPyhcQGOroz5TqS9307nIxapiHLqJ7XHAlRv7AVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN0PR11MB6158.namprd11.prod.outlook.com (2603:10b6:208:3ca::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 10:10:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 10:10:45 +0000
Date: Fri, 8 May 2026 13:10:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_series_starting_with_=5B1=2F2?= =?utf-8?Q?=5D?=
 drm/i915/ddi: Fix cleanup after DP connector init failure
Message-ID: <af22nzAuYol9aTjz@ideak-desk.lan>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <177815149034.47093.7459984050326362958@5ab824fced77>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177815149034.47093.7459984050326362958@5ab824fced77>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0050.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN0PR11MB6158:EE_
X-MS-Office365-Filtering-Correlation-Id: ca03b50d-36d4-474a-c9e7-08deacea11e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003|13003099007;
X-Microsoft-Antispam-Message-Info: MApVQJlywydWt150P1p6f37NIutSAlmhDCPII+6ouUzRzzqE5uAXRcLtouMMjTnahbQb3HymOCuqZWj3Vg5Gw0ozSIYij+IgSTeZJD3f4ZrDZLLGmMh9/GqfXvKrL+qwVi1AuRSN+W2jvQvsfQ0IFD7aRDcf8CbgVn2KMS98Ikw5zEuSqZLnI2wFm7JYrHsRKWsFBuVA+A1AwGHyVikMbR1ugMvXnmvV3ZieaUJ7N8K3yi42Gk1G3UWjjjHM9nSyjCCvyVESthq62zi1MwqFTRdirqTIK93t2nW9IXZApzyC8FRbUvqII6jKkfLFsefKFcpCkDA7L8APVumdFZHXtC2Iy1M/gXqdfPX+YbHxIGdDXBKSsEg84RJfj+yVbtQhCK+SdFwWQK/JdpYv270O1HDrNznZu96HuUB4sPLGmP8jHtkVvSrwoCDhS6Vx3ie+ZM5l2xhQdtX1Pzoq7+qvxnPJ9ghHJLj/nmAXHNn05LpGA1ur7PuKuxoyas51W6UUISIePODqWAD5bNrxqu40OZN8VxInmzQW47+/mr26r33zccYMtDg8CsHEhmk8R9UteN4HINo0Wj+pN0qEkGfRLNzA7XPOOtqXdG9zG643diFK2xQCgYSl0KC0sc0paILj4as/mmE+kdMDpdb/znN8ZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QPLsUlorFNB+avibmH2dRN/Zt961mExA+Vu8/Ka2KryFKicxO+k9Mq4GFUTo?=
 =?us-ascii?Q?0MXrhK4xyYjH/Nv3a31cI14jv/Ogx7Czs5ckzEwiovbriOpE8f5LpoY2BJwD?=
 =?us-ascii?Q?yusfaiA5lRJig73PrcX3MVax9UypI9Az4tunzb0USK6CVZK1/rLz/6Qq4kye?=
 =?us-ascii?Q?JG4X6ujC/8m805mUWcsGJUQtNW5XgrkspeuUzcdK6DGLF8NBMJWgPrqbS4Xg?=
 =?us-ascii?Q?RDuAQOHpSqB0BV59Lb1S5iBZzpZe3LH5EBsxdLjCtnrwJS1kpCrSnbdTTa9z?=
 =?us-ascii?Q?pf61TRtY5k6ST83hdhGSN67AX5obchWu0I3Q2OSXRK6X6g3TZykVyAiBSchf?=
 =?us-ascii?Q?v6OJjejdblV+cqbfKD5ct/z2ytOMi3KUYt2TEwpTQZAgdyUtewCi504gk6ES?=
 =?us-ascii?Q?qMtupsRN12GhPgSWSWigmTk84GmEyDWd7ERh1oaOSCZjIdHhI3nt87cJnXLc?=
 =?us-ascii?Q?3yThYET28a8OkoHjTvqgrhIaasDk9QNxurjySsnQB3WiysWwW3TrMyHdW+IB?=
 =?us-ascii?Q?C1De1mGdFeUrdwf7CNnYZUUFaf2WkHqRMVvkOkOrrzIY+QVqOy482fksjk5y?=
 =?us-ascii?Q?PytyKZlcuqlRlzup1BvGhlT2+IwTQ7Lo4BayFLh4Teo7aFPKcBdKBqDGquiQ?=
 =?us-ascii?Q?3UC/Ci9djikxgOwXu7OgVG0uF6a2mHFNBz5Kxg7dMm2vfZ6Ua4nUFSQ0wbhg?=
 =?us-ascii?Q?ESMFwFgQlS11jQI7DNjYfbxYPH/e66ACCWogy19gV0pr63ealsdF3CQ6CVKY?=
 =?us-ascii?Q?0/IhRfko4Uoo5MwVw55GCkyyEfBBmgK8Xt/aDu0mej57f6RYElRUW1Tioc5B?=
 =?us-ascii?Q?gpBVm5utFDEVY2YlRx+h/jeif/maoyk6evN03NIWOK3eqTWbRt8Up0bni64e?=
 =?us-ascii?Q?pgU2d/D88P7NwsClzjRdhPrwszvUdjr9KSzkVYDXCsGwsggFx1sirReBFHLN?=
 =?us-ascii?Q?P/WFDrfCIMBLpVjaBfaDmd0Hiy4C97XD8O1GClSQeBK9BtMkGNutP6GRH0to?=
 =?us-ascii?Q?cgZXeM41sqxe/T2BIYFHuoErJPv9KRWcrQ4yNcRhlKJglVKe/9d2Uptv2vYu?=
 =?us-ascii?Q?kBn+q9GuJn0kaYEz8ESWKzAFHtYYrwRe0wdZuke5Q6wmrrFC8vH+QudlLzni?=
 =?us-ascii?Q?Kd4Xmm9ctO6Q8CialWwzHwZrHc9kxeC/p5La+hiIKUNoIMGO392dxukP1pvQ?=
 =?us-ascii?Q?zfycDpRz4Au++iC9uTO3Bp/++NnuvLe+iqfotbN4cLzwczFwMMHwvkf9qSsH?=
 =?us-ascii?Q?kH4MRqkTOD4r48hj6XvmPKEHiXwI08c3cc3lVr783JeOwus3mN8BPcW42BcV?=
 =?us-ascii?Q?8lVlGnrwnOP4HxJILJ9ZzLGEjrACu2gDzWGTxtTvp1xPpv7nYw7FdO18UAr/?=
 =?us-ascii?Q?dErAabWIUaye3reyF4955c58xdeQXz6eKwOanIwyywBcAfgqx8CGyiHdY2P9?=
 =?us-ascii?Q?RLDk76VcXlkMMMCO7yjMbID0Uz+pfCMtcgw84PmDxYnjVS98qiDTHWPOeGyV?=
 =?us-ascii?Q?oDS11I2vbQ0HdHj353kjW2fnpH++BMXKTrYG/sEuyOjZn3uvrFRceFk2yklG?=
 =?us-ascii?Q?dmtFxkpuMbCLv3Wu/1ay/gwsfNPnmqTTwj7Mgb1Brcd4QpU7tZ9p5BMfG/y1?=
 =?us-ascii?Q?Kokx0+kFLy3epGHBbqvCiTjgFplxO3eec3+2/BGff041frQIwRN8n67uFZlR?=
 =?us-ascii?Q?5E7qkEeEFl6w9B1GDG83oDtK9gYCh20EcXaXQH448Piy1EbKjheiJH7QrXaH?=
 =?us-ascii?Q?FakJ8b0CpQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: TECYTzAGurrudRiMYC4Z9WX0ajOfQ3XCUgHgneqtn8tPvPLkuhBFPSm3ra5yJzZff/5vHsx3gITaUdP+z6lNCkT+1XvYZ3wd5spjzB67hgWXc1BuJifgPjuSg1/7CKc7lT/32S/Y+wDfQ9yj2nXhun705ar0ciPa12NyaUTctl2nu7H6hBS5EV1WGIPyIhYvplMxBdqR1ZN9CdSZB7KnAGzS+b1zHOJNFyMkh/r23Zyxj1YY1RcmxIPa58oE4cUtN4wAszfEMeTH7jPU4Zr+Gm3xW+5YoGmErsX+wOrSS+Qc35zx6WNZAQFGPFSq0gFtz5692jukC484cz/xm82dIg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ca03b50d-36d4-474a-c9e7-08deacea11e8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 10:10:45.7754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TiUldmLCEvGYN2OasDoOQgvQNsAowv1enYINUuCUSbcBrABzqOcSUE+IFKpIGMFtlbHJ8buXftFQ/y80AQMCBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6158
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 3894A4F4CEB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,live:email,01.org:url];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.997];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi CI team,

could you forward this patchset for getting a full test coverage?

The BAT failure is unrelated to the changes, see below.

On Thu, May 07, 2026 at 10:58:10AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/ddi: Fix cleanup after DP connector init failure
> URL   : https://patchwork.freedesktop.org/series/166105/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18438 -> Patchwork_166105v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_166105v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_166105v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html
> 
> Participating hosts (42 -> 40)
> ------------------------------
> 
>   Missing    (2): bat-dg2-13 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_166105v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - bat-mtlp-9:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/bat-mtlp-9/igt@i915_selftest@live@gt_lrc.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/bat-mtlp-9/igt@i915_selftest@live@gt_lrc.html

The changes in the patchset affect only error scenarios during DP/HDMI
connector registration, however there wasn't any such error occuring in
the above test run: both in the PASS and INCOMPLETE case
eDP-1/DP-1..5/HDMI-A-1 are registered without any errors.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_166105v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-dg2-8:          [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/bat-dg2-8/igt@i915_selftest@live.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/bat-dg2-8/igt@i915_selftest@live.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18438 -> Patchwork_166105v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18438: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8899: 3e5747e536f148bf232049e49a00e2b683f91a83 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_166105v1: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html
