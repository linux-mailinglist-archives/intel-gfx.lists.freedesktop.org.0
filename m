Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58F882A1B2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 21:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC8B10E649;
	Wed, 10 Jan 2024 20:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED78E10E649
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 20:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704917388; x=1736453388;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BalUYCzEoHey1vjjxqIe7M7Oweq2dS2S7O41Qxy+OMU=;
 b=hwUFcQsXDF2AZq5eZO3xIzjMbInP+830vtdqmYk7RsEwRK3asnDJn/ce
 MtIug92iliYSzOI7hz4xV6K6xXCsYq+j7ifuR/zS0CR1NSLoQHWpj2iq4
 BEhxscAkuIjWkAkWDgltQ4N2m9hpR4Be7I+ukiW3cD0axtRz/AzAvg/4a
 5/rJx2dWM4BfkJ0qpbWvS5rfBwWTvJBElce8Cj9VolW2wXIGpSenGSCYu
 Ch48PWswQo519ZLDpGsBTQdTaTSraPb0J0TzGNcQzyHK6SH9SkPQ6WsbQ
 VU7p85sgtEmm98YOIndosr/U9DEe/DAQlA7UM93mFiB8WCCdaIkjtqkYX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="5998200"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5998200"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 12:09:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="901257381"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="901257381"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 12:09:46 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 12:09:46 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 12:09:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 12:09:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 12:09:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9956EiEEHTTPnP6drFcXrW/eNAGH9stMVqk/pQOib/eKLGnxdDQ4IeKCP+z6dcwga1CGG6Jv4pltAdsKqTAiryUo7OjHk3Kb1S+mUOBeLNnkTm2AXXI458POnVfS5p485hZlAd0AepIZN7eCN90Ejx+j8z9P3X4ZrxfvKFbU0fPzS08okQo0ocWXJM2XY92ve41PQZjK09y6vShSUJ396BEp8rAYNnkh2/tSR61WSzK800Iu/HOTd8R6BC+QRPHqUWwkfLK/iTrC8ABXqiAHeWVBirG7Hfdj7eUnWN5GZkpTza9CBHK/fhNjMJ2oxjaFKyiR5d19738xj05ojmG8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZK3403scHfWKfeUk2gECH4C4cQdYYGUbDmQBSaGIJio=;
 b=Uh5zZl63OiQPjXo2pyb/c5dJ0OBnKAl07dIYJlS9TRi5NefJEnCXQMW/BJ8ajEmJoT1SEnLo3MFthBK/w6cjzKYrXn3cQruqF+sXnZeLsnBdIBkb4pgjOOKlS3H7+g7EbmOxF3RMYvK6Zc2b8jFFFAgyVDPGKlFdatJ+jeVxmMboXpACT+HcVopZVOe43Vb33CTfDRrUD8Lre4f0tPAF1u/vk1LGS8IyiCzq2vrcUT9K4SqyJviwG0F47YYMx+LXAiMzHHlzyVztnOlqBqUvuI7cVvu7JHpFGp9CTFxX809aXRnXJ5RBlWwnoIViI6qYGbCEwbhnTYYLyhRHyIeKbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Wed, 10 Jan
 2024 20:09:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 20:09:42 +0000
Date: Wed, 10 Jan 2024 15:09:38 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Message-ID: <ZZ75ghR172WxYZiJ@intel.com>
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87il4b1pvz.fsf@intel.com> <ZZx0qT4s3dmhIGAn@intel.com>
 <93230e22ede6467ef8930342afd439f7ce677790.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <93230e22ede6467ef8930342afd439f7ce677790.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:332::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7243:EE_
