Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48398659B5F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 19:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDD410E47D;
	Fri, 30 Dec 2022 18:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4C910E47C
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 18:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672424851; x=1703960851;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ct8bB/UX4pkwkbh/HGmlnTs/0V+XvcGXMg1JLBzKr7U=;
 b=Ncz+63ib2gJZ8rOF7Tw3zMTFWg5MMf2g4vMIby6YBEtWgu15DXzDaU4e
 utMH8wVfUmNG7/OH/yUyR0q+0sEPqV+e9yprQkb/t57gX9AgJLiZ4Sx3L
 aYIvvPEtGbwZoQoYC3w2ZFRUlrLsyKkXrJeV6B5+15Vh0ohV9zKuFAH/8
 he1TYF243m8Hx0qpk3bfMHpcXAc2ZznKUrP4Tdy+7eoytYKorLexh1S3m
 IyNbnZiR602EASExqFTFnQ3V+8gUE9GULfXlnE6x7XltMv0mJ4YR3EafO
 Xpe4xx+xfjsn02MSnRx1aiXtOPO9gppl5B/sYvHj17WwtYJk/Bb/Rb3T9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="300929661"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="300929661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 10:27:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="828024371"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="828024371"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 30 Dec 2022 10:27:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 10:27:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 10:27:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 10:27:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BusrfhOOpuQkjgI7vtmZH9ihH45qtzEVeA4aIrDhTuNum1Cif+9C3MQghxOySnWqra75fhCSbcEJsm3oIz0P6WDL/ncmRWWguUiQ1M5nDrpCHFl8xb3M7oChkTI4M4FOWlleoyp2b7GVUG5Vd6n1EY7+OtM6flEMTgWL4jHj6hJqzRW/d9fnZSDemuGPCqd8z2dsReek0KRK+c7R4WR9n0h59HSHYV0F/SVu3Hf0C1FqHgyzrmkIOKVEHFatkNWhRkVyvkJ5absqkar+wGfawcUW2i/vFx8N4ITB9MxNdTESXsRYhJ1uTnXpP1wpBnC/RKH4Gc97qeCEw874tcfZSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEI5nPbko6qtOfzlSFt3FsIZvcPmCIOCxBUqJd40K14=;
 b=M2/T30Xknd7WuUYPjucxt4Od0zjRLqPxX6JHpLLTeepTMZBfqBz2gYlsyPnNJmoHjwrU02kkwLT+6fuRYNDirGsPRDzdxmXLZUPKq8pV+0J++A2IvH1bP/YbtS9NfftvGj02bNtBLZedtgPE6H0WXCb3gA9ivzhnB0KzEZa15x4PA8VTmdrZdHjny0Cd2l6LzUgom58v5ID0X8ux54+qoN3YMGOFuTzYR2ryau/sW1VaaqHjbRsY0lVXpmW5yGJYFP38/BbsZdlLwc+3SQ4AoQOiPBH8gaP/AMkLRfLvrFRXnln1QQYTvRBX+dlSsVBPJwNVuCLcDCSkuigfbnt2Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7603.namprd11.prod.outlook.com (2603:10b6:806:32b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 18:27:27 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 18:27:27 +0000
Date: Fri, 30 Dec 2022 15:27:20 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20221230182720.hoaosbhcxhnes52w@gjsousa-mobl2>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-2-gustavo.sousa@intel.com>
 <Y66iKQ5aGdMzyVh2@intel.com>
 <20221230124239.hepfnh75dhb5urpd@gjsousa-mobl2>
 <Y68XNxd0PrpcJ1U3@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y68XNxd0PrpcJ1U3@intel.com>
X-ClientProxiedBy: SJ0PR03CA0239.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7603:EE_
X-MS-Office365-Filtering-Correlation-Id: d0d8f45d-df72-4bf2-ca88-08daea93812c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0BsufNxTckJfl6zYmIjZnU9Zeg11TIWthsQsweTcJmrKqxtUbPRfe2I8v59x7FLRVRH7girjKXYnoUBwggiQr/XkT63o9Tx4qd+os1Jw2+2joBrXxBYD7P9JVihDS4hB3yhZgAYDzqcft7Z2KZ982Od6UmI5iWfHrs8Qi1V9N/18tQp6suKZnntWHKbfvVoKlsslKxHePyf6MhUt3HQddsQx4RX3EFI54wHDjt846a7KkCqqEXQEPpbnGTC5KKvfgbEz91EK+NfGEOhrY/FdRtF/wZy6ZHlNkc2cCVC4CJDCzaW6NyHzSCZkADN3JtqhLkf9TgZ/emgCESzrKSqsY4CVmtRBzJ/UdtQ1XcyqPoYdKLywctitiGgjFa/nvDxa8c/yJNkUY9QkKDBveeOMgypRRtF957nlMhOozblY/CLEKGa3bejhYkGX/hT/Rw6S97eL3suZi+UBwCrNWvjvHTTq63tl31jBovCUw3m6MR66Ox31Kg0QYFHLX6sbslW76H7aPgdJGQQsZy+Qm+0QlaCoiT39umN5uNv1KAzjNFIIXMs+nZWMt0AGAmQza3w2ajoi/b7Vniq234clsQk9LhmroYARS5cPRlr3T3Mf9MZ5wo5P5GBy47ZLBCEsKPsHQk2iAZK6CLp6vXYNkJuebqO/b4mtCqzEPW7tBDLGQnS8jQiu23cjGYGyWRGL55TX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199015)(83380400001)(6862004)(8936002)(82960400001)(5660300002)(44832011)(38100700002)(86362001)(41300700001)(107886003)(478600001)(33716001)(6506007)(186003)(26005)(1076003)(8676002)(6486002)(6512007)(6666004)(4326008)(9686003)(6636002)(54906003)(966005)(66556008)(316002)(66946007)(2906002)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KY16vq6gcEIsPfJ7ZnIvVLA+2FpJU6aP5sCRj/BdCw29VtbQdt+ZR4VROCAq?=
 =?us-ascii?Q?ZQUCpq+TAj/YHvyFfVMG0KDel7eYOLYqC2Bgemubfhj6CTYZBcHmR1HBhFa4?=
 =?us-ascii?Q?UqidDwoU5TlwdMtkQhQ/RGdiSUbaavUoqkzEcZWVWwhwhFqjNgDVQkf8vP3b?=
 =?us-ascii?Q?9GcHHX62CQYpP78P/ol4G/T7y9Xz79IcrDKLlbJK0TXPDufZ20JNG+xADDNo?=
 =?us-ascii?Q?JN3bPPPW39AXdaIJdLCiV/od1ErrUvdHCpoTkNA7SwqjyLVzZd5GxNrS5+Xw?=
 =?us-ascii?Q?UvuKYv5FpNxyEx15YFDNUm08W4fpZHsH9oH10Pop3Jy/XeQb9E5/jXMLm1DJ?=
 =?us-ascii?Q?mQrQ3tdXbHcwbQuzZzq2WiLPt6u8WdJ4dD3if9oWIFLsntnTr4hXNcm3zxfi?=
 =?us-ascii?Q?ATujGyyuWjgUU0uvzPv6jbEPOYlZ4iAgXdJTVPIc2Rr77zGnYHfm6CyPImH6?=
 =?us-ascii?Q?hEZ/xF8x+u8JDIE8u9fNUNZPQOrVWD8mAeHcYXQ0eLFXjf2F0lxr8BbYp0FR?=
 =?us-ascii?Q?1M3uI1nKwvr6a9fVbMfxYhyFEWmkkgk82gcuAtdi6x2emvbkb7j5UN8yH0ST?=
 =?us-ascii?Q?CIONXIaQyqqqPTXhzkGaDgBRzzpG0gVYh9GICdknBEFq/yEk7EQi4qMGwt0U?=
 =?us-ascii?Q?s9L8yPUWX1WVJbawhpQ/lKMNaeyndYbCeVKGHEwM5ouvQBVPStfzg8S+ws1k?=
 =?us-ascii?Q?8zXkadhI6bUkt30F7bq6LQbZuVNYhsI2pm8rHXTZOLqnLL1MSD5gHpUYYZJi?=
 =?us-ascii?Q?5o7wTinDiXjx4tr3sQjlAM/9DS6klUTv31SsjPCtfihoAI1pg0vFXFcLkO/J?=
 =?us-ascii?Q?+JZY7CpPMPfK4QnwmkBSugexvQoZv3snZAH+zyUaoofBrAgxemHHHs3XWf4p?=
 =?us-ascii?Q?tyIYe1AnW2fpRXPLsoPvWD5xm3lStAyMkgYf73dknRi5t+eIu/RmAuIMaRk5?=
 =?us-ascii?Q?DDIb/45QFCweSXKHDJZV57x0cHZS92WxPMNJYp/9wC+yPm5GRWUaZjihoGFp?=
 =?us-ascii?Q?rZ0tm4On9qBQwJ0Q0w/N/qwxC9SC0VWduoQ4x8OniBvttnvEz7VjIZLxhale?=
 =?us-ascii?Q?jIw60vsa+UMnpkjEZNAeEP0CHvgDC16ExpsxKviaQAGe06ICDY6w4rmCc8Zg?=
 =?us-ascii?Q?c7eHa40f0tv1WC65T2iAvVqdINuz5YhUpzIOQ+Ut0S6ssYC/nc/m9LlQU9Fm?=
 =?us-ascii?Q?i6aopaLTlgUhLm0HftFP2cHGgBDR2yuZPCj3w6bcXrmx7sLVqw9Ira/a4lPl?=
 =?us-ascii?Q?5oqnVvUI0C+oaZxY69qz09TAR6gSIgQOidE61CxX+CsEbSoMulc+mYHNjPWg?=
 =?us-ascii?Q?YU6b/COZpjRnpT0Ms8Z5IpchYtqOQvFc677miFwfDwqjufUvOKW/SrQDT8+M?=
 =?us-ascii?Q?YXFestQsqHjbVtWYiASwfHHDFGGuyEPRpP1HscPmKJwTPqmC5dr1W5t22qYk?=
 =?us-ascii?Q?+WlFiyQ3VnLWYHJNh1Me/dSdCso1ooqtiwHB3B9ij/BH3sSNbBW90jwHWtkS?=
 =?us-ascii?Q?6bI7klS2dJJIO2fyZQQx9j/BpR15IK+GgVxUGUi2L72XNPeWpj4DOtJgEkDn?=
 =?us-ascii?Q?pArP2TjfLXGZ5tR5RhZJFmGqAPdR4l8Ei9N/nl1VPBwqxQTWaPD7izab1SDF?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d8f45d-df72-4bf2-ca88-08daea93812c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 18:27:27.6978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0zU8azkyIxrbNi39NFHB0JIhCju7rgEa/KNA+L3BkX3gHlOaoozS3jsuPCumcip8LE0OU1K/s7h4vSeUNgXvaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7603
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

