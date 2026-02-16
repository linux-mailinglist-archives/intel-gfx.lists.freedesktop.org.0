Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HmnBr2ikmnqvwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 05:53:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1DD140E45
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 05:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E3510E120;
	Mon, 16 Feb 2026 04:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FACvQm9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E17A10E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Feb 2026 04:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771217593; x=1802753593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P3L46lZG40ObaXYs6ZuCGBWGD16tHyr+QGrDxZWOdxI=;
 b=FACvQm9x6RVfFmilC+Pz9gmqUk89zKybipHMosJ8bgLDOjdg38N7i762
 L0tagkWdfbKz588Ifv3Ot62XZ7Zh8dA4azYEqyA8KqCmDomm6STwwXwq8
 gf/Y9cVQ8ErLhVtwZt7hlrOGuqoQn3s14ZH2GiMyz+o88VlNwpfBWc8Uv
 JLzmyPTkC/aycSkmjmjVowc9V8MTcR1RJX0/rhJdcSYbB7u/+G8b/xYkC
 1gKmso/1Dq5WcBtW+IwqWxkKtv8aW+YsvsBhzZ8OiGaJPKgEcvo+MBZ+R
 Z9Z5MrAeOm9bXNAoeqaw9red/4tV6wfyl6907nOjKs/eA6sCkdyCEgf0K w==;
X-CSE-ConnectionGUID: zy2E38EFQ0am3yFJB593pg==
X-CSE-MsgGUID: DJmTGcNZShq+1ClxH0oHDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="76141679"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="76141679"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 20:53:12 -0800
X-CSE-ConnectionGUID: WyHtMY0DRSmhIn/xVEbtcQ==
X-CSE-MsgGUID: s/InVn18RL69+wdLNt+AwQ==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 20:53:11 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 20:53:11 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 20:53:11 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.41)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 20:53:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nCnNq2m4miEB+Dek/iO8H1emAOe4+X0Sdyb+nP3GzYxITQkfUA9/Ov0M2SSmxLYGMUHBGzpxM8s85QjJ2f8YiTn3cEq+qQOFV1Ki8M16d4JmB2z/0aFmZxr4Kp2Jdb8a45aXDzUALdsso0hxiMQATcVVwpEXssJ3snKrTA+EGmGbxeQ/+DKoHFIwNXUDYzy9QdEKueZIUH2q2YB2JDxZt7xrffDb6tMlBtg39U/gEtSgQbKD5sJNzNSlv8hd9W3o6bNoAW5adWJBOk0EZxSLq/9+HdZPhfnbQ4I23E9VVQZcb2EjsWB2VkNAvrgCOJhUDvVwrq2ZQO5mVjErH9y3fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3L46lZG40ObaXYs6ZuCGBWGD16tHyr+QGrDxZWOdxI=;
 b=RH9dAAzccC4RTXxAzC/aKVWZOMUY8be9KuzeWpVJTpCsTGln2mtXUthY43e7/cf4H/Vg8vEAyhl/uQk7jN+FJJdQot6IVp9G1Z0EBXohSJosqPLnjgOurdDdqn0EgD0KBSESnU3bxUHRjlTKJzzMGk24h0VqBy5hoC3qQnqhZ44aPmu7vobWfRLAyxPqQtUHBFiEQOu7oIiFP2mX3styd3z23z9wsnswbq16wLJHXSUapi1ofrVR3anF1UsVfmv9R1nqd69XEn4qqccJjW+7e3J3Helb5sks6QBqsgsjXaLtqMS5ey5FcNeSff4nPR2ShmzPjnBYiHisjr8dtF8zmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Mon, 16 Feb
 2026 04:53:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 04:53:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Cole Leavitt <cole@unwrap.rs>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
Thread-Topic: [PATCH v2 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
Thread-Index: AQHcm+nZOBJFDIvrl065244xGvUJa7WB5W8AgALikPA=
Date: Mon, 16 Feb 2026 04:53:05 +0000
Message-ID: <IA0PR11MB7307FDD23AEFD33AD23AE761BA6CA@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260212-timeout-v2-1-74bccad5018d@intel.com>
 <20260214084804.7563-1-cole@unwrap.rs>
In-Reply-To: <20260214084804.7563-1-cole@unwrap.rs>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: c7856693-2a44-4e12-7340-08de6d1745c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MURyNGQ2eGNzTVRJWEtDSTZvMGo0WVBsbDljcVYxdkhlUkNXVkVUZ0lTQVFT?=
 =?utf-8?B?OFZNOW1GejJqb1VUMjVYWGI3bzllZERrRFJKOVNRUVRZaDJndW9WeHZkNndK?=
 =?utf-8?B?dU41OWxlcUUyTGJOLzZyeTVVMVUvNWowVWcveHBhZ1c1YVV1YXNGQzBoaWxu?=
 =?utf-8?B?eHV0N2N2Uys0Rzd3Uk5xVUE2Y3NNQzFTU094K00xQnNlZjZNQThyNkp4LzEr?=
 =?utf-8?B?M09CQ0dNU05rbUJTTFpLdjhtTlhvNysvQXg1SkdZOHk2T3pKUTB1RkwrcmRN?=
 =?utf-8?B?ekhValZ2N1JHNFh3YjFhNTU0anhCMWRKcER5VEppNFBQazZ1RE5kTlpCZE1X?=
 =?utf-8?B?T3BwQnplRThZMnU0a2NxeTVIWGZ6NVVmaDl3Q1ZiL0FSaUQxRDM4WFgxVHBM?=
 =?utf-8?B?UmFKd29neVR3b2x0STVHRzZ1akhYTzJvSzBNK3FjWU1ZRGxobWwrb2g4eXNL?=
 =?utf-8?B?aGNqZnJZK0ovOGtmcHpRYUh3YkExR0IvRDd6NkxiODQ5VEJ0Q2Y5SkxKY1cz?=
 =?utf-8?B?dTkzdTAraGlveTB5YkRpY3FjVUUyQ1NHVTVUamJiT0gyWjM5T2FlQ0VPenZx?=
 =?utf-8?B?cG84Umcxd0tMRnlKOFhFVDMxZ2Z1azE3ZXBOaklqYVhPOTdHRCsvb0N6RkpK?=
 =?utf-8?B?bUcycTRJSXJvNUNzRmduaTI4dzRyVWcrNTJUY3F4ZUlPdTBMdFlSalRjdC9k?=
 =?utf-8?B?Y0NleXRzdWtpMVAwQ1VNNU53OUtzVlZoYkIxcXB4UWhXY05ZSWFjQXdJZkRN?=
 =?utf-8?B?aHNtMFZLOEZvVmh3dlQ1bmNob3NIQzl1bndzUWJUd0dlckNEaUlFWGN4cU5w?=
 =?utf-8?B?Unh6ckpYdi8rK2pWcUEvU0JNTHBHQ0owSDllbzdySVJmdndRR21xR2tRcHAr?=
 =?utf-8?B?TXlvdzdjdHFZS2t5RlVwbUQ0S2tMcDZvb0E1MllMTW5QRWFYVnFRY2JiaFIy?=
 =?utf-8?B?VUZzRUN4TmJIZGlMaHNKTHQ3RHBrSC9tUXpLNldGMkk0Y2NNbWdqNktlSklh?=
 =?utf-8?B?ZjBRcElFL1ZrS0tjT2xkbGE3Nk5mL3dnNmJSRzZpd3JPYWE3a2k2SW1ablRP?=
 =?utf-8?B?b1Fha29aWXpEOEVIbG82T0VlRnhmQmorU3B2YVBJbk1XL2kraHQvRmJaK0dX?=
 =?utf-8?B?cEE2MWlqOGRMajdaWU1Kam5KRmJPSUVVZnBuUTU1aC9ONkIxT2pNSEtxc3Vz?=
 =?utf-8?B?dXlpRzQyUThyQnJIeFpBN0ZNMWh4RlplTjZwaXpoUExFNGNvTU1SMzIwRlph?=
 =?utf-8?B?NmtRR0p6Wmc2bDgwUGJHMHFyZmQrMWQ0VHR6N2lVL3pWM1dCQlI4bmZGOFYx?=
 =?utf-8?B?OENua0JNTjRLSzhzdVo5NW9VeHJEZWdtVDEvejZKYjE2OW9JRnhpSU9Ha1R1?=
 =?utf-8?B?STJPZG9TL1psTG1FbENkRmRWbHQ0alVlWENlWndyNXlUR3EzQnlFSEZoRXJW?=
 =?utf-8?B?NnN3cVBzcVA5TkpKZVVPbU1WTkEvYWZJOUk4YlZjS3JWcU1FOTRrV2s1UDdB?=
 =?utf-8?B?Qm5CZDdLQ2liMFFsMGZMV3pOSlpnSmYxYjZHK0FpeGQrODJHNld6Y2oxanBH?=
 =?utf-8?B?SmF3d2NCWksyTmtoOXAydUdYVzFUaDNwZjNqQ2MyZGhkRzlCMFlWcHhQOURU?=
 =?utf-8?B?WnluWHZTUlhpRWhqWWhsWnExaHBJOE9nQ2h3aFNwOHViWjV2UzViNDRERThG?=
 =?utf-8?B?VTdlR2hnNkppSWlmcTNNUERZMG9NNEZ2MFFRbDdxWVpmelJuMGFXTEdCNUFi?=
 =?utf-8?B?UGJSMjFtQXFYbm1lQ0RIK01VV3N0ODcxZGdIVlpEWjdwcUtkVkFHcW1uNFZz?=
 =?utf-8?B?aGxhdVk3cXFwdHJDT0dPNTJ4NHlHeEwzMzZUVjhkMlErN05hV2tibXdjQkhl?=
 =?utf-8?B?TUYvV1dzUURDTTBJRXFqdnYzamdjMm5SVW9NL1ArdnpzQng0UVIxbTdtVHlK?=
 =?utf-8?B?by90VEZKV0Vja1ZzbThjT3d3TEtTeDBncGdNdjIyd2xwTlRZc2hMNHY1WDly?=
 =?utf-8?B?bUlkOFJvTmhTTlpoaU9XY0xHTk1xeDJkVFBTaWNJT2ZhdUpYampGSkVvSlpj?=
 =?utf-8?B?UTVkRytlaVJielVaaTlqUVgvUGc1WnNVODNZbkN4bEdnell4TlNScHRoZFFU?=
 =?utf-8?Q?u7/Ly6lxtrWwo/VwDP6rSgd6w?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mm1LMm1IcjZPRTY0bEg2QTdLV293KzFLeG1lM0IxMG9NbFN3T1dmQUI2Y1lo?=
 =?utf-8?B?ckJ3NGhOR2Zka0o5ZFI4d0YveXpUSHlhM3djSG5vYit5V1pPQUlaMTlyVVZZ?=
 =?utf-8?B?WVBYUHd4eGFiZDFRbmEzR3pWTEovV1daQ1pYK28ySmNRU0FhdHlTNGViRFVz?=
 =?utf-8?B?OEdFckl3b1Mxbi9tczdMclFjZFhhQWVrSkwrcHZHRk9WLzg4RU1nZUJtVXZW?=
 =?utf-8?B?MWJSK0orYnVGMmo4Si9HaXZVK2tOMTA2UmsvM1IwNzRhd3FzWnlTbUV0b2J2?=
 =?utf-8?B?SjVBNmR2NXlNcjhFanJhL2dBbW4wakxCMkJOR1UvQWtpVlZOVUpjT1BVUWNS?=
 =?utf-8?B?YlA0NHIyN3RqTnNHSTg3c3djSi9LRFVuell5UGJuN1VwSmE0dlF4T3dZNWtR?=
 =?utf-8?B?QlY2bHJ4TnpWSlZaSk9SaE1LUXowQjZLaEFyQjVjdmtRdXBWbXhOaGVZbThn?=
 =?utf-8?B?M0g2ekpPNjlsRkZvVE1nNUlBcnYyZk4wWEh4alpDTktiSmpiRUNsMzdMK24v?=
 =?utf-8?B?ZUJwWGN6N1d6TGZFOWthSm9hLzl0cUwvNUR3N0E4R3JNMGlNN1dOc1FRYjJK?=
 =?utf-8?B?bkFjQ0VNV1FrZkVQY1dWazB2LzMveVNQZytFcHU3MGhNUmVJYThDOTFQWVBz?=
 =?utf-8?B?M1lOamxncEVHc0F4WGVjTG9URzB4MEt2VWlNK2VXejhBZXNpWC9uNVd4akUr?=
 =?utf-8?B?NEZRQVhLNU9BMU42cDgyUVBWWE9qNzNzN1lBRVZRdFVNWndFSlMxQ0VaSzZv?=
 =?utf-8?B?a09yQ0t3N2QvN2JtQ0lEd2duU2RkbFg2a1cwczJNemlGeWdHNjAwMGtWMm5P?=
 =?utf-8?B?LzlnQW5FMlFZbVk4SG9SZHJOOUNIYVBGQXBkZ0lCTjI4OS9UZ25uY0ZGbmQ5?=
 =?utf-8?B?bjVXNjlPMkIyVnFObkRyb1FJRnlxQ01wZDhsVkdIM0lMb1p4dXE1amM5RFRh?=
 =?utf-8?B?cGdNc0dzQmhyeGpiTTdCNTd6QkRya0d3QU9vMis4MzdodWwxMHJ0SzFsL0Mv?=
 =?utf-8?B?cGpaUDBocUNBMGE0NllWVWJEck02TFVweXdJZ3FYeUozTWJOSWI5Q0RJeWE1?=
 =?utf-8?B?bUJ4ZUdDR2MyMWlWdTRvYW0wU0JtS1dxdHZuTUhCOEJrLzQyNjdibU5rSEIz?=
 =?utf-8?B?SDJEdityMzMzL21IT3ZWa1Y0R1VaUy95RWs3VVN5ZjJEUS9DeFFqUHBFMktB?=
 =?utf-8?B?SURmbG9qOEt5b0FWOUtzR0NDcHo1SFVwM0tIeFczSWxFUVBsd2s0ZGg2aXhM?=
 =?utf-8?B?d09mdWdKSDZEVEVxYXFKc0ttN2diZDhsdElRcXhaR3V2M2FpcU5yc3ViUGVq?=
 =?utf-8?B?RkV4OC9jZU9XaTREd1dHSWJKVTBCQUNGb1gyTjdKMGtxSmx5Z3MyTmVWY3Zr?=
 =?utf-8?B?aDJPNzZEZFZGRTZGcDA0bjQ5VnNjc21sVHRBaWFmNFFldzQrNmNhRVpBK1RK?=
 =?utf-8?B?MFZFZUNTdENKWlNocGdjcFlkRHpTaTNRREdNQlNyTlU3aDZMY0x1bVFmazJD?=
 =?utf-8?B?N1JFc1JhQ3h5TjdpR0V3OXFsbFNSaUZMK084KzYya1FVamNEQUUrTzJnZ0sx?=
 =?utf-8?B?c0lqTk53bGlVQkExSGpCUGtoWkFnOUZnTXJ2YlhmM3Y2TU5sbFFQNlBQSGlS?=
 =?utf-8?B?SFNnUXU0bk1iWGJCV0tseHdZdjJoTDZFU201SFh1VzZMNkRNZ0wwempYMFlj?=
 =?utf-8?B?cm10aHVmek1IdmU5d2l0MUplalJtZWlFMWFwbVhCR0JueVJZaU0xUnBOOWJn?=
 =?utf-8?B?TjNETGlzTVlONzJKYUhTVUFWODBDUlVQRHI5bTBBalN6K3VkU1pNei9QNWNh?=
 =?utf-8?B?SkdwQ0trMHZVOTUvT1A2U0lvZ2w5bEtkWEdEY2NQYi9rVXhqeUNiTGYwQm11?=
 =?utf-8?B?Q0d0SjNJejdaRGxYWENuK3NmYVZUbnFmWnFFTUpkUUlScW5CbDlobWU5UWY2?=
 =?utf-8?B?RFhkZ1MrOUtmamNqQzV4WTZ1Y051T2lWeDRXUE9zKzZ5TDYwWU5ydHc4c0Qr?=
 =?utf-8?B?bk5JU2JzUWhhRGdRK0lpcEY4WGdveUpTVTFQam5USE9DRDMyMktEd1JkMFg5?=
 =?utf-8?B?TWhxUGVZNkJqRy8wU1BQUXhHQzNUb2hvZk8rekpvdU1pQjB3clcwZC9yRjV1?=
 =?utf-8?B?anF1NnRlcE40Yk5MR3d4Mi9mbXNTRG1yUTZwVnpxOGRsT1Z4a0VVM1ViQzFV?=
 =?utf-8?B?ako1cXZqYk96OUNIRXozR2ZnUGk1SVIwdVlLV1kxbDJEM1g2dmNkSENyVGxY?=
 =?utf-8?B?aENDbjFiZWV5WjJMdEVQRHJsQ3J2ejY1NDRCRlRKS0Y2aXZNR2hUZFlDU2I5?=
 =?utf-8?B?b0h4ZXlGRVp6U2lMLzkzWVFOeDRYaHl4VnducDhNOWUyQVA3TVVUUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7856693-2a44-4e12-7340-08de6d1745c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2026 04:53:05.5014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BB8iwALIjLYTcN+12YrXA67fpRMud2ylJ+MCzFsUn/pfQe96tpLkj95fNjbJBPdBaWXm45B4Jb/cYDe/6TLPMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:cole@unwrap.rs,m:suraj.kandpal@intel.com,m:jani.nikula@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,unwrap.rs:email,gitlab.freedesktop.org:url];
	FORGED_SENDER(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EC1DD140E45
X-Rspamd-Action: no action

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENvbGUgTGVhdml0dCA8Y29s
ZUB1bndyYXAucnM+DQo+IFNlbnQ6IFNhdHVyZGF5LCBGZWJydWFyeSAxNCwgMjAyNiAyOjE4IFBN
DQo+IFRvOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+IENjOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2Fu
ZHBhbEBpbnRlbC5jb20+Ow0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IENvbGUgTGVhdml0dCA8Y29sZUB1bndyYXAucnM+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIg
MS8yXSBkcm0vaTkxNS9jeDBfcGh5X3JlZ3M6IEluY2x1ZGUgU29DIGFuZCBPUw0KPiB0dXJuYXJv
dW5kIHRpbWUNCj4gDQo+IE9uIFdlZCwgMTIgRmViIDIwMjYsIEFydW4gUiBNdXJ0aHkgPGFydW4u
ci5tdXJ0aHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBUaGUgcG9ydCByZWZjbGsgZW5hYmxlIHRp
bWVvdXQgYW5kIHRoZSBzb2MgcmVhZHkgdGltZW91dCB2YWx1ZQ0KPiA+IG1lbnRpb25lZCBpbiB0
aGUgc3BlYyBpcyB0aGUgUEhZIHRpbWluZ3MgYW5kIGRvZXNuJ3QgaW5jbHVkZSB0aGUNCj4gPiB0
dXJuYXJvdW5kIHRpbWUgZnJvbSB0aGUgU29DIG9yIE9TLiBTbyBhZGQgYW4gb3ZlcmhlYWQgdGlt
ZW91dCB2YWx1ZQ0KPiA+IG9uIHRvcCBvZiB0aGUgcmVjb21tZW5kZWQgdGltZW91dHMgZnJvbSB0
aGUgUEhZIHNwZWMuDQo+IA0KPiBIaSBBcnVuLA0KPiANCj4gVGhhbmtzIGZvciB0aGUgZml4LiBJ
IHdhbnRlZCB0byBmbGFnIHRoYXQgSSBpbmRlcGVuZGVudGx5IGlkZW50aWZpZWQgdGhpcyBleGFj
dA0KPiBpc3N1ZSBhbmQgcG9zdGVkIGEgZGV0YWlsZWQgcm9vdCBjYXVzZSBhbmFseXNpcyBvbiB0
aGUgaTkxNSBHaXRMYWIgdHJhY2tlciBmaXZlDQo+IGRheXMgYmVmb3JlIHRoaXMgcGF0Y2ggc2Vy
aWVzLg0KPiANCj4gT24gRmVicnVhcnkgNywgMjAyNiwgSSBmaWxlZCB0aGUgYW5hbHlzaXMgb24g
R2l0TGFiIGlzc3VlICMxNDcxMzoNCj4gDQo+ICAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNDcxMyNub3RlXzI3Mzk1NzMNCj4gDQo+IFRo
YXQgY29tbWVudCBpbmNsdWRlcyB0aGUgZm9sbG93aW5nIGZpbmRpbmdzLCB3aGljaCBkaXJlY3Rs
eSBjb3JyZXNwb25kIHRvDQo+IHdoYXQgdGhpcyBwYXRjaCBhZGRyZXNzZXM6DQo+IA0KPiAxLiBU
cmFjZWQgdGhlIGVycm9yIHRvIGludGVsX2N4MF9waHlfbGFuZV9yZXNldCgpIGluIGludGVsX2N4
MF9waHkuYw0KPiAgICAobGluZSB+MjkxMSksIHdoZXJlIHRoZSBkcml2ZXIgd3JpdGVzIHRoZSBQ
Q0xLX1JFRkNMS19SRVFVRVNUIGJpdCB0bw0KPiAgICBYRUxQRFBfUE9SVF9DTE9DS19DVEwgYW5k
IHBvbGxzIGZvciBQQ0xLX1JFRkNMS19BQ0sgd2l0aCBhIHRpbWVvdXQNCj4gICAgb2YgWEVMUERQ
X1JFRkNMS19FTkFCTEVfVElNRU9VVF9VUyA9IDEgKDEgdXMpLg0KPiANCj4gMi4gSWRlbnRpZmll
ZCB0aGF0IHRoaXMgY2FsbHMgX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigpIHdpdGgNCj4gICAg
ZmFzdF90aW1lb3V0X3VzPTEgYW5kIHNsb3dfdGltZW91dF9tcz0wIC0tIGEgc2luZ2xlIHNwaW4t
cG9sbCB3aXRoDQo+ICAgIG5vIHNsb3ctcGF0aCBmYWxsYmFjay4NCj4gDQo+IDMuIENvbXBhcmVk
IHRoZSAxIHVzIHJlZmNsayB0aW1lb3V0IGFnYWluc3Qgb3RoZXIgdGltZW91dHMgaW4gdGhlIHNh
bWUNCj4gICAgUEhZIGluaXQgc2VxdWVuY2U6DQo+IA0KPiAgICAgIFhFTFBEUF9QT1JUX0JVRl9T
T0NfUkVBRFlfVElNRU9VVF9VUyAgPSAxMDAgdXMNCj4gICAgICBYRUxQRFBfUE9SVF9SRVNFVF9T
VEFSVF9USU1FT1VUX1VTICAgICA9ICAgNSB1cw0KPiAgICAgIFhFTFBEUF9QQ0xLX1BMTF9FTkFC
TEVfVElNRU9VVF9VUyAgICAgID0gMzIwMCB1cw0KPiAgICAgIFhFTFBEUF9QT1JUX1JFU0VUX0VO
RF9USU1FT1VUX01TICAgICAgID0gIDE1IG1zDQo+IA0KPiAgICBUaGUgMSB1cyB2YWx1ZSBpcyBh
biBvdXRsaWVyIGJ5IDEtMyBvcmRlcnMgb2YgbWFnbml0dWRlIGNvbXBhcmVkIHRvDQo+ICAgIGV2
ZXJ5IG90aGVyIHRpbWVvdXQgaW4gdGhlIHNhbWUgY29kZSBwYXRoLg0KPiANCj4gNC4gUmVjb21t
ZW5kZWQgaW5jcmVhc2luZyBYRUxQRFBfUkVGQ0xLX0VOQUJMRV9USU1FT1VUX1VTIHRvIH4xMDAg
dXMNCj4gICAgb3IgYWRkaW5nIGEgc2xvdy1wYXRoIG1zIGZhbGxiYWNrLCBjb25zaXN0ZW50IHdp
dGggaG93IG90aGVyIHdhaXRzDQo+ICAgIGluIHRoZSBzYW1lIGZ1bmN0aW9uIGFyZSBzdHJ1Y3R1
cmVkLg0KPiANCj4gVGhpcyBhbmFseXNpcyB3YXMgcGVyZm9ybWVkIG9uIGEgTGVub3ZvIFRoaW5r
UGFkIFAxNiBHZW4gMyB3aXRoIGFuIEFycm93DQo+IExha2UtUyBDb3JlIFVsdHJhIDkgMjc1SFgg
KGRldmljZSBJRCA3ZDY3KSBydW5uaW5nIGtlcm5lbCA2LjE5LjAtcmM4LiBUaGUgUEhZDQo+IEEg
cmVmY2xrIGZhaWx1cmUgcmVwcm9kdWNlZCBvbiBldmVyeSBib290IGF0IH44LjVzIGFmdGVyIGk5
MTUgaW5pdCwgZHVyaW5nIHRoZSBlRFANCj4gcGFuZWwgcHJvYmUgcGF0aC4NCj4gDQo+IFlvdXIg
cGF0Y2ggZG9lcyB0aGUgcmlnaHQgdGhpbmcgLS0gaW5jcmVhc2luZyB0aGUgdGltZW91dCB2YWx1
ZXMgYW5kIGFkZGluZw0KPiBTb0MvT1Mgb3ZlcmhlYWQuIFNpbmNlIG15IGFuYWx5c2lzIGlkZW50
aWZpZWQgdGhlIHJvb3QgY2F1c2UgYW5kDQo+IHJlY29tbWVuZGVkIHRoZSBzYW1lIGZpeCBkaXJl
Y3Rpb24sIEknZCBhcHByZWNpYXRlIGF0dHJpYnV0aW9uOg0KPiANCj4gUmVwb3J0ZWQtYnk6IENv
bGUgTGVhdml0dCA8Y29sZUB1bndyYXAucnM+DQo+IA0KWWVzLCBkZWZpbml0ZWx5IHdvdWxkIHBy
b3ZpZGUgY3JlZGl0cyB0byB5b3UgaW4gdGhpcyBwYXRjaC4NCg0KVGhhbmtzIGFuZCBSZWdhcmRz
LA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
