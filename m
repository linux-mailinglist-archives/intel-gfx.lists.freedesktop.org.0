Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7C959079
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8C610E395;
	Tue, 20 Aug 2024 22:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MW3NPgpm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E7110E395
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 22:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724192907; x=1755728907;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zRAUbt0gFqASbAVg9RW+0a5uMCmcpB+2aoqQ5x1gzgE=;
 b=MW3NPgpmRX5K4S5mwmBL2EirGH2+g4N6KfprQUkl9mCHonYfoqdOToW5
 ZR8+wdejleGYNWq+PtOi0BLPDt6m19OICFZtWvd51WLeqlWNrceoopWtc
 9h2pnJKjEtT+PjppjY8Sb+CHhXVavxAS/zMSj8LL5WP3+tFAkDc9iFlM+
 yCzBVmvWgEhObBL4lpC7OZfnBcI3ElQoO6PPkuLSSSYYjz128im/ts7UJ
 LbL/OeFAFP0pcS9iWNukUJfzQIDXjvQSQwb+OGsbZZtQHbXP3Ud/w1IDU
 BetOyNduBHQUhaJSMSYt98Zza7Z8QByNholBVtQYMzTk57LIQu5FqeBlY A==;
X-CSE-ConnectionGUID: YfkjFvZUTjanuSM9irrD1g==
X-CSE-MsgGUID: h9GtVgoERu6WPUwuPWZbpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22334625"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22334625"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:28:26 -0700
X-CSE-ConnectionGUID: JMmyUGL0Q2aOmezy6IvDBg==
X-CSE-MsgGUID: 3LuMzDiBQV+mNwJLGujSPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="65719941"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:28:28 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:28:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:28:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:28:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BmHhP/3jZ1KudMaGdIiRG5Tord/xmZ7jbPUYfKAG5en/gNfEJWiCQoxs9CkewUj9zASwlVifHvtHKTUihpX8t6822BFaQFsFqtwJH+laL1lHWHtcS+Q2hHaMtpAbFy9LMvlnFDbcl5aCVjsfPGOooEu/L/lcYhMGCVMDS3PZ2MSksee99fYlSCu5tpOZLe4gieiW1EfT7jdlXmYejCxjAWQi0NfPPkxNJ/eiDiwBMZ9RI7d+s34ZTWyMQ4wmAcR0bZHGnNwoaO1bKHV6167fWeL+D2Xe7fxhrSwmd1WM0I3BNNdjv3wUchS+k4DjB4KpbIXYvWXQIdUCJ/m+09LTcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c92JW+L9LkcRwRsb6SKrwWkFbXvJRlw4HkRa/IjEMdk=;
 b=DPuIixjTi4SMOUvmikluy+cXKuUOyT29339ZnetIFGyVNgbP4g19sJB8S4Ub47yzcZ2hRafmxf2D6q52q1qgxQ0ZG22c2f/Kw8naXdv6iKc+RKkxEgAegQRnr6tu3pAbeMdydPHJIKQYLstZKCuJM5DgNZ5wcA2T7VBv6XQ+9xSqos25jWzX+/fk60u9G0pR4y+Roa3hLDjcEjkm4cM5vNQyo9ejxOErgCAlaBhNqgC6D+1EBkzVAI0O8KQcmXPN7x3a0jPgVre1kY3ZMgMmmd3cFumitksPBK94HrwBvYYNvHIsbkKtgpQnH1p8SnwbfGDD8Rk2k7ddjG8mA6cx4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB8090.namprd11.prod.outlook.com (2603:10b6:8:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 22:28:23 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:28:23 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Teres
 Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, "Harrison, John C"
 <john.c.harrison@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
Thread-Topic: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
Thread-Index: AQHa80x3aWtfDOkwP0K4fTRpJxFgaLIwuTHw
Date: Tue, 20 Aug 2024 22:28:23 +0000
Message-ID: <CH0PR11MB544414648B377EB00A6C0C3FE58D2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB8090:EE_
x-ms-office365-filtering-correlation-id: 81ae497f-3c46-4dc9-8f11-08dcc16766d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sDehmXI6bOPFB9z79afTuqE6AJZant2cvUgzfAuSlrgBnVYQQA23AfLMKkQ7?=
 =?us-ascii?Q?wErEihXlrvZKH07EfIV5YeyMz8PMG1PUI+MRSV2Yd5Dp8a2su7sr9fXB9CMP?=
 =?us-ascii?Q?7dRsxpqLUnWfLmyrtWvWbTNXna1iBBrHTTVryUbzvrNAghFEJS5oUedQ5P/5?=
 =?us-ascii?Q?AjP2za0cXKL4lIUzTh7U7/t3qS50/U81ctwCJ/egXld40verkd759018dpgA?=
 =?us-ascii?Q?0oufuhO7HUeW5AMOWxvJuV6riXdDF3oCAf9MLcQonDn8Q+dvSsIZ0wqCsoic?=
 =?us-ascii?Q?fse528hMl2XiwIN5A+x87YGwBlLV7i+2Ty0VFrVJat7tUSLcf/OT1hZdVMZp?=
 =?us-ascii?Q?CSoNoQImjzwSkTh+2WTYngol0VH94t+/AM1jb7CnMxcIbKke68FsBYTnCcz8?=
 =?us-ascii?Q?Sp5pFMd/DZdEeyHjYVd2a4ZkCEzFEISzGV5LopMw+FBprPv/zyKEpyRQaLal?=
 =?us-ascii?Q?m6guHbywsKliJKp1hK7HYCsLL0hZ23dx3Sgcsj+2H0Ad7NaogV+h3oP9SLyW?=
 =?us-ascii?Q?sqRRNIWnWh7S0uO6ZqXmaHftOs80Y4AmDp6b/y/SO9SSp9yEnmqSfuwmq7a4?=
 =?us-ascii?Q?Ol7U9EbEL2fMLKoGKtGV1VHyT4U/05Qm9A73gg5FgYTVy1o7FjNRQBM85xA0?=
 =?us-ascii?Q?9iMXPjtr3C86aaSiSzCk1P4OKWUCDV/AKhoFcsJLUol0OEUbdtTbt0Dum388?=
 =?us-ascii?Q?XshrkmncpG823kSLbX0yPrkWXaxZR1pbIQlQhvBSdpIGfv0yykFix815s8Ac?=
 =?us-ascii?Q?Mf4dHyH03AU/3RlsDnzGuHJbxb47ICn4GJ+2c7h5Lc7qVvfwGGsNFuoaD5u5?=
 =?us-ascii?Q?mbPfTcicF/hhGSuPoDtW53gxdSM+4CSfEwd0o8PAAZAjb/mTd7ltrT9Yr383?=
 =?us-ascii?Q?UbVSbQ9mIeEfg5IxTpK+hVq97vcdpJFe/oSM5Vi587jPmOaV3oykIqrSW24l?=
 =?us-ascii?Q?GIBA+ZZBKUuRg5HDxIZF4rSjm898ibX/HnEUNxboNBnxQZLOJb94YqRqrtmN?=
 =?us-ascii?Q?TTwaK8ZCwZU2iWJBtTj07YZ11IRO08JUr6AEsNTH0QePb9rHMiv80N9eAsc+?=
 =?us-ascii?Q?4S9KTrcuFhl+g11GVHA2MtLKRkRIcv/qKWIsZU6j34PHYa+h5wpBo2o7F5St?=
 =?us-ascii?Q?lXRKUYyKlKZk495BODLvAQRbg9pP9Au9awwtxGvlST9m5LNcPlNs6aRf6t8w?=
 =?us-ascii?Q?dnXf5qonjCzM9b8Q/epod+Wvj/quFkS2aHDyx8RgMXVsa6UDhYbkmQ4SphSf?=
 =?us-ascii?Q?AulLrtysqyP+tRiszavyjfQOduwkYVI215GUs6cfUYuKMBF82yZ622gBaUX2?=
 =?us-ascii?Q?6RZnkj81ZBUmjQtCxMFruChrFhzUv4qqb+9PvZ8SNezEYi+B7/pgfE0Mavq+?=
 =?us-ascii?Q?6QBqt9Hqau1zRoc1hjZRMOdhQMdtFHJo0+TNV46vA6pnlpBXtg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R+MbKE1cgmUvW74EVa8BkbbVki9GJknzB6ZTwc0WRAHiQ/cttwt11oCpzB23?=
 =?us-ascii?Q?Y+bDGmoukqXes1KafYpwrPLhzvI86JvUIT4pKDXCc+n6JX1iZGIJImukgDBb?=
 =?us-ascii?Q?5PwRpOimYYQFVxLrcaYw7IOD1p0bD89kTV+Q2PGMg17Sn2PL7un6xATcPhet?=
 =?us-ascii?Q?Ldd3fgZYcpW+u+3L7K7nFNcPHMLg3vu01xv3Vg9tjQ/Vbd0NmQ9VD/BmmBOE?=
 =?us-ascii?Q?oka0Upv2k7q3LK6s8cvWlMQscVElJLj6UydvVSndbHG5xmyy587fayGJ57co?=
 =?us-ascii?Q?mI2wsGuj2rBxEGvQFAd/8Wjyb1PDcU5YORxph1/v92LVsWOb80L8N22tWZun?=
 =?us-ascii?Q?4EMk5jMAN3WpOie9w3CrGKi+MmgKyt2szrCQz8x3bKiDzyelFiTXuTTmqTxm?=
 =?us-ascii?Q?DwTM7xLyXigy6A/T+c9HaxEGzvaaZM16qCWBzR9k9QR7gXzA3bSrEQxWtatw?=
 =?us-ascii?Q?LLKoXGReSl86iZIkQ1dZpLYHD3BeCf/k1CyFgJwQJ6vIfuY2VEi99Ji1jAEM?=
 =?us-ascii?Q?W65C6x3BpRFGrRj+f0fDyQMTdItfbXEizQ6Sg5AzIPkp71AowgU3Cc5/os7J?=
 =?us-ascii?Q?8YhA9TVUQT5gF+aBDl8TRnRJ04rBDx5IvjDUttONMu9dudncjHj1ljbxCmMB?=
 =?us-ascii?Q?DAorOcqIOxig8AAbeC1bcgxyODzrJqj1fmm+B9uPAQOD/OxPItg4Ll3VMsEJ?=
 =?us-ascii?Q?rZygP/KsR6OA2scT00hWOdHVK/Xf8GSYJ1E8g27ji2cNUZGtr0tGQSS7aklS?=
 =?us-ascii?Q?6wxkFo7wVAnOo8Zjr3i8euYbkNe3lidRSt4qEhgNe6zA0L04ttvV2LsUgTwz?=
 =?us-ascii?Q?n9ydFdOX9qE1JF/asOd72NdTEPEsH9iEMd+2Qi0pCAtiW0eI10+8+wQJBabE?=
 =?us-ascii?Q?WIlsK2wuYvDlgaE29ZqoB5/MGSpvj3WHHK3NZ8TFDgfOUjSJbzglaZizqnjv?=
 =?us-ascii?Q?foSEAvp+IFBXWCRZuP3qmahECrkRRKARlwJsCmp3wndCUpfnMlWhSmN1Cym3?=
 =?us-ascii?Q?+QdEmdQu7Pjin9SlEPVOvk4xudgIIFXqXDjTTIbUBRAyahJPR8vcYK+JfYJF?=
 =?us-ascii?Q?EQv3v2EBKWIPEOdeo5z0Fa6ARedLw/nen4ldJMBN4oatEX26AEYF5KK0L5QH?=
 =?us-ascii?Q?fBLO2qr0sYMscmvT3uLogqooelPZMJQCI/Eenqa97um76aeFgVbuKrYbs37V?=
 =?us-ascii?Q?bX9iBEj1wbR5fOzsGNdpphTB0Od9a/qLJ1cfqfNO18PTXs/41oPBG2HMfmTE?=
 =?us-ascii?Q?fg6tn/09e4ZiYioUEiUlu/QPiR23DVTR9A9B0gPFY9nWZKyO0DZCdL0R/ggH?=
 =?us-ascii?Q?wYjtxX4HHioMUgY/n2ozUSL6A6BEiE9UDc1Vdhhqru8fPEAqTUIuzscQyuyO?=
 =?us-ascii?Q?P39w2RlsLdyoD4iNs7tYLvasTT/BAEI0MiremPC7HnzQ0GFoI2crXY5OkxRx?=
 =?us-ascii?Q?jToCtzEOLd06n1SvEP9VbG0dXQjaw2oi1EF/8Q10GlUYuhErQiTCYNOtNjUf?=
 =?us-ascii?Q?gmvd7vnzHZerQlXB7we835Rb2HdiZEOq+y2itPMNizlPZ6hviDA1Hc0r//0S?=
 =?us-ascii?Q?K3yvCjkVbjALEhSBPa/I0Wz6W7L/6R7AJuViPwRa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ae497f-3c46-4dc9-8f11-08dcc16766d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2024 22:28:23.0525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TujKelkEl3ovJCT0KmFmTd/XcDR4lmYoUIw5VLnEWaQnbjcZbUF60CbtXTIfnT7WfrQrRfKyWAeNhABFUrP3CKcSzzXzmAdYpBy06toqUw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8090
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Dani=
ele Ceraolo Spurio
Sent: Tuesday, August 20, 2024 3:00 PM
To: intel-gfx@lists.freedesktop.org
Cc: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Teres Alexis=
, Alan Previn <alan.previn.teres.alexis@intel.com>; Harrison, John C <john.=
c.harrison@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
>=20
> If the GSC FW fails to load the GSC HW hangs permanently; the only ways
> to recover it are FLR or D3cold entry, with the former only being
> supported on driver unload and the latter only on DGFX, for which we
> don't need to load the GSC. Therefore, if GSC fails to load there is no
> need to try again because the HW is stuck in the error state and the
> submission to load the FW would just hang the GSCCS.
>=20
> Note that, due to wa_14015076503, on MTL the GuC escalates all GSCCS
> hangs to full GT resets, which would trigger a new attempt to load the
> GSC FW in the post-reset HW re-init; this issue is also fixed by not
> attempting to load the GSC FW after an error.
>=20
> Fixes: 15bd4a67e914 ("drm/i915/gsc: GSC firmware loading")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/=
i915/gt/uc/intel_gsc_uc.c
> index 453d855dd1de..3d3191deb0ab 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
> @@ -302,7 +302,7 @@ void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc=
)
>  {
>  	struct intel_gt *gt =3D gsc_uc_to_gt(gsc);
> =20
> -	if (!intel_uc_fw_is_loadable(&gsc->fw))
> +	if (!intel_uc_fw_is_loadable(&gsc->fw) || intel_uc_fw_is_in_error(&gsc-=
>fw))
>  		return;
> =20
>  	if (intel_gsc_uc_fw_init_done(gsc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i=
915/gt/uc/intel_uc_fw.h
> index 9a431726c8d5..ac7b3aad2222 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -258,6 +258,11 @@ static inline bool intel_uc_fw_is_running(struct int=
el_uc_fw *uc_fw)
>  	return __intel_uc_fw_status(uc_fw) =3D=3D INTEL_UC_FIRMWARE_RUNNING;
>  }
> =20
> +static inline bool intel_uc_fw_is_in_error(struct intel_uc_fw *uc_fw)
> +{
> +	return intel_uc_fw_status_to_error(__intel_uc_fw_status(uc_fw)) !=3D 0;
> +}
> +
>  static inline bool intel_uc_fw_is_overridden(const struct intel_uc_fw *u=
c_fw)
>  {
>  	return uc_fw->user_overridden;
> --=20
> 2.43.0
>=20
>=20
