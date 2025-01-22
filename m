Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A804A18F60
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23B910E6A5;
	Wed, 22 Jan 2025 10:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAA9xBsC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284AE10E6A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 10:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737540756; x=1769076756;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bs1p7gMlrn/UxYBLw2depmHa8MVwhKtRLIVv/fZBSnE=;
 b=SAA9xBsCqtzVGURPlPqyIC/JjTvY0IQ0NTxz5OrFtaaFIVX19dx8Nsix
 d+WCDq7+e9ChHd4IZOj2AsAEt1+6OcFJBwA87JNlZVxrwBBGguteo2V/V
 wsMUxFER9kc1Byhya5U/A8CbWt74c9TfRks1Xmtj/sDWoAC6mcMoAI6JX
 Z5l53X33sh9SGzBgZ+w2Ha5wbaGWFc2CetnsUUIeeJshQDThg8FAR/fR0
 j9zJ45jzbF2q7Qo62zdS55VNXB4mo9hXON/Y47TuUpoOJ2bwkwOMuhuGS
 GOQcjJthnzA0wKGyO60akB1D22ymA3nzRxXb+zpcbWxCwnkeYZ3JzVy9e Q==;
X-CSE-ConnectionGUID: Y6sy6gdyT2q+khjsWZwMRw==
X-CSE-MsgGUID: Zl2DyTyUTQWCsOpvwN5k2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37905665"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="37905665"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:12:13 -0800
X-CSE-ConnectionGUID: faUejLqqQFKIHv8l7Lkoag==
X-CSE-MsgGUID: xary9we9TJaDa+zMjPfu7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="112075410"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 02:12:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 02:12:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 02:12:13 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 02:12:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GMMExFBSZ7YPM7D8SHfltCZ1+C6pkmkXdK4mhxU5chn4CvawKBslM4AukrBEvXUFNjBfbyjlVQrA9m6sG8kL5ivGLMkXnuvpg+TIGBZ6LiPlzFt5vgGzNaLmBjF57U0nRoZpKYs9wqtNMuMX4BTZw/Hkq6fQRsIO6moTdK+nA9yHBSE9BltawrbbvU8EU5FwpHxWkL6lAjesVmjgdx7WV47z+na9dwbdqzj2iHGmTw6O4F8vL003GQcWv5KyunLBYTHRToUM+1rdI/QSLTZ3iyu2UruexLeF9NTMrQpyqmvi9P1tPhIfFpf6obQe3uzwzRbb+3vambLIHgEZpqEHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Z1XKdCeUhUDp+sdryHxqxHq8YKTTF6wbOu+K+EtuRI=;
 b=YikY/fvBsn9K+2jxBDdk/W0n6PMpF0yjezFqAyh8a3UH1/M9g7mC/O0rhWT5T5D+5fuF7cWV8G66kxg7F0mBpub3+Vl0j6JKTBtBAJ3U2Quly3B7H7oSGXLW58iNInEppk5hXqK8kcDxKKDDkeigLes4LFBIdmXVcriuQxwiqYSjqhRmzYZzvN6RF5eABFcgNiRfA3GXqS8lK5B/+xOLtdbT5Qd0iO0Hdl+pDs9J1Mq0zyBE0bH8DeLNFMASRyNXDX2d8VefXq/btpMLv1AfwXx/SXuzUFjMlrPLytQPvq4+l1eH6ayt/S86F/eKomitIMXCDPWrbXMqaO/GJzcFIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CY8PR11MB6843.namprd11.prod.outlook.com (2603:10b6:930:60::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Wed, 22 Jan
 2025 10:12:05 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 10:12:04 +0000
Date: Wed, 22 Jan 2025 05:12:01 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <John.C.Harrison@intel.com>
Subject: Re: [PATCH] i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5DEcVy1mwlBkv9D@intel.com>
References: <20250121222557.721355-1-umesh.nerlige.ramappa@intel.com>
 <Z5ApalwXOr3qOYpr@intel.com> <Z5A0i5pnTcyoQSqB@orsosgc001>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z5A0i5pnTcyoQSqB@orsosgc001>
X-ClientProxiedBy: MW4PR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:303:16d::24) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CY8PR11MB6843:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d8d0525-e507-4d64-9522-08dd3acd384c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Vjil0Dscg7QQ2x8JQSOkClqDBorJ8cRsCnYuJIc1zLsl20IchmAQlc23LMGj?=
 =?us-ascii?Q?B6fvRVUghzxdZT1oM3rQ2Rr7Ls02V5x06F3baNxhXA/4uLoaWrqRdkm9+A9C?=
 =?us-ascii?Q?yN3VIXg1mATUfyrcbrNdf7FJvicdLXzWhcOYq6mpSmoRGIZZOaFsmfhOaVPP?=
 =?us-ascii?Q?8IXwH4QBQ2hPOlDvSSgSRK050djdr4jA3PTbASi6cZL0ZEik7Cj/V06nHit9?=
 =?us-ascii?Q?rDsAQhH/caVz0xa+IlNbHopdWt+aVG5kzFlIcDlHE8uXPT7OF9Jy0aBkSn74?=
 =?us-ascii?Q?cOZcQebdBWCqzSa8fgVQAr9EUwn98LynC3gazWCZ0PTZwcD+eSoITwgFQwHe?=
 =?us-ascii?Q?J3U66BJOXSmr8Mf/g6493KUaGDZLnuptqj/iSc3XhW4iOTW28JLvJwIJdT1E?=
 =?us-ascii?Q?rHeQymeYFdpjuQKm0gP3R3mJnGL1U7Uc6a2/FYxJs1YrN2nFUU9Zpct3rRgr?=
 =?us-ascii?Q?nyO5BQCol39t6FmVWgUaDrBobOxssXoPaDyQ1a37P6uNbAHh8sz6ptnoiH3Y?=
 =?us-ascii?Q?+h5KZaAwhtTgYfq9+Bra9Cwl4l1ow+sTJyR3HVUosYeja4tiP9ygZC56xZtG?=
 =?us-ascii?Q?OWQ3OQatAn8M6sjiunb6CT1zjJz6En0vMw885ccHQxpxZELqx+2YBsQR7ka/?=
 =?us-ascii?Q?L87KsZ8oQMh9ubWk1t7YJ4bVE42eUKMukb2FcSQv+4zrrmmkhBrJLcnc3ca0?=
 =?us-ascii?Q?bIRuq/kivnoWUo+vCMlHuOQ7VteBatp4JeBzUkwfhuLr7pnbbheaQACU9Pfu?=
 =?us-ascii?Q?rXXX+g3Dr4RxGfFi4jto4P4LYoKzf55sehN0WPgXretPSwiCPHVBdWEuIx4w?=
 =?us-ascii?Q?ySe7PsRmFlusVApJteH6kqtKIxjSWiAEcE2Eb0ACLWscshXFkquT+n3VRdcN?=
 =?us-ascii?Q?zo5XdYmDWlEth1cdEr0xCBLbqf9UxgdwezG24zPpnJCCYixcx/NwpHpB05IG?=
 =?us-ascii?Q?W0NONs8U9Rs5bQFTMmsMSDComXR8CtFTmws69USWqKD7BCRZ/RI12R6b6PNp?=
 =?us-ascii?Q?Y7RaE/qiC/w3jHpmnoWPXegNDbAmEBvcIWNKSLyFWjis6bBkFDvB/Rlw9nnK?=
 =?us-ascii?Q?ltXU2A1Y/F66m+oSKtmurnHz6dnxuiTcj/+TykohjHuGADTZD9W2aUNN7PG4?=
 =?us-ascii?Q?E/+GVi1H4ievwOB8FRqA7ujbCFdWN/crSsPGaLPlvpAYQJGUaNSASSgJ4CBe?=
 =?us-ascii?Q?Q4NWU7M+1vqtiho28ssxkate3lR2Q1jl/ffo+T1/cWUSjzxHMCiSJD2i8fM2?=
 =?us-ascii?Q?gaBY3x9T9OCo8EQ9Pp4DUv72OlbvI+RsO9SxqmrOKq03TBQbtLgK65UBL8gt?=
 =?us-ascii?Q?fTmQYCf33B9+NZweKZSydQ44csl9gtjIoYpgVgqC4Nixcg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tz3QosDfdr2n9nxaWybaDSiKDzXT9G2BwmcOMNco1e3f86a+TvjsC6Exmjkw?=
 =?us-ascii?Q?GMQPNfN/DcoWGKDyWPXpR9VG3s+mvTIG4j1mVb9bL4cde/8iNm+ndsvAfErO?=
 =?us-ascii?Q?kDaaDAX+dGpK57f6m5PTcj/Y4++sFMzSwtDsEq2u0FCAlPynve6v27YplF+U?=
 =?us-ascii?Q?XxBTHzeyYerP8OZznYrBDnbT2BgvzVywPq3Tjw7E1wxdC8tqGuz4LCerR9YV?=
 =?us-ascii?Q?kOq4gAkCwTrsAqLCdrVKVTpr9WYTXHnqPtMuuIITqMwpelGAZggr1O3w/V1O?=
 =?us-ascii?Q?sowhIgWR8XiVRbrfsvyR3FHzXB4AkD8NyIqWLvoxY7yVdDlKVhpPcObpaOvc?=
 =?us-ascii?Q?oTeiSkuu0wUaeI9xgZcBdfYV3fCSNOKnDedYdKXMUBfHwRE3llw8MAVesajv?=
 =?us-ascii?Q?39lhPtz03B617EBbus0xnxPMjBtIHNa+5/DwmK7VvqZXhpQUuMGI2q/99p6D?=
 =?us-ascii?Q?SgJbgAH4axIwWwe1zm3xt3jpnolPi90A3gPcxiaZqHmSGqOJQh3o1QgHGw9V?=
 =?us-ascii?Q?5BcE2n41kh2VxJWzhOv2ZsTsxNJ4Jj9djY8jGhjCzDMogaMqpMrakynEO3zk?=
 =?us-ascii?Q?k6I5YcCSzNJCqrjFPSNNNZJNTWNCCLfCgZCootWjq2Nas2XYBQM0TJLSoKH7?=
 =?us-ascii?Q?Qt0nyJL3LkHRo7ySRrWClF+RrKFWL0ezw+IAfep1U5pX5DEbHAoQN/x/P6vJ?=
 =?us-ascii?Q?O5SFVaO9/50Lm+GLwA4+HdfESTicAIB2FmSk+I0knt65F5uOcSscsXwpBge7?=
 =?us-ascii?Q?4ZACt5syjV6wjgsa+ugBbA5cTUl2pjRupg5PvlpH7lImAhllg/j/FwWQY1JC?=
 =?us-ascii?Q?oEptG7X3yAyu181dmsHzanPuqAPo4CPFQu2YAaLNRPlPF0DUfisaOivQmS/8?=
 =?us-ascii?Q?KNfdRrIOuhpKekVVi+aY9ZA5KmMCEj/bfax4cXQxz3/IlgDKAgMqDDQqDtss?=
 =?us-ascii?Q?dko2QWoFj/i2n3zB3OoFTh/J1zvI4IVCRkkMWqwbK/JXwIlb/lzC09w/8Dbs?=
 =?us-ascii?Q?hvPaeBOyps1JW0yi3X0lrHU1Z9q6HBMwOqT0MigrMNTwrerC2JOtj1RPCa7x?=
 =?us-ascii?Q?X3w36ONS96L99Vk6GcTH+mA6UN5w9qbCUJ3aYZTfR1b2a0Zi4O27oajnq3GB?=
 =?us-ascii?Q?LGCK6v92WyLpdgu0XdkiFAx+Qo9KY77SDZuqJw91/6ak2glxuWA2pQ1C6qVY?=
 =?us-ascii?Q?lIp5HYU+ulN2tQoNv0QmuJdB5xJ7xJXhGO3KdfgzQ+UwaK8A/CKXHpgxRslJ?=
 =?us-ascii?Q?4WhXeKAJKHZ2lRqw1QZGOK2Q5YxmoBuxfk19JeG6WMf5t++Bmr2FUlHIdLY3?=
 =?us-ascii?Q?9V+5mDwd8aNiBzfeOMDjbb++QLO54mPJdyFIn9ZPmWJd4NCp3oyDJqLDD7ZW?=
 =?us-ascii?Q?cCjO6FeMgfst2Di86bk3dsYKmb8Ww3Nc6kFE7tH3igCpvwT6lKz69oC2GIK9?=
 =?us-ascii?Q?OPw3T7APpA1h6T35ms1HN3Dff8VkSPqt5cWV/Ns9ePDKsR9Z8i16wGDhBcQr?=
 =?us-ascii?Q?rlGeDpP4gxAlWZ6m72WR6iUHjd6jAIoVXoRWFT9rWBDNJcGowGzYygh4QXEs?=
 =?us-ascii?Q?TjqvA2fqpn7JEio55d5kFQJkdN9C33nwOLG+1SeJOVChvuNAA85U7VlOR9fC?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8d0525-e507-4d64-9522-08dd3acd384c
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 10:12:04.6726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ghuP9EpcBh8mC6IsMDfDyuskD9eOCD4AdHd9dMPYDk9R2PX4ny98HdMXzqihwGGij0O5bE294M3hs+plryjvmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6843
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

