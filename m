Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010A66B365E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 07:06:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D28310E958;
	Fri, 10 Mar 2023 06:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148E210E958
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 06:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678428379; x=1709964379;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fugJBxSV6L7IDxfE+uRD40136OulJnFGa+Hbtg2pjp8=;
 b=Nb9Em+Ap42o0XOlAjsMi1CUFzVDNk3Meny+j15ufdN3nHhTKnO40QzjL
 xDjsCW3UoUBE6VH6TFxD46MtVM0vsuaPHx4y7ZkqEpeere4JXZpzmHrEr
 Hr8pczi9C3dEkvBKggHPY1fmqbDcUTl5WGZyeqY54P5pQMuupSuZk6Lsy
 HKQx8J2tu0rn4+h/S/WPFx6WaTtk98+AU18DDaIRaSPyV4xnAeriYYBKM
 Wgikfa64NhyXCWTSq4BODZLaNAK6/8GdbRwc7ZUCiOLpltAwUdxSa35iu
 jkbk67intpxrD4of4cxkPKHOT+fsHiUF/k2yfGhBXfmCSPR2v9tAzaJsC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399253650"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="399253650"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 22:06:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="801459889"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="801459889"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 09 Mar 2023 22:06:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 22:06:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 22:06:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 22:06:17 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 22:06:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QvEU1iDHiYl8MgxxAbianTZdTaGynv/zNpNXvT3D5upKBnZFoN9AQoakcpLyP2eSFmsyNBrQ3NbVr1/mSKVzs5tiGwQVt+lqyOehiZy1LrSD7UkGZc1NLqX9Pke9jpN3f06+GJGT1XoZtai43Zpesj7Kniiu2eYYUfuMWoaFBbDmaEM/hPb2noiez/LuUOC5sGNTAcY2xrkW41H6uSR5YM7T1zT248cl1JfoJiK36aEg6P1Ncj2stC+i0Inz1JPdf17i7eiUjjaNExRgDS0hCsuB0ephWdgxvTc1W3bEylS7aVFj9kOv3VT3kUvVdSxL2GnARwrOJcPeSv8K73v/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fugJBxSV6L7IDxfE+uRD40136OulJnFGa+Hbtg2pjp8=;
 b=WInNSp4zb98J9btl2kbfUOlwhNryU92dJISAeUjgIXHe9pss0FAWXI6eieenyT7bOn+c4//Re6ZNCdupYGS2s1iVvCew79izRmvUAwR+TZ34Pkw9BMuaI1bB1rrjZcKR6fM6664aj4l8vVylLwCgCIC4BzCcxJJ34i8+ekq7AYd8e7i2sY+Fp9qkNdYG3Mx51Atf9u9yhvwoEcif8tP0EYJQiiB5sEPkcfyS+V/meDsdJirltTOQDjhsqDXEbJBmdY/aJjyGCQG7m0J3ofs12WyvUN5j4ua9vBcYI5uxLYeeMPsZeIAQkvomID4eS9e6IAM3yHTpikRwfJ5QkdRSRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 by SN7PR11MB6752.namprd11.prod.outlook.com (2603:10b6:806:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Fri, 10 Mar
 2023 06:06:10 +0000
Received: from BL1PR11MB5953.namprd11.prod.outlook.com
 ([fe80::3a83:da89:9333:c87e]) by BL1PR11MB5953.namprd11.prod.outlook.com
 ([fe80::3a83:da89:9333:c87e%6]) with mapi id 15.20.6156.029; Fri, 10 Mar 2023
 06:06:10 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
Thread-Index: AQHZTHoX7Zebl8vrkkGt4jkMuY0kP67yr94AgAAYHoCAAFdSgIAAdHUw
Date: Fri, 10 Mar 2023 06:06:10 +0000
Message-ID: <BL1PR11MB595327E161ED11AACB25F9F387BA9@BL1PR11MB5953.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-2-radhakrishna.sripada@intel.com>
 <ZAoJkJ5VwGRiUDTD@ashyti-mobl2.lan>
 <DM4PR11MB5971A58978662F23B9004A8A87B59@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZApnCxvzMeh5EL/2@ashyti-mobl2.lan>
