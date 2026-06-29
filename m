Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VGq1IGcBQmrHyQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 07:23:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCBD6D602B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 07:23:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="krB30ZQ/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE89110E00F;
	Mon, 29 Jun 2026 05:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D7D10E00F;
 Mon, 29 Jun 2026 05:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782710626; x=1814246626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nUGMA6pt4Dr2DwTeQmCFB8VfhJf0MSqkj9+2Q8bI7s8=;
 b=krB30ZQ/mM4ONe888dMZyIT/D6KHsHwfC3I78hFK+VyoZ669ZlQJFtph
 ih4jiRWGVADxiT6i4b6Gtv6IuYcxlGaJIaE4YpmPrWqCcfNLSlmjyj+V0
 JmYEVkOOTGDTGOch6rL1+J6sKXImP6dEKoktSfh78OHXuXBWBUb5xuAqo
 dfXuZdrY1bhLc4DtXAsIZFSkf9Yf75yv+o8DL2El1n37Sa2aaKGmP5myD
 wNuWCKTkpGOMebBfYNtDWmrdR35D9zWqDwZExDItCoZBNRFwfxL3N1UkR
 JCggoo3RR1tZZ4tM9FLVDvLPbcj7Bi3sgnLGoY2g+fvSAGptUDXgp8UCN g==;
X-CSE-ConnectionGUID: LdJuXnLIRIufH9MhiZLEAQ==
X-CSE-MsgGUID: JKRgEuuBR6C9TJxcbnIXeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83267802"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="83267802"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 22:23:30 -0700
X-CSE-ConnectionGUID: iSDNXuA8RWiYqTpVjc1pNA==
X-CSE-MsgGUID: jEYCQefDRGSXwp3cXxhkEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="276127130"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 22:23:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 22:23:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 28 Jun 2026 22:23:29 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 22:23:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6FL6zJTlF5Z1ckKXPSZ6LKcxOrI4siW5pq/gVc75kzy3SzYlwnFlgBvZfDo3BWNrkqKZA77MtmJyEXXbhTJJkFYaT3ehGvnX1xeJ1TPun6DwBke5tVX5HVbhJpv8hyO5mYVipolhxi+6CqwQo/UvC90lPuaWvVufLzRm4oZlyqejv08bGG0p2bAFxJooI9ImppbTkB2nD+3qqzWk4BiV1ekiCRCoQ100hhAYbx81rNkGuZa1FqRKbNN8Or4cQPAEezuVu/QIdZsfJ9weus7X+I2JJXUv8GYviRdh+EzoTm0t8IOL0wrxMVAeqfYMf85jEItZzSq8wZOcJ2lTtNXzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91dfg6vC/Ize4KzaRxB+wMVlBxHM0zevb+cFJtB7mLw=;
 b=AqTG/aFkH8wX3OpAJL592pfHF/bgMUewRwV5+1ojJ3g5rk4afm95/Qfrut4Pf7Ltcl8UsWpCoRVYfdqNTiou05Ocjnl/z6S2nsgOA6+QGDN62ZW499DY6EXEgt0/LPvLFyz/yht9SSq/G2RQGIT5WJ1k5qbwqxvhTRByi0ATLJblFDgvOkRdyi/FzjvC42vsL6Q5OL3e9Zuy/1LgZYe/gSJnhpbaQyydU9C8n0KTTlEX5H2HUrl7N2DpabI7P+7rxBT17wiQQVQkESuWXkLgdU6JBJI6NtqsWBQBCtRE2SrYusJJEyMkmKoVcDbnJeUHAl4pJ0EnJTHcZWUgjzRWoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB9478.namprd11.prod.outlook.com (2603:10b6:8:28f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 05:23:26 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 05:23:26 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v2 06/11] drm/i915/display: Move CMRR crtc_state members
 under VRR
Thread-Topic: [PATCH v2 06/11] drm/i915/display: Move CMRR crtc_state members
 under VRR
