Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uF40HBkeOmrq1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:48:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBA6B43F9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:48:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="BL5E/htB";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F53F10E956;
	Tue, 23 Jun 2026 05:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFC910E956;
 Tue, 23 Jun 2026 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782193686; x=1813729686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x8CW0QZuzGcMO2T5KSefKPK8nxFCKpIS7uNiBnV2toI=;
 b=BL5E/htBxUN7AphR6ogiqe6fkYEL5iYAWAXs6Z4ouWzLB+JzJTfZFrnS
 blp6b56e7+qL49eRqTakLKd+Iv5zBky3jPlR0Gg9XFjwfN98iakGGd17+
 I1oRtXNsAGCMAiMycwswZHinOvlBK17pzmwM1G+P2PXnJFDsZUTnYacqq
 OMUHTfDbcRLR3+vFMNXvb4/VTeDGk33bqMEUQFkkMmakJBleRb5yhEN/Y
 SxWB9WWco7I0qYDXHjfhv5W46tTdC1PwYEEb7ccuh/7Xe+lMzioX9yAVA
 obm7Leq+jJthrGYD0Gf7REuuaqgEODpX1OOzFArE2XZWNq/KDOECvxb/D A==;
X-CSE-ConnectionGUID: dVna35hCS5a+XYPTI2GL2g==
X-CSE-MsgGUID: pE91O1bFSGCf4vSZIG3Nag==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82934184"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82934184"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:48:05 -0700
X-CSE-ConnectionGUID: mKzmFe6YTL2sz2lgsBZL8g==
X-CSE-MsgGUID: UyLfTFKTT8GYcm4tkDXViQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:48:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:48:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:48:04 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:48:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rFciROU2UnMgpN0jKIKRdM8dDGyXSaybSr7J9z7T75zEzItFuxYVmM7Sm2s+IRTea0L5m1gwJW0yBGVAKd+L0CnPwcFoipGlXWN0waDVJ6g00kVk2SV4RJSRzLQMnVkvGdbuPXgabeqCvxSGhjequ5VGS7JCvMVWVFWThacdFxZnGOhnEO/px/RBhdci8l00RCcq5Xt//THLUWzHYTT9TGMYunBauXPOVY25On2QEnUShC2PPrNIa7eku4DdBCnrwPfi4k50+saKq8OtEmgX1MxSb5x3ezEr6mwQ2jBiDxLH+Kb/h61nQserPMdiYSiTKS4oEsY7rCcnbyF8bN3/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8CW0QZuzGcMO2T5KSefKPK8nxFCKpIS7uNiBnV2toI=;
 b=TFAxHoNcpvMlO7QlfCoxz3POLGggWTmx0zvDIKloH1F3QC5WWjIUFxw1UpmQJseuTDrk5YuO4iqSg2I5Ijsx/EEFVmvpQsvFfD9/1dCUEG4p92Bp04x70pdWBL7ZQwZDYHWlK6BVp8VyCKZHfOYN0eEvKnTOk9VFB4iSpSQmIcDWPACF9/j3CVCiB8pcMyChNoauqu1SalvR3kieOR5I5aceTbikSwiljpNjbpo2CXNyEbuM+sJAbeBG3T0r6p9j7d9Sd+d5YtKwzM/LfTM99gwVRfMlDcv9AI9TaCoNBDjua2+PLTui7/qG+hxnlZJhC7fLkM7qGNG1mkPfwavvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:48:02 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:48:02 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Topic: [PATCH v2] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Index: AQHc/wg6SpckmeWD0UW1fqc3NG7xc7ZLqZfQ
