Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAF69046E4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 00:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1FB10E23E;
	Tue, 11 Jun 2024 22:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSL4NHTa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972AC10E23E;
 Tue, 11 Jun 2024 22:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718144726; x=1749680726;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gX6myLnudqhM1KeUPwtLQaWGW8zjommMXMBxo1Gaabs=;
 b=bSL4NHTaM1h/0CPRF81GxYa+dRIUbv+UzNURGZlHFcDwKN0n9DfRj2d2
 Bu3oRFd350wq3MkNP5gAR1EKJK0lH34FVCHfwrIRU14tEK4M/0VnzP6tu
 NZqFW0UoFcPbl+ZhlEtzXT6T2gZUzGyhrVQuj9Z8kVaPtDI+b+zSYOmXj
 3+hgGr2dkJp1cJgz/pjRjjlIdpJBaDPeM2WPPZn2s93DLAd/CXLUPvF83
 RuddgF//rdSBHkVrsKSCh0xB1m19ckzBTbzPR4xvymfvfLzFLmpLlrkDy
 VdpRFOuGwB9OEnfF+PIW5yM7YxmbtQ2b23oACQlrQqEvSgzC+h+whvoDH A==;
X-CSE-ConnectionGUID: NAI/dqsVRziopOXibEfVWA==
X-CSE-MsgGUID: Nu49jNTkSp23CzVksBhq/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="15041361"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="15041361"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 15:25:15 -0700
X-CSE-ConnectionGUID: eebcx7O9TF2J4eJYldqpzg==
X-CSE-MsgGUID: TqE5duhiREOmC+/1uvzOiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="70378316"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 15:25:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 15:25:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 15:25:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 15:25:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJhO4LEpega5FEXNJAfV2tByp6CosQ1XBta7pCaro26SFQLiPdAVNhAXHQxvg6XcedLznQ/HAypdRFUqp+Uf/zCzudfohjsXX7Secws1m4hxd0Tan8agRTyAC47duAeAd1z5rZZLj/+B1a69UW+UKHpalRzH+IYYtAc3cEgTJJYjKBM+Uv1U2an+gATdNOL83ZGOiat65nuOOBGS2q2Msz3hrhoYcdGmP6F1ObM2Y2kDmyQxB8WvNby2T+74ioIfl5Hb+Tm8VT194V3TG/ww7F4FeFjMFZq8jBy99qHkrDAmdWuiW6Lco3EbIX1G76q7u8DsvBGW8hbK/M0VcIcXZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ee7Bmp/jIYgQOtJ66eFjZo7YmWyUaIhh2QHV9LrO6cg=;
 b=bjIRWZF/W74PND7lVIbwVDxsJNluHk2/obJyqHDOgLg6TQw0C5izG1ueExiNn4vF25s32A9DJ52zgvFdlCopywrTg7eaWz45m4hgscDSgj9/nB9onKwrJukTXGyjDAyVeaqlu92oQhESTaJpMka6yNOExORKi3rIH4KgkQDPqMeyxVI4/tkEbsI9P/38rPSawjR5BXDUn4xmZ2NPvECXWzorvUXmyT2NqsjnldYOaIhXQoblcXURTHiLwH71TD5dxavVIik0VMfYN7XjG6YowKO2oWCq+uvmURpLHrRPbU5BZqkGzYvRA8kJpZJSuNkyZU+BSxSAwQV0EZdi8iJB/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Tue, 11 Jun
 2024 22:25:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 22:25:10 +0000
Date: Tue, 11 Jun 2024 18:25:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: Tvrtko Ursulin <tursulin@ursulin.net>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Thomas Gleixner
 <tglx@linutronix.de>
Subject: Re: [PATCH 00/10] drm/i915: PREEMPT_RT related fixups.
Message-ID: <ZmjOw7m1X0EvRDBu@intel.com>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240605100152.4q1jSMuI@linutronix.de>
 <4228aef4-1d26-4a92-ab4c-5d6b96284b4b@ursulin.net>
 <20240611151426.cRRDv0cq@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240611151426.cRRDv0cq@linutronix.de>
