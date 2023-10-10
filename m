Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B49D7C01E7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94DD10E3B0;
	Tue, 10 Oct 2023 16:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F89610E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696956327; x=1728492327;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x8dKG9Hdg6r1krWbvMDgHIYKrQdzGLHwLb0Kcm+0OwI=;
 b=ghVJhGtZjzuQsaxN/vs2dc1AujHbdA5G8ZNuQ1VxmSfiIbpFjqbJhCUP
 WrF+QHFX7emJ24W2Q6q83TSySiok7xdiE/A5tZTLdhOj95Komnpe5ZbBc
 oCVeQNOgUAh6XvSqiS50qjlNdUPc1N1WDUYsU02zBqaSKducx5r4KkqEh
 wIgh1diXF1SfuRUucatHJ8J3v7e16R3WmRw1YKmbiXJdBh5aOt/9Ppyqo
 GiF+CSuNz9PXgz5r6w+DXU4OZ4EigaKW5n3YiSmKB8M1bUdUR4awtTp6z
 YkcCShAti5S0cLMPRaoueKxo6xjEI2y0YPdcDl4w7ztgpC/+nOfe4tmxT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383320842"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="383320842"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:44:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877289947"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="877289947"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 09:44:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 09:44:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 09:44:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 09:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAfX6S3PJCAZo8NFsRepSxbyroK827TflaWmmWE8GNkSDr/7vXX4T40KhUe5dv7evs+l435HrFmg/uwBSXmqHfy2OoZRknqBkJlPlvqxH1LLWSeW3fi3AIBCcWHJx1LvFMWUqp/BItAXu3EhDqtl1hYsOYxinEVzGmbFzjoCOOJL+cM+obM9WerBr3r+mDPKqBfwV+HySeN5T/efwMPcSikkT5Y5zirMNYDSiKEaWH6IrpSOi2/Whu/yN1ZSJN77Q70IrkiQIH3JoDvjWEagEC87Et5m9ounvYggxjFDFKj49Ip26DMmQNeNnZx6+d1sC7XQX2XovIMy4AEnWD6MaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QoGxuJGAOoBesNfA0sVZfq8xXjc16pmq+hV8EAprZ3s=;
 b=c4ouQlMTfhNF2TRqXnAumaDcothHEMKf11xOwL4QjSUyeHS0Dq6rTAyJa5vJSbbR/emdVn3SW69VlAGCoSfqXyls2xFcH2aVZ2XEe2tjYrS7NzoTV+DizBGI40e4myMqOOfcLviecbM3yLmIGvjR2bS9gn6T5bJvMPLntyfnuKcYD1EhugSDnhaIhrov0uOtRjlyvyNYVwKn8e3CqTdrd3bU19flY7QxTBqBb+5VLsS9PNe30UiKlK28YJhTX4KJlGBgkHfRuPq4vPCiwzeGUkfS6wz9P0wXeyYegAUEN2eFn+KDYq4ZmxF28sX2mELwo2u75VP2/TYUTsCUbH+Tiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Tue, 10 Oct 2023 16:44:03 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 16:44:03 +0000
