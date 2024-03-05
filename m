Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9845187205D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 14:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A34112AF9;
	Tue,  5 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Arp4f9Vc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA09112AF8;
 Tue,  5 Mar 2024 13:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709645895; x=1741181895;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=goQtgv0GX/qm9gffomLQT3xbxsr0qV0JXO5X8jO3SQ8=;
 b=Arp4f9VcOEyi9fd0wnlLo68g6eZxlDU6ekbLmiNP/3xd53h5Kgp1Sva0
 XKNjXnTiXO87gXi4izXVQc+R1Ep6LUogdYCSfbjlJa9U7L8Leg8sy0eKx
 3jeUdzwQ9aDpKc9VsTBTW6PsEBWSKSVzhAJs+SqQL5OgmBB7JEPyyf1WS
 7gKbtvgFR7ZhYkPVPHpz+LjnMASsbqCAhwcD2letai2/TOrQMoNC1z3Xm
 anuewht4OGAV93RSJVcq7gHtI0E8Fbluvp1xb08+RQAwSgSeWgP0zukCT
 NcqTkM2xTEh/HcEdxmPoJv/BqkZD6pQXtxTFKH1qE9KAPQDJBL7eD/HS1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4317725"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4317725"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:38:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9278812"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 05:38:14 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 05:38:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 05:38:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 05:38:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 05:38:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmR6PugvFCLQmuz9WcQv/fH6uoMlWFweVE/XjwINimvZw7WfGZoqCTDdc3NEUxT4Ox3FeXM1GD2u+ko5s/fFYREqbuBFdoTLJRhaJ4tbUrrKoa402W9paq16aAb9r+NcpUupVEAPFPOHMB8D+X8hANefdpdAClj/B2LCQ/M5HRs9NouYBTO2sxjf/pjtRy8P0bTrpVZWDdcfAhspeN5GUBKYsTBY7YNMFGsHtGYiIXB0LIKU2c/P10cEF9K5FdLnqFOexNJSI3SvkrbLqYOHAWgkP+homyK7UjqDcUxOn6EHNX+gmdXdRoImMjzvFynrdVsAH7y+gY+369cveWwlaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6iMzaLDvp+rvDs+dIWMTCghEcg5RdNqFTX8E28nA20=;
 b=n3mgPhu3hleGq8ofqv/cH5miKZFc6tbZuUrbQtKYnLCJFmuDFLudpSHjn6/NPl3ko/HWWvWn58dGgnMYfu0rIfxK/92Z9M22DvbUpErjkAXzHQCVack3eE5OdmTI7zX6YwSUDF68RRyC0UEDkxsYDeQUjkcwvvezXmjSIcQesQHqJMpfrS3I4chzV1axCzCvifgQ7CinN8C8ebD4+LEjp3Hr62Yx8GHFY+UzUoin6r8VGFoBW8edgcwwbjUEmug1KfpMvWHj5RNEnr9ikUyXrFqCEDQ6ZMecTd1T9mrHH7i3pdd0YAb3qPA5O3bcO8VZ9LJ/11FBvSPTT4g6oXyUAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB8071.namprd11.prod.outlook.com (2603:10b6:8:12e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Tue, 5 Mar
 2024 13:38:10 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 13:38:10 +0000
Date: Tue, 5 Mar 2024 07:38:01 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] XE HDCP Enablement
Message-ID: <hqrqbrrdrutgiuh27ndbpkciwsku24ilvafrrdavl2ww6jmwd7@o7egygrgf23p>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240227053204.1748920-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: BY5PR20CA0013.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB8071:EE_
X-MS-Office365-Filtering-Correlation-Id: 2808ab40-96cb-47d1-ccbf-08dc3d197f94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTNdgBPP/dx+au30YK2aSdRrUx1KagVqugponoUYp/n9lUnRZQvD35Sc8vUjrN3upjO3w53GlGjkQiGuFd8xg/OSJvlO8w0unEMrdgrJzrOa+B7rJHUnOGSHK8Y8g9GydOCdokghmG6KBbtIsCcJSLrnuz2ktr5hpU6eqz8/O/NQ/zyOB93VC+pDPjKXgcxEpV+KdfVypFqwA1gqKbXtPcqYp8J1QEM7YE2LraOCY/CNlkeBg2PNnDqPPavc/jZOjcoEsBjhKJ0zNBL6msCZh8jSxPvBmFYR2TBrB+KPzgLXRYGIthvrlGa+Amgp0Hqy1JZy+m6wQwx6CJpOnb0NOdQ38hTWGJSGRErGEi+BkZrcIGi6AwPh7KUqCsqELzZLobHESrLLjIhIiyIO4/M91Wz6VLJrLtQQENMx/5OKOck5lcJhdxxSXQCakkn/hMmjHHHqY0rLbsfDyY6W7gmTbkVz9mgF8zr5xtgMEShawZAlQpJEDrwFO+CHykwezN/edbbyoq6Ex8uV7g1VYM7I+SWucIjm8ME3J6J9kpF6EjYukKJ3vd0I/7IxXupI15fIuc/MxMYrSfLfXXOFrEauABvWTyvmffVyD3osnQflyqCqKL7bInBGOer4P/146ukakUZNVY5O4Xm3npd2AcHWqxeVG+UXUrKtgt33C4XGVjA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lb+dvrXrmbk4x4eWdGunCZ3tdwUpJJ/E/2NyGgMZNpmp0S7u/BxrjCP9Yxwo?=
 =?us-ascii?Q?CAMBFhzbOxChyq5NeVGMqIrDQUQReWz9FxYp8DTM9ZVtR8vMGKKSXtWnXVvN?=
 =?us-ascii?Q?VvkN6C9sQSc1V1g5esueoZVkcsrr1u1Fb0WahBUpMrc3+qt9/BRHB/UuTviD?=
 =?us-ascii?Q?Eb7DEJHdjIbL4vB5b0KLapR+iMAypnFAidbTE/dLzQVLkD9lZw1QcQZn8THN?=
 =?us-ascii?Q?mqISxyX6SXn+9mkqslNG9ZB5HJ67jMcEhW8V4wYrlt0XdBicfqein3G02z1H?=
 =?us-ascii?Q?s3Gy8xRaSnse1QBWBk93thmXyeOouuf6EKITTDZSU6qce6WdfSePymNSaB/S?=
 =?us-ascii?Q?6N+zwcKUK73UMaO699B3DDviS8tpXnb/DlRfwufnZaZxn4TlNB+VETwYQPYz?=
 =?us-ascii?Q?qEk69dakIkmarn8rx/fqw9AhYCRD1yvitbRHD6mcndI515SExjSmHMZ1+xMi?=
 =?us-ascii?Q?k67i4ZJglKqzfVJCTEuf//CJggtLSzyd/Tr9ICo1bDS45F05kHiijktkWUC5?=
 =?us-ascii?Q?loqRl+D1mIePApe/EfPCpkNOQGI/j14QcItHDEDSRcfvd0kEhMvyrxQlMEvt?=
 =?us-ascii?Q?Wd0cxmn13ef15f0M08/J23Dn/MiSoE1NyIerypgQ2hAidhEaZFEHV5ySUmFL?=
 =?us-ascii?Q?YfGZ1zduEuvFN67GCJeEY2m5P7n2Fgva+KKpYoiygKRVPdhEvqyxbND+8Ddq?=
 =?us-ascii?Q?fbtFjYFkMtNIVeMZdY/Nlj4I0NP9ie/jYOt8sXXKPatGBM6k5hZ0+JaBXrl2?=
 =?us-ascii?Q?oBS0/YygFu0mlqXM15E9t6rgcSJpagQ7WzfXm5TBXHIj1PGb0XFKuj7WEVj+?=
 =?us-ascii?Q?oANIn8SO5EldC8KURjRUiGCDmV5sGKcrpIad5drux0LUKoTsMA97wrenjO/n?=
 =?us-ascii?Q?zFPEvs52m+g3q1b7P+ejspsya8+SO9+VixGUjgIIBgi2+mewMPLBzyxekjsa?=
 =?us-ascii?Q?1QNa3f5OY5z9Hs5LILA4I3DXUZc3D3VUb0iiE9gweBkhJW28uA470Q3ZD+aF?=
 =?us-ascii?Q?DeS1q7OMNE7xc4JYw/8bC77VKMWwnEO2BIxxJWcnr7PolPI+U4duibZRhhMd?=
 =?us-ascii?Q?csLOjlVHEez8WUunyNMKPJlOIbhEUVgX2d18+7FSdu7J9tEt3mPthB1l7E4A?=
 =?us-ascii?Q?sN9Af8mnF/2m2sbqEct0A2KZsg2jvo20rxjfv7JB4kUpXctXnqoqEOMCMnWZ?=
 =?us-ascii?Q?+dd1K1x6FlUaFlcEaGDusaImuU/PnnojCIBk9VfhpIW+kSc4fndvUZ/5AJg6?=
 =?us-ascii?Q?/mZmwqjnzCWCEg0ogEakWV598n7EORQlGjGYdXbbUuyJrimsaPYrqQBX/tST?=
 =?us-ascii?Q?03OCSrUST+eofuOI2UOj0DG/AmgtH0HbCIl2wrfZt+7sxt77VuTThVvrEYv5?=
 =?us-ascii?Q?uTWgMkUYrRStptgNvd1Qn0UIbt8bRWIbuZOtk3KIz0pVaLGHkxit37VSOMxE?=
 =?us-ascii?Q?tEIlDgLNc7SSWzfE3Xsf4BCi0oqdBkMA8dWQhJLw04dDntqfXSHj1hHhpBpy?=
 =?us-ascii?Q?Tmet9U3ePfgQuENQ25dcnYr8jmFC167zV2IJKTuPdLjnQUvvqnRl0jmPcBNU?=
 =?us-ascii?Q?w5gGTLy3RdKpAAn4iR8KMz8Dzr8ikq83prvJyqOP3nsSFuNA1EHzSM6TNBXX?=
 =?us-ascii?Q?jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2808ab40-96cb-47d1-ccbf-08dc3d197f94
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 13:38:10.5030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DSzTEM0V91vwVChm+/T1RkXq/BUZAHC6QxDHJnRidVOv7oWJeH+fkWv0KqH3vQnCiu384YrKcVvpMKC1yVuFL9wLz5M3T5wCLxuw+CQFX7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8071
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

On Tue, Feb 27, 2024 at 11:02:00AM +0530, Suraj Kandpal wrote:
>This patch series enables HDCP on XE.
>Mainly includes rewriting functions that were responsible for
>sending hdcp messages via gsc cs.
>
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>Suraj Kandpal (4):
>  drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file
>  drm/xe/hdcp: Use xe_device struct
>  drm/xe: Use gsc_proxy_init_done to check proxy status
>  drm/xe/hdcp: Enable HDCP for XE

please double check your includes to follow the convention used in the
driver. I commented in one of them. Other than that and with CI passing,


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   6 +
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   7 +-
> drivers/gpu/drm/xe/Makefile                   |   1 +
> drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 241 +++++++++++++++++-
> drivers/gpu/drm/xe/xe_gsc_proxy.c             |   4 +-
> drivers/gpu/drm/xe/xe_gsc_proxy.h             |   1 +
> drivers/gpu/drm/xe/xe_gsc_submit.c            |  15 ++
> drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
> 8 files changed, 258 insertions(+), 18 deletions(-)
>
>-- 
>2.43.2
>
