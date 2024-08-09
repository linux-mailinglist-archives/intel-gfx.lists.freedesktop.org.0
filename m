Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2194CF6C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 13:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7600A10E8CA;
	Fri,  9 Aug 2024 11:38:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGkYglB+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A4A10E8CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 11:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723203487; x=1754739487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=12piNjtQdyVXVfy+sQM1Bd8DE1Jmh4Bo5HXWOCuLlrk=;
 b=CGkYglB+Fkd6tLUWgHYViOioPJZpXl8Vt6e5fUAUYvr84C8ayEMumvQx
 ajMVXHyHIhKyVoPc1T/Wm3lz8sLm3KSa6YiqwQvuc1Cm39SoBZKylJy+c
 jMsK0k3KDwlxi6O4FRxTk4SQ+odMgmOzxSj9Vb6eS+Qx/SVRlRAG6eQOw
 SNP70ErTf26/GOwiLIX/qdixAqvybLhARvLWCyQNV7zbeFfIM0zGHDJn1
 O5ZRKJxyTByDsxaLzPEq2X/pxEx4mu9aUJnYO1g9++AqzMH+WHnwcmkzg
 47Zgko8revLbw5jVj0ff1YGIAIZqA1iKiG7W3nFCO06X9PXpiyfDUedeG g==;
