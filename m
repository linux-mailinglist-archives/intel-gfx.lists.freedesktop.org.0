Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2FAAEBB86
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 17:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5A910EA57;
	Fri, 27 Jun 2025 15:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/r2gIZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A0D10EA57;
 Fri, 27 Jun 2025 15:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751037596; x=1782573596;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=rJRCwASvCUrs2llD7bES4PFLvk8+acLoyELb3o705y0=;
 b=W/r2gIZMMRAnZYqHvI7AZa6twc17rzksAIWx2vYxExZ/+092H6uvjXK+
 QzqG/0xiJJ90bE3RwEZvJZ4n2pQ4Kvntg0P81yTB7BQHhpggOaeeXkaTT
 Aorf7gVOuYQDGxThpobj+KGrVxNAThhtWpMRARfSWSYGWPYCd+Ar6b0Bq
 6UefdXvlwd7xMnxOnNssF+4mKhAMIad7ircuLWXg4ObiE6+tCuVqoecpo
 brAxRRf1iDxdHr9yRBREw2zNEYrz00Ph1rObEze4lbOzDPPdIJDYgchPv
 MG0qqSUh6JO+SNczRh41ya7zY3QkxEFNaiHdEH2vJT+lgc225N5hHVxQ0 Q==;
X-CSE-ConnectionGUID: 4P72iJHzS1it3s7p8Lislw==
X-CSE-MsgGUID: L50T9xrFQ9mamzSqhLkfLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="53320705"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53320705"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 08:19:50 -0700
X-CSE-ConnectionGUID: jbzFov85StGY4Dkog6rOlg==
X-CSE-MsgGUID: 2OZFlPBdQcGVHH8pLyS5CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="152223913"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 08:19:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 08:19:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 08:19:49 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 08:19:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KE/rdVm30T7hdfSV0QrLZSdb01Vx5z1z+XEzsjm/ZIvmDnit+8lU9ymYxxNO9o5A62U+knk5klSqDsVEt9omvsydcBgEe0Qep+PTvZHoDyCUayXQMn+6TccjplOnKryCiyl6mIpUgLfvGkEwmOXFwXaU43hi552sJ7d9i5f5d5wIRe/TmlwhM++L1WxCSJpAnnkhRMu92RvPbGn1zLqhNY7XGYdUlP0kyLt4UhC8COAX3c+fAIUVk3Ha4dOlHI/yVWrORydtKaaQyF9ZcXm5jRS7BQx2UC5Xd32bhJpTHmCeyvO1sbvfZE3CHLyv3ff/o0W1Hj6uXb5i/FN5tijoEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FnBpTWlBr7pmzBP4JD1FJ/qqILokEFxWXcoT+hAhXAo=;
 b=Evd4q1kHKwnb8YMKXC2GWo3SZhmuJW8WXyza+zIqhhEoxsF4XVW0fmH7SrLkf+icPbHEkuynHt8jJSc7XXYc8rQyz/SYAi5nuZuRu9QVFkWo/PTwy1pLAUG4d9RP4IscfGsqeUMV823hPNmb0I5UCFE1HfiLuuHiEs7gJAn8qNPqZqxGd760TWbuUDAyopXXSFUWd2ffj7M3jk4WXZ9vxzqUx4nDCtulWUN91QweTAOSB3tihQWhQpjw913lXYej6dmS7YKYtOMJG0lCAWAV/NE3vkLHJSPf7g+3OW6YpVKMuEycvToL8d8futAKcUHrM/LT3RPjDihcojt+rC1elw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.23; Fri, 27 Jun
 2025 15:19:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.024; Fri, 27 Jun 2025
 15:19:47 +0000
Date: Fri, 27 Jun 2025 18:19:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 02/20] drm/i915/dp_mst: Verify the link status always the
 same way
