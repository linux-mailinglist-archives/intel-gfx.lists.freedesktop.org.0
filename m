Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518967DB63D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 10:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B0210E259;
	Mon, 30 Oct 2023 09:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A484810E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 09:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698658626; x=1730194626;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l+98DeV1WFCFv2oiqnExY/Ty31/2PvbQ96vkNQWCtp0=;
 b=Uo0eLgDUSpeCWLVbnLpYhYcz8txMJN1OQOmJ+QSvrGBTN2CTx6x3RkG6
 ZIJkN0b5Xz5l4QtvWdcWT2/B3aNmTArY1DMnj3Zzjp7rkEftZPRgdlrm/
 TjlIQ+ErHHWUVu44kscb9KzcvxUcZ02jTP2rhWiQt5GMvPGjdqJ4PxJdA
 b4f3TylFKwO/G8tYKKj9kk4xIpcRPBSC7hjD9w/5jlRemjm1lu7B/cQ1i
 l1kaxrt65Xbd85UbkcSq++LRzSVGGOuDiIowAmcE0ATX32HcK9iV5Z/Tg
 oDtZY6/r4oC1ZyJDQ/YtPbLElZrwsmDn/YZG3EYZMbL+7xPRgehIf9JjE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="378414555"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="378414555"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 02:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="8284796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 02:37:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 02:37:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 02:37:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 02:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tml1IaXbL5xSbUb0zOBdNlkRypQhtUwcY5e50krz3CZXteqNwpYcGnWn6cB6gnWg2yBssLv21qcISJQBRR00/XNHWP6o8lKKeLxUtaMNFp4VSTEKJeI+L5Fw/ljcitiCg66laYiUOE7GvOghkeRk/bMukMILSw+t7jM3RnamH1vTuqb7E2wyG5VzTtHjZi4ADTm82rc29af2OILdql4h+d43WoPfRr3GcEpprx4oq2bI0vt7vFrsWs0v9yGX3qWRkaXURP+BiGFfmoaGiMyAD3caU/GGMidXoHM6lqzZdOQ4NPSrGAKgZ3NlWWtxzBAPSFliRpnH8sYkoPjrkI3zkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l+98DeV1WFCFv2oiqnExY/Ty31/2PvbQ96vkNQWCtp0=;
 b=iITCyTssv44c5/Z49YZkJqrNi9XiK1wMd1MSnbvj5LsjwwEcG3CZfRuTleMdZIj1psR+rQrqqX+CUndxOUBoEZCNUKe7kU6X0Hr+wH+mvsq34j78Ab/DTuHQofUNV3+kCtXxuRF5Wp8FzuDZUaMo4DocImKcd9gb2gP/bTFEHaHSb/As2yzXYDpA2gmSpdIOkbF9sa5wzP8IRKsCsrQyp52eP41/kF9pvCt0tT30A8/YaLynlN125BXFIs27IXUURheHZ/L8DaFnM8nNslyWtNDZ/9UFM7/AR/fNjoSl/aY2ztWAvj0VPpgiU6mVvJZXvPLiKkofmOuJRLfwwKWJiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) by
 CO1PR11MB4948.namprd11.prod.outlook.com (2603:10b6:303:9b::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.27; Mon, 30 Oct 2023 09:37:02 +0000
Received: from DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::a832:38b1:b74d:abe8]) by DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::a832:38b1:b74d:abe8%5]) with mapi id 15.20.6933.025; Mon, 30 Oct 2023
 09:37:02 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
