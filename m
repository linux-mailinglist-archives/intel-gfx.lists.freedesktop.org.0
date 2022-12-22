Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7381C65482E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 23:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D57510E189;
	Thu, 22 Dec 2022 22:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428CB10E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 22:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671747141; x=1703283141;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QIdQ8dKsAzJS8t2YfFeetd9ScMjxksy2WZLP8qfDGjk=;
 b=NXL62qiEDO6c6vZRZ9UO8eMjJqZ9lEWMLS4QQJfULMIT+5nken7DGPQ7
 BIEW67rQRtuj3UNR8HBYMrDfc1uza86/uz/Z+b7yql/VoQNbPjRfHULBt
 Np/qxWK+W/P0LM7x7tZ0fOrCOdR8H4OTP44IHzEzzQBDL8lstZdPeLyB9
 anU+ZPHGlvacFM3FJL7A8NKKC4AeHMZONM/I6pyZT2A/IX1VV7n1Hi+TH
 Ou9GplUVx3aLOXxuvpP0O+HF9amslNBbGBwE089WPdVZHouAChBfWKJJg
 uxI0B2BJUvBsqeOR9hG4tjcDbTTIakU6FpmAfYEczu9KrmkC0KdvMWyd9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="299900200"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="299900200"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 14:12:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="629650132"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="629650132"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 22 Dec 2022 14:12:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 14:12:18 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 14:12:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 14:12:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 14:12:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cLaG7VKx5FmuF9RJYchn+sqKUDkF9c8B11DK1IrmnkleP+pu+Z/M4VwX6h7WDW64TJoav38dXIhy1quN0foAmajjjKW9bikXfM4xmYNhJzywMrEyS8AiibG1MK+hbL8uVyMLGFJhbx9fw5CnM2cvGiG8BKBY5wDT7+YhV6cH8vfPhgyXXpAXy3whpBQYp14e/yuxjzbpFcF/YkuufVXhXIwHdnaW2SwMDePa+iYOFMsDe+TskZ4m4ts3zyW8f2t6Jk1u+BOcHQp/Ad6vUBJu+lj5RDnz2JJtcZmTN6XzhMRVRmXfgi1w/dS8hVqIdMUUeJLksdp9iXLi/DItXNrkjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8q9J6CTFXEd1UCLYtYh5Wbz2oFYjTjmNAg3r8+uwWU=;
 b=MmE/f60tw9pf9YUnePucv44KQ4MZxuSV2nt7yc3/lB0p5yNTVlL8Ghl1TXpvWUi6SIu+NSPu0pSBDEo8U/g7FCzf6+d1thZXi9h+U2wqtpJSBE4B9eEgAWadBTYk0F3cLiYMAOJhPyEYsxmwBZNgu0z+zUacwgMlqMqpxLbsZ2lQ8z0vLaWHHuVEkzHI7Pqbueje5iW+POknERZInDT6RFTA+YnBeH0v0CXjYzAlL/HI+g7NtAnzjNJXEff9E2ga1TUKEoho/nnAq+JDbf15N/0CB3s4U7xskNe9lpqO2Jb/Ot0l7PzvuOfMLU4lpm3gIFrpzdt9ZnpgA8m32gjqXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Thu, 22 Dec
 2022 22:12:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5924.016; Thu, 22 Dec 2022
 22:12:15 +0000