Message-ID: <aF62jKhFTwMp4eKz@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-3-imre.deak@intel.com>
 <88efe57deeb6cb0cec213a43aab010a5f53e7577@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <88efe57deeb6cb0cec213a43aab010a5f53e7577@intel.com>
X-ClientProxiedBy: DB7PR05CA0027.eurprd05.prod.outlook.com
 (2603:10a6:10:36::40) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: e053dfc2-26ea-493e-d4bf-08ddb58e0d30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mrpNQSKi9NsCES/FcV4enWsbUZxx9wKRQyN8HgeJu9Q3lHlpwglatx3aBRVF?=
 =?us-ascii?Q?qWwEetsUC9MvgZwdolwiLXk05LFLvkKWYReX+so3HIDrWwtQAMYV/rZJ5WRP?=
 =?us-ascii?Q?gxaVKPZ9KXAR6MbTqZXdeyZWQCfmp9+P2+MUAcXWS01+GtSwGToqUvGT2R5z?=
 =?us-ascii?Q?/4ktUzS+2TTPl4SonyRZsMj8zOerI1DenXWjVkoyN9fkdTDIWcg3UgRtHtLO?=
 =?us-ascii?Q?Q740fA0GhRRsOdPf71fJG6aUcZybs4xbh9xjXkMfn+XiZ5kM1R96QDdwM6t1?=
 =?us-ascii?Q?6tRhO2QNhZhRvzdWWZgdOBFq5NTeSmM688j2GnVbijbbf8ZVQi1a6lxd0DsT?=
 =?us-ascii?Q?WCEMNSw2Gu9j/KEOzOXWLuoOQAz/q5sVkS8OFWQrdLgwSEd2zR2/gdSOWGka?=
 =?us-ascii?Q?HkE1JTmccJIMKfBwdrMnrdy99OrcediIYiVQY9/uV0akY96nuh1uE/I80jgy?=
 =?us-ascii?Q?GJpxyh0vjsgF/NC4x4neQxNnjpAwqbm6reXtHvyKcc2Oa+iuWcc/bwa769N4?=
 =?us-ascii?Q?IoHzQTlD5eYjVgeKppWJk2JjCyrTVDvr/Kqqhq/0bD4HPJmZPB0d8SKpuIfC?=
 =?us-ascii?Q?kmQXNWLEp9PnO5AYiGBoZg4QVH0DfQp1240G9cmRb2OxtxjiOzxyPmMsPjDO?=
 =?us-ascii?Q?nRNkQVNqhMrxzMwDgZoaeIWSfkQW7S33+qofwzk9QyG5ErLQN1MjdBbrVBcq?=
 =?us-ascii?Q?8HnEsr9KIfg9hNg8DJGvC0ym8Re13+MVPOpf721I/9hmLFL5U4cVXmHfBROe?=
 =?us-ascii?Q?rX7eMFRoNg2MqiGFEsFRDkKWW1nWjJwTuGCURqJN2tjX+mBairSmJl+v8FeT?=
 =?us-ascii?Q?Onw4zxX16Q3IxPcWQoEGVfK2iAPCPXSgSRh5EvK0M1A8CHd1rw9LPb4U6rUp?=
 =?us-ascii?Q?XF+jKedCn2SVDEDuCv98pEND28rIZzKUYDj03SLkGG69PLduFgaVkvC25inm?=
 =?us-ascii?Q?HdGyQlcQRSYQf+O9u2wdtdab2FrWoMGgVLEZ4cYWpGlo1pC2iXK0MCbzU/wn?=
 =?us-ascii?Q?kMPoIxv2LTLQ2eQl3L8wWkE4fiOJOThfMaUZUflJQJPz+gCJubFkTBSrO1NY?=
 =?us-ascii?Q?FOBF0P0PnZuzKikpqX7bAfDvfVOczvAu4EO+ynqrgfzS9Y8xpvi/pdv/meYk?=
 =?us-ascii?Q?p6RYUizf8vYYVqKc41wH/D/cHgo+3WKFSyafquttIoUM9nKnX8B+pDj02p4t?=
 =?us-ascii?Q?kzbogw/SawT/eReaOqdevfbhqXslBYGCh6QH/7025P5oU9+nr+ZmoPGR3EuK?=
 =?us-ascii?Q?c7I7ClbtO+9SrTKGt/uzDouJV34OT9OAkW3Y/qG6X7WAU+btGhWDHQNiTeoF?=
 =?us-ascii?Q?CB5StEWbDC+b3kZ/bJNRv6GZ8LIC+3Ci6LdWLrsjaQESyL3HdMkdS0qHIlGc?=
 =?us-ascii?Q?R96Lw52qzqMkMxWs/R8WCQIh6vnnO28ffkVRlmm5HP2sq5QjY1VPmomE8sEh?=
 =?us-ascii?Q?0H4AcS0jVK4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2P9qzGgFFhTCeNY/7YbnLTNsLKUFJen+1XaXTZ99J8IkgXuM0h8MPbK7+0mp?=
 =?us-ascii?Q?xQm66E27aEFF4t56iqHHyTg9O2R77YO2B92/i10pP8uZQU4v1VJe7sclmo0B?=
 =?us-ascii?Q?9sdYBH8u0dn+FEVam0+gi6R848nkENh0rir8TPwlco1X8RKHXBa3ipnqzsnZ?=
 =?us-ascii?Q?TOXyRj5N++DXNkE/DPUiReiiKmC6dcF9Z37HrdAWgqHQdQRHe8lezLQlqy+x?=
 =?us-ascii?Q?fCmU+qGwD9FUrftGaVh8d1C3u2xNW2V++P20FzhsLNhmqYXmc+3Gcru1EHjE?=
 =?us-ascii?Q?XlYyzDfL1weixkHN5GclDyRbOueIm811pUZNeNK2i+YRhIQZ6chpxXwBP4Ws?=
 =?us-ascii?Q?yb1yZN14Mjq+tm8nea6mwWKU3GLd8kbzEchXvd0/xV04NRvAXOeMhpFtDu5P?=
 =?us-ascii?Q?FkNScfT0xg62oohz/64fwSS5csB4mUg96CrL8nxl32YVqqh4trqUrKbpAH+c?=
 =?us-ascii?Q?6XNxLRxxFpCyBADjUyjdj+iTgJxolYkNkxqQ6UKj24Qe9wfGAq+rwD6gycVM?=
 =?us-ascii?Q?aefqhi9pDG1EDtIAYJutXa+wG8F7kbex3sYtowwkO8MZNhmyWf0CZ2+b4B0H?=
 =?us-ascii?Q?rK6San21JibO/G1kJtvO1d0LSh1Jafqght1aeEH+54DqlvvaDDOEdPCT2rf4?=
 =?us-ascii?Q?+Xs5KsZ+d7MrqcHRqE+ZLbw/j5h6DJHtVggQjwu9dstDfK7N1T0C+jcbqS1z?=
 =?us-ascii?Q?mK2gHMzXYhXoW4Owpkm6A6TYKTU75Q8O0+L6HXIvcZZhbyneguI5gCQeTo+T?=
 =?us-ascii?Q?lN68UodX6vKhTEUy/YQd67ndbrIvrKa97YetEJtwSjFygFnYAIsnrRN+TqVn?=
 =?us-ascii?Q?Otk0+lLjO+T1o6dY71kXJmj5nwn/f0cpc4NQQC+Hj8X1QMEkHSNHFf8xL7sE?=
 =?us-ascii?Q?F4vGM5UOmIPRl8opckCy+xYXiJ+4BFIyWrPeUas/mT0Sgp2HoeIFzy5sdBK/?=
 =?us-ascii?Q?AOZ295k2SRDTj1H9DC9TLYx5zGwtEBwwRrHf+E3/bbN6kY4zH7xJ19F8JpJK?=
 =?us-ascii?Q?fYt64zp4zRe8qC8GUU8qOTyM7iIvquNXWL5vxtsMdp01z0mhMmQItw9M0pba?=
 =?us-ascii?Q?H5EmLdCAWs4fwQAslmKc/5YDjDcmkhgcriCOv1zdDftBIeUiekjXCoIPuCVa?=
 =?us-ascii?Q?GyQfvEKhCmBeKY9y7ZZBKwHqTEPWZ5LzMWbfmamkEj7OAJ5AVaQrNGs3DxgP?=
 =?us-ascii?Q?ta2wlRLNECYwdOSYTVu/b/MYZ+WUyVD5ORhuMi1B680GlhNGefmGIG5vBbfd?=
 =?us-ascii?Q?XLc51p9KCxiA0S/dL7lVQxurN9Z7WfXdI/f2qNAcSpKhpagBkEOZH4g9BNlp?=
 =?us-ascii?Q?/+TrV+h/EPczNoeCasGOl9CMVfsNowclY6XIk+Nbakuf08e3Ai86T17bHX3d?=
 =?us-ascii?Q?WHXr4m+JOANrd+TC4xjB86+YFKaNEQJbjzmDHX5P05YN4pTBkYRiaAKBlmQq?=
 =?us-ascii?Q?w3Y/1lZVHZPGPrucs4TQQKhVNgUs++vBH09tG6hCjbg4nUzGy0CVr3X7Z/C0?=
 =?us-ascii?Q?xXLqdGs3iNBnEHV+43P8DkGh/7YDwhybbpH89BYdtFvWaqOa7GpyZT9AhLsF?=
 =?us-ascii?Q?8KGzknp1GjwZ0kQR1OS51Pew45PvlZ30y5qRopK8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e053dfc2-26ea-493e-d4bf-08ddb58e0d30
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 15:19:46.9757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xvsYsvU86v98mgCMestIlay/5cDSbCGmIE8VJif+GIeSvkjL6uxhH3YL88/xVBOa17oMYeh0+oFS855p01qLqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
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

