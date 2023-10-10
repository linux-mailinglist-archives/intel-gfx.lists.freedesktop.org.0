Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 171567BFE98
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 15:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC63A10E37D;
	Tue, 10 Oct 2023 13:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CA910E37D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 13:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696946261; x=1728482261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+9qWE+wWbPlTKR1x3FAErYtDNJOq3ougEPKkWRI51ek=;
 b=alq9v5+LjtV9nvLk1seV3+3WHcXDUXB8tpJzxkdlDtet3SGgbWEoTdN0
 /P+XdDBv7dLqNC2uKStspPeBT/UpsYX4HuuSdx/Wai9VraATscoK5Ry+e
 vAj/ytBuE4/OOXvMsFRYFLt/uHDkJJ1J4iDaAqgw3SIQLTG4FsDC/c8ly
 SgXlHM1Ndk1gfYYYb3Ttz2KgLmzkGwZZHHM2s6QFDM8UZopxJhCVZY3Wq
 mWyRps/BfYeiInTGYazMH6e9WJsPWLH5MBBG3tx4fK5+Tc/Ft5dtpXZZP
 L5UFIUduUPc/SCZGZHQYpkAxI/JMPo4BaRNJ7aOsjadhzProjgSj3jAVH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="5964110"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="5964110"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 06:57:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="823790288"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="823790288"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 06:57:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 06:57:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 06:57:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 06:57:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 06:57:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SqIPWgzccF81100d/AYOFEH55r9r+0yisXoq5D9vRKUF1D0Mlr/tZ3Z/+T7uKAXakRz+BnoC6V2F4AXCPlfuamPPWgVMYXDF8BbK8D+KcsXxSgTgsss5WD45Vu0zO025Q0M3mPsoSuXxVk6nzVwKTtf3Ap0Hdvx4Ha98Eg6pWvFiVVU/8EHympXHQfGsuNPXW9RkzuQOlvmwXqVaSeRk7LUzRB1Ndqr8eVyKr23tX4pYHXTvGZBE8b6v7lrTiXklFbCUxaMrjQ5M8q8yB8UmVv8esPOhf4jFMzx79nZ7l7C3NgZNtQoF+xohUZNYNZIBmW45vmGo2Ub8L2eLa9ArlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5Zdm9B0zdTUrwtB6rASmRXQnNl4GaHVVTTjsC7A+L8=;
 b=gDUxlCTq8XnMGBXIP0WRVEHeVU52r/1uwFRsMYnb36j7p6P/SxVfaIwaSH5qqpe0v+kZexyDFshxno9QjosCloMKdLh2Qn8QgqYaiCqZlGz8paOOnaUkkI2rGGc88CUlkOzOzf73Ujio1DIpt5EZ900OcqAQ7UBr2GoGNKkt4OiYmTO9ZWeTN/2cpvuQjxPa9L/OeGEST8QjLryLZq4vdiYkXsypaGSqc/OOrYOI0mq+gztMWq9nt69a0pTVuXBSgyRcajOgk7L+qSi1DApGpouwp3iMmVCN+iHAbvS3GJSPBkStGboJaNIwJ/d2cD/9WdN78zlJzSJ8nQZC/G2+JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 13:57:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 13:57:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH v9 6/7] drm/i915/gt: Increase sleep in gt_tlb selftest
 sanitycheck
Thread-Index: AQHZ+teoJ3NaY8eJLE2dPwE4lQSjCLBCuAYAgABGqQCAAA6QkA==
Date: Tue, 10 Oct 2023 13:57:28 +0000
Message-ID: <CH0PR11MB54442D05FFDBB39C2F1C8C99E5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
 <20231009172919.1769055-7-jonathan.cavitt@intel.com>
 <4e59a9fe-d5d2-c696-1c4a-5e83ed2b9c69@linux.intel.com>
 <ZSVLquSf0NNX+uBC@ashyti-mobl2.lan>
