Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C44263433F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8032B10E430;
	Tue, 22 Nov 2022 18:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5B210E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669140353; x=1700676353;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=HlGVMaRspKosRNJQufUDS6XX4sGs6ItIrVTioUSZmpE=;
 b=bmcRkcZWtlUW6a8HreJgWv+LuJqUYXvddNxO0wKAYZGevXrOqx/JjJZK
 cVgFeyoqYFE5ucrVrv3tC3i5+iSjohV8mxK5bKTxGQx/PGAwByrrCX5VB
 YbYtNBQ+6ieDBNu7lCqPdzAaGkeT4rg8+S7c9FJeId0FdSuKyyPcxX/Kn
 xp1ll8yoxaCcNpUAn7hH1Ly+FEC1Z4hobx9ytitHnNTgjh48SEqYH2Ij7
 SQQoQiCJZ3MvUKwFNYKYwZL7QP44IKT2tq6/LzLO7N8gaaddfxsKrVnFs
 pYLTe5GuhiCElfCJin9EPXYNqWoc16kYmYX0vFLksJi9djpTUhlrvu+pj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="312579503"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="312579503"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="705054281"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="705054281"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 22 Nov 2022 10:05:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 10:05:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 10:05:52 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 10:05:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kmq77p8E2jC0fVQeeG+ZwCncuNF/5COFKLnH2Gm2gUOkhyEIYd9VN51GnumCuqEkZxT6vgUmYHp8bsIN/y5lMAQN+UyLtg28a9IbGVT64VBSFelpQlvmQtSUbISmAlHXIPvqzafg/Xgs2lN3Db+MJostG00AXB/QNIb2JYyO0+WoK9WWTCM73MPzVkr10MObJxRHsFZsMqWkYtbEsHJuivaqfkT9PtDZKNUkSnoKLmh14f+PbNayH9C4bGZ+Tzhf2NQCV3FHMSIfKtR7+HpFrqhjsTegSpGvq2BJ9tCFhk/172R+2hK/it0/409mlDX/p1Q/ktA5j4eVCijsEMiAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mOuWfm1vVTt1ePkV/dVJ4Kq7GfzdubT6gU9mOVhJsvA=;
 b=GIegG/G0mRmifMKJClHJvMcJCNIJ5hf9Z2qLbwZN/okmzAb5/bfAu4MNAu0L70MpeKMWy9kkJrQrrGevfntAyN/TAqOhYO+t1t4+IguwXbyOByTqHp5ilbpUnNLvxE8R997FPQNEdfFahMWru7WikdNe4eUWx26KZU384YmFullOmlWFfVPiPtQQuhvwU50iNTNZ2Cu0IXv9VluPGf2Cy/bH9BQDCgin4+4YWzm5cZV2lfyC9dfvq+q6rw7Pj3jyX31bigG0g6ElHk7X8F04r0C4JcYeHcP/E4pl13zgB1ckwydX4/j8XCeV7hhFL2BIpE2OEUPL4HsxlPxAqcVq+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 18:05:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 18:05:49 +0000
