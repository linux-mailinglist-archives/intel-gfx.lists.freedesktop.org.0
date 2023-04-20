Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CD26E9A5C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 19:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139F010E072;
	Thu, 20 Apr 2023 17:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D40410E072;
 Thu, 20 Apr 2023 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682010593; x=1713546593;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WeGNCnsWEPdU7xh9u8+vNdZXs/MM9yMWg0ve/6/VP54=;
 b=eLBsbxOlafyLq+Ojzwyh7LpSl8NF7oHghf6Wod/Jg9FrEFlI6gZDBeZ4
 Vky04yFQrKSyyau56GQlgpHwUlmaQ234JJOxHRx3Q16YYqi2sdOGRD5Je
 Kop28buh9jJ/Ty3q8LjhSzinq08RlzQhIIlwLZQJHrYQ1+q1PINCiqia9
 nGH5o8cSIkG+BcuxnXm81wv4yyiUZDh0Q/Qi7zDUL74NJkkCCY9FCXwpl
 3UqLjTU8oQsIbNEc+Sms9nKgQgC8p9RZOAWv1pNMsYb8oVjHiRglUZrzO
 pTAqDQRIuVHXfLj8cpNA7LCvx2kWwJQtUKK/dF5VZYk89UgmkgHQxUccZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="411046105"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="411046105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694590558"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694590558"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2023 09:35:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 09:35:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 09:35:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUmrFSyyhUN42yehsX64HX37JAD01mtly4z156ZZqQuYDV0l2VIf1IhoDHUgtN22hvIoUBHgJu+StNUkQG+m1tIdk1SeUiBAFC0TscJZcl0kvsgtj0LnFLakwDK0Ue0IKuJ1WzQwCCProlggr8JUn9GUZGodB4+IpoChRdwfmX7GJsbsi3m9CVauz7KDLHUDgWG8HTZhm4vJsyF6NB6n7fTvgRmWa6aCDbTs5a90mDbK9oaS2FzTMJ2OK/B1ro/wZKKuwWorPRiWTong23aorNayMk1ddzPk97EHV9K3IZT5UYFU7BeHjpV5qcZIJ0Ly2R267+q5c66Q8BoJWVYcwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBN0Tks1Y6xRK4d0QKBd8B1Hhnpzn6JXzMCfBuAdgwI=;
 b=jQLiTeZh8OATavaICEx8lu2weQXt+9g/Evm36nzfE1OijBJqLcdokWEVxQOCeCT7DHUmZHvB/vIHhvZ9to4jTdWF8dAZaWRf+JFFXMdTpeJWyTyGtSosQ0UxoiyGXjoGSkmNiwlHQe9CgWZS1BEIm63YnVR/PAaSL/cRUurYzwyHPvZ/q9rm8YvcrGC2HmTeJpy+1IlILK9t/FLx1sjoHfLKGCdGEpoM0ohdeEfROEdUifA5LVN9nySIuVWZkk7oo4JIlIUEkaGHcCfKJaS0Q7dJK+lW13opL0RFiORYUxH30pyC4Um+pTCucIh+heFiSmineCwjCnJptW9DzPX1Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA3PR11MB7980.namprd11.prod.outlook.com (2603:10b6:806:2fc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Thu, 20 Apr
 2023 16:35:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 16:35:39 +0000
Date: Thu, 20 Apr 2023 09:35:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <wgok6hcfxk6t4yoluaevyr5galuc446pbcpkp23augllbfrkwp@xulzu7xihr3g>
X-Patchwork-Hint: comment
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
 <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
 <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
 <ZEFZ1vVrUjtx7RIl@intel.com>
 <e04570c0a82752db16d179d72ce5f4ed6c271c9f.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <e04570c0a82752db16d179d72ce5f4ed6c271c9f.camel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA3PR11MB7980:EE_
X-MS-Office365-Filtering-Correlation-Id: f9c6fa2c-0b8b-4215-ad08-08db41bd468b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5d9bLhohbLpFpba0i/R/aREuhEpfDRotP7Oq3RmjFGkwu1pR3KBcSmoR8380a+72KXuaqS03t+IyOpLW/pRSsg1XVyK4aq6BJ968Ru/wLoJPq0PxcdCuDjzoShyq1XsfMclYiIxNQ7WNS+ByErJELQ+5HsBbxxKIw5f6zhUtpy2tcvXWYjraqfechm6tAq37IEYwPsMj3z8Ba+/ghfRUi7tR0qW3ACdeh/Ep0EzRRFSFrk2y2m17tgTOv3nqm2j0cCDKl58p/sb+JFju9ermV7lanx2tXC3G7XAQuHc/EdRTnUkA+X7yW19YNMBRpebhnC64kw4bMaHQcypqU++Hxc0p6iv09f3pdihwT8mSUsJEKn/VTIO0umQdFlrpPnQYX5g17C4i9SmkCzv4NZwuxU2O8WezHdcrEcoFSN1I5BsvC6aeeQjQyHI4IMELx4H/8JBsevMl2c78QNo29yV6BnB6bi1zhEu2yqC4fjzD3h178C/rVQ73HdHDPILDNbTV9v+YCUqVtKdmUfLUDzcL6GOHiFQ6RrDEwQlyD9b4IGasQTy0c+Lm9eFET8fbOsyt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(396003)(346002)(39860400002)(136003)(451199021)(66899021)(2906002)(478600001)(6666004)(86362001)(26005)(33716001)(6506007)(6512007)(9686003)(6486002)(186003)(82960400001)(41300700001)(54906003)(8936002)(8676002)(38100700002)(6862004)(4326008)(66556008)(66476007)(450100002)(83380400001)(66946007)(316002)(6636002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vej+4u9lGKJAU+lIWYeIUXy425lODuSdmUvaOHZpd5iD4fnui3/1TBeYDfUf?=
 =?us-ascii?Q?GFOayT2Rg/19bt1EYwBDwZgnkUh71yEQNj26TLz45IlNmidetYPU/5z2f21a?=
 =?us-ascii?Q?d1vaysStW2S3Oyuc0ITXTYh5CqzSnXxYFwVzcwOZII4YSVG5FRam99N6u5bX?=
 =?us-ascii?Q?xaYwAWbaI8LrsZyg2dzp3xQoS9psUXxvB1dNeZUdqQb98wuuy/mKN4IFEsZw?=
 =?us-ascii?Q?2lrH6dcWf2QqpHtYukgZgUhkgeLfELPmhQXo7OcUvJCsximYIOUXav0vzeiH?=
 =?us-ascii?Q?PQR18qyVTCTaAz67ZUCZKsNpr72IMQ1ZYgfrMseYm3FDwsP4ycLUR4N3F79S?=
 =?us-ascii?Q?4l3Oi1T8o0YCOV0V85fkL4On/Pb3h4Jolmn6J3T4ehxg/zCPPFfHAsyb1+Lu?=
 =?us-ascii?Q?UnZUFlc7lSHVvqfu2Tl+KgiEahKmgZ7/MdPDs1e1fuX4btM3GP5t11jicqRm?=
 =?us-ascii?Q?krZXVmw2w7BUsLkZQGhu/cnm+WfltkFsAl5u554TsR06nsKiVCfYiThdhjhu?=
 =?us-ascii?Q?QMUtUywo4NgBCvlF2+7Ay0NpihWm936kdbGf0YIb3tckOtXIoGQNsUx3FWl8?=
 =?us-ascii?Q?Xqtjr+l4ck9ezIEzGHhy9Gb6kWhXDRx7Ef1D5ZjKB63TCUJYk3BNir19DCD/?=
 =?us-ascii?Q?y90NF55u6u16WOPtjA/OivIdI7rT1hqBhGO84b/ghHecYvJKQwrCwZXuNREO?=
 =?us-ascii?Q?//UVHPxSPURhdOWY7Bj8VfK/9Cq7tcwE2Amhq0FqKC2UMC/+Z+ufcaMPZGmG?=
 =?us-ascii?Q?s8q7KyTq6qhkkei6EbvmCK4BfhY4u6rRG2BzQmrYVMjw5K7K2PvibTtexHkH?=
 =?us-ascii?Q?IXTDj1qnuKBIa84Mx59/jgDYs9mUx5rAs+ICa1Fcpi1oHdqX0XPtMdPRARTF?=
 =?us-ascii?Q?UL82DYz0tp17a2V8EnZsm3fkRAP6jIcPYH/SuhLv0wvZSWuvjnWSN/bPHrw5?=
 =?us-ascii?Q?8ahc2HjSSgcbJVEMDxlToXK1rQgp5Mnm9gf/2ZWfBrvxwoWEeQEUOYCaKKOl?=
 =?us-ascii?Q?nropuvZsixrhu3IDdaR6P1gZ/3EfWSLOVnLZYQk4yuf1cbGPMuSB4yE6x1x6?=
 =?us-ascii?Q?l11b+bq865eSB5o5xxMkfqNQdy1WJXm39keRx5Talf/APEzHi9g/ebp71dEf?=
 =?us-ascii?Q?uKk/31SKEtbzBjMvfitBYir2Mjl0PompLEqnvrWol81vzrp+tkN4I4kjlUv+?=
 =?us-ascii?Q?bDk+7/tK4WsiInrZPEukoajP8kuThW3qtokE5S3uU0bQ3T2SRjJoMtHlN+mU?=
 =?us-ascii?Q?GWFyM7BN6qSVOM0uV2aPJRDUYWVKGUmcY9g/S9jx4V+aPNWfJDthhPV6TetC?=
 =?us-ascii?Q?9CPzh22wzb2uWA58hgd5hjJoeYYXzAG07s8GKFRG4+3+N9zAJMvlDbrGuhtT?=
 =?us-ascii?Q?XwB2mscjtJgwBfA1ZO4HnEc+qDvlyAQ0UhczeLVcWXKvefbDHNhfdzAx1efL?=
 =?us-ascii?Q?8aB6tsZK01FBFclmjhYJWZlvBdUsmSQkGnNBPCqHqjbxPsDe1Gbiex43Aaeh?=
 =?us-ascii?Q?GLFfQHjXI8cDSicU6VXjGXd/LW62mxGQCu+OPQRje1e8CA2Ssg+509OTXcdI?=
 =?us-ascii?Q?fA/pT5e8iepyT9uN8PHI3WDXrlSCvpo3rQpbsxbdWq/zdkEu55dibVhJG2Ep?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9c6fa2c-0b8b-4215-ad08-08db41bd468b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 16:35:39.3531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WtzK9YiHKA13BhDEGyl0Id5etGl+7/vmaq2mUMt5MgU6RdDMo02MEeexhsbRtQUcpBIYh6kD3TlzdAK85iALgwR4J0JVoTSjpDNexdx0UrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7980
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 08:36:37AM -0700, Jose Souza wrote:
>On Thu, 2023-04-20 at 11:27 -0400, Rodrigo Vivi wrote:
>> On Thu, Apr 20, 2023 at 09:19:09AM -0400, Souza, Jose wrote:
>> > On Wed, 2023-04-19 at 00:29 -0700, Lucas De Marchi wrote:
>> > > On Wed, Apr 19, 2023 at 10:16:22AM +0300, Jani Nikula wrote:
>> > > > On Tue, 18 Apr 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> > > > > On Tue, Apr 18, 2023 at 11:30:18PM -0700, Lucas De Marchi wrote:
>> > > > > > On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
>> > > > > > > Start to move the initialization of display locks from
>> > > > > > > i915_driver_early_probe(), this way it is also executed when running
>> > > > > > > Xe kmd.
>> > > > > > >
>> > > > > > > This will fix a warning in Xe kmd:
>> > > > > > >
>> > > > > > > [  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
>> > > > > > > [  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
>> > > > > > > [  202.175346] INFO: trying to register non-static key.
>> > > > > > > [  202.175347] irq event stamp: 754060
>> > > > > > > [  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
>> > > > > > > [  202.180294] The code is fine but needs lockdep annotation, or maybe
>> > > > > > > [  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
>> > > > > > > [  202.192734] you didn't initialize this object before use?
>> > > > > > > [  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>> > > > > > > [  202.206882] turning off the locking correctness validator.
>> > > > > > > [  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>> > > > > > > [  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
>> > > > > > > [  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
>> > > > > > > [  202.255737] Call Trace:
>> > > > > > > [  202.258179]  <TASK>
>> > > > > > > [  202.260275]  dump_stack_lvl+0x58/0xc0
>> > > > > > > [  202.263922]  register_lock_class+0x756/0x7d0
>> > > > > > > [  202.268165]  ? find_held_lock+0x2b/0x80
>> > > > > > > [  202.271975]  __lock_acquire+0x72/0x28b0
>> > > > > > > [  202.275786]  ? debug_object_free+0xb4/0x160
>> > > > > > > [  202.279946]  lock_acquire+0xd1/0x2d0
>> > > > > > > [  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>> > > > > > > [  202.288181]  _raw_spin_lock+0x2a/0x40
>> > > > > > > [  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>> > > > > > > [  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
>> > > > > > > [  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
>> > > > > > > [  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
>> > > > > > > [  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
>> > > > > > > [  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
>> > > > > > > [  202.323812]  intel_display_power_get+0x43/0x70 [xe]
>> > > > > > > [  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
>> > > > > > > [  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
>> > > > > > > [  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
>> > > > > > > [  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
>> > > > > > > [  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
>> > > > > > > [  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
>> > > > > > > [  202.356260]  pci_device_probe+0x9d/0x150
>> > > > > > > [  202.360164]  really_probe+0x19a/0x400
>> > > > > > > [  202.363809]  ? __pfx___driver_attach+0x10/0x10
>> > > > > > > [  202.368226]  __driver_probe_device+0x73/0x170
>> > > > > > > [  202.372558]  driver_probe_device+0x1a/0x90
>> > > > > > > [  202.376632]  __driver_attach+0xcd/0x1c0
>> > > > > > > [  202.380442]  bus_for_each_dev+0x72/0xc0
>> > > > > > > [  202.384253]  bus_add_driver+0x110/0x210
>> > > > > > > [  202.388063]  driver_register+0x50/0x100
>> > > > > > > [  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
>> > > > > > > [  202.396431]  do_one_initcall+0x55/0x260
>> > > > > > > [  202.400245]  ? rcu_is_watching+0xd/0x40
>> > > > > > > [  202.404058]  ? kmalloc_trace+0xa0/0xb0
>> > > > > > > [  202.407786]  do_init_module+0x45/0x1e0
>> > > > > > > [  202.411512]  __do_sys_finit_module+0xac/0x120
>> > > > > > > [  202.415838]  do_syscall_64+0x37/0x90
>> > > > > > > [  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>> > > > > > > [  202.424409] RIP: 0033:0x7fd11291ea3d
>> > > > > > > [  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
>> > > > > > > [  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
>> > > > > > > [  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
>> > > > > > > [  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
>> > > > > > > [  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
>> > > > > > > [  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
>> > > > > > > [  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
>> > > > > > > [  202.489396]  </TASK>
>> > > > > > >
>> > > > > > > v2:
>> > > > > > > - added intel_display_locks_init()
>> > > > > > >
>> > > > > > > v3:
>> > > > > > > - rebased
>> > > > > > >
>> > > > > > > v4:
>> > > > > > > - drop intel_display_locks_init()
>> > > > > >
>> > > > > > why?
>> > > > >
>> > > > > ah... ok, now we have intel_display_driver_early_probe(). I thought you
>> > > > > were dropping the call from i915_driver.c
>> > > > >
>> > > > > Remaining question for display: do we want to spread the lock
>> > > > > initialization to each compilation unit?  Or should we just keep a
>> > > > >
>> > > > > 	static locks_init() { <all the locks here> }
>> > > > >
>> > > > > the lock init seems a very cheap init that maybe doesn't deserve to be
>> > > > > spread. Then this patch could just move all the mutexes initialization
>> > > > > that were left behind.
>> > > >
>> > > > I still think if only one file uses something, then that file should
>> > > > include the init for it too, and nobody else should touch it. Including
>> > > > locks. Ideally, they would be stowed away in allocated opaque structs
>> > > > that can't even be accessed (or initialized) by anyone else.
>> > >
>> > > so... this version of the patch?  We will need to spread the mutexes
>> > > around then.
>> >
>> > Do we have an agreement here?
>> > I'm also in favor of init all variables in the only file that touches it.
>> >
>> > The other mutexes can be moved gradually.
>>
>> I think we all agree here. Also I believe it can start with this and
>> later do the rest of the clean up.
>>
>> Probably change the commit message to remove the Xe, which is still out
>> of the tree?
>
>If there is no other changes, I can do that when applying.

	- no mention of xe in the commit message
	- please move the init() in intel_dkl_phy.h  as the first function.
	- send it again, no change while applying

With that,

	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>>
>> >
>> > >
>> > > Lucas De Marchi
>> > >
>> > > >
>> > > > BR,
>> > > > Jani.
>> > > >
>> > > >
>> > > > --
>> > > > Jani Nikula, Intel Open Source Graphics Center
>> >
>
