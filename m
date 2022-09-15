Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8C95B9C9E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 16:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED1C10EB34;
	Thu, 15 Sep 2022 14:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D7E10EB34
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 14:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663250995; x=1694786995;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gT1DR9t97XKXfV8zeEhpiqci6ZaAWCLUmVoB7RfKdJM=;
 b=fxNNTyH5Ez9Vwgr5DkheUsF43GDOctPPsXAJ4pgjPuVRm66PlWQ6z47e
 jWH/CysM3VGRn1JE92zwkUeb8wyXAsjAyGIlkUpDk3J+46fSSkT9/Xjxp
 5AV86C4SVsNjVA1lt95thT6UcnksoMaRdaEoLy40LlvMb5BPBceGpFM2t
 RC02H4vUtyLUDf1mObjXI/PRKaWy8sPIZZ4D3zpP/SbkuFPL97N0C4JiN
 ZdD2QefP6SWEJ0aQJJ39UZ5SXKXnuioR6a0XoiDIZjJ9Wjd/eVJGBCz5D
 zOgreoKAUhP6QiOSZ3Vxl/F7HNLmMjI8ah94Bz/QK5OD4NtkyuK8xsJFY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="297449572"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="297449572"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 07:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="706364770"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Sep 2022 07:09:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:09:52 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:09:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 07:09:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 07:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AN1wjFS/umut2MssBg03SE3jVBQHfe9yXPvYFu9DRyGpwyZmf0gEyK5sHUm+GdLb4UnrBn0dYh22rrYBIAMxGYN41MM/MDex0B0YCiYorgI6AQ5N79v+8QzGqqCZgF2HggcnQ5EvaivpEpsYdzad+As+E4KBzvIv5YqEEtne8hII0JWFgskcgu8BtEBXGjl9cVcK3EVPY94zsM2Qv2W079BCzuPaBzhS1+RKlts12m1bpL7rmEXslAhA/R4WDO/GNemgkn4B3Rqpx4UHmnkXw7xJUyoP+H1ejPBjReEZeNuRm2FSU2GjqJBS7B3nXXTx6SjHEk6JwcKN4UpVcJcoQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2aMrkGwfL8ju7hEngR9V5Myyrd+UZl9qDurHkspSFM=;
 b=G18PPdgPS1U7BJsXcsrVeeclZ6GE0dDMSbHbv0jbzuMAqT2OIig3bxRPvYKB0AfgruiUEiYzJmzOK7jL6+4BCWs4/5z+84TcS3LKCvq3FqoXz5niMXTy0xKCC36Ut/B9pPSZIah26/fBxJKHMCDyyionGiEJ51qLiNF+kTjG38ya8u0fTDBkhfJQZ6yBhE+924oMTQRmGIh53vc0LbAcZAwG6FBYwX9N1rDk9raaUFqvw54vGdi27wGIn8NbUnAP4aGyBktYZoAJfxmy8/nlNdKRYnthLUNLZGf3IzXU1GiLdGy2+LqLeQBwG0M92910tBKTyDXzpBI4iIBECoODsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6565.namprd11.prod.outlook.com (2603:10b6:806:250::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 14:09:50 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Thu, 15 Sep 2022
 14:09:50 +0000
Date: Thu, 15 Sep 2022 10:09:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniel J Blueman <daniel@quora.org>
Message-ID: <YyMyKsy2XdInzarL@intel.com>
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0040.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d777a65-9fc7-40f9-ef1d-08da9723f3f2
X-MS-TrafficTypeDiagnostic: SA1PR11MB6565:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rEG0HSDa94uv27KVN1K2D5mAaGqTDto+1tsvdhsvcDz34LDsb0BO8BcGxFT4bo+xr6l5QJirX1UEKsEj25hPWMWyzftMdObyI3sMQWm/tve7tQiTobOk1eHgIctGWK0SkZwGOXdT5nQbmPzGIlmGJguTnxzL6OfJ4l7e6l68xgFrD2OV5n+dwCwoe9CP7GPWFnern1RtDnyxKNl+DGTNSVq40vHn92keVyOWuNOHk0LOwVqSzzpTdnRDvYi8KmBQhe80wM55rUZLZ4dNRWdV9FlWzDud/5SUAi6jF7r1h3O4PecI9q7k9JMIdBU1Y2CFj2rTTI5n3ck82ijja2KxUqjPQPb1PvslvjqMKRxgujeRt6wkwlbiweKms6yDuzCRUBFhUPtNREe8R1RNW82nEzGJ51DMjwKJ39pVtXFjaEg+2KXnjhvdBUhxjKAqL/4dOxGHy2DSnfyeroIx9GFbfzV2f7ZNVqfBoejB0R5/AmTvx1U2IT/LxfJueIVF9IIwmUyT+vwZt6LcOw5/mt0XFx9Gzj5YO1drgVsYaDlZFboT7nFu1oQuV74EjW/ri9ELPIfRucTVBJah+GIIFxt8n91x0gXh5uxInZ/U8VJ+0Pjrxj94S+z58Dv9aSFoq9ujsFyk3oz/bnM23C8PBkj9uj0/TsMCiDndmKI2sNFUTiYBTFTyfqqJ0h0iANoGkxJhco3+Jq1HEn13c/7LsTsDvnFhpxNZqW+Iou2LoU5JrwWyxQjRSaN3z6w9eU7ibmQr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(136003)(376002)(346002)(451199015)(66556008)(8936002)(44832011)(66476007)(2616005)(8676002)(86362001)(83380400001)(26005)(6506007)(2906002)(4326008)(6916009)(478600001)(66946007)(6512007)(316002)(6486002)(186003)(41300700001)(966005)(6666004)(38100700002)(5660300002)(82960400001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zO/y/E2CwlIclxGde0iIux3b4QWhqArKpXa47DV8cC7xH0wZbamUT6yZ+33z?=
 =?us-ascii?Q?hoQ/ng7pxkTmegTq+UAlmJEfRL9ZhzFyCTbDk7+rksPGLLQpxYpET12IcLSt?=
 =?us-ascii?Q?2fwdZe/5qaGRUSBh4jUYW4xSOyQ/ZZk4eGY68iC8rEEiHmpPFV+w4EkxtmJm?=
 =?us-ascii?Q?OgRrNska9zWliEhsTDesnSavJqqqHRRyWHVJdQHZNP5BhIE03ccp8LqiRkIr?=
 =?us-ascii?Q?TeQ4FZtq9FH3gHMo+YH/p3Kq0LnjAdOdqtxdp/dj13hhNPAWyVaH0O6FJ5y6?=
 =?us-ascii?Q?NNKff9sbCl8uUvhp2pYmkIbPH7EBzGGsdT4ZEwWX52h7F/ykQfvkRZp4gkTI?=
 =?us-ascii?Q?gzCJTTCIJbrHE3N/WB3GwlTMD2ezSt2owZDVFOIxOGfJGCrr3eOEkG7iRYfb?=
 =?us-ascii?Q?rkSTaKs+5w2B8xZ7x8rfEF5ZoBmZOP0i/yq7KxnE1lbmInV0rSBI64D2l6aK?=
 =?us-ascii?Q?Bb1nMERxTL0DYFX5CQOTg5vC9clw0DnP+ztiHpt/gKs/g3Bw1myL6RWSEMlT?=
 =?us-ascii?Q?u58eu1D2bS4WasPEhkFZt6eJcouE4kOAqzpCA0C0cpp95VLqbefcaac9Oi2y?=
 =?us-ascii?Q?MQOCfesBnLc+lJEKd3Do+7kIXn+sZ8U5yCz0b13dKVE25D75ur+Xc1TIqVeD?=
 =?us-ascii?Q?IjXGQ5fnTvpKG0c9VhAJfGgE8HwzTNg5VF1hkkNmkHa30UWKkdj2IPrQcxNb?=
 =?us-ascii?Q?UHVfFncB6SIV8ieEDhokw23rTygQATZ79WXphhN09nYy4K5ekCgQBuxXJj41?=
 =?us-ascii?Q?xXRqe/y2aOZ0LJua2JHQcetYSu36HwNh+hR/QXGc6j2t5yOQRrQj+S9mH7Uc?=
 =?us-ascii?Q?LcSs5rIKsHYsSeGLir+dYGYjSSGBFO5XWeFnkY+ms4c5ykGbUD+JvKNUcEPO?=
 =?us-ascii?Q?cSNwvWS0qm8Jj4R2+KKnKzw1ZC6fMht6gnP6qhMRusEpovIR92teJHhEHD2S?=
 =?us-ascii?Q?Ys/uvrIpW0PP4DfKMp58Z28NuDHa3K2v5OAuVAi9ftCtW6qQw/SgIyTMi6tE?=
 =?us-ascii?Q?DFZepLInpntfd4xZMXsDvL6sOANLEqD15sZLqL0+Pzx7qXfpLVA6ASOXspHp?=
 =?us-ascii?Q?8PGl6OnclrQSQpg+Oy/PFkVZ11D46iRvIj0gfh1P3QVTvdwG7T6e970k6eoy?=
 =?us-ascii?Q?IHwrh9DRf3EVEE5lew1+ltQR9JTgpFv8DlStB9DCjgZdVK1ih/CIhYqlZMo5?=
 =?us-ascii?Q?r43LK7RWxNXCR1uWO2CPnuNo5J6VdpLfo5u2OkzNRQLVd/2zRxY5ZFL858jk?=
 =?us-ascii?Q?gCeGp5ZTb34ocw6wXvCAZmmnFENFNGFGxvcqnRPybmIQIN/hKi45KVqePICa?=
 =?us-ascii?Q?z282bplJNwLKletuzcwMq5PGXf+lrEE58GFknMC+iJqLOsgnoUJ0IIcC6YTN?=
 =?us-ascii?Q?BT/QxET4Is3Vo+gwEy1rfLR3bEVxYk2mhP6BF8HBpDGo7l9JxFqMdGHDDiaY?=
 =?us-ascii?Q?pMclcy78qYUedNUeSsPwo6LtZQ5j5jsLej37ox+aArd1UXHZu7uUiOZdzMVT?=
 =?us-ascii?Q?/N42ocLWcGFIR8H1yP//NpZRCM7kh/vPRDvlIIo9g79ecfn4PgFZxq4n6JMf?=
 =?us-ascii?Q?IiQYPkXo89Ol2t87u+cJLHfs2O7wmrjCxbVcowBACjAXkqVNLgq8Z9qux+i1?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d777a65-9fc7-40f9-ef1d-08da9723f3f2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 14:09:50.1436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dn9nNIdHQP+9CoN9MiIFKDZ4KDDIrIt9vyUUnkbqO8mG0ppqhOFlhRzZtkdKFgNK12muDmWXdzxQZf6rKB268A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
> Dear Intel et al,
> 
> With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
> A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
> kernel, we see:
> 
> i915 0000:03:00.0: Your graphics device 5693 is not properly supported
> by the driver in this kernel version. To force driver probe anyway,
> use i915.force_probe=5693
> 
> Since the GPU is unmanaged, battery life is around 30% of what it
> could be. Unsurprisingly, adding i915.force_probe=5693 causes
> additional  issues. Given a lack of BIOS option to disable the GPU, is
> there any advice for Linux support or at least putting the GPU into
> D3? I see only Windows drivers on the official support page [2], and
> Linux 6.0-rc5 isn't buildable [3].

I believe this is what you are looking for:

echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control

In Linux the default is to keep the unmanaged devices in D0.
But changing the rpm to auto should transition the device to D3.

You can go further and check with the lspci -vv if there are other
unmanaged devices in the same pci root tree and also add them to the
'auto' rpm so you can even achieve D3cold in that whole device, what
gives you extra power savings.

I hope this helps for now.

> 
> Thanks,
>   Daniel
> 
> -- [1] 03:00.0 Display controller: Intel Corporation DG2 [Arc A370M] (rev 05)
>     Subsystem: Hewlett-Packard Company Device 891d
>     Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>     Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>     IOMMU group: 23
>     Region 0: Memory at 5f000000 (64-bit, non-prefetchable) [disabled]
> [size=16M]
>     Region 2: Memory at 6000000000 (64-bit, prefetchable) [disabled] [size=4G]
>     Expansion ROM at <ignored> [disabled]
>     Capabilities: [40] Vendor Specific Information: Len=0c <?>
>     Capabilities: [70] Express (v2) Endpoint, MSI 00
>         DevCap:    MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
>             ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
>         DevCtl:    CorrErr- NonFatalErr- FatalErr- UnsupReq-
>             RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+ FLReset-
>             MaxPayload 128 bytes, MaxReadReq 128 bytes
>         DevSta:    CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
>         LnkCap:    Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit
> Latency L0s <64ns, L1 <1us
>             ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
>         LnkCtl:    ASPM Disabled; RCB 64 bytes, Disabled- CommClk-
>             ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
>         LnkSta:    Speed 2.5GT/s, Width x1
>             TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
>         DevCap2: Completion Timeout: Range B, TimeoutDis+ NROPrPrP- LTR+
>              10BitTagComp+ 10BitTagReq+ OBFF Not Supported, ExtFmt+ EETLPPrefix-
>              EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
>              FRS- TPHComp- ExtTPHComp-
>              AtomicOpsCap: 32bit- 64bit- 128bitCAS-
>         DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+
> 10BitTagReq- OBFF Disabled,
>              AtomicOpsCtl: ReqEn-
>         LnkCap2: Supported Link Speeds: 2.5GT/s, Crosslink- Retimer-
> 2Retimers- DRS-
>         LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
>              Transmit Margin: Normal Operating Range,
> EnterModifiedCompliance- ComplianceSOS-
>              Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
>         LnkSta2: Current De-emphasis Level: -6dB,
> EqualizationComplete- EqualizationPhase1-
>              EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
>              Retimer- 2Retimers- CrosslinkRes: unsupported
>     Capabilities: [ac] MSI: Enable- Count=1/1 Maskable+ 64bit+
>         Address: 0000000000000000  Data: 0000
>         Masking: 00000000  Pending: 00000000
>     Capabilities: [d0] Power Management version 3
>         Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold-)
>         Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
>     Capabilities: [100 v1] Alternative Routing-ID Interpretation (ARI)
>         ARICap:    MFVC- ACS-, Next Function: 0
>         ARICtl:    MFVC- ACS-, Function Group: 0
>     Capabilities: [420 v1] Physical Resizable BAR
>         BAR 2: current size: 4GB, supported: 256MB 512MB 1GB 2GB 4GB
>     Capabilities: [400 v1] Latency Tolerance Reporting
>         Max snoop latency: 15728640ns
>         Max no snoop latency: 15728640ns
>     Kernel modules: i915
> 
> -- [2] https://www.intel.com/content/www/us/en/support/products/228342/graphics/intel-arc-dedicated-graphics-family/intel-arc-a-series-graphics/intel-arc-a370m-graphics.html
> -- [3] https://kernel.ubuntu.com/~kernel-ppa/mainline/v6.0-rc5/
> -- 
> Daniel J Blueman
