Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231F1A0B51B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E5A10E647;
	Mon, 13 Jan 2025 11:07:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrS4NOGt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E165610E64E;
 Mon, 13 Jan 2025 11:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736766421; x=1768302421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H0zmwzRA9K4xlC2J6LC9n8c95uZhQtCyW7fLRy4Hj9o=;
 b=lrS4NOGt/qGhBKfOm+5aCDguZvXQG24aujD/2xHEdiegs9cU1ptoVaJ0
 a1kE9Zi4jSFS1hxEYiL/UCjkNWza7z9nesg6UHeDgEbBhtlrogBfvTafk
 QRLhRpZnjRwMjoL8codFRq5vlTWlej5HiewGvXAoVnlpjMHpyaTLjFUwb
 HNww7pgytJD513KNA2C1I+ROvXILpve4cDdKdKyB/hfTBdZS4BNW7hIC1
 SFaGWBMDVaXO6mEhaH2MtEyoKBurnnaBDAFrefBq8MY4vHWEBtcljlWfD
 u7DIa9ZsW9JLTAyD71b5Nnr+TSHuW87oB2UUFj6L5thtJZ+s4WTHRQelo w==;
X-CSE-ConnectionGUID: ObB9w72oQzeaVCwD9M8pBg==
X-CSE-MsgGUID: nHT052eXS2qNu/cm3Qo5Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37251936"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37251936"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:07:01 -0800
X-CSE-ConnectionGUID: +axFUJIaQKCusSg0rj3dYA==
X-CSE-MsgGUID: nxmElpN/T6i3qdjEh7Do2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104255197"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:07:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:06:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:06:59 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:06:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AncTvRnq27wFLOdveqRO9f11W/j6sTsZEknl1llP06tZW3F/U3/0BaCXuHndxE+FV8mDZQzUFkrG93IseR4OBJNrMib836blQ2CabFiIuaHb5TMg9rVi5LfkkMHdk3rpCbv16sCbTIgEgll+Q+vgvdgpthpicjtf4/N5QyivaAXTURAJSA16TxLb3M+peJQt+4Rbf1W1lzLOh94GvDnMp3QCdYt3QBlovYeptmGJW4o2Gs0nF3oBdAeADyrD5FXfVPwjFC1TPQ7Hm4PXLJGxJldLq/+y1J34T8YUpIbFR2AE2KeS+GvhzjcwNZ+8qG4cGF6Iqt5B44dhYUI/DH7u+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0zmwzRA9K4xlC2J6LC9n8c95uZhQtCyW7fLRy4Hj9o=;
 b=FEOVi3jseNW6UyhwVk3MIcHbYz+7aiCwO1D1ZjYfEiBtO+kYj0IAZV0MU8mwOIkdaRxgXslinA1GgvbuX0Yzu7H5Tx0RTm4wuNY4CbG8xBrEVlMdOhbJ0lrlO5NBgnOhs8lCEh3EPaphKC83alrRNmpkKxiP8CRTb4c54jXXLsP2bqJASgBNkJOVjUSdarCmbey9PrQPNSukYt+bvu1IThmnxaynSk+WA+vDwfJuPatAL1J4n/80pawjA1Bokplc6Ow6MRIwFPJW9m9Lg6JCsEdf5fKSh8wQ4+1djiA/F2dGMg06Rpfo3lGoI6Af/CbKMvfPcXf5oiahULjtKkB5Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 11:06:56 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%7]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:06:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 3/4] drm/i915/psr: Make intel_psr_enable_sink as local
 static function
Thread-Topic: [PATCH 3/4] drm/i915/psr: Make intel_psr_enable_sink as local
 static function
Thread-Index: AQHbYoJQaKqYB4tDwk26IgOOmhOQorMUkVeA
Date: Mon, 13 Jan 2025 11:06:56 +0000
Message-ID: <MW4PR11MB70543FE30946A5E06F10707BEF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
 <20250109103532.2093356-4-jouni.hogander@intel.com>