In-Reply-To: <ZApnCxvzMeh5EL/2@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5953:EE_|SN7PR11MB6752:EE_
x-ms-office365-filtering-correlation-id: c2ba6f60-f4dd-4111-a615-08db212d8be7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OahqDzXXtwL9GL88YOhDL0LfwwHQO2RyMWzVyiSGGMN2aDSx5IweJ4OESL0M4iiimqDA1gNVM9utKahkRwsUVtIUxwSWYVxA8C3vCkxUOB4qujeSTuj9xB+aXGI1Jxr+wWECOOfzQfCvbZ3aY37CxOVMfKX+Mfy+1D6YsmaAdN6xHcNTVTZwIxUKLAXdwSqScdc/RPQT/OufCFt7+VZE7AdwRsQJxiTxplRq3j2aErFcBsbTjaX7lBuEpXn3Zgx1hn9Gbj4u4GcoB8ZHGfNMpx5IOmbTJgLwpv+xNrx9dO0DCe17nhC6iRxavMxbCh5dEjyUj1BQLvOsFMPifBRQaTfC5SpP7m7kJs5i06nYX6GpJ25UYv7xRL4vcGcERCxWLc+3HBISl4nhqQPx7Sj8zsZwsGBn5STKSULSlHyAX2lUm8Bi+mJeqjNJBXsF5UgRzlUE3GEdZNI9WHqumyPA2SLR9gmLMbsoLW95WsCjOsyIyJSrO9owknAYXFrnH0ew81DoHSnOby9jhrIX2D0CLt1WGsHZTTS05WpCYn1MmVhYd8mk5OIZ665/vMg+XL0Gc2tZs0VzoCNgs/EXDez7d7QNqUufan691+6OAR6sAqriDfIkPFgXq3DHwk1VqyvA3GOyz4GeOMR2CZIxtdAQZlw7NGG1Cg8pbBoGuGHVP646aXkuUS5/Qi+aibAckVm/ccA6Fj+84vNn2wQOkVWqXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5953.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199018)(66946007)(122000001)(76116006)(4326008)(82960400001)(6916009)(38100700002)(66476007)(66556008)(8676002)(66446008)(64756008)(54906003)(41300700001)(316002)(8936002)(86362001)(52536014)(478600001)(7696005)(33656002)(66899018)(5660300002)(83380400001)(71200400001)(6506007)(53546011)(38070700005)(55016003)(4744005)(26005)(186003)(2906002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2MJg6J+aVrirMrBu71ESfFgzPpCYjkbIl/V+J1FRHMJw3d97rpVeGTkQxPzm?=
 =?us-ascii?Q?gexLPn3rqH1QOcmCS9blOr3lTuZ2DmOOo56Fc18lfGL60NBoqQpZxqckkpQ1?=
 =?us-ascii?Q?JSTLAAw0sHjLeOZVD+tv7/fiWmjSx89jH+NMnRwwA0sFduw4NzGKHDeuw0LY?=
 =?us-ascii?Q?HpCTeaBSeY7o26boWroNTEosqOM/ZYKUCgi7JSvT9us7yYdb+Z9/PBbyJBlz?=
 =?us-ascii?Q?RpthOn92epdSI8je0QUmxMghRkkoflpeDSJZygp8Z5cYPb6elGGlSdeUGlcB?=
 =?us-ascii?Q?y6Jv5YU9fRFZJSyjW/tNXgfB22gU9woT+vDqE4Pns0lPGcgUCkaihP+b+ev7?=
 =?us-ascii?Q?PuvCnlqHeDGeUlmKXW1XfGAhVnBYzq53hy5wZ9x2Bff7Ds1bp7RIS6XH4FlI?=
 =?us-ascii?Q?+O087p52Qv7SGKA3V2y7UAWezLbyY49Nej/O9X3t7lTOwACNM/OubqFl3xJ3?=
 =?us-ascii?Q?vbK3Bq8+jIYgO89+ImNdfgP8yjXA+Qm/SqvMRnVXBcGSgIF3F10bXQ0vTEDp?=
 =?us-ascii?Q?0SrNX8hirpObHf2g81yO6fXkaPRq3yjaCTYUBdqNlUUs5LaeiSFRXkW8kNcW?=
 =?us-ascii?Q?sgcPo2F3m3gbNtu81hapstyhwmPOeI+SxvoWC+g6C1h5IcWjFwPSEco9Fox/?=
 =?us-ascii?Q?/jGbWrF9+lMQssSgKA9DobYUj4JrzGzOyXxnSTtbk1txBJz5EyKB/uFyuuSR?=
 =?us-ascii?Q?h1lhlgn31IXlOF4BlxQcDFXc6q0N+wey7mYI8PguZA3KXyc07RAji9RkX03P?=
 =?us-ascii?Q?27a2Zhu1Uxwx0FpSAmuPeVJrA79b/sgCERi5yhmFoQYJzYq+UJONUVkuScDQ?=
 =?us-ascii?Q?YZShEDDO6m6Rqbox0r3uhWEZemxczzPrCwvzKlVocQZmJe9DKhIItZ2Y+Jkv?=
 =?us-ascii?Q?hybMnN+3QrJP87ngYpmgELsdfugRyEzqKQP/2lnNfhpIZ9Tlpts9O8qPVmtp?=
 =?us-ascii?Q?NClAvUyFq+nVradCPAZE/IyhbFuerE1Nwnxtuz3WpFpPowx8BTJl8uRHMh3+?=
 =?us-ascii?Q?QlDtN5eiQ8Xz/om7dc0TQ/+kxPUugQ3orEj/mSFrtBtMrKeIs95Iw7HW8+mi?=
 =?us-ascii?Q?8O7uji/8SsDaYijAMuCHfkUOLp/drVUu9GQxg9QkjuPP4PJ1P4rybdYvpzeT?=
 =?us-ascii?Q?mZdm9ubs2XRdoMA+RCK2VGVVqd4y1JSQ4g8nJqRjLBNVXby/uZVX1fEhDp+5?=
 =?us-ascii?Q?TvRjfFyg3e34POghR8ThHg3oBnMdvzvkzS+YwWlhxJnEaDUTMdbW8A48dRPk?=
 =?us-ascii?Q?WUxRc58/1u7UMX8Uvcyt2YSI2tzSCkvVwA75yrWRujLRCsgQ1CWtu1I8dscq?=
 =?us-ascii?Q?U/WXb4l3mc7nm24XNGSD33Kj6LrmK3VUSUUx68+b/JP3eqECN6x1JODQhigk?=
 =?us-ascii?Q?0COVmuQhenuEkbfMJijNMjLIBJITZiSya4hOpAIOq/LBziy3C6QHv53iX0Lh?=
 =?us-ascii?Q?tb4XE6VvqfrLM7nmlSVnVrzkCtaMCy890lfe9x+LqDOJkTbVNYhlW2cCbHQF?=
 =?us-ascii?Q?PBkzAZN35+n5mcmjeKmYg3HkpdGC1PX+57qfxuGnPqXekQ1VwY/6wTrveCE8?=
 =?us-ascii?Q?0RnuyJUrWmQ49UOiNKCTJ4pC+2cK2ejb0a4fNR8qpLlnNa4iqdT5cfibatPk?=
 =?us-ascii?Q?iQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5953.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ba6f60-f4dd-4111-a615-08db212d8be7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 06:06:10.6891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vcI2708kGet10RL6zDFGJwmE4Gr+sRRY363hFiMLLyd+hu+4Rfz782tE9Ak/ZCNGnji1HHO1HpnOSthelw0p6aptz3tu1FnaHhMsNdlh+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6752
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sure Andi. Will be more cautious.

Radhakrishna Sripada

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 9, 2023 3:09 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>; intel-gfx@lists.freedesktop.=
org; De
> Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
> implementation
>=20
> Hi Radhakrishna,
>=20
> > Since most of the comments aligned with Matt's suggestion pushed with
> Matt's r-b.
>=20
> OK, but next time, please hold on a bit as I might also have had
> disagreements on your answers or I want to see it tested again
> with the new changes.
>=20
> It's not the case as I would have r-b it anyway and the changes
> were trivial, but next time, please give it a bit more time until
> all questions are answered.
>=20
> > Thanks you for the review.
>=20
> You're welcome :)
>=20
> Thanks,
> Andi
