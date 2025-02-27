Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E6A474E8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 05:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF9210E1F5;
	Thu, 27 Feb 2025 04:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqPL56Q9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5329C10E1CD;
 Thu, 27 Feb 2025 04:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740631825; x=1772167825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PbG+fPdftqpaiFFLjYtReatjEPuSVGvuFB+AFSXL7TU=;
 b=SqPL56Q9HN+t+Kg0dlUXJGf3FXR5d8S1RejcZzDM5HJeBSrbY5AmFUri
 j/NoqydD04LkK8IUDwUQkiP5E1AQGM2dlXAlenKr29gqyFVIytJu6YQ8B
 WktF2O/ZXFz6XwPDahztOmTq1Q/Ia9UBJst3UuNENTeFIy7kVu80cQfX2
 06f0+hN1f2I5ld1BvCveSBLRDQScbZ1nUUxvscMvWzWEJhP1tuAXzSfOq
 M7+qZmiHB4AGbnAcYQDPINas6Q0lWQ5xa+jEwWq+UP2sCwV4DGsfQK6VQ
 sfIWi0iO8dBzKaAUfXyJ5zyfAIw9cnil4aqbEvptJ5H9mYlOy5r/ahEZm A==;
X-CSE-ConnectionGUID: WrTSYxPnSR+FtKHeuuNdUA==
X-CSE-MsgGUID: 7wHLW7jQRaChezl9gDVcKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41389688"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41389688"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 20:50:25 -0800
X-CSE-ConnectionGUID: qUC4NG8WQHqSQR5zUtSP2A==
X-CSE-MsgGUID: kVI67DJmQ+KecJ0n78+5VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="121924475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 20:50:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 20:50:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 20:50:24 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 20:50:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HEU/ULOBGvrxVGv1AKGVlUyskDI7L8UvoyQAe9Hdb35s2+FQySdfrz79FJn6l6oMQcj4j0Dfq55wps/WXfhT2gBOgqdKatO7rw81N6ok2g59MjkvXjL6kGXk4VlnoHXW+/595AkvCzoHx/e8l9Kma0fw422Pi/G+LeNmsivaXqnviUX//mCQngilnqmn+kYV+hBKFZva5a09EXEH8+jtF51myyjVDDQ1mXGZixgbDirPSiwPr2ARU++Mx+FxZ1IlTi7FC9X9fUh12kyjZwQTVI2mQcnBGJRZuQ84PMf0rbMmPMq9XYbmskMibgNLmw7CQBoFANS8nPOtyR13UcT4Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjVbIOedDoPDWlQqBXflTP1J0ddOuFng4rf7ZlpkeG0=;
 b=tojW5iDdZYRbJPAxuXO1+dBQMl7hgT/5taVGSXmZg0gVGGiQ3iyo42Se9pNbqjosHXJ3l2AY1BzE7X9COeRDQuMUcLIZDhEkai+eYwoOWBwoRgReFSW9lEYI3fBL4il0AqDYakRA5mVEydjxJ28YpLwcfaTI2Qw3QrHRrhxCKKk1eZI2gsIaeO0FK3Xs1WZIdXFerMvsgSnvNs4vl2AbB9Vzn4zVSvF376iV+5b7j1nzFl2ZObDqlyWksUc1N6Q0u5z8ZJ/DNAgQUEQaFsNXPiR3AnZ/Pd5dkPSfZDUOoMvnCj2yTTWPAFdhjF5DQGJpsNeADzJudmjW+DoxlTlBSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA0PR11MB8397.namprd11.prod.outlook.com (2603:10b6:208:48b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Thu, 27 Feb
 2025 04:50:22 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%3]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 04:50:22 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915/watermark: Check bounds for scaler_users for dsc
 prefill latency
Thread-Topic: [PATCH] drm/i915/watermark: Check bounds for scaler_users for
 dsc prefill latency
