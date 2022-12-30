Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A73D659AB1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 17:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926F010E459;
	Fri, 30 Dec 2022 16:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1817F10E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 16:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672419136; x=1703955136;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=f3bms1Es6CIoCIupXu52Etg32qoIBsp2nIiJcdL5Ic0=;
 b=Yi99dYZRbgqsEoYe/98JrJxD7FG2DbmM22Mjg5iRUPFrJX9DJeGFs6DI
 2Vh1Stgd9DiOUqnUf+COiRvWIGHQw9L9bFb8az/MpOIkwMLLcQb1/UJ73
 5tk8vCWp2B5aXwowNK/zJqzJ4U9WQoPc3PBsHb4p4wpHXseI8kchfSa1a
 +LDuXUQZhAnJQGbpEKOuZ+nfJupNxGrLxz3/gVembm4QS3eDVP/G8CybV
 7qaXzjTUJKO8ZQ/vt5a3wwlR0RWLw7SSFvk6j/32K5AYFuXh+pDathyx1
 LNvFKShkha5iMk+Llh+Wu3TEclxuZBe8+rgFZr+pQzB1XX7tfeKCPnMR+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="348443983"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="348443983"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 08:52:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="722385236"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="722385236"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 30 Dec 2022 08:52:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 08:52:15 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 08:52:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 08:52:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 08:52:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YPPhk+hK31/pkzvWEtrz53qdk0wLJpEE+6MmR3ORjSQdPExqWsGpXvD5tVUm7WkjqDskn4ExwbEgj/8ilFVermFdXm+eqx9dU5Rq015JSXpNdV/eArWszL2RoNwtBZhCJH85RuLmhKGawNWyGF/fl6aiOkztDTM0y50TWvbLoxOukZQMBqPJL0OVy0ai3f3Pz+Wag9JzalI6AtuLO0vwcwWF1gtXSrepjWYcdPd5wmZuldcSFW1sudY5+ooQsOMwJZUuFp1IZlU2k3x8ShBPJPU38/jouMzvzdP82RiJIbgije6uHrJ9naEQWeOrilM/e6FDsjoxJSjAvdHuP3VG6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2dzRIXHqW2Bqa6i5a4S0tck0ex+ATC3vfFAtOqC0uh0=;
 b=fIUQuPcpCuXJg7/1TYcvyssEQ2sKlDDEGYN21c7/8GoWavfio0AGSW+0EZ6fNVT7eqla/Y27s7fFHBwPxBoAvFT3J4h7yCe5OeNlIKbnhA2Rw0NQfLKaTAS2h9P+EZmV6eZFlPBAvCLI0EE6Yq088eTBt+tN4IPs69Oscx2JBYme5oMC9gDT6PLy4IFCEFOQ/AHHIyaMIIp5OqvFE9aK2jy4bZJ9Gio7h4sawRXNZJ3FQtd9OT0QIUDtn0PTJSHBr3a0svtEcDnmZE3bv1eJnJ3tw9gHZMZLXbQRAWWW9UnLz4GZTkaB/1A4EVCBYsbE3hm1+vdJzK9B/SWsamVKqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5625.namprd11.prod.outlook.com (2603:10b6:510:ea::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 16:52:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 16:52:11 +0000
Date: Fri, 30 Dec 2022 11:52:07 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y68XNxd0PrpcJ1U3@intel.com>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-2-gustavo.sousa@intel.com>
 <Y66iKQ5aGdMzyVh2@intel.com>
 <20221230124239.hepfnh75dhb5urpd@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221230124239.hepfnh75dhb5urpd@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5625:EE_
X-MS-Office365-Filtering-Correlation-Id: 6281252f-0070-41e6-1741-08daea863231
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tnLI0piRCYzHFK1je9I1oasLq9Ml3bvNsIBZbVuvxnguRIUBD85+8hMZGjbOKYArjce/eDDrmQZRZ1usnFnsejem/+DdSJFXFZdCL91SqicTt0y6ohHnYHMKxQV8rsysZWVX4CISAqAC43IpC+8e6KowNmE3QFFx87PKlb6iVjoTGQcof4Wg/QSAGx82tsuFf5e4mrB1BVZ3JUZtpsPxv48iedp4DlG0PUCUSL12WecnC7Vs8kmCDlT09vLowKqHfq+GtlxV0qYr3xlThyONAXhbhi9JQb30uqOpcnTF61EdcCeCAkrjJ7TqLGJA3gIOB828Ftv7YeLj50vXukW7Ppt4Mu0Ra8hroS071UPXmCuxX9sMdt0cge5P9mpSwIaqklGzPTP/We9WKDEwrnje6C7bGLgrwI/VqUM9y2mv/bYXYl8aPhCu6U+0OMfa9Ko8KhQ+410Uvnr80UETj7qlnhwyug14KZlAyY1vv5ynhT856+WQCsKOCKUcVMg+YdrQ2lrOiUPidVHlpImrJSci/kXgXghNTtNKvvnzboD/kCykzJojz0TFcZYhYwvGUqt0BgAgoxWnh73gpQ72ocOvh7sNYS+EzdF+Yf1XHUExSJrihbjbmKOLsmRPAJJ7sDB115L/5Twzk8vYzP2FLjJchg6BWcP/NFy4QZ5/kBlotUVQkINEkzKchl+fpLFzru8+AUyEQ2LsG/wB8YKz2/UAmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199015)(38100700002)(82960400001)(6862004)(8936002)(6666004)(36756003)(54906003)(6636002)(107886003)(6506007)(44832011)(66476007)(186003)(2616005)(6512007)(26005)(4326008)(86362001)(8676002)(66556008)(2906002)(37006003)(66946007)(5660300002)(316002)(41300700001)(83380400001)(6486002)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eEuQw9kyuNBq27Xunmi2HW6lDjrtxK6YtK303v6Cxrnw08l49OGzCL6LB5+K?=
 =?us-ascii?Q?ZVg4W18cTywk3CPWSXykISMDE5ABmXZGxtzbE5or8EtFbxujnnIMqFUF/06v?=
 =?us-ascii?Q?6ZxH7s6VXhzIQ0GvoV8Yrn/82y4PtHUuyRbVElr5yzRpJ8/A0okOFxuD7pyJ?=
 =?us-ascii?Q?+5hllt4gFPkN6vLOIc7sKmqKDdMXZGbGfvoJpFSTI+QjBlQCLpauW76lBOXi?=
 =?us-ascii?Q?o1eWSylkPO51AfHcqg+bDjAU0XwaZbK/6bzyiQtoBC6jGdLvYZv1IezeruUj?=
 =?us-ascii?Q?Qbp2IzkNBCCmHqrZoHKcRmftX5CITWTQkx2XlbrDg/cXibDEkBhQ9HepC4tw?=
 =?us-ascii?Q?FJSQzE2LiYTBWmLPCsoZAMURS0irPUClL2mCYF+7w686Cp69/Sl4D4780iwk?=
 =?us-ascii?Q?N4Lvt3Z0/A/Gluds+7EAWXI68EVhbgjSWVY4mtzxJ4vf9jr93ISAPSvh3y+o?=
 =?us-ascii?Q?nwyHivyDlYT4+wtBw8HO12BJN5UNAeQAYJdApm8GE5A0GCwQgtfsGKC61Mjx?=
 =?us-ascii?Q?34++TLc2Ktz2QQKLWKFW/lXR0Qhw3qFuCg9pj77pK+H3b5kNgOOwBCmI6VE/?=
 =?us-ascii?Q?BXan4RTKKNeErokqC7M6zH8cjtekGh/GvXfwMo2ZuHPFkLqEl14Xxy7SaQzG?=
 =?us-ascii?Q?pGmp4OoryYJo5ywuZDLbVLQ9QT4EuyEEfHrI1oNKSPYWj9QZw1iEgjK3AbVZ?=
 =?us-ascii?Q?wxd/ffDK3T+EbmwYLwi4shYXJwNGowNL7gF+Uydl36AxR3x2bEPv+iV3Ssa2?=
 =?us-ascii?Q?9r3U9yadD5PWBOSMwf8wPSXVk3OzoyOfbVkX885dIuvy7eb9Ec3RqgimRsx5?=
 =?us-ascii?Q?lGiYJs9ah4C6/viYMM56EGGNQjTV5S+/Y8GDOkmElUa+N5mCZNMdx7PdtLgw?=
 =?us-ascii?Q?2ANxFBuN0tNUfig4S1GJyqMDSGL3rjYYiK4ej4oRFIJJJNP6r1qKd3HAFjem?=
 =?us-ascii?Q?gb0Hs4kcmq6JFGmcDKqnbZlbwSQ+BkBuzAJz8+K6M91E55gCUxAvCD+WNvjH?=
 =?us-ascii?Q?OW5M8zjRywdB3gtO5C11FUvNG0HhQOAWJ/BVodumyczc2DzoRd51xaONKkBA?=
 =?us-ascii?Q?WoJHXlTxOqsbKdToRnLrtmE8kO71g6MKW0Je4LcEO9xdl8k6yUDFaolqFz22?=
 =?us-ascii?Q?MhQl4v9oLA6EevaOuRvFUyN15IKoWhRTsealZTIGEumOalJ+R5LhoV2zariJ?=
 =?us-ascii?Q?AXVQT8JlwTGvdIPpqLbEjKxtbWyaWkIGg6tsaz9zduYvZbV0zeCUMEaiK7Rp?=
 =?us-ascii?Q?roIyuFcWVNWwnkIZItlrjJsXFejUGHrgVj8Uq5888hvfSu351XVMAx6BrTY/?=
 =?us-ascii?Q?jKIPYW5iCsffDV02H7zci38Vlso96jSESZmVUURqht1W99+6QYBkNENfXI68?=
 =?us-ascii?Q?iou5b6aGHxxpdvnDIKOGnfwrTDKcZLBwa3Fm8JkmeESAk/s/t2NVkeqCoCIG?=
 =?us-ascii?Q?dFDKRMiCLIPzMd9allCBe4VIFidduKO/0E6PrEbi/H1vn+JPlOK2J7mqyx0u?=
 =?us-ascii?Q?+UM2HiTJh/vT4tBQ9y54Qvj//qoLUphMrh4161F26RNuE7U6zx6gW3nRbG7K?=
 =?us-ascii?Q?Hca61mKGgshAcSz8PM2qyixCcuvDD1cuD+8LIIFj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6281252f-0070-41e6-1741-08daea863231
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 16:52:11.7262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZsH0WSKlebasEXrkzzEmhr/Qsb96wwJhkNHKU57+aNJnDZjDO+NWWrjYZfCfa4DQupfPBcgEovF0vHcofGLeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5625
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/dmc: Do not require
 specific versions
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 30, 2022 at 09:42:39AM -0300, Gustavo Sousa wrote:
> On Fri, Dec 30, 2022 at 03:32:41AM -0500, Rodrigo Vivi wrote:
> > On Thu, Dec 29, 2022 at 04:07:39PM -0300, Gustavo Sousa wrote:
> > > Currently there is no DMC version requirement with respect to how i915
> > > interacts with it and new versions of the firmware serve as drop-in
> > > replacements of older ones. As such, do not require specific versions.
> > > 
> > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > 
> > I don't believe this link is a good reference as justification
> > of this patch.
> > 
> > Probably https://docs.kernel.org/next/driver-api/firmware/firmware-usage-guidelines.html
> > is a better link?
> 
> Yep. I agree this would be better. Is there an "archive" version of this page?
> Just to make sure we link to the exact version of that guide at the time of
> writing this patch.

