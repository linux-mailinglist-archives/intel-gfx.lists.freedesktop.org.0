Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBAD99D4B9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 18:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD08510E48B;
	Mon, 14 Oct 2024 16:32:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWBWYuIY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740D910E494
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 16:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728923557; x=1760459557;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YiVa79P1xvleeqPwvPxRpqypuRlMquP4QYudvuXL+k=;
 b=iWBWYuIYw/Lxk41kPEiqekv2BhA4FAWLL1SmrJvLWEn2ufHhjyKyMUxT
 xd1RfjIYolOWb6qejyMJj3ESP3PhVgAIfcsLQFoWLfLiyAlksrOKzWptY
 CsjkoGlz/yGWF72qeJvAG+YFdsii7kGCfjPRuEAunUX+KQXKVIOnsCC5D
 +WhfaKRMv3ADa4AHa72Xg+xqA8UlneOhEelCGMBOdPjFVqQ/ez2RHpB3Z
 qt2BH5/LBXnZGayjHzjxtgLXDXibtpeLUff55+/CyDYJwJJbpSCAx93/w
 64AszTVwo55DlFFG3xDo8hJCvVKdjmEuEqnL23nIZw8cwDNmU9EY7DyPF w==;
X-CSE-ConnectionGUID: LrhlhaQgTdGG5QbCPHIREQ==
X-CSE-MsgGUID: +MhLOxLKTgCam7PpJnH8Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="39676682"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="39676682"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 09:32:37 -0700
X-CSE-ConnectionGUID: uYE/BIjZTbeodxF61r6brg==
X-CSE-MsgGUID: /HNTTjSQR+e/3IF6c+2utg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="77633995"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 09:32:36 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 09:32:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 09:32:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 09:32:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 09:32:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 09:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kfUMA8g2GXafZo/dzMq3oywBxr0RowcE08ehI6MxhM9kkA7SrZyZRL+CbwwL7yFUK1sTxmnqZMOiFdqRquoM3tx0XXgl+bqMKM2mz9B+gnvktnioErwzBOUagnHCjwlnFEgu46JFrSXvzro7KYGwVP3WZ1RBig1zYle3QjzzklRnrbrWxJK1dd8bq7aBBxsdza2dtfG/rItkXd59O2/QWOifgxViIf+QNSGKYKEXzY6kn2hvJpctPCPeMVuN8nBURXCWmajy7SgL/nwnWDV2zCkGoTadPbrnsjbjmrzrp/fCXpGX/FAXOAL5728fWm8/kYd/PH/8MlCQ/+9cRyOdQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n0bNLVP1eiXZCRjZLMqv1NAfNb2g284VmkMrVn7K1+4=;
 b=mjTa74B+TB+azBGcLGhbu5CVb4F58vSA+mh7UmgUYmsFwbIbWSRIJfpBZEA6ORrs7JXyDloCs2oeY0/QsXDBHJ4wTCpXiaLWKX2pM+0w9be2fShY/YiIhugMCFdlrWDcSXKNFq6mJ4pkBAkWqcGo5h7ZXcfcA8DYKAjOaffLDH3wyXWvt2nwH1Gh7WWlFjmNsjsLfw4QYm1zSsv18860m/97VxX/DozRcPBCZYZ0DBZZWN/hjaXeVuDgXJtzpd+A3oI2GRhGy8BLZ3KK6PgJXgRp1NH8gqshtG+FNkn3adn/tefCNEy+ML2nczBXJbsPRKH7gsnCLZUjRCBbJAdGTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7884.namprd11.prod.outlook.com (2603:10b6:208:3dc::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.27; Mon, 14 Oct 2024 16:32:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 16:32:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH v2] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Topic: [PATCH v2] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Index: AQHa9I27JE+hK0KnOkmBHUwv4FD0SrKGw86A
