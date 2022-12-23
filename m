Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714FB6549DA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A0F10E0D1;
	Fri, 23 Dec 2022 00:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7EB210E0D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671756747; x=1703292747;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0JC7UnoovYr5pe86vzFwU8aYWDdc/I6UYLhZnmfPQec=;
 b=g2zDNufa0+3bnSTxExc9iD/oCEWdzBKw0jR0CafijwU5EMopCLQXQRWN
 ZGklC6S7gQfyjgLiPSClbtSvSOVbewSfTLL3Wn8fxG1QpRL/A10kMYGRX
 tCgN//QSQT6DR+ofo4bNLWTNG4ZIupKlZ5UyreAekvcjQsIAGN5aydGLn
 c01DrSeVpgWfotbRj1+eDSiUE0DMt1snF8J+YQRdqZVYHLmNw86ZSHsOw
 au8MLBKRjIyeh7mZXVsao0f4YJbu3wvTx6Z2Sb2irf0hg+RaEmqJg76ik
 9N1bRYLuMRXFAmBrgCYXOhAtbyakGXU1o1ASJHBCrYVi7kDCSrl2OMBd3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="299919563"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="299919563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 16:52:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="645451474"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="645451474"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 22 Dec 2022 16:52:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 16:52:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 16:52:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 16:52:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oH6cb85Z5QwG9PYGm5TDSVtNVO5YZFJSwRhjnrIQFO7VXmJkvQCES2TbETORqk7Cbv3X7jhxVAF6+6Ge87kp987rYMXOTR45bRM0Ek6sQ0aplkhOk/rNHe5ZwZzCh7D4kPQkTD3yvEFIB0Cjd2cq4PgIrjn/t7P4RFV2QhZO9EEhaIs+Y1wv7t2ShijVvY1329lYlBY5iuAQk2K6YBRyq/kN7/J9JUv2FsVeGyECggtOuEFWnoOmO47dx0WQNeuYZCDlhQT1TuQnVvQDBBVbBjAFtbeZHwWw49ZqfjDq/Tb34Vev2DS4KIwSHjwp0rWqSdJh2IDpLjOBhE6hQ8Q1cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVQG3JBx9z7QgaqqBDLaIuhi90etNMcof7O4Ym6bqE0=;
 b=ZyU+aBULWQTB06cnhU7/QIP8Z9G9OZ3FmghNc5U4E6JafFrEtO8PU+x02f3gnCyT92rmQvxToP7VQSX200/144XmZ1+006nWCJAee7qUpOgftPS8ARdo6OyxYB3VBHKTp8gXZbnEN6uKbRn3Hht5Hd+12W4I20RFVfmY6zseXJ6H8Wf1sUEmXTVlPX0lPTgBj8OwLAiKZOFtal/G92J4zNkHBN6nRcqUDvr0xXAHS5ETyyZjUWtKuQM9VULZn9epDTgMgJyYJ2jpGup0AckpPwLcQMSVZqifePYQPxZ3aXZtQf117j7TXpMArl8NLNMpYy7o2JzM+Vvspw5ravJmKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6055.namprd11.prod.outlook.com (2603:10b6:510:1d3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 00:52:23 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 00:52:23 +0000
Date: Thu, 22 Dec 2022 16:52:21 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
 <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
X-ClientProxiedBy: BY5PR16CA0034.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::47) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6055:EE_
X-MS-Office365-Filtering-Correlation-Id: 20905d94-de9a-4bc6-d291-08dae47ff3fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3ycjf8hZfW3oo2myks0YNU1/aTtJRz/wce19YCHfiSC2cPeFE0j9biyMiEY8/XdfjbdhINDgNLASBJjWNhQOkSjobfZtHSXa0slF/YKGgP7BvPUEzxNL5weOFIiJr7EEeeWaFrjLmfK0q7D8LddQfx7rso7MQ3iVw5bv17LdWqUWQmUNw4pA70GdJZWepXHLHBfY6xLmd2HEGzLau5rq5dVaLyjZkOPhGJ3fyzjMWboQubDi9gSn55QvCRMBdtJJJqbRhma7yRuUSXHJ2LDa+elS/3lVKmGNBhkfzL6e+76S5zUg1VfmIiOfe8mMviyxKcYiHIZuDfYKyBSxCamQb9Bt6C1tzI26xiuH649DcL0l6r1TyaxWlUzU4lnFDpbgdFufazKBwiVV4G+J8W2Tn5ADU7fVQnbYWlYHk6MTzTSL5qIEjlML4BMPa3kXYQlqw9auyLb/IaDeoDFkNdk/ojZLF8U6yeeYF5bfVKSbq9E6EGgZ+ZB2fJWSZEFbr1qFW1dflAi7wDJkROu66oAaZDvGc6G3N2K8FPJSwCdOuWQhbrd+4calj4IbBUFIgCCG1kjtvhcn2iOpFB3I5/dqIjBLWeut5btfFgKv/HTPUVo/x+yOXuN3W6BYGRpSzvMzkXah87QTWNFHRXHOCAjrZWjKfzP+DIPkuLLzFylGcY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(346002)(396003)(376002)(366004)(451199015)(6506007)(2906002)(6636002)(54906003)(82960400001)(316002)(6486002)(966005)(478600001)(38100700002)(8676002)(4326008)(1076003)(66946007)(66556008)(86362001)(36756003)(66476007)(6862004)(30864003)(83380400001)(8936002)(9686003)(6512007)(5660300002)(186003)(26005)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dxGxFcJh4wfQ7O7VsuqxkQq+M8ESubWdhH6RFzg70zmHwBd+iHSPRte/eMVX?=
 =?us-ascii?Q?KooaDBQn/i7sQWrUUWSW1H34H5AXUNo8vYdLE0UCaPYIo4NSW6hjkemJNwPF?=
 =?us-ascii?Q?YOJUNH+SBWDBus0fjEbBSIS/tCS8HnFTd4rYqhLsL14qW084IN8vZ4t4GizT?=
 =?us-ascii?Q?gGnbGHQDel7MWrw1lJpkz5pUe4yXqsJF7ZRhfmSv73hepYbTuQykm0zjmfoU?=
 =?us-ascii?Q?ZQF1bOLX87Qqa5uHFEL5l2S8CzlbDrHvLt/OQ/fFg+G0Ay+4w/5Pjkgcyl+W?=
 =?us-ascii?Q?LXga1lhAFfJrpZsUAGXf4M8PNFtRDiBYLt0rgfqeYHYsnqS+DWkWcm42l7lz?=
 =?us-ascii?Q?4pK3kwcmN1NXsmDb4afeFt1/VY0BQiI9fdnED98mm9PnZuWPzgc7I6/yE8BQ?=
 =?us-ascii?Q?+PR3G95378bqpt6YHsdnU4nHefzF9huZHjmjVUt7hRpQnjcgF14QzLqq+R/D?=
 =?us-ascii?Q?3+UHjJiv/uR2MNzHXFm5/hS3bjBS6ikXaps1TNnDkViMmulmxdD1cd1HjuoX?=
 =?us-ascii?Q?jsozTEoDskKP5rXQJDY/PG19hJrfRvwNDf3D+KN3bnvHhr7xdq4WoQcQEeCu?=
 =?us-ascii?Q?5deGQlr1CCupdrmvzrmuFXWGZ2DFhC07u2ijNLRnHcbPzjzG5qygaXFmTDD3?=
 =?us-ascii?Q?FQkPuYAcdChT2TFsMdqiELEYRf232rLviDDib70eqzO8+tBd4EI6ZSVuS2/0?=
 =?us-ascii?Q?+jvfoIYmNdn+SnQJRk8JR1n/gXV44Y2yoVD6Bi3Q6nlV9ddcq7W/eIzMQAEg?=
 =?us-ascii?Q?L2Cj7fvzQY2E90qzRewhLWqfZwISyARhaEXgY9g69UMkKXzJkMAkEUrlxYaS?=
 =?us-ascii?Q?vAXfRx1JcyX28N2ntTc90PnJ7pSFkLtpTNFs7qZwd2X+0UC4SuWv4Vh5Tvmz?=
 =?us-ascii?Q?yGNExNVR+HIZ0ybC66nfcwI0QwHEb70sHusPk/HoXvDMpwnAhLWswuZSwpl8?=
 =?us-ascii?Q?H5LnONWrrFL1q7GdeKGU6XNDx7IHIM/CPVCQ04Pgv4fBSSu/oW4gV5C7bJDX?=
 =?us-ascii?Q?D+ePYr7MAzPFTtU5q7AYbIACeurC7A2XbRzOtNALyQG36zMPYFuwKIaBnJtE?=
 =?us-ascii?Q?5qaRpx92DXkzjFJTmobKyQ8M7dkljVodRlswn7Q7OCpOvM4UDI0bngX7juff?=
 =?us-ascii?Q?5DglzOLpluhjqrvpUD+dP4EI4Myq58aqIPGp76VCeY5tBQI2Lh19LQilEgtv?=
 =?us-ascii?Q?YUuSLvTH/RVfsRJFaFJO/kmFDEujaRMp3RJv0tS801795L6yYvHFUZUirYNF?=
 =?us-ascii?Q?Qp2KTg/NWlUs49PBeKeJvR2D82gvsVhE/tKt1DZBLFbwB6czLNsP9HwbBefw?=
 =?us-ascii?Q?cBZd40d+i4rpb8IZ4B+a5ePhKrc5pupgRGVvXtOp5eULVtqaQvhcm2XU3kEN?=
 =?us-ascii?Q?NIdzdC3Vsbvgav1JIgaL4RBZEHfuc5vC34AoTF6zhTITWMIWQtsByaQyuqfE?=
 =?us-ascii?Q?cmjisXYGsSWauEQD3dSyD23llmtV7jBfDdrX2uY8zHBnBkZut6SRU0ugx7bW?=
 =?us-ascii?Q?sk+CWnmM1cJqm21BUOBP+69c2GOY7x3jtCgFwT0gX/GDbaBc3QTGsRV0DcC+?=
 =?us-ascii?Q?pmg+Z0CPO25uNPM14KDnnsZ0ILDX8ghPk65U9wf6hEocb9x+TiIXU1FdAfj4?=
 =?us-ascii?Q?/g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20905d94-de9a-4bc6-d291-08dae47ff3fe
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2022 00:52:23.4076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: apTSjTPC5b7fNmqg20NHP91DeKhoFQfIe1CAewGjZDBIY9FdA3lSyP2j6s4aLMEvtUegEeIJbn4Invn8CUr8rAJWaBR2z0Uyk0f7I9Po6uE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6055
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

