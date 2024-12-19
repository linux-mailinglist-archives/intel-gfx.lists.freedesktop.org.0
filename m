Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A53629F8808
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEBB10E4D9;
	Thu, 19 Dec 2024 22:44:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyW+eXJk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540F610E4D9;
 Thu, 19 Dec 2024 22:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734648260; x=1766184260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jRGm04Oilq/j2ocKjiCiRV7d8XaDsK0t65h9zA6PKVQ=;
 b=SyW+eXJkx1a8mELHIR7SnWcrI+yFgcWa0D/dPPxREDjr8yBNU3baZY43
 dX44CPqxba7mZKRKEpo9sbA8s+2I2Ss0yFMjjduWQFF/KxjYwRVHssOX4
 t9C9d6ZlnF+m3X+lzdnZ2vY+jIBm5vUYogD3Wggh3Brg9Sav4GhkXsmLx
 TBC50P6zl304MRqe+jW4DEMJhigiLgatNCyuGLDFmxeZLONhGOr/+BGny
 K0wR5GSIEW1Suk7E3I5VKk/ggIRdSgYH9vJ85qcKWMj15gn5VoT8xdwIG
 D8l8E4bkNiwzeQrRXJmRkCxu0cibOre60LAjUKghF+OrJJditPOlUjAJ2 A==;
