Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD193B2BC9E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 11:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DC010E568;
	Tue, 19 Aug 2025 09:09:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EumwcwUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F358910E564;
 Tue, 19 Aug 2025 09:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755594571; x=1787130571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5K8M5TrSbjmKGQt2hWDKatGzJdsQOxllaPLlSbDqWKQ=;
 b=EumwcwUrcl23mZGIYqonHYqJ3l+TYYcUquEBEquEnOEp/brMx5W+EZFd
 l+h6dINjlcu45mredhLgbBYetwv7YR/z9cJ0O3CNpX1T8XdxQgE2S6nL3
 F1WcwQb9hDeGnEC/ersW3XmjZNTg8aRf7Hgo2Wvfx3Bp3huriyNp5RB0V
 dODVObp4hp1W6O0ShuZmF0aH6IiBd6rmx+9KUd01FWbpplydtb4kjTuMx
 zDZnWFslVhsBwLkEnEyn906Tn/G82zHT9CdtYA001B72ruDo3rjap6PXH
 q4mQy4YWT24k0vuNqf/z708JSuRguyef19imERMM2t3z6RaT/7ozIi70E g==;
X-CSE-ConnectionGUID: x8u59yPzRGqE4yfLwSlTmQ==
X-CSE-MsgGUID: Ws4GIuDuTdWfDSjeeTUMow==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68928469"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68928469"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:09:31 -0700
X-CSE-ConnectionGUID: BOQ3TIzJTbqg92fDLkq7cA==
X-CSE-MsgGUID: dqg7w0fGQGaozIAA8CCNow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="167703004"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:09:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:09:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 02:09:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.41)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:09:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zRzL1orDyrQ/eBOFs5ntYrPBlUYmeFvwEurrRkx37hPQbS3s5IrcGTsS+sO60dfel+GBxup+8t9RUCjezxVbVj9ZJ6uGvjTRzOWJgFJzMh6YOoDLgWVadA7Ygtm7hndDrruqjwMmLsIkOisl3QTiUbroxlNZUh9nfHlzTHKFz+eWuYGrkikQOvT1ocgACshHHI0PwtKONuZ9ecVCpqPawue6k2l7tRTr7zaexTQUVlDm+QX5ltdeWaX1AenNCnurMKPVWYf9Kd3mtSUzsA5zinRl+oWWrSM6kXRrsJfSTz5SFo93HsZqsY5oQUaWbDjsRYLf+UnVECBES4gbFQJ6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+FUpwPXTrpogWyoD01j1Q92VhU/zv1zNWA1G3+XFAM=;
 b=pu4knUUBNRtrEUTWbO6OAftkQoFFCgS3ixr8/rOFJINikHZUQsrEbucnSbe88IbjQ8EDegyZaa2YgEVAr4ZQjc4AEVt7yOlvPsakOTc9l8V2v+CZDh1kp0czMTxPTiOV6du/m2b0GkZwN19bLCHkYxpEqoDnn/a3R6iLSXjOiq2058PEV1pGoYRjTeNc/IlPMXuvmTzhvo6V9qgS/G6IIXuPo/J9vhEeCKo9xH6jiDcTWmQfPTq2b4jK3KEvLWYvpXM+gES+rHvUDiW5gCPNzdTeBv3svdWUA2gOSj+0je2EwkQyLn7r0/tTns6v8WaAonsE/KOfdBHwDHOnBxCQyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA3PR11MB9206.namprd11.prod.outlook.com (2603:10b6:208:574::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 09:09:22 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 09:09:22 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 11/12] drm/i915/panel: Refactor helper to get highest
 fixed mode
Thread-Topic: [PATCH 11/12] drm/i915/panel: Refactor helper to get highest
 fixed mode
