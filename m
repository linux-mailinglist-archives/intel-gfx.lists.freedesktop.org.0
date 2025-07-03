Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021EFAF7594
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA5E10E845;
	Thu,  3 Jul 2025 13:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJq0nA2c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F9910E83D;
 Thu,  3 Jul 2025 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751549291; x=1783085291;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=mJrT+Ce9vUAdL3vzUUIRY7kdhVS2h1CQx0L2wwEuN7s=;
 b=NJq0nA2c6ihcXk7ZX1eLiih9xIP8QZXRWi7zoyyO8A0LL7cuxn8gXg3N
 njmZEeO1SiHzmKCRX3yPGvbXVOlMtJ+CmvBnulD1kFMUpE9BFtFKl/3DB
 uHTnLf7vLbculwNQpfhicnA3ZReGBvBHwn1XjedLErSI05WkKMeKB05V/
 89QcG/qh8waFi10jpLAkbHQO0Sz4D2+A6rFWB4nlae7Dvj61cbYgKYIEm
 8sIoWfcW2kZgn6FJgi0CEy+f4FEkSseAfjPCz4sZDy+b23yo8bQkyf88n
 XP8dgXGozltwoFHmsCp+fDrJr9dYoIsgi+yrpgivM2/ms/oD1q7nEj9yr w==;
X-CSE-ConnectionGUID: fLyfIlxmR3m/z9mFVe+ERw==
X-CSE-MsgGUID: rvY4QrglSba/hS7zdM3rsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53988959"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53988959"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:28:10 -0700
X-CSE-ConnectionGUID: +DBqE2WOTdSEqAC3CdarpA==
X-CSE-MsgGUID: QxfWQqEnTci9gDpQoD5HtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="158932599"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:28:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:28:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 06:28:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.82) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:28:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tekLK92rziB3aNu+2q9i+zRt+suct0ZaKWpQWXM6Wdl3WL5anF91NzT8Re/Jf40M5yyO1RRI/wGGO0azemeh/dO8XB5zCHlv99e320Jz39ziTKHuLymiqbR9EtYv4s/5+pskyj9NxbkvoHeqGxEeVQXEuhKH/U8zRi3RtD9O3SDad59q4KfzQ3WPmHk8lp0JX3+YiftzexPQuz+CWfz3x7dO/NNhhbMuoy3iZJUCJKNS0dMQfCPgnqLe7S2ujBkNrgxFimZECatEDnr+VRYqcSrgsZ/wFh2Xidsn3BKRfYBk0d6QRgmwOYT25vqchDOzCEm3y6HTwKmJbZX9hBuU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppTydJ/npxi2yRtfE1RYXwTsy2FkVGzCjcFvwYUAdPo=;
 b=Wh674VI9/3LKJ1YACDI6tuDfgWyaY7QqPRqmNi7wg0kLmb6mK0Nz23KxIolupxZ8LKqPDAys+QK4nYUYdW9Eou+LZO2e7X/pNv8w4GldqiQQFX159DnIqoY5t4wE+MU52t4wDQVeTscTv9jIpDxslsKDyycar7BAVwivGaR6qSU0YDxVFRIQO4E/Dyh/wUyv2DDXGNZYR3Bw4GiuJgHGcjTgM/auj7G1TeF1pVyEABsQPbJdxkAXyntYdA0m0x0+xfLxb7cAskW9/ZIn9L2suUU2fEkBEtDM8U/soVJVeWszinvWf/6XSxKS2InmtZ1Ymrj+QJjzkMcmsPWcU05lWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7882.namprd11.prod.outlook.com (2603:10b6:208:40f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.23; Thu, 3 Jul
 2025 13:27:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.021; Thu, 3 Jul 2025
 13:27:40 +0000
Date: Thu, 3 Jul 2025 16:27:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 19/20] drm/i915/dp: Ack only the handled device service
 IRQs
Message-ID: <aGaFR3kCa1i-fUKb@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-20-imre.deak@intel.com>
 <5ab6dccb4abf62e8ca1ec606e9bda3f5337d8adb.camel@coelho.fi>
 <aGaDGNMJ6Rn36nBL@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aGaDGNMJ6Rn36nBL@ideak-desk>
