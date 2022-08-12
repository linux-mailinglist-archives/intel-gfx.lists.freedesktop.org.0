Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C447D590B52
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B91A5135;
	Fri, 12 Aug 2022 04:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F031A5116
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660279794; x=1691815794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R9yHX/p7+DEEj9NFLo43BG+3EuiHAmniSYx42xafHJY=;
 b=FNx/DqWslzSQBaTVP7QJTVN9qACliUHjrfPae3NRadUmh32i3Unyyj/C
 iRcQBprFbvkwBK2KrlwF2J0Iitd62YKwBnE0jvEFQU0oGMjq+BD8g0SA0
 3sqoNvMPKO4uSSuq435mcMe7qdOxgp8qfPTFUlwQya6nciIEjxB7fpqN3
 LFJ3qIwkgqrGI4yJxW6FPwT8LVfrwVAECmuMtKPHtPiQ7i0UEBRID4HO/
 eSKJjC9mVusqOlGSbc3hQ/wm682CwDLjab01IUyUtFrdqn0y+0aNigvtv
 e0HXytRuRL3TvVsrO2adyFmrCks9dSCTRWWTGhysM+SGjQ+r401eeO134 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377812786"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="377812786"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="581952111"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2022 21:49:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:49:44 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:49:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:49:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnnjNKYzs9IibIH9GvOC134zBKncIk8ky1keCIWanNdyATn0Pq6a3QCrjoKtk3+wU7/D7tcDPrc8FCQzfg9P0FtmxSjxvKFlAMkfzu4LjmKmOBz0x2EUVn9kbsKR7+tvZseiauWlO8kMEkoVnHTrNoxA8FfT0A4l5+Gp5Vx3wV/5L8pntQbT7nuywq31zaDUddd81CrufLIH/PyhYepAOM3E3gSj61LUhC/h/5CkMYiLy6K3yhAiYmQm/GaKk2uWrFwqpsrqhQpnPC7DbR48ETJBAdDY8qWRlFJHYcpyXeMTEe0OGhvqh2sbWew4H8xjVw2Wgg+rsktKTo9i5XgSHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9yHX/p7+DEEj9NFLo43BG+3EuiHAmniSYx42xafHJY=;
 b=oeBWRwd7hvkl350y09yvIBvSNZiQnlNGEvpqzJEqxQ3Egb8jv/4KFnwxRonao1WXImnCdVrw3pcqI6QUkmY9+1h5H+DRVnJ2b05nIbh1nb+Ke42zsVnESFsfgMMwAYpMC0snmqXqPhyaKcnNErJtZ2JLSl4Lmphap1lSeu3ro69xIw+7DuT+rnEdFinqm0vMpDlKLPMamuXUaF0lmkYb3S1l5wxtqvt1vGXlitw8VS40EngAzbg+omx6HuIwWjcBayPfe51vDxpxoKdr2NOopJvO7RVXMP6bZ67cLjJQNpEfCOSTt6nOY21TD/Apgp/xOEwOU0Uu+dCVXNQzCPHyRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3287.namprd11.prod.outlook.com (2603:10b6:a03:1c::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Fri, 12 Aug 2022 04:49:36 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:49:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/39] drm/i915: move color_funcs to
 display.funcs