X-ClientProxiedBy: SJ0PR05CA0170.namprd05.prod.outlook.com
 (2603:10b6:a03:339::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7655:EE_
X-MS-Office365-Filtering-Correlation-Id: b74ed523-d9b5-43e2-dbca-08dc8a655af3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ohipeRTwIZFLgXyt6uN88hTSyki/yE+EphmfGHS8Uizkkw85ndqduBcHBsbi?=
 =?us-ascii?Q?v4OdmtGxIiYzOr3+/G2KiQaPw74q2OynJ6wgSrzGSD7jk7IeJ8xpvunoO17N?=
 =?us-ascii?Q?CLO+VcNkYOaX7vf9iTuy7nY35dwsoyNj0OcLrvsdbNrsYk1lmaiZIUVgG9j5?=
 =?us-ascii?Q?tHfxIScZvWFdin2MRNb9UcUqZrjYpwTzHjUMWYZ5Kj/6ZV2EwLr5M4S70Hii?=
 =?us-ascii?Q?GxQppuRF3n+K5C5od3+Eux5hm/k/l/W1ul9ELlnONUtMAIr4U1t9Bm8aA+SR?=
 =?us-ascii?Q?ZohqkyN78plAv8olKU6akmwBK5lyXYISrezrCdBC5fgmccaxCESOfz6PbiBT?=
 =?us-ascii?Q?/oeoxH1ZhPRzrnfgV1j6AlDTQMZf9xX/5rrhBDAi5dF8BTh7En92GFi3q0qG?=
 =?us-ascii?Q?HHGxvm7qW4hRW6T8xin/jHhdV4nimQFhz+KlxkblZf72xeSHJLWCZxa0VaWt?=
 =?us-ascii?Q?1Ei+t33KucBRLEshehufZMltrJpndebnJynNrvl3bmj8t7yFWOhZz7wHaOEh?=
 =?us-ascii?Q?hrISMaMTntWjAG4j7HI+yceS7l1J0IJiv1n3rEL/eb2GHx9DSr5YZErctNP6?=
 =?us-ascii?Q?iHEakvmY6qR6FmIlIr3zpx/ybXsGzNmcJclj1ZKUKshWLRtq9lCap28IY813?=
 =?us-ascii?Q?O3UJ4aqi9Yb6+i0JcgH5OO7uXXGzIJLaWffAcCa5mB7cUWddpZtjopNtpXON?=
 =?us-ascii?Q?UieRUOZd8ZsUUi+Fw25Ju3RVipE2JqEbzOm6qDoMOEHG/MM771c7yenxSwqs?=
 =?us-ascii?Q?DifJVMrUl0baoreHClseuIlly7lrXfw2QtAStUcOoD3AiBsSu4z+ZpfuUp8d?=
 =?us-ascii?Q?xdaaMv01ymwp3AXTLXqJw14igjoq5ck/ZvH9yfKDnH+ujSiUbPU/nEpgEC5X?=
 =?us-ascii?Q?kFvXCn+wcsqYiQtXJ5FnKtBNI1BlW4cP0XXq7efmQU5NtAFtLjmU72AKCoWE?=
 =?us-ascii?Q?4HryczVI6e4Rbt5xehUUMmbvGyvU/qYRVLhhU4Dbqya1oEOC+ffbxZwGGIYv?=
 =?us-ascii?Q?7KbjaizxBgfmiMCWNMtxV8SAwQ42ruc/J010VFIzx7UFyAB0CzMprSGkEvJT?=
 =?us-ascii?Q?7iaHVa89f5HHXa8VRg1JKM+YJjpcEV1iJtjsuehFBOPzIgT2+ovupAG9KH6O?=
 =?us-ascii?Q?NQMDPHsbKMCwqM8nArS3xhZUVu4Iqrv6+cLLYsnIy2naK/GFtcq/p0l/5PGH?=
 =?us-ascii?Q?uyt9uf+EvNcEUZRAaHRyMGQNb87yXXzZ1Cib/LnJWwwcEt7b8aXhyWaJ3jJu?=
 =?us-ascii?Q?Lq9dYqo4HoIiuNIhEtVQSSuOEcDncZP7F0uKLXP21VZCNpRKrOsHfLlDNVu1?=
 =?us-ascii?Q?Wtm1H2j2YTURBxby0DqM8CJX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yi4ygVIExrVrDr7XF5BqE7BpwLuX0fUU4KwRQ3ZpdZ3RX2iRW77ppQ6cqu9l?=
 =?us-ascii?Q?HX3tkLjaxlTb2WkIRmnPzQL65qs8RR+O5R/u/MKiNtAio5hXDULqGE3Q9Sno?=
 =?us-ascii?Q?91y842gJzTSWOmSNWPUQj7evPxoCOv3U4GszgJTOwQMhEsr8rMgkL1Nrpbd0?=
 =?us-ascii?Q?PYF8oMua87ecK0C/8bTk9WEVtnvB7WOvyalllXQhNqqnLEpfLBL6T+s4t9GF?=
 =?us-ascii?Q?WYw9AAs6j07C8TSdk5axQ7KOPGcag8j8xAeDf3hAv1GdYAfXfv2+KmkRD7U5?=
 =?us-ascii?Q?5E7Tfjlma5zVxVkypikQeC+Ex8knVtamK5x1aagGkE2q4ZBpeazej5NDUcUP?=
 =?us-ascii?Q?AlZ6rPMx42+mmrKAGmw1r01yb+8tmrmJ1vF2B75qUXZofcp7D7NV12+xLc6F?=
 =?us-ascii?Q?siZ/IVXFXzxcQHEho75DT1EorukM43BMTzHFC4YKhnLxlmYgn80lEDNFABxT?=
 =?us-ascii?Q?VUjXLYtt5EkH4TJRyIRAULbYJKXDCVOaG+Cq+18n+xkeIG1zfWfcBADohFrU?=
 =?us-ascii?Q?9F/LP3+/sxS1MjvOsuKPUCuPD7a/3X+7U2NVe2IgS2T6c3Sjv1gLPrYuOiW4?=
 =?us-ascii?Q?zCXtSidILlJ+ckM+VOVQcFfRyzgDcwngZ2TVJsZluZa0eZudQYePSDvgavq9?=
 =?us-ascii?Q?9YUuTcHQ04DqY2zr8LJ8e/ubU7HwO4cDq9vYREAV7fpwMS3l1KWQ4ozKcvpq?=
 =?us-ascii?Q?HcxmWA43DNdN8qjlDDlYTr+RRnOr9qYKjFAhqJ484m0GzPWvSPSZMxeyniU/?=
 =?us-ascii?Q?scPWA6TwolTSUnSUjyI9Ir8Kvteyp2iy7TKOZ8Uac5Bkh1rxtXZLyYvmxJQB?=
 =?us-ascii?Q?t6XrWqda4EF9p35jKR2otcSaSzbY0einx3smMSWiKchLA/yukcbnHYYYBVVR?=
 =?us-ascii?Q?XeLm9F5DcOs02cjg3sjmZ2Gz16erlQr2PXUPFUF9FgFzcFhpJ5BBpdw5EHGg?=
 =?us-ascii?Q?6f/DaDaVwhCCD3hGXAYq4r8Scv9s7OMwWIqRMkJfeQhdn1Pu85mKR65zoHyP?=
 =?us-ascii?Q?q4Duv9D3XclfoMHIIKaAXip1qRK4Ihok2dAJ/Ymmzmled2LVhx8qBKZhRVbS?=
 =?us-ascii?Q?NOOCpZbjsGKOvUx0Uq2hzCPVt8J1I77o/pQk76bgqKSc2Xlm4Heyj9WQz+zJ?=
 =?us-ascii?Q?msQZEeL8BPNLrnz9/wQ9H++raVqA+OmcNWnx76xwRrZHw2gid3HrLGwQwXnm?=
 =?us-ascii?Q?0GHZjQ1NRphtsbIPT/IlUaZX/L0Ct+ZTDoId+Ws4rPfL6Ag2W/B9KTVct4f3?=
 =?us-ascii?Q?rvmLCMUXJDzrqgzT/j32IcL7Aa2f156MsiSArC2nyX0b+anklrJ7+j7CaAEB?=
 =?us-ascii?Q?1mTBAoDfi+bqJwBbfCRDT/Mx7YDnNU1GvGf9KfQZM/KrskCv1taUp5Ys/Jx/?=
 =?us-ascii?Q?KixrLLPTM+uFyy7bIixtjJv1CQzgVElPdSkG4VKO76L6DtJhkjvnfAySEzFi?=
 =?us-ascii?Q?3a4e6ObK5FDIUYQWIObcjagNXX0eD5bK2hfnDPK0obEcVxTIKDqJQdV1VaSm?=
 =?us-ascii?Q?+SIEpqSNB5GWVs3iekKrpFOUcbjDIamDuIRkSw8+4c/tU1tsBTSirIU+ZsO/?=
 =?us-ascii?Q?8QnrRDLRmIqRbCGMlhU8MUNMHjXud3O1+JMrHNEx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b74ed523-d9b5-43e2-dbca-08dc8a655af3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 22:25:10.7538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cmvzojdoUye6osPmGct2w1S/YU2lUE5acrX7xORbG3qo43k/YUIfQPtql0LzGKkmX6te1TRi/+t8jSRGI/8CrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
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

On Tue, Jun 11, 2024 at 05:14:26PM +0200, Sebastian Andrzej Siewior wrote:
> On 2024-06-11 14:06:00 [+0100], Tvrtko Ursulin wrote:
> > 
> > Hi Sebastian,
> Hi Tvrtko,
> 
> > Previous CI results have unfortunately expired by now. I have tried
> > re-queuing it but it also does not apply any longer so I'm afraid you will
> > have to respin before anyone can see the results.
> 
> No worries, I rebased it for latest RT release, I can respost them.
> 
> > And this is not to say that I can promise someone will look at it or when.
> > Maybe Jani you could ask for volunteers regarding the display related
> > patches (head of the series) and Rodrigo you about the GuC change in 9/10?
> 
> 9/10 looks easy but okay.

That is indeed the obvious place.

> I'm going to Cc Jani for series and hope for
> the best.
> 2/10 is needed for the XE driver since it shares code with i915. 

I believe you meant patch 1 right?
We are trying to eliminate the
#if I915
for the shared display code with Xe... we probably need to think
more deeply about that.

> It
> seems fine otherwise. I can post them one-by-one if this makes it easier
> for CI. Patches like 2/10 or 8/10 should make no impact on CI.
> 
> Thank you for the sign of life ;)
> 
> > Regards,
> > 
> > Tvrtko
> 
> Sebastian