Thanks for all the feedback.

I have just sent a v4 with only this patch. I'll split the second one as
instructed.

--
Gustavo Sousa

On Fri, Dec 30, 2022 at 11:52:07AM -0500, Rodrigo Vivi wrote:
> On Fri, Dec 30, 2022 at 09:42:39AM -0300, Gustavo Sousa wrote:
> > On Fri, Dec 30, 2022 at 03:32:41AM -0500, Rodrigo Vivi wrote:
> > > On Thu, Dec 29, 2022 at 04:07:39PM -0300, Gustavo Sousa wrote:
> > > > Currently there is no DMC version requirement with respect to how i915
> > > > interacts with it and new versions of the firmware serve as drop-in
> > > > replacements of older ones. As such, do not require specific versions.
> > > > 
> > > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > 
> > > I don't believe this link is a good reference as justification
> > > of this patch.
> > > 
> > > Probably https://docs.kernel.org/next/driver-api/firmware/firmware-usage-guidelines.html
> > > is a better link?
> > 
> > Yep. I agree this would be better. Is there an "archive" version of this page?
> > Just to make sure we link to the exact version of that guide at the time of
> > writing this patch.
> 
> This question reminded me that I should had used this link instead:
> https://www.kernel.org/doc/html/latest/driver-api/firmware/firmware-usage-guidelines.html
> 
> And this is the one you are looking for:
> https://www.kernel.org/doc/html/v6.1/driver-api/firmware/firmware-usage-guidelines.html
> 
> > 
> > > 
> > > Also, in the commit message we should be more clear that i915
> > > interacts with the Hardware and not with any FW ABI/API, so the API
> > > is fixed within the platform, hence no need to get this so-tied
> > > version requirement.
> > 
> > Thanks! I'll grab this paragraph and adapt it into the commit message if you
> > allow me =)
> 
> sure, thanks!
> 
> > 
> > > 
> > > with the commit msg changed you can count on my reviewed-by,
> > > the patch looks good to me.
> > > 
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
> > > >  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
> > > >  2 files changed, 36 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > index 905b5dcdca14..4124b3d37110 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > @@ -53,51 +53,40 @@
> > > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > > >  
> > > >  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> > > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > > >  
> > > >  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > > -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
> > > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > >  
> > > >  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > > -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> > > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > >  
> > > >  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > > -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> > > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > >  
> > > >  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > > -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
> > > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > >  
> > > >  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > > -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> > > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > >  
> > > >  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > > -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
> > > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > >  
> > > >  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > > -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> > > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > >  
> > > >  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > > -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> > > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > >  
> > > >  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > > -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
> > > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > >  
> > > >  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > > -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> > > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > >  
> > > > @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> > > >  		return 0;
> > > >  	}
> > > >  
> > > > -	if (dmc->required_version &&
> > > > -	    css_header->version != dmc->required_version) {
> > > > -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> > > > -			 " please use v%u.%u\n",
> > > > -			 DMC_VERSION_MAJOR(css_header->version),
> > > > -			 DMC_VERSION_MINOR(css_header->version),
> > > > -			 DMC_VERSION_MAJOR(dmc->required_version),
> > > > -			 DMC_VERSION_MINOR(dmc->required_version));
> > > > -		return 0;
> > > > -	}
> > > > -
> > > >  	dmc->version = css_header->version;
> > > >  
> > > >  	return sizeof(struct intel_css_header);
> > > > @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> > > >  
> > > >  	if (IS_DG2(dev_priv)) {
> > > >  		dmc->fw_path = DG2_DMC_PATH;
> > > > -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> > > >  		dmc->fw_path = ADLP_DMC_PATH;
> > > > -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_ALDERLAKE_S(dev_priv)) {
> > > >  		dmc->fw_path = ADLS_DMC_PATH;
> > > > -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_DG1(dev_priv)) {
> > > >  		dmc->fw_path = DG1_DMC_PATH;
> > > > -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> > > >  		dmc->fw_path = RKL_DMC_PATH;
> > > > -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_TIGERLAKE(dev_priv)) {
> > > >  		dmc->fw_path = TGL_DMC_PATH;
> > > > -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> > > >  	} else if (DISPLAY_VER(dev_priv) == 11) {
> > > >  		dmc->fw_path = ICL_DMC_PATH;
> > > > -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_GEMINILAKE(dev_priv)) {
> > > >  		dmc->fw_path = GLK_DMC_PATH;
> > > > -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_KABYLAKE(dev_priv) ||
> > > >  		   IS_COFFEELAKE(dev_priv) ||
> > > >  		   IS_COMETLAKE(dev_priv)) {
> > > >  		dmc->fw_path = KBL_DMC_PATH;
> > > > -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_SKYLAKE(dev_priv)) {
> > > >  		dmc->fw_path = SKL_DMC_PATH;
> > > > -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
> > > >  	} else if (IS_BROXTON(dev_priv)) {
> > > >  		dmc->fw_path = BXT_DMC_PATH;
> > > > -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
> > > >  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
> > > >  	}
> > > >  
> > > > @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> > > >  		}
> > > >  
> > > >  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> > > > -		/* Bypass version check for firmware override. */
> > > > -		dmc->required_version = 0;
> > > >  	}
> > > >  
> > > >  	if (!dmc->fw_path) {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > > index 67e03315ef99..435eab9b016b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > > @@ -25,7 +25,6 @@ enum {
> > > >  struct intel_dmc {
> > > >  	struct work_struct work;
> > > >  	const char *fw_path;
> > > > -	u32 required_version;
> > > >  	u32 max_fw_size; /* bytes */
> > > >  	u32 version;
> > > >  	struct dmc_fw_info {
> > > > -- 
> > > > 2.39.0
> > > > 