X-MS-Office365-Filtering-Correlation-Id: 65cc7b32-baf3-4c9a-4008-08dc12181548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G8tFIC0KAIj3xF32LjM8ZunaAO4fmuQxTqGV841sGvlfoxxegVnnZmU4ha3x3EmVHarfUTKi5X1tY/ofzjCMOrMvdheiM4QkCSykMYshv7x7GCQNoQNJmESmRxHRcRtwc+1xvO3xamEx8PAwT5oKHTafVLIvqfa4HYcG6lOmDtqRmu7VO8eB6BchHHYE3+9ZzAr6pMkeb7D6oCmT4NoxHc4CNIQeWzgOyqsoWfDh4QzSWw1yQM5C9Zk+g7E8v39OsOhfPTBTrT2/xM1zySi/rL9jEEGhYR93NoCU61p3w2ZdofsDIEy01vTDV2y4XKy3+KF4BguThwQLwJVO9t+Px0k15k0sej/KgFzY7GA693YUdftp8A+lCI/AOUAe3NobZpDLoa/+kN7E4zsMzGq2pFc16RioZT4LAgN7NqUA9gQtH6BdW2PQu7BaSrESO9jKwj9jxSH4pYLgs0h6wuM4lBh/immRzIQWDMJwwIL6QXgxeRs1iVLvguk0mr5o2EcnwoH36KoIolc69i6UvI0hkzSs7PstqzvEVmxiRb1zKgo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(38100700002)(966005)(478600001)(6486002)(83380400001)(44832011)(4326008)(66476007)(66556008)(8676002)(8936002)(6862004)(54906003)(66946007)(6636002)(316002)(37006003)(36756003)(2616005)(26005)(6506007)(6666004)(6512007)(86362001)(82960400001)(30864003)(2906002)(5660300002)(41300700001)(66899024);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ci39jZyX5b9rYWFPFS/fAtBx7eL+FiwGSFG1oBzyY1D74xoTVo9Bt6+Nq+?=
 =?iso-8859-1?Q?ZwcHI3PjSPj31TqGaRrOzuhs4LBKarvFrtJP6dPcGAM4ZZ7tsFXEgJY4xy?=
 =?iso-8859-1?Q?CqMWkWkg3FDyfw7JEUOtlaERq2fjbNUeewGYR1WCzZinIf516QmXbvPAM9?=
 =?iso-8859-1?Q?mgHfRpANNvYms/wQO67GORF0lCnwZzPzCCupdJXGQ93bKWFgPsAa/aCQg+?=
 =?iso-8859-1?Q?3NALdo/oci8XchojGMSFhSKK2HVkpJGHMp+Xta/KWMU3He0mFPaoMbmx5J?=
 =?iso-8859-1?Q?YYLvQBQRdwCCq7WHatwhtwX8WVHDsb/8SZ+CoDxD1VFr1sLEuuGY/LV5Ci?=
 =?iso-8859-1?Q?UgM/f9UGOImfHh23sSIqTvmgD888XrO58gofknmjsfvWJrqfT9iNYv/QGe?=
 =?iso-8859-1?Q?lwJej7q0g6TE14f+Zr6PpZiOzFbqO8+8hU21c81L1quG93EOEXBXGbYMKY?=
 =?iso-8859-1?Q?RRlVk8XIj72Jd+AgDdZDkL7EzZXzuzjW4hNUiTYUrXZTsiaUXXO7RJbjjN?=
 =?iso-8859-1?Q?ffmQs2KfUzLG9ooz6pTP3S7NB6j2aPblpPUyTT1e0yjR//5BQYIPU+yTuu?=
 =?iso-8859-1?Q?HlQ/uGXErv2Qo7w0cPw0CJ59rEoWNLxJ1mNtloALk7D1CaRebg5EPnQB6v?=
 =?iso-8859-1?Q?7Am8mWwEx8tI6gihG/qIk32Zx15N4tiDXqGdtyszd86deTSXSpJKbA3Wmg?=
 =?iso-8859-1?Q?dxj2fZy88ykqs2MWPcZZbQ2hvPHCMK8u8yY3t0+KISX08YbypG8XibCs3M?=
 =?iso-8859-1?Q?1JpR5vS4OyFZKimn+L5b6kXZvKJndH7DjU/ie56W8qH9qENy4p9TcKCGoo?=
 =?iso-8859-1?Q?5kCXP+HxpydJUsjLqIkoJdnd7NWAZ7XvWIhrgNc3Q6ASsYwVk3tYx2GyXr?=
 =?iso-8859-1?Q?Qoom4o2wpjcuYeHFAN7JAxtVSKTufJ0iqfr8NRkKW4Ots5tscZBZ53Kruv?=
 =?iso-8859-1?Q?FRIReP1RCHNV/b3JIGNHKbXDLQneP1VbnhUM7kr3s/o0QwJVzYhAwkRs7q?=
 =?iso-8859-1?Q?7JVfP7IYaI7oZ6y7AUzA/+ugFzBRzYPBjbq0SQEPUeCVzUGWME1l2WrTUv?=
 =?iso-8859-1?Q?WCwN6F03un11taWc2xnefkck2CODiDVV/3vheU8PQrQVyl3CZbsy5Mr7mw?=
 =?iso-8859-1?Q?mrBuK8EAdS5pSsEjKXdeN498RuSLD2aO5+nYp+8QTFKrWEw7Fw63fkFqDt?=
 =?iso-8859-1?Q?vkACqQRMbsHha22IQ53ZXMPYqphiBB97DaGbPDCdmRU/M8rE0OU3wbPnCf?=
 =?iso-8859-1?Q?SgFowdXA75xGPytFD/tHJ9Oi+dQ2lJdaaFISsgZgBxwfF5SYJjW+dhdPyV?=
 =?iso-8859-1?Q?+OP/EDU9IRKx2f5658fDZ4utimQZ7oeanViXO+AMpL85Gv/71ipOulSBtw?=
 =?iso-8859-1?Q?9yURAly3HnIxVf4gi0SWWtDn5epYHhBJOdCrz/99M/uDpLKQCq7TCkOt+o?=
 =?iso-8859-1?Q?L5k71gTudMdx4RKJhk7BGqS5shtCTZRgAUcX/TvJ+0iZMgSTOw1ET9slGA?=
 =?iso-8859-1?Q?GF6FLKCxuczfhoiYZi6K/JC+P0jR3bYT15iLBJAIjpmgzO40iMVc6apTcE?=
 =?iso-8859-1?Q?5Hn/8QcIUnD8SmodJFDw5qGyHMqOop/pnuHffPZmuOfEvmlNzMqgK0Lsek?=
 =?iso-8859-1?Q?7Cc6LfZRyNwhV9bM8WV6BsY9fb4tGtTFyTjFGpTCLjnyHzW0DyvwqGMg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65cc7b32-baf3-4c9a-4008-08dc12181548
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2024 20:09:42.7757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BsbDljT9VpebTFn9j1Ukf8T1jqXxhDqo9PKREysTSqEUyR9jzQuCb6Xfvqb49xg3padrolWNLFLzNHi/WcgnBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
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
 Thomas" <thomas.hellstrom@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 09, 2024 at 08:40:24PM +0000, Souza, Jose wrote:
> On Mon, 2024-01-08 at 17:18 -0500, Rodrigo Vivi wrote:
> > On Tue, Jan 02, 2024 at 09:44:48PM +0200, Jani Nikula wrote:
> > > On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> > > > Aux ccs framebuffers don't work on Xe driver hence disable them
> > > > from plane capabilities until they are fixed. Flat ccs framebuffers
> > > > work and they are left enabled. Here is separated plane capabilities
> > > > check on i915 so it can behave differencly depending on the driver.
> > > 
> > > Cc: Rodrigo and xe maintainers
> > > 
> > > We need to figure out the proper workflow, the mailing lists to use, the
> > > subject prefix to use, the acks to require, etc, for changes touching
> > > both xe and i915.
> > > 
> > > I'd very much prefer changes to i915 display to be merged via
> > > drm-intel-next as always. For one thing, it'll take a while to sync
> > > stuff back from drm-xe-next to drm-intel-next, and most display
> > > development still happens on drm-intel-next.
> > 
> > I fully agree with you.
> > 
> > > 
> > > But this patch can't be applied to drm-intel-next, because xe doesn't
> > > even exist on drm-intel-next yet...
> > 
> > should we do a backmerge of drm-next already, or too early for that?
> 
> Can we split it into 2 patches and merge it?
> This is necessary to fix Wayland compositors on ADL and newer.

