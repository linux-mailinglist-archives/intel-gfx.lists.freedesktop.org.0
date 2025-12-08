Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42979CAD368
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 14:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4424210E445;
	Mon,  8 Dec 2025 13:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dp0jWsQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39FA910E446;
 Mon,  8 Dec 2025 13:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765199317; x=1796735317;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=VSNmw1O/vbHe5PARcG76/QbTxtPsJiYXksjJUIQAadM=;
 b=dp0jWsQZyHj9IpNcOcsQ2080ZNfeKUXnDgFpXM+2NDKvf8nyTv5UFPpa
 Bb0suYEUNBtL+h6jzHjIwGXCeRz//Or7L+JK2pd9lJMtp7tExUGA9hRf4
 TQjfK2CIHdf8QmyH/j/ByyfTmKTe2cP5ig6MteOFLNGGv2qaNu1APFg/N
 8dHgjWQl2PnCwobnl7Vg9xejbrZTsBptGrMU7Ubqv+Qy0L05L/omd9bZO
 4ArXZu9Nr0MxGgw4LnTbnBmlM2hFh2VDUaNSfvFHXhPJUHJsV05GbEgF2
 cdflgroKnZJsAG6sG/EkjqmcFK/nsDl9saddCubcRrXfGo4FVWQ7f3SIN g==;
X-CSE-ConnectionGUID: /delLCxeQ3uKpN//Q0etww==
X-CSE-MsgGUID: UDXvlc0ZStCUDHPPe299GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="92615289"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="92615289"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 05:08:36 -0800
X-CSE-ConnectionGUID: 3xDrL/RlTRmoGGh436E0Uw==
X-CSE-MsgGUID: KFc4WfqLQ8qT/OPb9//8Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="195946499"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 05:08:35 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 05:08:34 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 05:08:34 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 05:08:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bVJoT1TaDdj7B6T+b7DXn1yaMzb03/uf5bL8b3sWX9RDSZZQRry9Igay6MEAyBemm7AyoUDurDCzsCXVBvGEqkPrYbmF5rSLTPzxzIFrxqe2znUyca4+gsFpUfHvZaNGXa1wgT65V6c6j926xc0jNngA5MXM7xB2W8EXP3u1UXKXJ86uZeDgz+Nv6Djp4/G5wzrAawdxZ3kQgHPqQMHJ3aAFmH12JZd9LnTIeevYablMU8Ef9cygiazVmsVj5GlccS2gmcDAbq5VzosO3QVzdxPkEsZ3B+LoR/22AwZGkUDLJK6O6GpiP6ooHqoPTELKMfIAFBUm4IX/vY3gRfeSrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSNmw1O/vbHe5PARcG76/QbTxtPsJiYXksjJUIQAadM=;
 b=l54DozsEwq2/vxDr7wEL/7iOz58MOl0FU4kPClfMSyeQLX9FD4S0wXpZraPanFXGsy69iaxdKCZzcvS9nDlHPB5nEPu7cujxORws/K3630/LROWTci464I755jL6HImalYjLZeXiCvjqWNm5CZ3Q9xRxBXyX0U5nepRAHcs7JpTzTY+bS0EdkUC1Ab2XrAz1kj29kK3Rn778ZoqJRIpkRohqNAn3AzyyX8kCmHtejmzG3iOdglqOB2Iav49VKExI6KbnNR2AoUFR0Cav0pCQOR0mPJPfUi0YIY/XiuWARPMXIM3OUvopbPRp+ODtrYyLFlbRXqOsmgamWRM8UddFhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5038.namprd11.prod.outlook.com (2603:10b6:a03:2d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 13:08:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 13:08:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 35/50] drm/i915/dp: Simplify computing the DSC compressed
 BPP for DP-MST
Thread-Topic: [PATCH 35/50] drm/i915/dp: Simplify computing the DSC compressed
 BPP for DP-MST