Date: Tue, 22 Nov 2022 15:05:43 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20221122180543.4arm5bkfjjfvx5lt@gjsousa-mobl2>
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
 <CY4PR1101MB2166D6D3BF6E094DABF5372AF80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB2166D6D3BF6E094DABF5372AF80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::9) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 0916f8cd-eda6-46cd-ecc6-08daccb42f3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lecJF5ZtA4xFEz7jz88vdDgO40lLoxjKUgXzX2R6uKAwVBZINzTVdrv0F+ycuhWnJ5lhvqZE0rkkbvcfILG5hXNbM7El8uQoLAl6ttXKMuP+X34uoMVZQ+ZX4PO7Uj8vodz7YW5rLqZb1gGHIMcGNIBbz3a/IJqOl7aVyBx6IQGvT7ms+iks0vW6FVeBLSZlVPNcQxAPfcf+JKCkXMyiZGAsBfqVR+OqxgN4/uhN/rDmsA5KEW+FScU/5u3/rP1UaluC3mwyBQnN8ZFxWFc2OYdBKUCFmR+EIIxWYjNXQlTwSrj4sAygnQ7NyFzN6jCVzNzIs92LaHUTWMONfgubz79TiB7AQwICTudYx9Ogi/vF1oEOBELjL7xIbZZFvAtbiJnPfePnz2qU5hnTv0Oz7vqihCJGWL1qJNDa4ktK0cMbLuqbcJwnpAozLFFbk4xIR9NBwk4fb+T0dOaGcrwRB0O7UfvAFiG6Kwavzt3+WUAWqFrBxLiB3E6Wi+44l0QIoVEiCYg1IKaXS3QLQPWlRadAZxduf43r/pW3uODYptlj1Kzx299sqqE+cKQwSofNzX4b9SqIbdMuEXxBVgQ71hZ9eILnCwaSxp85MyOA/SXvXAV8UDql58KWoE4K/uE5C3xmPUIAQoiSSdJ6QsLoaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199015)(6506007)(6486002)(6666004)(53546011)(6512007)(1076003)(26005)(186003)(110136005)(2906002)(478600001)(9686003)(38100700002)(82960400001)(83380400001)(86362001)(33716001)(8936002)(41300700001)(66556008)(66476007)(66946007)(44832011)(8676002)(15650500001)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LU+yIV/KpXg4NvXECSrAhKpzI+tdLNUkBWOb1eTnn7hLYq/ryTTE9eUidbMf?=
 =?us-ascii?Q?KPbXmcdnmPsAvyVtBvxxcjUM82VqLSlrNfOuxYlj+r1OevighyHXMAN2anBx?=
 =?us-ascii?Q?GU7V97OaN+hBfhEvRp3fHxnEVA/1hG+qJz4VU8aquVRSbAvITo8un7AWfehT?=
 =?us-ascii?Q?8+tmM3dVS2zVfT7vpIqeA8v8zqfn1WRimueuBP09lgdiGPpPv+WtaWmuWya9?=
 =?us-ascii?Q?CYk5WIG7JO2Uw3VSxE6oU72jsKxBa1bkgBHKVGWDUSbSrTNTgqmEXdsIgQpO?=
 =?us-ascii?Q?J2yB+PX+2K/49oe5rM4acVUPeZ9Dmw80nbcDKJV0Jzmh/6aDiu0cHGQc9Wmb?=
 =?us-ascii?Q?Quu7W+tfdIdrCbgbn5TkTc4DTpQRqrEdF9cz12jnBtKQdWx0yDn120MvNeBl?=
 =?us-ascii?Q?l6rq0F7TrcXW31W36IYLgh+48UmglcVqIbVWEUE20b75ibO4BcE5mi1NYFBD?=
 =?us-ascii?Q?fTH+r/l1lKDg32/8+IvRlEQT2uOzlK+5BuR8jCn58UMrkXE4ce4HMI8uCK51?=
 =?us-ascii?Q?GkZy9fiqoT7Ai2rN/2GXpGLgdzy6c5yfVXSooYyyW7EO+b4E75MuQJqKHxWn?=
 =?us-ascii?Q?emjSZUe2x//1mSrtP45qIFpR6ruWFv1+o3kx2mfzLCc7F4zVaBSjN6qiYFsm?=
 =?us-ascii?Q?KrMqzARJi08d8Rbm0UefT24qJrCUsEnXIMLMo4EI2wwbThPr4EfFIHoIPa/s?=
 =?us-ascii?Q?UBTrqK0BVoKSW6HT6z37a2HP7FG9WU1EUVMA1exPImlE9GbTKTU0zMo4enp7?=
 =?us-ascii?Q?qc+nP/jblDCmf+z7w82vVmqEs9Q84dnQjGmHnriR0w1ZPKzkpD31KJRJLHCa?=
 =?us-ascii?Q?tsDB/VtNUJl9lWJlXPkSlZu6CRFK6xG7cDF/PQKYFMxEVl9y73CtofUAkVNU?=
 =?us-ascii?Q?G3oTnP/5qPEBe4frK6Q+Q1BH6FQpkhBZG4ACCNZNqSzOVuC46DccIBn6w+E5?=
 =?us-ascii?Q?+kDkEjc/dtwioFpyS669ymf1LyTgw27zAOwnVtWNJzarNIpbnlJEGqg6xtpK?=
 =?us-ascii?Q?KAEdUXPl6r2YIXCe28DpvigudWhG02TTbJLq1PidHt5KMeqpk1o6MMwiFenh?=
 =?us-ascii?Q?UQc4BdP4Sozp5y06kAA7hTbFVKbIM5zipaSX1Jm1cA4Db0Jtn0GNJosXDGcc?=
 =?us-ascii?Q?YGGc+V3gTcePQJZs3hdtyzH0hX+5ICb513mBA+1Ndrfe32UlUEx83+TPu5Jj?=
 =?us-ascii?Q?Jq3TBTuZn6SpZUFSgYa0MljPnnaR4/+2kneOar0j/bp33kJ8Xj3BjjNGJYRR?=
 =?us-ascii?Q?aZwGhh17PllrhZrWQwm3NixV30raqGYO6vf2G9kmyohpDL1Pvgc6TxxwsZhM?=
 =?us-ascii?Q?Gm3PxvEeKLa8rQ/LlPfTvmi0DPArrmvuy1Gkdr8CaXsbsK8V/qyVtA6EUCfe?=
 =?us-ascii?Q?IOotJaEnG998LSunp3o9EFQxkAN4PU/rshiHCxcAXsYX1UtOLuJLQlM1WoXO?=
 =?us-ascii?Q?1fkXrff/cVLg0no5wsK10Zbw+07+9bOYMgI0pUP8o46lYzVn1orLzzWQbg+M?=
 =?us-ascii?Q?xWo7rzCNGyy5HD6DGA9Z3VIR3OfxxDsSUcGi+0EC/2nKkwUL12CB81BbRogG?=
 =?us-ascii?Q?BKvs47tEEJ4PWi8AUlE/cY5Dq4g6yokIU2l0O3q59aWphPFK+j3FgEprRH5e?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0916f8cd-eda6-46cd-ecc6-08daccb42f3b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 18:05:48.9200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r4Hv3IVVoXBtXKibt+hFIxzJISFc3JC1sv0eXvn4dP2tPkt/1g4fwCJcJsE6MZ2wl1OkA+6TCKup8GyvoZYVbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Anusha.

On Tue, Nov 22, 2022 at 02:27:05PM -0300, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Gustavo Sousa
> > Sent: Tuesday, November 22, 2022 4:14 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
> > v2.08
> > 
> > Release notes:
> > 
> > 1. Fixes for Register noclaims and few restore.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> > 
> > v2:
> >   - Use correct numbering for the minor version (8 instead of the
> >     invalid octal 08).
> > 
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 081a4d0083b1..eff3add70611 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -52,8 +52,8 @@
> > 
> >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > 
> > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> > +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> 							^^^^^this should be (2,08)

The v1 was using 08, but the problem is that this value is interpreted as a bad
octal, and that caused the compiler to rightfully complain about it :-).

While the path should contain the "08", I believe the version required must
contain valid numbers and we should represent them in the decimal base. There
are other similar examples in this file.

--
Gustavo Sousa
