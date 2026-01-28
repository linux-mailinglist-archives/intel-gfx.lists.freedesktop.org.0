Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AuzAIZBemmr4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:04:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A806AA6804
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4EEF10E1D6;
	Wed, 28 Jan 2026 17:03:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iB1W+WdU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B5810E1D6;
 Wed, 28 Jan 2026 17:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769619837; x=1801155837;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=oeHHlagqVEUUPbEAdQI61USZEv4Lxt8BJmQIicES2Mk=;
 b=iB1W+WdUjqDqok1RgHWu7QWCBJe9/MYfJdIdnK0j202tyA/J47SxoSAL
 rASmdFbVaFL4VpgBzRRqre887OEeMvyeR/n58ivsO3FlFOh4G+3z+h0UN
 k7D6/4J7hNq7DXgr/zh/rPpPwjgTh+QzeQfEJPSzL+Ir36bfQNlAo0HWe
 2PVBHtTyBi8BsNFuE2zOprZGPxud0YMNA+E0pJLkYRMNS9fEgmLuTkMds
 10myD+UN/dEjPumTmJF8YqtJiXozHaEPOw1W/cD3zUyPX+yTEEk62w0Jf
 qVZtS2VDOPb7K2j661P8xhx051hII35YK9mfuX011aQgWmoF8dqIhOtE4 Q==;
X-CSE-ConnectionGUID: mf6O4gDjQWmPD5G6TC7cBQ==
X-CSE-MsgGUID: 1WLfjomiQruxuVQYsIKyag==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88258455"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88258455"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:03:57 -0800
X-CSE-ConnectionGUID: ArxGzhZRRIu9lZY5HzjAtA==
X-CSE-MsgGUID: Miv3b/etTuSgbpG5TTMUrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208227315"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:03:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:03:55 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:03:55 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:03:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A8FLESJ7uhRdIhGvVqSVgQr+ayRhA+6GBQ3rE91prVd+01TU/APNZjLKv5CQ7OwPQ0k8U5K+IvHzXxn/nMPorb727b04s8pV+bwf0bzSGX7lowdTVpBg19zCWJo0tfNdJrHEI4/tQE1vksxhbha3lnuUhRHQp5kqPhs2ThZKl6oOYKTR4Qp0RayX9ui0uXC/QzMvF+PuVfeIneH+qoYYCyXrNLEarmf4dy958O5jnXoa7f7BfmknCK8pTFr6J9Sf9ibtxhzOyHsXt/0trIhC/1xyNwTrkTl6PSVFGB776i7oQ9ZF1wxm4XjcjvPU9hnI5QRJdt3I00EgEf6+tSVArw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwt4tb8Jm2MPFkzcT04ZFKJoMz1AoDwIxS9YpoW/0IY=;
 b=fOqhDgRNQyul5aAsFJf0YlQqiW+ZUotFoYMcQi61Jzf4TXwA5nQtoFkdKmQac8sugil4FGWgAUmrY/UkF1IyMAbHp9fn3fpqH0VNYQdHH1iwuP1ZSr/rHEwyyvPS1HWzM5Ocb7rw7g0s/qfB7odT9Z0wUrDdFKhfDUc8ZbdJggsovI9qNFRWMdW+A79QGZ2e4ARDelH5K1wX7Xh9dVBzoTzukZ9qjgmUB/WONTOKMrtaCl5TbGxYCW94TXbd7Uoandx5r5+ZJ5OVX00ENBPHXGizEKG95OrEg3Ur1LSML0JJnFhDQT84sFsjYQ7Ysk5IhhTHgg1424PuYygfF4mfvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPF178D5B043.namprd11.prod.outlook.com (2603:10b6:f:fc02::d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:03:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 17:03:53 +0000
Date: Wed, 28 Jan 2026 19:03:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 05/16] drm/i915/dp: Rework pipe joiner logic in
 compute_config
