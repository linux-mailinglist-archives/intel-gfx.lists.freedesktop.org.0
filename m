Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP5xNHADn2mZYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:13:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBED1988D6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:13:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A402110E89A;
	Wed, 25 Feb 2026 14:13:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY6SIwhI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B1A10E88F;
 Wed, 25 Feb 2026 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772028780; x=1803564780;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=8jvzvzMTLTMzxlE5fBEK3QP/nIShzL7TqGR+158+vFY=;
 b=WY6SIwhI6Q84CNIFmDwmnrKRxJXUv8VuUSiTnXTeDW0yqY1AVU35am4Y
 I8hSZLN3i7CMnSa4Gdeo1BMG8vFXkf+8ipN71F/T5H3SKjdRQ2EUfRcjv
 Fj2tpVONhphw6KKcN47vB/0RU13RT7V0Ql15J6gd4qoH7hxHQA6gX0Ls8
 PHlvIhoi+57d05+cCcP9Zb7W7NgtW68UBkZ/W8lFDUspqkbE0AY44IHze
 +hheWoIR6Ka2FLkykGEEUSiw9rvA1o+ZO26y3X0gf4nOhiLlL4R2Q4DO4
 Y240r0SHz1QeTfFNB6abjWut1dIUfImkRTPm9+orqJfxnet3Uf3EU26jc w==;
