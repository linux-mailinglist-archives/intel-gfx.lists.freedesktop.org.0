Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A692880899
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 01:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77B810F238;
	Wed, 20 Mar 2024 00:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QS0re+fj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728D310F238;
 Wed, 20 Mar 2024 00:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710894943; x=1742430943;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z8fZZZz9e5qQvh6pGzEsJay9zRUlwaiFlCLfzEbLJbE=;
 b=QS0re+fjk0CDAh+DLz78BNwHUGOoxvEnkdns5DA3uFcIAfTvRVOlgQCX
 lmY0jmx+FVWZjAvpWpT8UWExUcHeg6hv6ss3NR6uDum5ku+UUQqv8O0bA
 madHXnkJ64Svfb+Cae7nmr03/wMcREk4m8GfDtJlq92mC4QA7iiheD/d7
 QEOAhqm58TkqqoX5mLe8Jq7EulqMmP9XEaLEEdjJq+s0fk0Rkh1A2I6CI
 nL2ofGPy593PfxQp83NeJP20Yb6eQ+stVp6HBaPslNQ0lyo5RUq7bQ4NC
 BROJHelNJsZc+eFPHDciwKtrypAVxDhFk+bRXtmoS/4EoavZrAFfVqCxY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="16345337"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="16345337"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 17:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="18567113"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 17:35:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 17:35:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 17:35:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 17:35:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sfn9/dFqv3j07aAtV5AJyAtjzFppiJw418A0CjkRgy3Q8xDwc/NsDYT7IvYwlq0Wye0pxu116IVqv6qaJd22BCeKP9O4V6O8uBEmyRnJcEYTg8v3cwvRLCRdOKIv5V706y1uIjZLh1ep/kDrVRoE1T0063gl8g+/cxObShWBfk6azjFlPdRXqWpWQaJk0Bavzvtq2+o/t5tY1QtmaNPOnor+IJySoSCT6Pz4gZeih83rnD6VY//uJzs5GOLwrrg45pUfNo4PLEwYPB9QnIiUbLOvUk3qMilwWb2Qs5Z0XHxqSvT+cFo+VSFWfUb+D1MKo/sDug8JZJ2Y8DpVHwYbUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U0rontPYI/bE9zVHaBH3R1c0XH9haw8wBtSqB3cW7ic=;
 b=coYJvtWfDPOGiyK1IXhHarBFcWRymFMbMtSiflhKg4ljeDg1J3gNaT+sTacvKX5YLpJtbEFnl/8eH3dpyR1YY5wVgsTUkeXPZeOskiJMn3uWUn/Rb4yakr0Y4mng1HxMZn/GWJxisDhMf87Pdnl/HEgs4DCUG2luI7vCp4mIt275HrhCRxbgYGW82AhOdcoruI8N0RXBpDGIw7D/LW9jxJQ3l5SVl39J4kMAqaT9hjwWbuO0XdzTgZ//b9Zi3GsXzag4f0qRfmJAC/YS1tbtGe/38+nRAytDw2gforDDrZO2kNHGEVs1IQeDg6aY5IdNPHi9zkY7wFnhq0Fkcjvddw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7922.namprd11.prod.outlook.com (2603:10b6:930:7b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Wed, 20 Mar
 2024 00:35:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 00:35:37 +0000