Thread-Index: AQHcEBVDgYS3iU3IS0a9Tku5hSMObLRpsanQ
Date: Tue, 19 Aug 2025 09:09:22 +0000
Message-ID: <IA1PR11MB63489DD52E998714C535F2BBB230A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-12-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-12-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA3PR11MB9206:EE_
x-ms-office365-filtering-correlation-id: 46702d0f-474f-4af4-d4c3-08dddf001665
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?flzLMjSGWlB8NPhNOaBCMEf8Bbm0tDM+Efo/bYMDdVt/ihcHpzBOOu1La/0S?=
 =?us-ascii?Q?PEJZVkwIqVQZa+VB/fZAr3zU/rDQkpsJgjorEfY8a2Ep7UpJeUJh0z4/YHEb?=
 =?us-ascii?Q?sptm2Yk+pzcRsQm5qNAAenkseLaS/Jx9QajW2U0y4Jw66NYWpT6awDjZ18Ju?=
 =?us-ascii?Q?f+2Xa4kitMiMpLzFyQvHgiKQsk8x65zf+8XTDK05XxLgta72E7691RqH8n+a?=
 =?us-ascii?Q?2Ja6gZ/HuyhLw8SiM59bXTExjTCDhdTDpm5XAxgrYJ+vm3ccTpvc/710zmCK?=
 =?us-ascii?Q?nbDSJen9U1fGzvIQFfLuZ2o4NRmaF4weknSLF9H97lPRsII6rjUnKlTEVgcR?=
 =?us-ascii?Q?2YPLJVo+955ahnLMWqb6fT17qtIYmGm+QZlsJ9ftDRltBzCQgAifQnY5fK7l?=
 =?us-ascii?Q?mg4tE50RnUYagMEsa7qOBMqmijruKtsG/J3xs3XtaneJm7wWvBmzCdBu0U4R?=
 =?us-ascii?Q?Trk+4cPrMHDTX4a6iFEEk02dAuNKE/jOyRImyCmFA6P0JfcFo2rObhj4p5Ce?=
 =?us-ascii?Q?Y7/RAkP9uz2frtJLth2Z/5m3PHNC0BaaD45jk07tseaP1ONiGfjmEHviWr+Z?=
 =?us-ascii?Q?n/5dB06uunlJS3358IuSbo1fN59xg/JSVqX+Mbbse9Tz5CQP62uF8fqEo2y9?=
 =?us-ascii?Q?b7QcKgmjPmv4ZdWzoMujl7MWXyPWqjW1BpI9xjMbU4dywMP5JP9xM3WiSGyc?=
 =?us-ascii?Q?Lojyhp9ZzJMlmNpDtepFCY/R5MV1xWRys+OcCjwzsj+iy3zFapdRWS35JS+q?=
 =?us-ascii?Q?Jp85SSuYsddPpkhDMTYBUrnxG22M6EAYQHmAhNQ+HEQFSY5ROhwBKUAyyXEt?=
 =?us-ascii?Q?uJCBFforMgLE8JjTZ9AT3jiAeG0SYChrScFochJjU7pCJ9CTUD9HR9U4RET+?=
 =?us-ascii?Q?iUaVey1PiXttAyuarm5wAFygzDhzYjq18/0y6HJcOP6hvK0pZinxOiTwXYR9?=
 =?us-ascii?Q?Fx9DoMB3/nypIfHIQ0pu2+nVe2QYKhL4tf1D+RKE3ZK99x4u0Ld2F/FCFAxL?=
 =?us-ascii?Q?HnrqlHhp504SZJGu0xF1uMqvs/ipEXxsaohyQJZZNMxZmquGNvRTiAhexXkH?=
 =?us-ascii?Q?8IQWPv7RUdmoViKaZ/5JX8V3CaJaOaa6BwuSuvOgA4iP/ZhAmnMnY7xl2d++?=
 =?us-ascii?Q?ju45ucPJFCjL2we++umiwB6nbDQv7Vd6Z5l2Lkq13FSqA/y3MUjraGLq5TYT?=
 =?us-ascii?Q?YhXYSUGNajQPNYVtRR08zrLjTUVko/urD48IEffUkSvquKheh8OvS2GSx+Nv?=
 =?us-ascii?Q?bovphGgYAOvVMeX3ggm5MGz/M8zO2Ss65oGa0Pkh8/hE90GyQcTUJy2u7tbu?=
 =?us-ascii?Q?+4Zx+wZU4BZGAXEj2uLu3x6tkCk0ZGLXiPo9/9Oiek4vohuMJaw4Kn+JtREl?=
 =?us-ascii?Q?qpealGRGDNfhDwSYuSJc3nlCtjdYnmw2FnZLOkXJvRXhWlIqLPAs5fJiYbPR?=
 =?us-ascii?Q?vuimsr27VJevwEQrei0RHJyyPWYHtsrvIHLiuz1qXWhBwfW+TC75UA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PRm8EvIL2y5Ue8AJPV+EY8DwXRCCnV02C+p1hO9c9sHYgtgE8hhZcG2ZbNhA?=
 =?us-ascii?Q?6r95mjqXjrOaObVvpCmfgYz5g/AGRBlZsxRpMnk5EfAq/tkkpDdP5wYnJyXQ?=
 =?us-ascii?Q?iDq9BBPyd0VefwDCbVFWABmDBQmFcwLX2G0AF2bSaeF4a+W7F13v4yYA7ZTz?=
 =?us-ascii?Q?uFqC/PC8sNXxizBru19w5yAdoL22L/4I4ObuGrfsO+cIAvx9U8bizkPO9hu/?=
 =?us-ascii?Q?JM4JKN6hRXY1w/kKVXZd3ONwpjEyU8QwkGVSDVCqNQB3C4+9+CZnDfFSFtW4?=
 =?us-ascii?Q?3MqRL8nfhn73xT39VaYjqKYJf5YWCZ8dQQneqW+/z5Cl6bEyPKmnxu5cEh1Y?=
 =?us-ascii?Q?LzWCR5ibWYzkKjlh76EaSe2dicv+FbUOqpf2ngInILrAHem6SFQ6cjkEtkp7?=
 =?us-ascii?Q?Sk008rSsnKgNg8bj99li+ojfPTkV4D2blQg6ElwHDsnvN7p3HpMOI5grakqN?=
 =?us-ascii?Q?oODQS1qJNJxXzpiGYWq9X56AzhNIelx0gFc6bYVdCKNCK86ulpMtKoUduhwY?=
 =?us-ascii?Q?RSN0xddi4GXnevDTM/MtGQWfDjMUBOLKdlV/6dRBrulesszyve8NkSZ3ySgZ?=
 =?us-ascii?Q?gsx3+CkBeOtCTIxdE/gR7qTeTUo+h+AeMOk8iGOdUGczEMdtf4P5yK87bHUZ?=
 =?us-ascii?Q?NVZX9/sIRhBCNXkcZExRU5UGXdkUJWtEFTudS6nkKRcdpdFurxnhWuZ7hPYT?=
 =?us-ascii?Q?sBG/VtLdao13THR+/XZ0iG+JqQ3I+vnQr+Up/+/+ZPIXppdenvpJtPfYS77r?=
 =?us-ascii?Q?4MW3hSbcZIuGdTz+N3VUjAZnj06SQMDNd/IzTwsC6ew1WkmdS5lkHOeBgMmV?=
 =?us-ascii?Q?ZX0quFxSK0sW4/hun8e1kMfGNjiTovL7dBUPROWaKDcPO29c9XMO5+gCdpg0?=
 =?us-ascii?Q?Fi+3yQNE2nlq9FeASyTM1akd61tHrbUKyUewTq+EUtLS1B0mZ31I/DuXFF4I?=
 =?us-ascii?Q?tahsjeEQBcDAKZXACpjpqOuUVvA42rIXAbB1zsavW194KU+PrS98+aDLM9J4?=
 =?us-ascii?Q?6rkbJ8OOwLT//5GzFO8XU8HTwvvC/Zb/Gz2kXebF6jwtvfTFY6YH73q9YOHc?=
 =?us-ascii?Q?P77uWk92n1KukCeWr/kshak/PEbNvfougU7GAY/sa1GBl95LNaIGpMi4Bodx?=
 =?us-ascii?Q?WzKKLJBaNd7z094nlOybP4DdEG2sbgL3u83PbEcZbM8v0APOLzctMQuQHvsR?=
 =?us-ascii?Q?CLZD97y0DI4fb7noCbvDZxJoRGEDvy0SnnTJJASxGhwKv3d6cRkCKUDKHJxM?=
 =?us-ascii?Q?CW5+GA+dFBZ/Uc7k1HaPAOxgjgbexjI4hLc2i9xmR3CbENlEdPQukIpSymLJ?=
 =?us-ascii?Q?fm9tvK+ixRqK6UVzecPoLU8rAKOUoOw1zvIKJXkcfEXvUOMcjdL5adQY7xAb?=
 =?us-ascii?Q?uryw8wYqgAxdzEbuCE4h4vjM5WWvzXD8r2hNfs0HcBztSJAP0OdvLRBzpV1+?=
 =?us-ascii?Q?dtTd8JFM6LOGLoOE1ERW1a6b5V4FPkOW62ghZ7NNokXPe6M0rve6V7/WgVTq?=
 =?us-ascii?Q?w5osmXG2ebNAZvDw2uXMzdDmPMx9+SzWqnIp8Drng15ZgYLadZXORtQT81uj?=
 =?us-ascii?Q?ZtaxcV5lhflbthr/KUApADTTc3AR4kZgEE6pAf/TGh6wFYqdln533W/iHKwP?=
 =?us-ascii?Q?D1hBfFzO0rQa8wzzuREzoffHeH1CjLVhnTkKDmBbc+CCdv+tpgygd2YDUVNb?=
 =?us-ascii?Q?zHEze8iR6mdJ3ODd9ddHeLu7s/k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46702d0f-474f-4af4-d4c3-08dddf001665
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 09:09:22.4670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HLF5RCJkgYZHi0vK44PcDpUezVxSQVHJP62296TU6Ku4Sp9iSgoEmJdaChQKgJ5dbTyBp7P1CT6sC3SIHble9yBvXBpTzvy/mMUsNULt7d3926vnfD+w/jL7d8hA185W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9206
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 11/12] drm/i915/panel: Refactor helper to get highest fix=
ed
> mode
>=20
> Refactor intel_panel_highest_mode() to return the fixed mode with the
> highest pixel clock, removing the fallback to the adjusted mode. This mak=
es the
> function semantics clearer and better suited for future use cases where
> fallback is not desirable.
>=20
> Update the caller in intel_dp_mode_clock() to handle the NULL case explic=
itly
> by falling back to the adjusted mode's crtc_clock. This also addresses th=
e
> existing FIXME comment about ambiguity between clock and crtc_clock, by
> using mode->clock for fixed modes and mode->crtc_clock for adjusted modes=
.
>=20
> v2: Avoid introducing a new function and refactor existing one instead.
> (Jani).
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 14 +++++++++-----
>  drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++------
> drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
>  3 files changed, 15 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0c2bec1fbe42..2fa80b2750f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1759,11 +1759,15 @@ static int intel_dp_mode_clock(const struct
> intel_crtc_state *crtc_state,
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>=20
> -	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
> -	if (has_seamless_m_n(connector))
> -		return intel_panel_highest_mode(connector,
> adjusted_mode)->clock;
> -	else
> -		return adjusted_mode->crtc_clock;
> +	if (has_seamless_m_n(connector)) {
> +		const struct drm_display_mode *highest_mode;
> +
> +		highest_mode =3D intel_panel_highest_mode(connector);
> +		if (highest_mode)
> +			return highest_mode->clock;
> +	}
> +
> +	return adjusted_mode->crtc_clock;
>  }
>=20
>  /* Optimize link config in order: max bpp, min clock, min lanes */ diff =
--git
> a/drivers/gpu/drm/i915/display/intel_panel.c
> b/drivers/gpu/drm/i915/display/intel_panel.c
> index 2a20aaaaac39..ac0f04073ecb 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -144,18 +144,17 @@ intel_panel_downclock_mode(struct
> intel_connector *connector,  }
>=20
>  const struct drm_display_mode *
> -intel_panel_highest_mode(struct intel_connector *connector,
> -			 const struct drm_display_mode *adjusted_mode)
> +intel_panel_highest_mode(struct intel_connector *connector)
>  {
> -	const struct drm_display_mode *fixed_mode, *best_mode =3D
> adjusted_mode;
> +	const struct drm_display_mode *fixed_mode, *highest_mode =3D NULL;
>=20
>  	/* pick the fixed_mode that has the highest clock */
>  	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes,
> head) {
> -		if (fixed_mode->clock > best_mode->clock)
> -			best_mode =3D fixed_mode;
> +		if (!highest_mode || fixed_mode->clock > highest_mode-
> >clock)
> +			highest_mode =3D fixed_mode;
>  	}
>=20
> -	return best_mode;
> +	return highest_mode;
>  }
>=20
>  int intel_panel_get_modes(struct intel_connector *connector) diff --git
> a/drivers/gpu/drm/i915/display/intel_panel.h
> b/drivers/gpu/drm/i915/display/intel_panel.h
> index 56a6412cf0fb..8a17600e46a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -37,8 +37,7 @@ const struct drm_display_mode *
> intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
> const struct drm_display_mode * -intel_panel_highest_mode(struct
> intel_connector *connector,
> -			 const struct drm_display_mode *adjusted_mode);
> +intel_panel_highest_mode(struct intel_connector *connector);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  int intel_panel_get_modes(struct intel_connector *connector);  enum
> drrs_type intel_panel_drrs_type(struct intel_connector *connector);  enum
> drm_mode_status
> --
> 2.45.2

