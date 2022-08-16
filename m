Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A6594F2A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 05:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15BECDAEA2;
	Tue, 16 Aug 2022 03:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DE0BAC41
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 03:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660621687; x=1692157687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=us6ZBdu1etC+l6yKdln7+3cST/wYc6iMpE9BDgWGqX4=;
 b=m5kie+gD/Oec3JIaToyROckANsdvzbBAZ9NdZpaY+ns71M+kWEXAuryq
 HJ9OrjUeXMhGs74xVzNMwQ2+Ne/pcuL67vSdHRNUOJXHcl4B/7kHD39Zb
 TWZtNdIdRUJjBVSQcVf8Y1hOrAE1KMrcTv7BveThh44fQ7tFgGAqI3OtA
 Q3G83EBBDvO210nnWtQeBOmhOLIkfFnF+tYtJaGRPc1bIl44fy1rY2jak
 p/2pYlFrJhku57C7P0/xzVNn5QoDH6urcniziZT9I93s6HoGoadWRPf5g
 GOQRR7pVwl+GlyRKw4SYmNutOnK197GI+bv52NGgyxpL6x3B1E6e4dfWb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279078553"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279078553"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 20:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="852500344"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2022 20:48:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:48:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:48:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 20:48:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 20:48:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlSLvhByv3m8ot7ItusjznWeTKoD/Fckn8paY91ktrk3dOwEPLlvSKMSa/Eg6LN42E9PXBcLihnRO4moUigVoXJ7peGB2Ej6YNjiX8PqC6u6osyRTTGy3m2XRW1p05ZnDz2QAC/nK/gjeny4PkExxd3gBX8Lh4KiUXzBYOSDkh/+lrYIoScg+Qei7PLh9ViS7uxWDZeUTjKV6qUvmcYVKpIlg3zrm4YbTB9STtU9LMiIRLm1fuPN3NOFxeyVBskQGUSFPVyo4FP0Ure3RzBGwymILw9M5ZXFfJaL9TOnZc9hCYgwGtkaQUkBK/wV7YTIovhMx9LfyBoO3xoAu5c6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2mt/hXCOsWND82i+PHjMdvZS0/V40URTTesKD6bnjXE=;
 b=VV0xwus1L9ndR8+R6P4ggGbDVlmfWsWJAZ4ioZVw1N8XpOToBNhU86AxyLVsV8QGOFeJfg7fOxhvG+Ad0W9Pb/JCu9VPzyxcFIdhUwMRl6OGxynPRLuX0/Kqb45cnj1DF8NDdCGPhpBNf6pRtnp5CTzpRrZRNTqRvEx/Bn+BGG6YwAj0VFAEVexkb0N0NK67NlXD2N8KDnFihLcbU5aqtmVQSpDCJ6ExoR+A4wPiprpE/fV8uZl+GiWboPVe2hpbKBG7uoYiYm3bnJIfqPsoIY2KYDjDHo7v8Rw8TWm7CYKcpRgo8JBbbZTxjfLc4lpe2b19mDqCRez0XtZ457BtzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 03:48:01 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 03:48:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
