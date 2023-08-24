Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F4178796C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E936610E136;
	Thu, 24 Aug 2023 20:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5C210E0BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909471; x=1724445471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ERx5AzCNOs6lGoeWDdTCWwRjiDQVS22bvSzGHNL+WW0=;
 b=ItQW3GW7z9NTio6Aotep4sXdVEh4l4C9NYdo/KCqDtjdDZRuUbKOrPx8
 rO+dglT7CErDs6u3o47/fPogZh80mYO8KeA8jMZmOFxhhBTMm8PhFCz23
 J/h9I/p0TWAHq/6bbp9HbHYn2Oq32DYWx7b+lYhqQPDr5KnxjRnAYHEJL
 xAgwuoCFyKP5Dx7/nE76hJ1/uc3JuDJXS+Nsc+rMuPJ1CoR1X/5Z4MpE+
 YcI2q6/7se4Ovw4HJNkZjRj9Qq76/3KMWlYLdt/FKG9WkArbejhr25Uj7
 lVWsG3HFLMCWto3Z4gCqda+wA+8E+9z9lPimkC/YUmDOQbsqkoWZNbHeE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354083043"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354083043"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="714097771"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="714097771"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2023 13:37:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:37:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:37:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:37:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9YHUSQyd4290QnN2N6SUumiBlGNvJrKWFUVCp8sW3yOP4zzf9gFZv+JRd/fr2FLH9/tyEiIPDJIECPZr/ob6zJyC2R6YijUDCMVAif1cShvg8gxgW9gJWQnoiU4cjSzzxwao9p+55AoujR70k3uSfAGc8AdZw9qNqtTDpWXUcrF1bmn+X2OjwkRtPf3XCXVKe8adbL9HeMf+lYvXlu2HJSs0jSq3t4H20/iTRz/cn9nIcdWlCsncYPRpv0LFRwnNIKeTdiE8kAiolhvhMq7vbEQKuxHiapZbc2LDW7fZcKqxVNac8t0zM/u/sKVa9xG3mnb3BoHw8H5K4Tc/7FxZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFHa6K72nFDZaS+NEmcaxD61ylfklcuIvICJuDfdUlo=;
 b=OkW/5KJAgD11QIeaUi/inqIfJRvDmhv3CFU8VCtwmEbqpwvMNt9jnAfKtQVPTQiZ3EMTYSW0KssCAsmO8EIll8zV8TlkwohLv9boQn/Vkh+84dPGYjG0607+Bh/rVKG2T6e4WwVh1E+tLMmPcthrsJil9IQvETKf58FvS1HWFkrV0zGfGYwUkcRoJfxrUCYmleygepNnNz/J6XeJvOZNBNxLchNR50/6jd6deWIR1ab5ZQJOESFoOproCaWtBD0zdwBV9HOorFZUV4wpGgUWS7eLaUQtCLl6USXPwxBivlBW+fxD3bBmXykWx5wticMkypS+Gqh3SxjDHFIrb2hBWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:37:46 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:37:46 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context for
 GGTT updates