Message-ID: <aXpBdIgVmI9QRgwg@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-6-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0011.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:b::7)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPF178D5B043:EE_
X-MS-Office365-Filtering-Correlation-Id: 750d9b58-8a84-48ca-6ede-08de5e8f3703
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gNSeoRAmLOICeXhPbuJxD/3MzbNOUG+TGEG2+NRQ42G7zaGfeJC/hQGpYcfP?=
 =?us-ascii?Q?8qmdSTVfmhJg5UiZHweNPnqYZNbVdKPVazTpY+65olTptbvkaWzUTKccZQah?=
 =?us-ascii?Q?6HM2TNpLCwRxCCXamxwWuqYBYMzM368Xi1xkEqRPBLZ+6iOxWGC9SCL+Ynl8?=
 =?us-ascii?Q?8WAOtFw6shZ2hSGltLGfm0iOZ282/CW5ZXknNAKPCQ7BGmUu/4GOugam4A4Q?=
 =?us-ascii?Q?BkdEMykxpSJyiKvxhFNJnEAxb6R32hvND/FLrvF2zSc80LAXR1dL58vaJaL1?=
 =?us-ascii?Q?n1+q0IXctIZq0GUy6XDlu+E67gS3bKJvHck4aXRQk2DsyC9LsIxZtYIk2NZj?=
 =?us-ascii?Q?smZ66/7Rn8aBRGzzsM5iNY5sGd5R11+nbLhR/Q8fdLqXUo6wOiHuPlcZJ3w2?=
 =?us-ascii?Q?dyMXEbJG+lPAAD25Nlxd5pVPbLd2oYGWDxz5pQGMWPf/goJsUlj6OrW8mzew?=
 =?us-ascii?Q?6Lc0xjWcrt0YbZHt8ripQxAy60eKxcBLlcuhheLhBHb7aXqfN5VWhF/kGQCr?=
 =?us-ascii?Q?FZAxMCtqmAWscdWaf+jt1VL2ZaK1f5TbLje4rzHtmm25VXYlvbZE75IqL8un?=
 =?us-ascii?Q?42mcjZkSNdJElY5ZLTd1BnbIpe2aihE9MXuB9sjUsaqHUwZX8AMLD7/97HuV?=
 =?us-ascii?Q?sB2L7hCAwWTUPKiRHtIsoon0knxQfvBdh/Fw2Whch46pcIgR+4s3OagrNZOa?=
 =?us-ascii?Q?KXuEkV80T9hIjuWArYGb0/nLNRQ10Htef8UdgOUzlybWa3C4LyJXVhhQ63Ot?=
 =?us-ascii?Q?SGLB9jZh1pqoTzvczMTrbw1FOWzlJy3dM470NQGF+vD6vWLuPJ330zh7DVXB?=
 =?us-ascii?Q?rRKOR6ab8enxX9xepQLfHZiVN9pV0SDIpDTSUxM70yr84lXXnWy6OV+qrf0b?=
 =?us-ascii?Q?zD05bXi1ms1+rhVilMLQaGR3BJmhAJMb7UpKsZb6jQxVdZgSfDNPqidv9fzl?=
 =?us-ascii?Q?XagN5mKDe9qOSHVncbphcF/yNEDogqIDHBS8tCLDcOFxO3OSzAZhWYI3EY9F?=
 =?us-ascii?Q?7RzrQ9zCQpfpi9BBnATTLQ5p6U3hL7kRfYBugTb5E5+Q/V/LcVHkYBH3GS8F?=
 =?us-ascii?Q?kfDz8H2f3/iYNotuSYNGJ0BGE4KrR/Krsy8TkeIgCSZKpUDeYTiIFJM80Bxe?=
 =?us-ascii?Q?scCEKopoVEsZDxgrWO/2O9K6nGyTy9pKRGL+Iqy7BkjF9q+TJo2EiE/cfL+t?=
 =?us-ascii?Q?+Kpth0zjFqpfSbn2N2P9K0B2TB3nAXj1eRDTaUnO6ZLMyiDMc3vWXHjzIM8T?=
 =?us-ascii?Q?B3BXRG4UhIjrjMq0aGZudBfBOHNiRl5CluSTEK3XimEe8vEd5z4pcI7tSx5E?=
 =?us-ascii?Q?tV0QjhzAHHuIAKYLQms12zHAr4mu0wGneI09djyNh4rY1BqshwaX56w5QT/J?=
 =?us-ascii?Q?I2zmzMSIrQ6Zy80iJl+cYQlSu4/rmHe9JKHNJJNj5gCycOmn9tKF1qM/QxId?=
 =?us-ascii?Q?2ttOJBVyUZWiurfWm/85p5cu+l4H9wPheO2TlgM25VGw2wX1P77qSiK8NAlZ?=
 =?us-ascii?Q?1MyXP7lL2YjfiP7y6QA4YpPVG6CHxMprMn+C+6yCiKnldd9A4ohGceE+hg5M?=
 =?us-ascii?Q?de8g7EP0vo8b9PoO8vQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7nPAwsJzho05PIPc3wW0qHdvYkEbKw2PHkD/zmtjbHFGQKk9dY2EIBuhG6Z8?=
 =?us-ascii?Q?Ggxd6NqqlrYymtmPXcgpGDJh6K6AiAGasbjVOvxG0Xb5dSJo/52FhiSa1cUW?=
 =?us-ascii?Q?sGX5plqMfdQF9vZBvukB8Fkq0XLD278A1mf9xFVHcI4sVNqhZE+Vtt7SUacr?=
 =?us-ascii?Q?kZbGgmkd2b0dHWt4XAgXJTQtjqho0oslkdUgc11wLxXYElP3ddd4HXhu/2JE?=
 =?us-ascii?Q?+fOoNcdQZHCWgO7byFgynIFSzcGoVJPieAcDD1LOAqvJlBGsQA24wr5Xol7o?=
 =?us-ascii?Q?t7Bz0755c+Hdvq2p0MEfly5SZhseTQr392KXSaV25nVFhLl7noYnNUoAPWMW?=
 =?us-ascii?Q?celqpao+i4uwubLfKVc5e1jooHg0G8SXsUWj9eRP5XMFKr+/PPajdaVOL1EN?=
 =?us-ascii?Q?+e/M+ciLYl5eJOOC6XUT8+KYEzmmZfOpfdWTW8YWXHgeGQIy7wT1nKA/i4qs?=
 =?us-ascii?Q?oVt6IcTTIlW6MklQ51LjZD48fWexSttEWPlkNZTvhEghStvXiaMZrfP1ui0x?=
 =?us-ascii?Q?LXQ7shvvlv26+W356OtZO8GPeR1v7brRVuGtjE3VPONw6+9i8vTzGRS9z8NB?=
 =?us-ascii?Q?4Xxkn+/vyeKpDJwDZc+E13iB1VzravPiJB8Wo55h9C53uDwxSHRf+BPwK4kv?=
 =?us-ascii?Q?ZIZhRzR6R6oLTH94lJ1UtAwnMEdzUrEknyn3euS3jDdf53kELqfnYUUNF2VT?=
 =?us-ascii?Q?7jB/9kg9gtG4CUq39IRxb1Eg1Ib4lnxmp0+9nTTzyK6slTdQN3Ms4/vVgMcG?=
 =?us-ascii?Q?M1dRe1YffK5B/5aTDTA0h8diZYFpYiJGU0g0pTr56ms96l+P8opxEOC1UnZX?=
 =?us-ascii?Q?hWliS75XFhXDl7fp8oj1xfa41Bg4csXX6PMCbfcMoHJfU+keQ5OFiNVHvago?=
 =?us-ascii?Q?xg9hqtP2euhRyV30+s/oZfAf+0qYax/0yEzvTQokiBCsz23TzYlz2Of57Ir2?=
 =?us-ascii?Q?QaMxOIcPxO8x6ZGayi2PN1WqrFNdYhnFeVIEQ7ytY0/GTGCx0VsrZa7MlGZ/?=
 =?us-ascii?Q?wYdIn6HxYMvstXc2wzbZnTAf/h8BbTqDyth64RQYS3qNxCci0fScHJ1kfJ5G?=
 =?us-ascii?Q?K28dRdvkkg1H/yoWPs2qzhDshTFMxKGq9LPd5sdNAa8kbKUNZBc+hZlDzZln?=
 =?us-ascii?Q?Ga0wlKEfS4uilU+OtHa98fv26YMYXEK3UUvCCKVKSAxw5dAR0QEijhrMo4lt?=
 =?us-ascii?Q?RfhhGco0zkUA0wkyZFLC+bvvjQP/B/o+DgcVagwJC9kDNntcxhr1EdynYQ16?=
 =?us-ascii?Q?f0TPnX2PQ9CoXubfvwEqdcHVfxGxkSZdAc/XitxbHKHdRLQCq9Nf/25WkKf8?=
 =?us-ascii?Q?3ayUqhI2+p7i2mOOoAh0LARHM/Vq3Nlm7lRcfVEN3JxuUKCKUfog35/6UfnI?=
 =?us-ascii?Q?jSys3+B1789pF4nyNL4cRZyR5qnQnlaD0ushd3I+37kGj9smHhevZPN37gcd?=
 =?us-ascii?Q?aWqY4cR5YCx4A2EDiWUXK2EEwwHPHWJc0CgZtc4qkH+GNR1yyNfRymmi85AV?=
 =?us-ascii?Q?LlhaUdpk+bNHsL9CO/2BH2mV3vPvYQSXF9uyUT7DIhz7E55ryAU+sToqPSFI?=
 =?us-ascii?Q?jU4cU2jZA+aXJ/bye7wHosr87tWQAEqegX8yM9brBoTJBgOT3hWFWcj13BJb?=
 =?us-ascii?Q?pM8mCPsTFF87lCYNNmd+AyJDc5WeGPlkv7gj2BzwK6pDbeGzEiivGGgHuXDG?=
 =?us-ascii?Q?eUkTDNEEG8sl3Zi3Z2XB7hdaUbrpwdwc+bpxYT0riyxcKlQyVeo6bPWaQ4Zd?=
 =?us-ascii?Q?HZlwaLVuHw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 750d9b58-8a84-48ca-6ede-08de5e8f3703
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 17:03:53.1312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jLxCFdJaogMwYmnPIkwjO5DXK5hMYMaU/M6wyIxFeMlhgmd83wcTPd7XHDtRjih7FBrUr+tYpRE6GgBJOShVCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF178D5B043
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[imre.deak.intel.com:query timed out];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A806AA6804
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:25PM +0530, Ankit Nautiyal wrote:
> Currently, the number of joined pipes are determined early in the flow,
> which limits flexibility for accounting DSC slice overhead. To address
> this, recompute the joined pipe count during DSC configuration.
> 
> Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
> and select the minimal joiner configuration that satisfies the mode
> requirements. This prepares the logic for future changes that will
> consider DSC slice overhead.
> 
> v2:
>  - Rename helper to intel_dp_compute_link_for_joined_pipes(). (Imre)
>  - Move the check for max dotclock inside the helper so that if dotclock
>    check fails for non DSC case for a given number of joined pipes, we
>    are able to fallback to the DSC mode. (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 93 ++++++++++++++++++++-----
>  1 file changed, 77 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 599965a6e1a6..f8986f0acc79 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2804,33 +2804,23 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
>  }
>  
>  static int
> -intel_dp_compute_link_config(struct intel_encoder *encoder,
> -			     struct intel_crtc_state *pipe_config,
> -			     struct drm_connector_state *conn_state,
> -			     bool respect_downstream_limits)
> +intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *pipe_config,
> +				       struct drm_connector_state *conn_state,
> +				       bool respect_downstream_limits)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> -	int num_joined_pipes;
>  	int ret = 0;
>  
> -	if (pipe_config->fec_enable &&
> -	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> -		return -EINVAL;
> -
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> -
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -2880,6 +2870,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			return ret;
>  	}
>  
> +	max_dotclk *= num_joined_pipes;
> +
> +	if (adjusted_mode->crtc_clock > max_dotclk)
> +		return -EINVAL;

