Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336B5A322D9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C622C10E836;
	Wed, 12 Feb 2025 09:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MU+cnYYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E7A10E833;
 Wed, 12 Feb 2025 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739353920; x=1770889920;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1Ezc+5+Pxg0+qBJI6N6TRnKOdIMtW9a1EqUV+CKY2k8=;
 b=MU+cnYYEJCUc3eBdGrXSXkzhr/Aq1j4WkXm/E4244SnfABGowClP+B5o
 jMFhjPckJytnRarcGEaTsto72NE5YVUs+5K6ukqtXiyJYoAfc8+1Sa+oK
 ys23Nm4dB/sbK66oCp+r0W7ITIRrJimUlmrC0AqoKMVUDouLXXdz0H94P
 79/JGlqNF8wMAF30610017oWb+6hmYCHKrV+IiLxOwPalGmqNtYyAWKkI
 tOHJluoY6BRngB+m+SWoBQTsEU6xxqpxvigSm3OmBIXn+GlKSLC+Ul0CQ
 EnJVvuF49VKSUgwzuVr1WswXINa+tM3CAiPNgCNAki2w2mGQfhRfPO6gq A==;
X-CSE-ConnectionGUID: 4BIA8sW3TXWV1oF4ZScD2A==
X-CSE-MsgGUID: dror0jJiSQextMjOClr20A==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50985712"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50985712"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:52:00 -0800
X-CSE-ConnectionGUID: bcnqHs9sRs+vyCXKZ46/mQ==
X-CSE-MsgGUID: nzBR3dyDQh+FXUn71wMdGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113266520"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 01:51:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 01:51:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 01:51:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 01:51:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHp/Q7KdTyFtkQ8hQ0RmvJgLOEHbVbJX8e2chelV23vUlFGJcpo2p614qUtm3X2S2q9Wtle27oTqq0zRUF6/O7m7DUEoFNRlNwMYgBhLo7/MF9hWMyA55PJhR1+GPbEOgXX/lXFqKp4z9Kk+1Tx8XFC/Fa6IDFpp4sJKCeBwLRQYJAnREVjyuh5fn3GL9fMXsFYt0Ij38wFxUnSMjyE+dgJXLb/Vcz/1PiZwOBEZ5zr7B0XFM2QtCO24vvRmqamNcRS9rLKSURv2DaKVX1TK3KKJ2+SMVEbLR0W9MgZ8JvMicf/R7Xhu0rQjRsraAOgcO4kLrL0Z9PfSmIMMbXW+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Ezc+5+Pxg0+qBJI6N6TRnKOdIMtW9a1EqUV+CKY2k8=;
 b=prAjk53cH1DTWJIjwwkVgQgwvNOkqp9YO1YwtUtCcktVRwKiTFp1mftu+GveK3WRSG4k9inPI62m7+ImZSLZozHHLhwuTDR/USTtpBcv3aPcBwN6USpVDB8htkp084dQH6LwLeENz/alnwev7ycQkcUSpDo3BBqbapyqdey8V64g8SgsBHt1ovB26mFp2dL8deeZf2eP5w0MbAx2XDpG9QKg91VEajNpxsyYCQEOWC/YeKwX7781Hy5wfzF14dKrqUMwB4v77B2VQ/4Nx1R2TXlvEUAiQPzUWiJFoMsrbgW94OUZYmxQjxIGZedx2JGzfWwRJ/5NRW/fP0JNhU4WXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6055.namprd11.prod.outlook.com (2603:10b6:510:1d3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 09:51:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 09:51:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 15/17] drm/i915/ddi: Reuse helper to compute the HDMI
 PORT_BUF_CTL1 config
Thread-Topic: [PATCH 15/17] drm/i915/ddi: Reuse helper to compute the HDMI
 PORT_BUF_CTL1 config
