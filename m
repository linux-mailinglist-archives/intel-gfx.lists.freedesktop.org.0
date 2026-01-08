Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40867D01EE8
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 10:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C64D10E31C;
	Thu,  8 Jan 2026 09:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJVP9HU2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70B010E31C;
 Thu,  8 Jan 2026 09:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767865815; x=1799401815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cohwHpa0/3J3cub+Bd8gcHhaaWm5mPStgmJ4rO1qtOw=;
 b=LJVP9HU2G8LYAGTupOOceOUJxeAv4QdmR0WvdXUHZe+ISIn6PgoJLNTR
 HWC9+ISCYbGkPKwvXw9CfBdz9VXXfhtRAvzXfzvb464GGzHX/Nm0ng+AV
 CnYvm6SolT42Hv6yzbIyZHpgJsaNe09AEiCMTO//wahNzSYCSifrhwlMo
 SWQIGYJRK76Y7V73BKCqoStNHLT5Q+LaxJ73HVj8jDK9Af4G3D9z8LGBo
 TmGeg19kGWHAt87OH1s+I+Xq4Mt/TcnTFBZviLCNxIovDMvvh+YGhEeQJ
 6rfupoMy91okog39m3epMl1w/7ZUWeVQTfZzh981z6VJ9uOPRFXpMuBcj Q==;
X-CSE-ConnectionGUID: 1OUysEbtRjepIZ1mx2QimA==
X-CSE-MsgGUID: 4Tc59XQ0RDuAuByNdAIIFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="80604735"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80604735"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:50:14 -0800
X-CSE-ConnectionGUID: 5R31XJeOSPaMc/rZCChPDQ==
X-CSE-MsgGUID: mEC7V5QTQqyrISe2YqBlDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="202947729"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:50:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 01:50:13 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 01:50:13 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 01:50:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bihXNEIlg9cPo849f/UDjbml11+QovXTeyRENtTJbFIgJep9gimD1mGmpPx6P+FARpwQ7Lyb3eHbJfzO7ixhvup44xyWmveirH6aO60/YOLSAIdHHEhYhBnPbrIfA+aiSy1A9q6MNHXuqyq81+NhtgklPWZEE59hKiokYt15NGfVjFedmv8Cn1ADtWbwkGVLLC8K0Yqk+J5YVZCD7TiHjJBvY9IsM2sZeBNP7PjJ8C3zT9aRN+BJWO+3lPwVxfWTqOtOf+58OW9iXXaiUxsoW1+i7ka9uOTboMbyL25YuizHO40srLjaVLG4/IY2rcW7f/+23b5eCGyKoZs0mJga3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWuQfPUPrETqX+4gI2ACqRbl93EAx9Sz2roRTAr5H5M=;
 b=b6dQ3Z56OUuyuVnoHSPGQRHYTbR1mpfKyLo632fIZAd4xnHJDQfSwMBvUjYWit6ufIyyPr8eB9W6wFPXxAbe5nyIBjdFwwQCyyuNyOI5KbcrIPk1P3uXvH5B+c+Yrk7woWqk0C9PA4po7JgfBR1HarkS+o8Ygc3w1L5p829pVR9IFQPA4TMmbtCMAeDvu0PyUkRl1yaYHnSTFecySLHDqVt5koTIRR040AZi8q38Ui3/9AC6UfgQdfo7+mSc9pfHF9KDUOA4wMc+QZ9jcoMHBbkt585E1rYDlESQ/8e2LhbsBHYF8FeegOGrumZgbIo4+hJDauUqY65bAPZaC2FkNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.1; Thu, 8 Jan
 2026 09:50:11 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 09:50:11 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHceK3SuR+QcATYbk6pSKMPsoMX/bVE5l9wgAMng4CAAAijcA==
Date: Thu, 8 Jan 2026 09:50:11 +0000
Message-ID: <IA0PR11MB7307F5846C72FF8BD90CAA48BA85A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20251229095913.57790-1-animesh.manna@intel.com>
 <IA0PR11MB7307A5CA36737D9D10F88D7EBA87A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <DS0PR11MB80496ADFD5A88BA56EB8220AF985A@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB80496ADFD5A88BA56EB8220AF985A@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA0PR11MB4734:EE_