This question reminded me that I should had used this link instead:
https://www.kernel.org/doc/html/latest/driver-api/firmware/firmware-usage-guidelines.html

And this is the one you are looking for:
https://www.kernel.org/doc/html/v6.1/driver-api/firmware/firmware-usage-guidelines.html

> 
> > 
> > Also, in the commit message we should be more clear that i915
> > interacts with the Hardware and not with any FW ABI/API, so the API
> > is fixed within the platform, hence no need to get this so-tied
> > version requirement.
> 
> Thanks! I'll grab this paragraph and adapt it into the commit message if you
> allow me =)

sure, thanks!

> 
> > 
> > with the commit msg changed you can count on my reviewed-by,
> > the patch looks good to me.
> > 
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
> > >  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
> > >  2 files changed, 36 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 905b5dcdca14..4124b3d37110 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -53,51 +53,40 @@
> > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > >  
> > >  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > >  
> > >  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
> > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > >  
> > >  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > >  
> > >  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > >  
> > >  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
> > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > >  
> > >  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > >  
> > >  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
> > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > >  
> > >  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > >  
> > >  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > >  
> > >  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
> > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > >  
> > >  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > >  
> > > @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> > >  		return 0;
> > >  	}
> > >  
> > > -	if (dmc->required_version &&
> > > -	    css_header->version != dmc->required_version) {
> > > -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> > > -			 " please use v%u.%u\n",
> > > -			 DMC_VERSION_MAJOR(css_header->version),
> > > -			 DMC_VERSION_MINOR(css_header->version),
> > > -			 DMC_VERSION_MAJOR(dmc->required_version),
> > > -			 DMC_VERSION_MINOR(dmc->required_version));
> > > -		return 0;
> > > -	}
> > > -
> > >  	dmc->version = css_header->version;
> > >  
> > >  	return sizeof(struct intel_css_header);
> > > @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> > >  
> > >  	if (IS_DG2(dev_priv)) {
> > >  		dmc->fw_path = DG2_DMC_PATH;
> > > -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> > >  		dmc->fw_path = ADLP_DMC_PATH;
> > > -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_ALDERLAKE_S(dev_priv)) {
> > >  		dmc->fw_path = ADLS_DMC_PATH;
> > > -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_DG1(dev_priv)) {
> > >  		dmc->fw_path = DG1_DMC_PATH;
> > > -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> > >  		dmc->fw_path = RKL_DMC_PATH;
> > > -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_TIGERLAKE(dev_priv)) {
> > >  		dmc->fw_path = TGL_DMC_PATH;
> > > -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > >  	} else if (DISPLAY_VER(dev_priv) == 11) {
> > >  		dmc->fw_path = ICL_DMC_PATH;
> > > -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_GEMINILAKE(dev_priv)) {
> > >  		dmc->fw_path = GLK_DMC_PATH;
> > > -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_KABYLAKE(dev_priv) ||
> > >  		   IS_COFFEELAKE(dev_priv) ||
> > >  		   IS_COMETLAKE(dev_priv)) {
> > >  		dmc->fw_path = KBL_DMC_PATH;
> > > -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_SKYLAKE(dev_priv)) {
> > >  		dmc->fw_path = SKL_DMC_PATH;
> > > -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
> > >  	} else if (IS_BROXTON(dev_priv)) {
> > >  		dmc->fw_path = BXT_DMC_PATH;
> > > -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
> > >  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
> > >  	}
> > >  
> > > @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> > >  		}
> > >  
> > >  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> > > -		/* Bypass version check for firmware override. */
> > > -		dmc->required_version = 0;
> > >  	}
> > >  
> > >  	if (!dmc->fw_path) {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > index 67e03315ef99..435eab9b016b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > @@ -25,7 +25,6 @@ enum {
> > >  struct intel_dmc {
> > >  	struct work_struct work;
> > >  	const char *fw_path;
> > > -	u32 required_version;
> > >  	u32 max_fw_size; /* bytes */
> > >  	u32 version;
> > >  	struct dmc_fw_info {
> > > -- 
> > > 2.39.0
> > > 
