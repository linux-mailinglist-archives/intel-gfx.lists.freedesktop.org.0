Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9477973CB1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 17:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA52710E0AE;
	Tue, 10 Sep 2024 15:49:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YI9f8g8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0B510E0AE;
 Tue, 10 Sep 2024 15:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725983342; x=1757519342;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XoNrKrHWvLgDS+K1DyBFvOiVhitz0ocFCpYqTHZP7SE=;
 b=YI9f8g8zOiH2WSYu+ovtVnyNpgL5VzxeycnXyd2ivKWgpGfBffoEJCIh
 G4/VMYPQxKd0Gem1ZxC6d8xjulWYY/ekt9N7v+9v9xpy8kZ2qK3OVaYpW
 LgJ0rfeKkkQxHPS9mrS9tu6lLLtEjHiIplUQ5/EJgYoEipXSbSvIh1G5B
 rPbIfidiriGbr/vkaWOnI7n/JvRRUgFHa09o/5g+rZo2064QkeE1OFlAp
 Z8EjXFwCSMYWlE4qv0xMNP/0LEGvd2SLzeoKOYLhjBXpxYnqB7PRczKba
 JOb0Bw56zeM74TDKFVseINdWNtdzTbzm7OgdO8RWM8FoXcBvOvXqT9ZjX Q==;
X-CSE-ConnectionGUID: T/6Fm+bbTCaY4xxI3Gc6xA==
X-CSE-MsgGUID: 6sR9EYHyTAScRwnzqNIQLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24882896"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24882896"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 08:48:51 -0700
X-CSE-ConnectionGUID: vlmuAkOeQ8ezN025pV0hbg==
X-CSE-MsgGUID: sT4EnPmOQ0GwtM/96Daa+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="71835447"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 08:48:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:48:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:48:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 08:48:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 08:48:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ss7zbPDNJtOSePiLrNlIl8TdnRJqTHrw4YkPAZbydPSJHH+D2hOCHg3papqUBWiQ7tDZs+kuhpwyqIg7pNtOIEkxoeQv1dwkzCOlITlLfnLSTE5sEKpTfWCdwdOhn2LQ70/G+5+DJIwmDE5jV23lXZTWuEqP5Kk5WtAFo04BpTBvApIFZ/dGkL/MM98B6l23ZSh02N1IyBGYPXLNpAG8Hooh87qii/5E7Y5WuwSv9UZS4RmuaNvhPdzv8zIXZPo/VKStsubsi4a88w/aoVygbUc49vxRzvsr+qqLR/Okv4C08Qhm8f/JYF59BmMRvU3ir/qoY85EgqWSYIu7AOiZGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SIvBV08pfpG3APCRYkD8ooH4WsCFYDJJLhAepNF00U=;
 b=GS85F13j8AL1dqZQuEMxIY1SD+Eo3ANThM6dZl6eP0mXty/rkv6bT9pRInhKbg7cYLqfr4JPSA8/ihGDZJ4oQdjW1TgCIV4tkZTjuBR39tmoPRo3tAHiQ/O/qz59e84SplLhZrTV5o5h8n+1iPIf7vdW5mN95LGWn/6adJfglqouLTRTLqC5vv1XVhBV603ce6VqK63/+m2mNrEdBuS2cbMXJgQ2SbifrODY+tgquxMv8mCyjhVG0gtuFrG7MqrAufpQqHE8Y+eLu3O+vWI1HM4KojeoRi5qh6M1JCJ7cgtpb7vb0EJlnZW5JWAofV4keuPGO3RpTenAcNvantvu7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 15:48:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 15:48:47 +0000
Date: Tue, 10 Sep 2024 11:48:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915/display: add intel_display_snapshot
 abstraction