x-ms-office365-filtering-correlation-id: e1bfaa5f-55d7-40d1-14ea-08de4e9b50c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+PiKrMj2AmNEkxVm8sttIDMqa77MF2YL3uS5VyKpKmCd4giN/BJbxOGWL+Fm?=
 =?us-ascii?Q?5XW2M5kAZ/zTyqIvDgsZhhrzrpivUTkyKmxvE7ZUSAuu9guZk9zF+UA8qW9d?=
 =?us-ascii?Q?NgP6yLkjddeD4RFgY/8503uYlhAiNYasqqeffs4BqzmMtZcD6ct3BAzPCraa?=
 =?us-ascii?Q?Drz2rNcG8n7iNH2RaEyg3/d6BHsq6ciQ5I6Q47MUcG//XBYPAfK3O70mQ4Rz?=
 =?us-ascii?Q?Ecm2iUzq9a7oIlmzoeyLRj3vnHRnlNOx695EG5aXkxUinyMgjafpFbBBbRHS?=
 =?us-ascii?Q?IBGCmYbHW9XICkS83XVqEquCg6d83OnqnnvuSbCJXeVgFWVOj0XZT6XH/x+L?=
 =?us-ascii?Q?W0LDlBrKw+5B52P1wsCyy3FxY0EsnK5PRJ/iwdUyZdC9eIyLv/zEGklEJSEF?=
 =?us-ascii?Q?sQUrLJFruJw1QxwHhThhhP0g6Ja0nCtojp1YMt9tETK2WLHnBOF9Z3s1MlDr?=
 =?us-ascii?Q?S0UIP5fhWAwMK7gjSS1s+MxbYHz78X88JPYEEtf3psaqxOBwxfVKnQ7MVII+?=
 =?us-ascii?Q?XkNXihTAUQKpFXPL/1a/TcXLQ+P6B+ET+PohUO6k7cRwUCzh1z1IIcoCzwrk?=
 =?us-ascii?Q?EP/fifww6RxThG63Gmpigmk+RqtWs3Q4b8xHzAoj4M7pF+2C6GEFJ1nY642+?=
 =?us-ascii?Q?imiNpYPhkncKBD586cwUz41FmoqAEu7vNjgg0+91nYH2rDeqapWtJGS1HBII?=
 =?us-ascii?Q?C/QvguQEtwx3oqleg59lFADdRbwJ6dDuOm6o8DLO2mXCGUVwMRfm9jKV4K+R?=
 =?us-ascii?Q?OspZSwoIggGbm8GZLch54gDrtSG+VEic1rgHRCGNT+/YieXS8eTeQeV84s8a?=
 =?us-ascii?Q?G8nFov5c/T1LL4gNNgzQszn04Xr268hxHKY8GCSNnsNH2jRNbZPtK2W1L3Zv?=
 =?us-ascii?Q?Ut+l869WUtC/qufFRA0tVT1fcQpB1KN0A6dozFsFCSxOMuYDx/AgR4iePcpV?=
 =?us-ascii?Q?TsyMGKi5z+PnPmZFSa3A9cb67Z7vH0KrQ/ZgQbQTpYJ/qN9FM71ChWTq2Tbf?=
 =?us-ascii?Q?/OHZFqFLrrV2rT3uwNeeaXOwyQ1T/CCxjEs0043h26J3AaIKSTNhKunrXflH?=
 =?us-ascii?Q?8yg/Ej74A98Z73LgQKxW5jMAnGqbGe+H8DqW7DQD7JP6eIdBpSbdc34m32ww?=
 =?us-ascii?Q?q5LJTOJ1xwRrbY0R65bZsI9ZLD7dmG4sN81TYenf6ivl3NPibEDQde+kv8VW?=
 =?us-ascii?Q?/T4CkH0WmDB6ucIego+f14aJIqE2YBmhg/DlRxzFSUCixFMdsBj/L7fIKjyO?=
 =?us-ascii?Q?PoeBbzSCdlyMMHyj2TfbE+baIDLK09bg3jIm1fminiXLg8Pe4JS6V6b6zT5T?=
 =?us-ascii?Q?B6UMYFHIIa7AYJJi/q2N5WOAOJDu7ET3KbMOOye9iWA4XXELJUbxa3+3W3LX?=
 =?us-ascii?Q?5SlPb49fX/WtfR9/980Pz/EJlZgZ84xQ1iukxJ9rlWwWTwdIKhCdyUZzAknB?=
 =?us-ascii?Q?90gnaA8XEdbNZFgEvz6+wwZZtXSKORpSESLxB8SNbwn+c8VInybBCPAxloPJ?=
 =?us-ascii?Q?l9l1jZb+AajbCZuVEXA66DRElgPDz2/4ZJpr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UC+hfC0eABC3d1OTcRemUmOPV/4rz1LOxcj28E9D3f56pHGm5XDwlIk2ABG5?=
 =?us-ascii?Q?QN5LXkPGQFnIThPWi69bB9OJGba1v/b/xPGuBHa6iVP4a4ZDYGgOksQ0zzU0?=
 =?us-ascii?Q?JWDbCbLPD6/Oxq4wO/V8Ivah0k0nfBjS9An9pfsYfFPaUL02kHxai8SpjCgC?=
 =?us-ascii?Q?cF3R0b6NNDfd98L5LLiiT6tdXSupXa8ilRs+2uh4IQQ7yBhXEUiHeLd9XlMt?=
 =?us-ascii?Q?sWqZggFvxXi+HcrqFxNNdZbfNBkkhndm/R1J05jWsEMJo1KhsWHo+JcpPl1U?=
 =?us-ascii?Q?VOrtTPA/BJ+Y0UBqamyOzd+ewilmoEsJXz5hXQYxGqcH5Ht+MY+VYyEYkdHL?=
 =?us-ascii?Q?T8FMHrOCK/5d4nw0Prm44noYJQeON0G9boUtq7QX6ghguRTVveRPyd8E3FHR?=
 =?us-ascii?Q?SJdDAX3+TelAtV5/dW1F+kd1KNzr7TzOKm9GQ+01MTyq/kHsxoE9il7dhs0R?=
 =?us-ascii?Q?/reHQHVbh3xyDPBi5AtfrYJAzmmP9uXaZ4a+BfxWwuVShVbvGyQ+vKxBH8Ji?=
 =?us-ascii?Q?ZbOjnB/1MlPEjvnz7fBrAI2P5osBkk6aNX8lx0H8AfRctP71LQjhyjlf0BIM?=
 =?us-ascii?Q?TApTsanSl1APUJ9nJsPC4JQL2Diw7yB+46jRnpN2hq/qYV130b8W3xPPKgco?=
 =?us-ascii?Q?KB573CBDh9lLuYrngbTznXf63edSd+0M5BTOCE7Jtc2HxxFoUeBtTke5Kq3l?=
 =?us-ascii?Q?QtFg4mig786DB3QGVBtofDJo7NCNhoYLne+wkO8B0ySOYlT0y1O9ELS1NUHW?=
 =?us-ascii?Q?+yD1kWqVHwLrqE0yninmF6sbr2HGcewrctmeCsfy8Pbtnyg5cnso9gAQJ3XB?=
 =?us-ascii?Q?+0Ot+/ZkNhbQbSLECYOuhTD50g52LLuu3SBCFOuPyv3Y4ybKmLI4X9S1cd9k?=
 =?us-ascii?Q?lza0FfQydxkcZsVn8zH/QNXsSGENOgsLoH1PPw31mx+SsA+mVUmybvH9MGuZ?=
 =?us-ascii?Q?raT+TvhmkEe3het6DnQPHwx6OSzopbosEInPXRSMB5sFTWzpvTCBNxs8u+ER?=
 =?us-ascii?Q?KQmXRSRrq4tRDIsKVDxuMzqvkxC2UTwYJ602tShxmaLYHS9xKilbJhdBO1l0?=
 =?us-ascii?Q?5+nlz6sQliu6uWVmxFXNpVONxM2VmBiSxhugMFoLZxsww3GrvQHQSm/v7a8+?=
 =?us-ascii?Q?4COmmg0SZsqhFxact+NhJjuBAeMZ+qSwXarxc0xqTlTZjD6Wl5YTol/OZlPl?=
 =?us-ascii?Q?qNBvmeRKgd5wuk84R3XdZHBK3utQnFMuBwAx8D1mdIiOSenjSmanMOcfx/9K?=
 =?us-ascii?Q?FyqCGe0V3VKPeAphKu+G5L4dfV6yi8MKqNJpRgs6xWQrfQHX+ysiZ9c/2UF1?=
 =?us-ascii?Q?5VdQHSuxmKUkUxSOo4ldPpJR7GKj6oaeFUioyaq3HIT7wmZrred1DmWggB3Y?=
 =?us-ascii?Q?ngjOcxin3KlDn/EHdqjiLiFIO4KYex8iGadkkMpnLXyWHsq+d31UhQaxrCpc?=
 =?us-ascii?Q?r3FizRLMRB/qE3hORKuh9HnKm9QJVHNaX2RLtN/4YBK39JabYBIODt9bP+XP?=
 =?us-ascii?Q?h5uY3nCawvvcZuZdBgZDqV6PPZyxAqOItpKgC95kTnn80TaqUHkm7wIRhCbg?=
 =?us-ascii?Q?Bb43gpi/7L27ZjivctSL3eEKBj1puD6HZKho6emX0h/E5i0Eem6ZGiWxFzPh?=
 =?us-ascii?Q?tc//KDG2gCxoP1SpoBP1jlvHXVLY1QUqNjw+iz/0lGNxZU6ruiDv6j3kClku?=
 =?us-ascii?Q?QMhAOJH/lC41d59xWLMH5+P686xMwWZpGu1EwXtHRjKluWuwDkdxgJpeF1YG?=
 =?us-ascii?Q?DMWf1CcdzQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1bfaa5f-55d7-40d1-14ea-08de4e9b50c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 09:50:11.4623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VnwRHqZ8atjyhxuvlNF7H8WoXaEI5UJ77hqeq+lEk7Ijev3Llb3yOxpQyUNLWKH42VwRe1/wDh24nc5UhtOmyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, January 8, 2026 2:48 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization fo=
