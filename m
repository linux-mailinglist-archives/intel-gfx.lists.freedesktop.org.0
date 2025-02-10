Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503C5A2E496
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 07:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2AE10E4A7;
	Mon, 10 Feb 2025 06:53:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EI0SZmF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA8010E4A3;
 Mon, 10 Feb 2025 06:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739170379; x=1770706379;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=dHnx8B6GADAfVxSbuWCH/4e5TrYTfSxr5YAkreD6b5U=;
 b=EI0SZmF/Zf0vOZ9Vj/L112iM8EVXw/0zBp44Jime7LscDermLLcYkEeo
 qPOhf7/PXcVliW4q+23wTEQtl65wMyOA4SF4SWWpxYueQMU5XZ+i5HGRd
 7VDsyPfJMjeQL68JsQ3Hr5yNvjGFE7CdoZXKCXYqOQ/H+SeF2cQ70FwRA
 pPey3eNKAfZEplQ4dB2WVI4Yfq/MHwQx5lsbTYvw4NGagMF1qoWhvcUlW
 vSfL5REeaiJ2aVL6ie9dTckog2bCwdaiCDObRIlI4XQ4LsYejbPpo0rXn
 UqlXW4IhdoGFWaiMeyHYeQZwao37dgls/hp2ZAXGdjnXDoTymbjH8hhON g==;