In-Reply-To: <20250109103532.2093356-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB8285:EE_
x-ms-office365-filtering-correlation-id: 506bc789-1109-4ded-a8b8-08dd33c264e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WEZ4QjFyUTVsN2RMTTEyWElQajhNSmtqVVJtRkRwczJZVmZINEwwVEZrcW56?=
 =?utf-8?B?eUdGYmlkQXozNkJQUnJ0dTF2OCtUVEZDbmJHQk1VaGtaOXp6a3pkblVLOFpP?=
 =?utf-8?B?cG0vQjhZSXlUVThMenA2QmJteklnd28wR3EvK0tNVlVGWmM1NEk4YzYveEk0?=
 =?utf-8?B?OFN4dDlEUlg1MWhKRFgzaXFUNUlvbkp2Q2FjZnQ2U25hTzJjU1NhR3dGR0wx?=
 =?utf-8?B?TGR1c1BhbHZkYzRESWc1cmEzSmpIUUdNR2s1Q01XWldsa1FYTW5qdTg4TFBP?=
 =?utf-8?B?WktiTUQrdm5MekQwWEhvTU84QnBSMTV3dkw2dWpyYWZ6dVVhYk42cEhQbTVN?=
 =?utf-8?B?c0FmMUQ4dVY5UVMrN2xWNjZxMm5DSHdlTW1Ya3lpU2RhM0lzcTNHaGtua0N3?=
 =?utf-8?B?ZXNua3B0ZmNsYjJsMTRiK2hoTG1VUjErdUJPRytjQW1ZZUxPdktyRnI5eThZ?=
 =?utf-8?B?dTVDMFI3ei9zMnVVdGp1eEdCWHdTZVI5K1U0eWxFdjVFTHRjNU9HMk1ieHps?=
 =?utf-8?B?RnJ5UDlHY2MzeVZOTUJWTzhMNkJjTzZ6cWZGWnNpZXl0bVZWUEF4aEFGQTFW?=
 =?utf-8?B?clh3YWJobS8wTFA3YU81VGlidXdkNU94WHk4a055MjVXMi94QUp0RE8rRFVS?=
 =?utf-8?B?RTNXaTZsM3Q1bUozeURqVnUxaDFzbVNjeGpSdGJORXBoa2JkZjE4TlRTZ1Iv?=
 =?utf-8?B?akZCWnpLTUNscm4xaGxMVjBwMmd6ZmF0Z3daK0lMSWxKQkVFSnVyd3JVbFhO?=
 =?utf-8?B?UFlURm40bWtKemJsSldQekJnY1JWZGtTOGlmT3lodzBxbFd2UlFhNi9jSHEr?=
 =?utf-8?B?cEg5eURmRzU1Uk9IYmVaV3phYVRTczhLZTRXVjRqbnhERktObS8vM0pzVk9s?=
 =?utf-8?B?emNGQWFHcWZoS29ucGNQS2ZoK1I4VGhhWlZnOGN4dGR0R2d2R0wwN0dsenBF?=
 =?utf-8?B?MmlrZDFsWU9BQkRYTmZZRkpqcTFuZm9ZZVcyRjdxVXpzTmtjcDZKM2I0US8w?=
 =?utf-8?B?dTBDdVgwUmhxNi8vTDBmb3prVDZnWTdtdEtyeU91ZWIrZGJwdno3NXNKSEFx?=
 =?utf-8?B?d2hDbXJwakpJZlQ5Z1NFUG9nMk9QL1JHRWszRVJ1MEcyUmZEejF5UVFac0dG?=
 =?utf-8?B?d3VpeXpYd2dWWkxNdi8rOUtEdkF4bFRvdGNDaE5GTUYyM01iUUptM205WnpP?=
 =?utf-8?B?eHJWY1ZSTWdydDg5clRqUzRuaHY5b2k3SnRDQzZuc0VjbXhHcnYwQi9QQVJX?=
 =?utf-8?B?VEpuOXk3VElZMFhSa1VPMnF5WUhlaHNiRUtWNEFSQzRvUzVsMnM0ZjNlNFl1?=
 =?utf-8?B?RVMzbHhENGlvcjZrVWV1ZnJhNTZMU0M5aE93Q3VVRXJGVThpdzlpdi9HRkNx?=
 =?utf-8?B?TWwyYlhqZzZqd3l2RHM5aldzNTNXSklOLzVDcDNKR0t3RHIwclMvejZjMmY4?=
 =?utf-8?B?YUhac09DdmNTeE9CYm9tcnY5NEZnSFZuNDlnZTRZMU1vaHdlNWNpMHJrYitv?=
 =?utf-8?B?RnV4SFh2N2RSTk9TU29WazFsa0VWajh4VzFPb281Wko2RFVxb2tMdklGSjlY?=
 =?utf-8?B?a2JUZzc3aTFqdHFCSkJydWl4NkErZ2o1NXRvdTNTVWZBcDBDS3Z6THpTcTJH?=
 =?utf-8?B?bjk5Nm9VRHkvRm8wT1Vrc0IzUkxhbmlMeVhVSnhtQWRoNTJHcHVlTmMvVEFi?=
 =?utf-8?B?VHdXYWpkSDVQY0pHa0RDaHVZbzlNMzVzQy9ZM0kwSEM3QzF0QXdkZnMrRUEw?=
 =?utf-8?B?ZDZJS2hTQ3V3S1lHTXZlaHhsVkZGUG00dFlBUzJZdkpHNC9kZm42Z3ZhYk1m?=
 =?utf-8?B?YkV0N3ZXbjVlYk9ubXJWVUJaWlY5UnZqUUduajBnbTlnMndHMGJ2eTIxWUhp?=
 =?utf-8?B?a0RKN3ozOERZS05Za2RQd2VJbWs2c1pUZlRnbE41T29oaEowRERsbmY2cVZV?=
 =?utf-8?Q?yWaXuyWEnz43qmJ2ksC2QpKavx1zESjO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDU4eUxBOW1kMGR6ZllWUlVabkZxcVdHWVhjU2ZWZFpVdWIwUFdnVmFUSEQ4?=
 =?utf-8?B?dGsvenpGbHJPTjZ2a3hTaHNkaXZ6bE4xeW02ZjRJLzJvakpzbnM1STkzdFQz?=
 =?utf-8?B?SmpEZ1VCMXVQQVJZTTE3NU0zZFpyVWlwa0ZjNHdDV0JjV2NOZ2hCaWI0SHVx?=
 =?utf-8?B?TjRZempwRXlmcHlyZ3IrZU02WlNTK1ZQaHphK1ZmZjFZYlg5OWZOMWpubjRB?=
 =?utf-8?B?aTlMcUFiTWpFb25ZSkwzYUt0YjQ3VC9BT05HUUdKRkRYRkQwYUUwckJwbHEw?=
 =?utf-8?B?VkZWMi9lekRaNVB6Rmd1U1BJNFdUVUwvQ1BpelZvTXIrQUZLQ2FsMG02Q3dB?=
 =?utf-8?B?anZnYjZRUWU0TndaajA0cHRHTmFTUDhuSUtGOFlNQndXMS9SMmx1WFpFOFFx?=
 =?utf-8?B?Y1ZCdTNWZU9KOGNodFRWVGVmS05wVC9WR3dUY2VqZGwwQWhpWHRndlhvd1o3?=
 =?utf-8?B?ejJ1bjlDNlkvbmdKSjBWLzV2bmlCZFpHblU2VGdJOWFaTWlZOVlTSHh6cnlx?=
 =?utf-8?B?L1BhRUpxY1FiTjhJMHlqRDJMcUFLcVg2d0EyRWtOckxTd0RFemVrSWdKZ0Q4?=
 =?utf-8?B?bHhKQ3g3MUo1Z2FiQ3NSTkpCZUxaS0VSRmt6T2owY3VWRzFUVzhCWXNERTFu?=
 =?utf-8?B?Y1h3d0lwbmMycEJyUXYzenp0bTI0YjFMYWo1aHhGMm5BZmZubWc5alhwU3V2?=
 =?utf-8?B?RHJyTkQvT1d2WWRJd0p0RUhQZnMxRFFYZDJOVU96NGoxZlVrSitlWStaSHZM?=
 =?utf-8?B?YWFRZCtkOEIzSjlUOTVMZDJleUY2MUYxVktLUkpZbGhhSXU3azhSUUhkRFhn?=
 =?utf-8?B?bVpDN0tSeldyTU9qVWllaXdCNFFmNkFTRjB1T29zZnJueGcyckU4aEpKVktk?=
 =?utf-8?B?SkNKQkVDWDlvUEh1bHpSUTJtenNtS1NZSHRrdDlaajhtNXc0OHVwODJLOEY3?=
 =?utf-8?B?OFYyTFBTZisrSlVPSHZ1UDRtWjdLV2xKcVAzK3k2UHRnaUVzN0NUWHVXcG1q?=
 =?utf-8?B?RlhpREpiTTduNWorUC9QWUlJRVEyOSt2M3hLWXJ0Q1VLNUxuS3ppSFhrSUJ0?=
 =?utf-8?B?M3crZlA4M0VQN2gvVVNJaEtuV016TjJOZjhpOUN2SVovek5TbG1lTnhoSVJr?=
 =?utf-8?B?WG0xZ3FmT3cwZlNkeXBmRUtiSnlYeFl1emZJYW02eFVVSy9HdDBMYzZ6eTV0?=
 =?utf-8?B?ODhCdFZpZVRtZFVaNndMaVZGQk9JZUJPTHg1SGVlSU5XSW56akVmbXA1Q3Rj?=
 =?utf-8?B?RElZazBGcmhvaGhUR21yQVlYWUh3R3pRVG9GK1BsU3l1Y3pUblhSdmRYeG1S?=
 =?utf-8?B?eDlaWjNxbmlIclRLWWVQWFI2MFVFZ0pKZFhEUWppMDJ4TS9ETkhWd0NxNS9J?=
 =?utf-8?B?UUQvbld1dWNHVm9OVm1ETldOektmUTRlZFlaYXVVQW50YjBGNHliZFJKMWFw?=
 =?utf-8?B?MlZYK3J6K24wdUpzWjUyYVA3enhtcHYrRE5hek93QndveDJMUlZLMG43SUJr?=
 =?utf-8?B?Q3hCRTJtdkI5NHBTdXArZUFKYVgrSFVjTjdQS0VuZWcrb3hHK3RMaDFOdDJv?=
 =?utf-8?B?ZWRwbHVSazg2a3RSbU84RzNRVVAvcUlxRDY0b1NzVDYweWhxemQ1czNPVUhr?=
 =?utf-8?B?L1ZUaGs1RFFHR3hqZU90ZGpFdUFLaE80emNnUkZFYU8zS3BYZ0tTQVFXL3pH?=
 =?utf-8?B?VWxZaUlCcXBBSXV6VUE3OCt3aUM2OXNMOWFTZW1xV3hlQkpGaGdOUEw0dmxU?=
 =?utf-8?B?blNmdk4vMVZjRWVHN1g5RXUrOEdzR2VKRnJEQlRjTXVlZlZQQVVTVzFmMWJ1?=
 =?utf-8?B?Rk5aeFZlYkJlVzhnQXAxY3d5aFlsRjJFUnVkdzdSZkFqb0lQY1FXbHhodjJz?=
 =?utf-8?B?d0RKMVk5dmJjNWhlZ3RESW1XTmlDNEhXSllYY3ZUYytuMXhrZXlGUFpKMTlL?=
 =?utf-8?B?WUx2dXg4QzJnMHpoclYwUHZLUk81cGV3NExJY0Z0cG9ndDRtaGNBcUVUTTZG?=
 =?utf-8?B?d1lHNXRTY0VHQTlLcElVOXlCVjdhUFpzN3JSekhlSG02bkZmODc2d1J6WlpW?=
 =?utf-8?B?VHlUQzRkajQ0K25FNUo2YzhyK1dEeDRCbnE1a2ptTXBienlZb0NEek8wYjZS?=
 =?utf-8?Q?x+ZU4Geuiy0xMv0PJ4+zAQ74O?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 506bc789-1109-4ded-a8b8-08dd33c264e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 11:06:56.5012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ptJXr6F+Em3ZrggNfPybT5zRxx1M0/9aYmy+UXLtV/ZucBpQCnOlhtwOBvlvmw3udhEaUQFcHKC3ILYIzFMadg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBUaHVyc2RheSwgOSBKYW51YXJ5IDIwMjUgMTIuMzYNCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCAzLzRdIGRybS9pOTE1L3BzcjogTWFrZSBpbnRlbF9wc3JfZW5hYmxl