On Thu, Jun 26, 2025 at 11:31:31AM +0300, Jani Nikula wrote:
> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > The MST link status should be always verified from the same DPCD
> > registers after link training. Atm, both the legacy (0x202 - 0x205) and
> > the ESI (0x200C - 0x200F) link status registers are used. Use always the
> > latter ESI version of link status registers.
> >
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3f911c930a30b..ac7e08f485309 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5176,6 +5176,23 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
> >  	}
> >  }
> >  
> > +static bool
> > +intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
> > +{
> > +	bool ret;
> > +
> > +	memset(link_status, 0, DP_LINK_STATUS_SIZE);
> > +
> > +	if (intel_dp_mst_active_streams(intel_dp) > 0)
> > +		ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
> > +					    link_status, DP_LINK_STATUS_SIZE - 2) == 0;
> > +	else
> > +		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
> > +						       link_status) == 0;
> 
> Please propagate the int instead of having "== 0" at the end of the
> assignment.
> 
> I'm increasingly critical of bool returns for success/failure, because
> they don't really mix well with 0 for success and negative values for
> error.

Ok will do that.

Both ways are used all around, but I suppose propagating the error code
should be the default choice. An exception being adding a new variant
of an already existing function with a bool success/failure return type
where the new variant should do the same.

> > +
> > +	return ret;
> > +}
> > +
> >  static bool
> >  intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> >  {
> > @@ -5198,8 +5215,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> >  	if (intel_dp->link.force_retrain)
> >  		return true;
> >  
> > -	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
> > -					     link_status) < 0)
> > +	if (!intel_dp_read_link_status(intel_dp, link_status))
> >  		return false;
> >  
> >  	/*
> 
> -- 
> Jani Nikula, Intel
