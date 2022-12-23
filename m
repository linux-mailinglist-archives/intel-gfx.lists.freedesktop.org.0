Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939A7655226
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 16:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D6110E669;
	Fri, 23 Dec 2022 15:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B38910E669
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 15:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671809778; x=1703345778;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=T6hVu7HZx3A8aoHwhzsaG69XzByHZz0ZyHVSLa4fMHQ=;
 b=FrZ8TgeRLfG4D83RRjTG65LgW1wAkOevV/7ckp7GGYFeHRHRbOsLQCJS
 ReXo1pA0RGDHb2OPTIZvzUFnTCto981pvHNrfgPIBAKCyPwtt2NTOQv39
 If02lKf8RbX4eOhbsGWryAkTaX+Rgxcyx2jHCPBQDUdlaH7qnUsoXb2Pw
 SvRbNJLojnH1WRNkw9rthIYO9jLFP2Z9C1gWMd5r1Wc6kGOI5PgPBddFW
 ENAXYzcfnJMNdBWG+6heU6pr/igXQLO4xJC/EImkoUWoaH9FcwtVr+mSy
 TQassu+OEmhccEtFy6d2lJtgVu+egPRGAWG2gqBLu+52L6M8Ou1yA/D57 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="317991907"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="317991907"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 07:36:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="629860203"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="629860203"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 23 Dec 2022 07:36:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 07:36:17 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 07:36:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 07:36:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 07:36:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pxi7l7rt9EMYmwXX2AKvvReUTjKSKWNzwDvUTEFW7gRmrrpu8OtwdPUdAsfJOljmI5dsCYuGCF1cVTOGJrp9hRDST9zWyuesJy5b4w8KPXoZa6rLcGyBV/9RxxdHqEVedv4EYechoqcbhYmvGQHPZ29uMQylJTnwvBAxhcwkE+XWD9QuWAFEW6+CXu3o3l4ji51Gw6bL7e0UY4MC+zpSmAf8A2tnF43hBqJTHdhVdv6MiIWFV11vy0+JQGUgTh4+VIph7hU8a8GjmMaH/NvRO/XMY1Ssdm9lQoHoeYbm4g9A5HsaldN9vNgcQSiOlwLifxAnBE2bHRISSb5IpLWSkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZzkOet3LZP4tXf4Hhbiz06lZFLj6P/kLyIOBZhmtzM=;
 b=NIPmBICZtlMWz+XSZfH1lQizjaBLQReRBs3dl9lvJMKbdvWN+wWH51/tMbXnpwTOCNI5yeivuZfcubcEhE7E3/0R6MNVNtzF7vn09NFzDJhbopeH9noOT8Ok9NLl0WLYJaUyLHyw5HmD2DBSYiLGLI3wwIMxrKbYxdON07ugwXpVoUxfV+kaoiaC7Q+AMV1pPk3w+ElbyJMmVCC9dFPf2N8f9zreGtX43ZIudMHT7hqZm4Rc738PJPuACtuyj5G6bQ8oDNXzDh+YKRpi7uXLXBdkPumAcTC4bDPGBlTJVlzdQPFReGBiJzSlKIUJwWKK5qbaB7q0HV0Wkb74D6wy5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by DS0PR11MB6421.namprd11.prod.outlook.com (2603:10b6:8:c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 15:36:09 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9976:f25a:e9d3:2a0b]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9976:f25a:e9d3:2a0b%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 15:36:09 +0000
Date: Fri, 23 Dec 2022 10:36:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y6XK5WtfndPrYVNB@intel.com>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
 <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
 <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
 <20221223115159.px2ho2rqp4ivmonr@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221223115159.px2ho2rqp4ivmonr@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR07CA0061.namprd07.prod.outlook.com
 (2603:10b6:a03:60::38) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|DS0PR11MB6421:EE_
