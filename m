Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB945FC7D8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABF010E518;
	Wed, 12 Oct 2022 14:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C779110E518
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665586604; x=1697122604;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UdmPkjPsrC6ZQs8UiHwPFjwRxGxtcInPtVUax/pdrEQ=;
 b=keNiq2xZH5TftRxj5yJWhuB6AVvcSn5c5Qm28xHxAH7S0PTwwUsr5lua
 +JMGVs+Yd3i7tQgOixR9Y43guA9O1Kv5HEhb0rJWoWhNkfuWU1uypXHan
 JVDvH/MSt+ZXjpMrkrMSh+qn097umLvIwTqdKal7gK2DWbpoc9CSdewZs
 xU3VFkU7OB7eMQj0xnNkbMhj9JDPuvhlNesVUte9ttCgHJI+sqpD8Z9zw
 Jb19QSZ6tWyYQ3BTsQVBfYm/XK0Lgi01h7my5Yve1iExvIXZXxOfHGxt6
 zB3rm1UrPuSesySzqEh+wm14aHKykPMxkaC1IzRbT8RO8zrgaj6erY3y6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="304800625"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="304800625"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:56:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="871939666"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="871939666"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 12 Oct 2022 07:56:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 07:56:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 07:56:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 07:56:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 07:56:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgyblTlV+hATvO/mWGjoVU7KEPQooSkIt5Z/DBaBU0v5sgINSzVoG6jStKDXPaiyIPGXgKhQjF42qXza1qAFTU20FzfhJVY3CLJWsg78VsCZkbS6jMIcDR2mK0q3ZbIc7I+cRhmKnA+bv39fQ67I323hfDCOV+Rb7Tx9IGR9Vw2yx6oxBhoJTx7xtuL1PusPJ8M4u/RWfOk31UV6TDcrfKhcyeN/TokwiL0yk+ZbAF4h/ULcSnYuOpWPFEAGTHtCX7gWAHbE2AaLP9hdXwgpERTEaJ/O0vOxS/Y7hEseWnrJIvbb74WomamN/izu0Lpn6ih/xmuhCuXDhyXE2Uqtxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1cqCaZZz097WHJuVSVLg5/s5xF+Wg5TOarwiNoOVcg=;
 b=ZUpeaCwizZ/W8bTyuBaoDxDiTk4yFwnk6miEhOq8NZRIGCOmGrjHQpdpf5XP3Gb2pED7YxwW+ioOdwmr2Xps34nXF/k4IDjLdP5vqN0Q3cBqR2Oa2Ss7jeG0VUUp2p+nauXRQswWqZ0ANCWVU3wR+KPwEbSWb3ESrChkpJxnPJEVKbUZ6jyENemlLRR/pH/AOytXJO3WI/yyPy2vu0y2uWZBX/QSztCMAoM9BYV1GxMMN+um1y0IyjuyumCcQpUqoi8qNbI+pJnJj/AEK6rzcFTJw5THXMMMEbUVc72L2D7RrbuyRuH0Bp84dnFcJXw7AJrcECbfRJRJjaqz8yymKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5011.namprd11.prod.outlook.com (2603:10b6:303:6d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Wed, 12 Oct
 2022 14:56:36 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7%4]) with mapi id 15.20.5709.015; Wed, 12 Oct 2022
 14:56:36 +0000
