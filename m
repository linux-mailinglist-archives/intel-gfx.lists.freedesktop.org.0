Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9461A6A08F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 08:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B3310E59D;
	Thu, 20 Mar 2025 07:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q47tnC4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6873110E59C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Mar 2025 07:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742456335; x=1773992335;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6WIcUkN5g/KUY6CQvNO76vvFxSpx3xw2CDYiUIhYyUQ=;
 b=Q47tnC4fQj8ZmFmWb54eNkPhByzJpt+GcgU13cL+tzXHVOGdFrDIocki
 Dnty4Ikgs/FQyV3C+4cZpJ6CLvQDUYKbmCMg9BH5wKrLFQ3yl8WBkA1pR
 58Tm8oDzZyuSGFvgOJrhQ1u5WI/Kb13Umtw6BZU5p30QOz160hXGeSszf
 7vHu5o49qUcKLOV7VFFtsVnoA7jN0er1cvIM5TFbXdei7/nBXka3fLVuy
 DJ9AnM+K8IyWUg5ryk9ll9+aHtwBeW1ASjVssOBX056E6/urK541OYi/d
 NY42z94gPzaLn6KS8xQN1A3ir+kNj9mM4igN8XnhlWHwNS/giLApfbFRd A==;
X-CSE-ConnectionGUID: 4m6VcY4BSVC9SPGljiJ9GA==
X-CSE-MsgGUID: HAxRUA49RBCaR1qWv0JOfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43685626"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43685626"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 00:38:49 -0700
X-CSE-ConnectionGUID: mLKDHm8ITSuAHm1iczCWVg==
X-CSE-MsgGUID: Vq8JV+TOQfeEZbDRDg8Eqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="122814247"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2025 00:38:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 00:38:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 00:38:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 00:38:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gp9PRifkuWfH8vNuko5skCLXEsHz3HO7UWox6TQvomW7eFFNk0jIM2UBYKgQ6L36GHQ+s2RMauoALHdMMq5E49bUjWFypnHxsn3BsjKw+v0LveYEI64NF84bd2Q4/DLiVXAL1qrk8xfcopAjIIHSUhTLWrZp91Q3dJPcICUrOVR4UT3eWVnC83s/+ElXSvV3F4R2BDfi5agBKgZ4w9ZM6CmzfRELSltwE+Y31hETfrFs3lZrQz27qrGTHj/wqFigPpe8C97r9EInXy1aLk8oPu+bCIkWwA3IBGaIsBvhymcz6kTjAm6Mx+zOWWL9HrVbzIWbDXGezVLocDfoVOR3lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NS48Ho7mGeWlTJw9XtjBuDgqWTOUrhXL8q6/FzohEEA=;
 b=jBut49skz/6wFbUmMadadvVmhsJML/hvg02iDOY/co9Qv43jBpl/Arz5IHeB8yvPEK+CRFhd3sAnsM8GRK2HcwVSyJCwIRLKkKeyrc44t3ilIWQI12giiMKwAx8vNBqgrN4HalOLAuAQEuYYzO//KGmU7fShfEd/LoPyXXPbsvP6z37LvhHmflxELFxd8nfbgrHKCfqW2p1SR31T10H8jamWdPGzqUY7yQVz1KbiooUFqqCrMTiHYSu9JJXPgCLzVmIzmxv9DUGaVJOp/urzB5QuHLLySiYqslTayorQx65EsQAPSn5tc68KkSGxLx+wtRkUQyvhFmQ4/c2K1RKM1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by IA0PR11MB7933.namprd11.prod.outlook.com (2603:10b6:208:407::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 07:38:39 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%3]) with mapi id 15.20.8534.031; Thu, 20 Mar 2025
 07:38:38 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, "Karas, Krzysztof"
 <krzysztof.karas@intel.com>