Thread-Index: AQHZ1QyqNtuBsmaFRUqoCfcaDUbr0K/5m6wAgABPGyA=
Date: Thu, 24 Aug 2023 20:37:46 +0000
Message-ID: <SA1PR11MB6991C850911FCFDE4E6A9D20921DA@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
 <20230824155146.GR1529860@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230824155146.GR1529860@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: a3f27e28-2ce2-4554-de0a-08dba4e1f955
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /LSM3TBf2d9aw7zgW6POiWsHAbRKsPemdYjoYFh6xz+r8ykonVC5Rvd6h+aXWXpuDRKA/i5+LGb8Lu7v137DBqBMPJY1G2mEWAKR6ek+T0hzgQtxgSf0AED20JE2hEnAkZfj4lm0Z8YWScU1CP/m6AiTtl33zkOZfSR2byYm2GEym/XSkuai47xDlF5nqzR9yZZw7HKdBq0dlV01KyHqq9D3o1I0v2updTCTycBcX3kHdvij3oTU7d2dXapMpnwxQOc1a3xx4A0vZrDVCXv4hlHHFvy/Nz17fDcTmDqKQdDgmJFylkzzpmLypJcywBRlJOtjcirEH8iOGHOHv5iFaiz4AymZNnSZK+JkDIlUdzmVwXMwZZV03tfdnS5khaGPlolrubw/TAwmx4tKjhu1H2e26Hsv0UHWpb5EsGkpva+n/+fCvNMNJyGsgEotbGK4b4qs55P/x4vOLh3VvEG3nkigpRmIgDYFO4c3JTf+Hl3YPTnKraxgHTtCmIJEM1sl05HPnZgQBVqsIoQqTjbw4kE3NuMpytEPZmty93T6/uQdTqLYU3OAAhUtGug9Mvlh7hgTC7bbTbPKDFxbl92GOCHvKO1H0+zIgTctTJFGTMao98Mn6htx4tVfvoSHApoQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(52536014)(5660300002)(8936002)(4326008)(8676002)(6862004)(83380400001)(15650500001)(33656002)(7696005)(55016003)(26005)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66556008)(66946007)(66476007)(6506007)(54906003)(64756008)(66446008)(6636002)(76116006)(316002)(478600001)(53546011)(41300700001)(2906002)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ryuOVBi5mNqd2APg+XbKwl+xu28SWwWzp8KYMFlWJTjIOzoq2fgSHbVMCYCy?=
 =?us-ascii?Q?hy0eTV3MfH65C7/2LmCUpyEHl+XJFMcZ2DNxT03YMHuHqRsGvNdi2le54YtS?=
 =?us-ascii?Q?9zriO752xF72rTB+z9clQoKsLP7pMF2Wh6uUvn/DFh2UCW7hKzxzzp4QSfG2?=
 =?us-ascii?Q?i3bW5gwxs+tGZicIALKJLh7nyE9Tk+Istww9hog7IPausGO5iWB2IYDp3rmq?=
 =?us-ascii?Q?5fmp58ClKAfHScfES9vY+/E0+3sn3iko3Yjck9nEYfJYyYzddwyyc5GZsBoC?=
 =?us-ascii?Q?vKNJ/G9DM0sU6PjDtet+uEkTpiNSyjkX6zcxT8mRa77C0gVKT1qNgb19tHE4?=
 =?us-ascii?Q?e1Ugtt7xrJi8f3D0uxmvSrX3I7/Vws8sEs8NOh4KeNvsPHNzuTb0NYdPRH5F?=
 =?us-ascii?Q?H6AkvBngmf4nurDVT+rHiN8wFFSMntWllmfqMgN/xzWfpVNyyDjsqi0CRbK4?=
 =?us-ascii?Q?jsv18Z7i1T71ZyTzXnGDs4JhDJJiWuN5BGXSY8R0FJTcmhCJRKXoSRDl/Y9D?=
 =?us-ascii?Q?qRjjo0h0ENS/MfpZWl8umCo6664Enovy8X0vtKfJzQiXaMWgV0t/I4bwdqi1?=
 =?us-ascii?Q?p/eXVgpt9IM+B5aiDccbWWHqe/ALnqcyUWH3f0uBKxlPdNv7RuGhW3YU9trg?=
 =?us-ascii?Q?vO5sISysehthB0JE7/0wYy/W0Q+HEXbleXa+ppUj57iyC+D/aL7i9LNQsfeD?=
 =?us-ascii?Q?XO4NqffVPUVO4RRFPIMbe2lGew7OUjQPKnv+Bm4am0mJOVIvNXwt9JRfvDdT?=
 =?us-ascii?Q?DWpgcFgAm3/av9u/WoBYq+k3H1ou581En1+2hzashq55vur/Zjr6GyeV+8cs?=
 =?us-ascii?Q?g0G6M1ZkhTJx2OSXkfnrr3JG4yrtnRAr3Wd/E49IrlBK4DQ9YEysrmGKNeXf?=
 =?us-ascii?Q?Ya98k31AF/8dBIRPMxffnN0dtbeql4jHe7UMaHoFVSe7D3BUOqqH8LS4dqq5?=
 =?us-ascii?Q?tN/h8zNUBZQVZB8wn7ppeN87yKLrJ8/eTeKAY5WY1KjAlAZZMop6Xtykuo5x?=
 =?us-ascii?Q?7X/0A5WwaPh2Gdi/eg3VmhsuKcqo/trIFGESuOnjkBD3wZf84+ic+BxV18Mt?=
 =?us-ascii?Q?FZ/KbFSrbm86OEJRZZFxvbHt9bGdpRyIeVW07ULm8VioHys+BU/tYz8P3FTK?=
 =?us-ascii?Q?Px9hV5Oo3jb981/2WHuw35zzZChLiBV+BgoEVu7hgcKsaMKL+a6KilN+y+Uz?=
 =?us-ascii?Q?9bTRfYEm7ISo+D/wM8p0Dc76kl0qdKEeqItZxIJEeXMIU4C4thcGN9HBt2M5?=
 =?us-ascii?Q?Rt4fyneorclEDgUpuzrI1+icQUIqO+U/kP8gyRZaA3hx41l6z1nqSAVgGE1H?=
 =?us-ascii?Q?/fn4HkYahtivpf5dywTYSDb0vwQdmtjw6rM/js2/HyNQMcmZK/i9JhmghXhH?=
 =?us-ascii?Q?Cr933YbLpXQud0CcKYYG/cU1Lnk+TnpsL3+qcz/dDRBbcAnAacKHW5Y4V+OS?=
 =?us-ascii?Q?3Mp4H5UdoPde1xgNEED45yFbFUjYJe+3oPiOHydQ+j+8EKhlzAJGRdLextOG?=
 =?us-ascii?Q?9+LAHyk4pdyW5R6hmcd8FcMBoQdkxg8dSZPK9lxTmxuviZc+l6LHkW7cbmQd?=
 =?us-ascii?Q?pmduhO4WtYvzrQenyEI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f27e28-2ce2-4554-de0a-08dba4e1f955
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 20:37:46.0730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+IOc02taZBjTFrfvr811OaVttL2aSRshc07chUc+RZSkDahQCoO46S3nTEzgZbcx75xtePkHhJWkDuuZ4kFkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
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
Cc: "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: August 24, 2023 11:52 AM
> To: Zeng, Oak <oak.zeng@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shyti, Andi <andi.shyti@intel.com>;
> chris.p.wilson@linux.intel.com; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context f=
or GGTT
> updates
>=20
> On Tue, Aug 22, 2023 at 11:28:57AM -0400, Oak Zeng wrote:
> > From: Nirmoy Das <nirmoy.das@intel.com>
> >
> > Create a separate blitter context if a platform requires
> > GGTT updates using MI_UPDATE_GTT blitter command.
> >
> > Subsequent patch will introduce methods to update
> > GGTT using this blitter context and MI_UPDATE_GTT blitter
> > command.
> >
> > v2: Fix a typo in comment. (Oak)
> >
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine.h       |  4 ++
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 +++++++++++++++++++-
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
> >  drivers/gpu/drm/i915/gt/intel_gtt.c          |  4 ++
> >  drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 +
> >  5 files changed, 56 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index b58c30ac8ef0..ee36db2fdaa7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *eng=
ine,
> int reg, u32 value)
> >  #define I915_GEM_HWS_SEQNO		0x40
> >  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO
> * sizeof(u32))
> >  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> > +#define I915_GEM_HWS_GGTT_BLIT		0x46
> > +#define I915_GEM_HWS_GGTT_BLIT_ADDR
> 	(I915_GEM_HWS_GGTT_BLIT * sizeof(u32))
> >  #define I915_GEM_HWS_PXP		0x60
> >  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
> sizeof(u32))
> >  #define I915_GEM_HWS_GSC		0x62
> > @@ -356,4 +358,6 @@ u64 intel_clamp_preempt_timeout_ms(struct
> intel_engine_cs *engine, u64 value);
> >  u64 intel_clamp_stop_timeout_ms(struct intel_engine_cs *engine, u64 va=
lue);
> >  u64 intel_clamp_timeslice_duration_ms(struct intel_engine_cs *engine, =
u64
> value);
> >
> > +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool =
ready);
> > +bool intel_engine_blitter_context_ready(struct intel_gt *gt);
> >  #endif /* _INTEL_RINGBUFFER_H_ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index dfb69fc977a0..d8c492a507a4 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -27,6 +27,7 @@
> >  #include "intel_gt_mcr.h"
> >  #include "intel_gt_pm.h"
> >  #include "intel_gt_requests.h"
> > +#include "intel_gtt.h"
> >  #include "intel_lrc.h"
> >  #include "intel_lrc_reg.h"
> >  #include "intel_reset.h"
> > @@ -1419,6 +1420,34 @@ void intel_engine_destroy_pinned_context(struct
> intel_context *ce)
> >  	intel_context_put(ce);
> >  }
> >
> > +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool =
ready)
> > +{
> > +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> > +
> > +	if (engine && engine->blitter_context)
> > +		atomic_set(&engine->blitter_context_ready, ready ? 1 : 0);
> > +}
> > +
> > +bool intel_engine_blitter_context_ready(struct intel_gt *gt)
> > +{
> > +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> > +
> > +	if (engine)
> > +		return atomic_read(&engine->blitter_context_ready) =3D=3D 1;
> > +
> > +	return false;
> > +}
> > +
> > +static struct intel_context *
> > +create_ggtt_blitter_context(struct intel_engine_cs *engine)
> > +{
> > +	static struct lock_class_key kernel;
> > +
> > +	/* MI_UPDATE_GTT can insert up to 512 PTE entries so get a bigger rin=
g
> */
> > +	return intel_engine_create_pinned_context(engine, engine->gt->vm,
> SZ_512K,
> > +
> I915_GEM_HWS_GGTT_BLIT_ADDR,
> > +						  &kernel, "ggtt_blitter_context");
> > +}
> >  static struct intel_context *
> >  create_kernel_context(struct intel_engine_cs *engine)
> >  {
> > @@ -1442,7 +1471,7 @@ create_kernel_context(struct intel_engine_cs
> *engine)
> >   */
> >  static int engine_init_common(struct intel_engine_cs *engine)
> >  {
> > -	struct intel_context *ce;
> > +	struct intel_context *ce, *bce =3D NULL;
> >  	int ret;
> >
> >  	engine->set_default_submission(engine);
> > @@ -1458,6 +1487,15 @@ static int engine_init_common(struct
> intel_engine_cs *engine)
> >  	ce =3D create_kernel_context(engine);
> >  	if (IS_ERR(ce))
> >  		return PTR_ERR(ce);
> > +	/*
> > +	 * Create a separate pinned context for GGTT update using blitter
> > +	 * if a platform require such service.
> > +	 */
> > +	if (i915_ggtt_require_blitter(engine->i915) && engine->id =3D=3D BCS0=
) {
> > +		bce =3D create_ggtt_blitter_context(engine);
> > +		if (IS_ERR(bce))
> > +			return PTR_ERR(bce);
> > +	}
> >
> >  	ret =3D measure_breadcrumb_dw(ce);
> >  	if (ret < 0)
> > @@ -1465,6 +1503,7 @@ static int engine_init_common(struct intel_engine=
_cs
> *engine)
> >
> >  	engine->emit_fini_breadcrumb_dw =3D ret;
> >  	engine->kernel_context =3D ce;
> > +	engine->blitter_context =3D bce;
> >
> >  	return 0;
> >
> > @@ -1537,6 +1576,9 @@ void intel_engine_cleanup_common(struct
> intel_engine_cs *engine)
> >
> >  	if (engine->kernel_context)
> >  		intel_engine_destroy_pinned_context(engine->kernel_context);
> > +	if (engine->blitter_context)
> > +		intel_engine_destroy_pinned_context(engine->blitter_context);
> > +
> >
> >  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
> >  	cleanup_status_page(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index e99a6fa03d45..62095c0d8783 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -415,6 +415,9 @@ struct intel_engine_cs {
> >  	struct llist_head barrier_tasks;
> >
> >  	struct intel_context *kernel_context; /* pinned */
> > +	struct intel_context *blitter_context; /* pinned, only for BCS0 */
> > +	/* mark the blitter engine's availability status */
> > +	atomic_t blitter_context_ready;
> >
> >  	/**
> >  	 * pinned_contexts_list: List of pinned contexts. This list is only
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > index 13944a14ea2d..9c77c97670fe 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > @@ -21,6 +21,10 @@
> >  #include "intel_gt_regs.h"
> >  #include "intel_gtt.h"
> >
> > +bool i915_ggtt_require_blitter(struct drm_i915_private *i915)
> > +{
> > +	return IS_METEORLAKE(i915);
>=20
> Drive-by comment:  this workaround is tied to the Xe_LPM+ media IP, not
> to the MTL platform.  Other platforms that re-use Xe_LPM+ IP will also
> be affected, whereas MTL platforms that lack media, or integrate a
> different media chiplet will not be affected.  So the condition here
> should be:
>=20
>         /* Wa_13010847436 */
>         return MEDIA_VER_FULL(i915) =3D=3D IP_VER(13, 0);

Issue was observed on LNL A0 (fixed in A1), MTL.=20

Not sure whether it is fixed on ARL or not.

For LNL A0, there might be a different wa so this software wa is not needed=
. Double confirming.

For now let's only enable MTL.=20

>=20
> But does this even belong in this patch?  It sounds like patch #3 of the
> series is where you intended to hook up this programming to the specific
> workaround.

This function is called from patch 2. So will keep it to patch 1.

Oak

>=20
>=20
> Matt
>=20
> > +}
> >
> >  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i9=
15)
> >  {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > index 4d6296cdbcfd..9710eb031fb2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > @@ -688,4 +688,6 @@ static inline struct sgt_dma {
> >  	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
> >  }
> >
> > +bool i915_ggtt_require_blitter(struct drm_i915_private *i915);
> > +
> >  #endif
> > --
> > 2.26.3
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
