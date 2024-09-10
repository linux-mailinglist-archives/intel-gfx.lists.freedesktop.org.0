Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68934973D64
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 18:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89AE310E889;
	Tue, 10 Sep 2024 16:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZiaultI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B0F10E887
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725986214; x=1757522214;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2tFq6FYZP/Aq4ggN5Fqi0o/V5vMM4KJ8oQUI52s7vmo=;
 b=CZiaultI0Rjd0z5+aRJTAAsWUtWANE/Iqu2zVXwEVaGCX+J/LT1UnxR4
 JlXjKlfrJkvs/T5tn1YSiRJTgnI2YeAFH+WK3tZ/OYiahcYowas/MA6vB
 cvnNsNyMy7vYB6hHdG6Q5gaQux1VhTfehHvVFR/WYH20F56pYFp3Xuk3u
 fZPgE9ltttc37bhGW3wMhZkIzMUs3Krgzq4mLlceGB85L5jk2VhcKaJ7Z
 7hgaHCSjtu1UnN6m5VVbl7VuS/GvfaORALna38pTcJ+gZ8a1M35yZ4VTT
 LWTuuuSJl6XWguN9cHPdiGj0mtwjR4N94jNFaAu2F0neWzIAv7uWH67Gr Q==;
X-CSE-ConnectionGUID: 5zlAtrTfRImmQYgAyLOW0A==
X-CSE-MsgGUID: /mNx9bPcQnimGffwmft3mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24850562"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24850562"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 09:36:53 -0700
X-CSE-ConnectionGUID: SjLBr9NxTH6vUkJS3Kw41A==
X-CSE-MsgGUID: PkNYhG/TTI+U/n5sP3bBaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="90359416"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 09:36:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 09:36:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 09:36:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 09:36:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 09:36:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wtq4GMA5eg9cyCekgRcfD+TKruEQVt0CHwnZTpaN4P1dP+/74kbQl9/BScXlQCILTFJPJ+fy8NtVRQ7R9YCQUWre5FouyAIjCICQQ+bnE6ar40kr5Pt35JveYqyMeyjqlg0XV3HEPXyjeQVd6yLHQ25wpZhfOBal4EYmmr1l3Ho/+LVmjHq6k1tFkRFOePfRnPlNbLshrg1gqaPgbhwiTm3unuVNmYuq09tnsJ++HOZOBBDcVyq2JNKDOiS27DWPeBh3F5+Bz2+si9hScaevKkRfdksOFtYbAFYIj0xRSfomkSsDfiNVNSLFOIpIfiVO4m4OkekZVXkyVU4y4ugg0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKKEmM4QKYstmMiHCLbjpFbNGG6ke+P547QCKUrFg10=;
 b=lX4iNF8VOffBtWGx4pdX5GfktLT1zuEMuCdls8wwlz3YLcW0aCfHoT15n0ICl+eISaqot7TBJLoINUIN+HkOA5HarUz7jKjPosBb6a5mMkDq2En1B3FJAPN3gw6E8/GORmg/+/yOJrsfbeQSm1hL1wRxaec7UzhILYSVWzdb2LThQtUFXK9sAoxH2Jh8rEvotqxcwDzZWhhrccwcILS0yjLva/RX2WlgprEfC7W5aQGT/huuUWBtuExkZ9mCWVw06eqDEez0m1aXZgm81MmuIHU3SYgxwYpQSwM6sH6tneonNRaG/9j1MmU1yt2KqNhEcdbspEqwQjuDCdp+IGCEcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB7914.namprd11.prod.outlook.com (2603:10b6:610:12c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Tue, 10 Sep
 2024 16:36:49 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 16:36:49 +0000
Date: Tue, 10 Sep 2024 12:36:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix AUX IO power enabling for eDP PSR
Message-ID: <ZuB1nrCRsKFKjthy@intel.com>
References: <20240910111847.2995725-1-imre.deak@intel.com>
 <ZuBbW5x7j8WUfneT@intel.com>
 <ZuBzheUe3xju2_iy@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuBzheUe3xju2_iy@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0305.namprd04.prod.outlook.com
 (2603:10b6:303:82::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB7914:EE_
X-MS-Office365-Filtering-Correlation-Id: 4eb02d52-b5eb-4ea1-eb68-08dcd1b6c490
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?IlZGCOcvkIJkD8Gi4DYXdPYcea6+QqfV1WtOA2LHLAi7oLlAQ69IfGnuzh?=
 =?iso-8859-1?Q?lmDhVZS7YG+WKVUuQ9Q4scSgNvx1jJ7K4+9MknG0ek6VGy2a7uiMlGCBXB?=
 =?iso-8859-1?Q?FNIEObNRNybg6Eu3APeOD4zIHEeeRQzoY19ZuN2b5vmRw5GSdxrJAQkulG?=
 =?iso-8859-1?Q?43ifun7NiSH1GdNCkX0/SfYbNQEiWWF3zhSi+bvehmnL7CwU3ZPiw8ikvJ?=
 =?iso-8859-1?Q?8FrAVFLUBma+yIRbr43SdM9r84VKXAZ+859V+iO9+0T8AWtMIoETm+5+Eq?=
 =?iso-8859-1?Q?8mwRQZH2fSwNsZQA/8v5plZzU1QyLC6O2NEFN2qFzIFqZF48jsTtvXjaEB?=
 =?iso-8859-1?Q?R33u0zMsAWdkWSsKySvDS8rNWV5sk/j+nFG6fQ0mZi/itnoSla1RVozrTW?=
 =?iso-8859-1?Q?++aeFpxe/C6cXpCnDaVeo6dckPqYJ4KgAGKMzAsg4mxioOzmuhxpYxmn7p?=
 =?iso-8859-1?Q?+PGHIOH8VCfNKm7JWn9UBLKgTvy+HW8JEXnpQCeWc4WN6EKqH80hA6N9cQ?=
 =?iso-8859-1?Q?o1r9MOsw8TBLIRf2B9NK/ac4RSNt+IwSJUfBP0fTMW2LLxk+2SnW2g+U+s?=
 =?iso-8859-1?Q?BT05P9GUkepeVod+6wtTe08ehG1LSZ/sg64L4ghsyv54PMGGfcOFgZbB7q?=
 =?iso-8859-1?Q?jJxlwahW3lHax2CYHPiNdRoFr4CxzJEUtYmSHlpPtjN72HL1kVq4yO8dnL?=
 =?iso-8859-1?Q?Z1bSxBzqDBBSx8j3l7MXrrdsYCAJE+FDD0EVN0X9rEE7iWe7Y6W/lJr9VA?=
 =?iso-8859-1?Q?jo8XDdkan9m4fg6J00PoN1DTlQ5eIEcSSvO68ZZvWJSh5L3J3zMnQsxucK?=
 =?iso-8859-1?Q?trVv1rcTXzP4HkqekRC+OmQsSwv7jQOQwNdo2q/orSpTncZMuW4bbxgpyj?=
 =?iso-8859-1?Q?KEUipAF+zCc0UXm2QOT8ZzDstxOA+jywaHnwQc9Zkl2YXCHzD4qUO350i3?=
 =?iso-8859-1?Q?iFNHpo1uw0+leTcZfonS6TKH+QMxoCBXmSMnfCZ9EUHIdJurZ8+q/dEUU5?=
 =?iso-8859-1?Q?SJ1tQMhgQupieR5WXTuKKoAipl5PtBWv4yQ8KeqK6RkjLkEeEzFN27mk2a?=
 =?iso-8859-1?Q?ly5dLoD6GGhNj+tTJ9azOvkRTdZtvhdzNrwxgTYks6jF8fBsxodrQT0v5g?=
 =?iso-8859-1?Q?cYi0saQYZxfcL8J8rC/yVUTnZAYehpqy4/2DXIUflmX6moxOS6Kl6UzOs8?=
 =?iso-8859-1?Q?OCNuEb8ZeswCuOPNCsulEzQHZrztqCQNaUx6Ci2+4EIsf4veIiWC2KZ/KT?=
 =?iso-8859-1?Q?INZjuAr6/zlYFxGndxthsqTUPwiapFiO/QxOsZVXQYkviXC+oOqNHgfu3Z?=
 =?iso-8859-1?Q?+oLO/DVpNkIutbwQgIzQ8PtcAAW81sQDAxI23VlIzUEVz0kQAgM12IZMn1?=
 =?iso-8859-1?Q?gxskZ+T7O6axK0CYH5CkdqG+iKZU2anQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?uzMMopGtTDoLpJw+dV8wO5CpSxsLqwUChWQwRLMABEoxfGuC4L51UglYBv?=
 =?iso-8859-1?Q?hLFFKVfmrQbkqwHuNmSsDzyuYkL80wzpOprjzGrs2n7tnLD22hYAajqHsx?=
 =?iso-8859-1?Q?GbdHua4u5dJv6xFF2TVq2f8VSJPis41SGL7WRfd66FVOw3M8+hTYd92ZaG?=
 =?iso-8859-1?Q?XstEAjFzsuYUkywEKA7vHJ90VavqVzb8gXfQti0fMY6GTIuH6ltV8hU/ii?=
 =?iso-8859-1?Q?wdZJyfCieWZJkvGi3zO6vEYTZ4hH80p5LejkqWu/3FgbJbwIYoO1FwDy3v?=
 =?iso-8859-1?Q?olV0ayT932q3omSyar/I+MK4BHwpViJpjvzBhHzr+/z15bgGN9KbvWR/kK?=
 =?iso-8859-1?Q?XgtgOH5T5bU8Qt6A9aOICTAUn+u2a8jotEoR71znNCfEv4kTkT9uSWsO1i?=
 =?iso-8859-1?Q?foQahlNkeAQXOGgoEUHZoAoohIptkj1FmtsOwbmoQ0bMjlZU4wCaQf5P+u?=
 =?iso-8859-1?Q?kVp6hI5hI2TBUAIFJY/R/CXvtI5k4lPD2aIcp24pI8sF3lcRbgG6EBTDfm?=
 =?iso-8859-1?Q?A/kr09aQikQtK24jRWDDF/f8r0WwrsOVuq7PKYS8tSbKNzuRV74c6Gee76?=
 =?iso-8859-1?Q?Dkh8bp+CISe618ZYefdslNjpR8OfbeP4PHy3GXcixsjTRT9n1rw4t/5ROo?=
 =?iso-8859-1?Q?ij2vYde4ta5KXUX3ReLsdNgJXwuR5f7gSCYlDK1xhILfZOZM9AWNkwfOiF?=
 =?iso-8859-1?Q?nbVGCHGwBYIfg0ypNuZwr7EKkawSINuU1+b0PyZAIpmFBxclvRmaS3G8wm?=
 =?iso-8859-1?Q?7GfcakRW5MtiB68iqLNSfWCMdIQ7h7JTLJb1IfphG93/eNg6uUqyMGXW29?=
 =?iso-8859-1?Q?Xt5RVZZ5p3hefYZN9wTc1rOdj1HZzZx3kraCrt0lj2BM2myfUeJTjHDOrl?=
 =?iso-8859-1?Q?cFN3bFU2oV28U9pMF4Ijqe3GzrYZy8BuaZ2GONDTe7RanILPT60f1s96Es?=
 =?iso-8859-1?Q?ecs3DtnxRmLH9rg/0yUqh6Oe50jhCGWvZdflsgN3wrKt6sDS5Ea35YebKF?=
 =?iso-8859-1?Q?/Zw9V5hu3JpvacQZ8/mmvZK24hA/mzy94H/CP5q4UzaRCKGkYBl0s7zNbW?=
 =?iso-8859-1?Q?mcC1RkQYYYskuzMtPuD7MNDFX+zzAXEtC33UnoDZzy6ZmHKJl+1fl1A+kC?=
 =?iso-8859-1?Q?sZy8gJHtYh3YwZ/NZZe9oVKR4wDn+ayI/nPTUQ77wEX2njrYkXk82mFKc7?=
 =?iso-8859-1?Q?wxKCaRHGmH5Agk3PZ3V85IyvDmi3KxzD5uwd+l7k2zF4nqDxpbQVBbp7yT?=
 =?iso-8859-1?Q?BILbTaM+D6a09iw10eExyTyVYTTz2HnAqI70kCDTGIi+nhh+lYD4FRBXER?=
 =?iso-8859-1?Q?KAlhnRLyX1v9Izbo0RaL8gh1UXdFiG04co+B76cmjXM0Df+AfpcJXUgp2c?=
 =?iso-8859-1?Q?NceDxqQ5XG4Ng8QrWB8/LoZLzTqz1RgZC5C/DeTtwhL9jjG+nvcYNrDURO?=
 =?iso-8859-1?Q?ZIzHMZMP4kRjxG/OjZ78kqWfYxpaZShyX21lEK12W8hfRDkkb8i2D6z89L?=
 =?iso-8859-1?Q?9EULNoKczRn6E9+V/wEozb8Qu6CKnYNRMh2yeAKb7ocZnFO3T8WR3ZjSCA?=
 =?iso-8859-1?Q?AcUCj6WgTMF0CnCYKNdOhDnMV1UefqE8oXeeBm9RLx9uXPfmdutyyuKKM4?=
 =?iso-8859-1?Q?mR1C1zP0zU2Cvb1N1YuMS5FJA+nnuQ3HzQOTedct6CJFrH7LuQHAHiPA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eb02d52-b5eb-4ea1-eb68-08dcd1b6c490
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 16:36:49.3637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wpOMSVSTLUdxfL1YJuPeyG7f6wk4HaYkTqHLWSxjOovERInUSkF+PQ4yfTp/jLjbvwv40rwfhRT7tl41F+bazA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7914
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

On Tue, Sep 10, 2024 at 07:27:49PM +0300, Imre Deak wrote:
> On Tue, Sep 10, 2024 at 10:44:43AM -0400, Rodrigo Vivi wrote:
> > On Tue, Sep 10, 2024 at 02:18:47PM +0300, Imre Deak wrote:
> > > Panel Self Refresh on eDP requires the AUX IO power to be enabled
> > > whenever the output (main link) is enabled. This is required by the
> > > AUX_PHY_WAKE/ML_PHY_LOCK signaling initiated by the HW automatically to
> > > re-enable the main link after it got disabled in power saving states
> > > (see eDP v1.4b, sections 5.1, 6.1.3.3.1.1).
> > > 
> > > The Panel Replay mode on non-eDP outputs on the other hand is only
> > > supported by keeping the main link active, thus not requiring the above
> > > AUX_PHY_WAKE/ML_PHY_LOCK signaling (eDP v1.4b, section 6.1.3.3.1.2).
> > > Thus enabling the AUX IO power for this case is not required either.
> > > 
> > > Based on the above enable the AUX IO power only for eDP/PSR outputs.
> > > 
> > > Bspec: 49274, 53370
> > > 
> > > Cc: Animesh Manna <animesh.manna@intel.com>
> > 
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > 
> > > Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute config for panel replay")
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
> > >  3 files changed, 16 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 00fbe9f8c03a9..b1c294236cc87 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -916,7 +916,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
> > >  	 * instead of a specific AUX_IO_<port> reference without powering up any
> > >  	 * extra wells.
> > >  	 */
> > > -	if (intel_encoder_can_psr(&dig_port->base))
> > > +	if (intel_psr_needs_aux_io_power(&dig_port->base, crtc_state))
> > >  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> > >  	else if (DISPLAY_VER(i915) < 14 &&
> > >  		 (intel_crtc_has_dp_encoder(crtc_state) ||
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index b30fa067ce6e3..f2991dc4a04ab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -205,6 +205,19 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder)
> > >  		return false;
> > >  }
> > >  
> > > +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> > > +				  const struct intel_crtc_state *crtc_state)
> > > +{
> > > +	/*
> > > +	 * For PSR/PR modes only eDP requires the AUX IO power to be enabled whenever
> > > +	 * the output is enabled. For non-eDP outputs the main link is always
> > > +	 * on, hence it doesn't require the HW initiated AUX wake-up signaling used
> > > +	 * for eDP.
> > 
> > I honestly got confused with this sentence here, because PSR is only a eDP
> > feature. But yeap, we have the DP2.0 panel replay that is based out of eDP PSR,
> > and it looks our code is already inheriting and mixing both.
> > 
> > But anyway, I wonder if this aux thing here would depend on
> > DP_ALPM_AUX_LESS_CAP intel_alpm_aux_less_wake_supported()
> > instead of assuming aux always on for panel replay.
> 
> I think for panel replay aux power should be disabled, regardless of the
> sink's AUX-less wake support. This latter should matter only if the main
> link gets disabled in a power state, like PM_State 3b/ALW_SLEEP, but
> this isn't supported by the HW during panel replay.
> 
> In theory aux could be also left disabled for panel replay on eDP, so
> always if crtc_state->has_panel_replay. However that's separate from the
> fix here for non-eDP connectors, so I'd do that as a follow-up.

Okay, it makes sense

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> > > +	 */
> > > +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> > > +	       intel_encoder_can_psr(encoder);
> > > +}
> > > +
> > >  static bool psr_global_enabled(struct intel_dp *intel_dp)
> > >  {
> > >  	struct intel_display *display = to_intel_display(intel_dp);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> > > index 4e09c10908e4c..6eb5f15f674fa 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > > @@ -25,6 +25,8 @@ struct intel_plane_state;
> > >  				    (intel_dp)->psr.source_panel_replay_support)
> > >  
> > >  bool intel_encoder_can_psr(struct intel_encoder *encoder);
> > > +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> > > +				  const struct intel_crtc_state *crtc_state);
> > >  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> > >  void intel_psr_enable_sink(struct intel_dp *intel_dp,
> > >  			   const struct intel_crtc_state *crtc_state);
> > > -- 
> > > 2.44.2
> > > 