X-CSE-ConnectionGUID: vWO0fwYOTnyS3uE+61zHKw==
X-CSE-MsgGUID: iSctZjCwRnCTG0ZPfIXR2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45872356"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="45872356"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:44:19 -0800
X-CSE-ConnectionGUID: UL5u11iVScG0C9ZzkyJv/g==
X-CSE-MsgGUID: U5RuL+a6T5aN1CuWwVVk7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="129156523"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 14:44:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 14:44:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 14:44:18 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 14:44:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JbSMlgWL5fbpeRND+b8wOJ7ej8QhSgZcoy7bQUQ/xFC0iXxHG2a9CofDxFLFrJF8KluXRbTXcO1VXAAzmMF7zADT85wJR99seGPbEUjJ0lbG0NeClIj6nXS2AFGmATGRimMbAYYqv5H/qh1YzQZ9ghbaR9iuJApoFVM3HZlJJy1vOscdiauYlJkf0vmdpPTlwekvYGhnhFMkAU5ACGijymeaZzXjXvkQUfhMopWHrnmdAOy67rAf+JIgfRXtr+87OylcdzOpc5HMbQS+2kJqTSG9qrEMt4jLRbalPv94oCTQGjM56izYXOLR+pFAWPlhI+xcxtOZVjzgJGUfYffbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJZhpvtROp4t28j5mSarYwpIJNuSHuhmg3o+snyIM7o=;
 b=G9pSSq++Xj3gtcqQbOYsKcQO4ctwcarthAym8vozkCmg8zw4mk4kCdzkr316ImDbMVhQqkl/XK7hA5TZotsBk1hM4RuDkSPhCcNbEfTZP3LS7a+3KmGSIY4OCjJdF9LooZYXtqSnOcBmGD9AH66h+4XCubduOUawkgv8r+MwgSoKg5cb2iquUvJ/s7ykaCOUanjFE+I+rx3xRzjBYn1MY7wjXsVYGPDRTZQHyTWdMoPDCeTd2q2XVTdmiAt1yVHOzUvWzQmQa67d3m9ptBJkyfoTfaf3vTFga/yTno2FE2mgxuREhGvv8zM+f008Pvqd8P1eSNNuf/mE+ExFRuePvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA2PR11MB5018.namprd11.prod.outlook.com (2603:10b6:806:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 22:44:13 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 22:44:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
Thread-Topic: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
Thread-Index: AQHbUmAUJ5WdCcu8Q064kQudso2I57LuIKkQ
Date: Thu, 19 Dec 2024 22:44:12 +0000
Message-ID: <CH0PR11MB544405C44E6E8B5D5620ED09E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
In-Reply-To: <20241219214909.104869-3-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: b3447e19-475e-410a-4e0b-08dd207ea8f6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?vF3zpd8SodMtRwgDFBed519rbji3l8BgedSjKUDD34ia+lcrwcRzyrgDEl?=
 =?iso-8859-1?Q?7pub04TXM2laOzh9eVXE1pmY6E0lfTsHi2vHYVpaERHALnr/+4pLy1LL9U?=
 =?iso-8859-1?Q?cU+MBFWzmUMEAUTtT/Fndj8BbNXaSuOc5mF85y91ASRJcEbnb/LZKiOmm5?=
 =?iso-8859-1?Q?iEGYFt5D0seKUpGxoHSoHoUXL6mATyEtFaj+alS9uyUYSq1q8rkPioD3/A?=
 =?iso-8859-1?Q?xC3018V1GPwXQ2NAh2pMdehPBMYK7JkdVhEAd7y8JYhDreP2TOaOfFJUKH?=
 =?iso-8859-1?Q?zguUZUFeHbCp6Z68z2Xvo4WaZMcwksaM/wEbhAQt3TkV52n21J7qFZzGFk?=
 =?iso-8859-1?Q?ykWbDpPdxTV2+4uMtNgcGojxZkq+9BPdd+XB8AJDq+NK/9P1ACTfZDKyVS?=
 =?iso-8859-1?Q?eNInUusP6jxQsKZL/LEf7WXHi62XQm5GwByVfiJJUSENLnVkqmnLuDE/ew?=
 =?iso-8859-1?Q?QnSnvJ3Uzpn99lKRKgQFbJyFe0eElt+5j6uf50fhCaYsPmZGkfX7xq1XdV?=
 =?iso-8859-1?Q?VrDnbRWbgTtpb9gcJ/bf/aEYt3hOrG3Hx+aZslhZTkCzFforvTWjD5pVj3?=
 =?iso-8859-1?Q?KGGzUeHWe0yam3YdXInmqbUZHIHhd+aW0D0rT2wRNYCOyDg7zI2ffbH30j?=
 =?iso-8859-1?Q?H2OdYlSugB7Q8L4aGCRrFSXC2CIKzvDSY/67MlnzvZak7xr603f4RjeLYo?=
 =?iso-8859-1?Q?UwEh7jVWB0cAb9G/gHfuofYB44t8LPPntgt0YZWUKraCOhbCKxluSo6ISD?=
 =?iso-8859-1?Q?/3sVX7ZlE8UXyLRetVMDHnzuR8Maz+RdINbM7rTBvYIsPXMaWn/7Chyvfj?=
 =?iso-8859-1?Q?Y1wFN5JEysflsScFYOiKpieZXgO4oGXNe2gLIjb8wvq8IKW4OP62j05tkh?=
 =?iso-8859-1?Q?koxnZOjiobTvn2Dp/5wWffl++UJID5dZ7A2lQXAFugPmg7NrT4k6arMdWU?=
 =?iso-8859-1?Q?vZTTJ1Bjh6jOB6yEekCFFMf53Q2g2eVZPGTq6KwaPUu8dujO0nJP7V/3ve?=
 =?iso-8859-1?Q?sbPrl5HFDa1TwPimYewtG7O0giMXXXYSNZn2BQLX0g1F2oFr29BpgUhtPr?=
 =?iso-8859-1?Q?P7XqwCz2qdt0+jZVGwyfJfn+jZnSwkiNxvIb/VvcBkT/QzwWHkoC2GS5v1?=
 =?iso-8859-1?Q?6oemzpgL9/zD4XU8EVawt6TJHZ4zT/0SIsfh5bISMHgkP/p1eq+MwwLvUK?=
 =?iso-8859-1?Q?vnvBrV5yK2ruIAp4THWTTYzrGC1NdPZw0A6ksN6yAhx23b2frSB/9E48Fv?=
 =?iso-8859-1?Q?ZpHysocc6Mb9u6dpOGAO3krvsxCtjbcBhWtcIgJ15jeNdJ4VbTPJRE2XCh?=
 =?iso-8859-1?Q?FW/FHS7nkMMERgxWlpeOqGbJmlXYNa1GJf5AAev0FgVuSctLzbSDjNU0G4?=
 =?iso-8859-1?Q?xxo/f1dy/JhfhSioYMKo5Bqvf5/aOVZ/ZrJLiS9IOwI+TVyPbFiw/4yfFD?=
 =?iso-8859-1?Q?3v69zEqWgnMgGsYO0tZitdpFKwR+pd7j6wtw8fZX+ashWuLjEpysdBRlzV?=
 =?iso-8859-1?Q?pEyvGWiSVEr/vNtvIZPise?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kiaWlgEDXcpctFjnGz4zQ1rujVSVxZS3nKgw5Y/yCILFEx3DvsBAmGKUYT?=
 =?iso-8859-1?Q?UC6B9bnpxnu6pTV2p6oKRnankTbRum0m9ckOElAovSSMY3Ka8mXmKozfVK?=
 =?iso-8859-1?Q?6Yx4so+PLDakOomIyn0/94h8tM8KYWBXoRIPu+TKYLQVFUubSB+u1rxSRX?=
 =?iso-8859-1?Q?HiyIMQhcJRtxE+5tVDxObRbICfungcYIClusMiN5XdZQOuKnNfKBuWhnPA?=
 =?iso-8859-1?Q?r7bhbDLXE5rhb7AhX8+h6GOWLESIT7BRBmuc74zyTEAV6evGmretv7oEGR?=
 =?iso-8859-1?Q?mPbnOIX5gNrxvxgC7yTrEZHRpa0fjVOmA7uIjwr/jMF2FtsvGq1yO6hsP7?=
 =?iso-8859-1?Q?qQnf9Rz6ZNZFmwLOYu5ls+/M5rwM0GxMsW8eEQnLfCAaf6x0C0GDC3JZB6?=
 =?iso-8859-1?Q?gwBplDI3juNE0yQD548ot4EVPHDeVa1O5+9Re3KVWDzg/rFNx9BvA4+qLi?=
 =?iso-8859-1?Q?a8jEnycIYbDsFOzGMQ3xntAxkrtPOYH7sqSS/SIicO+/t4LFHEwwkjR95/?=
 =?iso-8859-1?Q?IcUUcY1IGjbGCnubZC8UQ9FBxUNmJzoL9dS/undps13o4jrdscfPHHDvce?=
 =?iso-8859-1?Q?+F/R/9ishIBcyhNy0e/HZ2xm7O4GQw4AGEO6R0AnUjZXINlgd1omygUUfH?=
 =?iso-8859-1?Q?SrY81lco9/o5tGcScLkBbHsZY5OSe5XoeJoYkLlpD0TWk10umY3uuuy0TM?=
 =?iso-8859-1?Q?jz+ZZfCdvDAu8V9io/3iq5dpUX3diyUTtOMTwvVREk5cb1OidQj/ZA20KX?=
 =?iso-8859-1?Q?dd3N7vUTPUQdJ7/THj9JOwWvmq/XIR3mh8X2arwCYph8v6OR+xZyLOr5XP?=
 =?iso-8859-1?Q?4SWlgsFO+b8q7nFdbKCxKPe1yhZ0S6wTegRmfiebVQ0NBg/b/LZb1TUmls?=
 =?iso-8859-1?Q?oElagQzUTvmXlKJjHk7egdo64SviitESKXAbg4YKvUOKZsIXdTkga98Pho?=
 =?iso-8859-1?Q?Ye5GfNwIL2dvfIm0fiNqZw6RYM+gmTOk9+I5fajhQ6XXlUG+ue7+ZkN5Yn?=
 =?iso-8859-1?Q?lDTgIBmKlBayFwSmwC+Mw/UmasPhIUCChmdMe+bhZs1GQ5NG5pMZfyPel0?=
 =?iso-8859-1?Q?K1GrKMuNIa1uOvZyjIcvLWxsArDyjuXQzRf66GOgrV1grlEUo7UqRAFnB/?=
 =?iso-8859-1?Q?jvbHvsZq85bhlnhZLaOIdrwK0Jr8Nhz3GxcEy6EpGjAh/YncSuLJyexAhZ?=
 =?iso-8859-1?Q?aoMYg18CXhbzx+XiK8uJLimLaxhw+kpwxA/w83ETs/X+CfXSjxeCdDYDkB?=
 =?iso-8859-1?Q?2z9XC6vSWxGooBsxaxrr48ZBI5oPOr0iyOGXjkh9Lqd0SbiajcUXreLQtT?=
 =?iso-8859-1?Q?UNOfG5JAORc55fyl7cF1Lomh7hrtTk07ZOZH2qYlvMWiZsayAQp4RGy3Ab?=
 =?iso-8859-1?Q?xVZIvx5w/igWuMitPPEp+73bTWK0uJEmolUqyZXUjKdis9fLOhO0mHILTG?=
 =?iso-8859-1?Q?VlGbl9yo1qIhN1BINdSGIUD15pKChtVGx561fIXh4idxqfNljvzE5oUXdB?=
 =?iso-8859-1?Q?mTPK0zmhS94PTS9a8d0YNoaHsi10eR57fxfSVwFD8+JIzcKCEPDh2BnaQK?=
 =?iso-8859-1?Q?Rdo4PwCgWassZEz4xIb5cKm2TiLwsiUR31QJNNCB3EHUP4NG49cLQsIC8X?=
 =?iso-8859-1?Q?HgUl4vnSyDpvuqn1J5A7arrqZTb7ViomYY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3447e19-475e-410a-4e0b-08dd207ea8f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 22:44:12.8742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zwgHxLfWHXi9v+HgH3iW9fdHIuj8/gJKpNv/lKnfHicqHP226UkNXjKm5Z7z6zOl5d5Xwm3iPkF//xiQsefXUXVHsZDrKQHyWr+WmwxLDaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gust=
avo Sousa
Sent: Thursday, December 19, 2024 1:49 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Nikula, Jani <jani.n=
ikula@intel.com>
Subject: [PATCH 2/3] drm/i915/display: Add infra to reduce global state fun=
cs boilerplate
>=20
> If we look at how the members of struct intel_global_state_funcs, we see
> a common pattern repeating itself. Let's add the necessary
> infra-structure to allow reducing the boilerplate. We do that by
> adding common generic implementations for each member and adding a macro
> INTEL_GLOBAL_STATE_DEFAULTS() to be used when initializing an instance
> of struct intel_global_state_funcs.
>=20
> That way, a global state that does not need custom behavior can have
> its funcs structure be initialized as in the following example,
>=20
>     static const struct intel_global_state_funcs <prefix>_funcs =3D {
>            INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_membe=
r_name>),
>     };
>=20
> , without the need to implementing the functions.
>=20
> That doesn't come without cost - we will need to store two size_t
> members -, but that cost is arguably justified by the simplification
> gained.
>=20
> In an upcoming change we will put that infra into action on existing
> users.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
>  2 files changed, 54 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/=
gpu/drm/i915/display/intel_global_state.c
> index cbcd1e91b7be..4b4c33fa99fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> @@ -59,7 +59,10 @@ static void __intel_atomic_global_state_free(struct kr=
ef *kref)
> =20
>  	commit_put(obj_state->commit);
> =20
> -	obj->funcs->atomic_destroy_state(obj, obj_state);
> +	if (obj->funcs->atomic_destroy_state)

