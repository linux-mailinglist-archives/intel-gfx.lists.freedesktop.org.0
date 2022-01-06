Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F3E4861AD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 09:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B3E113AB7;
	Thu,  6 Jan 2022 08:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15F0113AB7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 08:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641459294; x=1672995294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4QH+0opEen8pzs7yTpc/P15tY0lDWr7Uirgiv2RSIgw=;
 b=mIsxuiWvhVXIeG1e012e4tjU+XWm18U3bueJxl6z6IpeufrAZPRjrG6i
 vBuy9Zqx802//Kq8OL+x3Y0jlWjnvPSizAThholPXyDtah8gw/6en6sM+
 +a1Icyl5+I3B0xJSPXsZ5/NiOI/hat1LWNiQXzSVMVBZ7yjAv8UTp4WfI
 tYq1u8oXdghnHRRj3P/FtT0Ql9rlfLDibgey3KRoY/lnfRky4I2tqUV0U
 ZMp3R5yx8FAQlxs+++L3j1Tz8XX7Igo7bxYw2CnPqENGV3KOJW2oFTQlR
 a2wYMwqhBf85dEjbOYxkl34zht8CCTI6qjTRbSsWBr+1ezEuir5QCi+VR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="240170146"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="240170146"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 00:54:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="689328872"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 06 Jan 2022 00:54:45 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 00:54:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 6 Jan 2022 00:54:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 6 Jan 2022 00:54:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zgnk8gIJPXrhuqBhk75+8yDwEW04v0POmjg8HSRuAeOtmepXVaowKo103Vp6zRgCMXexboTA6iRfgujQMCLmp2GjvY4+JKMMY3FuAE2s5rrPiCtUicC4+zHITP1FnUD7QPovByX+Re+v2lQBeNw00e0TLpEp6GBFPv2ekJSDANFRWLfBxiSI+zJR9vnYcNn39nulr7fnkpdfNsrlZY3FEHDapFI8/4nmHUmNBGzi+GAfrAkEOrqOknhRfxYTNvVzHjKJxlCqYAbho9o8J6tgx4hggXmvsWkBlb+LnGfq6ohI5F3GJweq09mSNZUy+j7V2aOdMyn/FSoiTjdsFbcVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CJXKVhnt1QWI2wlMjt6t9yhDYaEDTVHO3PYqD4TNdYU=;
 b=bcxhJY04q4b1eaZPeAxmTI2mrKXJguPK2AY+u4ndVK5mCXblyf9WUsXp07KfSjaNxjmpBulZ+JRuxkev9C5toACuJ+s7JCyPkvUXv/o4rtz+KiYjrwrbGxr56scB91YNdbg6zUqgS0LFSaLg16gz5YLT+55Hl8oeZv4+b5+7Ro3tPeubZ6QIjrUb8KBLPji3py+kyIOSbzDYFt2wfPJV0ffMPCbD1+YpuemPZ1exSGkb008RDXS4VL9eU/w71HrFaAvodEDbBAdpDNt3aYT25VbtS0SFiO127+mi6GJzM+qvSTXQOL00hot9uAS0gaTxBis5keW28LthwA8tcqNg3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB1348.namprd11.prod.outlook.com (2603:10b6:404:46::11)
 by BN8PR11MB3748.namprd11.prod.outlook.com (2603:10b6:408:86::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Thu, 6 Jan
 2022 08:54:41 +0000
Received: from BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d]) by BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d%7]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 08:54:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm: add writeback pointers to
 drm_connector
