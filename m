Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF9B82C692
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 22:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AC710E0CF;
	Fri, 12 Jan 2024 21:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1A210E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705094186; x=1736630186;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YCNp0aT0kugxx+H85yluvwhMvnmBf7QjX+k1Pb7a800=;
 b=LyMuQD4tRZG4q2cwr/VzA/Et/CqUBZNHJLuDOV9K+vFYfnZTn4k4GtD/
 fSt0HbnFqUdNA7TSlDqZ3FPF2ibfKtgcB+EVBCorXrcPbtw6tP7W9CBr3
 qLQO6ugqGa24D594oYdNMmM9jKsZzaumwjsMWrGTQFFVuWmln1QbLjS99
 JbKWquEi9uBg4OVceDYzhM1L1QXpG/mIinrN2jnFHgjfjzMXo4RQx2Akz
 nqGvtS+Ej09h3Yru3eq0wW3gImFX4sFkkpknYIIIGhCSpiWDlW8GLWXZ6
 lAR54aEPje55DXAsFPKcSdKTcOihj3p4Tmy4HD31kBQ7eq2XHxi04y1Ao w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="6645266"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
   d="scan'208";a="6645266"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 13:16:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="956219852"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="956219852"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 13:16:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 13:16:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 13:16:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 13:16:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 13:16:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bz2XgHY6LGyzaSuiqAGikPA6KvUYYIs5lVPLG0tG1pc1bIytMWOBjZWdcw8h04pYvLfPuLNaijeeMMltpiB6FHjo+pDvmZTC8hxLQDOKMdqbau/k+9+UuqraKG9pE+GePIBfQzN9acA7AXkHxaXCIH2zjeHfxaf7giNhx6m9RVONTbcst7zEGpd4AmjO5SuZvzYKCmfMHOIM7L+431mxExg+rLnldTr8Yzx/OMKZctwlS53xSEz0XpZprwOHqzZZAyLauPVSqSnWj7woS01gaySQnGrPEkyVOwysbA4GLcBqVaKy84EDao56ySG6ILAMh0iZGQOApCeO7S31bckZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLz3LMUxWW9dyOPFdG5vTkZDugRHmNn/ryrETSr11aM=;
 b=Tiq7EfZIOcMYJ3Rl1l6yi2IX63XqRsoVFnLcUyV06AImOqFLysf2WA319iSdCWyW6HHV8OlweZPilDJoS8GXPJ31wntqmc3v5f1ARxG1B3Z9drDWxZDElWvzwCcszllReycA3d/nKEuKyS/em9TccbHtD+16k9NtgPUow7XZ5P8H3Kj1tSV0ICL/axD64CBV/D0SzztDsBX4t0PfPS712qjTr4jidM8zIuviChsrl9XpIHDsGDJkKECR8Z8RaLvCLpXf+joTtfNYxizKGdYuno4T1B970rK5y0DoXl1XzUSLAVuWsglvv/Ts+W6mIdXipQ6LZL3iLV8EzKnN4MUWJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5517.namprd11.prod.outlook.com (2603:10b6:5:388::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Fri, 12 Jan
 2024 21:16:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 21:16:21 +0000
Date: Fri, 12 Jan 2024 16:16:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Message-ID: <ZaGsIGTHVh_MCqKW@intel.com>
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87il4b1pvz.fsf@intel.com> <ZZx0qT4s3dmhIGAn@intel.com>
 <93230e22ede6467ef8930342afd439f7ce677790.camel@intel.com>
 <ZZ75ghR172WxYZiJ@intel.com>
 <2c82e0774c23cc640e565b1b5302e0e234eba036.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c82e0774c23cc640e565b1b5302e0e234eba036.camel@intel.com>
X-ClientProxiedBy: BY5PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5517:EE_
X-MS-Office365-Filtering-Correlation-Id: 0efc7537-9ed1-4a87-5ec0-08dc13b3b95c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TOHEGI+nSwjJ+ikFciotSx5IVP6tblfdryp2t/ifc6UtCs4vqnkOi0xYfrtPvEf6Z9wu8cQFd5zZ+/luBFNKeLsOUjaN0TOzT61+dldY3s75YVEBbbrl5gtFWrxA/jtFxi2Id8OButiAqmRzYuBnJAaWmjJ0HCDYzc1g8xJ54wgDosqW9/TL4+hQBKF5K4kJDV8eQpYJns2QskAjTiY6SsEpEsVU0hQDDPMY++UZk/KJm1hmh2XsNSR9H9x67z7fjnVBhkJQCrvU+VrGZrYw7hO46TtE5NoEmyeTXyE4Jhn9FTYgwY/dbJpfnhxNyOndBUqRVM79WG+q+4xrRvv7Zet21Df+FDnS9iX6LrZlGO/T+Sk+nCGeJdPToKlFi0s5/q9t+jHOfG+sTBskgOYni3vVcojR8ow5uh+FoH8xjTDqRFRb4Akh7g0TiSfXWBXj2RDIhEw+9k8YIb6jWv4NuM8toEoPt/HT6ZWG1P2g56o1rD8uylHNLNaqUzU9E39BUWoyLvdHJfvFtZ2IULincTcmIFPAuoC+aVOIblWD8xU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(346002)(366004)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(66899024)(6506007)(6512007)(6666004)(966005)(107886003)(2616005)(26005)(478600001)(30864003)(66574015)(38100700002)(86362001)(5660300002)(36756003)(82960400001)(41300700001)(44832011)(83380400001)(6862004)(2906002)(4326008)(8936002)(8676002)(66556008)(37006003)(66946007)(6486002)(6636002)(316002)(54906003)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0LfbcqACcyZSoqV6qUvSJUTUUeOtqVYPKSM/ytRdkhURGXNFPFteExocEr?=
 =?iso-8859-1?Q?O9xyusS6TVVk+aUNgwbp9siHyyH3fBtL63Rrcam+Uv8/xXD3nlxABdV5lv?=
 =?iso-8859-1?Q?GhB4dt6ytXK+014tF15Hk9KFRWDROLMWbJ4vTI1bsE3Xdc1XGcLc0FCAaC?=
 =?iso-8859-1?Q?iiJLS4W/mZxPxQ0YtkWwqBNPq/ZMLF+qs2BcdTtQ9bR4UML8YHNHg0vIeR?=
 =?iso-8859-1?Q?KVeKm6zawfBrZqUN46KY/T3aDqGP3Ww+6mifFpgzWKDZuZOB3sFsZRWUtU?=
 =?iso-8859-1?Q?JIws4S2isDoTqvu/n/D6JN3IJvm2AN0Vc1Lk2A06Jc5FzW+byWSQVXh0TK?=
 =?iso-8859-1?Q?veGAfztEpNC0w9QqwdaiFbKv8jbxAvkYngUw2RzAhh5SyE6/6vDR2BSnd1?=
 =?iso-8859-1?Q?6JXllC9ylI/gLR/2WaAfnsJnZIEBZR1eLyHcZCok6lGA5Th1QivBTG9eDt?=
 =?iso-8859-1?Q?pZ1+XdhiMQbHzI8v/9s38TuCOfQxm1wuSZnpZ4U6TTEFcVhxzb6G9ap6WG?=
 =?iso-8859-1?Q?CbR4n7yaR/7eJmoP3VbCGf2GE12v9gT5J+gXdcGuuZcuQD9wPKiaw/XwtC?=
 =?iso-8859-1?Q?+NMeabrG/jvacOCAdcGQXFsSDslL6g6wYpxNNs1WAkNERhxxpu+DN1xgAw?=
 =?iso-8859-1?Q?29FYOOvnxGsfkA1uXHkSUYQuV5q1hwZ+HdhdJqRHnaED8prEVXS/6Q9CgP?=
 =?iso-8859-1?Q?KZ2Dm1xGRrh6g9NyWt6JhwbgxuPBjXW8W+Jz/nLvVo5WTNS21VqydZIzLi?=
 =?iso-8859-1?Q?YEfMxAOgsu+Ur5VHsVnYe4dXFqMogRtK+qUwHRFGpq8yUY3FXgnI29ak8B?=
 =?iso-8859-1?Q?tO0/o8GbfFahEfRKQLLN5OqjZa8fyNzNwfdjWNibjJgM5MloRpzsjfjPkS?=
 =?iso-8859-1?Q?sBK99u8jzV5laapm3vM4OXUiJC3SiMbYiBY6e3K8OkoZGE1TJcHgn9Ww3Y?=
 =?iso-8859-1?Q?QZ7VufOA4PrQvlkzKGYF/8pImPwslP0jIrP/2dJ92LWscKVHXIB7U8i8VA?=
 =?iso-8859-1?Q?On0F8V1ZlNji816K5PbLHNyhxKG1p50cvwmr2yzHmEANG/AuhN/Q8odQEK?=
 =?iso-8859-1?Q?+7Auw8FSsdwUKzvVclA6d71C9ahYklv8iuMJcHkCiAGvexyMs7LO/9RrVK?=
 =?iso-8859-1?Q?WHSo/P0Y5c51k7vaztfU5GQaWxm585N+ulFCtZLcwOSmfnqvkEVjMVxr4G?=
 =?iso-8859-1?Q?twv9xQamwSShW45KR8ZWX+C2mBAAfxxnO0T9VPOx5Pj+8k3FYOa3SI3cUZ?=
 =?iso-8859-1?Q?GRCckU3OQHG/RZIuA58w+X8kFQZlujsOvUMZ0pod/85pK+MyNwkecm5t0w?=
 =?iso-8859-1?Q?mwS+2nhsY/GdVEkdEZrNjFwR/LHg41hdKat5LWJeRrU/dU6gX1r0WQMHmo?=
 =?iso-8859-1?Q?fvw3TT5eWSrnP+STCwizkKfyHuusEbAxp1iHsaOAFu3BQp45jLj10nIDeH?=
 =?iso-8859-1?Q?KS/vd54tgn8RXlEst7fhUZUB0yejX626a6e8mIDQqqmCfNeIpJ4p4zkj04?=
 =?iso-8859-1?Q?ERobPhxoZ+cwJBaVG+yBmjqoV7wDVV3AxuTmwiMNEWMW+wUWxqhK34+wZO?=
 =?iso-8859-1?Q?o+tGdvfMhFN8gtyvr4OqleFkRWxU9UbNJH0UW2iniFVgxuobDxYyz2dGnd?=
 =?iso-8859-1?Q?x35rMaQ9YpjeuW9XlqbGC4giUntDgpM9TG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0efc7537-9ed1-4a87-5ec0-08dc13b3b95c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 21:16:21.2144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W1FpwwA0jAiJiPcnCqimKCuujxo9U8xfrjBSbrJkcGW6DUi5M1Ke7MuLupRQqYE9uu62lkE8oHh6MC6v+HGp/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5517
X-OriginatorOrg: intel.com
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
Cc: "ogabbay@kernel.org" <ogabbay@kernel.org>, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 12, 2024 at 07:31:51AM -0500, Hogander, Jouni wrote:
> On Wed, 2024-01-10 at 15:09 -0500, Rodrigo Vivi wrote:
> > On Tue, Jan 09, 2024 at 08:40:24PM +0000, Souza, Jose wrote:
> > > On Mon, 2024-01-08 at 17:18 -0500, Rodrigo Vivi wrote:
> > > > On Tue, Jan 02, 2024 at 09:44:48PM +0200, Jani Nikula wrote:
> > > > > On Tue, 02 Jan 2024, Juha-Pekka Heikkila
> > > > > <juhapekka.heikkila@gmail.com> wrote:
> > > > > > Aux ccs framebuffers don't work on Xe driver hence disable
> > > > > > them
> > > > > > from plane capabilities until they are fixed. Flat ccs
> > > > > > framebuffers
> > > > > > work and they are left enabled. Here is separated plane
> > > > > > capabilities
> > > > > > check on i915 so it can behave differencly depending on the
> > > > > > driver.
> > > > > 
> > > > > Cc: Rodrigo and xe maintainers
> > > > > 
> > > > > We need to figure out the proper workflow, the mailing lists to
> > > > > use, the
> > > > > subject prefix to use, the acks to require, etc, for changes
> > > > > touching
> > > > > both xe and i915.
> > > > > 
> > > > > I'd very much prefer changes to i915 display to be merged via
> > > > > drm-intel-next as always. For one thing, it'll take a while to
> > > > > sync
> > > > > stuff back from drm-xe-next to drm-intel-next, and most display
> > > > > development still happens on drm-intel-next.
> > > > 
> > > > I fully agree with you.
> > > > 
> > > > > 
> > > > > But this patch can't be applied to drm-intel-next, because xe
> > > > > doesn't
> > > > > even exist on drm-intel-next yet...
> > > > 
> > > > should we do a backmerge of drm-next already, or too early for
> > > > that?
> > > 
> > > Can we split it into 2 patches and merge it?
> > > This is necessary to fix Wayland compositors on ADL and newer.
> > 
> > we can do either:
> > 1. backmerge drm-next into drm-intel-next and merge this as is. (This
> > would be with
> > Jani)
> > 2. split in 2 patches, one for drm-intel-next and the other for drm-
> > xe-next. (This would
> > be with Jouni)
> > 3. merge this as is in drm-xe-next and deal with the conflicts in a
> > future backmerge.
> > Since this is mostly adding a new file I don't believe that it would
> > be a big deal.
> > (This would impact myself)
> > 
> > Since next round of drm-intel-next is mine, I'd be okay on handling
> > that and acking
> > this approach number 3. But before moving forward with this I'd like
> > to wait for
> > Jani's and Jouni's opinions.
> 
> I'm fine with approach number 3.

Jani, ack? or any plan to do a backmerge soon?

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > > 
> > > > 
> > > > > 
> > > > > 
> > > > > BR,
> > > > > Jani.
> > > > > 
> > > > > 
> > > > > > 
> > > > > > Closes:
> > > > > > https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> > > > > > Signed-off-by: Juha-Pekka Heikkila
> > > > > > <juhapekka.heikkila@gmail.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > > > > >  .../gpu/drm/i915/display/intel_plane_caps.c   | 68
> > > > > > +++++++++++++++++++
> > > > > >  .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
> > > > > >  .../drm/i915/display/skl_universal_plane.c    | 61 +--------
> > > > > > --------
> > > > > >  drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
> > > > > >  5 files changed, 107 insertions(+), 60 deletions(-)
> > > > > >  create mode 100644
> > > > > > drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > > >  create mode 100644
> > > > > > drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > > > > b/drivers/gpu/drm/i915/Makefile
> > > > > > index e777686190ca..c5e3c2dd0a01 100644
> > > > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > > > @@ -302,6 +302,7 @@ i915-y += \
> > > > > >         display/intel_overlay.o \
> > > > > >         display/intel_pch_display.o \
> > > > > >         display/intel_pch_refclk.o \
> > > > > > +       display/intel_plane_caps.o \
> > > > > >         display/intel_plane_initial.o \
> > > > > >         display/intel_pmdemand.o \
> > > > > >         display/intel_psr.o \
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..6206ae11f296
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > > > @@ -0,0 +1,68 @@
> > > > > > +// SPDX-License-Identifier: MIT
> > > > > > +/*
> > > > > > + * Copyright © 2024 Intel Corporation
> > > > > > + */
> > > > > > +
> > > > > > +#include "i915_drv.h"
> > > > > > +#include "intel_fb.h"
> > > > > > +#include "intel_plane_caps.h"
> > > > > > +
> > > > > > +static bool skl_plane_has_rc_ccs(struct drm_i915_private
> > > > > > *i915,
> > > > > > +                                enum pipe pipe, enum
> > > > > > plane_id plane_id)
> > > > > > +{
> > > > > > +       /* Wa_22011186057 */
> > > > > > +       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_B0))
> > > > > > +               return false;
> > > > > > +
> > > > > > +       if (DISPLAY_VER(i915) >= 11)
> > > > > > +               return true;
> > > > > > +
> > > > > > +       if (IS_GEMINILAKE(i915))
> > > > > > +               return pipe != PIPE_C;
> > > > > > +
> > > > > > +       return pipe != PIPE_C &&
> > > > > > +               (plane_id == PLANE_PRIMARY ||
> > > > > > +                plane_id == PLANE_SPRITE0);
> > > > > > +}
> > > > > > +
> > > > > > +static bool gen12_plane_has_mc_ccs(struct drm_i915_private
> > > > > > *i915,
> > > > > > +                                  enum plane_id plane_id)
> > > > > > +{
> > > > > > +       if (DISPLAY_VER(i915) < 12)
> > > > > > +               return false;
> > > > > > +
> > > > > > +       /* Wa_14010477008 */
> > > > > > +       if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > > > > +           (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_D0)))
> > > > > > +               return false;
> > > > > > +
> > > > > > +       /* Wa_22011186057 */
> > > > > > +       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_B0))
> > > > > > +               return false;
> > > > > > +
> > > > > > +       return plane_id < PLANE_SPRITE4;
> > > > > > +}
> > > > > > +
> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > > > +                     enum pipe pipe, enum plane_id plane_id)
> > > > > > +{
> > > > > > +       u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > > > +
> > > > > > +       if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > > > +       if (DISPLAY_VER(i915) < 12)
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > > > +       if (HAS_4TILE(i915))
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_4;
> > > > > > +
> > > > > > +       if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > > > > > +               caps |= INTEL_PLANE_CAP_CCS_RC;
> > > > > > +               if (DISPLAY_VER(i915) >= 12)
> > > > > > +                       caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > > > > > +       }
> > > > > > +
> > > > > > +       if (gen12_plane_has_mc_ccs(i915, plane_id))
> > > > > > +               caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > > > +
> > > > > > +       return caps;
> > > > > > +}
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > > > new file mode 100644
> > > > > > index 000000000000..60a941c76f23
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > > > @@ -0,0 +1,14 @@
> > > > > > +/* SPDX-License-Identifier: MIT */
> > > > > > +/*
> > > > > > + * Copyright © 2024 Intel Corporation
> > > > > > + */
> > > > > > +
> > > > > > +#ifndef __INTEL_PLANE_CAPS_H__
> > > > > > +#define __INTEL_PLANE_CAPS_H__
> > > > > > +
> > > > > > +#include "intel_display_types.h"
> > > > > > +
> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > > > +                     enum pipe pipe, enum plane_id
> > > > > > plane_id);
> > > > > > +
> > > > > > +#endif /* __INTEL_PLANE_CAPS_H__ */
> > > > > > diff --git
> > > > > > a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > > index 511dc1544854..f2fd3833c61d 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > > @@ -17,6 +17,7 @@
> > > > > >  #include "intel_fb.h"
> > > > > >  #include "intel_fbc.h"
> > > > > >  #include "intel_frontbuffer.h"
> > > > > > +#include "intel_plane_caps.h"
> > > > > >  #include "intel_psr.h"
> > > > > >  #include "intel_psr_regs.h"
> > > > > >  #include "skl_scaler.h"
> > > > > > @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct
> > > > > > intel_plane *plane)
> > > > > >         spin_unlock_irq(&i915->irq_lock);
> > > > > >  }
> > > > > >  
> > > > > > -static bool skl_plane_has_rc_ccs(struct drm_i915_private
> > > > > > *i915,
> > > > > > -                                enum pipe pipe, enum
> > > > > > plane_id plane_id)
> > > > > > -{
> > > > > > -       /* Wa_22011186057 */
> > > > > > -       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_B0))
> > > > > > -               return false;
> > > > > > -
> > > > > > -       if (DISPLAY_VER(i915) >= 11)
> > > > > > -               return true;
> > > > > > -
> > > > > > -       if (IS_GEMINILAKE(i915))
> > > > > > -               return pipe != PIPE_C;
> > > > > > -
> > > > > > -       return pipe != PIPE_C &&
> > > > > > -               (plane_id == PLANE_PRIMARY ||
> > > > > > -                plane_id == PLANE_SPRITE0);
> > > > > > -}
> > > > > > -
> > > > > > -static bool gen12_plane_has_mc_ccs(struct drm_i915_private
> > > > > > *i915,
> > > > > > -                                  enum plane_id plane_id)
> > > > > > -{
> > > > > > -       if (DISPLAY_VER(i915) < 12)
> > > > > > -               return false;
> > > > > > -
> > > > > > -       /* Wa_14010477008 */
> > > > > > -       if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > > > > -               (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_D0)))
> > > > > > -               return false;
> > > > > > -
> > > > > > -       /* Wa_22011186057 */
> > > > > > -       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915,
> > > > > > STEP_A0, STEP_B0))
> > > > > > -               return false;
> > > > > > -
> > > > > > -       return plane_id < PLANE_SPRITE4;
> > > > > > -}
> > > > > > -
> > > > > > -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > > > -                            enum pipe pipe, enum plane_id
> > > > > > plane_id)
> > > > > > -{
> > > > > > -       u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > > > -
> > > > > > -       if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > > > -               caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > > > -       if (DISPLAY_VER(i915) < 12)
> > > > > > -               caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > > > -       if (HAS_4TILE(i915))
> > > > > > -               caps |= INTEL_PLANE_CAP_TILING_4;
> > > > > > -
> > > > > > -       if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > > > > > -               caps |= INTEL_PLANE_CAP_CCS_RC;
> > > > > > -               if (DISPLAY_VER(i915) >= 12)
> > > > > > -                       caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > > > > > -       }
> > > > > > -
> > > > > > -       if (gen12_plane_has_mc_ccs(i915, plane_id))
> > > > > > -               caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > > > -
> > > > > > -       return caps;
> > > > > > -}
> > > > > > -
> > > > > >  struct intel_plane *
> > > > > >  skl_universal_plane_create(struct drm_i915_private
> > > > > > *dev_priv,
> > > > > >                            enum pipe pipe, enum plane_id
> > > > > > plane_id)
> > > > > > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > > > b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > > > index ccf83c12b545..425c6e6744a6 100644
> > > > > > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > > > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > > > @@ -15,6 +15,7 @@
> > > > > >  #include "intel_fb.h"
> > > > > >  #include "intel_fb_pin.h"
> > > > > >  #include "intel_frontbuffer.h"
> > > > > > +#include "intel_plane_caps.h"
> > > > > >  #include "intel_plane_initial.h"
> > > > > >  
> > > > > >  static bool
> > > > > > @@ -289,3 +290,25 @@ void
> > > > > > intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> > > > > >  
> > > > > >         plane_config_fini(&plane_config);
> > > > > >  }
> > > > > > +
> > > > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > > > +                     enum pipe pipe, enum plane_id plane_id)
> > > > > > +{
> > > > > > +       u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > > > +
> > > > > > +       if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > > > +       if (DISPLAY_VER(i915) < 12)
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > > > +       if (HAS_4TILE(i915))
> > > > > > +               caps |= INTEL_PLANE_CAP_TILING_4;
> > > > > > +
> > > > > > +       if (HAS_FLAT_CCS(i915)) {
> > > > > > +               caps |= INTEL_PLANE_CAP_CCS_RC |
> > > > > > INTEL_PLANE_CAP_CCS_RC_CC;
> > > > > > +
> > > > > > +               if (plane_id < PLANE_SPRITE4)
> > > > > > +                       caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > > > +       }
> > > > > > +
> > > > > > +       return caps;
> > > > > > +}
> > > > > 
> > > > > -- 
> > > > > Jani Nikula, Intel
> > > 
> 