X-ClientProxiedBy: DUZPR01CA0143.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7882:EE_
X-MS-Office365-Filtering-Correlation-Id: e712ca12-f8ba-4b02-fb4c-08ddba35621c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Whi7CesESeiXsbqr0A6J/gU3KYx4DCLtZ4MgFO9Dwh8VVzn6qahETi3P+S/3?=
 =?us-ascii?Q?rH7h/jxyGZ+mXp+1xE/cCk3TAdV4pT4otOVBmO5INyUtzKL1rYvWV6BqUSsH?=
 =?us-ascii?Q?JFcexx1xhqzotDcm+efTfWR8Ex93Qa7kq3T018LxuIpDoVJgBkcay/ig++yy?=
 =?us-ascii?Q?PVg0UCQrMgPK4CNP7FMGNUGoBoemWrmSz/CytUQr/dDmkRD7GmGhcWdLEeHA?=
 =?us-ascii?Q?67GSfzVIZ80tw62iNXDH04eLBqApitTJvZXpacJ01B/XxTcF43Xdzj8HRgDj?=
 =?us-ascii?Q?kILo/KpJPieBxR/cgtbE/4lK1OnEWy4LL2bc9Zw1rtGIUh4MqA3QY3IWV73M?=
 =?us-ascii?Q?tb1ccdzM8WguqzviMSOa7p5Pgxu1mA2amTMW5hK9r25U9KHC0tzkQmqtih94?=
 =?us-ascii?Q?hppHpKAtf2gNECEGwoNQplCQNyhWrc7brGCli4XhLl4CH4io+eIDWjUZj2Az?=
 =?us-ascii?Q?ftTITXJrMYr+7rMpNbxswihtfCxLgQl8lE6SgVNPc3AqNCxO4HKedpxEfmM+?=
 =?us-ascii?Q?G1F7oP3M6wtbSuJ4+tkvN2bkYgrRg5jDboEImiMxtF95Hf0cQnbkz2h/EOej?=
 =?us-ascii?Q?rx65W0KjMrnBRI7RRk54fZmHDQ0Oywl04mPWHkCkvaWkP6GK8ChYdRA/PT83?=
 =?us-ascii?Q?2D4I0+RqxIHMWqYrezN+aBMdxNjDMW/02GrIaYi9Nm4Pf8OxZ1KNyF/zQvwq?=
 =?us-ascii?Q?vdOcjJ3oLgnh63lAWSvNGzebvrUAKw9WuxpMioeUlGLWkwey3BnDUR8sQA2H?=
 =?us-ascii?Q?Y7iKLRyzHcpCyoZRVeLoYEch3yX/KYGoqWqQvRGaiaAOVOS4Fy7ilKCRpanJ?=
 =?us-ascii?Q?FOrp2KvIvt+SvDfdjlTQWvkQyLyE/MYjJ75b9StPntxfedjkxuf1OdWL4XBV?=
 =?us-ascii?Q?qQjEPjhvugsE4piG1GkfyZRalH+ENRjEborsA74fqScqeIuZP6MEVDsSpvgn?=
 =?us-ascii?Q?d5WGRkz6bcqof1wxC6g3DHm4jz91EUeEfMQSTvfWFhvq0pmG7jk6mYwVsR26?=
 =?us-ascii?Q?9kcl+zjHaDu+sLe0RLW6mPNFJ+vloYqtICLAS3zyPxPQguwyVx+y1NCsaGOp?=
 =?us-ascii?Q?jd/I2ZJkh40glC2yFtmGoJ2O6xBrTY/1FO1MQRNLBJDvuXIEYykUyct3ui6W?=
 =?us-ascii?Q?8U+CCpc02MiwZM0t2HEzMCMNIeZIM3EbafXLBourin4vY4tWPsvQT8iO1Lmn?=
 =?us-ascii?Q?DKLi4vm2icO+fuNki5Gax7JJFt5ZOKERWESTmiEjAGSD1PAa/YtqyodAZcpi?=
 =?us-ascii?Q?4PzUxhJNhtfvHaHybUOtaaPqEx26zhQs0OAfOqHbeMn4HlK6zbFFYGPakTZq?=
 =?us-ascii?Q?DYprIWGPmrsj/CIy/0wUEADmmDhCNDe1P0UDPWJ8rfmKHzV/dJp2pvJOZNEg?=
 =?us-ascii?Q?mGY5iUvr4BGAn1pLs0jQlvexcYMcBTKzWsUpk1zihGtXwAFUFw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NWxBuLEJuqSatgWZcyeXvk8AUmX3gYNkuQADUh7yqqCIEBg3rwZc2vBA5bZw?=
 =?us-ascii?Q?7bBbidpTjsZWujTVSt5b9ZrYRHbfShLzsSiP+oVriEpcO+JgNdg51RbQms16?=
 =?us-ascii?Q?4loNEmEbaWqjKr3uO+lDXchRxD7Qak8hM0+lT8zd8+JPHurOVAtvpqzCVk7s?=
 =?us-ascii?Q?CQX49UZKAHnTmbc2Fo8e7I43w8yhEEcDwcaZ6zbru6YuQf9rdX94i9IKzwXU?=
 =?us-ascii?Q?7BWTq+FlB1GwDLx8cDviep1tH6E+HQYQtWoRc2Xi9NBzJOfcY2k4+BlbMUIA?=
 =?us-ascii?Q?TZ5AeLvKkU4eShLQVnkrg4qnsk1jTANaA0SnQuI4uvmJzw1naHGB9wcCsj4O?=
 =?us-ascii?Q?mP3EGu3tW2ffyIQHdn4xjire2NpPMgRye0b7zREeO2Swj89018Bn78chmtnj?=
 =?us-ascii?Q?9AxH7OaL8BxTghi1QRe6juTQ7w2HfPS06ovzSY15OIdeQHp4VSydcnRMtth6?=
 =?us-ascii?Q?lIXnGQb25IjuEB74NG7fuW+ZPZFmcyIJcV1MUgIQhgHaTTn0afhZRl93QtCv?=
 =?us-ascii?Q?fL0bwIk9Xf/3vywL5Ldtf+tDUToUzZJOnR2Q7po+uMEOMeR52Yaq03dqHA99?=
 =?us-ascii?Q?xBIWyM0g7BL86RPatHTDl7a33uTldDaz4fq4LkaERQuR+kVcEtnIkyKFV6xL?=
 =?us-ascii?Q?KbEv3hV3Zguow2V0qAJNGMEw0LZs7lX06bd0/BF6TiSEFa98cWIXkyKzF/Zt?=
 =?us-ascii?Q?PHYdWyKiG9UoXhffPjmCeg0PDgZ70soYqcV/bHEGlv7VTAQ1LtK6Hh8tw7gu?=
 =?us-ascii?Q?eLrE+AsvqWPC597AOZqT6AXEsFv/W5uBNXdqZLdugx2pGaj7eCIOqwaMOklz?=
 =?us-ascii?Q?HlztPY35QITF2YJHxg2yk/2dCCVPwzsWXayrcDCZMD1c3mpLFhfZyeJ974+H?=
 =?us-ascii?Q?XkGWZHoqn0avSZAti9UaxoVjkjlAtSVYavQmBIFnmF8Z+g/0mS9n3sDBnUNF?=
 =?us-ascii?Q?GZYoQL7hoamgQYzrR+VKgcr0cpjWZZ1dQrOIpi8eDmy5CnSVT1yreZB70XVo?=
 =?us-ascii?Q?4PU2zy4pFkdQ4Q9nLiWJaIw0lcjFz11yUSiQ+MXDvhRxv94Kq9T2FtXcC5lV?=
 =?us-ascii?Q?SXx7PAV0nOKXQr7W9Z1ep6Pe+UKoqOSp1INRIiCuav3GhT6umdSvA+jtY06S?=
 =?us-ascii?Q?ZxmKgxqaCVETi5LQtWdyUfTD2hb8i3tYuJr0Q5fq03fZR5cKUbJXruVkWOey?=
 =?us-ascii?Q?+a1s5U92F/GqTjRVJ4kJ9ezK+EUmQtI3TsEtU0RQCt422IXklzW0XxvgS3bQ?=
 =?us-ascii?Q?P3NTtF5syrNCc3UeVZet+B3wm+dPPvVacliF/ZDmofIdHwBzLyoCgk7+uqf/?=
 =?us-ascii?Q?cM2gr75d+TebxoeDUHhEBxJBAAfqivHCTMAaxOrlxj4Sffa8J9UTBSSvFJeI?=
 =?us-ascii?Q?YO4GN7iCsFWJ7o19xevJKZZqPhkzLQq7WSqj6FLN45I8B9WEl50dqSvCa8eF?=
 =?us-ascii?Q?AL1F2X30GlTwHw3CUAevxpPiZysNgfGBC7b4UNEVufO4PyGL+/zTbr/QUfoM?=
 =?us-ascii?Q?1bs3Ux0gtkx6aSMqVZcYRF4pLlCWsPFXARwCCPqKls/We4x96/A8u/c1aGX3?=
 =?us-ascii?Q?30J00RYWOwEItzcuQh4D+YVCGxQCpaEFBdBWCG4y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e712ca12-f8ba-4b02-fb4c-08ddba35621c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 13:27:39.9977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aST1cUyd+n3JY+rWD49BuMXJudlDahZUVlXE6Nwxb79y/IaQShWQShfEmFMVMwFbWR8kz6EOCSwyU1og4d8+bA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7882
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

