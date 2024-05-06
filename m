Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA86B8BD3C6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 19:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4587A10E658;
	Mon,  6 May 2024 17:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LC2VJM1x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7F910E658
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 17:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715016151; x=1746552151;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=R1grxg31zcYo3ytPv3IsJa/rh21dOP5mycWQc/C/UV4=;
 b=LC2VJM1x9p4dTxJmEXmI+DvEp3jXyVHICsrJbjcLG66SnMsppoB0pthy
 4zPRDENzy+Oj2paotgXzI21MrKeN64ZGiraLzuw17DhAWKAPZZUA4QAt/
 pJIBvJy3Bl2kdOpLwLoF+JZK5nb6haYuvufjoWjCs4dhQXqtcfNbL4Xzw
 Kw0sWHkpNVCpnjZ2FCjXwscjerBOvxkw1b8ErI97ASHwi9R0DMzV8Rz3g
 MaH7G4xHw53teeaOyY0RCPiMw+Qo8ChFUHCrUWqGMSiZO78rraNPrZK9d
 ww8nrGpCtybvM2nsYpEGlfNt/yY/yWMbwCpOA3kops5mmcpBiuRssNZ33 Q==;
X-CSE-ConnectionGUID: MxgdOebdTJyIz03Z7VcfOw==
X-CSE-MsgGUID: gBb6+mesT0e2wC7SpVR/Xg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10930699"
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="10930699"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 10:22:31 -0700
X-CSE-ConnectionGUID: 7IMc3vKuRWSJvHwTZMMkxA==
X-CSE-MsgGUID: g9wKkn5aSGmxfg6tXeLtLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="65697610"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 10:22:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 10:22:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 10:22:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 10:22:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d37SoRzAJvJXVRGmNPN9mu8r8YjNftH3Qeo4oFCV/Jx1go9WTBSbnyPAVa46/Z+KWV3+rVqlaaxPMQ2ugCepOonAyo6drdTfOaGXhCEbXSf5Z/wfKNnf6h0oS4AdMATZzR/oMLsZuFH2F0PwAYMrC1SSsC5AheqKX7yCquyrxbL7lbUrgOHGja3VxLd5sZy/6v8APPfTeKw3STLlsi56vXSH+Gznr4Y6uBbhT/qted8gnfdMQIoF2ZzTWftSkF8VVhoUzEzcrinIkFFQUsqpeCMPiJssImp230jeGeq/Je8z0CdERMU8NE5XmRfmk9PXB6/QwRXNQ6aAkQr17U5M3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iaoC0mTmT58VA5x7xPh2AErezYS6xqsKDtIBle+zZyg=;
 b=UUzIVWHuEHSuHk0kK4L57c6bp/w84US3j/C4yJWuEkCSU0erAKs2jfOdwYB/lnm09yEjGVLzNI7i9psfGXYHs7bV7ypBL9Z6UMgXdBz1Q/4agNb188JkCbzgg/qrXZAIaa500Te+jfpr85/DrMbQwxBj7JjbIGLYDOG908bVWvzptLFKpM0XV4uWzZtXF4A1UfmStOuoVPK8tc0igdRWeAy1dr7B4z1v1S9FsldBYWaOel55LgK63bZOK8+X+shooa9P+HYRCMGrlpG1iVNKgLeXk4Glacv+7bSU1blGGo7erwPhCFfIPC5DkVpuvlivc43r4E7TUzaeT/c6JYNGKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Mon, 6 May
 2024 17:22:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 17:22:21 +0000