Thread-Index: AQHYrZWHmzH6efUB8Uet8nwoDUBWD62qsH/ggAAlLICABhSoAA==
Date: Tue, 16 Aug 2022 03:48:01 +0000
Message-ID: <DM6PR11MB3177854B78BAD01BFDF2BA81BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A54C0A8565E373DD04C3BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87v8qyrlxg.fsf@intel.com>
In-Reply-To: <87v8qyrlxg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8043fe4-7213-47ac-5f82-08da7f3a1dda
x-ms-traffictypediagnostic: PH0PR11MB5657:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BKgg0kAAxh8NRzeDgPVMlz62OFjhap3h0x08+43CdQP1UKaUutgoq5Bgl0UVkUH1luPJ+9h9orX0TDlgKfjSWPDMcY0u5qWP7cFBbPFfNUS6opLn3y1+gE5B17sBKkEsCit4ewM/GWvUyaXZ/hEaZeoCKcQcKaUm2Qx4uIxB2zIz8YOqaU0tNG4Q/j4qt1Xoki/43Y6FT5zrXPFFcTQL3I9A2QuYLw1Mwvy0jdXg6/gMm/1MnHx7YCNztt3erB38UkTByIMQ//VktxYl9C5HYc5l7aLlP/MZrBUvDOSgV32s7CHnxuBSJzqVJQN2EwnsiyDGbtzvmd+JgFfqD44lTKWFd+QNWhYVkyehew5zNtZ4n+vY+AonxHM51oGmLSIdTUamnNZeQskyZ6TRVTCyxusde7+tU3iWRNzhfGJ7gNCjsLJFJtZOvedQuDp5KOwGsp/gLGqwfy+VZa2OWWqiqHae8yQuSOwHmeNVeW2R2pnR/Rmx/ZY3GmNZyPQiP2q9UZaUYf63eFhy3j3KMDrKwi7ymSqvkT/VE19Kiilf0xjOMmNSLaiv7tzc32GtBayvwsT9Z8bvcfAUASKfGyL8owoBMuWwKFQkXhYFVgPs30g+41RRRKNjakByiuW55cvTcbQfDfxUKbE0i3OCIIWWN73BlsKPPJTD/Kej8/8a0747nZxsZruiRJ38y0S2O5s+dsMmVfxyJvrDQfupxbRsjXAmuaDAXG2mfi3O231+v+1RR93v/OBkaZO84nghXqMFfmpE0/BF5PujINBPN8lOn1pbWNaxHZdriDRp4zp/T3U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(136003)(396003)(346002)(76116006)(52536014)(66946007)(26005)(8676002)(64756008)(66446008)(4326008)(66556008)(8936002)(9686003)(2906002)(5660300002)(66476007)(41300700001)(55236004)(33656002)(7696005)(6506007)(478600001)(107886003)(86362001)(83380400001)(53546011)(186003)(38070700005)(122000001)(38100700002)(82960400001)(316002)(55016003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SPWd3cExNNPIqN5f6QEnd8Ihae5poUq7T13QQuP9G1oZU6qyKmDh2Hud577Y?=
 =?us-ascii?Q?o+p7jy3abJUyzU8+oaRhRS8myXYuRqDbKMSbvQVaYlgwJSgM7B+T+UmIDCWz?=
 =?us-ascii?Q?15xoDb9/MQvln1xnW0mQMiQrlA7W0Hu2YHfUVJikZ92jpg/vjaJMJszRbQHk?=
 =?us-ascii?Q?gD2eG+wztKAB4V2jcLk2l1mIoW9sFCLKyjgl72s0R3LSz6RV5Csw5VgkhQqP?=
 =?us-ascii?Q?4G6D5eqw6DV9yNvarJIBmNK+hlPD0LnII/sME+693CfyMY6P7xBCDFlLkN9p?=
 =?us-ascii?Q?Ya0t/z5hiHPR49A+4TD4AmzZhE0dyJc9xl4i31s4VIh/0dQ/sfNXFnX2+OOc?=
 =?us-ascii?Q?DwxH8s5jKndI0yvBz9QYCn6XXe07uaUQTMEWg7KPSrhaC0m5fcPlu1kwhNBH?=
 =?us-ascii?Q?5f1skqu2qk3gSXQI7L3CsUqotBaK1vk62V6I/k6lvm4TTF67max/o0asutPs?=
 =?us-ascii?Q?r1AjAmA3Si/kY2iUwUgyzcXpKmkfnGAViNzTfe2YobAX8p8Wz7CgeDkneimJ?=
 =?us-ascii?Q?tnRs6x7C90SlsKaKPfer77QeDvSFKIZE10mKFCXQeiF1WV0I7xhyKk5xUEfi?=
 =?us-ascii?Q?RK0aiMDKomRy3HewCKc9EvFNhhtTDaXFlFRAXgkJM1yU57mfR+rIAKJfR/PY?=
 =?us-ascii?Q?rdDKSI/+5e8rnb/yTCCGc++NW3q+rPFQpLTfC4+Aw03qtReIWeBIqiDW5Uoi?=
 =?us-ascii?Q?FHeQtW1eU232rrukWdQkCBSUC6QlqbhcBuzslJ/XUTd0AqblvkcC2+yESfC3?=
 =?us-ascii?Q?Hhn/SrLzuo3mt80rgMSmIZqjfppp9XGRYm7WP41SGxdoEQ/PilX9/laYA8Qh?=
 =?us-ascii?Q?NI89DYQUwUHkjtRT3t95qFvb95FF4jhW2uWugfmQyqGe7VmwnI1gA+tSYQCO?=
 =?us-ascii?Q?diyBKwbtTH3AMDTQWqYj9b9RmQGfId2Zxs2GNx0KkCSnBb/gcCFJGBmFOUXo?=
 =?us-ascii?Q?e+yWH0qBdjCy3RBskFPeOn2ZNHR4NxCQEbhzmq0KRLYiZYeZ9dii0Z1uWWXT?=
 =?us-ascii?Q?35zhM1iouGcAIsviBFGbzTM3lcpheIS8w/+DRuCXh1P1WTtXFqkr6vMvHt7Z?=
 =?us-ascii?Q?J1EaBb0siS4RrDfa6cYGf6BnFy7O1+x15VIgF7PuekA3xH1PM/FAmZOtq5a/?=
 =?us-ascii?Q?BMfkgzt1VfmFX1WHM6dEH1IAZMgPnR1nYdvDHMbc/o4IJM/Gu8Iqbr4aWnQL?=
 =?us-ascii?Q?tCxbir0BwBINmxwJgsFMVgyjf7DEdzLaKwKVF+NYc46JdYmf8dwb1mSWzJvH?=
 =?us-ascii?Q?W56gEWUkejLr/rz7t4TDpcONE+20q8p7VaofhwhhZ7rfybudkKABkdk9tl36?=
 =?us-ascii?Q?efibk8YH/ex1E3wTPe/vxeEGNmvDoAhDUgC6YJHLalUW7FKhrvQic2Cekavb?=
 =?us-ascii?Q?1YPqUQEa+rQkrUusBdVcZQ57nGBNDm6lMBqWiiHXX20pq4t+9IMqQa4K4wOl?=
 =?us-ascii?Q?TUw29S7YNu+fHPvsSOMLrIe2Uc0j5/NnbQfEYzzw4qDOPUK2nFDDKUvUmfir?=
 =?us-ascii?Q?DmMjgasAIJ8bjNTYqqp6P/37xlG6d62dA1aPGLNlF8EDf6R/bUeG7ZrEQ/KW?=
 =?us-ascii?Q?bjmLPAPcn8fnIMjduccrIqP7C7Z8xs1Fy5MdAhSz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8043fe4-7213-47ac-5f82-08da7f3a1dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 03:48:01.1559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /aVJ5ipRS2HVsr30ZIfoKLF7id54qRsioqtmdS+SRX0k7347yuzaeSLC4dbFDjC8IsmATBLOqt0b8x6z5bwzlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:25 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