r
> DP2.0 tunneling
>=20
>=20
>=20
> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Tuesday, January 6, 2026 2:50 PM
> > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> > Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization
> > for
> > DP2.0 tunneling
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Animesh Manna
> > > Sent: Monday, December 29, 2025 3:29 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> > > <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> > > Subject: [PATCH v3] drm/i915/display: Panel Replay BW optimization
> > > for
> > > DP2.0 tunneling
> > >
> > > Unused bandwidth can be used by external display agents for Panel
> > > Replay enabled DP panel during idleness with link on. Enable source
> > > to replace dummy data from the display with data from another agent
> > > by programming TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> > >
> > > v2:
> > > - Enable pr bw optimization along with panel replay enable. [Jani]
> > >
> > > v3:
> > > - Write TRANS_DP2_CTL once for both bw optimization and panel replay
> > > enable. [Jani]
> > >
> > > Bspec: 68920
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 +++++++++++++++++=
--
> > >  2 files changed, 25 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > > index 9e0d853f4b61..b6fc249a9f09 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > > @@ -2051,6 +2051,7 @@
> > >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> > > _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
> > >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
> > >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> > > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
> > >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
> > >
> > >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 91f4ac86c7ad..4283455d58fb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -44,6 +44,7 @@
> > >  #include "intel_dmc.h"
> > >  #include "intel_dp.h"
> > >  #include "intel_dp_aux.h"
> > > +#include "intel_dp_tunnel.h"
> > >  #include "intel_dsb.h"
> > >  #include "intel_frontbuffer.h"
> > >  #include "intel_hdmi.h"
> > > @@ -1018,11 +1019,30 @@ static u8 frames_before_su_entry(struct
> > > intel_dp
> > > *intel_dp)
> > >  	return frames_before_su_entry;
> > >  }
> > >
> > > +static bool intel_psr_allow_pr_bw_optimization(struct intel_dp
> > > +*intel_dp) {
> > > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > > +	u8 val;
> > > +
> > > +	if (DISPLAY_VER(display) < 35)
> > > +		return false;
> > > +
> > > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> > > +		return false;
> > > +
> > > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> > > &val);
> > > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> > > +		return false;
> > > +
> > > +	return true;
> > > +}
> > > +
> > >  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)  {
> > >  	struct intel_display *display =3D to_intel_display(intel_dp);
> > >  	struct intel_psr *psr =3D &intel_dp->psr;
> > >  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> > > +	u32 dp2_ctl_val =3D TRANS_DP2_PANEL_REPLAY_ENABLE;
> > >
> > >  	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
> > >  		u32 val =3D psr->su_region_et_enabled ?
> > > @@ -1035,12 +1055,14 @@ static void dg2_activate_panel_replay(struct
> > > intel_dp *intel_dp)
> > >  			       val);
> > >  	}
> > >
> > > +	if (!intel_dp_is_edp(intel_dp) &&
> > > intel_psr_allow_pr_bw_optimization(intel_dp))
> > > +		dp2_ctl_val |=3D TRANS_DP2_PR_TUNNELING_ENABLE;
> > > +
> > >  	intel_de_rmw(display,
> > >  		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
> > >  		     0,
> > > ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
> > >
> > > -	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > > -		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> > > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > > +dp2_ctl_val);
> > Mask bit is 0.
>=20
> As we do not want to clear any bit from TRANS_DP2_CTL so passing 0 as 3rd
> parameter.
>=20
Apart from this patch looks good to me.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
