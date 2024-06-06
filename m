Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077248FE706
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 15:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD2010E0AA;
	Thu,  6 Jun 2024 13:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igtgjmw+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6C910E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717678989; x=1749214989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iyvqIc6npzRs2plXNZtskEMkWJTm6qSee1eD2XgO/co=;
 b=igtgjmw+aPd3oUZc6c+UzUmSgn/Uzk2+LVT4LeQoXMh49rudfVIud6xs
 Mf4oe6gtLq3ONfb3J9xAv9XhtnXFUACw9kD/XHHl7ZV0Tlxc1y3N73JG7
 k+Bj7PUXg3gfq9JkOLjilj8LaRtZ5C8dFNZdS6o57V3ia6XEEZBU2P9Xs
 pFSuxU1XIjPsqGxk/GtrpoY9ikfhpQBQlR3moS14gQ0jYNLILachh8G1l
 a+f2/phxP0fYq6yg05mIAbbFhWhv3X7tPJTq862xpFynJRB0A38IrbUhC
 RXYD0uuVrF7/S0+lQBlYKmDZNIn9/YegRp+bFnzYMXaeFtywhl77FdGIR A==;
X-CSE-ConnectionGUID: sdy5hv9LTpOrSZZGYhLbvw==
X-CSE-MsgGUID: BOMGsDQ1RheXIUcClH9SWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14463690"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14463690"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 06:03:08 -0700
X-CSE-ConnectionGUID: F5P4ThkAR3WokhrH8/wpIw==
X-CSE-MsgGUID: YQPhjx5jSDawEfpSTPyKiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38518650"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 06:03:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 06:03:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 06:03:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 06:03:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6KNHTTHrNPOs2WzVhi0e0QJnhnjVYXiyrLL7b40Nr3uhNItRYUmBeLLQKcZ3n2/CqlIQEN+BVQ/QvwW6Dct3w8N68lc3xzOLnN3YOSZE3Xk5T5K7dSqh47uZboNVUfpNCMpb1n9f+ZTdg0hoFy9LhvzDcz5QpjYYB40S13ZQeJPn/UTHolzxO0F0ieKAQ5nXLoDO9UPl9Hc+5bttNgj0Jj54xnQw7qj9UGv3m5ACm832oxU0c5HJ7th9f2dpZw9D9xUYkkXVyrzdwyF2a89nr3VVSPYREe/cCLgJowGCeS9MqIKdz2ikUxSqWLpdYAwA2c9OOfBhgctlhiHwtbGPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iyvqIc6npzRs2plXNZtskEMkWJTm6qSee1eD2XgO/co=;
 b=U4p3VBxFN8orNbkM1EK7fDvxto/MAhbRyKngC0erovp9N6s7mbs5ooufat73x5DkpG3mU3m5eDE/eVCWQQBTJGG2mtzPiavitVhcjIHRq5O17BpAbmYmtfEtQKLkqy13uNIigI86F2fiLgFXhtlNHBZL9w3AQrcISMFs3yh9sHHpbA2g3RuXEtyzkV9ERdEmaD+UoTuUdBEhkK7ef+X8sVxBvGFbfQF2lYvUEIsjGrrBA7o7TyTnGy+I/B6qzOyImh4+8jRCBc2oWKCafj5WYJdLcuolosa/eH80YVLB38ak6FxtPnzDSrhSOsWgJdybJY/dyKWfp0TCLCS6kd4Vew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB6403.namprd11.prod.outlook.com (2603:10b6:510:1f9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 13:02:58 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 13:02:58 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 04/26] drm/i915/display: Skip Panel Replay on pipe
 comparison if no active planes
Thread-Topic: [PATCH v6 04/26] drm/i915/display: Skip Panel Replay on pipe
 comparison if no active planes
