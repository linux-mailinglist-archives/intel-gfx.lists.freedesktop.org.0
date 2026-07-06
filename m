Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c1hVCFBqS2ooRAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:41:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BB770E379
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:41:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FULVTTIC;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A04210E815;
	Mon,  6 Jul 2026 08:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4E010E815;
 Mon,  6 Jul 2026 08:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783327309; x=1814863309;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jVWQypjBPwzM4CkgGUzMqFW2o01dUC9kce6CVgbLaDw=;
 b=FULVTTICdeBuUwFuc64E9/+LtxoenaTGn4K0YIQD+V+32JXsPoDv/zgT
 PtyJVE5HZnW+P5FW7fnu5lHRwwLZdPgJpTQxbtdyKG8UH2cpdCmh79MZ1
 1gLuZVyq5ye3my1aTRDTysIInbRXofBT5Rn/ATSMdvSlg1s6qQ4UbhC+U
 pJYw1fjuFKDlGcF1Dx10OK9P5Hx8yB7g4Lx5i/tUae2ORlbS1C49gR9nl
 TB9sDdCn+vl9tmCvKZ/69H1P3X1pOrsJ1nq3+lo/sO88Fgr1KkMup6r3r
 hXu0tOqAfjuCPIFjbFIMxl1Hjinv6n7gzbbyOTG0m5/nLbcr3/Q3TTGdE w==;
X-CSE-ConnectionGUID: BbaFP685Q0Wai8hkvVtVYQ==
X-CSE-MsgGUID: 2FzNCLsWT7iAWLvFKTJrHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95464237"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95464237"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:41:48 -0700
X-CSE-ConnectionGUID: 0HmU5CcQSne9KzzrDK873w==
X-CSE-MsgGUID: /92so7GUTuCXsl8Yu35sYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="254300052"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:41:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:41:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:41:48 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:41:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zWyHw1AvJpjJ0YF900t3TUj92sZURsSAUP+O0ZCevYyLZgrP4QJtpk4NIN372d4WI7b6aFWcoaCZWZ2wHQ6TY2mU7f71pJ07zyE1rTxuJbcKJHHranSNA3X8GsiprJ+WMMOZMzgLzI6HHMaqRWGbPFHsWLLUpQLSo18NtTjL7YURrzVrT5qAtyeWxHxORFVnJdSYnik6ULPdJFAOG1fTmoHz47GxxpENddrNFP4vsL3+XyqVQcomSA8vVvfxLNFpDR9TSOEAgGzoNWy7JruhMvGsqcVU+BrNLIhdzvKEvel5Vp21BZMoeTztiTbJ3YbsQ8+up6vfIpxOb6owmyVbPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVWQypjBPwzM4CkgGUzMqFW2o01dUC9kce6CVgbLaDw=;
 b=I90m5w0ILxxiD1eVzSEx7zCF/IBSR1tSnZZrZeQexe4EVy3JJYnFRCnhhiRHRubbfz9qU0KD2FfMveHugFR8UoXBarKT1xWNx3ZMB5Pn9IjMJ0UgfrZKhKjmqTeHeATERUmRM/Wac1LfJZMnY2Uy1nk+YmE6yjBYffJCY3JWLand7tKRj1q8kxuC3a9BYr+lcDpyrtzhqQrSiaEYaZ4zpMy1xeIsldFi9beCZas/dNA30uy1t89ddVADT6EteKZVCsQcFqeO356sEerPK8+Fvfqlsj45HldbowAFXwpsHlnW4qyAy6YEsTt0G2ZhQhhVg1vDQO5H3WwH2tlTg5W7cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Mon, 6 Jul
 2026 08:41:40 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 08:41:40 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/6] drm/i915/cursor: Sync joiner secondary cursor state
Thread-Topic: [PATCH 4/6] drm/i915/cursor: Sync joiner secondary cursor state
Thread-Index: AQHc9xBZ2crKOLBTuky9vAnCS+7A/rZZAC4AgAdYCXA=
Date: Mon, 6 Jul 2026 08:41:40 +0000
Message-ID: <IA1PR11MB646756A368AF99B8AAD1E96FE3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-5-nemesa.garg@intel.com>
 <102518db-f3ed-43fd-9726-5865e32265a6@intel.com>
