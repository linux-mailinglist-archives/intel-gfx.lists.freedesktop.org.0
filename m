Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE26A9852F7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4857A10E7A2;
	Wed, 25 Sep 2024 06:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eDS8+kBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD6310E79D;
 Wed, 25 Sep 2024 06:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245925; x=1758781925;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kTjiLz6fpOkjNMLuo7zFuAdhHb9tUzZ9sSgPjSjtMlE=;
 b=eDS8+kBl3+rBuKqi0zq/YFSUq59AjTHSbV+1b/vLXHHK19+OCc8X3IBZ
 efQW59f56Hg2WHaCq56c27O99mT7Ua+9vM3K8E1YH36kev7nYj3A5JDjd
 AiiYYVF0EudOR6OLtNc9GtqIqnFPmT+DkstD2qdjVQwiPq0SmVWH3vMxl
 zbdQEbyygaiA15wnaEC4xZ9sr1OIRABFG7PFq3LWZ1qSTXhEpFqM7Tv8Q
 1IMQ4JhZedagq+VcL4nLhYXlr6TsQxz6EC4T6/jvU4sVn+rw7a4VduLtY
 YZCjrbpCiFwXmkLr1ubgi1PfdV+aXjN/kecfgE0jOJORAQv3JRTGCKlho w==;
X-CSE-ConnectionGUID: 1XbzXk0rSOGXJUyGVf4Wlg==
X-CSE-MsgGUID: XdHIEvYJQ9OTuBt9gAoygg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43795041"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="43795041"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:32:04 -0700
X-CSE-ConnectionGUID: ybpQeI5oRlSOd8qdxDrrGg==
X-CSE-MsgGUID: XTkpd+Q9R4idxHcJtTTTAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71305266"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 23:32:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 23:32:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 23:32:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 23:32:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 23:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EZx0QqyjfYJDEYd+DYTVzj2U1qBPmqRyrNCzbYCVKyd+88WdWXagnyDM5gOtPuIrHzpQEwXy6PenIpBx3YhZpzg9hzM7J7lvV1Ws6SMrBs9LHB1qHctfcXAMooKeDnYg4ELzl/SJzb/fvYSI5pRhUWfjHzeAG3PokXBMSeS1qintp3o7sYk9frYoo40n9AjDINNru60kekO9vqDdp9k/Aihi/F+U/94xkr6KRUV59o3X7X7ZAHZBLL3q6E4PaKe8gvp3OnMmZ/Hg01Hx3HKM3r+iqkhFp3aswmCQWScWSQwnH05YgKO0NBYuNfgMriKtn0cRN9+vvBX0wVzfAj2Pkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFDxHF186ua0mZBNK2KQeU1O+gfa5ysiCs28WaxC0HU=;
 b=PQHhEAAE7ynowmTbowBCrqLzNH7IQRdSMOCa3b9hKSstrGLqXUlHSXhnEWTvyZK6QN/e5CdKVN9zlg7wAliKx7ROJmSDM4jNzVlaxH8wcGv3IQThp3hf2v42j9qKw7scemUoMnKfyPP04acp8Ku5KAfPijWP5G4R5VudfED0uQy2meHJE+jYTKy4vOx/BEZ5W88N44t6ByPaglv4kAunwIwxLeCmLHNzkzDNkKBwgJZWN4aSxx90kJaYs91NrB17QUcX4n+YF+qOLV/6bR4daaMoG2+XFVv2jG5A1FLGm9JedPhPBIDp4zTEC6IL45vWXEZ+uTwJy76LXkcLYI119g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Wed, 25 Sep
 2024 06:31:59 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 06:31:59 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbDXUVdluaRKVT8EKg1qjYSWDFOrJlML2AgALcm9A=
Date: Wed, 25 Sep 2024 06:31:59 +0000
Message-ID: <SJ1PR11MB61298CF42DF9479CA616488DB9692@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
 <CH0PR11MB5508BDE81DDF72CACAE943BCC26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5508BDE81DDF72CACAE943BCC26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW5PR11MB5906:EE_
