Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B09AF2E4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 21:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A34D10E3AC;
	Thu, 24 Oct 2024 19:48:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VpriUUhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6A610E3AC;
 Thu, 24 Oct 2024 19:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729799337; x=1761335337;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pq8C+O4HnmDsxVQr6ifzW+G/DGIXwSHmS3OrkPOITYM=;
 b=VpriUUhj4kfOezh4E9JfTrSDOLrZWyFDoTcbBM9zc9G3j8Wyu4ppwbXy
 FBx540i277GuauwVukRDYBO4/zNp9pPy9WXwmVntRnaxRVDOvxrH2SgJm
 zo5KIZG3L/T7Y/8imqd2fg8CHGuxs66v+mkvJX/HdKWWxuTTKRJx2KOFw
 r3Dkhwf+5Xjm00tvArxfAj9RL0Vqz12dupPrVQooS7XfHEqBFh1JmCRKw
 F6HNFrFDCOhd1NziCV8MKcOH6iD6sep2UbuJxErdhu5MMLONne+4/3TjO
 emsE4fBEl0puq4U5P7F2HgIb1HeZ3HkRGvzdZsyVNgb/jKt5wAlkeHqQ/ A==;
X-CSE-ConnectionGUID: 7iDqXg0bQ4+AQbxzQKrhCw==
X-CSE-MsgGUID: 0rD+D0/qQKW/k4JC/wrGmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52005120"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52005120"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 12:48:56 -0700
X-CSE-ConnectionGUID: fC2ErO5URK2T8tMD+8RwHA==
X-CSE-MsgGUID: /r0gMMKbT/6kIKzfQNB1aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="81133686"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 12:48:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 12:48:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 12:48:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 12:48:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=swEYbOkhG5htEzh4vec/VC3d6iUAwP9OPwiCvuKQS7ZRh5KdiF0Y5moKg/sMZCTTWkAnf6zszX2feOPcOul7SQmTnZ1q67C5Ct8RlRa1SSfH24VV7pWpC8GkCOR6Ke2KM1VVPLz+/GgzAQIKZJnh0E5/iod+o/43sH5by7Xqaj10tPV4ZjaaT+mLH3BimVKkvdWLd6j5I2Z20QgEPplqEbFIeNK6r18wCCBMBh2myoG+7ihjAqUXq/KCEQ6qQthAnH/CALjm0CPWEDtnh2Xic+4TJ76aVvTTbxGHLfARSUK9ha7wLc1ltgDqmz1hyGqixNtBwPGHG+8brA6I16qhFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5joVByJjLklDEDX9mOESbh0Utvq/CHY9wIqAp/EkKLc=;
 b=ODPrdHQxs4aWwNpB/lSdTzo+pfq0762EhI0sC8WsmX4+K502xtVr/7M1ubQ2txacehWg0g3Tuc3GmdRTZHgS59NMm+DYHVQiW++q3srcc4Gjccop9D/O3s92x7muJIIRB4SqUmWWZ6yUgUawNyWbKehHoE06rKq37z+UQcetrHAWtINttLDyXOp9CUgMRPvwMMWHksKgXs3D3dMuyV0PF9pa6Sr7ua24XovZ/RbFliJrN8uRlu/z0nyWwBYAVRGVcXcPpvQHzAIL+/u1ytBENbpj0DDWELgZJwJafsYrLvdkiQMxD8aEKqcDGNmPjJbb9trMW64YkZYVdorYOK0paQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB5062.namprd11.prod.outlook.com (2603:10b6:510:3e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 19:48:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 19:48:50 +0000
Date: Thu, 24 Oct 2024 12:48:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Message-ID: <20241024194848.GP4891@mdroper-desk1.amr.corp.intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-2-suraj.kandpal@intel.com>
 <d0b4e4b8-f6c5-41f7-b1f7-36b06397b852@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d0b4e4b8-f6c5-41f7-b1f7-36b06397b852@intel.com>
X-ClientProxiedBy: BY5PR20CA0023.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::36) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB5062:EE_
X-MS-Office365-Filtering-Correlation-Id: d0262aef-26ec-4439-ef1a-08dcf464e1fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iEZXVPBicitcSvNZtcm05ok92xxj9a13gEAddxhIZ/RCAxbO2Jk+opwrp9i7?=
 =?us-ascii?Q?w9aZb6cgtYb4QeTR9gNjMXOz0nIC1BbeFkzpkOuVuz7Hc9xt3k0+iAHK7Z4E?=
 =?us-ascii?Q?2pkwPYVlUqy50km74MgpF5a/AXkJx7QLewpbsoSTXYBA/z+0KJW5RrFI4oJm?=
 =?us-ascii?Q?CagjAQ3agDoPCxxLAOROT3sTrbAuIM3PuzI2b3ey2jQzAzfnlPUOjUstQCNw?=
 =?us-ascii?Q?hAu+byfzSGYNlrZQveExJrdNUVnk8NYrsWtAAFR1TOnAgiWktsjNWp/IO8h6?=
 =?us-ascii?Q?eWwfxEWkz82/Yv/Eo+LGHCEiHOo7d8fBgC7OuuKO1GBFM4PtfQzWoeZrdkhL?=
 =?us-ascii?Q?nLV5bhVGqHeIenpq+mSsmleZ/ncv/G0778VO8i0m155FRRMiALGu4TyYAJca?=
 =?us-ascii?Q?mq3VHKPYn//idUAKQ5fj9xw10q60oe1j6Bui3WIVFgygtrpJZBn7PgPAoDft?=
 =?us-ascii?Q?0GJxb3XDWASCNH4Ppgm4JAxPGgF5IG27VF2wpn1eNJ+9nMQ7K1scUNG39XL9?=
 =?us-ascii?Q?dc6KfatLhaZ203NvnCShQIkArMv531JCuODV6P4hcYoJ+zisnt982k/C+MDU?=
 =?us-ascii?Q?SkTfsfF1jGg1wpRREUWK1gRf4L4d7wikGnbVPnnlmBvK1wgJ9SwDlV8WcLEN?=
 =?us-ascii?Q?aD6fHi1sWr1Y34OiWxuS8zZwiiKBvdGBVCWLZMpLmw9V3LPIvGmltqakEIAp?=
 =?us-ascii?Q?2SUEVKIi/ZjjTQR3P6O2qBZSyrQEZb1eDM/fZ9onPoawgxlrqJR897bq9l0V?=
 =?us-ascii?Q?EgFZIZyuYsM3pAp6HLF7T0kFeh4+t1HtH7CcfW+EMMPDiNf7dUkezS7+/8PA?=
 =?us-ascii?Q?AsP6F5Yrrxm2FyUYYpFl4H50IhEEc3lFz1MHAk4Ca/ntxoGf7uJ3yIur1uDJ?=
 =?us-ascii?Q?zz4lyB1Ld3DYTnX48xiL8iqYR3VNsRnijEQMsDzPDYLjub9UMjmUHOkS0qsB?=
 =?us-ascii?Q?WPjr081tl05hOTiS+gt+nXZVsEGL2pRed9lNHqEJwBjx5HIdHgbaVqK2AfXu?=
 =?us-ascii?Q?z94Ckk5wmE7o6QFQlah/xAjL2EZ0w3w/LLzuiHWOPoQPAdnoCRrsRrA28y80?=
 =?us-ascii?Q?cOmGdvUSi9FadawN2a6WtWi7JKcGzRAoHWssKvpKOrmrDKwHBTIiK+xq20wP?=
 =?us-ascii?Q?7VUh5PlsfyG67o0TU+LMvN5HfwuYqc/7TS4M++ZRDrJ+3RLCqDw+oZ3cTttR?=
 =?us-ascii?Q?d8muFYIJxipjc2imfmRE8hQhO0p0EV6lslrCZyNOh9KceRynG5r5/6nhQ6GU?=
 =?us-ascii?Q?cNsfByMcV9pt21Wkds8CNZE3wtX/4PNynHf+pwpyBEanbsG4DVjZ850IfhpZ?=
 =?us-ascii?Q?FpKX5rFJ+RIaCtcgcVfwwFtW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tKfW4d3lndm5kfNITWYOEhZLb23kvbVd6t1SRpvCT3E8E6zaHh8Q3+YOu/9D?=
 =?us-ascii?Q?puAvXT8zt2UIn3nmzg4+jlgF4yvHQOheRh5/lrTTbRUu9HEIqH4cSDd8eDYM?=
 =?us-ascii?Q?nc/ZhVXWeqaUKVe+7P4J9iB7ICo+HdRliNumK0O2hTEu/7uJaDrDFFYLXG2B?=
 =?us-ascii?Q?k3ku/565UhJ/cYChdE4jBAdWDX1ZkIhujSIEDqsaLKYZ/hKWluFUf2ja6Zoe?=
 =?us-ascii?Q?Xpjwv60eSa4dr9nI9Nx/LO9ejPTr3uATdsptMHtyxg0JHwoOSlEWb0ZqGpGU?=
 =?us-ascii?Q?ohZ7RP1Q9PcqC5mbmeKtrAcMmSxdrczcGbDBKoKW8MlhWK1TXj/8gCBUwQMm?=
 =?us-ascii?Q?Sm8OqcACgFEEb6AIodrdDJU1K9Ee9uASRlz5d0IVRF5skXLRcKUt1ZwlQWnr?=
 =?us-ascii?Q?BPeIKFWJB43fz7ahTlQ7M8B4ZGwdJjIAWzW8GrcW3kMDhYxah92fhxS3mLHJ?=
 =?us-ascii?Q?U5xJ/hd2OYK+6x2ND7jcPF+T68kqJjfGJwSIAA00UFBgtoFd/1pAcWkxNVew?=
 =?us-ascii?Q?aeBUyrA9cvKtyrgb+veWbLjDbWMyv5Ulxh2LEy/CJ/v1Yio0XJYQZiO56/oM?=
 =?us-ascii?Q?SBVc6CyK3KRxnk+bUqaJjC94owxOEDZTCuz+k8jgfEUbqh3OYZ2PrLBO/uKw?=
 =?us-ascii?Q?Z+LWc0RGN3XBYVbXuQOraFOPTUyyWt/i3vpktd5RnH4fRffROH8qYiEo9Jnh?=
 =?us-ascii?Q?spW2puBLvhLmFWPF7/AF8iT3EUDFksJ7FNJxBf+oahHJsodnoNEZBM7o7HPL?=
 =?us-ascii?Q?wejUQrA79D/g5xrhy2XpYgMVChKkrwQ2mZePa3Qdf6EETOwvfeuOC/oXF+UO?=
 =?us-ascii?Q?3cYr9IX1BSp7HhBfmu/DVDFQZH0ubJ9IKUB5mxkD6siV0WwKHqePMTNFtpX1?=
 =?us-ascii?Q?sNRs4HKwFw4RJfSLk3Qzc6r+NydyjUAibcifr0uzfIyBHCjJRcUcPmsU8ZKw?=
 =?us-ascii?Q?nCm1pSHlBx/iUnuP8BJMombKt0nMqtTN7df3HmfPPQZZVxCBksegaXeFLIhy?=
 =?us-ascii?Q?+Li0VV3fL+wK88urnjrzAKwK8Qq8tDfC7HyG/cydAfJI0Y+uO5wxDMnDUTvM?=
 =?us-ascii?Q?JSb8xskkTmlX97Ug445+oREyycCzvt21Rig9T43NfZy8EKkET0bguxDBBN8f?=
 =?us-ascii?Q?wCJ3e96Icl8LRZXCpHyQm7xNRnNj6k80W4u7W5FEsbc8kEOlDT8W51l5fc+W?=
 =?us-ascii?Q?ybY/T5TDWFy/TsRNjTq2eKF/1MzTub+OYKy4S6Yt29nsP9V57cpow0yEG1sJ?=
 =?us-ascii?Q?x7f5fBAfGtwfopBu0mXq1SPiKlTCMQgc8iTx/AMpCRATdlm7+0YDxPvnbeKQ?=
 =?us-ascii?Q?m87hdGapulCli/UbPFynTZXjWKPeglU89TQdLlOhtk6QT3LREgiiJz1xhMq6?=
 =?us-ascii?Q?CN/XHcrPkcdjc40qHPB5DWrCXxo4B87SE3uBhzQJZKXVf4pc5Myvuc7gSrVu?=
 =?us-ascii?Q?4PIVVciLXDzebs8ZqCzn/5xcJpHZpgE0stpMAva+/7FHuUSp2KFi/Foa35El?=
 =?us-ascii?Q?OCfxqxQqfi2KF197axc5D7LJrhciVugCSdbUvYldQy9tEHaZsgfDUqJ+sE3P?=
 =?us-ascii?Q?ztisEIwx/HoMaH+UkQg0PqceWHcSGrUy4Blq6tTsAh9KFNI7feEyZX4nwLsk?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0262aef-26ec-4439-ef1a-08dcf464e1fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 19:48:50.6574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kOX7IR1Y/Lz25GvUs3aTlxr+tGYjDUT/PyuPF9YmW1ZgkHbxHrpDgzdlo4mKQIZ7TkEBv2u/NCgDuxtD/paw6EDtMd8bb8oCRZO1m/rYj4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5062
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

