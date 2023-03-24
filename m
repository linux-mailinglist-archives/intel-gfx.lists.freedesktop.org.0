Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A85C16C8712
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 21:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22DBB10E1DA;
	Fri, 24 Mar 2023 20:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F2910E1DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 20:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679691084; x=1711227084;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yhLQyAITfzQF/ZO8rBueNPpExB8vlpyuvWIHa2l9urs=;
 b=Y5KmbRLNNPGb1r12TsUuXH7ixHgeAIdmIIHNXyoJ49AN/EBpMZ/ttrDY
 xGlu6kHJDuhBD/nXqV+wY9vaTsMMdgPwvwjjfVns6+0M/pSKPa/pTpkQo
 GxdkJiYxkeZZQoAs2cG7c4TkHHvS8Lmjnm0VS+PgfZFq952Fz6PO5E3Yl
 0wuQKx0YO1jWhtC8wrZGD+CLWIsAz+QNvJrHiNL1xptdYCn2U6hEqZdkZ
 FtBV58sow98ltEoULuHHKCsieT/Uwp2oDR8bWR5U8ELoVJBBrM+DBdUOq
 pRP4iNqDnRVe7pj66SpccdVooCTebolFkUyCXPKfrJkKgaQZWNkPuRHkO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="323765211"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="323765211"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 13:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="928791232"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="928791232"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2023 13:51:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 13:51:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 13:51:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 13:51:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 13:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYsjkzura9B9l5UtEZNg2PuQ1+oUUe+yHq0wy2WbJfj+ZkvsPkhFNknq5PegBpyfhFv7bRJxH3kW2pKmvqzJQKNb2615JvT1eRVUHA026Fse35590Nsn8heBXk4fstoQYLV87Jaalbwf/Uppiof8PgwBHTSkEecA+D5ON649tNdKXdt3c/XBKsQyY8+MkiTsNLGEaxsn7Mh77uRm3G/aQ5b+7NUSsoc8go4VP7Y6ZQk8aUzFeJzGr1a3XW85LovA67mwjtgEEA3cprJAICk7KQl0Da/wptLsxvMdcD63+HulFIPs5jwSEzchR4qekMSm6RzAOHuWNcikTHBmSSrPbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSzyfA/Tkmae1Tj7OD2c43oRS0nE5y5jHkqi2Er4CWU=;
 b=RmIimyMByiZKdstMIwXMW5EtUDtthBs093bgWxPgZQfIfLRMSgZMraGiAnQ195LwuaVzfFbNyyx4nmlnbDvLa87pCEIhYvzA5Z7lHtDBz4ELYBlE8F/8+JKZC1LhDt/cfClAmhFGk4oSJysQ5DvievxwiwEj7qF6yf8S+OmCMf0HMF5ysTccSIxx5Fg14JNJnJQsir9sMLCMZQYsmN6dObojdUDUnnjFdJ4S7dDDirhEdNXU5SBz6roj6r71empTER/t0phBV7CAVOhFVDOj3qF0vzLH/cPjp9gL6TrOrhD4ZDFZN1n9CwxMBhqSF9zAO8pZqj7UwjX0aLXONFvdxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB7960.namprd11.prod.outlook.com (2603:10b6:8:fe::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Fri, 24 Mar
 2023 20:51:19 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 20:51:18 +0000
Date: Fri, 24 Mar 2023 17:51:11 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20230324205111.z5mwl7nq4b2bpdtm@gjsousa-mobl2>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-10-mika.kahola@intel.com>
 <20230207165419.iwlh3dktguorr3lj@gjsousa-mobl2>
 <MW4PR11MB705480CA1AA600890E57F1D4EFAB9@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <MW4PR11MB705480CA1AA600890E57F1D4EFAB9@MW4PR11MB7054.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY3PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:254::35) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB7960:EE_
