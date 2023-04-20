Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBA96E9846
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 17:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812BE10E8FF;
	Thu, 20 Apr 2023 15:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FC910E70D;
 Thu, 20 Apr 2023 15:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682004453; x=1713540453;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E22lPBXBKfcAiM0GD//sEL7EEl3C0BRbWOQzwSFtDmY=;
 b=Vc0PWKcRANvMn3D2nRSLVZUdlMkyaF7oZQhMinxo2lBIdMUsilHggaIZ
 9B75yYTMVjcVIlixbpT6L8/mXCfns6zoQcIFXloNEw7s3O6LRjZmIccQm
 r4kJqYdvDNQWkV+WsrqMqj2jqhHtNlhmvfALIzEsG/HN9KMPjbKIgXLX1
 HEtM8N/EOQJAXlaXDLFWk6J+odWHyQUYNPSGCsEO6fQ6x+foweH2xrQfd
 mOX/EweMQx9J6mLWEgR0Vv0cvbcl23SxpO9LicZ0BvReU5wU3UYLFEphl
 C+9UMraKz8LkNG88vJakrV97BuzeMLhFRwXWRaakXcn+kBMab05shJz8P A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334605312"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="334605312"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 08:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="756532741"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="756532741"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 20 Apr 2023 08:27:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:27:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:27:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 08:27:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 08:27:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hc48DHeP/9nt38UsO1+ApAG7HAyEPSGoUCKy58+eAuWa9V5XxpW3CokOk/i1TMijYWtZuZQvgA3keMtNo3fTjIcGxxsjldCkO8dbmUIiI2H5+Nc0LLONo6HFhZqhcY3jfeK+LQdsguohs5qNFUaFzOXjhY5wI335U1wQlko+WsFJbtxFCx581vWrtRza7DTTC8ujRPbvRUpUo9kqT8NvXrCodK9VcwiGHiVR91AIyaOa/gJWBPRxjpHLJo//014Mmor1Ssktz73cTv5UvG7lyBmdM71iLEDT21MnV0q5IQavlxsuR6gw40zukdmP2VvNIEPCYqluy71D9xivwCO51g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p8isWhjoXZgPgb9sY6oT4Zkjw3e2ImgiLA+YWSQR70A=;
 b=P7Xr21KP/gAYVieU7cjZcbCh42Uo3MQKwCN5cKKqi5XjS4ozZCwt3ik0sBtnm7ve5JBFu+i8+FHlW/0v8fCqORBg1XkhpPpbC3acepcQgfzNZCJElrAv+3/KPkGdvedpILCFviIqon7qnPawMUsx507SfZ7yyORkg/EgVlmSaIZZ74KF+8XR/V8SeXohld2owgZ/ZoQcuX90jRkfzrZqQGVrnfdAqRznZfcs54ICxi3Gk0M9xmot4xMpxDEbOzbNvCte3dH/AwzvWzKspLc0oIJ0RNq+ALfSpDYgRH9JArIl3ySSTXLHomW0THO8/TnmQ0S/BRxVwD7+c2mndEWeTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 15:27:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004%6]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 15:27:23 +0000
Date: Thu, 20 Apr 2023 11:27:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZEFZ1vVrUjtx7RIl@intel.com>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
 <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
 <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
