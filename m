Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63F7C8BE6D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 21:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E72010E113;
	Wed, 26 Nov 2025 20:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdqZUFdx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10CB10E008;
 Wed, 26 Nov 2025 20:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764189936; x=1795725936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=no/eE2dKYyFXH8aXoXqKuGy2bsI+WSn4cZwGVbUqVQg=;
 b=cdqZUFdxd5K+OEOtfLO5a6dP1cAbfhd5WYePXKYjcWmrT/5fbU94XO/v
 thP0gRP57dcGGVPzd4m9wXVQqtcSQeH9TVlI3fpKLCRb2JbV4l5wpmNt5
 hm5FMSV5zejTFKLELtGZJuqzbyKXzsykbjQOiaBTi5IGt17vdtPbfjo6x
 VGybNBGTGpXQbiARELO/XTR6XmF/PGC0w9l32IPV8UUBbj7bSmfLdQAZf
 XhhJw4cXevxnXPR95rnb4fb6rjDGDlzj22ikOx3k2T8YnFdfuW7HWu0bO
 y4x+rnO2P7Ejz8cZyZag154TbxxbUbhaeP8My4VWIhCCGAXojYuKAt1ox w==;
X-CSE-ConnectionGUID: z8klQFE2Sxe34BQp0XOEZw==
X-CSE-MsgGUID: rs/+rHoZSm6qs7nPGm3C+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="65422404"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="65422404"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 12:45:35 -0800
X-CSE-ConnectionGUID: +VfabGMBTz+pN0Sl9YWaMw==
X-CSE-MsgGUID: f0SY1PIqSaKbdRC6NQXMyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="193270398"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 12:45:34 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 12:45:33 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 12:45:33 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 12:45:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQNzOtFSZW2achKJKIspktEzEjzsaRPHV38abBH2c2sHOCfJ0HhEd+7rK9+sUTV7/TYZXCxv//T7w96W51FnI97kiNmZeBWdFB77NVNc0Mq5EaNlaG4hrJ/meBcdXcGO2tyFfEcL+103cV6vHuqle+K8RhU+3KWP5pqwWxKjsjilw0VTUH/mUw4t2rtx5+rDedekA5L/igMqv1Y1BMB/d8wBLu5Te+zR1fgjyXqZfCoR8bqiXev/mQ6Kzc+FBAUAMFMhmdlAktmPZbWuZozyOxiJomr0Ql/dYb1KTAF2iDPYmLclIXQs7z7/r+jII3PdjdnGt3sj2jxyfvmgCkW/sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LZQwVTcadiPt3b45TTh0c6W5CKHCgzLsmxoEtaaxbyQ=;
 b=yjUkBg0UaU8v0XQX5BqKu2UsCSinGAZtuu6IR6p8Vz18GuvPMfWDzGxHbCjAKXbPEOFBkb3sp7AULzeg4VNrN0tcgo4AKop6q31NaH+wJ+2+lWic3ryJVuaeVPKMSqCTk2En8rTgP5xdIWT/uFqDZuugBgB9oxyPBD11NHH9YMuBt+YvQKzTJVyiPcXw42uYKpbWoJ4P1eoWXAvaWWyc38trEXq1ee4kg0u716bSyeGdkk+zoTtydeyk+zUbN7QbK2XupnAZ8GDzdNAEO+6V+pKb/0Q4YRf5Q8mttoVP2Rsd3xjzvIyHoEiSCLWikTCzvIlnNIjGxQIQLWtcM2qj5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB8293.namprd11.prod.outlook.com (2603:10b6:a03:44f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 20:45:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 20:45:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>, "Mario
 Kleiner" <mario.kleiner.de@gmail.com>, Mike Galbraith
 <umgwanakikbuti@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
 PREEMPT_RT
Thread-Topic: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
 PREEMPT_RT
Thread-Index: AQHcTWY+DhTdTaqXukamU1mVJZcnpLUFjzEA
Date: Wed, 26 Nov 2025 20:45:31 +0000
Message-ID: <DM4PR11MB63603779042D13B89E36BB02F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-7-dev@lankhorst.se>
In-Reply-To: <20251104083634.670753-7-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB8293:EE_
x-ms-office365-filtering-correlation-id: 3302bbc1-db26-48c4-b98f-08de2d2cbd4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8pKOQUqdqXb4Hy/pJ+kQpRuG7JA0WEIJzmtbX3a6JIkon2oaNMnr8fzML2hH?=
 =?us-ascii?Q?Z2pTi2O+vbrxTNOvlFD84Sb5ZvyBTUCnIdvT7JT2cWX8lebE1SIFQpW2Wlq0?=
 =?us-ascii?Q?26ddoZbJzRZJdkAAg4ZzRIz89yuFaeOxScJFpCKsX1VLO0r0DeOdKNgH9XX3?=
 =?us-ascii?Q?Hv8cazSNioKZzULzNX8QIu+llJzcYg/yoEkEx8I1mqTwaL8zVFNdIJ1N6gv0?=
 =?us-ascii?Q?0hNiHsFpjFVUWJ1LSsMYf4FJToE3lr3b12SPvmyeJNx5/zbSvCBIgOy265lA?=
 =?us-ascii?Q?apJhBML8ExRpBr+hgHhLRb8nkz8hE69QMWHO9Lt+LMWbw585sEflbkkDyXz+?=
 =?us-ascii?Q?/6OHB0CQ9rPBnIYiFibMNbeT1ZN8P3VZ3rfmTvSjsUK6Otw0XlvRI9xCK4nn?=
 =?us-ascii?Q?M64vF2Ug+ODyYd6h6bzdSVk456Uiz+Qoc7JB8Rm5792UANfXqQPKL52CJCTk?=
 =?us-ascii?Q?3gNJiRMdEjcNDrbCsKt1FlkjQWkT6Evs7JBWO6enIhYiuEOy1hUhAgMMKA6u?=
 =?us-ascii?Q?+9AQO17jHAd6cS6kf0cG+oy8DsbQlmI2fGNFIVEcIlshupUjpBErGAgk0SWH?=
 =?us-ascii?Q?FtTOZv2lVQE/zVh5h2LC4DvszCGWc4UWNDmVgkLp+9J+CyvLkIv9JYnRtAOd?=
 =?us-ascii?Q?ywu6VkGVNUx4IYjEE372eGuxuJGJSY4DkNOb5A6mKSbesyPgInWdQSjqDk7+?=
 =?us-ascii?Q?iWd6CU6O8GVugLKXjFjNFlky2D2xvvrTH2UX2Q0IEHdBvFKj+RU7eaMB1hVu?=
 =?us-ascii?Q?hd7HOS98QgLqNJGZ08U3lb6y5GFVgHzanI1F/65ULQGNhrwSPs55rGKvLRVw?=
 =?us-ascii?Q?qmZMjYA4II9NOgSjomy+FkpfhjCkkBstlMtzOQQIc7Hhsa9SUi1H7M/adxDk?=
 =?us-ascii?Q?IbRln7JJYyjH06nff9iBOOT7AfZRQ+Q9h4fcaKoSS0B74o5YOtu4L1Fh9RFP?=
 =?us-ascii?Q?nYu4Elg+UwiV6LUFRPHHGsCcgSolP4nBzJCsmOZ7FEpJOVRDRZVOaiSL8Sx5?=
 =?us-ascii?Q?GEBc+UppM0JHZkKB9ndwk7mWgvo4/w1DOeoWiAnu3NIE/LIgW571Dc1V4TcC?=
 =?us-ascii?Q?fZM9EB+5gi8LvzWebxk1LRXoM6Qx6BsyYbFKlXwN9sEykg7V8JDqmEjQb8Bn?=
 =?us-ascii?Q?a6PxzK6a27PFCgEmudBy50LrVXaR6QvlPPLXCrZcEiW4T0GghBP+UAehVmwQ?=
 =?us-ascii?Q?lzPFga9pp7xu82tLbdsn4u69UFAqSpQNc1LDJUf2E1sqdbb58xR0FaL/tCmm?=
 =?us-ascii?Q?9jdsrC1AgC/IXrMjNX8963YOHtpqqNZxuEOyI7uGCxmyhlwiQQWGhD2AMh6I?=
 =?us-ascii?Q?ueYMElqPexffoVHd3i69JAnleTaFwIUU5325rVPf3/r2/40985/Ov3OyRHy/?=
 =?us-ascii?Q?xuOI6stZftR9j6/JqWvSU2N9KlaKE4lXgchJstX0WfEylOwlv5Yfj17bWfGR?=
 =?us-ascii?Q?IYDwzgXUAeiK5hb2lAXjMUmBRVJpivDMQDCuii8yGVwSJvSbkrFG0xlh8cTF?=
 =?us-ascii?Q?Zcbwq9qeWc8XMzbwPOxz6u7L/J+7UmM0p5gu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zCfygWz5sscQa2l/eE3mQBlj3d6soaDxJTIjcxWMmuRaHSDx34QfJK0ziuf4?=
 =?us-ascii?Q?Lw88W1no7txZgKZ0XPFx8WUs4yDBhfrmwkph2LTYL/F7bm3ooo8oVgTNmQMx?=
 =?us-ascii?Q?HOM7prFuifyv67UFMlgzzAp3jmbwNl/EyW39fG22D4TaxvqImkPI781Ik+a+?=
 =?us-ascii?Q?O5J2iHAfA8dMEOOkIPVSf1EBh5/GsexBGVqtuJDgQ+WZlvo7VRhNkC4xb5pE?=
 =?us-ascii?Q?Vr3W50no3pevjeZ8uO+xet/tdDXPrLtzFNoONU+HEcujZKNSDqLczKb8HBu0?=
 =?us-ascii?Q?m+kr15vDa0dUfmE/TRJR0vA9sYG9qkl880Csf6GDHxMPfIfFGMAGGoaxYDch?=
 =?us-ascii?Q?u5Lb2On1J6lXRGjE6GXfgRTl+hotBzeo5mi8+TxyTc/QpUbIdwA7nm/AmvhA?=
 =?us-ascii?Q?XnPTF/iBsOSo4vcytu9nPHmzjabTo9IPRTJ9NncjYO3bWXnhmx4w/sP5D0KF?=
 =?us-ascii?Q?Z2JzhYXycfy1IR5QU74+/nNic3RyTtgJqhZgCBc11WzEIkd7Nl172uOf6IYC?=
 =?us-ascii?Q?PKkMu9jONsnn3t2gJZhFyxAsNosW0nu5c5Zn9Oaa3P1FQcJ5CZt0E3X/QMjC?=
 =?us-ascii?Q?EnXlVU+F96ZcaBIJzv4jbImTpzeJkMrBlF6wWlLB9UVmXkhTIhM+Lmt3baZb?=
 =?us-ascii?Q?e1kTrPDqiroc+NWFt2vNTKpEtZFyiCEbRHGThHRtDzKW6o7b5mCebjClUV7V?=
 =?us-ascii?Q?23p+cKtGNx4ei0zRPx2Z8lLdsWwdHr1Dy+szkVsMdwZrkKF+ulFMiLySARcu?=
 =?us-ascii?Q?XFVhmHp8jFtAp5l6Bfoq41V/cSKRqxSGE1HL/HfwqLX1hmxS/RKwgz1ogpij?=
 =?us-ascii?Q?6B3/uBuRd+e9j/6uXklm3x2I+U4jmGk891kOo+Q8SkhWf+IP2fgyilOdCAEG?=
 =?us-ascii?Q?Nj0luRZu5PlApBMehg9UA9j+LiJhN92wOjerC1gYuVdPKAv5eAEJfMTDVzZc?=
 =?us-ascii?Q?eK274Qtel7baqGBDJY12z11xuluhX3uljOyb5e2MNY6ErnuQJIOj1GRWnUiZ?=
 =?us-ascii?Q?kM6FKxkyIZfpDHnp5bTcj8j7NFU3OaBZWq74M2GVNVCuZZx2S0OBb4b9fk2n?=
 =?us-ascii?Q?mfrAf35ZUpqZJXFSgQAc5JIDhmS3OkBOk67/sVj2W8L4GsRb3ErooR9gxVaf?=
 =?us-ascii?Q?AYxU/FwuUjAN5gIWDe+YfwbSY5CQN0UPZRlZYv5W+/YYfur8GyhVjzZnCkZO?=
 =?us-ascii?Q?dM+Cah/dOYyUEvktijKU3E2wRDj1mF50khFVUZluddPe6Wo6fEONDOswjXrM?=
 =?us-ascii?Q?1MffABoJxAMGV49XrHiI+fJiEu9irpmEb74aDehzInnWpGbtpcxH/RAz5QAx?=
 =?us-ascii?Q?ASDjTR1nphKEZZbW3bZcXWDt/EUfgFUl2dkpFiTFXBa0KBMfryRxiZQLEJr1?=
 =?us-ascii?Q?3nZY40QsDIq7l5YePXWURd9Tfoj0/y9QDc2RPOerf+OE9RoznfJmpX9xmKzJ?=
 =?us-ascii?Q?fyfR5VVd6UJFXEDe0stbVJLTC//xGWP+/bgl2HL+qEB5Pq+RaWo9yN27Yanf?=
 =?us-ascii?Q?WiSwh9PJO+t1fI5VqpOnO8uSc+vM3p3bAKq3+7PHkaaJNy1WVkA3Yig4aTnC?=
 =?us-ascii?Q?wnkr78I6CQOrKRgxCMQKjS0MnAxh1UBcAIJys/S1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3302bbc1-db26-48c4-b98f-08de2d2cbd4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 20:45:31.0893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p7r+fYuiuOeygpEpXrWoCuJSNcy24b5VV8ZAE+70KLu9NOjORIKdcIj6SCq3zAv8R5RVbL7f4fyEapo7M2BRSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8293
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Tuesday, November 4, 2025 2:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>;=
 Mario
> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebasti=
an
> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> Subject: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
> PREEMPT_RT
>=20
> The last part of the vblank evasion is about updating bookkeeping, not
> programming hardware registers.
>=20
> The interrupts cannot stay disabled here on PREEMPT_RT since the spinlock=
s get
> converted to mutexes.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 9d2a23c96c61b..b87f6b4a4f3d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -688,6 +688,14 @@ void intel_pipe_update_end(struct intel_atomic_state
> *state,
>  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
>  		icl_dsi_frame_update(new_crtc_state);
>=20
> +#if IS_ENABLED(CONFIG_PREEMPT_RT)
> +	/*
> +	 * Timing sensitive register writing completed, non-deterministic
> +	 * locking from here on out.
> +	 */
> +	local_irq_enable();
> +#endif

I think we do have VRR send push etc handled here, also arming registers ar=
e being updated.
Not sure we can allow interrupts here. Please check once


> +
>  	/* We're still in the vblank-evade critical section, this can't race.
>  	 * Would be slightly nice to just grab the vblank count and arm the
>  	 * event outside of the critical section - the spinlock might spin for =
a @@ -
> 735,7 +743,9 @@ void intel_pipe_update_end(struct intel_atomic_state *sta=
te,
>  	if (!state->base.legacy_cursor_update)
>  		intel_vrr_send_push(NULL, new_crtc_state);
>=20
> +#if !IS_ENABLED(CONFIG_PREEMPT_RT)
>  	local_irq_enable();
> +#endif
>=20
>  	if (intel_vgpu_active(dev_priv))
>  		goto out;
> --
> 2.51.0