Date: Thu, 22 Dec 2022 19:12:08 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Message-ID: <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
X-ClientProxiedBy: BYAPR11CA0057.namprd11.prod.outlook.com
 (2603:10b6:a03:80::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB5114:EE_
X-MS-Office365-Filtering-Correlation-Id: c6751e4c-7a50-40b4-6fe3-08dae4699536
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MO7RitZUy28ewkwT3hESZIihBAKOeCXZK30OUTw6xbh3r7htvdEdF1dStJqz37ZRsOeO4p0SdphGWlUP4MpUndOoH8VPUozYh0hTo7LM1FwbGjSeTEwB2FUDuFdCIXqFsGgZ4AVbF2ZYnLJHou/+YIhUOaZoZLa2hybHDvl0C9BYle2F6gkpEQDVTv/ZOrXCj7mBPzKDnQLMX0oE+Vh7dapaCoIZiRnk98jIO5KUspdeIHC8zINnYnP6iyarqdmOjlpqF2n7YUihY+qsA3w6qghDUNTPhU4k9dd/m3lAtNXzzh+DQ4Xb2zDHL3klzaHdIBHrQQtdbdq7g62L27+hQmH8J7ByU+O7aPCSlKlNpscYtdbwnssc8lSttiV9lpjohDxsQohlbKCFMkBrjv/Ur/3MCEaCLFGzIFqgiEf+d/irA8P/U1L0UDpLrcR/ogarczpknaRX2ijrGajy5lhYabr1bkUxIo6ty5CB+SRXHzMaRj8xoMYtPBklBmlY00OpfOkrW7nHiqJ+9nZYKWX6RAogehUZujee26XBHO/OrqerTNdqP0PgZeI2FNnhMgU9+zXMaKu6RRJlZNwiPDsvz1Lc9/Ms4/nrXpqMfyQN09NhCoyyCa5F8WkusBTWICSQJaxHK6etGvHLgm/8Nyc8U8Uc+H7T1/UkyH9d3hml1WI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(346002)(396003)(376002)(39860400002)(136003)(451199015)(5660300002)(8936002)(44832011)(83380400001)(41300700001)(8676002)(4326008)(66556008)(66476007)(66946007)(33716001)(86362001)(82960400001)(2906002)(38100700002)(966005)(6486002)(1076003)(6506007)(478600001)(110136005)(6666004)(6512007)(9686003)(186003)(26005)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WNf3e6vaIYHi2wKOTdeT3XAfHbuv1h2+aBmsJwNzE//NDwfJjp6q4gNL/Kh4?=
 =?us-ascii?Q?zXEnvlm3LSC93R8HnAn0oxxCG1QAzmcpswgA7orjz0/E0EKVtoBv06guaetO?=
 =?us-ascii?Q?uvnCmavmUoGgTrXKeiZzTxQ5+gtoQLOScsXN2ZIjlntfCzQscBCiSJhpsZsj?=
 =?us-ascii?Q?qB2zrL0WNAy3cW1dDRvGpBu60CpSoBb1RM7pyZgogfT0HwGt8d2Yni7EAbVo?=
 =?us-ascii?Q?E5SEb0rGdTsuBmmXuMzkw44PGv3BbDJukG+XzVlQcUxALwhGt/sGHbBmf1IX?=
 =?us-ascii?Q?jBypQ/qihzePTTdBc2dVyaO6gZD6jK2/UtZVTzx/Fu4UlnX2JJb72WfqYCj8?=
 =?us-ascii?Q?UneKs+2iGRc/cG3eYS/o77yVUNmpsbN7DQAsfLxQ6w7W3dLfoexBeZs80AiT?=
 =?us-ascii?Q?8rlQfJ1GgM0uf7+x8CGT+OVU2CVBWvCOkBavk6JgvStxCo6wQBwCdNSTP3DN?=
 =?us-ascii?Q?sWQ8rFebVRPhw8Vsfs1WOJeZ9AAXPzxzBFJM3sY+hsEKLpCHF2z8UUc4eVF4?=
 =?us-ascii?Q?ZGh1pnoAzrZ8ovvAcqpWEk9lvd0OMXHyDLDm7xnSstvt8qyW/Bq3yyrUXjgu?=
 =?us-ascii?Q?XSs/dWJ8mMA4uFWjebW4lVs+oyFTLmTu9kFAuwPy1aE1d/own+7wnFXty4bG?=
 =?us-ascii?Q?HFYs0HSNZActSNc532T1+5UzFRiyrAP3jjBOVXAz+6o1QfXQHA/+ByY4hRHs?=
 =?us-ascii?Q?UoVc0deU52SrsMZenlvE37TfB+Ey7B8Nu3MFHbOhl3BpXX5hGptnrBqyTgob?=
 =?us-ascii?Q?qDJc9FF7PDFYQ3ohUmz5Gam22j0f5Phe4CnGa83UbaSDBioR9Ccoj7sJ1zhe?=
 =?us-ascii?Q?VS/zMbjuAQ9QoUohwMzPUc/cUG3cleVyeJ0IHNXbGCDE9caqCpV32Sib/3fs?=
 =?us-ascii?Q?MEs8XEiPWHIkVXr9ANyqT6ZD7B0CDZ+FbDwccRnFN6Zbp/FEUVcpRiSEZiJ6?=
 =?us-ascii?Q?jSo8GtHJejvTqrVD3yxY6T+KefUtfARXd1duvVzogh6rBxNJqCiGIh/QS3B5?=
 =?us-ascii?Q?+JOGIIXOalmMH8GK6vsZMYRU7EoBdfPwPTHammlDmzdanvl4faEcWQN/TRmb?=
 =?us-ascii?Q?CE272AqT8Mg3dx89c/3Fx77fFxIOvAFipqDfgjKAGSxnV063tTu9vY3qvr3g?=
 =?us-ascii?Q?S8pBhQ0j0lDM/GJbGlOOwRqrzn+PVYTlAhLtH4CLKKpHtLbgr5kKqitr4gAv?=
 =?us-ascii?Q?bUIpvR4v+vpbMWbG6rg/CVRGQ5vwRtKUYQ92R1qpokhy+/+YFb76tyjhrVpU?=
 =?us-ascii?Q?E05rjhTJS9Wo9lGtrDT6Zzlw/cKalXMdqcgtUwrsCdT3qspvkB5SotfByP1i?=
 =?us-ascii?Q?YKSTzxuodj+2Y5jbxR79C438C/zeZYQgkUXOIGj4shkJ00nYlD8+GIOG988a?=
 =?us-ascii?Q?3a7fImCnTDIjU2EB9IYY3zm2e2/zWx3Mg+ykaRm+GqEUyqsedMmwUQl9CPIJ?=
 =?us-ascii?Q?g+zqQtqlf9RGuXpni0Om8l7emVvYRYkpxlbFv9k/GX38XpOh8aYF5Xvy5VAg?=
 =?us-ascii?Q?8iU32Ch5r22l1inj6gVpi7SPxAoTLUSk/ifE5yOnjHhf/5hBhiqUaLbWkyjR?=
 =?us-ascii?Q?cBo6lwVKqgXZ6OFMGlNPyqoz6wfO8uT9epREEAE+FLWg5cfxBveY2Cox9xP/?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6751e4c-7a50-40b4-6fe3-08dae4699536
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 22:12:15.7886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZJ3XfCGxliyTuFgYbSEQQf0TVC6XdB5xDAoGGRr0zfqAnodF1C/qrxZkouKVdKC5SWoWaOTm5MMDqhnt30j/qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi wrote:
> On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
> > On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > > As we do not require specific versions anymore, change the convention
> > > for blob filenames to stop using version numbers. This simplifies code
> > > maintenance, since we do not need to keep updating blob paths for new
> > > DMC releases, and also makes DMC loading compatible with systems that do
> > > not have the latest firmware release.
> > > 
> > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
> > >  1 file changed, 82 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 4124b3d37110..b11f0f451dd7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -42,51 +42,70 @@
> > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> > > 
> > > -#define DMC_PATH(platform, major, minor) \
> > > -	"i915/"				 \
> > > -	__stringify(platform) "_dmc_ver" \
> > > -	__stringify(major) "_"		 \
> > > +#define DMC_PATH(platform) \
> > > +	"i915/" __stringify(platform) "_dmc.bin"
> > > +
> > > +/*
> > > + * New DMC additions should not use this. This is used solely to remain
> > > + * compatible with systems that have not yet updated DMC blobs to use
> > > + * unversioned file names.
> > > + */
> > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > +	"i915/"					\
> > > +	__stringify(platform) "_dmc_ver"	\
> > > +	__stringify(major) "_"			\
> > >  	__stringify(minor) ".bin"
> > > 
> > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> > > 
> > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > > 
> > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > +#define DG2_DMC_PATH			DMC_PATH(dg2)
> > > +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
> > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> 
> We have an issue here.  Previously `modinfo --field=firmware i915`
> would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
> i915/dg2_dmc.bin
> 
> that modinfo call is what distros use to bundle the firmware blobs in
> the initrd. It may also be used for creating package dependendies.
> 
> If we do this, unless they have updated their linux-firmware
> packages, the initrd will be left without the firmware.
> Just checked
> git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
> and we still don't have the unversioned firmware there.

Interesting. Thanks for the explanation!

I think one way of approaching the issue would be to synchronize the process:

1. Work toward getting approval for the patch (i.e. r-b);
2. With the approval, send a PR to linux-firmware with the necessary changes;
3. After the linux-firmware PR is merged, the patch could be integraged.

I think that would still apply if going with your proposal on your next comment.

> 
> > > 
> > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > +#define ADLP_DMC_PATH			DMC_PATH(adlp)
> > > +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
> > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > 
> > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > +#define ADLS_DMC_PATH			DMC_PATH(adls)
> > > +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
> > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > 
> > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > +#define DG1_DMC_PATH			DMC_PATH(dg1)
> > > +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
> > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > 
> > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > +#define RKL_DMC_PATH			DMC_PATH(rkl)
> > > +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
> > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > 
> > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > +#define TGL_DMC_PATH			DMC_PATH(tgl)
> > > +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
> > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > 
> > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > +#define ICL_DMC_PATH			DMC_PATH(icl)
> > > +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
> > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > 
> > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > +#define GLK_DMC_PATH			DMC_PATH(glk)
> > > +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
> > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > 
> > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > +#define KBL_DMC_PATH			DMC_PATH(kbl)
> > > +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
> > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > 
> > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > +#define SKL_DMC_PATH			DMC_PATH(skl)
> > > +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
> > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > 
> > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > +#define BXT_DMC_PATH			DMC_PATH(bxt)
> > > +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
> > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > 
> > > @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > >  }
> > > 
> > > +static const char *dmc_legacy_path(struct drm_i915_private *i915)
> > > +{
> > > +	if (IS_DG2(i915)) {
> > > +		return DG2_DMC_LEGACY_PATH;
> > > +	} else if (IS_ALDERLAKE_P(i915)) {
> > > +		return ADLP_DMC_LEGACY_PATH;
> > > +	} else if (IS_ALDERLAKE_S(i915)) {
> > > +		return ADLS_DMC_LEGACY_PATH;
> > > +	} else if (IS_DG1(i915)) {
> > > +		return DG1_DMC_LEGACY_PATH;
> > > +	} else if (IS_ROCKETLAKE(i915)) {
> > > +		return RKL_DMC_LEGACY_PATH;
> > > +	} else if (IS_TIGERLAKE(i915)) {
> > > +		return TGL_DMC_LEGACY_PATH;
> > > +	} else if (DISPLAY_VER(i915) == 11) {
> > > +		return ICL_DMC_LEGACY_PATH;
> > > +	} else if (IS_GEMINILAKE(i915)) {
> > > +		return GLK_DMC_LEGACY_PATH;
> > > +	} else if (IS_KABYLAKE(i915) ||
> > > +		   IS_COFFEELAKE(i915) ||
> > > +		   IS_COMETLAKE(i915)) {
> > > +		return KBL_DMC_LEGACY_PATH;
> > > +	} else if (IS_SKYLAKE(i915)) {
> > > +		return SKL_DMC_LEGACY_PATH;
> > > +	} else if (IS_BROXTON(i915)) {
> > > +		return BXT_DMC_LEGACY_PATH;
> > > +	}
> > > +
> > > +	return NULL;
> > > +}
> > > +
> > >  static void dmc_load_work_fn(struct work_struct *work)
> > >  {
> > >  	struct drm_i915_private *dev_priv;
> > >  	struct intel_dmc *dmc;
> > >  	const struct firmware *fw = NULL;
> > > +	const char *legacy_path;
> > > +	int err;
> > > 
> > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> > >  	dmc = &dev_priv->display.dmc;
> > > 
> > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > +
> > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > > +		legacy_path = dmc_legacy_path(dev_priv);
> > > +		if (legacy_path) {
> > > +			drm_dbg_kms(&dev_priv->drm,
> > > +				    "%s not found, falling back to %s\n",
> > > +				    dmc->fw_path,
> > > +				    legacy_path);
> > > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
> > > +			if (err == 0)
> > > +				dev_priv->display.dmc.fw_path = legacy_path;
> > > +		}
> > > +	}
> > > +
> > 
> > I'd keep the request_firmware() with warnings.
> 
> then not only it will be missing from initrd but we will also trigger
> new warnings. Humn, I think one alternative approach and my proposal
> would be:
> 
> leave platforms that already have published firmware as is as long as
> they are not behind a force_probe. For the new platforms, like mtl,
> just use the platform name and don't bother about the version.
> We will also have to fix it in the linux-firmware repo.
> 
> We are likely not updating DMC for very old platforms anyway, no need to
> rename them.  I think that after having symlinks in place in
> linux-firmware for a few years/months, then we can go back and kill the
> version numbers if we really want to.

Sounds good.

This patch was an attempt to have all supported platforms changed to the new
convention and keep us from having to send a new patch for each platform that
would need the change because of a new firmware release. But to avoid warnings,
I think your proposal would be better indeed.

It seems that currently the only platforms with display that are
using require_force_probe = 1 are DG1 and MTL, and the latter does not have an
entry in intel_dmc.c yet. Moving forward with your proposal, I guess we could
also keep DG1 as is and only update it when/if the time comes.

That said, I still think we would need the logic for loading from legacy paths
as fallback so that we do not cause regressions when, for example, ADL has an
update and we "move" it to the new convention. Do you agree?

So here is my proposal:

- Keep using the same paths (i.e. versioned ones) for the current entries in
  intel_dmc.c, but define them with DMC_LEGACY_PATH() and reserve DMC_PATH() for
  the new convention.

- Keep the logic for the fallback in place because we know that it will be
  needed soon enough for some more recent platforms.

- Similarly to your last remark, if we find it necessary, we could in the future
  remove the fallback logic after linux-firmware has all blobs using the new
  convention for good enough time.


--
Gustavo Sousa