Thread-Index: AQHc/aF2a3It8xfVmU2iwPtsiVBlj7ZCpvmAgBJsMVA=
Date: Mon, 29 Jun 2026 05:23:26 +0000
Message-ID: <IA1PR11MB6348D3D8373B26B50C65F795B2E82@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-7-mitulkumar.ajitkumar.golani@intel.com>
 <896f5a67813c2f7a9cdbd84832b523cee1a849e0@intel.com>
In-Reply-To: <896f5a67813c2f7a9cdbd84832b523cee1a849e0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB9478:EE_
x-ms-office365-filtering-correlation-id: 42d079c8-a55d-432f-ff82-08ded59e8c27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|38070700021|4143699003|6133799003|5023799004|56012099006|11063799006|18002099003|22082099003;
x-microsoft-antispam-message-info: 7kVvHC1YDpZElVBOlaAS4ZEKmukAlg+63KC3jI/Brp5JnmjhEv7EwtE5bfNJAas4W/nV2SMG2j0gcQ/Nu88IyMGG9E3KD/KxTFF2pEobKLUxjI3DBBt5yKavjkoDXSrKZOoOmbwbZZ1MMmaNPVYHwhRFXpWe5vu0qJ7NhsCKSYU3LnL1y0vnBpXO4QJUyf3J8lBmYiIGqe28Gj9taqERC9V6h3y5fg12gXk0BCLZ1oo1bsighOTmm38Fn1tdgx5J8FtKJmCpPI3jvGyt1sI84MZAvj5UcOQYx+G1eVeSYQH4CLym/LimeRv4ePcYOZ+MgZSQznZS8Q6K53Z6H9qgTTlwPS9Qs1L+2BPrutzh2mnGnCBbEFFyFCTSsYiUi0qK/X1/RT+zMZJCzm4wNNuZ5Fa7cqQ6xeC117F2NDTVWUtbcrNvLsjz83+RpmIAW2gBqFxCmautYJ1OZK7K9QTwvPhJ6xlgGVL6h+OSWBIZmoN5QDy2oPTj/G2/KPNbyHFsGN2LEjRg3igFqudVEdPyhNi+0y7pJGPABnyuorDsLokbpIskyPu9Vgq8pOOIQaDAg7vVTyR5C34530y2c5zoZaC6s7ZM5ezFvLqn0jmDC4dDAfeti1fxG2+9IBKRu89rg5n75TKr+aDG/ny8AEdH2uxGH+FRJ2uVrJ6loDYwewCNFyhzPACty/5KL+ibS6BIiRGGSnHL50qi3YoEUYtXIcs4Xu8NxwpaN9k3+Drxx+4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(38070700021)(4143699003)(6133799003)(5023799004)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+JFL0EEWIIAICLCxTOQIkSJAptWWB7JgdtrLSgbSEmXo2FzfdkFgt6cvNg9s?=
 =?us-ascii?Q?zVEPeEopMFcQeheI4hHol5C/dhXnVDvktuED4QxiAh8lxA7ucIJUYBnqMuZr?=
 =?us-ascii?Q?1XzkC0AP9/8PEYvv5BrmKrUUhieAOJwJOVyaFjxl3LIqnKArzvzXDoXvujuN?=
 =?us-ascii?Q?j5QjbnETMmJqSNxTyoqk0NOnLeaJwTc0o7FhuLwMq3zEd1pW0NLSYm+MLC/n?=
 =?us-ascii?Q?13SgIwRmomSskuKvul58VR2A6BEA9Lk04h0z++Bm+WIABXqJpVvgZe6cRhgm?=
 =?us-ascii?Q?kSnDXWrNGud+xQuHgHqa9hcugdH7HE1g/6t4IOPS2Yh26Z4rGW3X3dpBvyoB?=
 =?us-ascii?Q?QRTbruQO0SoFVy0i3Mxd1A8dBr6Xg2lk+TEl5BPgQFx+LkZyQEYJl8hmrRWz?=
 =?us-ascii?Q?T4nlD4Wm0AOs2EgKY+UcduCNz6CuptVHolMAgUINwxa9NBnTQfXkCXkDNWAJ?=
 =?us-ascii?Q?Vb6kSAezLOzcl9UyfD2CJ4Wk65TLXw9vy6A4xQrZUvs36SoX8qHX98/NWze0?=
 =?us-ascii?Q?TLer/IrjVgGiLRHgRQLJEg0N9Lg7hm9l4m76xkV8Y5Ol7zC/Q17KPtDKsp5I?=
 =?us-ascii?Q?9BIk68LsjA8pkf68fSBE5JfWFW85dhZRQOTNz5wryQ8UNuPtxdH2kVx63zOo?=
 =?us-ascii?Q?wi/k4UXD5AP9w4gwL14riHZ34pewOejg5KpGXLpW4BeYyiuVKXRMv/aUUvIe?=
 =?us-ascii?Q?rqSMHH0J5610H3xxtcHSC6949z7cjVSwdwgNdH6ltbaajMZqjOdNC0BF1Ka7?=
 =?us-ascii?Q?zZvd3Xc3XdQ9STzMFrt/v9n7BmPez1CbbzyQgmRiiZ5mq9TiN6sv2uH56h2e?=
 =?us-ascii?Q?AIu+gwJSZB/E/NGvCExKNPCht44DsFVP7rLxP5r42HlgeIzfUcH9hChbh8jg?=
 =?us-ascii?Q?s7i/u5uWMzlFFAkns10kjR8khsmbtnKyIAy+At2/OTqr06fSHZb11E6uLXXz?=
 =?us-ascii?Q?R1tbRYGT5+ZB47taZUa6neUr3nhZa4p+3gVlY0N9MJeNMIjSiajJYQOTnP0H?=
 =?us-ascii?Q?qUTMcRfvBZRpreksob6iRv1Ion4L48udqBhMYVmTKwHlq0IRdXPuW72fQqzT?=
 =?us-ascii?Q?MqNW67xEx+RAsyjx1fT9XBN81jnnQW17ptoyXprXIWKz9oawEhy11gxsjZB2?=
 =?us-ascii?Q?aayhFbk551RsEZzS2IYZLmj1LL48EPNMCwG4WmQgkRNvMSQsDLGT03EXTt+6?=
 =?us-ascii?Q?aGA/sUBEViOaRnF9SOiqWVivfEKxoGfueSmITF5sQfvGPrP0hzNsK4n7bIoT?=
 =?us-ascii?Q?OJsyTkfMVdK7Z52GSvtpIZq0tIT7rZ8DYZFiIASIWLFcard7FmE8fEi8dIiJ?=
 =?us-ascii?Q?8mRXrlklbF8btaS5hK8H2Vd1hdWkJA4NNrwEbc3u3fPI+RVYGtRf5wQQcSgU?=
 =?us-ascii?Q?Qo+vqEDdtEVhXNiA3oE4hbY/u8y0cy8x0NSkZnSCyVk7mAxnwsVV2Q4wN8ar?=
 =?us-ascii?Q?fFqw/Y2TGEQjItVat124BsA40b+l/mUMDDWtvZvj0ZumPFBoKz5i64PEHjH+?=
 =?us-ascii?Q?3GyoUuONbTdPsCvg1h0DR8sFIk7/0/RvNBKdYzXThQA3Kxza0yjV1UYHuK1W?=
 =?us-ascii?Q?ILEFnBfkbXcHPUTstRJRJzJOXp5Qwzw23PrM45zRJw/Tb9T+Ie8yMg2pNln3?=
 =?us-ascii?Q?SBzvXgz+XVNtz13FA/bPB2eG8cpnW6jX2HqDazQAw7ti34cfuvTuJ7UDRvM2?=
 =?us-ascii?Q?IKhp2GNV3NbOLT1or1SJAa38rq9pI7iVtukXisYp9X5xSB58lnYpnXXzDzzr?=
 =?us-ascii?Q?tJJtBUI+5nZjjWQqy+n9rXKKgYqgC54=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X5NELu9TJjfz9eBV3U+g3gNricuvR/Ueqz/hPR5phSFwXgXFFMtA6ObBP6WXPasS9p74TT2XNjnsmR8PE6XLZZjyAOw5f09ZrPtzH1EL6QWSw1SuHKhIgLr3iL2YGgO7QwTnn4Ux2Hnl3bNM0fralkiXAFb2idSd01ouee47vpCD+CFoLI/j+8gfN+E6IntzpBAmgyQ308sxK088A3AEVBJNIbwDETEwscSymurjBOygegvKt8X4F6mCVxXAGPpeNJW1WIfKfiyze7YAl2SMpyZxVHoKfo6TZoKaYLh/ivbyVJb7JwPiuMG00maVBIwHDfUzt7X3mJmWNgobbQzVVA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d079c8-a55d-432f-ff82-08ded59e8c27
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2026 05:23:26.5613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m0/Xo77XPiakfDCpiA/8I3hyklYUbxMIl2GZxyIY5waX5Km+g8oJr1qndL6H0BipxTjA4hamNhDw1LjsY2g5tLoH7ijaPKTYBN4U7u4rBWyAbdMM49VYDCn9i2TQeb1W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9478
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DCBD6D602B



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 17 June 2026 17:32
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH v2 06/11] drm/i915/display: Move CMRR crtc_state
> members under VRR
>=20
> On Tue, 16 Jun 2026, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Move CMRR crtc state members under VRR infrastructure as it is enabled
> > during fix refresh rate  VRR timing generator is enabled.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++--
> > drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
> >  .../drm/i915/display/intel_display_types.h    |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++++----------
> >  5 files changed, 22 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 3a530be64e40..ea337efbe524 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -312,9 +312,9 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
> >  		   pipe_config->vrr.dc_balance.max_decrease,
> >  		   pipe_config->vrr.dc_balance.vblank_target);
> >  	drm_printf(&p, "cmrr: %s, video mode: %s, cmrr_m: %llu, cmrr_n:
> %llu\n",
> > -		   str_yes_no(pipe_config->cmrr.enable),
> > +		   str_yes_no(pipe_config->vrr.cmrr.enable),
> >  		   str_yes_no(crtc->cmrr.video_mode),
> > -		   pipe_config->cmrr.cmrr_m, pipe_config->cmrr.cmrr_n);
> > +		   pipe_config->vrr.cmrr.cmrr_m, pipe_config-
> >vrr.cmrr.cmrr_n);
> >
> >  	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
> >  		   DRM_MODE_ARG(&pipe_config->hw.mode));
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e76aa6c8dab6..e067d484858f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -949,8 +949,8 @@ static bool vrr_params_changed(const struct
> > intel_crtc_state *old_crtc_state,  static bool cmrr_params_changed(cons=
t
> struct intel_crtc_state *old_crtc_state,
> >  				const struct intel_crtc_state *new_crtc_state)
> {
> > -	return old_crtc_state->cmrr.cmrr_m !=3D new_crtc_state->cmrr.cmrr_m
> ||
> > -		old_crtc_state->cmrr.cmrr_n !=3D new_crtc_state->cmrr.cmrr_n;
> > +	return old_crtc_state->vrr.cmrr.cmrr_m !=3D new_crtc_state-
> >vrr.cmrr.cmrr_m ||
> > +		old_crtc_state->vrr.cmrr.cmrr_n !=3D new_crtc_state-
> >vrr.cmrr.cmrr_n;
> >  }
> >
> >  static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 39e11362630c..6096ad02ae45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1400,6 +1400,11 @@ struct intel_crtc_state {
> >  			u16 max_increase, max_decrease;
> >  			u16 vblank_target;
> >  		} dc_balance;
> > +
> > +		struct {
> > +			bool enable;
> > +			u64 cmrr_n, cmrr_m;
> > +		} cmrr;
>=20
> You're leaving the dupes behind?

Thanks Jani, for Review, I missed. I will update this while floating next r=
evision.

Regards,
Mitul

>=20
> >  	} vrr;
> >
> >  	/* Content Match Refresh Rate state */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3569e61e7fee..a9054b07d9c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3230,7 +3230,7 @@ static void intel_dp_compute_as_sdp(struct
> intel_dp *intel_dp,
> >  	as_sdp->revision =3D 0x2;
> >  	as_sdp->vtotal =3D intel_vrr_vmin_vtotal(crtc_state);
> >
> > -	if (crtc_state->cmrr.enable) {
> > +	if (crtc_state->vrr.cmrr.enable) {
> >  		as_sdp->mode =3D DP_AS_SDP_FAVT_TRR_REACHED;
> >  		as_sdp->target_rr =3D drm_mode_vrefresh(adjusted_mode);
> >  		as_sdp->target_rr_divider =3D true;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index c979950d32cb..83f25184c66c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -53,7 +53,7 @@ static bool intel_crtc_cmrr_enabling(struct
> intel_atomic_state *state,
> >  		return false;
> >
> >  	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> > -		(new_crtc_state->cmrr.enable);
> > +		(new_crtc_state->vrr.cmrr.enable);
> >  }
> >
> >  static bool intel_crtc_cmrr_disabling(struct intel_atomic_state
> > *state, @@ -68,7 +68,7 @@ static bool intel_crtc_cmrr_disabling(struct
> intel_atomic_state *state,
> >  		return false;
> >
> >  	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> > -			(old_crtc_state->cmrr.enable);
> > +			(old_crtc_state->vrr.cmrr.enable);
> >  }
> >
> >  bool intel_vrr_is_capable(struct intel_connector *connector) @@
> > -276,11 +276,11 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_stat=
e
> *crtc_state)
> >  	 * is tracked in HW.
> >  	 */
> >
> > -	crtc_state->cmrr.cmrr_n =3D
> > +	crtc_state->vrr.cmrr.cmrr_n =3D
> >  		mul_u32_u32(requested_refresh_rate * adjusted_mode-
> >crtc_htotal,
> >  			    multiplier_m);
> >  	adjusted_pixel_rate =3D mul_u32_u32(adjusted_mode->crtc_clock,
> 1000) * multiplier_n;
> > -	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate, crtc_state-
> >cmrr.cmrr_n);
> > +	crtc_state->vrr.cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> > +crtc_state->vrr.cmrr.cmrr_n);
> >
> >  	return;
> >  }
> > @@ -875,13 +875,13 @@ intel_vrr_enable_cmrr(const struct
> intel_crtc_state *crtc_state)
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> >  	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> > -		       upper_32_bits(crtc_state->cmrr.cmrr_m));
> > +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> >  	intel_de_write(display, TRANS_CMRR_M_LO(display,
> cpu_transcoder),
> > -		       lower_32_bits(crtc_state->cmrr.cmrr_m));
> > +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> >  	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> > -		       upper_32_bits(crtc_state->cmrr.cmrr_n));
> > +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> >  	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> > -		       lower_32_bits(crtc_state->cmrr.cmrr_n));
> > +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> >  }
> >
> >  static void
> > @@ -1038,7 +1038,7 @@ void intel_vrr_enable(const struct
> intel_crtc_state *crtc_state)
> >  	intel_vrr_enable_dc_balancing(crtc_state);
> >
> >  	if (!intel_vrr_always_use_vrr_tg(display))
> > -		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
> > +		intel_vrr_tg_enable(crtc_state, crtc_state->vrr.cmrr.enable);
> >  }
> >
> >  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> > @@ -1140,10 +1140,10 @@ void intel_vrr_get_config(struct
> intel_crtc_state *crtc_state)
> >  	trans_vrr_ctl =3D intel_de_read(display,
> >  				      TRANS_VRR_CTL(display,
> cpu_transcoder));
> >
> > -	if (crtc_state->cmrr.enable) {
> > -		crtc_state->cmrr.cmrr_n =3D
> > +	if (crtc_state->vrr.cmrr.enable) {
> > +		crtc_state->vrr.cmrr.cmrr_n =3D
> >  			intel_de_read64_2x32(display,
> TRANS_CMRR_N_LO(display, cpu_transcoder));
> > -		crtc_state->cmrr.cmrr_m =3D
> > +		crtc_state->vrr.cmrr.cmrr_m =3D
> >  			intel_de_read64_2x32(display,
> TRANS_CMRR_M_LO(display, cpu_transcoder));
> >  	}
>=20
> --
> Jani Nikula, Intel