Thread-Index: AQHbiMsjzzeIL2VNZEONksxj0lQexrNalFuw
Date: Thu, 27 Feb 2025 04:50:22 +0000
Message-ID: <IA1PR11MB634809FF5527600CB614F230B2CD2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250227034106.1638203-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250227034106.1638203-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA0PR11MB8397:EE_
x-ms-office365-filtering-correlation-id: 678983f4-d223-4d6e-adb9-08dd56ea3e22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R0tL9nqTulffMin8NRPn7TBSFKmZopnBkwy2eKrHNVJePMrInJeaYfPyyhpQ?=
 =?us-ascii?Q?ZAMqoZkwSPLO4O9MDUz4kZzqA+QoufGhVWmC0FPeur14jVi8os7r6q8Vnuai?=
 =?us-ascii?Q?rcdANhJEjsX48VGBr6w1F4mbkMff/ngRZAeL+c296/6u2WXEnzBUb8EL7/VG?=
 =?us-ascii?Q?z9zfGSasS1RbHK7m8vR6dN18Y5g1cN6fWL4Tvt4Hbncps8t8GB4bVRpMeKOk?=
 =?us-ascii?Q?G4YAbSvi72TxjAFBM2eCJRDF2ztvTKCYmO/xCwrzwicTQFual2cI8eMBL6Ah?=
 =?us-ascii?Q?nUbgLtu/eAWy9uow8VTeNrzcUM2Jdrqv76EL3mVP0/ntaKM0vArty5jbAxrf?=
 =?us-ascii?Q?hlU2/Rqp6P0u+vkiCI3ADfOpc6eJq/tgW9KGRxfDqm3lk+uMzgN9d6oBTOI9?=
 =?us-ascii?Q?6hx7kogny9EXaIJantk/X+8lbffQ6YfzVvAGT4IzdSuB0MHMSW/tfb7fXg4x?=
 =?us-ascii?Q?CP+kK9ulohGFP44Pe7MbgEiOSrb3KQnMA9XbNnR2UP3IbE0ad5Z0XfXRUKq3?=
 =?us-ascii?Q?y8NEq6DJJfErESU9yPFYBaO7m4RreSgopmcSP7fJ/kOkSnGO7whlf9HX2e6l?=
 =?us-ascii?Q?FZullhDPGMfde2+t2OIf1D1KPn0v8LJRgbmNLrAuhSw8STw+dGzMEM0RpqnO?=
 =?us-ascii?Q?JGdqyEPgcLeQaY/o4XcpE/Y0SS76ekOg27pfsFj6d5Y0JylcjC8KMV4D/xzq?=
 =?us-ascii?Q?0l6kcjnI1NghKXcohpBzMItDicZ+Ogz9Xas8v+akZfMQOcCImD5dFquTBTg3?=
 =?us-ascii?Q?iFMHDufEo2W3ydLp5l15sKTdTwQ5VlSleipxozFywJsfQtS0+Qcl/w3MAieJ?=
 =?us-ascii?Q?UsldjiXPOrhpT+/vndNXMfefvXOUWQQAMOVH1bXgEuohnfP+yWZs6B8e1dFo?=
 =?us-ascii?Q?pFpF/jshK4GIhwXzRvJdkhGOkhDGc7ru3OBWQ4Eqr0oJAGyCOsOgh4+Nhhvp?=
 =?us-ascii?Q?GEFqQvlqQhV++WZu3FVp/nRldNS2c56MqpSwsAOSnhXEG77aaqm0JeSH/AR5?=
 =?us-ascii?Q?bNKiT0QHRdSxw39ppc4aHdMfxP7vtNsrNQsDm6npf2WEZX2EVrRO9qZcRBvd?=
 =?us-ascii?Q?kjw/HE5Y11aORi2whdAZGXvOa/DnZOwnt0JXd1+OYVV6zGAuj6Do92LUy5le?=
 =?us-ascii?Q?ivV4KGaMgTluATKvgzPKlTC7j/AcWhJjkSeRIr7yNGUJCRLAb5BIbA66NGPG?=
 =?us-ascii?Q?RulaDA3wZAJuDFj4UGlMs2HhGN8aLOcYvzQMhImha0JhlJ6w5xkqbufaaR5A?=
 =?us-ascii?Q?PnIAqPAp2zoV1eJEDt62UtpzkOHIPEwQc9i+pioLJt8sIFqHK39uh3pd+RPz?=
 =?us-ascii?Q?7bMyzHEBPSKqB4064F0Y+cz8ZIkul+sTjjNxo8mrbH1gM3C+frLBCjNCQvMm?=
 =?us-ascii?Q?6Fjpl6FX8SGbNe1GUZ4i6U8Cf0nS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UwpNSOBB+d9QGydrB3PwETUR44eHvIoqjCBCVqZe25C3Ytl8m0Lc+j7gS37U?=
 =?us-ascii?Q?O9uKxcfK89EkTBwYmTEVe5mj511LRzdNZgi7tKfu3JeWS9sIeUBxMPL3ajCN?=
 =?us-ascii?Q?kz74rWyo6Jn7/cJGumrKgcuAq/kSZtBlNwL2hb8nXAh1pKWmfBUPCNUijBM9?=
 =?us-ascii?Q?/hGf2YcByIb45+0FEDlL80Q9vwTFt7Biaeij5TRYv5IOZjQuSorSfMgGIQ2g?=
 =?us-ascii?Q?KbjlMIzaOSv1GunPD99IVctRuFWQBJmbPutLsPnnLXOz5BPuP0JNEBkL0yUC?=
 =?us-ascii?Q?mVFR+2A/atoIkUO8pBUtK4EVGGG7HBI9bWn0gvmOWbXQ8eYF+b1qRiOifloj?=
 =?us-ascii?Q?ESd2kR7Z1ijtgUlG2N68woAKZnEgW1ZgLwD895nhxy7o29kp0FX/ig/7WNda?=
 =?us-ascii?Q?CyHOnmD65BwngK7egk83MZlGwxwrNZ4vfX42Co//Rx6BH6b9VH+oq4F6/bHp?=
 =?us-ascii?Q?HWG3Eneoss2oY0n/uDK+0UMQ5psuq8qnwL7kGJXg3gN+eocFSU6mlvz9nQO+?=
 =?us-ascii?Q?E/LOhrv6EHNapOmGZqe7+pUScx112uLsj+vQEdJiB2D01GQF6blugiW1Y2BY?=
 =?us-ascii?Q?fkO1Kmtsul6YwDPZ8lMy7QdJu5pDTKU74n9ezkPrPbqbyCiJrMIjInKYIH3D?=
 =?us-ascii?Q?PTspeVDIkKby/kcdJmLeEs3SPQ3l8O8cBqB66g0JNb7txQozLm4VxiBbOddV?=
 =?us-ascii?Q?nalDkr9RrnKihJyG0ZIP8Sdviz9HoC223UvSWrH63OfdaND3v7YHUqJGqdun?=
 =?us-ascii?Q?tSxC1Lpcf+eGm0OdVSeTAV7xEvIGW1vPSoBDpP4qAhz7hMO3u3JaUMG/91EL?=
 =?us-ascii?Q?e3YS8jCea81uQPM6DKYPL8HzrcsLLNsJsvgWpFJE2bvK2UQnpIvNtqGcebnv?=
 =?us-ascii?Q?0ia885S6gJjQhojMABMhVUXTVm/FQRbPfz/sbDj4gPrqlUokBctgwTk7jutk?=
 =?us-ascii?Q?m9MQZdoznC0JJ4T4ow6z2hb/xFbDGkdMWMuOUPre93MWy3kYidMdrJmCtobv?=
 =?us-ascii?Q?iYUA9wlQV5czZt4hdNvxRH48tn6Q8HldbheHqTDy0+x487Q4pyeLZSbz5fuV?=
 =?us-ascii?Q?U07kw9rZyXyxk5XBtpD8UEJ+WZc+f4eEuf3jvIjY/5/V3tf/ZGJ9BkDGZpq0?=
 =?us-ascii?Q?frJI/Fe5GLwX+Sv8a9zKy306re4oF2RoP3tSqGq9CLQZP0DHWB5MRnKyYwlS?=
 =?us-ascii?Q?5Dl0n19VyzaRcmhD0gPt6FueOnOjX7yDUK4ofq6N85wrFKuMadxjBEZmAS5s?=
 =?us-ascii?Q?yhRM7H8f+VZ+bfkW5V3lLvgwfCmh97158dtAmGAMMPz6D5HThzG+NlOsRMV1?=
 =?us-ascii?Q?uzfJl8WeKYRa/ekFlNhneGXmZIGWo22Gwau57vsSV6CCieP/ti27RgfV93TE?=
 =?us-ascii?Q?BWWrUVLZO5Ga9qkyXj0Luo8MA+Ef2ie7TthYynZOnEBbCbjrLVENW+robwLO?=
 =?us-ascii?Q?5JhAq2o4IeuFcBjjDsatyIQk98MuwJmJeP6V9LM2VZxXtOge3y5uqSvd7mXM?=
 =?us-ascii?Q?/BY63K4wAhrtFK1S1b+jq8g25IhdVr+ZE+EQP34UTY6NpWBmmnutfESwmA26?=
 =?us-ascii?Q?pX/28kce8Fmp4VoPbhHhR5ZUWfsha6gO8+q385T1/hLevKoreYt8JEgWaFWz?=
 =?us-ascii?Q?IA2xEZjWLw6ePeTvBHWjXo0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 678983f4-d223-4d6e-adb9-08dd56ea3e22
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 04:50:22.0763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wNBKYxVgjfcJZaHXj0ZaYZBSQSDEoearqGQ4iZwDVsgssIm59Yl44v5tA9JmKJ/FCUUXFXUctVsFX0OHo5vEzHYqg6gV3orbZ8OAQjIUDSCVWego7C94So6jVbGWbNbj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8397
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 27 February 2025 09:11
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/watermark: Check bounds for scaler_users for
> dsc prefill latency
>=20
> Currently, during the computation of global watermarks, the latency for e=
ach
> scaler user is calculated to compute the DSC prefill latency.
> At this point, the number of scaler users can exceed the number of
> supported scalers, which is checked later in intel_atomic_setup_scalers()=
.
>=20
> This can cause issues when the number of scaler users exceeds the number
> of supported scalers.
>=20
> While checking for DSC prefill, ensure that the number of scaler users do=
es
> not exceed the number of supported scalers.
>=20
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4341
> Fixes: a9b14af999b0 ("drm/i915/dsc: Check if vblank is sufficient for dsc
> prefill")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 10a1daad28eb..58b91981e400 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2314,6 +2314,7 @@ cdclk_prefill_adjustment(const struct
> intel_crtc_state *crtc_state)  static int  dsc_prefill_latency(const stru=
ct
> intel_crtc_state *crtc_state)  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  					&crtc_state->scaler_state;
>  	int linetime =3D DIV_ROUND_UP(1000 * crtc_state-
> >hw.adjusted_mode.htotal,
> @@ -2323,7 +2324,9 @@ dsc_prefill_latency(const struct intel_crtc_state
> *crtc_state)
>  		crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
>  	u32 dsc_prefill_latency =3D 0;
>=20
> -	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
> +	if (!crtc_state->dsc.compression_enable ||
> +	    !num_scaler_users ||
> +	    num_scaler_users > crtc->num_scalers)

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  		return dsc_prefill_latency;
>=20
>  	dsc_prefill_latency =3D DIV_ROUND_UP(15 * linetime *
> chroma_downscaling_factor, 10);
> --
> 2.45.2