Message-ID: <ZuBqXH8IVUNvjuON@intel.com>
References: <cover.1725888718.git.jani.nikula@intel.com>
 <12b4ec2eea2a52ab59a6b2f02cad41ed6ce29f19.1725888718.git.jani.nikula@intel.com>
 <Zt9aRgtEhZWhPRq2@intel.com> <87jzfklfbl.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87jzfklfbl.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:303:8d::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f560eb7-9a61-4ac4-d15e-08dcd1b00eca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?vhy11EIuvKw/4v2ae6epUnWqq0tNVfn2XKo/8GXiEpZnJfVSZTJujvi8kx?=
 =?iso-8859-1?Q?A4omI9QWdWxyJfDy3mwLBqcrLu+EarblPI3SRyeX2gAokaqhIGTNOJRySk?=
 =?iso-8859-1?Q?ZcjPB4GzKRmHx6dAz4+aUKnHtpx06YkSAO9LvSyN+C22s4KnEIyIaFPWpS?=
 =?iso-8859-1?Q?RYsNfnvDsKdqCRFSs5KiwT+5ZRSM80P/RmNsNDhpscTaRoPBtFvPxSQfon?=
 =?iso-8859-1?Q?NLSS5GSvAGfqGm7aUL96Q3YtPAKLYR76iDtQu2D+of4Y2+w978YwM2pzTt?=
 =?iso-8859-1?Q?Lq5uJA7CFzOz8Gt4mEQ1mz510O5o6Fqd5CfNo48aO1LJkagX+uAThF5d9j?=
 =?iso-8859-1?Q?KoJY8pbEGuzLWnGeRN6xlC4ZMgPD/U1X2G75qKUNwDA7TMwhXMZJeEUMAB?=
 =?iso-8859-1?Q?x5amLEY/fI9lkDpCtsGSe2xyS+5LqDDUhg+P/Cq5AgxG6u6bUhtefBGvB+?=
 =?iso-8859-1?Q?CKUTSkCYOKReakf5+tfCgO9APQXMerwBQrsoeJlOnP29ImGpdNylU0zrLw?=
 =?iso-8859-1?Q?ul1DAwZSfYbeBqlxGZe7aV6tTs3VW6SNKw7dka3UJMT4aHcyzTg6bYlsm4?=
 =?iso-8859-1?Q?IQXGT5gDZMZaxqLq1Q6aS2EOXH8w3x/ShRKVycaznUjvlS9U3AwGtkGfQy?=
 =?iso-8859-1?Q?ffTlCsPtPhoL+uZlHwcqnqD3a0aYu97t9dYdVmWPko4lRONYwTfH7yuWga?=
 =?iso-8859-1?Q?Sl6OLI98TkVbokel34c+EWD+RoU3vTg+yzWCAlD7UVjqpG906M0hxcLoFJ?=
 =?iso-8859-1?Q?RpCCKq/EmyYKFOXItyUh4gysF00IElfFkMt7GfRkumc107rbrKJTyqMfxR?=
 =?iso-8859-1?Q?BEyTxrXPBcU2if375Oap++cQ976qGpjbjwvyf4CRab6pL96r4eIMUmsCWx?=
 =?iso-8859-1?Q?6lNQue55HYGRac9kBiobZOh62L3t+olmay9rWFJE2SLDsLBJT1KIRrWraj?=
 =?iso-8859-1?Q?/5YVzbAzVtxbwVxImXZ7cPXn5gxBA5I7h0MtqbqtVhzV5DSG+H3mPnNgwN?=
 =?iso-8859-1?Q?bkCSorVEqxT5XJQ8le1gXADopzGU7NgZfdxFMtZkabUoI+86E/64Gc+Ns+?=
 =?iso-8859-1?Q?s3HPPSKZOIv/s5qfu/odmXqpFwJVLJaowMD1e0X6DfAtas6xB2MRGGNeVe?=
 =?iso-8859-1?Q?DRKAVGsUEqQ/K1nSliCkSBIDYku2U8UzExSfmiJ/B6e/dHVa00ByzT1XpF?=
 =?iso-8859-1?Q?MKOo9IzY9ZpWDJ0YCBu7kWssYk2txwQfTqGwFuLjs4FyMcgov/lx2NazBk?=
 =?iso-8859-1?Q?Xf8kYOHDOROOsukjYgwy6EO/VVdSlZ6gVJKfTCstePKuCL82NT3gRiVEvV?=
 =?iso-8859-1?Q?yJ4reeuYA64jOKhfcllS8TmwJMRr44VVueo1RK2v09XlnCtPo50dRDgfao?=
 =?iso-8859-1?Q?K1nTGS+xSzyTmua0wQt2JNfp1tNCPD5w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?bbp6UPfdoFHbVzw+0g7EJur5n9lWHfPfd0SgfIdrbaccZimHdjknD3V3BQ?=
 =?iso-8859-1?Q?C8Rxy1fJd4zFip6junHv8hUYk38V2T6gjl4n1aNQy/ZiyDvybZy1AN0hF4?=
 =?iso-8859-1?Q?cIiyGFMB2AFiph+HcqhaasfDI9XRW8q31C23Ds30PEGF/NMvrZBEMX8N1x?=
 =?iso-8859-1?Q?p76TQP0T6gNucTw+uyZwBR4un82cw0q0C9SMXEhCamukj9BbqpiJj7XXC5?=
 =?iso-8859-1?Q?eaN3qxEDk+iPC8oL3qX26rqtSpw9J0WOWU1SVicMyehlA7ehVh0Px7EBja?=
 =?iso-8859-1?Q?k7wBeXHXqWgQYy+E/UenBkta724r7cnS4GNIhYOywRBE5pajP1W2gZ2tDt?=
 =?iso-8859-1?Q?OAovgzzMO7NDgWzRVWb+Y/Sc2geWnTJ7Xo1u5KaHdJvJrjvQO5l/9WqZAU?=
 =?iso-8859-1?Q?1QAAZDi5uXxCW/YiVEPdmrG+0M/l3bb79h/eUrIDZmaWfBN8jRucoOuX0i?=
 =?iso-8859-1?Q?isOHEHaRE+FzY7te0cVLKWrBFAgrXHT2pIyVZFuNss1taGFW1HueMxtLKm?=
 =?iso-8859-1?Q?FPjokwdO9bzvMdDwJ5WZkyJbNd9y/2PVtLqjSIiQPpXODAeTF7DpFIS+Ld?=
 =?iso-8859-1?Q?TkQ0SiSX5faq6jJLW0brSiXcaZXLeFHe5MT0P+WMqszNkyU0hagvkVEQdG?=
 =?iso-8859-1?Q?S7GFKQwUjT/urhniW70CpjDmLkLZaTnSw6jSd0Fv7X6ATa2+SYh4Qy6iOp?=
 =?iso-8859-1?Q?msJf9TSGb9ie77UhVIUMRvZSUHH7INHYHE1dO8284plrbICyO03tXIf4oz?=
 =?iso-8859-1?Q?MHYV96fu8rkWBSKfMruQau0V9HuO1tL3YriqmAxEYmHzIK6hQvfitDT0oM?=
 =?iso-8859-1?Q?IY6fgFsCRGAYTPjTf0ZuoPvxSErsglIauu84o5R3gLJtlrB9jbQ8Fwq1tP?=
 =?iso-8859-1?Q?f8pZmT/oBX3sSPXff5ZXvhPfGBD9216iiBOeFe/XUgrlWm1C3tXZ/OgQkq?=
 =?iso-8859-1?Q?cEhSNoCisSDZRiIRmtIRVZfEtr0CxDuVCW2eLz5dz0oOkkStlkBWMymG+w?=
 =?iso-8859-1?Q?5Qvhy8KG8I7MwZ5MBJJegpS9v4KDaipAorMeImheX8Jz0Il3J6S3ReIvAt?=
 =?iso-8859-1?Q?5ontgaAhWBkPWDhUfmuWN2wp3FsiUgicCunn4gcOUEfm15atihQrsG/+9h?=
 =?iso-8859-1?Q?zFA2aopS1kbynRetaxBgcGpHbuAa7Zw9kpD7AvQgeaCey1oABfQkOuApuO?=
 =?iso-8859-1?Q?DqS9SiLbRlqsWPOu0kjGrMQmb0dDH3ZeGnHfiboZXBa4Nwx8L34l8+BHdo?=
 =?iso-8859-1?Q?y34FYdk1GVutYyjZ7C+8DPDDap+RgA24WJEqt7lAeIaqW2FHksMCAByqs7?=
 =?iso-8859-1?Q?Li4f7JGjBF+uWyEdHdf5AsbwuyLJvEUvvS+ZCw2zC45H1ZvLhDCczIXNyN?=
 =?iso-8859-1?Q?7WgWplXZr+Jv7qif+kJZ13FvvLSR2PCzGPNmYYY6yxrm/qKae4CecSV5kd?=
 =?iso-8859-1?Q?OzHssswOjdpqC9ASbqcBLP7OtPyKSxcg2CPxZ40b+7BY8TfUNnaoJBBqix?=
 =?iso-8859-1?Q?b5D5WX0X/TyPeCYKW0l9xVTabu8Liz08rL23zZlHWrYL8wtBB1a3RtZXiL?=
 =?iso-8859-1?Q?Suwj1Keqpp1ZTU3gfqp+kztmSllnJf5qH1s3lI0/+v+OLvzUzPsbfMIjn2?=
 =?iso-8859-1?Q?JQJr8kCYiy5rXL3BQIPT+7cVVck8fZXJDPv9bwQrY8VbWAie9uvxSiEg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f560eb7-9a61-4ac4-d15e-08dcd1b00eca
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 15:48:47.4545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O8lUymq+4yQYbwrp2wJrcGv4S5OEXM8oHTpfZqTx6A8S5LFDMuk+2V7t0TgjmXMVE1msgShZq07ymaQxIW/vYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
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

