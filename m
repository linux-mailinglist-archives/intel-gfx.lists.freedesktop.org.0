Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0737A60158C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7819910E3AE;
	Mon, 17 Oct 2022 17:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7AC10EDE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666028422; x=1697564422;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DFyxRyJBNDi5zECVq5tCHbOBmWcnCHMp2uhwBa/VQ6o=;
 b=AtdAtr3RBTk0Bk3gvAznvPskaY2gSIDev3Vitni/QW0p3PbBbG8Izefz
 dYmZ4gjQmxlW1T33W8OOIe+JHYFSkWgF5zorn+gP/LRjzBQib5v81Kdsz
 wF8DApTz6a5tGsGIzfLzJkDusqrH2VwbSYsncuV97ftj+dUPnqvjDjJff
 7S8PChMW/8Kq3J5iq7h3nezF8ps9u+/31Y0LkHf804SsgZ9nIJh+v8RUK
 R9wTNOIYet5b0q5vkwn44zyjk34WfSHR+twtt/CGA8rpN/DeUjEIHq3C0
 fvz5F9p810Ml8SrxyohD3Y3p2MZKYzp7mf31QggAMeY0OodDZsKSTjshS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286262336"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="286262336"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:40:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="579456989"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="579456989"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 17 Oct 2022 10:40:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:40:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:40:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:40:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:40:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpLBslhaMdMow7azvB6yc/rIe0qBGHfb0nNOgIOHp8+vKGvsTq91AF1JxiKFI5LJ8IrSmHcp95CsrtgFF7HOEIPMu4/pKJqrV/EWcGcvOWjKi8U0zX33QpCwEIFu3xYNA2XlN5E/jfr6ZtE2qs4g84qahFAFT1isAiF8Krw1l68eC8OOuSqKbYfI+bBNoTjMZa+IrcOrbB+3af0wM1ttc6OKGYdIDOFn4/C288rmKoKD4d+tSMX9UhK4adhbkOXew4PVzZVaBPKH79BfnO9nqYqs92cV+bVbuUwjaMDHo26ue0xAEx5bmUij1SJp2w+EnO9+RzANTJWZMu6PEyrP2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=goOxUClgvEOPWa5P28/GbScDuNw4npG7MIWplZMdHdU=;
 b=H1pQxhJ1rX91nyXgLSbR7Gqseok+0KC+GWUnXdg4oZptvRR393JdziYaJJING55f0FzCWbfp4ZYvnfA+6ek08+EgSyn78FSdlLMUG0V7/XscUyAf94idQOmM19zkfXTEzxgChcKcN2cOPZIYsvYJ6RV4J3kHnyJjwr/Vx0nXJ6cWcsKwOyPgDaDxl85JxKk99VPPCT33oXbpFREbJQzqBQMPseB1dEb3d6cOaaurNXStUBNlSgXGd3VQDGDwlaObwJBqCz/ci3m/Ag0EBnaDeCje2pu/KuOlBgZBqDLKAU9T2wonoVnwwS8u3ShRsxghpaSNNsjOp37QhQnCEFf5VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 17 Oct
 2022 17:40:17 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:40:17 +0000