x-ms-office365-filtering-correlation-id: a7c62bc8-fefd-4fe4-6732-08dcdd2bc22a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?SXijEl6ymx34uNZbP/clIiAbnK7pfe1u+Bt8PL/nXqrU/PgqvisetsnK0k+p?=
 =?us-ascii?Q?5vuDwG4WOw5MyMGx8SGz2HYny1Qf/0njM9/wq6UqsK4f7b1MHuhMoHIG00kF?=
 =?us-ascii?Q?c1sRFukQGWKw5ndUFk4bY22c6w9sJmlFkEgat7kPpyJMz9CCQiRuEEn1Yk+x?=
 =?us-ascii?Q?Xrfz1lvE8O8Cgo9S9OwFXsIs0/oBuNud+VjiNc/FNuzAYzNYbPMihsybZK6x?=
 =?us-ascii?Q?NzjPGWQGyJnFeN9YuQty+ETYXgNa8CO04NuHTWYlCTNdwajEjkIZWX94oc/b?=
 =?us-ascii?Q?lCRqK7hMvuyGZwuZKEJsPVDDHHecGrA/dd4bEqUc/sAjP241iTLLcNpLRQan?=
 =?us-ascii?Q?PC5VudPKtmSpAnuouSSH90a08syOu+79w+Qe5DI9N1b+nVGFpshHqaHPoU82?=
 =?us-ascii?Q?R4Hdl6yi0HTTFwCjFMVcnZJSFp5XfEtpPths07mhffP2XNAYYHkH0T/LJHbS?=
 =?us-ascii?Q?Q3zVC9drsTiMChFxIus67XSpwd4BCjn0Hwd3SjyripbBEkoeQ8BCGdvZpLif?=
 =?us-ascii?Q?PjxAvKoadYScGFsnq0KRhbzGn95bPBL8jSM9s72/6BOlYVzET81/mpkH/hp0?=
 =?us-ascii?Q?Na6xGeXhw46vYvfzCQVCXehLMlYj5xYX56yLaVtQhPinArpUSUBjRotKhNhv?=
 =?us-ascii?Q?Rzb08nOY1rgmLJKPOVr+zJjaXbOhG0H5zyYgUGwfWK4NpDNxCyj1OaVw7jQN?=
 =?us-ascii?Q?BieiwPb0z30p5TL0XkzujeNkFR2vzPbh5MsPxicMcBmgTnHyeH/fo+VVij4p?=
 =?us-ascii?Q?lks8KRR0U/KZ2dyagPhRkgIWqsXP5+2TA9E2T7n6eoSfsdj9SwwceaomHrkM?=
 =?us-ascii?Q?Hz68yW1lDxkuPjjeqiGM8C9o0d9Pbg9Vhc4+80vNS7F20I9dvSSYvjj2Zv6t?=
 =?us-ascii?Q?Mo5yhBHWLT+Y8womc3kHeONhmcixraLO4bZGx6ei3YKpEvPSIxMrmM8ZN3d/?=
 =?us-ascii?Q?jX2E0PuVth5W+5U3tg4wwUiGh1X0cR/5AEZRywcPOznwWa+Ugwzo1ZT+luGg?=
 =?us-ascii?Q?R+7mtcm7vTHER+WjOjHwkWUeMCvam0AM873cwObbOtKl78TUcusyYEkT3JWu?=
 =?us-ascii?Q?TNWIS40lAzwKTP+DjEyggfZ/5J+cXvgYZHUPotzUqmsyxCRRrGEizygw2rZ+?=
 =?us-ascii?Q?QmxDrg4p8bppQ/joxFA/PraOM6rKIOoD6wTYYLKNhejCwOE7mvzMH5HrY/bG?=
 =?us-ascii?Q?6WkKIskF/zM3SlMifb5vs2w1Ex/719kRnYlOZy7kTwwoyR0nYSXopRu+cAep?=
 =?us-ascii?Q?3S8dwMa3GiZzQp5JcksuBbKa93sdLwqkwUbDgSsxSgmGhppQRHUPNKYBraOA?=
 =?us-ascii?Q?HLACtn/J807ZDkARlRPQuhO3M/WX0K+VmCpd2v1BAuet/w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rLQ82NRXtrczfRIJxClA/Fzf4N2P8WnZprnyiTOI5T3q4SfiWdsZ8vjwy0kT?=
 =?us-ascii?Q?98J0B3QtkwJnZwZtCgVr0og3QOQCXwcfvZYcDV/zp2Bd1hGRiCIq4EaKSNbl?=
 =?us-ascii?Q?+7mnZxPPT7HtCfOuRpt2iMNk1cc44AUkLvYzMe9GkUXijGNy3IFL9u81NDjK?=
 =?us-ascii?Q?66j6MDNbT0yuaUWyzTDZ+aWIibA+ID/7fVryXb9Y0CQxs9jnh0yoL55e56I6?=
 =?us-ascii?Q?2M6aBPGX7hWkVDV2ZZcBwhLauiaToOM5ypgYhQ4IVrKpOiLOv+UvyH0upPSF?=
 =?us-ascii?Q?r1/7gbU2NvT75xIuzmF6jpgFFmqvCffgMVlS/pu5Mwhi9B+wpEiesHUM+at5?=
 =?us-ascii?Q?BNqsUiFfakGNv2zCAwoiOCkTCNAD0sCkYEB57KDux9qWmMVjshVuJmQCLaRK?=
 =?us-ascii?Q?N55RsPNXYOiVgwTCZZcH3f2Uc0D/o0Eb0+n+MKOrK/rEoiJ0T6/zzpLbV7DD?=
 =?us-ascii?Q?U/q0nYlzPHzgTjn+ExK9jKN/OkzR4hNMOWiHid7gDQsEZ1k0WZwclLQjv6b9?=
 =?us-ascii?Q?Sd+m2KcG3R2Ml3rmmRhThFEXBlR7js5ZHqzUQi8oeAd//l7fTSS0B57su3hW?=
 =?us-ascii?Q?OgEzlKbcrQeJzL1HFBeq2AYbcTux5zhiIWS7CrJcL7CCXuQrEsZ49fiedZyp?=
 =?us-ascii?Q?A7VjAUfSndWZehJxAUHi25Y0TGiHKnZYlvjrVLIaQaEMc8jB4OcaNPkOi8te?=
 =?us-ascii?Q?v0ar/74VxCRp1Z4qwpXZqQwkcSgLyLB5TYlR+VLBjgq7/16cX47lujOLDbhn?=
 =?us-ascii?Q?pcgeHgeo28ZYn1cDAgePnUKznLlM4qs9f4pw8/AKTBjbLan9FtKetPO4olN9?=
 =?us-ascii?Q?Y7Ycc+5eYAnT4oaAV6iTeFING+Wp2P/87zv20TvfODQlviq/goHvzy2/WNEN?=
 =?us-ascii?Q?c2L1jnEnxpNQLPUJCftsvdBWwHOPZnO/suKcMLWHfRAZchuHBoZke9IvC7+0?=
 =?us-ascii?Q?wF16054/L1ExCgP+iTJduZTvuseqAOXBPb1FjjsmcmsP7Xgb89xkiI/qF7uc?=
 =?us-ascii?Q?sQX21wSM/fVpOqS6x6yXgaG1w+g2jQIYvXjZM8JUkcxEPqzZSGZrQ+MPkRdz?=
 =?us-ascii?Q?ZRe2xB03e9FANJI+Zy6IKWpiN2imfLh4ur1W4xc2ZS/54uC+oYJcGWQKhm+F?=
 =?us-ascii?Q?Imuq8Sd1uYZMtvjBnjEcG5O8cYPkZET1yKKOm6rkzaS5cXWp6qbLqrN+tyNY?=
 =?us-ascii?Q?Su+P9yyrq9DTnZIbfjfdGdWU6WrxrgyV299eS+Td/IuoGKqKk29w4ONmJ4pF?=
 =?us-ascii?Q?e+gSUQvMrDrCA1nj8SEGGjJf9ALl1iiKGx+08QbyjHrCLjglTfcfVhKetsqK?=
 =?us-ascii?Q?0aTkd/AuJGKbNPczZJ8C6rcNvkxXC6m/OcKpBjpzOhZyFDPoLbevobelOsI7?=
 =?us-ascii?Q?Say8srVkWFdqH5ciYwgQ0TL9OR3OGXMUsok5U7pyU5rnX/jT8u30jOWbN2St?=
 =?us-ascii?Q?BXHVHaAwqGHf6Es09IfHc7+aSToCpUdG66X/6PbL4ZqqqAzPqSZ96xGrzjDc?=
 =?us-ascii?Q?kwLmF8U7xHwo0S1O+scx4JKNsQnxbvsAj6JUkMOxcF5WtmfVi/73JF8Zli2u?=
 =?us-ascii?Q?6rJUudOVMyBtGSbdkN3YFiN97UzJgKagoX8cVdDofHBTlcOnN5uaOoYEUYCk?=
 =?us-ascii?Q?+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c62bc8-fefd-4fe4-6732-08dcdd2bc22a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 06:31:59.0129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QSAo7vZAubBxZhsdGUNWsRNbRkcH9VMhM46Z6hsiRdKqYMVorxM2nXooYUr0oETg3YkRZb+c/0raWwl6rosOqx7siBe9qCUmKXA+DArmmd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
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