On Mon, Sep 09, 2024 at 11:53:02PM +0300, Jani Nikula wrote:
> On Mon, 09 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Sep 09, 2024 at 04:32:57PM +0300, Jani Nikula wrote:
> >> The error state capture still handles display info at a too detailed
> >> level. Start abstracting the whole display snapshot capture and printing
> >> at a higher level. Move overlay to display snapshot first.
> >> 
> >> Use the same nomenclature and style as in xe devcoredump, in preparation
> >> for perhaps some day bolting the snapshots there as well.
> >> 
> >> v3: Fix build harder for CONFIG_DRM_I915_CAPTURE_ERROR=n
> >> 
> >> v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=n (kernel test robot)
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/Makefile                 |  1 +
> >>  .../drm/i915/display/intel_display_snapshot.c | 42 +++++++++++++++++++
> >>  .../drm/i915/display/intel_display_snapshot.h | 16 +++++++
> >>  drivers/gpu/drm/i915/display/intel_overlay.c  | 16 ++++---
> >>  drivers/gpu/drm/i915/display/intel_overlay.h  | 25 +++++++----
> >>  drivers/gpu/drm/i915/i915_gpu_error.c         | 12 +++---
> >>  drivers/gpu/drm/i915/i915_gpu_error.h         |  6 +--
> >>  7 files changed, 94 insertions(+), 24 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h
> >> 
> >> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> >> index c63fa2133ccb..9fcd9e09bc0b 100644
> >> --- a/drivers/gpu/drm/i915/Makefile
> >> +++ b/drivers/gpu/drm/i915/Makefile
> >> @@ -242,6 +242,7 @@ i915-y += \
> >>  	display/intel_display_power_well.o \
> >>  	display/intel_display_reset.o \
> >>  	display/intel_display_rps.o \
> >> +	display/intel_display_snapshot.o \
> >>  	display/intel_display_wa.o \
> >>  	display/intel_dmc.o \
> >>  	display/intel_dmc_wl.o \
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> >> new file mode 100644
> >> index 000000000000..78b019dcd41d
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> >> @@ -0,0 +1,42 @@
> >> +// SPDX-License-Identifier: MIT
> >> +/* Copyright © 2024 Intel Corporation */
> >> +
> >> +#include <linux/slab.h>
> >> +
> >> +#include "intel_display_snapshot.h"
> >> +#include "intel_overlay.h"
> >> +
> >> +struct intel_display_snapshot {
> >> +	struct intel_overlay_snapshot *overlay;
> >> +};
> >> +
> >> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
> >> +{
> >> +	struct intel_display_snapshot *snapshot;
> >> +
> >> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> >> +	if (!snapshot)
> >> +		return NULL;
> >> +
> >> +	snapshot->overlay = intel_overlay_snapshot_capture(display);
> >> +
> >> +	return snapshot;
> >> +}
> >> +
> >> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> >> +				  struct drm_printer *p)
> >> +{
> >> +	if (!snapshot)
> >> +		return;
> >> +
> >> +	intel_overlay_snapshot_print(snapshot->overlay, p);
> >> +}
> >> +
> >> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
> >> +{
> >> +	if (!snapshot)
> >> +		return;
> >> +
> >> +	kfree(snapshot->overlay);
> >> +	kfree(snapshot);
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.h b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> >> new file mode 100644
> >> index 000000000000..7ed27cdea644
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> >> @@ -0,0 +1,16 @@
> >> +/* SPDX-License-Identifier: MIT */
> >> +/* Copyright © 2024 Intel Corporation */
> >> +
> >> +#ifndef __INTEL_DISPLAY_SNAPSHOT_H__
> >> +#define __INTEL_DISPLAY_SNAPSHOT_H__
> >> +
> >> +struct drm_printer;
> >> +struct intel_display;
> >> +struct intel_display_snapshot;
> >> +
> >> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display);
> >> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> >> +				  struct drm_printer *p);
> >> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot);
> >> +
> >> +#endif /* __INTEL_DISPLAY_SNAPSHOT_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> >> index 06b1122ec13e..b89541458765 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> >> @@ -1457,18 +1457,19 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
> >>  
> >>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> >>  
> >> -struct intel_overlay_error_state {
> >> +struct intel_overlay_snapshot {
> >>  	struct overlay_registers regs;
> >>  	unsigned long base;
> >>  	u32 dovsta;
> >>  	u32 isr;
> >>  };
> >>  
> >> -struct intel_overlay_error_state *
> >> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> >> +struct intel_overlay_snapshot *
> >> +intel_overlay_snapshot_capture(struct intel_display *display)
> >>  {
> >> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >>  	struct intel_overlay *overlay = dev_priv->display.overlay;
> >> -	struct intel_overlay_error_state *error;
> >> +	struct intel_overlay_snapshot *error;
> >>  
> >>  	if (!overlay || !overlay->active)
> >>  		return NULL;
> >> @@ -1487,9 +1488,12 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> >>  }
> >>  
> >>  void
> >> -intel_overlay_print_error_state(struct drm_printer *p,
> >> -				struct intel_overlay_error_state *error)
> >> +intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> >> +			     struct drm_printer *p)
> >>  {
> >> +	if (!error)
> >> +		return;
> >> +
> >>  	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
> >>  		   error->dovsta, error->isr);
> >>  	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> >> index f28a09c062d0..eafac24d1de8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> >> @@ -6,12 +6,15 @@
> >>  #ifndef __INTEL_OVERLAY_H__
> >>  #define __INTEL_OVERLAY_H__
> >>  
> >> +#include <linux/types.h>
> >
> > so, that was it?
> > I cannot spot any other difference between the v3 and v2.
> > But I also cannot correlate this to the reported errors.
> 
> I'm not sure if the test robot actually tested v2, it just sent the same
> results for gcc and clang. But I found this myself when trying locally
> with CONFIG_DRM_I915_CAPTURE_ERROR=n. It's needed for returning NULL in
> the stub...