On Thu, Dec 22, 2022 at 07:12:08PM -0300, Gustavo Sousa wrote:
>On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi wrote:
>> On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
>> > On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > > As we do not require specific versions anymore, change the convention
>> > > for blob filenames to stop using version numbers. This simplifies code
>> > > maintenance, since we do not need to keep updating blob paths for new
>> > > DMC releases, and also makes DMC loading compatible with systems that do
>> > > not have the latest firmware release.
>> > >
>> > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
>> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
>> > >  1 file changed, 82 insertions(+), 16 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > index 4124b3d37110..b11f0f451dd7 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > @@ -42,51 +42,70 @@
>> > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
>> > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>> > >
>> > > -#define DMC_PATH(platform, major, minor) \
>> > > -	"i915/"				 \
>> > > -	__stringify(platform) "_dmc_ver" \
>> > > -	__stringify(major) "_"		 \
>> > > +#define DMC_PATH(platform) \
>> > > +	"i915/" __stringify(platform) "_dmc.bin"
>> > > +
>> > > +/*
>> > > + * New DMC additions should not use this. This is used solely to remain
>> > > + * compatible with systems that have not yet updated DMC blobs to use
>> > > + * unversioned file names.
>> > > + */
>> > > +#define DMC_LEGACY_PATH(platform, major, minor) \
>> > > +	"i915/"					\
>> > > +	__stringify(platform) "_dmc_ver"	\
>> > > +	__stringify(major) "_"			\
>> > >  	__stringify(minor) ".bin"
>> > >
>> > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>> > >
>> > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>> > >
>> > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
>> > > +#define DG2_DMC_PATH			DMC_PATH(dg2)
>> > > +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
>> > >  MODULE_FIRMWARE(DG2_DMC_PATH);
>>
>> We have an issue here.  Previously `modinfo --field=firmware i915`
>> would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
>> i915/dg2_dmc.bin
>>
>> that modinfo call is what distros use to bundle the firmware blobs in
>> the initrd. It may also be used for creating package dependendies.
>>
>> If we do this, unless they have updated their linux-firmware
>> packages, the initrd will be left without the firmware.
>> Just checked
>> git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
>> and we still don't have the unversioned firmware there.
>
>Interesting. Thanks for the explanation!
>
>I think one way of approaching the issue would be to synchronize the process:
>
>1. Work toward getting approval for the patch (i.e. r-b);
>2. With the approval, send a PR to linux-firmware with the necessary changes;
>3. After the linux-firmware PR is merged, the patch could be integraged.
>
>I think that would still apply if going with your proposal on your next comment.
>
>>
>> > >
>> > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
>> > > +#define ADLP_DMC_PATH			DMC_PATH(adlp)
>> > > +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
>> > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
>> > >
>> > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
>> > > +#define ADLS_DMC_PATH			DMC_PATH(adls)
>> > > +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
>> > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
>> > >
>> > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
>> > > +#define DG1_DMC_PATH			DMC_PATH(dg1)
>> > > +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
>> > >  MODULE_FIRMWARE(DG1_DMC_PATH);
>> > >
>> > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
>> > > +#define RKL_DMC_PATH			DMC_PATH(rkl)
>> > > +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
>> > >  MODULE_FIRMWARE(RKL_DMC_PATH);
>> > >
>> > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
>> > > +#define TGL_DMC_PATH			DMC_PATH(tgl)
>> > > +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
>> > >  MODULE_FIRMWARE(TGL_DMC_PATH);
>> > >
>> > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
>> > > +#define ICL_DMC_PATH			DMC_PATH(icl)
>> > > +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
>> > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
>> > >  MODULE_FIRMWARE(ICL_DMC_PATH);
>> > >
>> > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
>> > > +#define GLK_DMC_PATH			DMC_PATH(glk)
>> > > +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
>> > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
>> > >  MODULE_FIRMWARE(GLK_DMC_PATH);
>> > >
>> > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
>> > > +#define KBL_DMC_PATH			DMC_PATH(kbl)
>> > > +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
>> > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>> > >  MODULE_FIRMWARE(KBL_DMC_PATH);
>> > >
>> > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
>> > > +#define SKL_DMC_PATH			DMC_PATH(skl)
>> > > +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
>> > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>> > >  MODULE_FIRMWARE(SKL_DMC_PATH);
>> > >
>> > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
>> > > +#define BXT_DMC_PATH			DMC_PATH(bxt)
>> > > +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
>> > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
>> > >  MODULE_FIRMWARE(BXT_DMC_PATH);
>> > >
>> > > @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
>> > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
>> > >  }
>> > >
>> > > +static const char *dmc_legacy_path(struct drm_i915_private *i915)
>> > > +{
>> > > +	if (IS_DG2(i915)) {
>> > > +		return DG2_DMC_LEGACY_PATH;
>> > > +	} else if (IS_ALDERLAKE_P(i915)) {
>> > > +		return ADLP_DMC_LEGACY_PATH;
>> > > +	} else if (IS_ALDERLAKE_S(i915)) {
>> > > +		return ADLS_DMC_LEGACY_PATH;
>> > > +	} else if (IS_DG1(i915)) {
>> > > +		return DG1_DMC_LEGACY_PATH;
>> > > +	} else if (IS_ROCKETLAKE(i915)) {
>> > > +		return RKL_DMC_LEGACY_PATH;
>> > > +	} else if (IS_TIGERLAKE(i915)) {
>> > > +		return TGL_DMC_LEGACY_PATH;
>> > > +	} else if (DISPLAY_VER(i915) == 11) {
>> > > +		return ICL_DMC_LEGACY_PATH;
>> > > +	} else if (IS_GEMINILAKE(i915)) {
>> > > +		return GLK_DMC_LEGACY_PATH;
>> > > +	} else if (IS_KABYLAKE(i915) ||
>> > > +		   IS_COFFEELAKE(i915) ||
>> > > +		   IS_COMETLAKE(i915)) {
>> > > +		return KBL_DMC_LEGACY_PATH;
>> > > +	} else if (IS_SKYLAKE(i915)) {
>> > > +		return SKL_DMC_LEGACY_PATH;
>> > > +	} else if (IS_BROXTON(i915)) {
>> > > +		return BXT_DMC_LEGACY_PATH;
>> > > +	}
>> > > +
>> > > +	return NULL;
>> > > +}
>> > > +
>> > >  static void dmc_load_work_fn(struct work_struct *work)
>> > >  {
>> > >  	struct drm_i915_private *dev_priv;
>> > >  	struct intel_dmc *dmc;
>> > >  	const struct firmware *fw = NULL;
>> > > +	const char *legacy_path;
>> > > +	int err;
>> > >
>> > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
>> > >  	dmc = &dev_priv->display.dmc;
>> > >
>> > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
>> > > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
>> > > +
>> > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
>> > > +		legacy_path = dmc_legacy_path(dev_priv);
>> > > +		if (legacy_path) {
>> > > +			drm_dbg_kms(&dev_priv->drm,
>> > > +				    "%s not found, falling back to %s\n",
>> > > +				    dmc->fw_path,
>> > > +				    legacy_path);
>> > > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
>> > > +			if (err == 0)
>> > > +				dev_priv->display.dmc.fw_path = legacy_path;
>> > > +		}
>> > > +	}
>> > > +
>> >
>> > I'd keep the request_firmware() with warnings.
>>
>> then not only it will be missing from initrd but we will also trigger
>> new warnings. Humn, I think one alternative approach and my proposal
>> would be:
>>
>> leave platforms that already have published firmware as is as long as
>> they are not behind a force_probe. For the new platforms, like mtl,
>> just use the platform name and don't bother about the version.
>> We will also have to fix it in the linux-firmware repo.
>>
>> We are likely not updating DMC for very old platforms anyway, no need to
>> rename them.  I think that after having symlinks in place in
>> linux-firmware for a few years/months, then we can go back and kill the
>> version numbers if we really want to.
>
>Sounds good.
>
>This patch was an attempt to have all supported platforms changed to the new
>convention and keep us from having to send a new patch for each platform that
>would need the change because of a new firmware release. But to avoid warnings,
>I think your proposal would be better indeed.
>
>It seems that currently the only platforms with display that are
>using require_force_probe = 1 are DG1 and MTL, and the latter does not have an
>entry in intel_dmc.c yet. Moving forward with your proposal, I guess we could
>also keep DG1 as is and only update it when/if the time comes.
>
>That said, I still think we would need the logic for loading from legacy paths
>as fallback so that we do not cause regressions when, for example, ADL has an
>update and we "move" it to the new convention. Do you agree?
>
>So here is my proposal:
>
>- Keep using the same paths (i.e. versioned ones) for the current entries in
>  intel_dmc.c, but define them with DMC_LEGACY_PATH() and reserve DMC_PATH() for
>  the new convention.
>
>- Keep the logic for the fallback in place because we know that it will be
>  needed soon enough for some more recent platforms.

here is where we disagree. I don't think we need any fallback, because
it will likely not work:

	MODULE_FIRMWARE(ADLP_DMC_PATH);

this means that distros will only package and or update their initrd
with the unversioned path. If a developer updates the kernel, the
fallback will simply not work if i915 is loaded from the initrd.

For those older platforms I think we can simply keep updating
linux-firmware overwriting the same dmc_adlp_2_16.bin. It's ugly, but
doesn't break compatibility.

I defer to maintainers to chime in on that though. Jani/Rodrigo, what do
you think?

Lucas De Marchi

>
>- Similarly to your last remark, if we find it necessary, we could in the future
>  remove the fallback logic after linux-firmware has all blobs using the new
>  convention for good enough time.
>
>
>--
>Gustavo Sousa
