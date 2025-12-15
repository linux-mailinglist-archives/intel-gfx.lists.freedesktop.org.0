Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A2FCBCD5A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 08:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC8410E362;
	Mon, 15 Dec 2025 07:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ahj5Xi2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99CE10E362;
 Mon, 15 Dec 2025 07:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765784836; x=1797320836;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UynzA6LUK5nMDkNvnDyHHJwgMghjHjqjnsW9IMbxLxI=;
 b=Ahj5Xi2SzQHTwma9h5qRCqDWYA8cXO30g1pw1gFJSavJIfMnNKDexYmy
 iPacFtZ8EgV5jZaozXZldjry75r8zxIF7jAiI6iqtE39BOR7stCGG2aPy
 MiSgM5TBO3+iAvIM3g1RLSm0IbfugqyibX0rWHuysyMevN+1xHou2QIwT
 74AcZrwcBp2PkFgwk7p234eyBFkSIpQrH7qoJCuvXkHV1IdJduXqymqVg
 gXXFIpPSVm8P35oyA7m9YUC7UVWC8mwl+pwkDWydE5hk0pwP2aBnsCzUB
 eUxAh/Q9POhFEmGTgijG275AGtkRUeZDvFHfLw7AvhNXO5BBZwkRic9Vx g==;
X-CSE-ConnectionGUID: ioYy8LhKT1Kab4o1SllnAA==
X-CSE-MsgGUID: 0GpGS7KGS5m9n+lKO0cd9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67617918"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67617918"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:47:16 -0800
X-CSE-ConnectionGUID: RLIBskO9SKOB0pSjGJK3Hg==
X-CSE-MsgGUID: 95fBnCqnR0u+4EMJPomlpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="228306914"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:47:16 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:47:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 23:47:15 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:47:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XFd+f5xz8mnqtnX3+gPv/17Xqc61S+BJPAYKx3i8eKlICaGrlCL0DDVg543BXMdbftEgx4QK+uJYgHiP3i2RJwTBVR+nOOEXB3pmzwQDMyWJFIkKqTzr9BreZmgyZD4i7Sh7wQ9YNIv1AMvYJfSsKIWYlfCRryV8loQOv0j4XCTtzmOmXd0cMZeRqX0bh5OfhTHbK2T7LwM9I1livA1Q0x/3vnSWME7GnTXCep0Hsn30Ch/tvRgkiNKQplUL5RLrnH4lfeKfxMe0/yQZUykWWkVeWt4uVc4nd2NLd3KQWdo953G0pAp1NfsTdVIPsPg3l3Wy+RAYXrOasjibD1czHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NaC5lxvKQP4k+rJQUyUSLd+a2tL5y+u6OP4pkagSss8=;
 b=d8q+bWOOYsonrzeiTdQMlbglpU5linLllsHQTwrlfsmG1BwoP4KJgEpWhfN43TYNv+8Prlp7Ffkp1G7ghn4Jp2RspEnNnIaeoKbVK+tza3Zl9xzlCgL6agQmQ9IbWwgMC7tQiLP/gVj3RWXVRkw8vXFQ8SY9NoJ/EAJpWXAU/jjbaLWnJcLHrnP18najQCQZJgEvD1knfM0JdKVz5M9A0BfMWekvS4mQXtsbdn8Q0vh2re6fFZ0LRcIM3KZAOv+LhL9aYvNWMUZx9Aj4D90vuHimlUS2dTnAygngmQeUUPuHE4kQ4lbUPEsj5m4FOvQ8CnG+RK5UWnOdkSArxMAKEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 07:47:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 07:47:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Topic: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Index: AQHcY16D0W/MEJIE1E2jIOSkmSHH/LUiZpzg
