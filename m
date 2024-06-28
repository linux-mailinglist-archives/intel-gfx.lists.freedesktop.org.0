Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C7791B9AA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 10:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E3010E0E9;
	Fri, 28 Jun 2024 08:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Imf8WAm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1890610EBD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 08:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719562699; x=1751098699;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yHCzDRE7Dgh4/n1CIqN4ZO6G4CkNR1SfwBCwsmarFJw=;
 b=Imf8WAm3ay7J7dC0ZbBNUH6YCQu9DtJN9so3oP3dkBUKmLRHkl7fGz7m
 XMfqfpYG01xShXDXWITAWqHIt1WqCow7edGnX6BW8+2I5htzzff8fQMAc
 6JAGtAQ4vkPZ3PBANX4v74QoDXMjaj2bCERxHjqWzi0dfw13k6jicegFd
 3vbVE4HF6+CXX0M18FeS8X3EiEebRBKFP7kK/ODGqxlSRSsr/wjlWIpYl
 kj7PqRloX1CvJVCcnSJjGBIUn6eY/BvzIagIZ5y7loGM3aNXy8tjSU9NW
 L/6Gij0sl1oyhBvFU7VX235Ug3f8YFrBi52eoSmugmvBUNUC2y9tu8Z3s Q==;
X-CSE-ConnectionGUID: +ynFHLpGTvWUFBU6MYIeOg==
X-CSE-MsgGUID: nOEbd6c4TQGpYhb2rREjFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16868084"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="16868084"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 01:18:19 -0700
X-CSE-ConnectionGUID: nkZi32fATcCvyM8KD1xPUA==
X-CSE-MsgGUID: mkNT/r6dR8GogE9Cyj0lfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="45320215"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 01:18:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 01:18:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 01:18:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 01:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QnCuzkYdNEgwhblpeNzkwoyFMZauA39k5gXswq3VL/DKp7WHTM/o+Wt0uHFAB0vXoHaXirce5LI/rjasN+GvzCUZzvC3h4onWHNTU5UjvQv7QMvRQb8MQPh0cLLMwpyA4jSBuToOPtuswctFWixgWlhSPcJ9pFd+qk2KE2DigSy7XQyK7oNNm2WK13aGkIXpexNf3J6h20RyD1WttshNIwCfadqFTBVjaa7msnmyFYCzilPLeCVf1q0N4/f1U8cVDfjADqH/MhTOeCLJGgt/3aDm6f4BouODwXeiPks3V9BGKM1ZpTnGu4rBVhFcdQZWekLPcu4V6+KGPRTVok0C4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yHCzDRE7Dgh4/n1CIqN4ZO6G4CkNR1SfwBCwsmarFJw=;
 b=YfQyPyfq+DdqrQZ6yPMVYUGk9zpkmmP2KChXcq5jQJ+o4Wp4thfD7G9sI3x8xO/Hu/34zUjkRvBh1x5NrBxtwvO6mWd4k39Ne9ueQTTMo3jSAHOX6jAVJ1HLnAdkRzkENg3roDg5gMsOGoN0UMPLIDWElR09t3x6pc1jrCTwdoOBTh3Lld1vvrW6wRr+4Cs0flnbNcEZxe0G8jDSd+8Xts+32MuBcPuUWqon++iyEqSryRI5Sgthyfr+z+HWjXJrveWkLaenPHAwexMCjVPAG4Y9wUHfAvhEjUKmZ3hFkQvo9RDStzeq3YndkpfDyzfZsevr/r0tRQRTkjDU5LTclw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Fri, 28 Jun
 2024 08:18:16 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7698.025; Fri, 28 Jun 2024
 08:18:16 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 02/14] drm/i915: Make vrr_{enabling, disabling}() usable
 outside intel_display.c
Thread-Topic: [PATCH 02/14] drm/i915: Make vrr_{enabling, disabling}() usable
 outside intel_display.c
