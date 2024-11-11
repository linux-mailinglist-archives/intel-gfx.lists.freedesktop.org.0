Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6509C401E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 15:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7657B10E4C5;
	Mon, 11 Nov 2024 14:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPa3EEup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BED10E4C5;
 Mon, 11 Nov 2024 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731333679; x=1762869679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8PLJbbA7x7gOX2vMP1MG8reXLjZ0DhFiEp1cdRd/89U=;
 b=GPa3EEupnngqvMjzedTkj7S3Aoc4Teae3sHlO5LCAd1zb+pQL0JSGBnH
 CXuLLCMfgz/jAk4Kfy6UdsHUUQ5dXcj+XCrd9r/91/NzFY4cacTO4dY+d
 AHUS+n4NtH8gBdswtek5xjZqz+YGpjZTrQ4j/RTVpcQDC98dGFDVKF7L/
 g+m+jQdz+8KpEwMDmHMtocteL1SLZYslfmLVp9rI84oNckbMvRAfINa2O
 +rbU5AVBxnFBfZ1pZsF0wOHveIjw2S3ooOBtutmBqD8RXHUVulpM5z1Iw
 jfSfAhwiTNfH6IJtkZ3AUKY6rpkh9fTCNVMliJF8yhk1oSljGnUF4SV0O Q==;
