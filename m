Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAxTJxvkjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:43:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B56134295
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E6810E7B5;
	Fri, 13 Feb 2026 08:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rcni16Gx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C17D10E7B1;
 Fri, 13 Feb 2026 08:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770972182; x=1802508182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dk3XfC60p2kI3XPTESJQX+/Kr6++Vj/zg8/0t7bd7Dc=;
 b=Rcni16GxCNBufFNYZjyXqZcFHZ1JanbJlbQ3GIXj0vbPx0ZmufwE+A+y
 kH8TOBbbB4x7hE89PWQZwxd1wip3lMqGH/qU9tVfbbnbc9sdC6LFrsIFD
 SsC1XQBnvVJVpru5MDZPR7XkSSN0r69sjaBZ+Fm/1a9ULkFULemWqfFnb
 pK/2Xx7HxrQkPax1jxThRPbMuDt14TIjqaQ+ENdMjgHvhJb7SE9D4ke5c
 1liQnwFyzCj9ABHRnaoyIRK7p2vxyoBqh/1F7VwyJFeStLfp4AFPxT4V8
 gqkNVbonk5bwo8In9zlW2VeEMqVU2KoT94tH7SgRcWSy4KcP3ch3SKwPU A==;
X-CSE-ConnectionGUID: 9cXvYEr8T4i7h1VTcE6BEg==
X-CSE-MsgGUID: pCG3aLG7Q4Gx6TgEwg282w==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="89566016"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="89566016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:43:02 -0800
X-CSE-ConnectionGUID: SqicJPpjQOOLeffiTQWxZw==
X-CSE-MsgGUID: cWNJ7UYhQLyVIng3AhwMsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212297053"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:43:02 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:43:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:43:01 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:43:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VaL2LOZeXaR6z6UTfB0mbPcJPG4NHCP0dnoqSzqG1PGOuBMww6JB5l43W15lalGKzNoFK7S8JG9VsFY8YnWlhh2aOgY0ovK8l0W79tawXQ+HZx1p1Uq7HV0yrAN0HCNKVx55gedyS4ZBT7QeKpxLf6WPl5Wf/ni1wtUx8mluu7OerHGCCMUxIdyAz+QL6HPp/3lEjBVhP7o9r9pd7c3UAVW3G6c4uVLcHGTGyPk+YYkixSFVeQodn5MKU/ctijDFE2kjpPYdz1uMvq4iTO0Z983p1hm7LM/R1kN3rmzCCiSvPbt87/4Su6DQ9eY+7iFb6lQBGdWg/z+B9+/vFlDoqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+1TBiFKnRZp3G3GlHk24mGzznMIH7IsQzEbluHyF9I=;
 b=g6cJ/2u0xOuUnWwwvZugtBUk+NXNcOg1SbNrY42K1WN+z6JgNWvuqlsvPPrj/0z1BT18qLsTns9j0bi8SBeEUIGTx5afVW/0ElLL2HxdnsISx/v2IHsyM7rZ4yKbb1AYaxtcMdUnrZuHT+eyCDo1foPEgEgfjR3PAXq/S+0F6Dgw2cO2qgnju6M6+nZZohCLRtDCK5qrjiArz5YAHJe6fozo9VP7kxaJQE6Q58Nt59J/cx+lFojCsLIzf+2uz1DWLu+IGlBe2Moyv4kGLYC51M9ummQ5+sLk/7kz5wQYufu+0EsdnCEzX/Im4xSm8HB6pLD4tXuRag2AcB+Xr+oS6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Fri, 13 Feb
 2026 08:42:58 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:42:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/15] drm/i915/display: convert W/As in intel_cursor.c
 to new framework
Thread-Topic: [PATCH v2 04/15] drm/i915/display: convert W/As in
 intel_cursor.c to new framework
