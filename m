Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC7654FD4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 12:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC2910E187;
	Fri, 23 Dec 2022 11:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F388510E187
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 11:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671796335; x=1703332335;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HzPtFx6fpk6Bf2jCU30cSGJpuXqFvo5L/WmtO2eyIqo=;
 b=C0NXY/4WZe8zvXmUSWv3MHRds7WHj9C2VBICM/IXRbM0OiA991/mWoJL
 U9Yfz+xcaXsdO4V1OOIYpaLutPTbZ+FU78Bu5rKFRwjGQ5vmEMWFn0Kiv
 OAhlwu0G3Lz2+Ilsv/uvvtsgwKFwlvONo8xU5A1HoVR490GE6lAXPXasd
 hwP6j/UKe9/TaoY4YipKqrUBy30l4l++QQPfqLVOt/FZLFigCPe941x2s
 eNf7uEJMO7t7u4qhT+MbpIaAujz2+t5hAfZ951NgLSpvK1oC7bz+9JEfk
 3cZdzlEpV1IB4fThYmEQThZD0v/Te6w1KPMOQA9UqMKBbAa/E52kNotvT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="303792841"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="303792841"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 03:52:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="602180161"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="602180161"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2022 03:52:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 03:52:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 03:52:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 03:52:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 03:52:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UofvQH5gzdCvJjhpFviZmxLaXXO/QEwvqRBe7hbHQNXwRv03IyJ1NfA/QSwpPTZ5qoY/uwfNBZ9REiUAXmymm+HnLuaZfEwcl9RIYmSikFQALlVhOIlxxgetMNhnt5/mcAJHtCRu+gEilBEkmUxjJ4M7LxT7ldfpsrwBym29yO5jgBdHjcmo4TiBGz1+gBBXrwHJdOJ2i37nWrNWA2AMY1gSG+ECKfkIZxvfCKmmDeAiTfcDlZwu3b5E/ZKHjxeOcLfaSp98J2cHWwxSctt5+Jrr/sHIJiGID8BElk1JqffGEc288gxAYz0cPlbAJYGo7Ihqfj5HzySLXTuKW+ivew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sxj6rJpI53jt067ePeUspq9NDJDQ2itxNuIqdnwIOdA=;
 b=AkQNzBK11hlGqBk7XvwgjcCqNguQ1bcqkEfGcvxm0jivKYForHkHOk2PiWrKWYXRYX6LEZeg+0YDzW74f5OukEp8J1ofKbPNcjSC/b+FPzs6h8n9imnvaU7up4ztnucfj0nqlG11VrSkCRIRXjNf8hBQo3Cynm+7o2E1TRtp9MhRLHqh19HNfGmrkkDtfzPC02fuuipxB7x9fhaOPgkBqRThPiz9BOAolUZJJosdG7hCYJBBmcBC5JbaaMrrCL+6tkaZxx9LH54sjPETv/vQWCPAOJ6HJSqgg1As9jcxSVl/EjoXAtQl/wsq62bn3ekDQwmTgzoP7bZmTEbZOkNWwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW3PR11MB4697.namprd11.prod.outlook.com (2603:10b6:303:2c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.13; Fri, 23 Dec
 2022 11:52:07 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.013; Fri, 23 Dec 2022
 11:52:06 +0000
Date: Fri, 23 Dec 2022 08:51:59 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20221223115159.px2ho2rqp4ivmonr@gjsousa-mobl2>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
 <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
 <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
X-ClientProxiedBy: BY5PR16CA0028.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::41) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW3PR11MB4697:EE_
X-MS-Office365-Filtering-Correlation-Id: 87243c84-d0ce-4912-d430-08dae4dc1d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NXR3ZSvOWIcs94tNlHV80TBhk/s6zV5qeqaG0Xps9ID38kEZCDMQH0Suw4dHq/LtlYHuz1aJkJbB3Ne6qE7HY/ubDdOsd7ciqBJLeLqaNrMT69+XM+hxv/yQ6dW+EH5u5VOyW4KcCAJ2DIZkTXDZC1PmUPkg1Y+eWxQVD2In0lm0RjgYCFthOvYYnG+Hi9SGbv05EXMNY6eIEPscaqsFkNOkYVwm1BBNwtJLg3fTuvufEWfLl2uZP/3ll691/dFqCJPcOfFl08qRWrGJVS5sK0Ws5BFBwtsf9/Zho9bhrKD2CqajxnBoukunM6OCaYL+9NjO27MHh6nRwn+ccPbtbILYqKknK88ie1JYrMH1JKGJ4mitxy180solwxT3OiG1arDqLzpBZ8NzRmsBS7VA0vL5m6240Wa5BgSVdRtmMkjf+V6UnTnX0xtGaQRGizX+XGCOr7tlxLBpPQtZrLnToqBadQQN1CiTFblAWHShb4dICvlHHoqE2ISVe+GU1geqbsHmZwKCQDAlHSHUhc6L3ZsgdIXBsDcUlh/oHu55wdrXWW0qCOk4C/f1hDjNtX/tQShlQqTA9SrncHUj+BQgUJBU7WZM+vhN4bzzI2ivndMN/+hnez9o3hp3WyoIY3NQNVEf6vf0sqZLeMtUdiWjapzu5+SmntJY/+mVCpWITlk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199015)(6506007)(186003)(26005)(6512007)(9686003)(478600001)(33716001)(966005)(6486002)(6666004)(82960400001)(38100700002)(86362001)(83380400001)(54906003)(1076003)(44832011)(5660300002)(8936002)(6862004)(30864003)(2906002)(4326008)(8676002)(66556008)(66946007)(66476007)(6636002)(316002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3te2c8B1n2TlnBC9NFajFkfBuJWs9Nk9QW0wux62fUp5Jkre9lEZTspcdo6C?=
 =?us-ascii?Q?qqiDBRwRXJYS9MshWf877s0N8AyNEKzfpO3OfTbAxmtVp4Va5qKNO743GxSa?=
 =?us-ascii?Q?pNTRyzo9tF+5NTrPhgnM8alzOFtNto0lXlWtX/DMDnZLD43XrHW2upntM9Vn?=
 =?us-ascii?Q?shcVu70gAGTPxYmM15QCYrkdon/khJEUGB3rBJw1azk5Tw6kn/BZ75E2JQrp?=
 =?us-ascii?Q?9LdkN1qM/PysnIcSnWuXf3WLcPm5DXyfNOq8fIr9++nJOjgBehqf76M6DhpQ?=
 =?us-ascii?Q?lNHEwVMC4c5NRuj2bcOnwF8ZWa04nQA9gWbKWZqOnXgnt30my29Up3H+mmDF?=
 =?us-ascii?Q?jGicMlA13Vqr4kWTthyCAifHAGq7qRct5szxOAqdOjd0V7ndbc/2x+tXYgCF?=
 =?us-ascii?Q?uvyQ9netNM2hxUTd7wOm6P16j7zpa80nQ1BCjeWTWflAjtMyqhIOSWLFNmJA?=
 =?us-ascii?Q?HxUea8qaGldNvR+urUvzGvjDoNhjSWhrVSw+C4TTnQRNtckgTgJ/Q9lUZj3D?=
 =?us-ascii?Q?JZyckn9ObLrZUQFeYgZnXZH+20334abW2vbsjU57PEMRxeCjEe+rOk3ZNr8k?=
 =?us-ascii?Q?JFo70AHBIh0EcE1SiaSoKAqFYChRk9XX8w/C2QQUjyKp6zd1gPW2ZHfn15bX?=
 =?us-ascii?Q?rZ+RRLx6iBmzEErr2jcIUBhABUV/OBQ9JkZsS06S4c8oHTOyXqDO31jACo8i?=
 =?us-ascii?Q?qru99r5tA6+7V9xu7fNknSeivqiG47XzsMQzAByCtEfQqiRkPrA1jEP1Pw6U?=
 =?us-ascii?Q?x6nRLSUSeXbNvI4dDyIIhLlLRMRzTqN6pQ6EjQNZ7wsg3McZ3sBrdDxR3MLM?=
 =?us-ascii?Q?wCrBbGogtbHwFjX804a69E44kQJ/DZLwwiSb+VndmHMkknLEQkBOGccf6tV5?=
 =?us-ascii?Q?Z02YQTxHv7V4ynZ9z8TrBhONl4hvmjpMxZwnUNnJQLI7fRWiMc5EZ2huEgKQ?=
 =?us-ascii?Q?Q+O1+tmO/3z94ReQnotnsaxs50hjwKoNh8GfC0X8HsmNJg1EJ99WHBexzKil?=
 =?us-ascii?Q?CFF5V96wfwgXtpRbh0WZ6LnyQp2CKZPD20AIL3mtE0a6sUxNOeGEZIl5Koa+?=
 =?us-ascii?Q?gCovrIvVGseWQxLZYsDMNLNrpZeCldpAYGdOdUTh9tPLUsa1YL21bV8/ZI2a?=
 =?us-ascii?Q?E1LY+kf1HHc6EQtnrBeTbaPg/JYEjMFCtgie9XQUDHdHwVblzCu3TqwNQw+U?=
 =?us-ascii?Q?IRGGVTAe/ZSEojEnA93mKOBzhWJVcSr+O8d/AS0zY7Kpu3xNFuNVfHHFLYy4?=
 =?us-ascii?Q?AHs6oB1/U4akQW/y8EaHDbWDbWHvDdfcNnLrKq/2aB1pyRiibV0JjMXAZzkr?=
 =?us-ascii?Q?RAmNCGe8acH0rMZJ0PoLRjLLC/yyrG9ufHkWh+lE1AOi59/iPjPor+eOdRM4?=
 =?us-ascii?Q?2Way62e6VPUcR5yQieKeenFc4QmFc9wtVTN69UX/oIf2Z9a+UShbGwA+3A+z?=
 =?us-ascii?Q?27PghdiASNHtqf9pYCA7hd7rGBWoas7rLzjzlzspuWEC9HEui0QSsvHMSicg?=
 =?us-ascii?Q?Z1Bl9A/0gKbHb6JGMV3LmvpjRpbIDxV2EKHgG+nl77F7HAEquwZ8RBb0ant/?=
 =?us-ascii?Q?PMkhA4Te1ccX00eZmiL70NIfc1xZarFbPPRx2nkdhRDOo0c7cGUAJLkctSts?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87243c84-d0ce-4912-d430-08dae4dc1d4e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2022 11:52:06.3864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Akyt4MVtoaz79Fia2htmHZEolPdTlszc16PqWY0VaIK5I1u9bQUxsK/qlYqebbB+fvs4oofIaRSUIpvLYLQ8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4697
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

On Thu, Dec 22, 2022 at 04:52:21PM -0800, Lucas De Marchi wrote:
> On Thu, Dec 22, 2022 at 07:12:08PM -0300, Gustavo Sousa wrote:
> > On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi wrote:
> > > On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
> > > > On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > > > > As we do not require specific versions anymore, change the convention
> > > > > for blob filenames to stop using version numbers. This simplifies code
> > > > > maintenance, since we do not need to keep updating blob paths for new
> > > > > DMC releases, and also makes DMC loading compatible with systems that do
> > > > > not have the latest firmware release.
> > > > >
> > > > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
> > > > >  1 file changed, 82 insertions(+), 16 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > index 4124b3d37110..b11f0f451dd7 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > @@ -42,51 +42,70 @@
> > > > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> > > > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> > > > >
> > > > > -#define DMC_PATH(platform, major, minor) \
> > > > > -	"i915/"				 \
> > > > > -	__stringify(platform) "_dmc_ver" \
> > > > > -	__stringify(major) "_"		 \
> > > > > +#define DMC_PATH(platform) \
> > > > > +	"i915/" __stringify(platform) "_dmc.bin"
> > > > > +
> > > > > +/*
> > > > > + * New DMC additions should not use this. This is used solely to remain
> > > > > + * compatible with systems that have not yet updated DMC blobs to use
> > > > > + * unversioned file names.
> > > > > + */
> > > > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > > > +	"i915/"					\
> > > > > +	__stringify(platform) "_dmc_ver"	\
> > > > > +	__stringify(major) "_"			\
> > > > >  	__stringify(minor) ".bin"
> > > > >
> > > > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> > > > >
> > > > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > > > >
> > > > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > > > +#define DG2_DMC_PATH			DMC_PATH(dg2)
> > > > > +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
> > > > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > > 
> > > We have an issue here.  Previously `modinfo --field=firmware i915`
> > > would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
> > > i915/dg2_dmc.bin
> > > 
> > > that modinfo call is what distros use to bundle the firmware blobs in
> > > the initrd. It may also be used for creating package dependendies.
> > > 
> > > If we do this, unless they have updated their linux-firmware
> > > packages, the initrd will be left without the firmware.
> > > Just checked
> > > git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
> > > and we still don't have the unversioned firmware there.
> > 
> > Interesting. Thanks for the explanation!
> > 
> > I think one way of approaching the issue would be to synchronize the process:
> > 
> > 1. Work toward getting approval for the patch (i.e. r-b);
> > 2. With the approval, send a PR to linux-firmware with the necessary changes;
> > 3. After the linux-firmware PR is merged, the patch could be integraged.
> > 
> > I think that would still apply if going with your proposal on your next comment.
> > 
> > > 
> > > > >
> > > > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > > > +#define ADLP_DMC_PATH			DMC_PATH(adlp)
> > > > > +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
> > > > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > > >
> > > > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > > > +#define ADLS_DMC_PATH			DMC_PATH(adls)
> > > > > +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
> > > > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > > >
> > > > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > > > +#define DG1_DMC_PATH			DMC_PATH(dg1)
> > > > > +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
> > > > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > > >
> > > > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > > > +#define RKL_DMC_PATH			DMC_PATH(rkl)
> > > > > +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
> > > > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > > >
> > > > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > > > +#define TGL_DMC_PATH			DMC_PATH(tgl)
> > > > > +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
> > > > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > > >
> > > > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > > > +#define ICL_DMC_PATH			DMC_PATH(icl)
> > > > > +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
> > > > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > > > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > > >
> > > > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > > > +#define GLK_DMC_PATH			DMC_PATH(glk)
> > > > > +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
> > > > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > > > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > > >
> > > > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > > > +#define KBL_DMC_PATH			DMC_PATH(kbl)
> > > > > +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
> > > > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > > >
> > > > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > > > +#define SKL_DMC_PATH			DMC_PATH(skl)
> > > > > +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
> > > > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > > > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > > >
> > > > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > > > +#define BXT_DMC_PATH			DMC_PATH(bxt)
> > > > > +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
> > > > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > > > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > > >
> > > > > @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> > > > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > > > >  }
> > > > >
> > > > > +static const char *dmc_legacy_path(struct drm_i915_private *i915)
> > > > > +{
> > > > > +	if (IS_DG2(i915)) {
> > > > > +		return DG2_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_ALDERLAKE_P(i915)) {
> > > > > +		return ADLP_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_ALDERLAKE_S(i915)) {
> > > > > +		return ADLS_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_DG1(i915)) {
> > > > > +		return DG1_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_ROCKETLAKE(i915)) {
> > > > > +		return RKL_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_TIGERLAKE(i915)) {
> > > > > +		return TGL_DMC_LEGACY_PATH;
> > > > > +	} else if (DISPLAY_VER(i915) == 11) {
> > > > > +		return ICL_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_GEMINILAKE(i915)) {
> > > > > +		return GLK_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_KABYLAKE(i915) ||
> > > > > +		   IS_COFFEELAKE(i915) ||
> > > > > +		   IS_COMETLAKE(i915)) {
> > > > > +		return KBL_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_SKYLAKE(i915)) {
> > > > > +		return SKL_DMC_LEGACY_PATH;
> > > > > +	} else if (IS_BROXTON(i915)) {
> > > > > +		return BXT_DMC_LEGACY_PATH;
> > > > > +	}
> > > > > +
> > > > > +	return NULL;
> > > > > +}
> > > > > +
> > > > >  static void dmc_load_work_fn(struct work_struct *work)
> > > > >  {
> > > > >  	struct drm_i915_private *dev_priv;
> > > > >  	struct intel_dmc *dmc;
> > > > >  	const struct firmware *fw = NULL;
> > > > > +	const char *legacy_path;
> > > > > +	int err;
> > > > >
> > > > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> > > > >  	dmc = &dev_priv->display.dmc;
> > > > >
> > > > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > > > +
> > > > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > > > > +		legacy_path = dmc_legacy_path(dev_priv);
> > > > > +		if (legacy_path) {
> > > > > +			drm_dbg_kms(&dev_priv->drm,
> > > > > +				    "%s not found, falling back to %s\n",
> > > > > +				    dmc->fw_path,
> > > > > +				    legacy_path);
> > > > > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
> > > > > +			if (err == 0)
> > > > > +				dev_priv->display.dmc.fw_path = legacy_path;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > >
> > > > I'd keep the request_firmware() with warnings.
> > > 
> > > then not only it will be missing from initrd but we will also trigger
> > > new warnings. Humn, I think one alternative approach and my proposal
> > > would be:
> > > 
> > > leave platforms that already have published firmware as is as long as
> > > they are not behind a force_probe. For the new platforms, like mtl,
> > > just use the platform name and don't bother about the version.
> > > We will also have to fix it in the linux-firmware repo.
> > > 
> > > We are likely not updating DMC for very old platforms anyway, no need to
> > > rename them.  I think that after having symlinks in place in
> > > linux-firmware for a few years/months, then we can go back and kill the
> > > version numbers if we really want to.
> > 
> > Sounds good.
> > 
> > This patch was an attempt to have all supported platforms changed to the new
> > convention and keep us from having to send a new patch for each platform that
> > would need the change because of a new firmware release. But to avoid warnings,
> > I think your proposal would be better indeed.
> > 
> > It seems that currently the only platforms with display that are
> > using require_force_probe = 1 are DG1 and MTL, and the latter does not have an
> > entry in intel_dmc.c yet. Moving forward with your proposal, I guess we could
> > also keep DG1 as is and only update it when/if the time comes.
> > 
> > That said, I still think we would need the logic for loading from legacy paths
> > as fallback so that we do not cause regressions when, for example, ADL has an
> > update and we "move" it to the new convention. Do you agree?
> > 
> > So here is my proposal:
> > 
> > - Keep using the same paths (i.e. versioned ones) for the current entries in
> >  intel_dmc.c, but define them with DMC_LEGACY_PATH() and reserve DMC_PATH() for
> >  the new convention.
> > 
> > - Keep the logic for the fallback in place because we know that it will be
> >  needed soon enough for some more recent platforms.
> 
> here is where we disagree. I don't think we need any fallback, because
> it will likely not work:
> 
> 	MODULE_FIRMWARE(ADLP_DMC_PATH);

Yeah... I was thinking about this and maybe we could also have MODULE_FIRMWARE()
calls for legacy paths as well. Looking at the documentation for
MODULE_FIRMWARE(), the module files are understood as "optional", so I think it
would be somewhat okay for one of the two missing, as long as the one is found.

I think declaring possibly missing fallback paths is less ugly than overwriting
the versioned path with a blob of a different version.

> 
> this means that distros will only package and or update their initrd
> with the unversioned path. If a developer updates the kernel, the
> fallback will simply not work if i915 is loaded from the initrd.
> 
> For those older platforms I think we can simply keep updating
> linux-firmware overwriting the same dmc_adlp_2_16.bin. It's ugly, but
> doesn't break compatibility.
> 
> I defer to maintainers to chime in on that though. Jani/Rodrigo, what do
> you think?
> 
> Lucas De Marchi
> 
> > 
> > - Similarly to your last remark, if we find it necessary, we could in the future
> >  remove the fallback logic after linux-firmware has all blobs using the new
> >  convention for good enough time.
> > 
> > 
> > --
> > Gustavo Sousa
