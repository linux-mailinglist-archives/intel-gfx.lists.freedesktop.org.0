Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 291416DE660
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 23:20:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08D210E68F;
	Tue, 11 Apr 2023 21:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013BC10E68F;
 Tue, 11 Apr 2023 21:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681248028; x=1712784028;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FUcZlCGwDjz9PQOCdqC7fiWIGWqkJHVdE3UqbZec8D8=;
 b=Ls4nNXAed1M2RXudHnUoXiELPf632YEUBe4PtVAt/rJnYYPh7FVzt7gW
 JGanXTiAloLF9mX3qJYXbSvWfF86aSyg8HU4J3Sn9Iy6O1VXPC1uKtFGf
 wduIiOse3ZKsEknh8ej3nzJxkLkj43vJzqhdYBwKwmc7lEU+ILhJ1RzkV
 +1Lacg5wKsfHrQfGLfhiRhp2xl0bMvSvdRh6/bCLPZla3kWAftrAXZ6sk
 LQNNuuecPCDsLnr4aIZy9nhhjjAuqoqTzEqLyX30KfpTKVhGC2QV9OO6Z
 Z6xTt7yAoHMJGDXgpt01zsTCsd5yO16mJxqnTF3+7mpY/CbPPtQayv+HW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="346413772"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="346413772"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 14:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="812728717"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="812728717"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 11 Apr 2023 14:20:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 14:20:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 14:20:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 14:20:25 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 11 Apr 2023 14:20:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nf7svRhidgVtFgP0DkIZJXvALRobv3XVFg/jfUCuH/3R293ekTWRm40cjkL/E3xkoCpXJbtzwMJ1gQXdbbAb00US7MPWnGzM2d2ksyPc9xj6Achs2hZM8VAd2epJu7X4YQMDQYzwo9jZYZTjuV7A/q3mywsaEoMXR4caUF2ygb0gP1GhBb/hbien86Lo8NAOS4yilieG27t5JXe+YiN/gX5Js747dxZG+SarrGrjQ/H0lGLLo48GIXd7P/MiYygwwGa06e8HzYtFK7tqIRAH/gO4gef5wvQF5SkrXN6ooS2efRY9Ic7wlHIWdIN99+K4U6U78DuEQKOb7FPTk59p2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vejwjEozBC2PTYu7Ym+i+Lq6AxOGu0zrc7arv0EQ9o4=;
 b=R5mEQ6LrVTJW+jb3CAjXR772EkeqlhaSB5scQLpxZ60E36b9hEip/I/N5VK6Isbj6sVa/DMcv6CpRhGxPx+Zxi3VGsKLTQzKo5i40HCjOLl0ublkfbTgtvn1LiAxq4/WIqMs3l7LKLh9Uwn674O1nG0vT2IfBqRRFqMCta4t59LjvkorhjwMU0Kxi22Bn2GeMmkb/GWZaLZgxydjBAy/zWZT5R/wp1Q/GgUhlPXKkjsq1cNv02JJ+5FwCVStXTiaUHXkL7O3VCAX/Ho/bwzj9P0GZAf7lUFsKdF1E7HNDkAw1LZCNckkTxfItRDmEOgWCcffzkL2scIsQCv/IEWWgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA0PR11MB4655.namprd11.prod.outlook.com (2603:10b6:806:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Tue, 11 Apr
 2023 21:20:23 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%6]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 21:20:23 +0000
Date: Tue, 11 Apr 2023 14:20:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20230411212020.qwceyu5m6tpy42c4@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
 <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
 <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