Date: Tue, 19 Mar 2024 19:35:31 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22>
References: <20240319030341.3907617-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240319030341.3907617-1-arun.r.murthy@intel.com>
X-ClientProxiedBy: BYAPR06CA0016.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7922:EE_
X-MS-Office365-Filtering-Correlation-Id: b2595971-912a-4f35-0e1e-08dc4875a98c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 24Baw6boxcpOqO/uSieLOq3Dcex2SSLJfcDNiPEyRPPu2A5iWs+0yo/d08xQbD7P9xQyOlUSzGlycQ6ISLWM8EptKzSUhFulhCPdqiwtOxGVdMwZZkbBkp/cDuSo5ymy9IBjq56878XQC9Jp0ypXIZJ6AWUfyJTIYE2/0jfjqwbGdvb/ZDnQkQ7Jyf4WsFKiNYYm2fnAXAqzXzZcF9F1fG1IOfPY8Gw4fHILpBbi5Dd5og1Vzsqg+Czhc3f1xEXO26q40MIBLVNStNC9PS0yaKTHanCXzmi/R9rviZHS55fISbKx5BtGg2RcxkiJSrNCOkjGOgtWdCqfVOUK9+5+tPIIRKX25G2N1dgAN/ocRwwGYkK+2KL/rdehepCV60NiTuHKeUfNKYB3eUwfaKnV1MvualzKftGhbbGQSJXq7dPIQrAacVUwjgI7NIqakLBuC6/1t30Wou6nyeYgdB9wedtQyIJ1zt+FjOVZ5V5XkjyzhZRGwwWt5JNBcrTBbWMRvoGav850QhBNcY0LgLolqntBtewEtreHnaAtDcOl7pU0j7kELa6CIvGeKpiTJmdRYws0uCVGJB05TuueWuT73LAOCGMSnCLPPflq44E7SL6DHVWtm9KW0waRAhpCOvx78EXjTPWmnIfxy3VezLtbbdqDLOMOuF3UBIOb2sb9Xjo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ma24DpkzDZ308Ixn8WjPnnrEjyE6JArpFOULnEKFRE8J/nFB0xb29uJ+7hw2?=
 =?us-ascii?Q?wBbmr6upt7LGHP87LzjaSmnW9KpuaoNgBd/TAj32+ZNf1yu53OD0qVei/L1I?=
 =?us-ascii?Q?1BjcIjZmmAHHpGgrrOGY1Z9QuIDl1kNcgTnU/Zw/mtOnhfejG1Pmw53At0Nv?=
 =?us-ascii?Q?kWApqQrDsPw+dJUcrCVAv9nnjMbsqIwWxO8hKg2oHE6kstIfLGLEoGo9IoHO?=
 =?us-ascii?Q?mU5Qw7ZEogb1Fh34X6Sl3HPFClf+/q7BTE/PNcPSRkDAe4lZY5jLIRFjwc4X?=
 =?us-ascii?Q?T6aPDiYsHdDLmp2Rc4m8ue8kw2fGgXUxZqemVmbagMTnPtXOZ5KDbwB5QODL?=
 =?us-ascii?Q?Hdua2RTcPddFuu0W3gJz6UrW1m5fnwDImkovBO114GynHDEgniWUhjVVL4Xf?=
 =?us-ascii?Q?5Ks7XgWtmAA/8zsgYs+YILsx8EQ6/f2Cl2ZH1fW0EmffWwNB+j0saZhPvT7+?=
 =?us-ascii?Q?Ta5RD8eDuSuh0q4Dnu0654BNpbsAsSKmNPFo1zKn3enBm1ihmqtawFYCg+tT?=
 =?us-ascii?Q?pN9IzWfHfKRuxhO6ahAUOof4lVKI/5DyQfnCB3tCCQ8DfRAzQMBBm2B5Bma2?=
 =?us-ascii?Q?y4VFWD9n8Em9aHcZyFItDAef21og4wnyRB8kYUghKZdyXxdwkZPctNl3sakE?=
 =?us-ascii?Q?I5vVcsIWbsjxsetDB9ElzBKndiXXZrBjtCF/fVUkarQyy7duK3NDQRMD2RZB?=
 =?us-ascii?Q?3C0wYNJ6VOilL1hXMB+E3paUyuBcIFsnlAqnBhJGwugKxBiUrE9Qp5nPp8Wu?=
 =?us-ascii?Q?NmixShlALBG2R0o2Lld6hB2No2nSSnY4Opq7Z4rv5YI9iP2TeE+pTMfcwux5?=
 =?us-ascii?Q?2EFUsVszS+G48ocpT+PekY2pdbTjDKJ2qGJxflBS2DizljaxCqWqjInaxKpB?=
 =?us-ascii?Q?I4frrwTci4MPor6Ykkrufuc+7Gsn3J3/aA/QanRfCG1sVoxHiaucPZNJQAgj?=
 =?us-ascii?Q?Oi7AUde42a3LhdcW8z71igusz8XFBQq3xhi3ugVBvtnIirHHeynajIH3kSnx?=
 =?us-ascii?Q?+S5CBM4yw6+nGEEk2UeeTdw3tOYE+tE0G5tvdqAnCJZCYVriqZLcx+anMvqt?=
 =?us-ascii?Q?so38ecGzHT1yrNZqM+GwYC0KUnvfIO9kTi6Bfgfvsqe4ukaLnPaQ+9mO+al/?=
 =?us-ascii?Q?J1A5LG7M0Pucsx5sQZWhoUI9ZLEAcH4s09nk49NYq+TPSUxPFF1AetrGAkZr?=
 =?us-ascii?Q?nqPjzGRjQCuHev9pVG5hn6OLha5HOnRkOS0n/jIB3d56SYz1zTNbkli7pk9a?=
 =?us-ascii?Q?MJC+3I3XrF4vTV5NRm50Uf2srKFFlvBLbB3x4sdQG8QsQf58n/ZBZgw2eZ4A?=
 =?us-ascii?Q?PMRMTtD7ba0ufd3BsN/O1EyBJmCS+A5P0MSICYRRL3A2JzE6YRGl5VJsSdGe?=
 =?us-ascii?Q?AcejoTjP7bo4othptuWZPgqJlEZLG4oh13l7d8veCEAdqCTmxIKlq0umY54J?=
 =?us-ascii?Q?TR8PmHlTSRrm5TbjPqDRGk39yF1/EUoAocpr5w5jQi8oMEbP4WRjqwDyJPXo?=
 =?us-ascii?Q?TBnitaW8mdn5mMUVterhUvluuSfFUI2poV05D1/qt34r6bpZP8KRY2cE/ycc?=
 =?us-ascii?Q?E5FHaRkOOo6BlPppkRTZs0ysvif0wDDUzj36mIlykHBlKEbxJmXiHrS3P/zx?=
 =?us-ascii?Q?vA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2595971-912a-4f35-0e1e-08dc4875a98c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 00:35:37.4216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 40neMeu8jm6LQy9Zdz2YiZHOl2YQOKTE58LEoU2I5C6avs+ZYisftTk3z3EbObas6W2K0C1SLO+5ZM9TMrKzZrvklEFIkrDDsv5EakhcQkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7922
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

On Tue, Mar 19, 2024 at 08:33:41AM +0530, Arun R Murthy wrote:
>Check return value for drmm_mutex_init as it can fail and return on
>failure.
>
>Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>---
> drivers/gpu/drm/xe/display/xe_display.c | 24 ++++++++++++++++++------
> 1 file changed, 18 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index e4db069f0db3..c59fa832758d 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -107,12 +107,24 @@ int xe_display_create(struct xe_device *xe)
>
> 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>
>-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>+	err = drmm_mutex_init(&xe->drm, &xe->sb_lock);
>+	if (err)
>+		return err;
>+	err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>+	if (err)
>+		return err;
>+	err = drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>+	if (err)
>+		return err;
>+	err = drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>+	if (err)
>+		return err;
>+	err = drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>+	if (err)
>+		return err;
>+	err = drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>+	if (err)
>+		return err;


humn... but not very pretty. What about?

	if ((err = drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
	    (err = ...))
		return err;

I think there are few places in life for assignment + check in single
statement, but IMO this is one of them where the alternative is uglier
and more error prone.

thoughts?

Lucas De Marchi

> 	xe->enabled_irq_mask = ~0;
>
> 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>-- 
>2.25.1
>
