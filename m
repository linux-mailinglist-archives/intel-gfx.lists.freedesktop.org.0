Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B450A70C3A7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 18:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E773710E19E;
	Mon, 22 May 2023 16:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559EB10E19B;
 Mon, 22 May 2023 16:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684773715; x=1716309715;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1Kw1RalTngu4eFlN+2KCSVkE3CqWWC7fK5C7FY825BE=;
 b=Mww0/Q9L9U3N0CyuSVVe4HkMMPmJMloU8wcSDx2i8cVfyUDCwgToDKut
 qqCLcuj0nYKCdJkzYReOLANCiBJ/vldFCTmce4Fx1vTC6WzoN9CkhJGfU
 6RxJ14o2JUg8c0MclGiaqBzbRhx+k6FfwcJC6qZakvifueo5QOzeevBFB
 sTwHyHqfNn8Ove7A7utpcRcJzHIWf2wztqCmBBPGJCsI43jYfUHTPAyGN
 fI712En1yUw5GqEalF8twDaqr1gkfG4qeUn58T6uupSALfctSg+bwuukq
 9EH1TS2xkfOCuepEmZbcQVtFXZtVKkgiNoACW3cm7yauLxfrH0nEJLK/k w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="416437541"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416437541"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 09:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="736477117"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="736477117"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 22 May 2023 09:41:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 09:41:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 09:41:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 09:41:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHhVKqLnjQgn3vLkCn3WRKoqIQXcQVaaU/z7KCxrZlnWZuqqxYab8igL7LTyLNRYzc4DpQdgGf7KdemlyWUHwUNbVxKSFvzpAohBlLC1tDq7R4sp6YOU8v7ggBVNc28u+V4zi7Iuno2d1ZKLlJHZYeiXIUPGWxNLuVOu64RHZLvV3KYgb24C1HTKzA6hgtkEKPunPZOfZToL//xTIykzdlhsqnLSPI+NSlC4Q74SLSEylAA+uvmj6+PuHc8pq4BRJRb8klpYp/FhNZrNsi18Incfb5ouz5YCt6fZUPXgQEbEta3QpQ5eoiVZ5OQOnhJiIg3K+GYnbxD/NOgd0y1mUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+YVh+zObogG1H4zPxkULN8sJCsdqL9laji7qRtwtdJo=;
 b=cAGbEdsnXIeUZ9aUb7SrY6Ut6MhNJwVYmTboqK4gwpDLBTrVGrH3NYWph47jk6r1r/wZSh46deTvmFrb/Ah85aiSiUu93F0/8Fdo5uGT0YotISDI3sabKFin2XOQFDWun+GUuxLAZZ0QPkI1OruPQpDrV7f/KAYLyJYg9DpT7iIuZkH6Qayh4Nzt8J8YHOgTE2LubdTMC1VpEE+Z+lG8LPJW0fmTyHe4j6R9AjvT+dV8oYvczuZ8y2i5M/3IV+ZLuAByRD4JRrEXY5oj4U2QbRQJPWk6MvK3pPxgY7HaIlTXpO516TdXhTpH00T5LsCEM3XieqoPVzftY1XszTMaIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5970.namprd11.prod.outlook.com (2603:10b6:8:5d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.28; Mon, 22 May 2023 16:41:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 16:41:52 +0000
Date: Mon, 22 May 2023 09:41:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20230522164149.GI10045@mdroper-desk1.amr.corp.intel.com>
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
 <20230518031804.3133486-4-matthew.d.roper@intel.com>
 <f1808a5d-ebb7-552a-0d0a-b08862861f92@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f1808a5d-ebb7-552a-0d0a-b08862861f92@intel.com>
X-ClientProxiedBy: SJ0PR13CA0146.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5970:EE_
X-MS-Office365-Filtering-Correlation-Id: 70d1b625-9851-45a8-4b78-08db5ae371cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P59xA+h2ROR3N1gv7K+IcfezViCLx1w59QUlAqblfIPseS5mX7p0sK7dVQHhJoi0hBia9AuJqoU85BACOqEW8q89fogLnPSKZGGXs/fW5RtQU8ix9WmG5cMrOmVfSYs1diFj9fqW/yuQnOEo+0HEgKtAe3zIKhpS/lotpcY/W830awdhHSxLK3JxFv7l7qpjyf4j+KaAGlYTaagN6uXhuuZ0P/oFzszk/6GYYA8L/yMrAcieas7QPM7qLM8VqpRxQYYW85QXV9y73rCEOkf4vtHRCgEgwjZcUkRqmK9DkY/+28XZV5K9YxH6hDu6fNUgEhp7TLil0hjsaUgmMiEb79wRb3Xz/2nDG0rwDGTMyR88eI3CQEefziBsjePXj/dNtfYfOtqfq3c50cZp2NAymJPTipA8JUeqWLVZeAtVZh6zdgbTb3I13ixAmgyJPbxxQ0qXtcwqOh2OGFwRySX97YuBkkti4k25K8SFRApqQwO5lQOwnI4VGdyS+WYGoZKOX889W3vqIalSZbGMDovYKJ5ZfX6NWjX3aC5rzHcViXfn199itV/jj6R3Zi6H4y2B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(82960400001)(38100700002)(33656002)(86362001)(53546011)(6512007)(1076003)(6506007)(8936002)(6862004)(8676002)(2906002)(186003)(478600001)(41300700001)(316002)(4326008)(6636002)(26005)(5660300002)(450100002)(6486002)(6666004)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+QiGBFvkC8s9+kQqbcbCNI/jNYmkQ3Ji+TzGoIHyuqxSKv8K9OzTFbL37Tcq?=
 =?us-ascii?Q?DM6f8oBaLSG8yCLpZq5emxJjtsmTzSDPTonEt/ECPDmXfMV553GBOHU/iu6C?=
 =?us-ascii?Q?U4M0GasFMK4jafQmF9pXtUBfHzwAOgvjHOYphlxY02Jjb5vCukvP3bnnA+LJ?=
 =?us-ascii?Q?1ZP29noiFc0ReW/LqwCWMSKx94PSkNfSjKtovOts2qGXJNj+BWgNPomiKpfH?=
 =?us-ascii?Q?X7OXZXnfjb1veU+PYm3D4VpDZvC6Y7bM/7pNnAiVdDhAfCq1DWYFKL6Th/ps?=
 =?us-ascii?Q?sB4i/6Pl31Ctd/YUsx8d6IoieHvRyH8N+facWDWZegjFO/09IKpV3kWUBlDT?=
 =?us-ascii?Q?uda+6u0TueFAtcH+NWeVVkOAF92QaQIExT29uDnIAsak0GvfSzKQWtR/5TiT?=
 =?us-ascii?Q?NhJFLIsR4x5JqZm3BoraxAucy2yxPWYORIFqZayskDEmVKk9YT7RrcHY5rUS?=
 =?us-ascii?Q?st8mOY5bU3YwmNAWqFj3NgnFLj4LUuYInAejVHerwYf/YeuZWr67rMrHDgUu?=
 =?us-ascii?Q?zgjD6JmADiV0y+SxD9UAcz6iWHh4Jvt8pIo9hPxq3a/nbQP/gDNiULlMe0H6?=
 =?us-ascii?Q?EikKIAYDyWluckXAXX/cyhwXmJtWdcJAwWd/IFhaE+BHKdGOhVMZbS7TME5m?=
 =?us-ascii?Q?bD77+c3dGFwidPk9QC4Qrc/LSCqnmibKQnnVUxrc/7IAcMiHyzQbsL86ymzc?=
 =?us-ascii?Q?7uGehtlECU8HYqE9JhdnteBqadD9TQNe2kHdqFtPm4I5XXlJftWYW+rePx92?=
 =?us-ascii?Q?ZnbvquvLN4GMRPWjT3dEH0sQRpNTcHIKN4HHdxSukYUqP6ALOR6cHOUgz6ka?=
 =?us-ascii?Q?w+UnIdxJXj6TJiw6SAigvqFrySzRIqZZVLeWRlBiTPBCuSb7IASzuPAZFIwf?=
 =?us-ascii?Q?Rv7mUoIZ451ToaFOa+xu/XPDMa27gwA9VQsUoS0/FK38Mp+sT+Usjv9yI+il?=
 =?us-ascii?Q?1HxVvT1Eiqs2h9KLe0qfkzj2LXuSsnrKjdHuvx7EWhQ9ExGsm8UC6c6ZFm1L?=
 =?us-ascii?Q?sAFfNec8fdsi8wtooB8qZQlSjXuIWvJ3eI4WVNPuYVWRjXDkPYTqlV78WvvL?=
 =?us-ascii?Q?+isnScC2xHr8jE+CE6a3iJGxB0JQJ5QbFvbyRrSDiJtkN1+TtzFLccpj/at9?=
 =?us-ascii?Q?Tko2CD8YbA1NUqhccknN/xWPqslSRKEqfzRz1KftHbtcRhiHrw807QpT1SV6?=
 =?us-ascii?Q?9Ew8r5gzGFZH8T9fPvLLEYpMr9DmPWnXn4wIYp4bpdnmo0LTx+rVJca8RK8h?=
 =?us-ascii?Q?Z4Hk61TiPzx77sAGMPsh4FdT/2W6ftx6zTiZl23X44flHuus3JUOavUXC9hY?=
 =?us-ascii?Q?r9gc831ZMsGhegb3w8pKeTSga4Z74ihYygl5DUMp06MXlMQBaPYaJx3u1+BH?=
 =?us-ascii?Q?COPs23q6eCMvKXnEiYq5bYiZs5RrEQ4tJjWyFLVdc+WmVimUZXc9v7b5JVVC?=
 =?us-ascii?Q?M7Ec5haclZV7IcXjPhOtunoTxU39ekCSwTMXJc83OEAkKIX47S73zvwMHwd3?=
 =?us-ascii?Q?P+Z0LAiKsV/ZKF/10onkJAsWqJ4pgouvBxZ4H2AtUC04Ot/zA+B6WisyfxIw?=
 =?us-ascii?Q?rJLMRPdILH1YPpIKRAzLN8pT6XzLneIm9vsjqwzI7AalLqBS4KSg6te4OPrW?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70d1b625-9851-45a8-4b78-08db5ae371cf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 16:41:51.9723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A7qj27gDcvu7h8ic8ctLeBlcnqi8hcWYqJpLbySZco1d8GBD70PP0W+R1pwA/yrtVaRHmkRNBRX3ATV2tcY+A0PFEONaF1X1dvd4mSrwMYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/display: Move display runtime
 info to display structure
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 18, 2023 at 09:56:07AM +0200, Andrzej Hajda wrote:
> On 18.05.2023 05:18, Matt Roper wrote:
> > Move the runtime info specific to display into display-specific
> > structures as has already been done with the constant display info.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
...
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -29,7 +29,30 @@
> >   	func(overlay_needs_physical); \
> >   	func(supports_tv);
> > +struct intel_display_runtime_info {
> > +	struct {
> > +		u16 ver;
> > +		u16 rel;
> > +		u16 step;
> > +	} ip;
> 
> Why not intel_ip_version? Maybe upgrdaded to 16bit.

intel_ip_version is an i915-specific structure.  Part of the goal of
this series is to minimize the use of i915 types (aside from those that
are specific to display) so that the code can be more easily re-used in
Xe with a smaller compatibility layer.


Matt

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