Date: Mon, 6 May 2024 13:22:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Kumar, Naveen1" <naveen1.kumar@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/display: Introduce Display Metrics info
Message-ID: <ZjkRx4EymaPTh1CZ@intel.com>
References: <20240405220832.689229-1-rodrigo.vivi@intel.com>
 <DM6PR11MB32586294016CD6DD51F1D730A71C2@DM6PR11MB3258.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB32586294016CD6DD51F1D730A71C2@DM6PR11MB3258.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR04CA0069.namprd04.prod.outlook.com
 (2603:10b6:303:6b::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN0PR11MB6036:EE_
X-MS-Office365-Filtering-Correlation-Id: 826ae128-0c41-45c7-5b42-08dc6df1165a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?VkrXQjzNgTEav/o3X0ARrsGrig2Qv0gaePN19V0BAF951tfPtYCmqcqPVe?=
 =?iso-8859-1?Q?Ob/BdnIgIY/jVI4lGN8fO3fueHjETvg52lCtdEpYZsaidQmtkexhTGBxHy?=
 =?iso-8859-1?Q?r1b7WYbyJi3g/8B2PFIoiRiZD1KShj58K1zHVcVfy/AKesKw6aJWz5J/Fk?=
 =?iso-8859-1?Q?fV4MuzxtPR6vszeT9Qe8hOJBQ/QC05WsUGvzruyMA023CAjQ2WpsK4ECdl?=
 =?iso-8859-1?Q?UAMJf2M32uCBcOEHUAsQnHYQTu/Es8Nt9D6YEsyfLzy24C+Xi0LRPEFyPE?=
 =?iso-8859-1?Q?RntOf+bltWBmf9taPceLhLLjiLd7kfJNDmA27VPQVbZxGfgKRdv6K1/IcT?=
 =?iso-8859-1?Q?pGN5+tlrtzi5pvAp4vRfOgRRAJaGEOmt+40aKxVDM4jHFYYkD603gMtyhz?=
 =?iso-8859-1?Q?gQIaanZ7YUuhBXXpkiko2WU4S7dM+/EwT6IJsGxaD6WoeTt3vwvUvZVpgM?=
 =?iso-8859-1?Q?L2/8D1s+R1cjuIFxa+xmC+xUJAQmnQcrJ0IMJLNGxKIbKJxH4jl2HDDF5i?=
 =?iso-8859-1?Q?AaSpc7v1gU9FqhGQYKy975RPzC7ncJVwlZd1xtO8XiNCZdHKyUxbMmv9o2?=
 =?iso-8859-1?Q?KFgU467HFgUc0wRI0klX2cBkSg4CVzC/vb01ZaACJ3yX9KVGj+0WZrejJT?=
 =?iso-8859-1?Q?mHVr2epPthKI76L+yHeHI4Q09XQI3jIZtSyz1MuAtvROozDFTPSEcj0iwK?=
 =?iso-8859-1?Q?I3ax/Ywfc3KPSC451VExX8T6sEZ3/oWphjz/PRE1/e3BRPCBXWGJxczphj?=
 =?iso-8859-1?Q?FmiOtq43G2WRWKohynZuM6xoYUNhkU22ZG00Z0WnGkPHlsFGaAfenWf7Ln?=
 =?iso-8859-1?Q?1xm49NHTmVsdxIJWC/+pV1T4r6vKyEjJulfuE6ZxcWjIwJb9GGbdemBNaa?=
 =?iso-8859-1?Q?0luu+9j3br9o4AHNGlsEBn9wty8HthjcWV4u5Vjydp+DPOCQy8aGAhfnLS?=
 =?iso-8859-1?Q?OxXinV1ibbETrWuFYXNHFaxBPEzcU2etA9IyZ+FSZkA+wEAC4Ve7Q5PRj+?=
 =?iso-8859-1?Q?cqApxE2o4T2qP8rDD+P41ZSQPdYyatB2mhllpD3XdenNfCDOJKEsYpgii6?=
 =?iso-8859-1?Q?Q3ELiBvL3RRLREtkYZm7miTQdIspDBKJ0fi/uuywmRGfxyebr+MSVpVGfz?=
 =?iso-8859-1?Q?S2S3QKqHpCkJwE10X/vPE9npahXZAcCqANq+oxG1/hwwa18vgqVVyEKDlu?=
 =?iso-8859-1?Q?ot1GMUXmpN5lnEhgL5TiiHZXAYLeBLwMZCrPWPPXg6DSJeVpTF8FQXl/SK?=
 =?iso-8859-1?Q?/bMrv+wWv6gREKUnwkAj6TYsx07a9EnfXibjb4C9s0ywY/18Ca5mudl7ML?=
 =?iso-8859-1?Q?8iClm+aqsSu63ihoFSfxtvVn5A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?thc3nlJRELe1BesUEXfaooqXxt0ZEDqPM0nfyLjwPX3FX6pClf5qk8DLuw?=
 =?iso-8859-1?Q?VCIfAOqY77cEqqZTistZ9eGsQ6ECPHSBqrafA04sDj7194s/MeN8eNmB4L?=
 =?iso-8859-1?Q?q9wpDzosnknXGOIdu8Uxu9hTVQ5hzLhYl9KXdF5OZ7hds8R+2qhKBbTHEq?=
 =?iso-8859-1?Q?v/72v/GxKyL2wiAqYPtXKVELVRD7amBFN00u+0wd5JGNvZ1TBW7eOc4ROk?=
 =?iso-8859-1?Q?FpEyuocqPtmhLdRhabDL6ImhnesKLW3ahn/zaHGWATyGV/dmcjPGc1zddm?=
 =?iso-8859-1?Q?7fU2bFUKhwcgRd/bh2JcHc6yYeag9odUsMWSHKCzzjzH0Avi4raGu+CiGT?=
 =?iso-8859-1?Q?pyQwdnLhfsfhaopGD2ebzr8N9WEt8giZ0SkArhDE4bZoZK5A2TpPCY7W17?=
 =?iso-8859-1?Q?z2eqIMUKtoC25G/T/YmT77OgXvYBJ7KsVicUTKYqYVdr0LJLS1Z6+WwiR5?=
 =?iso-8859-1?Q?0qo6/fX+l3IyWGJyRrN/LWZfNdMM5bCzSc2JPnBPy1SIcjSjCnVe5oqyT4?=
 =?iso-8859-1?Q?3Mbbt9n1I7bjrgg9D5rx2g1psTtSIwNbbWQPh5GSVvP8rsTfAct4TBmwdX?=
 =?iso-8859-1?Q?sBcOhDE4jf7iKo6ri6PPCAquedBrcLDNDgxqRrnLwfN+OF1ESAu6Yysa2x?=
 =?iso-8859-1?Q?T7KxnjGj71AxysXYNxlCAocFTqdYN5H1lyrX5xrowyEzCfIIIYWlno6jOQ?=
 =?iso-8859-1?Q?0qywmd3rXfW5zaoUejqFMBEH+iFnBMmMAZ83KQUbMLsXRmOrSUtt0M+nJg?=
 =?iso-8859-1?Q?LH68zUaChKS+dwPR7t7wldvRvUbU303fYmsVhLTpvrFlLTRJ0XVcm7P38O?=
 =?iso-8859-1?Q?jaOpOFJwVHy5AaKfqvd1hvJM50nFavduaaqX8XF9a1QfxJ4UHCGd8bqGuv?=
 =?iso-8859-1?Q?wP//aLpdGRJ1bJsC3BkyODkdlcIAWYs2jpf4KNripGWynx6VJSPkLCf311?=
 =?iso-8859-1?Q?k0CM0LyXThGSfO+z2YQTDftu9Ciw8KNmxgD+JYNgPLZ39+DV4vZ60+b6Gq?=
 =?iso-8859-1?Q?jP7QNXn0w4mqtziKSg+e107+7PY8p9gkRNpMEtbG59fqMjBBDX/EmOBlQE?=
 =?iso-8859-1?Q?9R01YRVF34sF1UOiC3Cdbb1ZqHzazYe+yXDdhB8wzEGvjtCPnVxhDI6fB1?=
 =?iso-8859-1?Q?pChdgMOnORnZhT4V01euT/v2z1A2nZHL99T4vxcHzmbVw2e4u8Oh9k7ctP?=
 =?iso-8859-1?Q?HLo5/5n3BfcEebcHLvYeJi6F5wIBy/h96zG5a7TDkg3bZCAoVKk9Zd1Bcv?=
 =?iso-8859-1?Q?18uw/ZGCa8kpcZKuKqkLcSMW/Tzxh5hgY/VzB90KKTFjOZ2lJehVTqZT18?=
 =?iso-8859-1?Q?zJQHt76YTev8m66m74JyUKrP4iSek9/kpkyMX8zLuKfztVte2+X/RuweBt?=
 =?iso-8859-1?Q?rTZo8kLB2x/FFOcyjzXkoRd4PXbGzxCHCO2QgHyZJQphSnxeyImO43xmk1?=
 =?iso-8859-1?Q?SygLraxJG+JMCngQMe/Ms0YUfv3P6gDpR1aOxa5gqpmerQAK2fe8xXRTHk?=
 =?iso-8859-1?Q?BE2uOHI2bFAZy0NLsNrObYAoPwwwbYTFsy9N/C5Rd7lMLv7/PJOIinDYoK?=
 =?iso-8859-1?Q?Z3rElKsbGrIC36lHYWbrNqSr8AIn2mLGW6mL3BlGlL5glrLHmC5/aPEuH6?=
 =?iso-8859-1?Q?q6IMYzuboAmPtxJetTCRR9tJb0kg45LfXk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 826ae128-0c41-45c7-5b42-08dc6df1165a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 17:22:21.3103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: llAXqfR9UW/0StNT4qxERfAPDP8BeOGVdCCnpptosDhuYeZHZhlmqFsAQeJLjSDdcC5gVEyjnLI6Wn1VesDxHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
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

On Mon, May 06, 2024 at 06:03:17AM -0400, Kumar, Naveen1 wrote:
> 
> 
> >-----Original Message-----
> >From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >Sent: Saturday, April 6, 2024 3:39 AM
> >To: intel-gfx@lists.freedesktop.org
> >Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> ><uma.shankar@intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>;
> >Kumar, Naveen1 <naveen1.kumar@intel.com>; Nikula, Jani
> ><jani.nikula@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
> >Subject: [PATCH] drm/i915/display: Introduce Display Metrics info
> >
> >Introduce a display metrics information through debugfs for a better view of
> >the vblank and page flips, in special Async flips behavior.
> >
> >There is currently an overall expectation that whenever
> >vblank_mode=0 is used with an graphics application, that automatically
> >async_flips are happening. However, while implementing the Display Metrics
> >for GuC SLPC, it was observed that it is not necessarily true for many of the
> >expected cases.
> >
> >So, while the GuC SLPC side of the metrics doesn't get ready, let's at least bring
> >the debugfs view of it so we can work to understand and fix any potential issue
> >around our async vblanks.
> >
> >Please notice that the every struct here follows exactly the GuC shared data
> >buffer, so the next step of the integration would be smooth and almost
> >transparent to this intel_metrics on the display side.
> >
> >Cc: Uma Shankar <uma.shankar@intel.com>
> >Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >Cc: Naveen Kumar <naveen1.kumar@intel.com>
> >Cc: Jani Nikula <jani.nikula@intel.com>
> >Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> >Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >---
> > drivers/gpu/drm/i915/Makefile                 |   1 +
> > drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
> > .../gpu/drm/i915/display/intel_display_core.h |   2 +
> > .../drm/i915/display/intel_display_debugfs.c  |  12 +
> > .../drm/i915/display/intel_display_driver.c   |   5 +
> > .../gpu/drm/i915/display/intel_display_irq.c  |   3 +
> > drivers/gpu/drm/i915/display/intel_metrics.c  | 356 ++++++++++++++++++
> >drivers/gpu/drm/i915/display/intel_metrics.h  |  27 ++
> > .../drm/i915/display/skl_universal_plane.c    |   3 +
> > drivers/gpu/drm/xe/Makefile                   |   1 +
> > 10 files changed, 424 insertions(+), 1 deletion(-)  create mode 100644
> >drivers/gpu/drm/i915/display/intel_metrics.c
> > create mode 100644 drivers/gpu/drm/i915/display/intel_metrics.h
> >
> >diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> >index af9e871daf1d..a3c8d9f5614c 100644
> >--- a/drivers/gpu/drm/i915/Makefile
> >+++ b/drivers/gpu/drm/i915/Makefile
> >@@ -291,6 +291,7 @@ i915-y += \
> > 	display/intel_link_bw.o \
> > 	display/intel_load_detect.o \
> > 	display/intel_lpe_audio.o \
> >+	display/intel_metrics.o \
> > 	display/intel_modeset_lock.o \
> > 	display/intel_modeset_setup.o \
> > 	display/intel_modeset_verify.o \
> >diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >b/drivers/gpu/drm/i915/display/intel_display.c
> >index a481c9218138..ca30b8d48e1f 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display.c
> >@@ -94,6 +94,7 @@
> > #include "intel_link_bw.h"
> > #include "intel_lvds.h"
> > #include "intel_lvds_regs.h"
> >+#include "intel_metrics.h"
> > #include "intel_modeset_setup.h"
> > #include "intel_modeset_verify.h"
> > #include "intel_overlay.h"
> >@@ -1021,11 +1022,15 @@ static void intel_post_plane_update(struct
> >intel_atomic_state *state,
> > 				    struct intel_crtc *crtc)
> > {
> > 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >+	struct intel_display *display = &dev_priv->display;
> > 	const struct intel_crtc_state *old_crtc_state =
> > 		intel_atomic_get_old_crtc_state(state, crtc);
> > 	const struct intel_crtc_state *new_crtc_state =
> > 		intel_atomic_get_new_crtc_state(state, crtc);
> > 	enum pipe pipe = crtc->pipe;
> >+	const struct intel_plane_state __maybe_unused *plane_state;
> >+	struct intel_plane *plane;
> >+	int i;
> >
> > 	intel_psr_post_plane_update(state, crtc);
> >
> >@@ -1057,6 +1062,12 @@ static void intel_post_plane_update(struct
> >intel_atomic_state *state,
> >
> > 	if (audio_enabling(old_crtc_state, new_crtc_state))
> > 		intel_encoders_audio_enable(state, crtc);
> >+
> >+	if (!new_crtc_state->do_async_flip) {
> >+		for_each_new_intel_plane_in_state(state, plane, plane_state, i)
> >+			intel_metrics_flip(display, new_crtc_state, plane->id,
> >+					   false);
> >+	}
> > }
> >
> > static void intel_crtc_enable_flip_done(struct intel_atomic_state *state, @@ -
> >7139,6 +7150,7 @@ static void intel_atomic_commit_tail(struct
> >intel_atomic_state *state)  {
> > 	struct drm_device *dev = state->base.dev;
> > 	struct drm_i915_private *dev_priv = to_i915(dev);
> >+	struct intel_display *display = &dev_priv->display;
> > 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> > 	struct intel_crtc *crtc;
> > 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
> >@@ -7261,7 +7273,6 @@ static void intel_atomic_commit_tail(struct
> >intel_atomic_state *state)
> > 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > 		if (new_crtc_state->do_async_flip)
> > 			intel_crtc_disable_flip_done(state, crtc);
> >-
> > 		intel_color_wait_commit(new_crtc_state);
> > 	}
> >
> >@@ -7314,6 +7325,8 @@ static void intel_atomic_commit_tail(struct
> >intel_atomic_state *state)
> > 		 * FIXME get rid of this funny new->old swapping
> > 		 */
> > 		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
> >+
> >+		intel_metrics_refresh_info(display, new_crtc_state);
> > 	}
> >
> > 	/* Underruns don't always raise interrupts, so check manually */ diff --
> >git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >b/drivers/gpu/drm/i915/display/intel_display_core.h
> >index 2167dbee5eea..992db9098566 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >@@ -42,6 +42,7 @@ struct intel_cdclk_vals;  struct intel_color_funcs;  struct
> >intel_crtc;  struct intel_crtc_state;
> >+struct intel_display_metrics;
> > struct intel_dmc;
> > struct intel_dpll_funcs;
> > struct intel_dpll_mgr;
> >@@ -530,6 +531,7 @@ struct intel_display {
> > 	struct intel_fbc *fbc[I915_MAX_FBCS];
> > 	struct intel_frontbuffer_tracking fb_tracking;
> > 	struct intel_hotplug hotplug;
> >+	struct intel_display_metrics *metrics;
> > 	struct intel_opregion *opregion;
> > 	struct intel_overlay *overlay;
> > 	struct intel_display_params params;
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >index 3e364891dcd0..f05b9a9ddee0 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >@@ -30,6 +30,7 @@
> > #include "intel_hdcp.h"
> > #include "intel_hdmi.h"
> > #include "intel_hotplug.h"
> >+#include "intel_metrics.h"
> > #include "intel_panel.h"
> > #include "intel_psr.h"
> > #include "intel_psr_regs.h"
> >@@ -642,6 +643,16 @@ static int i915_display_capabilities(struct seq_file *m,
> >void *unused)
> > 	return 0;
> > }
> >
> >+static int i915_display_metrics(struct seq_file *m, void *unused) {
> >+	struct drm_i915_private *i915 = node_to_i915(m->private);
> >+	struct drm_printer p = drm_seq_file_printer(m);
> >+
> >+	intel_metrics_show(&i915->display, &p);
> >+
> >+	return 0;
> >+}
> >+
> > static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
> > 	struct drm_i915_private *dev_priv = node_to_i915(m->private); @@ -
> >1059,6 +1070,7 @@ static const struct drm_info_list
> >intel_display_debugfs_list[] = {
> > 	{"i915_power_domain_info", i915_power_domain_info, 0},
> > 	{"i915_display_info", i915_display_info, 0},
> > 	{"i915_display_capabilities", i915_display_capabilities, 0},
> >+	{"i915_display_metrics", i915_display_metrics, 0},
> > 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
> > 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
> > 	{"i915_ddb_info", i915_ddb_info, 0},
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >index 87dd07e0d138..767b2d5b3826 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >@@ -46,6 +46,7 @@
> > #include "intel_hdcp.h"
> > #include "intel_hotplug.h"
> > #include "intel_hti.h"
> >+#include "intel_metrics.h"
> > #include "intel_modeset_lock.h"
> > #include "intel_modeset_setup.h"
> > #include "intel_opregion.h"
> >@@ -514,6 +515,8 @@ int intel_display_driver_probe(struct
> >drm_i915_private *i915)
> >
> > 	intel_overlay_setup(i915);
> >
> >+	intel_metrics_init(&i915->display);
> >+
> > 	ret = intel_fbdev_init(&i915->drm);
> > 	if (ret)
> > 		return ret;
> >@@ -611,6 +614,8 @@ void intel_display_driver_remove_noirq(struct
> >drm_i915_private *i915)
> >
> > 	intel_dp_tunnel_mgr_cleanup(i915);
> >
> >+	intel_metrics_fini(&i915->display);
> >+
> > 	intel_overlay_cleanup(i915);
> >
> > 	intel_gmbus_teardown(i915);
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >index f846c5b108b5..202400a771b2 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >@@ -18,6 +18,7 @@
> > #include "intel_fifo_underrun.h"
> > #include "intel_gmbus.h"
> > #include "intel_hotplug_irq.h"
> >+#include "intel_metrics.h"
> > #include "intel_pmdemand.h"
> > #include "intel_psr.h"
> > #include "intel_psr_regs.h"
> >@@ -25,8 +26,10 @@
> > static void
> > intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)  {
> >+	struct intel_display *display = &dev_priv->display;
> > 	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
> >
> >+	intel_metrics_vblank(display, crtc);
> > 	drm_crtc_handle_vblank(&crtc->base);
> > }
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.c
> >b/drivers/gpu/drm/i915/display/intel_metrics.c
> >new file mode 100644
> >index 000000000000..2cb2b8189b25
> >--- /dev/null
> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.c
> >@@ -0,0 +1,356 @@
> >+// SPDX-License-Identifier: MIT
> >+/*
> >+ * Copyright © 2024 Intel Corporation
> >+ */
> >+
> >+#include "intel_metrics.h"
> >+
> >+#include <drm/drm_modes.h>
> >+#include <drm/drm_print.h>
> >+
> >+#include "i915_drv.h"
> >+#include "intel_de.h"
> >+#include "intel_display_types.h"
> >+
> >+/**
> >+ * Display Metrics
> >+ *
> >+ * Provide some display activity overview such as active refresh rates,
> >+ * vblank activity and page flip activities.
> >+ * For now it is informative debug only, but later it will be expanded
> >+ * to be used for GT frequency selection by GuC SLPC.
> >+ */
> >+
> >+/*
> >+ * An event using an work queue is used to avoid any disturbance in the
> >+ * critical path that could cause performance impacts.
> >+ */
> >+struct display_event {
> >+	struct work_struct work;
> >+	struct drm_i915_private *i915;
> >+	struct intel_display *display;
> >+	bool is_vblank;
> >+	int pipe;
> >+	int plane;
> >+	bool async_flip;
> >+};
> >+
> >+/*
> >+ * Although we could simply save this inside our crtc structs, we are
> >+ * already mimicking the GuC SLPC defition of the display data, for
> >+future
> >+ * usage.
> >+ */
> >+#define MAX_PIPES		8
> >+#define MAX_PLANES_PER_PIPE	8
> >+
> >+struct display_global_info {
> >+	u32 version:8;
> >+	u32 num_pipes:4;
> >+	u32 num_planes_per_pipe:4;
> >+	u32 reserved_1:16;
> >+	u32 refresh_count:16;
> >+	u32 vblank_count:16;
> >+	u32 flip_count:16;
> >+	u32 reserved_2:16;
> >+	u32 reserved_3[13];
> >+} __packed;
> >+
> >+struct display_refresh_info {
> >+	u32 refresh_interval:16;
> >+	u32 is_variable:1;
> >+	u32 reserved:15;
> >+} __packed;
> >+
> >+/*
> >+ * When used with GuC SLPC, the host must update each 32-bit part with
> >+a single
> >+ * atomic write so that SLPC will read the contained bit fields together.
> >+ * The host must update the two parts in order - total flip count and
> >+timestamp
> >+ * first, vsync and async flip counts second.
> >+ * Hence, these items are not defined with individual bitfields.
> >+ */
> >+#define FLIP_P1_LAST		REG_GENMASK(31, 7)
> >+#define FLIP_P1_TOTAL_COUNT	REG_GENMASK(6, 0)
> >+#define FLIP_P2_ASYNC_COUNT	REG_GENMASK(31, 16)
> >+#define FLIP_P2_VSYNC_COUNT	REG_GENMASK(15, 0)
> >+
> >+struct display_flip_metrics {
> >+	u32 part1;
> >+	u32 part2;
> >+} __packed;
> >+
> >+/*
> >+ * When used with GuC SLPC, the host must update each 32-bit part with
> >+a single
> >+ * atomic write, so that SLPC will read the count and timestamp together.
> >+ * Hence, this item is not defined with individual bitfields.
> >+ */
> >+#define VBLANK_LAST	REG_GENMASK(31, 7)
> >+#define VBLANK_COUNT	REG_GENMASK(6, 0)
> >+
> >+struct intel_display_metrics {
> >+	struct display_global_info global_info;
> >+	struct display_refresh_info refresh_info[MAX_PIPES];
> >+	u32 vblank_metrics[MAX_PIPES];
> >+	struct display_flip_metrics
> >+	flip_metrics[MAX_PIPES][MAX_PLANES_PER_PIPE];
> >+} __packed;
> >+
> >+/**
> >+ * intel_metrics_refresh_info - Refresh rate information
> >+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
> >+ * @crtc_state: New CRTC state upon a modeset.
> >+ *
> >+ * To be called on a modeset. It then saves the current refresh
> >+interval in
> >+ * micro seconds.
> >+ */
> >+void intel_metrics_refresh_info(struct intel_display *display,
> >+				struct intel_crtc_state *crtc_state) {
> >+	struct intel_display_metrics *metrics = display->metrics;
> >+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >+	struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
> >+	u32 interval_us;
> >+
> >+	if (!display->metrics)
> >+		return;
> >+
> >+	interval_us = crtc_state->hw.active ? DIV_ROUND_UP(1000000,
> >+						drm_mode_vrefresh(mode)) :
> >0;
> >+
> >+	metrics->refresh_info[crtc->pipe].refresh_interval = interval_us;
> >+	metrics->refresh_info[crtc->pipe].is_variable = crtc_state-
> >>uapi.vrr_enabled;
> >+	metrics->global_info.refresh_count += 1; }
> >+
> >+static void metrics_update_vblank(struct intel_display_metrics *metrics, int
> >pipe,
> >+				  u32 timestamp)
> >+{
> >+	u32 vblank;
> >+
> >+	vblank = metrics->vblank_metrics[pipe];
> >+
> >+	vblank = REG_FIELD_GET(VBLANK_COUNT, vblank);
> >+	vblank = REG_FIELD_PREP(VBLANK_COUNT, vblank + 1);
> >+	vblank |= REG_FIELD_PREP(VBLANK_LAST, timestamp);
> >+
> >+	/* Write everything at once in preparation for the GuC SLPC
> >requirement */
> >+	metrics->vblank_metrics[pipe] = vblank;
> >+	metrics->global_info.vblank_count += 1; }
> >+
> >+static void metrics_update_flip(struct intel_display_metrics *metrics, int pipe,
> >+				int plane, bool async_flip, u32 timestamp) {
> >+	u32 part1, part2, count;
> >+
> >+	part1 = metrics->flip_metrics[pipe][plane].part1;
> >+	part2 = metrics->flip_metrics[pipe][plane].part2;
> >+
> >+	part1 = REG_FIELD_GET(FLIP_P1_TOTAL_COUNT, part1);
> >+	part1 = REG_FIELD_PREP(FLIP_P1_TOTAL_COUNT, part1 + 1);
> >+	part1 |= REG_FIELD_PREP(FLIP_P1_LAST, timestamp);
> >+
> >+	if (async_flip) {
> >+		count = REG_FIELD_GET(FLIP_P2_ASYNC_COUNT, part2);
> >+		part2 &= ~FLIP_P2_ASYNC_COUNT;
> >+		part2 |= REG_FIELD_PREP(FLIP_P2_ASYNC_COUNT, count + 1);
> >+	} else {
> >+		count = REG_FIELD_GET(FLIP_P2_VSYNC_COUNT, part2);
> >+		part2 &= ~FLIP_P2_VSYNC_COUNT;
> >+		part2 |= REG_FIELD_PREP(FLIP_P2_VSYNC_COUNT, count + 1);
> >+	}
> >+
> >+	/*
> >+	 * Write everything in this way and this order in preparation for the
> >+	 * GuC SLPC requirement
> >+	 */
> >+	metrics->flip_metrics[pipe][plane].part1 = part1;
> >+	metrics->flip_metrics[pipe][plane].part2 = part2;
> >+
> >+	metrics->global_info.flip_count += 1;
> >+}
> >+
> >+/*
> >+ * Let's use the same register GuC SLPC uses for timestamp.
> >+ * It uses a register that is outside GT domain so GuC doesn't need
> >+ * to wake the GT for reading during SLPC loop.
> >+ * This is a single register regarding the GT, so we can read directly
> >+ * from here, regarding the GT GuC is in.
> >+ */
> >+#define MCHBAR_MIRROR_BASE_SNB	0x140000
> >+#define MCHBAR_BCLK_COUNT	_MMIO(MCHBAR_MIRROR_BASE_SNB
> >+ 0x5984)
> >+#define MTL_BCLK_COUNT		_MMIO(0xc28)
> >+#define   TIMESTAMP_MASK	REG_GENMASK(30, 6)
> >+
> >+static u32 bclk_read_timestamp(struct drm_i915_private *i915) {
> >+	u32 timestamp;
> >+
> >+	if (DISPLAY_VER(i915) >= 14)
> >+		timestamp = intel_de_read(i915, MTL_BCLK_COUNT);
> >+	else
> >+		timestamp = intel_de_read(i915, MCHBAR_BCLK_COUNT);
> >+
> >+	return REG_FIELD_GET(TIMESTAMP_MASK, timestamp); }
> >+
> >+static void display_event_work(struct work_struct *work) {
> >+	struct display_event *event = container_of(work, struct display_event,
> >work);
> >+	struct intel_display *display = event->display;
> >+	u32 timestamp;
> >+
> >+	timestamp = bclk_read_timestamp(event->i915);
> >+
> >+	if (event->is_vblank) {
> >+		metrics_update_vblank(display->metrics, event->pipe,
> >timestamp);
> >+	} else {
> >+		metrics_update_flip(display->metrics, event->pipe, event-
> >>plane,
> >+				    event->async_flip, timestamp);
> >+	}
> >+
> >+	kfree(event);
> >+}
> >+
> >+void intel_metrics_init(struct intel_display *display) {
> >+	struct intel_display_metrics *metrics;
> >+
> >+	metrics = kzalloc(sizeof(*metrics), GFP_KERNEL);
> >+	if (!metrics)
> >+		return;
> >+
> >+	metrics->global_info.version = 1;
> >+	metrics->global_info.num_pipes = MAX_PIPES;
> >+	metrics->global_info.num_planes_per_pipe = MAX_PLANES_PER_PIPE;
> >+
> >+	display->metrics = metrics;
> >+}
> >+
> >+void intel_metrics_fini(struct intel_display *display) {
> >+	if (!display->metrics)
> >+		return;
> >+
> >+	kfree(display->metrics);
> >+}
> >+
> >+/**
> >+ * intel_metrics_vblank - Vblank information
> >+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
> >+ * @crtc: The Intel CRTC that received the vblank interrupt.
> >+ *
> >+ * To be called when a vblank is passed.
> >+ */
> >+void intel_metrics_vblank(struct intel_display *display,
> >+			  struct intel_crtc *crtc)
> >+{
> >+	struct display_event *event;
> >+
> >+	if (!display->metrics)
> >+		return;
> >+
> >+	event = kmalloc(sizeof(*event), GFP_ATOMIC);
> 
> HI Rodrigo, after changing kmalloc -> kzalloc, it works fine for us. It does correctly prints Global Flip count and Async Flip count.
> Prior to this change, event->is_vblank in function display_event_work is always true and hence it never increases flip count.

thanks for pointing that out. kzalloc is indeed better.
There's also another kmalloc down that needs to be changed to kzalloc.

Anyway, when you mentioned that you saw the async flip count increasing,
you are telling about the igt test right?
or do you have any special compositor change required?

In my environment here I still only see the async flip increasing
with IGT or with a very limited cases...

> 
> Thanks Chaitanya for pointing this out.
> Regards,
> Naveen Kumar
> 
> >+	if (!event)
> >+		return;
> >+
> >+	INIT_WORK(&event->work, display_event_work);
> >+	event->i915 = to_i915(crtc->base.dev);
> >+	event->display = display;
> >+	event->is_vblank = true;
> >+	event->pipe = crtc->pipe;
> >+	queue_work(system_highpri_wq, &event->work); }
> >+
> >+/**
> >+ * intel_metrics_flip - Flip information
> >+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
> >+ * @crtc_state: New CRTC state upon a page flip.
> >+ * @plane: Which plane ID got the page flip.
> >+ * @async_flip: A boolean to indicate if the page flip was async.
> >+ *
> >+ * To be called on a page flip.
> >+ */
> >+void intel_metrics_flip(struct intel_display *display,
> >+			const struct intel_crtc_state *crtc_state,
> >+			int plane, bool async_flip)
> >+{
> >+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >+	struct display_event *event;
> >+
> >+	if (!display->metrics)
> >+		return;
> >+
> >+	event = kmalloc(sizeof(*event), GFP_ATOMIC);
> Same here, had to change kmalloc -> kzalloc
> 
> >+	if (!event)
> >+		return;
> >+
> >+	INIT_WORK(&event->work, display_event_work);
> >+	event->i915 = to_i915(crtc->base.dev);
> >+	event->display = display;
> >+	event->pipe = crtc->pipe;
> >+	event->plane = plane;
> >+	event->async_flip = async_flip;
> >+	queue_work(system_highpri_wq, &event->work); }
> >+
> >+void intel_metrics_show(struct intel_display *display, struct
> >+drm_printer *p) {
> >+	struct intel_display_metrics *metrics = display->metrics;
> >+	int pipe, plane;
> >+	u32 val;
> >+
> >+	if (!metrics)
> >+		return;
> >+
> >+	drm_printf(p, "\nDisplay Metrics - Globals:\n");
> >+	drm_printf(p, "\tVersion: %d\n", metrics->global_info.version);
> >+	drm_printf(p, "\tNum Pipes: %d\n", metrics->global_info.num_pipes);
> >+	drm_printf(p, "\tNum Planes per Pipe: %d\n",
> >+		   metrics->global_info.num_planes_per_pipe);
> >+	drm_printf(p, "\tGlobal Refresh Info Count: %d\n",
> >+		   metrics->global_info.refresh_count);
> >+	drm_printf(p, "\tGlobal Vblank Count: %d\n",
> >+		   metrics->global_info.vblank_count);
> >+	drm_printf(p, "\tGlobal Flip Count: %d\n",
> >+		   metrics->global_info.flip_count);
> >+
> >+	for (pipe = 0; pipe < MAX_PIPES; pipe++) {
> >+		if (!metrics->refresh_info[pipe].refresh_interval)
> >+			continue;
> >+
> >+		drm_printf(p, "\nDisplay Metrics - Refresh Info - Pipe[%d]:\n",
> >+			   pipe);
> >+		drm_printf(p, "\tRefresh Interval: %d\n",
> >+			   metrics->refresh_info[pipe].refresh_interval);
> >+		drm_printf(p, "\tIS VRR: %d\n",
> >+			   metrics->refresh_info[pipe].is_variable);
> >+
> >+		drm_printf(p, "Display Metrics - Vblank Info - Pipe[%d]:\n",
> >+			   pipe);
> >+		val = metrics->vblank_metrics[pipe];
> >+		drm_printf(p, "\tVBlank Last Timestamp: %x\n",
> >+			   REG_FIELD_GET(VBLANK_LAST, val));
> >+		drm_printf(p, "\tVBlank Count: %d\n",
> >+			   REG_FIELD_GET(VBLANK_COUNT, val));
> >+
> >+		drm_printf(p, "Display Metrics - Flip Info - Pipe[%d]:\n", pipe);
> >+		for (plane = 0; plane < MAX_PLANES_PER_PIPE; plane++) {
> >+			val = metrics->flip_metrics[pipe][plane].part1;
> >+			if (!val)
> >+				continue;
> >+
> >+			drm_printf(p, "\tFlip Info - Plane[%d]:\n", plane);
> >+			drm_printf(p, "\t\tFlip Last Timestamp: %x\n",
> >+				   REG_FIELD_GET(FLIP_P1_LAST, val));
> >+			drm_printf(p, "\t\tFlip Total Count: %d\n",
> >+				   REG_FIELD_GET(FLIP_P1_TOTAL_COUNT,
> >val));
> >+
> >+			val = metrics->flip_metrics[pipe][plane].part2;
> >+
> >+			drm_printf(p, "\t\tFlip Async Count: %d\n",
> >+				   REG_FIELD_GET(FLIP_P2_ASYNC_COUNT,
> >val));
> >+			drm_printf(p, "\t\tFlip Vsync Count: %d\n",
> >+				   REG_FIELD_GET(FLIP_P2_VSYNC_COUNT,
> >val));
> >+		}
> >+	}
> >+}
> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.h
> >b/drivers/gpu/drm/i915/display/intel_metrics.h
> >new file mode 100644
> >index 000000000000..9e41dc9522f3
> >--- /dev/null
> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.h
> >@@ -0,0 +1,27 @@
> >+/* SPDX-License-Identifier: MIT */
> >+/*
> >+ * Copyright © 2024 Intel Corporation
> >+ */
> >+
> >+#ifndef __INTEL_METRICS_H__
> >+#define __INTEL_METRICS_H__
> >+
> >+#include <linux/types.h>
> >+
> >+struct drm_printer;
> >+struct intel_crtc;
> >+struct intel_crtc_state;
> >+struct intel_display;
> >+
> >+void intel_metrics_refresh_info(struct intel_display *display,
> >+				struct intel_crtc_state *crtc_state); void
> >+intel_metrics_vblank(struct intel_display *display,
> >+			  struct intel_crtc *intel_crtc);
> >+void intel_metrics_flip(struct intel_display *display,
> >+			const struct intel_crtc_state *crtc_state,
> >+			int plane, bool async_flip);
> >+void intel_metrics_init(struct intel_display *display); void
> >+intel_metrics_fini(struct intel_display *display); void
> >+intel_metrics_show(struct intel_display *display, struct drm_printer
> >+*p);
> >+
> >+#endif
> >diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >index 860574d04f88..fdd21a41d79d 100644
> >--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >@@ -17,6 +17,7 @@
> > #include "intel_fb.h"
> > #include "intel_fbc.h"
> > #include "intel_frontbuffer.h"
> >+#include "intel_metrics.h"
> > #include "intel_psr.h"
> > #include "intel_psr_regs.h"
> > #include "skl_scaler.h"
> >@@ -1392,6 +1393,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> > 		     bool async_flip)
> > {
> > 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> >+	struct intel_display *display = &dev_priv->display;
> > 	enum plane_id plane_id = plane->id;
> > 	enum pipe pipe = plane->pipe;
> > 	u32 plane_ctl = plane_state->ctl;
> >@@ -1404,6 +1406,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> > 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > 			  skl_plane_surf(plane_state, 0));
> >+	intel_metrics_flip(display, crtc_state, plane_id, async_flip);
> > }
> >
> > static bool intel_format_is_p01x(u32 format) diff --git
> >a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile index
> >e5b1715f721e..5133dba2c7de 100644
> >--- a/drivers/gpu/drm/xe/Makefile
> >+++ b/drivers/gpu/drm/xe/Makefile
> >@@ -263,6 +263,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > 	i915-display/intel_hti.o \
> > 	i915-display/intel_link_bw.o \
> > 	i915-display/intel_lspcon.o \
> >+	i915-display/intel_metrics.o \
> > 	i915-display/intel_modeset_lock.o \
> > 	i915-display/intel_modeset_setup.o \
> > 	i915-display/intel_modeset_verify.o \
> >--
> >2.44.0
> 