Date: Tue, 23 Jun 2026 05:48:01 +0000
Message-ID: <IA1PR11MB646760B05826CB3EE6901F59E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260618095210.853339-1-jouni.hogander@intel.com>
In-Reply-To: <20260618095210.853339-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CY5PR11MB6187:EE_
x-ms-office365-filtering-correlation-id: 24d14e8b-b3f9-473e-019f-08ded0eafd1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|38070700021|22082099003|18002099003|56012099006|11063799006|3023799007;
x-microsoft-antispam-message-info: C3Vav7s8ISAZ3HHglfkbblz4k3ZAo81j12iCNnSwJrgJsUUWRk0B4vtcAB2e0VrjOae73yC8zB+wlSW7ZJCIXm+tFK151VoRCM0w5WV3EwW9l71PmctP2KI9zSve3qmq/TvPgODkWXmEUsUU4IZTA7p3UIKG9Suv4J5ALfE60M4bXi7m9IvUEA+he+B57brUhYigchEOh//jtVYKRg1qAoOT9lspHfNNnXAD/rCz5juXkNJbS8ZoUuywNisPS4rYrzHfOscaGFiYI2GW7ts/prWcuJZsSwWDt2QPhlT3obzrHcdgpDSZUHXF8KZidGB/yzqYTMRZNB783yLe1DvjQRCz8Tc+fuVq1zmQmp03qKDQwih1mrzupChwtuO0EdOnohZqAOaC8w2s6bjRiDJRYmn2ognhBjx0MU3gVimdkYnVbY14VBBJC3/W9HMIpAvOKU5rHrMgAUViVDVW1663PLmIMAY0Jh8GG+YbaAEy0IxWD97TvmOabCyypH13ncQmg/hAHDiOMI/y6MW/tYw5pOlA9w5tE8q4oxk7xLZWjcBlZ+aESkcLLQmwJmlBAjPnOZL9wknSc4T7VL1zR8hXVqXlHKlEygRWOIHZLfpYgZ0muFyEbsiMH6qBN5XdA6zJd8TveqW8K4axiV6ibqOoxupj1F21tLbi/OHpahUCMQ8YuCvLFK5S+k+hhekOp04HLiEUVZJ1ZSi15vLAuPNKYUQGole0e8dHjoi3gNFj9Dw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkpzR0liQ2x3eEZQVTJDb2lFaEtlVUd2VTlRQy9XNW80NUg2NzkvRDVMNHFV?=
 =?utf-8?B?Z2VtRks5R3ovQ1AzNWlSN2lCcXl1ME5qOUVaVDJiMEdSUDZUNjdNNE1tMU1X?=
 =?utf-8?B?L1o0UHdFSHdPd2VLb2Zzamltc1lUbTFjK2Q5d01yUVdieHAxQW5pSTM1VENj?=
 =?utf-8?B?REJWL1kwbEZIQ2dia0dvVHBUYXZWMnk1ZXdjUG8ydWRrRVNVMGVSek5sRlhJ?=
 =?utf-8?B?cVh6NFk0YlFoS2haUGFEY0hNM0RhYzFiWjVhOXpBNEVpaytzeU9aYkR3NzJl?=
 =?utf-8?B?dFU1WDRYZkZrc3dRTHhEUzBteEhVU3ByblFMVnV4Z3NhSjRhSDFXYnNUL2t1?=
 =?utf-8?B?eVJXdG9GUVNNRUtRZ09VT2lYRXdsb01sUFhVQUZzU2RwTHlLdHprcnVpQVB1?=
 =?utf-8?B?WjI4R1hkWnZPM0NUVG03REJUdklYRGRvWkcxalhWK2d0R2luVUttOGpOUGsy?=
 =?utf-8?B?dEVJenVuaExEZUYxZ0lvQXpDUk44UExHVER1RWxsME0zQ3NrZFRIZ3IxSnds?=
 =?utf-8?B?cEhRdzJmUjhvamliR0FkR2UvWXNEcmllTWF2S0J4dTlTTG1lbTlCNCtTVVUx?=
 =?utf-8?B?MnJZMDBqNUxzTnUzbmJTM0Z2dWhNQUYzVkRWUUZJekI3WFNMQ3BOdWgzcWhn?=
 =?utf-8?B?Ny9YZEsxZ1ZhZkRvbTZPVndGSHhNVWxHbHB0dkVJUUhocG9tOGRUcHdRcVF0?=
 =?utf-8?B?TldtN3R6OXJjTmllZkNwZXprUHN4MlRzUVA5T0hIdDFoQ2c3dTZWM3ppQ1dF?=
 =?utf-8?B?Z2djQ05xbUdDN1k2SGZodXU5Titib1Y5N01wN0owVUhPTit0WU15MXZSVy9r?=
 =?utf-8?B?bTZRQ08yVEhqRVpneTVRbmFGeW1mMmdnVVY0cENuUEcwd3I0T0MrNkQvYnRq?=
 =?utf-8?B?Rm1MNEJMRVFVS0szYzNDbXZKN3Q1RU9jU0JyMHE3Vk0xWGNqSkRZaFNLSmxG?=
 =?utf-8?B?OXo3U3Z1aXNyZkxtaENxZmZ6ZThrR3U2UVl3aXRaWFBVR3h6djhHNGdUbjlW?=
 =?utf-8?B?ZElFMG1ubFRGVkExNDU3U0JqMWtTaVpJYVlialI5aTN4WEN6alU0dTZwTWw2?=
 =?utf-8?B?TXQvMllYb05OR3JyaitYTGhGRk9wU3AyQlF6YmRHWS8rRUFxVzNEeDUrc1Rr?=
 =?utf-8?B?NERsT2t6YUJnVE8ycC80MFBWTEMwNTg3b3g3bXVVYml3VmF3UHdXY2pHeEtP?=
 =?utf-8?B?Q1Q2a1kzVVdmc0s1dkE3OE5HRWpUSzRGNDdZbkNZVTJtUHlrQVBZSldOb09t?=
 =?utf-8?B?MVpsUnIzMEpTSXIvYXA1bjVsbmt0bVBFMFJ6N0VyZXp4a2RBSkpOZzFIVVdE?=
 =?utf-8?B?QTVXQVdIOWQ4bytaOE5jbTIwcU1VZUJHQkxzRDNmc2dEYlBDbFRiL29zYi9m?=
 =?utf-8?B?eExjTGJGQm9tWmJnOTlvaW1WeEpYb3ZSOFkvV2NEVTQ5YTFpTmdaTGFRSlRO?=
 =?utf-8?B?UExYdElkQVkyaUwxVGo2THNlaHBWbGpHbmorS3ltL0NqK284UnZldTJwZ3Bp?=
 =?utf-8?B?UFNMenZHcVpIUzZFQWppa3RvQk9TSHY3RDgzWHVXL0x1UVUzNWZCcFYxeFF0?=
 =?utf-8?B?blpUaFRERE96ZlN0UWw1SDlta2g3YW53UEdUczVORWNGV2hld1dQcmo1OHNo?=
 =?utf-8?B?OWxlNnRDMW9Da1pvRDB3VVVXVFQrbkVCK2Y2a0l1eHVtSjdEenpRVFhEZWgw?=
 =?utf-8?B?ZE9yMUMzeExhcEJkaEgrZGVucVh2RVFXS2lWYXVCTHFDYTFaYlEvYjNMUFJ3?=
 =?utf-8?B?VStGdDZFN2dUVDRXV291SFZOdXBqS1d0dmFtSTBVcWROOGRpakI3dTZrUUUr?=
 =?utf-8?B?QmRHZE1qTlZldTluMlNlbnZRNGVzbldCRTVTWmVUVTNmVlNpTTJJVHZGQVBQ?=
 =?utf-8?B?VFBrY1VzQnp2NFJnQkpaVXV0anpiTGJQUmovZUl0QlA0a3Y1enh5V3MzZ0FH?=
 =?utf-8?B?WTFzVVB3WHVTdVRHZ0dXanVGVXM4SEJ4NFo2SUZTeVhoNUNwTXNSa1Z6bzI4?=
 =?utf-8?B?SjhFR3pxcTUrSWZCWk5mR3BwY1d0a1dqbW80UXgxbUxoMDdrYndSL2pFSS92?=
 =?utf-8?B?NTRNT0tobkJxSmg5V0NZdFlpTkw2RHpNTWg4OVVIQi84bkhTYXBjWWdFWndP?=
 =?utf-8?B?SHUxbjBHOWoxVmZsZFFDNUJ5aldjcEFPa0tjTmw3Q1ZJeEJ6YTFOZ2xnZjh3?=
 =?utf-8?B?Q1hiWnFxalZzbTV6TFUwNW5zVCtYZjZtbkMzZHEyUDJzd2p4Z3puK3lvWFJB?=
 =?utf-8?B?TEgzaVlpTWJaU2dtUVlTaFZZV2xpcVUxZEFjbUNzUmlZaGhaaDFXUXRraXpu?=
 =?utf-8?Q?8gO7oQbPwfYCXyCrl1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MVIWl+tVF+occl/6qJ5FysMiXDTwhID5RSklo43xRXXDmvKezJTVPAKG25Q46YGveDEOCNBBm52XhMi7eMW9y5FV01OJM66RxJ1bA0tfwbKkqiDyPTmmeLc1hn8Z7nK2AFdqHwlHsj0PZz36F2K6b75qOoCfn3+7OuXlOnY8ZKHjQDOr9R80cXR75egBYZ6y3pDgUZLm0l/lbHhsDFZV4TixwJbDgKVGRSa8FpPI0lt8PbOwNzM8gTSUMpNQbhEEk0uZQhX9k1qQWDi8ztRCO4wm6cuJLbbtywv1mU7UhbhOugFiMtiOsUUyfxsbk6FYNJsXzE3r6+A7GVJx3SzSAw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24d14e8b-b3f9-473e-019f-08ded0eafd1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:48:02.0215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BrGchq2SFgUFoujAyB6lObf6P3x6y9kJ1pewLglXmxJ6dQG/45FOuG3Okfpu1NlKo1CD7BXkozx2Y25krs8RQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45DBA6B43F9

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMTgsIDIwMjYgMzoyMiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNS9wc3I6IEZvcmNlIGZhc3RzZXQgb24g
ZGVidWdmcyB3cml0ZSBmb3IgZWFjaA0KPiBjb25uZWN0b3Igc3VwcG9ydGluZyBQU1INCj4gDQo+
IEN1cnJlbnRseSBpbnRlbF9wc3JfZmFzdF9zZXRfZm9yY2UgaXMgZm9yY2luZyBmYXN0c2V0IG9u
bHkgZm9yIGVEUCBjb25uZWN0b3JzLg0KPiBQYW5lbCBSZXBsYXkgaXMgc3VwcG9ydGVkIG9uIERQ
IGFzIHdlbGwgYW5kIHdyaXRpbmcgaTkxNV9lZHBfcHNyX2RlYnVnIGlzDQo+IHNldHRpbmcgZGVi
dWcgcGFyYW1ldGVycyBmb3IgZWFjaCBEUCB0cmFuc2NvZGVyIChzdHJ1Y3QgaW50ZWxfZHA6cHNy
OmRlYnVnKS4NCj4gRm9yY2UgZmFzdHNldCBmb3IgZWFjaCBjb25uZWN0b3Igc3VwcG9ydGluZyBQ
U1Igb3IgUGFuZWwgUmVwbGF5LiBXaGlsZQ0KPiBtb2RpZnlpbmcgdGhlIGNvZGUgYWxzbyBzd2l0
Y2ggdG8gZm9yX2VhY2hfaW50ZWxfY29ubmVjdG9yX2l0ZXIuDQo+IA0KPiB2MjoNCj4gICAtIHVz
ZSBmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcg0KPiAgIC0gdXBkYXRlIGFuZCBpbXByb3Zl
IGNvbW1pdCBtZXNzYWdlDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgOSArKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTExYWZiOWNiMjRlMy4uNjIyZWRmYjZhN2Zi
MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0zMzc1LDcgKzMzNzUsNyBAQCBzdGF0aWMgaW50IGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKHN0
cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9y
X2xpc3RfaXRlciBjb25uX2l0ZXI7DQo+ICAJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4
IGN0eDsNCj4gIAlzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlOw0KPiAtCXN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uOw0KPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
cjsNCj4gIAlpbnQgZXJyID0gMDsNCj4gDQo+ICAJc3RhdGUgPSBkcm1fYXRvbWljX2NvbW1pdF9h
bGxvYyhkaXNwbGF5LT5kcm0pOw0KPiBAQCAtMzM4OSwxNCArMzM4OSwxNSBAQCBzdGF0aWMgaW50
IGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KQ0KPiANCj4gIHJldHJ5Og0KPiAgCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKGRpc3Bs
YXktPmRybSwgJmNvbm5faXRlcik7DQo+IC0JZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVyKGNv
bm4sICZjb25uX2l0ZXIpIHsNCj4gKwlmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcihjb25u
ZWN0b3IsICZjb25uX2l0ZXIpIHsNCj4gIAkJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNv
bm5fc3RhdGU7DQo+ICAJCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gDQo+
IC0JCWlmIChjb25uLT5jb25uZWN0b3JfdHlwZSAhPSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKQ0K
PiArCQlpZiAoIWNvbm5lY3Rvci0+ZHAucHNyX2NhcHMuc3VwcG9ydCAmJg0KPiArCQkgICAgIWNv
bm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuc3VwcG9ydCkNCj4gIAkJCWNvbnRpbnVlOw0K
PiANCj4gLQkJY29ubl9zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2Nvbm5lY3Rvcl9zdGF0ZShzdGF0
ZSwgY29ubik7DQo+ICsJCWNvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3Rh
dGUoc3RhdGUsDQo+ICZjb25uZWN0b3ItPmJhc2UpOw0KPiAgCQlpZiAoSVNfRVJSKGNvbm5fc3Rh
dGUpKSB7DQo+ICAJCQllcnIgPSBQVFJfRVJSKGNvbm5fc3RhdGUpOw0KPiAgCQkJYnJlYWs7DQo+
IC0tDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5j
b20+DQoNCj4gMi40My4wDQoNCg==