X-MS-Office365-Filtering-Correlation-Id: 8704dd1f-24c5-4c8b-8c7a-08dae4fb69ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i4j+05XfvamMSVxeTLU2F/iP1lHFpFcTyxy3mCs8S0TmaBdQVHAxLTfrU2FFaMpY3Rn9FTCyAtYXGv+WNYcommhTCrQyrkqEGRD/bh61+jLS3SmEKFgXlodHLkRf2vLQpJ5rRSnwnvLpPhx6fSn5Eu0yIuzVxEdhBnKMkjs0xyYXTTQ9ER7UqTilADOdfk9EcbU+Bsc03ozVA1zZ+TCO29HGp1lw6GIvygDxpzbjp7XBsqnEgswSalMg4C5vayvHwTO3iS8i4l76n8RaC6LX6kCSMKWN5y+OMkorLkJc8Eu6lk9pVtJXdw4hAE+ifFlidrnOXF/9Vi6wEHTfKKY/GNfcvdr1msV2JhIsMb+EcS2G1pDGgvCQ1+TACq0tHefbzqt++nrpO28Kv83drUJU99x6koHUY2sX3EFloooX/2nqWbn1L0WKz/OMs6KJPv0UjJVNov5HqTH+aMGrbX/PUM/UEuNfESSuy57lTXHxfQPqh+oIoDN07oIFf500cMG46vqKTfefYXPrE7TQAwT6yj2isuVpS84ERqj5J1IK5QO+g3Xos4NC1v2wteXXZyxwDGshM6xvXJLM+98/4DHBGOibBV4DZkt5wWVslzH9270402dzywQEIpBmbst4ZSpUOTSBlgEzOQhHZQkvIjRsLIFqCWGtdR/4U5/3nW43S3g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(366004)(39860400002)(376002)(451199015)(6636002)(36756003)(6486002)(86362001)(26005)(478600001)(316002)(37006003)(54906003)(966005)(82960400001)(44832011)(2906002)(5660300002)(66556008)(6862004)(4326008)(30864003)(6666004)(8676002)(8936002)(66946007)(66476007)(41300700001)(83380400001)(38100700002)(186003)(6512007)(2616005)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zs5nXofwlBKM0d+WnHnfoV5LcNU6UC1kYsSFj6JTH9xcVwMUT6LjDS8j8+5P?=
 =?us-ascii?Q?g7a5LF8nnp9a/eXeciRtF8Eq4IwSy/KAPykzg9HLXodGWy3dEB5VIu13uJop?=
 =?us-ascii?Q?h7hM7TYR+4JR9swVkHy1JrBOF2m+X+hmIrWfJef3a5WKXZfjLN8p6TbnVyU8?=
 =?us-ascii?Q?nzHBEIA4KY1s1TrVpd/Byxcq6s/hIGlPKMDR81/v0bWdpW0dRuQre79IL2jF?=
 =?us-ascii?Q?kJidn3z6z314/tGu+8I6ZUexV9EN2zL0V2kYgPGnhQekd/p6f6VbyUPFjdeB?=
 =?us-ascii?Q?xi/7uIWPA02HBHIwUABcOk3aiU230Kwt9GlyEiMh6Jzan0hFO0wBHMeoVtzQ?=
 =?us-ascii?Q?P1THHfT7K2MG8XhGRGVJMtax1S1WXwWcRBtR+Q6hjJj627Yw/RRn7TkOUDFT?=
 =?us-ascii?Q?9hD89L/f68Ec5zAlBqEObbW8yq8FbA49YUQ6fwXqfskuHo302ehZqTDGqiY1?=
 =?us-ascii?Q?Q0uz21FDPXngUxkXTp7qodFPkYwx++iUNHY0vKbwlKDj+gdI4LbW1RMRcLIN?=
 =?us-ascii?Q?xi+xrobs63RpPfefF1z4Bgk/eGVIamN3MczJe1Z2QozRzzGKfSCSijepKCIV?=
 =?us-ascii?Q?YFkJN8kmSV3o7Evlfx6HHGye0TVr1AZAznxpu0cMItId6RVmnnN8BHf+PW+t?=
 =?us-ascii?Q?RUm1ZWnWUP5yWSbAPGmyZBiSkS1NJfKDb/evdQnuD4cpFrR9Wy8ewyivInb/?=
 =?us-ascii?Q?RNYKsR9zRxb/kLjP/8MuhH6y0L48LhsMYzXrtg0z0wR5Zql6NXtnAh6nP+ey?=
 =?us-ascii?Q?UbsIwOdlVPB38XyOnR3z/AbE7xFR1agWz/ty2jU2zi0u4shUxahNafL98/PF?=
 =?us-ascii?Q?VyaKrYak2iNLstwAsH5VnY1e3g3gjbCvSDEzgWt3Wt3m2CtG36Dh1yCqOr+6?=
 =?us-ascii?Q?8pNhVx5zj6ML076S19gLJRX3eOm02pjCbI0HodF48btGsnffz9EZgDZUp6hj?=
 =?us-ascii?Q?TCoaZfBMtBEDiX8D9VBK24Z6MFQlrbETnpT72Wh++99JNhHxPaIG7Q+ccgMp?=
 =?us-ascii?Q?Aagv+CA81V7TyKKyeD4l8rGWqESTmq141Rxy0u3iRPaZYU6IelmP4d+MilAH?=
 =?us-ascii?Q?+tgyr4w7dW5pr68TAnilMUTRZmFP2EzYq0jHQ13FboYg2yJgdS026VG0WQ2K?=
 =?us-ascii?Q?JuAG5XFQYFt316Z3sN2VSbDZP6xyIKgPeGKDxwWST3Y6lDuSRgQ9s0cJRrVQ?=
 =?us-ascii?Q?sikssepkQ0rsFHI0sPTWWkNRvqdILNuyw5UTxq8gXaYdxyNCjkhb/SsJCQO0?=
 =?us-ascii?Q?/fa+KL3qjiGUMv03Mn3hVSOyAwGJLk/mfQQNzFVmoyf07BoSryC0U/YR9mjU?=
 =?us-ascii?Q?PX7tPymUc4jSRqWwrVr4eAKFbufGfODs4hn8XMokOyiSu7KAKoFdhfKa9Y8A?=
 =?us-ascii?Q?3vShxsMM+B47laCs+qiKmf/+PAutqyuyuOa1iYqtK474nQWNCjHKaGOJZSG0?=
 =?us-ascii?Q?LSrH3iwxSfRPAyRa8Vzujli5eOHOjhjtTHOL7rx7L6RrEFpM38Q0yjDFKjmI?=
 =?us-ascii?Q?WiDvwP5CbJDNaOormwU5flRGAfbaZPZzPZ4XFT4+2oIlpm1RJCZyISi9Cmcj?=
 =?us-ascii?Q?C2o0teiVsC+vfrL3AUiLZNE6NXdGTWRSn4+798Mi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8704dd1f-24c5-4c8b-8c7a-08dae4fb69ec
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2022 15:36:09.5286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ObO2U5n1gLxFeIVpVqGwAECxL36SWayjARAHfhgjYbO3u8IsaKaOb7KitHO+bbd9T9DPagk5y5kboOORsP7JXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6421
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

