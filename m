Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB927A22B7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 17:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B7E10E649;
	Fri, 15 Sep 2023 15:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81F310E649
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 15:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694792644; x=1726328644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AoTHrQQZ9dBxmdbMIfrvvt7i68t8piNfAkTcTGqHCio=;
 b=hQWGoBs8ZFOsdHr8EnnNZVkPF2DhIqftd00vBDdbmpO/5jESC5tXlpuV
 CX8zXG68Rb1D3wHjoYe9J9zuxnCP0N9/qTZxEIGB2x/f2bNZK9qcuyScD
 DBBxHLkoUttan8nDm3tK4DepUpAKfM/2moE9vH9r9f4vI5XbSv/PxWNNa
 bqb14/iq5/wDlVIIM6C1rv4rue9Uvn9ktBSjkmStS1Ue6I6mZVs7uBizW
 iTlrR0f6XcaHTCjY4Qppe3hS18rFreGbz6c4DCE2aYn+KjojPaZ7rCpmw
 XwC5fL0oQw0ljvaBFKbwrhJD7MRkdIgg+gLOuM1v2M4MItWlzlK7lqEJ9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="378190092"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="378190092"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:44:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="810568382"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="810568382"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 08:44:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 08:44:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 08:44:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 08:44:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 08:44:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FnV8oMoTpWrq+4YLvRyOyD/HvMKuEBTuPUGvRcURCKjvBcf8ei+RGDDTW6ORWmCKvDT8F27vzqUuLz9KGe3adgM0PsLCrQfW1p8nj3yLa5y0hDCDjzGTF0GiFOeJ8EuGdpxJP8GmGE8/wlNMpjSdDleICPcP+SX86Wn9z3Y+XuBC6yJ03KNa/ldfDixXyP5Ug1KCVtBTA0n7SjmzTs6L1nUhs3Is90Wvxfc010nrj6zJoOP2i8DVRTL/FBnZxsNdTLhF9Bc0kmGDPy4FXDYHX4R/SN/iDhX9aFkp9hFt5uQJWKpdpzE9A1uHivXBfZakfaApAHYRRs/2ohymNMuCYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qwZ0YgJYxezD+csvKLsdwiAzeoUED/RFnsJ3+xuIAuA=;
 b=FDwM6h049Nxb71N2R9q3F+hCxJMnDUdzmnpvX4pM2ctCTUK9sXT6KM4hHxSri42qNJRYK4NsyZYFeDs9X+TYMgGNfD8Rl/3g80JtWDyPajdpkv//BmL8ns3K4wW5M6J2KA9Y3I1MdaCnxo+NGOepPNio/AjeeUIKoOuMpq7TAuGDhj7IFlGkMdiSF1x2v6F3GkPkEOuMEsktAPUjJ/zOo+QR9SPICPuDvOK+KQA+JksCVVFQ5RILXP/n7EeZDg+iXZP0a/yeIYUVrk8S6pJt/c19OP1o79r6u3mK3e68ASRhcKQe8IM5XFwCPCmJ1vGUbS26885e6EmjJijcYPRPjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 15:44:01 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 15:44:01 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/7] drm/i915: Create a kernel context for GGTT updates
