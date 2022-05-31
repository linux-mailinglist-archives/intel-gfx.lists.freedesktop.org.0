Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 137455396CD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF52610E084;
	Tue, 31 May 2022 19:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1314F10E084
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024576; x=1685560576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RVqp7NleToQkjXDntD+OlSoHtgtGyhkzXkvIqLneRzY=;
 b=XRTnr3qbpf6OrISUp0odcsUXmnxxhvana99VEffiEC/sI2mV1LvqrJr3
 6aPPESZwU2oe96B/Sjb82vnYH9Rbtw01WIqVBpbzUo2gRwk/8C1St0K4r
 C/w2JU9jbgPcpoQ77eQGkfxggIJBplsoj2ISvqjcWOJ+0I/j9Co2poCF1
 /iclJ30O2YNxxMkZYboUm/qi4OCiqW2PHW5bws4ecZUBXghp6pEkNHe6O
 m8Rdz1MPipfFaqx4tGdW1Q4ku+OSTdeTe08oA6U/U9UhtSNkQzR2O/pNd
 FuhpJ1ZvxgmsnO+UvUkrPUUYNOz6kgTpQttR911kHXXLOLVuZKeXZMm5m w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275365382"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275365382"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="633183509"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 31 May 2022 12:16:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 12:16:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 12:16:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 12:16:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 12:16:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQLvJhDelyO/12Kgh4QzyWDc+IypNT89qKvIJRzuRdGUyi2VaZo8X3losD/GIICn+Ou8XB55ZaPlePYNL3Ts0sShrEUE0EMlSVQ/uQlspzH6VtBJhKDpy+JbMY+MOR4Z/j+a4EgBJksMlC26sg2cZc4104feqmJ1U4kecsSoiCNjvnLhsTnJ4XteSkf/9yBYeatbOBjcOByqwbuV/xHAUHS/Ju8yhbgdlDGAncZg6S8dGBC0IkYln4xCD9wTiWH5XPDsMFyY7RgeMkhL4ORrhqt4zlQCGzHnhT/LRxE9b/Dfb/BhdExOKqEl24d2Qdf8U0SpNcSI9H838qMP/O//ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fk1G0jwCsSTxwq5Ks65X8Gbn4j5LgxCtNLYI94yxsUw=;
 b=MPdkqPDVV4OevuKt+V6tOhcQtGT6syaUPJ0xQdTsOGL/oujstNDfJuZlFFREbbHgmkdIIt9iq5AHsv1aL5F6/FJV7JA+IrMJGaJ5HXcHj2rX5maqMOWg3lznvkwWJyS6waWYQeoKOElq5xtqiVjuA0prXSwa79qsziTU0QwQz6j6LA49UrSApQshGwjDeDW3Aco6wX/H9dztQcDFXLpprEwx/ltecF/cbwl0+s4kWOg/Kxuk6sGpYUkoD8frIpSJuLQG4EijWTXzBc7hjprj6r9GwgP2fAajIqr9HDzE/jUEUzsQsv8KeHdYnwD5fyOG6iMna4o4PK4ssJdGz6FUjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 SA0PR11MB4637.namprd11.prod.outlook.com (2603:10b6:806:97::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.13; Tue, 31 May 2022 19:16:12 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::79c1:20d:d786:eba9]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::79c1:20d:d786:eba9%11]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 19:16:12 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "airlied@linux.ie" <airlied@linux.ie>, "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [PATCH 1/2] drm/i915/dmabuf: dmabuf cleanup
Thread-Index: AQHYYXzH6kvobRMiSU+dYOpQZ/qhfa05gqoQ
Date: Tue, 31 May 2022 19:16:12 +0000
Message-ID: <DM5PR11MB132406A08181069EC555EC91C1DC9@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20220506190847.480320-1-michael.j.ruhl@intel.com>
 <20220506190847.480320-2-michael.j.ruhl@intel.com>
