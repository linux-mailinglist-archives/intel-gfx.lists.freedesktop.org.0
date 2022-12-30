Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601CC6598C6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 14:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A206210E025;
	Fri, 30 Dec 2022 13:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D310410E025
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 13:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672407399; x=1703943399;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=s8LLXjXQ9IsY+TEzthV/E1FcBqpxvBqods58xV57PN0=;
 b=J30Y/LqAorKTsRhQQKgaNNX5ztFZNb6YCAjghokzKlvQs6fsijf3pJmZ
 4Z61nKD7p3zpZSApAwPPf8gE8iXNHwIOUqdDNUNmU0dyyhPwX5dYPUaB4
 v/BG3kECvf4dPRuIMb9IdRrMkDgGaO/WBRXUmUbsNysMgXrp8uAM7p/if
 EuOE7CJVlarkbLnSki4okQj7Tmgf/Za0a4eootCAY05FdpLB7pMbR4f1Y
 EF0B17wSpDmv0nRES9DoAAesEAY6adKs8sg08q31PghANxSng4cI29lIx
 jpGWGiMJRcFoyM0H3ZnqlTjBRG44gDysHLY5aPKgEt2UyJKtkcqsgIBCY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="321280935"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="321280935"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 05:36:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="982658829"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="982658829"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 30 Dec 2022 05:36:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 05:36:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 05:36:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 05:36:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aN+fK4/8LgCv9n7nzC4M1P0qa5onLMEeAU6hO8/7ccF5IJ1itvkv6ysXAfDAGKn3/AuK8RXikILc+g5018Y4QGgXeDoR/zeYAkL/MRD9jPN9VIKyBxX0lW01k7TGcLvZKLlH0cy20fCD05J3KvzUpuQkW2qNZ6bIrVkaahyefvmSR1zwoLxX2osWKFErNqa2y+p7FJKcDQyDo7lm4od3O9AhVE1VGOlzMyj4svq2gyerAD/sgn8zs1ZGhV85RVDj4LBjwhqU1Uw5EgZymB3tueYAmWLIeENwmJMk11pScS/ksfmbarThczMeWl6kWPBDDYOaw98Jl1QeHkGmg94PVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WlF4t5VUb3hGKch6Tgy5tT8VD9gWs5kS2tH9YNx+Kcc=;
 b=hlqJCrfNlCGqm/8EnO8oWm/cBkd0k0HhCr/Gr8p1D8W/1MfJ0SYvlH35hDGeM/Z1y9reqOhoutNZ9eMOCujfgM/qOH9r98MxNYE/hoITmM9A7UJJPdChAKgK7FeSCHkovGpAguiVdQ5RF5QI+oujYVbXtUYUkDi8izvLB119djI9qaYz0u2uorzmF40loj8AuMiSUOclTzzyp/BTC03c+UB8sh35tk4Saxh8308iZ9WHhvnzkzWQuCTkzxSOEP8TdpRuxjb+fKnsTMkzfFF0JvFTOLe/cu0DlTZcjaXle1Ku9OPaa0rZorfbYjYAlf0mSNFWzmejkscPlm2ebMWKjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH0PR11MB5331.namprd11.prod.outlook.com (2603:10b6:610:be::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.18; Fri, 30 Dec
 2022 13:36:34 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 13:36:34 +0000
Date: Fri, 30 Dec 2022 10:36:28 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20221230133628.oyk4vlvaoi7ue3b7@gjsousa-mobl2>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-3-gustavo.sousa@intel.com>
 <Y66lryH0QYwmtxbN@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y66lryH0QYwmtxbN@intel.com>
X-ClientProxiedBy: SJ0PR13CA0139.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::24) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH0PR11MB5331:EE_
X-MS-Office365-Filtering-Correlation-Id: b3c3885e-b785-45f6-6a31-08daea6ade3e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8SLFt649qdgeiACkwQ3sTp36wPQKKW/nYBaysZEel7kOufuowOsGAvzUtg0kHWe4cFR7FsrVMxidRvw/SVDy+VM3fMqKO7QrlQ8exclS4gVOdBMMwU4yCVviCQL0Q5JeG/M3kr+vpCYp+2imTnd3y0zIwnBjBc/U2L6ZuwkZRN9wVpQUHbxkLWoRlkTdhHHI8qYS8LVS3jKYE93lTb1/sUcxzVRtDpW+B7Qde4/VgyVWhG666rUuwNoYBD7NeCiQL4SDP5OdSOTF8myzmIFaC+mRasMO7YBTY3aEezOX2jAbtB0l8X98CMKC8IuaBA35BROUlmJhUhwjsphXgxe/z20bruzT4dn6o+cJHqKJNEJ746fO5EucfNRTF2arR0BvpAHPqqsRhcFDRbSg8f/wKlYlpL8PYEt2f4H2ozgL63YflDhD9Iw6F0Py3uxb4UP6RfwR6QvwojcQNrMlSjUjWTAxouqljY9+YrJxXzj8jSYXZNP0GwPaGTW7ruMIKBUgCdWaM0HaKYnBp1r0QtlhOK36UNtaVYdsJW+igpc0N68wng5F3AUeYRFyRpB1lgBeVvuVzYhg7yfJLd0UU+lsilmhTjAipZzjtcjnfkNuIf8oXus1v6oyGM+ZsQVXpZov47RtF4CpqbgF2vtYFKczA36w1fJQG1JY29paVKhDKvM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199015)(83380400001)(86362001)(38100700002)(82960400001)(2906002)(44832011)(41300700001)(5660300002)(8936002)(6862004)(33716001)(6666004)(107886003)(6506007)(478600001)(1076003)(6512007)(186003)(9686003)(26005)(316002)(8676002)(4326008)(66556008)(66476007)(966005)(6486002)(54906003)(6636002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EFaKatEphYdPi9169r4QsHAtcG7wc3dSS0hKQNCy1Qx9/L9phwM1D8h4dUfQ?=
 =?us-ascii?Q?wPOz2ukZqzn2CGMQgi/OV2DYxcnQ2fKbJwhnvJHlh4T7RYqOEhQ/lMPaOgAR?=
 =?us-ascii?Q?cVdYYwJ2TRkdIo/a1TeH1EDrcjOx+zIAoGAAvwmKdNKNRzQ7UJp6n2j61pQQ?=
 =?us-ascii?Q?HLaaYgDnNURiir11MOU2eTOBMfEz4nnb62xgswHNxQAKt0JXkmmlzVImy8gj?=
 =?us-ascii?Q?uQuzDtjEhB9Vaa7XnNhMQUT38P5JBk5SrHEgKH6EZ9Chv/fsV1xPD1Uf8JBO?=
 =?us-ascii?Q?M6SvvWsFwVvi8/jto13uoCiDxZpLSVQctfl8LfcbbHZZX9Tv7rJuYJiSfIf+?=
 =?us-ascii?Q?3VQFRquosAp1n8jUxifCQPFXu7V3FdSCNKvfxxs2aZQeKDPcv5oA//++eXrl?=
 =?us-ascii?Q?gozMfKnr5zx6tnR9LQx92QIAkLZjF1hfTxndxtBX0yJaM7qWjzDmLOpIQ24w?=
 =?us-ascii?Q?VRoDaNScn/ZPjyThI852CcuzVPsNeTYYD0A7r7nsvpMsy5YqC9WY7HlqoI2b?=
 =?us-ascii?Q?35d4oZfu/Vfgaq19hUnuiIuT1HNDx949nnOGO90dzKFfX/FDqABT6VKeG6PK?=
 =?us-ascii?Q?BC10zYyDxotbuttqgFZ9AbzfwcIP1yvB96XV8hcG8fYXZlYrSbLR1Eg4qNPe?=
 =?us-ascii?Q?N34rFmz3OYLa3asNqZHlbaSMPAgfvh0k1Fhebueu+zEYByYV/Zj1HxB9ka+q?=
 =?us-ascii?Q?23i0LBFdbeillIHICDT5At7gyAsAlew7KPke1nRuIj53fG4jt769oNTFkV4Z?=
 =?us-ascii?Q?9fW0dR+DbcKvDdavweba36TWsxJVwcKKl9pmEWsAQ2ov9tQKq9Hvvm7ZISBB?=
 =?us-ascii?Q?uYZKLMDDFqTk5NeHyvF5stalTS+Yr7rr6gEjuBVAJkvqMPcA1hJ01KEJmX1e?=
 =?us-ascii?Q?BVTZe76IRojkjeTv8BMnkOwx/QUQ1Se1Yvf+5U7sHhDzRt7+7TUQIUWKTkJU?=
 =?us-ascii?Q?DtzJBvQ/1bWihkkEMNddEBZ5fz+mzyY//2jCg5DHzblPa8CB+xiDsARct9lQ?=
 =?us-ascii?Q?i0WbqXuf3RmmXDHtphXDPmFaRku5EogPxYYBabHCjEKZAQ70xVApu/l0kv9M?=
 =?us-ascii?Q?DOFS1vSWWVs9Qbv0xOgktaDrnIL7m7u8860csMF5WbE9AjddUv7N3+kzCB+C?=
 =?us-ascii?Q?a6gxBkY+0uXNI9nWFyyUAcg9TzWewJEd5lnyetgPhDKS55w47aHsY6EmPHhs?=
 =?us-ascii?Q?bbYtgyDjp78IuiyYdQ4w05qEjg1Dr/B4Y1AAuz5dK2CwjW8s969ydpjtZDey?=
 =?us-ascii?Q?ZdsXSqh9N4aJGMEK3otTSihi9P4Ur088/bOReZqiXMSv+cLfHM9fa0KUPnCo?=
 =?us-ascii?Q?VSFccdUiZ0J6z5F6gw9f/uTS6a8BLeREYOFyCJ+u9qkeK0sIazxN3lO8ODjZ?=
 =?us-ascii?Q?RgAY6HYWmmpPso/Xz8xPiwnjjd+3K3HqWX+SdXAUKW0v0YNDR76OLA0Xw5r5?=
 =?us-ascii?Q?7HkmKkzaqUqwyXxx2yvQ+o1QQ902CfCT9i06uGU6taWElNlxfYwTkThNkn9A?=
 =?us-ascii?Q?NA2/QNkKGHirSgSVutqMF7PAO43jj4vEOzbIZW1WSFyxPZ5TW2wsRULarUUW?=
 =?us-ascii?Q?nhXGluwTajBm4YqJHDYkv+9c3ctIGAuP66UOr1q05LeRTmkitcIZm9sAidKC?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c3885e-b785-45f6-6a31-08daea6ade3e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 13:36:34.6474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCTMaUDmS+5gJ4eni1gR0Jv4tJqoZG4eGBYCfws6M+i4q5Ncn3OZ32Ts99B4PpHrT4kYxM1sChcnlvMW7lgKqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dmc: Prepare to use
 unversioned paths
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

On Fri, Dec 30, 2022 at 03:47:43AM -0500, Rodrigo Vivi wrote:
> On Thu, Dec 29, 2022 at 04:07:40PM -0300, Gustavo Sousa wrote:
> > New DMC releases in linux-firmware will stop using version number in
> > blob filenames. This new convention provides the following benefits:
> > 
> >   1. It simplifies code maintenance, as new DMC releases for a platform
> >      using the new convention will always use the same filename for the
> >      blob.
> > 
> >   2. It allows DMC to be loaded even if the target system does not have
> >      the most recent firmware installed.
> > 
> > Prepare the driver by:
> > 
> >   - Using the new convention for DMC_PATH() and renaming the currently
> >     used one to make it clear it is for the legacy scheme.
> > 
> >   - Implementing a fallback mechanism for future transitions from
> >     versioned to unversioned paths so that we do not cause a regression
> >     for systems not having the most up-to-date linux-firmware files.
> > 
> > v2:
> >   - Keep using request_firmware() instead of firmware_request_nowarn().
> >     (Jani)
> > v3:
> >   - Keep current DMC paths instead of directly using unversioned ones,
> >     so that we do not disturb initrd generation.
> >     (Lucas, Rodrigo)
> > 
> > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> 
> I also don't believe this link is a good reference here...

Noted.

> 
> Regarding the patch, I liked the approach in general.
> 
> The patch is really neat, but I believe we will need to split it:
> 
> 1. Add the new DMC_PATH and DMC_LEGACY_PATH only with the introduction
> of the mtl_dmc.bin
> 
> 2. And the fallback function, add only if/when we get a real fallback.

Okay. For future reference, how should that be implemented with respect to the
organization of the patches? I see two ways of doing it and have a personal
preference for the first one:

a) The future series would have first a patch adding the necessary functionality
   and a second one using it.