Thread-Index: AQHaxmo9tTcd+ZZEoEWGRu5x25M+5rHc2mFQ
Date: Fri, 28 Jun 2024 08:18:15 +0000
Message-ID: <PH7PR11MB5981F2A286F0309D89935BD9F9D02@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW5PR11MB5860:EE_
x-ms-office365-filtering-correlation-id: 0bc6a78a-d893-4a58-30de-08dc974adc54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bDlUOWRGTm55NG9HekpCTlNaemRpM2NsZHpoZ2Qwa1FKREFDTFFLN1l6UzV2?=
 =?utf-8?B?UlVVMWVjM1owY2xGTDNPM0taT3RYdElPaDZBOU11OGFzMVVQRXA0ZnhBT1lY?=
 =?utf-8?B?OUdNOE51bUtDcmJsSW13VWZpdFJjRlhjTW41dWkrR0cyK1M0WE5XT1FtUGNR?=
 =?utf-8?B?cUpGWlV2R1BTTEQ4Z1NWQlBNZGRBaVBqZG9RQjI4VTFvaFdzSlFmUkMvRHEv?=
 =?utf-8?B?TEdhSjlNdngyVXdJZWsvUHlyS0lUTDhYRExKNFlpUlpHSEwvNFRKK2dnS25h?=
 =?utf-8?B?UFgrTWVrRHo2bUUxcUFIOWwxbDdNZGc5MkhKcTVEd2N2SHUvWUlRT0tENkN6?=
 =?utf-8?B?bnlQZndYeG1tZDBoQXFEZE8yWElEcXFEUThpNDRFMlZIS0tvcFBmbndPOGdW?=
 =?utf-8?B?ZG9lTmI3TTFzdVA0MStmRTMrL2JoejNUdzAvZllOSkRuc3Q0Y21XWFlLU1hR?=
 =?utf-8?B?NkhJckp3KzZvN0p3bGQyUGtUN1dvbjljNU9pUTZyZkVRT085a2VhQzB3WG1o?=
 =?utf-8?B?SUI1TXBvNmh2ajVYSXBsdVVXcHJHenlTRVZLSE9aT2Z2RUkyK1FwOXIxdWJL?=
 =?utf-8?B?c1ZjQ3FKdDQrRGs1c3pxOFI2R2JDeGREcXZLVXFXckpOMGdUM1g0aWM5YU9t?=
 =?utf-8?B?WlgrTkV5MnNjWE9wMzJybmxLZ3RYcGFFUFRQT1VWY2lrUDQvUi9tT2xMcE9D?=
 =?utf-8?B?TXMvemZOSlJ1NlZnYWpJU2dnWk1Pa0xJaXBQcEY3L0toYnB1WVBrTFNqeW9y?=
 =?utf-8?B?Y0QzbXRqSzE3MVpLVUdWKzM0UlhiQm5hejI5ckxOc09BbS9NYjlvTjdjM2dV?=
 =?utf-8?B?ZVg4RzhDOWJuSGY5c2RobVVhRjNjTXAxY1p4bVRRY01XOExrLzFvbnhDTWgy?=
 =?utf-8?B?UVg1SnFLcnZtU0h3NjNPU0NmUUhsWVlhU0xncXFJdnVRZ2VYdlNMa1JSdUla?=
 =?utf-8?B?cU53a2NxdjdPSm1nQ0I1UDhxb1U2amFxT0o4Y0h3eDBwSjJhd0Nvdk9mU0Fx?=
 =?utf-8?B?YmZTeU9mSENyUzh2c0NHRlFZeTJWRVd3Z0pZVzkvajZrZW1vUnB0NGRVbDVw?=
 =?utf-8?B?WFR4ZVFNSGVLRExheGRsQ3FzK08zVVRiT0xDUzhKOHREOFhvajkzd3VqZ0w5?=
 =?utf-8?B?UmFNZlpZcWVIZTBOaEcwY2RiNmpPQ09TcVdCM2tZd0JZNXU5eHJmaVRLQWt1?=
 =?utf-8?B?SWxZYUNvbG5pSzBnZUVGeVhsS3Y3OXNJTCsrNzJJTE1TS0Zmd211S2s3Wm5Q?=
 =?utf-8?B?cTZkS1RoUG5maTdzWTA2elVDRTdjSjRWREZ4QTFRcHBRTUxlWEo2T0FPMXRu?=
 =?utf-8?B?RnVLVE0rRTNTTFp0SE1yN1NidVY2akVvQVo2S0tUR2tYMElvbkNlM09BZjJM?=
 =?utf-8?B?V3VYVXY3TUxDVUdSZEZaL3lDVGVwcXNtcHlGS2dqeXJNdHZzK09heEg1VTFF?=
 =?utf-8?B?Y0tOQUdxNEs4SndRUENUQ3BsZUZKUWhIZlNVMUhHZU1LeHlnT2NFaGFROUxn?=
 =?utf-8?B?VHVGbUtUSzRwcTJuOXJtVzUyVmZaL3QycituY0hkRVRzSzNJby9HVk9HdUVF?=
 =?utf-8?B?NVMzZS9rUExBcFV2MmVvYVd5SG1ScGdKdDEyMXRLcG5iMmV6L2RIYkxBRmdy?=
 =?utf-8?B?Qmp2aHZGSElhRENMNWEwakErVnpQQmVHV0FybVl0RTB1Kzh6R0I0RTVSWFlY?=
 =?utf-8?B?OWgzcmwzbTRaNWczSTFBK1RuRHhhaGs5emNic0Ftdkt6MWRmbzI0VEZhNzJB?=
 =?utf-8?B?VlNLRktxeHU4OHRsaVVXYUZsSVBIOUZVYVlwRldpMkJSUE5hMmNPU0V3aVda?=
 =?utf-8?B?aGM5MHJpK2tWZHA3THJ3aW0rcDlOQUZMeGlYbFBHNjhYQURNV2l3M3p2NThZ?=
 =?utf-8?B?dzA5Z0pnRzNRWkhPWGtNRDJjWXpmSFBsWGxiN2xlUHdENkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTRDL0lwcTY5ZWFYVHB6UkVyU0lmNXRlKy9USmlIM1pLT010eGx2ZzQxeElm?=
 =?utf-8?B?c2VzZEM0NVJYVjdOcWZEcjhvT25Ga2pxa3hwQVcraUFlT2JzZHY3NEFKYTBm?=
 =?utf-8?B?VkFWQXlaS1dSK1NkNXpNc0hxZzFHaDVmOFJqN2FOZTJmbDFMbW90RW9RZy8y?=
 =?utf-8?B?YjVLeWY5L001dGFIVDhPS0dINjZGbGlJczRzbndjTmlGelc2Qzh1RWRPK0pD?=
 =?utf-8?B?Qjd1eHdSaVAyQ0h0Y1hDNlNuU1JLclBURWV6eUJoMllpQ1ZZcWpGQm1kYTR0?=
 =?utf-8?B?dUFUNm1HVWp0VFFXamtyRFVIVHA4aWQrVVZYSzdZV25UTWtIcEN2bFB4Yk9M?=
 =?utf-8?B?amYybzFzaHcrMmJOMFczUDhVN294dVN4TUNNeENzWE9nVzZ2eWY1K0l2NHhz?=
 =?utf-8?B?SUdaN0UxaEJTMGxKclhrWWV2Z1hBK1A4S0ErMi9DN2pGVUw2U1VWVFhNUUZL?=
 =?utf-8?B?Q0xnZjl5RUFEcW5qSHJ4N1BsdXJoUUkzQzlYL1hZQzdCNWpSR0hVd29Wc0xM?=
 =?utf-8?B?VkpMNThHOXVLaDA0VFRCTHhIZGZoWk9oc3pWNHdCRCsrczh6UHBRL1BpbTBv?=
 =?utf-8?B?aWNEelVrenZhOEdUZ2Y2VjZRZGhkRUN2MVpicHJJUmltU3JocnlBTWFwb1Rp?=
 =?utf-8?B?ZjM3aHpqS21MZEdhOXF2MWRHbzhrT1NFN290WTZNMUcrR1pEU1JKYmw4YTBD?=
 =?utf-8?B?ZGp5Ui9ZUWZLd1NLcFFBOGJ6blNtNVdMenkxSkUzZVJYMnFYbzM0QnNhcGlY?=
 =?utf-8?B?NzRqNEFzYjFrbmIwK2FGeGkvRktvRTJoUEpKTER3TzdXOGJiZXViSW5qMU9t?=
 =?utf-8?B?SGZEYUpjU1J3eGs0d1dmTXBhRXM1YmNDeng0WmM3TCtBeFJqUDVWZkNUK0hQ?=
 =?utf-8?B?dHE5SGpYeXpjL0lwanF1VWxlem93TDc4ZFhlZzhMSDZCYm8vb25TUkEzMm85?=
 =?utf-8?B?QVhlTE5vOEtzQ3hEUnhHYkhUQ2JwN2Q3Q3RQREFUakhTYWtwbjJkbjZGUHlw?=
 =?utf-8?B?cVRYOUFuL3N4Ynp0VzFsSzlVMDVwTEJLTDMybWRpUmp6eS9TTlVEYmo5Vlp6?=
 =?utf-8?B?biswTjRNdlJHai9kU3R6ZU5lWW9HWWVCekhEZmFENTFveUIvUGNaYXQyNnpU?=
 =?utf-8?B?QzhEbzZ4bmZGSnFOaDBsVlNQK1lBOHZSMlJURkJnbDdzVzhRaTBYcWpDQmNE?=
 =?utf-8?B?bzg2Qyt5amFjSGY4VUcvby83blVSeFlVODJNRTR2RkFjc01HaUJRV2lEV0lS?=
 =?utf-8?B?Y1FKSmw4K1c4WUNGL3daMGRQc0c0aWlUelE0WmpyQkZPbUNXbzEyZlBjUzNx?=
 =?utf-8?B?QWozMFN5cHBJd0V2Qnc4eURRZ2ROSlZpbmpQdS9ZV0U2LzVaNnMvS2FrZVdG?=
 =?utf-8?B?U0pIUnlCaEl5Mkg5T3gxQ1FGSWt4Z2c1N052Q1gwaEZCVmhCTFFqS1dQK3Ux?=
 =?utf-8?B?QjhISWFTdE9QaFpmS3ZtdTVSdmFuUVZrQUdTTHRrTTJ0ZjdlalpUcTFBaXh1?=
 =?utf-8?B?VXI0ajlseUNjYjB1OXc3b3NVVCs3Q3dUNmVhVmNybXo0NUtMNjNxbDJWbHpr?=
 =?utf-8?B?YlVXSnNlandsRkxYTGZqUXRaY3BJSEhaU2d5cXlCNUF4TkNCcW9yK0RyNVJw?=
 =?utf-8?B?bkJUalBvYXFmZFdiTFNycFhPcXdDSW9JWHpNT3ZWK3hML0RneHgzZlQ3cXBR?=
 =?utf-8?B?MVNtZVgwWWQ2NkFPalZOY3p1Um51azduUW9iOTl2WnNudXZkVyswMDg4QTVj?=
 =?utf-8?B?S2pOSytwM2RKajBScG54S0tsa2gyZmw4MXlTcklEcXgvcm9VeUl5SU5ZQWFV?=
 =?utf-8?B?c29tQ2xKRTlMTGRCQWoxSkVXYTUvZHJEVjllbTdETkNKK3pvMHhwQktOdEx1?=
 =?utf-8?B?c01QRFV2WHhVcExpc0twbjluY0JEVFBRZFJ0YTlDdDdtRGd5U3hrSDR2bHFY?=
 =?utf-8?B?NmlidE5qclRtdy82TEpLNmpUZTdSRWJBeExwSEdySDgrMEVhVmtvdzA3QTVG?=
 =?utf-8?B?TGJYNWlNWXRDaytLeXl1b05JUGlYQkM1aHZ0U0FHeWN4a3E3czBLZWJuWVo5?=
 =?utf-8?B?bmUwaGVHcWtzRjV2UDlIL1JZSlJDMGFVd0VxNG5XV2djaWR4Vnk4U3V6djNR?=
 =?utf-8?Q?Wfr+sj8LlmDHVEGdQcrc6sCXF?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bc6a78a-d893-4a58-30de-08dc974adc54
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 08:18:15.9290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRGpc/P1zWC7TkWHtvj+RY0qkHIlav8f/XFH7hEGUFbNcFd74D4tdD9PVnuYbPJ3vPLq/aeWlRKIWuKnYqz5iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAyLzE0
XSBkcm0vaTkxNTogTWFrZSB2cnJfe2VuYWJsaW5nLCBkaXNhYmxpbmd9KCkgdXNhYmxlDQo+IG91
dHNpZGUgaW50ZWxfZGlzcGxheS5jDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gR2l2ZSB2cnJfZW5hYmxpbmcoKSBhbmQg
dnJyX2Rpc2FibGluZygpIHNsaWdodGx5IGZhbmNpZXIgbmFtZXMsIGFuZCBwYXNzIGluIHRoZQ0K
PiB3aG9sZSBhdG9taWMgc3RhdGUgc28gdGhhdCB0aGV5J2xsIGJlIGVhc2llciB0byB1c2UuDQo+
IFdlJ2xsIG5lZWQgdG8gY2FsbCBhdCBsZWFzdCB0aGUgZGlzYWJsaW5nIHBhcnQgZnJvbSB0aGUg
RFNCIGNvZGUgc29vbiBlbm91Z2gNCj4gKHNvIHRoYXQgd2UgY2FuIGRvIHZibGFuayBldmFzaW9u
cy9ldGMuIGNvcnJlY3RseSBvbiB0aGUgRFNCKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjYgKysrKysrKysr
KysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gaW5kZXggYzJjMzg4MjEyZTJlLi4wMWE1ZmFhM2ZlYTUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xMDE0
LDkgKzEwMTQsMTQgQEAgc3RhdGljIGJvb2wgY21ycl9wYXJhbXNfY2hhbmdlZChjb25zdCBzdHJ1
Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+ICAJCW9sZF9jcnRjX3N0
YXRlLT5jbXJyLmNtcnJfbiAhPSBuZXdfY3J0Y19zdGF0ZS0NCj4gPmNtcnIuY21ycl9uOyAgfQ0K
PiANCj4gLXN0YXRpYyBib29sIHZycl9lbmFibGluZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKm5ld19jcnRjX3N0YXRlKQ0KPiArc3RhdGljIGJvb2wgaW50ZWxfY3J0Y192cnJfZW5hYmxp
bmcoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJICAgIHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpvbGRfY3J0Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUo
c3RhdGUsIGNydGMpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0
Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNy
dGMpOw0KPiArDQo+ICAJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiAgCQlyZXR1
cm4gZmFsc2U7DQo+IA0KPiBAQCAtMTAyNiw5ICsxMDMxLDE0IEBAIHN0YXRpYyBib29sIHZycl9l
bmFibGluZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUs
DQo+ICAJCSAgdnJyX3BhcmFtc19jaGFuZ2VkKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0
ZSkpKTsgIH0NCj4gDQo+IC1zdGF0aWMgYm9vbCB2cnJfZGlzYWJsaW5nKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gLQkJCSAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQ0KPiArc3RhdGljIGJvb2wgaW50ZWxfY3J0
Y192cnJfZGlzYWJsaW5nKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJ
CSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICB7DQo+ICsJY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9v
bGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19jcnRjX3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gIAlpZiAoIW9sZF9jcnRjX3N0YXRlLT5ody5hY3Rp
dmUpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+IEBAIC0xMTgxLDcgKzExOTEsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsNCj4gIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IA0KPiAtCWlmICh2cnJf
ZGlzYWJsaW5nKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkpIHsNCj4gKwlpZiAoaW50
ZWxfY3J0Y192cnJfZGlzYWJsaW5nKHN0YXRlLCBjcnRjKSkgew0KPiAgCQlpbnRlbF92cnJfZGlz
YWJsZShvbGRfY3J0Y19zdGF0ZSk7DQo+ICAJCWludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1p
bmdzKG9sZF9jcnRjX3N0YXRlLCBmYWxzZSk7DQo+ICAJfQ0KPiBAQCAtNjgzMCw4ICs2ODQwLDYg
QEAgc3RhdGljIHZvaWQgY29tbWl0X3BpcGVfcG9zdF9wbGFuZXMoc3RydWN0DQo+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0K
PiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2Ny
dGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUg
PQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4g
DQo+IEBAIC02ODQ0LDcgKzY4NTIsNyBAQCBzdGF0aWMgdm9pZCBjb21taXRfcGlwZV9wb3N0X3Bs
YW5lcyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkgICAgIWludGVs
X2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ICAJCXNrbF9kZXRhY2hfc2Nh
bGVycyhuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiAtCWlmICh2cnJfZW5hYmxpbmcob2xkX2NydGNf
c3RhdGUsIG5ld19jcnRjX3N0YXRlKSkNCj4gKwlpZiAoaW50ZWxfY3J0Y192cnJfZW5hYmxpbmco
c3RhdGUsIGNydGMpKQ0KPiAgCQlpbnRlbF92cnJfZW5hYmxlKG5ld19jcnRjX3N0YXRlKTsNCj4g
IH0NCj4gDQo+IEBAIC02OTQ0LDcgKzY5NTIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVf
Y3J0YyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkgKg0KPiAgCSAq
IEZJWE1FIFNob3VsZCBiZSBzeW5jaHJvbml6ZWQgd2l0aCB0aGUgc3RhcnQgb2YgdmJsYW5rIHNv
bWVob3cuLi4NCj4gIAkgKi8NCj4gLQlpZiAodnJyX2VuYWJsaW5nKG9sZF9jcnRjX3N0YXRlLCBu
ZXdfY3J0Y19zdGF0ZSkgfHwNCj4gKwlpZiAoaW50ZWxfY3J0Y192cnJfZW5hYmxpbmcoc3RhdGUs
IGNydGMpIHx8DQo+ICAJICAgIG5ld19jcnRjX3N0YXRlLT51cGRhdGVfbV9uIHx8IG5ld19jcnRj
X3N0YXRlLT51cGRhdGVfbHJyKQ0KPiAgCQlpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5n
cyhuZXdfY3J0Y19zdGF0ZSwNCj4gIAkJCQkJCSBuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSk7
DQo+IC0tDQo+IDIuNDQuMg0KDQo=
