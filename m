Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB067834F1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 23:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF72710E2B6;
	Mon, 21 Aug 2023 21:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88E210E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 21:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692654139; x=1724190139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KvhaLWFHKvI8PgeN4I2mH8JFWtfPltRGuXe0h3xn/pk=;
 b=VERQe6/Wd1wyfm1b75REuSSqlU6uo7gyFum0VKcgCfL4EgJB0Cj7X6xa
 M+4wBuv6bGayp6EE9hNgDQm1L889SD+I2Ovkydp4aoH0hGnHDzO+aRA1/
 Ei/er4L0V253C6YQqirszOik9WnP+qUh22F3QVE0ntdOAMB+xX9lXsU1r
 8rweAqEDnvCquEEnr5MB1KawByAPFHuo2l1KNF2uIor3Q/H2+dK8gp3f5
 fQe+sMm9MatD8hx8Dy3fNUBJC7roxpqSd1uLzEzl1NMQhYwRdzn2wZiXz
 cfinumHJzsjLn5a1qJ240bXxWmvwbKEjxCQ5FMU9t+AFWQ2jBrSnWb41/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373682082"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="373682082"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 14:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="909859178"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="909859178"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2023 14:42:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 14:42:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 14:42:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 14:42:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tw0/EgBiL9Uf0hL6hFXLlfAGwHARn8jv4rn7LORR96zp/DpHSSxQlKAhlrePosCkP/fnnPLTFNMgRoiAUjTwpZ9Uskxk0jwWJCJbRnfO5sgbtvdHCWsvSQ9bzpAxPYYpCfFTQYyl+zAzUb0MDog5qtMpSi9iby7WZQsOEnOJcXS8oqfCUmBiI6UT5vLPZpT4p72e7Ht+ohwwnD46aoRsr4YDTHZ3QZeJS186AvLj6Eg4PSbDBjFBt21DKUO3VFOO0noKsifOQSulT1dpHyldXAc23rhtvhxw7u/ss3C7QsGXzPyH1j3NVa+eUIaxc42lYMio2Jn0wu1O/0ig31NjyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3wr/WvSYI+cc5GUS+vLG7sO8yAhU2z8mIhIenqr3MY=;
 b=F4KL/NJZT77nLgmdYh2yrUrqpmP4VuC/5kU1smOluOOdW122236aYaEKbp2jHyTQNYwGkMom8322TGPSXdp3C6Wv9HfCshBFrkuXOJ5iZ4JDsnUswAwHQoCGmSDHCfL6NjaTkZfgQm3DlL9IKmxUjHldd4nhyp/Dg80wFPhEu3v+HpTX9+p00GOrxAUa5Y7/q31I1FGinQHUmkZkgtUK3hwVM3Vq33xVGKXcTfrXCunnCPQyf1PRYOXu+f1huyD4nmPuP9jss2mY4Uhi15dsnd6PAwMieitpbUJO0F5mKsLmrr7wqly9ia71mQ6F58HdBxtEotxS2M6uQMSle9VOwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH0PR11MB5577.namprd11.prod.outlook.com (2603:10b6:510:eb::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 21:42:12 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4%6]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 21:42:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [CI] drm/i915/gt: Refactor hangcheck selftest to use igt_spinner
