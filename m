Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sn4GIEKjTmrIRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:21:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F23729D7F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:21:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QMBOGPWU;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2F010F22A;
	Wed,  8 Jul 2026 19:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7319C10E653;
 Wed,  8 Jul 2026 19:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538492; x=1815074492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cC8XzaCRaaR5rakeA6QUg5MLzm1ilRwEc6lQK+fAkaM=;
 b=QMBOGPWU2sPRrlo6bTws4luWnHLd0SrMqhTm+ihvbpxHc9040AAj2kWj
 /c09oLRbwvE5ocZxtydZm97gtlwLb4mmvKE8VB25vPTw4hG4Il1kJvilM
 Md3wRQZSP5IM5M30/M0eT2VzenN2MUH5s/8JABrC2jO/8mIDeXJd2LIuh
 CzQn+FRss2Z87EkaMRjUdFFurXdwl5L0NP6uDZvTelSELlhbflIajN2wI
 /IHGNNqR7MuVZrMOLvp1SHLJUlsEOkGV6V4h3BWuTeLBFDmi+exOaK3AV
 bnPB5VKFqv4w29J9xERDdjHRteg/l9t4XmCUqcRXZXRlrDQYcAt0KGUOD Q==;
X-CSE-ConnectionGUID: v51ODeMsQiSPUXHT+ERmdQ==
X-CSE-MsgGUID: JHkb1FcESGCdSzxo5/oMeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94569498"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94569498"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:21:32 -0700
X-CSE-ConnectionGUID: 9/QC0jS5SlWYvB3OWPOJ6Q==
X-CSE-MsgGUID: a5hX2bMuTFitPXl1gnExmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="252623481"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:21:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:21:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:21:31 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.9) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:21:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qquLtMOmYIc9FMbjoER06foYWlO6t0KZC2yYdxQXveahDe0mkXQYid93yW+jaQQefs4BQxAo/tGAfJs93xGUnMYfUcFEIc8hutPiJ/11aQfCmXIobWcfaA/HNInAHyUrPVWjAiNS44Y2zD6NiQehEHAg0ZaC6L3VujtK4XkzvPn6Hk4Ejyj5qxr8I1YUarv3M2UlPbKwoE0rnjkE3gRvT8dq5JTnv5AqaZ4pBbfFRjVWjBm3630GpLGpg/N2WpmM5A5A6yFA9bpwycYGM9yZMHg181NbdPcR10nTeibEkGUNN3ybtIATGtCFBM53EYRQUlI313rzhhhH2EEZbCZ7BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q72gR5/2GhP9wj6cJsEwV18E8OD3+aLV430dEaGgJS0=;
 b=Zbtz0Da4l6iEcnrVJXvopOXs0pnSAC0lYqc07ZvK95/i9Lgt4OSCRBdzRAB1zPTLBvliu/NRZM5cO6TfqC1L8OccnwlrMzuC8HJ8KO2gRn0tOHxUKoSj7Z9x3+v9CRH0VIcPfKzdn0jLytnIx7j06m0uksUnZjZDPVV+pH0aC/qNPvb8VpF3oDGb7O7cFmfs98xVFyfkrkhP3JKk/nV55DNMyOXuDwa4WvAl9UzuDtjtvLqMPjd8sSqRzL6s2sFgj/R66I9vTQzi9IFSXLLsyJxPlPOgylLa2r6TCRz/LJKFQm2zcrNd1wF13q0d2sSTrJWOKPmN+AHQLNVdxKu+Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB9613.namprd11.prod.outlook.com (2603:10b6:806:4c4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 19:21:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:21:28 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Samala, Pranay" <pranay.samala@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 12/14] drm/i915/color: Extract HDR post-CSC LUT programming
 to helper function
Thread-Topic: [v3 12/14] drm/i915/color: Extract HDR post-CSC LUT programming
 to helper function
Thread-Index: AQHc/j//K7A4z7gQ1E2hIGc9O1802rZkIRkg
Date: Wed, 8 Jul 2026 19:21:28 +0000
Message-ID: <DM4PR11MB6360C4724DADFAB15CDF981EF4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-13-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-13-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB9613:EE_
x-ms-office365-filtering-correlation-id: 2346a572-4be7-4c81-a417-08dedd261c33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|56012099006|11063799006|18002099003|4143699003|22082099003|38070700021;
x-microsoft-antispam-message-info: MJ6g+cURjgcvDFHwm7c5fWEPWLtsutUHb+pMYqEfwZRyTN0uJlyRCSHPBOFpjeuJRlrF/x1le4aR3ySZxQJ85nnm2708yIGUBcMufUDQqD/7ugFKerSNoxcRXF3OykjE9ZqqF+XJe3UnwLEz+XpjCxPglW0Hhd9J/hu8iMT+sGgmGWY2+nrN8PEnpuDjkLAhCTx/kRFtUOlZtfJjWH/zwT8rJljlADTehREFrMHXPWHTB3sGe88cXlHHlQKuRHwXyPnLLvDEoIavA9yyY46jY8kb/HZjii86T0QCL2AF+GWm7CAFX7NdlmzOKAAMxLps7BquQdtIyHYiCFNDOruTv6d6xXkCsNYwPf9UCsZh6Sp79P+cVQub6eBEGgiFWbbkivMzpyBdvBT0enZZobNCh1ztJQVDeIUcybI+ydC76dZ2ShjeeUgx0KVvyocEXiGuDJ2zczVQlMX7884mLdN+3zU6GsnQDzS1xxTb/+HZbvY1yMJuCUcQB8ZebQ89aVx9QR/gpoNvlY2AgYCq3LoKGJGBvJeWX/u10lZ+ybGcbFb23435fKuH0JXmivZWD4Nbce5upd3wJTY1mwYwDTkRbGz0zVnS4UhdUT20mx6gduwMdnGAOPhkI4az7KNt/BAv7T7tMW8YmXqHFR+qgyx8By+XJ1t+yUHSyM0DyhcC3jrMfs49mi0kiJnT6p/IkRtCFqj8ZmWEbG3MFOWdDyviQ6s/CA9BA+PRnoqcfBn1wEY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(11063799006)(18002099003)(4143699003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UiG8KzMzmT9n6lmCjjNUR8vinQ1qaUlAI+nDIGGi5N7jb5ilqncRUHDYtZN5?=
 =?us-ascii?Q?frS9Am34VjsuU4hA18b+dorNTuN02j4biL559UD7VtaQQboMqoiry0o3fiXd?=
 =?us-ascii?Q?85n9gTq+vGfXWBt7N5GQ1xx2mR9LmlCXL3m/Dv4UWHoiUzQFzdA334MTFXMs?=
 =?us-ascii?Q?vR32fkOFLU9NSUSNrOlMbgENvkXCZ4izn+TOZRVOMAr8gKV2jbRzJEwPeMXB?=
 =?us-ascii?Q?K+spWXujPuc0Myn0Up+xRkNhcXGKRpSdLZKePs4h/5vcrWihTiaOV6cTpKQi?=
 =?us-ascii?Q?yi3w9mE+NATaxBhZkm3x2abfkYLzExj2LLMwC1aFD6ULvwyYyY9d66SwY2iK?=
 =?us-ascii?Q?R2A0Q3o3B89Ml/LlFG/pjLc8lWJHQxLOBvj/orVJYnm/D/jGkew+54iYDyfP?=
 =?us-ascii?Q?Hlo9Afc5dpP7L2FdVqZ0IFD8PuEvrYHXQPDO1bQDv3Eiuea6bh8PaUjbB9lg?=
 =?us-ascii?Q?b6gHJFEMkJM2RTfpTJ6j+ijKlsTjZt4I7ZqECU57DEeij+fnItuXbzexfBps?=
 =?us-ascii?Q?fmGJhy5/sLDO1cjqTt0FbsuSMixHfdHxMIWVVqIdPUhyGYs9x6NLrTu9hepQ?=
 =?us-ascii?Q?RyUaG4VUlHphGhT6tZ76aUh6hLtokEZxD5yOBuKQTGVLH5+HERVGw7XP1V5+?=
 =?us-ascii?Q?dKKIljyYoFGXoE4h4WWDtek2L+Q81nRoaM/KFhcASKMjHx3wmhWNT50pXTXY?=
 =?us-ascii?Q?pnlwmt3aabkNL5TtS7TOXQHylIUlrOwUrkX9Wm7G7Rb179tyBF/2bzTiyxiD?=
 =?us-ascii?Q?62KUkuXhOWMX5u0wh1zjlPRl79ZS2IZ/rAJOK2zLDcL5HpIVSjdJOYufwyNt?=
 =?us-ascii?Q?9vGLdYypdPFtcFrnIELO4pjq5/uZxDCG4VKQvHdm1Xh3vJhQmiZGLniTTxTL?=
 =?us-ascii?Q?1wDZEBdc6TXjmx0GN21kT8mCC4rSGgJw+XWOdGuA88fo7BGxou8diYc+/1w+?=
 =?us-ascii?Q?9c4blcqBrTX52XptLvC+LE9LxwwPgN4TOP+rGMRhvufTH2j/hR9S8DJq6w7t?=
 =?us-ascii?Q?Yv2NajYV7ZzpkylB/ldyoshKOIW7vWnPE1mUwuYJdXjkW1AKapwJZGXW/bcO?=
 =?us-ascii?Q?F6J7vl2EmUrGinUpEHTC+jqtTHG0fn+0IwrqhaZ4hHZY9soVCzUNSXW6WmBb?=
 =?us-ascii?Q?q/GkUXfyTH0jQbDrnakn/MWVMGlbOwRLVMJs1liPPm08FU1iR7tIKwF+vtUp?=
 =?us-ascii?Q?IPr+XV1koHK6sLoVbotgxnevmvX9khfuWIAIo+b4D3huyJif8in20SHtWvba?=
 =?us-ascii?Q?J7rRruCeDfvnGBFHz7AVsidqLAr/LZl6fUvgIOAFF459vzv+NVEEZX3ycvYa?=
 =?us-ascii?Q?x/UDjA9G+iru82NT/heVe6D9Zm/DzgPalI5XCBng8SPMC3PRgEzEbCdbMqcT?=
 =?us-ascii?Q?gvL8xJKM0xFsPGf5MxoV4UMNOxXJwOGs0q9cPQL8cCl5q9NRMbw+oYZyMzKZ?=
 =?us-ascii?Q?NLNK8szsnIai5ZX6T9h9a47K1o6hwknvIRbXdu7S3YF/hj4eq8siOdLZi3eg?=
 =?us-ascii?Q?CdQCLeOQf4mmvNRySOOoCPLRRwdhFo0uSigDT39NK3dt8z8AvsleAzIfjkOa?=
 =?us-ascii?Q?Ns7gMtfO3h+o4DfjCTuhxzTbU//Pra7WOOR6EjOteAz0prsh2kG7uKutRH/d?=
 =?us-ascii?Q?lGOTZLrYBLk37RIuAWmlnTJKJIfFR7x6Wo9dRAzzGUDQ2zyXRKABrgJxh3N1?=
 =?us-ascii?Q?tLWWSL31I3K9eFgcg5Fm2K3zKE6wFliM4aFjVpkZJf74pvBgYgwQeY0BAgKd?=
 =?us-ascii?Q?XhRSbLii/w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: acUA3cKm/P4Gu2dm9/pBYTbqVH0UR5H+QicMnciEob5JAkKX6+giQsm12oHJHWFFx6NcN0CDOmi1gvkZR7xL9FC1ILqjiLaZtKE026MvdTV89ESmIvz5V/ZYBE9E8ymvcRZNyCG2furcnZmfWyCWWE+/ABTfK1NOFj271q2jyum83bEfEuaaufN7n/4tSIQPALuZNDTqqLpxTUEG1HEIbjVNJragLgab8WxhMUSP2Fbypxq6MC92i2lKqCv3UuHC1E6kFtGF5VAE05vC/rTRyM38DOdR63fH4ev20ZfXlLLInWM6olwJXtN/F8EyX0v6BIlxeMqtM5MShjPVsSnxoQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2346a572-4be7-4c81-a417-08dedd261c33
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:21:28.4602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KT5JdgvldC+fNj5s9pZ/+pBIvVnwAloclp5OA7JiN7JT6hO288dkXaSDd4Hss07z34tMnJG994lHVHjZdLq6lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9613
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28F23729D7F



> -----Original Message-----
> From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Samala, Pranay <pranay.samala@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [v3 12/14] drm/i915/color: Extract HDR post-CSC LUT programming =
to
> helper function
>=20
> From: Pranay Samala <pranay.samala@intel.com>
>=20
> Move HDR plane post-CSC LUT programming to improve code organization.
>=20
> While at it, remove the segment 0 index register writes as it is not curr=
ently
> programmed.
>=20
> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 35 ++++++++++++----------
>  1 file changed, 20 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index abf3b3a2e177..360046979556 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4050,25 +4050,17 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,  }
>=20
>  static void
> -xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
> -				 const struct intel_plane_state *plane_state)
> +xelpd_load_hdr_post_csc_lut(struct intel_display *display,
> +			    struct intel_dsb *dsb,
> +			    enum pipe pipe,
> +			    enum plane_id plane,
> +			    const struct drm_color_lut32 *post_csc_lut)
>  {
> -	struct intel_display *display =3D to_intel_display(plane_state);
> -	const struct drm_plane_state *state =3D &plane_state->uapi;
> -	enum pipe pipe =3D to_intel_plane(state->plane)->pipe;
> -	enum plane_id plane =3D to_intel_plane(state->plane)->id;
> -	const struct drm_color_lut32 *post_csc_lut =3D plane_state->hw.gamma_lu=
t-
> >data;
>  	int i, lut_size =3D 32;
>  	u32 lut_val;
>=20
> -	if (!icl_is_hdr_plane(display, plane))
> -		return;
> -
>  	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
>  			   PLANE_PAL_PREC_AUTO_INCREMENT);
> -	/* TODO: Add macro */
> -	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0),
> -			   PLANE_PAL_PREC_AUTO_INCREMENT);
>=20
>  	for (i =3D 0; i < lut_size + 3; i++) {
>  		if (post_csc_lut) {
> @@ -4088,8 +4080,21 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb
> *dsb,
>  	}
>=20
>  	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
> -	intel_de_write_dsb(display, dsb,
> -			   PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe,
> plane, 0), 0);

Later we can extend support to include and program this segment as well.
For now this looks Good to me.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> +}
> +
> +static void
> +xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
> +				 const struct intel_plane_state *plane_state) {
> +	struct intel_display *display =3D to_intel_display(plane_state);
> +	const struct drm_plane_state *state =3D &plane_state->uapi;
> +	enum pipe pipe =3D to_intel_plane(state->plane)->pipe;
> +	enum plane_id plane =3D to_intel_plane(state->plane)->id;
> +	const struct drm_color_lut32 *post_csc_lut =3D plane_state->hw.gamma_lu=
t
> ?
> +		plane_state->hw.gamma_lut->data : NULL;
> +
> +	if (icl_is_hdr_plane(display, plane))
> +		xelpd_load_hdr_post_csc_lut(display, dsb, pipe, plane,
> post_csc_lut);
>  }
>=20
>  static void
> --
> 2.25.1

