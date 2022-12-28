Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F60658728
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 23:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D5689E47;
	Wed, 28 Dec 2022 22:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1C589E47
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 22:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672264819; x=1703800819;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=42eUHk75KzfH+vm5Wht1uaCFxG0UIF24huxNNe7mslM=;
 b=Y/2JVGmCOkybMmv7xQN74rEw/EFFTJbHgReVCmlKdF4RDpCHOj3LodiN
 DhAh9xFdTwqWcrJBOr0yWHyyaei2Q/+q1dFCAb3pjTsIqefL2A58+MD10
 XXkBtwQvB2zgEU07Zs+fBZ+DEEPt6wwPzbbspwjysGnBG4UywU+NTOZmm
 0knHgL2FUR2l4hNTazm6kKcJb7PygyrFtMCG28cbg0LekDfFNBP6edBFv
 EfwKapuvN9IJkbOGc1gojw4hiNKufGJp7p+ZL82MtVkFUIy7jmH29cgwg
 c/AYb2U6oLi0F27U5XDj1EXySpk8p4+h+aFYhQmGpeOOSO1vdgNFR5x7b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322920242"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="322920242"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 14:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="655419670"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="655419670"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 28 Dec 2022 14:00:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 14:00:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 14:00:14 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 14:00:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqLM8tZVsSVTeRXQ3ifT7PD7s4t7/MURFgcDpzpQCjBrj3pcoJsmyyDHWdrHc9pZ7RhRodfMj4qJ2JmbFXTRCjL156+FBDyM1acGif6aCoOykqyoqacdmrhwFS9exEC29LmJ7atgI7wL7+mhEshyl4T+l7vbiHqJuJvu8OPPADfIG0O6AiRJ2loccwbCUgkfo4AhQTJHWQ1cQqhcEA7TObHVGJq3qxv9jPBx2TQcluDZb8gScYjD8w9CPX8+VRuVKZ6g9LMfbjXXyP6H5GTpvL6AeSMAtjDrd+tEHmpwmlFhKo0Qvq/DsmsvWOrieYZBw+9hC5FSY1VVvPyDeuEX5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57dPsOENhG14t7NEBfqJdvWJJl4IMIzXWvqJCWPNdrg=;
 b=mqYHmq/htzBqnSpDQMcTYrOLAB2KrDFt/8l/Zi5WtBip9rfAtrDx7NHKIJpisUJMIx2Onb+/wUGnt95LwWcspcEhyK1yOLmoxtqIwdd+0/0PGLxCcVLkhuHPCvfzcw1Opt9HA/9J71CS6sTOs1cY6fL1CO8kCxiEgCGxaKTdMtYRgK+9Bw/Hk1HWGlzt+zqvKbEzz3OBU9CXpAqaP8fM+uf8l3Y3fKSNz+vT63igFKIPZO5d+l4ybw/P3L2RvjZHGcBCzcFOG14CO0SwQYn8g3xcIDge6mj+Qk8EC5Y52QGd34KgHVq2I4ndE3f4oPdNdu1c8jHTdBR/E/XEvkbsCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB6623.namprd11.prod.outlook.com (2603:10b6:a03:479::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Wed, 28 Dec
 2022 22:00:12 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Wed, 28 Dec 2022
 22:00:12 +0000
Date: Wed, 28 Dec 2022 19:00:05 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20221228220005.7c4kwrcyrpndabf5@gjsousa-mobl2>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
 <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
 <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
 <20221223115159.px2ho2rqp4ivmonr@gjsousa-mobl2>
 <Y6XK5WtfndPrYVNB@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y6XK5WtfndPrYVNB@intel.com>
X-ClientProxiedBy: SJ0PR05CA0087.namprd05.prod.outlook.com
 (2603:10b6:a03:332::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB6623:EE_
X-MS-Office365-Filtering-Correlation-Id: 998db8bd-e97e-4360-29a4-08dae91ee482
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WSqvuf1YS51kpJUvTJYleUTRQJgXi5Mh4Ome4B46rdCBQoaFQ20sAVcBRmgQggwE9RVlYJGclovFHJCnjlEHRR9MiZr79IMrMC8cxIUhQvdLl8qv/d8kQ4g55dIjr/hwbRNdnlR54UpJqar/q8/lXocIBB3ixaLCiwcQkiZfRCy+lvV/Icwr/pWjpE207QDwGb5iTnDMnj/o95qultcInjSE++BBXzfwuanKZtG0iXxyG7csCSas1ew90EKGITH1IQYhQa1vGemOYxjuYMin843zJ5ijSF+fZE/+BrwZdawTVpIrrTfBQh9ssK0KKrUwb8E4hGrpJL7u+Riw/NkmCbUpYdRtz6/w3+bKVFyDtUC4UehmtIu1XmCZK9f2Raj7aGRFzo0ryUxxWfYcmoZZgLm55rixDspI58gpENgxF4loCaiHN9WnrtuawNDDP6tMX9j831sbW2CkfIz7t7b9rGC7J/GtpZsXFIT1RhMI0rPgCThPceaUP9FhDmQn/te/6gNTEceN1+4UMuS4VhFExjvbeZu3j4YQvuHattOTgwOQpRZahkGLmsl7lJiKz+Y7oWG0DNIWuxWRTeYxSOfXoU3IrDd9gzQhId8x42qwOPqNmsE9P7PLAcrlP2vrcM68m4vLDpqgXmifjpbK50JF1aXCPoW1XnWVJ5+o3sMvbcI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(39860400002)(136003)(396003)(376002)(451199015)(33716001)(5660300002)(44832011)(30864003)(6862004)(8936002)(41300700001)(86362001)(66476007)(66556008)(8676002)(66946007)(4326008)(2906002)(54906003)(6636002)(6506007)(82960400001)(316002)(38100700002)(6486002)(966005)(478600001)(83380400001)(6666004)(186003)(1076003)(26005)(9686003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m5uhhfGI72SxaFqfc5P0LINcKOKA0K9L6xVsE/51tWOM4tThA/IUildFo4Lj?=
 =?us-ascii?Q?BTxzHVh5lO0iZLItmBPaeUfHuIxtn7bgV5guq0j/vJqDR987NghSWU8btrag?=
 =?us-ascii?Q?gqNZMJVhACbcCsifeBtEa1NFB27h0+HGHJvvMoVqc3vpd954xsaB18b4ahw0?=
 =?us-ascii?Q?2UIYFxvDl6/cT850//tIKNkGClrfB9sqgxbFeuXvwTm2jgm05+pwUfJ9J1rB?=
 =?us-ascii?Q?nEG+pgnVx6A+XBu8rAT2CtWjDdtJ0uOUvdsRyg0CLDhexq+9NJBeBPSoHX7u?=
 =?us-ascii?Q?driVyPKRAvj97nqyZQ8+sVKegKGXaUSY46Zo9wrnVmyyxaoKbho4OUF70L54?=
 =?us-ascii?Q?Yf4OegS1Xbe7kJIgk9+GnR2deAod9oDVaRtX3Q+lSGTtWrp53/WyJmgSBE6p?=
 =?us-ascii?Q?u8wQ0x25nFx7WPLLR/5QPhXAqUObLPpBEE+cTRo3RyaHWZQnebRxm5oI6t17?=
 =?us-ascii?Q?pslIALFrfwT2OsCkR2v4nTJqK5PTbMV0ZNITRO7lLykTKYHNCOKUw6HzDJdJ?=
 =?us-ascii?Q?gdi/oli+rDv8b2mWkwAglctlPu15dfH0WqR8OJ3zTJvCE4VoGc3jk+xkdRxh?=
 =?us-ascii?Q?sIdHHjHybD1uY9RTszAv+qPrLdzASeiSaAh+fOjXGOETi7uxXPhDfkhM14EH?=
 =?us-ascii?Q?88Z0htqsDSmB6pJzwtSz6+b7ER5vXOM459CeSpnDZBW+8t/khnzJgStRH2as?=
 =?us-ascii?Q?w7M7Sbk9PZcfDunaGqGPWJLfWImcZRpPJnMrNybda43nzDFEAfDOwW855IA7?=
 =?us-ascii?Q?7GMw/4mC2aaEys1PXBCO8sl0DlvMzBK9LgeHTqXJao82zeaddyXK9zMkqy1n?=
 =?us-ascii?Q?3xeUIbhG7UElab8xKBrhxanGyxrjMtlLrqKKw2T7DDA/5CX9K0DaryHACpTb?=
 =?us-ascii?Q?/2RPr5eX/O9F86oqnJZapwhYzAwZpOPvQTDYGhowA6TOeNBYOTUSMEkRtfEh?=
 =?us-ascii?Q?0JtTYLsbeH0avYvEnegtuviI+8JXLqy368FbOA+J8biUMg/q7BlaKvBwyPq1?=
 =?us-ascii?Q?0Q0O2cuGMkU6k7+iKIhnUJ8KSdUgvqNxSZuuecDdM3sHWMkQkGEgsSIqeida?=
 =?us-ascii?Q?z6POAV7QlpPN2TM08E1j5iyLBoIsIHHq8IrYbhCAtX4L77EACcC8j1LkAP4h?=
 =?us-ascii?Q?yVjLVF6wCfCDO6Lbd/VHp5Jr5CeGWXnRfAFn8kGmDl8u3b/zG4eN6cTXWClq?=
 =?us-ascii?Q?R27EGeRuzLCs0f2i3AEqbgHomUlgzZOqeQZ9YsyeSccWutso1+BIfdhWE7nU?=
 =?us-ascii?Q?Im2/Y/vbLxve4tuUWPqmHVx27Xb7LhsRIM4tOsXsJ1rOKQ3uBN0yKwyV/7r7?=
 =?us-ascii?Q?rNDh/19deDs2vBtBOQTFUx6f2ypiCEtES7MVdCHSyXqQmvD1GWknbQ9nROUi?=
 =?us-ascii?Q?K2tHmFmOqE5dyPmMSIjI99e/ZA2+vUUVczckJwDqZCoWTey5KMdrdysk8mzD?=
 =?us-ascii?Q?X4BPrRn7MT2XLaZIiBD1K8uFp3gRbYjprHMCRlPstGrUlPiXXiRABK0pGpoL?=
 =?us-ascii?Q?5EGIs0mu7j4FCmagAToNcFb3BEHJiWuhXEWWp7jisvYTD5zH1UbqByBZYtXO?=
 =?us-ascii?Q?iS5yqZPIbg4L083lCwzbWTQIpzw7tZPbIE0wdTG3tPFEbPkG9eukE5IdKaLq?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 998db8bd-e97e-4360-29a4-08dae91ee482
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2022 22:00:12.1341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tMq0t0ndQivN4YXw0a1lJcr0QxY3YDPZjWMEcZabKfg2YlcuI0/Zi4ZrUxjDS12p9oGPBYohQx6FXc+vkWNDTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned firmware
 paths
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 23, 2022 at 10:36:05AM -0500, Rodrigo Vivi wrote:
> On Fri, Dec 23, 2022 at 08:51:59AM -0300, Gustavo Sousa wrote:
> > On Thu, Dec 22, 2022 at 04:52:21PM -0800, Lucas De Marchi wrote:
> > > On Thu, Dec 22, 2022 at 07:12:08PM -0300, Gustavo Sousa wrote:
> > > > On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi wrote:
> > > > > On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
> > > > > > On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > > > > > > As we do not require specific versions anymore, change the convention
> > > > > > > for blob filenames to stop using version numbers. This simplifies code
> > > > > > > maintenance, since we do not need to keep updating blob paths for new
> > > > > > > DMC releases, and also makes DMC loading compatible with systems that do
> > > > > > > not have the latest firmware release.
> > > > > > >
> > > > > > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > > > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
> > > > > > >  1 file changed, 82 insertions(+), 16 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > index 4124b3d37110..b11f0f451dd7 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > @@ -42,51 +42,70 @@
> > > > > > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> > > > > > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> > > > > > >
> > > > > > > -#define DMC_PATH(platform, major, minor) \
> > > > > > > -	"i915/"				 \
> > > > > > > -	__stringify(platform) "_dmc_ver" \
> > > > > > > -	__stringify(major) "_"		 \
> > > > > > > +#define DMC_PATH(platform) \
> > > > > > > +	"i915/" __stringify(platform) "_dmc.bin"
> > > > > > > +
> > > > > > > +/*
> > > > > > > + * New DMC additions should not use this. This is used solely to remain
> > > > > > > + * compatible with systems that have not yet updated DMC blobs to use
> > > > > > > + * unversioned file names.
> > > > > > > + */
> > > > > > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > > > > > +	"i915/"					\
> > > > > > > +	__stringify(platform) "_dmc_ver"	\
> > > > > > > +	__stringify(major) "_"			\
> > > > > > >  	__stringify(minor) ".bin"
> > > > > > >
> > > > > > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> > > > > > >
> > > > > > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > > > > > >
> > > > > > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > > > > > +#define DG2_DMC_PATH			DMC_PATH(dg2)
> > > > > > > +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
> > > > > > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > > > > 
> > > > > We have an issue here.  Previously `modinfo --field=firmware i915`
> > > > > would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
> > > > > i915/dg2_dmc.bin
> > > > > 
> > > > > that modinfo call is what distros use to bundle the firmware blobs in
> > > > > the initrd. It may also be used for creating package dependendies.
> > > > > 
> > > > > If we do this, unless they have updated their linux-firmware
> > > > > packages, the initrd will be left without the firmware.
> > > > > Just checked
> > > > > git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
> > > > > and we still don't have the unversioned firmware there.
> > > > 
> > > > Interesting. Thanks for the explanation!
> > > > 
> > > > I think one way of approaching the issue would be to synchronize the process:
> > > > 
> > > > 1. Work toward getting approval for the patch (i.e. r-b);
> > > > 2. With the approval, send a PR to linux-firmware with the necessary changes;
> > > > 3. After the linux-firmware PR is merged, the patch could be integraged.
> > > > 
> > > > I think that would still apply if going with your proposal on your next comment.
> > > > 
> > > > > 
> > > > > > >
> > > > > > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > > > > > +#define ADLP_DMC_PATH			DMC_PATH(adlp)
> > > > > > > +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
> > > > > > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > > > > >
> > > > > > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > > > > > +#define ADLS_DMC_PATH			DMC_PATH(adls)
> > > > > > > +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
> > > > > > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > > > > >
> > > > > > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > > > > > +#define DG1_DMC_PATH			DMC_PATH(dg1)
> > > > > > > +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
> > > > > > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > > > > >
> > > > > > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > > > > > +#define RKL_DMC_PATH			DMC_PATH(rkl)
> > > > > > > +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
> > > > > > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > > > > >
> > > > > > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > > > > > +#define TGL_DMC_PATH			DMC_PATH(tgl)
> > > > > > > +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
> > > > > > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > > > > >
> > > > > > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > > > > > +#define ICL_DMC_PATH			DMC_PATH(icl)
> > > > > > > +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
> > > > > > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > > > > > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > > > > >
> > > > > > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > > > > > +#define GLK_DMC_PATH			DMC_PATH(glk)
> > > > > > > +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
> > > > > > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > > > > > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > > > > >
> > > > > > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > > > > > +#define KBL_DMC_PATH			DMC_PATH(kbl)
> > > > > > > +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
> > > > > > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > > > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > > > > >
> > > > > > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > > > > > +#define SKL_DMC_PATH			DMC_PATH(skl)
> > > > > > > +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
> > > > > > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > > > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > > > > >
> > > > > > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > > > > > +#define BXT_DMC_PATH			DMC_PATH(bxt)
> > > > > > > +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
> > > > > > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > > > > > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > > > > >
> > > > > > > @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> > > > > > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > > > > > >  }
> > > > > > >
> > > > > > > +static const char *dmc_legacy_path(struct drm_i915_private *i915)
> > > > > > > +{
> > > > > > > +	if (IS_DG2(i915)) {
> > > > > > > +		return DG2_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_ALDERLAKE_P(i915)) {
> > > > > > > +		return ADLP_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_ALDERLAKE_S(i915)) {
> > > > > > > +		return ADLS_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_DG1(i915)) {
> > > > > > > +		return DG1_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_ROCKETLAKE(i915)) {
> > > > > > > +		return RKL_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_TIGERLAKE(i915)) {
> > > > > > > +		return TGL_DMC_LEGACY_PATH;
> > > > > > > +	} else if (DISPLAY_VER(i915) == 11) {
> > > > > > > +		return ICL_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_GEMINILAKE(i915)) {
> > > > > > > +		return GLK_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_KABYLAKE(i915) ||
> > > > > > > +		   IS_COFFEELAKE(i915) ||
> > > > > > > +		   IS_COMETLAKE(i915)) {
> > > > > > > +		return KBL_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_SKYLAKE(i915)) {
> > > > > > > +		return SKL_DMC_LEGACY_PATH;
> > > > > > > +	} else if (IS_BROXTON(i915)) {
> > > > > > > +		return BXT_DMC_LEGACY_PATH;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	return NULL;
> > > > > > > +}
> > > > > > > +
> > > > > > >  static void dmc_load_work_fn(struct work_struct *work)
> > > > > > >  {
> > > > > > >  	struct drm_i915_private *dev_priv;
> > > > > > >  	struct intel_dmc *dmc;
> > > > > > >  	const struct firmware *fw = NULL;
> > > > > > > +	const char *legacy_path;
> > > > > > > +	int err;
> > > > > > >
> > > > > > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> > > > > > >  	dmc = &dev_priv->display.dmc;
> > > > > > >
> > > > > > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > > +
> > > > > > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > > > > > > +		legacy_path = dmc_legacy_path(dev_priv);
> > > > > > > +		if (legacy_path) {
> > > > > > > +			drm_dbg_kms(&dev_priv->drm,
> > > > > > > +				    "%s not found, falling back to %s\n",
> > > > > > > +				    dmc->fw_path,
> > > > > > > +				    legacy_path);
> > > > > > > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
> > > > > > > +			if (err == 0)
> > > > > > > +				dev_priv->display.dmc.fw_path = legacy_path;
> > > > > > > +		}
> > > > > > > +	}
> > > > > > > +
> > > > > >
> > > > > > I'd keep the request_firmware() with warnings.
> > > > > 
> > > > > then not only it will be missing from initrd but we will also trigger
> > > > > new warnings. Humn, I think one alternative approach and my proposal
> > > > > would be:
> > > > > 
> > > > > leave platforms that already have published firmware as is as long as
> > > > > they are not behind a force_probe. For the new platforms, like mtl,
> > > > > just use the platform name and don't bother about the version.
> > > > > We will also have to fix it in the linux-firmware repo.
> 
> This is also my suggestion. Don't touch the old ones unless needed.
> Let's live with the versions there for the ones we are not updating.
> 
> > > > > 
> > > > > We are likely not updating DMC for very old platforms anyway, no need to
> > > > > rename them.  I think that after having symlinks in place in
> > > > > linux-firmware for a few years/months, then we can go back and kill the
> > > > > version numbers if we really want to.
> 
> I do like this option though...
> 
> > > > 
> > > > Sounds good.
> > > > 
> > > > This patch was an attempt to have all supported platforms changed to the new
> > > > convention and keep us from having to send a new patch for each platform that
> > > > would need the change because of a new firmware release. But to avoid warnings,
> > > > I think your proposal would be better indeed.
> > > > 
> > > > It seems that currently the only platforms with display that are
> > > > using require_force_probe = 1 are DG1 and MTL, and the latter does not have an
> > > > entry in intel_dmc.c yet. Moving forward with your proposal, I guess we could
> > > > also keep DG1 as is and only update it when/if the time comes.
> > > > 
> > > > That said, I still think we would need the logic for loading from legacy paths
> > > > as fallback so that we do not cause regressions when, for example, ADL has an
> > > > update and we "move" it to the new convention. Do you agree?
> > > > 
> > > > So here is my proposal:
> > > > 
> > > > - Keep using the same paths (i.e. versioned ones) for the current entries in
> > > >  intel_dmc.c, but define them with DMC_LEGACY_PATH() and reserve DMC_PATH() for
> > > >  the new convention.
> > > > 
> > > > - Keep the logic for the fallback in place because we know that it will be
> > > >  needed soon enough for some more recent platforms.
> > > 
> > > here is where we disagree. I don't think we need any fallback, because
> > > it will likely not work:
> > > 
> > > 	MODULE_FIRMWARE(ADLP_DMC_PATH);
> > 
> > Yeah... I was thinking about this and maybe we could also have MODULE_FIRMWARE()
> > calls for legacy paths as well. Looking at the documentation for
> > MODULE_FIRMWARE(), the module files are understood as "optional", so I think it
> > would be somewhat okay for one of the two missing, as long as the one is found.
> 
> I believe this will generate a big warning when the initrd are getting updated
> and the firmware is not there. Please run some experiments on your side there with
> this idea. We need to avoid these warnings. But we might need to do something like
> that, at least temporarily for the cases where we end up in need to update the
> minor version and we are out of the force_probe protection.

I did some research and tested generating initrds.

The test consisted of generating two images, both including i915. The firmware
directory was left untouched for the generation of the first image. For the
second image, ADLP DMC firmware files were removed from there location in the
system prior to calling the command to generate the image.

After generating the images, I compared their content. I checked that the module
object was present in both of them. I also checked that firmware files were also
present and that the firmware for ADL was missing in the second image.

I ran the test on:

  1. Arch Linux (my host system) using mkinitcpio;
  2. Ubuntu 22.04 (virtual machine) using mkiniramfs;
  3. Fedora 37 (virtual machine) using dracut.

For all cases, no warnings about missing firmware blobs were raised.

> 
> > 
> > I think declaring possibly missing fallback paths is less ugly than overwriting
> > the versioned path with a blob of a different version.
> 
> Yeap, please, let's not override a path with a different version. This will
> lead to confusions later.

So should we go with keeping the fallback mechanism in place and declaring both
new (unversioned) and legacy (versioned) paths for the modules that will be
updated?

Following the direction to update paths only for platforms that get new DMC
releases, we would have dmc_legacy_path() simply returning NULL for the time
being (which I think is not that bad, as we know we will have new DMC releases
for platforms already using versioned paths).

--
Gustavo Sousa

> 
> > 
> > > 
> > > this means that distros will only package and or update their initrd
> > > with the unversioned path. If a developer updates the kernel, the
> > > fallback will simply not work if i915 is loaded from the initrd.
> 
> Yeap, if one (not necessarily developer) updates the kernel, but for some
> reason linux-firmware.git was outdated, then the initrd will end up empty
> and the firmware won't get loaded.
> 
> This is the regression that we should avoid. One of the main reasons on why
> we are removing the version from the path.
> 
> > > 
> > > For those older platforms I think we can simply keep updating
> > > linux-firmware overwriting the same dmc_adlp_2_16.bin. It's ugly, but
> > > doesn't break compatibility.
> > > 
> > > I defer to maintainers to chime in on that though. Jani/Rodrigo, what do
> > > you think?
> > > 
> > > Lucas De Marchi
> > > 
> > > > 
> > > > - Similarly to your last remark, if we find it necessary, we could in the future
> > > >  remove the fallback logic after linux-firmware has all blobs using the new
> > > >  convention for good enough time.
> > > > 
> > > > 
> > > > --
> > > > Gustavo Sousa