Date: Mon, 17 Oct 2022 10:40:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y02Tf/OPZg1xBU4G@mdroper-desk1.amr.corp.intel.com>
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
 <166579581197.303.11973819867723936301@emeril.freedesktop.org>
 <Y02ALLT6pLmxxVpQ@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y02ALLT6pLmxxVpQ@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0381.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::26) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA1PR11MB7039:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f349bbf-07c0-46ac-2938-08dab066a79f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sk5WRuaWtRocCFeRt6LK5oPmBknhSAr83knbCBtt9pN4pJlEmlOKb+pD5/7HJuhoq5L021SZBysycBTU6BzEsd6CBSRhcD1BB4zxKSxTV317LHeTADPe3qPUelUlTS7WITD1niSBeC/6FKgAiWPflXJ/7TnZ5ErSvEsDEb/4vWsfZVWLcRoaV2spi9mBt+E/52YRFwuVjAvNepmNqPzDYDtVsSjZ7J83o4y+sX7jX3oDW8yThx4ZOHCgxur3IOu9Qvnd8WDSbr9RcJuVRUVkb82b8B16cidJ7eRmi8GZdJGvISvWOuEYK5XKY2awNOFXNlY+vZ2ZFA7LMn5t8+4hrBELDK5P+gJwmgqK6l9E8Mfl3UTYISWXIq/PR+khbBFgcqWRQ9v2Pzm9HeQ7pAFv7K3vPce5xv95frJ6Xd/F3G41Y4RRzBzx0BuprXeUZw0gdSi/wcyO9mTN5BIrtbh1XMAQTVDREjcjLy9hf/UIAblMNZa5c7KUFwoLO7ZU8QHcXsJpOc+JQmpJbcfCYYARgoCbE3ZV9GcD0JMGOyjn4S1qLaZwwC7who24ZM9fB4LwsL8P8sjVezwaR4xKFtCgrrCoGe8apvXpvna5O5KJB6EsqAYTl1oWb3gEFAfzTcYdsLJ8JvvyVrnL1bh5uI+8YKrACZUDayLthYL2Bs+gAziFCxBayC0fu5dZg/zYklDnQulazKkCdTc4RPKfSGs/wP97Z5DixMAzcHUdxZiESPOnS5Lo2ceSiU/nyPLhzGLzm3feJZuExWV3Yr491bnO5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(346002)(376002)(451199015)(38100700002)(186003)(2906002)(82960400001)(6486002)(478600001)(966005)(66946007)(66556008)(107886003)(66476007)(83380400001)(6916009)(30864003)(86362001)(6512007)(8936002)(4326008)(5660300002)(41300700001)(6506007)(316002)(26005)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jp968NOGNojRDcexLW6LPph9FQ22igU3hl4ocxVoT9QghyXT5rBH2FODxQaQ?=
 =?us-ascii?Q?EYBtm9ZrhfjOylb/od0E2IH/w21CyCJhf7dKMPN/x7HLL9VFIEwbPBx19XcW?=
 =?us-ascii?Q?uqg5/R+YM3Z8+VhWHFLQo+1wPEFWaR3yKGikOkvUfl/GrhpXDhIpNmaPoXJb?=
 =?us-ascii?Q?VzVzzNBhRy8YIBMakhxGZx+Co9IZ+tbQy4BhHbub+Oa35symWp3GJnvYv4Ow?=
 =?us-ascii?Q?Adl8+YUpBe7mCHSQfeTdEBQR6+YPdfuzAX471lraNQyWHk+zYVbycVe1Krtt?=
 =?us-ascii?Q?7K90j6zyMrr17hU/ye6moTFhLpMLPrpa8LUap7D4eFLw38yHgaLCzdHezoR5?=
 =?us-ascii?Q?EWbFHwk8sP1zIegMXwGFvhlhy74BC7QCT6pV2d0TlVE7cj9nJy/Jzcss+s3a?=
 =?us-ascii?Q?XVzLC6kQefqqtYYuELyrcdaXNtxwsGNHxbWQmLYmWMyrfuxuw5BCVl2isq9A?=
 =?us-ascii?Q?ZTsXL44xy15TacxsOnHsSRcriVW4xZqFp0fhS1dZQv4ga6bN5SE9202dVa3s?=
 =?us-ascii?Q?vVmQQAmIHbVVdrhYxYsiKyxyr7E0FIb6kk31WWtBck83AbTTmag6d1Oajf15?=
 =?us-ascii?Q?ZmwCL/Fg11lxCVzWtg1iORKSFSf9ESXAFls65FmJUwtSLgvMaPAkWJAm0uLx?=
 =?us-ascii?Q?OMiuFsRijWmUqNFNHT5w/r8JxBFH8LS1HbPPQ1qxxHdyypaYMn3PNB8oob7U?=
 =?us-ascii?Q?hFRD98RffnaIMcDrIurqCOYU/GZeZh1lmQ6hsNmRyfncQhhof/BXmPEZSAx/?=
 =?us-ascii?Q?mEHDuS9pd8qr6Ks49iIo2V2uTQY1WHfQM1+nmTYsOw6phNOKKdYQs7/WemLm?=
 =?us-ascii?Q?DYu+ptBPJjBbOSzSgRR5oA7mjd6CzQ7Gy0oM0wh3I6Sk0RIKL3rfOhskQyEm?=
 =?us-ascii?Q?652g10/wOj+Ysb+nY0JmBs1lVIUAVLfB/G3m74NTMJqCzjiI1x6kxYlySoZj?=
 =?us-ascii?Q?WfmPEIkor6pxDf7Co1h2R+UNq8PyEO/DU3GcV1/m17yrkvze8j9M0WsEPJM7?=
 =?us-ascii?Q?BddKCp8dodP4KdJQuq8KKcNb09+iqm1HLS38XryDmFqrUWym7iDqe9CqJW7F?=
 =?us-ascii?Q?WEL5QaKjIVnLNu7dWXEqZ0Gv0LIZyHWtUxixrVs2sXV6OeqWGbqz2vPsdi+z?=
 =?us-ascii?Q?VayzqpDlM8ozhOha1iX9lpM/2J9ZQdaJzP+W2Ac8vxFvs9JKI+BT5OkYywMt?=
 =?us-ascii?Q?JMR6xva16+SblMZ4pmns88R7tBkP1F/69T2CPb2QH2ucdhn8NMTbGp+SHxrM?=
 =?us-ascii?Q?FleGoYKybphN+IO3yWjmg2B/KaAhhGCpdx0u+zxyqttbxT/OluimQkS9Tdo8?=
 =?us-ascii?Q?rr1BCMHt6G+r+wmo7zvsjkc4T++h5DDE2hpeyWkdnarLzxtwNXdbhTdOcBTP?=
 =?us-ascii?Q?8kjLdxICLhlqX7GOr2a1EwOf4/ArVHAkGuWQFq2LZHC2Ol0guoP0eG8TqIKB?=
 =?us-ascii?Q?khwOuS22MPGwFOrxvc9oI2h6I4+FzM6QQxhHgW0rUM5hvv7toe1qFb2JlDH5?=
 =?us-ascii?Q?z2On6DYDLxQUtLM45T7QYprixqVXRrvOLX8Ce491u+JrIY650l5ov3jKcq/P?=
 =?us-ascii?Q?Y/ItaSl+9mXkRRD3ATvLpOYTIUwiePmW+j3AhS6V7LdHA+3gZeHYI/a8gub7?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f349bbf-07c0-46ac-2938-08dab066a79f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 17:40:17.3912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UvTMmK3IpEqpzTKAONi6E3i5t7C0F6ts3aq0W+KG/M2zo72qksSJahP/Xd1tk2YgdqTIFwgTWySRY/7h+HlSllLeBjZ6B3iSawdqH4YRFnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licit_MCR_handling_and_MTL_steering_=28rev4=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 09:17:51AM -0700, Matt Roper wrote:
> On Sat, Oct 15, 2022 at 01:03:31AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Explicit MCR handling and MTL steering (rev4)
> > URL   : https://patchwork.freedesktop.org/series/108755/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_12242_full -> Patchwork_108755v4_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_108755v4_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_108755v4_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (9 -> 11)
> > ------------------------------
> > 
> >   Additional (2): shard-rkl shard-dg1 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_108755v4_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:
> >     - shard-skl:          [PASS][1] -> [FAIL][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html
> 
> GT multicast register handling wouldn't have changed the behavior of a
> SKL display test.  This failure is unrelated.
> 
> Other subtests of this test also seem to be sporadically failing in a
> similar manner.  This might be related to the same root cause as
> fdo#2521.
> 

Series applied to drm-intel-gt-next.  Thanks Bala for the reviews!


Matt

> 
> 
> Matt
> 
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@runner@aborted:
> >     - shard-skl:          ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][7], [FAIL][8], [FAIL][9]) ([i915#3002] / [i915#4312])
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/igt@runner@aborted.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@runner@aborted.html
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@runner@aborted.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/igt@runner@aborted.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/igt@runner@aborted.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_108755v4_full that come from known issues:
> > 
> > ### CI changes ###
> > 
> > #### Possible fixes ####
> > 
> >   * boot:
> >     - shard-skl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) ([i915#5032]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/boot.html
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/boot.html
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
> > 
> >   
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_exec_balancer@parallel-out-fence:
> >     - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#4525]) +1 similar issue
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vecs0:
> >     - shard-iclb:         [PASS][60] -> [FAIL][61] ([i915#2842])
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
> > 
> >   * igt@gem_lmem_swapping@heavy-random:
> >     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +1 similar issue
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@gem_lmem_swapping@heavy-random.html
> > 
> >   * igt@gem_userptr_blits@dmabuf-sync:
> >     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3323])
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html
> > 
> >   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
> >     - shard-apl:          NOTRUN -> [FAIL][64] ([i915#7036])
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> >     - shard-skl:          NOTRUN -> [FAIL][65] ([i915#7036])
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> > 
> >   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#3886]) +2 similar issues
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
> >     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +2 similar issues
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> >     - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3886])
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
> >     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +52 similar issues
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
> >     - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271]) +27 similar issues
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> > 
> >   * igt@kms_chamelium@hdmi-hpd-storm:
> >     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +3 similar issues
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_chamelium@hdmi-hpd-storm.html
> >     - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827])
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_chamelium@hdmi-hpd-storm.html
> > 
> >   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
> >     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +6 similar issues
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> > 
> >   * igt@kms_color@ctm-0-25:
> >     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3546])
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_color@ctm-0-25.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> >     - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#2122]) +3 similar issues
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2672] / [i915#3555])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3555])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2672]) +1 similar issue
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2587] / [i915#2672]) +1 similar issue
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
> >     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +147 similar issues
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> > 
> >   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
> >     - shard-apl:          NOTRUN -> [FAIL][82] ([i915#4573]) +2 similar issues
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> > 
> >   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:
> >     - shard-skl:          NOTRUN -> [FAIL][83] ([i915#4573]) +2 similar issues
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1.html
> > 
> >   * igt@kms_psr2_su@page_flip-xrgb8888:
> >     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658]) +2 similar issues
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html
> > 
> >   * igt@kms_psr@psr2_primary_mmap_cpu:
> >     - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
> > 
> >   * igt@kms_writeback@writeback-invalid-parameters:
> >     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2437])
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_writeback@writeback-invalid-parameters.html
> > 
> >   * igt@sysfs_clients@create:
> >     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@sysfs_clients@create.html
> >     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@sysfs_clients@create.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_exec_fair@basic-flow@rcs0:
> >     - shard-tglb:         [FAIL][90] ([i915#2842]) -> [PASS][91]
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@bcs0:
> >     - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
> > 
> >   * igt@gem_exec_fair@basic-throttle@rcs0:
> >     - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> > 
> >   * igt@gen9_exec_parse@allowed-all:
> >     - shard-skl:          [DMESG-WARN][96] ([i915#5566] / [i915#716]) -> [PASS][97]
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> >     - shard-apl:          [DMESG-WARN][98] ([i915#5566] / [i915#716]) -> [PASS][99]
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@gen9_exec_parse@allowed-all.html
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@gen9_exec_parse@allowed-all.html
> > 
> >   * igt@i915_pm_dc@dc9-dpms:
> >     - shard-iclb:         [SKIP][100] ([i915#4281]) -> [PASS][101]
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
> >     - shard-skl:          [FAIL][102] ([i915#2346]) -> [PASS][103]
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> > 
> >   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [FAIL][104] ([i915#2122]) -> [PASS][105]
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@busy-flip@c-edp1:
> >     - shard-skl:          [FAIL][106] ([i915#7200]) -> [PASS][107] +1 similar issue
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html
> > 
> >   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
> >     - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +1 similar issue
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> > 
> >   * igt@kms_psr@psr2_sprite_plane_move:
> >     - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111]
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> > 
> >   * igt@perf@stress-open-close:
> >     - shard-glk:          [INCOMPLETE][112] ([i915#5213]) -> [PASS][113]
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk1/igt@perf@stress-open-close.html
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@perf@stress-open-close.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@dmabuf@all@dma_fence_chain:
> >     - shard-skl:          [INCOMPLETE][114] ([i915#6949] / [i915#7165]) -> [INCOMPLETE][115] ([i915#6949] / [i915#7165] / [i915#7192])
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@dmabuf@all@dma_fence_chain.html
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@dmabuf@all@dma_fence_chain.html
> > 
> >   * igt@gem_exec_balancer@parallel-ordering:
> >     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [FAIL][117] ([i915#6117])
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> > 
> >   * igt@i915_selftest@mock@vma:
> >     - shard-skl:          [INCOMPLETE][118] ([i915#6950] / [i915#7065]) -> [INCOMPLETE][119] ([i915#6950] / [i915#7065] / [i915#7192])
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@i915_selftest@mock@vma.html
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@i915_selftest@mock@vma.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> >     - shard-apl:          [SKIP][120] ([fdo#109271]) -> [SKIP][121] ([fdo#109271] / [i915#7206])
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> >     - shard-glk:          [SKIP][122] ([fdo#109271]) -> [SKIP][123] ([fdo#109271] / [i915#7206])
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> > 
> >   * igt@kms_dsc@dsc-with-bpc-formats:
> >     - shard-glk:          [SKIP][124] ([fdo#109271]) -> [SKIP][125] ([fdo#109271] / [i915#7205])
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk1/igt@kms_dsc@dsc-with-bpc-formats.html
> >     - shard-skl:          [SKIP][126] ([fdo#109271]) -> [SKIP][127] ([fdo#109271] / [i915#7205])
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_dsc@dsc-with-bpc-formats.html
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_dsc@dsc-with-bpc-formats.html
> >     - shard-apl:          [SKIP][128] ([fdo#109271]) -> [SKIP][129] ([fdo#109271] / [i915#7205])
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl2/igt@kms_dsc@dsc-with-bpc-formats.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> >     - shard-skl:          [FAIL][130] ([i915#79]) -> [FAIL][131] ([i915#2122])
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
> >     - shard-skl:          [SKIP][132] ([fdo#109271]) -> [SKIP][133] ([fdo#109271] / [i915#7207])
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> > 
> >   * igt@runner@aborted:
> >     - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][139], [FAIL][140]) ([i915#3002] / [i915#4312])
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@runner@aborted.html
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@runner@aborted.html
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl8/igt@runner@aborted.html
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl3/igt@runner@aborted.html
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@runner@aborted.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
> >   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
> >   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
> >   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
> >   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
> >   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
> >   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
> >   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
> >   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
> >   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
> >   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
> >   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
> >   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
> >   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
> >   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
> >   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
> >   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
> >   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
> >   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
> >   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
> >   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
> >   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
> >   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
> >   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
> >   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
> >   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
> >   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
> >   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
> >   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
> >   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
> >   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
> >   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
> >   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
> >   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
> >   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
> >   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
> >   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
> >   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
> >   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
> >   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
> >   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
> >   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
> >   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
> >   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
> >   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
> >   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
> >   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
> >   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
> >   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
> >   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
> >   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
> >   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
> >   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
> >   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
> >   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
> >   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
> >   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
> >   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
> >   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
> >   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
> >   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
> >   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
> >   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
> >   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
> >   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
> >   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
> >   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
> >   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
> >   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
> >   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
> >   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
> >   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
> >   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
> >   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
> >   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
> >   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
> >   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
> >   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
> >   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
> >   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
> >   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
> >   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
> >   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
> >   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
> >   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
> >   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
> >   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
> >   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
> >   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
> >   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
> >   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
> >   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
> >   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
> >   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
> >   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
> >   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
> >   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
> >   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
> >   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
> >   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
> >   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
> >   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
> >   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
> >   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
> >   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
> >   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
> >   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
> >   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
> >   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
> >   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
> >   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
> >   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
> >   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
> >   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
> >   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
> >   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
> >   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
> >   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
> >   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
> >   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
> >   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
> >   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
> >   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
> >   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
> >   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
> >   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
> >   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
> >   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
> >   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
> >   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
> >   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
> >   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
> >   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
> >   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
> >   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
> >   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
> >   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
> >   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
> >   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
> >   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
> >   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
> >   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
> >   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
> >   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
> >   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
> >   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
> >   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
> >   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
> >   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
> >   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
> >   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
> >   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
> >   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> >   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
> >   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
> >   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
> >   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
> >   [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
> >   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
> >   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
> >   [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
> >   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
> >   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
> >   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> >   [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
> >   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
> >   [i915#7192]: https://gitlab.freedesktop.org/drm/intel/issues/7192
> >   [i915#7200]: https://gitlab.freedesktop.org/drm/intel/issues/7200
> >   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
> >   [i915#7206]: https://gitlab.freedesktop.org/drm/intel/issues/7206
> >   [i915#7207]: https://gitlab.freedesktop.org/drm/intel/issues/7207
> >   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_12242 -> Patchwork_108755v4
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_108755v4: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