Date: Tue, 10 Oct 2023 09:44:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20231010164400.GB21382@mdroper-desk1.amr.corp.intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
 <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
 <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
 <60c69174-05ab-0c7f-d960-a3d8605582b3@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <60c69174-05ab-0c7f-d960-a3d8605582b3@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::18) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: a4fbacc3-559a-4771-3064-08dbc9b01c9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uVi/mjUWeThPnny13/9eabkYdIeK2luobfPQ8zou+m4dm2uPIVxrr8KPoN4Jv9bStspjwfp3TsKMkew6bkyVnym1LCstWM2MIgej9+O7RrSFbUM8/RsutF6J7NUiP0LKxFsQSrBBGxBEc/tBU7YpRRtpoqlzOwqCtnpBuQRbrnvqrl9if36c/k51UpVZ07QPavh8tQuhtFQNMjIjcl6lQEBV/KbKzDZkeqgXWNHclIIWnzgU2rpBqbuZajO60MdMQ9Od4KdaGyahHNCNYeUXtjrAVTvCk2oobKHNsKNQ3IT1u5BcNT12EbLfNwaqnVlIWANu65JfFUS1nyyJO2LvlnJ+UWdldJ+7Q+HbzozXZPfXvugt8MNduFixNAGjKCfSTCxvEVlbji9jgmYVs1vT6N4SelnY1HpfqUDezUF7wm0xpc8LqjXQ5u6FdQXr2WtAwl/PenPRRvoeLWuMiBdywrSGK0dUjcwKvA5WT3/8YrggG10zD7+cqoR3NjQo6bPDJsFEJxBeAA2uAvJnhS7m4uDqPM9FqJT0A42/eB5BkkAK039iOa9IccknTWGvARPF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(346002)(136003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(86362001)(82960400001)(33656002)(38100700002)(966005)(6512007)(2906002)(6486002)(478600001)(5660300002)(8676002)(8936002)(4326008)(41300700001)(6506007)(83380400001)(1076003)(53546011)(66556008)(66476007)(66946007)(6916009)(54906003)(316002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/YgXJSp311UJAM/hTgSZ4++s1Ca2leKJgzaZ8mnzVH+opiS13DV7eE80WoiZ?=
 =?us-ascii?Q?cmAINNzQCzjUwaspPfKUXA+GaLsk5YEAe8GXtMtHnKZw709tWLojSgLzGAvA?=
 =?us-ascii?Q?/RvBtpqQhWhl4vJvB6Rj7OLPEIdwoXS40c4Tx5dbaj0v3sd3PH2KXqa3HGxk?=
 =?us-ascii?Q?5Grs49ouZg9fkPTBYstAC+iTxb44OAscKBquBVDXELEy985/O6Mb9ReoL7oB?=
 =?us-ascii?Q?cMIpets8kpd9wZCfgkYjTj4OBbDsZFjz4PiIls8FQdKCt4PajLwlnCXdMS1r?=
 =?us-ascii?Q?jetx2Zr8qncw2nOWR/umFruMFtnPMNvDWssiR0Rwc0g8H/VeLIntaicL+cxU?=
 =?us-ascii?Q?09EK7NNaBOHkjscMnAp4Mvvuee6nI+jZ0aF/cCzU0foV/EGfvEtKvAE7pS2y?=
 =?us-ascii?Q?g3uT8Pa1NmdaMOKaz3L52qLugLK99X3cVltudcOXcYQqvhdC2W9YJ9iiBFqy?=
 =?us-ascii?Q?CGCLqny3x9nDorOkAJ7o7I8cCxvpU2a3gMM02OzY+YhfrpHoYg67NQOhueg6?=
 =?us-ascii?Q?gFzaRQ4zgpwxNjCwP3y0XCs2YIz/x+bDpghhTzA/3njcUJDhquWKgY8zriv9?=
 =?us-ascii?Q?uQCJlz6MtqNPRncnKAnsrqWPxw7qmLFksPqXAZUBsF0AccwVjJLIJEIZeYFz?=
 =?us-ascii?Q?0M26XCiYTjw88id7ATuj6Osl3maDpqu45iWg108dG4Tee6zlK446EKR7xFRS?=
 =?us-ascii?Q?vV6IkKNh96O9C5tv1xrHoFEOEvig/dy2V7pgh/WlBhSfosa+QN0jOhTDD4eq?=
 =?us-ascii?Q?ZXqmTVvp+penaC81E9D2dnOIVo31SslZVuLRX4QK3cCYHy09ScvSUAbj/CqF?=
 =?us-ascii?Q?2CWhn2QrtP1QqmUvDQfX0aHrCCmmwdf4LDjIDVJ2wznmvb76qSeyJR9BElRF?=
 =?us-ascii?Q?QnwFNncLabujSnG3R12L7lq/nVslcHiLz2I8vSRD05JAciVAN+HhhVeK7mSS?=
 =?us-ascii?Q?A+pii2Opl01M4fVSLaiTewIwUaPlS3Mf5/agP+3zzm5wHHdFKVOLZCSY8JaB?=
 =?us-ascii?Q?b+6WgIY3gil3TRLVuiL91pF1oX8K70chEf6P7U2a4fU6Zxa/eRH9qg4iZQjX?=
 =?us-ascii?Q?jn/zorsII3B5fw5CsnuQpjx4l4aX9EZNkt0i/gyJe0kJnra3L5zFtc6nik6L?=
 =?us-ascii?Q?RaLWTBzSUok9jB8vCtjuhi8JzjWJqGfmPqTLCa49z/1sz4mhR3djhJhOr0Mj?=
 =?us-ascii?Q?42DAZaDhzBL00ED/9SFUgk9nx79G6Ps1Cwbgj+BCV/00EXIwtmzIC/J1Eyti?=
 =?us-ascii?Q?2cBDcXVbJhmqqFTQ+7owR1x551gB4vW4MlMr784au1p2J4yD2hfZK+TrJFWU?=
 =?us-ascii?Q?QubO98TdwaeDbcvuE/f/qlj0ZI2nq0RMJmunbDilUHJJmO6HddYsIlrKW/Eo?=
 =?us-ascii?Q?a//ZsUMqWT8fg80UtvWDmxorI5OZdFygJLWRDhCxvJTEwt0bEzw/BDsm9b/B?=
 =?us-ascii?Q?mTBkQKnjH54nPOpZ3W+3xTq8Te6upnkaiIbxgflObZ1P0NZX0RNAyffI+RiT?=
 =?us-ascii?Q?BN2DcESTXXZHmLOJCK/eh+ur0/luCa5jbL6eCaPPxUMFOfGtjwYRztw1ZhgR?=
 =?us-ascii?Q?5SZy92gxEyix3Qn+QAxfOH8GsX7iKa6CiKPZj1RMyv5NgEbCahSCkO6N/T+p?=
 =?us-ascii?Q?+A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fbacc3-559a-4771-3064-08dbc9b01c9f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 16:44:03.5745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0j8AV3qVB7U9dlcx1HFjzonbWjsCTpyiimrsM2T7zCecE7swJGqHnKvQwWvZsbPvvmqR0pSaUmTEPutxTOjngbTBMEhEerSlyau2kqz5j0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 10, 2023 at 05:42:28PM +0100, Tvrtko Ursulin wrote:
> 
> On 10/10/2023 17:17, Andi Shyti wrote:
> > Hi Matt,
> > 
> > > > > > FIXME: CAT errors are cropping up on MTL.  This removes them,
> > > > > > but the real root cause must still be diagnosed.
> > > > > 
> > > > > Do you have a link to specific IGT test(s) that illustrate the CAT
> > > > > errors so that we can ensure that they now appear fixed in CI?
> > > > 
> > > > this one:
> > > > 
> > > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
> > > > 
> > > > Andi
> > > 
> > > Wait, now I'm confused.  That's a failure caused by a different patch
> > > series (one that we won't be moving forward with).  The live@hugepages
> > > test is always passing on drm-tip today:
> > > https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html
> > 
> > yes, true, but that patch allows us to move forward with the
> > testing and hit the CAT error.
> > 
> > (it was the most reachable link I found :))
> > 
> > > Is there a test that's giving CAT errors on drm-tip itself (even
> > > sporadically) that we can monitor to see the impact of Jonathan's patch
> > > here?
> > 
> > Otherwise this one:
> > 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13667/re-mtlp-3/igt@gem_exec_fence@parallel.html#dmesg-warnings11
> 
> Parachuting in on a tangent - please do not mix CAT and CT errors. CAT, for me at least, associates with CATastrophic faults reported over CT channel, like GuC page faulting IIRC.
> 
> For CT errors maybe GuC folks can sched some light what they mean.

0x6000 is GUC_ACTION_GUC2HOST_NOTIFY_MEMORY_CAT_ERROR so this actually
is a CAT error, delivered via the CT channel.


Matt

> 
> Regards,
> 
> Tvrtko

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
