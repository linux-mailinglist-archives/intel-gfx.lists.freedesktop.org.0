Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A750DC8B911
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 20:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBD110E644;
	Wed, 26 Nov 2025 19:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX9zA5KE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B3A10E113;
 Wed, 26 Nov 2025 19:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764185125; x=1795721125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5vv7Co70NqYHx8xhCLXsuFOkNxWutryWbldNDs0kQI0=;
 b=TX9zA5KEDsJ1LjJJr+PE40lexAea3AZUAjGnSab0BSxAHZ8V+o2F7spr
 Sy8o3+T9Z0toF6pzTG2fEwQuNFNFs9Q8oXRBO+GcyyArk2SfBR0oXhq2d
 VLLUV+RFTh2KbEnltgv/SPCkqjIj8HA41broh/hMk6/7fYX27rOt5h5iT
 DT7S3YK8WNrxwkOioQ2PiV5Qi/p+x97bUfMj/UDVrCUnhHOygvj5gQiJs
 Y/VzZQgZrA1o/cAnCHl4/wcewzHP9wJinGsMDl1BY7ET9QiLF4YKxuT7v
 M7KfVC6nx1HZZ1iI9zEirE9F/HReTdZvKjsvOD+ohGEohWQejS6zTEjwv g==;
X-CSE-ConnectionGUID: XFDhpqIBQsilO5zoWK3R+Q==
X-CSE-MsgGUID: SZvSu4ggRnidpZ81oQdMsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66192910"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="66192910"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:25:24 -0800
X-CSE-ConnectionGUID: 1tP0iHufQGCpTersrAe6jg==
X-CSE-MsgGUID: DcrPzZS0RCaGtMNqxR8TLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="192282816"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:25:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:25:23 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 11:25:23 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:25:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wwxK/jYlhXVzNOwLDoS+qx9EehCagMuX9W1CTE4/T0/Hht8DXbPFycpZh4rW/KO7Q+Ijoeh0NbSBb0wFRaGFyvDYX3uvWxy5AwZrsHHrLEGE5o94XNaPlvwvUqiCPEzLkh8mxGxiYJ5SlcO61SDCMTdCvrc3jl28uaSKyhfu3LWn4Q9y749LnGkegf+aBh1IepD+Ee0291NWmaARe0pA4emN0iaX5ZHX/QmTTi8d8FgnN5WHIrB59BCaB9U3a7l31t45tmnUeomtFKdf7yHdohPc+iti3sv/OKLC8vZqJDXqydHVawc17hMVd1tJNimPTt7KhjqdvVsUyeO4q5gK5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yg++YGxeCrrHJLPeRnloJiHfTPFVL8wW1XADJRMaySY=;
 b=E05wRZuD1+6esNjB1lY8YFxkOmSLCTEwbPx6P+3tqkw+Iprbdl36iu3A3wVdTIzD7gsIGCKHoGxjJsKC9Jm+AH8UZzjI2cjTuGJzu8FcsQ8q97v20mfZwx0P5P8zKp3yNJGMRPH7IyNJUiBVUGVOh1FqEFGHYpE3aLwpfwO6U6+8RSo5vbU0Q44yvJ8Tsh6RP494EJszH85CL2ZOR9ywX8woXdawojGipagFgc1hUOowfQHo/0RImT2ACfQ9ALhaQ4ghXR3+QmWGbYlwH+T8ysnyQLvfH7KNQ3TQU0DpvZb+L6pSE0curEy1b/HI3QJPlZC9F2xJEt2FV3TUNtcyrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB7051.namprd11.prod.outlook.com (2603:10b6:510:20e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 19:25:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 19:25:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>, "Mario
 Kleiner" <mario.kleiner.de@gmail.com>, Mike Galbraith
 <umgwanakikbuti@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [PATCH v2 3/7] drm/i915/display: Move vblank put until after
 critical section
Thread-Topic: [PATCH v2 3/7] drm/i915/display: Move vblank put until after
 critical section
Thread-Index: AQHcTWedD6KZceVn9EmKEpi08RGm4bUFedeA
Date: Wed, 26 Nov 2025 19:25:20 +0000
Message-ID: <DM4PR11MB636042625B68C5D1FA2054A3F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-4-dev@lankhorst.se>
In-Reply-To: <20251104083634.670753-4-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB7051:EE_
x-ms-office365-filtering-correlation-id: 787aac0e-faa5-40a3-1ebb-08de2d218a43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?v2yE3o+1LzSa+3rah2+iqTY5jtwiC3bHIskGX3FtTfTgcsZokm1r8BK7GeO/?=
 =?us-ascii?Q?aJWMkSWCA/jmJSCKMZryhmQfPLCJFqlC9gFJ0KDtDZkMDmf7TdJIHxvQA6EG?=
 =?us-ascii?Q?HZK+vF9sCmMPmDTI3QJlKvTCFAtoIBWpX9Efh3Ce/8/wbpSjxTMrEAxKaOPp?=
 =?us-ascii?Q?F+WSwd+cY99ivxbOgGVm5QruOrTzKrVHSo7WUdz1rQNlLKGQaxnDi8jBCgtq?=
 =?us-ascii?Q?xIBraUeN2XpzttoWczwLc1XB4cB8fd8BPYIf/8HdvD0/7loj1ufwtePYDW2I?=
 =?us-ascii?Q?AtsOWMZPoI4j6nGpj9vC9T4Qq4bgGkb5b+r3ggJWx4ZTP5BJ/ER0ci3QVfCt?=
 =?us-ascii?Q?Z4pXjp4E5pms9ZRHe1Z+KCv5hNf18chtMbPvaM9Vd5DHlqRKWsOUeYtuQrJ6?=
 =?us-ascii?Q?dQfX64urCSAMw+vb11OBm4bqWJs+ZyaEQ4YcHs61Wt3quV2p/3GyQi17kN3o?=
 =?us-ascii?Q?zAhT9IXNTNwULDNsurAFcVrrOyujrMzeJ4F3PfSC5+QKwUl28DnJOuZwVz7a?=
 =?us-ascii?Q?qS0aTH4N8jMSSC0NL8aVNk051P502X/++ja7V6fkmW6xXG8ZARHLqWLCkUZ+?=
 =?us-ascii?Q?vypApy/JSEmK+2SgRmnbgZ/ERYjiSTlbUwTbZTjHkf7SJSmTzrleYC420O+n?=
 =?us-ascii?Q?p9vpeS2B4bD04dDBYj4jot0h/TxgF/kJIoCXmcB/v8ghv1v2gtzSvcVgdrky?=
 =?us-ascii?Q?X78wMZfqV4d6GN62FuQD23TfqPNSaOaIwZtc8nkuslf2m9QTiIC7sC9Efmfs?=
 =?us-ascii?Q?++09W4ZA0LhWn/89HQx+19K9iCR76v/3qAkx2u1GlYSlsDXhQR7SHgIPHkwv?=
 =?us-ascii?Q?o4ne4gTGJKf+ejgXkRx/y86CdDjh5kMi8uNAgymWWxdjqZK0wyh8MdNWdU/T?=
 =?us-ascii?Q?9Xg7zzhCV4LCV9KXcgAs2H3PsGpWe4LnUM3LUe1eQb68bsq0Bq1fVridZ8L+?=
 =?us-ascii?Q?mTOi/awXi2KTU1dSCkGIFcwYmfxBN/wGMZNDh2/adpu9pfZSEiQzyNKCL/nL?=
 =?us-ascii?Q?SefGtTSnbJC43xZxFXDJdXvIZjgNYJv4C4HpHrsZRKv4YtVLdT07H5t+7VUP?=
 =?us-ascii?Q?/RCldutp3iH+3zbHvvmcjK3Ocw02pwRzDvTMT+AfCEWda+8E8ENBdA/eeTxj?=
 =?us-ascii?Q?35zqKfMOD8LhS9UjZMbP89Zf/fDgX64btKZ3T+m/Ugh/9yKo2+DJUtaHBofb?=
 =?us-ascii?Q?LNYUPSndR5UCEeZg+XWdsVuAObGgejIjZ6TZ+9njrpT/JWWmZai2c/kac46n?=
 =?us-ascii?Q?KGyCJQiCC0wt8UjZ+buDUEixmrN9vREAO3ilXCtbvt2Hg5UAvzCCqkoM8QlT?=
 =?us-ascii?Q?Dkh1yRp+GdN1ahPZQkYHKO1jPm2N5m1cHHDNs6wc2Nt+AgA8sTGuZu4lkLvU?=
 =?us-ascii?Q?K8lNI7YG+l7wN+YTTsHdEJ0ZK4n4YDFFiQOEnregxSzkS6xCXib/DBrC5aXf?=
 =?us-ascii?Q?wcVq9vfJVTWxcEUCeMfiCbH93m14LyijXtmUWkpZOuzzN1UFW8WnuaoFxFa8?=
 =?us-ascii?Q?hZLFIehXEkHPPOOSgvbxAcdUSw0rj89y9fOb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zHJKo7cA0txO4BVRolMvrbaeHiJXETuE5nTya57oWrevIbwtxeskwe6hHx/9?=
 =?us-ascii?Q?OPDmcQktmos60QFuebaZtMshp1fatOwyrRqV2RNqlkWCZAmvPjtNznNhKeSX?=
 =?us-ascii?Q?3EYLaXhNeCrXxBQZYQWuSj5tXTrm1CWSZpLS8pKD6ZGx8hctpxcw1HvrA8rQ?=
 =?us-ascii?Q?VdNm53TjKGTYH0m7EIAjT0KqDaXd7juCRIwhU9gz/fdwHUN1TkDV9PiI13SN?=
 =?us-ascii?Q?GoLVD4GuSNhjuJJWbkqbVFTZ6ZBKXgThuINu/j3UszH+qWpKHy8g52ETMjA8?=
 =?us-ascii?Q?u6xpsqFI1eR/MqhjSE2rX2/9sDlq2PfzQ7DYAEITXK0sdgUbcQg/W7kO5/CU?=
 =?us-ascii?Q?ykMYv0hs0faoeasuNfN/1ET1tIyRSo7GLPzXzbauMoXKrhHmtbfo9VFtLzGa?=
 =?us-ascii?Q?kB3d1YUKrlvF2WLfokuP8xux3QTfqSatwa0LoHUDjVw16uUGcaH7hzUiD1fj?=
 =?us-ascii?Q?Dlq8ACFg+Kxh7MAv++JUzlCe1+UpIZciCHK7puc4nY0rLF86uZ2LjlmtEuhA?=
 =?us-ascii?Q?i2SLqGfJJcr/aCZDKS1T0XuKPyXRBEZ+qkLDgwX6lO5bqRGYOeX419iLOMtZ?=
 =?us-ascii?Q?HVjnhfp0v01r9Gp3sS7R/KWvAwDWrKzTCkc7JTaLdVth0TB4+R8rQuZPQmx3?=
 =?us-ascii?Q?jPvbEzX/c/N46QOHhh3FBkRuhQr02jtFMlbY5VVJWlypE+A8nyeXCQfGYYqN?=
 =?us-ascii?Q?w1ckPnrT0GBZ4oE5E10MOGLR+yYUM6fonKIjWHBytbntfUTzRDI0TFUcQc6w?=
 =?us-ascii?Q?oSbsvC1UvBhYIj8BssfsIKOVU6p5LE02NQN7yhydZpITZu7hbtZSyOWfMCCn?=
 =?us-ascii?Q?rwZWgBTvzxTvKmJmAh+CifXBx/hAyml29HjNRh6aV4IpaHU+i0CX0gcSLOkk?=
 =?us-ascii?Q?O+KICeFBpojN4eMy7zFcrVureqvjmF9sUNs7uEg6B3750dbwLNskseoKrCuR?=
 =?us-ascii?Q?9Ojg3g4qrhV7NGQ3jYs5d6FYy5TYYGNWKdSkegt0BrMPAdFufaeQH8f3no1m?=
 =?us-ascii?Q?u3wD1Lc59XrL0nAbKFmL80+z5EabRHFKW8TLX6HY0EGxzJ4MisB4Q61ofnvK?=
 =?us-ascii?Q?Lqo7lMkSO6de0AoZz/foYWpz7n9DqMc2/BJJV9HbhA6C6oybbbel9yrNHkVx?=
 =?us-ascii?Q?4Hp+s+wshbu+p2IJylXPyMuEW12mrnuuJqVFsEEBnXpztfS+fFGneo/6DXJX?=
 =?us-ascii?Q?+Eozrjwff7qVJIYSVF78vdvhwy0SQ+6FxU/WXpAiTPYv6cbLMUvlvd0s7+st?=
 =?us-ascii?Q?n2h5wI+TEKxPoRe/Gd/L2CaHBXZwkbSx572FVi1KbVLCrQsqtA2rFtNcpIUa?=
 =?us-ascii?Q?lKv9oZDmIAs66euzwoWh9WGMJd6/ng10ye171FuDIxC8qlBc5f9s4AweAV2f?=
 =?us-ascii?Q?oX9M5HQg16qsBZK7kl+hDJIp+tAMDnm1oSh5+Vp9Ob/rA5HMcdZODJGl1aj7?=
 =?us-ascii?Q?zGsMQ5EX2M4PojaJcNvC3dditWYWiY9xlfqbFH2fbbQ1VjGO5vegx6FtNU8C?=
 =?us-ascii?Q?hWkbFrkE1xW8hICe7FC775rerxvnzC2uFwje11mxei3n1vfqmDvUVA1aoIYr?=
 =?us-ascii?Q?7LUu/irJDo1rNA8cDSlLkwO8wbvSX9hyvYizN2LK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 787aac0e-faa5-40a3-1ebb-08de2d218a43
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 19:25:20.9938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7hy6RAA1Oksw7zBAjpwj5ap4LSN2pfRSCwgOFtlvzZvCbDP4hA5wjxKNEnMl9S/0yti5SdPRwZVBS+E9/iQDSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7051
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Tuesday, November 4, 2025 2:06 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>;=
 Mario
> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebasti=
an
> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> Subject: [PATCH v2 3/7] drm/i915/display: Move vblank put until after cri=
tical
> section
>=20
> drm_crtc_vblank_put may take some locks, this should probably not be the =
first
> thing we do after entering the time sensitive part.
>=20
> A better place is after programming is completed. Add a flag to put the v=
blank after
> completion.
>=20
> In the case of drm_vblank_work_schedule, we may not even need to disable =
the
> vblank interrupt any more if it takes its own reference.

This looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 7aa14348aa6d4..6b3bc8d94e51a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -816,6 +816,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  		to_intel_crtc_state(crtc->base.state);
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_vblank_evade_ctx evade;
> +	bool has_vblank =3D false;
>  	int ret;
>=20
>  	/*
> @@ -913,6 +914,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  	intel_psr_lock(crtc_state);
>=20
>  	if (!drm_WARN_ON(display->drm, drm_crtc_vblank_get(&crtc->base))) {
> +		has_vblank =3D true;
> +
>  		/*
>  		 * TODO: maybe check if we're still in PSR
>  		 * and skip the vblank evasion entirely?
> @@ -922,8 +925,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  		local_irq_disable();
>=20
>  		intel_vblank_evade(&evade);
> -
> -		drm_crtc_vblank_put(&crtc->base);
>  	} else {
>  		local_irq_disable();
>  	}
> @@ -939,6 +940,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>=20
>  	intel_psr_unlock(crtc_state);
>=20
> +	if (has_vblank)
> +		drm_crtc_vblank_put(&crtc->base);
> +
>  	if (old_plane_state->ggtt_vma !=3D new_plane_state->ggtt_vma) {
>  		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc-
> >base,
>  				     intel_cursor_unpin_work);
> --
> 2.51.0

