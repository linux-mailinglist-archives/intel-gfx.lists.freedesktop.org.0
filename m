Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B0F52AD99
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 23:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931151131F7;
	Tue, 17 May 2022 21:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023DE1131D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 21:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652823583; x=1684359583;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tIP4BJWByFbm8N2RDQLJPi9LKCrBgacdjHy52kRe2kg=;
 b=iJ78Fpej3vqBr0kbV7vBRQdgGbJcdhB+ZCXXvuTgZGk+HRhsn6duv/0M
 TDjOot26O2SUT/Q/zMgCYyb1cZo4ZgttcvU/3UuvwNaSzKoK7a0f+HdV7
 YVlYkNvXj0RENdIZWySBE1OX6X2htC6aMl8iye0znrk/4f2C2gUarznfu
 lsn4gAKX6UOmDXtZYLqHhvWwv/BPCd/00MdsQgEDZb7gwOz+ezPwh5BvU
 mKtGRKDbB1O5K//sG6PNFSizMg+b1QhNFXu8W3qY2qYu9s14yanvz/Kr5
 riz1MzNq6ZLURs73qXAVHRola/ARQhMq9TQpeQn954xQbweYgCPpbtcyS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="251241889"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="251241889"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 14:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="660814123"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 17 May 2022 14:39:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 14:39:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 14:39:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 17 May 2022 14:39:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 17 May 2022 14:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QerbjjfExAexf0FWxOO7DOuJQRPZL4fEMKWREHSP51O9DZHqq0tsAlEIi/iJk9tRZoLtAEZVociOKIZX4pa46U2tecUgrucO+r248crlaOTmxIujUZ5RsPJIYYp/hEdCRNx8s2+k2KvSmeTt8n/Y0QQu6ebI+Sbah59V/M6St3J/ogbVIJbxf+cxO2CVRaxrqj8ecviz6VrY35QNu6+RgpSUfE0ymu3VjpHZoe3GWwyRKNZzrA/ot6rF59MKcUaR7jvZMJAGg4dkxEJjn4srw3u6qJG8SkRtsnhoN0FE66pqXi/1o19pnYSctvZCP7nfP+L4lTwwK3A2D7n3Uv+KwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8n1NtsPtohAOJPwoWq/VOXNpMwQNUaI0bnTjkPCx4c=;
 b=kQBW2tpBpvzkS2nTkeXy0yy0owHCyvG2G3pqcDVkh9+GLfCDFJCCiyylTAd6CwhHqSVzl1prY3KJMx+ITsPRSPrVrrwuuKHORTcsXwRK/ODCyO9aZ9+83fVugp8NwUdQDy5tTTku1svUOJNJWVcOWeDig0ZZqy2GoQ6YkkHigEwLxaEd+gJpO+HPhJvmwiKqvh3BYIOe626EfIzUsHwAsftIzVKSrBTmPv7zzuywaugiBAeD3xms2szB5ojWyAXrqUKP0M0vCg00WUpo+CzR8FGkNDjqSM0oHL8iFdMNCzXM3SydMZB4XwBXYX+503YVLXeJX5bp4S9IaUF1aLyIrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 PH0PR11MB4824.namprd11.prod.outlook.com (2603:10b6:510:38::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.14; Tue, 17 May 2022 21:39:40 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::2df3:4862:e431:2f20]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::2df3:4862:e431:2f20%5]) with mapi id 15.20.5250.018; Tue, 17 May 2022
 21:39:40 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, "daniel@ffwll.ch"
 <daniel@ffwll.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC PATCH v2 1/1] drm/i915: Replace shmem memory
 region and object backend with TTM
Thread-Index: AQHYai8Powo6BmNzgEi3itLOAaaNsa0jlkKQ
Date: Tue, 17 May 2022 21:39:40 +0000
Message-ID: <DM5PR11MB13247CDAD675303087053B6BC1CE9@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
 <20220517204513.429930-2-adrian.larumbe@collabora.com>