In-Reply-To: <20220506190847.480320-2-michael.j.ruhl@intel.com>
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
x-ms-office365-filtering-correlation-id: a5790157-3a5b-4a71-fb52-08da433a06ce
x-ms-traffictypediagnostic: SA0PR11MB4637:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SA0PR11MB4637A617578393B05D04B229C1DC9@SA0PR11MB4637.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D293aXuGLx4HflXzWqFn9+BtZ6gayGddY2ACeizVs2FmxuqOlo5P6wsjGXPgudOoXUd4wqKGtJBDRt/5V6lTPKgnOsp1f9NCP1ymAyxDIUh72uVV66xWQfuPaoRf9cAilbybjvA9uYZerWVjtOvqnGfkaj1wTWgOClE2qBXHOhzaJeL0EeJ9/5iaDEGRvAWDvFG3xQ6T+CPCsu2+IqTvkFsmpGlQW3uzWFUTkt2RF+sQL6AV6FTWrawCfIojPeu1m9cdnLpwGK5p1TIQ61FfJ6JVbkiEspxvnaPSR/Db4uGIIzyyxPLvu9kXcDpPA3JvPf97cLrm7lj9KSfK9p6X9t5wXh7RYBJu1NfMDKSZ8QZ51eF/GipVgFg4lyPULNeB40K8UvTz0+4xFJCUIE2H8F9IdO/qetk+7X6UQUJUCE6lSSfil/V4psVI9uqp4tXdDa+IPnsulCmweMmAsDhmDq+I9WC68fgDK+7ahFR86mToxz0olDUlJxLujYGXWvQk142DFz1E69jDXLxBUhWxDGsQIpJ3VewWEK9TQ1At4FtKQYdgdJg16g9uf8gOsU8azZAYdfP+XTIy6dbndNvxlVBb2h2G6cBUeW6Xim+gevyTHx3738rWyb1jBwsO5BeNVbFJHgbtVz979Gsp1vhf4fx/2fh5wfHyOv8OSGNDKLxqhg5bx1Km1bu4SfS9E8XLwqg+TPaN7qvddbXPqfi40w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(186003)(38100700002)(8676002)(316002)(110136005)(4326008)(54906003)(66476007)(76116006)(66446008)(38070700005)(83380400001)(66556008)(66946007)(64756008)(508600001)(8936002)(7696005)(6506007)(86362001)(52536014)(5660300002)(33656002)(122000001)(82960400001)(9686003)(26005)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gcJvWwz0NXNAGUsXRxOyQnXEdKy2ku7FRHvPiVhBU45vnG3p5Zvs03Ralmtt?=
 =?us-ascii?Q?yGqOPTrVNTbAjGBTUPIVevLhKVF09yLnDkeX5MsROTY13MUdW8sGT4Ol+DBW?=
 =?us-ascii?Q?3uCCcRj5YL+UrTg3Nj0CxsdvfY7VyTNAMAm5Zm2iWPdIJrss7KWDl4wx8GXy?=
 =?us-ascii?Q?ucPYtIEkVymLWg7wUOj1klaD3pE9I1u6qvwjnzFh2QPj/6kTA2kz4XGEnB1L?=
 =?us-ascii?Q?B3uKwLecZvBLg/rcDWRgNjmKiUC6p1pMPzFtkH7iXCwP0DEx4R8PXquGScHP?=
 =?us-ascii?Q?FYmnp3sI2lUnndaC+JHk4Ba196m8Ykwq2GDrYqUAS4wSBYkXGHrjF/nKhQSc?=
 =?us-ascii?Q?Uglz1NWJ+gj/O72oXIwWTN1ekUsn4rmvSaGRw7E8oWQ27assoiCGJ+beeaP9?=
 =?us-ascii?Q?vcVOkZWNy0mkzSdf4BvWhG4D0TDtLVeI9NiQSbnfAmycLRN+hkyS3eOiRrMD?=
 =?us-ascii?Q?bGzZS1Iye9QeN+q7pWp8Q85tdFDcaPJKxTJpoXWF8RgX7/friPnw+axfmWuN?=
 =?us-ascii?Q?7Fsb7pCtI5YRh12HSnfC5tZe2MgZoip5vcxkFYth8t3lazos5cF/bnswbV4M?=
 =?us-ascii?Q?UqbeCZZw08H6JfOspOwWCYsPVVELnVNTSRGage877FA9SrQFiDoyxmdyIAfc?=
 =?us-ascii?Q?q+86obiXDgELc5wsrXrpS81h/P6bmCtGPcPB2EAKB8ru/FDVSNf3m66t07eB?=
 =?us-ascii?Q?nJKsJIfGA9sZSJD0WbTvh8T1BN8syMyToJuL+OT/QOIVohaFdhHJTnyV4Cf9?=
 =?us-ascii?Q?d7+oDen90LHWfQozkvd4TwBqbBK7X7ef9hAq38YnX07F596wHwgVIV+B6Ozm?=
 =?us-ascii?Q?2r2tqRMMpYv3cvRY6qpPbyJYcEYvDD3IuDLBebaVx4Yw7ldsJcfaRYC1KO4O?=
 =?us-ascii?Q?F7NM64KEGdHaxUA9n1VpZiMY4oETwGAYZ3onik/lberxPBVzvn5D/GZA46uM?=
 =?us-ascii?Q?XWfj79OO/D9eNB4BHyb3lk4KGbrob26TkhhGnyZrsggd+MrL26BfsZ9x8sJy?=
 =?us-ascii?Q?ra/UgVkxh58R4BEOOwzM9EZdRfZ8HggF9xItWQzO5yYQ7LV5EuT5p1fIQJ9m?=
 =?us-ascii?Q?UXIXH+J2tUeosGFgKw8KNa2q8A7oHuti3mJB0BohFPJ5q8jnqt3gWXZlnHTu?=
 =?us-ascii?Q?d+Qvi6uUh9hpG0cFon/jVTfTWo0aRNtRK6VFPZHJjIl00xgQcVcnssNFH1XR?=
 =?us-ascii?Q?6lbGcn877/8EvQWTk3HsliqRuSlsN1NRnapRyoJ+Rbd3lX6OdFCb+EZ13ftD?=
 =?us-ascii?Q?ZmoOeGbVM5YqB+xT/S1tKcqTVBNtm46vp5HlNXJNoSlWD0FitJZ8jWowsde9?=
 =?us-ascii?Q?T5188UQGMWmnK5XE/fIJYh9oAPrYQSGwno71L8U1taFWsP7cj1p0Plcidcdo?=
 =?us-ascii?Q?xsLEP/MOy+zJ4JZLracfiqlms+7OLLjNKuYD+05s6QFKHm5uVyTdo48fMd5R?=
 =?us-ascii?Q?W4pBJTBNux6nlWUL/4juc/p1b4jPu52DFPAaR3Ubvtp+LiRtsM7qcaMYTyu0?=
 =?us-ascii?Q?szO9HxSkrG0GbUHTcinfnn5PnuKjVQEr3XNfT0t1S4M/bc0S5HluYscCN032?=
 =?us-ascii?Q?cJIrVnkauAOSkm6me3r4oQVAGFA0L7F4l9S8847T8JRCNrUg83gHoZo/+N+6?=
 =?us-ascii?Q?+abFntWvLIg81TAM8KN6eOWp1KeGutiHG4DrzL/h9gmG4OSSQPL1gPTnE3GA?=
 =?us-ascii?Q?6reJMcSQ5IB8aNjkJBpHqfYmzLN0Uj/mXQh2uIDyp7SZtlmXjlO+Kg7mIjRL?=
 =?us-ascii?Q?6V1m5tIezHES4mYFA0uwYQdysnZiFcc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5790157-3a5b-4a71-fb52-08da433a06ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 19:16:12.7582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q8BKwm+Q56zRNtwxoonsTLJpfmQAk1J5S0hat/8FmvkOhh1qUg6mkdEvIOboL4AB0LymudSrSRXiVSHGQLmNbPMweEf0p/+9G97lE4VtM5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4637
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: dmabuf cleanup
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
Cc: "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ping?