Thread-Index: AQHZ0u+Kzf7ee7tvTkiCU3fAoFb47K/1QtHw
Date: Mon, 21 Aug 2023 21:42:12 +0000
Message-ID: <CH0PR11MB544438D1C2A1E609212D0E0FE51EA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230819225001.1040607-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230819225001.1040607-1-andi.shyti@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH0PR11MB5577:EE_
x-ms-office365-filtering-correlation-id: 62d08f1d-f5be-4149-08aa-08dba28f7a86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CkyCit0e6offy3iPGUQ1JisSDgVVmVFeTNZcY6NCRrB6Z7Qb8wbSOguI/IUbeGDDAb+9CqMy2/OmAY24vd0GVZy8SGp00egicQG9yDz+CpMykoJLVrkmy5KnMWk0kO5gV9/exBI35KMyDfsIu9sKpnF4hOOM6zKXqigSgBRG9YSlYSeOGrzeoWLa/uolMgafeQd2XpqbsMe3FiPE1hp2e2gENMfOgwNttiUPQR/uk/4JdVC7kAb4ZsvjLyX9RljQhUmhzKK2mkJviyEuciqXWekq9RogAfacnZuslhxC4+PcUlHEH0hYVvj7d9ZmVijFA0ry+SC0UHyngM4QZTJa1LvmSuBsgLy38xJW/FRkZ8nXVrjvHmaxQWtdmYxC4Ga7bOQyXvftngXamY2TgkyE2/1NxdNB27yvDInzx+AO4lIKss3gY5nKpvHeafer+tEOfmpBTgmwQl/g25Z8cPtVpR+TNmouBZIT5bpMIoIiBCD8lMJOGz/9hw6ypCoMiobaDDichCya9UMxO2W70pTjrlkyHdakwL0pggEO0jjbfJ0o4K7JHAskt7MJQBws9Qdgw2YIPw1Y7GF07XA5KcbMIChBp3NHMxZQS0snCE7TzWD4XOEvHcOMay8wkYntYxXN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(346002)(39860400002)(366004)(186009)(1800799009)(451199024)(66446008)(6916009)(66556008)(66476007)(76116006)(64756008)(66946007)(316002)(9686003)(82960400001)(8676002)(8936002)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(38070700005)(38100700002)(53546011)(6506007)(83380400001)(30864003)(2906002)(86362001)(7696005)(5660300002)(33656002)(26005)(52536014)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y8HEUTzbbdxCPADwr1gbpWgiO2WtsbC8C/EeVBsTY8mGkCAVt+y4aDYh7ddU?=
 =?us-ascii?Q?BF3pvadw6FJFjWD/rGq2xD7mox21sCxx88eezxWY9Ydew2VtsVxTgJE0ujFv?=
 =?us-ascii?Q?eK502S8e+xuQeQePSkvE4wc9WM3w+a8yf8m5VB9dxhiqTsve1j2CtYg7JWJX?=
 =?us-ascii?Q?QQGwRpudvJ6NsuxPlmyxibQe39Ju22biQ6ZoKS4oReuZcpLlPqitLkgrlT7A?=
 =?us-ascii?Q?320NpeaAQncvrcHr19+ZC1xZym/xhH+RzDvx5fSCCMa7Co0FHMiqFuGyhJnO?=
 =?us-ascii?Q?8reOUA50biUIxj90u0cTtKmKRyeNqWmX/7IJWAgtSz9BNP7DneEz5Ddhtv0i?=
 =?us-ascii?Q?+YrodFQ7IQ9NIamcBTi7rNgdBoVCQ+oU0cajsPpqnOVp2mG7ZEYzIN/j4Weo?=
 =?us-ascii?Q?Zb51flrngTfsiiG4oDTEuy5uZwgClzuo6Pm55cBFX6j1tITUCrzJZKfvf0bD?=
 =?us-ascii?Q?qGT5HQUz6ZvO1he3Vt8ZqZv2pGRHZy16FDxra3hPKi+ic9l5oD/xevfzF8Fg?=
 =?us-ascii?Q?6jt404zPut/FRa/ErJJqfgo9qc6gXUs5TEpm9YXaqs8yXjNfxI7Yt3P1NQHs?=
 =?us-ascii?Q?bRmjPeJTYFxnrKKrR/9le/aVO0lb9QjXH/U0T4rXp05KNV3xpvSKZdzRPFZ3?=
 =?us-ascii?Q?tKAKC41TF+DLa2IdfWUN46YAhTo5rb4GDKzYId2YR1uE69411QLoZcGOiM6I?=
 =?us-ascii?Q?Lph1MwXDHg/wtiZq3TdYzfHnCTg8YqwoF29ah2HtEQ8REbAq0Z7tu867HMfs?=
 =?us-ascii?Q?zCz1wPVtXkC+UCPzWTDP5RzRItAlLyl70MRZVyc4Z2pCguaGtpNyYfc8gPFB?=
 =?us-ascii?Q?6g6RgIR+Z2LGjd0TVuckDM7ZE4RKfg1+0M49AaDiXZbVkTmPeemi5yeoifwU?=
 =?us-ascii?Q?nUhRhz35eUvfthM+oNEq9lai94rAwI7J6kgKrSi3sebTqq8NQvLxGqFvFArH?=
 =?us-ascii?Q?hqAQPeeNPJ0xSNFSGOHDNzwqegnqFPQKXqa+l80fqmiCu9ksq4a3wjZS/+kn?=
 =?us-ascii?Q?8EvQHOW5oQ75salHh7ASPmaPpLHuAp754Im88lC7eFj9HlfFplc7iPOK9L2L?=
 =?us-ascii?Q?q5E7clqd5dXPRGespDuhl8ueqtXbmebIGmN1Wn/ChYgW6e20D3mEYQO1Bv39?=
 =?us-ascii?Q?v4IVsOEzGAZkEuENV1IWGXuvbLcvMosKGvu1kP0yl3SArOh81fYvSWWjhXTs?=
 =?us-ascii?Q?OYG5FgHi6ZBjPvVLEPjg5ZK36ZUrAVZlDOS/tAudcaWrm3HB23u+LAvQYxwO?=
 =?us-ascii?Q?GpTbTNsqohLqvWhFEO6xJUZ/Ncf/UodBCxqTgTBOVO2i14p0zcx2X9zE+ejz?=
 =?us-ascii?Q?ilcz5PFrWgOUqU1I8Pfl5OawW4y1j3zw2L3atsf6jGR6TMInY1AvLR+BFjqs?=
 =?us-ascii?Q?JKuz+IMoPoxyf8/4wDVjJ1i/frc6n7cbbL9VwyADsMtkeS8qmqEC4RrOMfbp?=
 =?us-ascii?Q?KwR4rgVGJi2ryDJxONvvYtD9YdaGebqepwaGQJukAlZQmleVsgz+2NkalDaP?=
 =?us-ascii?Q?lmtMR4WAZJNk83dXoRT4mPolGGoaHjP0DJaK4KW03ZEJrLyoudOl7OUcboAI?=
 =?us-ascii?Q?N3WRNTl/5e9/pvU1b3C/5E3KTwY8Jhjuy+oXu9oS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d08f1d-f5be-4149-08aa-08dba28f7a86
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 21:42:12.2606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2VyS00i+95ORWFelfPXPyl2y6Y09eVtOwatqaYWnVMLnQkAz/pL9ZL+1k2oK7OzHs4rgoJ2CgYX11lOqt1af17nezijgtL3+JTocWJ4dmdA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Refactor hangcheck selftest to
 use igt_spinner
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