Thread-Index: AQHcnFBFBi5vuC+BXkm8S/+fxl9Cf7WAUE7A
Date: Fri, 13 Feb 2026 08:42:57 +0000
Message-ID: <DM3PPF208195D8D7F266E70FC4E81CDA15AE361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-5-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-5-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: f7fec123-569d-47a7-ee4b-08de6adbe37c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?FzoK7ERmEUok0hNxRwefDpBKucIwMhMz6Eo/wnb3SG/9K7NnwznBS5NDl19U?=
 =?us-ascii?Q?pgOW866o4jr+K1mLSZ41xBy0nBYPOz9SaRZaqAblrR46sRD/eZrsQG2IW+54?=
 =?us-ascii?Q?scTtq7gPsLmtrL5y8vLzZMIvvIVGtmRHWhM4g/NSc8asXW3Q2Q6Vuf7ISSWm?=
 =?us-ascii?Q?kkLm6WSFRwbuhkWvrt/la/m8s7Ab29LS4WSYhioqS9drkkvvy+6uP8fkuWoU?=
 =?us-ascii?Q?JA2TW3CAwSWJeksUi/3QE1n4Ix691ikhCbYDDWAzkNdtG+DiYIEFAVhLClKt?=
 =?us-ascii?Q?8bRjGyxZzp2ZDzKdC+GeHvly2JbY87GBRCTF0eF1B6MC6DBmqVFPD4YZ6LBH?=
 =?us-ascii?Q?/kLQo9i7J7ctmEtP6VpUEltNH4dQLCVY+6O/P3/fr/PhRN2nmrwToC47EwbG?=
 =?us-ascii?Q?qKdsl8MemJc+eiQkkeI5bxNyjB8XJGuWPECXLeTpSnXXV1V08FAi3BaBoL13?=
 =?us-ascii?Q?yxwGb9IftlA/2R9wKUi0v+hmRYWkW7YmhgmMv+yCGrnWiTtFPduP39JUG8aV?=
 =?us-ascii?Q?09IrmhDzB5L6JQQfwV93a14XsqXfvrBfUQCdbbcEXtLiCBEkIh3Tq1ZEHwAi?=
 =?us-ascii?Q?NLzXGh9laMjWya94AbOK9XNCyF8NE9wKNR3nu+LGFg6L3iO3itB+3BPV3GNq?=
 =?us-ascii?Q?w4ZidEcubiSY4qwF1k84PQ/N7qrF/Sk3IBIyvXYP/8u2jw07adILR0mNuK7B?=
 =?us-ascii?Q?d6X+1LYKBYpT+WsnuaKeIZrJzxdMMWlloN9MYWXSb5zs7RTESVF6R/EACvoD?=
 =?us-ascii?Q?Ihn8V/Ve21ByyDY5vt/vTPOI0zHT0y4KkLA6Kh30roG+3WTc8QUBh1yo1+St?=
 =?us-ascii?Q?3v0syZcmS208paErUg3fGm9VN5uDqDoF4Mku7WTi8MUu9LLLQ0t+f/EqfOk0?=
 =?us-ascii?Q?5QmlpsIuLNyxmPTTm4g3PFwgovXoVVKJcr1FrtmYeycmukUwYAIPgSpEYFi0?=
 =?us-ascii?Q?d3rPs8Y2k/iLoZ8bXqiy2ZNfo80ZcaNmhNUIK+/vD/aaUzWZ3kZmJc/Wgd0F?=
 =?us-ascii?Q?iBY/+tT8u/i/WmL0IoJAc8CkAMCiwD0h1ssOv78PUM5BgFKqCjoWhmzPW3yd?=
 =?us-ascii?Q?yBWneITKXWCu0w4YevzZnJfbH6gQ7sENts3JRuAL3X/pTkqUQlqiuyBWjI0s?=
 =?us-ascii?Q?gAkEeBq3kTx9cZJMqwcle2yIBYOBGd57W2dIpbGQPtl5Cv2MNziAIWFedRDD?=
 =?us-ascii?Q?w/aZuRGT1w68HjOH05hlM2/HPnClAex9QzfmssQFIhq8Jtap70a09ONPJTAa?=
 =?us-ascii?Q?BwcAqi3kTyzUm4pY5GK7kKe1ugPWQDo9CUt16KV+U4WE9lsQOmdZf2U/9syH?=
 =?us-ascii?Q?j9WrQaY4SLIQJLds1zTGlZ8YGbGXeYUVZnzoLiML0kTWbrfXUCFk0kzP4vDV?=
 =?us-ascii?Q?i4xD8gC4x72hrQzY/rLO0pSfCDi9tA740xg9MaUDMIF+3qogMI9935ZFG9Pl?=
 =?us-ascii?Q?yoRNzIKwDdDB1EXIDSB1wLB3dKbyTMtmQE9hP+/n1ZYLAv/estQTDUZg6nS1?=
 =?us-ascii?Q?Zp7paNrgoaz7iXXjy0hYGz6UknMlonVOSeeBdmCg3AnrQmQWttEewpgR5m3h?=
 =?us-ascii?Q?FkSw/N/NdAmIl4vBdKxmRsHGwRXmF7cwrTpCB7N/sO7kogn/RSV6q1uh+RY5?=
 =?us-ascii?Q?IHiAATK54xtpNy2ccyIi96E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HhWqChMhGqBsu0+Jyh9ZHDfQrcWG2aCuLRQvP3BYAAxnIqX39mRZ/HHr56gl?=
 =?us-ascii?Q?GgagVpd88b154tiNBV2zGVYWg4xOpiYuvNxheLi3dhYNBa/XdDIeAbl4+ADx?=
 =?us-ascii?Q?rp9wrBJZUCsG6hxsmECe73LOLOvIZ1KcmhG4SfRqHBMPDnPEHK1UOZ995ZO2?=
 =?us-ascii?Q?7nTY507h+YokF7p4GBIgMCYAG+2f81PMnWf/bgebxtK8i6LMVt+aXw+Awr9X?=
 =?us-ascii?Q?yUAMwaG5DufxAKM02zKkhilev3OxtzLReAyfKG6N4fqrgz8ZTw31LX7wWPa3?=
 =?us-ascii?Q?sdQoEPsTyTAHn9nJrOzIILG5A2XHsSNbac3CinTgrtYb8TdoRpGausEAlEB7?=
 =?us-ascii?Q?TSoBwygrutVdYc3X092LEGpvDwYplkU0HqqIOMU9mTgMfZlxAh42vBDW4X5u?=
 =?us-ascii?Q?5w2w+6alCDxu3wdPhyF1AeSq0gEk7KPIut08UuYYQJgZpP/JPzkIooBKTCg/?=
 =?us-ascii?Q?WRlgOM3o7JV8ryiQ78SjnzwgtywH6F2A9qouwpkl7rHOWwH8KfJtORn/bTbD?=
 =?us-ascii?Q?pPCqVsN2LhAT9zP+9Ic9O5I1cAXGqt3ZjaN2K2tX/wfBKYU7jcO//4aIqmE8?=
 =?us-ascii?Q?rtRVBGbuaLakX6p9ozd+d7Z8oVsUx9gq518tktzTpviX9pMWH6Vt1uBeQ93U?=
 =?us-ascii?Q?jldFcElO62/25U0si1GGw62zO0BN7f5aJ4kmrn7bbe+isKEd5gVpbjZZGAiv?=
 =?us-ascii?Q?9vr55jTQ8FO6nVTiNoLWnEJUnGnDmrucue/8f21cyi5c4LPiu7wwjvBPYH9n?=
 =?us-ascii?Q?Gebq2T7qYZ0AP83xc1Vochrgsh68s5fCLWlZea0DQHe2VEu5hOYb+OSCcF3K?=
 =?us-ascii?Q?m1S54vw5rjA7pZ423o1WDgkBtNljR2AiMBQIXwU9QWJDwclg87dHA+YSERyl?=
 =?us-ascii?Q?mSqhuwPA1wGP9jP2+jxA3I1hA/R21xDqyYr6jwSlPafHtn1ov+uVCyQ4oG0C?=
 =?us-ascii?Q?5HD1KXWZn7aMQzepKNTxxi2ZpGPPRs3WUGdl9yyoQ7EhTQIP9ijF2K9gC8aM?=
 =?us-ascii?Q?/A+PXCYLafsJOmmBvEd9ZhQXJ3QozgitDs5tlgNeZAcNvkRnix9raK8VfgzW?=
 =?us-ascii?Q?SsPkvl9AkJ/nFmt2ffDxUVMyZ8Qp2wLTwg7nMmagFbn6torQT3kXRo4hfnTG?=
 =?us-ascii?Q?cZn3i/SipJDWWavTTrbrSohxCREzzoqh8v/YcJq0Rnt5CtWY85x8IzR7nzbN?=
 =?us-ascii?Q?YIuAq9ziJ+bafv4uHZk2Uy8RMBP0tKUcc+3bWEYSYJY+Bfa2eYvnKdxo1VSw?=
 =?us-ascii?Q?8fFSuTqArizQ1K3VdRKB0AGql1tbPKRWGY8KTOX+ngEf1WGCqnfsxgtPi7Ja?=
 =?us-ascii?Q?Q91wQTkLq3bYYIJSdIIp0UJEYX6UehZhRM0TIKHtjgDIJkZSFRY43IH6FH3z?=
 =?us-ascii?Q?e6sU/RZ+T/W+9wt/8J8wjwCt81n+806t3jretIwdK9RMEgt0ftYq3I495aps?=
 =?us-ascii?Q?ytsOhYHOcosRACHV7TRVbt5KmMhxtA8WePuE4yVX1kWY/KaeDUHWRhaUoP9f?=
 =?us-ascii?Q?xyMwksS8dw2OQZV0E0Kkh23UF0QcImBR+5zL8MyBQv19h+pdtD6ubs4SKSar?=
 =?us-ascii?Q?If/e0w55QmTLhQuKJSDR/bI4HMxfo17oEcZLGYCF/hwDuBhqeYMGhAqRUhUk?=
 =?us-ascii?Q?Z2UnigBkylX8ihCtGLgePdQcW3xO4qZrF4WpeRwRmesuqdlMnEKc4iljaEKP?=
 =?us-ascii?Q?pLnIyPM35wxmWaVxNSX02B4dEj7Bx7Om+/hvwkzH/w4r7OQCsvDB0cLiy9gd?=
 =?us-ascii?Q?x/07O9MBKQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7fec123-569d-47a7-ee4b-08de6adbe37c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:42:57.9729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: khP9rYqqKbyPmeaFNUHPDjtwvdRGGgVmj6JdjM68oM5T3B86DmAg3CdOhiaeVDHbAxXAz2JTdL2XKsbP4lWg9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F0B56134295
