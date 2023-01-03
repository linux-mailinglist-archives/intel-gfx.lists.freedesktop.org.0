Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC0F65C459
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 17:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C4589A5C;
	Tue,  3 Jan 2023 16:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008F589A5C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672765043; x=1704301043;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wmUGrjCz9dyIcRg5aeU2IZCbDcaXjuKL9cm4IZhcBv8=;
 b=N3x4dpU16qCIQZfQnj7uixegphO82n3G40xbyUAZA9pmcbtMFq4fgAlw
 pNiRvMBNlH7UykppNH+AQoKcGd9ywlwiCPBE8xhsj4AdHZ0l4gHXSb1th
 HDeI7HbKpNJWadoe4nYrIU0ALSAEtHbiHDuTzphBnH10st8H1az7pL+5b
 Jd59kO0BCeNysJY3gccYhbTNtE1b1REzqtnGGqJUtsGu4TSDQxA3Gk1Km
 nUcdp2JkPyQD6ZhhdVD6xMjeeCuIv/snunWK6k6Us6Fr+XEEhS+XUTqW8
 e0TY8Pr1I1R33YYNO21lwIatpFjAXDk9A5PCVwC/CLN9pI2AFa2ZXiALR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="321770992"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="321770992"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:57:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="604868577"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="604868577"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 03 Jan 2023 08:57:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:57:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:57:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:57:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ld1SD8Y2R56U//heqw0jQRMtQe/1OhQwbjkhT/VNCYuWwPdKVKTqyy/WO7+tXzh1fJ43b4wqZ30fvmI6sthvf0qrKUEkU+6/kEdwNJD+ADJQXYQmLDk3AKZ2QDAx4FPxmobNPp5iL/2iRjd733A25z2EuwgOLYcqdww8WllJR66mZ7VdK5yiIoQnq0aFCLBLcA0KEohX2+nYVahZdQHbue39WJTrxKbWZPYNpbvHGu8UMkI6a6PMiZ0aCLjd2VgX4cBmOpa9y1g5JGNkkZGMkDdWMaOyQUWcgZNc6ykw7Ow1i/AqjzIJ2M9LNAbNJbxVngUWPpSDBQZgKHvJr5QdLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMaDsK2wp3pij4hFqu+RZ56W2fSNsrg8h4fr3kKOpaE=;
 b=Oa4YWv23Rm3zD5WAF1k7Knv5OPkjIoBA+nMgQhqyPdGmkaFAqZ3LfAG4KknVsVHpduKjW2H6I71Kdx84ALTKFg0EDUTDyO3V9aV5hpF7YBgMBZi2GAAcPVv0Rzro5PbhGXqK10ta8eUOZlGUM7YAK9uoj24CLaqONxGLbcIzTuKxnv7w51XO7aP0fo+/m3ipVp0C+sG0Xs1Us9cIq6o/x7qWcmNsw/AwZY0eTjPuJiOKlaUzQzU849wkcJcNCA44UvRnWRLD0pIRGi2lLRau9a3/HUvSMxcFju8BjYKCgS+JlAI2M+IB3WhPRSXI0Ozq/VeaOpb387IBvvIhSSh7ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6998.namprd11.prod.outlook.com (2603:10b6:510:222::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:57:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:57:15 +0000
Date: Tue, 3 Jan 2023 13:57:09 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230103165709.e3aizx2qkpqz6rrs@gjsousa-mobl2>
References: <20221230182422.29680-1-gustavo.sousa@intel.com>
 <20221230182422.29680-2-gustavo.sousa@intel.com>
 <Y7RZD0Li5E16fKGc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y7RZD0Li5E16fKGc@intel.com>
X-ClientProxiedBy: BYAPR01CA0043.prod.exchangelabs.com (2603:10b6:a03:94::20)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6998:EE_
X-MS-Office365-Filtering-Correlation-Id: f3163139-8a46-48fa-fdd2-08daedab90c7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HNY5gzT4dj4MjeyXl1yQm486Hod4e+9deiEhVT0KsEOsKYkASGvL9FSFqTTTirME9ApTCd4qfuraLqup8LQ36Ef5iFC/CcN2lHwpWJ4LXZlMZt68sqVDp9O1GAEu3MKLh4+mGaaLwnh/lal6LIPf+5HogNzbrvMpvuecfrSyNhtDg4AmVmGZ2N3LjcnCynQGp+o8oJmmAly1uPR+E0ttW5iWKltASa4qluUYa2x2/aaL8qyZK5oaXoC/MGV35lJWZyqpeTWJR7A0XYp7uADVl0iCqiyzKeNRq5brWictLG0zV01yOSLrPcwaIhlMAfm3gCR/VxCQDq46nJOH0Agut6W3TQ9x8z/okYjEFIKXXEFlugMUPTxdsUJzKVWcNgII6q2UAQJNJHuxhvWClJ/GwrdMyNwxDahQfcULd1hsZUYHop0LUNoLVPKam84AgSElhIFIeoCuUAbCCZm+zquAbbaf0OsDeCW+X06U+pSl6Jpj2WsKvPosNe8UddOPK+xB8RKGJUggbt+gWMNQ6mYDRkfmDpR5nqbzezmOey4yVKl3MZtuhRDUhuanjA9q/WN7gY/ZY0Aln04dkxCAbg8VI6CzxtLOPR4paMbkUtckLCu1b8120iJHmhj0R6qaVyXuCTTsF+fUvobAz6jICUyo7fY8JktSBx5xG2ZVarNKTYXJ8eqIDK+ufXX6upN3NtBaYzu9tfXL42UPGq2P8XJaZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(396003)(346002)(376002)(366004)(39860400002)(451199015)(86362001)(4326008)(54906003)(6636002)(41300700001)(66946007)(66476007)(66556008)(8676002)(82960400001)(38100700002)(26005)(6486002)(186003)(966005)(6512007)(107886003)(6666004)(478600001)(5660300002)(8936002)(316002)(6862004)(2906002)(9686003)(6506007)(33716001)(44832011)(1076003)(83380400001)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ErG5tPynYJxLomyT6lPucQUCWwTbse0CKECGD0IvywXA/pjQEWX7/ynUEFJy?=
 =?us-ascii?Q?bjvweE7i+rYx5uLKL4LNuPMykL//OKQbV99k4NVnd8SIMfSn42u4NFgLMUiz?=
 =?us-ascii?Q?/Ul23TRVyyDumycJg/7nU7XDEzOzchBbr7waygYFwEFL/MrMjvpMaYDWNTGO?=
 =?us-ascii?Q?Bxzx1zLj4kraYMgYE97Tit5ROX8ARzvbMEHl7ly6zZoew7bpI5wUFOxudiiK?=
 =?us-ascii?Q?j2hQvOtPl+k9UCBXM+q9eRut7ztAd3WOzwaR4/5pHcJTHiw8q9yDQcU/XBNu?=
 =?us-ascii?Q?RsVaZM5K4NVojjDChzD3wRL7WVH+2Bc/PHQ/xl9oy4xHhVA+ggCoi6ahF/AD?=
 =?us-ascii?Q?FlOGnD3F0GG4Y6iaZHF295NokYrN1MIKbE7cwZMyByReVpckMLVHnw5Lwtch?=
 =?us-ascii?Q?I/zPYcEJ1i87psh9OlBktVROKtxgvTdpOjA0SYdOWa2MxhLdFiCVWiVS9Cyv?=
 =?us-ascii?Q?dSrq4+mF0UxqpXKrAIa7SKfFrdtki+ceISOQBA9s5SVnfdMJa6Gc1T4vV11M?=
 =?us-ascii?Q?hbOdRNLFT4VgSa/mIFLqghC4qdzIaUeQGtX/Qe/gMUkZHh2V1+rtKZvJm3fM?=
 =?us-ascii?Q?n+YyEAbPb1oFmJKmpNf9vycZ+Xl5Di1ncu16GaBeRtvs+WrFQwmBhO3L3Jvi?=
 =?us-ascii?Q?UAEwzhwQDCuosOGkya2sTwLTU8qs7w9RajBG/wbDEjTbMsX5jDRc3Sni8eTQ?=
 =?us-ascii?Q?iKCu845xmU42XBpIWYD/KfEZ/8PKMEBCYtiMVfh5R4F9LYbP1k5iPoQ7RywP?=
 =?us-ascii?Q?KlzU86cebE8qGs2FT2pE6NhNVFahP9R7o2VpL1h7bOiAAtd6VcIbJMHJbtJP?=
 =?us-ascii?Q?DjxCexwwuujkOjM24LunTXcQXbcnkqZTn5zi0TUeal/ooas0AI7FygCcrZ9S?=
 =?us-ascii?Q?oCuaK9iLKmnm8ee23aYY1bw4y71dDaJ2Bd759fAys/c/a5EZuVaxEJBfmxjP?=
 =?us-ascii?Q?Ni54mOo7fkUUGlxYYuWo5o9jgPWMHlJioHFUXTOW+Lmrw2/BT++vnfTuQ0kh?=
 =?us-ascii?Q?VqQha/OXjlB90GkSqXl8q9PoTDRgb2KRG3pC3Ald9jdKyGb1Gc6nbs0h9mIp?=
 =?us-ascii?Q?MTBjzwU3NkLdoilGFJpngmHc/C/ObspC3m3JU+JvLgA2yFkdu3UG+xq9QsMs?=
 =?us-ascii?Q?x78SGix/oilq2QW/CsrN6k17C24N0ix8dF9TFHtJHuRBwVGxaeyvlGoUMkLn?=
 =?us-ascii?Q?pttgNiHkW8nn4bhhF8zSr5rO5VrOqcdNrX3xbSk1bjuXxPTQxAC+aRT1So4q?=
 =?us-ascii?Q?PTKazIq8wZn3h4dls5dSfqwc218e4cM6uOtJtwX7WPJhmJir7sfshfdeMu3/?=
 =?us-ascii?Q?PjuJzm3lHZrDAjByWIWDNaiTzFCXzpm1lQ7oBGktfuZDaXzCSLK7xztnrHAV?=
 =?us-ascii?Q?rplEauudXY2+MO36jDXG5cqkQy6LwIk51EQ8uXjbh/XN438HEvlNAOYwepI6?=
 =?us-ascii?Q?PafSCrHZPTewtMuE4PykqK59/EPQjCD4/J/ZxzRhqFUELsGV1V2d2W1jZTR6?=
 =?us-ascii?Q?3xUrEpLzAYJqh+Wg4zQToivEZSAwXv/R9S3zPPgkeGvpoOutu5rNsRvBTh+P?=
 =?us-ascii?Q?nThhxEFVV5aCvVKojMRbc21N6gIHGOVh86LCtf3PZDWGMty8IWppQ6b1Mr0N?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3163139-8a46-48fa-fdd2-08daedab90c7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:57:15.6968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NufeWMbeBTY2WTZwHefauCCZIsI4j5iB4ipJEGaz690pOJMiiW7we2JI8Q2nW2Zl8yaCnRW1DQAWYuV0i+Vp2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/dmc: Do not require
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

On Tue, Jan 03, 2023 at 11:34:23AM -0500, Rodrigo Vivi wrote:
> On Fri, Dec 30, 2022 at 03:24:22PM -0300, Gustavo Sousa wrote:
> > Currently, i915 interacts with the Hardware and not with any DMC
> > ABI/API, so the API is fixed within the platform, hence no need to get
> > this so-tied version requirement.
> > 
> > v2:
> >   - Use link to firmware guide from kernel documentation for
> >     "References:" instead of mailing list thread. (Rodrigo)
> >   - Provide a more elaborate justification in the commit message.
> >     (Rodrigo)
> > 
> > References: https://www.kernel.org/doc/html/v6.1/driver-api/firmware/firmware-usage-guidelines.html
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> and I'm going to push this right now...

Thanks for the review!

> 
> but btw for a next time:
> there's no need for cover letter in single standalone patches ;)

Thanks. Yeah... I wanted to keep the history in patchwork and I assumed it does
some type of matching with the thread subject.

--
Gustavo Sousa

> 
> Thanks for the patch,
> Rodrigo.
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
> >  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
> >  2 files changed, 36 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 905b5dcdca14..4124b3d37110 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -53,51 +53,40 @@
> >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> >  
> >  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> >  MODULE_FIRMWARE(DG2_DMC_PATH);
> >  
> >  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
> >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> >  
> >  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> >  
> >  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> >  MODULE_FIRMWARE(DG1_DMC_PATH);
> >  
> >  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
> >  MODULE_FIRMWARE(RKL_DMC_PATH);
> >  
> >  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> >  MODULE_FIRMWARE(TGL_DMC_PATH);
> >  
> >  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
> >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> >  MODULE_FIRMWARE(ICL_DMC_PATH);
> >  
> >  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> >  MODULE_FIRMWARE(GLK_DMC_PATH);
> >  
> >  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(KBL_DMC_PATH);
> >  
> >  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
> >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(SKL_DMC_PATH);
> >  
> >  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> >  MODULE_FIRMWARE(BXT_DMC_PATH);
> >  
> > @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> >  		return 0;
> >  	}
> >  
> > -	if (dmc->required_version &&
> > -	    css_header->version != dmc->required_version) {
> > -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> > -			 " please use v%u.%u\n",
> > -			 DMC_VERSION_MAJOR(css_header->version),
> > -			 DMC_VERSION_MINOR(css_header->version),
> > -			 DMC_VERSION_MAJOR(dmc->required_version),
> > -			 DMC_VERSION_MINOR(dmc->required_version));
> > -		return 0;
> > -	}
> > -
> >  	dmc->version = css_header->version;
> >  
> >  	return sizeof(struct intel_css_header);
> > @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> >  
> >  	if (IS_DG2(dev_priv)) {
> >  		dmc->fw_path = DG2_DMC_PATH;
> > -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> >  		dmc->fw_path = ADLP_DMC_PATH;
> > -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ALDERLAKE_S(dev_priv)) {
> >  		dmc->fw_path = ADLS_DMC_PATH;
> > -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_DG1(dev_priv)) {
> >  		dmc->fw_path = DG1_DMC_PATH;
> > -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> >  		dmc->fw_path = RKL_DMC_PATH;
> > -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_TIGERLAKE(dev_priv)) {
> >  		dmc->fw_path = TGL_DMC_PATH;
> > -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (DISPLAY_VER(dev_priv) == 11) {
> >  		dmc->fw_path = ICL_DMC_PATH;
> > -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_GEMINILAKE(dev_priv)) {
> >  		dmc->fw_path = GLK_DMC_PATH;
> > -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
> >  	} else if (IS_KABYLAKE(dev_priv) ||
> >  		   IS_COFFEELAKE(dev_priv) ||
> >  		   IS_COMETLAKE(dev_priv)) {
> >  		dmc->fw_path = KBL_DMC_PATH;
> > -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_SKYLAKE(dev_priv)) {
> >  		dmc->fw_path = SKL_DMC_PATH;
> > -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_BROXTON(dev_priv)) {
> >  		dmc->fw_path = BXT_DMC_PATH;
> > -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
> >  	}
> >  
> > @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> >  		}
> >  
> >  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> > -		/* Bypass version check for firmware override. */
> > -		dmc->required_version = 0;
> >  	}
> >  
> >  	if (!dmc->fw_path) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 67e03315ef99..435eab9b016b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -25,7 +25,6 @@ enum {
> >  struct intel_dmc {
> >  	struct work_struct work;
> >  	const char *fw_path;
> > -	u32 required_version;
> >  	u32 max_fw_size; /* bytes */
> >  	u32 version;
> >  	struct dmc_fw_info {
> > -- 
> > 2.39.0
> > 