X-MS-Office365-Filtering-Correlation-Id: 20e489c2-6438-457b-c4f3-08db2ca983db
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 09COdCLDsVm8elz2/ROFO2c2QVOjmF3RQMnyV06nVrMFpupIJAcEAfDAiVdXmWjux1HBqHWBgYvDgpntIUULrfyuR401DCPT5axX/4wjElMMFAkw+b4rkvGILp+vZ34g35Vf4xd70vnypeO5pg78xwZcXnMcTqpOnRZkZroTG4c5Wa+4tkok4fK8W/2utNNu6VhmsdcDt7bJ1KRyWuBzt/POhOIRj3JkjBlNs7cfuhEjy3E0QV0onkqT+rgcDzkppCOc78tydDg6ftrojtfay5d0Ivo0caIYhuK0Fok0npURw9X7clj1EJDQ3RhksUsxqJQ427P+VkrjGsl/XsFFL3/D9q0vidX3cn5tTyKmotLhFwBUF24joEJBjHuBxmVqRR6BVKusvmHHSkTcCnlVXtJv0ETaT6zinDJ+DS/ZvCm92mgDeon1RZnxxryTIFsnyt9rMr3IwW4M9Ss8baJ4fJlhRPpxt8R9mACM9vL0t06yNddqvuk9DS340HNd7x+w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(346002)(396003)(39860400002)(136003)(451199021)(6486002)(8676002)(966005)(83380400001)(4326008)(53546011)(6666004)(110136005)(1076003)(26005)(6512007)(6506007)(8936002)(186003)(66476007)(478600001)(9686003)(33716001)(86362001)(66556008)(66946007)(2906002)(38100700002)(82960400001)(316002)(44832011)(41300700001)(5660300002)(107886003)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vvlnpTh6I5Dz3qsxIQTagfe0oQ7jxkJjqwP+jAnRgFYqXehXB/yJtJQ8pqEg?=
 =?us-ascii?Q?dxNudbqjqVDiuLC3b44KIh8dLR487HDL09vRPu0IL4mxR1SaAPFTyyb6k/YD?=
 =?us-ascii?Q?MS9LY61FKKODCGoYVVvfIH5IRao/PfL9S17rFllsQ0PZ5cNaVBydEbGpJtjN?=
 =?us-ascii?Q?6DL+EFE7dHm/RUWokeKDxd7fBEu+e/r3hL7fSU22SdJe3xxZvFoU8OROYQdQ?=
 =?us-ascii?Q?aNut+YXrJIvMKdcRDIjWQf1DeMs1PW0mZIgE0YQTeAawMXYCNUyGLYSA0GPY?=
 =?us-ascii?Q?4z3ejHQMZ7j3XkQmcsp0Q68CKcKVAbUrxP1VubCxc6yOF6ppdNOk+iSnP9V4?=
 =?us-ascii?Q?HYb0iqOk8Ntm6bVbtQutJzGRnMsnty/bgmaOpbYwsdrRoAWJ1RSoiF8Xyv4P?=
 =?us-ascii?Q?SbGeTPxIussy6CCGuvUdefl/nnNKU9Xq4IM4o73eBIjk80JoD8LGYYYKwnY7?=
 =?us-ascii?Q?zesjC/75wmzRPP8PW7UZTHGhCsxSIN1y+HsrE0aHAzuJ4Ua4oiBwFx15W44u?=
 =?us-ascii?Q?JtB769Qw4L5sJlSFACOjZlU4t6mSpIMoCW1wX+Ff1zXGESaHmHUx1LYOtQDg?=
 =?us-ascii?Q?IZOJfDsVapD6HKPgLcCaztd59gj79MtO1WpoMkZkw+1KN0Lk5Rgs6jNbbY5S?=
 =?us-ascii?Q?iJUz75xy6vDdg/6FcnspEnxIIfdsCuyRyX4fmyZnf/Mt2DTGOFXfLI+YyUAb?=
 =?us-ascii?Q?zpd2LJnlTfZKVIynGzfJSVBqRuoW/XVjspvj+8+tz/VJWJgyh6DrrDvcBAH5?=
 =?us-ascii?Q?Izvv1Xf0gIMXkmw5PbOV4BLFfNF72ru2GuynzJ/GAZ2+LlrFFGpdkwLJFdZ6?=
 =?us-ascii?Q?ahrRXdmYlDmFTWfY45hQkZHd9Qz662U5QHfnvEppBvlAxIdLnu/R/roGhgRy?=
 =?us-ascii?Q?D2pZD7l/dTd3pHvO49p6F8GBwd/y0g9dxLcce3CnoWFx12/BcnNeE3Mim6R4?=
 =?us-ascii?Q?0RSF19pzM5V6APGDTh3XiGwfIwUHa8nFj4jRw7JKyhp8NBBjB3vUKygnD6SB?=
 =?us-ascii?Q?OqC3VNkxFEAXVFQsrOD0cQrhBQlFrI7d0hqvpzeHkS06n7B5IjSxZF0KDAof?=
 =?us-ascii?Q?hn4N9pEa/vrM5Pv1sdsDBx7kgcAlWHQtylzcsSErqlDm3pZU+eDDxuwRsMq+?=
 =?us-ascii?Q?7iB2nq3J4uoukxxtgjdktlKaH9BdeAgTXoK3vbAOMPaHmQy0NC7P6Qqe138W?=
 =?us-ascii?Q?OlRIwS0/++pxqpq9w0PlDOLxq6qir+kYwwAuhiOew2ehCEFX076hunF8X7lN?=
 =?us-ascii?Q?LmVwG/FTWWI4F3PzVhuSnPu1PNsdrNKbbnTM9QERzry8anUsWV7e09C8WA6s?=
 =?us-ascii?Q?GD29n/KbFmXzNRjU0MGPx2fXyoIbEbL/mYrdRPNc69J/ik2u9PNCTxQNOdWm?=
 =?us-ascii?Q?P5EhJesudzwCpPnzVMvOZJ4hetjG9JlWSRI4q6A9jfZjI1XhQjc+6EZUC3FT?=
 =?us-ascii?Q?Jx/ck4KhNfbl6qmJm886cFY8zKJIHRDV2EuYqv2tcUZIJV+R+X0zKVU2ATGC?=
 =?us-ascii?Q?kBGcxUscFLpe4+gZTktvfjBg3lF7WIIiZvD4yDL9kUzXb/gfFz8cztr7Xeqh?=
 =?us-ascii?Q?qKg192sAn0sGqJMhtLm+ii8ZpvAI6CHvwuKvw6LV4ogjH1acBBZbv20NJHn7?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20e489c2-6438-457b-c4f3-08db2ca983db
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 20:51:18.3088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ugG3YwDaY5y9LTQfbkHD2624Ck2uqYKEhtyagtoiHfyIWAATN6obrYSc12H6gzrSDRl6yUFd1x50V733XP1WXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7960
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 09/21] drm/i915/mtl: C20 HW readout
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 23, 2023 at 06:47:27AM -0300, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Sousa, Gustavo <gustavo.sousa@intel.com>
> > Sent: Tuesday, February 7, 2023 6:54 PM
> > To: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v2 09/21] drm/i915/mtl: C20 HW readout
> > 
> > On Thu, Jan 05, 2023 at 02:54:34PM +0200, Mika Kahola wrote:
> > > Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
> > > The PLL settings are based on table, not for algorithmic alternative.
> > > For DP 1.4 only MPLLB is in use.
> > >
> > > Once register settings are done, we read back C20 HW state.
> > >
> > > BSpec: 64568
> > >
> > > v2: Update rbr, hbr1, hbr2, and hbr3 pll configurations 4 and 5
> > >     based on changes in BSpec consolidated table
> > >
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > Link:
> > > https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-10
> > > -mika.kahola@intel.com
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 495
> > > ++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_cx0_phy.h |  10 +-
> > >  drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c    |   6 +-
> > >  drivers/gpu/drm/i915/display/intel_hdmi.h    |   1 +
> > >  5 files changed, 513 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index 022888050a68..285e4cdd23eb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -11,6 +11,7 @@
> > >  #include "intel_de.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_dp.h"
> > > +#include "intel_hdmi.h"
> > >  #include "intel_panel.h"
> > >  #include "intel_psr.h"
> > >  #include "intel_uncore.h"
> > > @@ -247,6 +248,23 @@ static void intel_c20_write(struct drm_i915_private
> > *i915, enum port port,
> > >  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff,
> > > 1);  }
> > >
> > > +static u16 intel_c20_read(struct drm_i915_private *i915, enum port port,
> > > +                          int lane, u16 addr)
> > 
> > Similar to my comment for intel_c20_write(), I think it would be better to name
> > this function intel_c20_sram_read().
> 
> We can rename these read/writes differently.
> > 
> > Also, this function is indented with spaces instead of tabs.
> This comes from copy-paste error. Thanks for spotting!
> 
> > 
> > > +{
> > > +       u16 val;
> > > +
> > > +       assert_dc_off(i915);
> > > +
> > > +       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff,
> > 0);
> > > +       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr
> > > + >> 8) & 0xff, 1);
> > 
> > Looks like the 0xff maks is unnecessary here.
> Ok.
> 
> > 
> > Also, does the byte order matter here? The diagram for the read operation in
> > the BSpec suggests writing the higher part of the address first and then the
> > lower part.
> I don't think it matters here but to be aligned with the spec we could swap these writes.
> 
> > 
> > > +
> > > +       val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
> > > +       val <<= 8;
> > > +       val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
> > > +
> > > +        return val;
> > > +}
> > > +
> > >  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
> > >  			    int lane, u16 addr, u8 clear, u8 set, bool committed)  {
> > @@
> > > -588,6 +606,192 @@ static const struct intel_c10mpllb_state * const
> > mtl_c10_edp_tables[] = {
> > >  	NULL,
> > >  };
> > >
> > > +/* C20 basic DP 1.4 tables */
> > > +static const struct intel_c20pll_state mtl_c20_dp_rbr = {
> > > +	.clock = 162000,
> > > +	.tx = {	0xbe88, /* tx cfg0 */
> > > +		0x5800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mpllb = { 0x50a8,	/* mpllb cfg0 */
> > > +		0x2120,		/* mpllb cfg1 */
> > > +		0xcd9a,		/* mpllb cfg2 */
> > > +		0xbfc1,		/* mpllb cfg3 */
> > > +		0x5ab8,         /* mpllb cfg4 */
> > > +		0x4c34,         /* mpllb cfg5 */
> > > +		0x2000,		/* mpllb cfg6 */
> > > +		0x0001,		/* mpllb cfg7 */
> > > +		0x6000,		/* mpllb cfg8 */
> > > +		0x0000,		/* mpllb cfg9 */
> > > +		0x0000,		/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
> > > +	.clock = 270000,
> > > +	.tx = {	0xbe88, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mpllb = { 0x308c,	/* mpllb cfg0 */
> > > +		0x2110,		/* mpllb cfg1 */
> > > +		0xcc9c,		/* mpllb cfg2 */
> > > +		0xbfc1,		/* mpllb cfg3 */
> > > +		0x489a,         /* mpllb cfg4 */
> > > +		0x3f81,         /* mpllb cfg5 */
> > > +		0x2000,		/* mpllb cfg6 */
> > > +		0x0001,		/* mpllb cfg7 */
> > > +		0x5000,		/* mpllb cfg8 */
> > > +		0x0000,		/* mpllb cfg9 */
> > > +		0x0000,		/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
> > > +	.clock = 540000,
> > > +	.tx = {	0xbe88, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mpllb = { 0x108c,	/* mpllb cfg0 */
> > > +		0x2108,		/* mpllb cfg1 */
> > > +		0xcc9c,		/* mpllb cfg2 */
> > > +		0xbfc1,		/* mpllb cfg3 */
> > > +		0x489a,         /* mpllb cfg4 */
> > > +		0x3f81,         /* mpllb cfg5 */
> > > +		0x2000,		/* mpllb cfg6 */
> > > +		0x0001,		/* mpllb cfg7 */
> > > +		0x5000,		/* mpllb cfg8 */
> > > +		0x0000,		/* mpllb cfg9 */
> > > +		0x0000,		/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
> > > +	.clock = 810000,
> > > +	.tx = {	0xbe88, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mpllb = { 0x10d2,	/* mpllb cfg0 */
> > > +		0x2108,		/* mpllb cfg1 */
> > > +		0x8d98,		/* mpllb cfg2 */
> > > +		0xbfc1,		/* mpllb cfg3 */
> > > +		0x7166,         /* mpllb cfg4 */
> > > +		0x5f42,         /* mpllb cfg5 */
> > > +		0x2000,		/* mpllb cfg6 */
> > > +		0x0001,		/* mpllb cfg7 */
> > > +		0x7800,		/* mpllb cfg8 */
> > > +		0x0000,		/* mpllb cfg9 */
> > > +		0x0000,		/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +/* C20 basic DP 2.0 tables */
> > > +static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
> > > +	.clock = 312500,
> > > +	.tx = {	0xbe21, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mplla = { 0x3104,	/* mplla cfg0 */
> > > +		0xd105,		/* mplla cfg1 */
> > > +		0xc025,		/* mplla cfg2 */
> > > +		0xc025,		/* mplla cfg3 */
> > > +		0xa6ab,		/* mplla cfg4 */
> > > +		0x8c00,		/* mplla cfg5 */
> > > +		0x4000,		/* mplla cfg6 */
> > > +		0x0003,		/* mplla cfg7 */
> > > +		0x3555,		/* mplla cfg8 */
> > > +		0x0001,		/* mplla cfg9 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
> > > +	.clock = 421875,
> > > +	.tx = {	0xbea0, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mpllb = { 0x015f,	/* mpllb cfg0 */
> > > +		0x2205,		/* mpllb cfg1 */
> > > +		0x1b17,		/* mpllb cfg2 */
> > > +		0xffc1,		/* mpllb cfg3 */
> > > +		0xe100,		/* mpllb cfg4 */
> > > +		0xbd00,		/* mpllb cfg5 */
> > > +		0x2000,		/* mpllb cfg6 */
> > > +		0x0001,		/* mpllb cfg7 */
> > > +		0x4800,		/* mpllb cfg8 */
> > > +		0x0000,		/* mpllb cfg9 */
> > > +		0x0000,		/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
> > > +	.clock = 625000,
> > > +	.tx = {	0xbe20, /* tx cfg0 */
> > > +		0x4800, /* tx cfg1 */
> > > +		0x0000, /* tx cfg2 */
> > > +		},
> > > +	.cmn = {0x0500, /* cmn cfg0*/
> > > +		0x0005, /* cmn cfg1 */
> > > +		0x0000, /* cmn cfg2 */
> > > +		0x0000, /* cmn cfg3 */
> > > +		},
> > > +	.mplla = { 0x3104,	/* mplla cfg0 */
> > > +		0xd105,		/* mplla cfg1 */
> > > +		0xc025,		/* mplla cfg2 */
> > > +		0xc025,		/* mplla cfg3 */
> > > +		0xa6ab,		/* mplla cfg4 */
> > > +		0x8c00,		/* mplla cfg5 */
> > > +		0x4000,		/* mplla cfg6 */
> > > +		0x0003,		/* mplla cfg7 */
> > > +		0x3555,		/* mplla cfg8 */
> > > +		0x0001,		/* mplla cfg9 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
> > > +        &mtl_c20_dp_rbr,
> > > +        &mtl_c20_dp_hbr1,
> > > +        &mtl_c20_dp_hbr2,
> > > +        &mtl_c20_dp_hbr3,
> > > +	&mtl_c20_dp_uhbr10,
> > > +	&mtl_c20_dp_uhbr13_5,
> > > +	&mtl_c20_dp_uhbr20,
> > > +        NULL,
> > > +};
> > > +
> > >  /*
> > >   * HDMI link rates with 38.4 MHz reference clock.
> > >   */
> > > @@ -1115,7 +1319,181 @@ static const struct intel_c10mpllb_state * const
> > mtl_c10_hdmi_tables[] = {
> > >  	NULL,
> > >  };
> > >
> > > -int intel_c10_phy_check_hdmi_link_rate(int clock)
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
> > > +	.clock = 25175,
> > > +	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
> > > +		   0x7d80,	/* mpllb cfg1 */
> > > +		   0x0906,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x0200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x0000,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0001,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
> > > +	.clock = 27000,
> > > +	.mpllb = { 0xa0e0,	/* mpllb cfg0 */
> > > +		   0x7d80,	/* mpllb cfg1 */
> > > +		   0x0906,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x8000,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0001,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
> > > +	.clock = 74250,
> > > +	.mpllb = { 0x609a,	/* mpllb cfg0 */
> > > +		   0x7d40,	/* mpllb cfg1 */
> > > +		   0xca06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x5800,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0001,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
> > > +	.clock = 148500,
> > > +	.mpllb = { 0x409a,	/* mpllb cfg0 */
> > > +		   0x7d20,	/* mpllb cfg1 */
> > > +		   0xca06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x5800,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0001,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
> > > +	.clock = 594000,
> > > +	.mpllb = { 0x009a,	/* mpllb cfg0 */
> > > +		   0x7d08,	/* mpllb cfg1 */
> > > +		   0xca06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x5800,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0001,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
> > > +	.clock = 166670,
> > > +	.mpllb = { 0x209c,	/* mpllb cfg0 */
> > > +		   0x7d10,	/* mpllb cfg1 */
> > > +		   0xca06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x2000,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0004,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
> > > +	.clock = 333330,
> > > +	.mpllb = { 0x009c,	/* mpllb cfg0 */
> > > +		   0x7d08,	/* mpllb cfg1 */
> > > +		   0xca06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x2000,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0004,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
> > > +	.clock = 444440,
> > > +	.mpllb = { 0x00d0,	/* mpllb cfg0 */
> > > +		   0x7d08,	/* mpllb cfg1 */
> > > +		   0x4a06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0003,	/* mpllb cfg7 */
> > > +		   0x2aaa,	/* mpllb cfg8 */
> > > +		   0x0002,	/* mpllb cfg9 */
> > > +		   0x0004,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
> > > +	.clock = 555560,
> > > +	.mpllb = { 0x1104,	/* mpllb cfg0 */
> > > +		   0x7d08,	/* mpllb cfg1 */
> > > +		   0x0a06,	/* mpllb cfg2 */
> > > +		   0xbe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0003,	/* mpllb cfg7 */
> > > +		   0x3555,	/* mpllb cfg8 */
> > > +		   0x0001,	/* mpllb cfg9 */
> > > +		   0x0004,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
> > > +	.clock = 666670,
> > > +	.mpllb = { 0x0138,	/* mpllb cfg0 */
> > > +		   0x7d08,	/* mpllb cfg1 */
> > > +		   0x5486,	/* mpllb cfg2 */
> > > +		   0xfe40,	/* mpllb cfg3 */
> > > +		   0x0000,	/* mpllb cfg4 */
> > > +		   0x0000,	/* mpllb cfg5 */
> > > +		   0x2200,	/* mpllb cfg6 */
> > > +		   0x0001,	/* mpllb cfg7 */
> > > +		   0x4000,	/* mpllb cfg8 */
> > > +		   0x0000,	/* mpllb cfg9 */
> > > +		   0x0004,	/* mpllb cfg10 */
> > > +		},
> > > +};
> > > +
> > > +static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
> > > +	&mtl_c20_hdmi_25_175,
> > > +	&mtl_c20_hdmi_27_0,
> > > +	&mtl_c20_hdmi_74_25,
> > > +	&mtl_c20_hdmi_148_5,
> > > +	&mtl_c20_hdmi_594,
> > > +	&mtl_c20_hdmi_300,
> > > +	&mtl_c20_hdmi_600,
> > > +	&mtl_c20_hdmi_800,
> > > +	&mtl_c20_hdmi_1000,
> > > +	&mtl_c20_hdmi_1200,
> > > +	NULL,
> > > +};
> > > +
> > > +static int intel_c10_phy_check_hdmi_link_rate(int clock)
> > >  {
> > >  	const struct intel_c10mpllb_state * const *tables =
> > mtl_c10_hdmi_tables;
> > >  	int i;
> > > @@ -1128,6 +1506,17 @@ int intel_c10_phy_check_hdmi_link_rate(int clock)
> > >  	return MODE_CLOCK_RANGE;
> > >  }
> > >
> > > +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int
> > > +clock) {
> > > +	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
> > > +	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
> > > +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> > > +
> > > +	if (intel_is_c10phy(i915, phy))
> > > +		return intel_c10_phy_check_hdmi_link_rate(clock);
> > > +	return intel_c20_phy_check_hdmi_link_rate(clock);
> > > +}
> > > +
> > >  static const struct intel_c10mpllb_state * const *
> > > intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
> > >  			   struct intel_encoder *encoder)
> > > @@ -1312,6 +1701,53 @@ void intel_c10mpllb_dump_hw_state(struct
> > drm_i915_private *dev_priv,
> > >  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> > }
> > >
> > > +int intel_c20_phy_check_hdmi_link_rate(int clock) {
> > > +        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
> > > +        int i;
> > > +
> > > +        for (i = 0; tables[i]; i++) {
> > > +                if (clock == tables[i]->clock)
> > > +                        return MODE_OK;
> > > +        }
> > > +
> > > +        return MODE_CLOCK_RANGE;
> > > +}
> > > +
> > > +static const struct intel_c20pll_state * const *
> > > +intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> > > +			 struct intel_encoder *encoder)
> > > +{
> > > +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> > > +		return mtl_c20_dp_tables;
> > > +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > > +		return mtl_c20_hdmi_tables;
> > > +	}
> > > +
> > > +	MISSING_CASE(encoder->type);
> > > +	return NULL;
> > > +}
> > > +
> > > +int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> > > +	                    struct intel_encoder *encoder)
> > 
> > Looks like this function should be static: the only user is intel_cx0_phy.c.
> > 
> > > +{
> > > +	const struct intel_c20pll_state * const *tables;
> > > +	int i;
> > > +
> > > +	tables = intel_c20_pll_tables_get(crtc_state, encoder);
> > > +	if (!tables)
> > > +		return -EINVAL;
> > > +
> > > +	for (i = 0; tables[i]; i++) {
> > > +		if (crtc_state->port_clock <= tables[i]->clock) {
> > > +			crtc_state->cx0pll_state.c20pll_state = *tables[i];
> > > +			return 0;
> > > +		}
> > > +	}
> > > +
> > > +	return -EINVAL;
> > > +}
> > > +
> > >  static bool intel_c20_use_mplla(u32 clock)  {
> > >  	/* 10G and 20G rates use MPLLA */
> > > @@ -1321,6 +1757,63 @@ static bool intel_c20_use_mplla(u32 clock)
> > >  	return false;
> > >  }
> > >
> > > +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> > > +				   struct intel_c20pll_state *pll_state) {
> > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > +	bool cntx, use_mplla;
> > > +	u32 val;
> > > +	int i;
> > > +
> > > +        /* 1. Read current context selection */
> > > +        cntx = intel_cx0_read(i915, encoder->port, 0,
> > > + PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> > > +
> > > +	/* Read Tx configuration */
> > > +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> > > +		if (cntx)
> > > +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
> > > +
> > PHY_C20_B_TX_CNTX_CFG(i));
> > > +		else
> > > +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
> > > +
> > PHY_C20_A_TX_CNTX_CFG(i));
> > > +	}
> > > +
> > > +	/* Read common configuration */
> > > +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> > > +		if (cntx)
> > > +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port,
> > 0,
> > > +
> > PHY_C20_B_CMN_CNTX_CFG(i));
> > > +		else
> > > +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port,
> > 0,
> > > +
> > PHY_C20_A_CMN_CNTX_CFG(i));
> > > +	}
> > > +
> > > +	val = intel_c20_read(i915, encoder->port, 0,
> > PHY_C20_A_MPLLA_CNTX_CFG(6));
> > > +	use_mplla = val & C20_MPLLB_FRACEN;
> > 
> > Some questions about this:
> > 
> >   1. This is hardcoded to read from context A. Shouldn't we read from the
> >      current context?
> > 
> >   2. s/C20_MPLLB_FRACEN/C20_MPLLA_FRACEN/ ?
> The both uses the same bit 13 for frac_en. Maybe just renaming differently C10_MPLLx_FRACEN?
> 
> > 
> >   3. When we are programming PLL for MPLLB, we are not clearing
> >      PHY_C20_A_MPLLA_CNTX_CFG(6). Wouldn't this be problematic if MPLLB is
> > the
> >      current one in use MPLLB but MPLLA was already used in a previous
> >      configuration?
> Do you mean this when we are switching the context? In this case, as far as I have understood the spec, we wouldn't need to clear previous configuration.

Hi, Mika. Sorry to taking so long to reply!

What I mean is as follows. Consider the sequence of events below for an example:

  1. For a certain PLL programming, context A was used and MPLLA was selected.
  2. For a new PLL programming, context B is used and we are not clearing
     PHY_C20_A_MPLLA_CNTX_CFG(6).
  3. Context A is used again for the next PLL programming, but this time MPLLB
     is selected.

My concern is the following: *If* PHY_C20_A_MPLLA_CNTX_CFG(6) is not
automatically cleared by the hardware in event (2), then after (3) this function
would still think the current configuration is using MPLLA while it is in fact
using MPLLB.

Now, if we have guarantee that PHY_C20_A_MPLLA_CNTX_CFG(6) is reset
automatically when we switch to context B, then we wouldn't have to worry here.

--
Gustavo Sousa

> 
> > 
> > > +
> > > +	if (use_mplla) {
> > > +		/* MPLLA configuration */
> > > +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> > > +			if (cntx)
> > > +				pll_state->mplla[i] = intel_c20_read(i915,
> > encoder->port, 0,
> > > +
> > PHY_C20_B_MPLLA_CNTX_CFG(i));
> > > +			else
> > > +				pll_state->mplla[i] = intel_c20_read(i915,
> > encoder->port, 0,
> > > +
> > PHY_C20_A_MPLLA_CNTX_CFG(i));
> > > +		}
> > > +	} else {
> > > +		/* MPLLB configuration */
> > > +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> > > +			if (cntx)
> > > +				pll_state->mpllb[i] = intel_c20_read(i915,
> > encoder->port, 0,
> > > +
> > PHY_C20_B_MPLLB_CNTX_CFG(i));
> > > +			else
> > > +				pll_state->mpllb[i] = intel_c20_read(i915,
> > encoder->port, 0,
> > > +
> > PHY_C20_A_MPLLB_CNTX_CFG(i));
> > > +		}
> > > +	}
> > > +}
> > > +
> > >  static u8 intel_c20_get_dp_rate(u32 clock)  {
> > >  	switch (clock) {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > index 952c7deeffaa..86edbc4b1718 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > @@ -33,14 +33,22 @@ void intel_c10mpllb_readout_hw_state(struct
> > intel_encoder *encoder,
> > >  				     struct intel_c10mpllb_state *pll_state);  int
> > > intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> > >  			      struct intel_encoder *encoder);
> > > +int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> > > +			    struct intel_encoder *encoder); void
> > > +intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> > > +                                   struct intel_c20pll_state
> > > +*pll_state);
> > >  void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
> > >  				  const struct intel_c10mpllb_state *hw_state);
> > int
> > > intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
> > >  				   const struct intel_c10mpllb_state *pll_state);
> > void
> > > intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> > >  				 struct intel_crtc_state *new_crtc_state); -int
> > > intel_c10_phy_check_hdmi_link_rate(int clock);
> > > +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int
> > > +clock);
> > >  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> > >  				     const struct intel_crtc_state *crtc_state);
> > >
> > > +int intel_c20_phy_check_hdmi_link_rate(int clock); void
> > > +intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> > > +				       const struct intel_crtc_state *crtc_state,
> > > +				       u32 level);
> > >  #endif /* __INTEL_CX0_PHY_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index a5fbc4fed28d..c37f7f7d84cf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -3532,10 +3532,13 @@ static void mtl_ddi_get_config(struct
> > intel_encoder *encoder,
> > >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > >  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > >
> > > -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> > > +	if (intel_is_c10phy(i915, phy)) {
> > > +		intel_c10mpllb_readout_hw_state(encoder, &crtc_state-
> > >cx0pll_state.c10mpllb_state);
> > > +		intel_c10mpllb_dump_hw_state(i915, &crtc_state-
> > >cx0pll_state.c10mpllb_state);
> > > +	} else {
> > > +		intel_c20pll_readout_hw_state(encoder, &crtc_state-
> > >cx0pll_state.c20pll_state);
> > > +	}
> > >
> > > -	intel_c10mpllb_readout_hw_state(encoder, &crtc_state-
> > >cx0pll_state.c10mpllb_state);
> > > -	intel_c10mpllb_dump_hw_state(i915, &crtc_state-
> > >cx0pll_state.c10mpllb_state);
> > >  	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder,
> > > &crtc_state->cx0pll_state.c10mpllb_state);
> > >
> > >  	intel_ddi_get_config(encoder, crtc_state); diff --git
> > > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index 7b81781a64b6..e60fcd477091 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -58,7 +58,7 @@
> > >  #include "intel_panel.h"
> > >  #include "intel_snps_phy.h"
> > >
> > > -static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> > > *intel_hdmi)
> > > +inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> > > +*intel_hdmi)
> > >  {
> > >  	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
> > >  }
> > > @@ -1883,8 +1883,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
> > >  	 * FIXME: We will hopefully get an algorithmic way of programming
> > >  	 * the MPLLB for HDMI in the future.
> > >  	 */
> > > -	if (IS_METEORLAKE(dev_priv))
> > > -		return intel_c10_phy_check_hdmi_link_rate(clock);
> > > +	if (DISPLAY_VER(dev_priv) >= 14)
> > > +		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
> > >  	else if (IS_DG2(dev_priv))
> > >  		return intel_snps_phy_check_hdmi_link_rate(clock);
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
> > > b/drivers/gpu/drm/i915/display/intel_hdmi.h
> > > index 774dda2376ed..492bd3921385 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> > > @@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct
> > intel_crtc_state *crtc_state,
> > >  				  int src_max_slices, int src_max_slice_width,
> > >  				  int hdmi_max_slices, int hdmi_throughput);
> > int
> > > intel_hdmi_dsc_get_slice_height(int vactive);
> > > +struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> > > +*intel_hdmi);
> > >
> > >  #endif /* __INTEL_HDMI_H__ */
> > > --
> > > 2.34.1
> > >
