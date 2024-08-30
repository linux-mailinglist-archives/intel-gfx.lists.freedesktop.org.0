Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FAB966B2C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 23:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763DD10E5FB;
	Fri, 30 Aug 2024 21:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SVsIzk74";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2813C10E56C;
 Fri, 30 Aug 2024 21:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725052333; x=1756588333;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OXjh+fTr8ZCOD++Ljxe+ZsQRGOV8TaZDUtf30jv/R+0=;
 b=SVsIzk74pYj7YxZObaaMZG3jXAGl8OsCyeDZbTSwxOiFHu11SDPJQcsd
 nGFIs64SVpxVc3357QAoKsO2fLv53YWE5tPUL+QTxtJpWqLOLHBVQ8aS/
 vCAnyiGhmBhkyZTm190rG1eOupXnzs1s2Sd3BbexYqefzB+NxRwf/3CKi
 rWG+hy4adxaTbJbWkgVlqj4yMWoRY/GIqSBeInoA/GjxOCJoiru+8NgOV
 SHAI8iTzqwsmjZYrKmIllLS1n5pXcCTHo9JsuJwUX6JZQ2PMUKquIu6hF
 4TXAGHls7R5pCUvaojjPiKuGBWJNLgxbvaMSHT+Ds6+EFaOGA3A8y8RAx w==;
X-CSE-ConnectionGUID: S9Go0EB+Rum+lrTtGwqCxA==
X-CSE-MsgGUID: XTCM34p5TkmzuTPUnWjbtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="27501641"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="27501641"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 14:12:13 -0700
X-CSE-ConnectionGUID: nyMlI2XNQ/OsdkxYlajJSA==
X-CSE-MsgGUID: /ZUAYYMnRX+5+7JeX9Mqrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="68675306"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 14:12:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 14:12:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 14:12:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 14:12:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 14:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NnpZyV+pLuiueVzmqnaqx6dfodRn+Ws5GKkzD6+hXQbx09qI9wld3b9FuOQp1y/HV3w+/FrPQYdGhKRneIOKQs9dnjSIea194A5Y554s9ra0A6TlIQPitqHCKxdm0wO19ao5QVeIkYEFxm2yMK6RGm/hkJo47hj7RemDkYi9clcmtBPsVVWHCgIJXiLbfxjqw4pltv2czU+Pm+2R2ntRfifcNI8+kP15MBN16GOflFpr1F++AbCfb5BCEBFlqSciYRFqziYPrYR/PJMtOsmtpfUKRwPmzjR3OA9N3BagRHF2omQgO0MSsubwa5cY9bb1IwnWvq7yW2Z9z30kc+Fqog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZfEqUZLbqxqiUNCJBw2JYJ9cXJ5Nr5cFUqSbG41yHc=;
 b=cmWNWWdn4aeNdFd2t3joIvdv78EAI3FwEmiMy0jfbiPa3QCI4C/Xlctwhq0V8h/tGIGtEQGb7NU6uwQMkwTppetkjIPC9FTEGvbB62kQCAliU9RL1/juUf5IFYl8kIcmCggbw9QHcKl+oAP0R3eZ+31TSSqlZ/ndpBKLbE45GdYsAnDQtB6tDPbC7+c7+AE+Ybj2GcpKVKHlqvW+VCI6/y2aiYpCEB3KPNoo5spYkNgwdBgNI3sP2WsJsGQuU4rQ++5to6fvB3ZwQav4uM41g9yEu2iYYtHsrowIVptNPJ211t86B2v3YO02MavSfbG5R3W115lzj7v4peGYWdIZ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 21:12:09 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Fri, 30 Aug 2024
 21:12:09 +0000
