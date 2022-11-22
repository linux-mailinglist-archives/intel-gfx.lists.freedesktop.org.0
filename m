Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E46348F8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6991810E479;
	Tue, 22 Nov 2022 21:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC5510E479
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669151571; x=1700687571;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VGzosObFwYAVmCmbxzhhX0VrKIBEPJ3NRZ6noC0F+h4=;
 b=mSl1PRIntbZk+CmYOvDRhZ9nBQ8gUbuBx2TxjihcBBGBkkELYfEkKkzX
 nm521euzgf8cw6wW+FkqKeYqzg0bxhdkT62PI8I+J4fMquygwTtZTbjKa
 47m+E152UlxEvj7QXzKVLLZXJgBMyPRCOnYHaFa77bKqA8L1+ytgKzs3b
 LrA7jFzhKdpkdri/Pz8hqNcRgzW+oYorIGNZxQHUw+0Kjq31mu4TTQ94I
 IAn7YggYmA8WXVMZ0qNyucg+5FrM1aIU2iSdMNDMEMjKAjMxcIWtGQlNC
 VM5tyODIoOte8q5od4VMnVwOKioI2ctXPZQY55fosnfZSirR51ut7wPGA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="301471784"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="301471784"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 13:12:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="710336593"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="710336593"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 22 Nov 2022 13:12:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:12:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 13:12:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 13:12:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kiYrzAt6lQ2Dnoz82hnF26IGfygDavgldnQGTWNv6N3sENOsq0ANa+Aki3SNPZn9ar77EAoBGkGYSJ1znEtdWsz2i6GSvMVZd5AlsLhqoXQhA+5otqDRSEOJYem9O33O1s/5STjW3JIkxY1XQi7Hy59mC+4uTal4BLpUFaQv+sPJlOZekcRpv69pNjiTIofreI2wwk2hbmq5wxx5EJTozw74gy9m2ZtyARL7pdtmHx/UdV40/3NldYlt6Hvc+rd7es1m5owBUSU+1kcr8TK9gO+ui1pz34lsDUkYK3c0WTrOe9yiY9usNQLWwatXmyvnKaXMIC0VCdkDhk/4XoZIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zgFKiyJa7ChcQh9gS6VOWSmhpJOJx2sTVir9rXYsVk4=;
 b=JvauhyMzqyDz4QEPUIXLV+DP2B4fTfwy08DkMc3o2N+vlGYRM8n5vEaRKWwp5TDN/5VRUrRCB+0dq8zWZZFqdcIFbAEzZLhG4NQPzLtDqrw2nj9hhdE8Kt1Xb2fbYDsZxIOh+AzXlTskJRr88B8B568/MR8aeIKPqU2e6br70KQNHYsmyHES41r8uIomKm1eMMmEmGUuVqi3norlBgMnaGcimq4wg9Q8ZSrAKzjLlKI7mdMXvMeIVQ/lBJwcZ5HzaLWcLUSUlZyFmA82rXut5COpUXc1//h5QIFFZk5SXW7D7MiSFQsPQZ1SYQh7uYXQPMZqxsUCdRsWVO0bHWzRvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Tue, 22 Nov 2022 21:12:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 21:12:47 +0000
Date: Tue, 22 Nov 2022 16:12:43 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <Y307SwCqzLyLBY+E@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
 <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
 <Y30NguDBLK1eoroO@intel.com>
 <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