Date: Mon, 15 Dec 2025 07:47:07 +0000
Message-ID: <DM4PR11MB6360541A9A48AF63B009F6A2F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA3PR11MB7463:EE_
x-ms-office365-filtering-correlation-id: f89658c8-d440-4781-0748-08de3bae25ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rDdp6QFG68CQFxGILOn7H80v/v0dX7YZqJEtnBlA0638U1Vo9Ds2BQIyXVr2?=
 =?us-ascii?Q?oVnuOI9UuutYbk6fMUm3rvJR/cTgg49hKM0a3oeXso+mTMo5A/8DjQk5AA0x?=
 =?us-ascii?Q?/JtjojYbAHF1yq/R2gQf/5uj+1A3aAXZ34DV4buKglYBkoTMYwbWWg+iyAUY?=
 =?us-ascii?Q?RsG5fSZbELBMhjayb5oQM59Wke1jUOlQu94/FdLFpWCtaShMaaSy28wTlqiR?=
 =?us-ascii?Q?aKz0w9OCtOiYH9dsSJHJvyhu0GRWhGUosIkfrZK4RBJkPycw++ydGJR/9kqG?=
 =?us-ascii?Q?L3B5F89kesvs3gLtaGfvkFKzK6XlUBBXA1JZ5MVY2FqmQA4pyA18nflGaG+a?=
 =?us-ascii?Q?UZrJ4LEFczZe6ZAZfmxphFSG1Nerbd4+iUraomWBEstEezTT+xYdBkZ/As6S?=
 =?us-ascii?Q?p/Wb1Dk2BfXNs8r1P5R7p1ojJsKRwnqEVt0ifA7Aw3a60vsQxssbq21tSta5?=
 =?us-ascii?Q?v+GthqG2N8ovG9fzH9A7/6Dp0ZZVGW4OpmFZOe5daKM4scYmD0uklm9L8eZq?=
 =?us-ascii?Q?giVgkxg17Zb+Bygp2xL0/4ixtIFsYUsxBSv4gM1xg13gF73STOSaogpLcbiW?=
 =?us-ascii?Q?yJj3e7VY/Ei3kgc4bmJ3S+W3zt1pZNsZvJWyOL9l23PYqj5rcLJpQHBZ5vPi?=
 =?us-ascii?Q?e1Z0YCGfAVC5/Lj6K8xaFnG3BVKT4BzWXV5FxsbUaiTZ2wiR6LKZuqfusM4B?=
 =?us-ascii?Q?sN2pZamdxE3m1qTHTcBg52k54rrHwflal7s0JP8VaU/FSviyOiUwsTFQPB3Y?=
 =?us-ascii?Q?VMwAgZqMVBv0+v5XGgRviON9lPtioRACtibnS3/yJ+ANWyx4QK5MGpj1vT8G?=
 =?us-ascii?Q?h1qYMrADwR168ynWSYE3jnfsFPnDmSLP2pXD0SHBQvCF/P2olxkobIvnJa9O?=
 =?us-ascii?Q?GStIPlhIzLSF8iyDT1TxOboq84O4NmsF0wnkpWsyvnuT9WbqPx2idC+dy8qZ?=
 =?us-ascii?Q?tjCjvWAZwBpUUsXM9phxqKLwG5yz3S1JSeQFMjb8txnuhj912S9I1OwQeIK5?=
 =?us-ascii?Q?YAaXshVCeLXBVmdRoQudoDGmgBl1rMYWfpM/Vk22xJ68kYedUXsZhwhta3le?=
 =?us-ascii?Q?xhA5P65ecxiMGSacknhycDI4tFDPGViZpvxEBJXXmq15dZBwlsudoKXNo9ci?=
 =?us-ascii?Q?lEPYKjJ+1q9VSSKovH5ha+FGSHiozSNKdZZ3MLnNcAbZHPrkZWZDtC9ofga3?=
 =?us-ascii?Q?B0PBW1PYH+vLUfoGoZwa6d88Hn02cnt6N+/lLfVEr3OoAGaPKtWgI9qcsA/y?=
 =?us-ascii?Q?0QDtSvvfKRwnWBNKrAMOANVdc8rMBQoOKzsKF+EUinVt+zQI+1QMpvw3xCzS?=
 =?us-ascii?Q?qK0fUb/TJC5g2aQngGaNORC3TIFvQCzeh8M7SMfjr6/nsUG9ITjbbaUwhcAB?=
 =?us-ascii?Q?xMsvRVUBbfl7PAcvOluUtJ4Eu/J+FfnRexGK7EMzeQopJNTm/+bBCS95++WD?=
 =?us-ascii?Q?v63ZLUR9WBPLbMhfgFf37aChcmrUNI2XnFrnxK7cWEFn0HqWVBPGOew5inAK?=
 =?us-ascii?Q?PbUyh/AXBJ1hQMjN2rYxgUubKszwMizuN0iQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MCwXOBaCfMyCmf/Oej2Pru05ZLq0b4ZI22IxCC7oi+cg8HvPur7lk/ceGpsR?=
 =?us-ascii?Q?bwIRn9zsoTn5ocNLu7wRwmTYHv+q0Assf3HlO6gRxP8gV3ZwnsJZ3yBYhK9n?=
 =?us-ascii?Q?k1yjMAr5FsNUvG4Wonj/+Z3pCJTURht+gBJrjGLRzP+3o6NjQhvoPZsjiGSJ?=
 =?us-ascii?Q?NeNw4dOmASs2cstgWNwiNU+Zk/2z0fMH6YjKdg1uxjBoCym6Kw3kHGGi/E88?=
 =?us-ascii?Q?HzaEPPWxCguDO/Rq7voFiRPTvCe6XtmY7KTiBvoPo3JFTWV/GbCi3h5y9Bxr?=
 =?us-ascii?Q?BoWtiIeDd0MOSzTDz7Ww0fQKFSjfypi5DhEBiccQtOkZi/MrQ8N1Y2XIJLaS?=
 =?us-ascii?Q?XLnvnRXHK5cIjf1OjSBJJGEgv/lbwdvoGaukjdwDabzMYq+IvafFK43Uu7j1?=
 =?us-ascii?Q?oRk7AvmJkEZyikpG2J29ipsnP0SIkTTH8kOjFHnxRBYyZPnna/bKndCVPXav?=
 =?us-ascii?Q?iHfLvccuosKNjCQGdvvqVwfRYIgQV82Rd8Zt2KiSZkXMt33xjBCz/cT2W53U?=
 =?us-ascii?Q?2JJASVlDsTERO10UrWv/myJRZj/vByCS5OfBWNB5bsEcVxwPNQP5IkW3Dx5k?=
 =?us-ascii?Q?WXMh+ahqfw0tppRhtQONaomel4M8E3t3F0t4p+qIlwc0TXJ6fi8vg5Ezaxed?=
 =?us-ascii?Q?iSOibQFscuDTYA0gPVPVSoVu1FmEd8qcFApK86a8EiGxmI69EfPn4JqLwi8K?=
 =?us-ascii?Q?Ee3MBJPYciN5S0uLwQ7WwL4VfIQKIw9qECRY9nzx6yrYFNgPROuwiFTemmV1?=
 =?us-ascii?Q?Z0jT9N8zbrD2Pa9cpvO1BtFt5DScbai66E98eGnMcciyv+ONrZaCMqi+qosR?=
 =?us-ascii?Q?WfKItKufJvcLKIpYW4UHAtoy5vKKeyRjkN8rIffpTvHxL+KtwSJKA301yd/L?=
 =?us-ascii?Q?S3VlMlpPRT8IL7Pa0VSIaY5icKtYWSeFP61ODru3cGoJRIGERQHDfptVoJ0k?=
 =?us-ascii?Q?usnMQHWdDPlFfi7IcuNa5qeK+ySAPd53tNtSV4Sa4Ix0ofpw/0PcKwvRqYHu?=
 =?us-ascii?Q?1SuD/f9dN2Ho6EbfsX+GotFn0Y1im4abkpvAC9v1Dt6hsrJKdruUJ5U9dkM1?=
 =?us-ascii?Q?5sloYavQJSL0DLt40I/kQGn3GUYbwJ2cG+xUafjCkSSz1UIAqPyhGpVFY1O6?=
 =?us-ascii?Q?QdUBAfLq9hJ+QwDLZ5UJHduntSpBKw1ILCVJ4Strk+QUU+yKISAB+LU3bjMI?=
 =?us-ascii?Q?5BymcOpIJb9SfLBmsMm2jwrXMar9M5+6w+8Hs3+Pf8onDoNjhlC/6PvqBVRR?=
 =?us-ascii?Q?8ru2yAzb5f9LOWtaimsYDihWscNJwYAPPdYYU1bVgV9s+aW5sE+RsUoatIn5?=
 =?us-ascii?Q?KnaJavpgI4nE7nLeTUmMWOAj5VRP60WSyfx0KSH/WnqEw5Gi3Zo/sDNA7F64?=
 =?us-ascii?Q?2wYKCLzvcrLM6J0IfXKPI5DRjImMZfQqy6vU05979UgAoUSY/OngnaYxEqAJ?=
 =?us-ascii?Q?bjzcXhyWuA8/Wx0RnnMiznND353ZXUP2VUVgtHKk2uVLQaFlQRdzJB/Q3vd+?=
 =?us-ascii?Q?gMiMhjMaLOyV/grgEWlbsZLmNJLxs6o/ZIGW5f0bWvrOxcXDJe8/0QjDk1UA?=
 =?us-ascii?Q?xgBLQuhe7m1Kjb2W9E/3CkmHzv6fxRqpEbosyXsK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f89658c8-d440-4781-0748-08de3bae25ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 07:47:07.7165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pzdbQmQivgs+d0tOCyA1giOeF/MIfCrBq3Wh27NlzpfuNeMXAEkBRKlltTEJkZz8QbWDRczJVxwpkgCObWaP7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
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
> From: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com=
>
> Sent: Tuesday, December 2, 2025 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com; Shankar, Uma
> <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
>=20
> Enable DC Balance from vrr compute config and related hw flag.
> Also to add pipe restrictions along with this.
>=20
> --v2:
> - Use dc balance check instead of source restriction.
> --v3:
> - Club pipe restriction check with dc balance enablement. (Ankit)
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ba8b3c664e70..db74744ddb31 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -399,6 +399,7 @@ intel_vrr_dc_balance_compute_config(struct
> intel_crtc_state *crtc_state)
>  	crtc_state->vrr.dc_balance.vblank_target =3D
>  		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
>  			     DCB_BLANK_TARGET, 100);
> +	crtc_state->vrr.dc_balance.enable =3D true;
>  }
>=20
>  void
> @@ -789,6 +790,7 @@ intel_vrr_enable_dc_balancing(const struct
> intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
> +	u32 vrr_ctl =3D intel_de_read(display, TRANS_VRR_CTL(display,
> +cpu_transcoder));

It would be good to update the state and program everything together at one=
 place,
to avoid this read and update here.

With above fixed, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>=20
>  	if (!crtc_state->vrr.dc_balance.enable)
>  		return;
> @@ -827,6 +829,9 @@ intel_vrr_enable_dc_balancing(const struct
> intel_crtc_state *crtc_state)
>  	intel_de_write(display,
> TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>  		       ADAPTIVE_SYNC_COUNTER_EN);
>  	intel_pipedmc_dcb_enable(NULL, crtc);
> +
> +	vrr_ctl |=3D VRR_CTL_DCB_ADJ_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +vrr_ctl);
>  }
>=20
>  static void
> @@ -836,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct
> intel_crtc_state *old_crtc_state)
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
> +	u32 vrr_ctl =3D intel_de_read(display, TRANS_VRR_CTL(display,
> +cpu_transcoder));
>=20
>  	if (!old_crtc_state->vrr.dc_balance.enable)
>  		return;
> @@ -858,6 +864,9 @@ intel_vrr_disable_dc_balancing(const struct
> intel_crtc_state *old_crtc_state)
>  	intel_de_write(display,
> TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
>  	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
>  	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +
> +	vrr_ctl &=3D ~VRR_CTL_DCB_ADJ_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +vrr_ctl);
>  }
>=20
>  static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_stat=
e, @@ -
> 963,7 +972,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_st=
ate
> *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	if (!HAS_VRR_DC_BALANCE(display))
> +	if (!intel_vrr_dc_balance_possible(crtc_state))
>  		return;
>=20
>  	reg_val =3D intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
> --
> 2.48.1