-----Original Message-----
From: Andi Shyti <andi.shyti@linux.intel.com>=20
Sent: Saturday, August 19, 2023 3:50 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: [CI] drm/i915/gt: Refactor hangcheck selftest to use igt_spinner
>=20
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> The hangcheck live selftest contains duplicate declarations of some
> functions that already exist in igt_spinner.c, such as the creation and
> deconstruction of a spinning batch buffer (spinner) that hangs an engine.
> It's undesireable to have such code duplicated, as the requirements for
> the spinner may change with hardware updates, necessitating both
> execution paths be updated.  To avoid this, have the hangcheck live
> selftest use the declaration from igt_spinner.  This eliminates the need
> for the declarations in the selftest itself, as well as the associated
> local helper structures, so we can erase those.
>=20
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>


Test fails with -62 (ETIME) on intel_selftest_wait_for_rq
It looks like the cause might be me calling intel_context_put too early?
Let me move those calls to later and see if that helps.
Give me some time to implement those changes.
-Jonathan Cavitt


> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 457 ++++++-------------
>  drivers/gpu/drm/i915/selftests/igt_spinner.c |  15 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.h |   9 +
>  3 files changed, 155 insertions(+), 326 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index 0dd4d00ee894e..36376a4ade8e4 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -29,281 +29,40 @@
> =20
>  #define IGT_IDLE_TIMEOUT 50 /* ms; time to wait after flushing between t=
ests */
> =20
> -struct hang {
> -	struct intel_gt *gt;
> -	struct drm_i915_gem_object *hws;
> -	struct drm_i915_gem_object *obj;
> -	struct i915_gem_context *ctx;
> -	u32 *seqno;
> -	u32 *batch;
> -};
> -
> -static int hang_init(struct hang *h, struct intel_gt *gt)
> -{
> -	void *vaddr;
> -	int err;
> -
> -	memset(h, 0, sizeof(*h));
> -	h->gt =3D gt;
> -
> -	h->ctx =3D kernel_context(gt->i915, NULL);
> -	if (IS_ERR(h->ctx))
> -		return PTR_ERR(h->ctx);
> -
> -	GEM_BUG_ON(i915_gem_context_is_bannable(h->ctx));
> -
> -	h->hws =3D i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> -	if (IS_ERR(h->hws)) {
> -		err =3D PTR_ERR(h->hws);
> -		goto err_ctx;
> -	}
> -
> -	h->obj =3D i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> -	if (IS_ERR(h->obj)) {
> -		err =3D PTR_ERR(h->obj);
> -		goto err_hws;
> -	}
> -
> -	i915_gem_object_set_cache_coherency(h->hws, I915_CACHE_LLC);
> -	vaddr =3D i915_gem_object_pin_map_unlocked(h->hws, I915_MAP_WB);
> -	if (IS_ERR(vaddr)) {
> -		err =3D PTR_ERR(vaddr);
> -		goto err_obj;
> -	}
> -	h->seqno =3D memset(vaddr, 0xff, PAGE_SIZE);
> -
> -	vaddr =3D i915_gem_object_pin_map_unlocked(h->obj,
> -						 intel_gt_coherent_map_type(gt, h->obj, false));
> -	if (IS_ERR(vaddr)) {
> -		err =3D PTR_ERR(vaddr);
> -		goto err_unpin_hws;
> -	}
> -	h->batch =3D vaddr;
> -
> -	return 0;
> -
> -err_unpin_hws:
> -	i915_gem_object_unpin_map(h->hws);
> -err_obj:
> -	i915_gem_object_put(h->obj);
> -err_hws:
> -	i915_gem_object_put(h->hws);
> -err_ctx:
> -	kernel_context_close(h->ctx);
> -	return err;
> -}
> -
> -static u64 hws_address(const struct i915_vma *hws,
> -		       const struct i915_request *rq)
> -{
> -	return i915_vma_offset(hws) +
> -	       offset_in_page(sizeof(u32) * rq->fence.context);
> -}
> -
> -static struct i915_request *
> -hang_create_request(struct hang *h, struct intel_engine_cs *engine)
> -{
> -	struct intel_gt *gt =3D h->gt;
> -	struct i915_address_space *vm =3D i915_gem_context_get_eb_vm(h->ctx);
> -	struct drm_i915_gem_object *obj;
> -	struct i915_request *rq =3D NULL;
> -	struct i915_vma *hws, *vma;
> -	unsigned int flags;
> -	void *vaddr;
> -	u32 *batch;
> -	int err;
> -
> -	obj =3D i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> -	if (IS_ERR(obj)) {
> -		i915_vm_put(vm);
> -		return ERR_CAST(obj);
> -	}
> -
> -	vaddr =3D i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_t=
ype(gt, obj, false));
> -	if (IS_ERR(vaddr)) {
> -		i915_gem_object_put(obj);
> -		i915_vm_put(vm);
> -		return ERR_CAST(vaddr);
> -	}
> -
> -	i915_gem_object_unpin_map(h->obj);
> -	i915_gem_object_put(h->obj);
> -
> -	h->obj =3D obj;
> -	h->batch =3D vaddr;
> -
> -	vma =3D i915_vma_instance(h->obj, vm, NULL);
> -	if (IS_ERR(vma)) {
> -		i915_vm_put(vm);
> -		return ERR_CAST(vma);
> -	}
> -
> -	hws =3D i915_vma_instance(h->hws, vm, NULL);
> -	if (IS_ERR(hws)) {
> -		i915_vm_put(vm);
> -		return ERR_CAST(hws);
> -	}
> -
> -	err =3D i915_vma_pin(vma, 0, 0, PIN_USER);
> -	if (err) {
> -		i915_vm_put(vm);
> -		return ERR_PTR(err);
> -	}
> -
> -	err =3D i915_vma_pin(hws, 0, 0, PIN_USER);
> -	if (err)
> -		goto unpin_vma;
> -
> -	rq =3D igt_request_alloc(h->ctx, engine);
> -	if (IS_ERR(rq)) {
> -		err =3D PTR_ERR(rq);
> -		goto unpin_hws;
> -	}
> -
> -	err =3D igt_vma_move_to_active_unlocked(vma, rq, 0);
> -	if (err)
> -		goto cancel_rq;
> -
> -	err =3D igt_vma_move_to_active_unlocked(hws, rq, 0);
> -	if (err)
> -		goto cancel_rq;
> -
> -	batch =3D h->batch;
> -	if (GRAPHICS_VER(gt->i915) >=3D 8) {
> -		*batch++ =3D MI_STORE_DWORD_IMM_GEN4;
> -		*batch++ =3D lower_32_bits(hws_address(hws, rq));
> -		*batch++ =3D upper_32_bits(hws_address(hws, rq));
> -		*batch++ =3D rq->fence.seqno;
> -		*batch++ =3D MI_NOOP;
> -
> -		memset(batch, 0, 1024);
> -		batch +=3D 1024 / sizeof(*batch);
> -
> -		*batch++ =3D MI_NOOP;
> -		*batch++ =3D MI_BATCH_BUFFER_START | 1 << 8 | 1;
> -		*batch++ =3D lower_32_bits(i915_vma_offset(vma));
> -		*batch++ =3D upper_32_bits(i915_vma_offset(vma));
> -	} else if (GRAPHICS_VER(gt->i915) >=3D 6) {
> -		*batch++ =3D MI_STORE_DWORD_IMM_GEN4;
> -		*batch++ =3D 0;
> -		*batch++ =3D lower_32_bits(hws_address(hws, rq));
> -		*batch++ =3D rq->fence.seqno;
> -		*batch++ =3D MI_NOOP;
> -
> -		memset(batch, 0, 1024);
> -		batch +=3D 1024 / sizeof(*batch);
> -
> -		*batch++ =3D MI_NOOP;
> -		*batch++ =3D MI_BATCH_BUFFER_START | 1 << 8;
> -		*batch++ =3D lower_32_bits(i915_vma_offset(vma));
> -	} else if (GRAPHICS_VER(gt->i915) >=3D 4) {
> -		*batch++ =3D MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> -		*batch++ =3D 0;
> -		*batch++ =3D lower_32_bits(hws_address(hws, rq));
> -		*batch++ =3D rq->fence.seqno;
> -		*batch++ =3D MI_NOOP;
> -
> -		memset(batch, 0, 1024);
> -		batch +=3D 1024 / sizeof(*batch);
> -
> -		*batch++ =3D MI_NOOP;
> -		*batch++ =3D MI_BATCH_BUFFER_START | 2 << 6;
> -		*batch++ =3D lower_32_bits(i915_vma_offset(vma));
> -	} else {
> -		*batch++ =3D MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
> -		*batch++ =3D lower_32_bits(hws_address(hws, rq));
> -		*batch++ =3D rq->fence.seqno;
> -		*batch++ =3D MI_NOOP;
> -
> -		memset(batch, 0, 1024);
> -		batch +=3D 1024 / sizeof(*batch);
> -
> -		*batch++ =3D MI_NOOP;
> -		*batch++ =3D MI_BATCH_BUFFER_START | 2 << 6;
> -		*batch++ =3D lower_32_bits(i915_vma_offset(vma));
> -	}
> -	*batch++ =3D MI_BATCH_BUFFER_END; /* not reached */
> -	intel_gt_chipset_flush(engine->gt);
> -
> -	if (rq->engine->emit_init_breadcrumb) {
> -		err =3D rq->engine->emit_init_breadcrumb(rq);
> -		if (err)
> -			goto cancel_rq;
> -	}
> -
> -	flags =3D 0;
> -	if (GRAPHICS_VER(gt->i915) <=3D 5)
> -		flags |=3D I915_DISPATCH_SECURE;
> -
> -	err =3D rq->engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, =
flags);
> -
> -cancel_rq:
> -	if (err) {
> -		i915_request_set_error_once(rq, err);
> -		i915_request_add(rq);
> -	}
> -unpin_hws:
> -	i915_vma_unpin(hws);
> -unpin_vma:
> -	i915_vma_unpin(vma);
> -	i915_vm_put(vm);
> -	return err ? ERR_PTR(err) : rq;
> -}
> -
> -static u32 hws_seqno(const struct hang *h, const struct i915_request *rq=
)
> -{
> -	return READ_ONCE(h->seqno[rq->fence.context % (PAGE_SIZE/sizeof(u32))])=
;
> -}
> -
> -static void hang_fini(struct hang *h)
> -{
> -	*h->batch =3D MI_BATCH_BUFFER_END;
> -	intel_gt_chipset_flush(h->gt);
> -
> -	i915_gem_object_unpin_map(h->obj);
> -	i915_gem_object_put(h->obj);
> -
> -	i915_gem_object_unpin_map(h->hws);
> -	i915_gem_object_put(h->hws);
> -
> -	kernel_context_close(h->ctx);
> -
> -	igt_flush_test(h->gt->i915);
> -}
> -
> -static bool wait_until_running(struct hang *h, struct i915_request *rq)
> -{
> -	return !(wait_for_us(i915_seqno_passed(hws_seqno(h, rq),
> -					       rq->fence.seqno),
> -			     10) &&
> -		 wait_for(i915_seqno_passed(hws_seqno(h, rq),
> -					    rq->fence.seqno),
> -			  1000));
> -}
> -
>  static int igt_hang_sanitycheck(void *arg)
>  {
>  	struct intel_gt *gt =3D arg;
>  	struct i915_request *rq;
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	struct hang h;
> +	struct igt_spinner spin;
>  	int err;
> =20
>  	/* Basic check that we can execute our hanging batch */
> =20
> -	err =3D hang_init(&h, gt);
> +	err =3D igt_spinner_init(&spin, gt);
>  	if (err)
>  		return err;
> =20
>  	for_each_engine(engine, gt, id) {
>  		struct intel_wedge_me w;
> +		struct intel_context *ce;
>  		long timeout;
> =20
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
> =20
> -		rq =3D hang_create_request(&h, engine);
> +		ce =3D intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err =3D PTR_ERR(ce);
> +			pr_err("Failed to create context for %s, err=3D%d\n",
> +			       engine->name, err);
> +			goto fini;
> +		}
> +
> +		rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +		intel_context_put(ce);
> +
>  		if (IS_ERR(rq)) {
>  			err =3D PTR_ERR(rq);
>  			pr_err("Failed to create request for %s, err=3D%d\n",
> @@ -312,10 +71,7 @@ static int igt_hang_sanitycheck(void *arg)
>  		}
> =20
>  		i915_request_get(rq);
> -
> -		*h.batch =3D MI_BATCH_BUFFER_END;
> -		intel_gt_chipset_flush(engine->gt);
> -
> +		igt_spinner_end(&spin);
>  		i915_request_add(rq);
> =20
>  		timeout =3D 0;
> @@ -336,7 +92,7 @@ static int igt_hang_sanitycheck(void *arg)
>  	}
> =20
>  fini:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  	return err;
>  }
> =20
> @@ -686,7 +442,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bo=
ol active)
>  	struct i915_gpu_error *global =3D &gt->i915->gpu_error;
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	struct hang h;
> +	struct igt_spinner spin;
>  	int err =3D 0;
> =20
>  	/* Check that we can issue an engine reset on an idle engine (no-op) */
> @@ -695,7 +451,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bo=
ol active)
>  		return 0;
> =20
>  	if (active) {
> -		err =3D hang_init(&h, gt);
> +		err =3D igt_spinner_init(&spin, gt);
>  		if (err)
>  			return err;
>  	}
> @@ -739,7 +495,17 @@ static int __igt_reset_engine(struct intel_gt *gt, b=
ool active)
>  			}
> =20
>  			if (active) {
> -				rq =3D hang_create_request(&h, engine);
> +				struct intel_context *ce =3D intel_context_create(engine);
> +				if (IS_ERR(ce)) {
> +					err =3D PTR_ERR(ce);
> +					pr_err("[%s] Create context failed: %d!\n",
> +					       engine->name, err);
> +					goto restore;
> +				}
> +
> +				rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +				intel_context_put(ce);
> +
>  				if (IS_ERR(rq)) {
>  					err =3D PTR_ERR(rq);
>  					pr_err("[%s] Create hang request failed: %d!\n",
> @@ -750,11 +516,11 @@ static int __igt_reset_engine(struct intel_gt *gt, =
bool active)
>  				i915_request_get(rq);
>  				i915_request_add(rq);
> =20
> -				if (!wait_until_running(&h, rq)) {
> +				if (!igt_wait_for_spinner(&spin, rq)) {
>  					struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  					pr_err("%s: Failed to start request %llx, at %x\n",
> -					       __func__, rq->fence.seqno, hws_seqno(&h, rq));
> +					       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
>  					intel_engine_dump(engine, &p,
>  							  "%s\n", engine->name);
> =20
> @@ -835,7 +601,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bo=
ol active)
>  	}
> =20
>  	if (active)
> -		hang_fini(&h);
> +		igt_spinner_fini(&spin);
> =20
>  	return err;
>  }
> @@ -967,7 +733,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  	struct intel_engine_cs *engine, *other;
>  	struct active_engine *threads;
>  	enum intel_engine_id id, tmp;
> -	struct hang h;
> +	struct igt_spinner spin;
>  	int err =3D 0;
> =20
>  	/* Check that issuing a reset on one engine does not interfere
> @@ -978,12 +744,9 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  		return 0;
> =20
>  	if (flags & TEST_ACTIVE) {
> -		err =3D hang_init(&h, gt);
> +		err =3D igt_spinner_init(&spin, gt);
>  		if (err)
>  			return err;
> -
> -		if (flags & TEST_PRIORITY)
> -			h.ctx->sched.priority =3D 1024;
>  	}
> =20
>  	threads =3D kmalloc_array(I915_NUM_ENGINES, sizeof(*threads), GFP_KERNE=
L);
> @@ -1057,7 +820,20 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  			}
> =20
>  			if (flags & TEST_ACTIVE) {
> -				rq =3D hang_create_request(&h, engine);
> +				struct intel_context *ce =3D intel_context_create(engine);
> +				if (IS_ERR(ce)) {
> +					err =3D PTR_ERR(ce);
> +					pr_err("[%s] Create context failed: %d!\n",
> +					       engine->name, err);
> +					goto restore;
> +				}
> +
> +				if (flags && TEST_PRIORITY)
> +					ce->gem_context->sched.priority =3D 1024;
> +
> +				rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +				intel_context_put(ce);
> +
>  				if (IS_ERR(rq)) {
>  					err =3D PTR_ERR(rq);
>  					pr_err("[%s] Create hang request failed: %d!\n",
> @@ -1068,11 +844,11 @@ static int __igt_reset_engines(struct intel_gt *gt=
,
>  				i915_request_get(rq);
>  				i915_request_add(rq);
> =20
> -				if (!wait_until_running(&h, rq)) {
> +				if (!igt_wait_for_spinner(&spin, rq)) {
>  					struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  					pr_err("%s: Failed to start request %llx, at %x\n",
> -					       __func__, rq->fence.seqno, hws_seqno(&h, rq));
> +					       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
>  					intel_engine_dump(engine, &p,
>  							  "%s\n", engine->name);
> =20
> @@ -1240,7 +1016,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  		err =3D -EIO;
> =20
>  	if (flags & TEST_ACTIVE)
> -		hang_fini(&h);
> +		igt_spinner_fini(&spin);
> =20
>  	return err;
>  }
> @@ -1299,7 +1075,8 @@ static int igt_reset_wait(void *arg)
>  	struct intel_engine_cs *engine;
>  	struct i915_request *rq;
>  	unsigned int reset_count;
> -	struct hang h;
> +	struct igt_spinner spin;
> +	struct intel_context *ce;
>  	long timeout;
>  	int err;
> =20
> @@ -1312,13 +1089,22 @@ static int igt_reset_wait(void *arg)
> =20
>  	igt_global_reset_lock(gt);
> =20
> -	err =3D hang_init(&h, gt);
> +	err =3D igt_spinner_init(&spin, gt);
>  	if (err) {
> -		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
> +		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
>  		goto unlock;
>  	}
> =20
> -	rq =3D hang_create_request(&h, engine);
> +	ce =3D intel_context_create(engine);
> +	if (IS_ERR(ce)) {
> +		err =3D PTR_ERR(ce);
> +		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> +		goto fini;
> +	}
> +
> +	rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +	intel_context_put(ce);
> +
>  	if (IS_ERR(rq)) {
>  		err =3D PTR_ERR(rq);
>  		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
> @@ -1328,11 +1114,11 @@ static int igt_reset_wait(void *arg)
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> =20
> -	if (!wait_until_running(&h, rq)) {
> +	if (!igt_wait_for_spinner(&spin, rq)) {
>  		struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  		pr_err("%s: Failed to start request %llx, at %x\n",
> -		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
> +		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
>  		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
> =20
>  		intel_gt_set_wedged(gt);
> @@ -1360,7 +1146,7 @@ static int igt_reset_wait(void *arg)
>  out_rq:
>  	i915_request_put(rq);
>  fini:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  unlock:
>  	igt_global_reset_unlock(gt);
> =20
> @@ -1433,7 +1219,8 @@ static int __igt_reset_evict_vma(struct intel_gt *g=
t,
>  	struct task_struct *tsk =3D NULL;
>  	struct i915_request *rq;
>  	struct evict_vma arg;
> -	struct hang h;
> +	struct igt_spinner spin;
> +	struct intel_context *ce;
>  	unsigned int pin_flags;
>  	int err;
> =20
> @@ -1447,9 +1234,9 @@ static int __igt_reset_evict_vma(struct intel_gt *g=
t,
> =20
>  	/* Check that we can recover an unbind stuck on a hanging request */
> =20
> -	err =3D hang_init(&h, gt);
> +	err =3D igt_spinner_init(&spin, gt);
>  	if (err) {
> -		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
> +		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
>  		return err;
>  	}
> =20
> @@ -1475,7 +1262,16 @@ static int __igt_reset_evict_vma(struct intel_gt *=
gt,
>  		goto out_obj;
>  	}
> =20
> -	rq =3D hang_create_request(&h, engine);
> +	ce =3D intel_context_create(engine);
> +	if (IS_ERR(ce)) {
> +		err =3D PTR_ERR(ce);
> +		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> +		goto out_obj;
> +	}
> +
> +	rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +	intel_context_put(ce);
> +
>  	if (IS_ERR(rq)) {
>  		err =3D PTR_ERR(rq);
>  		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
> @@ -1517,11 +1313,11 @@ static int __igt_reset_evict_vma(struct intel_gt =
*gt,
>  	if (err)
>  		goto out_rq;
> =20
> -	if (!wait_until_running(&h, rq)) {
> +	if (!igt_wait_for_spinner(&spin, rq)) {
>  		struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  		pr_err("%s: Failed to start request %llx, at %x\n",
> -		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
> +		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
>  		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
> =20
>  		intel_gt_set_wedged(gt);
> @@ -1571,7 +1367,7 @@ static int __igt_reset_evict_vma(struct intel_gt *g=
t,
>  out_obj:
>  	i915_gem_object_put(obj);
>  fini:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  	if (intel_gt_is_wedged(gt))
>  		return -EIO;
> =20
> @@ -1638,20 +1434,21 @@ static int igt_reset_queue(void *arg)
>  	struct i915_gpu_error *global =3D &gt->i915->gpu_error;
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	struct hang h;
> +	struct igt_spinner spin;
>  	int err;
> =20
>  	/* Check that we replay pending requests following a hang */
> =20
>  	igt_global_reset_lock(gt);
> =20
> -	err =3D hang_init(&h, gt);
> +	err =3D igt_spinner_init(&spin, gt);
>  	if (err)
>  		goto unlock;
> =20
>  	for_each_engine(engine, gt, id) {
>  		struct intel_selftest_saved_policy saved;
>  		struct i915_request *prev;
> +		struct intel_context *ce;
>  		IGT_TIMEOUT(end_time);
>  		unsigned int count;
>  		bool using_guc =3D intel_engine_uses_guc(engine);
> @@ -1668,7 +1465,16 @@ static int igt_reset_queue(void *arg)
>  			}
>  		}
> =20
> -		prev =3D hang_create_request(&h, engine);
> +		ce =3D intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err =3D PTR_ERR(ce);
> +			pr_err("[%s] Create 'prev' context failed: %d!\n", engine->name, err)=
;
> +			goto restore;
> +		}
> +
> +		prev =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +		intel_context_put(ce);
> +
>  		if (IS_ERR(prev)) {
>  			err =3D PTR_ERR(prev);
>  			pr_err("[%s] Create 'prev' hang request failed: %d!\n", engine->name,=
 err);
> @@ -1682,8 +1488,17 @@ static int igt_reset_queue(void *arg)
>  		do {
>  			struct i915_request *rq;
>  			unsigned int reset_count;
> +		=09
> +			ce =3D intel_context_create(engine);
> +			if (IS_ERR(ce)) {
> +				err =3D PTR_ERR(ce);
> +				pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> +				goto restore;
> +			}
> +
> +			rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +			intel_context_put(ce);
> =20
> -			rq =3D hang_create_request(&h, engine);
>  			if (IS_ERR(rq)) {
>  				err =3D PTR_ERR(rq);
>  				pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
> @@ -1715,12 +1530,12 @@ static int igt_reset_queue(void *arg)
>  				goto restore;
>  			}
> =20
> -			if (!wait_until_running(&h, prev)) {
> +			if (!igt_wait_for_spinner(&spin, prev)) {
>  				struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  				pr_err("%s(%s): Failed to start request %llx, at %x\n",
>  				       __func__, engine->name,
> -				       prev->fence.seqno, hws_seqno(&h, prev));
> +				       prev->fence.seqno, hws_seqno(&spin, prev));
>  				intel_engine_dump(engine, &p,
>  						  "%s\n", engine->name);
> =20
> @@ -1768,9 +1583,7 @@ static int igt_reset_queue(void *arg)
>  		pr_info("%s: Completed %d queued resets\n",
>  			engine->name, count);
> =20
> -		*h.batch =3D MI_BATCH_BUFFER_END;
> -		intel_gt_chipset_flush(engine->gt);
> -
> +		igt_spinner_end(&spin);
>  		i915_request_put(prev);
> =20
>  restore:
> @@ -1794,7 +1607,7 @@ static int igt_reset_queue(void *arg)
>  	}
> =20
>  fini:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  unlock:
>  	igt_global_reset_unlock(gt);
> =20
> @@ -1809,7 +1622,8 @@ static int igt_handle_error(void *arg)
>  	struct intel_gt *gt =3D arg;
>  	struct i915_gpu_error *global =3D &gt->i915->gpu_error;
>  	struct intel_engine_cs *engine;
> -	struct hang h;
> +	struct igt_spinner spin;
> +	struct intel_context *ce;
>  	struct i915_request *rq;
>  	struct i915_gpu_coredump *error;
>  	int err;
> @@ -1824,13 +1638,22 @@ static int igt_handle_error(void *arg)
>  	if (!engine || !intel_engine_can_store_dword(engine))
>  		return 0;
> =20
> -	err =3D hang_init(&h, gt);
> +	err =3D igt_spinner_init(&spin, gt);
>  	if (err) {
> -		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
> +		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
>  		return err;
>  	}
> =20
> -	rq =3D hang_create_request(&h, engine);
> +	ce =3D intel_context_create(engine);
> +	if (IS_ERR(ce)) {
> +		err =3D PTR_ERR(ce);
> +		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> +		goto err_fini;
> +	}
> +
> +	rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +	intel_context_put(ce);
> +
>  	if (IS_ERR(rq)) {
>  		err =3D PTR_ERR(rq);
>  		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
> @@ -1840,11 +1663,11 @@ static int igt_handle_error(void *arg)
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> =20
> -	if (!wait_until_running(&h, rq)) {
> +	if (!igt_wait_for_spinner(&spin, rq)) {
>  		struct drm_printer p =3D drm_info_printer(gt->i915->drm.dev);
> =20
>  		pr_err("%s: Failed to start request %llx, at %x\n",
> -		       __func__, rq->fence.seqno, hws_seqno(&h, rq));
> +		       __func__, rq->fence.seqno, hws_seqno(&spin, rq));
>  		intel_engine_dump(rq->engine, &p, "%s\n", rq->engine->name);
> =20
>  		intel_gt_set_wedged(gt);
> @@ -1869,7 +1692,7 @@ static int igt_handle_error(void *arg)
>  err_request:
>  	i915_request_put(rq);
>  err_fini:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  	return err;
>  }
> =20
> @@ -1910,20 +1733,30 @@ static int igt_atomic_reset_engine(struct intel_e=
ngine_cs *engine,
>  				   const struct igt_atomic_section *p)
>  {
>  	struct i915_request *rq;
> -	struct hang h;
> +	struct igt_spinner spin;
> +	struct intel_context *ce;
>  	int err;
> =20
>  	err =3D __igt_atomic_reset_engine(engine, p, "idle");
>  	if (err)
>  		return err;
> =20
> -	err =3D hang_init(&h, engine->gt);
> +	err =3D igt_spinner_init(&spin, engine->gt);
>  	if (err) {
>  		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
>  		return err;
>  	}
> =20
> -	rq =3D hang_create_request(&h, engine);
> +	ce =3D intel_context_create(engine);
> +	if (IS_ERR(ce)) {
> +		err =3D PTR_ERR(ce);
> +		pr_err("[%s] Create context failed: %d!\n", engine->name, err);
> +		goto out;
> +	}
> +
> +	rq =3D igt_spinner_create_request(&spin, ce, MI_NOOP);
> +	intel_context_put(ce);
> +
>  	if (IS_ERR(rq)) {
>  		err =3D PTR_ERR(rq);
>  		pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);
> @@ -1933,12 +1766,12 @@ static int igt_atomic_reset_engine(struct intel_e=
ngine_cs *engine,
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> =20
> -	if (wait_until_running(&h, rq)) {
> +	if (igt_wait_for_spinner(&spin, rq)) {
>  		err =3D __igt_atomic_reset_engine(engine, p, "active");
>  	} else {
>  		pr_err("%s(%s): Failed to start request %llx, at %x\n",
>  		       __func__, engine->name,
> -		       rq->fence.seqno, hws_seqno(&h, rq));
> +		       rq->fence.seqno, hws_seqno(&spin, rq));
>  		intel_gt_set_wedged(engine->gt);
>  		err =3D -EIO;
>  	}
> @@ -1954,7 +1787,7 @@ static int igt_atomic_reset_engine(struct intel_eng=
ine_cs *engine,
> =20
>  	i915_request_put(rq);
>  out:
> -	hang_fini(&h);
> +	igt_spinner_fini(&spin);
>  	return err;
>  }
> =20
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/d=
rm/i915/selftests/igt_spinner.c
> index 8c3e1f20e5a15..fc4f33076ec7b 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -108,15 +108,10 @@ int igt_spinner_pin(struct igt_spinner *spin,
>  	return 0;
>  }
> =20
> -static unsigned int seqno_offset(u64 fence)
> -{
> -	return offset_in_page(sizeof(u32) * fence);
> -}
> -
>  static u64 hws_address(const struct i915_vma *hws,
>  		       const struct i915_request *rq)
>  {
> -	return i915_vma_offset(hws) + seqno_offset(rq->fence.context);
> +	return i915_vma_offset(hws) + offset_in_page(sizeof(u32) * rq->fence.co=
ntext);
>  }
> =20
>  struct i915_request *
> @@ -216,14 +211,6 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  	return err ? ERR_PTR(err) : rq;
>  }
> =20
> -static u32
> -hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
> -{
> -	u32 *seqno =3D spin->seqno + seqno_offset(rq->fence.context);
> -
> -	return READ_ONCE(*seqno);
> -}
> -
>  void igt_spinner_end(struct igt_spinner *spin)
>  {
>  	if (!spin->batch)
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.h b/drivers/gpu/d=
rm/i915/selftests/igt_spinner.h
> index fbe5b1625b05e..faff1008999a5 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.h
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.h
> @@ -40,4 +40,13 @@ void igt_spinner_end(struct igt_spinner *spin);
> =20
>  bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request =
*rq);
> =20
> +static inline u32
> +hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
> +{
> +	u32 *seqno =3D spin->seqno + offset_in_page(sizeof(u32) * rq->fence.con=
text);
> +
> +	return READ_ONCE(*seqno);
> +}
> +
> +
>  #endif
> --=20
> 2.40.1
>=20
>=20