Date: Wed, 12 Oct 2022 10:56:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <Y0bVntSGgbGDb3FM@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <Y0aHNzVct7jHFrTz@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y0aHNzVct7jHFrTz@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5011:EE_
X-MS-Office365-Filtering-Correlation-Id: f65da9d3-4f21-4f50-eada-08daac61f589
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: go0J6taxXXZuls12aMfg/hmGDdKRVrV1FNEXEtPlvcuf82JTN4+4wI8EPVPppn+Ne+qWq5HfC72B0y26kBUE/uRXHIw835SI6apqr805j/2bcS+SBW54/kFc1yHHkfx8cnJsjGSfHyRZ8ouXleyUI5iypq/mvSlW9PTwsEhZz5ph5MLRcEPEl3vXXE3+RIgEktxx/ujDPbUoQEVvUzjiL8uRASLKpf3eXKHAVfdjmoW3a5+6BoaiifFcTXGUM9rCAWdoa7rica5w5gHLmG3PgFGlultqRSeLErTTUr93HoRKsM7eiBEJL3b0U8tyJgox5m7l9mXjVtEOVUCa7EI7VLY1ox6dvXZM0oQziwpJJPXolnMaJGwbOvA3r1oDQHfCeFu+6lz/Q4MiM2nhSfZhxv+Zbluhokc1CGPy7oAEaJ74N8T5HQ/mGHgL/eeNvwLpy325N0D1rvXBUNwWa115vhW34/CqSY3SJTAaf0Njub0qkzDiVr8B20gG6I8eZr9vaRPXCNVo0Hx5GShOC5VlQI7ogIEdDUDHiOIYQkt4iFpPQRwz/quluLFMXH0QzA2uatLGi76okTuDmWLpxX7mMdLvlxT6bzUFQr+AiDItr/g9300YhtXsMh6Z0XXM8rYI45ID3P/0rJGlnfeaVEPcUHmaGcn3Ud1UAeVZuNUxa/s7PrEISgVfmqR20+TPZKORGrS5VR8yZwZDzeIRXNpA9Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199015)(66556008)(8936002)(5660300002)(8676002)(4326008)(2616005)(41300700001)(186003)(6486002)(83380400001)(66946007)(66476007)(6666004)(86362001)(38100700002)(6506007)(6512007)(36756003)(478600001)(82960400001)(44832011)(26005)(6916009)(316002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HhdwIXdSANigc3fzy7mSdbJRiMqy1gjVnRtqojNvlW1Ub4R4D7Vgo6KbeS9j?=
 =?us-ascii?Q?ObzyBLBgiIIh+0vgq/2Qcz7caDTlWAHVvWVAk+YczFFW/DVCjNrdo7aZbKP1?=
 =?us-ascii?Q?tl4rnZ19g++qnhZ+Hv7dYeg8X4nckPEOFoddOki+g2EBDCZGeZxI0BDHuVyx?=
 =?us-ascii?Q?xZA9gBxQKx1vq2wj8n7JR4yRWtZFYH5oLkN0zcza1h5iQU3JnL36Pppzz8OY?=
 =?us-ascii?Q?pGkPogBVx8ySAOyrIwMHHfEnPfBi8NcABD9u/STUBA30GlVy/6WuAULZoPBR?=
 =?us-ascii?Q?5Zk4+hzYzWJUg9AsBOsOWFNUpnNs+qJ/c+aLJDIzE30P4iXT2IzTqD+S6qoQ?=
 =?us-ascii?Q?6Rvyf1GefrAN9ztPCuCaMhP8KLHiEOyT0t0xxgmEZzUv9Fupaf4YDvthSkAG?=
 =?us-ascii?Q?I+X7n3jG/+Z00qihJzdCdHIfHAighNL0kj0w0cTVWbeMqvM/IgKCcU9HHnDO?=
 =?us-ascii?Q?gZnsSujBx5XJBrD1V7QcXX2VFfRQj2Dcp08ORKJ5FLbEG0yi+VcW+A1mcUUo?=
 =?us-ascii?Q?fZSsD6SgjYFelzB/CF+NaZgITqgKE1JT5MMPByCwco8Jn11SUvVGhf/Ap6WZ?=
 =?us-ascii?Q?5iaJFjw80hxOacLtWFiz5qCZi9e0BBeMUh5iTE3ibqo0VOKi2t2MVBhTQ/rd?=
 =?us-ascii?Q?ha0XcQ9902BvCtsCRYjUZr6APxc0iWvsQH5/Ce3mppMLQX0N0vFMJMWUnkG3?=
 =?us-ascii?Q?8FTduGcUwXa4nn5FZ3YPtZhtAVVzEICJ6lhsNzSRofo/qkM6wE46ecwbVWUU?=
 =?us-ascii?Q?DgeNSToPtPrWdaLGjQ0KtaaqtbWnxjr7aKMvI8jJB0IWqRa0xgL8otOnL+9k?=
 =?us-ascii?Q?O37OeWD3pN5qpPA37+zAcpZircVoiu7RYrpgfQxBDP4juSwB+bGFe/prTBTX?=
 =?us-ascii?Q?KkPTi1ufjSNIBYhw/siOvPN0VQUlw14SdYoHQyLJXaX0Fdthh54kvBJETWud?=
 =?us-ascii?Q?mBSeOlVcfHO34PvjZcNuj5VgthAiloxO3tFqkSxKh3nLUmjiK2FzhEHONozg?=
 =?us-ascii?Q?ie+XAsDgrvcbZ6AmV7l20oj05gkJpfsDpJnZw2+sAsyEaNWxPYvKOaNMdDnW?=
 =?us-ascii?Q?79Wf5Ponpsu4gedbgy0v6swQwEGIRfwt0uxYe64M5mTWuiCQmgr6C8LP3XkA?=
 =?us-ascii?Q?OZwLFAXHhcf+7p4q4KhO++PMx9o5eS1pIp7Q13bEOy6cZdZwL9vjxbP3MVBc?=
 =?us-ascii?Q?1whjY8e0hHYyvAFJMSCgmU/9+F92SOHx8VFFc6H2u/ZOCKrFXoDDtFqFAx8+?=
 =?us-ascii?Q?jKf18eP6SvmCix7xLN7eG42BKiPRHwUU/L26lX2U6dUKwoKUEZDAXCe4dCsI?=
 =?us-ascii?Q?2jODwJLdXP22bNTn2tNNS3H+UjDqPs2mMFxctSRsbd0+TK44DrQkD1eyCvtw?=
 =?us-ascii?Q?Z91oTpo/8DVhzfQC+3RlqAtzAwu7Tn84DIqzuwnaCsuGaHcKNnj/rSpSA4fw?=
 =?us-ascii?Q?DoLPzwF+kA0+qvW8Qa7DikNxexzniDX3qZLdMpUDgeyQxQnyEy9dKM1lfhnu?=
 =?us-ascii?Q?y3Z6EHPUzI7/rQL/3POiJpmgAuiFUdClrvXEK3JTIHwCN6tqU+qf6nUrUANm?=
 =?us-ascii?Q?6JuSe+AsCOlMsIrFN7zImUOQmia5Qa0LmWVeXe3I1hHQCbSelJ1yX4bVfCtM?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f65da9d3-4f21-4f50-eada-08daac61f589
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2022 14:56:36.2442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c8wWirCOgLqGtws3XD25Qr9n7SkEX5/JDwzR65hdKs/O6Rdd0wMibX07k78dzavWDO4gmnwW0413QzRtcEZ2jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5011
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 11:21:59AM +0200, Andi Shyti wrote:
> Hi Anshuman,
> 
> On Wed, Oct 12, 2022 at 02:04:02PM +0530, Anshuman Gupta wrote:
> > DGFX platforms has lmem and cpu can access the lmem objects
> > via mmap and i915 internal i915_gem_object_pin_map() for
> > i915 own usages. Both of these methods has pre-requisite
> > requirement to keep GFX PCI endpoint in D0 for a supported
> > iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> > 
> > Both DG1/DG2 have a hardware bug that violates the PCIe specs
> > and support the iomem read write transaction over PCIe bus despite
> > endpoint is D3 state.
> > Due to above H/W bug, we had never observed any issue with i915 runtime
> > PM versus lmem access.
> > But this issue becomes visible when PCIe gfx endpoint's upstream
> > bridge enters to D3, at this point any lmem read/write access will be
> > returned as unsupported request. But again this issue is not observed
> > on every platform because it has been observed on few host machines
> > DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> > which really disables the PCIe  power savings and leaves the bridge
> > at D0 state.
> > 
> > Till we fix all issues related to runtime PM, we need
> > to keep autosupend control to 'on' on all discrete platforms with lmem.
> 
> if it's only DG1 and DG2... why do we need to do it for every
> platform?

The HW bug on DG1 and DG2 makes our sw to work well so we didn't noticed that!
But the SW bug exist in all the dgfx

> 
> Besides... is this a hack, workaround, permanent solution?

Yeap, probably better to move the "temporary hammer" from the subject
to the commit message.
Also the FIXME comment in the code states the temporary hack nature of it.

> 
> Andi
