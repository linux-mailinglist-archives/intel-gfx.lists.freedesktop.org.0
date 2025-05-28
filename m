Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4403AC6A48
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 15:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F6E10E2DD;
	Wed, 28 May 2025 13:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRZW1f/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089A410E2DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 13:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748438669; x=1779974669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=Le/5pakzss6vXnoWdtTDTk+xjXnuswadJUu1NO6TfZ8=;
 b=hRZW1f/X9W9ikKkjfga/KO4JzJW6XJxhNQsd37Pvram0uHQotS9fkGzW
 RVQ9h7YTU6L+s2LJvHCDKBfFt8ZlP3ci11ZKHgioShoMvdYGex1znC1F9
 aVapEbZuGqSaW035ijRpWgKMjUJTtviUqKHj5i0fakWpOcAeettB5JOU6
 WcYpnFeKUUDhfLGM/m4iFEIaPIXGApPI4uiXArRGdckV6PypB0EOh2miX
 eXRo2gRRAByfZZgCv+M3X7/D8MQWsQf6IGZN3tHWnZWO0BMAJczofuOTL
 kJ82JNm5FEZU+GjjEPNIZek9DGKVFSFXtFDK3I478sF2Ds5xKBjVvg481 w==;
X-CSE-ConnectionGUID: KMTg0pQtSZ6uTLQzLSf+ng==
X-CSE-MsgGUID: XFXlK+AlTcOi7MY3pVQ9kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50462084"
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="50462084"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 06:24:27 -0700
X-CSE-ConnectionGUID: h7E6zfLOQSygwwbRGqNu6Q==
X-CSE-MsgGUID: Kq0vS0ziTFim/0NdvYa6ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="148526868"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 06:24:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 06:24:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 06:24:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.66) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 06:24:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ar/JpLYhGVi18p+BaI6pA/7xRjISHR4ucNSr/URpRjjFyVNmw8nxGWzVZhLN7Sku67XWcfAQ5MjPKpc+6xhorzV7Fp+brm7Su3FwDVJjus8rp15HVvqNsw1HI7F2yiN5roT76edoBVnO1Q24S5lRx+AWmI1MBHVqJgc7fnpxOS1ASNHDuQhdfI/1aTbmaICUzhos6N4YMdT5aGLJZ6MZ8OBehzizBK3VvF6pSBhkTLsZtM58E9EAIS8kjO3Z7xBjRoF/Rq8DSPb0WdDbvoDyi+murjyhZ0by00Nv60MyAXq1nQ5fHGPzAFBD1gSe9pNro2x+/bOlmSY7QXQK9AR2Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STvoaJlmbz76jy4X2REsiIcofcjGENr0LRhxEvGNKuA=;
 b=ArzOVXxQXGGD2slLsNnSijhd/gJr8lz0pxMsMvLW4Omlclg5tMihFn2AElIwv+G+ial/a85aSIFGL+HJCiVKSkcOSsjoC96t3OnmenQstPoyj9GpGvxNZFj+B0SUovfhH/uDrr9+yi53PfWR2fUFfZExsk2ppw9shWncTWwANGu9qGcZtcdmQ8fd+FLSpmGDq6C07wjZTLRE8VieMYhX4uW/ZcjYyQVhTB1PiqIBVDcW8khg+qZSzF22X1nH9I5vJLcKb8nPnwwv+HEXftBXty8UJRKNZ2KYkhw5RSTMQ3F6JFonjFy+XPT5iiybFWx71zueIuy8Osoe/OTAUxr6Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Wed, 28 May
 2025 13:24:24 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%4]) with mapi id 15.20.8769.025; Wed, 28 May 2025
 13:24:24 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
Thread-Topic: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
Thread-Index: AQHbzt1Y9aSlHuwEZEWFLrs0707sRbPn4YCAgAAlsiA=
Date: Wed, 28 May 2025 13:24:24 +0000
Message-ID: <DS0PR11MB75781AFC2BF5C9A59EC1A39EA367A@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
 <aDbsn22a2u-kWqpi@intel.com>
