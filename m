Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 585B192C41D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB9010E65A;
	Tue,  9 Jul 2024 19:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8jbx6NS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E8910E65A;
 Tue,  9 Jul 2024 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554719; x=1752090719;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YWJwk2zuZ69P+bEG5/uMgSenOXtKNLdbGAEu/UUEQBI=;
 b=H8jbx6NSuU6CiTtR+P8F9FFZhWmYxg6PRjJQB8ttH5txFr1wSL9RGzhY
 IAEXikpkJ5RBr0/10KuFBTD4W3pI1gydkorWb6HBkQ2XcX58b2jvSH+s8
 D2cfytFfT2FQ/9ihvw3m1Xd4qTH2VcH05Qi8h8bMsFszpFF0I3iwdaRXO
 1WJLCW37sif9/WvSHHXCcBmTWQqhGYLrY2FZtM2PGqtoYvLtdTgBw3s+E
 vns7OzudWjxgIOapokGQ+i+yoDufOTEuCTmx4S+LQBwQf6wNRbVtkX8ik
 OqQR5T9avjGTei73BME+3PAWoIcrbzGyGOK1ZQRmF4BtRgNa8JU4nqW2x g==;
X-CSE-ConnectionGUID: ynvthl/7R0G5RlLwdP9CpA==
X-CSE-MsgGUID: ZQsS1XwFS3SBNYOevOsz3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17674989"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17674989"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:51:59 -0700
X-CSE-ConnectionGUID: 4kEviinfTE+xlCnrzP8WCg==
X-CSE-MsgGUID: KLRcNOSaR6+p3OkbKfvxIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="71195391"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:51:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:51:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jKQrLV9lXgEwtVNZtSQNeoY6TCuqiQRazLq0fIyJjXtxRCOcb7DvpO3HfHjQ3dHf8QZWmgwPEAJNnGVhJI682Xwy9HJRmeuGtiSkD8wxO+86fxKINyJZ9OK4jF4GaStRo+mgVr1hGcO1+psS60I3Dy/ZKPB6ZCClr1ZeYVYSbnCTE2DrLdjTMgzZ+qSCJd1E7fr1y9pZ+h1DxfdAn4wtVuw5G1SnvHs2FUc7omWL68Be+qYmkOVSRlKKf7RPZdriKnRrjdEaok+8M4lS9bdZYpizg7YIv8JOuQupv8hKJA9joUYcQIIRwHBlIf5KZOJJKCRZCN8iMptdYGY3Zd+z8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kevDWaAtDg5O/LT2OBSX2aDvvVgPy8HmnudnCAzhDfY=;
 b=n4Ttr5tKM/5bO9aGdRkSZ6ZkNu8blZ1er+vyIypZ4BE2RhrSYbzVswWOJHW/Paxm+VwRlM06qY7eBTC+OEylyr/PlS1+Yn2iWNZUztojwCHFIkPRU2gM6nkBbsAkeKgQsyP9hvoJte9/+3QpKxD6ywKvD+lRoL1zh91xhVzTWHn3aCobQzUO3GTKgXioKSv2fKunuo5x0gxIr8oTc2WPuFxBRxe+c9M6239P0GVNpqt1JhddIo0n6LbSzJd+0ztwjr8kOR3iTSv5UN8YUaPfbdlJmIYKH6/a4nSa+FBzopXse9T6pnwsZrQgzUbz/BoI9eGOzS+LEdPTyyPSppO/RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:51:49 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:51:49 +0000
