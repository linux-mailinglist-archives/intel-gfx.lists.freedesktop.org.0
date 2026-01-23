Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCRJEN5Qc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:43:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92B4747C0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3814F10EAA4;
	Fri, 23 Jan 2026 10:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EtiNAJ5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469AF10EAA3;
 Fri, 23 Jan 2026 10:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165018; x=1800701018;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9Xqi/QJNQXrijpn36uHnV4gtdWbjI7LunA0E32Xv58E=;
 b=EtiNAJ5EEHGhvJL0RPlxELJIulCL+ezgvAzwEu94P5gO3X2kIcX1W1Iw
 0ZDgGgUm82kSHmAS/HhP272mFqHf6giyTUIP1iVVJsRHIHMKHpZTYpFNb
 Tw7emcCK+OSTdV4cqm/vg/mkqi1zAuk+C3ptILW+n0RtGa1Hd+oL3enPl
 f5z+BnRzTN665LdCM6T1m2Ju6JY23exVzxsdPF05cXkjjTBmnAS8SuZuQ
 FBnpkij8BFu7E6yvki5+L6aeZ3S/s2F+LFyzw6oGjPUYrU6ZVO3MpmvLT
 HPzN0nCYFaFJUIO6ZJn4viLW4bo3HbpbE2kWbEeJOZE0qSCFZJkk20WOS A==;
X-CSE-ConnectionGUID: PZcfsKtuSRCqSDeD0Eh7rw==
X-CSE-MsgGUID: BIWHfGLvRBmEXRY3bEZWew==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="57988220"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="57988220"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:43:38 -0800
X-CSE-ConnectionGUID: Fx1RrrL6Q5aHTlPOWUqOnw==
X-CSE-MsgGUID: jqO5uW9uRcCGWgRAN7sYbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="238253973"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:43:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:43:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:43:36 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:43:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TE1CRk3CMxwzOWcw5CepVtIZb+CKJbuM/TTWI32rWnycwj9C5himiUfhtfD73QgQ2dYi2rZEnJBW8+GmFf3tM7oQaDPBBO13MmypvM35mFzSDJmsVhBP4jpvWJOaXgmmNlHXxygKsHm9lcvwIxd5+vI6OzLdjdGEnEiXw6gHOYxWqnGP8BK+asTbTws5y/DmwlN2ABN1lAsLLT1N0jhhiYPY4EhoRq6NF+kKkYzufX/sTohFYk+QRuv4Ly5XO3WxM/0UF4D3j9NdQ4c5zoXjRZvlRbic/PtmOV0JwGlhjenWtDyzXGgf1p5EREvHFsBat77c0KzycvgLSAitjgHPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1pjTNtB1LBH0gsHWbssY8VBCSOje1YCgRX7l4ra8e0=;
 b=XHa7/FD48QwbZXqd42S3sv3qekTY8YZvHU9yqYqiKAUyf4K+aJvVcUTnlRTrKyS3uoeYbwQ4W2VLNYMH+FdNB5u+qQ3CrnsLNOEC6F95RGKY/vMGTSF/PWogCAWUkbt7Qs8Z3TSZbkmSuHGSy484tdL1bYk1V5EBRlByr9hAKQYiprhS6ZjoFPcrCASRD8qwDLON83Af0x89rANss+fq5vsW1uKCVFYN4BkcJOy1gXnY5yA7AnvLbEdUdtcPyhv8sNVaufPJJi10ZdtzhnEee36Gw5858aiHkGVRvRoHLm5ZeONlneE36tzZv003orUTpccUSKszz+U2F3d8O4Tn7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Fri, 23 Jan 2026 10:43:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:43:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 06/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_device.c