Thread-Index: AQHX8xSAz8p3OQqSLEOEwuDGsqGKeaw2ddqAgB9X39A=
Date: Thu, 6 Jan 2022 08:54:40 +0000
Message-ID: <BN6PR11MB1348DE54A4723E55CFCBF012E34C9@BN6PR11MB1348.namprd11.prod.outlook.com>
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-2-suraj.kandpal@intel.com> <87czlv35o0.fsf@intel.com>
In-Reply-To: <87czlv35o0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22e6a4e7-6c21-409f-d127-08d9d0f22d0b
x-ms-traffictypediagnostic: BN8PR11MB3748:EE_
x-microsoft-antispam-prvs: <BN8PR11MB374807015C7DB7F93FFAB0E3E34C9@BN8PR11MB3748.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VJ7bi8XtcRIxHGWBInVJCK1jsRqVkgkyxMYaiNbivYIGZ2rXRIPUyNwd/wOCy0JRNFKnjXs6V0JTy2u+LydfXNUljv61Y2rlrcM1GVKYZ8c+/+LqfUENTECNppedDLuS9QtXijpQ9p1PPQivrdArQ1DtS4S3e4F1hkhjH3ppLY1kUY50TMMVOeTgED8Sc7dsSNRLsGUhvcyT9QEOFlfCKTVUWmwXkdBJfOiuYSAnh4jKpuCgFCi7M2sy2Zb5hx+x9j8Yh9mW6DvH4I56GToB68yRXP67psOOykHj/cxCVtIqCYKiBrNI14EI9lBkdytT2zckj3YdbIaHdeqRv548nwtH0W2M/IqkPUXUoNW5hw2KnlcNNcig2cXmySIiI1PytO0UeKQSddiwrBDyK6BvWiETCuQ4ZMWMUp3ozf3oaCGw67J8iaLYu9/79VEIXFshxUPCRyphLrK0uiZJXalil8L7Ct20iLXV3wlJ6rlTunIoUxIbmiLj/bngCAIx3GS9hr4OUaUYgHkFmSkcYFTIq3SanSnlgW0bPVgonsfcmhb7BUk8wCEesQ1bsZ9sfCJrPT6sqe1ulP4kjQ/MrVAcFWoRR/PyJxnI0R3UfZpcn4dq4+8356s2cmwogZco9b7SVGqwaV6UhwGCRN88pTqrhDL4HZLriF2MryDKcAcL9yNz25MlJl7oYSBqTo8/g8D8LUQxsDAbMXLlO6bFF+9AdA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(76116006)(33656002)(26005)(66946007)(66476007)(82960400001)(8936002)(55016003)(66446008)(7696005)(5660300002)(8676002)(110136005)(2906002)(4326008)(6506007)(64756008)(186003)(52536014)(71200400001)(508600001)(38100700002)(9686003)(122000001)(38070700005)(66556008)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?38nZ5xyAvoFXqmZ6IlhmVjsSZ5uoR6ogynt8P7LlOJaduV+oLwip8Q7kP1vB?=
 =?us-ascii?Q?kOVEn2iFE9fI+1lyaM0qaBbNetrAZSwiH4H0ROFoo9/ztZVhqJklzDUQLKZK?=
 =?us-ascii?Q?4RvTgn0IZ1XiyItUFMoJQwAoHWXx10zylcgpffBqR2SzxdHimS7Hxnqg73op?=
 =?us-ascii?Q?ombkmoJzVRzRjVWBf2LohUKnxvgfKVEtxPp01xGwyic5tDBf0xrhSSkZze1r?=
 =?us-ascii?Q?Lib8rPOB9WU/zv3w9oG1A+9McPirsGXnjjbTNlepV29Ef3YaTNWm8Xxgjs3c?=
 =?us-ascii?Q?+h/GPDaHsLBWylIf6vDy9FGN5GMPY49OlpXQ8oxcPftiA7eZ2V+lH6P7vi9C?=
 =?us-ascii?Q?s48VdBpTzSfbj9T/iFw56iOB8MsU2KGPhv1DmnPlEAfkEwBZhmm2Ra/d6802?=
 =?us-ascii?Q?aiVgULjq91jS9yS8yHRb0+ee+fII8Z89No1ZKPi4lLaHQ3/cIR4To8q9ANSh?=
 =?us-ascii?Q?8OSR8TcgJ3FJotbM8YB9FlUNx62BTM+M9RBKvxoot9ZoOJFFB8wMc/GJ6l2k?=
 =?us-ascii?Q?KsXaf6CkiDWs7qxVz3wGkwtB8uWEFAsECNcY10PXpQGWNqzPpBPnoocu6eWs?=
 =?us-ascii?Q?03B5FYBkK6tUNS6l1ARGs086GRLjwfymCU7sw4Ar7j8U3RLisyfHgiWaRO5k?=
 =?us-ascii?Q?huRXHHM6HC4qSLBlSGgj6b5Ckr/BlTexu1dfIRURYR8vb9Pel9jtY5iPfFVh?=
 =?us-ascii?Q?MHGeMxrJBXufTFzLsXGfU4BSgCXMGHdXt1xn6pdT0HSncokNZkteD/S/liCq?=
 =?us-ascii?Q?PkJPKpH1PDDa59SjypkqBPz6tdyKmv2q1i8azpdxq+FsWNZH1VhzFRQdeDbw?=
 =?us-ascii?Q?S/v+ig+ywqD1WJF3y5g7sj7Fk1YZZVeuXoE/NHZXnUWYWxj4AbwTXBLF2GlP?=
 =?us-ascii?Q?+oXNTT53/7PCPJengXIfVMshk7fLxeJGg2m/p6QKzy0BVci/UKe+WL31PuJZ?=
 =?us-ascii?Q?VoaosVhoIKVEehMricG4tAoNkXcr8bqdMZK5FzCUDSlCA7GXT1D30gUBSGZu?=
 =?us-ascii?Q?jJDkCYOwTWOoh8Q6/385ZEVdodNFaHX9o7AV7LJchJsg4Izn+UFwYCuxbaMk?=
 =?us-ascii?Q?KjlDG2tZILQioo0C6AROIjzqXNneOfEO4DEvwXAWi/MFDXvZOXQ5WTLPxiCN?=
 =?us-ascii?Q?3sGttrcapbqfZlbXf48oL9rYSv2CNuqxC3UZIpO/GjaVd+brYiiculcvC8vx?=
 =?us-ascii?Q?UMWIev7RizK6iiJgx1xmshAZObMMTRlsXHVe9EO/VgTokByGrv2J0JVGA/lx?=
 =?us-ascii?Q?941P/P1isElXgOmGHfFbdOALXHOXBYB4RSvx9g4DcxKGIcNxkMxuXffL0QFk?=
 =?us-ascii?Q?4YffTjQFrJZRef8CKfHf2V+gR7gpJDn+eH3DP+wuUBgMDAUBSrH65+zsboJ6?=
 =?us-ascii?Q?StJmm7jXfrvKl4E6WWNfLH1/+Am3a9PPK9yk9VysVG9LC0+3kZy2hFNxYYh1?=
 =?us-ascii?Q?Onnur4tjnawYvS4JnaSwkoURYuRFJj6uYDmzsx9RZeC5G3lJdBhB2TqJmI2+?=
 =?us-ascii?Q?Xscw2prX0JuPdDcijVF//OuowZ6+OoV6bVOfToVxjEP3cPGTBK8kZd3/E5ge?=
 =?us-ascii?Q?va0fkcTe0/+hg/jB3OvL1XCJKTgtdgDDcGAPILO31qdlOie/0K7m1j2YJVoS?=
 =?us-ascii?Q?wA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e6a4e7-6c21-409f-d127-08d9d0f22d0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 08:54:40.5110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6f7kuK+GQvy/qzumnc0/IoWkvWLxdLUGsNNBX4uRtpyw0QRJLMAZB6loNpFuJpwZ+DT/Q3Ze/jdhi71fKq6JSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: add writeback pointers to
 drm_connector
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
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > Adding drm_connector and drm_encoder pointers in
> > drm_writeback_connector
>=20
> Why?

The elements of struct drm_writeback_connector are=20
struct drm_writeback_connector {
	Struct drm_connector base;
	Struct drm_encoder encoder;

Similarly the elements of intel_encoder and intel_connector are
 struct intel_encoder {
	Struct drm_encoder base;

Struct intel_connector {
	Struct drm_connector base;

The function drm_writeback_connector_init() will initialize the drm_connect=
or and drm_encoder and attach them as well.
Since the drm_connector/encoder are both struct in drm_writeback_connector =
and intel_connector/encoder, one of them should be a pointer, else both wil=
l be pointing to 2 separate instances.

Usually the struct defined in drm framework pointing to any struct will be =
pointer and allocating them and initialization will be done with the users.
Like struct drm_connector and drm_encoder are part of drm framework and the=
 users of these such as i915 have included them in their struct intel_conne=
ctor and intel_encoder.=20
Likewise struct drm_writeback_connector is a special connector and hence is=
 not a user of drm_connector and hence this should be pointers.
>=20
> We can all read the code, the commit message should mostly be about the
> *why*.
>=20
> Also, drm changes should Cc: dri-devel mailing list.
Sure we will add this in Cc in the next series of patches

Thanks,
Suraj Kandpal