Date: Tue, 9 Jul 2024 15:51:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 05/20] drm/i915/fbc: Extract intel_fbc_max_surface_size()
Message-ID: <Zo2U0ZbXbMPhEfKi@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-6-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0149.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::34) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d75e31a-7cf3-4b0f-1d32-08dca05091a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?zn4BMpzOrLaq1Nikx7RT3MMbgiy7on0K71Win7ahknhkz4BWRemNgHomY0?=
 =?iso-8859-1?Q?1TCx6LmuJPexoZp/jubBxsA0M3fLaNJKZnHtUOq/mR4T1bk851MDIlugo7?=
 =?iso-8859-1?Q?wnxZGmFyFqD7IQDUsO7m98nr4TpKuGqqd9cSzLyxtGC0XgvpsMfVJ36yaN?=
 =?iso-8859-1?Q?cGI3buLx4dQh62Tr5BFIBHc1b4hOPipXJzz2fzTMIqkAVz0UqP8ILBetdp?=
 =?iso-8859-1?Q?nlL6AeGuNmtEF83zSHSu8VadUektOKB42+IkgrcXzfDq7REwbNbH+Ge8tG?=
 =?iso-8859-1?Q?kEXREkwlX+rCJ2oW0uKbDBgd9LofClXHGzLrs3UxahkqZ4q8ZzSv0W0Ire?=
 =?iso-8859-1?Q?7WqXvRoFHFdcOjErnGfSlxRkYURb/fYWj6H+2ab3OWnqcrdo+lKyHj8yQo?=
 =?iso-8859-1?Q?My4Baad7IJGFNsbUS0PisJ4TFcEvFTxkWvfXwWaxazVwAQogNrL3gA9LIS?=
 =?iso-8859-1?Q?gdSMX735yOq7O5+KcbJkjP6B28uFCsSMcCI+ft92F9lhQgtaXP68dDodNb?=
 =?iso-8859-1?Q?bdSj91vUOMHOG4GINNXC8m/DJ1usfvcfVRLY1C9/aHEdGMNWB7+MCtKR79?=
 =?iso-8859-1?Q?dGTN5j93Ulpw+6IZ6QKAAdc6+jyBqp1Ibo/13f4h1o6g6hebsLbrq5WFCN?=
 =?iso-8859-1?Q?qQPQWp61+i9I1Rluai6U4h+7ejWYFMoys4MhyJrT1DDscaIl0oEnqeNZ1J?=
 =?iso-8859-1?Q?3mfpBhQS5dfZYT06dG8DMw3srMtyGhSjU3QEnNxoBniszKcvi3rS9LTIlv?=
 =?iso-8859-1?Q?y8+MTQy4t5NupvAWRZobCi1UcHN6bR24jX7TpfgnOKrCLPc6YFOOlmzBCA?=
 =?iso-8859-1?Q?yvgpW2GbJnWjS5WBk7R8fw0kh2yzEp+r6yS5VBDB5oqLmyYTDldORfruhM?=
 =?iso-8859-1?Q?h6R5Yhj6ihHU9fk1Gy4SLZ4MMH82Kg8xSDYz43OVCzLx94wKn12F0lZfZs?=
 =?iso-8859-1?Q?7MMEJfeZUIMhodXr8RGaToIpP/Wl4s+Qod/0OC8NpwjsS7ViPYGFXytFAw?=
 =?iso-8859-1?Q?qqsc573N3qlimuag904FnGcnMkvPikROT5JVeeqCqY7p/XsODfTTqMogrI?=
 =?iso-8859-1?Q?rW3K28dZk154YgmE/wWJyEhSw0WBcOEYGHAsWELq7xZbheZ6zm3+pj65Lx?=
 =?iso-8859-1?Q?8LJpNvaM1qk55Chfzy96mt9DU9xT9TqQ9G4beV6QReQtsqvZbKBHCnQSGE?=
 =?iso-8859-1?Q?z5shqviJtpmEJ93V2P8paYj6UJF1fl4rfoXD+yoIT2e12uLBZ6ti3wGvur?=
 =?iso-8859-1?Q?YdLH1MLRkb4/GjvXtkOx3hhWOEwKKa81S597rhdB2ygG/3qaBMNYpMeLbW?=
 =?iso-8859-1?Q?NAdZzEdGuQFcYyqWIDquuZrUq3OAmqadOAxmL5VxerSzfmi5TG8NRNwky/?=
 =?iso-8859-1?Q?KysuELF/f+TZqG3/GmYEkBA7n3H/ppmg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Av41DuYKj157dWyRGT2KEUNFzSWrS07oejmtGPzI5S6XG568+E11L27L65?=
 =?iso-8859-1?Q?1WvYz+jF5QkrKqSCMdiiZNy2b8PHshcDOp4pugnfPDaeW0Wdomogm/qIII?=
 =?iso-8859-1?Q?xoasJYRJoLbxX5UdeaGGZZBKwo6N4iXbv1VEoF5SDXNNR+XHSc+Fahd1gF?=
 =?iso-8859-1?Q?bEmcBERpg6tBHu8zLX0+mfjsewWuIPTuYCKu94fTxNeYaJCWUKfYOXHlWd?=
 =?iso-8859-1?Q?GMTBsI/fH5PAz8SLZRCh4zDYIQp+H4WRAHkMaL6I6UXdwaw8UBCj3pTc8P?=
 =?iso-8859-1?Q?VTxo9bQm+Be2heNR0euUPj+KPmGDOPqx3qxxjljlXFdjGrapZp6tTc/JhL?=
 =?iso-8859-1?Q?mQBvH26QDp7QWODdRD2aaXQEzuzRon3k6WPERHuWadpeNXXL77wbiNlArq?=
 =?iso-8859-1?Q?PO0fsf+vnIUlsGmNuNTcMOy5kzz+426yNR7bOAhgc5v/ZArRyOteB4PdJy?=
 =?iso-8859-1?Q?BgAJ0OLGq2sODrNQ/ybJWJZdygeOqkaK9Dlh+g1vdVtirDaCFPWsCGjw3z?=
 =?iso-8859-1?Q?MCUWsFOey8usWx2eKmyA0PT+rnfWA3y3x4JGjkaXZNwxG9+3eWp2ryHmhA?=
 =?iso-8859-1?Q?svZTVPZTedzhIfFJRMNOF42XzBijXC5MU6KpHGP5Y0xb60DS4NWkJvH5SZ?=
 =?iso-8859-1?Q?8z/j3O9VA2DdM3SxIZPZBp8erfQRq8KkvQPo6sIJHurjovpgKXfnIM92mO?=
 =?iso-8859-1?Q?s4XXHKv93I/MX7nYaiSGxnnJLhMjd6lm5fYJhsGL3LdvnWzcMrafS+LCqO?=
 =?iso-8859-1?Q?kRPEI4qmIVlGAqmI1lxb3t2c+ofZlbHgARV0V9MXvymWLHrVXNfahYClpz?=
 =?iso-8859-1?Q?4graM9nTRXBFDVS2n0L28pwBRRFki3zhald7pvmVcBi15fDbljIUaPIX9E?=
 =?iso-8859-1?Q?uIGvTzZ+bybnKg3I+mFaT3eKOU2XUqrGRIESoxDRHck5PBuqgpScx1b6R7?=
 =?iso-8859-1?Q?nAoCNAZAK09PBkrKWkWWTXQMsJyuNfno6Zb0Z4+X/I+8LQTd/hExvXPgZ+?=
 =?iso-8859-1?Q?2LKPnkvA96Ylk1NMb6XBKTz0CiTS4cnEAQk+K0sqD65bBU3DgkzqV9nv5q?=
 =?iso-8859-1?Q?dCzVObkWx3CeH+JsxglWri29GuZ3Q4GFoBBc3Bf3C9gOaXjQoRXA7uK3sm?=
 =?iso-8859-1?Q?NlDo10gje7mABKTFAMHS4qgc3T9wZv18H8/7d2vJgXhMtRFwkfYC/vG/zl?=
 =?iso-8859-1?Q?nhaQhGNIR5Lrilk96nM9eZxjbYOO0MFj7FncIeUXXuyKcQXvbC9tDfgysR?=
 =?iso-8859-1?Q?Ih/QCtVpAgjQzl6WColNMWag24rby8xQAhF2UJjNpWCqihjt5hEnIJ8RRy?=
 =?iso-8859-1?Q?bz4cWQGebRTtRP7VGidtt+uc/sINvL/B4dzYPXhi/POczBBMY2xGip2LR9?=
 =?iso-8859-1?Q?27UjiBeyzCc7VU0b6gSVmvdVv/ZNIX4HXiUg6T9C71RUOz8MdYzF+DmG9E?=
 =?iso-8859-1?Q?q0AAoyTrW5Cfk20Xhl/ryZz3iWJrBbBPVjNbAhpfDWUxOOJbX4tH9CN4ZU?=
 =?iso-8859-1?Q?czs0fJU9eTlrU3TY7Mcvuu37d5wlWMPmQglRyKMY0avM+ZWO1eA2qcCvWi?=
 =?iso-8859-1?Q?/y1bmq4bNBNrMD+Jb6pVdb2KpQ5BbCX7gLxjdhxs29aVAwN6R2qOdcxRVD?=
 =?iso-8859-1?Q?zb/8gYTW1hMU45gRLc2unLWXuRXAwBUdJRZuZDREzbHu0bFJ3U+k7OfQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d75e31a-7cf3-4b0f-1d32-08dca05091a8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:51:49.2344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A2m2sri5/G1zsK3bVDG6kV/NX5hLmb8sWoPJaGVtdnnrSS9v/1upMX5hYI3nbdjnhRwMN+45nCnYcA6631pmmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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

