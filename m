Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A626C4515C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 07:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A527110E177;
	Mon, 10 Nov 2025 06:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/S3vEaS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E55210E049;
 Mon, 10 Nov 2025 06:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762756401; x=1794292401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OczgDzscdl54HY+QjZ/XpB4tkwC0kg5mJMa5fmItlTs=;
 b=d/S3vEaSva9piFaXFRtw5YYsek4cz4rMX9eJ/xKIv3utQYaPeOl+WxWY
 ThYcmbrrpEX1/aefBuaQ9Bf2D85odD9iy1mldNlqKJq/R7j/WIhOwxf80
 Ey+u4QnkQG3/35+rDKlpqVjPRjrDhe2vODnZIzExas7edTLqXaX4iAtgH
 ddDRddkbhAb4L7+5jnj+1PQofk/6uw/GPYxJdrdwTBdqDmgdjkC8ggxV6
 Yw4IiEKLipHthTf8hyxs/wMlY44XG0t6MLqudvvni1au9usVoDAzwunfI
 +bojmXL40Wwawi3xhjj7r/JNF18WdzZlmzQD4R9CR9g6qh/qJkkhT1O0V w==;
X-CSE-ConnectionGUID: KF3B7yXKTbSBCL5bfyaBKw==
X-CSE-MsgGUID: IXvtyhpSQ4m9iyDMheB9lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="75096936"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="75096936"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 22:33:21 -0800
X-CSE-ConnectionGUID: y8SiA8qmRf6zJ6BCo0RCCA==
X-CSE-MsgGUID: F9ocAEx6RxCWil0j/YfoTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="188754628"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 22:33:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 22:33:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 9 Nov 2025 22:33:17 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 22:32:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vS3oRzD77D6QdrWRNoHLpD3+9cXC5+a3GnD9ACRDgn0M3ROf//QKQnbWdWTZ2mnPYtPgpvy8yF6OfJ1/2WwsxZWrT3zGTKVqPxa0UEEINhvBWYC3hmruaea6dYgylfgGPsEaYAq/x8m2Pyln7Y9ne1TpvfG6UWDoZEhD2iPmxeAWsY1zEZoCvjFNn6+JmH2sDaS/shrkHLOrLAncPy/Vit+WtQIe2SnLk8+5c99Xnz9+OYSfZz64KFerMpEzoXslpDKvUm2kegAFOkjjTmjsIX/Ic0V42Fs15CEYDhN+641BjB1P4SzEX7+Ef9BKWBwb1gq+1RNRn74nAeONYgKuHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ql4HdNxiLIcp4PdjzRdgPM0vAG3Za5GzQuD8TmRAGJE=;
 b=LrlZSiGwY7q34QGtpUJPUz6h4qeHaW7/coT4XKU3efcUkeq+sxX6s5keblbGHX9cJs6YUfBo+L0DpOU9RRCxpvxE2PhqxsryWRW3VpXzwmFH8qGyqteWRmMogfVKv+kPCuCczWSNj3kCY1xUc2wCU/e3OW6ul8fUlOoW877MG9st08wRF7kpnqgXUppv7TIjvt86kDVUOptOzAfPBEeF0E+HNovwrwUVoV9bkcyuwapJuzgXQen3cM0b0ZzfdVojcVlSuTdHJ+iK01qnyWuEhYV7KgSHLcgHadHHePx54FZMQUBGVh8UtEd8IYrM58Bb9W9s4uM3EBzC28yNWe9mFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8714.namprd11.prod.outlook.com
 (2603:10b6:0:b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 06:32:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 06:32:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Topic: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Index: AQHcTocarcMzsDkLTkadoiOVPj9787TlfA+AgAAPX2CAABWLAIAAAd8AgADwS+CAAGMOAIAEhArA
Date: Mon, 10 Nov 2025 06:32:24 +0000
Message-ID: <DM3PPF208195D8D98BCB59395ED68120A45E3CEA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
 <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aQyewv447ln68vnL@intel.com>
 <46ab856eab5fec27a57ce70fd4c6f454c580432f@intel.com>
 <DM3PPF208195D8D76AD8ACA3763500F851BE3C3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <cc69891e6b0f54df37572a595ba43e4af702bd1c@intel.com>
In-Reply-To: <cc69891e6b0f54df37572a595ba43e4af702bd1c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: 02c48593-f204-4a6c-46b1-08de2022e96c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?cZ9FY3BVOVImFCOKGNDelXLO9Nc3vmSc6FjaAyW4YhMYkyL0pGjfQ8sLk1?=
 =?iso-8859-1?Q?6V7QHCz915VvkccweFYI5elzlnHGYr8dDAQmpKjX6A7CB//NybNCjQn8Wp?=
 =?iso-8859-1?Q?1twPet72hXb2jaD0b3ybHWLWlgFJ8BAyVdcB0MN2JhKGIaU52qPDhaR0gC?=
 =?iso-8859-1?Q?HZZ/X/dd+JC/mpumjI079q2qem7bvB+aBE71joUfPHRRZ5fXGO2/GGDgWg?=
 =?iso-8859-1?Q?BEGIibrpQJ6brPrXSRj7MHS+9xLvEcBwnuljBFl3auT2OFVIbC/1EKy8gw?=
 =?iso-8859-1?Q?6P+vy+V36eCWtShjv6VqZkH1MUAfe1UVb+ZYNKR2q2hoN1neptWuocHOHo?=
 =?iso-8859-1?Q?8cdJH5ODfFMghom+pgIfmJOwSM9GUmPI5dhQpkSZmqURD8abAMSJBsnWmT?=
 =?iso-8859-1?Q?6t5MZNsf2ThzZsU8zlj+Z1h7FPnZq7lTTVUYrW6qSp2pYNbAGu1ztjDHRy?=
 =?iso-8859-1?Q?Ek43j9B/yD82wlXBFwWiYWAMIB63saOd2QiL3BxBDSo8ZcEa3y6JG25XJO?=
 =?iso-8859-1?Q?QYmF6RtyZbfQIHLSgPIhC31BlBPnzVVAINcMfJRWxQjy3Yixekh66GCcgF?=
 =?iso-8859-1?Q?iEVx5kbFKJjakNARvqguXrcpV0XazxjvMe3PVjo1IPgXGh7QHEoipbsxmY?=
 =?iso-8859-1?Q?SeTPkn3Ot2PYoAVYL0GD5XpVxBhF6JCNfILe+BPRsvMIaKC8JoA0/ehFNH?=
 =?iso-8859-1?Q?ONlDvzuKFDxu5GYCS1q7ElIrKVj6UTin1k5tzaFZ0reQJGCCdw4w95YGdd?=
 =?iso-8859-1?Q?IKc3lcO7EUt8yDFFgznWiFLVOV/agAq+onDO1qs2eufVXtP7ExIhPUXA0E?=
 =?iso-8859-1?Q?2WJ3KFx76ICdc1NUS/0boLU3vlBujhfgtJxK9WFnSRNkHlVhPXM/yFB5j1?=
 =?iso-8859-1?Q?UPfceYHJW5w3CeAdqUGaKbU4rzrvH7Ql4uuhn3OdZaW37QaffcPOJuUA5M?=
 =?iso-8859-1?Q?mvqNyszuS1x4GCUlAI6gSrzks+cNAKq7HJmEXExhMcDXLKj0RWqyH4gHHl?=
 =?iso-8859-1?Q?sTAJV/7GiKNnjR3+raVAl8uJYfIeUQvfJN0Ldmdy7jjJKN5LYr7ohY2K88?=
 =?iso-8859-1?Q?Hiyy2sIW+3GeXp4+LSxQnZNE/+fUw2bEwWaDmJ7Ohxbtyqo50Fgsu4XJM+?=
 =?iso-8859-1?Q?0Rxc3mk1jhg4+iNOAZ/vDH3Q2TnVY0u8NGBR8mruBMKPXxDInCJuabC1ro?=
 =?iso-8859-1?Q?/EGoQdt3YZcGzYz2ppsqQqO/Oz2gDVZ/BmNAVbkyX1Trp9ir1ChPU1ULoP?=
 =?iso-8859-1?Q?HqiOVdwOOMbgKJOyUNoVieED0BG2xxI3xnf09c2v9HPjn15z/W3GLtnhNf?=
 =?iso-8859-1?Q?IbyGwv/C+e8MN2daSdYKSFI6TuhOLVGhVIpR8uYAhTfKUA9CqlR6X7T/b9?=
 =?iso-8859-1?Q?Sk0JmBwWeiZtVQJSP0Scjb4MzZf7FUl1oKkX3zDPu6Pc6xIW27UzJIKsMw?=
 =?iso-8859-1?Q?GDk4hUuTUqpKGE4iSdOIXt7yuw4cq2syPWlMAIKmtzsFWtF8fIvPHvUQ70?=
 =?iso-8859-1?Q?b5ufwuFUb+nx+rlYDd3pYRcdq3pnFe+nJhz6DGWGAhlmCC7OV+uXW3PCBJ?=
 =?iso-8859-1?Q?0vPLaIDTKmt4dTUryxIE+guRO6ve?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4X4sU0C0NDJtBIg61SGCbxhDFOH7j3ui7gNk9fzaZVBZ24APSOt3WKU+y6?=
 =?iso-8859-1?Q?E91cX0QkFpoO3vSyvfF/3ui507RR3WAvjYmv5qbjCr9og+ZOk7tkO692Ds?=
 =?iso-8859-1?Q?xBYwtNz7T+0+qpyursl36G4mOMDr5lya1ArichJtZRXRIcbgp9RaCqIr3G?=
 =?iso-8859-1?Q?wC8zNMYusp71r3rRznsZvHRbfnDES3j9BeD7axkYeLCfsZsDw453Pi5Y/K?=
 =?iso-8859-1?Q?nLVBaDdZai0KhXRN77RaW8v5usIQS7d27u4I/7hVsQo2v2U3Cv8MOmXbPS?=
 =?iso-8859-1?Q?bXgoHZJi99CdtKna7px5NWQBElsSCbJzoHJl/W7nWyZO3B1Mq6cINBtGwR?=
 =?iso-8859-1?Q?MeEf539D+JxCrgVXpP8XY0kb28kKxF8CjS4toRwCR35d5XeQ7/YdH3nhHy?=
 =?iso-8859-1?Q?5J8k/DIU8eqsVw/RYVAmmmkaYNqPO1n6hrY7ix6vEk4q35/lDE7YBtlwv9?=
 =?iso-8859-1?Q?3ScTGNIaA7qxo/2MlkhTN/GIps6/1B4P+6moA451nnWHN7qTXTlHaDZDDe?=
 =?iso-8859-1?Q?jvzahH6SP/sqdeaOALtfXO292yleESbS/SMbvRGuaHhccxGoEvWVWplHJy?=
 =?iso-8859-1?Q?uTpjN0Gw2VFX+J8SpYk6wn9VbgJ9V19MDnDe4Ur9F3WBsZVv6dbBRvSf8b?=
 =?iso-8859-1?Q?PieCRLDF3VmbYw46VeVn/LcjE3EiN04BO0dgfvbI2205B7Qkw5rkF7wA0/?=
 =?iso-8859-1?Q?VDthg3TI6VqKCRtLYjMkFLXKNa6gtslEnEq7bWiwchOcHVoB4t3iV2avlc?=
 =?iso-8859-1?Q?hc8+/y4gI+Yp2k/eX70yKN9vSz5wltUD7kQJFiR10XpbM7SJaPootRgy70?=
 =?iso-8859-1?Q?G9xiqdZgLCROoCys7Ot7OtVELM4rEzHKVUXbazJU+8ysvNfcArKCC5I9SA?=
 =?iso-8859-1?Q?LycEsxN8IjxwuxvLMLHmXZJHvZNJcJKby5SmBnjpnIwyMrOV7XBt61Fc9s?=
 =?iso-8859-1?Q?gpgYge8JvZnHxpD1duqr/6WPFmzOt6xFSN+cSLP7CieK/PnSOxddXN502M?=
 =?iso-8859-1?Q?pGLI7LkVZ9QTACwIlzcQE+rfbw9pToJE3xTGQT1R9pc95vv3QQSH5AjcRj?=
 =?iso-8859-1?Q?vdViqsFvBzJPfKgdMwV89kH7ImvJOmecpixMnXZoVq+5ohAjY5bOyUl4+C?=
 =?iso-8859-1?Q?5z+GIswT/5CXXmXvkEURgAa8YgcxWdiyrwdgLEXq4EHxzsy06ZX9aOYEs+?=
 =?iso-8859-1?Q?bwYXm/xL2Zazm85bcoBrrpFy4BO9kkgH8uhQh0nc1IjhJkS9fnYtLAw4ii?=
 =?iso-8859-1?Q?rziPMUwUatUAJgRDg6dlq1H3aCRAUH0ATf1wiDcheTJmvgjxv6Yos96Q6t?=
 =?iso-8859-1?Q?rR66iQshO/2IFPgQrBbRC2FJr91DB/JPMYhvmh8xnN/2Iv6g5T1loWnHWC?=
 =?iso-8859-1?Q?pnkmBJLHJuiQqKiYyhHn/9gr51kMLvXSCHwIexsgalNGi3Tkj5uDwfwpXP?=
 =?iso-8859-1?Q?i2c4J93LKWSjPKkpmDmOqZkwqzXnCCFI6XT6YkulTEGZ6K2IZlFfwpWa4U?=
 =?iso-8859-1?Q?vfJbioVC3+ZTVoEIMj+nlNu4xEjvcn70qKnC2duKNEDmiVpkxjy4hira3f?=
 =?iso-8859-1?Q?uvyNOi4A0qu3MGizNTolhSMmRP4LnBzIhTfdzyzmKUSltPxnNhDj39Ve+L?=
 =?iso-8859-1?Q?za5qJtmi42SOAG5YV/UEYBBuWB9Sn4dhPB?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c48593-f204-4a6c-46b1-08de2022e96c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2025 06:32:24.9961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/yY34A2CdhCrZ141OGsNacO4U618PzyS0Mz+gAP4o2TMqkvFIIOB25WV9/N3rxjz6b9RSwffNEYQOud3uKdFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
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

> Subject: RE: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
>=20
> On Fri, 07 Nov 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> > Since you have some idea why these magic numbers were chosen please
> >> > redo all of these, and make sure to:
> >> > - don't use intel_de_wait_custom() unless absolutely necessary
> >> > - if you need to use intel_de_wait_custom() then either
> >> >   use the default '2,<whatever ms>' or '<whatever us>,0' timeouts
> >> > - document all the used timeouts. This is especially important
> >> >   when they are not directly specified in bspec
> >>
> >> Yeah, should be intel_de_wait_for_{set,clear}() then probably.
> >>
> >> We should probably change all of those from ms to us units to make
> >> them more generally useful also for shorter waits.
> >
> > Sure let me take care of the lt phy and cx0 phy stuff in a separate
> > series then
>=20
> This is what Ville followed up with [1].
>=20
> BR,
> Jani.
>=20
>=20
> [1] https://lore.kernel.org/r/20251106152049.21115-1-
> ville.syrjala@linux.intel.com

Yes saw this,
Shouldn't cause any issue the way it is done now.

Regards,
Suraj Kandpal

>=20
>=20
> --
> Jani Nikula, Intel