X-CSE-ConnectionGUID: kydF9KflSiKLIAJ5L3VUwA==
X-CSE-MsgGUID: 8w+aX5DcQvuxl9otntUo5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="32051096"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32051096"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:38:07 -0700
X-CSE-ConnectionGUID: K13vafyXSqSbL1MziCkdrw==
X-CSE-MsgGUID: /jT7nGtuSGqkpD79qHKzyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="62184425"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 04:38:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 04:38:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 04:38:06 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 04:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p5pbQrxaBhh/ALP3pHk837dkaUWbUNuVyqD4USWjTGxxpKF6oD6zwd0ld3RZT0/CFhWV5POiUIxfE6UhvfVaxp59GWqhNev+720tvi1klw/4PoXv201uJh3r3LiuSeaJGTyqzRP3k3AP48ezuKypW/kfQIQtXwg2U86zYe2N4lbu9DuoXsdHyAyyQBTSkie6FMTPyZne/k0zj9m9xWMPMtByvst87LHXLsk3je0ui++xoOznJESYWSM/DvH2zIi/1BdxNWi+qRdEwPS0xVZQ7aLZ/n75l4Ax26TWuuvJk3L/Fo1ISy2ROTy0EECpGCPdVTPVWU+NUJsYnEzAhgqI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9kAWm0ySMtKbfxLWHPYR+KNZMLb7aUELgx35y/IO36I=;
 b=SDWRazWlSWLxyiG3Z54V1ByeUM7fzLrgTH75/a2ML7mfPV7swM+n9GMpZdIVJhKeQeEw9rN7zBBPIWEQNQrv5ZsvSKrnCD2zngwxRcYtGBFHQuBRCl7bf3BQlggr6zBUiPp7jj1bOSU1ehDKRVLGPsV7Bz4PChG+8n+M+BtRBcBPP657PA/PtReAb/t93cB81/XZGMHOT9XRiSQiNKyIoEqd3a0c7O6J6cGLX4mAmsPJRmR43cx4PttaUF/tNRtjmFxndVDzRJ2T3dWue4GMZwUyzNxfRdAS9/k/WQmTNGndGlOzsHGjuSWj82fPQiBrPxyqxBLtjVwRrDzJMaWcLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CH3PR11MB8342.namprd11.prod.outlook.com (2603:10b6:610:167::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Fri, 9 Aug
 2024 11:38:03 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7828.030; Fri, 9 Aug 2024
 11:38:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
Thread-Topic: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
Thread-Index: AQHa6h+Sh5lpPZgFW06uI507Zpdop7IelgWAgAA13lA=
Date: Fri, 9 Aug 2024 11:38:03 +0000
Message-ID: <MW4PR11MB6761E1157B1B26D467500F1BE3BA2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240809054424.3938842-1-suraj.kandpal@intel.com>
 <87seve2jjq.fsf@intel.com>
In-Reply-To: <87seve2jjq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CH3PR11MB8342:EE_
x-ms-office365-filtering-correlation-id: 37132ac4-5280-4321-83ba-08dcb867babe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XnG5x7WFEpec8Wj3H6LNI/OkxDgyaI9LYZOx90XS3EzIyAwSfiGWnosE2O43?=
 =?us-ascii?Q?37IHXd1H81TbXmo28iyJPd04Sx8OEWaZPOrtkieAepHROffXo9+FnnOqck8l?=
 =?us-ascii?Q?vyiA0JC47rT4j75rY/QTZK9Tgb4+czfvY/8XWK/oGzgpzYu162ZTlOTmWMiB?=
 =?us-ascii?Q?XEsKCo9qF/FVRGYIrrZsJkwGjtOSxuhZDn5SsAFOhuf+L92PvjHh0bT7NaWa?=
 =?us-ascii?Q?mlp1Ea4T/COxJ3LhuW5hROZtCzS+VlYj8QZ+URAnZ6bs6yX7koguZ5/Qv+mP?=
 =?us-ascii?Q?zGh6ABSk3xUyhKQvWohKqqm7JekN0xn9tdKwQ4r69kwLi+64oNhy6WbyhWcb?=
 =?us-ascii?Q?38/xfbgvS7Wu0XnQAZqJgKHAlJ8RiiGGQDSIhxxSt/p66VTrh6mYKBmPlsIe?=
 =?us-ascii?Q?qD4R5f7VCN9IOXTlxBiR+DyQVtvNVLXjrBfryf0uAGBaX19Aj8KfxVzPKp1t?=
 =?us-ascii?Q?xYX1+N+/ZjowdoOAdKgMwU/Zcy2PH+wxhkOiJbRScqFqZaPhwTomOGURlTsc?=
 =?us-ascii?Q?TklmDpKXeraeMPKadEl+uJEVIT3LJBztfZ6T3lb2M8KvbOB1gqkrSbuaEc8c?=
 =?us-ascii?Q?CM4nzHXugPIYSek0VipjiOQRHWVeDHlyD6WST0SjT72jSa85DdOKnpH+Kx2e?=
 =?us-ascii?Q?ygZG8gndB8kjlaai7BUIBJNuy2iJL0VELSN1m6d88M6x4UyeDEVxCyOKqWMP?=
 =?us-ascii?Q?yffv01i4m2GGzXzDntwuGT5noas8XShoOJiRXMycy0ZuIpsiIyNoFeVrXE+q?=
 =?us-ascii?Q?9l46KzPAOvosxjEmiucY+S0B+iaeDIGVeZSn82weuYEmmJvDADSF3uL0fBpf?=
 =?us-ascii?Q?DRXIGudqcjNyE9WduxEEy/PX7ybsLaFjPd6NzuNGqzE9yIsRMtBHnCwPA1LA?=
 =?us-ascii?Q?gJCBCdxe+8DeTcLQ4HvYHr72lnbk5huYR2Qse81ZWiv/DLMr0t57mq9LYJ2R?=
 =?us-ascii?Q?xx9XkZ+Fo2S3vxVrEF/uCgOchpjGeQllVFOnLjQT7BJFQBuovY5wmPJ1a8Gn?=
 =?us-ascii?Q?gJURTs1dW1ZWw0wElQjUqlSVCAV9VsDMXbUloxpPr/6k4eKPAXyHdJudkh5F?=
 =?us-ascii?Q?ignxe5DlslypvD9GIAr9QfqFHBGc6XQxjGzgeU/EjmqdIz6grI7BjcTwv0lF?=
 =?us-ascii?Q?uGtLFJGTvL9g+EZZGqtcpphN2ulQ++90jUmCO3mrDiLpE0L9JNK0GXMUo8XR?=
 =?us-ascii?Q?vzxIWcuKv1wZZau6ewdttngBeTcng6NqKmo+XbwCOmUjwJsYuq8R1jVAQppw?=
 =?us-ascii?Q?aQfhkwouZUZP70RB9aQZPbi6hp+nvstLZJddnmcsX/2mDKUU9Qk98zdM1gpH?=
 =?us-ascii?Q?s27CzOGFKajVQG7f2pJlD4uy9mg2yuYQ4ueS0tLF0bNlzIIr6jBmNbkUz5r4?=
 =?us-ascii?Q?O8+1rqlNpm5Jjk53u/jhx0xrlqZMAwMBS3K4fX1t51J5PuyGvw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iPS7aQCFA+3X5A3yUhlvuJ4MrB92+Y7i82b8x66bGxr3TvsJEEFfeNMdw8+Y?=
 =?us-ascii?Q?Vl0K4TEb/2i4qW831fUujtweIe7hXxorJr8T7ueE4lPFBQbsE5qUqpnIG3wn?=
 =?us-ascii?Q?mvh0+M8GJoFEXsn3yIjB4lVlJsIBwzos9jcj9Xxw9b4EGSEvkNOolWDU4525?=
 =?us-ascii?Q?umFslmlwkj0qjoQpVjwUqTFio3PoSj9o0dnWYYLDgLBNEyBVaoxo+ALPoP/+?=
 =?us-ascii?Q?+xf30QT3Lnjpq3JcHJXh9xqI+Bfsux4mArzc2wBsr26HANyOMpIJuQgsF4+J?=
 =?us-ascii?Q?mLq4RDflXolNgo0U2VNM1KoPJLAzFixHoHL8TR2Ii4QjSKH+Ecg1PZ2G358v?=
 =?us-ascii?Q?3n0trZNoJhgy5wl1YUAA1iFbYj5eeMA+iHYYDG4vUZmMlUjcEgqGb/spp3oT?=
 =?us-ascii?Q?aFUymI5jan6kFg1dIRz+sXlRfoDdiw3Kf42g9Vj/pHkA75AmTUoOFJElpUP1?=
 =?us-ascii?Q?/I8jyWL4pshi8YIPJS+NuD2L6CTNaKbXHRUAmf7Qz6PdvfpjgH3KvV7ZR27z?=
 =?us-ascii?Q?ILGdC9rl7/I88+QlrnD70exxupWW185f7/YagYwMVmHlaJqCgWUn+dEUm9UK?=
 =?us-ascii?Q?JoyHFs6roPL3GV1l4eB46lE0ylHoLoQ1sc2Dyesz5Y2uoDvVzIv77u+Vu8aS?=
 =?us-ascii?Q?2/Gvr8swqKJCWHCPIoJu8FErYrx5mVRyU7VojlPa8qvemkAr2cw1STKh2LnY?=
 =?us-ascii?Q?HMxrZYqWKebLlyP/U6XyW9eCdn6qqttMCbrJb05IDvlba0t48a7qoZF3yb8v?=
 =?us-ascii?Q?IABKIV/Vo/mlMMK3i4TvV1FmWWpykpdNttNNvjpks867BDjbKJ+nc6rg/HYg?=
 =?us-ascii?Q?0OYlnxVDEWc7OZ/0iu1cmh9eVVJvHrn+7OTh4yGtllJcV1zTxeZs3v3LfnHC?=
 =?us-ascii?Q?t319fXNuTP2CHsXFuJFN9s0lCns+4QUAPZEHF34BZAqrx82MYNOinItkv+T3?=
 =?us-ascii?Q?ja+OgYEBc2XoEo/OrrBpOWCQxUSg9Ua7rzySgK5O8c+Uj/FKk8OYVN46bxFE?=
 =?us-ascii?Q?SJUZLWFYilJ5f6QiKY/+aPgrb7KARBLF1Al3MP2guEOBondihQ+QUtPi+E5f?=
 =?us-ascii?Q?EEAB7laPz2ZKtjnL3x1Y/Nok+e/68fLCfh9FXejRQwdhw8lmLLlw2w1Ww2jU?=
 =?us-ascii?Q?ecxJ7SaV3VgeuOCNN9aKnwL7IgpN8pW4pXQHmWqILTTQhQuYeANrhS+b7WmZ?=
 =?us-ascii?Q?7cwXPXaXqzUAtOD3CDuy4GwqBHNbxMN1rCIpFdjMzZCMc/VPvjRwaqt+dIoX?=
 =?us-ascii?Q?j4jaNiMhf6adum1qCZBaT9LlsAgtmivhn6Ho65qR2pzTtf3lLPGVNsHpOcMx?=
 =?us-ascii?Q?oXF2LonHbijMBnorryJwbl/njW5ySKOgkcqwYOtkN6trxlRYHW6wMER4TJaE?=
 =?us-ascii?Q?xxGCtm6+1Wi7Y0aEQoWgoXzCtNI2iJfuP+bVGrwfVLa9WcOJ+5W1hSMLEFYN?=
 =?us-ascii?Q?Of9qk/f6v24uaoBc/YYMkPPqqMBeHH6XcHMyaGN0Cok7EEDkqvCpxb46ZJzE?=
 =?us-ascii?Q?xNXbzNeCXB6a874QqBIV+RS4jTI8wibfE4ceEUcUkCk6nERoWA8tgBMwH6PZ?=
 =?us-ascii?Q?maOjGHHWakyqBnepd8Xt9prMagvoqq3fPO9JqzX7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37132ac4-5280-4321-83ba-08dcb867babe
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2024 11:38:03.3496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WK4JumJW7tIXGyIQB7xf8yitqnht/ht4+RtKuw13YykchY7s2WjWI4AFUx4zGD6eyPBGcxU2mXqfTZG9/taYkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8342
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
> Sent: Friday, August 9, 2024 1:51 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
>=20
> On Fri, 09 Aug 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We are checking cp_irq_count from the wrong hdcp structure which ends
> > up giving timed out errors. Extract it from the correct intel_hdcp
> > structure.
>=20
> The change in the referenced commit seems natural. Please explain *why*
> it's the wrong hdcp structure.
>=20

Sure Jani will update the commit description.=20
It's the wrong hdcp_structure to check the cp_irq_count on because we only =
increment
the cp_irq_count of the primary connector's hdcp structure but here we chec=
k the irq count from
the secondary connector's hdcp structure too which is incorrect.

Regards,
Suraj Kandpal
=20
> BR,
> Jani.
>=20
>=20
> >
> > Fixes: 8c9e4f68b861 ("drm/i915/hdcp: Use per-device debugs")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index ec357d2670f1..3425b3643143 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -39,7 +39,9 @@ static u32 transcoder_to_stream_enc_status(enum
> > transcoder cpu_transcoder)  static void
> intel_dp_hdcp_wait_for_cp_irq(struct intel_connector *connector,
> >  					  int timeout)
> >  {
> > -	struct intel_hdcp *hdcp =3D &connector->hdcp;
> > +	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> > +	struct intel_dp *dp =3D &dig_port->dp;
> > +	struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
> >  	long ret;
> >
> >  #define C (hdcp->cp_irq_count_cached !=3D
> > atomic_read(&hdcp->cp_irq_count))
>=20
> --
> Jani Nikula, Intel
