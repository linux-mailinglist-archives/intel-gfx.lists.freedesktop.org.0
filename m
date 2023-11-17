Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FC67EF694
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 17:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B51C10E0C9;
	Fri, 17 Nov 2023 16:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5895E10E0C9;
 Fri, 17 Nov 2023 16:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700239848; x=1731775848;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1QTbE62d2KXmZetmVu2HnbjZDtuR0rPEFAq+oZLu184=;
 b=jouivnHCKxQPVGVA4Sgl8jc/BmFs54BXGZU10t+8Dnix9kKK15Y3GVv1
 UMGZFxBzrZvchdAlRQr8Ow8hq7tfgYbqevCsa1mcVxWw5fMHo3JmprK7f
 mkk4ptHPQRsPpnl7PA1uIW9qoTS/QlXt0vdR5af2yFqNXfZU/ogaEe20y
 1QWioFeo+sPDJy9vrpOi9YP4qT9mvEIH2cYZWB8VJ+EApXlj3Q8lqYBhM
 v0U8jN2pRCDZqWX5076blrbdGaNuC3k045jPzLhUfNL1gA5c9Sdv0xyob
 N8NbB6/mobvLKRxgMWXY3plser54dxkqNo/dSoX8zaB1azPLOga467Q6m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="376374799"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="376374799"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="6888049"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 08:50:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 08:50:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 08:50:42 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 08:50:42 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 08:50:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axLXG5CsdvYfWSAAxkpUj8ph/aiGmLpt3apRAVSXgm/+YcRy+YU/6iX1g0wHmWl7Qjf+ebYIBDZCLh9JhMfV/uDh52gNCK40z00Tufw0RWowsNkQao6RA2u0Jh/LB1h/lJzqldkNzomZrhBTgDTV7zVkF8+WyGcg87OQymAzaTdyoV9EryUIRdXcUpgNk1kXce6RuqHYDTCf9TAQaA0tQrTr22wPg8iJulqn2A1Eqw4oD5qQ6//qA9qGQyrQo+XHicLFvjrnQldwjBpPywFqEVDHIDniKo/OMTDfhTg+40Nq9rR9oQZnzaaFzUL++UPJsnVfq1hGnPAJtQxcKu04uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LejuFjqJpceIwYgCAXC4FokweJnCCYI4hXe7bcX3UEw=;
 b=SkSdtaqdQITNabXG7AbTF6/kbqzAjMxrrcYgEnT1fDN6rT+NljVQn9OOmLEZQLUmZABkQahoE7neyo+QW8Cq9GU/Q5xaFbQyZV8S3MrjM2X+18gRSqOQYmMd02l4xSuEBLnYl6cVHcUsQFEO9WV6k1oahrTh3ZWLlEQS2TIBwv7VaAxmuJWjmy4VY7T64tBBNDclBPzL0IPRArcD5vkYzYTd8Z4EpxJHwUZaW0dyzyOi+PIy44r4tHCVc+GlL5njhhed3OmEcGnDfIY3i4bI8tR1cWy4N0yUoFPD1oA/KAh1QDpJmCxZowxOjBCV90WDdDp+vOPgA78GGQDvjN3xVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB8228.namprd11.prod.outlook.com (2603:10b6:8:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 16:50:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 16:50:38 +0000
Date: Fri, 17 Nov 2023 11:50:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Paulo
 Zanoni" <paulo.r.zanoni@intel.com>
Message-ID: <ZVeZ2xYYs3NYftvm@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVcx1MSvP0UgZ14o@intel.com>
X-ClientProxiedBy: SJ0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB8228:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d9b8af2-a9aa-48bd-17f0-08dbe78d53de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EcvtD0roGoMA9zawr1bA5maN2G72D0F7tivvOVn6ynzox+isCgn6aGuOoelsTZ+TWT1BZwqnhlgGcMgtc7j/KHzenle7K+HHa2JSmoZdsgZ5m/gN2Z6crRrnkkVkrB6hdIE0NwLpRYztaizLHyxUjlynJcwg8Lvr8mScYVjy8LRp1cvpUUA3z1baoN241yRT8Hj6iVmj+fsGlbOpE6PpKEk4/2bnljQUUTWP1aAWOa1QmjWslD0v3a4ZWFsuJp1GpFKY0fB1INyIFUGm3iFHp1D2Dd9CpfNvLxhmbrd2rMPV0vKPgCVlC/jFFX3DaVXadRQ+Vgn2tF1FmtABlc+5kCcynFtgeQ3uRW043b7EcbIf9/PgdvnO7r28XxRoDt43ZP3nFYeg8NYzrMirvNWch1ddx/CF+JU5z/t18/4EcCOWTAN0vVmgt2AbIeyGbjF7JbWs1yOgpVgDQ1YYfF9KJANqYphPsK9CgqdCGXuBiHTykq/sZAkQPrfOpVQisKQXz+3o1PVOXI1oimGUt91Absdo7NdYsEXLvXECOz4lqty7XuBgbmHwUSW4Z7Fs//DT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(346002)(376002)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(36756003)(66574015)(26005)(6666004)(6512007)(2616005)(6636002)(83380400001)(8936002)(8676002)(41300700001)(5660300002)(478600001)(44832011)(4326008)(2906002)(4001150100001)(6486002)(316002)(66476007)(110136005)(66556008)(54906003)(66946007)(82960400001)(86362001)(38100700002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Ge5vDMdZs0GAhjGxk81bBslQx1/mJm5zCN4uiB4Yf1rMAHAr3lDRnkMMGL?=
 =?iso-8859-1?Q?yvbwwZys9kHuUx9tv01M4/+NA725k/1muQWb02Tcx4G4dHFmH2Igsz9+Ve?=
 =?iso-8859-1?Q?7LO2hH1gVb39Qr+L6vYW/VXTQhctXhovcx69tTgwdgu7OQaKLmkzlRQK3u?=
 =?iso-8859-1?Q?45cMRAdanub0uU0b9eAhyiPjQ+9wCx/dK0uvJFv0xbhS6VazYwuuNUagt9?=
 =?iso-8859-1?Q?0TQ+7LKaLUoJR/qI1bY0LVOFoL+e9hWrFTYr62HzFOpUwr0MEqf7v5wIFp?=
 =?iso-8859-1?Q?nDK3yR9XeS4usDxZdzmEN8Uqe82e0hsSvAaKlfSakhgH2oHXBE27V9EsKG?=
 =?iso-8859-1?Q?+O05PLsHYydpycrPtjc3JXkziiQKRDb7BnLckQIfY/TBCXTjsMSSMn3xGH?=
 =?iso-8859-1?Q?v0ddni74xacKfIjv2cajee0d9/ffO8HhdRyHS1IfBSEm2wrbbdRFDqknZ8?=
 =?iso-8859-1?Q?Fs3GdDXlStHYMT2wvf52eEfrtwZxe9Lt2qZ6oDrJVTValiEKymM05Ol2fK?=
 =?iso-8859-1?Q?F5QuOd1gRoPIfX1Z1kvjrJ+2CGDlfFwqqMoUoW79Ay4GwKlqnFqIltRh6o?=
 =?iso-8859-1?Q?hcaD1di3IzfIU9/HKQfFmYYeLDd8REoBRg1bybO3Yhd7wdb6HPdNxajP3V?=
 =?iso-8859-1?Q?ns1ol9ajq2xZbEE71mo9BxCa98jXZkJNIqIB3cuB37cBUXcQ5LTd1OyVpf?=
 =?iso-8859-1?Q?o3X0Hi+LOpnK/+GOWLukAje8LDJ7cd3NdVWiKwdYeP0P9w4egSxmeytTLR?=
 =?iso-8859-1?Q?nTlqEEodzCn4/VmzXgtv3NCgmAJ9CPSO8vNNbM1vHohk4959fyTM5TX0Z5?=
 =?iso-8859-1?Q?+OSvrZTVYAT30/yrmjBEmKOrJF8qNEMq9NSc1cTOCTaSqw0bImEEHMoaAG?=
 =?iso-8859-1?Q?2g5LJeYwqJo+QHGQlTK/VWFtgjakRJNCHlhf8sh3Bbv5FfyMYrTyjHAlBP?=
 =?iso-8859-1?Q?eDI7QIbCJURCuBn2D9eHFwcD4mPj7tfJzEwezNjTVGpUNNyzOBav8hB9kH?=
 =?iso-8859-1?Q?G6mi+2KUw0/N2QZYo+0tPZwKa54SgiphGgwbcAAYIbS+H6mlYyzp9MIbYi?=
 =?iso-8859-1?Q?PA0S2tfxf5/XiwNLXMshZPgg07IRCemhWmbIJ3j1y9z/MoOnQ3p4KEwJLl?=
 =?iso-8859-1?Q?gKpGGNd6I8J2vAZlA66ul4uVxUtH6cJ4fZXhohnAK0Rp9eIIdp0mxXBZPK?=
 =?iso-8859-1?Q?ySznuGH5PHG5RWlx1+PbnBUcA0bZrTWD7h3KNxy7L3PCb1hofzt73WPYX1?=
 =?iso-8859-1?Q?kzcEoiKD4pujT1snLkrXbl45hoIebL6TpXfGHk7dvprJZc4DpjTUnQNxyD?=
 =?iso-8859-1?Q?EZU0FHsuA1CdwIBSxDaxQ3lE/3ThPJ32rLJ1dlLcQ3hdYzgMYqC9PSZ887?=
 =?iso-8859-1?Q?fwAhh8ClQZsUzXYMCM5Qyneahb5/p3jtXSDhyrHLxtOTGBJLpFEz38/+uI?=
 =?iso-8859-1?Q?hDNO9p8UDlu5VQbcgXpnDH/gKnOY5xUlZ0t4beAHQ3yTbJeDtvBgjDKB3F?=
 =?iso-8859-1?Q?3Mtgk1NB8XgsCrTuT+XuF4sdc9FDYgWyKNCq8ND62QFOA4zHNTUPnuf2U8?=
 =?iso-8859-1?Q?IhC0ut5FIiBTeuicIM2ruduW4Kr595bBEZ23tRefq+fT4TZKVgx31QOvLH?=
 =?iso-8859-1?Q?dWRTFM3CgS6e8J7b/TWMgmQUVCXDHnS1gWo1/gnkc4wyUTQNZVEaagFg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d9b8af2-a9aa-48bd-17f0-08dbe78d53de
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 16:50:38.8662 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8isd+fpQtwh3Yf7+2A2SSp0+5uXCmlyFNMtbgIFnWfUgcyuXe4/l6PxqCUQDnCLzMj/gApBQSAjuVU2//nTH5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 17, 2023 at 11:26:44AM +0200, Ville Syrjälä wrote:
> On Fri, Nov 17, 2023 at 10:41:43AM +0200, Ville Syrjälä wrote:
> > On Fri, Nov 17, 2023 at 08:05:21AM +0000, Coelho, Luciano wrote:
> > > Thanks for your comments, Ville!
> > > 
> > > On Fri, 2023-11-17 at 09:19 +0200, Ville Syrjälä wrote:
> > > > On Thu, Nov 16, 2023 at 01:27:00PM +0200, Luca Coelho wrote:
> > > > > Since we're abstracting the display code from the underlying driver
> > > > > (i.e. i915 vs xe), we can't use the uncore's spinlock to protect
> > > > > critical sections of our code.
> > > > > 
> > > > > After further inspection, it seems that the spinlock is not needed at
> > > > > all and this can be handled by disabling preemption and interrupts
> > > > > instead.
> > > > 
> > > > uncore.lock has multiple purposes:
> > > > 1. serialize all register accesses to the same cacheline as on
> > > >    certain platforms that can hang the machine
> > > 
> > > Okay, do you remember which platforms?
> > 
> > HSW is the one I remember for sure being affected.
> > Althoguh I don't recall if I ever managed to hang it
> > using display registers specifically. intel_gpu_top
> > certainly was very good at reproducing the problem.
> > 
> > > I couldn't find any reference to
> > > this reason. 
> > 
> > If all else fails git log is your friend.
> 
> It seems to be documented in intel_uncore.h. Though that one
> mentions IVB instead of HSW for some reason. I don't recall
> seeing it on IVB myself, but I suppose it might have been an
> issue there as well. How long the problem remained after HSW
> I have no idea.

Paulo very recently told me that he could easily reproduce the issue
on IVB, simply by running 2 glxgears at the same time.

> 
> > 
> > > Also, the only place where where we take the uncore.lock
> > > is in this vblank code I changed, where the only explanation I found
> > > was about timing, specifically when using RT-kernels and in very old
> > > and slow platforms... (this was added 10 years ago).
> > > 
> > > 
> > > > 2. protect the forcewake/etc. state
> > > > 
> > > > 1 is relevant here, 2 is not.
> > > 
> > > Okay, good that we have only one known problem. :)

and good it is an old one! :)

> > > 
> > > --
> > > Cheers,
> > > Luca.
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel
