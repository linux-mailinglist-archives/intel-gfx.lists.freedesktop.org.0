Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41145CF6A5D
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 05:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D23E10E42F;
	Tue,  6 Jan 2026 04:16:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F1Iw1C52";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A7D10E3DE;
 Tue,  6 Jan 2026 04:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767672995; x=1799208995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jSoxQ/74y8LXuGDxnLLFIlxYPh2Ok3zbW6GsAkxGL0g=;
 b=F1Iw1C52ahD9bvia5OCgapCsiJP4bL9LNTpSGgfQTbRUuaEI1h7zDYzc
 zdUOLHZNU7zhGt/h5hwDFAmEDzoaoQs+F07suCmkpq0XKqn41rm3PucqB
 Y97aQd7E85bM8e/fIlj4Lkj5h7qfGVRBtQInrt94zStMPZzvrKGW3WcGT
 Il5nOygqlRt4RjROV3E8Pf1iDaO90XLWe8SV8haaeW9X4BWrOx3KCemr8
 80lUONBRFKbvmo9+RS0Jw61pfrIdqmWC/R5z7cvD2k+K0vQcxN7wcV+hk
 Pkq2f6qFAlXjaj8YkvQPP7hcXNk9ZY5pGKA5EfRnIyiczl+0PJWt49dWC w==;
X-CSE-ConnectionGUID: ym7h/fbfRcm6O3aeYKFr8Q==
X-CSE-MsgGUID: wHfBbrdJSd+/u2O64WsEYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68944712"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68944712"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 20:16:35 -0800
X-CSE-ConnectionGUID: UHfVsbNATTy+a1d1GNPzZQ==
X-CSE-MsgGUID: zueDIaBlT76uKKxEpqlkeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202327750"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 20:16:36 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 20:16:34 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 20:16:34 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 20:16:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X12C67qgJGVxLp32M5qV+k6FXIgSevi3iNYQJjYQGoy0O0XVYSKAZ0z+JJhVCPbLm0OUH7haqib0q2kMG0GruLd8mV9SlrRbBasSTOYrK/rcA2Y8ssRZ3NPCHuM72FQY/XSJ6y19+a/qDDAaFe3551RKxES/h52uEPmwMfToAF/PvMVNty6gz8jLS0E7OtIB2rfycuXkHVvncpf0BBBLNWPu6NLPRfJzQ6qVLDnX1vEgXfHd6MFfX8MJcayPqZvt/KNZz6oY5JU49Rek5CxN/7ZtFP0qFWYqPivVjFG7HdEViL2Z951TOxqNFaXPLAGZX5F9W61tC3JgVoQ7YuA2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZp14IF7AtCunjQmtRomrVzMO7Ing2IlxGFKvnNf/NI=;
 b=YDTIA/6zXt4UT4UB0rN4B+JIaq4Zyy1R67WIIyQNK8qabTA1jBuBlGkZnhhfO9yFRLR0HR+7hFDAWqq1Gv9w/POg/qo2MfY3czhGMVrAcWgkORs0ONR0W/b1vevTa/jj+DUcou9FH00C+lsfsJK7CsVAyOAazn9CCrwrmBk7XQ1AQMm7yr1RJSmVQBZWxUrAZk9uA+6sX2Q3dZ1MHEvSapiffDTpb0WoW2qx323NFq88WLmujOmgCh0fD3ZMafpuia3VnbWayV46/23C5l5JS7lXIthiz+nChaCfa0FES93LT1FXfUIKk3IkyY7FDPqFdiOh+mAVYiZaXJXOLVVtPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6191.namprd11.prod.outlook.com
 (2603:10b6:8:ac::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 04:16:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9478.005; Tue, 6 Jan 2026
 04:16:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Karas, Krzysztof" <krzysztof.karas@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: RE: [PATCH v2] drm/i915/cx0: Unify naming for C20 pll tables
Thread-Topic: [PATCH v2] drm/i915/cx0: Unify naming for C20 pll tables
Thread-Index: AQHccBplycVJ7T/DsECqzfVTQJPBtbVEpWkA
Date: Tue, 6 Jan 2026 04:16:26 +0000
Message-ID: <DM3PPF208195D8DF922BE32CCACB8707560E387A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251218122329.2265139-1-mika.kahola@intel.com>
In-Reply-To: <20251218122329.2265139-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6191:EE_
x-ms-office365-filtering-correlation-id: 4492e522-8203-4bd3-91b3-08de4cda5bd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?eLkBSvet5pu6diIXKUFdgAAtTLfXhu7RzJLAWEG5QtQ71y815g/COqJL4qjZ?=
 =?us-ascii?Q?bIBll7fwgv9FSynpEPUDlpdY061ZLmKRqOIr6HbC/AcEPOan7fe3nzZvaEMw?=
 =?us-ascii?Q?5ynBFlj6U7DYoTrRFU/HYZ9sZxQo8PlHjsfs2uB96umFw+pS2ehMOAPbOx1G?=
 =?us-ascii?Q?1V8m0wNd8MrcO9seZ5d20Aj9mZI6WgsnYv7xteCxfqYj9jbpoCSbA7Iduq8y?=
 =?us-ascii?Q?BJ/7rvNvPtYBAbnKiG0v1B0gortRe2+jv4V9rTKiXd8u7vvivUoIGpU+Z4fv?=
 =?us-ascii?Q?zs0KY9AtC/A39q9lNZVgu1lkiV7hQSrFYzWiHgvXIAI1Vda4Xsm2fhsbTTxZ?=
 =?us-ascii?Q?fgmpt+BaoKlHkLSTn3I6kuuBSV2OkiDiRq1hpjrPof0fU6AzKabTU/dbLxJM?=
 =?us-ascii?Q?gc6W3Qs7D8nmpteO72jXN/Tw287qjiFm8QKyX+vhWHSrLud3OAPUcBaOeMel?=
 =?us-ascii?Q?JoFHZV94s8csbhurTruf1ACZ48JteDdGM7J7Jtlf1RXsMVEF0UK65c5lmtQ5?=
 =?us-ascii?Q?5f4y1S6WxXki5EjlIftseblG23rzQ0UQNCBEB+3j7G2XVLVgWcrxoI/+TlXf?=
 =?us-ascii?Q?hUGJB4Y1bIFAhkummn5Hz7TkZwMH0076Us2H7I3IfeER4KmXrBY8BzmM+jVD?=
 =?us-ascii?Q?A74gD+NyvT19COSqL39yRNKwcw9a+7E+JH/0fKL00d4gXdPIP0FVJliAV+K4?=
 =?us-ascii?Q?Zshn91OIIDiBuAEP13EnWVKix9vS1BwvTPfr9QQ1aPFtAwCJZRZoI18vlN07?=
 =?us-ascii?Q?fX6uGVTfp/qhO1HvqjRsY41BrNkGafNe36YJs8ud3ZPydRCZpakzoXN7a+gB?=
 =?us-ascii?Q?naUiYUikyeQNv0V+DYtQaN4qKKlWEOHyts44MezoumJuDUTq8+a3gakNYUBF?=
 =?us-ascii?Q?zozOUA2nbcQRK5THFm3HUY9OwFQJIqJRa3RR8vWhIHZwCbLJOuBi6rTlsiqI?=
 =?us-ascii?Q?c9mq6642E6HiXM6B+mtkI6DQhJ/Dz/poZNYkTuQEvSdg2dNlrZwbtD290SHY?=
 =?us-ascii?Q?7qwsxzpQE5ZX3uGAJAzAkWHp2tMUqoouNpzTeZYpAPRtIHoQT3VGxH66PWiZ?=
 =?us-ascii?Q?m6UxjsZJjwi1hZdGIwIcQwj3o/oOm0zHa7PFv0AbDzTeZZfA0EfFOIX+5fkT?=
 =?us-ascii?Q?nKjxuEehvYKEEws8nylHEE0c7BBeijcTkr5BPAHIE5Gm9Wi/Ey7v3c+X7XkF?=
 =?us-ascii?Q?EjJmJyTDsCJE77r/J2yKuQpn2GOOgU525Fd6bTBjVdxg7cYnvSQVH7mxVcoD?=
 =?us-ascii?Q?UfrWKPc9iRKcYWmqHWwgxxhj6VaoqQcyRzrQrKF7w0yTP/8be3XSBL7vpwgb?=
 =?us-ascii?Q?EqaNlhDaAsePZO1KS8qFVLOJUDBX3gAP5ByCKvN/QwLfycbWD2uQoAhNSwjO?=
 =?us-ascii?Q?P9I2BBt1oE/Zh45dkHmy7W4r7d0OdHYD4v1nNMWBcISRN1L0ZLoXxw+KyHmQ?=
 =?us-ascii?Q?gzz9hLqzW6u+eUaW2O/0bgOoCm06whal6IpOBhp+xK8WxdbSmYWazVaSpdJK?=
 =?us-ascii?Q?mbE/MZJSGOVH5RAFt5L5v91Q3hXfkrA+qf07?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KnnSwQTp6V/ulIcYItnR0MJ9IVsBSmYswh2nxqLl1jUFBFADIkeiVrcLFtyK?=
 =?us-ascii?Q?nXDORKy3AANEnvQXZDvyyLnLdSs4TzmO0LxR919ljFno0HZuQqFvRPrsPbVW?=
 =?us-ascii?Q?AK4Os4ecueyt2Qg/61CQ0gyXLVK7ynNTwqhlItkAPu7zh6uvAjw0AMrd2ESK?=
 =?us-ascii?Q?gZ2ag5bRSCeYscB7hLRvmbyULbZMyFCsjASHggw7MCQG/7OVCO+2iEPFvT8n?=
 =?us-ascii?Q?+uzBVYGPYT5wyTgIgg8/gPBifxmIb8/r/nxywmjZ3S2tXH/hG3TYg84uEd3Z?=
 =?us-ascii?Q?oKAcDFVUjACWWmO9x0VHSF1dpKyudcVLajYZvuZW5kPWafh67p/YOvtW2uye?=
 =?us-ascii?Q?KRLFoaQYroqWDVPRSz6iR7vAAaAsDUnBDXP9rdgKJWw95tz7tQweejaNFUx+?=
 =?us-ascii?Q?wkeR3DsMZ+HIoCKEYkPYgQHeIFPnarxPocKEwFz5HcfTzHXvZ8D1gKFReKQu?=
 =?us-ascii?Q?QLjc8Acc+FywEhQqUQ3taQbsPbNz4kg02lR51EiWKmXSque73bm3p0jZ0QJp?=
 =?us-ascii?Q?iI6ouHPCWC31gYmyPl2CZ876kLtnII1HLzm0y04MGxCxRsx0rHEKTmBW71Ty?=
 =?us-ascii?Q?ze54yVVGEUfJVqomLsbNSI2MW5B/1FVf9H1O0sMYMZQiSgujAdI0/ITSJMnA?=
 =?us-ascii?Q?bvF5kg3c/ui2xpUdrx2XqUxt16uZwmpbzNecTAKUz2Ai6DNt++JcC9FZ+Hbw?=
 =?us-ascii?Q?6ycv27+z/2L47kA6WQOCN/nFSu8BGavNEskz0Fd0wFPoM9azYqpadWsPYjnf?=
 =?us-ascii?Q?xUQmI4CUTCsj4eMir8AXKglMeoSQR8nfaxvzPBgt4OrxYNt9YjiY48QyEatW?=
 =?us-ascii?Q?c0iUK3+aac3tL2VkJf4dkaeR2EDv2NIUOnWdQCQQx1Gg15irkR4KUpl4dFq0?=
 =?us-ascii?Q?3vBd6CYOZV3y7MeMgET3suU7XMWB2iJsTVD7ZyLf5Kff0KiE1ykQyWCJxiBJ?=
 =?us-ascii?Q?oMDx9XoaOohdcZsxC5uG7GzhTtOVwfvYwPdQJRhjnyqrpuhLyTxBMB86ipAC?=
 =?us-ascii?Q?SWrNXJfVpRfGNWcHjTXT887fpN+Y9A9JLNPzK0vTXBAXQg0CklQi6NgpIb5F?=
 =?us-ascii?Q?dTrEjyekJHDV5WU6BvaOOXHR4tA7jMnxTEQxGfqJ7jukzYMGjfHVyk78SOm3?=
 =?us-ascii?Q?XlrOxcL217daExVwKAX3znpuBJ6OXaBPWe3i6m4Dz/QkJf6V3ICtV1ST7Bs1?=
 =?us-ascii?Q?glBS5Jd8DeJ/vIQpKew781AY76Qfg7zrXXfL9otxfSKq/446QlK//v+NM130?=
 =?us-ascii?Q?aK5eLR8iQ/+2ztokQopdk4xxTIbXh7XaYZHU/Ov39T4RruejmlsLu6fVdukY?=
 =?us-ascii?Q?7oTr10iPNCLQcaf2PnBifUD8mrSN8LUHpY/Qbymx0a+4lO+cD45OIdoQqOMn?=
 =?us-ascii?Q?WoI/hfYLLIwOKVbV+jriUhPadWYOkCTGQ2avi+L601KBKZu4U5+2zxJ+Kb56?=
 =?us-ascii?Q?UoL1KtxEUmscJEVJ1NYsB/wd7cJHU1ZCvForub/1k2ClSBtrbz7NaZank42g?=
 =?us-ascii?Q?gxmJHvkh3iwsfsI9B8YaIspsQOJQjBIk/wUyO41ALyQLGl/WWdkkG0B0JG2Y?=
 =?us-ascii?Q?3gVBUWS7RBspVoRaLaUldM0pvIHLRMfTa16tXJoVhCvJ3yszUZH0Qzrnfcy6?=
 =?us-ascii?Q?qKMHV1cRqmth47QiNxF727XrOS/2Rcayn2TyVlI+luY6KzdNjg3isno9q+Aw?=
 =?us-ascii?Q?j9mQYtbDxhfQyn9CRA+3gIgE8KRzNSEc8aMG8w3zwjMuOqKrXsBPsrWnTcjY?=
 =?us-ascii?Q?lofxstcoiA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4492e522-8203-4bd3-91b3-08de4cda5bd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 04:16:26.0327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRn5CaxY/vCxi/b1aaZdtlelu1JrpqCfpVCDtPNjBXRvcS2rCudXpoBg7L7iD8Q/aesHaGUWT8DwKS+Le9KH8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6191
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

> Subject: [PATCH v2] drm/i915/cx0: Unify naming for C20 pll tables

From the work you are doing in this patch I think we need to rename this to=
 cx0 rather c20 only

>=20
> To fetch pll divider tables a function name for C20 is intel_c20_pll_tabl=
es_get()
> but for C10 the similar function is called intel_c10pll_tables_get(). Ren=
ame

Same here it better just to mention that unify all naming in this file to f=
ollow the pattern
Intel_{cx0,c10,c20}pll_* instead of intel_{cx0,c10,c20}_pll*

With that fixed,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> intel_c20_pll_tables_get() to intel_c20pll_tables_get() to be more consis=
tent.
>=20
> v2: Unify naming for all intel_cx0_pll_* to
>     intel_cx0pll_* functions (Krzysztof)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 24 +++++++++----------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
>  .../drm/i915/display/intel_display_reset.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
>  4 files changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f6d69627154e..3ddf7e5cae52 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2287,7 +2287,7 @@ static void intel_c10pll_readout_hw_state(struct
> intel_encoder *encoder,
>=20
> str_enabled_disabled(intel_c10pll_ssc_enabled(pll_state)));
>  }
>=20
> -static void intel_c10_pll_program(struct intel_display *display,
> +static void intel_c10pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_c10pll_state *pll_state)  {
> @@ -2458,7 +2458,7 @@ static int intel_c20_compute_hdmi_tmds_pll(const
> struct intel_crtc_state *crtc_s  }
>=20
>  static const struct intel_c20pll_state * const * -intel_c20_pll_tables_g=
et(const
> struct intel_crtc_state *crtc_state,
> +intel_c20pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 2626,13 +2626,13 @@ static void intel_c20_program_vdr_params(struct
> intel_encoder *encoder,  }
>=20
>  static const struct intel_c20pll_state * -intel_c20_pll_find_table(const=
 struct
> intel_crtc_state *crtc_state,
> +intel_c20pll_find_table(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	const struct intel_c20pll_state * const *tables;
>  	int i;
>=20
> -	tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
> +	tables =3D intel_c20pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return NULL;
>=20
> @@ -2649,7 +2649,7 @@ static int intel_c20pll_calc_state_from_table(const
> struct intel_crtc_state *crt  {
>  	const struct intel_c20pll_state *table;
>=20
> -	table =3D intel_c20_pll_find_table(crtc_state, encoder);
> +	table =3D intel_c20pll_find_table(crtc_state, encoder);
>  	if (!table)
>  		return -EINVAL;
>=20
> @@ -2880,7 +2880,7 @@ static bool intel_c20_protocol_switch_valid(struct
> intel_encoder *encoder)
>  	return intel_tc_port_in_legacy_mode(intel_dig_port);
>  }
>=20
> -static void intel_c20_pll_program(struct intel_display *display,
> +static void intel_c20pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_c20pll_state *pll_state)  {
> @@ -3260,9 +3260,9 @@ static void intel_cx0pll_enable(struct intel_encode=
r
> *encoder,
>=20
>  	/* 5. Program PHY internal PLL internal registers. */
>  	if (intel_encoder_is_c10phy(encoder))
> -		intel_c10_pll_program(display, encoder, &pll_state->c10);
> +		intel_c10pll_program(display, encoder, &pll_state->c10);
>  	else
> -		intel_c20_pll_program(display, encoder, &pll_state->c20);
> +		intel_c20pll_program(display, encoder, &pll_state->c20);
>=20
>  	/*
>  	 * 6. Program the enabled and disabled owned PHY lane @@ -3558,7
> +3558,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder=
)
>  	intel_cx0_phy_transaction_end(encoder, wakeref);  }
>=20
> -static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
> +static bool intel_cx0pll_is_enabled(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder); @@ -
> 3645,7 +3645,7 @@ bool intel_cx0pll_readout_hw_state(struct intel_encoder
> *encoder,  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20
> -	if (!intel_cx0_pll_is_enabled(encoder))
> +	if (!intel_cx0pll_is_enabled(encoder))
>  		return false;
>=20
>  	if (intel_encoder_is_c10phy(encoder))
> @@ -3730,7 +3730,7 @@ int intel_cx0pll_calc_port_clock(struct
> intel_encoder *encoder,
>   *    to the Disable state.
>   * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable
> state and disables the PLL.
>   */
> -void intel_cx0_pll_power_save_wa(struct intel_display *display)
> +void intel_cx0pll_power_save_wa(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
>=20
> @@ -3748,7 +3748,7 @@ void intel_cx0_pll_power_save_wa(struct
> intel_display *display)
>  		if (!intel_encoder_is_c10phy(encoder))
>  			continue;
>=20
> -		if (intel_cx0_pll_is_enabled(encoder))
> +		if (intel_cx0pll_is_enabled(encoder))
>  			continue;
>=20
>  		if (intel_c10pll_calc_state_from_table(encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9f10113e2d18..e36a8a8377a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -77,7 +77,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct
> intel_display *display,
>  					struct intel_dpll_hw_state
> *hw_state);  int intel_mtl_tbt_calc_port_clock(struct intel_encoder
> *encoder);
>=20
> -void intel_cx0_pll_power_save_wa(struct intel_display *display);
> +void intel_cx0pll_power_save_wa(struct intel_display *display);
>  void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state);
> void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder, diff --git
> a/drivers/gpu/drm/i915/display/intel_display_reset.c
> b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index d00ef5bdcbda..c58c9994bff6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -107,7 +107,7 @@ void intel_display_reset_finish(struct intel_display
> *display, bool test_only)
>  		intel_pps_unlock_regs_wa(display);
>  		intel_display_driver_init_hw(display);
>  		intel_clock_gating_init(display->drm);
> -		intel_cx0_pll_power_save_wa(display);
> +		intel_cx0pll_power_save_wa(display);
>  		intel_hpd_init(display);
>=20
>  		ret =3D __intel_display_driver_resume(display, state, ctx); diff --
> git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9aa84a430f09..905eeb0b4a09 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4842,7 +4842,7 @@ void intel_dpll_sanitize_state(struct intel_display
> *display)
>  	struct intel_dpll *pll;
>  	int i;
>=20
> -	intel_cx0_pll_power_save_wa(display);
> +	intel_cx0pll_power_save_wa(display);
>=20
>  	for_each_dpll(display, pll, i)
>  		sanitize_dpll_state(display, pll);
> --
> 2.34.1

