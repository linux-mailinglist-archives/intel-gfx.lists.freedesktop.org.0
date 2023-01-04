Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05CC65D15A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 12:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2FB10E579;
	Wed,  4 Jan 2023 11:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C2810E575
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 11:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672831517; x=1704367517;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JyLneOPKp8OKmg8AhZKacD6NSG/kxvPPM+DrWMSZTfk=;
 b=Ny5jY1dhtHFSzG/YF3epjI2jYeGiUsv88JsRa1aIX1N2IeqaDSkas1za
 X1Ra2XuhwGtmwsr/PHophRVSSelpEwVB224ZDlJVzo+XoAWfe/8FZn7P+
 u/V4H3cOLhH2UWDARiuPPr7/FVwABF5emnl1YPIbJMnXnXoyxqUb9kiXk
 XZRaN5KwCwnn+x56iGcqvTNTuo1yyA8Y5cj9/rFk8adT0oas3Zm8QhLNX
 IF/S1tkBjbwdSkyUSgK0VQiV/7JlYgRtUES7u1UGQjksx0FAyHT22BlBS
 msyhT7G7128uK8dG0Aqp5guzHhFsv0jUaXppNajK7qh8++yQE+1C4wfjM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="408172927"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="408172927"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 03:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983899817"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="983899817"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jan 2023 03:25:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 03:25:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 03:25:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 03:25:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 03:25:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qh7bxxZ7tTl2c2eixpH9OPK45aYmIbqv4hSbdqD9JB2jrKyCLg89/IEnTUl7uc9QIlTUtzwiN2ZOuliWpjK8MrRdW0zZD/eXSwTw+8+oJf1V54vF/QArrS3nyGCn0OGVpKqXZ1qS1Pg0OfEdPo47rkwrzGpk9H2soYiE7RtjbNmHrq0/IXE3EFoY5VxrwvURs+b2G3hGAv05cm0V1ptb9Hdn6Sw4cBTkJNVecY88tYaUgKhfVuZZpUo+LsWW62H32TzH/I9S1pXLWz2fQ2kmqFLJqPeqOjsJXCFKIkAy9BIjSPsr/rM9TZFM5t6bwCq54tEUTl/v/kCy7CQE2pV/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8lbkIYsQqfPimEYgDmsCREk7hc7OGbTIlsuk9KyREBc=;
 b=IrozEqC6DWVwRu05z6qCYAwUh8gxfbkw4GAF1JaLRy6vqxPsZiyaGapMkcb5YwSwYU8UCCLSr53S970pFv+wIuvll7d3JErdU03jhez2Og8buxKvpSWzkMeHk1AiBq7arCilfr7vb7JRZShq9xtwfVx23slSuaaONs/v8426KehnyKdFhseNZwSJD8nyMLOpHHYXhcT06JWC04nIQLWYJJVApj32n7Kn4248jqF4MGh214k/M81Nt9P16feNte/j00DMi17gqjJjCtsGHmSPH6QVd5ivn8Z51bESvCcuerLJ18c7hgEN2IVjw2LMxTdHi14QastEzch9y0uQ64Tw8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6794.namprd11.prod.outlook.com (2603:10b6:510:1b8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 11:25:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 11:25:12 +0000
Date: Wed, 4 Jan 2023 06:25:07 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y7ViE+7bkT3DUw2t@intel.com>
References: <20230102054047.124624-1-suraj.kandpal@intel.com>
 <20230102054047.124624-6-suraj.kandpal@intel.com>
 <87k022y6af.fsf@intel.com>
 <823d28bf-3bb4-4b97-0821-e920588ffec4@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <823d28bf-3bb4-4b97-0821-e920588ffec4@linux.intel.com>
X-ClientProxiedBy: BY5PR17CA0008.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6794:EE_
X-MS-Office365-Filtering-Correlation-Id: d7cf6dd9-9b90-43a4-ec5a-08daee46580c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NaIRdQbauMs0dkf3wW3nZH490/f5HKsJ9iZ0QkPw8jrHPaGMG2Blm9DyEwJzyesxZ/G/Xb9Qchz1naeSDIMU4DRSP5PWX39F6pmPzmp1JeBk5sB82ZSp0BOsAEay2f1DwUwXOlYVEXw5HB72f/D9xImXnmMx17MOovpSYaV0YD/MM34VvvPRznUqO38HWZLaf+7oobWMKZcbBJlpRNa/iyEb19qHTeRvyTv2LLgzhMRQsaePlTKhou5fL2TPdo5f/gU8KT7Jh0snQ8Ky5i3qUOVHh8vW4krVx6VedQdUPU4nRjgP7nS83DGy43OkxT7LhEHgTpl6YjIJVRYTvfMUBkGaQuJLP9q4Ys8T3vUtISLEmFVCsON9Kyuk8qj5+cQyEq9Pwy637mifrdPE3yAs8wzbu8C5zb5VdkeFD4oMD6FBeLQVvW+LYtkOsDCj6DOdz9xYT6rYfxaESqG2nsDznG3MiySgxPJjRuUzn40XZN7XYmoR4JE46YLLaGxHzil9PjdWN+RvKZ41kjqORRYC9oVtzrHJhDqZAoJIl8/mBpJmbXhICNgqjjUBH71D3oSIusv7ILnZdKSbPer8c+KvozryFyyDGeA/N7eIqYKJf1j2hc6HctwVUFQ2eHn+wyeismLxGjExlwYaHR9BlR+TdX6ha041GZhH+MsW05hfW97UO3avWHJnGeok4j1OVnHd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199015)(2616005)(6486002)(316002)(186003)(26005)(6512007)(478600001)(36756003)(86362001)(6506007)(54906003)(53546011)(6916009)(2906002)(6666004)(41300700001)(66899015)(8936002)(30864003)(44832011)(5660300002)(66476007)(4326008)(83380400001)(66556008)(8676002)(38100700002)(82960400001)(66946007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N1vfUZ6eLNdMc/ZdwkqKNGGb+0TXz4iuF7twQuYclgv2+aZl/oG4RwZ57ENg?=
 =?us-ascii?Q?soMhOZ40miz6kS51/wAN8GKmWKyWC8qjZLjCVE4Qu18XPrywpWjUX4g95R/Z?=
 =?us-ascii?Q?GsWOQjbaRe411u3RRuEHKRFPkp7FzTo9WNvE7NgS4iWsgnMWXtLO+1N9qAT3?=
 =?us-ascii?Q?ZkhIB5OdpI2Fko9vnIWy2BNwgN0AVDXmBJl16MzGmhXdeiuvv0QvScdfxjM3?=
 =?us-ascii?Q?oyNmhXn0MnOfwYiu5yJexXbNDvo8i+AqTA61BRfNuNSdM39xA9CdcUL1HT4s?=
 =?us-ascii?Q?JYPwuucDd5O6QHDjn0wE+NAiXUPduFveXU46E6ugbp4q3Pm0aIExGDju2J8+?=
 =?us-ascii?Q?avK7G/bKxeYReqRi+mhTTdcTnWWsiuSKyL6XpecSBwzU2XhKVsZlYYVAkqnb?=
 =?us-ascii?Q?4jsiVwXyIchZhdmY5rARoaOEiHIExCEFaos5qqNguvM4tkrmHvl6VGsv7lki?=
 =?us-ascii?Q?Ski4vYV0rYmBfrQdLnLM/ygjP416PtNkok+h6zsxMlOPtrQ4ZbUw7U81SI/4?=
 =?us-ascii?Q?Aq9msDcdqizwv40C9oYj1qO2K+7CkAaJBjDg/OrUhi/NOmGNkpinwMlLnMye?=
 =?us-ascii?Q?M7G82aZNvDfM1hGTsFquECwXCe9B1GWlkeZr/d6yobRefl5rSSerniHD4bqU?=
 =?us-ascii?Q?aDI+X/n1+DJ9SuvKgiJtQhnKXubGan8oZdyBbffmpdUB1HocJvtq4BrQE2qJ?=
 =?us-ascii?Q?S3crTZ0oFRSXx9BBlCNX8h6uSawovt5tARLZRdZmEaMfOHzfCn8vsYLYbl6Q?=
 =?us-ascii?Q?OYdB1vc7ZS5DzF9PHnqukCU0fjeDY4fnsCGss5TUmUdQz/sqiV+0VsBM4pYq?=
 =?us-ascii?Q?NMqltDPS4J7JBOhic/a7Vhsdvewci9EpD4e9qDH4O0nhmZVVRg4vizK+WDH7?=
 =?us-ascii?Q?JLj6+qM1fP4KuRxGUPVIRo2pNHX+f84LVshIHaCw32siM2XHe4iVxINlDc94?=
 =?us-ascii?Q?xWDJKYG9stWCHrBXkxfZhNtuFvYh6wSTYDRF747E0hQefL5HpFW490lQuUuc?=
 =?us-ascii?Q?3Qfv0QIeoRiLKs/HsghEyisV32GXlbDYvbxM5/MIytKHi9BFxjQn3SduyRJi?=
 =?us-ascii?Q?+2dpy1g/N5U26bhchd9l/1z+kDcOosyVFUXKZsgiBTJUH5ZFwM4DMrT0bmw9?=
 =?us-ascii?Q?NoHHyvuB4IZJsv4r8vDW1idkFSmrkgbPhhp783/vKW4Lw8kAGvsLc6A7e3+J?=
 =?us-ascii?Q?qIg9S57RaQchRL8pBWiuApUJGxz8J8xjxO9xsuZEOotxsoBb3snDij+rRGA/?=
 =?us-ascii?Q?GJeWVaJ0eDSTWaa3Qxp5Vnh0p1TZdBQkJd1Ziux6LqZtDQAVBMGUYGrZ59zp?=
 =?us-ascii?Q?AeTo3gY1PVoWViQLbgmKpUP0ivE4xj0C0YwXzrhtcMkzBXs1M+o/a4FaZnfD?=
 =?us-ascii?Q?xCUcbhQZXW04J8pRuSwswT3Hg8ijrafWlRlowbTYWsBRmxDch7dH6XNAizYj?=
 =?us-ascii?Q?8fWcpVRVXalAGIy5cJ7kNL3qkilvWhv9z5zW/0yV/zDuIGH9kjxucT0c6M/j?=
 =?us-ascii?Q?EKRCbY1p01iKEqfxT5jEHiwAEkDvzrttsrDrCuIl9Sgf3vgHlr6Hwhq2882A?=
 =?us-ascii?Q?XgEE6tVkHSWfP9iJ2tB9+I7ifCCarj4QQvb8YTbspwKLfVtsPIHAv+yY2vdP?=
 =?us-ascii?Q?hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7cf6dd9-9b90-43a4-ec5a-08daee46580c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 11:25:12.2907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YaF+f+cj8EbTMaXtnHUjAdfrXYlJUrgnkSp4M3/2hzXlBwvavZDS4zM216OKp2od5QGY3dEPTrFQobKpEi3sSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6794
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 04, 2023 at 10:14:54AM +0000, Tvrtko Ursulin wrote:
> 
> On 04/01/2023 09:53, Jani Nikula wrote:
> > On Mon, 02 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > Need to fill wired cmd in structures at a single place as they remain
> > > same for both gsc and mei.
> > 
> > I'm still opposed to adding this stuff to i915 and exporting the
> > symbols. Seems like it should be a separate component, because this is
> > not about i915.
> > 
> > Cc: other maintainers, please chime in.
> > 
> > > --v3
> > > -remove inline function from header [Jani]
> > > 
> > > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/Makefile              |   1 +
> > >   drivers/gpu/drm/i915/i915_hdcp_interface.c | 216 +++++++++++++++++++++
> > >   drivers/misc/mei/hdcp/mei_hdcp.c           | 153 ++-------------
> > >   include/drm/i915_hdcp_interface.h          |  39 ++++
> > >   4 files changed, 270 insertions(+), 139 deletions(-)
> > >   create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > 
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > index 461d6b40656d..c6a9826af58d 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -36,6 +36,7 @@ i915-y += i915_driver.o \
> > >   	  i915_drm_client.o \
> > >   	  i915_config.o \
> > >   	  i915_getparam.o \
> > > +	  i915_hdcp_interface.o\
> > >   	  i915_ioctl.o \
> > >   	  i915_irq.o \
> > >   	  i915_mitigations.o \
> > > diff --git a/drivers/gpu/drm/i915/i915_hdcp_interface.c b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > new file mode 100644
> > > index 000000000000..e6b787c2fa50
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > @@ -0,0 +1,216 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright 2022, Intel Corporation.
> > > + */
> > > +
> > > +#include <drm/i915_hdcp_interface.h>
> > > +
> > > +void
> > > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in *session_init_in,
> > > +			  struct hdcp_port_data *data)
> > > +{
> > > +	session_init_in->header.api_version = HDCP_API_VERSION;
> > > +	session_init_in->header.command_id = WIRED_INITIATE_HDCP2_SESSION;
> > > +	session_init_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	session_init_in->header.buffer_len =
> > > +				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > > +
> > > +	session_init_in->port.integrated_port_type = data->port_type;
> > > +	session_init_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	session_init_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +	session_init_in->protocol = data->protocol;
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_session_in);
> 
> I am not familiar enough with the problem space but this kind of trivial
> exported symbols definitely do not look like the best choice.
> 
> Presumably there are two kernel modules dealing with this HDCP protocol in
> which case would creating a kernel module like intel_hdcp, which would
> establish the protocol definitions and API to use it. I915 and any other
> module would then depend on that module and use it.
> 
> Presumably this is what Jani meant actually and that sounds like the exactly
> right direction to me. I just don't know enough about the scope of the
> protocol to propose anything more specific.