This is good, though I think it's standard practice as a part of
these kinds of sanity checks to assert that the functions pointer
also exists before attempting to dereference into a function itself.

Or, in simpler terms, I think we want to check obj->funcs here,
in addition to the atomic_destroy_state:
"""
	If (obj->funcs && obj->funcs->atomic_destroy_state)
"""
Though maybe obj->funcs has some guarantee associated with
it that ensures it always exists, making this sanity check unnecessary?
Much like the guarantee obj exists?  I'm not familiar enough with the
display driver one way or the other to make that declaration, so I
won't block on this.

> +		obj->funcs->atomic_destroy_state(obj, obj_state);
> +	else
> +		intel_atomic_global_destroy_state_common(obj, obj_state);
>  }
> =20
>  static void intel_atomic_global_state_put(struct intel_global_state *obj=
_state)
> @@ -164,7 +167,11 @@ intel_atomic_get_global_obj_state(struct intel_atomi=
c_state *state,
>  	index =3D state->num_global_objs;
>  	memset(&state->global_objs[index], 0, sizeof(*state->global_objs));
> =20
> -	obj_state =3D obj->funcs->atomic_duplicate_state(obj);
> +	if (obj->funcs->atomic_duplicate_state)

Same comment as above, except with atomic_duplicate_state
instead of atomic_destroy_state.

> +		obj_state =3D obj->funcs->atomic_duplicate_state(obj);
> +	else
> +		obj_state =3D intel_atomic_global_duplicate_state_common(obj);
> +
>  	if (!obj_state)
>  		return ERR_PTR(-ENOMEM);
> =20
> @@ -382,3 +389,33 @@ intel_atomic_global_state_commit_done(struct intel_a=
tomic_state *state)
>  		complete_all(&commit->done);
>  	}
>  }
> +
> +struct intel_global_state *
> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj)

