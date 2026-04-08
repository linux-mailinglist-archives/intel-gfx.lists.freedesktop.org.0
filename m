Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2uZ8J4HV1Wnl+QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 06:11:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2D13B6B6A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 06:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D90510E0A1;
	Wed,  8 Apr 2026 04:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T38LxBG2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E848A10E142;
 Wed,  8 Apr 2026 04:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775621501; x=1807157501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q5k6sYVlBJjACgVY7UEn3CPZo2AuKcXI1K5SgS/ZNeE=;
 b=T38LxBG2Mxtrm2UgSGJ13m/biVGi8fAlSOHpTkhrU76M38yG93Sxbgya
 Ilwi4TzQlZH2VQjjUgFktOAsFH7G90OJY+hdDp3rl/gdiqdwo89iqtmAy
 RMNxhmGTz2r8ANT9QxKBE0Y9qTcN/hNvFyC5U6P7UFdM8WXR50O7zi50M
 OQbyO9O5vQAA3KtftnCCEJ18WBTh5K0H+GaYA6Bnuol3WXLb/5I7pMGY9
 a0aoMg0lmvxd3I5fNtxONDFLyl28fpAPEehxft4TK5B5UPlSNrtqYtglF
 C8F+y4h3itFOkmJNIAsFJy9SjFxmzGikYPlCrOAZbhKq5jkOw5Z5z67ph g==;