X-CSE-ConnectionGUID: NUWKJJ1ZS+GicXcAz2nm5w==
X-CSE-MsgGUID: vF5rxK4dQpCIY4Wy54+u3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31362392"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="31362392"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 06:01:16 -0800
X-CSE-ConnectionGUID: wZaRr4agR1eI8apv8GJN5A==
X-CSE-MsgGUID: Hv6dEI3qSeGnQMuugupkhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87083817"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 06:01:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 06:01:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 06:01:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 06:01:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kd8BXCrkUtLdChO3EOqlpRhqKXmeQNwqiyyLnO7AJYYjCAlF3rjk7v48d4qojIlG2msXOQX2X7e3ZA7/wJgFDI+Sr92jE39LOs+7M5fc1angy34jqubvNY2dD+UDhAGLBznrs8mV9DkNhHldKPWIBXVeW88jZJuwyUvC3IXiayBucKc3FD6FIUl9KcQS0z/9R8ayJsuCT1tj+hventomLGHsyjTRRoffsPxXZyoRBpaz5bbi3TPbslc7w5+8SRtyubc+ENqzY9QOLJVIyzcZyQJsMqkUOUd3iZZr4taZfVrkI9zYYMBqiuNkmrOAPrZJ188NmUP1j6TdX36EYNzQBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Gjy5RBcTnTo00VKGF7ICZthReJWWn+pQsYins6NcoE=;
 b=gJbtCAswNg+1W1yDvpvZM6DewLDRFtHsa6pdIsUHPCouE12jacvYTngTmjzVhgCKbOOmGtORQp+0kjjC7heNG+FJ9LCQCTkb4o2LsW790qlk0jvwpotddU7OwlIsXUPLaVis0Zy2ZJlpRaX+2XfEhrACMxxfsMa1/gDCL0jGl+HZgrv7/f1QmupbdUS5/mTyEyGIbPXD3Rf6+irV1A14HWgZMs7MdGeil5sfTcBBWE4iax1rQcJcnP6Avj+Vqpp1dyCLwqSBYHraCj6NC5BgkxhFK/n3SGks1spuL2/3BaBsalDh0lNt/3YScsCQbVgSBnKo7TvJP5mRivArh5qZ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ1PR11MB6178.namprd11.prod.outlook.com (2603:10b6:a03:45b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.26; Mon, 11 Nov
 2024 14:01:03 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8137.022; Mon, 11 Nov 2024
 14:01:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNDXolMtPIPanOkq4pyxtGqXyBbKyEhwAgAAGLIA=
Date: Mon, 11 Nov 2024 14:01:00 +0000
Message-ID: <SN7PR11MB6750CE7A8AD98B27E90E5C35E3582@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241111123259.1072534-1-suraj.kandpal@intel.com>
 <20241111123259.1072534-2-suraj.kandpal@intel.com>
 <IA1PR11MB634876AD3F1DF3AB3BA164F1B2582@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634876AD3F1DF3AB3BA164F1B2582@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ1PR11MB6178:EE_
x-ms-office365-filtering-correlation-id: 8d64666b-98c4-4680-0407-08dd025945d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wjJ7lSNPShkE2xAp+fc7NExqCB4tYnLu/8vjccywbQ36aFhwh/2L/uiHWIQH?=
 =?us-ascii?Q?Blpzf7VDan7+2dReEvSV3qpto/aeC+NH/iEfhSyrJUu490bThjDJr0WyRCuB?=
 =?us-ascii?Q?via2SD6znkfrWlnkHp4olkZ46sa3r49JZXaGqmt4LARbzZyGwxsPhTGVYTMs?=
 =?us-ascii?Q?5fary3EFX0QloVUmaiL3FUsEHRGQfi8KlwtJvGjr9KZD7kp6kLbf2MJrZT5g?=
 =?us-ascii?Q?fQ4QyGEWDiMelHmFF26Bdpo9h0dhpsjR8XgIOpHctIXYEnr8zTN9mDA+B3g/?=
 =?us-ascii?Q?D6GCgL0CyRmRNCHurSpW2zEugm4Bh4jtVMr2kjgRBM/ZMrfadDco3nwnVe4p?=
 =?us-ascii?Q?4UmaKKYolFV3DF3Bzy3403HrdHd2o6ItLRN9pY0CHwWOBMfumCaUhvo3tjHB?=
 =?us-ascii?Q?nwuQZHbzUtfTZ/OWg70exdgUNVG7hFLfBaWp14squvtRYeUFYvz438zPp5uP?=
 =?us-ascii?Q?LhLtD0jhc9pO7aypYfd9ZVGCzeEqaQsCOyCcobXCOslkbcdK//tUQlZJxYqk?=
 =?us-ascii?Q?qpS3JFod7Fi2Y7aYfCUwxtah3JwPKEuJo/D+BunOc4NgDeQpa+Eow/eluCB7?=
 =?us-ascii?Q?qlZ38Ny0vQFbdJurpY9HAOOt0j3sGst/lASaI6mm1e3gEVqcKFg3EsOGwPOK?=
 =?us-ascii?Q?its9KpviRm6KNYQRZ/8ow8rWLuDAQRD732yQnf32iFumL30z3rI9vbmfznM7?=
 =?us-ascii?Q?W2oS7iMdprS4ioozxPgA/VRRoG+XgbCtfByrNLRlsQXPYcNlHs/0U9PuU4tj?=
 =?us-ascii?Q?Lw5ra4Aq6FqwZZl8FdHK4GgXRBkLi0h3+EynSyL35WE/2Hfd7ImgDggaw4+o?=
 =?us-ascii?Q?xwiPeDCE8cAFnwT7Wku1sJ7jox8s0GwUr6QqyayO6wM2YdGlHWuX2ZOP4M6S?=
 =?us-ascii?Q?gNnm834ScVesHCTmeZwjCukf0FhztfYu1u6IajyRqs16nTq9lp0vL5yWth7C?=
 =?us-ascii?Q?0qtICvqoPJIxwWcTUbKAXxeEohIQnJdsz0JpXVN1SCoy/+3VXItGMM1vE5LD?=
 =?us-ascii?Q?FBvXj35aJPzoWFKe16XxxveHdhlI0v07gjOooWgOE2Gb3hruRAwuFtRMX6yl?=
 =?us-ascii?Q?AYFLd9Vxg/64qXHckGxK4iisKyWijWfwwsd6mfzuAUHw0T6rmeNqacKoZEfA?=
 =?us-ascii?Q?0MXmTXxR6d9ycJTr2pQ5QcE8NEkxE2UuIsebY1JqTjGvfn95QEwCfEYONhIF?=
 =?us-ascii?Q?2URCj9D7PB/k7PmGosuqgxSw3/GPUUPc5MwTjqSaOfG6WCdK5X3eB8iY4+OW?=
 =?us-ascii?Q?4LwEr0CjEevO4HztpKOHCcUsrOEf8fMr6A2uL5LvgJNyltVVHkV3kWb74mo0?=
 =?us-ascii?Q?GuyY8zvpwgK8Md1mkIfEli9OWgo40pWqcrjs8EYGSFaoNQkEeT+xygnFFPON?=
 =?us-ascii?Q?bllVCqY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FEnJFBY+eeaiYPkKrV5T1vAptOaOZHvhzaTYliNwEMV8J35IhSKqfk0ZqFig?=
 =?us-ascii?Q?p+c5s4jZkkctKGq061njJ1V3X9wKGMKpM21CZwc64vmCygg6Sv4+Swr23XZG?=
 =?us-ascii?Q?QIrw/nYCW338LrukKR5kuTYdkiRf7cM9ra9b2/vVCKZU3aAY4XYhbG3jdu6w?=
 =?us-ascii?Q?Nr0pDjSNSGh1JBNrX6Ddn/Ryda6DXkIBOQ2qTMiarQb1WygdTXYKVB5GqYyl?=
 =?us-ascii?Q?xUEuYnpp/afLPBSzpVykJ2UM7UdHqAR9V6hN/XPURLUVOGnnbd18uAt83K66?=
 =?us-ascii?Q?8f4L/lEMLE8W9YWDcJoNm0ruAJBO6TW/WkhbgG+pEjDjzzQ0Sj62yTuJkAqX?=
 =?us-ascii?Q?B7VMBxRsh7+NFle8U8ICpJYNs/jA5+FkrAC/wFQsEO1mfA86LnllBqE1OchF?=
 =?us-ascii?Q?fA32m9TMLwE6DAL1S5Sq8mU3gkmkUNK6XjFxHCFos/plBwt/05Wn3g6LiRtg?=
 =?us-ascii?Q?m/+cDAyz2qj9SRFOlyNR+vjtLvpW1bwpCCdZL8ffxZNEG15d3757zipurqel?=
 =?us-ascii?Q?j37OBWgt5+7a8gXX8oK/VqbgOjAEYAtvw/C5/fNOrePh3rSCZlF+U79pkT3Y?=
 =?us-ascii?Q?2MPgSk3LI4iae/PWByqlkO4lC/drvQYVMu0scRa51QDCFKdg6BjoNCXa8Uok?=
 =?us-ascii?Q?omQFpeBQi+y0hakTxTsZ+ms46gD+Oex+C6xSc6C4r8xazhh/WtbaBdJZm/FN?=
 =?us-ascii?Q?JXo1E+90xKd00CfZGGfXH5RUF1jdj9QtTbVfbvDtqqiv3VdqXN+84ipztjDn?=
 =?us-ascii?Q?bzNUe7/NeSb1OD193Ea6UlDQjLZ8II4a2NyNawSh6jR66JxizzbYcQuSrbtd?=
 =?us-ascii?Q?tJTzTpfT8S3fEzgjae8AyHM4gaRer/2OeBdU8gIjqb2UNMW9ebGPcl36BWKB?=
 =?us-ascii?Q?g3q+1iXQrHMo9UFGVr1xVIscu+yXN8rpAcpUcHG6/hLf4Hwp2J6GdMBdlPJE?=
 =?us-ascii?Q?33qKRdcmQh6PoMOLGolt7KAIsK8dQhX8YBxzdBKp2NCbKkMfsH7dxypi9G/7?=
 =?us-ascii?Q?gEh2cLHr2a2skuW4Cx8bjQ5ulQHWthBmj9mnvW8fFyD36cNcx2pbcVRy05tw?=
 =?us-ascii?Q?psllT8onLmP7mGvfaWrdmpTA333KBwAFXkQJ2t+5JxMWBm8/0X81aYWhwDbZ?=
 =?us-ascii?Q?r5f3d6GQ5442CYhhq/ed6bdtFj2R0tStAxO7VeecO9iSeHXxnwb+a5KUBnrZ?=
 =?us-ascii?Q?uroY3PrxuS7eh8SeW8FwkNc15hcYFEXVOYoBEKCo6vm/MecTcdPiGvx0pVl6?=
 =?us-ascii?Q?ywRqTsvTKKNrUNt9WgoAtRm+SnLv+iBZRoF/Sf2RMuLtodQPYsjhRex20PGH?=
 =?us-ascii?Q?Otukhp+SEAWn+hf3ebgj47SynEoEzDn0qXyUtSvHPCJaQJZ1mbqjFNxvy1+r?=
 =?us-ascii?Q?HW9EDBX1bu1G5Vm37xauddWh2nv9GMjwjA4Gqv1XDL/otILxrCg/bKeAsMq7?=
 =?us-ascii?Q?bd8HphMM8+Eh49iJAn+ZZcgm4tLX8nIKhVTm5Whmwupbha34u8GZi9CwsBzf?=
 =?us-ascii?Q?0YkeuIPvqUTdZ1hLu6EntZqqnYipnddX5klp33GZfl60aCFPdeqb0h8g/iw+?=
 =?us-ascii?Q?21P8p6P/bVwAzosfvuse07T4kfGZr4F4m4bmHWns?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d64666b-98c4-4680-0407-08dd025945d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 14:01:00.2705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R1zkX9ZXXLQTGM8lN37iWw48lrZWYvoLjeDiZPNjWHgQlAu1Ey+Go/PjispwuDVyBxky6ZYq5yEr20qBhyscow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6178
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Monday, November 11, 2024 6:56 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: RE: [PATCH 2/3] drm/i915/watermark: Modify latency programmed
> into PKG_C_LATENCY
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 11 November 2024 18:03
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 2/3] drm/i915/watermark: Modify latency programmed
> > into PKG_C_LATENCY
> >
> > Increase the latency programmed into PKG_C_LATENCY latency to be a
> > multiple of line time which is written into WM_LINETIME.
> >
> > --v2
> > -Fix commit subject line [Sai Teja]
> > -Use individual DISPLAY_VER checks instead of range [Sai Teja]
> > -Initialize max_linetime [Sai Teja]
> >
> > --v3
> > -take into account the scenario when adjusted_latency is 0 [Vinod]
> >
> > WA: 22020299601
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 26
> > ++++++++++++++------
> >  1 file changed, 19 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index a97e90ac643f..e061015a89b0 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct
> > intel_atomic_state *state,
> >   * Program PKG_C_LATENCY Added Wake Time =3D 0
> >   */
> >  static void
> > -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > enable_dpkgc)
> > +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> > +			  bool enable_dpkgc,
> > +			  u32 max_linetime)
> >  {
> > -	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > +	u32 adjusted_latency =3D LNL_PKG_C_LATENCY_MASK;
> >  	u32 clear =3D 0, val =3D 0;
> >  	u32 added_wake_time =3D 0;
> >
> > @@ -2858,15 +2860,22 @@ skl_program_dpkgc_latency(struct
> > drm_i915_private *i915, bool enable_dpkgc)
> >  		return;
> >
> >  	if (enable_dpkgc) {
> > -		max_latency =3D skl_watermark_max_latency(i915, 1);
> > -		if (max_latency =3D=3D 0)
> > -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > +		adjusted_latency =3D skl_watermark_max_latency(i915, 1);
> > +
> > +		/* Wa_22020299601 */
> > +		if ((DISPLAY_VER(i915) =3D=3D 20 || DISPLAY_VER(i915) =3D=3D 30) &&
> > +		    adjusted_latency !=3D 0)
> > +			adjusted_latency =3D max_linetime *
> > +				DIV_ROUND_UP(adjusted_latency,
> > max_linetime);
> > +		else
> > +			adjusted_latency =3D LNL_PKG_C_LATENCY_MASK;
>=20
> You are already initialized it on the first instance, and wrote a patch #=
1 to get
> rid of duplicate of initialization. But why again ?

The reason i added the first patch to remove the else block for enable dpkg=
c variable which tells us if it's
fixed refresh rate or not.
In the second patch we add that else block to make sure that the wa is not =
applied in cases adjusted latency is 0.
Also adjusted_latency =3D skl_watermark_max_latency(i915, 1);=20
Makes it so we will reassign adjusted latency which may become 0 too due to=
 which the above else block was added.

> Also any reason to move away from 'max_latency' to 'adjusted_latency' ?
> all I can read through your commit message is, you are making this latenc=
y as
> multiple of linetime, any adjustment we are making ?

Yes original value would have been the simple max latency now the new value=
 is linetime * ceil(max latency/linetime)
And if we are not taking the wa into picture we still program the max laten=
cy. Also the idea of keeping it adjusted latency
is that we write to the pkgc_latency register's Latency bits.
But we can rename it to latency if it seems confusing.

>=20
> > +
> >  		added_wake_time =3D DSB_EXE_TIME +
> >  			i915->display.sagv.block_time_us;
> >  	}
> >
> >  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> > -	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> > +	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK,
> > adjusted_latency);
>=20
> Also you can think of this combine with below line for simplification ?

Sure ill send this refactor as a separate patch.

Regards,
Suraj Kandpal
>=20
> >  	val |=3D REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> > added_wake_time);
> >
> >  	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> @@
> > -2879,6 +2888,7 @@ skl_compute_wm(struct intel_atomic_state *state)
> >  	struct intel_crtc_state __maybe_unused *new_crtc_state;
> >  	int ret, i;
> >  	bool enable_dpkgc =3D false;
> > +	u32 max_linetime =3D 0;
> >
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2908,9 +2918,11
> @@
> > skl_compute_wm(struct intel_atomic_state *state)
> >  		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> > ||
> >  		    !new_crtc_state->vrr.enable)
> >  			enable_dpkgc =3D true;
> > +
> > +		max_linetime =3D max(new_crtc_state->linetime,
> > max_linetime);
> >  	}
> >
> > -	skl_program_dpkgc_latency(to_i915(state->base.dev),
> > enable_dpkgc);
> > +	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc,
> > +max_linetime);
> >
> >  	skl_print_wm_changes(state);
> >
> > --
> > 2.34.1