When you make max_dotclk dependent on dsc vs. non-dsc mode later in the
patchset, this also needs to be checked for the non-dsc case as well
earlier in the function, falling back to dsc if crtc_clock is too high
for it (as for non-dsc max_dotclk may be lower than for dsc). I suppose
it's easier to move this check earlier already in this patch and later
change the error return to be a fallback, rechecking the clock for dsc
as well here.

> +
>  	drm_dbg_kms(display->drm,
>  		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
>  		    pipe_config->lane_count, pipe_config->port_clock,
> @@ -2893,6 +2888,72 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> +static int
> +intel_dp_compute_link_config(struct intel_encoder *encoder,
> +			     struct intel_crtc_state *crtc_state,
> +			     struct drm_connector_state *conn_state,
> +			     bool respect_downstream_limits)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int num_joined_pipes;
> +	int num_pipes;
> +	int ret = 0;
> +
> +	if (crtc_state->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
> +		return -EINVAL;
> +

Even though num_pipes == 1 should always work, for clarity I initialize
ret to -EINVAL explicitly for the case where no pipes would work. Not
doing a fallback from a forced joined-pipe config would need this
anyway.

> +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		if (num_pipes == 0) {
> +			if (!connector->force_joined_pipes)
> +				continue;
> +			num_joined_pipes = connector->force_joined_pipes;
> +		} else {
> +			num_joined_pipes = num_pipes;
> +		}

As in the previous patch, I'd just skip the force_joined_pipes &&
num_pipes != force_joined_pipes case.

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (adjusted_mode->hdisplay >
> +		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		/*
> +		 * NOTE:
> +		 * The crtc_state->joiner_pipes should have been set at the end
> +		 * only if all the conditions are met. However that would mean
> +		 * that num_joined_pipes is passed around to all helpers and
> +		 * make them use it instead of using crtc_state->joiner_pipes
> +		 * directly or indirectly (via intel_crtc_num_joined_pipes()).
> +		 *
> +		 * For now, setting crtc_state->joiner_pipes to the candidate
> +		 * value to avoid the above churn and resetting it to 0, in case
> +		 * no joiner candidate is found to be suitable for the given
> +		 * configuration.
> +		 */
> +		if (num_joined_pipes > 1)
> +			crtc_state->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> +							   crtc->pipe);
> +
> +		ret = intel_dp_compute_link_for_joined_pipes(encoder, crtc_state, conn_state,
> +							     respect_downstream_limits);
> +		if (ret == 0)
> +			break;
> +	}
> +
> +	if (ret < 0)
> +		crtc_state->joiner_pipes = 0;
> +
> +	return ret;
> +}
> +
>  bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> -- 
> 2.45.2
> 
