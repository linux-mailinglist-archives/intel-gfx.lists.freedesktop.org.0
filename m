Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLv/Hdb3FmrUywcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:55:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2325E5648
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6885910E822;
	Wed, 27 May 2026 13:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zi2JEvNY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AB110E841;
 Wed, 27 May 2026 13:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890132; x=1811426132;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=+NM0jaDS18Kltx0gGStGQK7xrKmHK3RBe60D329YnEM=;
 b=Zi2JEvNYEZ7b/gLdZ6okY9WJNpvUip5iIChehOKW7XxXoQJR/DG4jMXU
 iyDONoF4BsY1Bn1VsX9WxJpYvSc/dbbhkGzmdSy+LTRIE/DD2D67S8OTe
 2TEaWwdLGpaQmKMbUFlRujdH1XnXyz1QkJuqfzvmKuBDqh3/0QyS7U1zl
 9rpbwiKKi7ZV6excHB1FKh+mgpveci7w8SNTGa16UBG37dY2BrBfmm81i
 CH1Acq7Dxf/s/DxSa8kl+BfzC5ek81QH9083flR9dV0b2IW+n7TxurIxr
 yycDT1S5X8Y+9mbkfqAl4NqmzrvTqV+myW2/DDcU9khZ7IDujFX/mPj98 g==;
X-CSE-ConnectionGUID: xumVNv9rQMu3Q3VKF2uJ+w==
X-CSE-MsgGUID: wVHNpXGUS+uGdiQz73lArQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91824772"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="91824772"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:55:31 -0700
X-CSE-ConnectionGUID: L0XxttTPT+Cx/oxZKeQ7qw==
X-CSE-MsgGUID: 3C4ac3DkQ92d67as857Tqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="235873438"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:55:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:55:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 06:55:30 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:55:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wE1dL1x5tZYNgmNKNnEvqp27OF9BjXAPTwsRR6jUarIutKkgGIstr14ny8uNGV5cX1/D0bjp0d7zcW92Q4hyKwP6Nspm/+dSJ+6lH6a2F0N1159BFTeafc3nJ8qUNE4i2tU0ckegSK01X6faaCO8b2Ppo/rlA3frqVSGnv/6HcAqRbZidY1uwyqm4Kg3UQZAljHqQkM5h/X/oJVuG5ZTGMd8eJBLRjIdv75qs+E7U5uP9D7g8QTW6ynqpUuMYsnzYaTWgCJdgXFL8LrjBr0gWwUD17B4Qu8qC520M4uSXmzpRS0c4SYloMcz34zt/znbDtRPZnylB3lAv/dFUhD1FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGRQZb6fG91sy3ezEnR/usUoiKwANHDtHdyEY0CTJyk=;
 b=FkttamXmYZ9TdWPKseUfGKIxRVV3AkbNeQcbS2AG5COKJklEeqtdjS06iC/plkBv1ttKYvlq7N6GAPHdCZvnhF6JPHaR0rDRMiZlOQMCti8BxMdNzlBxt2XdJTDw6mvVqgHeGznGFnp9jTo8Yn2LGENfe7Dh4F3BE4OWK/r5L2FmzVnhD3xYlW9Sh3MJMD5U0iY1eZx8R3LH0C62wCHPs/Gkpvl3d2Mh9gh6d/IrQY2lX2iGaiDrUw+q4gv8CNhK43/y8godB+y4cLpfJy9+HfZLonAP+bWuYVxHKK6rgG7GYFRb3TwNCccJWinBV0k2GXT674MswyOcFtL2tuWLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Wed, 27 May
 2026 13:55:27 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 13:55:27 +0000
Date: Wed, 27 May 2026 16:55:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/power: add "runtime" to
 intel_display_power_{suspend,resume}() names
