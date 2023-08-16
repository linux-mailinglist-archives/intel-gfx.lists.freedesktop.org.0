Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E061977EAC0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 22:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D7510E3B4;
	Wed, 16 Aug 2023 20:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523A610E3B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 20:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692218012; x=1723754012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m9nMVp3LFQu9Cc23pgR5TDaa1bWMNRK5USLCS1XLQi8=;
 b=Papl1AhZ/Gl89O/mFyjwFI4OJ8iGlq/gTLqfEI2EPBvzdd6vGLSE8KrC
 In80itFFmJvbpft+GNVUKZcEBNmcWkgY7wG1V19lhCAQ9Ktfw/unB9vdx
 muFa2vLH5c5zi/+R/0yIcr/iGN4pGiEh7VKjWjm4cb1w48EAg24vU/tcB
 oq18lGQp3iJSW9hDqcrU0GvUnpcc/fu5JhYNpWlIoL/y1AgsmkKYkn4bK
 da1vwDdglbl0jYhNiwFdq9oWH/AzPTrU1OQXKeZzm+BABDSA/XzyMR51G
 9PgHAJl/yl68qCCBdAz12kMv/AZCVuEk405w+BTKY7nsI+RWE2V4HjfJR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376368194"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="376368194"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 13:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="684193394"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="684193394"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2023 13:33:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 13:33:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 13:33:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 13:33:31 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 13:33:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihC01YuAmz1tpeG+ybVzmIRXuuPXYrXW2wvhKuYbFacg7n3Rsyo9TJ9GoIICqmUBg1iyoAIPIEfx/IGWGWeC1KebVSg1ukrnyXTokqzwEIuaHpDXl5rljatD2nvUDcAxW4CQZ7ev8SZbMmoxqudytk6uODq5CdPS1r4Y7vw4RuA2YU2CKcTGfS7Ox5SvL1Llu+SyL3BW+6eM5+uMLriXkHvAO919whxinkPY2IZmKmoxp3ArIpFm4HI2LCLTdiiZ4qbSTu3oe4ZJWra7aZBkvhrHw2me1rJ4shWD+LqkCh2Lrf746OC8eohzSAznnJGGKdfCtvam3OUat5Ur26jRKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ZQYwbwlEklAQ1WVq4VBNxV2XajavxbB5/9blTtne7A=;
 b=RHu+HqkVcukYSLxTQzaZKcSBbbfPs8Tu7ieksPHyK+53MVGnMzTUBuf7trhKDfjcnVuxnm2VnyF/W/RgQyDqigT3RlfO6cGtqOsT6AQ8As442ZbzXVcghcVEFcfvjbQjmd9IfQnclpGhQsZYG4IINPZ0qRpP4j0drN/xe1vxeLkjLU5NnyKr6N9FPI/C4b51y5fGT9xQz4D60fgxrMZJcnd7nxE2QVllMpPDT3W0k5nrTBF8rV4Letu5uyrsUT50VLoJHybTXT16sx06+JEjajjDCpAPTrNSFaGn5JETLtUYwcw0uJ4VTdXeA7mTQSmJsv5IEYRQ4xlcrE8HXuzjSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ2PR11MB8370.namprd11.prod.outlook.com (2603:10b6:a03:540::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 20:33:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 20:33:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/selftests: Align igt_spinner_create_request
 with hangcheck
Thread-Index: AQHZz5qP/RfZvxGRbkKO+FmvWTCLba/rviwAgAGiQqA=
Date: Wed, 16 Aug 2023 20:33:29 +0000
Message-ID: <CH0PR11MB5444FA0D778A2BCBADAFB084E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
 <20230815165345.964068-2-jonathan.cavitt@intel.com>
 <20230815192838.GO209733@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230815192838.GO209733@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ2PR11MB8370:EE_
x-ms-office365-filtering-correlation-id: 5776f650-b51e-4a79-e6f4-08db9e980ce8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: byT1lK53NsaYgRqx8R8UZ55psfZpeSAy/6EXjnsvLb+3yfLKq4IdvGQ1d14f1+XbAR0jcipz09ElMYkO+jHyYcCaHCAo0r9wo1iGY5j945O0KKpGWKaD3VQw0Vw4biWWesYwgw71o/8LSYdQ96qciiCY6672UWqhp7eoycNcmuuICwF+I0Mmy0XzyMCoG/kvCJCIYC4mN6jp6wYnaHWaGXJAZBIjG3VsxH0Sqoo2hbaPwxDau+y5Z+ltSHcgAgvINWTLxTOHk5crHTZMRgY5OIeEaRXcXH0YHgPRvqziVcochtVBMWfAN8ybt4xD42Cw3kUTzae58rXOpOU5ZC/2OxnaT1sVwWFgpqI78wddS3fyVX2sVAv0w/DehILV4jN6Ch4ExTuQECzXstGC6vzAiNvdZ+i5fOQVTSQJh2aCrW+q9nRVtXiq5Lv/N8bS6PAgGUe2tuQCooewHQVg6D2xlcnImvjZcpp5C3BUQeYJcMArfEDWhLncvh6aa+HT9QvoBRuH4YKFd2oBZFXYnovvTvD3b+hLyrypAF4XqmNAf8sZZzx5CusW/jZ/HtPPyx/rk//etCjzI/42mDJ8wDkGtbmqNr5n+6d2wcYoXsDomcxyv2sqvvXUWcRAGBzi2RCt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(346002)(39860400002)(376002)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(6506007)(7696005)(71200400001)(33656002)(53546011)(9686003)(26005)(55016003)(5660300002)(52536014)(41300700001)(66446008)(122000001)(76116006)(54906003)(6636002)(316002)(66946007)(66556008)(66476007)(64756008)(8676002)(6862004)(8936002)(4326008)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O7wcvbfxNysoWLeBCwo9rDRu59zsoKy3z7DoxY4GMA2MQhA7vrOcT7InZOad?=
 =?us-ascii?Q?YYQpzRGeQbEqA2OpD92A9miL/qdHe1gn/8VvIhdvSLO46Th52gtNJ83qmay0?=
 =?us-ascii?Q?fEquTbCnRrClR94HQT2fw48+APmRUEGpfApouIWgOvfzv2GRPXZjuiYAcgwY?=
 =?us-ascii?Q?/4zXZdyhRh73Ms12+kancHzYDiTfJkCT4CVD2yf9W3XXZsoBwyNUR9z4gY8/?=
 =?us-ascii?Q?cNLRlIMQHj3544JypVPYbjFiDd3FtnJLW3fcAVsFdKPU3ylUKnsJWYZY8OAH?=
 =?us-ascii?Q?BDKWxPLkISaEN8lYcQJGjAJfiMVnjiX4zA4pFPJB01LrB8FEdyj2Pfbsrj71?=
 =?us-ascii?Q?9JgwUlP56uniHzqMwiP11PaTbG6uEUROrnqu6NaSQtWPLW1yygn3ZIBVdwjq?=
 =?us-ascii?Q?PYOcAzbBlQlfXxj0DFtkjLhaZ6aLfVCZVv+Kz3vbhpT0fpPyorzuRSABtGZr?=
 =?us-ascii?Q?oVD/c6ghD8xXeqM1E/kSmD+JmLMpDr8bTYZcCD+5u9aMFcbboNru5PG5wzSn?=
 =?us-ascii?Q?VbiDX0Xyj0bSrt/U2+0nb7jnRpaaYkXDCbn+WGYQuWf2NbPGGCROmKnTn+ZI?=
 =?us-ascii?Q?xiHy1HgczKWGPPPD3Oazs5gmcd53O/MrsZSnXvVrypSsNYKpiCr90AOy5a11?=
 =?us-ascii?Q?ji9FF1JhUIVTrabaAGQIaH+iU853dgLMkNeik0CarWcEJPx3PUFNycGMSGcv?=
 =?us-ascii?Q?jopnedtOziIprhkujSDCUJE2NpjJKiZRx7YOftJt7zksXhYlBPUmDF1xMBSH?=
 =?us-ascii?Q?Con8Ev8wB46zE+lEwgGsCslWJyQGdU/QdovERomAynFvhzxeyXSvL9QaGUOK?=
 =?us-ascii?Q?zG6/jyWVu2my/9hMzDkPLfcXsPqCrdkxz3vrebJIRIso3tbVgs8yzB0OTZKc?=
 =?us-ascii?Q?bA2nAYOjfdxjgz6P5HsRA0tqRjBgPfBJ7ifKlAASXLOrAoLEoypyBiplvk4q?=
 =?us-ascii?Q?R4S2GUbFytpfHVs+uJREQO5jiYlE+CjP9M1ruuxHxp9mTtGcrHt6b4MHF4O9?=
 =?us-ascii?Q?te/TNEpKIWr3rjGuneduLTw9yY3K0/b8XEOPfqKySJbxnugjZIKN2kqncbGh?=
 =?us-ascii?Q?GauWnxKyopeCQJxS9oQF0EQgSjcxTukeXlfzrWy8WEbULh36Rgq4ThMFwwxn?=
 =?us-ascii?Q?NOPLAfxa0/KPaYXv0gnC0Fe/tD8y2ddgBeaeXfCOm7E3oydKCeLAW9pYvoZ2?=
 =?us-ascii?Q?TuOk4nrvwvKiQfSYK+l0jZ7/k8N6kGEge/13zuVkxo2/AMRRHI8sW5nxrR6/?=
 =?us-ascii?Q?YGsntF+9i4lncQ6H9/D4kLP08Ke6yfE+RfKZMftI8AErHjpbMEjBtOpJbMpy?=
 =?us-ascii?Q?Ra+D6mwRykxKssPYJP6FHXT5c26EyBBQAORfCpibkyD4tLHNj56mgqCBnxOj?=
 =?us-ascii?Q?McHe8OoEHMi6SRK4DGb34ftlUiY6QU3LpSPZIwZ0lO8pQXxjaOkCqQuAE+bC?=
 =?us-ascii?Q?sr2sLFiHnVQLO/HYVYHIaRwgik7EUbz/zOPfxPflmwrOYsUQ/JP5Q9K5cMrL?=
 =?us-ascii?Q?I+raVVKrJKetkRXEOe5YlWqtMYxjJj7alrDgp2THnbjDyYc8s7joalDwvhaY?=
 =?us-ascii?Q?EmTEvHwZiiGZflhz4nva5fYxEgXk/HTzgg4KqemQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5776f650-b51e-4a79-e6f4-08db9e980ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 20:33:29.1612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XuBgh8NK6g0lIVODDhyZEmppkyWgCjnncQdtMSU+xVsE8hKj3g9VgBVf1mPtMNdTGo3dFwBxUuRpJYRB9POmwGRTgpI5IjxElJRZcd+v9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8370
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Winiarski,
 Michal" <michal.winiarski@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Roper, Matthew D <matthew.d.roper@intel.com>=20
Sent: Tuesday, August 15, 2023 12:29 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Dutt, Sudeep <sudeep.dutt@intel.com>; =
chris.p.wilson@linux.intel.com; Gupta, saurabhg <saurabhg.gupta@intel.com>;=
 Shyti, Andi <andi.shyti@intel.com>; Summers, Stuart <stuart.summers@intel.=
com>; Das, Nirmoy <nirmoy.das@intel.com>; Belgaumkar, Vinay <vinay.belgaumk=
ar@intel.com>; Winiarski, Michal <michal.winiarski@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/selftests: Align igt_spinner_create_reque=
st with hangcheck
>=20
> On Tue, Aug 15, 2023 at 09:53:44AM -0700, Jonathan Cavitt wrote:
> > Align igt_spinner_create_request with the hang_create_request
> > implementation in selftest_hangcheck.c.
> >=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>=20
>=20
> For the second patch in the series, the general direction looks good to
> me, but I'm not familiar enough with the spinner implementation and
> context handling to do a detailed review there.  Hopefully someone more
> familiar with that code can take a look.
>=20


Thank you for the RB!  If it's not too much trouble, could you please push
this patch (independent of the rest of the series) upstream?  Sudeep would
like to see this patch upstreamed as soon as possible to get MTL prepared
for PV.  I figured I'd ask you first since you provided the RB.

Of course, if you're busy, that's understandable as well.
-Jonathan Cavitt


>=20
> Matt
>=20
> > ---
> >  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu=
/drm/i915/selftests/igt_spinner.c
> > index 0f064930ef11..8c3e1f20e5a1 100644
> > --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin=
,
> > =20
> >  	*batch++ =3D arbitration_command;
> > =20
> > +	memset32(batch, MI_NOOP, 128);
> > +	batch +=3D 128;
> > +
> >  	if (GRAPHICS_VER(rq->i915) >=3D 8)
> >  		*batch++ =3D MI_BATCH_BUFFER_START | BIT(8) | 1;
> >  	else if (IS_HASWELL(rq->i915))
> > --=20
> > 2.25.1
> >=20
>=20
> --=20
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
>=20
