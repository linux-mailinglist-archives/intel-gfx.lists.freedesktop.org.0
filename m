Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A0F92C404
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6113610E651;
	Tue,  9 Jul 2024 19:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4en0vae";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FCA10E648
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 19:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554310; x=1752090310;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ml8hKdddfKb0fStXg/iQhiQ2+H6JFlDN/i/x4mGVEcI=;
 b=C4en0vaepSG0w0325j4vb3GGRpuyWKoMqAGmUzi40Jb82GQ7waQEB3TI
 UtYBvoVsTuJzCoUlX17L/YuFX7GShaFFyaQmVwUCB3wPeuAY29rPdwF6b
 wE0Lncp3T99WdqI1byEWPU95zTRSCIkATkyL9T07bGm0EIobrBwIV9w+T
 kSbJHSlWii/iZUnJlIxN9ifXpyutCA9z02SGqN6X6gmbal5Eenyl5vMJo
 cP4givfKeFLqPiWXdqQsdnm4gPxU3lXpnFkjuvHQWyssQkdUxrL3gnOqH
 +pvuUEZvF0+NsJmQOfGuLw7n/8/vhbX6qbJ80R5onV8yNffSGtnqmviPS Q==;
X-CSE-ConnectionGUID: n2Q4iBlgRFuXw12OWD5tFg==
X-CSE-MsgGUID: tOXq/mKBQZGxeINaEiaErQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17948120"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17948120"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:45:10 -0700
X-CSE-ConnectionGUID: qZqylJzmTFyf0oIUigLiJg==
X-CSE-MsgGUID: LGJSBd41SZeTkcfrVg7AMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="47962844"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:45:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:45:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:45:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:45:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:45:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bfY/b4HGvoYpSdWt1dcqkp/uQ61D6nlbEFS8hsjhc7un5zIB+vNlSSHvWeyEubNqMlE2tHh3WDyiQmcaIZXt0vzvJRGiYxdRXWKWLUQLHwTN/Djrar9UZn2ewMytgqXdKKPIj6fUZTeoI8/7lXpnK7ZgQ/7IHBlPyXJT6hpeFXt4a+eK/3Xq5+tuukYxnXDSNy2jp9y8SW7G6yWypIBjm60H2PWHDVSj3fwazAFAwPDvtiSrsiXSweCuXIO5GJSEXA1winaV7FxX5eTm22GZYhpcSFZsaMRoRziSxbFsWa2Z5drFCozNRPhtvGYxChA7SvvR9KfYOQEIeY6lkbuOkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6rTASstpT++rzfcZhZrqDNE/8wX6nO1VNj3ZVN1TEE=;
 b=bwoVD3I2ta0MVMKKU+r347loTVaA5gSOUqhksdvR9uyi6SNHn93Hy8cqG70m44EtLYmNMmHf+lnDfQsI4s/ryG8N2g27uAtR9cOJ0Z7cCXqiatOnL7p0FBxouI1RKsS3labSrxip68Ryn74zcz1+gUQAQfJJhKm/1UeXxRz63WZkJm9DF3tXw8XJ1zaoL0tgBAKTyrBqX47PJ6czSd8+9I1+R3wLuXRCI328kHJkADKG+VCclmpZhHnfrqhHvmp/vmyUDsQC0Iu8F4F1voUR1gwtRm3X6p+OkN40eHM9gAqRPQbj5ggD1zX+Ld6Hu8NI2bsAslVg9t9YLi74tsIg8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 CY5PR11MB6305.namprd11.prod.outlook.com (2603:10b6:930:23::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.36; Tue, 9 Jul 2024 19:45:06 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:45:06 +0000
Date: Tue, 9 Jul 2024 15:45:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use
 it later
Message-ID: <Zo2TPq6NRrStDciC@intel.com>
References: <20240704082638.2302092-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240704082638.2302092-2-mitulkumar.ajitkumar.golani@intel.com>
 <IA0PR11MB7307CB5E4F9804C57706D716BADB2@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307CB5E4F9804C57706D716BADB2@IA0PR11MB7307.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0087.namprd03.prod.outlook.com
 (2603:10b6:a03:331::32) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|CY5PR11MB6305:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ab3d545-a208-4036-1f4f-08dca04fa1d5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YipZ+9TPEnL6WNX+yfLotehYM6ttC5wfE1VHp2dp/DZ0ieYKspSVJUnzbaP4?=
 =?us-ascii?Q?YxM4gjFzcq5FD9WquMlTWXEEyEc+yHxoNp7Z5h/C6xFB9EZVQIRJbpI0BLFL?=
 =?us-ascii?Q?gaG4kh8Wa5jfWrcxE7yZi6qeYAnQk+anK57DuxGZvDtAcQ2/WysgSOhGdbHD?=
 =?us-ascii?Q?RPfiCDMBvcLAM7a7hDpA6Mp1UzzRjPN7GtBVjXmHs/HKPZ0Xwhro7RAy5gH8?=
 =?us-ascii?Q?HcsCgET52xR9BVA39O1ol6um2G2SnXfMTcZZOTukibNMtRTYl2ZSRnRIBv9l?=
 =?us-ascii?Q?QfnT30se6GbgQbTnJ490OeqXNplLh/h4ypTGHBOTvNLHP2mkEng3eevfI6qU?=
 =?us-ascii?Q?ILltemK8kqfg0X7ym5tBEThL0iHXOyzqWFMuMuZNkSll/mYRo+UkFJ4VSFg9?=
 =?us-ascii?Q?j+Z27juekLNlwo+V7+ix4VDWgr3p3ahVgv0YT97W8qhN+Ql0ZO6YhGI7OhhL?=
 =?us-ascii?Q?ZvqW+2J6zBee6j2n+mmPofAdZRJsZ/+n9uL0qCRXBd8hkp72gy4GMs6kqIvl?=
 =?us-ascii?Q?3q7FcH/z3SK9KQI4RzF6F72w1eS7m/BwjycnQhE/mfAKKBAelFEyFSsxNKFY?=
 =?us-ascii?Q?RDP++HvW4Qe3o4uoIWa2HUBfgOeh6O1hQDDUBLn0FqL7GRq9EEZJBbYpt1Ns?=
 =?us-ascii?Q?8HgHfg/qWcx7uher6tLaMUa1dmstke70I0Gu0Ma3MTWwq+zii73k6/MzzOod?=
 =?us-ascii?Q?xVpeQ85SLcXcrgu62Jf5XpDH5FUhoV/nlLsTGgTxJrrH+3ylJyw+u2ku4U9O?=
 =?us-ascii?Q?Bh3K3So0wKtMBmvavGfvtC40jqSktCDSBLSWq+bBqKjIYz4B+Bt/SC5/eYZC?=
 =?us-ascii?Q?t/shg2EkUdH+Q8/aaJYjXYD5oNhJb2TNEU5cQONqJ5Rvzo7zLshO6u4/pSzq?=
 =?us-ascii?Q?hbOS2cQF0HheOdRNcxjX+o+ApxanHY0zZQI1dJjVIupV3VU7ViAWdzPYwNE3?=
 =?us-ascii?Q?c35FPrlXQoqOPy0hKapdVx/WXDPhQdclIU1sGfsk/ajdoGb0j9WSxb7MM08r?=
 =?us-ascii?Q?B0NfD0tUj4A6nUfNyX2DpXBX0JFTvcJNePWEQJOPVU7lqu6oS0CsTwrB9bTC?=
 =?us-ascii?Q?6fFjhjeA+5LK6dGiIyK0PDJt54fdRe478h4oyFtKeRLrmFkB3QxsArTUhp6E?=
 =?us-ascii?Q?b0aKnzNKJTa2fBnaa9jqIYoC7F77jsv4y/1baTzf02RhVBOIVsWGHl2Q5ji6?=
 =?us-ascii?Q?4gv4RFGQut7hKr+/3uw17v14zEM5aaZlErukKR8hLWscupWQXhM9l/hzOuBV?=
 =?us-ascii?Q?EHvwX264VSNYjfrdfW6Fam1FXo78TnIfKOo4ev+ttdg0xXy4Pe3uNFKDYQ2L?=
 =?us-ascii?Q?/2YODtEXcwYCUCGMGjXIoObGuiJvolwCk66CkDrIyV/TUQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RiHdIEz9KeZnXdIaseEd3MbRv57wyzwCvVwNOcNtDr/lSZ5RG8GSnDMqyL0F?=
 =?us-ascii?Q?xxx9FQhxae948heYLn4+s056iO/SS7D/9DuYej/bLIp2TL08res4iZwPjDjt?=
 =?us-ascii?Q?zV8sM7S3ULMX4dfd0hBugYLxuFxMg01H58xwMKOUuijHTKgp2QWUNm1FyeIQ?=
 =?us-ascii?Q?VWcicd196593bPnJVtupWxJ2Zn7wRG76kg0Us6mdLkDD+syONd3eQBqqgsP1?=
 =?us-ascii?Q?QSoz5iV0CucgoL7qrCSZGUIsOOmawWK0qI45RdaybsuORzMm6qrOEKGBwtwU?=
 =?us-ascii?Q?15mh06+ODBsU6trOBaU4qxtcUudPZ+3sGiffXnxxrE1s0xzXIkwctDX+JhCN?=
 =?us-ascii?Q?dm33L/12kGb2rdymhHu2a25ze9RNno2EtYQo1ON8CDHZF8fA4iJlYsDjDweR?=
 =?us-ascii?Q?QC59Gk9UF89lE8U3LQg4fzc4fsU21nlU6a+GKdNEUKyizRt80mUyshDUcNtt?=
 =?us-ascii?Q?2XSffh0NclyRM6pyyrMntClwnei5nNjMeyjy7e6tGtzwpuTZJRmTpFoOGxhB?=
 =?us-ascii?Q?1umgfk19Fv3U2kKOFGZqEyjviY9SQGLbtG7rNEqXEJJLUU54R1xNbhCv9tfO?=
 =?us-ascii?Q?TarIw03nZAm6XZT5krbIm9yKWOjVRkwrlvIjx3J9TtVLAM0VNPtZPGsyUKWD?=
 =?us-ascii?Q?53G8GDfXhRJMQeoXOAjvL+X41K/UlvXshG8Smg+/io84w96V08JtgZIhEe1z?=
 =?us-ascii?Q?SUt8ZXC+ievrmWvoDdq5E5yf9Ea2wr/MoN5EhXIxmFZPIcBgRhDkcSHt/XaU?=
 =?us-ascii?Q?aWLKln4ZQ6EVa5L80N2gZWlKbOA2tpzBZaP8bGaouQvtMaTcFiaY4uBnKDcb?=
 =?us-ascii?Q?rnJ7Kh4JNHTNUQDcpTkKhgkX0iyYUJ1ycLRkKCkBkkPP0z9GOYPrRARzOKDD?=
 =?us-ascii?Q?Jj2pl5Ymb4Z5MIVG494vZ9yXWcnaZHM7hBldLlO3E9hAsifdz+c3wUsfkYry?=
 =?us-ascii?Q?ubVs07cMABHy/unyNc44uI9s0cnkVC6xZmRSXqxiAmM9h98VZDMNZ37Kg5sE?=
 =?us-ascii?Q?IxoZ7kQB2r8H89STPtMhqs9OztQM6meYgfRiuRWfv8771bqW0JTJkA4j6O1o?=
 =?us-ascii?Q?yC2agBPvWoIBZlXLG0sLOLX0w+Afx2w/tXtvG2fxll0G4pLQrayGiAJLZV1E?=
 =?us-ascii?Q?tuwSc9EYTz6Me9h0my3stPDiKO+5wtYFbeXTaw5caKPRBB4d7hRotaAeYzzl?=
 =?us-ascii?Q?lHH0uVSu6A2qqjyYltFfX8CDqJVrZOT5vPAV8jwx18ATIs3QjGRD50JQny2O?=
 =?us-ascii?Q?P2oQO+IvLK4jBXDpgWx2cQXtnq5HHKDa1Dw4dOxvo1S6rAuFQChPXxIqwEkA?=
 =?us-ascii?Q?R3eaSxgcoUlgOHosUnxvD5rgWOOAV0B5dj6h6zOlwvCjM40gOGWJeRNNUbjw?=
 =?us-ascii?Q?igq5CfNmM4ObPVn35aMnkDc7+jRsAWfhDoE79IIMN6/rRjJ9xMZZAD/z4/8d?=
 =?us-ascii?Q?Zr6tpwvXHLTQovRN0J2KpqGPmu4x6n2IuZNtz7By+OmMhmEZ4TA5JCeqHh6G?=
 =?us-ascii?Q?4MfE0buy+J4Rf/ttUGFLMYC/muIzeT0O5Ja7i/xr4m0O5O+dIHGw15HY542r?=
 =?us-ascii?Q?77M7hM7Cr4LDSF5Ek72oAHrP/qyXh2iL6hBbw6Pg54T3aArANOJ008DQIWpo?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab3d545-a208-4036-1f4f-08dca04fa1d5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:45:06.1261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WFIKBB3gDQ0G8ZRhsp2bXeHpdp9hicEa/yqQo6QkxxAt++BwveznEmQAyZ+igMoi/ki6acWVuK/1zxKUkefrww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6305
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

On Tue, Jul 09, 2024 at 04:30:23AM +0000, Murthy, Arun R wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitul
> > Golani
> > Sent: Thursday, July 4, 2024 1:57 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Deak, Imre
> > <imre.deak@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use it
> > later
> > 
> > Add new member to struct intel_dp to cache support of Adaptive Sync SDP
> > capabilities and use it whenever required to avoid HW access to read capability
> > during each atomic commit.
> > 
> > -v2:
> > - Squash both the patches
> > 
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

pushed to drm-intel-next. thanks for the patch and review.

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  1 -
> >  drivers/gpu/drm/i915/display/intel_vrr.c      |  3 +--
> >  5 files changed, 15 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 866b3b409c4d..f4f05a859379 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -280,7 +280,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp
> > *intel_dp,
> >  	if (DISPLAY_VER(i915) < 20)
> >  		return;
> > 
> > -	if (!intel_dp_as_sdp_supported(intel_dp))
> > +	if (!intel_dp->as_sdp_supported)
> >  		return;
> > 
> >  	if (crtc_state->has_psr)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 8713835e2307..a9d2acdc51a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1806,6 +1806,7 @@ struct intel_dp {
> > 
> >  	/* connector directly attached - won't be use for modeset in mst world
> > */
> >  	struct intel_connector *attached_connector;
> > +	bool as_sdp_supported;
> > 
> >  	struct drm_dp_tunnel *tunnel;
> >  	bool tunnel_suspended:1;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3903f6ead6e6..edfb30857479 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -129,14 +129,6 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
> >  	return dig_port->base.type == INTEL_OUTPUT_EDP;  }
> > 
> > -bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp) -{
> > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > -
> > -	return HAS_AS_SDP(i915) &&
> > -		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> > -}
> > -
> >  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
> > 
> >  /* Is link rate UHBR and thus 128b/132b? */ @@ -2625,8 +2617,7 @@ static
> > void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> >  	const struct drm_display_mode *adjusted_mode =
> >  		&crtc_state->hw.adjusted_mode;
> > 
> > -	if (!crtc_state->vrr.enable ||
> > -	    !intel_dp_as_sdp_supported(intel_dp))
> > +	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
> >  		return;
> > 
> >  	crtc_state->infoframes.enable |=
> > intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> > @@ -5900,6 +5891,15 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp,
> > struct intel_connector *conn
> >  					  connector);
> >  }
> > 
> > +static void
> > +intel_dp_detect_sdp_caps(struct intel_dp *intel_dp) {
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +
> > +	intel_dp->as_sdp_supported = HAS_AS_SDP(i915) &&
> > +		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd); }
> > +
> >  static int
> >  intel_dp_detect(struct drm_connector *connector,
> >  		struct drm_modeset_acquire_ctx *ctx,
> > @@ -5958,6 +5958,8 @@ intel_dp_detect(struct drm_connector *connector,
> > 
> >  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
> > 
> > +	intel_dp_detect_sdp_caps(intel_dp);
> > +
> >  	intel_dp_mst_configure(intel_dp);
> > 
> >  	if (intel_dp->reset_link_params) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index a0f990a95ecc..9be539edf817 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -85,7 +85,6 @@ void intel_dp_audio_compute_config(struct intel_encoder
> > *encoder,
> >  				   struct drm_connector_state *conn_state);
> > bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);  bool
> > intel_dp_is_edp(struct intel_dp *intel_dp); -bool
> > intel_dp_as_sdp_supported(struct intel_dp *intel_dp);  bool
> > intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);  bool
> > intel_dp_has_dsc(const struct intel_connector *connector);  int
> > intel_dp_link_symbol_size(int rate); diff --git
> > a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 5a0da64c7db3..7e1d9c718214 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state
> > *crtc_state,
> >  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> >  	}
> > 
> > -	if (intel_dp_as_sdp_supported(intel_dp) &&
> > -	    crtc_state->vrr.enable) {
> > +	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> >  		crtc_state->vrr.vsync_start =
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> >  			 crtc_state->hw.adjusted_mode.vsync_start);
> > --
> > 2.45.2
> 