CC: intel-gfx <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@kernel.org>
Subject: RE: [PATCH 2/4] drm/i915/gt: Fix SPDX license format
Thread-Topic: [PATCH 2/4] drm/i915/gt: Fix SPDX license format
Thread-Index: AQHblIackmHk9YOhZE2yJ56mYqlLfLN4v1mAgADk6ACAAgP2kA==
Date: Thu, 20 Mar 2025 07:38:38 +0000
Message-ID: <SJ0PR11MB5867935EA626E9193291EC73D0D82@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-3-andi.shyti@linux.intel.com>
 <luoyuhjv5ibwv4omqvg5s432mvix4txrzrbuevou5llt5axkl7@dhrwqme3fbkt>
 <Z9oRDO0O7oDsyACd@ashyti-mobl2.lan>
In-Reply-To: <Z9oRDO0O7oDsyACd@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|IA0PR11MB7933:EE_
x-ms-office365-filtering-correlation-id: 5b52be52-86db-4efa-02ca-08dd67823ac5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?GovbSWjBR51qB6Oj5iQUrojNFZfvhwKATtvM3TaalR2mDJoWqTk7MMpIse?=
 =?iso-8859-1?Q?NuioNadNWJ1LpcTbiSAAULAoJUGPrp41g91TH/uZczelYxpH/Gi73ftJ2L?=
 =?iso-8859-1?Q?Ujwqb6mQ6NopfM/dSJEhUxF0Pm3VUbUId8GGXcBVH0BvwIF7h0eW/Q0oAC?=
 =?iso-8859-1?Q?Fc98akfNZ7fICjG0GCX9p3Vc2+r4TeBBCs1G/W+kDD80NbFusrPgcF2Ppu?=
 =?iso-8859-1?Q?i8eV0iAloZ/sHY33fYBC0P7myf3Ogji0MV6UdzAdTMeVZPEL1QfX+NAaAE?=
 =?iso-8859-1?Q?7k53M85zwFmlDzFKUy72omM8fAemCgua9Tc8bcV7aEmF59MkbMzPj19Oox?=
 =?iso-8859-1?Q?pDoev0C0jAuHfqb0WiPi9na+ObWSjTLsnSMQOk7kaU+qCEKW0RSDr1Y1JX?=
 =?iso-8859-1?Q?H4+Igjf5jQ3zYh9zdw9/TvpkV5//nG+mlZ1SxjFChIxvUcurOkuUdlGVLl?=
 =?iso-8859-1?Q?TK7qh1C+0nnYxeTJ9X7784wKjA8GmyL4lb//HtKdag9Y50G2LMBO6kikdt?=
 =?iso-8859-1?Q?cZ4yRfsqCDJdtUC2I4TV9KHgutQN8YpimRGtWosb48oExnrUfs/s7Uqf0a?=
 =?iso-8859-1?Q?+yAygdLdRK1RFAI3uE+9k447ePZR3h4sWdd9imvC5Ja4yCQPRzUlpIVtif?=
 =?iso-8859-1?Q?eyddY2GBePQdqx4pmckUNw6MWhH0axTsU6e9LQjIAOaN7MQyMrU7odOabP?=
 =?iso-8859-1?Q?SMhOaCc459s2XXjW/YHvxvaOpd0x8gFYG+acNj40zbZzpV8uavuXf8STEW?=
 =?iso-8859-1?Q?LHR0U+RL84IA+Q8dYsu0NHgVuojMfRkz6A0jkFVwZ3F+AWZTw/arKrezoX?=
 =?iso-8859-1?Q?cktzQPOSjD6F6VZEvu1iUIpdHV7jKNmdIC+7Oas3yvmp4LD2nOkIzED2JG?=
 =?iso-8859-1?Q?UEEYGiVPVLPaUW89JLWDoG5WOnW3C/p1W8ZOyvrTu1z28kUPb5w83pb2tX?=
 =?iso-8859-1?Q?YpHL7rVAVIHl4hVeJDR8ciQ/hDW4e0oVUw9Y1FBbM9lUXL8+XUnx9Hhm6q?=
 =?iso-8859-1?Q?b+Y5k6Bgpt22CirAxcVLNS6kch7sG3BnN2pCGmsNAE5fkC8hFEZ86aNS/k?=
 =?iso-8859-1?Q?pQEKtF2BaDGHW3jmNlFbHDLgeFM/MeQ6c+cE0OKgoKM+NRgMwid1+QgQaK?=
 =?iso-8859-1?Q?U77s7qID88dSh/bZE5jGfq0wcRgivhFLnlUUVLwibpJOMwcDHpJBLe6Ss6?=
 =?iso-8859-1?Q?8A7x/5NQfnq91zSkkV4EuxGfNeRoTBDU4WyJQzj1GtmphYj40yhBJl6SDE?=
 =?iso-8859-1?Q?piTIVa0rQAhy1SwTGIpJI9Qq88BlBf/bWZOZ8DPh/C+MepjMJTk2pQdm5J?=
 =?iso-8859-1?Q?9yRyiRP5HqTpdR9wz+bt4/6D9h3WCQ+DSDf/K9ysvmqD86JmfMbHUxYMfU?=
 =?iso-8859-1?Q?LoLJgIZO0QqrM9e29sb9xvhIO8ayikFXkM1JeIDLlLOk2eKMdskFExzDG0?=
 =?iso-8859-1?Q?tOlaVL486+NnMKcWB8bREYegI+UPFcs1+wa9AS5PMeef+S1eD/eRaurj7r?=
 =?iso-8859-1?Q?9m4jhf/BJ2uE60xR/Xy+R9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?bkE9jcoC5FzP1Th1k7d2pKtuxmWGS/yeWfDVT91iCibnIuSgJH+0E2JRO3?=
 =?iso-8859-1?Q?J8hl/T7aSkPNIUF0JhApYtx3yjMblrXQDOcJnVq4+UsZfERi28NDAzbV1N?=
 =?iso-8859-1?Q?bOF3avkx/lF7HOaCg1KNl/+GmFsbid4mgBMWIGHGOtgHI1BoXIVmD4M6jX?=
 =?iso-8859-1?Q?jyM2xkrlqOrwpf21aIbR7wAnZNI4vvuQanujspy51MqkF+wFHTjjrgzxp0?=
 =?iso-8859-1?Q?hkYyADqGxNw6Bo89Qw0NcFpHaELBWsX8rnrJHHkTlcx881HmG4lDXRMTkq?=
 =?iso-8859-1?Q?f5c+1aX1GxjBMjFOg3KqmhPD3x/tjgZzklRniqWoMRpBg04KpMJ/MxN1C8?=
 =?iso-8859-1?Q?plQkxKDLpHrAns+hkyMzfSwIJ6pamahb+/geMNaOHD0jgvVbQKcdvz8gRh?=
 =?iso-8859-1?Q?rPiTKK8RcAeoW1rllH9G0mj0uBJiHHUCDCsVjwRefrIe3nq8As8U1fTJx2?=
 =?iso-8859-1?Q?sZ3wJfjQYGRBb6LuQWp+MhGJgoeuycPM1wQjLvBkaG3HiMtYQk0V0H6xNY?=
 =?iso-8859-1?Q?4F8Z40GHmQ7yOmu1TYc7AuF99CFJ1YUAW9nBOMfIWJHpTJojsrawETGL20?=
 =?iso-8859-1?Q?z5MCq00iRwiIFY1h2S0XPCn1AFN7F67pssPtdhNfveD6Yr4k5Zpr8SFOsh?=
 =?iso-8859-1?Q?unp4NB/Pp4KxWsCEVzdE0CD7BInKhU/RX4sMGzYYmJr9CqUNn0stnsu9hE?=
 =?iso-8859-1?Q?RKEqSUCeb3JDiQOt1I0iTzNG6c80iBxBxT/+pjY4ZrUjAjVwKn3cWVmjh4?=
 =?iso-8859-1?Q?xG6IZK2s3iDU/zHZ0WfRpeG/joYHiViizBjCgMRdkIJWxzOwhMaOixTAR1?=
 =?iso-8859-1?Q?szRCCcoEeDeVz9DaxQmklb7CCJzesKwnvKQDX4GPN36ZFCNnAMRy0JFwGn?=
 =?iso-8859-1?Q?mpVLfQGwdjSL+MQar5xiHJdrwPlZOjllNlkA9bJ0bevJ5/HTAVFEBoF2yo?=
 =?iso-8859-1?Q?3BWRdNr383HZclCMKgESvhCFDjnLGxA65QqgptBb89YDXSkCJK8rZMHrz0?=
 =?iso-8859-1?Q?EzMO5gDSwz9e0qWfyWqDfZZmuSLwoQwW/VRLxsNAsdDuSvBA+sCEMNJYHo?=
 =?iso-8859-1?Q?YUZoei7x8OBEXyLId6OI59YQV39riim/vkPJ0EZTsvccmAimAszs6kIVIY?=
 =?iso-8859-1?Q?jXAiJB7ndaki7LXahetvWmTdBBpw+depKYTx2xRLwz0ilvv6kuus0Oq80A?=
 =?iso-8859-1?Q?wgui4Oq48qcYolZGQYA09dnLcgOLibBUTPyC1G+YoW81LS8OpM6bj6UWAj?=
 =?iso-8859-1?Q?zaTn304phRZzJG80/aq/0PTNBsVMYUv9illFB3J1ADNRGUU9J9ESIT4l1/?=
 =?iso-8859-1?Q?cn5bEB0H54sNee1jEJ4PxBOqsBtyv9djFCG2dJvCWUoLcO6WWzixQN/aqE?=
 =?iso-8859-1?Q?Sv9AMX6Mg1PdQZIPKZVK34W0hLFKFef0pKhRpPM6FrwqLPHQQbUEuzXeV0?=
 =?iso-8859-1?Q?RquOtbs3kMcRAWP2FiKLf2k0hEupDgO4hMfSPoHe37eMeHwjyYTV1dU/qF?=
 =?iso-8859-1?Q?+Nxyn6ObWUWLK5j/TW567LcVAQS8Y5ogYSxKGcD/Q/2dA2fU2IKPSNvQwT?=
 =?iso-8859-1?Q?H12mz7BMbdv+QhCiwvxI+Wdkmh8LZPg8YG40rQm2TN2mv8XdfrV0ESHU+u?=
 =?iso-8859-1?Q?0YGl8XCCI6pk82n+lBOrz9ssjVeSwpBUYW?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b52be52-86db-4efa-02ca-08dd67823ac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 07:38:38.5406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wFCneMoRvnbrMA3oKts+Vt4Q1aY0iNiNOO30EBGi1Q7xF1+0UkSpk0Ucq4QYylT6rEBhlYDExkf/uWQ0xHVfJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7933
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