Thread-Index: AQHYrZV3Of7YMds/uU6NAktvNyGjVK2qslwg
Date: Fri, 12 Aug 2022 04:49:36 +0000
Message-ID: <DM6PR11MB3177D7E5894F4A0074AB2636BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5bf65a20aa1fc7be74eedd57cd830136b867a54b.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <5bf65a20aa1fc7be74eedd57cd830136b867a54b.1660230121.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: ad71fa79-3635-4289-d4b0-08da7c1e0eee
x-ms-traffictypediagnostic: BYAPR11MB3287:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +eVUamT8BR2xbZdcu4VpjQ5AmemykFWjqokoo7FiOarXKOjU3+4Nad+MGC97iKKcLxpC8Tny0j7PE3lEOdKO/XJWy9fMLJqcWadRsUNqnOlewxXrU+wFfcT+PwJDMOQ1GyOizIKcVyFaU2x4VMyKeF10N4K/gVOKVLC+fVABNe/9yNxZkID22zZk+Om63/z0ixCJHSehnHfpaKZg36xkap/x8B86i0VQcbsHi/s3yqtsgrpPTzOMtnHlARj4yt3+Su9UhGGNyjNjB1LC62S/b2YlM8J2/PMELa5hJR4ePxkK0Wy73iE6gM6McydfqPNhkmCm2JJ90/RBN7Pz5tk3Nx15CMbvmdK8cCB0bRNKbL0FCx2mrw46HXDoby3kEplpvRxWMS2hp/iisAb1iJmVU4OOB/JiT5Wb6rDdvHyvwnVOMHRD446svZEFHcdXY6vwQmeW6pCoHsFDyTY8cWMhG8mEMpmKpBSSwtjseD04yz6BJ4/Xp1uKi13UWOZfoKPUUFB5Ob2mlm4XGohhBbnXFfewD32SVok6yIWOWI99ecVHrXaPa5i8fbMbkc/zU6xXZ0nlfcGNGmZV4ghBs71Pqb6ZR0gHnVPutetWyUOIwLxQoa90P0d0fcPShy5nxnZC7W/+UeZIUXM8NbXyOwfMptnnYa22jsndJbkIf/LdeEe+XaP4OnfBYdMb9EsSXpCJtzPTlX0sXDn6UpgBUVTwlkBO2wC2Cu26WteRKsrZA+QdIjbPXRqnZun0Uzj7sbu3ylxYh9UQqV2vcYAaHOoOI8oWQd0eji82j0tjCkOhyeI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(39860400002)(396003)(376002)(5660300002)(52536014)(38070700005)(54906003)(4744005)(110136005)(316002)(66556008)(41300700001)(76116006)(66476007)(86362001)(6506007)(33656002)(4326008)(7696005)(66446008)(8936002)(2906002)(66946007)(8676002)(53546011)(9686003)(64756008)(55236004)(26005)(83380400001)(82960400001)(186003)(107886003)(478600001)(71200400001)(55016003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FSeDLlqnpWVJ3vA42nnLmnFVPyYtd4mdaadUdQ9/aLO2srU8HpvltfT+sKjW?=
 =?us-ascii?Q?dyGjb64UIGQb9j0orvlDAaJWYAVN6VqMqmoW5TZboNRTSPJq4CQHPuObZ2qO?=
 =?us-ascii?Q?q4+eebqX1t+nS7drxcHmUGlRJgM2/Ams+ixYnd/qxfXpBHeG88yZPIwlgUe+?=
 =?us-ascii?Q?u9new5xipXaLKDiUij7e47LfLTAKl0HR3CnKqD6fujvs5JTY8hE+Rrt1KDXI?=
 =?us-ascii?Q?tIoyP0aP/fNvTz19XeM2qcZ74J44lZhbCSpKLkG6iKsA/5v6SXZz7rFqjitY?=
 =?us-ascii?Q?d3aNE1Slnic06xnt1v0m8/KJnQhIf+2/ZmjrWtwesvotaULFC+ikPHIGcw+r?=
 =?us-ascii?Q?Vb1+KS6FNqcFmfLtMlcobUT5jdANT/klV9IM8gxtgb+u1P4Kb3XKDFmGha0V?=
 =?us-ascii?Q?sx/18kfWF9n4CQCzdsNb088hlYzVsWNv1mDQxBkkfjOOqh47XrCZSWNhgiql?=
 =?us-ascii?Q?3hpuGCL5WN9rWUPa3/hg1I+U0KJ5q3a+DSFFETNe/hDOC6ENaz/hxFYTrSMx?=
 =?us-ascii?Q?bVHhKZKK7DdJaJ6qa0j6Y4CzuRca69hUrExyYB47JtbAYCUsoAQ+KeYRJidp?=
 =?us-ascii?Q?yyIO8ogH9Ta+qW7SQlPydofkebUD9W/Mc6ynyNcSbN1obxv4K3sTTg/TcQpI?=
 =?us-ascii?Q?7ZoGiVdZBSE4NQPdou3qjNwr+EKiiAC3thETEmOTfL10Lik6pV4GhIRFcDCy?=
 =?us-ascii?Q?J3PMLbFeurK5S48+69L/5yEsl9UwPhCJfH2H39p57pR/3heTHyxhTDxyouCX?=
 =?us-ascii?Q?bxYh6lAfh0nsUF2KuM8aZ7Ik+BV2cQ2RpBfSvopiYE6Q6GCrZaJEb8zr42kJ?=
 =?us-ascii?Q?o0lukw6UHQLnxXzReI+6WBjp43aRPyGJZ3EGn9KgTi274A0gIhgkXVRWy1Aq?=
 =?us-ascii?Q?x6uOhhEAF3QCkUlfUE1ZSiOGxJcSXT7Pl+jvPU7oQKVY84G+SagEtzRNpWH9?=
 =?us-ascii?Q?EW+HDsHZE4+jl2+XIZRJdiXCwNTLMKklmpHxRZWKbpknAUoo0PFBa1klfEsT?=
 =?us-ascii?Q?IbUKpC5102P5SIMVSRPBySjGF9NAB1HzQUsZ+fco2pwz/nqgZ4I/pMZPM1fz?=
 =?us-ascii?Q?TtMONyY56ZrNSZIHzF68m/nF795zL2Q/mS+oBEVV0Y8XURXGZAV9zhECrhDe?=
 =?us-ascii?Q?9aNqTnpnF0oE9unIZVL0XUawcEpvnHOhUi4uP4QOhKL9xTtqMXdPnjXMTtUB?=
 =?us-ascii?Q?LiGxMgMYGZ37hjqj/senNAn/ae/PtYaushL4ULCHLrBe7c+AOI2QYR0/J5MD?=
 =?us-ascii?Q?X+/skcBNZ07UIv/2+CxTIwFXMLJvwigZfjBi3KWqHO3btzc5pCqcVcChpabj?=
 =?us-ascii?Q?zrwub9THy4Q+73oHZ5rDYzdagZd+IHJiRcgRqM/3ipaQ1Voh9BdXkTr98arz?=
 =?us-ascii?Q?otnzH8k4/BbklgtIwFiMYe0qquF1/NDgUxl1sYK16e5vgB4E6MbWF/D7ALy/?=
 =?us-ascii?Q?xWIrx051A33hCq9T5/D3PvtPwv4XyLsa6ePjIzFIQb/t8/8DZNIRn2/baDZn?=
 =?us-ascii?Q?T5wJQClCrHEwq5RuPKJCTX07NEHJnn9ZbteRBKKiZX4nWVMuujHGNx9UeC2E?=
 =?us-ascii?Q?vsLuPX21qV1XpXFVuG8Oz7ZnBA0tXqEFcphvPAha?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad71fa79-3635-4289-d4b0-08da7c1e0eee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:49:36.7430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6LjnSulBnluq47R89awwL1zHE5pi1d+CMmhxORA9Ftabkrg8wmdHCgSGwxINgQV61EcCzfy7T1JsN2OYUxeAQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/39] drm/i915: move color_funcs to
 display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 08/39] drm/i915: move color_funcs to
> display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