Thread-Index: AQHaCLvZFHhoTLduP0yaoPnP+zbcObBdetkAgASbidA=
Date: Mon, 30 Oct 2023 09:37:02 +0000
Message-ID: <DM4PR11MB647706B7EA07B147429A66C4E3A1A@DM4PR11MB6477.namprd11.prod.outlook.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com> <87v8as5njd.fsf@intel.com>
In-Reply-To: <87v8as5njd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6477:EE_|CO1PR11MB4948:EE_
x-ms-office365-filtering-correlation-id: 1074d69e-5c8c-4069-b30b-08dbd92bc5ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 63tqOx9FTzpz4QbmTEHGgNK8IVANzIjuNT81wDeP1hVCB5Ug6KnCk/Wu9m1TpweVXC6f+INzZhPzeyw1qXLQBs3XNP5x7EeQp5JBjCHxpEO2YNXOX94kRZHAenSRY6dcyfVu+LSmmWri4Waos35t+uw5KBXtkP36VF6QEj0RVSlxumCNrSQD+aFIERteb4yndRQlPikAXDL0/9zw3+ya9X/eFMs+hVGT331AhQ129tPyghPdYXmkWAfC7LIDkb4CR3rSXVj6eL55BHagysQLlOUQKJ3w1MtBbb1lJ4y0ugyDaBrkFrNu0w8/6lBDC1RHJ0PINTGwdG8lGD3TwvaSak5KViC4Pg3ojtW5jgFXGzjc1oQRZDlSua3y4l39r1HxOCm+TivGxT9mglcIY/zhsZajD6hZZK2MBpXn4WUEqwDGvzsCUcxTWd/w0bb0HhOWLTVveOOluAD5Hb6Jav3qNUB1AxkKEXmSoso1j4qzL4nQRRMo6Qx22LsHBlT4yKarDfkrtftIJ3TaNFwmwzoj21JrVSs+b+colZ8NTe20Xt4WtyATMtjs529qdx3bacWNICXW123GhWMOL/5lgvNP5t7uuRo5kFCIvKJH7H+bU0lNP05/U5uhS+VJ9oKcVels
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6477.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(366004)(376002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(55016003)(64756008)(26005)(66556008)(82960400001)(66476007)(122000001)(38100700002)(83380400001)(76116006)(316002)(110136005)(66946007)(66446008)(5660300002)(7696005)(8676002)(52536014)(8936002)(53546011)(9686003)(41300700001)(71200400001)(6506007)(2906002)(478600001)(38070700009)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4QMU07+PkdV5tgdWdspJlGcc7rf2PzWXa150FrNIMYKjWnWYtOlzamoTtbpl?=
 =?us-ascii?Q?KjwVGJ4qmfw34V1UB5SWMGLVtawG0ktJJ7aOSy8YT++4WNKqJp6OF0J/ukpb?=
 =?us-ascii?Q?oZoDq8o+sO7ZpfmrZFb2fGV9O3Pyz3q7GR0v9ML/dkE4hcp3xJNMynzLJ207?=
 =?us-ascii?Q?udreDZrfw4ptMo91IYSgeBuFp3NCFoipsEjhl1gCUVE7FjZaRnd+QWqRQlRD?=
 =?us-ascii?Q?/UO15XE7cciwBO/4jbNzpm72KfcKDVpejzT1t7bQkmTrEBVXokbRbUJp+7c6?=
 =?us-ascii?Q?rq+vbYTs9j1sut3A10XZ8SwlC3Dp0pDo5+5nqt3YV1PBmmGafzJKlf/TiI8x?=
 =?us-ascii?Q?1Au1JFvN/oC0v9ibcrdQz/0sw2JEIayUBiyQKarPrbi6YcPv9SmOio1k4Dep?=
 =?us-ascii?Q?1fT1uU672nNvhABmGZnAFQTQsU5ZguV1Eywqv5J/3D50cLZOk9OhL+8nV7M4?=
 =?us-ascii?Q?QWKYoGFmY2UkpaZ7+IqIYrkfxnGItqjLKQZTNd/XRKPsKTI9/zhLvYOrIOmt?=
 =?us-ascii?Q?HN/XE07unkBWm8Nxj7KVAkvxQqQH1g2e6md4d26NqeRrQbursG2m2xdT08E/?=
 =?us-ascii?Q?K6NjiHt3eH7/LH6OmCnFNu0Emqw2PHvEkx5ADy97/MQ/fO+6iW0XvZ/5aZMz?=
 =?us-ascii?Q?l7JsDobh0NdtVaBckoWJhjjwOc5md6qB7HIo18XufSET7iFZ76EoqMLuJWlh?=
 =?us-ascii?Q?hMBKo3gqE35yvVEb0nakKaua1oX8ddGK53X5F/zejQIGFO89wVRElx/4Mv8L?=
 =?us-ascii?Q?kbl1+gsx46fvUX5/lk/L5q37O4V22GOLRkaPQflg0g22l/NZ/379ZZyCIHIo?=
 =?us-ascii?Q?EiaMgx7g2D9mY2UW/9g/ziZTjphvEaXltVjFNJbs0P5Vpul5/TYeDEOOxcrA?=
 =?us-ascii?Q?er0cxTh0o8SIetDeMWKxaFvSjmgMDLqJYE8SbqTKXrRKfSgxrKZiLX2/emmr?=
 =?us-ascii?Q?MWfnQWGAoUpeZkRc/3gkHaNWglebSLBBPkeK9G48BHKcGHahylhjeXsyD6Ur?=
 =?us-ascii?Q?QkuGc96S5bfdtgznfS7Gaz7BHvvMiZmGQgkdhr8T9fnweEIsWJx3xxqZKHQM?=
 =?us-ascii?Q?ONm/vSHNRSCKMsmclxer4JLLblkB9F6W8BllxJF0mwu1C+GxSNhxpqxR95QV?=
 =?us-ascii?Q?EXS1HKJD60SDyNzKfmU5TuVuBOjnUbGMgb/u2+kiYnla8aTXFPPTpexlWKM5?=
 =?us-ascii?Q?o/C8BQgGo2rN/zbVTScyo1uSlu3sFejsd6/vFfQHzG+ionZBaXsUaWgPsLit?=
 =?us-ascii?Q?BMkEKsh2/aPHmY2IO41gVv48ak+LaWb+rtyWEz11N1qCmekuxcjEPxqr7ReO?=
 =?us-ascii?Q?dwvGJts1VkroxKhPPbqzVLybHJinneYBVhRaLUE8bGlVetebC3hQ5l64NDH2?=
 =?us-ascii?Q?C9SHqDGF3dcvqBOh+2FsrW3PhhhkMl5VrGYGI9qU6SZCe6/eqzlXxINmGQEa?=
 =?us-ascii?Q?/dL8Y3LGcxCHqQq24I26opiFL4CR3PUpydIsoAmaWWTb2LEkTNJLa3qBOsEQ?=
 =?us-ascii?Q?XIbubbOrg0vDcq8aVfFFWkEm7xIEuXTLFx+vK41+xYdT7yMMH5vJV2lv1EMo?=
 =?us-ascii?Q?9paDFTp2EzR4piYPe5WKewGcda+hWohTrRkO03+o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6477.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1074d69e-5c8c-4069-b30b-08dbd92bc5ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 09:37:02.5938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: az8tl/HpVe21dya4XpJZaEQ+eI/3dqx5dFgGZnQP/pqYSck5ceDgdWcg78X30owltxmj31imzlUTvoC2PPQM+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
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

Hi Jani,

Sometimes there is an issue of black screen on the display due to number of=
 errors like invalid input buffers (black), some issue with display program=
ming (no planes enabled, LUTs zeroed) which means some problem with DE. Upo=
n detection following steps can be taken:
1.Print in dmesg so user can be aware of this issue upon checking the logs
2. Correction steps can be taken and the design is in progress and will com=
e up with follow up patches.

Thanks and Regards,
Nemesa

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, October 27, 2023 4:40 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darsk=
screen
> detection
>=20
> On Fri, 27 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > Darkscreen detection checks if all the pixels of the frame are less
> > then or equal to the comparision value. The comparision value is set
> > to 256 i.e black. So upon getting black pixels from the pipe, the dark
> > screen detect bit is set and an error message will be printed.
>=20
> Okay, this still describes *what* the patch does, but not *why*. Why do w=
e need
> this? What for?
>=20
> (Please just reply here for starters, instead of resending.)
>=20
>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