X-CSE-ConnectionGUID: E2I5YwtRTc2JTe9fr/uLUA==
X-CSE-MsgGUID: Yum5enZISpS7S18j4sHnHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="27340517"
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="27340517"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 22:52:57 -0800
X-CSE-ConnectionGUID: eC2HSoIHSO61zA8FDuFIFg==
X-CSE-MsgGUID: LlDdDPi+QA6iqljZgJlTsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="112034626"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2025 22:52:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 9 Feb 2025 22:52:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 9 Feb 2025 22:52:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 9 Feb 2025 22:52:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XPcK7miu9cnSeXfLs48ohguKgRvomycOSmlxyYATrqRAIqXApxYiI/OXPizIqd3MGr5q0N7pETYOprxpGtnb+HM0SElp1KDUDuwp+K6xyc8FK5kHKXZpQ04mcuYtYH9pzBpOTGrkOFxuTrYK334SxOXuaCfQDsYqeZydKlNhsyYWTGahH10IxRa7xm8EI6bA2t7eHoLjSIiO5peiLEDsvLCBroKGDKO2zLfs+vF2uKuOrtN4oWrHoPsHtb4UcAWInU1MCCuCjgpSZpd6LjEza/XfCnnpSCEOMnIkCHJPdY1tt0Kdr5ytIFvjWU7L352g+nbQFClgYjnAimIAk4wkeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHnx8B6GADAfVxSbuWCH/4e5TrYTfSxr5YAkreD6b5U=;
 b=LHxbAINt9ox+fe4tSfLUEmZ/wX5HOnALxkSsj18DO0wkv4el1c+zqQaAZxgxdqYQ0xeaD09AMUatbqpXC/c/hRad4fnDAGqAWpzBtUMGr2yn9C/JT27vMfK980qIKd/vx1cgVigsFMUdhWKXSo0qVQszfXEaf0F4X2S5Or7z5Ba4hkbf96A0lhz7y/PILIXup4NKMtEmOd2dICqPAx2ajF+RD3g/T6RtSbPWp4R63gHtcTrWOcugO5RGPzob386QdjGW5VLuN5RZoyUjQ0ZOOA+NhKm/1WYsKFiUigXA+W0KT0FAqYhljnGoBMFP1eQ2t3u/NdH0pC3eVFCyb3O75Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8701.namprd11.prod.outlook.com (2603:10b6:610:1c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 06:52:35 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 06:52:35 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "rppt@kernel.org" <rppt@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen, 
 Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "x86@kernel.org" <x86@kernel.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: Regression on linux-next (next-20250205)
Thread-Topic: Regression on linux-next (next-20250205)
Thread-Index: Adt7hEGcp0GkztS8SASxDv/3sHEkZA==
Date: Mon, 10 Feb 2025 06:52:35 +0000
Message-ID: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8701:EE_
x-ms-office365-filtering-correlation-id: 41804415-047f-40a7-3721-08dd499f8021
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?SMPupQL3+ALQustiDLPr/ucUCcy4SL64097v2HEoT2VYl+KEiTeaNKSdhr?=
 =?iso-8859-1?Q?WMzjKwL+la56sZT4hufm9qtlRHdxZFFavg4FKnH7Ecxf3mzj2gED2KrF3M?=
 =?iso-8859-1?Q?SQ3rv0n2tO3p3knEZLiNu4lo2BdiMi1YrzB0DaYfbW5qY3558cRClNIr0X?=
 =?iso-8859-1?Q?sxOpFDe4vpO+2CTgm9DlxG+w0pBWw7gpIuNiW1sYrIsXmyq2RZjPha/R3G?=
 =?iso-8859-1?Q?BzUYY0K8wIIlGGlXXMs5yu1q1dPhxX/zEq3/6IAP3lZEl6kN7b85Z5xsE6?=
 =?iso-8859-1?Q?XLoUknNdqVwbRaV8+7KDfZHFq+r+hucmuYD1v3fYlB8ILiRiEtxTIoMbJb?=
 =?iso-8859-1?Q?FNRCFhMrOH2tQKA+o3hS000ANMTF3cfctI4r3jBw1DzJtG5VRv9y+D3LN+?=
 =?iso-8859-1?Q?8l++8XStDwdkO3ulqkPuFT5gLJgW8L1gsX0HV5xhs5yP7a1kAAsDRj08hO?=
 =?iso-8859-1?Q?IIq8/XYpHC7ZSUFkDo/sjhjOCY30rQdyKyobOSsoMTQourxCeFL8h1zT4v?=
 =?iso-8859-1?Q?BUq68iecgpEV908BcUNCUu0bLdmYpKGdaz1z2vvrz4M+3qniMGJuReo1v+?=
 =?iso-8859-1?Q?Manma7xY0KV22QqjVTzc16pAqS0j5RoaE3TjfnkB9cK+0Ni0tEDe3hHV4D?=
 =?iso-8859-1?Q?TJyVI2EAzDUg8Y19Aa52JyVM+kSttLK7ujVAfpcZHDL+bypWuOVDx0WpB3?=
 =?iso-8859-1?Q?Gwr9a98gRve4+fkTidkmgP8V9V5U5jV5umtbOSe1BFx9ord9OEyBvt7CWr?=
 =?iso-8859-1?Q?9h/tWnpZ5inhxt5d9Dy7d+vtExJcCqr4IErPpoQe81p/xasvsB0lhtoX/g?=
 =?iso-8859-1?Q?J1U0NBfTuRCvipaDvGi8eazEU0gOsUziN74h7Dlbzdslwi+58ywTyAWY8L?=
 =?iso-8859-1?Q?o0cwRRuq1gHya/t1grLDO+GUcAwTvx0/kC3aenrCWnu6bHK16k5BGo6k5b?=
 =?iso-8859-1?Q?HKXl6Pq6lXW5miL3K3WqzXPIL1bqNG7YtK1Bzuc+Q/PesTUt/YfXCG2m5L?=
 =?iso-8859-1?Q?RTwRi+PvmAc+nJvaiS3m34S6ceVSlQxPG7fWij3vMaX08FX1jgmys7zFY+?=
 =?iso-8859-1?Q?6ZlZUv99ZKORgP2BHfPDGIiGFZ29x8u3H0XVdHULzjnCdAv/L40VSmQb2Y?=
 =?iso-8859-1?Q?nc5usIjRGou0s2BQr8CNPf6QhK0PIn+n3W+4WMSo35kb4Q3uqyKTP/YUBh?=
 =?iso-8859-1?Q?fYxkAxnHREW7iSk+eaUEWeDAe6AmABmCIeVHea5AXnkQRONvTEJMMvtkGn?=
 =?iso-8859-1?Q?UxF8nBNm7dgThYF/y2Fd88XhXMIETDQnSmCz1n4FAK3iC2eoPWTPyiiJ0d?=
 =?iso-8859-1?Q?/IKlbdHNDdlZYiWLmjHkjVA358VYQX4QCjfzRScdh2nuu/lyjaTcwA7sct?=
 =?iso-8859-1?Q?rWXoumU2G8cGaiaOugtvn/FYIPyP5ucIp6PDHUCzU0y+fEsNnkP2g5obn6?=
 =?iso-8859-1?Q?aTgovQV0vuNV3oH5rM4xKlkcCp499/szDA6lRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xL3YqO8lfxRXW10/qPn/+zMwajOMb1benFBKJqPiCbppO6Pk+hhMplIe2W?=
 =?iso-8859-1?Q?eyO+FWKWi5aOiNYsysl6KBpi9Y1zRJpcSL7xP3lqVq4UxyxiBvBGzK6bW+?=
 =?iso-8859-1?Q?1I8dG2W2HwCuTHx7Gt5La7/h2lkPHPuZ6gX+WLIKZiYazCTWdUIn35uU2P?=
 =?iso-8859-1?Q?4a+4QlSnHfIiKgNKxEAd6FjzB9HE1tHMxdSN2z2qspbmkVcGwKncShjJF2?=
 =?iso-8859-1?Q?5Q8jJ+lAVMQ91R3H488HkN3VJ+4z6n+7NqpX9wJuUPLKB9wCfj75+i5TUe?=
 =?iso-8859-1?Q?QXGVlulAHO1OqSztJAoSxakEK5Z+i+Z6W1Oklw3oOh3hGOnnT6WqqjlHLU?=
 =?iso-8859-1?Q?9AwTi6hxp3iHXUf/J4CAftSBIeYLCEYD7uDtRUXI7LNiTQPfOOyrda/ZZJ?=
 =?iso-8859-1?Q?MbL3ot2GCbHQvSIpYV8Vau9qzUFki22UWPGwNbeRMJSdB4106e1nu3KoYS?=
 =?iso-8859-1?Q?TOx5HHfsWMKCbCWr+ZyeXFpn/JCDB00J5ZuKMqmqF3ngGo9CHNeATdweNx?=
 =?iso-8859-1?Q?7jKMmsxI5JC3KyWiSoAZboEyL55/s2EyO/O9zLGg3aCkPXb4XHrj3faGBD?=
 =?iso-8859-1?Q?kv+S4Ne3zEyqrzyh4PPB+i/jdJDhSweIzgEs9I0Bx5L/QUgB4RoXg26Rwq?=
 =?iso-8859-1?Q?jo+LX9iYe0Z21i37tFC8MoWp/ih+lx9Mftmo6k7g1QPOxZeSs8BrvRM+Dw?=
 =?iso-8859-1?Q?JKJgtoAzo9p4tWKaP5Q/XHs1apUuPo1wKQrjoyZafuR4HFDjifv14zMHJ4?=
 =?iso-8859-1?Q?O8nP8Hot1AAxRa5XD6atczx7cvJWXiiSX+6aC3H2Q3RAEAQaHKOP0P/Zmm?=
 =?iso-8859-1?Q?w6C/9W7JAxCsjW0QZ9siIJ5P6jGEMXT2pNVXsRoqY1E9YrtmVfoXRlfQQX?=
 =?iso-8859-1?Q?caGQl3VA0i8kmrHU1A2xVKH/aJp8MsD1OnYBwHkR1ret8S367Yvb8M0Pki?=
 =?iso-8859-1?Q?ciaAMepYLuS8+bKV4FAyZ8ddsj2nJAehAfbTHhIyQAYYR1YJCFjgW3Ps89?=
 =?iso-8859-1?Q?hXWGOV9JIyaQmxUVr9N7QctJvE0BkujBqrcVc70q/SK5WuddIx7m9Sx17P?=
 =?iso-8859-1?Q?dQdhCoYfGJag41UafiJpDJs4KoCBHDbayU279rexwxjRkV186sPSzwQErU?=
 =?iso-8859-1?Q?Cbo/d7skweWv/fqIf2cN6j6zzm7U+ybhzfqPSX+hSAY/DlY4mNHXBVT7RW?=
 =?iso-8859-1?Q?FjvOexRkjU0Nd58OWl/P14HE5JW6gzNgWXS8sZOHIiFpFf0EKLgeVp0ezs?=
 =?iso-8859-1?Q?IqxEOi/IwceaeD0+Ti756K3dkf1pKl6acA90/h6YdKqerkQNoYl2qdWL2d?=
 =?iso-8859-1?Q?sibht2I1SLDsLiWv3sGlDU3IRhLZrg21BFS5ww72/cQhb0bQUA02FKDNKs?=
 =?iso-8859-1?Q?TucmX1g2T4OkkUv+LEY8GAp/+JwjWiS0olQtfnHrgECLEpHFkkDBJqma5S?=
 =?iso-8859-1?Q?BMppyVXEEu9gN0ROQVBbkJK/gL4M23nKm8URudfzZw8stKK4OeWOJfGLAf?=
 =?iso-8859-1?Q?FUKOsC6WOyNMDBdThqKtjp2/0G/YTRL2Rdn0Vyw2XLZFYvR/lY5ecJnG3O?=
 =?iso-8859-1?Q?qNy9z0X3SL+/RLBKtIj/tVgYaidYttWR9A3ooMYPBd/ykvGGbepPYXj2br?=
 =?iso-8859-1?Q?S90LkoMSt7/83UkhXw/bTgBnGkd7X4oS2+vu/K5bHkhlSWQHJO04nknA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41804415-047f-40a7-3721-08dd499f8021
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 06:52:35.4496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSLCUtyTNvzV7yVyv8/P2dE4hO14fmCYa/yuB5nPm/6wTJAeFG5d0HEgBrG9AO9Mtj2Xej9n+VHawcRN2HJotrUXxcQaMP7rPYd3Q4/DtPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8701
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

Hello Mike,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250205 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<4>[=A0 314.781734] kmemleak: Found object by alias at 0xffffffffa0595000
<4>[=A0 314.781738] CPU: 11 UID: 0 PID: 6042 Comm: i915_selftest Tainted: G=
=A0=A0=A0=A0 U=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6.14.0-rc1-next-20250205=
-next-20250205-ged88b8b82c53+ #1
<4>[=A0 314.781741] Tainted: [U]=3DUSER
<4>[=A0 314.781741] Hardware name: ASUS System Product Name/PRIME Z790-P WI=
FI, BIOS 0812 02/24/2023
<4>[=A0 314.781742] Call Trace:
<4>[=A0 314.781743]=A0 <TASK>
<4>[=A0 314.781744]=A0 dump_stack_lvl+0x91/0xf0
<4>[=A0 314.781749]=A0 dump_stack+0x10/0x20
<4>[=A0 314.781751]=A0 __lookup_object+0x90/0xa0
<4>[=A0 314.781755]=A0 __find_and_get_object+0x6c/0x190
<4>[=A0 314.781758]=A0 paint_ptr+0x1b/0xa0
<4>[=A0 314.781759]=A0 kmemleak_not_leak+0x33/0x70
<4>[=A0 314.781762]=A0 load_module+0xa20/0x2d10
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 64f6a4e10c05ed527f0f24b7954964255e0d3535
Author: Mike Rapoport (Microsoft) mailto:rppt@kernel.org
Date:=A0=A0 Sun Jan 26 09:47:33 2025 +0200

=A0=A0=A0 x86: re-enable EXECMEM_ROX support

=A0=A0=A0 after rework of execmem ROX caches

=A0=A0=A0 Signed-off-by: "Mike Rapoport (Microsoft)" mailto:rppt@kernel.org
=A0=A0=A0 Signed-off-by: Peter Zijlstra (Intel) mailto:peterz@infradead.org
=A0=A0=A0 Link: https://lore.kernel.org/r/20250126074733.1384926-10-rppt@ke=
rnel.org

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250205
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250205/bat-rpls-4/dm=
esg0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250205&id=3D64f6a4e10c05ed527f0f24b7954964255e0d3535

Regards

Chaitanya

