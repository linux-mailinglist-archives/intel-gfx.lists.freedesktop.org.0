Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008EDB410AD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 01:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C104E10E0A7;
	Tue,  2 Sep 2025 23:20:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUXSbepe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036FB10E06E;
 Tue,  2 Sep 2025 23:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756855253; x=1788391253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WMu9ARDoJ89cArEJyzOkzfnWy+XuWiLXEUMI0G6rnpU=;
 b=lUXSbepeJG3XfhBQBe3rcyqyzV4lr5//qNFajoguetAjY9K4GWRG4FtG
 ZUMRbLOmGz0MbA2bgBCYSMgUBOUCjEpaDd3eaj9NGWd9MYpdBetsXVNuk
 ckY7j1DZ8A2pqaCdFc1goVfP+KALIWMS1QJ2Nlp9PcNg/1hxcDJVHR6TA
 9SbGlemfWvW0paALk4ThBIxXUYXuqdy0s2741YdfX59yRI3Z01CAe2qlC
 ZzTdF1BEp9R3ZBGN7GmcRt6bGhmbDCOHN/C7fcZbeIc4pQeiCVfLW0uda
 L5gfSM7QdO9q9bSRgoXRddOTqvWhWNWoFJQHhBjOi2JZWZYe3R3eDRMlc A==;