In-Reply-To: <20220517204513.429930-2-adrian.larumbe@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36a9712a-d3f5-4d0c-36c9-08da384dbf68
x-ms-traffictypediagnostic: PH0PR11MB4824:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4824EBF6FB2B1259D1A17954C1CE9@PH0PR11MB4824.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y+LsuD1XYj5UohXHQ3IQnvSafhd+jlcPvK6UIYIunpcs18wMvATseqnyVQNe+r1tPid5dLqmXb10fILAaU05yfeaxlGmZ3DBcVXU+mjU6pCV8W+cFHaUREdBEL8zUei5KKAGbECDPqO8DLzHl7D3iMeLgIE/1J1Z85buQbHA6aqL1tmu4PDXZWU2Gy8cA6meKRsLv7bVzvX77QGQ0hAdbOlaQzgYvV4Gpo8FQ2pgqercqIevK/TYLPV2Vh2I0PZSLomVAETKwVahEX2hAkvQZVq5JkKBlcn44MNyWjzdc0X1C7gJxHxO4qm/Qi6IGNluicVoqVEltfYrP06jGsHFQyHiif3xwY2obd/UYGhaOO2ia2MSQGXkY3juZPHlZ3auhv7jYROkAQGfcyBXKFT4g/RzPPQyckmva9Jdl6x9+9gaJZwf9TUC7ppFhTfDDl37DwXPuusq2/h8xTa5dl2JJjOt09DTRfOMY1t5adKRcMHCcekxUysa6iCP4Q+uh/xVGC3fLucjeO5NKUj+kFWx5JmL3DoAb7dXs0eeWgh1MhX7mMBUAPKScp8N1qOS6h1aWyOYS4lJ4ajkgAEK11UEvJwMDA4nmpwAa/lJjNRU4N8BUTkyBKjTt/edQc22/zNsWYkaRrJyRy7+tsy4Pwa8VYfb1EjYv8c2n0mmCWSXz+nH5v4bUQq6CwpnQMaOXovRVh3LX0fwYES4sFRNfnVOuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(6506007)(26005)(122000001)(5660300002)(33656002)(2906002)(9686003)(30864003)(7696005)(86362001)(110136005)(66556008)(66446008)(66946007)(64756008)(186003)(66476007)(316002)(38100700002)(52536014)(83380400001)(71200400001)(55016003)(76116006)(8936002)(508600001)(82960400001)(38070700005)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eraXP898bT7EQPbXsK/ZpVwX95Qg0XSRmhBAnKqKbxdyXPW5pW37T01GL0+q?=
 =?us-ascii?Q?FmosnmyNu3HWPRVNfutzIdTYKCs/txYqXLx3cDb1LmlozkuHsu9QvtvcWXGH?=
 =?us-ascii?Q?9MgiZNF4sCPzdsRhoZBPsd/ZsUWYF6wZ58BZwEVFk+lTCOOTfLxsnap+C1rs?=
 =?us-ascii?Q?f8IvPzPtrMq/ImHi5gUKw1TXnfgadbhB79QcQlBus7h28Okqg0/aHPPYe69/?=
 =?us-ascii?Q?eO+iLAaK2I6aHhx1Lxvsr3y3F8VHc63iYAbcbq5WbTtjsjBQ2aeTmbgbVDRH?=
 =?us-ascii?Q?i2CPl3zjp831nWIuF7VCryAJYvKUKymO4rCPvX7yknUK6/uWhvw/Xf4ujjpQ?=
 =?us-ascii?Q?Qii9kykjqU2taaDh49Nwjiz7NC8O/viey9poERPF94+HqzlqjYfLg+Tj+Dac?=
 =?us-ascii?Q?t6PPxIjPzWVbTh2uxcBo2MXaib7xKJmfBjwQCE7ekkFGJMDyJ6cXfLsaQIbr?=
 =?us-ascii?Q?OU27jmW2SC4ztKYFVByhLW34U4kP5Kwgby4k1pKKCgncqlVCGnOCjO1OSV8z?=
 =?us-ascii?Q?Ns9gf0YvzYLtKeM7YJJG9P2pxQjlDkUwpqCYVLV6WHn4MgZkpRJ/OLDaxPgq?=
 =?us-ascii?Q?M28AbFJlS847rck0yKMr4rYU4Ea5D3kc+iiTAIm+9x6UNE6U8iG4VBpZvLXA?=
 =?us-ascii?Q?F90t7XbAESneaufbKtofv/oSEL440zISSDqRstinW8GSWYncBOCOygEhy2XA?=
 =?us-ascii?Q?NfVMh9nQdyeSrSJrkP3WJBllSP+Cl55cdahG9qAEGwsHPEwlLK96g0pQpQHT?=
 =?us-ascii?Q?BoCgKxSMp6dAl5RGZGFvQogcvcxJmyfY4xDwReG8fyKxU/67Y5ziN0vfrGK1?=
 =?us-ascii?Q?Kq7givg/o2gTpW3R0r1upepzw9ATsRJxGmYpNhQAZmanC/tHNN62vohNyFoR?=
 =?us-ascii?Q?bfMUjaFJzKk4bnrBkyoVpZj/AmQOWTaZBzn0XkuzKgtWPBq8nDMKEAFSnuPZ?=
 =?us-ascii?Q?HNW4bGf6sbzuJJqlF64ALzTrluOTYMyzi0CdLVxz9tdPvVMmVLk6iLsM7TSM?=
 =?us-ascii?Q?gghiJRYa5xnEgBO5GE31ZRTT3fO05EL0tpu4qd+oug2HY92q29m454tm/dxb?=
 =?us-ascii?Q?MGa5xyXN65uwUGP8R3zLwMJ5XSQ9KF46ePl28I8tWUmHeYcuzlqFgahgyBz7?=
 =?us-ascii?Q?jiLZSHk9j2ctAKt2ptBhEeisDuK8TTucba/VK3jDNJ14hSqe6poKdEVzebHW?=
 =?us-ascii?Q?/UsCKP26USggoyVuuYt4dHUaFIKvSu7040hbz6bA8z3e0Jw6R5ChFa52sgnc?=
 =?us-ascii?Q?rPEjSj6wiNGxbwxTT/Om0K9ql3pwTjFgf8bVzQjv0XcTaDXlVZ3rKc9LYH9G?=
 =?us-ascii?Q?fVjBnimAWCdtK1+A0Rnid2TgYID1SS30yi0nuA06I7uNMbKti8fhVYsqqxCo?=
 =?us-ascii?Q?wSxDa/35Uqm11bd83gZlxuI6slMgzKLFmGfMx7H7U++NGtvXlNJ7ODEYpLMr?=
 =?us-ascii?Q?TSpV7mfpIzcf7wJBZfdnL2OYYu2T87DJg+jGwpYgSpdHFHMW/XuXgeKTkwxX?=
 =?us-ascii?Q?s90ytPsWtyaIgKJ2O7MaLYHZSlHSiY3is4CqhlMUJC5vNQWPcLumrPBRHMJD?=
 =?us-ascii?Q?ZoCIL0vSV33eJElMNYwBJ7nwdisN8HDo/g5RuYerZvfFyyj+eySktoGl05sX?=
 =?us-ascii?Q?5Q27QXOEdFQw5s71zoQVsdlCQt02+uFOn2bRAFCIihKnYeUE8HlNWlFE5Cun?=
 =?us-ascii?Q?KQ75wrD2Kpag2HeLXZtrEtrl4XT4Dt21frRTuj+uZ8F4stj85AON+vURiuUi?=
 =?us-ascii?Q?6IcKDspAeQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a9712a-d3f5-4d0c-36c9-08da384dbf68
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2022 21:39:40.0636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4nentiykx7gT3FXC2adSLCIcGfIVDC4eryyS9Lj9q6vc8r6p+AETugZgZQVV3KEoKyN2IMAiBZuXQ0mt6TU72D6sVmXzHdfs9G2U/YeGns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4824
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH v2 1/1] drm/i915: Replace shmem memory
 region and object backend with TTM
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Adrian Larumbe
>Sent: Tuesday, May 17, 2022 4:45 PM
>To: daniel@ffwll.ch; intel-gfx@lists.freedesktop.org
>Cc: adrian.larumbe@collabora.com
>Subject: [Intel-gfx] [RFC PATCH v2 1/1] drm/i915: Replace shmem memory
>region and object backend with TTM
>
>Remove shmem region and object backend code as they are now
>unnecessary.
>In the case of objects placed in SMEM and backed by kernel shmem files, th=
e
>file pointer has to be retrieved from the ttm_tt structure, so change this
>as well. This means accessing an shmem-backed BO's file pointer requires
>getting its pages beforehand, unlike in the old shmem backend.
>
>Expand TTM BO creation by handling devices with no LLC so that their
>caching and coherency properties are set accordingly.
>
>Adapt phys backend to put pages of original shmem object in a 'TTM way',
>also making sure its pages are put when a TTM shmem object has no struct
>page.
>
>Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
> drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
> drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
> drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
> drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
> drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
> drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
> drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
> drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
> drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
> 10 files changed, 398 insertions(+), 422 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>index f5062d0c6333..de04ce4210b3 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>@@ -12,6 +12,7 @@
> #include <asm/smp.h>
>
> #include "gem/i915_gem_dmabuf.h"
>+#include "gem/i915_gem_ttm.h"
> #include "i915_drv.h"
> #include "i915_gem_object.h"
> #include "i915_scatterlist.h"
>@@ -94,22 +95,25 @@ static int i915_gem_dmabuf_mmap(struct dma_buf
>*dma_buf, struct vm_area_struct *
> {
> 	struct drm_i915_gem_object *obj =3D dma_buf_to_obj(dma_buf);
> 	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>+	struct file *filp =3D i915_gem_ttm_get_filep(obj);
> 	int ret;
>
>+	GEM_BUG_ON(obj->base.import_attach !=3D NULL);
>+
> 	if (obj->base.size < vma->vm_end - vma->vm_start)
> 		return -EINVAL;
>
> 	if (HAS_LMEM(i915))
> 		return drm_gem_prime_mmap(&obj->base, vma);

Since all of the devices that will have device memory will be true for HAS_=
LMEM,
won't your code path always go to drm_gem_prime_mmap()?

>-	if (!obj->base.filp)
>+	if (!filp)
> 		return -ENODEV;
>
>-	ret =3D call_mmap(obj->base.filp, vma);
>+	ret =3D call_mmap(filp, vma);
> 	if (ret)
> 		return ret;
>
>-	vma_set_file(vma, obj->base.filp);
>+	vma_set_file(vma, filp);
>
> 	return 0;
> }
>@@ -224,6 +228,8 @@ struct dma_buf *i915_gem_prime_export(struct
>drm_gem_object *gem_obj, int flags)
> 	exp_info.priv =3D gem_obj;
> 	exp_info.resv =3D obj->base.resv;
>
>+	GEM_BUG_ON(obj->base.import_attach !=3D NULL);
>+
> 	if (obj->ops->dmabuf_export) {
> 		int ret =3D obj->ops->dmabuf_export(obj);
> 		if (ret)
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>index 0c5c43852e24..d963cf35fdc9 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>@@ -64,7 +64,9 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
>*data,
> 	struct drm_i915_private *i915 =3D to_i915(dev);
> 	struct drm_i915_gem_mmap *args =3D data;
> 	struct drm_i915_gem_object *obj;
>+	struct file *filp;
> 	unsigned long addr;
>+	int ret;
>
> 	/*
> 	 * mmap ioctl is disallowed for all discrete platforms,
>@@ -83,12 +85,20 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
>*data,
> 	if (!obj)
> 		return -ENOENT;
>
>-	/* prime objects have no backing filp to GEM mmap
>-	 * pages from.
>-	 */
>-	if (!obj->base.filp) {
>-		addr =3D -ENXIO;
>-		goto err;
>+	if (obj->base.import_attach)
>+		filp =3D obj->base.filp;

Why is this now ok?  This is the imported object. And it used to give an er=
ror.

If you are importing from a different device, (i.e. an amd device is export=
ing
the object, and you are i915 here), can you even do this?

My understanding was that mmaping was only for the exported object.

Has this changed?

Thanks,

Mike

>+	else {
>+		ret =3D i915_gem_object_pin_pages_unlocked(obj);
>+		if (ret) {
>+			addr =3D ret;
>+			goto err_pin;
>+		}
>+
>+		filp =3D i915_gem_ttm_get_filep(obj);
>+		if (!filp) {
>+			addr =3D -ENXIO;
>+			goto err;
>+		}
> 	}
>
> 	if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
>@@ -96,7 +106,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
>*data,
> 		goto err;
> 	}
>
>-	addr =3D vm_mmap(obj->base.filp, 0, args->size,
>+	addr =3D vm_mmap(filp, 0, args->size,
> 		       PROT_READ | PROT_WRITE, MAP_SHARED,
> 		       args->offset);
> 	if (IS_ERR_VALUE(addr))
>@@ -111,7 +121,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
>*data,
> 			goto err;
> 		}
> 		vma =3D find_vma(mm, addr);
>-		if (vma && __vma_matches(vma, obj->base.filp, addr, args-
>>size))
>+		if (vma && __vma_matches(vma, filp, addr, args->size))
> 			vma->vm_page_prot =3D
>
>	pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
> 		else
>@@ -120,12 +130,18 @@ i915_gem_mmap_ioctl(struct drm_device *dev,
>void *data,
> 		if (IS_ERR_VALUE(addr))
> 			goto err;
> 	}
>+	if (!obj->base.import_attach)
>+		i915_gem_object_unpin_pages(obj);
>+
> 	i915_gem_object_put(obj);
>
> 	args->addr_ptr =3D (u64)addr;
> 	return 0;
>
> err:
>+	if (!obj->base.import_attach)
>+		i915_gem_object_unpin_pages(obj);
>+err_pin:
> 	i915_gem_object_put(obj);
> 	return addr;
> }
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>index e11d82a9f7c3..1b93c975c500 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>@@ -72,8 +72,6 @@ __i915_gem_object_create_user(struct
>drm_i915_private *i915, u64 size,
> 			      struct intel_memory_region **placements,
> 			      unsigned int n_placements);
>
>-extern const struct drm_i915_gem_object_ops i915_gem_shmem_ops;
>-
> void __i915_gem_object_release_shmem(struct drm_i915_gem_object
>*obj,
> 				     struct sg_table *pages,
> 				     bool needs_clflush);
>@@ -592,7 +590,7 @@ i915_gem_object_invalidate_frontbuffer(struct
>drm_i915_gem_object *obj,
>
> int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj,
>u64 offset, void *dst, int size);
>
>-bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
>+bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj);
>
> void __i915_gem_free_object_rcu(struct rcu_head *head);
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
>b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
>index 0d0e46dae559..bb0e6b3a3fbb 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
>@@ -9,6 +9,7 @@
> #include <linux/swap.h>
>
> #include <drm/drm_cache.h>
>+#include <drm/ttm/ttm_tt.h>
>
> #include "gt/intel_gt.h"
> #include "i915_drv.h"
>@@ -16,10 +17,11 @@
> #include "i915_gem_region.h"
> #include "i915_gem_tiling.h"
> #include "i915_scatterlist.h"
>+#include "gem/i915_gem_ttm.h"
>
> static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object
>*obj)
> {
>-	struct address_space *mapping =3D obj->base.filp->f_mapping;
>+	struct address_space *mapping =3D i915_gem_ttm_get_filep(obj)-
>>f_mapping;
> 	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> 	struct scatterlist *sg;
> 	struct sg_table *st;
>@@ -28,6 +30,8 @@ static int i915_gem_object_get_pages_phys(struct
>drm_i915_gem_object *obj)
> 	void *dst;
> 	int i;
>
>+	GEM_BUG_ON(obj->base.import_attach !=3D NULL);
>+
> 	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
> 		return -EINVAL;
>
>@@ -102,10 +106,17 @@ i915_gem_object_put_pages_phys(struct
>drm_i915_gem_object *obj,
> 	__i915_gem_object_release_shmem(obj, pages, false);
>
> 	if (obj->mm.dirty) {
>-		struct address_space *mapping =3D obj->base.filp->f_mapping;
>+		struct address_space *mapping;
>+		struct file *filp;
> 		void *src =3D vaddr;
> 		int i;
>
>+		filp =3D i915_gem_ttm_get_filep(obj);
>+		if (GEM_WARN_ON(filp =3D=3D NULL))
>+			goto free_pages;
>+
>+		mapping =3D filp->f_mapping;
>+
> 		for (i =3D 0; i < obj->base.size / PAGE_SIZE; i++) {
> 			struct page *page;
> 			char *dst;
>@@ -129,6 +140,7 @@ i915_gem_object_put_pages_phys(struct
>drm_i915_gem_object *obj,
> 		obj->mm.dirty =3D false;
> 	}
>
>+free_pages:
> 	sg_free_table(pages);
> 	kfree(pages);
>
>@@ -202,13 +214,23 @@ static int i915_gem_object_shmem_to_phys(struct
>drm_i915_gem_object *obj)
> 	/* Perma-pin (until release) the physical set of pages */
> 	__i915_gem_object_pin_pages(obj);
>
>-	if (!IS_ERR_OR_NULL(pages))
>-		i915_gem_object_put_pages_shmem(obj, pages);
>+	if (!IS_ERR_OR_NULL(pages)) {
>+		struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
>+
>+		if (GEM_WARN_ON(!bo->bdev->funcs->ttm_tt_unpopulate))
>+			return -EINVAL;
>+
>+		if (bo->bdev->funcs->ttm_tt_unpopulate)
>+			bo->bdev->funcs->ttm_tt_unpopulate(bo->bdev, bo-
>>ttm);
>+
>+		if (obj->mm.rsgt)
>+			i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
>+	}
>
> 	i915_gem_object_release_memory_region(obj);
> 	return 0;
>
>-err_xfer:
>+ err_xfer:
> 	if (!IS_ERR_OR_NULL(pages)) {
> 		unsigned int sg_page_sizes =3D i915_sg_dma_sizes(pages->sgl);
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>index 955844f19193..343eb5897a36 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>@@ -11,12 +11,14 @@
> #include <drm/drm_cache.h>
>
> #include "gem/i915_gem_region.h"
>+#include "gem/i915_gem_ttm.h"
> #include "i915_drv.h"
> #include "i915_gem_object.h"
> #include "i915_gem_tiling.h"
> #include "i915_gemfs.h"
> #include "i915_scatterlist.h"
> #include "i915_trace.h"
>+#include "i915_gem_clflush.h"
>
> /*
>  * Move pages to appropriate lru and release the pagevec, decrementing th=
e
>@@ -188,105 +190,6 @@ int shmem_sg_alloc_table(struct drm_i915_private
>*i915, struct sg_table *st,
> 	return ret;
> }
>
>-static int shmem_get_pages(struct drm_i915_gem_object *obj)
>-{
>-	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>-	struct intel_memory_region *mem =3D obj->mm.region;
>-	struct address_space *mapping =3D obj->base.filp->f_mapping;
>-	const unsigned long page_count =3D obj->base.size / PAGE_SIZE;
>-	unsigned int max_segment =3D i915_sg_segment_size();
>-	struct sg_table *st;
>-	struct sgt_iter sgt_iter;
>-	struct page *page;
>-	int ret;
>-
>-	/*
>-	 * Assert that the object is not currently in any GPU domain. As it
>-	 * wasn't in the GTT, there shouldn't be any way it could have been in
>-	 * a GPU cache
>-	 */
>-	GEM_BUG_ON(obj->read_domains & I915_GEM_GPU_DOMAINS);
>-	GEM_BUG_ON(obj->write_domain & I915_GEM_GPU_DOMAINS);
>-
>-rebuild_st:
>-	st =3D kmalloc(sizeof(*st), GFP_KERNEL);
>-	if (!st)
>-		return -ENOMEM;
>-
>-	ret =3D shmem_sg_alloc_table(i915, st, obj->base.size, mem, mapping,
>-				   max_segment);
>-	if (ret)
>-		goto err_st;
>-
>-	ret =3D i915_gem_gtt_prepare_pages(obj, st);
>-	if (ret) {
>-		/*
>-		 * DMA remapping failed? One possible cause is that
>-		 * it could not reserve enough large entries, asking
>-		 * for PAGE_SIZE chunks instead may be helpful.
>-		 */
>-		if (max_segment > PAGE_SIZE) {
>-			for_each_sgt_page(page, sgt_iter, st)
>-				put_page(page);
>-			sg_free_table(st);
>-			kfree(st);
>-
>-			max_segment =3D PAGE_SIZE;
>-			goto rebuild_st;
>-		} else {
>-			dev_warn(i915->drm.dev,
>-				 "Failed to DMA remap %lu pages\n",
>-				 page_count);
>-			goto err_pages;
>-		}
>-	}
>-
>-	if (i915_gem_object_needs_bit17_swizzle(obj))
>-		i915_gem_object_do_bit_17_swizzle(obj, st);
>-
>-	if (i915_gem_object_can_bypass_llc(obj))
>-		obj->cache_dirty =3D true;
>-
>-	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
>-
>-	return 0;
>-
>-err_pages:
>-	shmem_sg_free_table(st, mapping, false, false);
>-	/*
>-	 * shmemfs first checks if there is enough memory to allocate the
>page
>-	 * and reports ENOSPC should there be insufficient, along with the
>usual
>-	 * ENOMEM for a genuine allocation failure.
>-	 *
>-	 * We use ENOSPC in our driver to mean that we have run out of
>aperture
>-	 * space and so want to translate the error from shmemfs back to our
>-	 * usual understanding of ENOMEM.
>-	 */
>-err_st:
>-	if (ret =3D=3D -ENOSPC)
>-		ret =3D -ENOMEM;
>-
>-	kfree(st);
>-
>-	return ret;
>-}
>-
>-static int
>-shmem_truncate(struct drm_i915_gem_object *obj)
>-{
>-	/*
>-	 * Our goal here is to return as much of the memory as
>-	 * is possible back to the system as we are called from OOM.
>-	 * To do this we must instruct the shmfs to drop all of its
>-	 * backing pages, *now*.
>-	 */
>-	shmem_truncate_range(file_inode(obj->base.filp), 0, (loff_t)-1);
>-	obj->mm.madv =3D __I915_MADV_PURGED;
>-	obj->mm.pages =3D ERR_PTR(-EFAULT);
>-
>-	return 0;
>-}
>-
> void __shmem_writeback(size_t size, struct address_space *mapping)
> {
> 	struct writeback_control wbc =3D {
>@@ -329,27 +232,6 @@ void __shmem_writeback(size_t size, struct
>address_space *mapping)
> 	}
> }
>
>-static void
>-shmem_writeback(struct drm_i915_gem_object *obj)
>-{
>-	__shmem_writeback(obj->base.size, obj->base.filp->f_mapping);
>-}
>-
>-static int shmem_shrink(struct drm_i915_gem_object *obj, unsigned int
>flags)
>-{
>-	switch (obj->mm.madv) {
>-	case I915_MADV_DONTNEED:
>-		return i915_gem_object_truncate(obj);
>-	case __I915_MADV_PURGED:
>-		return 0;
>-	}
>-
>-	if (flags & I915_GEM_OBJECT_SHRINK_WRITEBACK)
>-		shmem_writeback(obj);
>-
>-	return 0;
>-}
>-
> void
> __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
> 				struct sg_table *pages,
>@@ -395,220 +277,6 @@ void i915_gem_object_put_pages_shmem(struct
>drm_i915_gem_object *obj, struct sg_
> 	obj->mm.dirty =3D false;
> }
>
>-static void
>-shmem_put_pages(struct drm_i915_gem_object *obj, struct sg_table
>*pages)
>-{
>-	if (likely(i915_gem_object_has_struct_page(obj)))
>-		i915_gem_object_put_pages_shmem(obj, pages);
>-	else
>-		i915_gem_object_put_pages_phys(obj, pages);
>-}
>-
>-static int
>-shmem_pwrite(struct drm_i915_gem_object *obj,
>-	     const struct drm_i915_gem_pwrite *arg)
>-{
>-	struct address_space *mapping =3D obj->base.filp->f_mapping;
>-	char __user *user_data =3D u64_to_user_ptr(arg->data_ptr);
>-	u64 remain, offset;
>-	unsigned int pg;
>-
>-	/* Caller already validated user args */
>-	GEM_BUG_ON(!access_ok(user_data, arg->size));
>-
>-	if (!i915_gem_object_has_struct_page(obj))
>-		return i915_gem_object_pwrite_phys(obj, arg);
>-
>-	/*
>-	 * Before we instantiate/pin the backing store for our use, we
>-	 * can prepopulate the shmemfs filp efficiently using a write into
>-	 * the pagecache. We avoid the penalty of instantiating all the
>-	 * pages, important if the user is just writing to a few and never
>-	 * uses the object on the GPU, and using a direct write into shmemfs
>-	 * allows it to avoid the cost of retrieving a page (either swapin
>-	 * or clearing-before-use) before it is overwritten.
>-	 */
>-	if (i915_gem_object_has_pages(obj))
>-		return -ENODEV;
>-
>-	if (obj->mm.madv !=3D I915_MADV_WILLNEED)
>-		return -EFAULT;
>-
>-	/*
>-	 * Before the pages are instantiated the object is treated as being
>-	 * in the CPU domain. The pages will be clflushed as required before
>-	 * use, and we can freely write into the pages directly. If userspace
>-	 * races pwrite with any other operation; corruption will ensue -
>-	 * that is userspace's prerogative!
>-	 */
>-
>-	remain =3D arg->size;
>-	offset =3D arg->offset;
>-	pg =3D offset_in_page(offset);
>-
>-	do {
>-		unsigned int len, unwritten;
>-		struct page *page;
>-		void *data, *vaddr;
>-		int err;
>-		char c;
>-
>-		len =3D PAGE_SIZE - pg;
>-		if (len > remain)
>-			len =3D remain;
>-
>-		/* Prefault the user page to reduce potential recursion */
>-		err =3D __get_user(c, user_data);
>-		if (err)
>-			return err;
>-
>-		err =3D __get_user(c, user_data + len - 1);
>-		if (err)
>-			return err;
>-
>-		err =3D pagecache_write_begin(obj->base.filp, mapping,
>-					    offset, len, 0,
>-					    &page, &data);
>-		if (err < 0)
>-			return err;
>-
>-		vaddr =3D kmap_atomic(page);
>-		unwritten =3D __copy_from_user_inatomic(vaddr + pg,
>-						      user_data,
>-						      len);
>-		kunmap_atomic(vaddr);
>-
>-		err =3D pagecache_write_end(obj->base.filp, mapping,
>-					  offset, len, len - unwritten,
>-					  page, data);
>-		if (err < 0)
>-			return err;
>-
>-		/* We don't handle -EFAULT, leave it to the caller to check */
>-		if (unwritten)
>-			return -ENODEV;
>-
>-		remain -=3D len;
>-		user_data +=3D len;
>-		offset +=3D len;
>-		pg =3D 0;
>-	} while (remain);
>-
>-	return 0;
>-}
>-
>-static int
>-shmem_pread(struct drm_i915_gem_object *obj,
>-	    const struct drm_i915_gem_pread *arg)
>-{
>-	if (!i915_gem_object_has_struct_page(obj))
>-		return i915_gem_object_pread_phys(obj, arg);
>-
>-	return -ENODEV;
>-}
>-
>-static void shmem_release(struct drm_i915_gem_object *obj)
>-{
>-	if (i915_gem_object_has_struct_page(obj))
>-		i915_gem_object_release_memory_region(obj);
>-
>-	fput(obj->base.filp);
>-}
>-
>-const struct drm_i915_gem_object_ops i915_gem_shmem_ops =3D {
>-	.name =3D "i915_gem_object_shmem",
>-	.flags =3D I915_GEM_OBJECT_IS_SHRINKABLE,
>-
>-	.get_pages =3D shmem_get_pages,
>-	.put_pages =3D shmem_put_pages,
>-	.truncate =3D shmem_truncate,
>-	.shrink =3D shmem_shrink,
>-
>-	.pwrite =3D shmem_pwrite,
>-	.pread =3D shmem_pread,
>-
>-	.release =3D shmem_release,
>-};
>-
>-static int __create_shmem(struct drm_i915_private *i915,
>-			  struct drm_gem_object *obj,
>-			  resource_size_t size)
>-{
>-	unsigned long flags =3D VM_NORESERVE;
>-	struct file *filp;
>-
>-	drm_gem_private_object_init(&i915->drm, obj, size);
>-
>-	if (i915->mm.gemfs)
>-		filp =3D shmem_file_setup_with_mnt(i915->mm.gemfs, "i915",
>size,
>-						 flags);
>-	else
>-		filp =3D shmem_file_setup("i915", size, flags);
>-	if (IS_ERR(filp))
>-		return PTR_ERR(filp);
>-
>-	obj->filp =3D filp;
>-	return 0;
>-}
>-
>-static int shmem_object_init(struct intel_memory_region *mem,
>-			     struct drm_i915_gem_object *obj,
>-			     resource_size_t offset,
>-			     resource_size_t size,
>-			     resource_size_t page_size,
>-			     unsigned int flags)
>-{
>-	static struct lock_class_key lock_class;
>-	struct drm_i915_private *i915 =3D mem->i915;
>-	struct address_space *mapping;
>-	unsigned int cache_level;
>-	gfp_t mask;
>-	int ret;
>-
>-	ret =3D __create_shmem(i915, &obj->base, size);
>-	if (ret)
>-		return ret;
>-
>-	mask =3D GFP_HIGHUSER | __GFP_RECLAIMABLE;
>-	if (IS_I965GM(i915) || IS_I965G(i915)) {
>-		/* 965gm cannot relocate objects above 4GiB. */
>-		mask &=3D ~__GFP_HIGHMEM;
>-		mask |=3D __GFP_DMA32;
>-	}
>-
>-	mapping =3D obj->base.filp->f_mapping;
>-	mapping_set_gfp_mask(mapping, mask);
>-	GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
>-
>-	i915_gem_object_init(obj, &i915_gem_shmem_ops, &lock_class, 0);
>-	obj->mem_flags |=3D I915_BO_FLAG_STRUCT_PAGE;
>-	obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>-	obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>-
>-	if (HAS_LLC(i915))
>-		/* On some devices, we can have the GPU use the LLC (the
>CPU
>-		 * cache) for about a 10% performance improvement
>-		 * compared to uncached.  Graphics requests other than
>-		 * display scanout are coherent with the CPU in
>-		 * accessing this cache.  This means in this mode we
>-		 * don't need to clflush on the CPU side, and on the
>-		 * GPU side we only need to flush internal caches to
>-		 * get data visible to the CPU.
>-		 *
>-		 * However, we maintain the display planes as UC, and so
>-		 * need to rebind when first used as such.
>-		 */
>-		cache_level =3D I915_CACHE_LLC;
>-	else
>-		cache_level =3D I915_CACHE_NONE;
>-
>-	i915_gem_object_set_cache_coherency(obj, cache_level);
>-
>-	i915_gem_object_init_memory_region(obj, mem);
>-
>-	return 0;
>-}
>-
> struct drm_i915_gem_object *
> i915_gem_object_create_shmem(struct drm_i915_private *i915,
> 			     resource_size_t size)
>@@ -634,7 +302,19 @@ i915_gem_object_create_shmem_from_data(struct
>drm_i915_private *dev_priv,
>
> 	GEM_BUG_ON(obj->write_domain !=3D I915_GEM_DOMAIN_CPU);
>
>-	file =3D obj->base.filp;
>+	/*
>+	 *  When using TTM as the main GEM backend, we need to pin the
>pages
>+	 *  after creating the object to access the file pointer
>+	 */
>+	err =3D i915_gem_object_pin_pages_unlocked(obj);
>+	if (err) {
>+		drm_dbg(&dev_priv->drm, "%s pin-pages err=3D%d\n",
>__func__, err);
>+		goto fail_pin;
>+	}
>+
>+	file =3D i915_gem_ttm_get_filep(obj);
>+	GEM_WARN_ON(file =3D=3D NULL);
>+
> 	offset =3D 0;
> 	do {
> 		unsigned int len =3D min_t(typeof(size), size, PAGE_SIZE);
>@@ -662,44 +342,14 @@ i915_gem_object_create_shmem_from_data(struct
>drm_i915_private *dev_priv,
> 		offset +=3D len;
> 	} while (size);
>
>+	i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
>+	i915_gem_object_unpin_pages(obj);
>+
> 	return obj;
>
> fail:
>+	i915_gem_object_unpin_pages(obj);
>+fail_pin:
> 	i915_gem_object_put(obj);
> 	return ERR_PTR(err);
> }
>-
>-static int init_shmem(struct intel_memory_region *mem)
>-{
>-	i915_gemfs_init(mem->i915);
>-	intel_memory_region_set_name(mem, "system");
>-
>-	return 0; /* We have fallback to the kernel mnt if gemfs init failed. */
>-}
>-
>-static int release_shmem(struct intel_memory_region *mem)
>-{
>-	i915_gemfs_fini(mem->i915);
>-	return 0;
>-}
>-
>-static const struct intel_memory_region_ops shmem_region_ops =3D {
>-	.init =3D init_shmem,
>-	.release =3D release_shmem,
>-	.init_object =3D shmem_object_init,
>-};
>-
>-struct intel_memory_region *i915_gem_shmem_setup(struct
>drm_i915_private *i915,
>-						 u16 type, u16 instance)
>-{
>-	return intel_memory_region_create(i915, 0,
>-					  totalram_pages() << PAGE_SHIFT,
>-					  PAGE_SIZE, 0, 0,
>-					  type, instance,
>-					  &shmem_region_ops);
>-}
>-
>-bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj)
>-{
>-	return obj->ops =3D=3D &i915_gem_shmem_ops;
>-}
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>index 4c25d9b2f138..f7e4433cbd4f 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>@@ -21,6 +21,8 @@
> #include "gem/i915_gem_ttm_move.h"
> #include "gem/i915_gem_ttm_pm.h"
> #include "gt/intel_gpu_commands.h"
>+#include "gem/i915_gem_tiling.h"
>+#include "gem/i915_gemfs.h"
>
> #define I915_TTM_PRIO_PURGE     0
> #define I915_TTM_PRIO_NO_PAGES  1
>@@ -37,6 +39,7 @@
>  * @ttm: The base TTM page vector.
>  * @dev: The struct device used for dma mapping and unmapping.
>  * @cached_rsgt: The cached scatter-gather table.
>+ * @bo: TTM buffer object this ttm_tt structure is bound to.
>  * @is_shmem: Set if using shmem.
>  * @filp: The shmem file, if using shmem backend.
>  *
>@@ -50,6 +53,7 @@ struct i915_ttm_tt {
> 	struct ttm_tt ttm;
> 	struct device *dev;
> 	struct i915_refct_sgt cached_rsgt;
>+	struct ttm_buffer_object *bo;
>
> 	bool is_shmem;
> 	struct file *filp;
>@@ -113,6 +117,10 @@ static int i915_ttm_err_to_gem(int err)
> static enum ttm_caching
> i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
> {
>+	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>+
>+	if (GRAPHICS_VER(i915) <=3D 5)
>+		return ttm_uncached;
> 	/*
> 	 * Objects only allowed in system get cached cpu-mappings, or when
> 	 * evicting lmem-only buffers to system for swapping. Other objects
>get
>@@ -202,11 +210,22 @@ static int i915_ttm_tt_shmem_populate(struct
>ttm_device *bdev,
> 		struct address_space *mapping;
> 		gfp_t mask;
>
>-		filp =3D shmem_file_setup("i915-shmem-tt", size,
>VM_NORESERVE);
>+		if (i915->mm.gemfs)
>+			filp =3D shmem_file_setup_with_mnt(i915->mm.gemfs,
>+							 "i915-shmem-tt",
>+							 size,
>+							 VM_NORESERVE);
>+		else
>+			filp =3D shmem_file_setup("i915-shmem-tt", size,
>VM_NORESERVE);
> 		if (IS_ERR(filp))
> 			return PTR_ERR(filp);
>
> 		mask =3D GFP_HIGHUSER | __GFP_RECLAIMABLE;
>+		if (IS_I965GM(i915) || IS_I965G(i915)) {
>+			/* 965gm cannot relocate objects above 4GiB. */
>+			mask &=3D ~__GFP_HIGHMEM;
>+			mask |=3D __GFP_DMA32;
>+		}
>
> 		mapping =3D filp->f_mapping;
> 		mapping_set_gfp_mask(mapping, mask);
>@@ -304,12 +323,14 @@ static struct ttm_tt *i915_ttm_tt_create(struct
>ttm_buffer_object *bo,
> 	if (!i915_tt)
> 		return NULL;
>
>+	i915_tt->bo =3D bo;
>+
> 	if (obj->flags & I915_BO_ALLOC_CPU_CLEAR &&
> 	    man->use_tt)
> 		page_flags |=3D TTM_TT_FLAG_ZERO_ALLOC;
>
> 	caching =3D i915_ttm_select_tt_caching(obj);
>-	if (i915_gem_object_is_shrinkable(obj) && caching =3D=3D ttm_cached) {
>+	if (i915_gem_object_is_shrinkable(obj) && (caching !=3D
>ttm_write_combined)) {
> 		page_flags |=3D TTM_TT_FLAG_EXTERNAL |
> 			      TTM_TT_FLAG_EXTERNAL_MAPPABLE;
> 		i915_tt->is_shmem =3D true;
>@@ -352,11 +373,19 @@ static void i915_ttm_tt_unpopulate(struct
>ttm_device *bdev, struct ttm_tt *ttm)
> {
> 	struct i915_ttm_tt *i915_tt =3D container_of(ttm, typeof(*i915_tt),
>ttm);
> 	struct sg_table *st =3D &i915_tt->cached_rsgt.table;
>+	struct ttm_buffer_object *bo =3D i915_tt->bo;
>+	struct drm_i915_gem_object *obj =3D i915_ttm_to_gem(bo);
>+
>+	if (i915_tt->is_shmem)
>+		__i915_gem_object_release_shmem(obj, st, true);
>
> 	if (st->sgl)
> 		dma_unmap_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL,
>0);
>
> 	if (i915_tt->is_shmem) {
>+		if (i915_gem_object_needs_bit17_swizzle(obj))
>+			i915_gem_object_save_bit_17_swizzle(obj, st);
>+
> 		i915_ttm_tt_shmem_unpopulate(ttm);
> 	} else {
> 		sg_free_table(st);
>@@ -794,6 +823,12 @@ static int __i915_ttm_get_pages(struct
>drm_i915_gem_object *obj,
> 		if (IS_ERR(rsgt))
> 			return PTR_ERR(rsgt);
>
>+		if (i915_gem_object_needs_bit17_swizzle(obj))
>+			i915_gem_object_save_bit_17_swizzle(obj, &rsgt-
>>table);
>+
>+		if (i915_gem_object_can_bypass_llc(obj))
>+			obj->cache_dirty =3D true;
>+
> 		GEM_BUG_ON(obj->mm.rsgt);
> 		obj->mm.rsgt =3D rsgt;
> 		__i915_gem_object_set_pages(obj, &rsgt->table,
>@@ -873,16 +908,19 @@ static int i915_ttm_migrate(struct
>drm_i915_gem_object *obj,
> static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
> 			       struct sg_table *st)
> {
>-	/*
>-	 * We're currently not called from a shrinker, so put_pages()
>-	 * typically means the object is about to destroyed, or called
>-	 * from move_notify(). So just avoid doing much for now.
>-	 * If the object is not destroyed next, The TTM eviction logic
>-	 * and shrinkers will move it out if needed.
>-	 */
>
>-	if (obj->mm.rsgt)
>-		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
>+	if (likely(i915_gem_object_has_struct_page(obj))) {
>+		/*
>+		 * We're currently not called from a shrinker, so put_pages()
>+		 * typically means the object is about to destroyed, or called
>+		 * from move_notify(). So just avoid doing much for now.
>+		 * If the object is not destroyed next, The TTM eviction logic
>+		 * and shrinkers will move it out if needed.
>+		 */
>+		if (obj->mm.rsgt)
>+			i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
>+	} else
>+		i915_gem_object_put_pages_phys(obj, st);
> }
>
> /**
>@@ -979,6 +1017,129 @@ void i915_ttm_adjust_lru(struct
>drm_i915_gem_object *obj)
> 	spin_unlock(&bo->bdev->lru_lock);
> }
>
>+static int
>+i915_ttm_pread(struct drm_i915_gem_object *obj,
>+	       const struct drm_i915_gem_pread *arg)
>+{
>+	if (!i915_gem_object_has_struct_page(obj))
>+		return i915_gem_object_pread_phys(obj, arg);
>+
>+	return -ENODEV;
>+}
>+
>+static int
>+i915_ttm_pwrite(struct drm_i915_gem_object *obj,
>+		const struct drm_i915_gem_pwrite *arg)
>+{
>+	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>+	char __user *user_data =3D u64_to_user_ptr(arg->data_ptr);
>+	struct address_space *mapping;
>+	u64 remain, offset;
>+	struct file *filp;
>+	unsigned int pg;
>+	int err;
>+
>+	/* Caller already validated user args */
>+	GEM_BUG_ON(!access_ok(user_data, arg->size));
>+
>+	if (!i915_gem_object_has_struct_page(obj))
>+		return i915_gem_object_pwrite_phys(obj, arg);
>+
>+	/*
>+	 * We need to pin the pages in order to have access to the filp
>+	 * given by shmem, quite unlike in the legacy GEM shmem backend
>+	 * where it would be available upon object creation
>+	 */
>+	err =3D i915_gem_object_pin_pages_unlocked(obj);
>+	if (err) {
>+		drm_dbg(&i915->drm, "%s pin-pages err=3D%d\n", __func__,
>err);
>+		return err;
>+	}
>+
>+	filp =3D i915_gem_ttm_get_filep(obj);
>+	if (!filp) {
>+		err =3D -ENXIO;
>+		goto error;
>+	}
>+
>+	mapping =3D filp->f_mapping;
>+
>+	if (obj->mm.madv !=3D I915_MADV_WILLNEED) {
>+		err =3D -EFAULT;
>+		goto error;
>+	}
>+
>+	/*
>+	 * Before the pages are instantiated the object is treated as being
>+	 * in the CPU domain. The pages will be clflushed as required before
>+	 * use, and we can freely write into the pages directly. If userspace
>+	 * races pwrite with any other operation; corruption will ensue -
>+	 * that is userspace's prerogative!
>+	 */
>+
>+	remain =3D arg->size;
>+	offset =3D arg->offset;
>+	pg =3D offset_in_page(offset);
>+
>+	do {
>+		unsigned int len, unwritten;
>+		struct page *page;
>+		void *data, *vaddr;
>+		int err;
>+		char c;
>+
>+		len =3D PAGE_SIZE - pg;
>+		if (len > remain)
>+			len =3D remain;
>+
>+		/* Prefault the user page to reduce potential recursion */
>+		err =3D __get_user(c, user_data);
>+		if (err)
>+			goto error;
>+
>+		err =3D __get_user(c, user_data + len - 1);
>+		if (err)
>+			goto error;
>+
>+		err =3D pagecache_write_begin(obj->base.filp, mapping,
>+					    offset, len, 0,
>+					    &page, &data);
>+		if (err < 0)
>+			goto error;
>+
>+		vaddr =3D kmap_atomic(page);
>+		unwritten =3D __copy_from_user_inatomic(vaddr + pg,
>+						      user_data,
>+						      len);
>+		kunmap_atomic(vaddr);
>+
>+		err =3D pagecache_write_end(obj->base.filp, mapping,
>+					  offset, len, len - unwritten,
>+					  page, data);
>+		if (err < 0)
>+			goto error;
>+
>+		/* We don't handle -EFAULT, leave it to the caller to check */
>+		if (unwritten) {
>+			err =3D -ENODEV;
>+			goto error;
>+		}
>+
>+		remain -=3D len;
>+		user_data +=3D len;
>+		offset +=3D len;
>+		pg =3D 0;
>+	} while (remain);
>+
>+	i915_gem_object_unpin_pages(obj);
>+
>+	return 0;
>+
>+error:
>+	i915_gem_object_unpin_pages(obj);
>+	return err;
>+}
>+
> /*
>  * TTM-backed gem object destruction requires some clarification.
>  * Basically we have two possibilities here. We can either rely on the
>@@ -1120,7 +1281,7 @@ static void i915_ttm_unmap_virtual(struct
>drm_i915_gem_object *obj)
> 	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
> }
>
>-static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops =3D {
>+static const struct drm_i915_gem_object_ops i915_gem_ttm_discrete_ops =3D
>{
> 	.name =3D "i915_gem_object_ttm",
> 	.flags =3D I915_GEM_OBJECT_IS_SHRINKABLE |
> 		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
>@@ -1139,6 +1300,23 @@ static const struct drm_i915_gem_object_ops
>i915_gem_ttm_obj_ops =3D {
> 	.mmap_ops =3D &vm_ops_ttm,
> };
>
>+static const struct drm_i915_gem_object_ops
>i915_gem_ttm_obj_integrated_ops =3D {
>+	.name =3D "i915_gem_object_ttm",
>+	.flags =3D I915_GEM_OBJECT_IS_SHRINKABLE |
>+		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
>+
>+	.get_pages =3D i915_ttm_get_pages,
>+	.put_pages =3D i915_ttm_put_pages,
>+	.truncate =3D i915_ttm_truncate,
>+	.shrink =3D i915_ttm_shrink,
>+
>+	.pwrite =3D i915_ttm_pwrite,
>+	.pread =3D i915_ttm_pread,
>+
>+	.adjust_lru =3D i915_ttm_adjust_lru,
>+	.delayed_free =3D i915_ttm_delayed_free,
>+};
>+
> void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
> {
> 	struct drm_i915_gem_object *obj =3D i915_ttm_to_gem(bo);
>@@ -1170,6 +1348,19 @@ void i915_ttm_bo_destroy(struct
>ttm_buffer_object *bo)
> 	}
> }
>
>+/**
>+ * intel_region_ttm_shmem_init - Initialize a memory region for TTM.
>+ * @mem: The region to initialize.
>+ *
>+ * Return: 0 on success, negative error code on failure.
>+ */
>+static int intel_region_ttm_init_shmem(struct intel_memory_region *mem)
>+{
>+	i915_gemfs_init(mem->i915);
>+
>+	return 0; /* Don't error, we can simply fallback to the kernel mnt */
>+}
>+
> /**
>  * __i915_gem_ttm_object_init - Initialize a ttm-backed i915 gem object
>  * @mem: The initial memory region for the object.
>@@ -1196,7 +1387,12 @@ int __i915_gem_ttm_object_init(struct
>intel_memory_region *mem,
> 	int ret;
>
> 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
>-	i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class,
>flags);
>+
>+	if (IS_DGFX(i915))
>+		i915_gem_object_init(obj, &i915_gem_ttm_discrete_ops,
>&lock_class, flags);
>+	else
>+		i915_gem_object_init(obj,
>&i915_gem_ttm_obj_integrated_ops, &lock_class,
>+				     flags);
>
> 	obj->bo_offset =3D offset;
>
>@@ -1206,8 +1402,8 @@ int __i915_gem_ttm_object_init(struct
>intel_memory_region *mem,
>
> 	INIT_RADIX_TREE(&obj->ttm.get_io_page.radix, GFP_KERNEL |
>__GFP_NOWARN);
> 	mutex_init(&obj->ttm.get_io_page.lock);
>-	bo_type =3D (obj->flags & I915_BO_ALLOC_USER) ?
>ttm_bo_type_device :
>-		ttm_bo_type_kernel;
>+	bo_type =3D (obj->ops->mmap_offset && (obj->flags &
>I915_BO_ALLOC_USER)) ?
>+		ttm_bo_type_device : ttm_bo_type_kernel;
>
> 	obj->base.vma_node.driver_private =3D i915_gem_to_ttm(obj);
>
>@@ -1247,10 +1443,32 @@ int __i915_gem_ttm_object_init(struct
>intel_memory_region *mem,
> }
>
> static const struct intel_memory_region_ops ttm_system_region_ops =3D {
>+	.init =3D intel_region_ttm_init_shmem,
> 	.init_object =3D __i915_gem_ttm_object_init,
> 	.release =3D intel_region_ttm_fini,
> };
>
>+/**
>+ * Return: filp.
>+ */
>+struct file *
>+i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj)
>+{
>+	struct drm_device *dev =3D obj->base.dev;
>+	struct ttm_buffer_object *bo;
>+	struct i915_ttm_tt *i915_tt;
>+
>+	bo =3D i915_gem_to_ttm(obj);
>+	if (!bo->ttm) {
>+		drm_dbg(dev, "ttm has not been allocated for bo\n");
>+		return NULL;
>+	}
>+
>+	i915_tt =3D container_of(bo->ttm, typeof(*i915_tt), ttm);
>+
>+	return i915_tt->filp;
>+}
>+
> struct intel_memory_region *
> i915_gem_ttm_system_setup(struct drm_i915_private *i915,
> 			  u16 type, u16 instance)
>@@ -1268,3 +1486,22 @@ i915_gem_ttm_system_setup(struct
>drm_i915_private *i915,
> 	intel_memory_region_set_name(mr, "system-ttm");
> 	return mr;
> }
>+
>+bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj)
>+{
>+	struct intel_memory_region *mr =3D READ_ONCE(obj->mm.region);
>+
>+#ifdef CONFIG_LOCKDEP
>+	if (i915_gem_object_migratable(obj) &&
>+	    i915_gem_object_evictable(obj))
>+		assert_object_held(obj);
>+#endif
>+
>+	/* Review list of placements to make sure object isn't migratable */
>+	if (i915_gem_object_placement_possible(obj,
>INTEL_MEMORY_LOCAL))
>+		return false;
>+
>+	return mr && (mr->type =3D=3D INTEL_MEMORY_SYSTEM &&
>+		      (obj->ops =3D=3D &i915_gem_ttm_obj_integrated_ops ||
>+		       obj->ops =3D=3D &i915_gem_ttm_discrete_ops));
>+}
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>index 73e371aa3850..f00f18db5a8b 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>@@ -92,4 +92,7 @@ static inline bool i915_ttm_cpu_maps_iomem(struct
>ttm_resource *mem)
> 	/* Once / if we support GGTT, this is also false for cached ttm_tts */
> 	return mem->mem_type !=3D I915_PL_SYSTEM;
> }
>+
>+struct file *i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj);
>+
> #endif
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>index a10716f4e717..dc4d9b13cae7 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>@@ -46,7 +46,7 @@ static enum i915_cache_level
> i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource
>*res,
> 		     struct ttm_tt *ttm)
> {
>-	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
>+	return ((HAS_LLC(i915)) &&
> 		!i915_ttm_gtt_binds_lmem(res) &&
> 		ttm->caching =3D=3D ttm_cached) ? I915_CACHE_LLC :
> 		I915_CACHE_NONE;
>@@ -77,7 +77,12 @@ void i915_ttm_adjust_domains_after_move(struct
>drm_i915_gem_object *obj)
> {
> 	struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
>
>-	if (i915_ttm_cpu_maps_iomem(bo->resource) || bo->ttm->caching
>!=3D ttm_cached) {
>+	if (!i915_ttm_cpu_maps_iomem(bo->resource) &&
>+	    bo->ttm->caching =3D=3D ttm_uncached) {
>+		obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>+		obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>+	} else if (i915_ttm_cpu_maps_iomem(bo->resource) ||
>+		 bo->ttm->caching !=3D ttm_cached) {
> 		obj->write_domain =3D I915_GEM_DOMAIN_WC;
> 		obj->read_domains =3D I915_GEM_DOMAIN_WC;
> 	} else {
>diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c
>b/drivers/gpu/drm/i915/gt/shmem_utils.c
>index 402f085f3a02..4f842094e484 100644
>--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
>+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
>@@ -10,6 +10,9 @@
>
> #include "gem/i915_gem_object.h"
> #include "gem/i915_gem_lmem.h"
>+#include "gem/i915_gem_ttm.h"
>+
>+#include "i915_drv.h"
> #include "shmem_utils.h"
>
> struct file *shmem_create_from_data(const char *name, void *data, size_t
>len)
>@@ -30,24 +33,65 @@ struct file *shmem_create_from_data(const char
>*name, void *data, size_t len)
> 	return file;
> }
>
>+static int shmem_flush_object(struct file *file, unsigned long num_pages)
>+{
>+	struct page *page;
>+	unsigned long pfn;
>+
>+	for (pfn =3D 0; pfn < num_pages; pfn++) {
>+		page =3D shmem_read_mapping_page_gfp(file->f_mapping,
>pfn,
>+						   GFP_KERNEL);
>+		if (IS_ERR(page))
>+			return PTR_ERR(page);
>+
>+		set_page_dirty(page);
>+		mark_page_accessed(page);
>+		kunmap(page);
>+		put_page(page);
>+	}
>+
>+	return 0;
>+}
>+
> struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
> {
>+	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> 	struct file *file;
> 	void *ptr;
>+	int err;
>
> 	if (i915_gem_object_is_shmem(obj)) {
>-		file =3D obj->base.filp;
>-		atomic_long_inc(&file->f_count);
>-		return file;
>-	}
>
>-	ptr =3D i915_gem_object_pin_map_unlocked(obj,
>i915_gem_object_is_lmem(obj) ?
>-						I915_MAP_WC :
>I915_MAP_WB);
>-	if (IS_ERR(ptr))
>-		return ERR_CAST(ptr);
>+		GEM_BUG_ON(!i915_gem_object_has_pages(obj));
>
>-	file =3D shmem_create_from_data("", ptr, obj->base.size);
>-	i915_gem_object_unpin_map(obj);
>+		err =3D i915_gem_object_pin_pages_unlocked(obj);
>+		if (err) {
>+			drm_dbg(&i915->drm, "%s pin-pages err=3D%d\n",
>__func__,
>+				err);
>+			return ERR_PTR(err);
>+		}
>+
>+		file =3D i915_gem_ttm_get_filep(obj);
>+		GEM_BUG_ON(!file);
>+
>+		err =3D shmem_flush_object(file, obj->base.size >>
>PAGE_SHIFT);
>+		if (err) {
>+			drm_dbg(&i915->drm, "shmem_flush_object
>failed\n");
>+			i915_gem_object_unpin_pages(obj);
>+			return ERR_PTR(err);
>+		}
>+
>+		atomic_long_inc(&file->f_count);
>+		i915_gem_object_unpin_pages(obj);
>+	} else {
>+		ptr =3D i915_gem_object_pin_map_unlocked(obj,
>i915_gem_object_is_lmem(obj) ?
>+						       I915_MAP_WC :
>I915_MAP_WB);
>+		if (IS_ERR(ptr))
>+			return ERR_CAST(ptr);
>+
>+		file =3D shmem_create_from_data("", ptr, obj->base.size);
>+		i915_gem_object_unpin_map(obj);
>+	}
>
> 	return file;
> }
>diff --git a/drivers/gpu/drm/i915/intel_memory_region.c
>b/drivers/gpu/drm/i915/intel_memory_region.c
>index e38d2db1c3e3..82b6684d7e60 100644
>--- a/drivers/gpu/drm/i915/intel_memory_region.c
>+++ b/drivers/gpu/drm/i915/intel_memory_region.c
>@@ -309,12 +309,7 @@ int intel_memory_regions_hw_probe(struct
>drm_i915_private *i915)
> 		instance =3D intel_region_map[i].instance;
> 		switch (type) {
> 		case INTEL_MEMORY_SYSTEM:
>-			if (IS_DGFX(i915))
>-				mem =3D i915_gem_ttm_system_setup(i915,
>type,
>-								instance);
>-			else
>-				mem =3D i915_gem_shmem_setup(i915, type,
>-							   instance);
>+			mem =3D i915_gem_ttm_system_setup(i915, type,
>instance);
> 			break;
> 		case INTEL_MEMORY_STOLEN_LOCAL:
> 			mem =3D i915_gem_stolen_lmem_setup(i915, type,
>instance);
>--
>2.35.1