Any comments on this cleanup and the open coding fix (patch 2?)

Thanks,

Mike


>-----Original Message-----
>From: Ruhl, Michael J <michael.j.ruhl@intel.com>
>Sent: Friday, May 6, 2022 3:09 PM
>To: intel-gfx@lists.freedesktop.org; airlied@linux.ie; daniel@ffwll.ch
>Cc: tvrtko.ursulin@linux.intel.com; De Marchi, Lucas
><lucas.demarchi@intel.com>; Ruhl, Michael J <michael.j.ruhl@intel.com>;
>Ursulin, Tvrtko <tvrtko.ursulin@intel.com>
>Subject: [PATCH 1/2] drm/i915/dmabuf: dmabuf cleanup
>
>Some minor cleanup of some variables for consistency.
>
>Normalize struct sg_table to sgt.
>Normalize struct dma_buf_attachment to attach.
>checkpatch issues sizeof(), !NULL updates.
>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 47 ++++++++++++----------
> 1 file changed, 25 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>index f5062d0c6333..5f327eac26e6 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>@@ -25,43 +25,46 @@ static struct drm_i915_gem_object
>*dma_buf_to_obj(struct dma_buf *buf)
> 	return to_intel_bo(buf->priv);
> }
>
>-static struct sg_table *i915_gem_map_dma_buf(struct
>dma_buf_attachment *attachment,
>+static struct sg_table *i915_gem_map_dma_buf(struct
>dma_buf_attachment *attach,
> 					     enum dma_data_direction dir)
> {
>-	struct drm_i915_gem_object *obj =3D dma_buf_to_obj(attachment-
>>dmabuf);
>-	struct sg_table *st;
>+	struct drm_i915_gem_object *obj =3D dma_buf_to_obj(attach-
>>dmabuf);
>+	struct sg_table *sgt;
> 	struct scatterlist *src, *dst;
> 	int ret, i;
>
>-	/* Copy sg so that we make an independent mapping */
>-	st =3D kmalloc(sizeof(struct sg_table), GFP_KERNEL);
>-	if (st =3D=3D NULL) {
>+	/*
>+	 * Make a copy of the object's sgt, so that we can make an
>independent
>+	 * mapping
>+	 */
>+	sgt =3D kmalloc(sizeof(*sgt), GFP_KERNEL);
>+	if (!sgt) {
> 		ret =3D -ENOMEM;
> 		goto err;
> 	}
>
>-	ret =3D sg_alloc_table(st, obj->mm.pages->nents, GFP_KERNEL);
>+	ret =3D sg_alloc_table(sgt, obj->mm.pages->nents, GFP_KERNEL);
> 	if (ret)
> 		goto err_free;
>
> 	src =3D obj->mm.pages->sgl;
>-	dst =3D st->sgl;
>+	dst =3D sgt->sgl;
> 	for (i =3D 0; i < obj->mm.pages->nents; i++) {
> 		sg_set_page(dst, sg_page(src), src->length, 0);
> 		dst =3D sg_next(dst);
> 		src =3D sg_next(src);
> 	}
>
>-	ret =3D dma_map_sgtable(attachment->dev, st, dir,
>DMA_ATTR_SKIP_CPU_SYNC);
>+	ret =3D dma_map_sgtable(attach->dev, sgt, dir,
>DMA_ATTR_SKIP_CPU_SYNC);
> 	if (ret)
> 		goto err_free_sg;
>
>-	return st;
>+	return sgt;
>
> err_free_sg:
>-	sg_free_table(st);
>+	sg_free_table(sgt);
> err_free:
>-	kfree(st);
>+	kfree(sgt);
> err:
> 	return ERR_PTR(ret);
> }
>@@ -236,15 +239,15 @@ struct dma_buf *i915_gem_prime_export(struct
>drm_gem_object *gem_obj, int flags)
> static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object
>*obj)
> {
> 	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>-	struct sg_table *pages;
>+	struct sg_table *sgt;
> 	unsigned int sg_page_sizes;
>
> 	assert_object_held(obj);
>
>-	pages =3D dma_buf_map_attachment(obj->base.import_attach,
>-				       DMA_BIDIRECTIONAL);
>-	if (IS_ERR(pages))
>-		return PTR_ERR(pages);
>+	sgt =3D dma_buf_map_attachment(obj->base.import_attach,
>+				     DMA_BIDIRECTIONAL);
>+	if (IS_ERR(sgt))
>+		return PTR_ERR(sgt);
>
> 	/*
> 	 * DG1 is special here since it still snoops transactions even with
>@@ -261,16 +264,16 @@ static int
>i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
> 	    (!HAS_LLC(i915) && !IS_DG1(i915)))
> 		wbinvd_on_all_cpus();
>
>-	sg_page_sizes =3D i915_sg_dma_sizes(pages->sgl);
>-	__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
>+	sg_page_sizes =3D i915_sg_dma_sizes(sgt->sgl);
>+	__i915_gem_object_set_pages(obj, sgt, sg_page_sizes);
>
> 	return 0;
> }
>
> static void i915_gem_object_put_pages_dmabuf(struct
>drm_i915_gem_object *obj,
>-					     struct sg_table *pages)
>+					     struct sg_table *sgt)
> {
>-	dma_buf_unmap_attachment(obj->base.import_attach, pages,
>+	dma_buf_unmap_attachment(obj->base.import_attach, sgt,
> 				 DMA_BIDIRECTIONAL);
> }
>
>@@ -313,7 +316,7 @@ struct drm_gem_object
>*i915_gem_prime_import(struct drm_device *dev,
> 	get_dma_buf(dma_buf);
>
> 	obj =3D i915_gem_object_alloc();
>-	if (obj =3D=3D NULL) {
>+	if (!obj) {
> 		ret =3D -ENOMEM;
> 		goto fail_detach;
> 	}
>--
>2.31.1