In-Reply-To: <aDbsn22a2u-kWqpi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|SA2PR11MB4940:EE_
x-ms-office365-filtering-correlation-id: 14e1429a-54f6-4415-28a3-08dd9deaf6a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?4ijc+WIocyC3svKqSt81D4pFnB9tCRDC2CFF1VWs+I9MoDcZb4CtfN9POb?=
 =?iso-8859-1?Q?YIA5FAoCrylrqWXMjOE4RM6QX/Lk3T+cX/3xqZZdRywoYq86aznFUEGzjt?=
 =?iso-8859-1?Q?YgMaeeynnM/HEWoF6qX+jgkMwh/xhZqvou1F0oJ5LDzR3AK5bxzyfempQt?=
 =?iso-8859-1?Q?+exjiqNrsTcCfoNYXj3afhMB17yaEH/LBGAiFpS0sLZAx3lT9hFBBhv1Nx?=
 =?iso-8859-1?Q?yA3ttcPs9EycuDNvSsyg1AL4VrCiLUYuosSXrv1Ex9zhCeTbTtnOH+qzKz?=
 =?iso-8859-1?Q?2f0ht+4FkHba+QMOsSzLHig1yo16GPH75Gw+eqDoRQQYfdJK+Nds4PnPJJ?=
 =?iso-8859-1?Q?RGO7kbGiOlj1O12f/Of1gT5FK1pvZoA6hxJetcbGMdOZ7CbizzNkiQMdKQ?=
 =?iso-8859-1?Q?nae7OjA3AWc1Ta+fgsN3sRteqhVNxRpIAiYQ9CWQ5ONjPuWfrYUjTFlB2X?=
 =?iso-8859-1?Q?DNuva1Bo7gc7hvV6RWvd30TTUY5C3OpjRhl/RKAvA8nt//4H5dXSzYDZH2?=
 =?iso-8859-1?Q?yw0k8Bz2fnJEJjp6D1sKuiYvFRaco7QxdCxvgpxA4JnwFxbsChJgjZFWB6?=
 =?iso-8859-1?Q?i8Mdlp7J2OP+71V2oAuB60py+FFHl4cdtlMgF/785HkrnmsxpH1TcUlEha?=
 =?iso-8859-1?Q?Ej8Ln/JwvZJ76Al+pLxkxEK82173ctDcwYM91bEKhII6AxnmC8D+xIr1iD?=
 =?iso-8859-1?Q?/Y+36xqB0tNMmYU3QO7EioaKlp0YXlVBQInpNk2i1E3o6je2cQtX9F9020?=
 =?iso-8859-1?Q?4xM3xL8XbRDkTKT0CUHNXqOlvY5RV1EkONMBDKc8yiRcgyZEIb7Cgf4AOr?=
 =?iso-8859-1?Q?cCU5SNV7maU5EGXOJiTmTYw8M7NiBsUoZYNgvINXRqP1WVmWzXfFZBsDcE?=
 =?iso-8859-1?Q?A5DpBOA7CT7fu312OXVUaq5gu651v8o1I+6wML4l2m7jn+fHkl7oCnNQ8p?=
 =?iso-8859-1?Q?6vvqzGVq+GjP26PLsIh2Q/4GPJh/OtvDgz5rS9V7eRCRil5IyJOqsBnrxG?=
 =?iso-8859-1?Q?E9cCRBP5E4O/JgtrBniO/KObNNMJCSAklPcH7TO27mmp6967nr2YJYWx3F?=
 =?iso-8859-1?Q?G1f69sjVw2JioeTEpsXdEWU85Hyap0g/DGPOuk6ulrM4RUkn+7UnBTN6h0?=
 =?iso-8859-1?Q?UB+O3zKUcIavMfcuVSz2GFOdGsXUrjPQsdRJ1Lmj9piWy1sZOSUkoSYd3N?=
 =?iso-8859-1?Q?bjCMc6XlewkenRoLeIlrrSoiIR7/9on5jJmaaTwAFb39ytTiSDyWTs6/DT?=
 =?iso-8859-1?Q?DQlhj4uDR0d0yzjoCtyRRFo1bRoYsqm9NgCs3A9JtvptWg9ZSYKk5uq0J3?=
 =?iso-8859-1?Q?G3KKSXzjg0dWc96oSZ2M5caXr0QpDNIOwj7aca3W4xgoPMK6PjNVjSz19R?=
 =?iso-8859-1?Q?UY1u0lmXpDFaeIRrWGgzpMlK6c/MoUzfTUEa3zO2bx9cllTFf7UZ72fBhK?=
 =?iso-8859-1?Q?nTPNsfByHJO2PW1gnpGbZ+8Rg0uvlmIkCBoYN+U6eKrmiorYZyLlLZNxt7?=
 =?iso-8859-1?Q?N5eTKp/Q8n3beb1Q6f1FyaG5xpatXu4uF4ETbAArTIrR+GJdsoFGXNxKwb?=
 =?iso-8859-1?Q?FhBYz4Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?uD6/6MW7MW0Ga7PVpTpGPZr0+MXZyNId3iHMyKCN7ESzzupw1zlYUW/3Qx?=
 =?iso-8859-1?Q?4dzFVBJIXoodo8YgSvLwQifkMgws7/yPOIfBPPOxiLkVo/aKMuqgBHJgzo?=
 =?iso-8859-1?Q?hwjY6F5dRprY538ovHGZpQtwh5fFxgi84I9laJ+WWZOd1RpoyH5QAQS8b/?=
 =?iso-8859-1?Q?sDYa5PWYVxaPL32YLRWPi82z2ovcyyRL8Gm28AK2t+NqpzHCPPa5QdOC0I?=
 =?iso-8859-1?Q?ZmksSYIX+PoqswHGyVZSmpn4/H9UbrOZa/XxkwQE/X7Xzu5ueup1Y7HIW+?=
 =?iso-8859-1?Q?OqGS6AhcZk8G/pJ/KDPXbEjuzRGmtYH/RTDkLE529jZXe5Lbuqiubj8jM2?=
 =?iso-8859-1?Q?/sxENVbjyRdbP/DP3NcCpp6LOCk0sKgE83pb2/9EdCoWhByhjOKaKanE6r?=
 =?iso-8859-1?Q?vsISsiVvpyQd2v77nQq/geKJFhIR74YHBAvcL+YgL/UL/RN4bRCwchb2Do?=
 =?iso-8859-1?Q?D1SQKUanYeahqk9eZPlAFAgt7CnqaAm95lMorFu8QRJhL4adJo2oDwvcBJ?=
 =?iso-8859-1?Q?YcmS+T0HWAeOCshYRcBN+QGBM5xvJK0TOwiUeA3GDv2yPZtl28mzO2vBx1?=
 =?iso-8859-1?Q?eoY8dZEsKetbzb52iEGQTuhPA+hhObQn4LP6TW4DGyecKNHpl0UkWE3cnN?=
 =?iso-8859-1?Q?dULvkmfPPeb9FjL6DlWZbBoGNOPt3cFsBlXfUTh+wOUlWtTMK7L9HkMMME?=
 =?iso-8859-1?Q?ByyAv8YmN5xhY4Rqw4+aYY+eDSiM8Kk8Vu/lNxAW9zY31Q5YDYWIpRWiGb?=
 =?iso-8859-1?Q?fqjMhBrVlAIn568eASNyfmfBK5vDCLtdrao1jOa4NFVf0SjXkDsDdqteQn?=
 =?iso-8859-1?Q?dp69Jd6pFQcFRBN7gxN6GPGh80DCj4UqgXx/Xlf0to2YP/uZD8orTLr5Bu?=
 =?iso-8859-1?Q?hueLpUkiJuGVbkKXtXN1LQ50edIj5MKOhN/B8i40H1Fcw/J5PIrYSn+g4+?=
 =?iso-8859-1?Q?RwtrAGkVvI1s9ufKyjbplW7/mwIr5IgHYEVr9p4yj0t3sh87nIINAaHOCy?=
 =?iso-8859-1?Q?D7njIOnwc9KQQdssaqxwFi2YXxrl4IX9/GL8bjU/8WuRCVbMXsd2OKTjKU?=
 =?iso-8859-1?Q?Nkg8PZhdprg9PB0yqKeLnyzcX0o9WgFICFNJ0Kuk3Syeq8b80oX65tPkcQ?=
 =?iso-8859-1?Q?eNwdTsNx0dZ/DniHWfmVg0DZ3IRRSh31zYDIQqMP3q01O02mNPbb6JnGjU?=
 =?iso-8859-1?Q?hv7S6YmkQuWCndpdj/JBRofRQlA2XDepDpm4GRg0LcfSPasYA7wnG2qLht?=
 =?iso-8859-1?Q?lYQVSFhujx2G+hYVXm+W8cIr/0+FImyuCli/uhcFjCMz57GBPDw4Pobckn?=
 =?iso-8859-1?Q?qQL2j1q5vOuAaF3jhg6YNgHnakGHsesQksvcKdU3mjrnQBxGK8E3YY7YRE?=
 =?iso-8859-1?Q?OYvN9yN5kK2LV0FPG/BpPSiQfM+4XAiV6UaXRr1dp9tW5tZvyfAuP7fGWf?=
 =?iso-8859-1?Q?Vo5IJYx5iseeaJw92Hn6g9F90JGMaw+oG+bzBO6+/0cHcpmN/A9UvCzKT/?=
 =?iso-8859-1?Q?lod/IbV2oAP81i/nmPNQgfmHPgDiiE9avaXuFgUP8YN/201F3AsIHQ0pMn?=
 =?iso-8859-1?Q?y1sSWdlQ83bKsDM57oF7t5+oiytWOrW4GK36vUtXgo6VOZeaSx0H/EQITm?=
 =?iso-8859-1?Q?g4bv3NW6zrRaxE4rAJawCa/CiD8Ry5oJ1E?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e1429a-54f6-4415-28a3-08dd9deaf6a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2025 13:24:24.1805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xVLT/KIkGEbhuYVnQKjNf/lW+p7uyjfHjHMGroeC4mA1yoGWxvirz5iaR+EYSF2HbBKN18vVsmPdwilHGl7OfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4940
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
Reply-To: "20250527075906.65542-1-shawn.c.lee@intel.com"
 <20250527075906.65542-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Wed, 28 May 2025, Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> wrot=
e
>On Tue, May 27, 2025 at 07:59:06AM +0000, Lee Shawn C wrote:
>> A DSC setting has been available in VBT since version 251, which=20
>> allows users to enable or disable the DSC feature based on their system =
design.
>> With this in mind, DP driver should reference this setting and avoid=20
>> enabling DSC if this value is not allowed.
>>=20
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c   |  8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++---
>>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>>  5 files changed, 20 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c=20
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index ba7b8938b17c..f08dd54fe4d4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3548,6 +3548,14 @@ bool intel_bios_get_dsc_params(struct intel_encod=
er *encoder,
>>  	return false;
>>  }
>> =20
>> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct=20
>> +intel_bios_encoder_data *devdata) {
>> +	if (!devdata || devdata->display->vbt.version < 251)
>> +		return false;
>> +
>> +	return devdata->child.disable_compression_for_ext_disp;
>
>Windows doesn't actually use that bit, so we probably shouldn't either.

Thanks for your comments, Ville!

Just my two cents, this bit has already reserved in VBT. And customer wants=
 to use it as part of their system design.
Would it be possible for you to consider implementing this to support the r=
equirement?

Best regards,
Shawn

>
>--
>Ville Syrj=E4l=E4
>Intel