I personally prefer these kinds of functions to be defined before their
first usage when possible, as it mirrors how we need to define static
functions before their first uses.  However, I recognize that because
this function is defined in intel_global_state.h, it's not necessary to
maintain that kind of function ordering and, in fact, it's more
important to maintain function ordering parity with the header
file.  So I'll leave that kind of change to your discretion.

> +{
> +	void *state_wrapper;
> +
> +	if (WARN_ON(obj->funcs->state_size =3D=3D 0))
> +		return NULL;
> +
> +	state_wrapper =3D (void *)obj->state - obj->funcs->base_offset;
> +
> +	state_wrapper =3D kmemdup(state_wrapper, obj->funcs->state_size, GFP_KE=
RNEL);
> +	if (!state_wrapper)
> +		return NULL;
> +
> +	return state_wrapper + obj->funcs->base_offset;
> +}
> +
> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *o=
bj,
> +					      struct intel_global_state *state)
> +{
> +	void *state_wrapper;
> +
> +	if (WARN_ON(obj->funcs->state_size =3D=3D 0))
> +		return;
> +
> +	state_wrapper =3D (void *)state - obj->funcs->base_offset;
> +
> +	kfree(state_wrapper);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/=
gpu/drm/i915/display/intel_global_state.h
> index 6506a8e32972..e47e007225cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> @@ -8,6 +8,8 @@
> =20
>  #include <linux/kref.h>
>  #include <linux/list.h>
> +#include <linux/stddef.h>
> +#include <linux/types.h>
> =20
>  struct drm_i915_private;
>  struct intel_atomic_state;
> @@ -15,6 +17,10 @@ struct intel_global_obj;
>  struct intel_global_state;
> =20
>  struct intel_global_state_funcs {
> +	/* state_size and base_offset are initialized by INTEL_GLOBAL_STATE_DEF=
AULTS() */
> +	size_t state_size;
> +	size_t base_offset;
> +
>  	struct intel_global_state *(*atomic_duplicate_state)(struct intel_globa=
l_obj *obj);
>  	void (*atomic_destroy_state)(struct intel_global_obj *obj,
>  				     struct intel_global_state *state);
> @@ -26,6 +32,10 @@ struct intel_global_obj {
>  	const struct intel_global_state_funcs *funcs;
>  };
> =20
> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
> +	.state_size =3D sizeof(type), \
> +	.base_offset =3D offsetof(type, base_member)
> +
>  #define intel_for_each_global_obj(obj, dev_priv) \
>  	list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, head)
> =20
> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(st=
ruct intel_atomic_state *s
> =20
>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state *=
state);
> =20
> +struct intel_global_state *
> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj)=
;
> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *o=
bj,
> +					      struct intel_global_state *state);
> +

I have no major complaints.  Just some notes above.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  #endif
> --=20
> 2.47.1
>=20
>=20