In-Reply-To: <102518db-f3ed-43fd-9726-5865e32265a6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: c231578c-308b-4e94-8b35-08dedb3a6647
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|56012099006|18002099003|5023799004|11063799006|4143699003|22082099003;
x-microsoft-antispam-message-info: afd9SFRQeWm4p/4MDbdZZtYfEEwipYW3ePa6R7RFNSbHHzKSWgpsiGon3kElK6bQpn0Bi7ors3Qc+0bacOyr7fwSHGUHafk1hgzdTaTl12RS1MWnaA+YN9YD75xv5x6MNOftmJ3X3BB8mre+q0qEu1HKkq7yAWG3GwsqIf+iSUoMsa8yOsXwaFwmggfljc2u7vaFSvrxnJeLHu+6cIfICkNIOpgSgZD+5s7ffOU8/2BwlSk1M4jcpLRQxJmqAEh0/SW6rYuAnOAeqsdSsIIF65g88k5kXHIpuHixkPwCaXnis12rSi+M0qM8A5wBlWRsfUL2WmDS0dUzcgfYMuYihTPvTwypY8ykvltx1fciPvT++1bXEuJEZczRmaixIVjI4uwjS5FYxP7IesiSapabVxMXZoaOxI1Yxmgrv27ob5OZlFPd0wsa5N/HtI7dkQyk+eJyROB7A+WKSCl5JjkugX6oZxTH4CEaZjkA+Zn6KqCrasJ28jUXHCCcN2m0D5oWAxQa4n3itqtGzGRQSbIevfZqspeunyBGNERn+gsMd8xZuE8yIIhjTkLYSqYkG8uEmpXWNth+990ETAelheGTwXGFKtAxLzeNV0EKhTAxvb9clK3k4A9anhvPz2wlTz+6jACr9LCE2Nc2g2q9xfCo2L6uTwFf6r6CPA+W+yIFNsz2ay5lJwYa/070Z4W85YQ0qF4GNFxJlRju+slnrY6V5qhh/jn4RTJiWHAfjaozsho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(56012099006)(18002099003)(5023799004)(11063799006)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aThWVWtOSWU0N0k3cC9pbTNlU1V4UWo2MHNhZG1tWTBrWGliQ0Vya1lIWjl4?=
 =?utf-8?B?eDRpSWZtbncrRmR4cVhMbE0vS01nSkpMUzBVRGdoYXA1MGlGU2hNT2IxeVdS?=
 =?utf-8?B?N3V1U0lVTTNEcTJWMlZCWkpoOXBSTVFGcnQ1d1VQa0JlT2NTZTFDcEd4c25W?=
 =?utf-8?B?QUVxMXB1bUxURS9PRG5ubnRnWUNyektEa3VoRE0zVVQ2Mkg5OVdaVVZlZDkv?=
 =?utf-8?B?NGRsemZsNlFkc0lOQ2lrUG1yaDkrT0pBQWVJSnlYVlhwSnhFRFF5M0k0YjJ6?=
 =?utf-8?B?c3FwWGxkanJUK2hlTUpKVFhsQ0JSeGFUMGFLWW1nVXpEMlVrWXRadDgwbldW?=
 =?utf-8?B?R1pRT2gzVXRrMnRjc0FZcTFybG92ek9vNmVZT1AxOXJYVEhMa1dNc0prOEQv?=
 =?utf-8?B?WlF3bzUzM3VtNmNraVdzREdGR2RVL1RCTTMvU25SMWlra2xOYWUzbWM2by9R?=
 =?utf-8?B?N3VMekk0elM3OUlLb3RKaTFlOVlmaHBwUXdVWWdRS2dxY2ovSEJpOHRQb1RY?=
 =?utf-8?B?ZHlIYWlQYVFSTU9TSWV6eUVlNEpxdUN1K2lSdklwc1hIb2d5ek5MNURZckFn?=
 =?utf-8?B?Y1pyZGhlVk04NlFkaUpLMUtjT01qcGMxdWhmUXV4Z2JYRWhvWEl0MWQ1bzdi?=
 =?utf-8?B?WFhJcE0zMy9nTUFaZ2ZaSWZ1bXFCNUxSM0dubnRzZC9ndVQwekI0U0pGbXFj?=
 =?utf-8?B?QTgrWDdpWGxIcDVVTEk0SU1TUXc1bjdBM3VEZ3UrMGJTZEN2ZW1IbkFYajg1?=
 =?utf-8?B?UGxRUXJyT0pDMldabUFyODE5RG5oVGt1TFJGWXd4QklxRWJ2NmQ4OWxpU0RX?=
 =?utf-8?B?LzZ3NFpoVW9rVFJiNk5saVJRbkRndElWRW5FTTdodVErRUFyQ2F6KzFEZDdY?=
 =?utf-8?B?Q2QzQzk1YWM4SWdIblFoNElCRGRER2JNdDBBUEhLcGxTbXJBNGxTaUZSMDQz?=
 =?utf-8?B?b3JPLzRra2h3RHdFOEMwb1VIYU1UanFPOSt6dkJPVTBwZHlBZHp1Z2NFeDVl?=
 =?utf-8?B?OFptbUhuSzhZRStzM3BleVRnWGloRkJTcmRuQ1F5RmE2R21tKzVnVTV1Sjdm?=
 =?utf-8?B?c3owVXpQcjM1OGkwd2NqdTBBNmJCNWZoOEFOa2NQbEo1YUhFQi9UUVJVaEtG?=
 =?utf-8?B?aGE2TVlNNDVYck9tNkxGVnlpdVJhNDBHcUpTdGlMejQ1R3R0dTh1VXZTT3FP?=
 =?utf-8?B?SWtLeFJIUkYvUUs5a0JtMjc5aXdENUFxczRwdlJCcmVKZG9qekR0WVFRUFlM?=
 =?utf-8?B?WjIzc0VBTzFmMlF4Tk5TeTFoZHRhYzRlUGVJSzVPLzJqTldlbFpiQzZwV0xR?=
 =?utf-8?B?ODhGZUxUNWVpVHpUQlJyZkhHVHNMWFpFUkdhcTlGenJ1QzBXZmYwQlBmL2Mx?=
 =?utf-8?B?VGk3bHNwcExIMDBreWJ1ZldTWHhtSUE5bFN0TjdOZis0Y3M5VjQ5M2poc1l6?=
 =?utf-8?B?RjB2M1FNQkIwR1ZCZ0Y0WmVSWHc1YTJMT01PQWsyYjJlNGJhR2hMNnd0U2xv?=
 =?utf-8?B?MXVETyswWW5MMEdzak51aWNGVDBlNHlEbTVQVHdZR3A3UDdHM1RtQ2RtOXRH?=
 =?utf-8?B?Z09HNXh2ZTN6SE1COGI0MUdBcTZsNUQ2bDhTMFhvQTJNV0cvYjkycEZLTjdt?=
 =?utf-8?B?dmpZd1psWHVzdU5LNVJBREdFdnRwMDM2cDNsYXRoNGszWFJUS1FPaVNyNUIy?=
 =?utf-8?B?S3JIL1h4MThTMjVPcUVweDhjWFVpcjVJQmV6ZHZmZUhtNFpGV0MrV2RiU1NL?=
 =?utf-8?B?eFRaM08wdUVHQ01sdVVwM0hVTERJdERoOFpUOCs0dE9pMk9wWmIzc0JYc2Fl?=
 =?utf-8?B?UDZMRFhmOHdwdk1mMTZnVUQyK043N1hDOVltWDFlMU56WUFYNmVKREYrV2Nj?=
 =?utf-8?B?YjJNcHFqTFFMaFNqMGVIU0xQdUV3WDhFaUdUNXZ1MEFWeTg5SHRiaVg2SFp3?=
 =?utf-8?B?UHFlMnZWSTZFeWRmaWNPWjNuc1RwQm04RkxKM0RWZTkxaDNYTGRUMkpNQnBq?=
 =?utf-8?B?RUt1eXhreDRhYSt0Ry9RRGx5SUUzUzV5WUhLenJGNy90VldSRTZvS3ZiWUU0?=
 =?utf-8?B?c2dOcHlkVHFDRFlWZURoSTFvS2N2b01NSHhCa0RaU1ZTWFZHejE1REd3Mjh5?=
 =?utf-8?B?T0ZTZ0k5R1hOM0ZDNkZjTjZyQk1HclMxQlFVNklYSmpHem9WdkQ1d2RTR1la?=
 =?utf-8?B?L2RwNGhac2R2RnJJMzlzckZ0a2N0ZFBEdU5YeEVJQTlmMTkxT08zeVM0dC8v?=
 =?utf-8?B?RUVFd0RUQVpTU3JvTWhORXRaeG00VWtNUmpaYWtHeXFtem5KZUlnWXZzdmx1?=
 =?utf-8?Q?ssnd00J7rxcTc0XceI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MT/XuQXVWHgQ3ZIXtIxSF4IORF8W2PfoQ7VAn94dJXXR+YYxeT/Vqp8zvR5rWhPtGy3rAFU86m4XDg4WOjLotyCjN8JvDw5CViesNQ9wB+2dWZbEHUOLy137nqO/bJPGJsQpu11HjUE4vwUMuzqeHfCeS54YcsZvM0NWDyuOXH7PlqaQIIisG81SWWDQ/zxNaHHcgX3GPWXMZgLxaU1lVsOMYofPtAFYYI2LmptNzDLF8SOTGzGu0+thD8V3t96tkGv+0sLvtKbY3WF+IV5v1hK/8EoJTFjA4ZW6qs9lVL+wtaE0aoMYq0WdoFqHelqZLDWZTxz2uG2eDlNSSnwYRA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c231578c-308b-4e94-8b35-08dedb3a6647
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:41:40.3622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bYriY+ygeSochCuUuvgpiUAMaaAQEnIs8G42bzc6PCgMovw2zohpCdW1/4WgVwRnYRzt4biyZXX7tDAzhrD26Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6467.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 82BB770E379

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVz
ZGF5LCBKdWx5IDEsIDIwMjYgMTA6MDIgUE0NCj4gVG86IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdh
cmdAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggNC82XSBkcm0v
aTkxNS9jdXJzb3I6IFN5bmMgam9pbmVyIHNlY29uZGFyeSBjdXJzb3Igc3RhdGUNCj4gDQo+IA0K
PiANCj4gT24gNi84LzIwMjYgMTE6NTYgQU0sIE5lbWVzYSBHYXJnIHdyb3RlOg0KPiA+IEJlZm9y
ZSBlbnRlcmluZyB0aGUgdmJsYW5rIGV2YWRlIHdpbmRvdywgc3dhcCBpbiB0aGUgbmV3IHBsYW5l
IHN0YXRlcw0KPiA+IGZvciBhbGwgam9pbmVkIGN1cnNvciBwbGFuZXMgdW5pZm9ybWx5IGFuZCB1
cGRhdGUgZWFjaCBwaXBlIGNydGMncw0KPiA+IGFjdGl2ZV9wbGFuZXMgYml0bWFzayB0byByZWZs
ZWN0IHRoZSBuZXcgY3Vyc29yIHZpc2liaWxpdHkuDQo+ID4NCj4gPiBUaGUgYml0bWFzayBpcyB1
cGRhdGVkIG9uIHRoZSBsaXZlIGNydGMgc3RhdGUgKHJlYWQgdmlhDQo+ID4gcGlwZV9jcnRjc1tp
XS0+YmFzZS5zdGF0ZSkgcmF0aGVyIHRoYW4gb24gdGhlIGR1cGxpY2F0ZWQNCj4gPiBuZXdfY3J0
Y19zdGF0ZSwgc2luY2UgdGhlIGR1cGxpY2F0ZSBpcyBkZXN0cm95ZWQgYXQgb3V0X2ZyZWUgYW5k
IGl0cw0KPiA+IHZhbHVlIHdvdWxkIG90aGVyd2lzZSBiZSBsb3N0LiBUaGUgc2FtZSB1cGRhdGUg
aXMgYXBwbGllZCB1bmlmb3JtbHkgdG8NCj4gPiBwcmltYXJ5IGFuZCBzZWNvbmRhcnkgcGlwZXMg
YmFzZWQgb24gbmV3X3BpcGVfc3RhdGVzW2ldLT51YXBpLnZpc2libGUuDQo+ID4NCj4gPiB2Mjog
Q2hlY2sgcHJpbWFyeSBhbmQgc2Vjb25kYXJ5IHBpcGUgdG9nZXRoZXIuIFtWaWxsZV0NCj4gPiB2
MzogVXBkYXRlIGFjdGl2ZV9wbGFuZXMgb24gdGhlIGxpdmUgY3J0YyBzdGF0ZSBmb3IgYWxsIHBp
cGVzLg0KPiA+IFtzYXNoaWtvXQ0KPiA+DQo+ID4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUt
c29ubmV0LTQuNg0KPiA+IFNpZ25lZC1vZmYtYnk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0Bp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N1cnNvci5jIHwgMTUgKysrKysrKysrKystLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gaW5kZXggM2RhMmMyMzA4
MDgxLi4xNDdlZDZlZmIxNzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gPiBAQCAtMTA0NSw5ICsxMDQ1LDYgQEAgaW50ZWxfbGVn
YWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZQ0KPiAqX3BsYW5lLA0KPiA+DQo+IAl0
b19pbnRlbF9mcm9udGJ1ZmZlcihuZXdfcGlwZV9zdGF0ZXNbaV0tPmh3LmZiKSwNCj4gPiAgIAkJ
CQkJcGlwZV9wbGFuZXNbaV0tPmZyb250YnVmZmVyX2JpdCk7DQo+ID4NCj4gPiAtCS8qIFN3YXAg
cGxhbmUgc3RhdGUgKi8NCj4gPiAtCXBsYW5lLT5iYXNlLnN0YXRlID0gJm5ld19wbGFuZV9zdGF0
ZS0+dWFwaTsNCj4gPiAtDQo+ID4gICAJLyoNCj4gPiAgIAkgKiBXZSBjYW5ub3Qgc3dhcCBjcnRj
X3N0YXRlIGFzIGl0IG1heSBiZSBpbiB1c2UgYnkgYW4gYXRvbWljIGNvbW1pdA0KPiBvcg0KPiA+
ICAgCSAqIHBhZ2UgZmxpcCB0aGF0J3MgcnVubmluZyBzaW11bHRhbmVvdXNseS4gSWYgd2Ugc3dh
cCBjcnRjX3N0YXRlDQo+ID4gYW5kIEBAIC0xMDU4LDcgKzEwNTUsMTcgQEAgaW50ZWxfbGVnYWN5
X2N1cnNvcl91cGRhdGUoc3RydWN0DQo+IGRybV9wbGFuZSAqX3BsYW5lLA0KPiA+ICAgCSAqIHBs
YW5lcyBhdG9taWNhbGx5LiBJZiB0aGUgY3Vyc29yIHdhcyBwYXJ0IG9mIHRoZSBhdG9taWMgdXBk
YXRlIHRoZW4NCj4gPiAgIAkgKiB3ZSB3b3VsZCBoYXZlIHRha2VuIHRoZSBzbG93cGF0aC4NCj4g
PiAgIAkgKi8NCj4gPiAtCWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgPSBuZXdfY3J0Y19zdGF0
ZS0+YWN0aXZlX3BsYW5lczsNCj4gDQo+IFRoaXMgcmVtb3ZlcyB0aGUgbGFzdCB1c2VyIG9mIHRo
ZSBkdXBsaWNhdGVkIG5ld19jcnRjX3N0YXRlLg0KPiANCj4gPiArCWZvciAoaW50IGkgPSAwOyBp
IDwgbnVtX3BpcGVzOyBpKyspIHsNCj4gPiArCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlw
ZV9jcnRjX3N0YXRlID0NCj4gPiArCQkJCXRvX2ludGVsX2NydGNfc3RhdGUocGlwZV9jcnRjc1tp
XS0+YmFzZS5zdGF0ZSk7DQo+ID4gKw0KPiA+ICsJCXBpcGVfcGxhbmVzW2ldLT5iYXNlLnN0YXRl
ID0gJm5ld19waXBlX3N0YXRlc1tpXS0+dWFwaTsNCj4gPiArDQo+ID4gKwkJaWYgKG5ld19waXBl
X3N0YXRlc1tpXS0+dWFwaS52aXNpYmxlKQ0KPiA+ICsJCQlwaXBlX2NydGNfc3RhdGUtPmFjdGl2
ZV9wbGFuZXMgfD0NCj4gQklUKFBMQU5FX0NVUlNPUik7DQo+ID4gKwkJZWxzZQ0KPiA+ICsJCQlw
aXBlX2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgJj0NCj4gfkJJVChQTEFORV9DVVJTT1IpOw0K
PiA+ICsJfQ0KPiANCj4gQWZ0ZXIgdGhpcyBwYXRjaCBub3RoaW5nIGNvbnN1bWVzIG5ld19jcnRj
X3N0YXRlLT5hY3RpdmVfcGxhbmVzLCBzbyB0aGUNCj4gcHJpbWFyeSdzIGludGVsX2NydGNfZHVw
bGljYXRlX3N0YXRlICsgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUNCj4gYXJl
IGRlYWQgd2VpZ2h0LiBTbyBwZXJoYXBzIHdlIGNhbiBkcm9wIHRoZW0gaGVyZSBhbmQgdXNlIGJh
cmUNCj4gY2hlY2tfcGxhbmUoKSBmb3IgdGhlIHByaW1hcnkgYXMgd2VsbC4gVGhlbiBuZXdfY3J0
Y19zdGF0ZSBjYW4gZ28gZW50aXJlbHkuDQo+IEFjay4NCj4gPT0NCj4gQ2hhaXRhbnlhDQo+IA0K
PiA+DQo+ID4gICAJaW50ZWxfdmJsYW5rX2V2YWRlX2luaXQoY3J0Y19zdGF0ZSwgY3J0Y19zdGF0
ZSwgJmV2YWRlKTsNCj4gPg0KDQo=