Thread-Index: AQHbcomC8qBzh+jbak6+Ja9u9vR66bNDgkQw
Date: Wed, 12 Feb 2025 09:51:55 +0000
Message-ID: <MW4PR11MB70547D37307089EB1378806DEFFC2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-16-imre.deak@intel.com>
In-Reply-To: <20250129200221.2508101-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6055:EE_
x-ms-office365-filtering-correlation-id: 97d4f48b-693f-4ab6-241b-08dd4b4ae281
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aDJoUDJtV0taa0J0UEdENDMrUlNJODFFRnZOa21ZNDFlTGVLQjZabzVoM1FY?=
 =?utf-8?B?NmtlRkZibzdqaWRWTjdvR1BEMXB0TEczOXppOXB4RTBNS3VWc29JeFc4U2Q3?=
 =?utf-8?B?eVhqNGUxTGVuY001RDhOY0t2T2FZTFd3aU53TnB2enZXNjNIaXBhdjhPQjhC?=
 =?utf-8?B?Z1Q4aXk4d29zWGZzZEZxNUVVRnh3UHBMSWphSUNDWGtaUlVyOGVqaXd4THlX?=
 =?utf-8?B?ZHg3UC9BeHNxWGc0aWNqNTQ0cHlzcEszRTFrZnE2R3VnT2diTHJXNVZpRkNX?=
 =?utf-8?B?SFU5czJVMVMvT2s5K1BIME1YZytkcFliU1dod3lMNllpbnFFbkR5aWlLUldW?=
 =?utf-8?B?MkhiTWVWTDZSeFdQeVR5ZFFXR2grbzd6aE9qZVM0S0hFLzJNdzdRdGJxMmIr?=
 =?utf-8?B?UUF6T2c5SWc3TmExSGZpRWZadklRamp3enRhZmg5M3FCeFpNallZZ1JSd3gw?=
 =?utf-8?B?cW9yTjZPTlhqRzY0R2lGaERNaVdKM3l4NDRWRDNlbUhERlZoMjZyVTNEeEFB?=
 =?utf-8?B?OE9ESTcyKzNrL2RQQzlxY1JJZTRlY0JMZk9yRTVCZk9vQmRhdzJ5Q2pORDd6?=
 =?utf-8?B?bW5vZ2E3TVFQOXY3MGkyb043aEdVbWdmNTF2T2lnNkdYTkpBWlFiblZRK0NT?=
 =?utf-8?B?eUVmT0dPUnFTQjFHSUZ1YVREY204R0NQSER5OVQrUThyTkxoMEdiZGczZGFn?=
 =?utf-8?B?QVVvY0V5dUFzYUg1eVN1SklUdjJ4bUoxVDVOSXpyTkhEUGFsbm9FZjJhaFJx?=
 =?utf-8?B?UmtZNExjbnlqb09XbHRlQk42SE9DS1ExVHVpa2Vva1pTdHh6U1lqTzJYV1Rl?=
 =?utf-8?B?S2I3R1JySEZYdnRTYkhNZkFXenVZdE5uWHdTUUEyTlRjWWtCcitxTnhPeVg5?=
 =?utf-8?B?eGtGV2w4UmowalN1SFFJY1VLVlI0d3FlUHVpMmxsa2V2TWZsUlh3NllqU3B6?=
 =?utf-8?B?UHFPUHh6TEVmdldXSlpNYTFBaFhIU3NvaEZnbzJvV21zVGFzamlOMEhoY3hs?=
 =?utf-8?B?bkNHQWhZaEsrOXVXOXFNSU9RTHUyWEtOU0xDVWdNeGhqYUdxK2R4aFJVdzg0?=
 =?utf-8?B?a1diMzVLSktiNkxTLy8rL1kvQjlCdXRsT3BIMFZkb1dvNHVmelRJSFpJWm5m?=
 =?utf-8?B?cVZDeDl4aUM1ZHgycml1cmtGZStlOXowR1N5aXVYZzBCNE03bStnM2w5SXlG?=
 =?utf-8?B?RXIyZjNrbnoyY1QxYkRuQmM4WTcrdzIvYlJtZ2cwU1A1NWZ4amIvV2ZVZ2Jp?=
 =?utf-8?B?bXVxaUNWd1R6RnZmMjVVamtEM2U1MzRMczJULzh3UlFnMlZxdFNhSnY5VU5M?=
 =?utf-8?B?WTZqQ3JEUDRUZjhQekt6K3IyVEZMdFBsVVBXcjF1eElUZVZodk9uR1ZWL0tM?=
 =?utf-8?B?NkV5dlNDMDI5VXBQOFk1ejgvRW4zanp5cHlLZERVbUV2Z0ZraTh5TnZVRHQz?=
 =?utf-8?B?dlUwY3JhWGtOUGJ2aWdwTDBCcmlZVUVibi80NzhzWXBONk9aVGVUWTVqbkV2?=
 =?utf-8?B?eFVhWW56eDRLaThISXZDMTlSYTJmdm5GQVJwU2p3NWF3QlF4K0h1elh0dkp2?=
 =?utf-8?B?U2QxSXg5RGcrMEUzRXY3YTd6RG9TcG8wKzlOTC9Ib3BXbnE5M3RJbzRheXFG?=
 =?utf-8?B?WWMwUW43aWsxYW90OWgxREI2dE5lT0NsVzlNYVZWNDJvcFFoQzA3czhEbW4x?=
 =?utf-8?B?K3pzdmtDMzQ1UVdyTUQrb1J6cjBtS2hmS0JwMnc0aHRLdHV2a29HNnhnL1JB?=
 =?utf-8?B?N2tybnZaUGdhTHNmVWhKTzcvNTVWbEMvR3lxR3FITFBIVkgyRmhzRDk3SUtK?=
 =?utf-8?B?NnVEYUdkZTlLcHVQZnRsRTUydHRSbnA1QyszRGl3RnNqdUJ0VW1IdnRVc1FB?=
 =?utf-8?B?WGU0MVB1TFlQZnBmcWxvaVg5Z0VaVkJCYWFISUVwTldnM1RXSVVqcXUrUXY0?=
 =?utf-8?Q?Duj5t3e045Ze867lgvFFIPOg2BddXOCc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SG0wM1lKU05uMUROKzY1MWJmcFR2M3VFQnJmUXQxV2MwejRRM1ltUUREN1NC?=
 =?utf-8?B?VmZNRFh2Sm1VU1ZFWFdydit6Rjh4cTNlTHlYZnVWR3A5L0NQNVlKZDZVTE5v?=
 =?utf-8?B?SmE1UmRhL005eVUxaDEwV1N5MzdkV2VRYUw2dHFCajdKS0VUV2QrUDFnVFdY?=
 =?utf-8?B?Q0F5bzA2bm42WHN0anFIT3YrREQrWlJWellCNUlWYnhpKzdsNG40MGc1L1JT?=
 =?utf-8?B?ZlMxVmE4QjlpNUpadGRJa2YyOVhoc2xPdDZMQnloWkphMFZXUlRTdnR3TGRB?=
 =?utf-8?B?d1FjY3ExeWhscWNCcG1IZUx6Y0g0Qzg3OXh2eDhmaCtRa2QweW1JRmVNcEFV?=
 =?utf-8?B?T3MvVW01dWN6VkZ3TWpZTkRDSi96MkZEQWkyOHVQWG9kRnM4VlRTdjBldzZW?=
 =?utf-8?B?enE3bkYrMUdETDRHQVA3cVNTRHhCZ2RjVlN6YVljOHNya3JhTHMxZDZIZzN3?=
 =?utf-8?B?dmJQdDBDd0NxRkt0K2plL0U4RHlzMDFXSWJyYkc1bTQ3WmYyZVJ6UEIxZ2Zn?=
 =?utf-8?B?a0FPN1VDL09SMVJSSEE3a3dvZTJKU0tUYkJBVVp1aVFHUWVvck5lMXhXaE9U?=
 =?utf-8?B?eHhwdVV4c2RPRUJ5M1RRNjVaWjRlQnhCbXljUExNTmFVWU9wMWV0d0FIa3RM?=
 =?utf-8?B?eXQ0MVhuLy92MjJ6a2J2K3pmOWhwL0xSWG1jZFg2ZGMwOHhXWjFMVWozMldX?=
 =?utf-8?B?UG52aHNCUEFRaWgrOEQ2Mlo0NlYra0tuMG9Sc0cwN2pEZDBjNGMvL0hrNnp2?=
 =?utf-8?B?RFJzdnlzTG5SY3orV0crZ0FkZXVRUitjaW0zYmg4bFZaL3NPUVl2d1BBRno4?=
 =?utf-8?B?Rzk1Lyt4a20wU1dQWkZ0dEtUUzBUTTFUQnVhNEdrV3drZG5OcFBEWlNtbm91?=
 =?utf-8?B?SGJVM1ZvYlc4azNZRG51TklJc2VEMUJBd21qSVBVak9BQkJNaklHczBEam5Q?=
 =?utf-8?B?M2pzcjJpcVcvTXVndWJweFI0Uis2V0Myc2I5R1hJaUF2THFlejJSRVJoeEZF?=
 =?utf-8?B?M0xoUHRIbVJzUVMrNUc3eUplQ3Y1Q3Z2VGxwa21ncmZrVS9YaWhnd1U2SlFL?=
 =?utf-8?B?cEVJZzJDTmt3Y2p1REVQSFJkNU9kUE1WK3JRV0grVll4ODNTYnk2bXgvTnF5?=
 =?utf-8?B?bFROOGFwSUlpRTNqRks3bTRUZ3FhMVlOd0ZqOXlIYkVGYjIvck0ySmZuelhB?=
 =?utf-8?B?WnVqNzJKU1hRVzJBWWtjV2hlVWF4bzhjRzN6dFpNYjF6eHYyQi9ReUNuUDNG?=
 =?utf-8?B?Mldicks3cTRMRnNCMHMweFdkZFpIUFBJUXVBYnhBejRIRXdDMHNLOW5Ob0l0?=
 =?utf-8?B?N1VYNDdHdlRuNGE2MmVqVndXOXlPQ2JwbWg5Q2QwRWNGWVVhRkhyNkRJazIr?=
 =?utf-8?B?UnhEWEdHbDNVaFU0TmwzNHZHOW13N3JMUm43NmhKQmJNNFZtKzdFSElZczFj?=
 =?utf-8?B?N01EYmRmTGMyQmdwM0Q1WXgvN2NXUXMwR0RES3g5d2RvaStXc3FTMDdnMGw5?=
 =?utf-8?B?V3FUS081ckdtMVBoek9LQTZQQzFhTW0ybllHTU5qNUJUYzJkSlR0TjZOY0Zz?=
 =?utf-8?B?SThMOHRYTjFkT0lvNzRBRmMyUFZhSFF2WWE1eXZZMGYzT2ZHcnoyVDJ4K1FW?=
 =?utf-8?B?K2ZTSmovMjd0QXZiVU9DSFFmaGNOUStQc1hselMrTi9wQzJoa0txNDYyd1Ja?=
 =?utf-8?B?emN3WVZ1NjlYRDYza1Zxd0ZuTVBIWnF3bUorM3ArYmdlVFRhemJCeFErbDc2?=
 =?utf-8?B?ZGFjbXliQnhNemFFbzV1WENaME55OXIxcmdrVVpwQUVyNTN4Q21yYjFxMy9T?=
 =?utf-8?B?N0FMTS9nQjQxU0lWN25OZjBmTXcrOWl4dXBqc2pnTENTNm5OYkFBWHFrUTU4?=
 =?utf-8?B?Z24vb1Q1K2dyOHpRVU9ybWUyWWxRRGY3RUwwUUJnY0VpN3FSMUNEL3lXcXZ3?=
 =?utf-8?B?R2ZKNDJCczVPTFNrRWVJczBpVCtTcWVzSStpZ1VzdXJQbXF3NC9HQjc4TDRV?=
 =?utf-8?B?WFRPWWpuTnBrS3ZwcnN6dktGZVpmdzlaeGlaVU9Sek5vYWd3R3BiQWpxU090?=
 =?utf-8?B?bW94MUNUQnZuaC9QTzFUZ1BaVHlJVUVuL0h1cmRaWXJQYVhFUHlncXl6UCtK?=
 =?utf-8?Q?itls8Eg178AdaQUPscX6AZrK7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97d4f48b-693f-4ab6-241b-08dd4b4ae281
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 09:51:55.6228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OXncVFUdk6g875ByF7ROs+Zo1AyyXhBfyohjYteGWdUdISnRoGsq/KXDed5gc0by1AEtwSl2Ey0/NBPeimUIag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6055
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogV2VkbmVzZGF5LCAyOSBKYW51YXJ5IDIwMjUgMjIuMDINCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBT
dWJqZWN0OiBbUEFUQ0ggMTUvMTddIGRybS9pOTE1L2RkaTogUmV1c2UgaGVscGVyIHRvIGNvbXB1
dGUgdGhlIEhETUkNCj4gUE9SVF9CVUZfQ1RMMSBjb25maWcNCj4gDQo+IFJldXNlIHRoZSBleGlz
dGluZyBoZWxwZXIgdG8gY29tcHV0ZSB0aGUgY29uZmlndXJhdGlvbiB2YWx1ZSBvZiB0aGUNCj4g
WEVMUERQX1BPUlRfQlVGX0NUTDEgcmVnaXN0ZXIgZm9yIEhETUkgb3V0cHV0cyBpbnN0ZWFkIG9m
IG9wZW4tY29kaW5nIHRoaXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyB8IDIxICsrKysrKystLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggZTAzZWM5YTIzNWQzMy4uNDMxZGIxZTZi
NmYwNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IEBAIC0yNjA3LDkgKzI2MDcsMTIgQEAgc3RhdGljIHZvaWQgbXRsX3BvcnRfYnVmX2N0bF9wcm9n
cmFtKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCWVudW0gcG9ydCBwb3J0
ID0gZW5jb2Rlci0+cG9ydDsNCj4gIAl1MzIgdmFsID0gMDsNCj4gDQo+ICsJaWYgKERJU1BMQVlf
VkVSKGRpc3BsYXkpIDwgMTQpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCXZhbCB8PSBYRUxQRFBf
UE9SVF9XSURUSChjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsNCj4gDQo+IC0JaWYgKGludGVsX2Rw
X2lzX3VoYnIoY3J0Y19zdGF0ZSkpDQo+ICsJaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIo
Y3J0Y19zdGF0ZSkgJiYNCj4gK2ludGVsX2RwX2lzX3VoYnIoY3J0Y19zdGF0ZSkpDQo+ICAJCXZh
bCB8PSBYRUxQRFBfUE9SVF9CVUZfUE9SVF9EQVRBXzQwQklUOw0KPiAgCWVsc2UNCj4gIAkJdmFs
IHw9IFhFTFBEUF9QT1JUX0JVRl9QT1JUX0RBVEFfMTBCSVQ7IEBAIC0yNjE4LDcNCj4gKzI2MjEs
OCBAQCBzdGF0aWMgdm9pZCBtdGxfcG9ydF9idWZfY3RsX3Byb2dyYW0oc3RydWN0IGludGVsX2Vu
Y29kZXINCj4gKmVuY29kZXIsDQo+ICAJCXZhbCB8PSBYRUxQRFBfUE9SVF9SRVZFUlNBTDsNCj4g
DQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIFhFTFBEUF9QT1JUX0JVRl9DVEwxKGRpc3BsYXks
IHBvcnQpLA0KPiAtCQkgICAgIFhFTFBEUF9QT1JUX1dJRFRIX01BU0sgfA0KPiBYRUxQRFBfUE9S
VF9CVUZfUE9SVF9EQVRBX1dJRFRIX01BU0ssDQo+ICsJCSAgICAgWEVMUERQX1BPUlRfV0lEVEhf
TUFTSyB8IFhFTFBEUF9QT1JUX1JFVkVSU0FMIHwNCj4gKwkJICAgICBYRUxQRFBfUE9SVF9CVUZf
UE9SVF9EQVRBX1dJRFRIX01BU0ssDQo+ICAJCSAgICAgdmFsKTsNCj4gIH0NCj4gDQo+IEBAIC0z
NDE4LDcgKzM0MjIsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX2hkbWkoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsICB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiAt
CXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVu
Y29kZXIpOw0KPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBjb25uX3N0YXRl
LT5jb25uZWN0b3I7DQo+ICAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0Ow0KPiANCj4g
QEAgLTM0ODUsMTcgKzM0ODgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX2hkbWko
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJICogaXMgZmlsbGVkIHdp
dGggbGFuZSBjb3VudCwgYWxyZWFkeSBzZXQgaW4gdGhlIGNydGNfc3RhdGUuDQo+ICAJICogVGhl
IHNhbWUgaXMgcmVxdWlyZWQgdG8gYmUgZmlsbGVkIGluIFBPUlRfQlVGX0NUTCBmb3IgQzEwLzIw
IFBoeS4NCj4gIAkgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0KSB7DQo+
IC0JCXUzMiBwb3J0X2J1ZiA9IDA7DQo+IC0NCj4gLQkJcG9ydF9idWYgfD0gWEVMUERQX1BPUlRf
V0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+IC0NCj4gLQkJaWYgKGRpZ19wb3J0LT5s
YW5lX3JldmVyc2FsKQ0KPiAtCQkJcG9ydF9idWYgfD0gWEVMUERQX1BPUlRfUkVWRVJTQUw7DQo+
IC0NCj4gLQkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBYRUxQRFBfUE9SVF9CVUZfQ1RMMShkZXZf
cHJpdiwNCj4gcG9ydCksDQo+IC0JCQkgICAgIFhFTFBEUF9QT1JUX1dJRFRIX01BU0sgfA0KPiBY
RUxQRFBfUE9SVF9SRVZFUlNBTCwgcG9ydF9idWYpOw0KPiAtCX0NCj4gKwltdGxfcG9ydF9idWZf
Y3RsX3Byb2dyYW0oZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCWludGVsX2VuYWJsZV9k
ZGlfYnVmKGVuY29kZXIsIGludGVsX2RkaV9idWZfY3RsX2NvbmZpZ192YWwoZW5jb2RlciwNCj4g
Y3J0Y19zdGF0ZSkpOyAgfQ0KPiAtLQ0KPiAyLjQ0LjINCg0K