b) The addition of the functionality would be incorporated in the same patch
   using it.

For example, for (2), (a) would be a series two patches, the first adding the
fallback mechanism and the second one changing ADLP to use unversioned paths;
and (b) would be all of that in a single patch.

I looks to me that approach (b) has a potential issue. For example, let's say we
in the future we decide to revert that specific firmware update but we already
have other platforms also using the fallback - a clean revert is not possible
there and we would need to make sure that the fallback mechanism is kept.

That's why I like (a) more and I think (b) would be more appropriate for cases
where the functionality and it's user(s) have almost like a "1:1" relationship
(not strictly speaking, read that as "having a somewhat static and restricted
set of users").

> 
> Oh, and I just realized that when doing the new _dmc.bin path we also
> need to make sure that we read the fw_version from the header and
> print as a drm_info msg somewhere.

I think the version is already being read by parse_dmc_fw_css() and printed at
the end of dmc_load_work_fn() if the blob was loaded and parsed succesfully.

> 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 62 ++++++++++++++++++------
> >  1 file changed, 46 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 4124b3d37110..12f05b2d33a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -42,51 +42,59 @@
> >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> >  
> > -#define DMC_PATH(platform, major, minor) \
> > -	"i915/"				 \
> > -	__stringify(platform) "_dmc_ver" \
> > -	__stringify(major) "_"		 \
> > +#define DMC_PATH(platform) \
> > +	"i915/" __stringify(platform) "_dmc.bin"
> > +
> > +/*
> > + * New DMC additions should not use this. This is used solely to remain
> > + * compatible with systems that have not yet updated DMC blobs to use
> > + * unversioned file names.
> > + */
> > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > +	"i915/"					\
> > +	__stringify(platform) "_dmc_ver"	\
> > +	__stringify(major) "_"			\
> >  	__stringify(minor) ".bin"
> >  
> >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> >  
> >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> >  
> > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > +#define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
> >  MODULE_FIRMWARE(DG2_DMC_PATH);
> >  
> > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > +#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
> >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> >  
> > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > +#define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
> >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> >  
> > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > +#define DG1_DMC_PATH			DMC_LEGACY_PATH(dg1, 2, 02)
> >  MODULE_FIRMWARE(DG1_DMC_PATH);
> >  
> > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > +#define RKL_DMC_PATH			DMC_LEGACY_PATH(rkl, 2, 03)
> >  MODULE_FIRMWARE(RKL_DMC_PATH);
> >  
> > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > +#define TGL_DMC_PATH			DMC_LEGACY_PATH(tgl, 2, 12)
> >  MODULE_FIRMWARE(TGL_DMC_PATH);
> >  
> > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > +#define ICL_DMC_PATH			DMC_LEGACY_PATH(icl, 1, 09)
> >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> >  MODULE_FIRMWARE(ICL_DMC_PATH);
> >  
> > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > +#define GLK_DMC_PATH			DMC_LEGACY_PATH(glk, 1, 04)
> >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> >  MODULE_FIRMWARE(GLK_DMC_PATH);
> >  
> > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > +#define KBL_DMC_PATH			DMC_LEGACY_PATH(kbl, 1, 04)
> >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(KBL_DMC_PATH);
> >  
> > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > +#define SKL_DMC_PATH			DMC_LEGACY_PATH(skl, 1, 27)
> >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(SKL_DMC_PATH);
> >  
> > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > +#define BXT_DMC_PATH			DMC_LEGACY_PATH(bxt, 1, 07)
> >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> >  MODULE_FIRMWARE(BXT_DMC_PATH);
> >  
> > @@ -821,16 +829,38 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> >  }
> >  
> > +static const char *dmc_fallback_path(struct drm_i915_private *i915)
> > +{
> > +	/* No fallback paths for now. */
> > +	return NULL;
> > +}
> > +
> >  static void dmc_load_work_fn(struct work_struct *work)
> >  {
> >  	struct drm_i915_private *dev_priv;
> >  	struct intel_dmc *dmc;
> >  	const struct firmware *fw = NULL;
> > +	const char *fallback_path;
> > +	int err;
> >  
> >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> >  	dmc = &dev_priv->display.dmc;
> >  
> > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > +	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > +
> > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > +		fallback_path = dmc_fallback_path(dev_priv);
> > +		if (fallback_path) {
> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "%s not found, falling back to %s\n",
> > +				    dmc->fw_path,
> > +				    fallback_path);
> > +			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
> > +			if (err == 0)
> > +				dev_priv->display.dmc.fw_path = fallback_path;
> > +		}
> > +	}
> > +
> >  	parse_dmc_fw(dev_priv, fw);
> >  
> >  	if (intel_dmc_has_payload(dev_priv)) {
> > -- 
> > 2.39.0
> > 