Date: Fri, 30 Aug 2024 17:12:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <imre.deak@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Fix BMG CCS modifiers
Message-ID: <ZtI1pZVxWHQWarPK@intel.com>
References: <20240830130142.440071-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240830130142.440071-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: MW4PR03CA0196.namprd03.prod.outlook.com
 (2603:10b6:303:b8::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8749:EE_
X-MS-Office365-Filtering-Correlation-Id: 838ac4a7-0ba7-42b7-6f95-08dcc9386895
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VJmLqGQvCQbtxWFEWTq2N2LL90dEng4PUGUMUwwQO1Mpj217qOEPRskWaDTg?=
 =?us-ascii?Q?YwjefUV50tN2WMPEzaF3VojnYJkKEgiQJ3ZSNdOhYSbHq52f8RW0gh8YIdrH?=
 =?us-ascii?Q?CdO2NLnJFHjJLvIesDPM+55+p/LJsRSmWp8XHvcgAu8L41HWK5+L1veqgUCr?=
 =?us-ascii?Q?pcEqk2FfmmhAZCkWbddJJmj1wmni2+CnliRrp9zUSw0M9jTUJiox/v0gYgH7?=
 =?us-ascii?Q?cJoDZePkPRQgGe9iF2JvFXA9cXLItlGgA3M+KWUiOMbNZpieAW9c7m0A8fC3?=
 =?us-ascii?Q?JRH7nPG2PL4P1ij4Chsh08wtCBGcLCTNG3a9jozWojSHk2UxjJb7WPB2IdXi?=
 =?us-ascii?Q?b7FcTFe9cEECiLeEDP0OkXS4QR1+aAKfwrFvawqodnWNJ9z70LEUdJatKxOe?=
 =?us-ascii?Q?vEC16kT5s9scv9oB1ObtY2n/D9sl4pdPSLY/ZPTw3TntLHaZZL2WEgQCWUvT?=
 =?us-ascii?Q?hp9Koz/ZSOXuaig86yMLL18ksMMtbeov2r2+xLvwPqFbWminrlnoA1vjb2B0?=
 =?us-ascii?Q?B5MzO8WR1k5SZb9t/xulum5y0yLhVO4GDo54M49XGoldBLiexTVXtAaVzw2m?=
 =?us-ascii?Q?sSBzdC8CEWwa7ctAq57AuciTaTvtJx3CX3bhyI6p1l5Fd53T5vRJoqSMRHmO?=
 =?us-ascii?Q?KAyT5nx4qUm0zuEhpJ6GhXhXW7G/2u8jPbLzgltJIK5igaotYaINplAdKuMq?=
 =?us-ascii?Q?q0iz9BM8VnfTnTqUlWQ1pumDI8PopgCCKaRdD8lM+u/gA9+RI/H2oPeIG6Yi?=
 =?us-ascii?Q?O/vM38NUGAtsp0foAmQn+aQsoHW20xZCHWjLEb8CuKBBsGg/adaa5C+XweDC?=
 =?us-ascii?Q?qOLPixXWdI6XtSDINxQP5Y2NKkIqQybCNL8qQEqirX+3HWVWk1f+tKH0uPVV?=
 =?us-ascii?Q?1ZLE5B/GNXDZW2X0mBrJi2qUOb7oLib/IyrbiAx3P5iDvnByHZwB93j1CIe8?=
 =?us-ascii?Q?MPBnQ0kq7vJXmn7+FG79kuYqXdce7FQvqJC3mNylY3VvLdvIKfEf0eBbYFYO?=
 =?us-ascii?Q?O+AVwGQ/l6zjpjfrDUXnl+DYCS4NZMRr5S5xXOjL1jS03/6Qa2T8XrnV5k/T?=
 =?us-ascii?Q?9rDFOwrb0df4y9fiPGxqBOsR4TTMyKeIUwEz6vVUQvD203QO5JcIeluIJOID?=
 =?us-ascii?Q?L76weAfs4lbPSjTC3eIWJaDmSEhbFJt42TJQGCEPGhqo5J6oP4MFTuGKjo/D?=
 =?us-ascii?Q?iCfY/fuIiVsLO19BB7FBCbmRpuzIn5m/BQeww2/ioLtgsl6O6JxJluWwGEfr?=
 =?us-ascii?Q?Qd693iwHKkPikKlE/YklpYI+Ogr08eNdZgSwo/aD2/Gk1Sszr7GpxTxBKOxh?=
 =?us-ascii?Q?XQk0hwksH/LBO5J9lbym3gLcunQ1Eaxc3JKKLcyOxgoPzw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mgoi8lyJvYHjPF1mPZa2pw90L3YQUSE9MpeMFgc6HkKTSYES0GNU6/865lGq?=
 =?us-ascii?Q?4orPCD5BvEWGcJAEjTOxZJhlH7eXFvJiPuUhQqo2Usb56eQ64jAuSCfq6Hsf?=
 =?us-ascii?Q?SevOLbL+rm/KjdPE3i7j4FZYguucmyCicHdx7P7S8eMc187FEP7Q9TVJ8qq/?=
 =?us-ascii?Q?/Q0vSB+SNx+nkGCisJYsYHMvDohl1/p0YmmNTuX5802uQiQJ6ZHKgZNw2Lon?=
 =?us-ascii?Q?hDmZjYIUc9N+ZOYABlPiNWvATiinc0HnLmmV+U7SspM8oLJyrVr+gv1D1czR?=
 =?us-ascii?Q?HZ2pLbUNt0BuYEeKftAq5Ls/CAwFskvw+Az5jolL0NQ3QUhFHFFWL4aGD5qX?=
 =?us-ascii?Q?WtvuTNiH7Wju8tIbW+RIVfG3HFgu4fVIIN62k9BH1nzN9RW/ZcCadHyLFFkD?=
 =?us-ascii?Q?Qbrvki8PzKn5LQJZHdrIvEFsTu3HnJ2Eusfzgfuo3kOC9HFVKhaw2bWF9ljH?=
 =?us-ascii?Q?EUZb3ouJuxE8fjIek+lFwuk7dMIa9MDzScp3xbv+9sFFRHlyFmqm+sDmIRnz?=
 =?us-ascii?Q?cezDKA0PN0WH57stjLNJNeg4SxeyC81/o3ZzDWsTp3dJGtk31JMjCrYfOWnO?=
 =?us-ascii?Q?cZuQKi7fU6erbvQWvBUpb3RnuTH6+2JcZRgvSMeLp4sWyNTy72TqZgmTQ8KE?=
 =?us-ascii?Q?qZf0ZZQfqucPgME5wS5EE+CpypGdMMMbRAZ0ZJBTLMIKHJQ7jvsv++e1m193?=
 =?us-ascii?Q?BAELCr3a5vxL7rC3a9OwJi7Ktq26P+x3qi3UQT4A71eDyp/sMp1e0pcxLCgl?=
 =?us-ascii?Q?fU/vy4gCaOA9xELHASdVDD9ad55Sao52PR3d1i1sTtRHcYCbJGkBpqzBJsuR?=
 =?us-ascii?Q?Vqg6hKnvGQKNtDCHBwq6y3l4PaKMo0TsAqZ6UKFMxmJriIScOIOaQDLRd7PQ?=
 =?us-ascii?Q?WtfTxqW06ZDAdTFKcFvvzTDnXkCs8WnMuOM69bpgTKUQ6oAFYAKb8jbOYVmB?=
 =?us-ascii?Q?AVewRRa9UjqUR91jKRXCwHiIqZHwWjLwrRwuxbzKKQQA17O66DJeFBN0dvUw?=
 =?us-ascii?Q?GcSQ0iJsytlrAM97wWAVzxfXWOYOAGelJi9sHo/cI818/MKICmTpk1/ZqqFK?=
 =?us-ascii?Q?fquypd3WJ0mJmG7msBUTUSr6dWfXUKjFhJyxmcGBiggrFexnZ7+91CrTQ5ua?=
 =?us-ascii?Q?/9CTTVC7qTHW1eI33AqDCaBpDsrehOJ54UIR/oZczURjBz935XaWfrMlQ7cU?=
 =?us-ascii?Q?cnrLO5m0qbhwyM9zg7+nhkY6BzaykH2vFaOxcCN+NORGDmv7f3nWKyv2BAHJ?=
 =?us-ascii?Q?991ADahP5iB6upqKf2vP3aMkQhPBzHED0kaLjNI9YSIISABcaQv3yNEyqLco?=
 =?us-ascii?Q?u2rwGafGuOjN/HWAhYbfNNrtK2/eSvMjIlTzd7peAZI9k07UcWxJo+694Vsz?=
 =?us-ascii?Q?Zdlrg1F7u5MzTQdyDDHW/U4XajIXu022oFtqnHBaj0SH2e5jIA+RuVbYBy4u?=
 =?us-ascii?Q?jmdMBOmqY++0CR/jgD0pAtnkslMtaRHO1+ferbGub2gFnAUJW1RdCrsCSslI?=
 =?us-ascii?Q?4LuVaa6+7BHEwwujaWTceAGAfRXZ7cX5ZifBVwlDhbEBFrN2IO3vXJPJGEWT?=
 =?us-ascii?Q?IR6nGK4RZxzibv3elqO1li0wuGVu6CcS/xxMoHOTTbhtKahF+iXoezy4egLh?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 838ac4a7-0ba7-42b7-6f95-08dcc9386895
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 21:12:09.4967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxmjBHioaS++EbjLZ49hGQUtAJABlflQIEHXVsU782vpP0j/2zntcEI2dYPHoTk7WF3zh5W9D6ybnph6v9LO9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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

On Fri, Aug 30, 2024 at 04:01:42PM +0300, Juha-Pekka Heikkila wrote:
> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
> 
> Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
> v2: Do platform comparison w/o checking for gfx version
> 
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9452cad41d07..616f5d40a739 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  	if (gen12_plane_has_mc_ccs(i915, plane_id))
>  		caps |= INTEL_PLANE_CAP_CCS_MC;
>  
> +	if (IS_BATTLEMAGE(i915) || ((DISPLAY_VER(i915)) >= 20 && IS_DGFX(i915)))

Please let's use only the display version.

either display_ver == 14 && dgfx
or display_ver >=14 && dgfx if you want to be future proof.
But we should avoid the platform check if we can.
The design restriction is at display_14 ip block on bmg itself.


> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
> +
>  	return caps;
>  }
>  
> -- 
> 2.45.2
> 
