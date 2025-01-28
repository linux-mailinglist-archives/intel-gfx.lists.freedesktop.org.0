Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F9A203E2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 06:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C3110E3CB;
	Tue, 28 Jan 2025 05:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFFrWbmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B158510E352;
 Tue, 28 Jan 2025 05:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738041109; x=1769577109;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lg72a6/l8QbZj40RKuFI1TPeBFg8s6m58Bngaq7nwAM=;
 b=kFFrWbmhidh3wfuQ/C7L7p3CrpobQhxdjenTK2y8K2eO/WmSJ6Zs+QoN
 e8wMusLFCAfg9UUiG9egjHwV9HSRYxlczVd4FNRWIZoxqJ9Wct842zrpg
 uurqk61FwuWyGhJD51SW/u8a/bJ24njwty1bS7ckBbaBofiygE+lW1D+i
 rGXytyanWnIEjF9xo05sQZA0uhRI+DdKSWaG6PqHPgIJlO+fPQpYthnjE
 5xV/FOpBSOfKwwZ9N7nxAQOrXqQ9Z3Aerkw+y3pxQrk4SDsTrz6IF4RwW
 r2hFZQm1bKO8CoW6fQkyRO+JzXt9vh9gPx6tUT/G1mR6BLuw7d5VCJavS A==;
X-CSE-ConnectionGUID: Vldv8FZYSaWQNcERP/77UA==
X-CSE-MsgGUID: k2ISmMkQS7mTGkqwzhNRTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38217340"
X-IronPort-AV: E=Sophos;i="6.13,240,1732608000"; d="scan'208";a="38217340"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 21:11:48 -0800
X-CSE-ConnectionGUID: JikA2WofQmaezCiMacfDnw==
X-CSE-MsgGUID: 8t7fm90wSCeyhiSTg4dkVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113597538"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 21:11:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 21:11:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 21:11:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 21:11:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=twlJV3DQffn3rog3MGruhq0ClSxWhAbd5G8mIRm8rWF0wUZxseJbciAKXRKz/Bqu9zFl318fqQhaoEUIPPluniqfEPOxyz6ihfJE6tNTa5SrR3vcqYjI555tHc9aGybpa5ZVqeSbSKX9s/tdIoRCrVLjMqhw6jm/iIqPTo9AHyHSA7kLD7sTvgfGZnc7ltIG1n+eiLj7LfJtRpIbJVSwYMc0ChdotMyVsS2qG7HTBgVOU9q9EDlLiKsO9BcfyN/kB2tC0w7tetGCRJ7VBgokTD4o5B0TDTYJ39+pFQhcRy1uL3/uy1C9cb2emG6RWgOQlkMrJkUf/9a06kUyNiK7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lg72a6/l8QbZj40RKuFI1TPeBFg8s6m58Bngaq7nwAM=;
 b=hUPYR81pEJbTRbBndU+fx4pzb0HCFGvklEtFojLg7vZBgdNuXP7ky7K8XMKoxii0lbJ4UVL8wPAQIJqlt4F+8nrw5uz2LJbgKf9C5PorLj2HshWDDHaFh0tjL2lu12v842PWX/UcSdbRx5LERRkGDkN51vx5y3e0JEFFrOPD6ugwKY98BHSI7szBo2O/5nn49x7mZJcvNZvPNU49G8neE0fUnVvFnrrrXOP+vNW1WH805SeLCGdDNj8jPgcateO4MXK9hTiYwjpqrGq9N1NtU4LSAbIXWNO6Zldq95csGT6FGEuuAtgM4NX2J1ikphVjQGNdwUxVQRXtnISRVUXnvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Tue, 28 Jan
 2025 05:11:40 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8377.021; Tue, 28 Jan 2025
 05:11:40 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZG1j?=
 =?utf-8?Q?=5Fwl:_Do_not_check_for_DMC_payload?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kbWNfd2w6?=
 =?utf-8?Q?_Do_not_check_for_DMC_payload?=
