Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5ECA43847
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D9810E5BF;
	Tue, 25 Feb 2025 08:54:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IiissvLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293A210E5BF;
 Tue, 25 Feb 2025 08:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740473693; x=1772009693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C4FI697xdKKX1IEio63IaOnn2RG07wA9259/rosdEcI=;
 b=IiissvLElRNELouP78Kc9Gqbta1GFmgxxSX5r36D1cEXfTI14UB6cS0F
 Hh6PJKd6wNC29AhqGJpQEP+b+DihNMM0cR4dHb3MPQJDsD8kANA7TtIx0
 lDgbRqFrFUs8+099zXqLYaFjo7/7HM2Nswjj79/TWibS5q8Fm3T1EA9r+
 Wm1EcDyl8B5vvh70w31526WxAmAXABRxJy9x6GKPUf7xBAC44Itl6A8QZ
 3T3fWtTkcDu4nAYQJbZ0JnbCmrZDU1T3i39bGRVBJLsJnKiQxkBKI3lSI
 4XQpgzeNRvJBMCzoNhQtIFnxv4do2/PCRnNm1hBpwplx6fh/Xl55DePlP w==;
X-CSE-ConnectionGUID: iaT2/qVWR+SzCHTr8z3zHA==
X-CSE-MsgGUID: vGoxbKdiSoKzzrJ2V/fG2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="52670907"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="52670907"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:54:52 -0800
X-CSE-ConnectionGUID: MiVF3C1VTnKbQR86OWIPxA==
X-CSE-MsgGUID: NiqMv1rpQlOeTirnPgt/nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116816654"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:54:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 00:54:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 00:54:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 00:54:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qkz6BCSmPJrxKPu+GXP+nhM9dpUcYW6onp+rMEHlhhxXqRZ9u6E/Sl1TpvjrtEdVSabpIbODX7ht7blvP1qH830j/Yg0uzqgEMpd9mHXCHEEJj4XqK/UNfTIZ/d17IMqajxKeaDLHlHVgbLFhGDHTVWvcagANQzR97wzVwvvgAgIxnH9dzlIgwFoY61dcK9fYakgei55VbWMROm226UW0YkN9evudtmOdNkQtoZobjgKNVHFbSHnKrw7jdCAV7T0ewVoPCPL09dT38oU7M+AnwbL87asN/R+WGu93kH70dtsInkim5jNYvJkFWNDRLo2vsDzY81RFJt6N+SD5IEZ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uaOrPPlOzfx0l1uN1Qu+84B56eG6Qu1T8yeg4QzbwxU=;
 b=ON/3Xg6FDozJJ1O1U6U5AwgMBHx77spEZCEBRougBKeNzZ7Fkzmlq+cI934s5dhH/n4xztsyXmbPq9MKoWp9M3CqrYVsflV3GlwKNJAhh3THohFWZIV8zYjV/U4nKG4oZ8fu2G1sFOLdnXaeThVqkk7aOuL18WfVmW6zaQbNLvb3hdsYra/U2koVEinJaok/3vIUeRyYUtA617n6mBerXJD53jrzPZnRVTls5LEKpiq5M1+afe9Sf7lCkN3Kq14zGWIoXG0oq4Lsmk/fhrTD5M9Xaq+lXy82xaNHGpQen40LWlzRBUq0G1DF/yl/LtyBCQnUWaQngFLHd4sUzWO3LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4735.namprd11.prod.outlook.com (2603:10b6:806:92::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 08:54:43 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 08:54:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbh1ynxA6dtsvJ7kaK/vE1vKqgv7NXtOSAgAAA15A=
Date: Tue, 25 Feb 2025 08:54:43 +0000
Message-ID: <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com> <8734g276o6.fsf@intel.com>
In-Reply-To: <8734g276o6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4735:EE_
x-ms-office365-filtering-correlation-id: 35883800-740d-428f-5131-08dd557a0c0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NI9jqs7t3hb4Y+J+iINyi9skkH8KH43yZspyh3pgu70+KXU734aVaMllTPPx?=
 =?us-ascii?Q?+oV8x9+fZZEZoH3TInzMWlNp9B+aPFaY8bDG1EZPtEbJl/GLUWqkJdg0iIRS?=
 =?us-ascii?Q?/vsOriK8ERzPgrHorUxxmGZgCezOm470ZLbVGKRGChTAFQ5iNXpJAX98MkGE?=
 =?us-ascii?Q?bwFAQ/FsdnuKXN7bzJGeurT049ru3hS4odAERIKvvvofDd7DHyK6N40TZnCd?=
 =?us-ascii?Q?bMailF8tEf1S/+nooYKmoZ6oYvUpRZsrhZJuGWelf1qJeC0nzsmUwbTgwSqd?=
 =?us-ascii?Q?bYXrjVXlpr3AvsxxBWTlsww7RMSbMzS2kDPwHDEefRti+7x2OVBRXCAoDVFo?=
 =?us-ascii?Q?J9sdMoVt19Rvtrzfo4S1pdSXVOso8Psx9R3SXkhajW/MNHnnssFiQlBA1yiF?=
 =?us-ascii?Q?u0GkimeO5AAkNFpfgfWWY5LrIXWMer0RVMJ+8TKGU8JYJWIWAf45t6b7ft6F?=
 =?us-ascii?Q?Wr8hhryjoBIlgdKBu/qC40e0/Be/DOBmfEkrSS9HOC1WGzdGR6vUV1b+oPpr?=
 =?us-ascii?Q?BHb5W44xsIlulN248DAggmQlw+5Udsc5mjMAuTgNN+CjiJfCyqKVs+knoMsx?=
 =?us-ascii?Q?bn9Vy5eDmvoxTJwR5fvYnfC3sFYULWigTfupu+kjC9DMmtngf+DQszTFfpVZ?=
 =?us-ascii?Q?F8upRyWwTtDE9C6XWWsT2TJ9ryTtM6i37kcxTD1N0gJKzOJjj93zyDR3cdQe?=
 =?us-ascii?Q?Zhs2/owthbUU41HRl2EqpuEtpmaV8mlE4w5UoCxrt5smY3CTpHCnhSKwEWc8?=
 =?us-ascii?Q?PIyC5gj0Az0LGImO6XLFNKy+2W16NRYRH2cisAkgGvvzY6KOjRdhsQWEVpRY?=
 =?us-ascii?Q?lDxoFXqAVbi3ZQEirASljHcFzwS39T7IJtHZuQKJdXGkM0R42npHzpnVHhbQ?=
 =?us-ascii?Q?QY15ywKHbDzYNtXNGg5jqjYbbJIUtI8PNLGkCCwAf1vsZxiTpn7pMu9xYbDh?=
 =?us-ascii?Q?bRmtbGrP9aEwtMq2T3jv8njbyV1nQNdkcNwuEkGgD0FQ9symATGvMnIjoFmP?=
 =?us-ascii?Q?wKawY1pgB+7LyzH44IlFTcmUDbd7npwwow9r1/Dyh2nmB8WKRruG/qe8JS/D?=
 =?us-ascii?Q?jsxbGztPDeKMYz/Nv3yzN8UVYRrALIfQb/I8Wrr2Y1oJY88FwKU85CpEgl/J?=
 =?us-ascii?Q?B3+nHzB5KBxBOxx9bi36Kwk3+P6tlW6wrxbJkBVkr+4NZrK+kJY9tqvt02nj?=
 =?us-ascii?Q?bC61I+L9lnSJgKRQIYoxIM2C+gdzSReBccEmUMI2CUV+blBJFu0xeEAMwj4l?=
 =?us-ascii?Q?B/L9u3myZiok4vKkETCZLMabbsJ5VV8viFDMQ+NIMaYHTQxpX2jBbBBHCIBw?=
 =?us-ascii?Q?d1rUxY7IEW1R0S9ZfLsDuvpzj4ZYe3GxdzXxO1GWSFID89FAyTbLNQwIvp9J?=
 =?us-ascii?Q?zKEcvfTSFl9wkTPQJ/3Mo2HwAdFyvtcxkKhRFmy/uZYjZlpsfW95CHfablSh?=
 =?us-ascii?Q?m3DMYfZ6b2BZYqOI5tGPjsbQKyMoyldu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H0TdyugGJJQQE0DZarS8dmB9KmM6qqb7VorN9VrjRejwI///4i7bnBW3Ui2g?=
 =?us-ascii?Q?a6pmZff/2Q4YNozGW9qGOvHwalGBbGxD8oOlUA1uOMCAOL0oa6oMdEFcu6uu?=
 =?us-ascii?Q?nVJyjQL+6rcDMGnwFjHJAvYxvd4zjZrVUq+Cb7vJE8cFEhgXWItAmx1SHbgO?=
 =?us-ascii?Q?qdx+nVR3M/13S3FUndYH2InvypBqtCCbu1BPvoqLQ6TSFtuziG6LNba8OiSj?=
 =?us-ascii?Q?C0ZajnNz5norIy8n1Gpf+MQuo0J6DG7XHaFAc3fRTxNEEU8o78VBC6Dw70aQ?=
 =?us-ascii?Q?XYWqKH/NlDLz6rMHOzgv84CvWqvyYPmf3BGISgeqmiX5PmTC99y46nA9jCtC?=
 =?us-ascii?Q?/2Kr+oxqALQ7GY6kD35Dtjyf4dp96uGfgPm7k4bxs6EDwqJt6ZPOTKFWs+1n?=
 =?us-ascii?Q?GyymBSRYX4TkEYDuexqhWdu9C3S0QTaeayHRJEt7EZahsOfIUFdfiBkVAJgE?=
 =?us-ascii?Q?c+p4riSQMoDbGdqxyC0O8RnAVTBI3miTSyl3YHxY6o+z0bF8iBxlJAIVZfEO?=
 =?us-ascii?Q?ilzlrSxd6zkiyKH0iRdVsWCwq6OgVHklSDFIjSaQkSbyM2r6UZQP/t1NtdTs?=
 =?us-ascii?Q?jJw6Zjer/ivCPBBBBotiwaMRJPR0Aoj0ptzQWdzjTiCrtuSWz4BilMKuJIWL?=
 =?us-ascii?Q?BLZfRaD99Dgg28GImclJm+aPBdEveZT4awOpTPCAWizpNFpNbyFN0hfrMUp4?=
 =?us-ascii?Q?JXjmqgkKk6R4gGcR7+BdYSKpNqFU8aRfRoi1jVQAWtr9NWljLWuwl27LgaOl?=
 =?us-ascii?Q?4ND27yztrBvhRX2wfEQjQDMmAP0GBtdo5K0IFuXjsT5xPaFynyLLKvuQVnlL?=
 =?us-ascii?Q?j+BnrVWR0ZDu4onLj5I6jqH2KveAzz7yZKwBXb9arosTXr3QlrW05mG9/5q6?=
 =?us-ascii?Q?xZM0PS6xijTW6kIN81iTiU3mDTzEU8WA87jNAAoqg4VGUDAGfoXDljIohvPI?=
 =?us-ascii?Q?RJVVm2GQ2cxZODnV7iGwyHz+f96kmKwhizx5PoBilHgpqX5IUmz3nWbVOWLq?=
 =?us-ascii?Q?WvYRh3AuBa343lJA4KVBplNuyDyMUlHVqlFSaIgYVbG9mSf6aU60FMMw6p8i?=
 =?us-ascii?Q?lr0Mkh4qr9G4ErP4MIVgyV2Vk08B27kPYepgF2+/UfUU2GtEeG7PCUKFNvJ+?=
 =?us-ascii?Q?6aGrxN3o6JHVVpS2BRMOd+m3KYlhIp542+Ur3Jk+B0z1eEmeFRlivMgpWP+S?=
 =?us-ascii?Q?IYyzcPluv+yQELRoTQ0RK59FZlTlMGKclbyxZHXvQtJZPfQjFkqCxiF90oqS?=
 =?us-ascii?Q?QzqU87358Hv6LdB4kiJ5scncKwDNIcdIe9EiK56jRjRECzH/Ktg9lChbH1cO?=
 =?us-ascii?Q?xjE0+UwrLrjH+pFmf7M48//JY4+e8U3zbOCCvgeaGObR7AKwm5opvD2ApzFf?=
 =?us-ascii?Q?PNwi7vVE2tSEfYWIZLGQekPlSRyU+pr489vOH0PhzaPkiAi8BXHjTDz2G7g8?=
 =?us-ascii?Q?GjpIc2Dwtf6+3mWjrl2Gf+uYHBIABAl8WVJdxQdyPkPGt82J7ofewIYnzPO2?=
 =?us-ascii?Q?cxqHTizbAJu5/PmuF8NLUFEy/mJBqGPx0Kdhm/HtrOYTYyYB/DmeGRxmqmFc?=
 =?us-ascii?Q?d2PAlJ0+vbEQemMSmAxJGVxW5KvKJUJaeQdU6WR4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35883800-740d-428f-5131-08dd557a0c0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 08:54:43.2891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b7F8qPUFGmSPjmonEfrtS3MB8zVEfTj3wUMKrLpdTnhaJt0+W2GWIhZuw9PW0xDHRFcINGgb53J8MFGvfh42WQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, February 25, 2025 2:17 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpl=
l
>=20
> On Tue, 25 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename functions to move away from using shared dpll in the dpll
> > framework as much as possible since dpll may not always be shared.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> ...
>=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 6edd103eda55..ef66aca5da1d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -387,24 +387,24 @@ struct intel_global_dpll {  #define SKL_DPLL2 2
> > #define SKL_DPLL3 3
> >
> > -/* shared dpll functions */
> > +/* global dpll functions */
> >  struct intel_global_dpll *
> > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > +intel_get_global_dpll_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id);
> > -void assert_shared_dpll(struct intel_display *display,
> > +void assert_global_dpll(struct intel_display *display,
> >  			struct intel_global_dpll *pll,
> >  			bool state);
> > -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p,
> > true) -#define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d,
> > p, false) -int intel_compute_shared_dplls(struct intel_atomic_state
> > *state,
> > +#define assert_global_dpll_enabled(d, p) assert_global_dpll(d, p,
> > +true) #define assert_global_dpll_disabled(d, p) assert_global_dpll(d,
> > +p, false) int intel_compute_global_dplls(struct intel_atomic_state
> > +*state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder); -int
> > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > +int intel_reserve_global_dplls(struct intel_atomic_state *state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder); -void
> > intel_release_shared_dplls(struct intel_atomic_state *state,
> > +void intel_release_global_dplls(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc);
> > -void intel_unreference_shared_dpll_crtc(const struct intel_crtc
> > *crtc,
> > +void intel_unreference_global_dpll_crtc(const struct intel_crtc
> > +*crtc,
> >  					const struct intel_global_dpll *pll,
> >  					struct intel_dpll_state
> *shared_dpll_state);  void
> > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, @@
> > -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display
> > *display,  bool intel_dpll_get_hw_state(struct intel_display *display,
> >  			     struct intel_global_dpll *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> > intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
> > -void intel_disable_shared_dpll(const struct intel_crtc_state
> > *crtc_state); -void intel_shared_dpll_swap_state(struct
> > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> > intel_display *display);
> > +void intel_enable_global_dpll(const struct intel_crtc_state
> > +*crtc_state); void intel_disable_global_dpll(const struct
> > +intel_crtc_state *crtc_state); void intel_dpll_swap_state(struct
> > +intel_atomic_state *state); void intel_global_dpll_init(struct
> > +intel_display *display);
> >  void intel_dpll_update_ref_clks(struct intel_display *display);  void
> > intel_dpll_readout_hw_state(struct intel_display *display);  void
> > intel_dpll_sanitize_state(struct intel_display *display); @@ -437,6
> > +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
> >
> >  void intel_dpll_state_verify(struct intel_atomic_state *state,
> >  			     struct intel_crtc *crtc);
> > -void intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > *state);
> > +void intel_global_dpll_verify_disabled(struct intel_atomic_state
> > +*state);
> >
> >  #endif /* _INTEL_DPLL_MGR_H_ */
>=20
> If you're renaming almost everything anyway, I'd appreciate moving toward=
s
> naming functions according to the file name, i.e. functions in intel_foo.=
[ch]
> would be named intel_foo_*().
>=20
> The dpll mgr is notoriously bad in this regard. I'm also open to renaming=
 the
> entire file, intel_dpll_mgr.[ch] isn't all that great.
>=20
> I'm not sure if the term "global" (instead of "shared") was very well jus=
tified in
> patch 3. Maybe all of these should be thought out together for the naming=
.
>=20

I agree with the renaming I would have very much have to keep the naming si=
mple something like
Intel_dpll_func but that exits ! intel_dpll_mgr_funcs but intel_dpll_mgr al=
ready has some hooks defined inside
It.
I chose global since that way we will be able to represent both PLL using s=
hared PHY and PLL with individual PHY.
Also renaming intel_dpll_mgr.[ch] we have a intel_dpll.[ch] making it a pro=
blem
What if we renamed the file to intel_global_dpll.[ch]

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