Message-ID: <ahb3yk6cLTc_RJRJ@ideak-desk.lan>
References: <cover.1779876087.git.jani.nikula@intel.com>
 <4a8ae520e3151d6cf5d9e9e3a452f620cf781ee5.1779876087.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4a8ae520e3151d6cf5d9e9e3a452f620cf781ee5.1779876087.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0004.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::9) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: 402ba20b-4578-431f-5375-08debbf79b7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|11063799006|6133799003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 1dFRAhvVQaZuUiYe+MRlcSRTyoWYmsRiNOyKNo6sDqPTdrJF/4sh9l+ZyaboqLUdnA0j8wUs2JnuLWlp7agec3P3LNBuy+O0rg3hrQAyzmLqrG2bP9EXavziwo312/IFhxYcxgwP29Pe7Lz7N9PqCWFkfjNUGHuLZFsTNdpPoB0hI0ycXb6k2r0/PljmxErDbQXH+evU3p1fdlOLrA2dnQU6f5SLqN7xQo7rcjetV5Ar6gK3BstH7O1wLEJVvus8mDFazjzNwmF6qun/8hFGSVc1e/7PlZh3ZsaUUs86/kzBdk4ZuiZ8XMf1MbYhbYwR3TkyT/Aio+XGmuP0anUIwgMzaZP1dIHM5+A9hhKLXcPT+VfiiHrDLqwsX8xh41NqLkX2i4v+w9po+vsc7feA/HKsKh5manxhCpMEHinRHLz/7AkF1Vq1o0jl3v/an4NMD8HEeinS/iNn09RR9hjIWbp2FUPBeS01595XIiHjawTI0U4lLhxIE8OLbIFeKOzL3cKzLj1vobFjqlLZu6RkqhOngwsZS1P0wq8JRhySB3a9EuRskkUqabpeq9pZrjQpxCVYEmWqtljVbgw4r1QugP8NlhI+WzEa9EbdxflNY6jaJaYXSBC14fck23/w2ijj8R1HjA2j3KXASjjf3ix5yBIuoa6xdnAaxon33mVzES92no/5PzDSx9hYp7PBSYpM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(11063799006)(6133799003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wTqfBgpzaK0y/M8g6JIe0cCMWYD+QerXQJTxeQZEF1073/x3xTHhvqoigJdl?=
 =?us-ascii?Q?KraRY18aNukGVOwfLBsP1Zu6ZpUH6eGC4FbzBvbz1yWKuSDn2D7OI2SRJ+OI?=
 =?us-ascii?Q?/Ec6s8/kdbz33uJYU9K8q2x3SV4yvppWvGpCFdFwONVMC6oU4EErwLchz7UK?=
 =?us-ascii?Q?jBbyGlw8JgBf2/+OeJTwpGdcW9tUX6cBGmePfh+FHnezpc2r4NNWt8dgrF31?=
 =?us-ascii?Q?NbN5JlaavDFVLFM1XWztyEW5sIMv3jiAyEOmJbIaZvg/qB7UnRhM34zUNolX?=
 =?us-ascii?Q?ZTd3Z19lL3b0h8PWC6cuH7LFRr7Cel8eG0fx/PyEkGvOMuqa6HCGCVX0oyW4?=
 =?us-ascii?Q?18V5TtkEtkPswyms7g0xCqOXg8TMfvT8VuFELbs2VX9PrXKt24HvToibdj34?=
 =?us-ascii?Q?QEDn6zpcB2HLHSvpU/IPqaitF34kt72y5xwomuxAVj24S9pxuEXO/HnOMSxA?=
 =?us-ascii?Q?uOjzOJmBmlqMWnfvEugtuNEEbOkIlFstu6QRHvpLeTS9s+C21/UzYKBvjaWd?=
 =?us-ascii?Q?njI0UCPUbPvnGUr2lS4C2zNL9nZDz1M5J2LRPtde6xabKol8di212+jG0RPr?=
 =?us-ascii?Q?kk3bHACAn9NI+/lGARxjtBqoC0zt6pH4OvQIWlncmJncTHxRMAIsr8w4tu43?=
 =?us-ascii?Q?/e8783cKPCZD9d0WY+qTlosod+jnpFGtidS039Y7+VjLKJzlGX2w2g43tgpn?=
 =?us-ascii?Q?GMYdC3vds7doGBQyV04KE/Rps6Ul4lcnORNU84iL2wXmSyMzn6+tk8xr8Bc1?=
 =?us-ascii?Q?3aTHeOuokDCDsMbN8i14oLpo68UQN5UQwMiUldeMIMnCbn5KgLcLOPDsR8y4?=
 =?us-ascii?Q?ocBlxxQMJ7cdRufcChaAOU5N5XgwSL8cBF2oD5sxuK79TMKxQss5GrQGYEzM?=
 =?us-ascii?Q?yPhvY7XpmVETHRzpujV3Gz23trH6w2a/twQf7WzIkTvryCJhKfAxx1wgWu65?=
 =?us-ascii?Q?jo1MhtLeJxwLdGV7NrARHQkp/TqTsVpB60mOd1DLFWITkXJ5Gcvvv5OP9DVn?=
 =?us-ascii?Q?a/q22X9Loe/RhR1c0heL8FX4i1QxmtTnyg4cXT5PiJ6GiqtjCpM6autANIwK?=
 =?us-ascii?Q?EbBqxrkFrUfZJbvBSPEQAbsNkyIKdCn2+2zWja9vj8pIiQd31Mgxk6NtDU3i?=
 =?us-ascii?Q?wg2wCBWPCNRydLkfEGZb6TPgoI4NK2glfQeRv7SZbGx22b+milf0OOnQ3kjB?=
 =?us-ascii?Q?n83svSfk8dyzWtIGmpbgxdtZ/JuJDnBo6Se/6F26J/oVNnH7bpMjtqcCa3OO?=
 =?us-ascii?Q?07pUpM2E1q9RlYtgSJm7hw/xutzkqU4ftHLhb1RYeudDRLfxKLJ57IIbF3NO?=
 =?us-ascii?Q?6xB0rH5OHq0NdEcmtyVzgR0Lzm6ajie7U3T6Fm02qT9vdUv5ZVJtrHLC1dQe?=
 =?us-ascii?Q?N3BwWLamij+20ARSPDGTMf3T3AL0rC9QF78T/4RdnkAU31CrI6REpkV1u1YN?=
 =?us-ascii?Q?2JNsgWdx+dHu35nbNgFHq5DvHG+1AbAw91dpKveLIKu3TwSmRacBfOyj+Brw?=
 =?us-ascii?Q?vLLcYQYcjv07SQ7wjdms6rTXnDFxFxC92tk7vRLkRo6f8DRj01clU1lb8T1c?=
 =?us-ascii?Q?A+FLWgSHuXN6TDLu164I3yl1xlnpxkfTNFTim9kxywszk9Y8EzU144bsmHKN?=
 =?us-ascii?Q?LgYbZO+JVaO3HLDbQceWxPHOh8pwY4EiYoHIOM0BFXP0oHvIGsQIW8y63LLo?=
 =?us-ascii?Q?5NqKLPeyIQ8mzUiFTUD1Lve4hqV8cnYR5Yg/6Z+n/Qf+SBddfutLDmnxk7Bq?=
 =?us-ascii?Q?wij+LvSB/g=3D=3D?=
X-Exchange-RoutingPolicyChecked: Y79pP9GghAJ7ZFii+LKJqvQUcUP6pRmE6/DsfCZY1YC+ADIqkSRxAqfeUUVv0leOtBQZcD7tADf89J+T7N5DhRGu19Ap+2VG3/JfR2coHe1ORrrW9LJuBDqDZQVirXUIkwpCRixtbJq+MGTbzBxMrgcNNxrsUUTqDSO92FsE9e3Qku7X5Zwl5DBgZgp8dFR8ImTvoJeUWQLDCYkwxJ/u++DQhmMrRWgcXb9NwpUkSMQAwEwfmVGtZVm6D0URF4j8pk2usKIyvfR3874OH98VceUDbvw4xODhKYUlRL8wRWSSc/fRRgDaqM8F0ZPTdmnsLQ31U7t8d6chLwuid6UbOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 402ba20b-4578-431f-5375-08debbf79b7c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 13:55:27.5193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b61Kqxg+uTimR0XN0HTEbLyz0csODqYqqr4yQrTNwwY4e1s4F5v5kUETggZ3WpXZ2diqmzVhEyvOzRP3a0f+Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB2325E5648
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 01:02:11PM +0300, Jani Nikula wrote:
> The intel_display_power_suspend() and intel_display_power_resume()
> functions are supposed to be called from the struct dev_pm_pops
> .runtime_suspend and .runtime_resume hook paths. Name them accordingly
> to intel_display_power_runtime_suspend() and
> intel_display_power_runtime_resume().
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_power.h | 5 +++--
>  drivers/gpu/drm/i915/i915_driver.c                 | 4 ++--
>  3 files changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index b2dcfeedbd2c..2e51dfcd5dce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2289,7 +2289,7 @@ void intel_display_power_resume_early(struct intel_display *display)
>  	intel_power_domains_resume(display);
>  }
>  
> -void intel_display_power_suspend(struct intel_display *display)
> +void intel_display_power_runtime_suspend(struct intel_display *display)
>  {
>  	if (DISPLAY_VER(display) >= 11) {
>  		icl_display_core_uninit(display);
> @@ -2302,7 +2302,7 @@ void intel_display_power_suspend(struct intel_display *display)
>  	}
>  }
>  
> -void intel_display_power_resume(struct intel_display *display)
> +void intel_display_power_runtime_resume(struct intel_display *display)
>  {
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index a43fab19e530..56dc89eed3f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -179,12 +179,13 @@ void intel_display_power_sanitize_state(struct intel_display *display);
>  
>  void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
>  void intel_display_power_resume_early(struct intel_display *display);
> -void intel_display_power_suspend(struct intel_display *display);
> -void intel_display_power_resume(struct intel_display *display);
>  void intel_display_power_set_target_dc_state(struct intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>  
> +void intel_display_power_runtime_suspend(struct intel_display *display);
> +void intel_display_power_runtime_resume(struct intel_display *display);
> +

Reviewed-by: Imre Deak <imre.deak@intel.coM>

I wondered why the above prototypes moved later.

>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain domain);
>  struct ref_tracker *intel_display_power_get(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8b93bac600bf..d6b94a29c91d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1591,7 +1591,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
>  
> -	intel_display_power_suspend(display);
> +	intel_display_power_runtime_suspend(display);
>  
>  	ret = vlv_suspend_complete(dev_priv);
>  	if (ret) {
> @@ -1685,7 +1685,7 @@ static int intel_runtime_resume(struct device *kdev)
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
>  
> -	intel_display_power_resume(display);
> +	intel_display_power_runtime_resume(display);
>  
>  	ret = vlv_resume_prepare(dev_priv, true);
>  
> -- 
> 2.47.3
> 