X-Rspamd-Action: no action

> Subject: [PATCH v2 04/15] drm/i915/display: convert W/As in intel_cursor.=
c to
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

* intel_display_wa.c

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c     | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 1 +
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  3 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 2c5d917fbd7e..53cd27fd4fc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -19,6 +19,7 @@
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
> @@ -424,7 +425,7 @@ static u32 i9xx_cursor_ctl(const struct
> intel_plane_state *plane_state)
>  		cntl |=3D MCURSOR_ROTATE_180;
>=20
>  	/* Wa_22012358565:adl-p */
> -	if (DISPLAY_VER(display) =3D=3D 13)
> +	if (intel_display_wa(display, 22012358565))

Ahh so you define it here=20
So with all mentioned comments addressed for this patch
And ones where WA 22012358565 was questioned.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com

>  		cntl |=3D MCURSOR_ARB_SLOTS(1);
>=20
>  	return cntl;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index f0311cd477a5..8473cb25c92e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -85,6 +85,7 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  			INTEL_PCH_TYPE(display) < PCH_DG1;
>  	case INTEL_DISPLAY_WA_14011503030:
>  	case INTEL_DISPLAY_WA_14011503117:
> +	case INTEL_DISPLAY_WA_22012358565:
>  		return DISPLAY_VER(display) =3D=3D 13;
>  	case INTEL_DISPLAY_WA_14011508470:
>  		return (IS_DISPLAY_VERx100(display, 1200, 1300)); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 0d0501fc276f..7e5f5a466e2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -42,6 +42,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22010178259,
>  	INTEL_DISPLAY_WA_22011320316,
> +	INTEL_DISPLAY_WA_22012358565,
>  	INTEL_DISPLAY_WA_22014263786,
>  	INTEL_DISPLAY_WA_22021048059,
>  };
> --
> 2.51.0