X-CSE-ConnectionGUID: KBWPwGftR4uGIgWIW4XFyw==
X-CSE-MsgGUID: UESHssx9QUq5R+Vyxo6tXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="88048794"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="88048794"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 21:11:41 -0700
X-CSE-ConnectionGUID: fpy4GBWeQbSO72HUNIgB1g==
X-CSE-MsgGUID: e/jhpnqIT+uS69YwQDoPbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="233312973"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 21:11:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 21:11:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 21:11:39 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 21:11:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SnWTq+vlShNtz1kRYBnu9lgGSmtswxu8c36S5vMzJvVW69evgyS2nI9TcHnGz8GGex0dLV576ywolc2W+1uu7r77kvAAYOOhXFAIr8T+HTLVBruzlXo5akIW+vFO1UOMrN8aSC+jci5/yqPK1FFFqijoQ0bzzHmIxr31tetj0wAy80AGGDVSsfwQSYnDfJSVGlptCmBuXrxBvFMN7fwsPVGnKsASjm5KQz/Zg77baJo4O6iQBrBKW3xjmzRYpFivfCNu+EOw78pn9pp4kHtLrgnucNptAYym4oTWErfYLbJ5MapGUwDQ1US1EoU8aNTIGSvf3cssgwxDOUyFPekR6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5k6sYVlBJjACgVY7UEn3CPZo2AuKcXI1K5SgS/ZNeE=;
 b=ib0Nbrb8M7xAywCHWtRkbymeTHXriGCPWJ0kfpD5QwOcAxZwSrqmurGciz/LiVD+T0lspdtti/IJwNfaRkq/+AVANIZ+/U0Ab/6fkK8HcZtvuFBPikVficBmUnyzS45wGodaVtYMoZNmL+UjqixqLbT50HPUfHxURYJR9pZpLjXBWn7RkJHY1Mx+dK8LhuqzFYkzVQ/6dQUhb4Pb9mwtAsCyt1Bzp0vn4t28/0mGxNHcdDrj/cNCykF5g4jg19DHwmROnlW8DnCL532ADwv8Dl449pksB/EId9Ij0s7B+PH9VJ+0/T9/wYoQkJns2vpSzQy2AliyvqDZunp6QA+4Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH3PPFF1A08ABF9.namprd11.prod.outlook.com
 (2603:10b6:518:1::d5f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Wed, 8 Apr
 2026 04:11:35 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 04:11:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "S, Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper
 to get ggtt address
Thread-Topic: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper
 to get ggtt address
Thread-Index: AQHcvEe/GdW8f8V4FUGXlkJbIHhvHrXTWYcAgAFI3sA=
Date: Wed, 8 Apr 2026 04:11:34 +0000
Message-ID: <DM3PPF208195D8D06B003E9B00413A78E93E35BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-20-suraj.kandpal@intel.com>
 <6322edeaa307d98e1463a0bc07d687edbdffde71@intel.com>
In-Reply-To: <6322edeaa307d98e1463a0bc07d687edbdffde71@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH3PPFF1A08ABF9:EE_
x-ms-office365-filtering-correlation-id: 64cfab75-dd5f-48b2-80f0-08de9524ec47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: SMDgd0sHpsJOWFMqP1Z6LgfY5CaS5ObcnyzlZ/B2vx8Qyq/mTdLYg9Vo0AxYKt3bY1+OxSFF98g22I7sgHQvbAo2UvJ3AFgix7inbFNjr+JCJoa51FJ28fe7aDkXO6r/HRtwzcpLBPIhX+fRHb28Vfc9TFdwkunr2c2wYGVCvrLr+PjrvTl66q696Ss0RMK3zhpIFXOgqgJTbSAGTYuej/eu49H92tnbVb4eGyuqhfERzpjgiANd06qlt+y9m0lSTKo2hgvahiDrGYsWv/v4L066OroSWMt1GlewF6QJdmsE1GpCBu9E4kI31n7+yMQSsQrt5NmY2Eox9kI9E/H4gliZjE1H3zT8Y38mASSnlhT5MwkgncUHig9PEn1VaBRtz7O80x82AZ2A/IMN+Fdgln+SeE40u0+A47dRRLHZo3MEr0TsyOm2BjTf5Uk6whLBOcrqFeycc3gn43BkXUP9IvkAJUboB/6tgGeiRxdjeCNCmy0GAlKeKf1nV9U44hkQkvDv4k+K+1DPlYv1LRN7B7LYXbcuj2EU5TP5+FfAS80P5UfSBkxn4ZYKG4Z2aLjLyIuc9f11y4jVBHuyq5SjlvIUPjobsMCwCHZPdBKsoluxXXufEGFEreeAeZT0GFQEia5F2nCwpl9zoRF9aE9VW8WLPNlcmvBae146DaXCm4F/mpReoPZw5nCsZU9dgzvCDJSZVg5NsKzxmZjnDOv2TQxujuiEsERLp9RgRLBy/1Rl+0KEdRplD14sYzLb+vF2K4UHyg6gcHR/3TP0qk/dypgWqZlpBEC29b0j/uhJMls=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enNKNjYwV2FlL2Y1V3M2L3NXMG1vZkxyZXAxUEdPRkdhRUFwd29xZ0hlMU92?=
 =?utf-8?B?czFScjBGN1A0RUVabVVuK2liTE5PMXZpMEJpV2lVWHI0TDR2RWp2dnJUL1ox?=
 =?utf-8?B?dEduZHIzNlZPZUdmeEFBN1pjaEpMTmY3K1hZQTl2YlRYaUp3ekoxWUJ2WTNj?=
 =?utf-8?B?Qk5Jbm10Z0o4Sk1aaWtmVlJyM1hzR2RnNDA5TzJ3SHRuMjhUT216VzVMRFNs?=
 =?utf-8?B?ZDl6VUpQUDBWMEw1am56OUlIeXhSOHFGWFVkWk5XRXhiSjhkSjFCRE83cWw0?=
 =?utf-8?B?c2JFNkZ5cWdhMDE5emVKeDFXMXNQR1dueWdwY0w4Vi9VRlZZazNFVXNNUTdN?=
 =?utf-8?B?WnVRMlQrTVNhY2FKdS90cWY2U0pmai9uYXk0VzBBdTdBT0M4S25wMVlGTEJC?=
 =?utf-8?B?aU5VTXRnbHF4NWhxZTE0bUFyV0loamhHTVpTVFhOR1Jic2IyemRSb0VDSDJP?=
 =?utf-8?B?Znpqd05OUXJoZTBzbEdjNTZJb3ZuWFowRm80ZHdycVo3aVJoTU9hNUJzTEZG?=
 =?utf-8?B?SG84cXEvM2xMSWFoT1UxRXV6YXdZWUpXcmowOGliMU53a2VZdHM4ck9kVk5o?=
 =?utf-8?B?UmFsem5qWXRsMDFUYnYwWktPc1U0dHJvYi9NTmJoVG5ZTUVxc2FwUzN0Q1p0?=
 =?utf-8?B?elNiTkkrVUprd2hDWmR3dC9sWTNGNjhVaUFVd3NqUlVFSU1aa3BYcThpR25C?=
 =?utf-8?B?ZUNOOHhmV3BzTVNST0hxUXErU2cvYW5YMVkzd081VU4yZ3NFVm9QZjFlMzlT?=
 =?utf-8?B?VTR3ZWUrbU05QzZldzdHdm16T3lpLzZxSU5ZdTdFUTZSanFWdkFUZ1FFcWt1?=
 =?utf-8?B?VVNOYXdLNS9pdUhFZHZZNzE4Vys1TmxZY1ZmbDBVRmRFcGZRUHhZYzdVMkMw?=
 =?utf-8?B?Z3B3bVphK2grbWdUYVlMK1RqRTNZMnF5Q0NyYUZ3N2JRbTJwa25vdks5ZGhw?=
 =?utf-8?B?dXp3Y3FwNkNGZDNkWHJJdVlEQ2pQOU15SzkzdXphOXhOS0R1K2F2ZlFKdDl5?=
 =?utf-8?B?d01MZEViaWlaVEozbmFiV3RUejdrV2tOYktra2ZrRXdjM0RGTUdOMVRDMlQx?=
 =?utf-8?B?SUJrbWJoOUxPV3poYWVpMWEwazQrSTlaR2ZVZkl6UjBrZGZFejJsSGhpQ2Vy?=
 =?utf-8?B?RFlheHBCQnlpU0RYbUNOdjJ0VFZ1dE9pOWVqbm5RZ0xIc2lFMDBBdXZXajBv?=
 =?utf-8?B?bDBwS243eHc0TGdzSzN3T1BBTFAwdSs4Ty9DK0VERWpld3pEeDBRMElDZ1B1?=
 =?utf-8?B?M2lZdTR3VXlxRTUvRExXTWJScEpIWENxUUUzOGdOTmMxTzhWbVBBdEQxZmRp?=
 =?utf-8?B?NStBL05nV3pUQjR5dXZLbUZlemRlc3BCeWZRNmdJZHQ0cHp1U1lIbFpFdWZp?=
 =?utf-8?B?czVZTy9jWUhKTzY5WnJmVG0vOXAwRmdQZjFuL21pdXVqQUNxckRpWWpsMFNH?=
 =?utf-8?B?Zzd3T0M2bytQRmpPY0R1M29CUGc3MisrRE1VSFlqMkFpVkhpNzlPNDk2dC83?=
 =?utf-8?B?bVJ5Z1FLZVhNQXVxMWl5Q25kdi85OGs0R3lFZmhPM01ScnFNV3JwK0trR2l4?=
 =?utf-8?B?Z2NVaEU5QzU5ZGJXVDdPakZGQUpSRklSczdXWlBLVHdqNkNHTFNWMDUzR0xl?=
 =?utf-8?B?UVNsMVFDNlU4VXdGaDNhb3ZSbFZ2YnB5TUh4QzVKQ3BKaW9CYVRxU1B0ZFFu?=
 =?utf-8?B?d3EweG5nTEQvTkE4dUVFS0tpTUJ1TFNFdmpZR3l5ak9xUlZDSFNzUnlNM0Nq?=
 =?utf-8?B?Wml5cVYrL0JSUGs0bTdsVTdhWUQydDdtVzFQZ0dhb2poUGJwMlJycEltK3hF?=
 =?utf-8?B?aU1ZeHRsQkd3UFJLVTl5bEYvZjBwZ1FTZ3MwMEpGWHZSd1ZRenhUZkZzU1J2?=
 =?utf-8?B?YVNkblpPV0NvVEEyZ0kzSTA5R2ZvOURTVHlIM2thYU9idzU4YkVsRERyVUNM?=
 =?utf-8?B?cTNoQndkYU53SlFYVGxUZ1RvU1Z3UXdFN1d2amFHS24wSW9Vb1JGcE5VVlZs?=
 =?utf-8?B?R0Y5b2NocDFsN3FlTjlFZ2pvdUx2QWRvOHZqZWxES3VaQld0SjNHVmhUemFY?=
 =?utf-8?B?dWJHL1dMVnZHZ0p2ZUhuTXpjeklIUmhJWUZLeWtsT1MrWTFPRWwvenphWmcz?=
 =?utf-8?B?bStnOE1SRTRVbHNaRlNPQW5MUXZCV3RYTDdTSkdSc3RTWTFtRWdVdUNreXQw?=
 =?utf-8?B?Q2RwdCtubU1HaVF4SlQxb1JnaTMwSnJFeE11RU5OM1ovYmNFVzJuYXV0bFJB?=
 =?utf-8?B?dGxZSE1vVGdBYUF3SW1nZjdVcFdYNGFvNXVoTE53enlvRzVhUzl1bnZoanps?=
 =?utf-8?B?b3oxUis4TEN4RFpNdGdUOHIyWG1vaXF2RG9FT3AxNVFHcDlSMEljUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: r9rsm0hjBnH47UApiE9nD7WdYEUoPRKdYe7BdIjyWiKszdH3znTCejoUmcmfpaf2WO2a2qCrWMhdhknsDaAUsGLc4gJ0e5L0yjWfB349DNGEEEOxf92GvYCAKR05JU8pyaKauYcI5xHPNHUsw5E0Sct2we7igVp58GMUS7ts7DkLqaSUAOD9V+99w5MsR2sRYZr0stiGbA88oUV13MfEwhl8E4F/18cN1SIqnvaSyZcbfOb/p67Pq15al8VmHgsYT4Mk2jUv5+OHFqm/JzbQt8pgGgTqywx+37zvYsBfy08Lqhc7zlWG0gZTaDIOC50jOXvrxTIqFnVSuiKx+hKfFQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64cfab75-dd5f-48b2-80f0-08de9524ec47
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 04:11:34.8326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RGlANxDtpobW3kva8BmN0gg0Jce3jBcxlm/s6obgR2uloJDtgTlD+fdqOLg6lNqz2p82A1I2vLHLbT6+8oXcPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFF1A08ABF9
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CA2D13B6B6A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgNywgMjAy
NiAyOjAyIFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IFMsIFNvd21peWEgPHNvd21peWEuc0BpbnRlbC5jb20+OyBTaGFu
a2FyLCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT47IFNoYXJtYSwgU3dhdGkyIDxzd2F0
aTIuc2hhcm1hQGludGVsLmNvbT47IEJvcmFoLA0KPiBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55
YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUg0KPiA8YXJ1bi5yLm11cnRo
eUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMTkvMjZdIGRybS97aTkxNS94ZX0vd3JpdGViYWNrOiBB
ZGQgYSB3cml0ZWJhY2sgaGVscGVyDQo+IHRvIGdldCBnZ3R0IGFkZHJlc3MNCj4gDQo+IE9uIFdl
ZCwgMjUgTWFyIDIwMjYsIFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPiB3
cm90ZToNCj4gPiBXZSBuZWVkIHRoZSBnZ3R0IGFkZHJlc3Mgb2Zmc2V0IHRvIHdyaXRlIGluIHRo
ZSBXRF9TVVJGIHJlZ2lzdGVyLg0KPiA+IFdpdGggaTkxNV92bWEgYmVpbmcgZGVmaW5lZCBpbiB4
ZSBhbmQgaTkxNSBhbmQgYm90aCBoYXZpbmcgZGlmZmVyZW50DQo+ID4gd2F5cyB0byBleHRyYWN0
IHRoZSBhZGRyZXNzIHRoaXMgcG9zZXMgYW4gaXNzdWUuDQo+ID4gQWRkIGEgaGVscGVyIHNvIHRo
YXQgY29ycmVjdCBmdW5jdGlvbiBpcyBjYWxsZWQgdG8gZXh0cmFjdCBhZGRyZXNzDQo+ID4gZGVw
ZW5kaW5nIG9uIHhlL2k5MTUgZHJpdmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWog
S2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsNCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2suYyAgICAgIHwgIDMg
KystDQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2tfaGVscGVy
LmMgICB8IDEyICsrKysrKysrKysrKw0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfd3JpdGViYWNrX2hlbHBlci5oICAgfCAgOCArKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0veGUvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArKy0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfd3JpdGViYWNrX2hlbHBlci5jICAgIHwgMTMgKysr
KysrKysrKysrKw0KPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQN
Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIu
aA0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVf
d3JpdGViYWNrX2hlbHBlci5jDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGluZGV4
IDFlOTE0MGU3NzEzYy4uYTEwMjNkZTcyOGU1DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQ0KPiA+IEBAIC0zMTYsNiArMzE2LDcgQEAgaTkxNS15ICs9IFwNCj4gPiAgCWRpc3Bs
YXkvaW50ZWxfdmdhLm8gXA0KPiA+ICAJZGlzcGxheS9pbnRlbF93bS5vIFwNCj4gPiAgCWRpc3Bs
YXkvaW50ZWxfd3JpdGViYWNrLm8gXA0KPiA+ICsJZGlzcGxheS9pbnRlbF93cml0ZWJhY2tfaGVs
cGVyLm8gXA0KPiA+ICAJZGlzcGxheS9za2xfcHJlZmlsbC5vIFwNCj4gPiAgCWRpc3BsYXkvc2ts
X3NjYWxlci5vIFwNCj4gPiAgCWRpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5vIFwNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2su
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2suYw0K
PiA+IGluZGV4IGM3OWU3MzMwYjgxYy4uZDNjMzcxNmEyOGE5IDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd3JpdGViYWNrLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFjay5jDQo+ID4gQEAgLTEs
NiArMSw2IEBADQo+ID4gIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gPiAgLyoN
Cj4gPiAtICogQ29weXJpZ2h0IMKpIDIwMjUgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiArICogQ29w
eXJpZ2h0IMKpIDIwMjYgSW50ZWwgQ29ycG9yYXRpb24NCj4gDQo+IFlvdSBuZWVkIHRvIHNldCB0
aGlzIG9uY2UsIGNvcnJlY3RseSwgaW5zdGVhZCBvZiBjaGFuZ2luZyBtaWQtc2VyaWVzLg0KPiAN
Cg0KWWVzIEkgZW5kZWQgdXAgc2VlaW5nIHRoaXMgZHVyaW5nIHJlYmFzZSBhbmQgZml4ZWQgSXQg
aGVyZSAuIFRoZSBzZXJpZXMgaGFzIGp1c3Qgc2VlbiB0aGlzIHllYXIgY2hhbmdlIGZyb20gMjAy
MiB0byAyMDI1IPCfmIMNCldpbGwgZml4IGl0IGluIHRoZSBuZXh0IHJldmlzaW9uLg0KDQoNCj4g
PiAgICovDQo+ID4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPiBAQCAtMjUsNiAr
MjUsNyBAQA0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV91dGlscy5oIg0KPiA+ICAjaW5j
bHVkZSAiaW50ZWxfZmJfcGluLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF93cml0ZWJhY2suaCIN
Cj4gPiArI2luY2x1ZGUgImludGVsX3dyaXRlYmFja19oZWxwZXIuaCINCj4gPiAgI2luY2x1ZGUg
ImludGVsX3dyaXRlYmFja19yZWcuaCINCj4gPg0KPiA+ICBzdHJ1Y3QgaW50ZWxfd3JpdGViYWNr
X2Nvbm5lY3RvciB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfd3JpdGViYWNrX2hlbHBlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5mNDgzZWQ2ZmZjNmINCj4gPiAtLS0gL2Rldi9udWxs
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2tf
aGVscGVyLmMNCj4gPiBAQCAtMCwwICsxLDEyIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBNSVQNCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMjYgSW50ZWwgQ29y
cG9yYXRpb24gICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiaTkxNV92bWEuaCINCj4gPiArI2lu
Y2x1ZGUgImludGVsX3dyaXRlYmFja19oZWxwZXIuaCINCj4gPiArDQo+ID4gK3UzMiBpbnRlbF9n
ZXRfZ2d0dF9hZGRyKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKSB7DQo+ID4gKwlyZXR1cm4gaTkxNV9n
Z3R0X29mZnNldCh2bWEpOw0KPiA+ICt9DQo+IA0KPiBQbGVhc2UgbGV0J3Mgbm90IGFkZCBtb3Jl
IHN0dWZmIHRoYXQgd2UgbmVlZCB0byBmaXggdXAgbGF0ZXIuIFRoaXMgaXMgY291bnRlci0NCj4g
cHJvZHVjdGl2ZSB0byBzZXBhcmF0aW5nIGRpc3BsYXkgZnJvbSBpOTE1IGFuZCB4ZS4NCg0KU3Vy
ZSB3aWxsIHVwZGF0ZSB0aGUgY29kZSBhbmQgbWFrZSBpdCBjbGVhbmVyDQoNClJlZ2FyZHMsDQpT
dXJhaiBLYW5kcGFsDQoNCj4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfd3JpdGViYWNrX2hlbHBlci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuaA0KPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNDZmNDM3YzM4NzUNCj4gPiAtLS0gL2Rl
di9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0
ZWJhY2tfaGVscGVyLmgNCj4gPiBAQCAtMCwwICsxLDggQEANCj4gPiArLyogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAyNiBJ
bnRlbCBDb3Jwb3JhdGlvbiAgKi8NCj4gPiArDQo+ID4gK3N0cnVjdCBpOTE1X3ZtYTsNCj4gPiAr
DQo+ID4gK3UzMiBpbnRlbF9nZXRfZ2d0dF9hZGRyKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKTsNCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlIGIvZHJpdmVycy9ncHUv
ZHJtL3hlL01ha2VmaWxlDQo+ID4gaW5kZXggMmU0NTYwNzA4OTVhLi40NDgzZTk3MTUzYmEgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+ID4gQEAgLTIyNCw3ICsyMjQsOCBAQCB4ZS0kKENP
TkZJR19EUk1fWEVfRElTUExBWSkgKz0gXA0KPiA+ICAJZGlzcGxheS94ZV9pbml0aWFsX3BsYW5l
Lm8gXA0KPiA+ICAJZGlzcGxheS94ZV9wYW5pYy5vIFwNCj4gPiAgCWRpc3BsYXkveGVfc3RvbGVu
Lm8gXA0KPiA+IC0JZGlzcGxheS94ZV90ZGYubw0KPiA+ICsJZGlzcGxheS94ZV90ZGYubyBcDQo+
ID4gKwlkaXNwbGF5L3hlX3dyaXRlYmFja19oZWxwZXIubw0KPiA+DQo+ID4gICMgRGlzcGxheSBj
b2RlIHNoYXJlZCB3aXRoIGk5MTUNCj4gPiAgeGUtJChDT05GSUdfRFJNX1hFX0RJU1BMQVkpICs9
IFwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfd3JpdGVi
YWNrX2hlbHBlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV93cml0ZWJh
Y2tfaGVscGVyLmMNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uNTg5ODk4NGIxMjljDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS94ZS9kaXNwbGF5L3hlX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+IEBAIC0wLDAgKzEs
MTMgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0KPiA+ICsvKg0KPiA+
ICsgKiBDb3B5cmlnaHQgwqkgMjAyNiBJbnRlbCBDb3Jwb3JhdGlvbiAgKi8NCj4gPiArDQo+ID4g
KyNpbmNsdWRlICJ4ZV9nZ3R0LmgiDQo+ID4gKyNpbmNsdWRlICJ4ZV9kaXNwbGF5X3ZtYS5oIg0K
PiA+ICsjaW5jbHVkZSAiaW50ZWxfd3JpdGViYWNrX2hlbHBlci5oIg0KPiA+ICsNCj4gPiArdTMy
IGludGVsX2dldF9nZ3R0X2FkZHIoc3RydWN0IGk5MTVfdm1hICp2bWEpIHsNCj4gPiArCXJldHVy
biBsb3dlcl8zMl9iaXRzKHhlX2dndHRfbm9kZV9hZGRyKHZtYS0+bm9kZSkpOw0KPiA+ICt9DQo+
IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