Date: Mon, 14 Oct 2024 16:32:29 +0000
Message-ID: <DM4PR11MB63607A52B262049DA8AB4A5AF4442@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240822122004.263671-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240822122004.263671-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7884:EE_
x-ms-office365-filtering-correlation-id: f04e67db-ea8d-4cce-ec07-08dcec6dcc0f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NJnSNmMUQf/9iiCvnqD+ITspZ/SSJew7NFRan2IUtVCX9LPVbf8apk5apiQK?=
 =?us-ascii?Q?0PzYR8pCd2YYKJDgyHw/406aRJg262YLFEc0zkS2gLaSnw9QepQk54lnrPb7?=
 =?us-ascii?Q?yvDTsWFepy89lY4K1EyHwvhNOgAtBVGjqOguj/bkL5ZXBHk17hV421dg3Yg6?=
 =?us-ascii?Q?j5EC3DG8knvLmYxQ26c5fKdc4+fVh9Y6eMu8Ow771oS/iQgs9nU+0pB9sQ5M?=
 =?us-ascii?Q?ro0J7AejK+asMFZ3CaQi2hBzZ1imkKuOcEApKCDAaKGk3sCzDmcYidaYd3mB?=
 =?us-ascii?Q?scxJAw9RwQ8hzsfXPXzwEJUtsNZSULOo6Mx4uPcxsLg7hjkkedSxsgFXHVWJ?=
 =?us-ascii?Q?yUMMd4pz/qAtgRkZtb5mZWWGaIXFXwPKiAupiECO6nxUQ+Z2tCJ6SliBvQaR?=
 =?us-ascii?Q?4tnaD4AllFPFezjHHia4ONOuUlEJWip4bYpZCqzArDzt0eGX7g7QfeP/Ifu3?=
 =?us-ascii?Q?yeir172JdmKMgiZEmLN8LDY/xIPYmTAiTMNBO47LHwJ2WxWYwuwhIGEjSiBB?=
 =?us-ascii?Q?Vl8peOv05d1xPkfBkyXL0GRfLX/mJWBXcmCAZpOJkMdveTyb3iEOGz3Nl3aJ?=
 =?us-ascii?Q?mMPqpa6G6Lu3+yvD47HcTVj2k2vddmRqkVl64grfdDce9MqKK3TxYZQsEYCK?=
 =?us-ascii?Q?nyFsSOvGWdbf8ZKkl27rifRfa+rBJYGms1uDFNxfcBLBRQH8IauN63VBAC93?=
 =?us-ascii?Q?L29ajBDimvjE096CJCVpWnSM2W+VgVh4CttFq/MBY+qwk9b/86HO7xbtTYD9?=
 =?us-ascii?Q?sv3zfwp6fNtRX387o1i2CESbYupdanx7ZipZcXNkrkdx5NrNklr3p9x1dsTg?=
 =?us-ascii?Q?Jqm+h41BpDi/TvEJt2PmoIOaskBV/tvvsoWy99K9IS/ZB4dr1L26w7TZgaoS?=
 =?us-ascii?Q?Vg4b5MGdeXA2Hj3nfhFTt9/lzZxZ0Z0i7tl6oJRc5d4xfPC16qZzez8nCI9c?=
 =?us-ascii?Q?EnP6dQoH6hE6AemL1sQQZm9Q64vFEB5Z/VXlOWDx6S3+0EXYp/PxmlCS5sop?=
 =?us-ascii?Q?4K48w3J3C/o5KyPNEibtu+HAWFqfP59v7362/Gl5OTIVoXK/+HWgNK5Yxrs7?=
 =?us-ascii?Q?10gYtvD2pqpAr5OfxGSg2ruF7dFZhPtk7uSRzG7vYJ7eFIB3oC0446TMiS6K?=
 =?us-ascii?Q?33WoD4ypy7Gj1qk+AYaL97ONiqazG3Z3TUBZODtEckZ5l2ctjT2hzoN+SWKe?=
 =?us-ascii?Q?UAcy79/9cIiAVi8ey+0GzOy0bT8Kh+zVpBHR2+9wMIPOQ8ahbYZ7aUkudGZQ?=
 =?us-ascii?Q?0FUMK/YLYXjEtNO+aDIBkElEoF1Zk6ZVU2nCAdOtQxDgKdYn9/hkOhOD7WaL?=
 =?us-ascii?Q?1L2pRSOw02Fz4QgYS5Z0Dm5/TZ7mSNUbPM0aDnd4XLJ/1g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WjtTaWtK8VWLbYN1UWgwRVLENGRFUvpDPhERaaHSWhnlJER1SItSp5Iw2Din?=
 =?us-ascii?Q?NDBtY6dgUtoIYLoL5k23r4vfDTdMrtUk/8kgiUJdJMTZYDjxeEbZ7BvCnXyU?=
 =?us-ascii?Q?CP0sON3fNncBTlndNpMEVMqfQBisV9xAY6eHPpXxwy5N77v3Y+YwPo9dH7xG?=
 =?us-ascii?Q?6m86/l4PANKuyHFxkIJmsz5airWh+kkvcChb0nT6Oup41Sd5pKZlrd/OX/vB?=
 =?us-ascii?Q?aqtP4sqj++TbxwGFq4itogKH3rHJpA0qsOaqb+0l4wPI7sok1sg4msLe49zE?=
 =?us-ascii?Q?dz5qxy1Ak/QPREQtu4C2fex+Y14kojiCJ7qGaw0UVwsYFoG/d+bs8l/nFl6z?=
 =?us-ascii?Q?o34cywyVcHvXgu2YMGyKfg+PdM+o2uKX1r0dIsPeUe4JI1lEmu1v1yAG+wRZ?=
 =?us-ascii?Q?ki6bYE2Jr+ESsTkk0TvCVlm18gEgtJsl5Ke3XjtQfxmrxifIXzCRdfyv4z/U?=
 =?us-ascii?Q?btMhXIy7EMZi3bEUjGPnt2FpvaA7Hk8UkxMrMOMDKQa0DcwsDmHOLQPXurGc?=
 =?us-ascii?Q?rb5t4siLgRHv/9mcm6hW2QzZFkr1l5rFIl7PLZ9bCbH91bJvOQbcxRIijEdo?=
 =?us-ascii?Q?mcx6zmZ4EmG/wkzW84rg5u00OoHproUYxSX2wvaGhY7Buz09wmMw2q0LBllq?=
 =?us-ascii?Q?j6uRf4aRHsrX8+n9SRNlt5REGhA2SeSgV/18tXfXUMmDoc4NWn+Bo+MudvBr?=
 =?us-ascii?Q?KP8Uhhq8IS/bn+MpDHgnOfQFzU1C66bHx2VwUapOBo1cXVV/+ym2rk28j06T?=
 =?us-ascii?Q?dKdPcfbzWYPbyu7OSgAx0xKiDnhL+ozwUF/FFHquy3MLy+sPq0m5s54EMmqP?=
 =?us-ascii?Q?uw5HKSja9UKF1/ajxqo0iQ0WLBCip5tT+pvpA+oAFC15lsQCTc33MLpud/vc?=
 =?us-ascii?Q?0Ky3eq6RgvUQPs4LL26WfZKqn/IdzTfVMBZbPu6zBX6cfxEugGEUH1PYTHL7?=
 =?us-ascii?Q?UsXBlkPQSoEu6khBf56794ERnlDbucf7hqlB6nFRF5a1NW4GHNhiCVXt4bcQ?=
 =?us-ascii?Q?CSE2i8JdFWCUhHgCVx6fDDIkXTJ3m/Ud7yPswRuNaCJTYHxGnVOQ+Azp+xeO?=
 =?us-ascii?Q?Zm+iDG/WZBjXDuFNsa4CszC6D4FuxjwNQ3OoIwEBIdJ23DqlrVtJnN2p4SUm?=
 =?us-ascii?Q?q5VnvjYcctbMCSlXK4Kk98OzBeCE0MDrtFBZuuoILwicjAllsWpB8Fe/D6Uk?=
 =?us-ascii?Q?K0R3k8LQuX43VxXB/7sZpT3zydQm9vBJv3tAN7m517ZnsBn1/qtAsh41i73I?=
 =?us-ascii?Q?55SWCBaFFiMgRQF60y1FjIbt1KHWxzVxsoC3CNIDkcns3DtIn1b+OYdO9NhF?=
 =?us-ascii?Q?hROWXq7Q9rtH4u0+OA4t7Wbp9nwBOgihTJONZ6ccSJwdlwm1Iy7BrULHGYYJ?=
 =?us-ascii?Q?O5fgJR8wlPwOJ2Mjd1GgnjQhuZysDEWUvLPJiS7PCPVzuHfn84J1dWN2+jiP?=
 =?us-ascii?Q?2jV0tgECYecnSS7RksCQCMPjVK2XXIPH/kqq7CeXGFYcFjTrhzkEo01SZl0v?=
 =?us-ascii?Q?fTyCeaAd9ntKllaOEIupjkaKpL5MJOjXTgPgTXsNlGM/wIL+tg02tIFb9+RN?=
 =?us-ascii?Q?KAO76qb+z8zTxZ679/tbQ7emB7aGWHFqAw70EvyR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f04e67db-ea8d-4cce-ec07-08dcec6dcc0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 16:32:29.8439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 06eUtiKTNt5SCFEFZ8X64KhCj97CY0QG+fj67Zl5U446KGJtMeGweR4HEFLPAlmbKdyFX7UFVjXawrztCAOiGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7884
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Thursday, August 22, 2024 5:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: [PATCH v2] drm/i915: Implement Dbuf overlap detection feature st=
arting
> from LNL
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> From LNL onwards there is a new hardware feature, which allows to detect =
if the
> driver wrongly allocated DBuf entries and they happen to overlap. If enab=
led this
> will cause a specific interrupt to occur.
> We now handle it in the driver, by writing correspondent error message to=
 kernel