Thread-Index: AQHbcL/UCzBMPuh7cE+/SOX77/vSP7MrpVMQ
Date: Tue, 28 Jan 2025 05:11:40 +0000
Message-ID: <CH0PR11MB549131910BD0515301523C1AEFEF2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <173775376198.3232.56473874925376161@b555e5b46a47>
 <173798466909.2736.18370419027586461001@intel.com>
In-Reply-To: <173798466909.2736.18370419027586461001@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|CO1PR11MB5123:EE_
x-ms-office365-filtering-correlation-id: 53b46f27-84f7-41f6-638b-08dd3f5a3f84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|13003099007|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TUhaY0JZS0dXK3VCeG94TnJuU2U2NGY4L3l5N2JkeVlyb1BzdU1SeEs3QmVu?=
 =?utf-8?B?dVBwSU0xTWdWanliRldZem54b0lmbGc3dTRkczdhT0x4RXdUa25ZKzlqTFNE?=
 =?utf-8?B?V0NLUkx1SVFsYUM1eWZ2anBNdWx3WlZ6aFhqUnBLSDVkTGlCc0tZbHRBd1dj?=
 =?utf-8?B?aGQ1dGRZd2NFekZqU1dwYWVLS2ZveHFzdHhuTWFsM1hnbDlQdVduZTk5aHk2?=
 =?utf-8?B?R0JuZGxnZUhyT3NQc0tWV2lzN0tGRWJFV2xtWWpmZmI1WUxPOXFPck5IQzdB?=
 =?utf-8?B?dnZmc1o3a3UxRVlta1U2eDEzOGQ4NlBEV0E4U3V6OG5yNnAzUjI2VG9heTRW?=
 =?utf-8?B?Mk1qdFZ2cFR1QW5zdlJEZTVHSHhyVEZ1ZXRnWnp6b3BmNWZ6Z0Y5bzBLWDBh?=
 =?utf-8?B?c2NMNFpKcGxZRUhQTS9weFlGTGdPU0tySjZaS3JOM01QV3RoNXhPRVNWK0dG?=
 =?utf-8?B?YjVkblgwQ25uL3RXZCs2N0ZmaFhKTmV5VnVkTS9BN2hJYUNhZEVRcW5ZTzh6?=
 =?utf-8?B?aDJkWHhydElXQjhTOWFMMnI3ZVRFdGhqdFp4R3NNTmZLVkpKVkg4YU41QVJV?=
 =?utf-8?B?ODM3aFB6TkNVK2ZTTzBwRWZBRnRlandUbXIwMzJMSjJpUHVjbU1VSmRrRkZ2?=
 =?utf-8?B?SVVWVWhheWFucW0yVnNCMlhHTXUyVk1CMDVLb1dnZjI5VXl3bGZ2RktwY3dW?=
 =?utf-8?B?V1B1MFBEK2p0emxialEvWDRSUVJuVVlMWW5ZTjBLSEQ2d09lZk1UZjltbEJI?=
 =?utf-8?B?Wk9ZZmo0NTVGcHE4NENFcTg4RG9oTzBHeWlqajhVc2d6Q0o5dDNkSlpLY1FH?=
 =?utf-8?B?aVYzcWl3aElrNTRyMHUzVzd6Qm41OHR1QXJZRFlWZmtTT1RaZDl0eWVmRUNz?=
 =?utf-8?B?dHhocHRuZGorMytpS3pubk5oblpBZno5MzJ5WnBsSDVmdnlMQlFpRWxBVWF2?=
 =?utf-8?B?V2ZscDNCQ2J6NmhBNm1LM1J3Y09Jb1RncllDR3ZpbWtXK1hEdm9FNmJtRGxu?=
 =?utf-8?B?bFBxSE5QcU9SdWdnQWtIVG9qQVBDamNGcjA1S2phN3phSW9CZm9tOTdyMy9R?=
 =?utf-8?B?QzgybzJFRGdoTlZVd0puTURNWE9lRDk1dFR4Q3VUa3d0QkhZWWdQQlZXbEJH?=
 =?utf-8?B?Q0NUWXl6emlMYThXTUU0VUszMjVaRURvSVBZK1czUm9WLzR5YmIyT3E4RFI1?=
 =?utf-8?B?V25QMFZQTnluakNmL2hGZWt4YVo2TVo4ZmRVVnFKV0NWOW5MNUJZVURwMFc1?=
 =?utf-8?B?K3JxNXQzemhxYk4xVmdTUXkyYUVIb0s3NUdFUkpaU2JhYjVqYURrTEtFRHlG?=
 =?utf-8?B?S0toR0NSempudGQxUTFJSlpYeTQxQnd4UmxsU2dURGV3SGFYU2daalJHakVi?=
 =?utf-8?B?WnZ0QTI5UThkamhJRUtLR1B2VHE0YW9UMFl2b2pCY21wU2RoRmVNcmRoSnMy?=
 =?utf-8?B?MFVPbTRaMmVZL1BCYzdtb0s1QnYvZ3JPd0liWVJaYXpYWk1kQWJNOW9ZMGF3?=
 =?utf-8?B?YnNJSjliUDF2UkRGalJmcXZ4N3EyMkMxZUhwUzk4TGttMGtieGREY0lWeDZR?=
 =?utf-8?B?TC9pWVRFa3NVL1orbWpwckZ5NGp4K1lJd1EydExpaGZEYWUvSDlwTUF4TkdT?=
 =?utf-8?B?Y29EdVJmRldGbEZBNTZERUhES3R3NlFkK0k5UkFzMGRhdXBVRzNJVngzNnJZ?=
 =?utf-8?B?YlBLY3UvaC9iZnlxNzRnekdvQVRjQmxBTkRQeFZIVEIybmVmNjVEbkRVRkhG?=
 =?utf-8?B?aTh2NXkzU2s4bGRvSzRBNit5NVZPZlRxdjlocExZM25kUnBBWGdGaDNOWXM0?=
 =?utf-8?B?RkNVemgwbEZvQ00vZTRaZUlKTzh0VitwZUc0TXJUMDI1Q1NweTd2Rm5rWVBl?=
 =?utf-8?B?Lzl6OXFrWjArL2E3c0dOSGhmTEN2L2NNRGRSQkdPUmkyemc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXhSRStkWWxJOVV1NzZycVpSMzZjM0FHOXZWMjZ1cklzbWlOMTVUT0tHbmpq?=
 =?utf-8?B?cUl5R1ZmY3lGWnpjM2hValY0cEF1WnFtUy93VjYxRUxDcEk1aGR4UnRKNjRm?=
 =?utf-8?B?L2JRaHN1TnUycG52L1g4WEk3NktkY1JramhHeGkxemVBQkF3b1VGaXRpMDdt?=
 =?utf-8?B?SlZ2NWFvQWtzSndqY0lUdEUzQVJ2UzJLOWo0eGlrQVVsMTh2azUvZmRUTlpH?=
 =?utf-8?B?UlEwRXAzS1Btb09UWnZ1MUVjdEFGTzJsZnlIWHY2cG1IbCs5RVV3SWx0WWtJ?=
 =?utf-8?B?cGtIdE80T0xIcUY5Z2hJMTVJWStoa0VzZkFYNzNjb0R6SzAyNkErSHQ0ZzYw?=
 =?utf-8?B?OEpXbFEydEk5a3AzU0FKVW1NQWtKNW1sSWNJT1pwdFErSXUyQXJISUJaN0pz?=
 =?utf-8?B?OFM2R1VMWjFsZEV6OWExZW9xeXRQTWc4Zncwa3l5bkplbUlvUFlIUFFzVVh1?=
 =?utf-8?B?U1g0Vk5IdmEya0F2c2VRcHVqRE5XK3VWWlJYb2NXR1ZwQ2FnbDdEQmVaVGFw?=
 =?utf-8?B?bXVzRUZnWlN2WHYxWGRaQSszbkM3WmVrZXU0VkQ0NVRPaWNCSmI0U1BBOVZr?=
 =?utf-8?B?YmdtVlhlSGhsemUxd1FreTloRHl5VW1MQk9PNW0yNkZiVW9IaUJQaGJENHlp?=
 =?utf-8?B?NmpZN080U01GSzhibWsyRlZjSzNxSHUybHoycEtva0NVSi82QnZDTXM2NEtr?=
 =?utf-8?B?MlZLTStGQmdIRGdkQlZGUkJJZGhmSXpjMXNMK0gzNm9NYnFPZTJKbHRBMmlJ?=
 =?utf-8?B?RWpyZXg2SzlQYmlRV3dTNlc4Vkppd3VJamU3WW42dFdray9nUFdyY1pWTFZG?=
 =?utf-8?B?dVR3ZjJsaCswRjlvL0ZPOHEzZGZGeEY5VDRJZFVKVFJ5M2lzcG0vcC9mL045?=
 =?utf-8?B?b1pHZCtRWGxBcmtzbFlPcXh5Ry9qK2hJN2JDVGVIWG9ZbnFJRWVEd290bW1n?=
 =?utf-8?B?UWd5MHRNaUloT1htUUhOdDFYR1lzMk9tc2pqYTFpZFFBbHdmUWgxMlZodkhp?=
 =?utf-8?B?bndMdWw3eW9iVm1ENlRBZ2Y3dUZVd3Q1ZFhUSXNZeUlqRk1RK2Q3NXpHZjhr?=
 =?utf-8?B?U2EyaXZQTkhEL2t2V0lCZ3AvQyt4dzVDRk9mTTU4YkdGV1VFbWFRWE50dHNk?=
 =?utf-8?B?STZvUGpOZElWdzNyOHRXMUcyUkhDWVdreVNzZWYxQXhMOHJVNzVsaHhYMTV1?=
 =?utf-8?B?TityWnhyWGMzQ1V0N2d3SUhmeXZURytXVmJCMXBCMjh1MVoxM0hlTlZxcUNo?=
 =?utf-8?B?U1ZCUnV1MEN5dGZKaUJqNFJ5QmpKd2h1MUUxWDByTlFpZVJwRHVhOU9rSzR5?=
 =?utf-8?B?bTBQdUxGNmc2TEsxUTU4NlNlcE9CYU50YTIxM1p4T0hTeWRUa3lMeXc5RjJw?=
 =?utf-8?B?ZXRqYUNyNUx2R2RVb1E2MnJFU3JYOCtnTy92N21ramowWlg0ZHc2aGVNdjMz?=
 =?utf-8?B?ZHF2bVBHSDVFQVMvY2pSQS9jb3hnUEZ4TkNGUGd6WWZWM05mdEV5bUFVT3lC?=
 =?utf-8?B?VmlrK0VrVHd4Uzh6eHlodk1rMW1WR2ozWEpKVjVsSTQ5K25JenJhU0JVL05W?=
 =?utf-8?B?b2Y4NFg4KzVibVk0amdMMG5jU1N0SXhVU0k1SnBZREFYSkFTVjUyL0ZuTU9L?=
 =?utf-8?B?UTBodVNsNmV3bDBEN29YQ1FCL3UwRWJ0ZnkzQXZQTVZPaVpVcVV4cUlXelRt?=
 =?utf-8?B?WUQ1ZkdkdktCWW9OdEVPZHdrUiszRndaeVJNQzRscU5kK3IwNkUwT05NV2pH?=
 =?utf-8?B?VVMwcllHbnFUSmYxRzBSZEVHdEJQU1NJR3hqRm9LQll5eGFQMmRKaExFQTR0?=
 =?utf-8?B?a3RmU2VEelM5U01OSlpOL3M4RytsODlOL1RDYTJwUmYrZ1NDTDlGM2dPZnVR?=
 =?utf-8?B?WDJnRit1OXY3dVVKU2RJd0ZqQmFlSGh3YU9jeFRSZ2Z5djhjd0tLeHM4SkFW?=
 =?utf-8?B?RFQ3NHhjQ2ZLTlc3RlBLd21seXFlV2lnL3ZxbTF6cFphUU9Td0hOK0FkVmVj?=
 =?utf-8?B?aDc5bVkwa09kcTBxLytaVlNPN3RuNzREb2lZUFh5MmZZUHhJUXhqZE9nU1Ur?=
 =?utf-8?B?SUpUazc3TmUzSHozKyswZWxBd1lISkhxdXlPdm81bXNXampESjFjaDZWTURB?=
 =?utf-8?Q?2Jx3tz9uZSFlkyn6Q1djxdLgj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53b46f27-84f7-41f6-638b-08dd3f5a3f84
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2025 05:11:40.1423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2rIdhwaspN3rr22RBgUlDtNOH2A75IP6Munjy/mEwJGQe7xRef0bjIpJyZEsfzgxTStGVhYMKLpoQLgsBE1d0UgH2OEwgpsFKj1pD9PwMsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
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

SGksDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0Mzk1MS8gLSAg
UmUtcmVwb3J0ZWQuDQogDQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KIA0KVGhhbmtzLA0K
UmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZy
YSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIEd1c3Rhdm8gU291c2ENClNlbnQ6IDI3IEphbnVhcnkgMjAyNSAxOTowMQ0KVG86IEk5MTUt
Y2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6
IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZG1jX3dsOiBEbyBub3QgY2hl
Y2sgZm9yIERNQyBwYXlsb2FkDQoNClF1b3RpbmcgUGF0Y2h3b3JrICgyMDI1LTAxLTI0IDE4OjIy
OjQxLTAzOjAwKQ0KPj09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+U2VyaWVzOiBkcm0vaTkxNS9k
bWNfd2w6IERvIG5vdCBjaGVjayBmb3IgRE1DIHBheWxvYWQNCj5VUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQzOTUxLw0KPlN0YXRlIDogZmFpbHVyZQ0K
Pg0KPj09IFN1bW1hcnkgPT0NCj4NCj5DSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8x
NjAxOCAtPiBQYXRjaHdvcmtfMTQzOTUxdjEgDQo+PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPg0KPlN1bW1hcnkNCj4tLS0tLS0tDQo+DQo+ICAq
KkZBSUxVUkUqKg0KPg0KPiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0
Y2h3b3JrXzE0Mzk1MXYxIGFic29sdXRlbHkgDQo+IG5lZWQgdG8gYmUgIHZlcmlmaWVkIG1hbnVh
bGx5Lg0KPiAgDQo+ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3Ro
aW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMgIA0KPiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18x
NDM5NTF2MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIA0KPiAoSTkxNS1jaS1pbmZyYUBs
aXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0gIHRvIGRvY3VtZW50IHRoaXMgbmV3
IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0K
Pg0KPiAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQzOTUxdjEvaW5kZXguaHRtbA0KPg0KPlBhcnRpY2lwYXRpbmcg
aG9zdHMgKDM4IC0+IDM3KQ0KPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAg
TWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4NCj5Qb3NzaWJsZSBuZXcgaXNzdWVzDQo+
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQzOTUxdjE6DQo+DQo+
IyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0K
Pg0KPiAgKiBpZ3RAa21zX3BtX3JwbUBiYXNpYy1ydGU6DQo+ICAgIC0gYmF0LWFwbC0xOiAgICAg
ICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdDQo+ICAgWzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjAxOC9iYXQtYXBsLTEvaWd0QGtt
c19wbV9ycG1AYmFzaWMtcnRlLmh0bWwNCj4gICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM5NTF2MS9iYXQtYXBsLTEvDQo+IGln
dEBrbXNfcG1fcnBtQGJhc2ljLXJ0ZS5odG1sDQoNCkhpIENJIFRlYW0sDQoNCkRNQyB3YWtlbG9j
ayBpcyBub3QgZXhlcmNpc2VkIGZvciB0aGlzIHBsYXRmb3JtLiBUaGlzIHNob3VsZCBub3QgYmUg
cmVsYXRlZCB0byB0aGlzIHBhdGNoLg0KDQpDb3VsZCB5b3UgcGxlYXNlIHJlLXJlcG9ydD8NCg0K
LS0NCkd1c3Rhdm8gU291c2ENCg==