On Tue, Jan 21, 2025 at 03:58:03PM -0800, Umesh Nerlige Ramappa wrote:
> On Tue, Jan 21, 2025 at 06:10:34PM -0500, Rodrigo Vivi wrote:
> > On Tue, Jan 21, 2025 at 02:25:57PM -0800, Umesh Nerlige Ramappa wrote:
> > 
> > drm/i915/pmu as tag please...
> 
> will do
> 
> > 
> > > When running igt@gem_exec_balancer@individual for multiple iterations,
> > > it is seen that the delta busyness returned by PMU is 0. The issue stems
> > > from a combination of 2 implementation specific details:
> > > 
> > > 1) gt_park is throttling __update_guc_busyness_stats() so that it does
> > > not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)
> > > 
> > > 2) busyness implementation always returns monotonically increasing
> > > counters. (Ref: cf907f6d29421)
> > > 
> > > If an application queried an engine while it was active,
> > > engine->stats.guc.running is set to true. Following that, if all PM
> > > wakeref's are released, then gt is parked. At this time the throttling
> > > of __update_guc_busyness_stats() may result in a missed update to the
> > > running state of the engine (due to (1) above). This means subsequent
> > > calls to guc_engine_busyness() will think that the engine is still
> > > running and they will keep updating the cached counter (stats->total).
> > > This results in an inflated cached counter.
> > > 
> > > Later when the application runs a workload and queries for busyness, we
> > > return the cached value since it is larger than the actual value (due to
> > > (2) above)
> > > 
> > > All subsequent queries will return the same large (inflated) value, so
> > > the application sees a delta busyness of zero.
> > > 
> > > In order to fix the issue,
> > > - reset the running state of engines in busyness_park outside of the
> > >   throttling code.
> > > - when busyness is queried and PM wakeref is not active, do not
> > >   calculate active engine time since we do not expect engines to be
> > >   active without a wakeref.
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
> > > Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
> > > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > ---
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 12f1ba7ca9c1..b7a831e1fc85 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -1372,7 +1372,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
> > >  	}
> > > 
> > >  	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
> > > -	if (stats->running) {
> > > +	if (wakeref && stats->running) {
> > 
> > do you really need to check this wakeref if you are now setting running to
> > false earlier?
> 
> Maybe not. I did try it without this wakeref and that passes too.
> 
> > 
> > And if we do, what about moving this entire block to inside the
> > existing if (wakeref) ?!
> 
> Yes, looks like I could move it inside the existing wakeref check block, but
> I think I will drop this check since running is being set to false in the
> gt_park code path.
> 
> > 
> > >  		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
> > > 
> > >  		total += intel_gt_clock_interval_to_ns(gt, clk);
> > > @@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
> > >  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> > >  }
> > > 
> > > +static void __update_guc_busyness_running_state(struct intel_guc *guc)
> > > +{
> > > +	struct intel_gt *gt = guc_to_gt(guc);
> > > +	struct intel_engine_cs *engine;
> > > +	enum intel_engine_id id;
> > > +	unsigned long flags;
> > > +
> > > +	spin_lock_irqsave(&guc->timestamp.lock, flags);
> > > +	for_each_engine(engine, gt, id)
> > > +		engine->stats.guc.running = false;
> > > +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> > > +}
> > > +
> > >  static void __update_guc_busyness_stats(struct intel_guc *guc)
> > >  {
> > >  	struct intel_gt *gt = guc_to_gt(guc);
> > > @@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
> > >  	if (!guc_submission_initialized(guc))
> > >  		return;
> > > 
> > > +	/* Assume no engines are running and set running state to false */
> > > +	__update_guc_busyness_running_state(guc);
> > > +
> > 
> > Why not to move the entire __reset_guc_busyness_stats earlier then?
> 
> Not sure what you mean by __reset_guc_busyness_stats because that is only
> called when reset is in progress.
> 
> Do you mean __update_guc_busyness_stats()?
> 
> Only the running state needs to be updated for every gt_park. Updates to
> other stats can be throttled based on the jiffies code in
> intel_guc_busyness_park().

ah okay then, please ignore me in this last point...

> 
> Thanks,
> Umesh
> 
> > 
> > >  	/*
> > >  	 * There is a race with suspend flow where the worker runs after suspend
> > >  	 * and causes an unclaimed register access warning. Cancel the worker
> > > --
> > > 2.34.1
> > > 