Hello Srikanth,

Thank you for the review.

> -----Original Message-----
> From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Sent: Monday, September 23, 2024 4:16 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Chaitanya Kumar Borah
> > Sent: Monday, September 23, 2024 10:22 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
> >
> > From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent of
> > TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> > sequence without re-doing the whole mode set sequence. This separate
> > control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> > mechanism in case the DPRX does not respond with an FEC_ENABLE within
> the stipulated 5ms.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 61
> > +++++++++++++++++++++++-
> >  1 file changed, 59 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 85e519a21542..589acea9906a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -78,6 +78,8 @@
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >
> > +#define FEC_RETRY_COUNT 3
> > +
> >  static const u8 index_to_dp_signal_levels[] =3D {
> >  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_0,
> >  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_1, @@
> > -2255,6 +2257,57 @@ static int read_fec_detected_status(struct
> > drm_dp_aux *aux)
> >  	return status;
> >  }
> >
> > +static void retry_fec_enable(struct intel_encoder *encoder,
> > +			     const struct intel_crtc_state *crtc_state,
> > +			     struct drm_dp_aux *aux)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > +	int ret =3D 0;
> > +
>=20
> You should also be clearing FEC_ENABLE_LIVE_STATUS in DP_TP_STATUS
> register by writing 1.
>=20

