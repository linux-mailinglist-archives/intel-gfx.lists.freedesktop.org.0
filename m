Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608ACC688C9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 10:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E6C10E471;
	Tue, 18 Nov 2025 09:32:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7mI67JS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7750810E472;
 Tue, 18 Nov 2025 09:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763458340; x=1794994340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jDAn310arRpLmt/CATOqjIKuysyZ2OJ0fKFL6jjUFSc=;
 b=b7mI67JSOxIh874in31vsRVmudi7s2QeJw0Cf+4j8PPHU6+rlFntNBb7
 W9oHm43EJux6F4fcrHXqlNkJloK6eFLv1q6dDkcrLmWJu13Ent/CXUGcT
 OaIUOxF5efjQblrPfdR8kVBGg4vgiGFag8YhrGLreRrGpRbJeSnanpb/o
 SbjiREdPsHRA27aTkJYFQ9VqCO1ecuD3Yn6S/4zHGrSz3aLKIDKLP654n
 LBlbZ15PfRagC1F+8ODYhsSPj91GqYNd0lRXq/75wkTjnbNbbi/NbrQMc
 OYwxC+NCu+pmyIOcYCOsEb28dQKE+5xII9kq9gi3WI/GQt5NMwlnyQgdg A==;
X-CSE-ConnectionGUID: Mq+y7s5RQAWT6vXLH4MqDw==
X-CSE-MsgGUID: PAgAtw/DQCywGWZsPFmb2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="90950167"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="90950167"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:32:20 -0800
X-CSE-ConnectionGUID: KMArEq1ASAOyUma2Bz9l8Q==
X-CSE-MsgGUID: U0Y4jYFJQ8qWowvYVhS1WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="191151135"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:32:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:32:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 01:32:19 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.21) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:32:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eMW5v5yCJOL/bL/adJnYCyo/0bY67yoUe8nvK8pNtrvbIq63YQJbxOnbDEqaFqlffyA2gtA6RfS98xPiBB4XNdCUzsn5EBI7TQsV+zLofq3f0CYiR4JGnVpwx8SubbSm2rGfKQlUuEFQLqms1VK+nZDRXiAzXcsQbtcl/QEgxDqjBgfxWb8lG/9lH0lVOvcdta1aoSiPrsloHjAgLJBIO854yjaCyYKuDy/JH2os0skXHk7F0AE6lvwp0cERpcStt1ISSFdGlVdAg5KlTBH8oMUvi5Fg13GmEICFRopfkrDSB8JkTeS77CyT6qII7pAcOaCNYTqB2GbHns8k1MQhfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jDAn310arRpLmt/CATOqjIKuysyZ2OJ0fKFL6jjUFSc=;
 b=m1Hy3sW4rRjuzeFjP1/EfiT6O+31gf1Pmc8SOaV0Uuio/aLJCNMjdbBravqCmIOwiNUvUsVWKsTrHVuZrRyQPazdzV/Xq/FIUxnuuampXg7Ogtkhj3f3Xy1IWYRI+9L2bSiQfv5ZtMNzTYDLg2T67/tA4UINNExeEEWQRiY6FuxLp2hUnJMVusfFEvcjpnSv8AF4ciInkszfibnB7x4t7jMYH1ebv5nIBe0nDLt2vIU2/juVPmXU05SQorxcEglcYFE/VcagRbCxHUP4WbLOll7y70Vp1up9LXkBv+y/B5S6ex2kLg3+GbQm6kTLpBXz3MQUZ+wWYNlBWa/8zyN9CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB7181.namprd11.prod.outlook.com (2603:10b6:8:113::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Tue, 18 Nov
 2025 09:32:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9320.018; Tue, 18 Nov 2025
 09:32:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Topic: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Index: AQHcUwk0ZQpFG7pWh0i4NSf48WIzO7TyJw6AgAYPUwA=
Date: Tue, 18 Nov 2025 09:32:17 +0000
Message-ID: <79a1474b9b7576b3798c215ccf9938f7191732a0.camel@intel.com>
References: <20251111124606.402380-1-vinod.govindapillai@intel.com>
 <176312519123.3698.9146184315752956049@intel.com>
In-Reply-To: <176312519123.3698.9146184315752956049@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB7181:EE_
x-ms-office365-filtering-correlation-id: b6609ccf-aed9-4381-eff8-08de26855d7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WmF1SEoxdVlaTmEvT0tUY3ExdkNJWVp3Z1VoWmRsa1UvcFlKTmY0M1FLLzdP?=
 =?utf-8?B?cExvRHhXQm9NdC9ZZlVuWTBtUENhc1hzUFBEdmtnM3NNU2JEZGdNN2VLQUVL?=
 =?utf-8?B?bkJIQWJMQTZSZVFDQ1RsVU8wYlRGbTBwU0YyNFhiVkZJN3c2QkJEUWtKR21k?=
 =?utf-8?B?VEZPUGpjMlJMV0NNZi9ZQU1GV0pseDg2d0JCSkhuWCtkb1UxSy8rV2RBY1M4?=
 =?utf-8?B?a3RSMlp1bWFmZkdiUks4REIxUy9tV0FIMGVWWWRNT25QeUp4b1hJVzg1Y0Nm?=
 =?utf-8?B?QjR4eWY0SG1YOHFUU2RjenZWWkdrVEg4Z3lETnBPcmtJdmQxTldFLzgraGZP?=
 =?utf-8?B?cTVPM1JJWElaVDdXYVJpWEVoZHlXaFJENXZ6eVFkc0c1Q3JRNHExcDJ5U2FW?=
 =?utf-8?B?ZDJUK2V6Qk04Mk4zbkRNU3hvMHpSWU5MNC8rTHRYZkRneUJJSkozdTJNQ0to?=
 =?utf-8?B?UUVRZlVML0hpSnA2N0JwS1dTYzJsbHczZGdXczBWbFByNWxiTTkrc055bklN?=
 =?utf-8?B?bThpMTFEU0pFYWVTT1hRUzZWekhLb0FLcHJZRG5NNXJSMjlVSmU0WVgrK2lL?=
 =?utf-8?B?OENyUlNSd2VFREtSbW4wVExWSGxoTTBMa3o2Ni9CLzY3OFhUU0RMbzZaODAr?=
 =?utf-8?B?UW1LYVY4Tnp0ZG0ydHVQd3FYQzBtOEo4QjJndXVGSm45clJyTVFyM3Z3dGRy?=
 =?utf-8?B?em03WStmK0hKMmRJU09IeUtyTGN3UlI3dHhjejhJOG45SUlUR0tCYkZ0SU51?=
 =?utf-8?B?dWxJK01HR054TWtRTDdDZk1ZWDU4NTZhZS9PN0s3ZHQ0V3R5V0tPbVBtZjBL?=
 =?utf-8?B?aDFzRGFGVkVMTFFzUkE4aGlDOEsxY1d6dEQrZ1FCazZob1llK3FlbU9pZXpQ?=
 =?utf-8?B?MjJqbmwzWENPS1BlMU1SNjhDU0hKTUJlMnNEcG1lanIrUWZPT2Y2VUo3RUhW?=
 =?utf-8?B?OS9MNDZjb2k2bU40dE1jQ0lNZWtLWXBNd2VCdmgzNVdJVU5zV0Y0OUg4WjFn?=
 =?utf-8?B?Y1J6ekRyUm9NNjMwY0pBTUZ3Y3VqOVpoQzl4dHRBa0pZaFQvL0Y5aVlRQ3lT?=
 =?utf-8?B?SUIxOTJiZGRSQ0QwSFExdHJTTS9BSFoxREUwV3pUZVlmblRYUUw1UHNnV3Bq?=
 =?utf-8?B?c3ZodWtDOVNLQ3VVVFdQUENKZm1nbnNXVUZueG5ZVW9ZOG5EYm8vd1BST3Np?=
 =?utf-8?B?bDFaVXl3VU0rN09NbmdaZ3o3NE1iNFpCT2hndjRWMXdVWllXRWV0M0FQaERt?=
 =?utf-8?B?SERCOUxzN3djSlFETVpsY3MwbFhJV21pdGUxU2RKLyt0WkRHQ2xZMnBVWmZt?=
 =?utf-8?B?OFRKVDFkSFU1ZDU3MzVJVHUxdmVDKzU0ejRWK0tZS2YwaUJwZlZMRStjVHgz?=
 =?utf-8?B?dVB4T1ZCbE1jblJHdnZ6bHFlMHF1WXdGYzJ1YS9vWllNSnZHd3BVbDlQMU82?=
 =?utf-8?B?YXcxRmtqcUJDYkFmNWdzYzhrV2NBOWp6ZXZValcvZzBCcGVldDlXQnA2L01G?=
 =?utf-8?B?dExiQ2NHRzJ5ckpaN09KemQ0akFVWHVTeWNRZE8xRDJzdzBuYjBJeFhPby83?=
 =?utf-8?B?UzhzcFY0Si9kQitrblFpclBxQWJKc1JWeTVzUTcxRVROeGRBdkVERENpc2Zu?=
 =?utf-8?B?NFBBRnBBQmM2bkVVcmdRMWdjL1ZnT1haOWVGQ0xiUzNsRi9VK0pFL1NhN0or?=
 =?utf-8?B?aEFOMkpsdUZVOW9aUTlYcVBvdjdZYW5pS0dNa0NCK1lOdiswUXJ6SnhsUVM4?=
 =?utf-8?B?TUdTbjI1UkFMalBmZ0JQOXZMLzNrdnEybnBvdWYyNWtiSHBsUnNpU0d2STI3?=
 =?utf-8?B?MGZIaGdvYWtMaCtheFJUMGRwbjNjNjgyUDhRczZsRTdkVDNuKzI4SVIyYXor?=
 =?utf-8?B?ZVhqY2tGMGpISUtyN0NLdUQ4MVZqMGVuaXY0eEhWeUpkaEYzSHlRKyt6WU9E?=
 =?utf-8?B?cWZCWklaM2U2ZEdHWGZtelRuN0I2aXJTTDdXUThBT3RtWGFEZVEzL1YwWkZK?=
 =?utf-8?B?WWNZWXZDY2ZvV3B3OXlWZFZyZGgxakFxcVNMZHlsUUhLZG53ak9xN1NIaUh3?=
 =?utf-8?Q?95xPae?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0M0eWtMbmJVbDVmWHU2UTVwZWVXeGJKL0k2cmNkRnhVT3kwZGYzc1RnSGJ0?=
 =?utf-8?B?bnVoSnNHanR3TjVkcGFQN29NMEp1VGtQOG8yRUc4SzJMRnNjS3VzMDRVUGFF?=
 =?utf-8?B?UmdGSkFqLy9wdjc3V0xwYWFPTmI2L0JZRVdTTnI4c01EVGlENi91eG9GNGVN?=
 =?utf-8?B?c3o2SS84anJITSt0bnh5WlMvK0dTNmNvRWlTdExZM2ozV1ZNYWthT3FuRGJi?=
 =?utf-8?B?R3pOL1k3aGc1eTBCWVR3MVRjVWg2MUV6VFVQS09KTXhlakVEZzNMQ2tKVW9w?=
 =?utf-8?B?MEppMWw1enk2a0tFRGN6cEYvVWZyL1ZrN1c1ZFk3UG1Bci9SenpyYTJ1U3NP?=
 =?utf-8?B?TnpwZ1pZTkIwaWpxZ1RvbGhlcmFrUk1VcW5DYWJSUURGbzdYODdyRXBhVVZQ?=
 =?utf-8?B?ZmZrNkNnWkNJTTNhUDF2VUgyMzdUeHNzdm10aFVFaVhSRTJEVVRJdE5relRN?=
 =?utf-8?B?bWhYSUFCTDVqMWtXM09SaktUWXg4SmZKVFVhVkdRaVBJTXJkY0MyNWxlTFQz?=
 =?utf-8?B?enRpYnpvM3c5Qm1NM05STUswUEpmK1VSSVVHNGxubWRDeTc3ZFhVZldkeXB4?=
 =?utf-8?B?dHRMMkxWaVlPa015MzFsT0Vtc0Z2VmE5UVFDcXFEanhUS1VJUktNNzBSUHRu?=
 =?utf-8?B?MTZaU01pemxBOTVPUEpaUUFFMGRoWFY4bzFobm05ZHJveGtGU0hBdGZmWWcz?=
 =?utf-8?B?ZWUrdk5XdTByQXVhd3hELzJSdXZpcmVoSDl6ZVFHRVpNYktCVEljdXpNdThT?=
 =?utf-8?B?ejI1V1RjSjZYekRKRUlqeEl1VlhoeEs5K0gwQVRNZTk2R2NBUmU2RDZhVmlG?=
 =?utf-8?B?UHl5L1JhQnYxWU9VZk1jNC9vNlRsWGJRTG11OGwxSncwOWtDNmdGWWFmMDdt?=
 =?utf-8?B?RHlYem1pYXZENG13czVpV3NTNEpiQStUb0s5U0wxZmdTMUVPTlpiK3J5Snhn?=
 =?utf-8?B?TkdSeUxDK1NMb1p0ZHBXa2grbGVhMEpRUytlNmhJUC9nRkV6WGZYUitoOURM?=
 =?utf-8?B?R1IrUDY0L0trS1dWQUVjQlFWUnlVNndKMGZydkNMSmFrWWhLeFl3M2dyS3Fw?=
 =?utf-8?B?UHUxVFpmWWRRcm53eUZqZ1A4bUlVWVZPa05HS2F4NEExSW85cmdYY2ZjSzJ2?=
 =?utf-8?B?UHUxRUd6OVl4bW5kTEQ5Z04wWVZ3Q0duRkR3bHpSSWJxKy8zSk1hRHdnc0dD?=
 =?utf-8?B?ekozVFFQT1EvbXhSVFhXV3dtc051cXNyVWNubmw5VHpTQlBFM1RFem9TUGYv?=
 =?utf-8?B?S0hvSXZpV1pmTGpwNHFRaU1ubnhRelZlampQWFNDVGhGMWpGelNLS1Z4eXRL?=
 =?utf-8?B?YkYxaUI1THRtU1Vsd0U2QnlaVHF4RmVpM05TSGwzTkRqSnh6RS9vNVNrQ29K?=
 =?utf-8?B?ZmY4MXZreXUyUGNEcmpzUVhzTUJOTGhJclFQWXRBYkM0cnRqLzhDZnVva25J?=
 =?utf-8?B?UUxkcDZnYWk0b0ZBUERZVG5PbW8xMS85aE92WUtkRU5tZWcxOGtaWEhBcDk3?=
 =?utf-8?B?UmUzbmlQZzgvUkcrajFwU2tTN2JndjZzbStsaFFDVUU4cFB2WU43WTIzcTFD?=
 =?utf-8?B?eCtic1NjN25KM1d1anBmS0lhSnJGNTUxODU4YVBpaXZHV1B6VUpHNzZXRi9C?=
 =?utf-8?B?UnI4L2xyR1B1N0h4a3hZeGZoaXZPaDh3dEVUNUNXRDNzYUhyNi9FVlp4S0li?=
 =?utf-8?B?VGFBYXlSaDIvTXZpL25oa1N3UXh1S3JVcFJkSHFqWUVYZFlibi94eXJHZldi?=
 =?utf-8?B?V3lBYnJBZGpMNk9LN3YrUTRNZWtWU0dObXVFVDE3S3lDMVVodkdvWUVlVy9x?=
 =?utf-8?B?YTJQeFdTU2JBNmUrK3IrbXU1YVhIeURNOXBLNVFYeXRjQVlFY1lHOGNjRlJ5?=
 =?utf-8?B?RlIwWm1XVGlxRWx4TnN0cGFuQ0NveTFNLzlHT3ROdk5zSkVYVmRVSTl0WGY5?=
 =?utf-8?B?TFR3b1d1ZjhEejdBd2xlSTBDZWpQamhLdkUraXRPVUo5czE3WElMdlIveFZ3?=
 =?utf-8?B?OUhHVWxkMmxMSVFzckIrMS9HRXZkZVZrTVhOc1VGWi8rak8vRFYxSnQwWVB4?=
 =?utf-8?B?MDB4eWFxOGVwN0JXWUVFWHp1Mlpsc0Zza1ZKNzd5ZFBWS3J3V1hxVTcvUzB2?=
 =?utf-8?B?NjZJcjl5ZHBwYTZscEF3emdjcUdIc3hicDhKeWM4Ykk2ZE1lZHZ3Vy9SSHlL?=
 =?utf-8?B?eUx6T1hiZnhlS1c1K3NGREo2dCtYZlBzNk1UQUc4c3FrTjZvZXdoMVVCaGtj?=
 =?utf-8?Q?P+E5V07mviD5iozeAh333SkE00g1+CMWDztNT4+ekw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E2CDCF60067844D87FF3BD4F738F612@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6609ccf-aed9-4381-eff8-08de26855d7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 09:32:17.4258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6lU/0L5ugco4aj6CeRmKNz9RX8d54l/mQG5j6L9T6HX454SeH8vjkcksGRo7qCC8nudlGOzMtnQCzMjv9cXZ9450vbxSkDLdl42jfeg2i7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7181
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

T24gRnJpLCAyMDI1LTExLTE0IGF0IDA5OjU5IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIFZpbm9kIEdvdmluZGFwaWxsYWkgKDIwMjUtMTEtMTEgMDk6NDY6MDYtMDM6MDAp
DQo+ID4gRGlzYWJsZSBGQkMgaW4gYm1nIGFzIHBlciB0aGUgd2EgcmVjb21tZW5kYXRpb24uDQo+
ID4gDQo+ID4gdjI6IHVzZSB0aGUgYm1nIHBsYXRmb3JtIGluc3RlYWQgb2YgYSBzcGVjaWZpYyBz
dGVwcGluZw0KPiA+IA0KPiA+IEJzcGVjOiA3NDIxMg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9k
IEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jIHzCoCAy
ICsrDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgg
fMKgIDEgKw0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmPCoMKg
wqDCoMKgwqDCoCB8IDEwICsrKysrKysrKysNCj4gPiAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gaW5kZXggZTM4ZTVlODc4NzdjLi5iMmU3MWZhNjFj
MGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3dhLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfd2EuYw0KPiA+IEBAIC03MCw2ICs3MCw4IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5
X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gKmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxh
eV93YSB3YSwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIERJU1BM
QVlfVkVSKGRpc3BsYXkpID09IDEzOw0KPiA+IMKgwqDCoMKgwqDCoMKgIGNhc2UgSU5URUxfRElT
UExBWV9XQV8yMjAxNDI2Mzc4NjoNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIElTX0RJU1BMQVlfVkVSeDEwMChkaXNwbGF5LCAxMTAwLCAxNDAwKTsNCj4gPiArwqDC
oMKgwqDCoMKgwqAgY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE1MDE4MzI2NTA2Og0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRpc3BsYXktPnBsYXRmb3JtLmJhdHRs
ZW1hZ2U7DQo+ID4gwqDCoMKgwqDCoMKgwqAgZGVmYXVsdDoNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZHJtX1dBUk4oZGlzcGxheS0+ZHJtLCAxLCAiTWlzc2luZyBXYSBudW1i
ZXI6DQo+ID4gJXNcbiIsIG5hbWUpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBicmVhazsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3dhLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV93YS5oDQo+ID4gaW5kZXggMzY0NGU4ZTJiNzI0Li5mNjQ4YjAwY2I5N2QgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3dhLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfd2EuaA0KPiA+IEBAIC0yNiw2ICsyNiw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV93YSB7DQo+
ID4gwqDCoMKgwqDCoMKgwqAgSU5URUxfRElTUExBWV9XQV8xNjAyNTU3MzU3NSwNCj4gPiDCoMKg
wqDCoMKgwqDCoCBJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAzMTE3LA0KPiA+IMKgwqDCoMKgwqDC
oMKgIElOVEVMX0RJU1BMQVlfV0FfMjIwMTQyNjM3ODYsDQo+ID4gK8KgwqDCoMKgwqDCoMKgIElO
VEVMX0RJU1BMQVlfV0FfMTUwMTgzMjY1MDYsDQo+ID4gfTsNCj4gPiANCj4gPiBib29sIF9faW50
ZWxfZGlzcGxheV93YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bQ0KPiA+IGlu
dGVsX2Rpc3BsYXlfd2Egd2EsIGNvbnN0IGNoYXIgKm5hbWUpOw0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggYTFlMzA4MzAyMmVlLi4x
NmNkOTlkYjI5NzggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gPiBAQCAtMTUyMSw2ICsxNTIxLDE2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJj
X2NoZWNrX3BsYW5lKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPiA+IMKgwqDCoMKgwqDC
oMKgIH0NCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqAgLyoNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oCAqIHdhXzE1MDE4MzI2NTA2Og0KPiANCj4gRHJpdmUtYnkgbml0cGljayBjb21tZW50OiBUaGUg
bW9zdCBjb21tb24gdXNhZ2UgaXMgV2FfKiBpbnN0ZWFkIG9mDQo+IHdhXyouDQo+IA0KPiDCoMKg
wqAgJCBnaXQgZ3JlcCAtaGlvICdcPHdhX1swLTldXCsnIC0tIGRyaXZlcnMvZ3B1L2RybS94ZQ0K
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNSB8IHNlZCAncy9cKFtXd11bYUFdX1wpLiovXDEvJyB8IHNv
cnQgfCB1bmlxIC1jDQo+IMKgwqDCoMKgwqDCoMKgwqAgMjIgd2FfDQo+IMKgwqDCoMKgwqDCoMKg
IDMxNyBXYV8NCj4gwqDCoMKgwqDCoMKgwqDCoMKgIDMgV0FfDQo+IA0KPiBUaGlzIGNvdWxkIGJl
IGZpeGVkIHdoaWxlIGFwcGx5aW5nLCBzaW5jZSBpdCBpcyBqdXN0IGEgY29tbWVudCBmaXguDQo+
IA0KPiBBbHNvLCBJIHdvdWxkIHdhaXQgZm9yIHRoZSB3b3JrYXJvdW5kIHRvIGJlIGZvcm1hbGl6
ZWQgYXMgcGVybWFuZW50DQo+IHdvcmthcm91bmQgYmVmb3JlIG1lcmdpbmcgdGhpcy4NCj4gDQo+
IC0tDQo+IEd1c3Rhdm8gU291c2ENCg0KT2theS4uIEkgY2FuIGNoYW5nZSB0aGUgY29tbWVudC4N
Cg0KQWJvdXQgdGhlIG1lcmdlLCBnb3QgdGhlIGdvIGFoZWFkIHRvIG1lcmdlIHRoaXMuIA0KDQpU
aGFua3MNClZpbm9kDQo+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgICogRml4ZXM6IFVuZGVycnVu
IGR1cmluZyBtZWRpYSBkZWNvZGUNCj4gPiArwqDCoMKgwqDCoMKgwqDCoCAqIFdvcmthcm91bmQ6
IERvIG5vdCBlbmFibGUgRkJDDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKg
wqDCoMKgwqAgaWYgKGludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwgMTUwMTgzMjY1MDYpKSB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbGFuZV9zdGF0ZS0+bm9fZmJjX3Jl
YXNvbiA9ICJXYV8xNTAxODMyNjUwNiI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gMDsNCj4gPiArwqDCoMKgwqDCoMKgwqAgfQ0KPiA+ICsNCj4gPiDCoMKgwqDC
oMKgwqDCoCAvKiBXYUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICov
DQo+ID4gwqDCoMKgwqDCoMKgwqAgaWYgKGludGVsX2Rpc3BsYXlfdnRkX2FjdGl2ZShkaXNwbGF5
KSAmJg0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGRpc3BsYXktPnBsYXRmb3JtLnNreWxh
a2UgfHwgZGlzcGxheS0NCj4gPiA+cGxhdGZvcm0uYnJveHRvbikpIHsNCj4gPiAtLSANCj4gPiAy
LjQzLjANCj4gPiANCg0K