we can do either:
1. backmerge drm-next into drm-intel-next and merge this as is. (This would be with
Jani)
2. split in 2 patches, one for drm-intel-next and the other for drm-xe-next. (This would
be with Jouni)
3. merge this as is in drm-xe-next and deal with the conflicts in a future backmerge.
Since this is mostly adding a new file I don't believe that it would be a big deal.
(This would impact myself)

Since next round of drm-intel-next is mine, I'd be okay on handling that and acking
this approach number 3. But before moving forward with this I'd like to wait for
Jani's and Jouni's opinions.

> 
> > 
> > > 
> > > 
> > > BR,
> > > Jani.
> > > 
> > > 
> > > > 
> > > > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> > > > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > > >  .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
> > > >  .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
> > > >  .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
> > > >  drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
> > > >  5 files changed, 107 insertions(+), 60 deletions(-)
> > > >  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > >  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > > index e777686190ca..c5e3c2dd0a01 100644
> > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > @@ -302,6 +302,7 @@ i915-y += \
> > > >  	display/intel_overlay.o \
> > > >  	display/intel_pch_display.o \
> > > >  	display/intel_pch_refclk.o \
> > > > +	display/intel_plane_caps.o \
> > > >  	display/intel_plane_initial.o \
> > > >  	display/intel_pmdemand.o \
> > > >  	display/intel_psr.o \
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > new file mode 100644
> > > > index 000000000000..6206ae11f296
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > > > @@ -0,0 +1,68 @@
> > > > +// SPDX-License-Identifier: MIT
> > > > +/*
> > > > + * Copyright © 2024 Intel Corporation
> > > > + */
> > > > +
> > > > +#include "i915_drv.h"
> > > > +#include "intel_fb.h"
> > > > +#include "intel_plane_caps.h"
> > > > +
> > > > +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > > > +				 enum pipe pipe, enum plane_id plane_id)
> > > > +{
> > > > +	/* Wa_22011186057 */
> > > > +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > > +		return false;
> > > > +
> > > > +	if (DISPLAY_VER(i915) >= 11)
> > > > +		return true;
> > > > +
> > > > +	if (IS_GEMINILAKE(i915))
> > > > +		return pipe != PIPE_C;
> > > > +
> > > > +	return pipe != PIPE_C &&
> > > > +		(plane_id == PLANE_PRIMARY ||
> > > > +		 plane_id == PLANE_SPRITE0);
> > > > +}
> > > > +
> > > > +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > > > +				   enum plane_id plane_id)
> > > > +{
> > > > +	if (DISPLAY_VER(i915) < 12)
> > > > +		return false;
> > > > +
> > > > +	/* Wa_14010477008 */
> > > > +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > > +	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> > > > +		return false;
> > > > +
> > > > +	/* Wa_22011186057 */
> > > > +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > > +		return false;
> > > > +
> > > > +	return plane_id < PLANE_SPRITE4;
> > > > +}
> > > > +
> > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > +		      enum pipe pipe, enum plane_id plane_id)
> > > > +{
> > > > +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > +
> > > > +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > +		caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > +	if (DISPLAY_VER(i915) < 12)
> > > > +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > +	if (HAS_4TILE(i915))
> > > > +		caps |= INTEL_PLANE_CAP_TILING_4;
> > > > +
> > > > +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > > > +		caps |= INTEL_PLANE_CAP_CCS_RC;
> > > > +		if (DISPLAY_VER(i915) >= 12)
> > > > +			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > > > +	}
> > > > +
> > > > +	if (gen12_plane_has_mc_ccs(i915, plane_id))
> > > > +		caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > +
> > > > +	return caps;
> > > > +}
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > new file mode 100644
> > > > index 000000000000..60a941c76f23
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > > > @@ -0,0 +1,14 @@
> > > > +/* SPDX-License-Identifier: MIT */
> > > > +/*
> > > > + * Copyright © 2024 Intel Corporation
> > > > + */
> > > > +
> > > > +#ifndef __INTEL_PLANE_CAPS_H__
> > > > +#define __INTEL_PLANE_CAPS_H__
> > > > +
> > > > +#include "intel_display_types.h"
> > > > +
> > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > +		      enum pipe pipe, enum plane_id plane_id);
> > > > +
> > > > +#endif /* __INTEL_PLANE_CAPS_H__ */
> > > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > index 511dc1544854..f2fd3833c61d 100644
> > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > @@ -17,6 +17,7 @@
> > > >  #include "intel_fb.h"
> > > >  #include "intel_fbc.h"
> > > >  #include "intel_frontbuffer.h"
> > > > +#include "intel_plane_caps.h"
> > > >  #include "intel_psr.h"
> > > >  #include "intel_psr_regs.h"
> > > >  #include "skl_scaler.h"
> > > > @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
> > > >  	spin_unlock_irq(&i915->irq_lock);
> > > >  }
> > > >  
> > > > -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > > > -				 enum pipe pipe, enum plane_id plane_id)
> > > > -{
> > > > -	/* Wa_22011186057 */
> > > > -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > > -		return false;
> > > > -
> > > > -	if (DISPLAY_VER(i915) >= 11)
> > > > -		return true;
> > > > -
> > > > -	if (IS_GEMINILAKE(i915))
> > > > -		return pipe != PIPE_C;
> > > > -
> > > > -	return pipe != PIPE_C &&
> > > > -		(plane_id == PLANE_PRIMARY ||
> > > > -		 plane_id == PLANE_SPRITE0);
> > > > -}
> > > > -
> > > > -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > > > -				   enum plane_id plane_id)
> > > > -{
> > > > -	if (DISPLAY_VER(i915) < 12)
> > > > -		return false;
> > > > -
> > > > -	/* Wa_14010477008 */
> > > > -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > > -		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> > > > -		return false;
> > > > -
> > > > -	/* Wa_22011186057 */
> > > > -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > > -		return false;
> > > > -
> > > > -	return plane_id < PLANE_SPRITE4;
> > > > -}
> > > > -
> > > > -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > -			     enum pipe pipe, enum plane_id plane_id)
> > > > -{
> > > > -	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > -
> > > > -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > -		caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > -	if (DISPLAY_VER(i915) < 12)
> > > > -		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > -	if (HAS_4TILE(i915))
> > > > -		caps |= INTEL_PLANE_CAP_TILING_4;
> > > > -
> > > > -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > > > -		caps |= INTEL_PLANE_CAP_CCS_RC;
> > > > -		if (DISPLAY_VER(i915) >= 12)
> > > > -			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > > > -	}
> > > > -
> > > > -	if (gen12_plane_has_mc_ccs(i915, plane_id))
> > > > -		caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > -
> > > > -	return caps;
> > > > -}
> > > > -
> > > >  struct intel_plane *
> > > >  skl_universal_plane_create(struct drm_i915_private *dev_priv,
> > > >  			   enum pipe pipe, enum plane_id plane_id)
> > > > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > index ccf83c12b545..425c6e6744a6 100644
> > > > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > > > @@ -15,6 +15,7 @@
> > > >  #include "intel_fb.h"
> > > >  #include "intel_fb_pin.h"
> > > >  #include "intel_frontbuffer.h"
> > > > +#include "intel_plane_caps.h"
> > > >  #include "intel_plane_initial.h"
> > > >  
> > > >  static bool
> > > > @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> > > >  
> > > >  	plane_config_fini(&plane_config);
> > > >  }
> > > > +
> > > > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > > > +		      enum pipe pipe, enum plane_id plane_id)
> > > > +{
> > > > +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > > > +
> > > > +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > > > +		caps |= INTEL_PLANE_CAP_TILING_Y;
> > > > +	if (DISPLAY_VER(i915) < 12)
> > > > +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > > > +	if (HAS_4TILE(i915))
> > > > +		caps |= INTEL_PLANE_CAP_TILING_4;
> > > > +
> > > > +	if (HAS_FLAT_CCS(i915)) {
> > > > +		caps |= INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
> > > > +
> > > > +		if (plane_id < PLANE_SPRITE4)
> > > > +			caps |= INTEL_PLANE_CAP_CCS_MC;
> > > > +	}
> > > > +
> > > > +	return caps;
> > > > +}
> > > 
> > > -- 
> > > Jani Nikula, Intel
> 