In-Reply-To: <ZSVLquSf0NNX+uBC@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 072d4c86-d54e-4b67-8014-08dbc998d74e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jSpEOfAwU6HPAoIsE4VNXHMTXsUpw+hWp5dsFui2r8OZ946gbR0CC8oQYiidF8k2kKB5c+T3jn1Fc905nr7OyIrmiA8nE4kB7XN4i0JJwAts4oPJ1crnDXrV3MfLCZvN6LJs7KZq6zVo8rt+G+QNYfq4kN7QHAO1WJDIYDV3Bv+nwRUYwKnX8yeJa+dQZ1TgpZBR7ImmkAR6Tolqwj3kTp36++oG/uoYrknXVhX3JAfnNFKQVROxBz6UjyyTM+L88X1jZbF5QQLCWBglP8psA+WoUgzbp2WMuVnwOHunupCcYcepJowAvpsBnoBvXKNjsKNGmVQVnr+c5rYNvrgiXJNYkbaN7l8kqDOj3S0zeTWnOfmXcRFGtuKDlNbWxxV9nR/K2WGXk+ZtT3LKoaAlAxCKU9KsaadU4eh1iK/ysWabyu/E8ykgIkFbDaQjGY1sukJ62cNW4bc0kB6FTq/jLNW4hX/7uN1+Qty9pSi3d1LjsdB7epDtI0jr8RYsm44+szrpJ2+ejEF/m8iRoTlrKQ5Fs6xx/NQQrvwapFYk1kwWWMcIyksyk8jt1VbL/oBB3PPGRhnQInTKH8Agh49wEPRNNyOD2CCxV9SacbNd1M0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(122000001)(86362001)(38070700005)(82960400001)(38100700002)(33656002)(55016003)(478600001)(9686003)(7696005)(41300700001)(53546011)(52536014)(8676002)(4326008)(6506007)(5660300002)(71200400001)(8936002)(2906002)(83380400001)(66556008)(66476007)(66946007)(64756008)(76116006)(66446008)(54906003)(316002)(110136005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5FwFaz9fZDsXiUAvMRc8prlxDju3TFfnac7+zHHQRQ5pqXMAQaFuXLq1QmUT?=
 =?us-ascii?Q?Rf+fI4YDo2pXg6mT3MR1oUIgztjnfX8l9DwLgLGjLXAPVt2kD6caNKqN3ohP?=
 =?us-ascii?Q?49Ge/6Z/iF0726IGTP//Z84EnZNKbxFbaEb264bTfcLe7cswUTiQNLtIj/ei?=
 =?us-ascii?Q?p9+fqDL/M+QOQtRAs5T6ZgwhZnaqFXm3rsPkjS+ISVkVU/trxs0P/+awuBXB?=
 =?us-ascii?Q?H2McckyfRkYcg4NpYToWCazFoQu7Bnj8Vgh3JDjHGN4KDezS2waczVwt+mI3?=
 =?us-ascii?Q?ZUc3+N/52r6ehxZySWycrY/51FnUtGSdSpqiMKRorGhAEnMoGB5KgdXuT0FD?=
 =?us-ascii?Q?eLnmnM6PIoByiqc0RXuda/2yBLTn1A3TXOMQGlyeDseHDbdFzIiK0cSKY1Td?=
 =?us-ascii?Q?val+fw3ZyQOTAX6wh9fpY9JPZnyCj0gql/ESPB2VPAf6MJ3HmHLecCMHhq8L?=
 =?us-ascii?Q?az40PbYbFioPR+yKnTaxfc4K5IuEs78g5hmRu3WTQ7FLwL+1F6DcWOCkK+OA?=
 =?us-ascii?Q?EGt0eBuhAHFhISJA8dUFBaNSCPBu2IyVt82XyEBhbc9qyerHlWAQWhpjJsTA?=
 =?us-ascii?Q?bplPdGnPFRmgZhw7T7V7nHK7A+GsPFRnILZHHTSUw2hLEz4o5zeU+RTG/ypT?=
 =?us-ascii?Q?RaQSUtqX2rev08Lw6BYbc44ncm0aR1gLmsIBTNY6Q1YXLoJDY/qMCj1SoixB?=
 =?us-ascii?Q?PVvl8WgU5aMUI45YEsaUarqjOt9aO3L+23K6jt8DHM422DDK1eVroEdNlGqi?=
 =?us-ascii?Q?QhAI0BwwpE3FzmV4TB6L3MzQvVGQww5ccDP2bkLNlOOnN8iZhpyzCG85S6h0?=
 =?us-ascii?Q?lTfC2UCfra6yp03l57GKvpe1FHPrUpioBtzTha8hdETjtBJ+8Ot2Dbwn+RCs?=
 =?us-ascii?Q?+vGc9zSTqvmB2zQJJTxpvHsIefQMvT8l5sjIyxW3bYcETj9B5xIK0eM/CG3F?=
 =?us-ascii?Q?MQpxZ0bfVgmqvDyenZbYCWMUI6Q6CDVDBzBGKtgF4IlCaFLyUUPwYZU6Wn4z?=
 =?us-ascii?Q?1EwmhlydwvMysob76FHsW7PJiBJVBSrLyn4MLPTIfI2CKaYuUXKY6fktbWb9?=
 =?us-ascii?Q?8T5Tbc2FtWcMwcOqDq4IEYd2dOuG98Bh+eo1BgcudX3+o5nDzqJiAb8aHLHN?=
 =?us-ascii?Q?Lnt2LkdFhnQQe3fnObLyita3Y6H45Pcvjz8nQU5IWNMgxO9B+7n+DnQCQEcI?=
 =?us-ascii?Q?Y3m1aLxjruxcogOw9WuBTOUgnSKFU/eaBLs0DFqouoUb/THjQgH1v2VIxtDL?=
 =?us-ascii?Q?fr2ancU7SdmcQJUoikzg40zc8MP2dmS6235IbEQa4BzuPTaNV8OMJFb14Y/z?=
 =?us-ascii?Q?wJrz9z6Zvb2xS77HE0+Ngt9yTdlK7PTvFp91ROrVTneeX+HAbmGHsaT6HGZ8?=
 =?us-ascii?Q?xblCugGJmyCazCOB2MMPXr4e2M646Sr02oPjBVqoezsoFY9kbdcu1A3xHMNu?=
 =?us-ascii?Q?D9a5S5j0sjSkBgpJ3IT2nMqOiVxBksLh6m0cTODGw/qgM+h4G7ZrAt9+mzoP?=
 =?us-ascii?Q?JyUjsNoSoJ41wQHtvpMyvwRkJUUPE77FrbeyFPXHkDYpfxqK3U76b61y5J+s?=
 =?us-ascii?Q?jXyw4La8vrLmfPAviO45hfybeoTNoYk6sPosNGd3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 072d4c86-d54e-4b67-8014-08dbc998d74e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 13:57:28.7046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /weDNHxheoPDNk9eSHnT7bHTrdA6nPPARtBcj9q+PHSv775VGxAhilChCH1kMSTlLIOq0Abw9Q9UZ2BoU26/6yua1Tg4u4OIzDoXSDCd9O4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/7] drm/i915/gt: Increase sleep in
 gt_tlb selftest sanitycheck
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Andi Shyti <andi.shyti@linux.intel.com>=20
Sent: Tuesday, October 10, 2023 6:04 AM
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; yu.bruce.chang@intel.co=
m; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <aravind.iddamsetty@=
intel.com>; Yang, Fei <fei.yang@intel.com>; Harrison, John C <john.c.harris=
on@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Krzysztofik, Janusz <jan=
usz.krzysztofik@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; j=
ani.nikula@linux.intel.com
Subject: Re: [PATCH v9 6/7] drm/i915/gt: Increase sleep in gt_tlb selftest =
sanitycheck
>=20
> Hi Tvrtko,
>=20
> > On 09/10/2023 18:29, Jonathan Cavitt wrote:
> > > For the gt_tlb live selftest, when operating on the GSC engine,
> > > increase the timeout from 10 ms to 200 ms because the GSC
> > > engine is a bit slower than the rest.
> >=20
> > And others from 10ms to 20ms. By accident or deliberate?
>=20
> yes, accident :-)