On Thu, Oct 24, 2024 at 05:16:51PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> > DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
> > Increase pipe and plane max width and height to reflect this
> 
> Only max width is changed.
> 
> > increase in resolution.
> > 
> > --v2
> > -Take care of the subsampling scenario sooner rather than later [Matt]
> > 
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
> >   .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
> >   2 files changed, 19 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index e1f6255e918b..37bac53f996e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> >   	 * plane so let's not advertize modes that are
> >   	 * too big for that.
> >   	 */
> > -	if (DISPLAY_VER(dev_priv) >= 11) {
> > +	if (DISPLAY_VER(dev_priv) >= 30) {
> > +		plane_width_max = 6144 * num_joined_pipes;
> > +		plane_height_max = 4096;
> 
> plane_height_max is not changed, should be 4320.

Where do you see that documented?  At least on bspec 68858 it says

        Unjoined pipe source size, plane size, and pipe active size
        maximum vertical 4096.

and based on bspec 49199, that restriction goes back to at least gen12.
So it looks like we might have a bug on older platforms that needs to be
fixed.

When using the joiner the vertical limit goes up to 4320 (on Xe1
platforms) or 4800 (on Xe2/Xe3 platforms).


Matt

> 
> Otherwise looks good to me. With the above fixed:
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> >   		plane_width_max = 5120 * num_joined_pipes;
> >   		plane_height_max = 4320;
> >   	} else {
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 9207b7e96974..b3660c71e499 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -432,6 +432,16 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
> >   	}
> >   }
> > +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
> > +			       int color_plane,
> > +			       unsigned int rotation)
> > +{
> > +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> > +		return 4096;
> > +	else
> > +		return 6144;
> > +}
> > +
> >   static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
> >   				   int color_plane,
> >   				   unsigned int rotation)
> > @@ -2511,7 +2521,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >   	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
> > -	if (DISPLAY_VER(dev_priv) >= 11) {
> > +	if (DISPLAY_VER(dev_priv) >= 30) {
> > +		plane->max_width = xe3_plane_max_width;
> > +		plane->max_height = icl_plane_max_height;
> > +		plane->min_cdclk = icl_plane_min_cdclk;
> > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> >   		plane->min_width = icl_plane_min_width;
> >   		if (icl_is_hdr_plane(dev_priv, plane_id))
> >   			plane->max_width = icl_hdr_plane_max_width;

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