Thread-Index: AQHatzLVD1T4D0ABDkq/xzGcWKRoMrG6tSfg
Date: Thu, 6 Jun 2024 13:02:58 +0000
Message-ID: <PH7PR11MB5981AB3A616BF2A0AE21C46CF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-5-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB6403:EE_
x-ms-office365-filtering-correlation-id: 5cd0b80f-269c-49c5-ae81-08dc8628fd53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Vjc5KzJKWXN4TDdiaVRMcVovOUV4SUdmblRxUG1OY0N0QUNmQWV1SytBTWxR?=
 =?utf-8?B?L3czc1JrTFNlZzd3TmxCSC9pL0VOOTNvZGVRSXVTdlc0WjIyVHJySG5Cd29a?=
 =?utf-8?B?a09wcWdoN0piZVNIbGRkMDlRY0EwUjlsRXdUemljOTIyYkxPQ056L2RrVXU4?=
 =?utf-8?B?OXZYRHhxa1hqZ3dnT3dBRGY4KzF1OTFJS0tDLzBYa2hmcGNZODdUeTV3ejhI?=
 =?utf-8?B?Q3BXTVY1bWd2VkVPRDcyY1VrckhhT29tYnJPSDNvTDhaSmZQN1hpMi83K1VB?=
 =?utf-8?B?QjNwUm5vaVZ2VkE2TEVIbnAvdkZrUXRwN1FMMFFEMHNRV2M0UWg3RWkzMGZ3?=
 =?utf-8?B?MXJKRXEzalFRd2JZbVBTTmdnY1diQm1GaUY1UmsxTHV1OWQ5d2NIV1ZtODg2?=
 =?utf-8?B?d2U2MmJDMG8yOC9nak9ERmNqSUJGOGhHZ01NRFQ2UmhlRGUwTUpNQ2plR1o1?=
 =?utf-8?B?VWJBU3BrV0xkejU1aTcrRGpyWlJ6TFFHMUw4cUV4cVNRNWlUZnRHeWRxWXo1?=
 =?utf-8?B?eTlDbTBRVENqN2ZxQkhDcDVPaFJNOVNVSzJ5NS96UFJhVDFTYlNlQlZkMjIx?=
 =?utf-8?B?MXluNTVuZVRCck82Z3lzbmtMYnhFZ25zK2tnZWl4VnpKL3E5Yzd3VWNDY0pk?=
 =?utf-8?B?eWFvVjNxbXc3d2dGcXRaOTNaM0pJckhZNWVZbkp5MjIyZk5BdWNxM0VEeDlV?=
 =?utf-8?B?SEZweml5WFVZRmxHSFRwWFg2Ym1ZUlI2ZEVMaGRVMmJxVXJBeWV5dzcycGRv?=
 =?utf-8?B?RlRZQ3Jka1lUcWZtSlFvWmpYTDByODVRMlE3ZThidzA4RGRtYm9SMFZ3RnlY?=
 =?utf-8?B?N20yditEQnd1TUJ0dnJ6VGZ3UWx2WEdtL0RzOURac2ZJcm1HbjFGVTRhVk9T?=
 =?utf-8?B?ZEFhNnpGbHlZVUtSeHpxbFhmeFRuRkxqeEc3a2ZwSE1pVFAvTmlXdWlBWjQ1?=
 =?utf-8?B?Z2FMQXR6NmlvYmR1VEV4M0F2SkVKS3UrOXlSMmxFcWw2bkZ2Szg0MTF0Z2Yx?=
 =?utf-8?B?VTdPR2tsYVJXQzNrVjFTL0I4QWRkTEI3aDU3dmZLcTVPVzkrdTExTGxmMkZt?=
 =?utf-8?B?NGdCYVFpMVRTWTNkbFduYVp3c1c1MVAvOFNCZVNUY3JQS3ZGcCtPampEdUFG?=
 =?utf-8?B?ckNnQlA3bDBUYVFzSWRmdEZkMmNybzMycVdLazJ1cndlV2tFMFo4NWFBN0c3?=
 =?utf-8?B?TzhnOFcvQll2TDlWcUJqUHZCcFI4MElCTHZoR21MbTM3YW5CZVpSUmJWbWNU?=
 =?utf-8?B?bzdvTHZBNzJTcmNJbWF0VGNPSlpIYlN0aXM5TkliZGNJSjVMSFozL3R0T05E?=
 =?utf-8?B?dDdPc3FQQVRvSEc0SExCWjR4MjlTY0ZzN3k3bllPK2U4UEtjU3ZLbkF1bUhj?=
 =?utf-8?B?WFZNNDBldk5kR0xqa1pDdWNTOVNxenJ2ODlXVXk1c3RINEVxaVpvN0U0Y1Nm?=
 =?utf-8?B?RDF2bno2bEc3cUN3Q01UY3BJbkczUXNYYkQxL3ZIeGE4QXdUQlRqUHY0a1dQ?=
 =?utf-8?B?ZjF6VTlWQWU3UzZISU9NSDA0NFFmN3o1SWwydTk5a0lsTWU5ZkxzSmdieTVQ?=
 =?utf-8?B?dXZJb01XZ1lZVW90dm1hYnkrcUNTS1Z4OTU3azJodlVGaS9YbXFSOWRKMjFB?=
 =?utf-8?B?eXlxYlZFenZsZk5IZmxGYVVJYUVPU0tSK3RBVWNTemQzSlppWVdzSGVIRU44?=
 =?utf-8?B?dkxjZ0pnTS8xT1dySW9SbC9rK3ByK2h0WGtsczVpSVBra3pWYU1iMlNOZ3dT?=
 =?utf-8?B?R0FaT1lLb01EVVk3MWpJTmR2ZnZGaTRkMUcyM3N4SkdVZDlxWFpiWENnT2VJ?=
 =?utf-8?Q?mrK366c1iolp6GuLWZbLBnUVHRNXns8WLKZAM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWlXd3V4UHdLK3J6N3VQWXN0c1hub0pObUJONWxKaFo4T1Q3NFl0TjBpRG9x?=
 =?utf-8?B?SjF0TGlrMXVNSDRKSC96ZE5LNmNCaTFZVzVSWVd5RGs3YXhyblRJQm1EOUFP?=
 =?utf-8?B?SW5ockI4WGkyYUwzek9kY3J4WW5OWXRaL3YrNjRHNGtuTkFrVFFwY1ljdCtB?=
 =?utf-8?B?RXhBZmZESHdQUFFFekVwa1FBZUdaL1ova0pzT2ZQUnNwTUpaY25NanhZSzl5?=
 =?utf-8?B?aEhYbUdmVlNFTlkxMThoMXNBczJnU1U0TDk4TTNjRkFJYllpQjB5S0VVNnRz?=
 =?utf-8?B?ZzVmUG9hcGltOXlMUGRtbHZXZVJDQXZmcXFUcTliY0Y3YXVDbVV2bCtqcTl2?=
 =?utf-8?B?THNsQy83Y0Z2YmFBTkQ2cXA1bHlMTXYvYTNwUENyVWxYQzVxd0hRUFhhWWxv?=
 =?utf-8?B?OXBhKzF6YXI3N1pUSW1rN3ZnbnNYaEp3N2JKangxWGwyWVJZSFRGdGlmMlh0?=
 =?utf-8?B?bmVlUFdycXI5OWFaZDAzUWljRHpEZzZkQXVOTjFPanc0dGVnQmQzUWI1cUw5?=
 =?utf-8?B?dG1DUmI0elp5WU5DTVhaK3ZIekxLRjE1ZXBlTVEyYTd6UmdHb3hhdStVOU5o?=
 =?utf-8?B?QUxSWHdHdEV6UG5sT1R6QTFuWlRkcklrVm1IQUlRaU1aV2N3UXEwODN1TVVz?=
 =?utf-8?B?cW0wS016MHhjbkZ6cjE0bmdlbS95UWtLajFEM1hrU2dVZ1JOdExINnZ0YWxR?=
 =?utf-8?B?RXdjbG9iWUtEUitkK2RWOGo1Z1V6TkhlZE1RcStyTy9UYVhFbkZzRHVIeVls?=
 =?utf-8?B?dEgyeWM2Ujc1azlUbUpoRWVBK3U0V0FyUTg0cWtzZnk5Sk9xamhPaGJZMVU4?=
 =?utf-8?B?VW9kZ1FuUEtNZGZtZ1QyYmhxTHRLbWppL2RodXdBTjUrRjFyaHl4NGh2aENv?=
 =?utf-8?B?aHNVbWlTajdGRkxlOFZpVWxOVzZUSUw2SGxLZWxQV1FzOW9xenZNZ3RrS0Y5?=
 =?utf-8?B?N0ZoVVpzS1R1YUdDN2RXWFFOUXNIWkJ2ZXhEeDg4WGwzYkIybjROSjFCMHZO?=
 =?utf-8?B?bmJzUEVMckZHYUtKYStkWnRKVE41T1hPNDYrLzZnUWxrenA0VnZiZFVJS3pK?=
 =?utf-8?B?eUpYWXNtVVJVLzkxaE1QR0hiclZGSmRNQjlaODlpMkhkSHR5OFNuSXlqL2hr?=
 =?utf-8?B?MmpubTV4cU9LNmFWYVltcFJDSVAwamI0L3VySVAyQWxJaG9LeDhrYmRVK2xx?=
 =?utf-8?B?SU52aDJiemdaMFhTUFBpOUlQcENvU1lZTm1jcUZzYjNtYmJzOUpZQi9WN3Ju?=
 =?utf-8?B?ajhFSUtDRXZkUkFtaVhhYWViUHlCZ3ZKaUNxSjhoQU9ieUVESUNrL0E1amZm?=
 =?utf-8?B?VWNhMzk4bFViTU8wd3E4M2haMGowWFRNLzNOZk1CVTZ1WVpzdUd1MU9SZW9M?=
 =?utf-8?B?RGNYSW9JOWIwQmlrUWJXMnEvNjNkRlllTzJNOCtmeklJWGNlM3E4TElXMnM5?=
 =?utf-8?B?eEFRZFNvSW81RlFoc3h0YWkydUtjek53RUVSaXpxUEtlOEhQNjFWZGJYTUs0?=
 =?utf-8?B?SlVNbmw0a3FJdEorN3JJSUs1b1YzQm1LaElPV2V0aEhmc0p0QlRhSDEzTkJG?=
 =?utf-8?B?R1BQREVDWHZWeklZbmVDSU5UOE9DeTBNUnRMMXFGSFIzMFo5N2ZDWW42bktj?=
 =?utf-8?B?d2RTNlUzSm5jU2dpdEh1WHpOeXk5NWdOR09WSWVYRjNjYzNYckdzbVFUb2g3?=
 =?utf-8?B?NXhHSHJsZ1ltamYvSXlNTkFBWHhrK2tKTXByRC9aSDhYcHl0Qk9RUWRveTZh?=
 =?utf-8?B?L2djanBtNkhWTFkwLzdGaDJTMkhyZWk3RDRQUHJRYTZ0bnF0WTJKV0M3MG5B?=
 =?utf-8?B?RXcvQVl1aWZvU3FxM1VMcVUzbGJSdi9id2lteG1Bekt0amJFWTJTbVo0Njhj?=
 =?utf-8?B?eGVzRk1sNG5rZS9MWHFhRGt2UWZQZ0JsRit5enZxVGFXOTRmTkFIQ0dNbFlp?=
 =?utf-8?B?cWYwanhPWWNpUUZ3dmdqb3A2cjVza1laNnlrN2ZmK3VDOWZFa2p3VXRrclFM?=
 =?utf-8?B?ZEhNaHY3R0RlbFVXbHBIa1JNRW1YVTN6R1RscGdTZk9HRnpScW10bEVOYzd6?=
 =?utf-8?B?SUtJbVd1REUwWUtRZWpXcmJJSDdZbElYRFkwbkhsaXBEa0hDNG1pS3p3NFdi?=
 =?utf-8?Q?EfVlWEJ1H2FZ1VrWu0DHRI53G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd0b80f-269c-49c5-ae81-08dc8628fd53
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 13:02:58.6077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gdm38DEkRv0v8yxe7zjOUtMysBcIxrlPAADXoaWUfqHbHAemz3nVHKsUfOgegvrweCmiYNFH2JYjjsUIBnqp0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6403
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwNC8yNl0gZHJtL2k5MTUvZGlzcGxh
eTogU2tpcCBQYW5lbCBSZXBsYXkgb24gcGlwZQ0KPiBjb21wYXJpc29uIGlmIG5vIGFjdGl2ZSBw
bGFuZXMNCj4gDQo+IFBhbmVsIFJlcGxheSBpcyBub3QgZW5hYmxlZCBpZiB0aGVyZSBhcmUgbm8g
YWN0aXZlIHBsYW5lcy4gRG8gbm90IGNvbXBhcmUgaXQNCj4gb24gcGlwZSBjb21wYXJpc29uLiBP
dGhlcndpc2Ugd2UgZ2V0IHBpcGUgbWlzbWF0Y2guDQo+IA0KPiBGaXhlczogYWM5ZWYzMjczMjdi
ICgiZHJtL2k5MTUvcHNyOiBQYW5lbCByZXBsYXkgaGFzIHRvIGJlIGVuYWJsZWQgYmVmb3JlDQo+
IGxpbmsgdHJhaW5pbmciKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDczNzBhY2RkNmI4Yi4uMjc0N2RkMDFi
YjBhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBAQCAtNTMzMSw3ICs1MzMxLDkgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+ICAJICog
UGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVkIGJlZm9yZSBsaW5rIHRyYWluaW5nLiBQU1Ig
ZG9lc24ndA0KPiBoYXZlDQo+ICAJICogdGhpcyByZXF1aXJlbWVudCAtPiBjaGVjayB0aGVzZSBv
bmx5IGlmIHVzaW5nIHBhbmVsIHJlcGxheQ0KPiAgCSAqLw0KPiAtCWlmIChjdXJyZW50X2NvbmZp
Zy0+aGFzX3BhbmVsX3JlcGxheSB8fCBwaXBlX2NvbmZpZy0NCj4gPmhhc19wYW5lbF9yZXBsYXkp
IHsNCj4gKwlpZiAoY3VycmVudF9jb25maWctPmFjdGl2ZV9wbGFuZXMgJiYNCj4gKwkgICAgKGN1
cnJlbnRfY29uZmlnLT5oYXNfcGFuZWxfcmVwbGF5IHx8DQo+ICsJICAgICBwaXBlX2NvbmZpZy0+
aGFzX3BhbmVsX3JlcGxheSkpIHsNCj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX3Bzcik7
DQo+ICAJCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19zZWxfdXBkYXRlKTsNCj4gIAkJUElQRV9D
T05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc2VsX2ZldGNoKTsNCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