Thread-Index: AQHZ5691Ibes0rGnC0WDZ94Eo6zDu7AcB2xw
Date: Fri, 15 Sep 2023 15:44:01 +0000
Message-ID: <SA1PR11MB69914D4F2BA165B196C4BD4B92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-3-nirmoy.das@intel.com>
In-Reply-To: <20230915083412.4572-3-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|SA0PR11MB4592:EE_
x-ms-office365-filtering-correlation-id: 9b93583d-eef9-4523-7b66-08dbb6029528
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ImSgbl9nr3ypEFRIe6CziEiXQ/hw5CTIo9vpHCeNAyNBB02n0TOEC5EaKyMb02KZL+i1I/laPoapuWJ6xIYyrSY4Y8YEcQiDZ4JHIuhuF+OTFobW6zQiG5V0P2zQY9HeHHGcOoLgQGid02cHrnphMpli/Ns8qxvW1uLC866PnJVf1QrwkqcPAJhz/bqocA+blf2VDnwkKGLO3C3gEPe+hCPAkvZUBn75FJtWG9/grizw1McTc8p6yDzO3LvFeHZJaZM9tHlT2nfLb64EaZ4GyW7RKM2SZnohREbl6a3rtnu2kMcPErbMFN1Y3ndV6mjVXoeCMCVQLqMv5rRPOjp3a9swZL1D8GiejBPtE9+mHIsPDIz4H2H1q5lpDAs7gDqBYOScrgDO8pfhU+nfqtKaEbLnatXaKvF/SM9dccidhoMGYspkUNZboB7fzkm5pShhZb8MBNxik9eW3WP3F3bWyA1nlUt6qAuEP+cg/rSR2KSnPWpKYkNBAjf4q16gQ3ZEZz+lOG0afmhCRlt3pchEyy7Jc4lVhxevi6uYVIiq6jtzvRPQC1mWC2a2+tsvIjBq4QvvZfw1T8AZHgSlPnLGeiZNk5OsdvTeolrRnPHXVBaYfBDimH4Ws/n3DNcQCHio
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199024)(1800799009)(186009)(33656002)(2906002)(86362001)(15650500001)(83380400001)(26005)(5660300002)(52536014)(4326008)(8676002)(9686003)(7696005)(8936002)(110136005)(76116006)(71200400001)(6506007)(53546011)(122000001)(82960400001)(41300700001)(38100700002)(38070700005)(478600001)(316002)(66476007)(66946007)(66556008)(64756008)(66446008)(54906003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ed9UAYd25hivCeI6Bbrj2jSd7KLhipAxLEZnDprkEIEK1twHikAkPPhRHIN1?=
 =?us-ascii?Q?Bru671441oGXgVykmDxiY32ZDt01EN0bcHGz8pCSLqciLegIocAJ60JVMg6s?=
 =?us-ascii?Q?WnYo+3hxbyP/N+1fjE6JAYIRy9y88Pk40RU6LfZBBHnrubUXIbnpqwLdgtnq?=
 =?us-ascii?Q?POZ4vFC+KzWw3P4SRBBh0wG2hjUDkpbXfmzQOKGPJK3e4AuCIMRphcxPmqla?=
 =?us-ascii?Q?4ND1CH1rjjH5umjXm99gfY/EKF4doJo2i6jDgz1yOINzjar84c83PY067OHx?=
 =?us-ascii?Q?6L+bfRRTBa5d5aQtCEB3bUQDAgKiM9Han/OA5894odDxsh2FLRXU5uGe565Z?=
 =?us-ascii?Q?LBbZRrddx1/ox/QCJX26K3azHgogpnfbgI9DUHTOrMGTtxw8pocc70PGAzv0?=
 =?us-ascii?Q?J2rwlNhrduwHqvTXq8aLTQskqOLBWgwn8PaLnYq8y2Sj7fm0qCnwic7HOZ2V?=
 =?us-ascii?Q?sWbKhTJdBQbhKM9ICBe++ArHMf7Y04WP2qoXKvma0j3ZexwRDY5i8YhgUz41?=
 =?us-ascii?Q?c2HNzaVisADc6dQmEMAjYOK7ecvf6oyFEiUPoTZhMwLiHO0OjtCEJEl5gKyk?=
 =?us-ascii?Q?fiN8lU9Lj2PT0UuyQ+Gt1cXQ/aGI/CBH2z1k+Qzaj6k3pyt9Habk2DSpi3tc?=
 =?us-ascii?Q?p22sn2O4LG+wTKOr2eGGxXqHPKgL+c9QKC+qHsqzeVI2CxFvXvgkX788H9lk?=
 =?us-ascii?Q?50s/bM4mQlC3vxf4wpyQtzyZ+Ht8smpzIuY6So21opT5F0VwJbdjjzfsLRLX?=
 =?us-ascii?Q?tpsCPs81+FOA7k0AKu8nZ6iqwdcMAL1bukqpr5SarVBtErh4prUTcDUiocUX?=
 =?us-ascii?Q?pykN/v6yoPjHrJZhp2NLnlL9KRRqN84ETLOew2eKtgqgVrXciv1cjRg6jKaT?=
 =?us-ascii?Q?7OpJL/+6rp8Z3I1lOmRSH+6wkcxv8mE3ju6ctzaNAH6gzTJSIhCH0+PoC6wC?=
 =?us-ascii?Q?J+RgZuQW+POP3BxPJVe9BHoY+d17xdcwKUx5W7HoDPRf/EwPh0UIB0L6g3LY?=
 =?us-ascii?Q?daeYZFMgaXZRv5vByl5cxXWlUCqCs9Hxy3Te4grui+HcxgYjjBzqM2A+mpC6?=
 =?us-ascii?Q?5WdieNjKOtGU+TYJUpAMb1vxeQbzOnsX2pHP03a9HKBAcnFjtKarocM1+2vQ?=
 =?us-ascii?Q?7yzIgdH0ozvKPXhYgNX4OkdDszlwkumy0zkJs/5oOGLJ8tKqVJHOrNGLLlr8?=
 =?us-ascii?Q?pHOLChfTx8ETMJ+Fe7IXjWBbatXCV3bIHUKyL6rIxJ3LCs2u7OisY3RuS2tb?=
 =?us-ascii?Q?RAX1YYVgL/So0uVJKOEV+kkAlLPisMJjL7Odm4u3jk1/zYe0+zpbgg/6KBwo?=
 =?us-ascii?Q?li1UJ6JryfS0WlKBTqt24UCK9UFzdimL1L6tONA/AGeKPY5s0haFwhxMx3ua?=
 =?us-ascii?Q?GEOINUN8xg1YISPJ4NQpry5yVx1XXcf196nBZpUo1iSzS4ScLgIOx2CAWt5W?=
 =?us-ascii?Q?aLJI3ezxy7ll5sKphLD6JcVXunPplSNAGdY7/9XcidPVRyx+zELiALHVw3V3?=
 =?us-ascii?Q?k80Y/32Zf3VegultIKtj6xP3ur6h1Z0AMvEif+LEmxVOSxTziUq3ihbpdxgg?=
 =?us-ascii?Q?VhbcKmO++0HlEH6mIqk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b93583d-eef9-4523-7b66-08dbb6029528
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 15:44:01.1499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B9Edg1NXtzTd257ZD8eewz8XRzhqKkOMbUrUBgfuEK+bZeQBWzlGOyi9s40xkULnI084e6hymimTUjcEQu4m2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Friday, September 15, 2023 4:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 2/7] drm/i915: Create a kernel context for GGTT updates
>=20
> Create a separate kernel context if a platform requires
> GGTT updates using MI_UPDATE_GTT blitter command.
>=20
> Subsequent patch will introduce methods to update
> GGTT using this bind context and MI_UPDATE_GTT blitter
> command.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h       |  2 ++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 35 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
>  drivers/gpu/drm/i915/gt/intel_gt.c           | 18 ++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h           |  2 ++
>  5 files changed, 59 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b58c30ac8ef0..40269e4c1e31 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engin=
e,
> int reg, u32 value)
>  #define I915_GEM_HWS_SEQNO		0x40
>  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO
> * sizeof(u32))
>  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> +#define I915_GEM_HWS_GGTT_BIND		0x46
> +#define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND *
> sizeof(u32))
>  #define I915_GEM_HWS_PXP		0x60
>  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
> sizeof(u32))
>  #define I915_GEM_HWS_GSC		0x62
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index dfb69fc977a0..18ae56ea012a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1419,6 +1419,20 @@ void intel_engine_destroy_pinned_context(struct
> intel_context *ce)
>  	intel_context_put(ce);
>  }
>=20
> +static struct intel_context *
> +create_ggtt_bind_context(struct intel_engine_cs *engine)
> +{
> +	static struct lock_class_key kernel;
> +
> +	/*
> +	 * MI_UPDATE_GTT can insert up to 512 PTE entries and there could be
> multiple
> +	 * bind requets at a time so get a bigger ring.
> +	 */
> +	return intel_engine_create_pinned_context(engine, engine->gt->vm,
> SZ_512K,
> +
> I915_GEM_HWS_GGTT_BIND_ADDR,
> +						  &kernel, "ggtt_bind_context");
> +}
> +
>  static struct intel_context *
>  create_kernel_context(struct intel_engine_cs *engine)
>  {
> @@ -1442,7 +1456,7 @@ create_kernel_context(struct intel_engine_cs *engin=
e)
>   */
>  static int engine_init_common(struct intel_engine_cs *engine)
>  {
> -	struct intel_context *ce;
> +	struct intel_context *ce, *bce =3D NULL;
>  	int ret;
>=20
>  	engine->set_default_submission(engine);
> @@ -1458,6 +1472,19 @@ static int engine_init_common(struct intel_engine_=
cs
> *engine)
>  	ce =3D create_kernel_context(engine);
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
> +	/*
> +	 * Create a separate pinned context for GGTT update with blitter engine
> +	 * if a platform require such service. MI_UPDATE_GTT works on other
> +	 * engines as well but BCS should be less busy engine so pick that for
> +	 * GGTT updates.
> +	 */
> +	if (engine->id =3D=3D BCS0) {
> +		bce =3D create_ggtt_bind_context(engine);
> +		if (IS_ERR(bce)) {
> +			intel_engine_destroy_pinned_context(ce);
> +			return PTR_ERR(bce);
> +		}
> +	}
>=20
>  	ret =3D measure_breadcrumb_dw(ce);
>  	if (ret < 0)
> @@ -1465,11 +1492,14 @@ static int engine_init_common(struct intel_engine=
_cs
> *engine)
>=20
>  	engine->emit_fini_breadcrumb_dw =3D ret;
>  	engine->kernel_context =3D ce;
> +	engine->bind_context =3D bce;
>=20
>  	return 0;
>=20
>  err_context:
>  	intel_engine_destroy_pinned_context(ce);
> +	if (bce)
> +		intel_engine_destroy_pinned_context(ce);
>  	return ret;
>  }
>=20
> @@ -1537,6 +1567,9 @@ void intel_engine_cleanup_common(struct
> intel_engine_cs *engine)
>=20
>  	if (engine->kernel_context)
>  		intel_engine_destroy_pinned_context(engine->kernel_context);
> +	if (engine->bind_context)
> +		intel_engine_destroy_pinned_context(engine->bind_context);
> +
>=20
>  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>  	cleanup_status_page(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index a7e677598004..a8f527fab0f0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -416,6 +416,9 @@ struct intel_engine_cs {
>  	struct llist_head barrier_tasks;
>=20
>  	struct intel_context *kernel_context; /* pinned */
> +	struct intel_context *bind_context; /* pinned, only for BCS0 */
> +	/* mark the bind context's availability status */
> +	bool bind_context_ready;
>=20
>  	/**
>  	 * pinned_contexts_list: List of pinned contexts. This list is only
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc843..cd0ff1597db9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1019,3 +1019,21 @@ enum i915_map_type
> intel_gt_coherent_map_type(struct intel_gt *gt,
>  	else
>  		return I915_MAP_WC;
>  }
> +
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
> +{
> +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> +
> +	if (engine && engine->bind_context)
> +		engine->bind_context_ready =3D ready;
> +}
> +
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> +
> +	if (engine)
> +		return engine->bind_context_ready;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h
> b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a4..9e70e625cebc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -180,4 +180,6 @@ enum i915_map_type
> intel_gt_coherent_map_type(struct intel_gt *gt,
>  					      struct drm_i915_gem_object *obj,
>  					      bool always_coherent);
>=20
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
>  #endif /* __INTEL_GT_H__ */
> --
> 2.41.0

