Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECIsHyIOnWnLMgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:34:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5930181089
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CFB10E484;
	Tue, 24 Feb 2026 02:34:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hf7yGFBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB3B10E484;
 Tue, 24 Feb 2026 02:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771900447; x=1803436447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v0Cp8WEpneC/0vA9BstPkAr8jB1No1wvRTSS12hJ3F4=;
 b=Hf7yGFBgqtbZzS8nCweO2R0f1aF6UARY/htNpWvgziSThxnLJsRtrHmR
 lHAWCLl/7XGIaSzaNBDIkU485jSZ/sS74PmCAS3qHdkK190j0mIJ4samq
 NyESseRq5bHyK8iuLfbzzpc8ERRKzqC+pu11LsVT7VA68Ft+7/w2KZ4yJ
 JFupQ9mB9GLQSJ20rRoDA1NdNvwiw1jwq1w7hbhdzLuH0olJn0KRwZXS7
 aEgB1uuYeDr0qzG6wnzPg5Mg2aSUNF7Re21ZYKiRvxN0wfD8OChku7rW3
 vxgXU48phIgM1wYOdptL5VDUzBYkcFxQlPb89fCgcn0qH7FW3/yvD8MQv w==;
X-CSE-ConnectionGUID: F094U96nS2KK0tdfGgKSCA==
X-CSE-MsgGUID: 213bbfkTQaGukTEeL+tiYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72784765"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72784765"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:34:06 -0800
X-CSE-ConnectionGUID: NZ2kP/15Tuy+Cid9xIIpcg==
X-CSE-MsgGUID: 8JgzbESPRMigJVKyHRyIHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215610418"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:34:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:34:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:34:05 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:34:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ExiuCdc6cXjIceGddvHNw1UlhRb/AhHwlgGCdBY32WbLqNX4rxPD3v2ZRSGNSmyPR7Vo3+OwG8wYo1qjTuPfWSpmYLUVO8zqf40swnedxqcr0uzZ7rd8oMujM8uKUsq4a7QfIawv4t/XVQ/1miA/ubjbQutuzmfkB+TwuXrSdxP9Zdt/TfxwNHO3PX7wReq0++NwTkwafpNcU6+QM2dm+LcAV7fhasRfn341IJPkTKbFLF8dgqQeJ2DwZECd9pnzcAVRCAHJBQGtRwWldzPZYIVZTjgaq+wR1DN526P1wQuYRyT8rEVmPOVPyikaCF6sC4jvmbER0XMCs3uZokT4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+WvFzzVuub5eiK1mKKvTI/TVYiCQhLtvj4LENKAnH2U=;
 b=hFhWCrPRw71w3f1biqLFm8c2MIhe6Gfq7cmxnzEgdelcatMVSg/CVky31CKyaL74MCNDitsZH+z3TbmfkBLKBc0IGExmDtg7b8EDaUcRd2tza8f77QTv1eYfZMV24kdjYZNK22vHBtiRfwjoOtQqw9CQU0r2DFuKPiZ9S5JhhOm4NNDYt3qKZszItOLboINNqIrRTGkMnddSo4B/Je2R5llWXqr1WK03ClHt0uQ0QPAe6zmuPix57Y259kGIurX/frj6RDwHnAXyopKrvLHhLRQa9T7s+tOahI+XrcBtY3qwbR1KW2Zvh6gyKadidaOopGSKkxPzFcUBeiq2pJSWeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CYYPR11MB8407.namprd11.prod.outlook.com (2603:10b6:930:c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 02:33:58 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:33:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Topic: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Index: AQHcoc20G+AyU4L1ekCQ655TNZ8AlbWQRUbQgAA6gYCAAKgUkA==
Date: Tue, 24 Feb 2026 02:33:58 +0000
Message-ID: <IA0PR11MB7307994B0594AAE9616F7B68BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-2-imre.deak@intel.com>
 <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyAma4Dr_e2cTCc@ideak-desk.lan>
In-Reply-To: <aZyAma4Dr_e2cTCc@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CYYPR11MB8407:EE_
x-ms-office365-filtering-correlation-id: b445d92e-1a8f-4d83-14fe-08de734d29b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+fBtHzG2uxJZTERk37Z1hRpqGebH+oKYG8ZF5CTynXJwUSFnf0co3RnabNez?=
 =?us-ascii?Q?fyypXRCeYlXyylVLENSbqTyBeNdTEwMZfGWJ4r+GfL+YithHJmy9ErAATD3H?=
 =?us-ascii?Q?1LpdK261tC7eLFqpa3nUvNRgRMG/y3Vhmnq5mSYpQmZJvRJJOeOa7LRZDzJb?=
 =?us-ascii?Q?tuXEFLQI2On4x7QEVCBXok5b7XENFuydO3S0Q4v6x56PDI4yMIojfSL0rGNP?=
 =?us-ascii?Q?A4gB3CMyBoHIC/fvIN4l3QjKvo270sEqu1nD7s1zIaa6VDAy1AphgblO0tty?=
 =?us-ascii?Q?tfEVx43fkS11kozwM935at/fyX/xVKcF7MndERkc5LVTKsWl3ARe5WoRXoad?=
 =?us-ascii?Q?arvSPQduXNr33U/Fz47rjbjtjrUWokzPsbGC48ZMoO3pUNUMnDnfgMwaiGbn?=
 =?us-ascii?Q?gO0jDizhPop9qWEngas5On8JOsF1a+j/qASgsvnAqe5A/6QYzWPxl8nLiLKz?=
 =?us-ascii?Q?akygV4QuWyLbAsOr3P8z6IXUggm9WXCtslG9KX6k6LCSDyiVdPg+JhIPiUBl?=
 =?us-ascii?Q?t7bYYzIbBxSoSRNCKlQXDBBoy29FSF1oCKcQ0WDLJQr5QOHXx8RvpYVHHWLj?=
 =?us-ascii?Q?qJLGqXYveK1erj7w/NsNO5KDK80IR2E3xn2+i009vVm3FvfeLCuhazgX/na+?=
 =?us-ascii?Q?zuBWtalAd7dVsrVKKSpktQyceCVNZivVlphGF2nHpDwBLSAKUaNyG0+3sBhx?=
 =?us-ascii?Q?2PmWs2TaWMFj+/uuktXuQlX1Ted4RB1pAGCj+Q9azbWAeUPvyK8A/xfBRG90?=
 =?us-ascii?Q?de7GlWiB9o9n2Tpss1JvLSJL+yFwP9OhjgoTAEg7dHLNpvi+myETOrPsxMBh?=
 =?us-ascii?Q?sN/4IjW5FNdaMJP2sR0v+GdYfGYUZznfklBBes4bH3+ftrjPQ+NcACakIwF8?=
 =?us-ascii?Q?fOI01tYBTjN53H9Rplkvygxk3SO8VrzeKNkUI+moYqflOrNhKxK+U07/J8Os?=
 =?us-ascii?Q?MQcUIXb2uA55zzSvjsieKhRVEpGkiQ30sXMSPmZktMIZ+XA7gj+edyANcbgr?=
 =?us-ascii?Q?7gsAlBStyMmTTEbnkDd840G0QYuH5aEqpEEV3VuMmHqnHTLBFEeRQGaccXqb?=
 =?us-ascii?Q?y+Bw1E7zRb08SUntR6I/4zljiVXbw4Y2OO97Ds6ie3+MokQnpHJMGZ0aXtaS?=
 =?us-ascii?Q?bFpsGx7EcNuDilhN8Ce+YugYXFGA46VEN5c4egjwqyCJQ0x7HpPFX973LgXL?=
 =?us-ascii?Q?v9zuvc11VfvFbctsco0p7MOSiB7LKZ5iprITZVnsuDRE95fbLKgw8iC7pbKx?=
 =?us-ascii?Q?7bC8h5hqjSUtj1nOLvVvH3KUW69cPasclwC5nfQetPaROJmBwGcvYP9+1W/o?=
 =?us-ascii?Q?YTA1nxo3ncMKubS4ZdXd4VnmP4Br7WH3v9f/Tfpto7S4pf9Ck8ZX2A9OqM+W?=
 =?us-ascii?Q?aBUGFpqHaX4aGh33FEWeoO6uZWJKKoudsIvswm+lJLrJYfz/UNq5a+tLt4+y?=
 =?us-ascii?Q?RuY/NTYRnYqR3cTIoSZCYjdwWCyZRgZehGqZZcgxIOpQwcaMAEQRqtaT2as6?=
 =?us-ascii?Q?7j43iRtdRrQLWP9idgJIO9lDJ3Bz+fNoGM5r8kG8gsNqwfGiPwfFt/m7a1WX?=
 =?us-ascii?Q?JvHDP6xCfMbIJFuGQLb+8BF873Ps5wGDP45JFYm4CZ8nIjBgsk2aGGvChMj3?=
 =?us-ascii?Q?We4lwaR35oOLbgNh4RajFHI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Za1eruuJC8d+4adalW5hT8ab30kFtlDFTjPbjL3Vxwo20RsTeD+O3h6b/VGv?=
 =?us-ascii?Q?vQzHJ3mISt0TLMRmjU5/8u41mCux6ag5azYk7AG+rLKlj2cKzoooeYcR8LEk?=
 =?us-ascii?Q?wO6czv+LRr31CjxmdWvS+zrcWKI8SyZYlg6IopBiBwEA3H9ppivDw/tcaen+?=
 =?us-ascii?Q?W7widYJGFvH4IHA3UqRB08CuZPF3hn5QzD0vDeiiSEfZNkcXSMw/gAbXD4Yf?=
 =?us-ascii?Q?tJA9Sv5xavz9vzo6YxxZEm+HCOW0qrb/NYZo97L0BSw0JvHP3O79IsYUqjbU?=
 =?us-ascii?Q?QTtjorPvrg/q1MqSpUlYZceV6YfUn7HaBRpE+u++e8pdlD6G5qGnTW6sBsKW?=
 =?us-ascii?Q?n9YdHjySvoTDdE128uGCgi0XVqWwlV4jVEfUBeQpsLec60g6n/6rmQLW7pHh?=
 =?us-ascii?Q?duuzcgPlad7SQ1+YwlnEMLqoyUPb4TJwcy4p9ztnNnGnF2nnpVIz5yANs6QF?=
 =?us-ascii?Q?JHZhklsMT87WaELErWO/DEB4waO1Q2RumU5NNNv3ue6TrSkX2VH+4gj9o2MT?=
 =?us-ascii?Q?M14tPXzziA23zxKa47nqUvCfTK2gZLfr3VWZA0pYYPiET8KLhtzldNO9dTXR?=
 =?us-ascii?Q?Sar7rQDICGjm8mVntc5cQuUX/McHYdoqgr8KhBA2ePBBWZwBRTeXGiMazqrU?=
 =?us-ascii?Q?+4UXccpAhGM9Vd3n8UPE+Ybse0h2sYC136lvkObQFUf6pS6EwamIHC/uqtzJ?=
 =?us-ascii?Q?uLcFT6N7Ng/JzrGSxbWGAiMNVyvyMjrptJV3OlNuaWgE4ggroF9exbAGiUy5?=
 =?us-ascii?Q?FFew5xQ5cwGFEsCVnnlH2V6BbjZb8HdAp+2RBRXpgaQGyX03r6DclxF8nDlJ?=
 =?us-ascii?Q?zan4cYCLW3I6Q5IEGw+1H3cssc224bbN/BmuiJKI3rucYHgOQSWWeUbe0HYv?=
 =?us-ascii?Q?wVm7uPzXs5cwGQKhbU8shhAmPOoi/MVjxoI5WY78PZZYuFxsHc1QdAOMbGKs?=
 =?us-ascii?Q?s6ivBxHDXAWph/aN8r94Qb4cylpu3Fjghn+cBtl7dnRCF9YAg1jzpOkk5DYR?=
 =?us-ascii?Q?cjtN0gSXOdMCASfompDWqjPL/n+D/UMJnhMCo2Bryw0eDYqlxA12x9hPZ53g?=
 =?us-ascii?Q?ZaQvSwZxObARYQ6YEjaqX5jrmapKEtj6Pf6Dd5tv9T/gmdsdciMP6Kq94By7?=
 =?us-ascii?Q?cESotAf5qHDjAwH0uCRoeCZQqNr3P4VMdbR7OYAKLbsYi/B9eX7gpAY5MI/j?=
 =?us-ascii?Q?2KXOaf8YmQufnhWq+Efap3w0SIZjYmEdVwK5FADcep7dg6tFRRv0x9CZoVXb?=
 =?us-ascii?Q?IkTdY8mt8usIgxUbTV+B5r5zmB225DVhMehfy2xFt8dmw7e8TE5KfdiBXhp4?=
 =?us-ascii?Q?mkohQDQPPr4d8h2ytU38nxNlSvaGj/vScOVuGj1kJtid9tDGYjqnKXe7wk3l?=
 =?us-ascii?Q?5aBCnLaMQZRk2ebdRkUHYQ3Sz2DybzPq++dZf9uQ2moW6GcQPRU61UwRF26d?=
 =?us-ascii?Q?MTzY95cAGsLTdf0zlYZloHWg26pFKpbXoZGI0TfdQSGrG8NXTdGy5cORsgAx?=
 =?us-ascii?Q?OCW9DWr4c7LaVGkKprptkbSYydjvYrBCBoM4Id4hDbvQ010uBz8LqFmNp2HU?=
 =?us-ascii?Q?zrve8epHV+Tj+IoNtWLr0bBFdzy4H3UC0z9Ipx94A5Poh6vkpd3pTOxdrjn3?=
 =?us-ascii?Q?8ticKTLerYjXxtpAmMExnn8LxDhGgtISszOTWBq2nnCi6DAEDI7ghlPYFvLz?=
 =?us-ascii?Q?Ja7rF2Ggq8JhLbCvpGIofvnojxzTzK3sv8cZkv3Z2Hj5LnPX+dm29JLMe+Fb?=
 =?us-ascii?Q?Ua9SgcZ98Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b445d92e-1a8f-4d83-14fe-08de734d29b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 02:33:58.1965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zl48rBBNODblNIuGb0+x9u8SWTlGvkzmRx5LWHxAEvmBPJcU5kYez6zpstqdlOD0BL6zruITx3NT4QX/AVzorg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8407
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,IA0PR11MB7307.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A5930181089
X-Rspamd-Action: no action


> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, February 23, 2026 10:00 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state du=
ring
> system resume
>=20
> On Mon, Feb 23, 2026 at 05:54:38PM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Thursday, February 19, 2026 11:58 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state
> > > during system resume
> > >
> > > During system resume, restoring the pre-suspend display state must no=
t fail.
> > > This requires preserving the sink capabilities from before suspend,
> > > including the available link bandwidth.
> > >
> > I don't see the sink capabilities being stored in this patch.
>=20
> The sink capabilities are stored in intel_dp and intel_connector, includi=
ng the
> maximum link rate and lane count, which determine the link bandwidth. Thi=
s
> patch preserves those capabilities across suspend/resume by preventing th=
e
> tunnel state from being updated during resume.
>=20
I understand, but what I meant was this patch doesn't handle anything on th=
e suspend part but only controls the updates on resume.
So explaining what happens on resume is un-necessary.

Thanks and Regards,
Arun R Murthy
--------------------
> >
> > > If these capabilities are not preserved, the restore modeset may
> > > fail, either due to a missing sink capability or insufficient link ba=
ndwidth for
> the restored mode.
> > Don't see this in the patch.
> >
> > >
> > > When the sink is connected through a DP tunnel, prevent such
> > > capability changes by skipping tunnel state updates during resume.
> > > This also avoids updating the sink state via the tunnel while it is b=
eing
> resumed.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
> > >  1 file changed, 6 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > index faa2b7a46699d..eb1eed1c8c7bb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > @@ -150,11 +150,9 @@ static int
> > > allocate_initial_tunnel_bw_for_pipes(struct
> > > intel_dp *intel_dp, u8 pi
> > >  			    drm_dp_tunnel_name(intel_dp->tunnel),
> > >  			    encoder->base.base.id, encoder->base.name,
> > >  			    ERR_PTR(err));
> > > -
> > > -		return err;
> > >  	}
> > >
> > > -	return update_tunnel_state(intel_dp);
> > > +	return err;
> > >  }
> > >
> > >  static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp, @@
> > > -200,10
> > > +198,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp,
> > > +struct
> > > drm_modeset_acqui
> > >  	}
> > >
> > >  	ret =3D allocate_initial_tunnel_bw(intel_dp, ctx);
> > > -	if (ret < 0)
> > > +	if (ret < 0) {
> > >  		intel_dp_tunnel_destroy(intel_dp);
> > >
> > > -	return ret;
> > > +		return ret;
> > > +	}
> > > +
> > > +	return update_tunnel_state(intel_dp);
> > >  }
> > >
> > >  /**
> > > --
> > > 2.49.1
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