X-ClientProxiedBy: BYAPR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:40::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA0PR11MB4655:EE_
X-MS-Office365-Filtering-Correlation-Id: e257252f-2e9b-472d-4add-08db3ad28f83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FQIAitiEE2eRViDaiFpVlwy7DS8UOPRqmA2EpkMWyJj/fOLBXmeIoak83Eg3fj+An+A46/1jKSyuAvAffreelyUJq9juMd3QdRQbTrXc4PJNAa4wJUKDefQxUMcfeJoXwMob6uLjN8tFQRV1KjBK0cNxjkheJLLU+S4/RbGfSTTPNUsTC5sTZcHS0JvOK0G3uug2dSNMwXOZlRCzwEA7Op5Gx1eJICOXxw+Ya9nsJoZKPLNeks/33KeA/QEL7Odnmgg8w8d+AXAJWQ3JLKtVksyahFhRhjkkYpWfsrJ+QjgOQ7R0P3aGrKzxJa9flqHKlGSvJFCYr2aUebLD7mwgrOeeoQpFWgGIr0xG4SnNtrXvFt1B5fR+zMV/zw40HVT9k0oKg7yijCeztCJ7w8GVxImUnWArGcnDcNORoRrpCerieOnSTZhRjXgjXYUQAsifZeFeIUOb1qqyyiRMZFpkpnHjAYAqJqLk+uuKCRIDPkj5mVHaVx5BaBmx/G6pvUAu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199021)(478600001)(36756003)(66574015)(83380400001)(86362001)(82960400001)(38100700002)(450100002)(2906002)(9686003)(316002)(1076003)(6506007)(54906003)(6636002)(26005)(66476007)(6512007)(186003)(8676002)(66556008)(8936002)(6862004)(6486002)(41300700001)(5660300002)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JmCT0wyxPp54aP7TTIXzeyZdwtRGBqfMefnGzUgd/y7s/m0V7MjnWffHxW?=
 =?iso-8859-1?Q?ViqeZoEH/SOZ9QNP5ZFezPUi5ABGDXcI4Fbtxz3pPGjqiOSecs/Cwr1kJj?=
 =?iso-8859-1?Q?aaseyVjl5dEq2tgK3xlgf9OUs9XS8Et6BWBAVx/rH5vmfBol6jbQ8UMHPm?=
 =?iso-8859-1?Q?NKggMFvTzS2mnnFM/d+gvEXDBkt7BHNi1nRe/wd5/rsLdnbyuGzXRtKoA/?=
 =?iso-8859-1?Q?h73b1oUlWwXi3YTU2wZFPaa89D8NUuxPW8WHhdnPaMrzQbK0QmmxbusrNk?=
 =?iso-8859-1?Q?3wDvvGyPZa4mNkN0nwv0aOvti3EUqvU7TwM8yCnpfU5zoYYxEy1HsvIWsn?=
 =?iso-8859-1?Q?Z6xIv0QJ6SODvM/PUDwa1Y4E/bjVwQR8RXFH09jixEY7ljkCnwQcg+bgeE?=
 =?iso-8859-1?Q?5kJQl/9D2gDsAN6xREonO3kxHd96mY4b1Jrka7jyPH7k0lNv2xlpY/wF1B?=
 =?iso-8859-1?Q?1/g7L2wZm8dkFBWUTPjRVPa2tWG01sYBKtFCL0yUe9PvhBQ7jAufDRWk6d?=
 =?iso-8859-1?Q?xz1oC0icOf/+58qLOv6UJgWUnDvTinXsBpq3XCqNDP2T3aT1j1UHlACSTH?=
 =?iso-8859-1?Q?RY6DiOHeTf+v+FZ24zNefg0pCsawAS2ohKQDfHtNLr/iAlHLvRE+ve/2PZ?=
 =?iso-8859-1?Q?8Kg/Z2/wBDMzAHjIa36IeLhI8kyjQsWuehRlEkWz3/0wOvMU1/3oXXu0RW?=
 =?iso-8859-1?Q?94fxGWW5zaIxOaYE0QOBpSqKGnIbjNieJXRQ0uOVhYqupbHXVarWG2CS/B?=
 =?iso-8859-1?Q?zkA/8OKJgteKNZPTEdzmN04xaFSotk92y6FTg1KunAEKrW2HYlQCsdcYsb?=
 =?iso-8859-1?Q?QCgt8ZTtSdTeWB1AN4m9FpdprR3kepZhyAZLSWZ/hxUPiRjTocQJxeXHMg?=
 =?iso-8859-1?Q?qzAdqdSB0F90guQBVM9LQEaT0c366WQZUkjOWDNj6PBuUAwTvgDJ56a3zL?=
 =?iso-8859-1?Q?u9ILglvKZrAF0VtX/b1JsbhWzPa3wrQGX6IbFyME7PXfKFY/a57MYJ8QTr?=
 =?iso-8859-1?Q?tH2DYkReVZwFxaoB3XprSHlko7LTadxk3XnuP8qmcgWyLAV/EebUhjTA07?=
 =?iso-8859-1?Q?fwV0LPqkwdzkAVKCiiwutNvPoJ+C0e8j7GUvTSeH0xGKv5r3+s/IGOBPPU?=
 =?iso-8859-1?Q?sKR5WbSToxhIuLhvP+yLMKYys1wM6A5yBMo1yOexKj/nccidAqQ4sP5LhK?=
 =?iso-8859-1?Q?h3HpKrMKB/9UzukJnrCDqaRIW6FGgSNKUpZJunQm41vzyTu+bqJPUdTYLd?=
 =?iso-8859-1?Q?sh4WEbGHlZ+cCsK7AtVMDeaLDjKCnHNOTWkrOprVozLdh55LMLEER2mMWy?=
 =?iso-8859-1?Q?+7XMoHh59+dXh3MLXVftCUDCr824SMCaCRx1o9WpH/Q4DizBgdbLQZ3Kev?=
 =?iso-8859-1?Q?e4EtDh5dHAhyVT7qliNpKg91YYgs0ziz60U29Gmbza2Zo8MndDjvn/gjRK?=
 =?iso-8859-1?Q?6b3TXRgnhYwXc0zAg0iY6ldlpkW1fOLcKE2bvHTFoMuXfobDqSpeH1IQ7W?=
 =?iso-8859-1?Q?JbJNYb3XUXJ37Za0Ae2/kbBNapzpM6elMCpS1VQ2Wrk9whmwUuFCh65P+A?=
 =?iso-8859-1?Q?+5xJ+jUbetTHavhrugPbvxmYZ8N6rv0bnYQk4PUDkqmm9m9rEWvDONC/kY?=
 =?iso-8859-1?Q?njW0R7YKoK4WwuRaOIyM53bm+Lg5G6LG4Lw5hXQ5s8Zay8pyg8nBao9Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e257252f-2e9b-472d-4add-08db3ad28f83
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 21:20:23.0334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fxYY5KUtRocwhDQjs4p9bwIne5gY7SmLlsI2GEk+GSXOQYHhkL1/6HgkvKX/sCKAJ4p+P7ALmGOQFDwgNbMiLip0fUUku3KoKoa2ZwzNoQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4655
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 08:07:12PM +0000, Jose Souza wrote:
>On Tue, 2023-04-11 at 12:59 -0700, Lucas De Marchi wrote:
>> On Tue, Apr 11, 2023 at 10:51:04AM -0400, Rodrigo Vivi wrote:
>> > On Tue, Apr 11, 2023 at 12:14:36PM +0300, Jani Nikula wrote:
>> > > On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> > > > On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
>> > > > > On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> > > > > > On Mon, Apr 10, 2023 at 11:32:14AM -0700, José Roberto de Souza wrote:
>> > > > > > > Start to move the initialization of some lock from
>> > > > > > > i915_driver_early_probe().
>> > > > > > > No dkl function is called prior to intel_setup_outputs(), so this is
>> > > > > > > a good place to initialize it.
>> > > > > >
>> > > > > > I disagree. We don't want to sprinke these all over the place.
>> > > > >
>> > > > > I'm thinking if only foo.c uses a lock, foo.c should initialize it, not
>> > > > > someone else.
>> > > >
>> > > > Perhaps. But I think there should be some consistent place in the higher
>> > > > level code where all such things get called instead of dropping each one
>> > > > individually into some random spot in the overlall display init flow.
>> > >
>> > > Agreed.
>> >
>> > Ops, I just saw this now, right after I cc'ed you in the other thread.
>> >
>> > So, probably good to hold this and do the entire refactor together of all
>> > those locks initialization so we find this common consistent place apparently...
>>
>> "internal" sw initialization of display-related stuff. It doesn't belong in
>> i915_driver_early_probe(), it makes harder to follow the sequence if we sprinkle
>> them around, like here in intel_setup_outputs.
>>
>> But I don't see why this couldn't be done in a higher level "sw
>> initialization of display-related stuff".  Should we add an equivalent
>> of i915_driver_early_probe(), e.g.  intel_display_early_probe()[1],  and
>> move the display-related things from i915_driver_early_probe()?
>>
>> In that case, from xe we would call this function rather than
>> initializing these fields in xe_display_create()
>
>Sent another version, added intel_display_locks_init() that is called in the beginning of intel_modeset_init_noirq().
>https://patchwork.freedesktop.org/series/116326/

modeset? why? That is after we are already probing the hw....
and what does that have to do with modeset?

Lucas De Marchi

>
>If this is accepted we can then move the other display locks from i915_driver_early_probe().
>
>>
>> Lucas De Marchi
>>
>> [1] I don't like the name, but it follows what is already there
>>
>> >
>> > >
>> > > --
>> > > Jani Nikula, Intel Open Source Graphics Center
>