X3NpbmsgYXMgbG9jYWwgc3RhdGljDQo+IGZ1bmN0aW9uDQo+IA0KPiBJbnRlbF9wc3JfZW5hYmxl
X3NpbmsgaXMgbm90IHVzZWQgb3V0c2lkZSBpbnRlbF9wc3IuYy4gQ29udmVydCBpdCBhcyBsb2Nh
bCBzdGF0aWMNCj4gZnVuY3Rpb24uDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKy0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmggfCAyIC0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCBlNTkyYmMwMWM3ZmIuLmY5NjlhYmM1NjI1NiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC04MTQsOCAr
ODE0LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rX2FscG0oc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5h
dXgsIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLA0KPiB2YWwpOyAgfQ0KPiANCj4gLXZvaWQgaW50
ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IC0JCQkgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3N0YXRpYyB2b2lk
IGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJ
CSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJ
aW50ZWxfcHNyX2VuYWJsZV9zaW5rX2FscG0oaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGluZGV4IDNiMjY0
M2I4M2UwNi4uNWYxNjcxZDAyZDc2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgNCj4gQEAgLTI4LDggKzI4LDYgQEAgYm9vbCBpbnRlbF9lbmNvZGVyX2Nh
bl9wc3Ioc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiBib29sIGludGVsX3Bzcl9u
ZWVkc19hdXhfaW9fcG93ZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJ
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkDQo+IGlu
dGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7IC12b2lkIGludGVs
X3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAtCQkJICAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRl
bF9wc3JfcGFuZWxfcmVwbGF5X2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
OyAgdm9pZA0KPiBpbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IC0tDQo+
IDIuMzQuMQ0KDQo=