Thread-Index: AQHcX+7DYeXJf4IxXUmKdOORA3aJrrUXx6EA
Date: Mon, 8 Dec 2025 13:08:31 +0000
Message-ID: <a17e1186b023b93ab818ee55decf8b6ff4b849d6.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-36-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-36-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5038:EE_
x-ms-office365-filtering-correlation-id: 876092b3-0cfb-40b4-8584-08de365ae2dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MjZYRktUOTdOMklUTXEwZEVJSHluSkhrczlFdzJJbnpzUlJMWWhnV1d2NDRV?=
 =?utf-8?B?RGkza1ZodEVqRUY1clJsZWR3d0htV3R3eDZpOEF6WS9taFJ3SHFNMVo4YjVR?=
 =?utf-8?B?YnluSEVieE1pSnJVT2VwaE1ELzh1dm4rM3BPY2YyQnNxdEtWVHF1Mnp5bGU1?=
 =?utf-8?B?ajM2RE10WGdrL2tmUkthV3hGNVBSdEtnL0x5bXlzampQREV5MFJ2cjBRQW9G?=
 =?utf-8?B?UCtDK2pOakQ3ZUw2N2N5VGFwb0RVNXJMclkvU3FpQWtXOU1ZK2JmV0FGVjNE?=
 =?utf-8?B?aU9uSlFUUGdvdGxBNlhKZ05ac0JwQlhyV3NJUHhOc09lR295blhiNkRWNEpi?=
 =?utf-8?B?YllMRDRjKzQ1VUI4R2wwa21IcEwwNVNFcVRPODhiVWN0bzJtOXIrRm5hS2tS?=
 =?utf-8?B?NEdLMU1nVXRyYkttVUd0NE8wQ29IV0F4VGxycWdoRFFWUjJnejRPUm9aUVhV?=
 =?utf-8?B?UWVsRGFMNFowbmhia3ZRMmZiMVJCd3RPY1g4a2hZcVdKaVBreG14TFRkV0NV?=
 =?utf-8?B?RC8xMFRjOXh5VnNYVlcyNUhnc1p2eWMvYjdRdnJkUXlxcnBiV29CK3hsbkJ6?=
 =?utf-8?B?WWdwK0gySzh5VVpHZEpJQktaVXQ2VjZXY2doLzdFZUY1UWlITTJWUUVCK0xU?=
 =?utf-8?B?ZHU5a05xeEFUb1RDeTlEMGtqeUFmWjdXZ0xsd0pETkp4cm14NEFHQzgvTGVa?=
 =?utf-8?B?eUlLV3F4ZlpIT2ViSFY3dC9GSFQ2ZmcrVFpBcWk3dGt2VW1zZHcyNGN3enNN?=
 =?utf-8?B?VUVWNUJxdDBVcWNQbG93azc4UjVsSEEyVkpJVXJaSU5sNGFRb1p5T1g3UmQr?=
 =?utf-8?B?QVBFU1pudWhxdElSUXRvWStOYzU5V3FIQjN5MWZYOW1KSzFHY2I2cWNDbEF6?=
 =?utf-8?B?dk9vTncxMksvcURYMVNlNTJUbHNHZnpVSCtKcTNNR2VCa0xpTmRBYzBqaURz?=
 =?utf-8?B?WkNzOHVXdG9NaFBXUHhZNmN2TXRrVThKWnBZbzkwRDZ5YTdvbU5FNUgydlpY?=
 =?utf-8?B?UHJaMytWbmRXNHBqM055T0toZDd1aFNsYW4zL0Vpc01wSVNxMG10MVgwdnBJ?=
 =?utf-8?B?WmE2ZHJiQ24yQVdLdisrQ250UWdhSXJtZXNjSU1UQWNhTU9BTUl1eW5GREJD?=
 =?utf-8?B?cUZySC8rRkJiTTJlNy84a0taczFjcmE1ZW5aeGdURXBsT2ZjVE1xeVBwQmpN?=
 =?utf-8?B?RWp6dTJUM28rSThHU0xlUW1pVCtaMjN5UlNSZWM1QUp5OGMwam5SNHQ3ZmlH?=
 =?utf-8?B?VGJxaWhDVFdIdHFLaHJsMGRMcFpXdjV6ZDVvTmxOalZPZVFaVmJwZTk5KzBz?=
 =?utf-8?B?TnFLVlJOSjhFaUlNWlpxSHlJQ2hHTEMxbTZBTzYrRnFQZ1poalptdzdmUHgv?=
 =?utf-8?B?bWJoOGNBSTdON1dpeFJUUjNXVis0OVIvR2VwNk56N1FKMmNtV1RGWFNYT0Rq?=
 =?utf-8?B?RWg2UG02ZmFzRWhuc1pkbnlFQy8zd1ZPRnpsV1RRU2RhSmRxcDhacVR6enpB?=
 =?utf-8?B?UEIrOXE0WWpqOHVZSnZNR3ZZSi9wbnJZZVpISEtZVXpraExkMXJoclNSYmNB?=
 =?utf-8?B?bkMzbHZ4QTB5d0hsS2poRHhRRE93UW9yenE5NWJtWERaTDlGRHhUVVFSYWds?=
 =?utf-8?B?WXFscnBGa2g3ZWR5UnpEQVM3TDFzTU1yd0dNL0h1cmIxelFURXhZNDZQNmlq?=
 =?utf-8?B?SVdsTk9xclM2NG95WlJzNEU5RGduc2ZCcWZnUVpjNHlJZ2dCYnQyazI4VDZE?=
 =?utf-8?B?TFRQR1h1eGIwajV1c0xZSmFLL1pJekV1cTB2U3A0SWQzTHNJTnVrTGk4amE5?=
 =?utf-8?B?WDFvSHJRS0Q4NkJhSHZ6M05sbXNFSEptMFRsOUJaUjhjZU5IeUc0dldvTVh2?=
 =?utf-8?B?Z2ZRaGdJc0dLYkErZnpIS0FqOGxBUnhXTzZPdlNOYy9JVHA4OHlFcTF3S1kz?=
 =?utf-8?B?YWNVMlpuVTJvbDVVeUg0cGtLNGsyanFMbUVyNEdzQ0hEMDh4SkJYTjAzSDJS?=
 =?utf-8?B?ZVR0VUJMeTZpWjdoM3BwYUwxUU1UaStFWlU5N1ljUkVLOWE2c2pnZnlESnh4?=
 =?utf-8?Q?6KKIfC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d09HZlFkUk1GVllta3ZDQXZFc1AzMUNkcUVKNjlzMnQ5R3NOVFRMUUFrenU1?=
 =?utf-8?B?WUd4dFp5RGdUVUZVZThnajZKeEl2L0RNRDIxZTBMNTltT1RsVmgzRE5GYVJo?=
 =?utf-8?B?eUhxdUwvUlFtOHRnTHVpZVB2THhFRnU0Z05TY3l6aFIybWltZDEva1V6QlF0?=
 =?utf-8?B?NCtFek90WWZvZFJIbVgyeTdobkVxTGtLUFRhektrK1N1MlVEU3BJQzNjSnZu?=
 =?utf-8?B?MjhsOVRJajhTbjFvZ1lBdTJiMHlYYzRRWStNQTBnQ3pkQjFQeW9WSkxpajZO?=
 =?utf-8?B?MlIvQmxldWQxOG5kK1EvOC9XUk01ZGtjYW8zN2ZMazVvblF4Q2ZVL2k2TTBz?=
 =?utf-8?B?dlpZb3libEx6QmE2STNTYUcyMmZUbGpsV0dHbWppZGlMWXQ3ZDN6WVExQ0I3?=
 =?utf-8?B?ZzMvNjQ2cmE2elNRcXVyRWFyTXZhOVE5RFJTOURHVyt3QzZtYTd3K2JTWGQz?=
 =?utf-8?B?R09qK1lHdkdQdFdKQytUM0cwdW9UWXlPdzlSWUV4MklzaitkakJiNEcvWTEw?=
 =?utf-8?B?MEtJWDNjS05ob20wcS9NbjlsL0JYMTNYT05IQk9lWXJ5ZzlRWXJuUU52NUQ4?=
 =?utf-8?B?dG81WFMwRmllMjlFWjhaMGhDbWZDNzFIUUl1V3hwblF0RGNxU1kyK3I5M1VK?=
 =?utf-8?B?YjhuZnhvRGhnamRMaS9WeXlObzBNMXNUTU9LcUZsSHQ0UG83TkhzVS9qZ0Zl?=
 =?utf-8?B?cXNIYzFYOFhSU0hENm9ISGJqMGNWVW16NmFwY2llZEdncnErQ1oxUFExRWpO?=
 =?utf-8?B?aTkyMWF3eWg3UGVUMXNncFVxMUhPSmZaN0NKdnI4V09TS3VIVlVLellSNDdr?=
 =?utf-8?B?bFNWRmFHVER1VGxvOEx6aDlDMXlTK0pFS3VxNkY5RGdqT2dxajVDNjdiRE1S?=
 =?utf-8?B?VFJGek9QSFVNc2ZRRlNubi9GVmpFdjltOTYrOE5HVWluN0Vsa0JLR3B4R2hF?=
 =?utf-8?B?bVN6LzhjaHYxWWlTS25mOUM0Ti9NbDNiY3BnNm03dG4vSW5aYTVQWmNSL1lI?=
 =?utf-8?B?dGlEamF0dVRDL0FMVmpVeVVXbUZVMW9nS0V5UHJDOW1kVW9kVEhUcXVxdi9h?=
 =?utf-8?B?ZjJJSS84YUN3azZhNWVvaERaL0RGSnVlbERydGRtbHY1MkJPTCtZU3RxczBZ?=
 =?utf-8?B?QUtycjYrYnpsUXBVNFJYNFlMcE1MaHpoczB6REp2eDE0WnVNUGxtajBydnh3?=
 =?utf-8?B?OU5QS1UxMjNxSTNJbzZtcnhXWXUzYlBRRlVuYnp6djU2QlpqMWF5RHArNlFm?=
 =?utf-8?B?S2ttU3J0SnN2ZnBDbDl5clljeTYvR1JDVXhzeUNQMnpHcmVvckxaUnZmTitI?=
 =?utf-8?B?Tm04STFMa3lIbE8vSlh6VlAzTnljQk11dlhFQlprTFM1UmRmckllbWZPUE9P?=
 =?utf-8?B?RUNOSzQ4TkxKdU1UaU1TZG1vSXJxTTlLQWYxc2dEbFZLdkwvZ3Y4RjdWbmIv?=
 =?utf-8?B?QU03VDB2SzEwaFJ5UXRyZFQ1eHhPbUpYSnVFRVI4QUFwN2lyeWtOdm9rSkV4?=
 =?utf-8?B?SWorRDJwYUlIaVRtMVVwUTdNQm1HRFk1MkRvUGJGTGI2b1hCNVROWUxxcXhG?=
 =?utf-8?B?amZaTko2c0d2RVcyTzBOSUt4SUp3ak54NXh6bE9hbk5vNW1FNkJFaFRYY0RX?=
 =?utf-8?B?Y01rdG0yOTZWUjU2Yng2M2RReGZZYjBhNkRQQVNPZ0hRS2V5VFV5ODVuUjNi?=
 =?utf-8?B?a1JjSXpYSFk0eEhzVGhBdk5rUEdTUVRzUjV1cTZnVDFOc0dibUZ2SmhjZU0x?=
 =?utf-8?B?M2lGc3pUc0FoYWJRV0ZWNnY0aTVSYWE1RXA1SHZNTkxWMmZ3MnpBOEU4eSt4?=
 =?utf-8?B?dHFxdmNKb1hERXN0aHllZEFKV2FZZ0lSNUNzMGpFakV6eHc5OEJjWHNQNW9u?=
 =?utf-8?B?dHRDdVN1NVBsQUx3NkJITld0TlV6QjV5STJEbXBXcThjRi8vTXNOZnozYi9F?=
 =?utf-8?B?dE5JdzdxcDA3UjRiUmlTMEF5dkhJdER0dkQrcGpQaGFlS0wxNWY4WEcyUWhN?=
 =?utf-8?B?dEV6NzJJWFFxRGZEbE5HMlFva2VoUStIY3JvOURyZWZzUGZxbEhyWnVZRmpK?=
 =?utf-8?B?dmdJQ25PRDJ5Y1RobkZSVVFCdUhaNSszTnJmQ1RQODZmOWo4U3pUWi8waG5O?=
 =?utf-8?B?Zk9wNGtNbll0ZHJPeTlPZzYzVnE3aGM3LzJHQ2ZPTFlrNU1YdEpaWFdwQ0Nh?=
 =?utf-8?B?RUpFVi80NENVeFZFR1p5ejdlVW1mcUZvQUxnVE1QM2c2Vm55QXV2Q0lCUlFi?=
 =?utf-8?B?TFFvYXdIK2RFWlNuM2lCM21GQlFBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5176FE297FD07D47AD208586F758A8C4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 876092b3-0cfb-40b4-8584-08de365ae2dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2025 13:08:31.4132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jWGLkJmT3buTC8QrAnVPPfh+welgJ00zFtHoG9AkcfU73QKcO1Jj7JUzZ9RTUKHuVKC3QYit/mUbhDkCF/YMuteGjQHzpEFXokGWWzzAPvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5038
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBtaW5pbXVtL21heGltdW0gRFNDIGlucHV0IChpLmUuIHBpcGUpIGFuZCBjb21wcmVzc2VkIChp
LmUuIGxpbmspDQo+IEJQUA0KPiBsaW1pdHMgYXJlIGNvbXB1dGVkIGFscmVhZHkgaW4gaW50ZWxf
ZHBfY29tcHV0ZV9jb25maWdfbGltaXRzKCksIHNvDQo+IHRoZXJlIGlzIG5vIG5lZWQgdG8gZG8g
dGhpcyBhZ2FpbiBpbg0KPiBtc3Rfc3RyZWFtX2RzY19jb21wdXRlX2xpbmtfY29uZmlnKCkgY2Fs
bGVkIGxhdGVyLiBSZW1vdmUgdGhlDQo+IGNvcnJlc3BvbmRpbmcgYWxpZ25tZW50cyBmcm9tIHRo
ZSBsYXR0ZXIgZnVuY3Rpb24gYW5kIHVzZSB0aGUNCj4gcHJlY29tcHV0ZWQgKGFsaWduZWQgYW5k
IHdpdGhpbiBib3VuZHMpIG1heGltdW0gcGlwZSBCUFAgYW5kIHRoZQ0KPiBtaW4vbWF4DQo+IGNv
bXByZXNzZWQgQlBQIHZhbHVlcyBpbnN0ZWFkIGFzLWlzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDQ4ICsrKy0tLS0tLS0tLS0tLS0t
LS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYw0KPiBpbmRleCBlM2Y4Njc5ZTk1MjUyLi4yNGY4ZTYwZGY5YWMxIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTQ2Myw1NyAr
NDYzLDIxIEBAIHN0YXRpYyBpbnQNCj4gbXN0X3N0cmVhbV9kc2NfY29tcHV0ZV9saW5rX2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gwqAJc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0NCj4gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5f
c3RhdGUtPmNvbm5lY3Rvcik7DQo+IC0JaW50IG51bV9icGM7DQo+IC0JdTggZHNjX2JwY1szXSA9
IHt9Ow0KPiAtCWludCBtaW5fYnBwLCBtYXhfYnBwLCBzaW5rX21pbl9icHAsIHNpbmtfbWF4X2Jw
cDsNCj4gLQlpbnQgbWluX2NvbXByZXNzZWRfYnBwX3gxNiwgbWF4X2NvbXByZXNzZWRfYnBwX3gx
NjsNCj4gLQlpbnQgYnBwX3N0ZXBfeDE2Ow0KPiDCoA0KPiAtCW1heF9icHAgPSBsaW1pdHMtPnBp
cGUubWF4X2JwcDsNCj4gLQltaW5fYnBwID0gbGltaXRzLT5waXBlLm1pbl9icHA7DQo+IC0NCj4g
LQludW1fYnBjID0gZHJtX2RwX2RzY19zaW5rX3N1cHBvcnRlZF9pbnB1dF9icGNzKGNvbm5lY3Rv
ci0NCj4gPmRwLmRzY19kcGNkLA0KPiAtCQkJCQkJwqDCoMKgwqDCoMKgIGRzY19icGMpOw0KPiAt
DQo+IC0JZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiRFNDIFNvdXJjZSBzdXBwb3J0ZWQgbWlu
IGJwcCAlZA0KPiBtYXggYnBwICVkXG4iLA0KPiAtCQnCoMKgwqAgbWluX2JwcCwgbWF4X2JwcCk7
DQo+IC0NCj4gLQlzaW5rX21pbl9icHAgPSBtaW5fYXJyYXkoZHNjX2JwYywgbnVtX2JwYykgKiAz
Ow0KPiAtCXNpbmtfbWF4X2JwcCA9IG1heF9hcnJheShkc2NfYnBjLCBudW1fYnBjKSAqIDM7DQo+
IC0NCj4gLQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJEU0MgU2luayBzdXBwb3J0ZWQgbWlu
IGJwcCAlZCBtYXgNCj4gYnBwICVkXG4iLA0KPiAtCQnCoMKgwqAgc2lua19taW5fYnBwLCBzaW5r
X21heF9icHApOw0KPiAtDQo+IC0JaWYgKG1pbl9icHAgPCBzaW5rX21pbl9icHApDQo+IC0JCW1p
bl9icHAgPSBzaW5rX21pbl9icHA7DQo+IC0NCj4gLQlpZiAobWF4X2JwcCA+IHNpbmtfbWF4X2Jw
cCkNCj4gLQkJbWF4X2JwcCA9IHNpbmtfbWF4X2JwcDsNCj4gLQ0KPiAtCWNydGNfc3RhdGUtPnBp
cGVfYnBwID0gbWF4X2JwcDsNCj4gLQ0KPiAtCW1pbl9jb21wcmVzc2VkX2JwcF94MTYgPSBsaW1p
dHMtPmxpbmsubWluX2JwcF94MTY7DQo+IC0JbWF4X2NvbXByZXNzZWRfYnBwX3gxNiA9IGxpbWl0
cy0+bGluay5tYXhfYnBwX3gxNjsNCj4gKwljcnRjX3N0YXRlLT5waXBlX2JwcCA9IGxpbWl0cy0+
cGlwZS5tYXhfYnBwOw0KPiDCoA0KPiDCoAlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IMKg
CQnCoMKgwqAgIkRTQyBTaW5rIHN1cHBvcnRlZCBjb21wcmVzc2VkIG1pbiBicHAgIg0KPiBGWFBf
UTRfRk1UICIgY29tcHJlc3NlZCBtYXggYnBwICIgRlhQX1E0X0ZNVCAiXG4iLA0KPiAtCQnCoMKg
wqAgRlhQX1E0X0FSR1MobWluX2NvbXByZXNzZWRfYnBwX3gxNiksDQo+IEZYUF9RNF9BUkdTKG1h
eF9jb21wcmVzc2VkX2JwcF94MTYpKTsNCj4gLQ0KPiAtCWJwcF9zdGVwX3gxNiA9IGludGVsX2Rw
X2RzY19icHBfc3RlcF94MTYoY29ubmVjdG9yKTsNCj4gLQ0KPiAtCW1heF9jb21wcmVzc2VkX2Jw
cF94MTYgPSBtaW4obWF4X2NvbXByZXNzZWRfYnBwX3gxNiwNCj4gZnhwX3E0X2Zyb21faW50KGNy
dGNfc3RhdGUtPnBpcGVfYnBwKSAtIGJwcF9zdGVwX3gxNik7DQo+IC0NCj4gLQlkcm1fV0FSTl9P
TihkaXNwbGF5LT5kcm0sICFpc19wb3dlcl9vZl8yKGJwcF9zdGVwX3gxNikpOw0KPiAtCW1pbl9j
b21wcmVzc2VkX2JwcF94MTYgPSByb3VuZF91cChtaW5fY29tcHJlc3NlZF9icHBfeDE2LA0KPiBi
cHBfc3RlcF94MTYpOw0KPiAtCW1heF9jb21wcmVzc2VkX2JwcF94MTYgPSByb3VuZF9kb3duKG1h
eF9jb21wcmVzc2VkX2JwcF94MTYsDQo+IGJwcF9zdGVwX3gxNik7DQo+ICsJCcKgwqDCoCBGWFBf
UTRfQVJHUyhsaW1pdHMtPmxpbmsubWluX2JwcF94MTYpLA0KPiBGWFBfUTRfQVJHUyhsaW1pdHMt
PmxpbmsubWF4X2JwcF94MTYpKTsNCj4gwqANCj4gwqAJY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCA9
IGxpbWl0cy0+bWF4X2xhbmVfY291bnQ7DQo+IMKgCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPSBs
aW1pdHMtPm1heF9yYXRlOw0KPiDCoA0KPiDCoAlyZXR1cm4gaW50ZWxfZHBfbXRwX3R1X2NvbXB1
dGVfY29uZmlnKGludGVsX2RwLCBjcnRjX3N0YXRlLA0KPiBjb25uX3N0YXRlLA0KPiAtCQkJCQnC
oMKgwqDCoMKgDQo+IG1pbl9jb21wcmVzc2VkX2JwcF94MTYsDQo+IC0JCQkJCcKgwqDCoMKgwqAN
Cj4gbWF4X2NvbXByZXNzZWRfYnBwX3gxNiwNCj4gLQkJCQkJwqDCoMKgwqDCoCBicHBfc3RlcF94
MTYsIHRydWUpOw0KPiArCQkJCQnCoMKgwqDCoMKgIGxpbWl0cy0NCj4gPmxpbmsubWluX2JwcF94
MTYsDQo+ICsJCQkJCcKgwqDCoMKgwqAgbGltaXRzLQ0KPiA+bGluay5tYXhfYnBwX3gxNiwNCj4g
KwkJCQkJwqDCoMKgwqDCoA0KPiBpbnRlbF9kcF9kc2NfYnBwX3N0ZXBfeDE2KGNvbm5lY3Rvciks
DQo+ICsJCQkJCcKgwqDCoMKgwqAgdHJ1ZSk7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQg
bW9kZV9oYmxhbmtfcGVyaW9kX25zKGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlDQo+ICpt
b2RlKQ0KDQo=
