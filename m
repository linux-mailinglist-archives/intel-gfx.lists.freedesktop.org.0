Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HTfOk7cHWpsfQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 21:23:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB2B624949
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 21:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B27F10E8BC;
	Mon,  1 Jun 2026 19:23:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HYOd7pin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B48510E8B8;
 Mon,  1 Jun 2026 19:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780341834; x=1811877834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=prfR7JAMiX3uENhoCTjLwNpbyWCN5t0v1IeBBHAqmf4=;
 b=HYOd7pinkZsIDVlckMy4SJH1fHnWy0bOuDy1/ygTJ6JepEPXaSIRD++W
 z1Kkvjy7KxLxvWeBiUdKa5BNxg5LmnM9dY6l6VaVbknUwtwP1pZVphhxK
 KS9hHloEiGi7N9kTWysJwLO5zLq9Mw9O2iT+/Uhtqn9ZcYbua9O6eKlb1
 8/T7VeKx/6XZwYd7Ei294addqhbcdI6rZx6qopmoy/mo4XeGwgrdXp+hG
 1y6G8TLpWmVLDvQ/lKMTP3KHy1poNR2/Mgbmx4k1gqqXwqdcAFxFsLZE1
 k1g62mC3Iz4XC9URU3KhMQKnLVFGfZW/uUFbsSH8lzU24KUw2H2vjYsOo w==;
X-CSE-ConnectionGUID: zslIEpHuQFath0QWNwK/Zw==
X-CSE-MsgGUID: 6ZMVHPc6Smis5td0L45Kpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84735378"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84735378"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 12:23:53 -0700
X-CSE-ConnectionGUID: QZHu/ECbRHSrkvIkJMHkrg==
X-CSE-MsgGUID: M/jWgue6Qu2m/HXOvc3Bxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="247936876"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 12:23:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 12:23:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 12:23:53 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 12:23:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IN3IPWc502/G1Yb7CjoG8b1/fddDaU5cxO7488FJKdD+0l+wL+AthJLmD/da7/CfnC+L3IcoPUpEHZBwUM2V+8bUeDbhn2YKjyiKNkgnNzn+0io4Dwufg+aDq4ltOqjUqACuSlj1I0wLNElsAw0VbkeqpW0RxTuMmCWZgzsKPSJ+WPFwYyofkNmsx4CqHrbd7KmO8p1k5y2nOBXKYTMCTixE6Xx+OVRgRxaNeud4vBPNOE99PcqKJBQPCA+3YKgp9X5UlBDBzlw8F+J/OpDbr4izTA3JPOpv59HWSrbw3/kNAAslF+g72vWsZ3mBmkInBS2w/DtS52I87xK7yUHS3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prfR7JAMiX3uENhoCTjLwNpbyWCN5t0v1IeBBHAqmf4=;
 b=xg/FxZrmhHoxTHklVmeZxYIjC/p5JfMY9P9sCi/OTNOEInm/Bugdqf1EUPyhy0VJWNdNEbJZvje44qB9cy5u7MxuoMhFc62CiBkcawN6B4T4ChFsJjINl+NF3nRYZGtcUzkQ+wiIAzlli+bV9Q141UY8yIAPZ0Onu1sNZvUwtcqkjTAOaPCQxHS1c7tAYzoRNVQg4Ge8A+XArDiFnGG5AMaN/0YUvBYcSXadQmc9EKpW5Rlpz7ImsnoLzIWHQa4XDKeuDyRI5wmbKY0XGcvrmaOygP2DTUEJTeJKo5RbeErJ4eriP3qfhAohPp3mEeDiz1mqqHtaSSAUCQtp9XwpAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Mon, 1 Jun 2026
 19:23:48 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 19:23:48 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Dave Airlie <airlied@gmail.com>, Simona Vetter
 <simona.vetter@ffwll.ch>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, "Brost, Matthew" <matthew.brost@intel.com>,
 =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>, Oded
 Gabbay <ogabbay@kernel.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dim-tools@lists.freedesktop.org"
 <dim-tools@lists.freedesktop.org>
Subject: RE: [PULL] drm-misc-fixes
Thread-Topic: [PULL] drm-misc-fixes
Thread-Index: AQHc7zjxljjOj2OTwkuwVHbZQXsy3bYp2COAgAAC6ICAAALhgIAAG06AgAAfdNA=
Date: Mon, 1 Jun 2026 19:23:48 +0000
Message-ID: <PH3PPFAB4263235C2A68655E6E599F21F20E0152@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260529070009.GA313534@linux.fritz.box>
 <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
 <e1a2cc27fb04a88be23973d3cb7868f3d4471d0d@intel.com>
 <d479f1185cd1ae6eb52a7d44e944408c3447c8e4@intel.com>
 <24042986-6ef1-49a2-a060-aabf6e189473@suse.de>