HI Andi,

> On Tue, Mar 18, 2025 at 10:55:03AM +0000, Krzysztof Karas wrote:
> > > Header files need to declare the SPDX under /* ... */ style
> > All files modified in this patch series start with:
> > // SPDX-License-Identifier: MIT
> > rather than:
> > /* SPDX-License-Identifier: MIT */
> >
> > As a note:
> > :~/linux/drm-tip/drivers/gpu/drm/i915$ rg "// SPDX-License-Identifier:
> > " | wc -l
> > 242
> > :~/linux/drm-tip/drivers/gpu/drm/i915$ rg "/* SPDX-License-Identifier:
> > " | wc -l
> > 696
> >
> > are those styles interchangable or is one preferred over the other? I
> > am just curious seeing both are being used.
>=20
> It's an ugly mess that for some reason people have accepted from the begi=
nning.
> The SPDX license has a different format for .c and .h file :/
>=20
> Andi

A similar change is=A0required in selftests/mock_timeline.h header also.=20

As per https://docs.kernel.org/process/license-rules.html,=20
for ASM files also required this style:     /* SPDX-License-Identifier: <SP=
DX License Expression> */

There are two asm files hsw.asm and ivb.asm under  i915/gt/shaders/clear_ke=
rnel.
It will be better if we update the=A0license style in asm files as well.

Regards,
Nitin