Thread-Topic: [v2 06/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_device.c
Thread-Index: AQHciyrn7XA2zsrg9UiCXxnT5sX4bLVeEHMAgAGDR2A=
Date: Fri, 23 Jan 2026 10:43:34 +0000
Message-ID: <DM4PR11MB63600A6CC9823B6E00A104A9F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-7-uma.shankar@intel.com>
 <e3b2fb8eefcfe7362bd24cd626a8ee7d2c4f4fce@intel.com>
In-Reply-To: <e3b2fb8eefcfe7362bd24cd626a8ee7d2c4f4fce@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: 1ba30527-deaa-4d01-69f9-08de5a6c41d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JVePmtucj/ANmECq2PBN3Xp/Y+4RsPL5pAkt/FuoabeGVUQ5CsqjxtJ2hZTQ?=
 =?us-ascii?Q?Zv/krsmCMXlBi+8ut6tB8rc3uQckliny2j29MWHqGO1ZLijhpr+SiAsEoCQ8?=
 =?us-ascii?Q?hkpVU/rMCg4ZP6UW5oYb6x/4g2yXlY+ROiyxV1iu545NmAY764feHGFNlVhs?=
 =?us-ascii?Q?AhuUX/iyryy4UKtYBAXbyfNKNoJYfSIx7LMdlMS+LVfH8XX9wjWuw6fgu2lj?=
 =?us-ascii?Q?qFUC1ZDjg/8ML+u+gDHuLNS4azNWXsa8Pg6MFGK5WHPahm2LP6U+6w7WXE21?=
 =?us-ascii?Q?6kBDpLSeQ4vci7M0Pl6ubVmTiWNDC5es0ofty5OoqqkUEpMfG5MjzVZSwxZS?=
 =?us-ascii?Q?3pWMZ1TESclUTAA8jQgGUOoVma4UmwcgVfM9zNYcB/xtnfPMrTCxkJ5D8hdj?=
 =?us-ascii?Q?uoX3hhfIniVT0Pr6HDi906g5oCpPeYc01l+irTTxBYuboqupOw2eyyojqKqg?=
 =?us-ascii?Q?sondARWS1Ce+QXE2AO8eDd1svZad5yM4SWSIzNtvzDMSxIi1d7bsOp9oYPCS?=
 =?us-ascii?Q?xkIRs4UqeLuRxpapPKVrkF5kwwK54ncnaW3qN7x5g4QM4evfOg94eQHueWbH?=
 =?us-ascii?Q?8gapsW+WLtw/OaVF01TSP4AUG7fG1Kb6ZF4AEJ8P/BmPQGEuFGn/942gs0r0?=
 =?us-ascii?Q?pt6Q9rR7wOBQb38Lns6r40TMvXe9fyyQ3wm9xEjCZtY695TunRGvH7gZoAub?=
 =?us-ascii?Q?Qs6Dla6jn25gOKPpejigLyjnAsV0D3jMj0hliNe+azZnHKELq5BNiKHXU0y7?=
 =?us-ascii?Q?SnyLY65ZjLxx0L4nqxHujuQJH1LUifZxnHYHUzONm66JGzOBonYHyIQXgYEp?=
 =?us-ascii?Q?TNxc57UPWQi5Pxk9/FH0dL++mZJDHdZrY0A0sjBb7vRLJ6t3M5b7Olhx9WZq?=
 =?us-ascii?Q?sdHXLqbGidZDnSPZaCiLs8/zewfxbnJ96Ur79zCNKylgbRfPSkwKrqzbAKwZ?=
 =?us-ascii?Q?I/XQR1ZDG52m2Xx+11kX7ZG/X4jygVnMuq6hA6RTySEqWSnsHcb1P6jRb79Z?=
 =?us-ascii?Q?EYLSUnTLr7JgIAskVVcWW4FY8q31m/hVaM/RtdDfq9S82A7Z2E+XO68eQUUa?=
 =?us-ascii?Q?KeJabtpHYjXgIAoErvjPEsU43jYr4UnoL3Px92mehaycByuI2mbiCP1XJHxy?=
 =?us-ascii?Q?Wg/GenhzlMIgRajqfArU1JaJq7M0VHGTOvD+BSM5nlCQ5C9o/NCGrfYhGogX?=
 =?us-ascii?Q?AUfAAinzxnXxtWcfEyIbZQcZ3Pz4r1XIywAg7Ky+SNIhdj1nHmKOMmeW2ejV?=
 =?us-ascii?Q?XSDBddq7XKGhU507xtBu01puw+BrPlbvuOdmc5Uj5sn3uk7c4zsNHqE5BoKz?=
 =?us-ascii?Q?iGb2YWcXv1YN2oHuLHDs39ixMfF/iGlSR6POjqAwBl9wUAfTIsIFpWKuLzFK?=
 =?us-ascii?Q?A12aUEnNGs/DZIE4MrtX3t/cjl8MDGg2RsJN/IkZP7Kw/ZigPFnug8Av6eeU?=
 =?us-ascii?Q?0Jkc583a/CZNIqJSwvIyR1Csy5VIw24VIycfPPp/Kx1nN5DbWb7raOLMaENV?=
 =?us-ascii?Q?D3aqmWHzYLHV1hYooR0PhXhiGh1Ye2Ci2qqbGHndr7OoeawCXePv8BKT6Q7u?=
 =?us-ascii?Q?fDUQgRQcpwDVcVbg+lpUHl3fqr9vqSHS5gNqatzQUt4gCTcj9X8nILYQTyqs?=
 =?us-ascii?Q?mNFB+R4ZGF2QGtRor53cxVg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X7qU7HW++OVcYKvRtwsi5CQfHRkBq9YqEejqgphvMSz3BNw+5MR/vWW/XMGc?=
 =?us-ascii?Q?54W49ZH+47nfSWYp6kz2Kt7+WbQ/jp4yGj1yVpzZjr62LDCNZ70jqxBwKpf9?=
 =?us-ascii?Q?APGvK9sw8t2iceMm3TyM7O0NPpiDcx2nm6vYOb57bIn9yK8O4+NZhUCdEQN1?=
 =?us-ascii?Q?FPQtRooOxD1a6mCSPi/K5sz7/SmBzbKjhU3wquOSqBHK4Q8bR979bHutpHEj?=
 =?us-ascii?Q?UPRrjHVy4jkQQ4Jau6ofXHQ+O1So9+EgunzyrCxs1Oaujb8u/YH5kWvBJIhd?=
 =?us-ascii?Q?xteaWcEqO1Ew9FRrxzkeQJ3ZSFJoY69TCtcqR28R2K7lgyiJbhMBAREqEdxI?=
 =?us-ascii?Q?WR3QDHGP+ka5qUjU0/eEm27xiCiSsCuoVW3H4yDPEGziEPhGCbrClb8dnW9U?=
 =?us-ascii?Q?/II8TPTFidVqh98sMm5caacS7U92yGOi6J1WOIWVKW9cMclHE/Ooml17ef0t?=
 =?us-ascii?Q?LKMP7XXzKTK3z385gvvxZvtJLfgrvgzRJdIV7GCwOYAEyFqooV9Vj/xrBgi/?=
 =?us-ascii?Q?LOkuZzAkxI+4XYCTXksgEl/BCBUY41jOUBbff+uiIka5iyK5AMNL1miseA3y?=
 =?us-ascii?Q?ZIcjP9JD0cw3Ay4gVsOIqaCGFfrHhznblkpPpLeIrF5j+IDdhLSinQ4lsN20?=
 =?us-ascii?Q?i78ESN81YNkHVWzbMMAp94R8A0zTNtI3vrQVHPH7ogoMPStof0umPGguBGbB?=
 =?us-ascii?Q?b80m/dUY6dNMTeRiWzxC70XEYmuh4Pp4DTMySRHaPxVpnntXYL4U1cvf9vyG?=
 =?us-ascii?Q?Pk0yBYnTb23c3qQndwT7X4Zd7KrUWNae4V50lwelY5XvzFxds/HfOArSd0kX?=
 =?us-ascii?Q?YHZfipDAuoG4PxxxPFnqtqz/ZGGxOsqAxA3jBwJ+LzI35/SSHEgXvojcKhhW?=
 =?us-ascii?Q?qClGTUFh+Bq5oA4xg/SDIVaBRuQPIYeBGdE+jKCA30HqGMiVa+LOPTStckNt?=
 =?us-ascii?Q?VFv8I02Oqgqc0QUQBdYYWdryUpo2RmU/Vj0CrQoxrPtyGwwrwk12iQXjag9G?=
 =?us-ascii?Q?wWu4xmzZxCWhB0oTk+f2ziTg4moSAtIBYgSn9mrbZJHvLcMXtdl32FxwJrU4?=
 =?us-ascii?Q?QZ4UxHwnJeCdtp/VA1kboOqYaZbIRWZy03DJiKZqVGxvlr17qnm/ueReqYnE?=
 =?us-ascii?Q?pqHnAacDtNDhefuzikS41NOvXMiRo1CgnD3yhnC+J+Vu8dnU4isWXiKvpXTS?=
 =?us-ascii?Q?908LBD/mTBPUVI7J6/HdtiA5I5Xs8BxN6GgsKN9qhLts9qYkoQmUTg2Ak5BS?=
 =?us-ascii?Q?mYj0kEHwGW4zTor/nynra/YeTlujexomZ31NPuvfAhG/Uxm3/xUWyBLoeBD+?=
 =?us-ascii?Q?ia7/8pJBzEKK6qgV1tlT5RRX1iJ8dl1jJ51kTOlKyJdhj2uybxhUjY9o6Fdd?=
 =?us-ascii?Q?ZVU1bi1P/uGjU8Q+lE34xYM8SvioeaMv2N8sTRiiP+hfZLx4uAWMSjZ7Whi6?=
 =?us-ascii?Q?VOA1yK/N+AdwZIs36Fzog8ChWDPjCbHA6n5MYoOS2cBRbQb1tHnVwN+7Y9FL?=
 =?us-ascii?Q?NIocrXU4Y8cYTR4eR2j3/35pj0r5HiGYu82ZrJDphFm3vMQ8EkrCamdAh6A+?=
 =?us-ascii?Q?Ay7Bd8hUVMtybiEyaatMDBK7GnjoLt61RWvu5iRlCTirJWQawLXM9DwoPo4Z?=
 =?us-ascii?Q?PMdU5EKIV0FqZfDxi6yHuTFUHEf8enPTGGfrqTVrGn9BMNp6B2Bs48RZb7KR?=
 =?us-ascii?Q?S4Xogqpgob+F29Bp58IDEGRIId6sKo7OXN6chozyrKR+mMKPO8cXg8a4bkd4?=
 =?us-ascii?Q?DADgzHvyLw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba30527-deaa-4d01-69f9-08de5a6c41d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:43:34.0716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vRZ110CjBg5WFjq2V8ahnBdfkIyo4t1YSwEtTewe4955GuK8Ocyr7ZeB9xf1TPObp/JItP/Ry+Gdlf44Gkifmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A92B4747C0
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:07 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 06/19] drm/{i915, xe}: Remove i915_reg.h from
> intel_display_device.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move GU_CNTL_PROTECTED to common header, this helps
> > intel_display_device.c free from i915_reg.h dependency.
>=20
> This doesn't mention the GMD ID stuff.
>=20
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_regs.h   | 3 +++
> >  drivers/gpu/drm/i915/i915_reg.h                     | 8 --------
> >  include/drm/intel/intel_gmd_common_regs.h           | 5 +++++
> >  4 files changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> > b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 471f236c9ddf..f7cc4198a870 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -9,8 +9,8 @@
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_print.h>
> >  #include <drm/intel/pciids.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_de.h"
> >  #include "intel_display.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 5136b7166775..3447ee229354 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -6,6 +6,9 @@
> >
> >  #include "intel_display_reg_defs.h"
> >
> > +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> > +#define   DEPRESENT			REG_BIT(9)
> > +
> >  #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
> >  #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
> >  #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe,
> > _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL) diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 35122c997b8a..fac24a649d61 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -117,9 +117,6 @@
> >   *  #define GEN8_BAR                    _MMIO(0xb888)
> >   */
> >
> > -#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> > -#define   DEPRESENT			REG_BIT(9)
> > -
> >  #define GU_CNTL				_MMIO(0x101010)
> >  #define   LMEM_INIT			REG_BIT(7)
> >  #define   DRIVERFLR			REG_BIT(31)
> > @@ -925,11 +922,6 @@
> >  #define   MASK_WAKEMEM				REG_BIT(13)
> >  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
> >
> > -#define GMD_ID_DISPLAY				_MMIO(0x510a0)
> > -#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> > -#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> > -#define   GMD_ID_STEP				REG_GENMASK(5, 0)
> > -
> >  /* PCH */
> >
> >  #define SDEISR  _MMIO(0xc4000)
> > diff --git a/include/drm/intel/intel_gmd_common_regs.h
> > b/include/drm/intel/intel_gmd_common_regs.h
> > index 8e9a574c87d9..489d59379ab0 100644
> > --- a/include/drm/intel/intel_gmd_common_regs.h
> > +++ b/include/drm/intel/intel_gmd_common_regs.h
> > @@ -105,4 +105,9 @@
> >  #define     PCODE_MBOX_DOMAIN_NONE		0x0
> >  #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> >
> > +#define GMD_ID_DISPLAY				_MMIO(0x510a0)
> > +#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> > +#define   GMD_ID_RELEASE_MASK
> 	REG_GENMASK(21, 14)
> > +#define   GMD_ID_STEP				REG_GENMASK(5, 0)
>=20
> Only display uses GMD_ID_DISPLAY register. I'd put this in display regs, =
and
> define the register contents with GMD_ID_DISPLAY_* even if the register
> contents are identical for display and non-display GMD registers.
>=20
> Main point is, we should use the common regs file as little as possible.

Sure, will fix it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