I'm also in favor of the separated module here. Eventually we will have to
use it in the new Xe driver as well.


> 
> Regards,
> 
> Tvrtko
> 
> > > +
> > > +void
> > > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in *verify_rxcert_in,
> > > +			 struct hdcp2_ake_send_cert *rx_cert,
> > > +			 struct hdcp_port_data *data)
> > > +{
> > > +	verify_rxcert_in->header.api_version = HDCP_API_VERSION;
> > > +	verify_rxcert_in->header.command_id = WIRED_VERIFY_RECEIVER_CERT;
> > > +	verify_rxcert_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	verify_rxcert_in->header.buffer_len =
> > > +				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > > +
> > > +	verify_rxcert_in->port.integrated_port_type = data->port_type;
> > > +	verify_rxcert_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	verify_rxcert_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	verify_rxcert_in->cert_rx = rx_cert->cert_rx;
> > > +	memcpy(verify_rxcert_in->r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > > +	memcpy(verify_rxcert_in->rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_rxcert_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in *send_hprime_in,
> > > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > > +			 struct hdcp_port_data *data)
> > > +{
> > > +	send_hprime_in->header.api_version = HDCP_API_VERSION;
> > > +	send_hprime_in->header.command_id = WIRED_AKE_SEND_HPRIME;
> > > +	send_hprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	send_hprime_in->header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > > +
> > > +	send_hprime_in->port.integrated_port_type = data->port_type;
> > > +	send_hprime_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	send_hprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	memcpy(send_hprime_in->h_prime, rx_hprime->h_prime,
> > > +	       HDCP_2_2_H_PRIME_LEN);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_hprime_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_in *pairing_info_in,
> > > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > > +			       struct hdcp_port_data *data)
> > > +{
> > > +	pairing_info_in->header.api_version = HDCP_API_VERSION;
> > > +	pairing_info_in->header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
> > > +	pairing_info_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	pairing_info_in->header.buffer_len =
> > > +				WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > > +
> > > +	pairing_info_in->port.integrated_port_type = data->port_type;
> > > +	pairing_info_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	pairing_info_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	memcpy(pairing_info_in->e_kh_km, pairing_info->e_kh_km,
> > > +	       HDCP_2_2_E_KH_KM_LEN);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_pairing_info_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_in *lc_init_in,
> > > +				 struct hdcp_port_data *data)
> > > +{
> > > +	lc_init_in->header.api_version = HDCP_API_VERSION;
> > > +	lc_init_in->header.command_id = WIRED_INIT_LOCALITY_CHECK;
> > > +	lc_init_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	lc_init_in->header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > > +
> > > +	lc_init_in->port.integrated_port_type = data->port_type;
> > > +	lc_init_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	lc_init_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_locality_check_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality_in *verify_lprime_in,
> > > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > > +				    struct hdcp_port_data *data)
> > > +{
> > > +	verify_lprime_in->header.api_version = HDCP_API_VERSION;
> > > +	verify_lprime_in->header.command_id = WIRED_VALIDATE_LOCALITY;
> > > +	verify_lprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	verify_lprime_in->header.buffer_len =
> > > +					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > > +
> > > +	verify_lprime_in->port.integrated_port_type = data->port_type;
> > > +	verify_lprime_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	verify_lprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	memcpy(verify_lprime_in->l_prime, rx_lprime->l_prime,
> > > +	       HDCP_2_2_L_PRIME_LEN);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_validate_locality_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in *get_skey_in,
> > > +			      struct hdcp_port_data *data)
> > > +{
> > > +	get_skey_in->header.api_version = HDCP_API_VERSION;
> > > +	get_skey_in->header.command_id = WIRED_GET_SESSION_KEY;
> > > +	get_skey_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	get_skey_in->header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > > +
> > > +	get_skey_in->port.integrated_port_type = data->port_type;
> > > +	get_skey_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	get_skey_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_session_key_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in *verify_repeater_in,
> > > +			   struct hdcp2_rep_send_receiverid_list *rep_topology,
> > > +			   struct hdcp_port_data *data)
> > > +{
> > > +	verify_repeater_in->header.api_version = HDCP_API_VERSION;
> > > +	verify_repeater_in->header.command_id = WIRED_VERIFY_REPEATER;
> > > +	verify_repeater_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	verify_repeater_in->header.buffer_len =
> > > +				WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > > +
> > > +	verify_repeater_in->port.integrated_port_type = data->port_type;
> > > +	verify_repeater_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	verify_repeater_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	memcpy(verify_repeater_in->rx_info, rep_topology->rx_info,
> > > +	       HDCP_2_2_RXINFO_LEN);
> > > +	memcpy(verify_repeater_in->seq_num_v, rep_topology->seq_num_v,
> > > +	       HDCP_2_2_SEQ_NUM_LEN);
> > > +	memcpy(verify_repeater_in->v_prime, rep_topology->v_prime,
> > > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > +	memcpy(verify_repeater_in->receiver_ids, rep_topology->receiver_ids,
> > > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_repeater_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_auth_stream_req_in(struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > > +				  struct hdcp2_rep_stream_ready *stream_ready, ssize_t cmd_size,
> > > +				  struct hdcp_port_data *data)
> > > +{
> > > +	verify_mprime_in->header.api_version = HDCP_API_VERSION;
> > > +	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
> > > +	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
> > > +
> > > +	verify_mprime_in->port.integrated_port_type = data->port_type;
> > > +	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +
> > > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
> > > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
> > > +
> > > +	memcpy(verify_mprime_in->streams, data->streams,
> > > +	       array_size(data->k, sizeof(*data->streams)));
> > > +
> > > +	verify_mprime_in->k = cpu_to_be16(data->k);
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_auth_stream_req_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in *enable_auth_in,
> > > +			      struct hdcp_port_data *data)
> > > +{
> > > +	enable_auth_in->header.api_version = HDCP_API_VERSION;
> > > +	enable_auth_in->header.command_id = WIRED_ENABLE_AUTH;
> > > +	enable_auth_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	enable_auth_in->header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > > +
> > > +	enable_auth_in->port.integrated_port_type = data->port_type;
> > > +	enable_auth_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	enable_auth_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +	enable_auth_in->stream_type = data->streams[0].stream_type;
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_enable_auth_in);
> > > +
> > > +void
> > > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in *session_close_in,
> > > +				struct hdcp_port_data *data)
> > > +{
> > > +	session_close_in->header.api_version = HDCP_API_VERSION;
> > > +	session_close_in->header.command_id = WIRED_CLOSE_SESSION;
> > > +	session_close_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > +	session_close_in->header.buffer_len =
> > > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > > +
> > > +	session_close_in->port.integrated_port_type = data->port_type;
> > > +	session_close_in->port.physical_port = (u8)data->hdcp_ddi;
> > > +	session_close_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > +}
> > > +EXPORT_SYMBOL(i915_hdcp_fill_close_session_in);
> > > +
> > > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> > > index d4faecbbbe76..2cf42e98dfae 100644
> > > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > > @@ -50,17 +50,7 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	session_init_in.header.api_version = HDCP_API_VERSION;
> > > -	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
> > > -	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	session_init_in.header.buffer_len =
> > > -				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > > -
> > > -	session_init_in.port.integrated_port_type = data->port_type;
> > > -	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -	session_init_in.protocol = data->protocol;
> > > -
> > > +	i915_hdcp_fill_session_in(&session_init_in, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&session_init_in,
> > >   			      sizeof(session_init_in));
> > >   	if (byte < 0) {
> > > @@ -119,21 +109,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> > >   		return -EINVAL;
> > >   	cldev = to_mei_cl_device(dev);
> > > -
> > > -	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
> > > -	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
> > > -	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	verify_rxcert_in.header.buffer_len =
> > > -				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > > -
> > > -	verify_rxcert_in.port.integrated_port_type = data->port_type;
> > > -	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
> > > -	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > > -	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
> > > -
> > > +	i915_hdcp_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&verify_rxcert_in,
> > >   			      sizeof(verify_rxcert_in));
> > >   	if (byte < 0) {
> > > @@ -192,18 +168,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	send_hprime_in.header.api_version = HDCP_API_VERSION;
> > > -	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
> > > -	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > > -
> > > -	send_hprime_in.port.integrated_port_type = data->port_type;
> > > -	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > > -	       HDCP_2_2_H_PRIME_LEN);
> > > -
> > > +	i915_hdcp_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&send_hprime_in,
> > >   			      sizeof(send_hprime_in));
> > >   	if (byte < 0) {
> > > @@ -248,20 +213,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
> > >   		return -EINVAL;
> > >   	cldev = to_mei_cl_device(dev);
> > > -
> > > -	pairing_info_in.header.api_version = HDCP_API_VERSION;
> > > -	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
> > > -	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	pairing_info_in.header.buffer_len =
> > > -					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > > -
> > > -	pairing_info_in.port.integrated_port_type = data->port_type;
> > > -	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > > -	       HDCP_2_2_E_KH_KM_LEN);
> > > -
> > > +	i915_hdcp_fill_pairing_info_in(&pairing_info_in, pairing_info,
> > > +				       data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&pairing_info_in,
> > >   			      sizeof(pairing_info_in));
> > >   	if (byte < 0) {
> > > @@ -309,15 +262,7 @@ mei_hdcp_initiate_locality_check(struct device *dev,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	lc_init_in.header.api_version = HDCP_API_VERSION;
> > > -	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
> > > -	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > > -
> > > -	lc_init_in.port.integrated_port_type = data->port_type;
> > > -	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > +	i915_hdcp_fill_locality_check_in(&lc_init_in, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
> > >   	if (byte < 0) {
> > >   		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
> > > @@ -364,19 +309,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	verify_lprime_in.header.api_version = HDCP_API_VERSION;
> > > -	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
> > > -	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	verify_lprime_in.header.buffer_len =
> > > -					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > > -
> > > -	verify_lprime_in.port.integrated_port_type = data->port_type;
> > > -	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > > -	       HDCP_2_2_L_PRIME_LEN);
> > > -
> > > +	i915_hdcp_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> > > +					    data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&verify_lprime_in,
> > >   			      sizeof(verify_lprime_in));
> > >   	if (byte < 0) {
> > > @@ -423,15 +357,7 @@ static int mei_hdcp_get_session_key(struct device *dev,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	get_skey_in.header.api_version = HDCP_API_VERSION;
> > > -	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
> > > -	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > > -
> > > -	get_skey_in.port.integrated_port_type = data->port_type;
> > > -	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > +	i915_hdcp_fill_session_key_in(&get_skey_in, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
> > >   	if (byte < 0) {
> > >   		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
> > > @@ -487,25 +413,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	verify_repeater_in.header.api_version = HDCP_API_VERSION;
> > > -	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
> > > -	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	verify_repeater_in.header.buffer_len =
> > > -					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > > -
> > > -	verify_repeater_in.port.integrated_port_type = data->port_type;
> > > -	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > > -	       HDCP_2_2_RXINFO_LEN);
> > > -	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> > > -	       HDCP_2_2_SEQ_NUM_LEN);
> > > -	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > > -	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > -	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> > > -	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > > -
> > > +	i915_hdcp_fill_repeater_in(&verify_repeater_in, rep_topology, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&verify_repeater_in,
> > >   			      sizeof(verify_repeater_in));
> > >   	if (byte < 0) {
> > > @@ -566,23 +474,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
> > >   	if (!verify_mprime_in)
> > >   		return -ENOMEM;
> > > -	verify_mprime_in->header.api_version = HDCP_API_VERSION;
> > > -	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
> > > -	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
> > > -
> > > -	verify_mprime_in->port.integrated_port_type = data->port_type;
> > > -	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
> > > -	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > -	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
> > > -	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
> > > -
> > > -	memcpy(verify_mprime_in->streams, data->streams,
> > > -	       array_size(data->k, sizeof(*data->streams)));
> > > -
> > > -	verify_mprime_in->k = cpu_to_be16(data->k);
> > > -
> > > +	i915_hdcp_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> > > +					  cmd_size, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)verify_mprime_in, cmd_size);
> > >   	kfree(verify_mprime_in);
> > >   	if (byte < 0) {
> > > @@ -628,16 +521,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
> > >   	cldev = to_mei_cl_device(dev);
> > > -	enable_auth_in.header.api_version = HDCP_API_VERSION;
> > > -	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
> > > -	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > > -
> > > -	enable_auth_in.port.integrated_port_type = data->port_type;
> > > -	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -	enable_auth_in.stream_type = data->streams[0].stream_type;
> > > -
> > > +	i915_hdcp_fill_enable_auth_in(&enable_auth_in, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&enable_auth_in,
> > >   			      sizeof(enable_auth_in));
> > >   	if (byte < 0) {
> > > @@ -682,16 +566,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
> > >   	cldev = to_mei_cl_device(dev);
> > > -	session_close_in.header.api_version = HDCP_API_VERSION;
> > > -	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
> > > -	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
> > > -	session_close_in.header.buffer_len =
> > > -				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > > -
> > > -	session_close_in.port.integrated_port_type = data->port_type;
> > > -	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
> > > -	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> > > -
> > > +	i915_hdcp_fill_close_session_in(&session_close_in, data);
> > >   	byte = mei_cldev_send(cldev, (u8 *)&session_close_in,
> > >   			      sizeof(session_close_in));
> > >   	if (byte < 0) {
> > > diff --git a/include/drm/i915_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
> > > index a92925cd1eae..9952bf78d4f7 100644
> > > --- a/include/drm/i915_hdcp_interface.h
> > > +++ b/include/drm/i915_hdcp_interface.h
> > > @@ -536,4 +536,43 @@ struct wired_cmd_repeater_auth_stream_req_out {
> > >   	struct hdcp_port_id	port;
> > >   } __packed;
> > > +void
> > > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in *session_init_in,
> > > +			  struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in *verify_rxcert_in,
> > > +			 struct hdcp2_ake_send_cert *rx_cert,
> > > +			 struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in *send_hprime_in,
> > > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > > +			 struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_in *pairing_info_in,
> > > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > > +			       struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_in *lc_init_in,
> > > +				 struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality_in *verify_lprime_in,
> > > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > > +				    struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in *get_skey_in,
> > > +			      struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in *verify_repeater_in,
> > > +			   struct hdcp2_rep_send_receiverid_list *rep_topology,
> > > +			   struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_auth_stream_req_in(struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > > +				  struct hdcp2_rep_stream_ready *stream_ready, ssize_t cmd_size,
> > > +				  struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in *enable_auth_in,
> > > +			      struct hdcp_port_data *data);
> > > +void
> > > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in *session_close_in,
> > > +				struct hdcp_port_data *data);
> > >   #endif /* _I915_HDCP_INTERFACE_H_ */
> > 