X-ClientProxiedBy: BY3PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7723:EE_
X-MS-Office365-Filtering-Correlation-Id: 01230182-0dc7-4688-2d91-08db41b3bd00
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h5wXaicMYTDfaW9nzJ7nd4PBItvyMF/a5FLeUfYnOC3K9+OUPOuH4R5J+D5xZHidaOCE7sVlakgkqfdmGa6LkSCqgwuJudMTwyHy+ji3RRzCEhKUg24+Q0VuHw07tCw+p4rN/joiC17dDMdAEQYHyYmuhNsba9D4xBuMjSBOIlPEXdSEWHzzcvoHq6/QpxccLS61uRMPa/H1VLaYj/uL5r2L+xZtBXWZIzKAamMK00iK8VUjZKw8Fur8mZCyk3JEgtinb/cZ2gVbwZTP+DMiNk1uvWH7WawOLqh/tPgbFsyM7t/yLwrFJLEwaH6PKsKbOqw72SdSqQi9Vxt4wUgOQYf5QziFCqm+195ZP+qvCoXIN8si1INJO3R/G0BzT82qSuInURBbHia+Ev3YZ+awEelp5Zyn0iEplZdr4rS1xwiGskmlpGUsQPxElDYSRNSZkMNJEskLQIO7FHVSL/p66Ui8YzeJQjS4BfjbtixDkKoCKnB73sJeHn5IuIOqTklGP0EmOU9PUu+vcYTAUacn7vqUZW+kIVvoEXDE2mqvmyOA9ifUzj+s3aTkc5bZg6+S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(39860400002)(346002)(376002)(451199021)(83380400001)(2616005)(450100002)(478600001)(6486002)(6666004)(37006003)(26005)(6636002)(54906003)(6506007)(6512007)(186003)(44832011)(2906002)(36756003)(38100700002)(66556008)(66946007)(82960400001)(4326008)(66476007)(6862004)(8676002)(8936002)(316002)(41300700001)(5660300002)(86362001)(66899021);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?62rIbekrvA7lkqW45rKR40tPoLTYUEpxlrVsqM4jOC9PeFNn//uMkXbJp/i8?=
 =?us-ascii?Q?E14o6dLa54JdvgooknY1vzAUcGcUe4LYIx993ZXJEAfAaXA4/Br/52gWG7Ic?=
 =?us-ascii?Q?NzmI5pI3xvF8S0Q45CoaKiz0ulDQzLxD9Dw+cec4LbfdpstJvB+oo6XQc9fg?=
 =?us-ascii?Q?kAPNXUgqgdGdGJJ1CBrjS3QfEGbohuWuAueXpT76yLWLRC36bE+Vsn6bgDT+?=
 =?us-ascii?Q?ncZECGQqwYW0zHUW2rGA29BVsgWvvpet0RJBRRqFhdr79KYnlIPve5tXtx5L?=
 =?us-ascii?Q?ql/HuYUCOdQPREOXksF4UdB0qOjftMXCjE1nCHTTmt+zCXi0W00JbLNk1Q62?=
 =?us-ascii?Q?F8Uj5VygDCBsLWmvowV06lHjTRAq8EUS3x5YhIi5GWdR2LgBLG4mcbhvLmpS?=
 =?us-ascii?Q?ZqEawZWl1XadwDWKrevUT55KAObrB/iWhh7bQ/RFIyILpQC1DKZ+IlniX0EX?=
 =?us-ascii?Q?LtHkPCbywg33uWexzqq8285YKL02wtm/dhvNhDfo6lecGZhXrDA0fMpOk5dc?=
 =?us-ascii?Q?9MwkYfsXZdYEPs8uffhiYcoE9jXI+qmYb9Rej7EMeHCRpKgkgM8wgmx3B1yC?=
 =?us-ascii?Q?gdBDEtf/cE0P1MV0Q5ACtWbCR5vN+ge3YFornsCK9W7I2hzUEvH9Dib+LNs0?=
 =?us-ascii?Q?axme/4omwiyciGarmnJNyHz9OU/WlITwZqd+GeY0cSubRSQvbwA7D+GL7Iiw?=
 =?us-ascii?Q?xPpqfGkhdBLBkhbI7MhsK3wulFxj/eut9IagYzik+wQPhiPVIOMO9KvzLFh9?=
 =?us-ascii?Q?BFRjScWgHtYurTLyzKWWVyWeSRZltZRQWXyHyYzIGdsa9vAJU9T8gy1obZxi?=
 =?us-ascii?Q?yXwksrBR/VMOLDkbLkmqkoi153bs6vMO9ycBou13tpuncOU7FU/wr1xbxwcj?=
 =?us-ascii?Q?S6fcLHOTwACTs2T+yJribyTqJJvyih5hn39vhUn+aI9rmdZ2LxRG8T8kM4mJ?=
 =?us-ascii?Q?y3AXAYeVYgGGxpod5hwc9p89GwtRNABtK0RUFZ6t8HeHtV+0wUxTE73CCaKO?=
 =?us-ascii?Q?Z73gb56Ttv/WssPE3tUkRBghNbM0K8VDYDvgOQnt+KbJJ8xro7pxF27BSkXY?=
 =?us-ascii?Q?MQB1mbrk7QFEawhrCqbd+CieVanTDh7XO7LjOng7mDjIyqX5PAPt8D9Dy37y?=
 =?us-ascii?Q?HHST7XQslo3zIe4zr2ojjZ1Ua1zG3YYe9u5y+8QITaXDY3PnhpuAVULJkOkZ?=
 =?us-ascii?Q?hYkP0ShaLXTEVkVc+sfQQ2kY+4Ex5tCifY5PsgKUt9rp3NpgHymjzMO/uewO?=
 =?us-ascii?Q?u8eiiwj5VxRz6LUGc81c+G5t43pPJw8qloWFBa92z5ML8QMZlW4c+Kb2p9Yt?=
 =?us-ascii?Q?veNXnlIiDOZN+o1YCdNFaSeJFnH/CEE/Y555HNxIjeaC+qLc72qKoxfHjOZS?=
 =?us-ascii?Q?2ztW4b+8tHgjKSfOH3DNwFMKzeMRVcCurJ7xAj4KmFkZpnZOt9O/wUu9riLi?=
 =?us-ascii?Q?FqLOnMjEmRpSOJ66etcpx3YtcWsGSuns0I+FfUGn/hjrLN5+BFtCuT/rKwkF?=
 =?us-ascii?Q?XdidByXDBNviAPLqYI+zYYuoiSF7qBEFtVx7afeBfTgB2YEQiamun9HsQk7g?=
 =?us-ascii?Q?k64q/gS9ZEZbeUzFhX+mdD/htFvnyTa5PdCTfvA4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01230182-0dc7-4688-2d91-08db41b3bd00
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 15:27:23.3126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hspjBz1/6qupT4XA4ImEtTXZ7cnrAJSLKrigzDDp108cuCAii+F0HgPiAPsrrDiJXPusFzsw3BAxD3Axi651BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
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
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 09:19:09AM -0400, Souza, Jose wrote:
> On Wed, 2023-04-19 at 00:29 -0700, Lucas De Marchi wrote:
> > On Wed, Apr 19, 2023 at 10:16:22AM +0300, Jani Nikula wrote:
> > > On Tue, 18 Apr 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > > > On Tue, Apr 18, 2023 at 11:30:18PM -0700, Lucas De Marchi wrote:
> > > > > On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
> > > > > > Start to move the initialization of display locks from
> > > > > > i915_driver_early_probe(), this way it is also executed when running
> > > > > > Xe kmd.
> > > > > > 
> > > > > > This will fix a warning in Xe kmd:
> > > > > > 
> > > > > > [  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
> > > > > > [  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
> > > > > > [  202.175346] INFO: trying to register non-static key.
> > > > > > [  202.175347] irq event stamp: 754060
> > > > > > [  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
> > > > > > [  202.180294] The code is fine but needs lockdep annotation, or maybe
> > > > > > [  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
> > > > > > [  202.192734] you didn't initialize this object before use?
> > > > > > [  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> > > > > > [  202.206882] turning off the locking correctness validator.
> > > > > > [  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> > > > > > [  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
> > > > > > [  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
> > > > > > [  202.255737] Call Trace:
> > > > > > [  202.258179]  <TASK>
> > > > > > [  202.260275]  dump_stack_lvl+0x58/0xc0
> > > > > > [  202.263922]  register_lock_class+0x756/0x7d0
> > > > > > [  202.268165]  ? find_held_lock+0x2b/0x80
> > > > > > [  202.271975]  __lock_acquire+0x72/0x28b0
> > > > > > [  202.275786]  ? debug_object_free+0xb4/0x160
> > > > > > [  202.279946]  lock_acquire+0xd1/0x2d0
> > > > > > [  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> > > > > > [  202.288181]  _raw_spin_lock+0x2a/0x40
> > > > > > [  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> > > > > > [  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
> > > > > > [  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
> > > > > > [  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
> > > > > > [  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
> > > > > > [  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
> > > > > > [  202.323812]  intel_display_power_get+0x43/0x70 [xe]
> > > > > > [  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
> > > > > > [  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
> > > > > > [  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
> > > > > > [  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
> > > > > > [  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
> > > > > > [  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
> > > > > > [  202.356260]  pci_device_probe+0x9d/0x150
> > > > > > [  202.360164]  really_probe+0x19a/0x400
> > > > > > [  202.363809]  ? __pfx___driver_attach+0x10/0x10
> > > > > > [  202.368226]  __driver_probe_device+0x73/0x170
> > > > > > [  202.372558]  driver_probe_device+0x1a/0x90
> > > > > > [  202.376632]  __driver_attach+0xcd/0x1c0
> > > > > > [  202.380442]  bus_for_each_dev+0x72/0xc0
> > > > > > [  202.384253]  bus_add_driver+0x110/0x210
> > > > > > [  202.388063]  driver_register+0x50/0x100
> > > > > > [  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
> > > > > > [  202.396431]  do_one_initcall+0x55/0x260
> > > > > > [  202.400245]  ? rcu_is_watching+0xd/0x40
> > > > > > [  202.404058]  ? kmalloc_trace+0xa0/0xb0
> > > > > > [  202.407786]  do_init_module+0x45/0x1e0
> > > > > > [  202.411512]  __do_sys_finit_module+0xac/0x120
> > > > > > [  202.415838]  do_syscall_64+0x37/0x90
> > > > > > [  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> > > > > > [  202.424409] RIP: 0033:0x7fd11291ea3d
> > > > > > [  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
> > > > > > [  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> > > > > > [  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
> > > > > > [  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
> > > > > > [  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
> > > > > > [  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
> > > > > > [  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
> > > > > > [  202.489396]  </TASK>
> > > > > > 
> > > > > > v2:
> > > > > > - added intel_display_locks_init()
> > > > > > 
> > > > > > v3:
> > > > > > - rebased
> > > > > > 
> > > > > > v4:
> > > > > > - drop intel_display_locks_init()
> > > > > 
> > > > > why?
> > > > 
> > > > ah... ok, now we have intel_display_driver_early_probe(). I thought you
> > > > were dropping the call from i915_driver.c
> > > > 
> > > > Remaining question for display: do we want to spread the lock
> > > > initialization to each compilation unit?  Or should we just keep a
> > > > 
> > > > 	static locks_init() { <all the locks here> }
> > > > 
> > > > the lock init seems a very cheap init that maybe doesn't deserve to be
> > > > spread. Then this patch could just move all the mutexes initialization
> > > > that were left behind.
> > > 
> > > I still think if only one file uses something, then that file should
> > > include the init for it too, and nobody else should touch it. Including
> > > locks. Ideally, they would be stowed away in allocated opaque structs
> > > that can't even be accessed (or initialized) by anyone else.
> > 
> > so... this version of the patch?  We will need to spread the mutexes
> > around then.
> 
> Do we have an agreement here?
> I'm also in favor of init all variables in the only file that touches it.
> 
> The other mutexes can be moved gradually.

I think we all agree here. Also I believe it can start with this and
later do the rest of the clean up.

Probably change the commit message to remove the Xe, which is still out
of the tree?

> 
> > 
> > Lucas De Marchi
> > 
> > > 
> > > BR,
> > > Jani.
> > > 
> > > 
> > > -- 
> > > Jani Nikula, Intel Open Source Graphics Center
> 
