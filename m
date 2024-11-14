Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AD99CD626
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 05:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E8C10E38A;
	Fri, 15 Nov 2024 04:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1wqXaJx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B764F10E076;
 Fri, 15 Nov 2024 04:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731644006; x=1763180006;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jsKr4oZktI7n2dcZj0QYcQM2b4Gaa3rFRLw9m/ZNdqg=;
 b=j1wqXaJxpideQygnPO1Fv0g/d8SCzW5pPiyrVJDl8HMNhCuqeTBqCQyl
 g0GHou/C4m4piH38HwGs7WOtGAavsHo5aoTcprpfSuJxsTKpOaJdWI10W
 fhbTp7sUx5HGRjASs7LOXTW9CwOq9F6KHRQf1KTvuNIt32Km/PzApr8xv
 b/Sj0+m0SVtVDyg3tPD+U87oVDrbOagqo/Kkkp1yq/3I6fSUa2QONClZT
 7dbBDW/8Gelj99DqMLVV+HV/Alk6VXAPipWtbyCM/aZxe7JME6rpzwUNl
 hlQGf+v7W9g9h1AejzDG10wEz9euBo0ulHeP1M0GOWvFI5V2hxsQaSKLW Q==;
X-CSE-ConnectionGUID: r5P9gcNdRdKBsl9u7eeVzQ==
X-CSE-MsgGUID: XPhr1x8dRHKpOG+D4Ke67A==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31695619"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31695619"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 12:20:42 -0800
X-CSE-ConnectionGUID: Y9F0dR+eTAOo/ZPA1lC55w==
X-CSE-MsgGUID: oBdmMkjORYm0JVi3Iy5Dug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="87896169"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 12:20:41 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 12:20:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 12:20:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 12:20:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N7HZRN6lxCM1XOF7h9A2sE95+zXk6Z2hqCGYTqYLvZ9h940sgnBRa7/diSgkoBaURKxCHl4VQ5Z7vZmqlxeJ5PTRYmCq2HBT5bf9G6pswW4I5VH6e9utLZRhiEyqkgT42/x+zVTv2GEH7Apq9sdpaBVLxAhjBXPKudm3bzaDWzQJ3w7DwfxTvA9aN6pKJjU5V30QEbBIFI6Lk37q1x6RicJZUX1or0ObCM2BHxesLx3Cc8GAKgLQxxr1ShvHaEERkoM8kRvKaMhK1jV99HnXIB4Ad+gkX6HfaeqpUfavgZ/7Y+uZJDstTHonAQQxlfoSJc5Ij7z5Fa2DS6M8tECXXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W+6yY5WpxFTid8sPxb1IxLXNRq1vZAEsyYZ6+aYv4bA=;
 b=OXXO0jvLe2fGtUCJ/90Zv8KYrcMnzkUMMI+mqnmSjaSwyIu/hE5mkjCRyvAsfSypUXsWv3H+rzhw/X1lOoNsuxkjMOLNNF3KWGs9R+YF4+mnHeh64SchWzfEiBxW4B0hpb82pu8qi9dKnVPIcL8ufX8HSdZtGVYiJqR5jwb3OO8+aKK+bBPzNa6haXql08V5N1HoCx/nPKUJpO8dyEr+XCvRiy13ywPinWOFV87U/7HligImRHliDdBB0QZ3sTUQfF7qmDYrikayAKFVxc46SFGEqP4A0io8c0GQYPCqr2K07nURl2ItG4vK60GEGBwBnJ10+bl0V91dJncpnVKBIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 20:20:34 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 20:20:34 +0000
Date: Thu, 14 Nov 2024 15:20:30 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead
 of flushing
