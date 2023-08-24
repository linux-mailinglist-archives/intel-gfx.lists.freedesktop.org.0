Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10C37879B5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F3710E5BB;
	Thu, 24 Aug 2023 20:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6EC10E5BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692910484; x=1724446484;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O0wIY/KyTyDYCgvbOpYY4n4GcQi++STSwk32lKfEk6E=;
 b=W7FmZW74Nkx6RYuWZAzlBX0MSDsFoGvbzMnbieUPquf/2ZUb86RmOcHU
 J0mkcFCqqEcmF33niu/KzzEMu5iACdRP8JyNHl9kMIYFSXbzRURRT9Oa/
 rZA+2CpV7e5PPqa7hIGIsMLxWmyeVzXlNxwsGtKHwNA+KPvm0cAwzIdDA
 rja+naV51c7O93x8T3suHoeM+1kDdoKRr6jZPDbM7PhmyO+gNK0HY37m+
 8Xa1n2iLDlcv0efBErhx6T7QcT/C3aysn6XZ9C0dOFqAcc6qxVGF7qYYT
 toN6wrXLF9x6TS9RYSKdww6f/Hqwjqla92KU8n0SCRBYu91Y9rWw9RCtR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378345570"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378345570"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:54:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737212140"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737212140"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 13:54:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:54:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:54:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ho2v4Iq/OPqWkMg2c8aGWVAbShs+94lwWVuW0ktpMq2JnAJGDPOLvSTHc95D3IQH3FvLr4QAY2mr7FYo4BkhGz3ZUhN6xXRF+yOhjAJBklO/cxXRJdr9f/ht8ztuxmYjUaKmlCk39fr3mB2Oww5kBFwkDCiA/UsQySfNoBdJ5Nn5fIhOcV+POU8q4o9CLqR5nfKcwT3piKpTefnV6XDOrzsJICFqECo6HsTHyw4ddoGcMtCfNok00ld5C6iwCc1AZEfJBFJom5DKZ25uMwlSZbdC8/yj5sG0L/kpvSE/dj1WIUUrZpShodvTchwxWzCHN88tkJNNEINUt1XEe0V/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVDzETBdgnWBmc6N8Zw3UowNdhmYLgW4d2GvSHFx5t8=;
 b=dxud/K9FTsfTt1weGn19Lz3mBxYihptKYBstYv3mOa/5PxtmF3c2VFZwpp+22rTqo9m8wINkOY0LgkiLhD+nND9U6p2QSNNZH25cfTzVQOMT/FDCpKp2nIgpJ7IP/Lr5sajFehPWR7ESL52xGmyeCrsSAlnBPAHV7iGZEsmNBUwzzUN7dJM2rvmlkBJ3QgbQ8QjSF+Ccr1CSplmKrXcIVARlXGUCt5WAaQIDymop9Nkg94q4QL/pG0AKDC6MjyfSctXmU4v6ihuQCcb18w38z3kCVTebCEq1Z08aqBZB3BSJocLyMU3bo3s7hZAIbCOlPPSAdXxeqFbEWTcSb0X1Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:54:41 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:54:41 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Zeng, Oak" <oak.zeng@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context for
 GGTT updates
Thread-Index: AQHZ1QyqNtuBsmaFRUqoCfcaDUbr0K/5m6wAgABPGyCAAAVNQA==
Date: Thu, 24 Aug 2023 20:54:41 +0000
Message-ID: <SA1PR11MB6991427E6C81A56FCFAF440A921DA@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
 <20230824155146.GR1529860@mdroper-desk1.amr.corp.intel.com>
 <SA1PR11MB6991C850911FCFDE4E6A9D20921DA@SA1PR11MB6991.namprd11.prod.outlook.com>