fair enough. the code looks right to me and if build-bots are okay
now:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> >
> >> +
> >>  struct drm_device;
> >>  struct drm_file;
> >>  struct drm_i915_private;
> >>  struct drm_printer;
> >> +struct intel_display;
> >>  struct intel_overlay;
> >> -struct intel_overlay_error_state;
> >> +struct intel_overlay_snapshot;
> >>  
> >>  #ifdef I915
> >>  void intel_overlay_setup(struct drm_i915_private *dev_priv);
> >> @@ -22,10 +25,6 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
> >>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
> >>  			      struct drm_file *file_priv);
> >>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
> >> -struct intel_overlay_error_state *
> >> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
> >> -void intel_overlay_print_error_state(struct drm_printer *p,
> >> -				     struct intel_overlay_error_state *error);
> >>  #else
> >>  static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
> >>  {
> >> @@ -50,13 +49,21 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
> >>  static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
> >>  {
> >>  }
> >> -static inline struct intel_overlay_error_state *
> >> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> >> +#endif
> >> +
> >> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
> >> +struct intel_overlay_snapshot *
> >> +intel_overlay_snapshot_capture(struct intel_display *display);
> >> +void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> >> +				  struct drm_printer *p);
> >> +#else
> >> +static inline struct intel_overlay_snapshot *
> >> +intel_overlay_snapshot_capture(struct intel_display *display)
> >>  {
> >>  	return NULL;
> >>  }
> >> -static inline void intel_overlay_print_error_state(struct drm_printer *p,
> >> -						   struct intel_overlay_error_state *error)
> >> +static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> >> +						struct drm_printer *p)
> >>  {
> >>  }
> >>  #endif
> >> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> >> index f23769ccf050..b047b24a90d5 100644
> >> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> >> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> >> @@ -40,8 +40,8 @@
> >>  #include <drm/drm_cache.h>
> >>  #include <drm/drm_print.h>
> >>  
> >> +#include "display/intel_display_snapshot.h"
> >>  #include "display/intel_dmc.h"
> >> -#include "display/intel_overlay.h"
> >>  
> >>  #include "gem/i915_gem_context.h"
> >>  #include "gem/i915_gem_lmem.h"
> >> @@ -905,11 +905,10 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
> >>  		err_print_gt_info(m, error->gt);
> >>  	}
> >>  
> >> -	if (error->overlay)
> >> -		intel_overlay_print_error_state(&p, error->overlay);
> >> -
> >>  	err_print_capabilities(m, error);
> >>  	err_print_params(m, &error->params);
> >> +
> >> +	intel_display_snapshot_print(error->display_snapshot, &p);
> >>  }
> >>  
> >>  static int err_print_to_sgl(struct i915_gpu_coredump *error)
> >> @@ -1077,7 +1076,7 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
> >>  		cleanup_gt(gt);
> >>  	}
> >>  
> >> -	kfree(error->overlay);
> >> +	intel_display_snapshot_free(error->display_snapshot);
> >>  
> >>  	cleanup_params(error);
> >>  
> >> @@ -2097,6 +2096,7 @@ static struct i915_gpu_coredump *
> >>  __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
> >>  {
> >>  	struct drm_i915_private *i915 = gt->i915;
> >> +	struct intel_display *display = &i915->display;
> >>  	struct i915_gpu_coredump *error;
> >>  
> >>  	/* Check if GPU capture has been disabled */
> >> @@ -2138,7 +2138,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
> >>  		error->simulated |= error->gt->simulated;
> >>  	}
> >>  
> >> -	error->overlay = intel_overlay_capture_error_state(i915);
> >> +	error->display_snapshot = intel_display_snapshot_capture(display);
> >>  
> >>  	return error;
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> >> index 7c255bb1c319..1a11942d7800 100644
> >> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> >> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> >> @@ -31,7 +31,7 @@
> >>  struct drm_i915_private;
> >>  struct i915_vma_compress;
> >>  struct intel_engine_capture_vma;
> >> -struct intel_overlay_error_state;
> >> +struct intel_display_snapshot;
> >>  
> >>  struct i915_vma_coredump {
> >>  	struct i915_vma_coredump *next;
> >> @@ -218,9 +218,9 @@ struct i915_gpu_coredump {
> >>  	struct i915_params params;
> >>  	struct intel_display_params display_params;
> >>  
> >> -	struct intel_overlay_error_state *overlay;
> >> -
> >>  	struct scatterlist *sgl, *fit;
> >> +
> >> +	struct intel_display_snapshot *display_snapshot;
> >>  };
> >>  
> >>  struct i915_gpu_error {
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