Message-ID: <ZzZbjr0flA-2Cyff@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-6-rodrigo.vivi@intel.com>
 <BL1PR11MB544593B2C4F6FB8D2050BA5FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <BL1PR11MB544593B2C4F6FB8D2050BA5FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0127.namprd03.prod.outlook.com
 (2603:10b6:303:8c::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: d8a7efa4-d4ed-494e-bd4a-08dd04e9cb17
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?esQKp2LRDuMJNAHuZFDkt6MIuE6pXe8rSvNjOqb1M12Gy3qVxf/uVe4NPIBA?=
 =?us-ascii?Q?MIKiiiGe3cP5oKdDiPzJq/Apd+gS/XeMlXycXX6jWhTkeIxjDTl4wjZco+Gg?=
 =?us-ascii?Q?HMUoAnTb0knGD5SRgXFJ9umwb6dt9+prHL0Py1iXzKEbeVb3O1qtBPnD68dW?=
 =?us-ascii?Q?MACCeW0ksuvdefquaN8zd763qO7xjCQpTi9bkuFdIl/N36cNX8zddGgRmKX5?=
 =?us-ascii?Q?Go62I09ALQwYce7qLcjhrqwlX8N25chPc6CVGMEsCy+aCkHuBhlkbVNdDNvj?=
 =?us-ascii?Q?3mhBOoxq7Wbj4mkzCNrdQIfM4o2yfJ4wYpUNAKBAi+1NGOsMEKlRh3oS5WnU?=
 =?us-ascii?Q?wMzIgBPuklPdr+KeJ7fJm2bsxa5UCVKMqE8jFAo/lXXAPa3gy5HCL+ReZSdi?=
 =?us-ascii?Q?dUat1TS3b8a+ObnbMHsN0YoNc5cDyfJz6u/TKiSmkJ6V1dc7wvK5Q9vYM9YO?=
 =?us-ascii?Q?fAEo8w4O13UhaHx+q+xgTr0YfrzF/hMgWMNcY6gxmmlEA2N36eEwBSWgT1S0?=
 =?us-ascii?Q?63CtCWph9INpfO01mbsj9thFqq5ZhaGhIlKRQUcyJTqbSx70zGgy8MZVCZJ6?=
 =?us-ascii?Q?zMHLUidKy/vNYkfg9Kf1Y7NeF3mfHXa4OTYM06vkPaY/Wbbiip6qG2rxJYL6?=
 =?us-ascii?Q?sDxHI2myEqNS5mnSQfvafKTMwbMZEUIqZ9P2A6mVxf21zTCEuf9DG3yJVmCt?=
 =?us-ascii?Q?3bCMSjhzcUb4qMxlHfROTmWiBHNcdCPKmYJ6BUI0v29hGnVq2KXgn9Xig+bq?=
 =?us-ascii?Q?Zf/9jBQTi0SokY80nl76ys/SxAYSMJ/v0tIUkbDbH1XczZJysaLP+9AgesIe?=
 =?us-ascii?Q?t16lX/maWgN3L1AbRYU59F3GA7L+tuVLf5+gKZFZ1JfaqhQN4QZf0jdPkZ2W?=
 =?us-ascii?Q?+Pf3AkEZJHW42lwHbUxup8ANPP3YCGkRe9+mAAFOCX22wF+yn7T+Su+iWDD+?=
 =?us-ascii?Q?0+VDHm2JwSH0tNy4jp67AcUlezlV+cPUIdCiIIzPB2LyQEdbOygpEbCLpplv?=
 =?us-ascii?Q?MdUqsRfM1SsOknueOvz6PLxDnzHH/FRiAlUcxcPcDrVL8DBE9CXB2cx/RBLX?=
 =?us-ascii?Q?lLgcMmVGgJrgPJIIrnxG9H07kXSRYT9PT/nF0n+cWDWxNavQBheGfos7j4L4?=
 =?us-ascii?Q?ungsWRwv1TiVxpF8TNgl5J75oHpNesuIC5t8Bz69aTGUVGDoZuFKVLGN8Nlk?=
 =?us-ascii?Q?y7YciIk+Ohz0bo0kI7MuTx2wwL8J7BKpw4nk1s7/hjM3gF6HlDGcK3nePuHi?=
 =?us-ascii?Q?WecTx70ULwlq2gvTJqT58gVUWs6NpzRulogtkV1hNa/IArIOMSTGHQbpDuGl?=
 =?us-ascii?Q?0x7DaiVpH0VFl0m/sFHfDnO2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9l0gThA1vUlhRETlI+GJINnXlRzQrjf4wvzMdqBj0NotqTaiOBoL7b5L2f0z?=
 =?us-ascii?Q?Q/gIy1k0kb9I6NZ7WHsdHh6Gwz9zLfnyYY4pxUFOPPGMWPV3Rz09sW1SSaac?=
 =?us-ascii?Q?EKGlAEQibrK4MgSJah1e3Wra6byn5oPwoeVljnqaYMcmVdzAhd/w1093P/4T?=
 =?us-ascii?Q?q2csB4aLe8xOcuaYm9cPJ+Dak1JO6ZsHXdJGhKxd6Vugv//vWdFUo+Wb8vnf?=
 =?us-ascii?Q?nqNRxZ2AkIMfx7QH3HStT8RoWCNnwqqx4CQzgjbDtrGdFsCfRiFNV+NNNMEv?=
 =?us-ascii?Q?PiF1LGJDLNCpAsGHXY5qudZtIbJqj/86453hPCv6qxPus0q9xSlr7LVUfYDu?=
 =?us-ascii?Q?4u0z/5CVI9AxezIbSi90kuQGpoqIuD+7s6oOhXBbQbtSfs/ZAYmtzlf4Exni?=
 =?us-ascii?Q?82GNCF+QcYLEpopmzevcubC1xRzcHfyLgcx8S2zAzICGYJ4u+wi0lY+CH2Mx?=
 =?us-ascii?Q?amWaXK/N/Q2nT/JPvKMFiANmOn0gCrLkhYHz3fV54s7VobbO7A93xa44cd/s?=
 =?us-ascii?Q?pEJypspNtlGpFCcHRGfGNJfgEmgLJ/5IMXWXpjrYb98dLk3lxHt3bP8fOguj?=
 =?us-ascii?Q?MIYSg2Qu66lRx8mieylqaLcNR4YyNKzOQjS3LjG7ozYnXPyz+5QjxFrfzbH1?=
 =?us-ascii?Q?Z0E46D/PbHC6R6m/hz3dWku/E8/E0ytWEIZcmobUjLqfGOULodJUmDfAmou3?=
 =?us-ascii?Q?5D2GqFzibjcD3ctoktaBLendHQRrMCNA32trqNo+FAb0k9KVl7CeEj0NBXEv?=
 =?us-ascii?Q?68bZu2stToZmnkrjCafMiH3LCv6iau2HHHfdL3W8DEiZFMK3MwtaUcZKoBDc?=
 =?us-ascii?Q?Yt/mfIfbF8uADkB1K4YjgWhx51wk+fB/nDwyxKQgaVwvgI4c9xM+C8ItceQa?=
 =?us-ascii?Q?hZ5FLLSmBeVX0fm5C48U42jGlIT1uoC2lQtEUSCHwHAfxnwpbIJciTdn3BD2?=
 =?us-ascii?Q?YfgW2xPyLAYoCiwxZnQjdK7UAtmt2vBX39+pZaXC+lxYzep06nJNXq/9JkrV?=
 =?us-ascii?Q?/mwxlI/do2TkTn8NqBntpGH1IqzoddqO5SSz2/V0nUIFGLxmpr4ZyyUdMsxD?=
 =?us-ascii?Q?ugp8lKaWJ5kbGThwLQKKrr3N7APSIOGkHR4O6wdfATpN70lWZv2WqPmKzgeo?=
 =?us-ascii?Q?N90ysjsdfLYmdnfZax5ZkO+WkcFOz2z6Z73mPTZMdtQhBA/SalVGUFGQKT++?=
 =?us-ascii?Q?aOT3dbMjxVKWUDvpxksxnC/lCPdHeozCnchlcAOIqjZXf32xdn6OISjZRB+W?=
 =?us-ascii?Q?kCRBSm7DmsA6j3vgLUNQPGmhca8yxlTSjTbKd+yLm7gV7Fs44a3mXQX/sSoQ?=
 =?us-ascii?Q?xd+4+B87O7DTAhIRUoJSG3xoKIZB/7vTN33fDm4LP+Gt0GyzIgzunmeSzM/U?=
 =?us-ascii?Q?nDt2PufgAVw8nrJCaodZ/HGGKPG7fVbAohr98VRJIoSfh6Jp3RtQqMPjCEEs?=
 =?us-ascii?Q?WRYyC0CPrtA7b5OHqFvZvNu0AKRAF60BhJPZryvH7kn3kw1xnxIJpo1lUZ7N?=
 =?us-ascii?Q?w7uOEfn9KeAygaKwO6PZ51PCwWAJQi14rdI/T0a0b9uHt0VMjVfEWCsD935H?=
 =?us-ascii?Q?D/oiMHgVkxI8zQsBmDEfYuvDUwhrfeL2W+OPzpNOX4qD0VemcdWREUqglidJ?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a7efa4-d4ed-494e-bd4a-08dd04e9cb17
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 20:20:34.1286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eo02iUeM+CwGkHvnlSupgscx1BDlNGMtyTz/wuGnYpa0VxI9q2k370aTFynjPeJWYaGQZGf56oFSzKFcO+tEZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

On Mon, Oct 07, 2024 at 03:42:34PM -0400, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrigo Vivi
> Sent: Tuesday, September 24, 2024 1:35 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Maarten Lankhort <maarten.lankhorst@linux.intel.com>
> Subject: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead of flushing
> > 
> > This aligns with the current i915 display sequence.
> > 
> > Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 5cbee5040e91..0237d458078b 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -10,6 +10,7 @@
> >  
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_managed.h>
> > +#include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_probe_helper.h>
> >  #include <uapi/drm/xe_drm.h>
> >  
> > @@ -364,10 +365,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >  	if (has_display(xe)) {
> >  		drm_kms_helper_poll_disable(&xe->drm);
> >  		intel_display_driver_disable_user_access(xe);
> > -		intel_display_driver_suspend(xe);
> > +
> > +		drm_atomic_helper_shutdown(&xe->drm);
> 
> Isn't this functionally equivalent?  The only difference AFAICT is that previously we
> set the display.restore.modeset_state = state, where the state was the
> return value for drm_atomic_helper_shutdown.

well, both ends up in disabling all crtc, but with the current
suspend there's unecessary duplication of the current atomic state.
It is a shutdown so we don't need to restore anything later.

> 
> >  	}
> >  
> > -	xe_display_flush_cleanup_work(xe);
> 
> And I'm guessing we're removing this line because it's a duplicate in the new
> execution path now?

all the CRTCs are disabled at this point. This is not doing anything...

> 
> I won't block on it.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt
> 
> >  	intel_dp_mst_suspend(xe);
> >  	intel_hpd_cancel_work(xe);
> >  
> > -- 
> > 2.46.0
> > 
> > 