> log.
>=20
> v2: Initialize dbuf overlap flag in runtime_defaults (Jani Nikula)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 7 +++++++
>  drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
>  4 files changed, 16 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b28d55fa0c3a..bd00db7d7b23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1089,6 +1089,7 @@ static const struct intel_display_device_info
> xe2_lpd_display =3D {
>  	.__runtime_defaults.fbc_mask =3D
>  		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
>  		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
> +	.__runtime_defaults.has_dbuf_overlap_detection =3D true,
>  };
>=20
>  static const struct intel_display_device_info xe2_hpd_display =3D { @@ -=
1457,6
> +1458,10 @@ static void __intel_display_device_info_runtime_init(struct
> drm_i915_private *i9
>  		if (IS_DISPLAY_VER(i915, 10, 12) &&
>  		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
>  			display_runtime->has_dsc =3D 0;
> +
> +		if (DISPLAY_VER(i915) >=3D 20 &&
> +		    (dfsm & XE2LPD_DFSM_DBUF_OVERLAP_DISABLE))
> +			display_runtime->has_dbuf_overlap_detection =3D false;
>  	}
>=20
>  	if (DISPLAY_VER(i915) >=3D 20) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index ad60c676c84d..cb3b0006dfef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -122,6 +122,7 @@ enum intel_display_subplatform {
>  #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)-
> >has_cdclk_squash)
>  #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) &&
> IS_DISPLAY_VER(i915, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) ||
> IS_ALDERLAKE_S(i915))
> +#define HAS_DBUF_OVERLAP_DETECTION(__i915)
> +(DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
>  #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)-
> >pipe_mask !=3D 0)
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)-
> >has_dmc)
> @@ -218,6 +219,7 @@ struct intel_display_runtime_info {
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> +	bool has_dbuf_overlap_detection;
>  };
>=20
>  struct intel_display_device_info {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index afcd2af82942..6bb78fb6c62c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -904,6 +904,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  	struct intel_display *display =3D &dev_priv->display;
>  	bool found =3D false;
>=20
> +	if (HAS_DBUF_OVERLAP_DETECTION(dev_priv)) {
> +		if (iir & XE2LPD_DBUF_OVERLAP_DETECTED) {

Is this interrupt enabled by default ? if not we will need to unmask and en=
able
the interrupt as well.

> +			drm_warn(&dev_priv->drm,  "DBuf overlap
> detected\n");
> +			found =3D true;
> +		}
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 569b461022c5..45a2989746a4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2580,6 +2580,7 @@
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
>  #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
> +#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
>=20
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -2865,6 +2866,7 @@
>  #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
>  #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
>  #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
> +#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
>=20
>  #define XE2LPD_DE_CAP			_MMIO(0x41100)
>  #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
> --
> 2.34.1