X-CSE-ConnectionGUID: CNAb6JpcTTC9Lgx0kBZqpA==
X-CSE-MsgGUID: uPpioPlBQhSSEFZ8Q+VVyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70534082"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="70534082"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 16:20:52 -0700
X-CSE-ConnectionGUID: haPJnekOSv6WVDD6Fcekiw==
X-CSE-MsgGUID: BfLwXiWDTLSDXa8dkM3tjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="175787796"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 16:20:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 16:20:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 16:20:51 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.74) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 16:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hbNMxY5/OVvA8K79UVL5iCzzYOMlBydYyzkXYPKdnaA5SZQ+v9n2jIoqf+jxJZC1IvZe0INcGyhO27oHlCf6QdqxOPM0erB/mPFfxFPDDVr97K44QeJIbpzBds4CC00/BgZHX3cJJY6ssgVf64aZ0+CqiOCU/8EpH+C6UDa7+i4SVTOOZCeqcwLCMQK2Buxmk+dsoDSy8MQc6a2uXj55MCJV48ZmParGvmV9qF2sA2bKDx/IT6pEvypbbvMxjAPlH8p81Rt940GgrtXjPY2Yu8aC9hU8XS1hNPIj2buQtKR/E72jgi2fwDgyTBOqbso65oi7N3Dt8SjXLWrsdiNDBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTE60pOzW4n39jNRjQaSb2m8Q09nNOtBK4tpsJeMHuw=;
 b=DuznEKtVdMO3Gs0rkIb9DmpwXZNeHSU6htoqRmNyC+RHWIO0XcPNH/TZMGfVC85P3RLoRM6uuOtYeaIqZ8V3fsjzmLxvRf7MsqhSAjPsTpo2Ehb4zSFEhg4qfuVegA8NfZEytebMNfgPCCrD+Usz+0H88pBMzrBJixCunbdi1J/Sy9GNgCaY/dqiBic8QJ7GlWOGJVI/LIgvScHC4U5jycNgQ5sEZ2ROCxe0wedv0cJEmtYFWlsL/z5iWXaQWtDg9ilEGtkYKeXfg6dI+0g2tZfZQFVW86tgE+80UWaTZ+ilzm4Ur/+uXzXPBwEFAR5NZO/J25Fk1pBI1vG2ZJOAjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by BN9PR11MB5242.namprd11.prod.outlook.com (2603:10b6:408:133::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 23:20:48 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 23:20:47 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL+
Thread-Topic: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
Thread-Index: AQHcG/wRSwsQxabT9kqiK8RoIPYse7SAhteA
Date: Tue, 2 Sep 2025 23:20:47 +0000
Message-ID: <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
In-Reply-To: <20250902113538.269338-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|BN9PR11MB5242:EE_
x-ms-office365-filtering-correlation-id: ac42b577-2080-41c2-9e2d-08ddea775966
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?S/c9cnjBbTD0gXnUxWLzfpOVPnbDvNerOJIWoTMWtNgMnOiohv1NOSlr82xI?=
 =?us-ascii?Q?JoCfANsOiZTsw754vF7a/RBfKRvz3aXm90Fp7DGncHg0cbjVzv2wINKbirWM?=
 =?us-ascii?Q?/JJV9X0lvz+EA7qGFGttH7oOnEIRfMJLOYsqxME+k5520VG+Vbf70RuK4yyI?=
 =?us-ascii?Q?W7HMniGPjTAPRUtbG3h/dFDFcF64u/bVVi4LXyKYrrP3YSL3iemiiWtP463Z?=
 =?us-ascii?Q?hr6mxQ6hOgXlzHpvxwKiGv/rHbyu8h86t//g2jdHiWwzY7BlWrjUwS9/2v/S?=
 =?us-ascii?Q?HuTt+2z2kbIWL5zSbZw6LX6wAcBDZPqlx/Su5gTPjwCOoW7BYob8S6ihnhXc?=
 =?us-ascii?Q?ZjxXXQ3qpjgcPk4bBFHyF1Xi43lSKjL8AVnmKjZPPcjGdXyHkiOBAFMNk2Mx?=
 =?us-ascii?Q?1LZDCktn2WXVBczx4p44wyYYdwdZIky79g5Jae9sR6nmdmoBHbE8I4NzClGL?=
 =?us-ascii?Q?7X792Dszczr57VA6imv9G2rzNDJz8UkpvIfZCX0KIG/ThLGDFWR08rfitgwA?=
 =?us-ascii?Q?ZkcVcmTGdt8jr5E5yaABO10a3PShV/yf66gLL0Vf8fZrBw66D5dwyNyZ3ZEn?=
 =?us-ascii?Q?t17sZzlTvX5TfyyyjAYX40Aqm2GIYkVdxE9Gq3SHUv3lxdLYSVGbxjqRReVW?=
 =?us-ascii?Q?hV7jNqE4kgAf+uWCN2RKU5oIQMGlDLWjxYOaJQ5F7yivN7zvnyuSErCHbHZk?=
 =?us-ascii?Q?lRxCCf4msh4DAhAtDBddwM3aJbOOJfMxDeQbHdC99yAl1WNwKPW38FLraqSx?=
 =?us-ascii?Q?Z0FrgYD6zgIUS77tbs4RGiZmzGd+lOtJ0GmGXjyrkB3Z9Zl0KIwIpKTo3SeC?=
 =?us-ascii?Q?sicp+4/R4tuo0tBo+PcIlVF36A6oA6KNBmZaSCcPXIx7Yu5uG+RqLWiufet+?=
 =?us-ascii?Q?7FasFxVovdAGSzg/V+5a33QxvTHB0I9L//D/FSzbkVCJL53MVxhgvMSaQMl0?=
 =?us-ascii?Q?jAUgnIUIT3F6cuAFdk0YsM6Cupb5cVM2ZKIMY6caFaXBP+bu92lXt9kvxvRv?=
 =?us-ascii?Q?XxTb0+i82moCUfr+I+cJHZWEWvp9i3kuMV9iloqvz1vGQzwcl25ly4D6Nf9m?=
 =?us-ascii?Q?D0txKI+YrfWgbS4afqJB4ck4ES5udJ0GFmaJx6OxuAjmmvs76ZtSD3UClst0?=
 =?us-ascii?Q?692jy8TsGdEdtRQfXgjL+uOpGuwV6nwS/aNZ1CXnfNv5+dyCA1JVHKOU+jaD?=
 =?us-ascii?Q?C3LcWoUT5NPlB2RoEsIwrZ+H2kmvyAGcY1hlYr4/2adxHLdIljgh5ZMB86Ds?=
 =?us-ascii?Q?0IoHpLSkSkb5vFBb8rM7BAZRZ0reJ9wP3hmzJhmueMAvqwuOv7pLwguk+VLy?=
 =?us-ascii?Q?VsuNy/KMwAR0IIppeupvwSBecgfymd31Glpid0ghGhM0tv/IgYAT6/wojaHF?=
 =?us-ascii?Q?KzYz2P8ikV2jeDx7uCzLn1ATy99k1o1eJnNHsJuMb8GqAw0Rr/83iHju2Ma7?=
 =?us-ascii?Q?NbTmwAqob00nYcVNUCklSOT8eqPUEhcx7MwewbrGlcBQKmJLRmlL6A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/1Lw9NSe0XNHeD7Ob7X2muGPWNiIaRRA82Wh18NDPAiv1Pp1+SCfFpIc7GSy?=
 =?us-ascii?Q?PVHB3cRPGHeOOJess2isAGdmTxX6vTXmDiFPoo9raXY9EHleHNC17UekCgWG?=
 =?us-ascii?Q?S3dXfTDwHG+nlzyqmDs36WMIum4LQAtG1pAFWoRUDWdGr2V5hcBALpbVJ0Iq?=
 =?us-ascii?Q?XjfetRsAYQvdvnnGemlWDXd6DIY0O8PjkQFoi5Yq+jlLJCz0kE5R8uszq+In?=
 =?us-ascii?Q?Ps+a0DlCdXlc2MoYnmfZIsmdKkMzjGRDpncjKXZDDbiNfZsHa6xWWGlbUUH5?=
 =?us-ascii?Q?FKYeYJEUIgn6fieCYRnKNu52vpq6gnHdr7EML+EjE85upTxQniADudgVnff8?=
 =?us-ascii?Q?OdQiqZLHbyNsGMnCLdx2DGN8mKlpfwdpStx7iz9HyBtTRgiFMcHq3QuRpvlJ?=
 =?us-ascii?Q?BTHzKGX1dtGOTCpTaDv3K5aPgidOcRZuYVlwuoWqIwbPJ8lh1v98AcwdjVQY?=
 =?us-ascii?Q?5pz0Q4TvnKBuMJ3TYQcTH7kp0TUZA99uhSyVbhpfwPGYYAhwp3gVSG+O/phi?=
 =?us-ascii?Q?kiPI0xoZZU9vfm/a68zPKe+r966ad2pBw1zt5YTw+75x2ZmSLI62BoiiqqrJ?=
 =?us-ascii?Q?wzBNYckDlIIy4fbXXWHv/bPV4izKF0DrYPV8659kh5O+pwoG9szu6e28ZH3n?=
 =?us-ascii?Q?JEuE0wjC3u+WxNsBjlM4fuPOFI/QrCNKHAqvx+wuu6FNwpEhRxBM4RavDAlS?=
 =?us-ascii?Q?V6XwYKDHxSXkhdFV+XXB+WANIPPG5mkMznrCfLTYEWT2P3zh3G3tTpWwZr4y?=
 =?us-ascii?Q?mDD5VemEV1z1H+AFY1XzHaCbs8cyIIUIQtC/EDmVXFFoGk+v7rJYyZo908Jr?=
 =?us-ascii?Q?NTWCO5pII3HxoOU2Jm01T06rg2ZPAzHmH/cMPPL1Lsx5ARVjVBeO0sw1D/yP?=
 =?us-ascii?Q?XWRRJ+qt2pF+q2FMibh2xBRx0/DU17/uVr+R0C3HnCoxXXQS/SRr2MbwrsTS?=
 =?us-ascii?Q?sogLLcHxWD/vbrozwffvUBhqyd37Wd7PcvnbRzcZFwmdMGVMBZtVZ7Q8usOU?=
 =?us-ascii?Q?momP9HFMzHnTqBpqwYKnM6cj9SnE/DRg/xl0eARHG+LBD50+J2GBoz5TczTv?=
 =?us-ascii?Q?ZIr/3/LtXlzq4K7lQtXrXvAjlD8ylp8Uh8GdwSUp1xsiwJG5gKaKVP57HU0p?=
 =?us-ascii?Q?xpSr2P1ui8VN9lEVwhtEjnUS/Ivxjmydd1gsr0MA9AUZLV/vLQtQ1tZ4MGvl?=
 =?us-ascii?Q?wz/lNJx+KvVUJ5Wg5b2/wizIps8NpRQobLshiXwX9zqw3jjyWGrz/oGL84yx?=
 =?us-ascii?Q?4FfT+f0dwdpFB2+Q7M4AIW3BteEQ1XTki6khikZPqZ8eAIoqdA7ZfvSqxmDi?=
 =?us-ascii?Q?9T+CGQM2wxxaPNKgRZI4zdYQ8ZmUyXupzhQxa7mDYmzV6QeXzhrY7dbAgLGS?=
 =?us-ascii?Q?nhIg9x5oZvpGeLS6wq9ZVE07ZGFAz+I204NITKCI1Dh+2AIpVc+MPuUHeUJ2?=
 =?us-ascii?Q?7UfWmrdxIykokCgB5Ln234w3JokiJMe4Iy6Wur5FLg/7X+ALWiftP6R2S676?=
 =?us-ascii?Q?79IIuOLrxu3zwI3IN7jhqBByEsfYQUZwcZtlSx4gBz0pzHBuU2tB7wdVjjR1?=
 =?us-ascii?Q?JWILHr6At0UP7cCkKihjk1x01JrpZsTMc82IVyqnZNKuTqS3DETLs1cAEs3e?=
 =?us-ascii?Q?mEu/74fjHqgpe3r1M5TgzwE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac42b577-2080-41c2-9e2d-08ddea775966
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 23:20:47.7958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eUI+vOse1CbBGo6y8xygP8A4CuSMA4fykaZo06fIfwm8yS/cs+Er+LhLHcNcZqWMPE2E4axmYpxjQX4aIyiVGTQXkWfbQfLpHMt/G2z4OfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5242
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Uma Sh=
ankar
Sent: Tuesday, September 2, 2025 4:36 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod <vinod.govindapilla=
i@intel.com>; Shankar, Uma <uma.shankar@intel.com>
Subject: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for =
ADL+
>=20
> FBC restriction where FBC is disabled for non-modulo 4 plane size
> (including plane size + yoffset) is fixed from ADL onwards in h/w.
> WA:22010751166
>=20
> Relax the restriction for the same.
>=20
> v2: Update the macro for display version check (Vinod)
>=20
> Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>

I saw an earlier comment about how Credits-to: is not a trailer we should b=
e using.
Of the given alternatives, I'd recommend using Suggested-by.

> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-bys should go below Signed-off-bys.

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

The commit message here is the same as the commit message for the associate=
d
IGT patch, and all my comments there apply here as well.  But for the sake
of completeness:

1.
s/ADL/ADL-P

2.
The phrasing here is a bit difficult to parse and sort of implies the
WA is the fix to the FBC restriction for ADL onwards, which is not
the case.  Try [for the first paragraph]:

"""
WA:22010751166 does not apply past display version 12.  Or, in
other words, the FBC restriction where FBC is disabled for
non-modulo 4 plane sizes (including plane size + yoffset) is fixed
from display version 13 and onwards.
"""

-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index d4c5deff9cbe..9e097ed80bd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct intel_ato=
mic_state *state,
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (DISPLAY_VER(display) >=3D 9 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason =3D "plane start Y offset misaligned";
>  		return 0;
>  	}
> =20
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> -	if (DISPLAY_VER(display) >=3D 11 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason =3D "plane end Y offset misaligned";
> --=20
> 2.42.0
>=20
>=20