I should've clarified in the patch that this was to resolve a CHECKPATCH er=
ror:
-:29: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documenta=
tion/timers/timers-howto.rst
But I wasn't sure if we were allowed to talk about such things on the maili=
ng list.
-Jonathan Cavitt


>=20
> Andi
>=20
> >=20
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
> > >   1 file changed, 9 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm=
/i915/gt/selftest_tlb.c
> > > index 7e41f69fc818f..24beb94aa7a37 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> > > @@ -136,8 +136,15 @@ pte_tlbinv(struct intel_context *ce,
> > >   	i915_request_get(rq);
> > >   	i915_request_add(rq);
> > > -	/* Short sleep to sanitycheck the batch is spinning before we begin=
 */
> > > -	msleep(10);
> > > +	/*
> > > +	 * Short sleep to sanitycheck the batch is spinning before we begin=
.
> > > +	 * FIXME: Why is GSC so slow?
> > > +	 */
> > > +	if (ce->engine->class =3D=3D OTHER_CLASS)
> > > +		msleep(200);
> > > +	else
> > > +		msleep(20);
> > > +
> > >   	if (va =3D=3D vb) {
> > >   		if (!i915_request_completed(rq)) {
> > >   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignmen=
t %llx, using PTE size %x (phys %x, sg %x)\n",
>=20