X-ClientProxiedBy: BYAPR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:74::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6333:EE_
X-MS-Office365-Filtering-Correlation-Id: b57c155d-eca2-4311-eb38-08daccce4e2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P7jBMNC7Iav28Dxsrd+WQ2bncDDqfAM6by64ATqXxZoeJwOMlW1jpfMjRkN2kFp2ubBdpXEI5TIJ7LVzbDSDhP8R+9jrG5T/AXisp7Eyd4uPjtsR420YAIkcw9XscYiLo3JG1kKV5nsfCC7kX0gguTD/pxDTLa6cU7kIOFcB92Wbn4XXRmptMum5QW7FQ0JBqVCcp05Znr+2Q9TQKVaQq4fMe/kZVJO3FC4PgdLz+NKVVQxe5VbAtSrg2S8NQgKS/bBtBgGx6GyP/+JlGWgt/vIaDzG+NOWZoenHcMDdD77pMZZYVPFItogi8VYSILBtIbteAmUH1DRU5USsmVK2XuscMHZY/c0jqjznpeQm45pv8QqO2gexTrm27H6OYgZK5NXDMySajyixmG9+9Eb+GnZYhxklQHe6eIXNR20TMDUtNwgIE2UB54FxJJ32g6/6Vv2qBeJ8exo0uwgVUVEO0gCvltiYt54YIsIXWoPm9TNohpSHl8IgdJ2arK761I9WdFNzP9/DcJg+uka++PciW9RMux5STBbDVZl88kwDFgG82wvxMj9f2R6U7H+UhjSjqSdjsXo9qve9Y411GjVYhc0zvKGc9FOUsVd6FXbiiJrBonmZrbR9N8tXbYBe+lzHq5x1BV65+hdnoCqV3mSblZNqlk1KSURTcSV8PB0Uz81szkdPJlnPxV4UedtGyk22
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(366004)(376002)(396003)(451199015)(4001150100001)(66899015)(2906002)(2616005)(66556008)(66946007)(41300700001)(86362001)(36756003)(4326008)(37006003)(38100700002)(6506007)(6636002)(83380400001)(82960400001)(6862004)(186003)(478600001)(44832011)(5660300002)(8676002)(66476007)(316002)(8936002)(6512007)(6486002)(26005)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?26pBxS50jXPeTJPTDNZSybIf98vHus5KhOEdnuyMJXVgG0REPP4n76V2D+M2?=
 =?us-ascii?Q?7eqbR5FCu6R+lmOxBHpeRJlLNfHB9UFuYPq0gfk/lVoIMYMwUpoPvYsf6iod?=
 =?us-ascii?Q?2/TZBoubwvxybp9RlZDSmwJzuVIueLCYs4xPJy62VmH7WFn9sl7km+60ExAP?=
 =?us-ascii?Q?oqf9jG4ErEFPfR7t8k4BtdKnXJqUNaOpSJlKbzjZ+52wMLMxXmAAQ2g435lc?=
 =?us-ascii?Q?FkcL6UuP9ef1cJxwK1QqGGRtQwEKOO8yTSz4EesxSrOyURgZgr8aHre21Ov8?=
 =?us-ascii?Q?pAdvb88HF/osdcUha60QJJ8Rqtafmc0xU7ouYt6tvm2ptHIN8pAI3ZdgxoYL?=
 =?us-ascii?Q?scaQSLn2GTIIB2M1xlYbsRfjDl3cY79rYMjTlYmlZX3Jm7qg1ukRqdsO+FNb?=
 =?us-ascii?Q?APTBcfn5dbg3HbO3RklKTtZGgJY7cUrEp5YYvQZ5lS6i4oM6mahTEsuJXW1G?=
 =?us-ascii?Q?E+gNtqAq+uFmld1y9R46On4pkZ2cj4VGji4auJdDB0e19rPjZ9KFG6s6AeOn?=
 =?us-ascii?Q?Y7OYAPa2sc5VqHR9+voFMhiQEyqfJYNhvjA9PjRIMbIjGwqNir/ea1STzPpZ?=
 =?us-ascii?Q?QazLIg8I2sczUIn3vgWS1gGIm7qXilelQ+asCPxJrMguEYbkJbXGoEGMQomi?=
 =?us-ascii?Q?LwJMv/BvKxfL4uRvrVztuppY+U14cAMqYkKdfGPmeCUPX6pHxz834KTRTw2X?=
 =?us-ascii?Q?RIa53QSQGHlITeKceAYqwHQrnU1zGTLk01Mgp/EfjnvNmW/CpSLfG3lChJEM?=
 =?us-ascii?Q?szjZ0h/kYQjUkVu0bAAkg09BE6ln/fZEu9AHoE4knaYglkiaxZVmnvRgaXn6?=
 =?us-ascii?Q?nRDOFztkpYzS2ZqauUrcYY7c7fURgBgKtagparZE8FtCPTlpsVzcWCO6CtZ/?=
 =?us-ascii?Q?EwdMEiuy2nE/uzEkOShi3AUzH83CVfnYfMKnvknedI9ZYg5F7r7e9eo35qxQ?=
 =?us-ascii?Q?1zuM/wmS9nWaMe9N9t6RnJdmvVL9+FKRO6jXEDt8a+ztZP4xUAZPptPdc5OZ?=
 =?us-ascii?Q?9aroeq7T37XCu9QbQVEpNhVHOVJKCEPv2al2+HLTUNFLvBfqz0yB2GoW1x7r?=
 =?us-ascii?Q?PO4uXPL4XJOU7keCz0PdB2uekWmthsyygpDFUfoGLP5mnXLNKKEAa1nFXEOR?=
 =?us-ascii?Q?qoelh26WMNtS+0Hx4+c8DXo3k2FgWR5NRD19GhT9pIDRoVeeHB9XYV3S73eV?=
 =?us-ascii?Q?kPu9a6hUm0gNQC8OHKh0ekUX0AQ3cjL60tJKIUL4A+xZ23I8w4vP2yx816xE?=
 =?us-ascii?Q?n/aamxKjY7MAQK+g0TLzSaclQ/CsqKvExoXt5JNZDTpKri7W1vqGkovjETcx?=
 =?us-ascii?Q?XWlUhzokMTJDTIvs8qdv1OBp5I9QsrTYEzU7I+WHfvS2t1UBCdO9qV4fEgcG?=
 =?us-ascii?Q?mP20ge1OksxzEZ4OXFMX1bGoehUxzco1ecA7aANGdq6eKHBnJOZ63OdCjyJZ?=
 =?us-ascii?Q?db3iDlTJmKvvPQyeA4dzry84QLUkKv8PDW1GhFqUbHsU8zrpe6R30ovrGwsY?=
 =?us-ascii?Q?s3k/w+ljPG0VUo+sxarc9DdwmkVzacLyFH35ZtkWrg2jeYuZMKz2Jn27GdpU?=
 =?us-ascii?Q?iXgDsvyeZiUrf5aoq/4vx0WBrhWWLiXPVt1CUuuV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b57c155d-eca2-4311-eb38-08daccce4e2f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 21:12:47.6575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hsMljqoGcFxTWIxfisTuUY0urantyljZAMm1xg8t7yY+26NbgO5EHo2p6UxEkN6mzah18Hr6TWoB5lt3wi8X2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 22, 2022 at 06:50:14PM +0000, Teres Alexis, Alan Previn wrote:
> 
> 
> On Tue, 2022-11-22 at 12:57 -0500, Vivi, Rodrigo wrote:
> > 
> > 
> [Alan:snip]
> 
> > As I had told I don't have a strong preference, as long as it keep clean
> > and without these many helpers of something "on_gt"...
> > 
> > If this stays inside the gt, just make sure that you call for all the gts,
> > but then you inside the functions you can skip if pxp not enabled... without
> > asking if enabled on_gt... 
> > 
> I think we have here conflicting requests. The "consumers" of pxp feature are gem-execbuf, gem-context, gem-create (and
> even display, for checking). Are we okay with making these callers be aware of "if mtl, ensure i call intel_pxp_foo with
> the media-tile's pxp, agnostic to the request, context or buffer i am dealing with now". If you are okay with this, then
> we can make this stay inside gt without "enabled on_gt" functions. But if dont want to polute such low level backend
> awareness into those upper layers, we need them to call something more global like "intel_gpu_has_pxp_enabled" or
> "intel_gpu_has_pxp_started" at the least with an i915 param. So that these callers dont need to worry about it. Or
> intel_pxp_enabled has to internally check with gt we are being passed with and verify we are on the correct gt to - but
> you said you dont want to have an "enabled on_gt" inside the pxp folder since pxp is a subset of gt. The only thing i
> can think of is just a rename  - i.e. instead of "intel_pxp_enabled_on_gt", have a "intel_gpu_has_pxp_enabled(i915)" -
> but it would reside in the pxp folder. Would this work?

In the end I believe that the pxp needs to be the one with knowledge of the
serving_gt. Either gt0 on TGL or media_gt on MTL.

So, if we keep the intel_pxp inside the intel_gt to make the initialization,
irq, and pm flows cleaner, we need probably need to save the
struct intel_gt *gt_serving_pxp;
inside all the intel_pxp, or in drm_i915_private, and then
have a helper that returns the ...gt_serving_pxp(...)
but then skipping the init/fini functions if gt parent != gt_serving_pxp.

> 
> > > 
> > > ...alan
> 