In-Reply-To: <24042986-6ef1-49a2-a060-aabf6e189473@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|LV8PR11MB8607:EE_
x-ms-office365-filtering-correlation-id: ffcaca95-0b6b-4ac6-ba23-08dec0134e64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|38070700021|56012099006|4143699003|6133799003|5023799004|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: ovPvF0tp/ywQtmvpkhWN1j6QZ3WcvZic49aX41eoE9ZpeAidx3nS35/dVoN36kHI5veIQ3w3L5+Jl9ryXdJt/yopGaKf9ZUNnfudWymXPCXATPmEPr20lPat/StbrGAVxKP/Hya2cG9af+wWhke1EUmHCYxd3jvgLOT+PgzJJVw1O+kudAXH7fxO7kkH57wrUzRISTKn+39tSS4ywNxjueMZh810aqyqxbXmxv5jmVyBLm7j+oNj8ZIl4I09m4G5qSQ2fh/GAwgTWQLXLI+Hz2n5UTzyidRxVRVPjtKJ5wsacZ+Pd4N3NYQmBdxZMEGtM0IfPejrA8y/a2L2Oz5kD+zORxayWITUjaxHcK3Kel833qCIuWgv1bij9U0JwyOqGytK2muJePiMVSZsKHz6sJTkZKckJoaSemnbybyaSljA24VNjTqB9GAp+PBF4JcJUUevQizENkx4tRioOV9tc/3rNzWRPrynQVarjnToWCYPKzf7Qq631sULUhtnaWVOt4tbVs2Jg58nNZwvICrMesBcUPzkQJPm3zCHvQID54vCFS1IhKTo6xbO13HkaGC68N8DkbPaP8eihqjDfRHvHH2s2x31fdkombLEgIKxFAOYhKh+/ignUF0ElAweQWjkV7jR6MQLU16nmGlEbDmFRESMZuK0ASHXYlGufPKQaA+oDFby39Omep0xuYhZan67eahYpMvE6Ysx+al5ldxDlA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700021)(56012099006)(4143699003)(6133799003)(5023799004)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHhKSnBkSWVScytWVElIRUpvNWlPYXl3eGtueXcyS2lmVWtOOGVvRk8waFRi?=
 =?utf-8?B?VjltUnFONkNndmtmMXBXckVnQXl3QVNUWEo2YXlkdXJ0ODRoSys1Uk5OOENZ?=
 =?utf-8?B?NWFQY2NnMmhEM0JWcHRJWlBIeHJNSSthZXNkNVRyMnJVWUgvRVZFYXl1TDlN?=
 =?utf-8?B?eFZQcVZjZXcxT0Znb0hNVzVPcm9Wc2ZVOHBxbmFzV0N5T2ozclh6TkdGcHlE?=
 =?utf-8?B?aGlQeXZMNkpKbG9WNGZaRHpUdTY4UFB0QjlURWtBZnFxa2Yvc3QrcnZXYXBv?=
 =?utf-8?B?dWRMNE4wL2FrdTlSY2pkYTBjTFNPVkx3RWJyQjVLUXBOdUozcVNOMFF4cDc2?=
 =?utf-8?B?ak1KaTJVWWlxQVB6ZTJaeFFRN3VCSzdUSkYxRTAxcWJiYVdJanlUVFJ1QzJi?=
 =?utf-8?B?SkxIK3dpa0FRQ0t5MmZhLzJzOXpLdFhKcnl1aVFPREZ5TGJGdjZVUDErUXQx?=
 =?utf-8?B?WE9ZbllqeXZ4bXVCaS9UcldaRkx3eDVCTlFqY28yUXIwVTJoMm5Pb1RKTTRB?=
 =?utf-8?B?VzlWY2diQndOd2d4K0lkMDFFRDFhUHZ0ejZBTWtTZ1UzRCtEYm42OXhRSWlU?=
 =?utf-8?B?T1NJRG16eHNBeE5uV2dwTmlmcEVHZEhYMXp1OEI0RHRFeGMvNkg1OUtFTmVw?=
 =?utf-8?B?UHpBbEUyQWYzd1hGMWJLOW9yWU5FQjBkUkNLUkxza05hVzI3emtSR2dFM3Qv?=
 =?utf-8?B?VkdPbUhYZTNQcC9NRXhXMjYvelhrRVlLcWxMcGZYM1luVXFBdHBQRTJobTRK?=
 =?utf-8?B?NS9zZ09LRWZId0VHb0JoYk9OdExUVXlBcnRRRDZrY0VERE5uenBERWFNbVpk?=
 =?utf-8?B?RTVkZ1JBcnV5UlMwTzd2cnIrWHdJSWovczA1NU5TcUlTWFZ2TmRXWExJUXRO?=
 =?utf-8?B?VzFpY2xzT2huUWtwcHZ6b0JqbDdNdzN0WGpFajRON3FxcVFNTEtaRG1sckdt?=
 =?utf-8?B?WjV1UUQ4K2U2a2ZtSXFPMDR2emNNYlNFNEk1SVZ4U3dTRmRLLzQyMWtjT1Rp?=
 =?utf-8?B?dWtocDI3VlhUcFdJbXdxOU9xRitaZjZwUE9DWDREOGptdHMxakpxQmh4L1Yr?=
 =?utf-8?B?YXZuVkRrQnZrZW1TL0cwMlFvd3hBQW9MYmoxblNZdWFjS0JFNjFscFNuSi9v?=
 =?utf-8?B?bStBRUFrMFVpdFE3Z2pQTjBUWFNsaEhCeWxrVjJGQnJ4d1V2RFlFTXBsUlBk?=
 =?utf-8?B?ZHBXSE00bWNnY3Y0ck02SkREczJCRFJBUTNCWENaQjZkQm9YQUd6eWNidTJh?=
 =?utf-8?B?VUh3WFpGd2FRK044MXBOZGlHZkg1ak05bVBEUDNGQWZ3MXRTb0pHRXN6TXNC?=
 =?utf-8?B?K0MxbTRnL2NPLzV0eHBLckFoS0lSVWJORHBEbXIzV0tIREJOdHhCeERxKzY1?=
 =?utf-8?B?ZGZNckZ2OVZLTzdmWVBaVXV3UEh0RW9YWlpJY1p4YWlWdkhmQ1hGc2FjZ1VX?=
 =?utf-8?B?Z3ZDQnZQSHFCVWZKeU15NS9nMjRtUVF3bTM4MHdnR0VrUjhyLzJmUUR2WGxT?=
 =?utf-8?B?bktKdFlNT1V3dEs2a05TWDVDTmJGNS9FNlV4L2pHcW9ZMk9VNDlsSkp5R3hW?=
 =?utf-8?B?NmlPR1QvUUl1V2puMkErNzRhdzJhQnd1aGJwNkZhaVE0MTBNU25oQUdXOTdu?=
 =?utf-8?B?VzY0amNnOFc4QURpaXV0eHhGZTIzOUNFQm9lZmFJZG1mK0JGMDE5YlRmd0xZ?=
 =?utf-8?B?NWtNR2xpS0R0Y2hWNmh4YlBOSFVRSG5OZEpyY2RXNnQwVmNkNWdUY0V5aGNq?=
 =?utf-8?B?aVdJeWJDeUoxNnBEdkhzbWlPdzNyRlo5a2lJTW0zcmdjTjFRdGkwNXBCakhw?=
 =?utf-8?B?ZVpXYnc4cFFjMmcxeGcrSU94VU5ZRHF0UlJEWWpKMVJ3Y3EwU2h2OURRbWpl?=
 =?utf-8?B?Yi9rMFkwSDI3aExMWHd4R0hxYUtvYlE2M0p6THRKZktVZ0M0VFNIYkJ2cUdW?=
 =?utf-8?B?cEgzMVpqWHgwR1JoOVY5cm0xM1ZtZjlNb2lUMHpMUXh6MXRWVXRsTTVkYkZC?=
 =?utf-8?B?d25TZUEwaXFWV2ZvQ0xQeFNhMHpONFlRVjZPRmptNHNmTnM1cUErM3VENldX?=
 =?utf-8?B?a1dkM282K1ZUdTBVVUU3Qm1vdHdWbXJVVldzZkR0UkNlM0NXaUV4Y0tsa2xD?=
 =?utf-8?B?MGtBTFJINERYNi80L1YyQTdSanhTYmZnZnNSSE5ZQU1ZTXkwa0JSQVpCUUZv?=
 =?utf-8?B?UWNXT0tXZm1wYmJzYW9tQUxjcitUR3piNC9IWlRsRWNZdDhRc3V2cGw5Mmc1?=
 =?utf-8?B?TG1HckZ3a0c5M0h5ck9vRTNzKzVvajdoRklxYnYvZGMzeGxuTkFEdURaYmpi?=
 =?utf-8?B?a3hDZ0RPeDU4Q3YrZDZjZEw3ZDZCUWs0cXY2VzNlem15aktVajNUQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AZmXMG0QbcHaFTxLk+CLLPIcPsAmHM4ldGrJKFMnV+zoeI1RzykpfjQmV0W0VAQbnIr6EvBnMusXB2iaUUu2alGHTekbB6oRpBu6oXh2rumeo5B6UF1O1S1IELURWXKNGd2fbGJpSu1p74r8Irv+rsiJ2Dld3hjgMLnZId2KgmqJJ9KQgqGYFB+wEDv9yzpcpFJ++XANm3YHx9ZUZzr9s/21+TViUoWhl6B6T9rNmRWVydqfeXkDEcL19CG06S3N/XO0mMcumiixZ1mh4DelDGfk5L1297LCEpM1dI+Q8xZB9Vxq5gnM6youWqr7Gnuh94TTbKwdt9rIMCf/B9+Htg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffcaca95-0b6b-4ac6-ba23-08dec0134e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 19:23:48.5258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 78lBPJvejkvzVlG2UrrTmG3SNJirELZBJaSQ6bANZF9Dy6KC2R0jbmSo2fKHGuWeREkzHdCZ623rqH/zHmLjUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8607
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[suse.de,linux.intel.com,gmail.com,ffwll.ch];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2BB2B624949
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFRo
b21hcyBaaW1tZXJtYW5uDQo+IFNlbnQ6IE1vbmRheSwgMSBKdW5lIDIwMjYgMjAuMjcNCj4gVG86
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBEYXZlIEFpcmxpZQ0K
PiA8YWlybGllZEBnbWFpbC5jb20+OyBTaW1vbmEgVmV0dGVyIDxzaW1vbmEudmV0dGVyQGZmd2xs
LmNoPg0KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPjsgVHZydGtvIFVyc3VsaW4NCj4gPHR1cnN1bGluQHVyc3VsaW4ubmV0PjsgVml2aSwgUm9k
cmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IE1hYXJ0ZW4NCj4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+OyBNYXhpbWUgUmlwYXJkDQo+IDxtcmlwYXJk
QGtlcm5lbC5vcmc+OyBCcm9zdCwgTWF0dGhldyA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+OyBU
aG9tYXMNCj4gSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+OyBP
ZGVkIEdhYmJheQ0KPiA8b2dhYmJheUBrZXJuZWwub3JnPjsgZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgZGltLQ0KPiB0b29sc0BsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogUmU6IFtQVUxMXSBkcm0tbWlzYy1maXhlcw0KPiANCj4gSGkNCj4gDQo+
IEFtIDAxLjA2LjI2IHVtIDE3OjQ5IHNjaHJpZWIgSmFuaSBOaWt1bGE6DQo+ID4gT24gTW9uLCAw
MSBKdW4gMjAyNiwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3Jv
dGU6DQo+ID4+IE9uIE1vbiwgMDEgSnVuIDIwMjYsIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBs
aW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+Pj4gT24gRnJpLCAyOSBNYXkgMjAyNiwgVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+IHdyb3RlOg0KPiA+Pj4+IFJhamF0
IEd1cHRhICgxKToNCj4gPj4+PiAgICAgICAgZHJtOiBwcmV2ZW50IGludGVnZXIgb3ZlcmZsb3dz
IGluIGR1bWIgYnVmZmVyIGNyZWF0aW9uDQo+ID4+Pj4gaGVscGVycw0KPiA+Pj4gTG9va3MgbGlr
ZSB0aGlzIGNvbW1pdCA1YWI2MmRkMzY4N2IgKCJkcm06IHByZXZlbnQgaW50ZWdlciBvdmVyZmxv
d3MNCj4gPj4+IGluIGR1bWIgYnVmZmVyIGNyZWF0aW9uIGhlbHBlcnMiKSByZWdyZXNzZWQgaW4g
b3VyIENJLCBhd2FpdGluZw0KPiA+Pj4gY29uZmlybWF0aW9uLg0KPiANCj4gVGhhdCBDSSByZXBv
cnQgaXMgd2hlcmU/DQoNClNlZSBlZy4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9pbmRleC5odG1sP3Rlc3RmaWx0ZXI9a21zX2JpZyANCnRoYXQgaXMgaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNjMwOA0KDQph
bmQgDQpzZWNvbmQgb25lOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L2lndEB2Z2VtX2Jhc2ljQGNyZWF0ZS5odG1sIA0KdGhhdCBpcyBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzE2Mjk2DQoNCnRoZXJlIGlzIGFs
c28gY29tbWVudCBmcm9tIENoYWl0YW55YSBub3cgYWxyZWFkeQ0KImlzc3VlIGlzIG5vdCBzZWVu
IGFmdGVyIHJldmVydGluZyBhbmQgdGVzdCAiaWd0QHZnZW1fYmFzaWNAY3JlYXRlIiBpcyBwYXNz
aW5nDQoNCmNvbW1pdCA1YWI2MmRkMzY4N2JjYzJjYzU0MmI5OTM4NWFhYmFjNWM5OTZkYjZmDQpB
dXRob3I6IFJhamF0IEd1cHRhIDxyYWphdC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPg0KRGF0ZTog
V2VkIE1heSAyMCAyMjoxMToyMSAyMDI2IC0wNzAwDQoNCmRybTogcHJldmVudCBpbnRlZ2VyIG92
ZXJmbG93cyBpbiBkdW1iIGJ1ZmZlciBjcmVhdGlvbiBoZWxwZXJzIg0KDQpCcg0KSmFuaSANCg0K
PiA+PiBUaGUgSUdUIHRlc3Qga21zX2JpZ19mYiB1c2VzIG1heCB3aWR0aCBhbmQgaGVpZ2h0IGZy
b20gR2V0UmVzb3VyY2VzLA0KPiA+PiBhbmQNCj4gPj4gaTkxNSBhbmQgeGUgdXNlIG1heF93aWR0
aCAxNjM4NCBhbmQgbWF4X2hlaWdodCAxNjM4NCBpbiBtb2RlIGNvbmZpZy4NCj4gPj4NCj4gPj4g
VGhlIHJlZ3Jlc3NpbmcgY29tbWl0IGFkZHMgcmFuZG9tIGhhcmQgbGltaXRzIG5vdCBiYXNlZCBv
biBhbnl0aGluZzoNCj4gPj4NCj4gPj4gKyAgICAgICAvKiBSZWplY3QgdW5yZWFzb25hYmxlIGlu
cHV0cyBlYXJseS4gIER1bWIgYnVmZmVycyBhcmUgZm9yIHNvZnR3YXJlDQo+ID4+ICsgICAgICAg
ICogcmVuZGVyaW5nOyBub3RoaW5nIGxlZ2l0aW1hdGUgbmVlZHMgbW9yZSB0aGFuIDgxOTJ4ODE5
MiBhdA0KPiAzMmJwcC4NCj4gPj4gKyAgICAgICAgKiBUaGlzIHByZXZlbnRzIG92ZXJmbG93cyBp
biBkb3duc3RyZWFtIGFsaWdubWVudCBoZWxwZXJzLg0KPiA+PiArICAgICAgICAqLw0KPiA+PiAr
ICAgICAgIGlmIChhcmdzLT53aWR0aCA+PSA4MTkyIHx8IGFyZ3MtPmhlaWdodCA+PSA4MTkyIHx8
IGFyZ3MtPmJwcCA+IDMyKQ0KPiA+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
ID4+DQo+ID4+IFRoaXMgaXMgbm93IGluIHY3LjEtcmM2LiBQbGVhc2UgcmV2ZXJ0IEFTQVAuDQo+
ID4gQWgsIG1pc3NlZCB0aGlzIGNsdWUgaW4gdGhlIHB1bGwgcmVxdWVzdDoNCj4gPg0KPiA+IE9u
IEZyaSwgMjkgTWF5IDIwMjYsIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pg0KPiB3cm90ZToNCj4gPj4gaGVyZSBpcyB0aGlzIHdlZWsncyBQUiBmcm9tIGRybS1taXNjLWZp
eGVzLiBUaGVyZSdzIG9uZSBjcm9zcy1zdWJzeXMNCj4gPj4gY29tbWl0IHRvIHRoZSBkbWEtYnVm
IGNvZGUuIENvbW1pdCA1YWI2MmRkMzY4N2IgKCJkcm06IHByZXZlbnQNCj4gPj4gaW50ZWdlciBv
dmVyZmxvd3MgaW4gZHVtYiBidWZmZXIgY3JlYXRpb24gaGVscGVycyIpIGhhcyBub3QgTGluayB0
YWcNCj4gPj4gYmVjYXVzZSBpdCB3ZW50IHRocm91Z2ggdGhlIHNlY3VyaXR5IGxpc3QuDQo+ID4g
V2UgaGF2ZSB0aGUgd2hvbGUgcmV2aWV3IGFuZCBDSSBwcm9jZXNzZXMgaW4gcGxhY2UgdG8gY2F0
Y2ggc2lsbHkNCj4gPiBtaXN0YWtlcywgYW5kIHRoZW4gd2UgcHJvY2VlZCB0byBzaG9vdCBvdXJz
ZWx2ZXMgaW4gdGhlIGZvb3QgYW5kDQo+ID4gYnlwYXNzIGFsbCBvZiB0aGF0IGJlY2F1c2UgInNl
Y3VyaXR5IiwgYW5kIGV4cGVkaXRlIHRoZSByZWdyZXNzaW9ucw0KPiA+IGV2ZXJ5d2hlcmUuIEkn
bGwgYmV0IHRoaXMgd2lsbCBiZSBpbiBzdGFibGUga2VybmVscyBpbiBubyB0aW1lIHRvby4NCj4g
PiBUaGlzIGlzIHN0dXBpZC4NCj4gDQo+IEluZGVlZC4gQnV0IHRoYXQncyBob3cgdGhpcyBmaXgg
Z290IGluLg0KPiANCj4gSXQgZml4ZXMgYSBwb3NzaWJsZSBvdmVyZmxvdyBlbHNld2hlcmUgYW5k
IHVzaW5nIGR1bWIgYnVmZmVycyB3aXRoIGhpZ2hlcg0KPiB2YWx1ZXMgdGhhdCBnaXZlbiBoZXJl
IGlzIHF1ZXN0aW9uYWJsZS4gSW5zdGVhZCBvZiBvdXRyaWdodCByZXZlcnRpbmcgdGhpcywgbGV0
J3MNCj4gZmlyc3QgbG9vayB3aGF0IGFjdHVhbGx5IGJyb2tlLg0KPiANCj4gQmVzdCByZWdhcmRz
DQo+IFRob21hcw0KPiANCj4gPg0KPiA+IFBsZWFzZSBhbHNvIHJlYWQgWzFdIHdpdGggaXRzIHJl
Y2VudCB1cGRhdGVzLg0KPiA+DQo+ID4NCj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+DQo+ID4NCj4g
PiBbMV0NCj4gPiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9wcm9jZXNzL3NlY3VyaXR5LWJ1Z3Mu
aHRtbCN3aGF0LXF1YWxpZmllcy1hcy1hDQo+ID4gLXNlY3VyaXR5LWJ1Zw0KPiA+DQo+ID4NCj4g
Pj4NCj4gPj4gQlIsDQo+ID4+IEphbmkuDQo+ID4+DQo+ID4+DQo+ID4+PiBObyBtYXR0ZXIgd2hh
dCwgaXQncyBpbW1lZGlhdGVseSBzdXNwZWN0IGJlY2F1c2UgQUZBSUNUIGl0IHdhcyBub3QNCj4g
Pj4+IHBvc3RlZCBvbiB0aGUgbGlzdHMsIGFuZCB0aGUgY29tbWl0IGRvZXNuJ3QgaGF2ZSBhIExp
bms6IHRyYWlsZXINCj4gPj4+IHBvaW50aW5nIGF0IHRoZSBwYXRjaC4NCj4gPj4+DQo+ID4+PiBU
aGlzIGlzIG5vdCBob3cgd2UncmUgc3VwcG9zZWQgdG8gcm9sbC4gV2hhdCdzIGdvaW5nIG9uPw0K
PiA+Pj4NCj4gPj4+DQo+ID4+PiBCUiwNCj4gPj4+IEphbmkuDQo+IA0KPiAtLQ0KPiAtLQ0KPiBU
aG9tYXMgWmltbWVybWFubg0KPiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQo+IFNVU0UgU29m
dHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KPiBGcmFua2Vuc3RyLiAxNDYsIDkwNDYxIE7D
vHJuYmVyZywgR2VybWFueSwgd3d3LnN1c2UuY29tDQo+IEdGOiBKb2NoZW4gSmFzZXIsIEFuZHJl
dyBNY0RvbmFsZCwgV2VybmVyIEtub2JsaWNoLCAoSFJCIDM2ODA5LCBBRw0KPiBOw7xybmJlcmcp
DQo+IA0KDQo=