On Fri, Dec 23, 2022 at 08:51:59AM -0300, Gustavo Sousa wrote:
> On Thu, Dec 22, 2022 at 04:52:21PM -0800, Lucas De Marchi wrote:
> > On Thu, Dec 22, 2022 at 07:12:08PM -0300, Gustavo Sousa wrote:
> > > On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi wrote:
> > > > On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
> > > > > On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > > > > > As we do not require specific versions anymore, change the convention
> > > > > > for blob filenames to stop using version numbers. This simplifies code
> > > > > > maintenance, since we do not need to keep updating blob paths for new
> > > > > > DMC releases, and also makes DMC loading compatible with systems that do
> > > > > > not have the latest firmware release.
> > > > > >
> > > > > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
> > > > > >  1 file changed, 82 insertions(+), 16 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > index 4124b3d37110..b11f0f451dd7 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > @@ -42,51 +42,70 @@
> > > > > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> > > > > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> > > > > >
> > > > > > -#define DMC_PATH(platform, major, minor) \
> > > > > > -	"i915/"				 \
> > > > > > -	__stringify(platform) "_dmc_ver" \
> > > > > > -	__stringify(major) "_"		 \
> > > > > > +#define DMC_PATH(platform) \
> > > > > > +	"i915/" __stringify(platform) "_dmc.bin"
> > > > > > +
> > > > > > +/*
> > > > > > + * New DMC additions should not use this. This is used solely to remain
> > > > > > + * compatible with systems that have not yet updated DMC blobs to use
> > > > > > + * unversioned file names.
> > > > > > + */
> > > > > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > > > > +	"i915/"					\
> > > > > > +	__stringify(platform) "_dmc_ver"	\
> > > > > > +	__stringify(major) "_"			\
> > > > > >  	__stringify(minor) ".bin"
> > > > > >
> > > > > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> > > > > >
> > > > > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > > > > >
> > > > > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > > > > +#define DG2_DMC_PATH			DMC_PATH(dg2)
> > > > > > +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
> > > > > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > > > 
> > > > We have an issue here.  Previously `modinfo --field=firmware i915`
> > > > would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
> > > > i915/dg2_dmc.bin
> > > > 
> > > > that modinfo call is what distros use to bundle the firmware blobs in
> > > > the initrd. It may also be used for creating package dependendies.
> > > > 
> > > > If we do this, unless they have updated their linux-firmware
> > > > packages, the initrd will be left without the firmware.
> > > > Just checked
> > > > git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
> > > > and we still don't have the unversioned firmware there.
> > > 
> > > Interesting. Thanks for the explanation!
> > > 
> > > I think one way of approaching the issue would be to synchronize the process:
> > > 
> > > 1. Work toward getting approval for the patch (i.e. r-b);
> > > 2. With the approval, send a PR to linux-firmware with the necessary changes;
> > > 3. After the linux-firmware PR is merged, the patch could be integraged.
> > > 
> > > I think that would still apply if going with your proposal on your next comment.
> > > 
> > > > 
> > > > > >
> > > > > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > > > > +#define ADLP_DMC_PATH			DMC_PATH(adlp)
> > > > > > +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
> > > > > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > > > >
> > > > > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > > > > +#define ADLS_DMC_PATH			DMC_PATH(adls)
> > > > > > +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
> > > > > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > > > >
> > > > > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > > > > +#define DG1_DMC_PATH			DMC_PATH(dg1)
> > > > > > +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
> > > > > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > > > >
> > > > > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > > > > +#define RKL_DMC_PATH			DMC_PATH(rkl)
> > > > > > +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
> > > > > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > > > >
> > > > > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > > > > +#define TGL_DMC_PATH			DMC_PATH(tgl)
> > > > > > +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
> > > > > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > > > >
> > > > > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > > > > +#define ICL_DMC_PATH			DMC_PATH(icl)
> > > > > > +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
> > > > > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > > > > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > > > >
> > > > > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > > > > +#define GLK_DMC_PATH			DMC_PATH(glk)
> > > > > > +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
> > > > > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > > > > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > > > >
> > > > > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > > > > +#define KBL_DMC_PATH			DMC_PATH(kbl)
> > > > > > +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
> > > > > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > > > >
> > > > > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > > > > +#define SKL_DMC_PATH			DMC_PATH(skl)
> > > > > > +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
> > > > > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > > > >
> > > > > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > > > > +#define BXT_DMC_PATH			DMC_PATH(bxt)
> > > > > > +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
> > > > > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > > > > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > > > >
> > > > > > @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> > > > > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > > > > >  }
> > > > > >
> > > > > > +static const char *dmc_legacy_path(struct drm_i915_private *i915)
> > > > > > +{
> > > > > > +	if (IS_DG2(i915)) {
> > > > > > +		return DG2_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_ALDERLAKE_P(i915)) {
> > > > > > +		return ADLP_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_ALDERLAKE_S(i915)) {
> > > > > > +		return ADLS_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_DG1(i915)) {
> > > > > > +		return DG1_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_ROCKETLAKE(i915)) {
> > > > > > +		return RKL_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_TIGERLAKE(i915)) {
> > > > > > +		return TGL_DMC_LEGACY_PATH;
> > > > > > +	} else if (DISPLAY_VER(i915) == 11) {
> > > > > > +		return ICL_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_GEMINILAKE(i915)) {
> > > > > > +		return GLK_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_KABYLAKE(i915) ||
> > > > > > +		   IS_COFFEELAKE(i915) ||
> > > > > > +		   IS_COMETLAKE(i915)) {
> > > > > > +		return KBL_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_SKYLAKE(i915)) {
> > > > > > +		return SKL_DMC_LEGACY_PATH;
> > > > > > +	} else if (IS_BROXTON(i915)) {
> > > > > > +		return BXT_DMC_LEGACY_PATH;
> > > > > > +	}
> > > > > > +
> > > > > > +	return NULL;
> > > > > > +}
> > > > > > +
> > > > > >  static void dmc_load_work_fn(struct work_struct *work)
> > > > > >  {
> > > > > >  	struct drm_i915_private *dev_priv;
> > > > > >  	struct intel_dmc *dmc;
> > > > > >  	const struct firmware *fw = NULL;
> > > > > > +	const char *legacy_path;
> > > > > > +	int err;
> > > > > >
> > > > > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> > > > > >  	dmc = &dev_priv->display.dmc;
> > > > > >
> > > > > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > +
> > > > > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > > > > > +		legacy_path = dmc_legacy_path(dev_priv);
> > > > > > +		if (legacy_path) {
> > > > > > +			drm_dbg_kms(&dev_priv->drm,
> > > > > > +				    "%s not found, falling back to %s\n",
> > > > > > +				    dmc->fw_path,
> > > > > > +				    legacy_path);
> > > > > > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
> > > > > > +			if (err == 0)
> > > > > > +				dev_priv->display.dmc.fw_path = legacy_path;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > >
> > > > > I'd keep the request_firmware() with warnings.
> > > > 
> > > > then not only it will be missing from initrd but we will also trigger
> > > > new warnings. Humn, I think one alternative approach and my proposal
> > > > would be:
> > > > 
> > > > leave platforms that already have published firmware as is as long as
> > > > they are not behind a force_probe. For the new platforms, like mtl,
> > > > just use the platform name and don't bother about the version.
> > > > We will also have to fix it in the linux-firmware repo.

This is also my suggestion. Don't touch the old ones unless needed.
Let's live with the versions there for the ones we are not updating.

> > > > 
> > > > We are likely not updating DMC for very old platforms anyway, no need to
> > > > rename them.  I think that after having symlinks in place in
> > > > linux-firmware for a few years/months, then we can go back and kill the
> > > > version numbers if we really want to.

I do like this option though...

> > > 
> > > Sounds good.
> > > 
> > > This patch was an attempt to have all supported platforms changed to the new
> > > convention and keep us from having to send a new patch for each platform that
> > > would need the change because of a new firmware release. But to avoid warnings,
> > > I think your proposal would be better indeed.
> > > 
> > > It seems that currently the only platforms with display that are
> > > using require_force_probe = 1 are DG1 and MTL, and the latter does not have an
> > > entry in intel_dmc.c yet. Moving forward with your proposal, I guess we could
> > > also keep DG1 as is and only update it when/if the time comes.
> > > 
> > > That said, I still think we would need the logic for loading from legacy paths
> > > as fallback so that we do not cause regressions when, for example, ADL has an
> > > update and we "move" it to the new convention. Do you agree?
> > > 
> > > So here is my proposal:
> > > 
> > > - Keep using the same paths (i.e. versioned ones) for the current entries in
> > >  intel_dmc.c, but define them with DMC_LEGACY_PATH() and reserve DMC_PATH() for
> > >  the new convention.
> > > 
> > > - Keep the logic for the fallback in place because we know that it will be
> > >  needed soon enough for some more recent platforms.
> > 
> > here is where we disagree. I don't think we need any fallback, because
> > it will likely not work:
> > 
> > 	MODULE_FIRMWARE(ADLP_DMC_PATH);
> 
> Yeah... I was thinking about this and maybe we could also have MODULE_FIRMWARE()
> calls for legacy paths as well. Looking at the documentation for
> MODULE_FIRMWARE(), the module files are understood as "optional", so I think it
> would be somewhat okay for one of the two missing, as long as the one is found.

I believe this will generate a big warning when the initrd are getting updated
and the firmware is not there. Please run some experiments on your side there with
this idea. We need to avoid these warnings. But we might need to do something like
that, at least temporarily for the cases where we end up in need to update the
minor version and we are out of the force_probe protection.

> 
> I think declaring possibly missing fallback paths is less ugly than overwriting
> the versioned path with a blob of a different version.

Yeap, please, let's not override a path with a different version. This will
lead to confusions later.

> 
> > 
> > this means that distros will only package and or update their initrd
> > with the unversioned path. If a developer updates the kernel, the
> > fallback will simply not work if i915 is loaded from the initrd.

Yeap, if one (not necessarily developer) updates the kernel, but for some
reason linux-firmware.git was outdated, then the initrd will end up empty
and the firmware won't get loaded.

This is the regression that we should avoid. One of the main reasons on why
we are removing the version from the path.

> > 
> > For those older platforms I think we can simply keep updating
> > linux-firmware overwriting the same dmc_adlp_2_16.bin. It's ugly, but
> > doesn't break compatibility.
> > 
> > I defer to maintainers to chime in on that though. Jani/Rodrigo, what do
> > you think?
> > 
> > Lucas De Marchi
> > 
> > > 
> > > - Similarly to your last remark, if we find it necessary, we could in the future
> > >  remove the fallback logic after linux-firmware has all blobs using the new
> > >  convention for good enough time.
> > > 
> > > 
> > > --
> > > Gustavo Sousa