This seems to be a RO bit according to spec.

> > +	/* Clear FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     DP_TP_CTL_FEC_ENABLE, 0);
> > +
>=20
> > +	/* Set FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +	ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> > crtc_state),
> > +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > +	if (!ret)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Timeout waiting for FEC live state to get enabled");
> }
> > +
> > +static void wait_for_fec_detected_with_retry(struct intel_encoder
> *encoder,
> > +					     const struct intel_crtc_state
> > *crtc_state,
> > +					     struct drm_dp_aux *aux)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > +	int status;
> > +	int err;
> > +	int retrycount =3D 0;
> > +
> > +	do {
> > +		err =3D readx_poll_timeout(read_fec_detected_status, aux,
> > status,
> > +					 status &
> > DP_FEC_DECODE_EN_DETECTED || status < 0,
> > +					 500, 5000);
> > +
> > +		if (!err && status >=3D 0)
> > +			return;
> > +
> > +		if (err =3D=3D -ETIMEDOUT) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Timeout waiting for FEC ENABLE to get
> > detected, retrying\n");
> > +			retry_fec_enable(encoder, crtc_state, aux);
> > +		} else {
> > +			drm_dbg_kms(&i915->drm, "FEC detected status
> read
> > error: %d\n", status);
> > +		}
> > +	} while (retrycount++ < FEC_RETRY_COUNT);
> > +
> > +	drm_err(&i915->drm, "FEC enable Failed after Retry\n"); }
> > +
> >  static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled=
)  {
> >  	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev); @@ -
> 2303,8
> > +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder
> > *encoder,
> >  	 * At least the Synoptics MST hub doesn't set the detected flag for
> >  	 * FEC decoding disabling so skip waiting for that.
> >  	 */
> > -	if (enabled)
> > -		wait_for_fec_detected(&intel_dp->aux, enabled);
> > +	if (enabled) {
> > +		if (DISPLAY_VER(i915) >=3D 30)
> > +			wait_for_fec_detected_with_retry(encoder,
> crtc_state,
> > &intel_dp->aux);
>=20
> wait_for_fec_detected_with_retry() should be called inside
> intel_ddi_enable_fec() after configuring DP_TP_CTL register and before
> transcoder is enabled.
> wait_for_fec_detected() is called after transcoder is enabled.
>=20

Agreed. I will make the change.

Regards

Chaitanya

> > +		else
> > +			wait_for_fec_detected(&intel_dp->aux, enabled);
> > +	}
> >  }
> >
> >  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> > --
> > 2.25.1