> display.funcs
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 98c6ccdc9100..a6843ebcca5a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -8,6 +8,7 @@
> >>
> >>  #include <linux/types.h>
> >>
> >> +struct drm_i915_private;
> >>  struct intel_atomic_state;
> >>  struct intel_cdclk_funcs;
> >>  struct intel_clock_gating_funcs;
> >> @@ -31,6 +32,23 @@ struct intel_display_funcs {
> >>       void (*commit_modeset_enables)(struct intel_atomic_state
> >> *state); };
> >>
> >> +/* functions used for watermark calcs for display. */ struct
> >> +intel_wm_funcs {
> >> +     /* update_wm is for legacy wm management */
> >> +     void (*update_wm)(struct drm_i915_private *dev_priv);
> >> +     int (*compute_pipe_wm)(struct intel_atomic_state *state,
> >> +                            struct intel_crtc *crtc);
> >> +     int (*compute_intermediate_wm)(struct intel_atomic_state *state,
> >> +                                    struct intel_crtc *crtc);
> >> +     void (*initial_watermarks)(struct intel_atomic_state *state,
> >> +                                struct intel_crtc *crtc);
> >> +     void (*atomic_update_watermarks)(struct intel_atomic_state *stat=
e,
> >> +                                      struct intel_crtc *crtc);
> >> +     void (*optimize_watermarks)(struct intel_atomic_state *state,
> >> +                                 struct intel_crtc *crtc);
> >> +     int (*compute_global_watermarks)(struct intel_atomic_state
> >> +*state);
> >> };
> >> +
> >>  struct intel_display {
> >>       /* Display functions */
> >>       struct {
> >> @@ -48,6 +66,9 @@ struct intel_display {
> >>
> >>               /* pm private clock gating functions */
> >>               const struct intel_clock_gating_funcs *clock_gating;
> >> +
> >> +             /* pm display functions */
> >> +             const struct intel_wm_funcs *wm;
> >>       } funcs;
> >
> > Can the wm, dbuf, clock related move to a struct intel_pm ? which
> > makes it more meaningful else again we end up creating a struct
> > intel_display a long one like i915_private.
>=20
> Well, I think the display wm/dbuf stuff also needs to be split from intel=
_pm.c
> so it's not so clear cut. And for now, I'm keeping the functions together=
.

Ok, lets take it up in the later. But adding a TODO would make it clear tha=
t some more clean up in this regards is in queue.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