In-Reply-To: <SA1PR11MB6991C850911FCFDE4E6A9D20921DA@SA1PR11MB6991.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|SN7PR11MB6946:EE_
x-ms-office365-filtering-correlation-id: 5f5663c3-a79f-4e6c-f0d6-08dba4e45653
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cGaw9hhi0lBycMsaY6aE4IoOFTEegPnv0T34GVAbu94ZZozBIi4WD65gpqy9DsEZl3zPLv3bjCoFCgXxItMh4/4jZBpX0OZBnplniGth++NRhf39Zymi4wRJAvgqaH65Cj+qF4BolA651w6EMgMW8YZZIfwwz6HFQqRfxr4GOmORN03O8JduH2xLXkdJJuQj5xUOgIpDzGDoQlpFet51Z+KM35COa8IivpxmGHrr7qzWMRswssjMQFdD4S/2vA09CfDV6jKN+ZjKMKwGCZqfCp+wQ+DBzBctG35y2JjusCZO2X6uAbuHPnhNw+0b6SMWWPOh5247C+oAlt7TNWqDE0ZcTfw5WoGs0dakMV/N0aYT4uTH1oqc85SBQla9FAv610ey07NS+hLcxM2x3B1DX17KS5GhlG8Rq+6dUBOYM+efwjSUEtYKQ10CItbZ3ESmGKaeIsIAU5zx69Pc0cfAPM7iOM1vcjs7vfdIgygWHNq0Ydt3PYBsfeCdAkPsIEGiMKz2NcimAaAEo6J8i6h5+8a4W7To5qCnqxThZAa2YX2SQbtn1mcfjN0j6/ssIJjTdq4GRZzhwRGkb7Q6MP4l1mDkqaWC/TVWKeXQkzLi93dJKAKQHySwuhv5yoF1jwkJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(64756008)(54906003)(6636002)(6506007)(66446008)(76116006)(66556008)(66946007)(66476007)(316002)(82960400001)(122000001)(478600001)(110136005)(55016003)(26005)(38100700002)(38070700005)(71200400001)(41300700001)(7696005)(86362001)(9686003)(2906002)(2940100002)(53546011)(8936002)(8676002)(4326008)(52536014)(5660300002)(83380400001)(15650500001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?riZsrBFLBJlmninFr8+untHnyiu2Qcu+Vd7A0G1jRz+bdsJmztQs/ztJGCST?=
 =?us-ascii?Q?IhDUDClNIOzkvOA+LIUTXGoM8T+xbujv1lRT8ktEAkjlqq1EXa/8ixVzkN+P?=
 =?us-ascii?Q?kKuBC/XOhujIdnT2XZrVEexFygVQFu3FLncSzRIbvXH2fp/z6hGXKXTKiX7K?=
 =?us-ascii?Q?GcfBantTZCZnrzkx9rjG7b9mhn4m8E34JfebYloNUCcrKILiwPrLPfvwqTIs?=
 =?us-ascii?Q?Gg25XC87ijux0hyZpeGjyrkpsedC4Cda5BVhoENQe8sVRttg17Mnzh3yirvf?=
 =?us-ascii?Q?MQI6fe14m9+ZdjcQasdJlovCS/DTfecsXWDUYvbc0GYxZsEdlrR6KoajXzSN?=
 =?us-ascii?Q?R+RwAxyux5LQ3kMh9hNkkIgePOuuvaNfQZFSQaqopRHZjcGcwSlljBN91Azk?=
 =?us-ascii?Q?+miRCDZNwRJa5cqrNB39jntKAGpXYA1PjmEQlMzgX0+Odn+yH7jFYgCAZ4Et?=
 =?us-ascii?Q?0pF5qxKmt8JESYpthAvjSYvdY/RGIFRPcp2YaHuvpejx45SSCEnUjAAKqI2s?=
 =?us-ascii?Q?lzRzQs+HKOwXmcWHKHGRXmq8v2vQq1jsOp4KKotGY7aZsQXe1zSMlSZvzKB8?=
 =?us-ascii?Q?ZxLpamVvRdPU1GWYW9UZczsRn+1Xv6FKhPAP1XOE1OEH/OUxC0zzoitO8XI9?=
 =?us-ascii?Q?ROBJTAGHrmvvQ3fUehntRmbQrjXGcMUHhBO1BUnkxKVNUvxZJieFzZFi9iDF?=
 =?us-ascii?Q?Ph3gIShAOPqk7KCJeQzNMsl1eHoV99psgJgXlnSe3zAxmvCxpDXsVAuNBg6/?=
 =?us-ascii?Q?qn/QHi9OJ9PxkbVKN5Jvwu50R8QeAmnXxQRv+kqRsCs4clGmuzuH0O0dbAt/?=
 =?us-ascii?Q?yDpW6jmagrOyS8ZexaLAyEabSRIizfi8v5iZcFxPptRnT4Skl1Hg8Rnrbfcf?=
 =?us-ascii?Q?RME6rCF2uzsCnCuGHQyC+8eNnGR2bo7vohVsokj4LDX/iUUKC3vxcTOPDByZ?=
 =?us-ascii?Q?PkZFdHeVAjIR/s+IuJRzEQ/hT6slWiWrL2M2Rz8Xh7ovoA2jE7n5//YKoMQl?=
 =?us-ascii?Q?CCr8Y5dsci/DHIynSGtiahdR1diy1nKdZ4M/5PnLsW7bmLqwQW2bJPp0MPhw?=
 =?us-ascii?Q?1hs8EVjIHWEjqt6whDZh2HavRZk1lV9NLtnHJFv3nWPBZQYRspthfnLmGX/D?=
 =?us-ascii?Q?WdKBCawNE4wdU0S+SBYZhwJBFliPsUBUxlyxTrYAcEKwMmAF0oTkiOa1QgW6?=
 =?us-ascii?Q?5udHVdU+548scZPMXS8cqsshlRt/F5hc0f8EXJpR0q+PHpMvOgTaU8n/jL6U?=
 =?us-ascii?Q?E/IkqnnzAH9kaqbsZyWXvVBM9LPP/ILllMlyxI5rIGcg/aitiKkEoKeCPTcG?=
 =?us-ascii?Q?5SWsCa2LORm1SGfGSwDCPTz2NDthRBX5U8JQvTsgi61XvApuAlTQf+n/vFV7?=
 =?us-ascii?Q?zFTaHDuJin2mzFVNFr/FRtoWNvkQeq+w12z2XJSDzwhEKlhEdMCc+3PzWbbC?=
 =?us-ascii?Q?JCX12ZW62nt0g9a14HbjMAyKCJ1Y68F1ZN3g2VOADerycqoAlbtmBCru7kLZ?=
 =?us-ascii?Q?vOSGBqmEB0o9h3ILY4YWBwCXvE6qT04uX+HfCWPgT1I58MR3H0KFHaLEknDY?=
 =?us-ascii?Q?xVdL20zaEWZI7FqbyjI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f5663c3-a79f-4e6c-f0d6-08dba4e45653
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 20:54:41.0706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jlJzl4CMd199K4iCVc2t/oi4UURwk3nJ/y9JqwemUXskDoZBoiqrmrwFjQapPe/2KY7blVHR9mdRatlFGAiW/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context for
 GGTT updates
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ze=
ng,
> Oak
> Sent: August 24, 2023 4:38 PM
> To: Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: chris.p.wilson@linux.intel.com; intel-gfx@lists.freedesktop.org; Shyt=
i, Andi
> <andi.shyti@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context f=
or GGTT
> updates
>=20
>=20
>=20
> Thanks,
> Oak
>=20
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: August 24, 2023 11:52 AM
> > To: Zeng, Oak <oak.zeng@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shyti, Andi <andi.shyti@intel.com>=
;
> > chris.p.wilson@linux.intel.com; Das, Nirmoy <nirmoy.das@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context=
 for GGTT
> > updates
> >
> > On Tue, Aug 22, 2023 at 11:28:57AM -0400, Oak Zeng wrote:
> > > From: Nirmoy Das <nirmoy.das@intel.com>
> > >
> > > Create a separate blitter context if a platform requires
> > > GGTT updates using MI_UPDATE_GTT blitter command.
> > >
> > > Subsequent patch will introduce methods to update
> > > GGTT using this blitter context and MI_UPDATE_GTT blitter
> > > command.
> > >
> > > v2: Fix a typo in comment. (Oak)
> > >
> > > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > > Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_engine.h       |  4 ++
> > >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 ++++++++++++++++++=
+-
> > >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
> > >  drivers/gpu/drm/i915/gt/intel_gtt.c          |  4 ++
> > >  drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 +
> > >  5 files changed, 56 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> > b/drivers/gpu/drm/i915/gt/intel_engine.h
> > > index b58c30ac8ef0..ee36db2fdaa7 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > > @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs
> *engine,
> > int reg, u32 value)
> > >  #define I915_GEM_HWS_SEQNO		0x40
> > >  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO
> > * sizeof(u32))
> > >  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> > > +#define I915_GEM_HWS_GGTT_BLIT		0x46
> > > +#define I915_GEM_HWS_GGTT_BLIT_ADDR
> > 	(I915_GEM_HWS_GGTT_BLIT * sizeof(u32))
> > >  #define I915_GEM_HWS_PXP		0x60
> > >  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
> > sizeof(u32))
> > >  #define I915_GEM_HWS_GSC		0x62
> > > @@ -356,4 +358,6 @@ u64 intel_clamp_preempt_timeout_ms(struct
> > intel_engine_cs *engine, u64 value);
> > >  u64 intel_clamp_stop_timeout_ms(struct intel_engine_cs *engine, u64
> value);
> > >  u64 intel_clamp_timeslice_duration_ms(struct intel_engine_cs *engine=
, u64
> > value);
> > >
> > > +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, boo=
l ready);
> > > +bool intel_engine_blitter_context_ready(struct intel_gt *gt);
> > >  #endif /* _INTEL_RINGBUFFER_H_ */
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > index dfb69fc977a0..d8c492a507a4 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > @@ -27,6 +27,7 @@
> > >  #include "intel_gt_mcr.h"
> > >  #include "intel_gt_pm.h"
> > >  #include "intel_gt_requests.h"
> > > +#include "intel_gtt.h"
> > >  #include "intel_lrc.h"
> > >  #include "intel_lrc_reg.h"
> > >  #include "intel_reset.h"
> > > @@ -1419,6 +1420,34 @@ void intel_engine_destroy_pinned_context(struc=
t
> > intel_context *ce)
> > >  	intel_context_put(ce);
> > >  }
> > >
> > > +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, boo=
l ready)
> > > +{
> > > +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> > > +
> > > +	if (engine && engine->blitter_context)
> > > +		atomic_set(&engine->blitter_context_ready, ready ? 1 : 0);
> > > +}
> > > +
> > > +bool intel_engine_blitter_context_ready(struct intel_gt *gt)
> > > +{
> > > +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> > > +
> > > +	if (engine)
> > > +		return atomic_read(&engine->blitter_context_ready) =3D=3D 1;
> > > +
> > > +	return false;
> > > +}
> > > +
> > > +static struct intel_context *
> > > +create_ggtt_blitter_context(struct intel_engine_cs *engine)
> > > +{
> > > +	static struct lock_class_key kernel;
> > > +
> > > +	/* MI_UPDATE_GTT can insert up to 512 PTE entries so get a bigger r=
ing
> > */
> > > +	return intel_engine_create_pinned_context(engine, engine->gt->vm,
> > SZ_512K,
> > > +
> > I915_GEM_HWS_GGTT_BLIT_ADDR,
> > > +						  &kernel, "ggtt_blitter_context");
> > > +}
> > >  static struct intel_context *
> > >  create_kernel_context(struct intel_engine_cs *engine)
> > >  {
> > > @@ -1442,7 +1471,7 @@ create_kernel_context(struct intel_engine_cs
> > *engine)
> > >   */
> > >  static int engine_init_common(struct intel_engine_cs *engine)
> > >  {
> > > -	struct intel_context *ce;
> > > +	struct intel_context *ce, *bce =3D NULL;
> > >  	int ret;
> > >
> > >  	engine->set_default_submission(engine);
> > > @@ -1458,6 +1487,15 @@ static int engine_init_common(struct
> > intel_engine_cs *engine)
> > >  	ce =3D create_kernel_context(engine);
> > >  	if (IS_ERR(ce))
> > >  		return PTR_ERR(ce);
> > > +	/*
> > > +	 * Create a separate pinned context for GGTT update using blitter
> > > +	 * if a platform require such service.
> > > +	 */
> > > +	if (i915_ggtt_require_blitter(engine->i915) && engine->id =3D=3D BC=
S0) {
> > > +		bce =3D create_ggtt_blitter_context(engine);
> > > +		if (IS_ERR(bce))
> > > +			return PTR_ERR(bce);
> > > +	}
> > >
> > >  	ret =3D measure_breadcrumb_dw(ce);
> > >  	if (ret < 0)
> > > @@ -1465,6 +1503,7 @@ static int engine_init_common(struct
> intel_engine_cs
> > *engine)
> > >
> > >  	engine->emit_fini_breadcrumb_dw =3D ret;
> > >  	engine->kernel_context =3D ce;
> > > +	engine->blitter_context =3D bce;
> > >
> > >  	return 0;
> > >
> > > @@ -1537,6 +1576,9 @@ void intel_engine_cleanup_common(struct
> > intel_engine_cs *engine)
> > >
> > >  	if (engine->kernel_context)
> > >  		intel_engine_destroy_pinned_context(engine->kernel_context);
> > > +	if (engine->blitter_context)
> > > +		intel_engine_destroy_pinned_context(engine->blitter_context);
> > > +
> > >
> > >  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
> > >  	cleanup_status_page(engine);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > index e99a6fa03d45..62095c0d8783 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > > @@ -415,6 +415,9 @@ struct intel_engine_cs {
> > >  	struct llist_head barrier_tasks;
> > >
> > >  	struct intel_context *kernel_context; /* pinned */
> > > +	struct intel_context *blitter_context; /* pinned, only for BCS0 */
> > > +	/* mark the blitter engine's availability status */
> > > +	atomic_t blitter_context_ready;
> > >
> > >  	/**
> > >  	 * pinned_contexts_list: List of pinned contexts. This list is only
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > index 13944a14ea2d..9c77c97670fe 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > @@ -21,6 +21,10 @@
> > >  #include "intel_gt_regs.h"
> > >  #include "intel_gtt.h"
> > >
> > > +bool i915_ggtt_require_blitter(struct drm_i915_private *i915)
> > > +{
> > > +	return IS_METEORLAKE(i915);
> >
> > Drive-by comment:  this workaround is tied to the Xe_LPM+ media IP, not
> > to the MTL platform.  Other platforms that re-use Xe_LPM+ IP will also
> > be affected, whereas MTL platforms that lack media, or integrate a
> > different media chiplet will not be affected.  So the condition here
> > should be:
> >
> >         /* Wa_13010847436 */
> >         return MEDIA_VER_FULL(i915) =3D=3D IP_VER(13, 0);
>=20
> Issue was observed on LNL A0 (fixed in A1), MTL.
>=20
> Not sure whether it is fixed on ARL or not.
>=20
> For LNL A0, there might be a different wa so this software wa is not need=
ed.
> Double confirming.
>=20
> For now let's only enable MTL.


I just confirmed this HW bug is also on ARL. But ARL code is not ready yet.=
 Will enable it once it is ready.

Oak
>=20
> >
> > But does this even belong in this patch?  It sounds like patch #3 of th=
e
> > series is where you intended to hook up this programming to the specifi=
c
> > workaround.
>=20
> This function is called from patch 2. So will keep it to patch 1.
>=20
> Oak
>=20
> >
> >
> > Matt
> >
> > > +}
> > >
> > >  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *=
i915)
> > >  {
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > index 4d6296cdbcfd..9710eb031fb2 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > @@ -688,4 +688,6 @@ static inline struct sgt_dma {
> > >  	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
> > >  }
> > >
> > > +bool i915_ggtt_require_blitter(struct drm_i915_private *i915);
> > > +
> > >  #endif
> > > --
> > > 2.26.3
> > >
> >
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