On Fri, Jul 05, 2024 at 05:52:39PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract intel_fbc_max_surface_size() from
> intel_fbc_hw_tracking_covers_screen(), mainly to mirror the
> "max plane size" counterparts.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 41 ++++++++++++++----------
>  1 file changed, 24 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 08a431cfbbb3..c7fd774440a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1073,6 +1073,29 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
>  		return i8xx_fbc_rotation_is_valid(plane_state);
>  }
>  
> +static void intel_fbc_max_surface_size(struct intel_display *display,
> +				       unsigned int *w, unsigned int *h)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (DISPLAY_VER(display) >= 11) {
> +		*w = 8192;
> +		*h = 4096;
> +	} else if (DISPLAY_VER(display) >= 10) {
> +		*w = 5120;
> +		*h = 4096;
> +	} else if (DISPLAY_VER(display) >= 7) {
> +		*w = 4096;
> +		*h = 4096;
> +	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
> +		*w = 4096;
> +		*h = 2048;
> +	} else {
> +		*w = 2048;
> +		*h = 1536;
> +	}
> +}
> +
>  /*
>   * For some reason, the hardware tracking starts looking at whatever we
>   * programmed as the display plane base address register. It does not look at
> @@ -1082,25 +1105,9 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
>  static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned int effective_w, effective_h, max_w, max_h;
>  
> -	if (DISPLAY_VER(display) >= 11) {
> -		max_w = 8192;
> -		max_h = 4096;
> -	} else if (DISPLAY_VER(display) >= 10) {
> -		max_w = 5120;
> -		max_h = 4096;
> -	} else if (DISPLAY_VER(display) >= 7) {
> -		max_w = 4096;
> -		max_h = 4096;
> -	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
> -		max_w = 4096;
> -		max_h = 2048;
> -	} else {
> -		max_w = 2048;
> -		max_h = 1536;
> -	}
> +	intel_fbc_max_surface_size(display, &max_w, &max_h);
>  
>  	effective_w = plane_state->view.color_plane[0].x +
>  		(drm_rect_width(&plane_state->uapi.src) >> 16);
> -- 
> 2.44.2
> 