On Thu, Jul 03, 2025 at 04:18:21PM +0300, Imre Deak wrote:
> On Thu, Jul 03, 2025 at 04:14:51PM +0300, Luca Coelho wrote:
> > On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > > From: Imre Deak <imre.deak@gmail.com>
> > > 
> > > Only those IRQs should be acked that are handled, however for SST all
> > > IRQs triggered by the sink are acked. This can be a problem for flags
> > > that are reserved/reading zero at a given moment, but become used for
> > > some purpose - with a side-effect if set - in a future DPCD revision.
> > > 
> > > Fix the above by acking only those device service IRQs that will be
> > > handled. While at it add asserts that only the known/acked device
> > > service IRQs are handled both in the MST and SST case.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 52249fa5c8a6d..6f67fac9724e1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4537,6 +4537,14 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
> > >  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
> > >  }
> > >  
> > > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_REQUEST | \
> > > +						 DP_CP_IRQ | \
> > > +						 DP_SINK_SPECIFIC_IRQ)
> > > +
> > > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
> > > +						 DP_DOWN_REP_MSG_RDY | \
> > > +						 DP_UP_REQ_MSG_RDY)
> > > +
> > >  static bool
> > >  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
> > >  {
> > > @@ -4628,6 +4636,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
> > >  		    encoder->base.base.id, encoder->base.name,
> > >  		    esi);
> > >  
> > > +	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
> > > +
> > >  	if (mem_is_zero(&esi[1], 3))
> > >  		return true;
> > >  
> > > @@ -5172,6 +5182,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> > >  		if (mem_is_zero(ack, sizeof(ack)))
> > >  			break;
> > >  
> > > +		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
> > > +
> > >  		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
> > >  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
> > >  
> > > @@ -5456,6 +5468,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
> > >  {
> > >  	struct intel_display *display = to_intel_display(intel_dp);
> > >  
> > > +	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST);
> > > +
> > >  	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
> > >  		intel_dp_test_request(intel_dp);
> > >  
> > 
> > Evidently, this function is specific to SST irq.  Wouldn't it be better
> > to have _sst in the name like in "intel_dp_check_mst_status()"? This
> > function is probably in an earlier patch, though, so if handled it
> > should be obviously be done there.
> 
> Yes, it used to be SST specific, but patch 18 reused it for MST as well.

Ah, sorry, yes this function is still only used for SST. However the
device service IRQs handled here are not SST specific and imo the
function should be used for MST as well. But until that I can rename it
to intel_dp_handle_device_service_irq_sst().

> > Otherwise:
> > 
> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> > 
> > --
> > Cheers,
> > Luca.