X-CSE-ConnectionGUID: 3EgBRLsISCqkTsKz1jYHfg==
X-CSE-MsgGUID: zEZ1OztlTqm0m+Imfr78RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="75672923"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="75672923"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:13:00 -0800
X-CSE-ConnectionGUID: wTXvcJZiQxyhenGAKZEUrQ==
X-CSE-MsgGUID: W8gGSmWZQmuKXgAeKWuBjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="219651491"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:13:00 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 06:12:59 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 06:12:59 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 06:12:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ULE31UNbxGXCAuxr6AF1VxkzdMOfQDOeekGIWCg8yynnizRaiBHx+df/zst3klwpmr9Xezbllni7vE8inMKiqZRA1XrAyiLEidivib0St83tG2oH3qNbWpi52jhleTi2PxYBMHz/MA+QnEQz1WBS9J6nRwQ10wen+m/Ky4EC2Uhnj7B00X45uA7oKfnWnEgozGoB5Q4eVp/zkZuiCT6sM07Y3NZYEyPdwMR7VXbOKDw8JYfY2I+9prDllFZjCZHeGxLvT9hIIUchpg9uukM/giDK3ultmTDyqLoDanSctAn3gR/JwqD/6Ie37nH2U8YmRh6KlEhSx3EKo3h6DlZzaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h5NnB9NhFqhz9ktDRddMPNnIB54Wj/730cnxjYq9S9k=;
 b=JPCKa9927ignPylzuwTYvfFg67l8SxYxdYkzpiG3eGbabEYeDHsEKkNXE0VOkoWjA7AWuBfEGyQR52JYmFEbJPcu9phtkVUR2YXzLni9BZzG9R2/EQHtOejFA7fyYsHgwHOr9dzN5twt033xHqjedbDEMu8+8pURCTJF2z68olZLfIAMHTGviwUvge06yVMBmGPmbCIFhBfTtHdpvxsf9w0aEjYsAyVoZdE022866fAcD1cAapS057a9AGXbmQc+XHnmu9WN9oNqwyym+ke9PRmIXDQCCk8W/qKUItuA5wkpgw1ilrEJoqYVluqwLKo9Fi66HCPTv5goCWAfgR2UFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4690.namprd11.prod.outlook.com (2603:10b6:5:2ae::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 14:12:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 14:12:54 +0000
Date: Wed, 25 Feb 2026 16:12:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/dp_tunnel: Preparation for UHBR DP tunnels
Message-ID: <aZ8DXCI2CA0KkWUM@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <177154955056.267888.13314629353167953994@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177154955056.267888.13314629353167953994@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DD92.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6d9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4690:EE_
X-MS-Office365-Filtering-Correlation-Id: dce6e1c1-8299-4628-8ea6-08de7477f5ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 4N5CLZtWMBl4mKhJr58gfmZKM3UlZsgqjSSw5yx1200DZgtP99jnWBBGww3xz06wvWq0t5FnVKRioEHZ+taDJjc14O1AgZQcqBAHlsapXBGFQa/1xi3OJLXcz9dHa77t+FsgU+vNG4udSHH7Hd5H1VWT5RnJg1PqUkbS7VkGa2LhHkhgUT72qxo6mniWgeGJBOGY4/GvhvwTyjm+JxS7rCU0EOqLncojE/TufRczHCgmlHJvgsW95MIQi5WJIM4Ihobpb3ZUCYEROGHLpd/gUNE/r60K1Mt2bYpywWxCyAd13O7HXnPnVKsylaxn0xxDLdg7u5enh/OvPkHLf4yPHwJdkwSwXq/Z2gkP0FHQKPADEwTT7P0+StGkxZHquxhKK0BQg4V34YB/sU7glhfDoBeEBJBAWmXpKo37MHRDMKSbHSl32z/CPowAfuoRBGzbOMxDQaPVCTPD1ZiTp7Ka39o1q+jF4BJa7yaFTLbfVHwGJd7cKF/BWNpBo/PoBXBB8MIvslVU3IuD219qR6byto7CvKpP54aOecDKLVgFeBFfpqrJl4y3bbn2LKpTSBPP/pB/hdnwNogE1iUjJpU4LKTbK8KuG+uakJQ86iqSNGWNNT0i9bmGoFUFjqkhrd44zmRUqPp1pvehK5PBA1P6395sWTXn1QxPQnHVYndtDQ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3wtaodVKts9O98zgzQmMU3luXUpqCtj1T4ANXiNFuRsmswbQjvoDljsLqjSQ?=
 =?us-ascii?Q?YXOcE7lOR5lkCyt+io/0P8h/kGiauqOezL9htAHc7hFUATIbGhghixKaf/5b?=
 =?us-ascii?Q?DxYg1ltLcaV2ecgVue1LT3tE3Ii6oabSTzFjetQvRjOyFwZX4dMtjPG+0HMY?=
 =?us-ascii?Q?Z10Br2x+7QZacnCSrpNeIGCDdy/WRYN2kml0wm73AiY+NQ7Zq9I/sBmvrxun?=
 =?us-ascii?Q?MwICeihTzfmUD5kDGnCvFNoP4CmWeb2TsZHYljdEbpavuGhVw2kqB6oZRqI4?=
 =?us-ascii?Q?/A9Ghuu4NeYqp7VRisT1aZiZ3CPc6fhfocx26TkQvPI0XY692V96WDtiaXr5?=
 =?us-ascii?Q?H3MQUWesdi26h2K1Z8noRgoUNHCSUau1w2Ul8Ms7yhK1EBKB/9xn+H32ENzY?=
 =?us-ascii?Q?sIzpeHr1doKn+k4Mfo9zDqVo9LwWoZwbye++s7b1uHte2WuM1bCgFaDt+5JH?=
 =?us-ascii?Q?RUjtAangYnToHKBeUeVPgf1qNBs9bew8e2Y6IKuarexrAd/6A59cnGuTuNun?=
 =?us-ascii?Q?EtvxOKY0aMdILwm6tswuwBeg1BEkOIZJeVw1/kG3YGrLYPnz+k3r2Ai/JdW9?=
 =?us-ascii?Q?g2i1DK+Lx1Vby4E7Ut70VaWt9NljWbllTVu6SUQyQhkXHtMhjxDWJvQPuLZf?=
 =?us-ascii?Q?VS4ned4iln7aT1p0r/59EC4G3M/AHmdWwzlXTDBbCk4p4RatSzvTBl0UmIp2?=
 =?us-ascii?Q?6xGG1jhMCgWN/TQdMIgdyczXbR33lz0N4YMEHncxRyO/SCRzpt5ZEO+/XKkQ?=
 =?us-ascii?Q?GW1cOvsJWYNdwMsOV/7Fd18t7WGFbk2rPvkcooEg6LyKfVNfz2GKyG90YvwZ?=
 =?us-ascii?Q?9DSVEahlF/tiqYRkOxWYk1po9iPhrHcT8a8DCTKMm5zFI8/nqF3+yIBFkWET?=
 =?us-ascii?Q?r6coD7MeDjQ9OglMYTNKLIcS94JML3SIFpthKpJFaGbc54EwoT5zmsX2z2oa?=
 =?us-ascii?Q?/3o+sepTXcD7cENsixglwffAWUFk6w2+06kFQyHeAIYsEn4CisKJfFenOhGl?=
 =?us-ascii?Q?IJTNya9h8/mDivVwG2kmUGeLsQXhVXn45KIREVHcSwoyNn+FlXMqn9rK7dyy?=
 =?us-ascii?Q?A9m9LUelRKz47vWPTeUWY2HWBL8xizbWgnj7lwMvNjX7Sbm6EhWHwaWpZc44?=
 =?us-ascii?Q?ngdiNBWdtmMudUhDba5vAP+kKfxEg/pZXx524klLJarHrqLqNte/y6qpAARs?=
 =?us-ascii?Q?3JDitR6gBuX6YBJva3uXV03bN8+xgF8w9PH+gQkyjdGSpSjENdisQAvVHaOs?=
 =?us-ascii?Q?nXpbsNiPkBJdFLO3Z4URhpYY6gt8PXdiYu93zAzvSANSI9b7RUrcoBCPnfqO?=
 =?us-ascii?Q?7Hf3tUKuCkWQ2n0Mt7ldb0moMkZjztbzZk1AlN0JOQuEswnxtWjVhuyyBfbP?=
 =?us-ascii?Q?vTyfXaStbJHl5Gf/KyohGj5pbVYHUt7ZdFBOCWKcdkjOWUWTYSU5ImKFhjeE?=
 =?us-ascii?Q?fSMBey8rSjCn87/2Fii6eHKiLHvSrscOhEPswQOOAZwE+v7m5Zm8TAf9eK1s?=
 =?us-ascii?Q?3w3JCDdluP37oq7moApKoptbhfj3hclKNJHn6RrgnKLmKwQCv+fu0TIjSSE+?=
 =?us-ascii?Q?mrr+p0Q3zWmy/lKnwYTQLqiW0R4Q1O7V4dnpRzJAYllbShxUaKlpaoZFoYoF?=
 =?us-ascii?Q?ZrSHG0NG1MeZ2zkVQ3scJH9YkdbanB6dRpBkZFS/WjSrBY7D48sgUsoQOGkb?=
 =?us-ascii?Q?VKq/e1/Km5cUIFhvPdin1dslbd+JJytIO+tzMoIfGr+gKr2pCRF0lvGE6tCo?=
 =?us-ascii?Q?DU4nLm/HnA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dce6e1c1-8299-4628-8ea6-08de7477f5ee
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 14:12:54.0773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yzvwRmv3YQOLIFn9+DW0DtWPTESo5JFa0aCT7+GavwUzpNx55ZgXpN5bszcdUagBMj8TuEg9E4fEnX0Z0Z5oCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4690
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7EBED1988D6
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 01:05:50AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_tunnel: Preparation for UHBR DP tunnels
> URL   : https://patchwork.freedesktop.org/series/161849/
> State : failure

Thanks for the review, the pachset is pushed to drm-intel-next.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18007_full -> Patchwork_161849v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_161849v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_161849v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_161849v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@create:
>     - shard-mtlp:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-mtlp-2/igt@gem_eio@create.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-mtlp-1/igt@gem_eio@create.html

There's no sink connected via a DP tunnel, so the changes in the
patchset don't make a difference on this host.

Without a pstore log my best guess is that network connection is lost in
the middle of the test.

>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-tglu:         [PASS][3] -> [ABORT][4] +1 other test abort
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-tglu-2/igt@kms_vblank@ts-continuation-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-2/igt@kms_vblank@ts-continuation-suspend.html

This is an issue in the Thunderbolt driver:
<4> [279.105747] thunderbolt 0000:00:0d.3: RX ring 0 already stopped
<4> [279.105751] WARNING: drivers/thunderbolt/nhi.c:780 at tb_ring_stop+0x9a/0x210 [thunderbolt], CPU#2: kworker/u32:12/2157
...
<4> [279.105948] RIP: 0010:tb_ring_stop+0xa3/0x210 [thunderbolt]

but still unrelated to the changes, since it's a different driver and
there's no DP tunnel sink on this host either.

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18007_full and Patchwork_161849v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.45] s
> 
>   * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.31] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_161849v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#7697]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#13008])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][11] ([i915#12392] / [i915#13356])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#6335])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][13] ([i915#13356]) +1 other test incomplete
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#8555])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_eio@reset-stress@bsd:
>     - shard-snb:          NOTRUN -> [FAIL][15] ([i915#8898]) +1 other test fail
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-snb4/igt@gem_eio@reset-stress@bsd.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#4525]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#5107])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#3281]) +11 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3281])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#14544] / [i915#3281]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@in-order:
>     - shard-snb:          NOTRUN -> [SKIP][22] +22 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-snb4/igt@gem_exec_schedule@in-order.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4860])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4613]) +3 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][26] ([i915#4613])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk1/igt@gem_lmem_swapping@random-engines.html
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#14544] / [i915#4613])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#14544] / [i915#3282]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3282]) +5 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3282])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#13717])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#5190] / [i915#8428])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#15656])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#3297])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#3297])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#2527]) +3 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#2527] / [i915#2856]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#14544] / [i915#2527])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
>     - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#2527] / [i915#2856])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#6590]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [PASS][41] -> [INCOMPLETE][42] ([i915#13356])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#7984])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#5723])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][45] ([i915#4817])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html
>     - shard-glk:          NOTRUN -> [INCOMPLETE][46] ([i915#4817])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk1/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-dg2:          [PASS][47] -> [FAIL][48] ([i915#15285])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-5/igt@kms_async_flips@async-flip-suspend-resume.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html
>     - shard-glk:          NOTRUN -> [INCOMPLETE][49] ([i915#12761]) +1 other test incomplete
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk9/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][50] ([i915#15285])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume@pipe-b-dp-3.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][51] -> [FAIL][52] ([i915#5956])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#1769] / [i915#3555])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][54] ([i915#5956])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#5286])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#5286]) +5 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#5286])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#14544] / [i915#5286])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [PASS][59] -> [FAIL][60] ([i915#5138])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3638]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3828]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][63] +2 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4538] / [i915#5190])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#6095]) +29 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#12313])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#6095]) +223 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#12313]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#10307] / [i915#6095]) +140 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#6095]) +104 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#6095]) +56 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#14544] / [i915#6095]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#6095]) +14 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#14098] / [i915#6095]) +71 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk10:        NOTRUN -> [SKIP][76] +76 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3742])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#13781]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#14544] / [i915#3742])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#3742])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_audio@dp-audio-edid:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#11151] / [i915#7828])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_chamelium_audio@dp-audio-edid.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#11151] / [i915#7828]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [PASS][87] -> [SKIP][88] ([i915#12655] / [i915#3555])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-11/igt@kms_color@deep-color.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-7/igt@kms_color@deep-color.html
>     - shard-rkl:          [PASS][89] -> [SKIP][90] ([i915#12655] / [i915#3555])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_color@deep-color.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@invalid-ctm-matrix-sizes:
>     - shard-dg1:          [PASS][91] -> [DMESG-WARN][92] ([i915#4423]) +5 other tests dmesg-warn
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_color@invalid-ctm-matrix-sizes.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-13/igt@kms_color@invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#6944] / [i915#7118] / [i915#9424])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#7173]) +1 other test fail
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#6944])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#6944] / [i915#9424])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#15330] / [i915#3116])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#15330])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#6944] / [i915#9424])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#6944])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#13049]) +2 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42:
>     - shard-tglu:         [PASS][102] -> [FAIL][103] ([i915#13566]) +1 other test fail
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-tglu-4/igt@kms_cursor_crc@cursor-random-128x42.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3555]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3555])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#13049])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][107] ([i915#13566]) +3 other tests fail
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#3555])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][109] ([i915#12358] / [i915#14152] / [i915#7882])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk5/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][110] ([i915#12358] / [i915#14152])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][111] +18 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#13046] / [i915#5354])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#9067])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#4103])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9723])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#14544] / [i915#3555] / [i915#3804])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#1769] / [i915#3555] / [i915#3804])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#3804])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#14544] / [i915#3804])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#14544] / [i915#3555] / [i915#3840])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#3555] / [i915#3840])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#3555] / [i915#3840])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3840] / [i915#9053])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [PASS][124] -> [FAIL][125] ([i915#4767])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#9934]) +6 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#3637] / [i915#9934])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#9934])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
>     - shard-rkl:          [PASS][131] -> [INCOMPLETE][132] ([i915#6113])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#15643])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#15643])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#15643]) +3 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#1825]) +43 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#14544] / [i915#15102])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#15102] / [i915#3458]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5354]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] +12 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#15102]) +5 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#15102]) +8 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#5439])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#9766])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#15104])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#15102]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-glk:          NOTRUN -> [SKIP][148] +121 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#8708]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][150] +11 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#14544] / [i915#1825]) +5 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#15102] / [i915#3023]) +18 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#3555] / [i915#8228]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#3555] / [i915#8228])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-7/igt@kms_hdr@invalid-metadata-sizes.html
>     - shard-rkl:          [PASS][156] -> [SKIP][157] ([i915#3555] / [i915#8228])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#15459])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#14544] / [i915#15459])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#15459])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#15638])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#6301])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [PASS][163] -> [INCOMPLETE][164] ([i915#12756] / [i915#13476])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][165] ([i915#13476])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#14544] / [i915#14712])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#14712])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#15709]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15608]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#15608]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-7.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][171] ([i915#13026]) +1 other test incomplete
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-rkl:          [PASS][172] -> [ABORT][173] ([i915#15132]) +1 other test abort
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#13958] / [i915#14544])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#13958])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#13958])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#6953] / [i915#9423])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#14544] / [i915#15329] / [i915#3555])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#15329] / [i915#3555])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#14544] / [i915#15329]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#15329]) +3 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#15329]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#5354])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#8430])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#15073]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][188] -> [SKIP][189] ([i915#15073])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#15073])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg1:          [PASS][191] -> [SKIP][192] ([i915#15073]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#15403])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4077])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#11520]) +10 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#11520]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
>     - shard-glk:          NOTRUN -> [SKIP][197] ([i915#11520]) +2 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11520]) +2 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][199] ([i915#11520]) +4 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk10/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#11520] / [i915#14544]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#11520])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#9732]) +4 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@pr-cursor-render:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_psr@pr-cursor-render.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#9732]) +5 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#5289])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#5190])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglu-1:       NOTRUN -> [SKIP][209] ([i915#5289])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#12755])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu-1:       NOTRUN -> [ABORT][211] ([i915#13179]) +1 other test abort
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#14544] / [i915#3555])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#3555]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk10:        NOTRUN -> [FAIL][214] ([i915#10959])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk10/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#15243] / [i915#3555])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#11920])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#9906])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-8/igt@kms_vrr@max-min.html
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#14544] / [i915#9906])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_vrr@max-min.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#2435])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@event-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#14544]) +1 other test skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@perf_pmu@event-wait.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglu-1:       NOTRUN -> [FAIL][221] ([i915#14433])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3291] / [i915#3708]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3708]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-8/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][224] ([i915#12910]) +9 other tests fail
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#9917])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][226] ([i915#12392] / [i915#13356]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [INCOMPLETE][228] ([i915#13356]) -> [PASS][229] +1 other test pass
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][230] ([i915#13729] / [i915#13821]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-snb7/igt@i915_pm_rps@reset.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-rkl:          [INCOMPLETE][232] ([i915#4817]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@i915_suspend@debugfs-reader.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [ABORT][234] ([i915#15140]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-c-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][236] ([i915#12761]) -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-c-hdmi-a-2.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][238] ([i915#5138]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][240] ([i915#12358] / [i915#14152]) -> [PASS][241] +1 other test pass
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_edge_walk@64x64-top-bottom:
>     - shard-dg1:          [DMESG-WARN][242] ([i915#4423]) -> [PASS][243] +1 other test pass
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-16/igt@kms_cursor_edge_walk@64x64-top-bottom.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-18/igt@kms_cursor_edge_walk@64x64-top-bottom.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][244] ([i915#15588] / [i915#2346]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][246] ([i915#9878]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [TIMEOUT][248] ([i915#14033] / [i915#14350]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][250] ([i915#14033]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-dg2:          [FAIL][252] ([i915#15389] / [i915#6880]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][254] ([i915#3555] / [i915#8228]) -> [PASS][255] +1 other test pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][256] ([i915#3555] / [i915#8228]) -> [PASS][257] +1 other test pass
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-5/igt@kms_hdr@static-swap.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          [SKIP][258] ([i915#15459]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-5/igt@kms_joiner@basic-force-big-joiner.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [SKIP][260] ([i915#15073]) -> [PASS][261] +2 other tests pass
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_pm_rpm@dpms-lpsp.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [FAIL][262] ([i915#4349]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][264] ([i915#4349]) -> [PASS][265] +4 other tests pass
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#6230]) -> [SKIP][267] ([i915#6230])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@api_intel_bb@crc32.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@api_intel_bb@crc32.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          [SKIP][268] ([i915#14544] / [i915#280]) -> [SKIP][269] ([i915#280])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          [SKIP][270] ([i915#4525]) -> [SKIP][271] ([i915#14544] / [i915#4525]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@gem_exec_balancer@parallel-out-fence.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#6334]) -> [SKIP][273] ([i915#6334]) +1 other test skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          [SKIP][274] ([i915#14544] / [i915#3281]) -> [SKIP][275] ([i915#3281]) +3 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-rkl:          [SKIP][276] ([i915#3281]) -> [SKIP][277] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@gem_exec_reloc@basic-wc-active.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          [SKIP][278] ([i915#14544] / [i915#4613]) -> [SKIP][279] ([i915#4613])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][280] ([i915#4613]) -> [SKIP][281] ([i915#14544] / [i915#4613]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#3282]) -> [SKIP][283] ([i915#3282]) +1 other test skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          [SKIP][284] ([i915#3282]) -> [SKIP][285] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#3297]) -> [SKIP][287] ([i915#3297]) +1 other test skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-rkl:          [SKIP][288] ([i915#2527]) -> [SKIP][289] ([i915#14544] / [i915#2527])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@gen9_exec_parse@bb-start-cmd.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][290] ([i915#14544] / [i915#2527]) -> [SKIP][291] ([i915#2527]) +1 other test skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          [SKIP][292] ([i915#8399]) -> [SKIP][293] ([i915#14544] / [i915#8399])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][294] ([i915#1769] / [i915#3555]) -> [SKIP][295] ([i915#14544] / [i915#1769] / [i915#3555])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][296] ([i915#5286]) -> [SKIP][297] ([i915#14544] / [i915#5286]) +3 other tests skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#5286]) -> [SKIP][299] ([i915#5286]) +2 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#3638]) -> [SKIP][301] ([i915#3638]) +2 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][302] ([i915#3638]) -> [SKIP][303] ([i915#14544] / [i915#3638]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#6095]) -> [SKIP][305] ([i915#6095]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-a-hdmi-a-2.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs:
>     - shard-dg1:          [SKIP][306] ([i915#4423] / [i915#6095]) -> [SKIP][307] ([i915#6095])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-16/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-13/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][308] ([i915#14098] / [i915#6095]) -> [SKIP][309] ([i915#14098] / [i915#14544] / [i915#6095]) +11 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][310] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][311] ([i915#14098] / [i915#6095]) +7 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][312] ([i915#12805]) -> [SKIP][313] ([i915#12805] / [i915#14544])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][314] ([i915#6095]) -> [SKIP][315] ([i915#14544] / [i915#6095]) +10 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-rkl:          [SKIP][316] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][317] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
>     - shard-rkl:          [SKIP][318] ([i915#11151] / [i915#7828]) -> [SKIP][319] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][320] ([i915#6944] / [i915#7118] / [i915#9424]) -> [FAIL][321] ([i915#7173]) +1 other test fail
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
>     - shard-rkl:          [SKIP][322] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][323] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-dg2:          [FAIL][324] ([i915#7173]) -> [SKIP][325] ([i915#6944]) +1 other test skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-7/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][326] ([i915#15330]) -> [SKIP][327] ([i915#14544] / [i915#15330])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][329] ([i915#15330] / [i915#3116])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][330] ([i915#14544] / [i915#6944]) -> [SKIP][331] ([i915#6944])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_content_protection@lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][332] ([i915#6944] / [i915#9424]) -> [SKIP][333] ([i915#14544] / [i915#6944] / [i915#9424])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_content_protection@lic-type-1.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][334] ([i915#4423] / [i915#6944] / [i915#9424]) -> [SKIP][335] ([i915#6944] / [i915#9424])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_content_protection@mei-interface.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#3555]) -> [SKIP][337] ([i915#3555]) +1 other test skip
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-rkl:          [SKIP][338] ([i915#3555]) -> [SKIP][339] ([i915#14544] / [i915#3555])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          [SKIP][340] ([i915#13049]) -> [SKIP][341] ([i915#13049] / [i915#14544]) +2 other tests skip
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][342] ([i915#14544]) -> [SKIP][343] +6 other tests skip
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          [SKIP][344] ([i915#4103]) -> [SKIP][345] ([i915#14544] / [i915#4103])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          [SKIP][346] ([i915#13748] / [i915#14544]) -> [SKIP][347] ([i915#13748])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][348] ([i915#3840]) -> [SKIP][349] ([i915#14544] / [i915#3840])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#9934]) -> [SKIP][351] ([i915#9934])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_flip@2x-plain-flip-fb-recreate.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-rkl:          [SKIP][352] ([i915#9934]) -> [SKIP][353] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#15643]) -> [SKIP][355] ([i915#15643]) +2 other tests skip
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][356] ([i915#15643]) -> [SKIP][357] ([i915#14544] / [i915#15643]) +2 other tests skip
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-rkl:          [SKIP][358] ([i915#1825]) -> [SKIP][359] ([i915#14544] / [i915#1825]) +18 other tests skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][360] ([i915#15104]) -> [SKIP][361] ([i915#15104] / [i915#4423])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][362] ([i915#15102]) -> [SKIP][363] ([i915#14544] / [i915#15102]) +1 other test skip
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][365] ([i915#15102] / [i915#3023]) +9 other tests skip
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [SKIP][366] ([i915#15102] / [i915#3458]) -> [SKIP][367] ([i915#10433] / [i915#15102] / [i915#3458])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][368] -> [SKIP][369] ([i915#14544]) +15 other tests skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#1825]) -> [SKIP][371] ([i915#1825]) +11 other tests skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-dg1:          [SKIP][372] ([i915#4423]) -> [SKIP][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#15102]) -> [SKIP][375] ([i915#15102]) +1 other test skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][376] ([i915#15102] / [i915#3023]) -> [SKIP][377] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][378] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][379] ([i915#15102] / [i915#3458]) +4 other tests skip
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][380] ([i915#12713]) -> [SKIP][381] ([i915#1187] / [i915#12713])
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_hdr@brightness-with-hdr.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#15458]) -> [SKIP][383] ([i915#15458]) +1 other test skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][384] ([i915#15709]) -> [SKIP][385] ([i915#14544] / [i915#15709]) +1 other test skip
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#15709]) -> [SKIP][387] ([i915#15709]) +2 other tests skip
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-modifier.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_plane@pixel-format-yf-tiled-modifier.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          [SKIP][388] ([i915#13958]) -> [SKIP][389] ([i915#13958] / [i915#14544])
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][390] ([i915#15329]) -> [SKIP][391] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][392] ([i915#5354]) -> [SKIP][393] ([i915#14544] / [i915#5354])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#9685]) -> [SKIP][395] ([i915#9685])
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-7/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][396] ([i915#15073]) -> [SKIP][397] ([i915#14544] / [i915#15073])
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][398] ([i915#11520]) -> [SKIP][399] ([i915#11520] / [i915#14544]) +4 other tests skip
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][400] ([i915#11520] / [i915#14544]) -> [SKIP][401] ([i915#11520]) +2 other tests skip
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][402] ([i915#9683]) -> [SKIP][403] ([i915#14544] / [i915#9683])
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][404] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][405] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-cursor-render:
>     - shard-dg1:          [SKIP][406] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][407] ([i915#1072] / [i915#9732])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_psr@pr-cursor-render.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-14/igt@kms_psr@pr-cursor-render.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-dg1:          [SKIP][408] ([i915#1072] / [i915#9732]) -> [SKIP][409] ([i915#1072] / [i915#4423] / [i915#9732])
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-15/igt@kms_psr@psr-sprite-mmap-cpu.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-12/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          [SKIP][410] ([i915#1072] / [i915#9732]) -> [SKIP][411] ([i915#1072] / [i915#14544] / [i915#9732]) +10 other tests skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_psr@psr2-suspend.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          [SKIP][412] ([i915#9685]) -> [SKIP][413] ([i915#14544] / [i915#9685])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          [SKIP][414] ([i915#4423] / [i915#5289]) -> [SKIP][415] ([i915#5289])
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-dg1-14/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          [SKIP][416] ([i915#14544] / [i915#9906]) -> [SKIP][417] ([i915#9906])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][418] ([i915#3708]) -> [SKIP][419] ([i915#14544] / [i915#3708])
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][420] ([i915#9917]) -> [SKIP][421] ([i915#14544] / [i915#9917])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15285]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15285
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15588
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18007 -> Patchwork_161849v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18007: cc2c646d39200973cc76d0fa0851d73c9636c27c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8762: d3c67e0f1fa76ac3d71095825bbc9df0d307e4fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_161849v1: cc2c646d39200973cc76d0fa0851d73c9636c27c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/index.html
