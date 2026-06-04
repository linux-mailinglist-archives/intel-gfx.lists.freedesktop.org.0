Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D3LUL81yIWpdGgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 14:42:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1BA63FFB2
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 14:42:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="W8bMrAm/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F487113FE0;
	Thu,  4 Jun 2026 12:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFC3113FE0;
 Thu,  4 Jun 2026 12:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780576970; x=1812112970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fe7Qtj9OP/gjzOJRw2d1FMor8ZyInD/7IE0RpLuqHGs=;
 b=W8bMrAm/PSACOzXrVP+ZWmx/VWJXz+WP8S/5IgQNb17QpUvq8x6oMJyZ
 wYBKxHZoXPadAQKxBqSO7lYT7od4+TI0AB70k0Rs3uzpUGxaZJ957W4Fp
 TYnpefLLooNiCRvYdPvpwye3sjKaDLZjyZCVrVaXN450YMXMXy+QjWCEB
 JXWeTAYtP+DViU7F3rdw60oqwN6LHUt9PL/XOWRT8+4hkplLE7Ml+Tcsc
 JJuOiJnje3fV5UA1M4n3BHGS40E1XSdSuU+wc158PV408/N6pJCMT1BiZ
 XAhnOQjncEjL5kw8XKFA0nIHKHYFSwkw3O6hpcEDrrzagd4UUHCCv0XZ/ Q==;
X-CSE-ConnectionGUID: 854w+J0VSSKWwnoZC+Je1A==
X-CSE-MsgGUID: 6F8E+SpORfSeHp9IwYGbAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81582937"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81582937"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 05:42:49 -0700
X-CSE-ConnectionGUID: uu3QWjk9QLaCgkq6pxOA+A==
X-CSE-MsgGUID: 5BNjEGOjRBeRlEe9aD0Nlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="246368494"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 05:42:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 05:42:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 05:42:48 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 05:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FDm4NdROknTG7Jau1rQNAJLo/uhcMsrsDK1KezJpn/9DtgX5X8B/e/5qtZpV9AJu5IzzVOXbr9xNBE+49JooR+mPmIjhgTBjCz8uimRs/+Jki9cqXY/zX+xE1iiM7N5GCAmrlw18XcmGiO9mSD0aVlJamNbXtuS7vbEDEwIFsT24loFvxQ4sncJ9rgA1n3YNUoJIsBxrhIKOLbaaGjyiEe4IXpr87rjeW3lEFlJcn1+SMKoe3uO2p7SkuMpkXBaITg3DP0fv7S6KEPLT/zyItwb2fiRq5KGtomcb15AIrn+9OcaLl/BhYj1qDBIC8rybDBHEZ+S/DerLzgpqOu/EkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fe7Qtj9OP/gjzOJRw2d1FMor8ZyInD/7IE0RpLuqHGs=;
 b=Slw+OzB3JhM5F+D82BXnAUcFqD73va2aATbKEx2IKdgsBKBmL2eWvx6JeBrWpNYWVRUAF/lWi7Umm2BeBK1Zgi6pEGsihuE9cso/G3HEIb5nqqs+g3azhWJDP00zELZ/coXfj3y91yIqtVvSwc69d9iNvSvCCQRqBUsY8s/BEAFqiaaosQQRytgXJBUf0oWGjLL+G+7oDLqjv8IIjD0sB6Mu11Nmx+78L1USi1aZ1R+uyv6KJr6+5dBPKwVOVVuoKSkN8DrZBEi3R4dpRmjOGQpCLcoWBQEJSap9GuZP5/jvIK5285aKviApPBabXx2D1qYAKPP6NwXqIZmiIzZfDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by SA0PR11MB4686.namprd11.prod.outlook.com
 (2603:10b6:806:97::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 12:42:44 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 12:42:44 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, "rajat.gupta@oss.qualcomm.com"
 <rajat.gupta@oss.qualcomm.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
 "airlied@gmail.com" <airlied@gmail.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "maarten.lankhorst@linux.intel.com"
 <maarten.lankhorst@linux.intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/dumb-buffer: Drop buffer-size limits for now
Thread-Topic: [PATCH] drm/dumb-buffer: Drop buffer-size limits for now
Thread-Index: AQHc8oMEwBttFMLuRkelqWL17k27UbYt64IAgABuoCA=
Date: Thu, 4 Jun 2026 12:42:44 +0000
Message-ID: <PH3PPFAB42632359023939A8C7E4976CF94E0102@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260602112842.252279-1-tzimmermann@suse.de>
 <1712a4ee-fc93-481f-bdf8-524cbc089509@suse.de>
In-Reply-To: <1712a4ee-fc93-481f-bdf8-524cbc089509@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|SA0PR11MB4686:EE_
x-ms-office365-filtering-correlation-id: a3432ac3-9a60-4dbb-a4d6-08dec236c678
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|22082099003|18002099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: /wkEGOUlGcdgPFhsfVnB04mEklcO5EN7mbgXTxR3E37D/bJSghGH8Hy0JkZQ8bS0zyK7JyIPr8IzlsWA5wVqrv1DaTTCd4adpOtjmYYv0UUFLC31OGiQ3rgoxKKGF4fq4/SWTYO+depDjzjN7Ag3iSgJhzF8ZFszDYqGnBRqkXV2hu6gfEVIwVNJMOF0MkKaS8hzMB+lgIKN00oAz9t+HDdSyp50jRt+X4a/QfPDVL1x+VwVOkijFic6lIdk3gjQlra/YgrUmWgpyk6n8VLeNVABii5fkT1jZmPnPv81rZLHhhrEd44m6VsaIxVkxFVIeFs3tg0UvMvD9a/uvLC6OG7jNuyYr/n4+UlZD8dSpvF/w/5k2q6o5IWgvLd4Zj56OJlQLGe//LeJhz1E8/52nLjaETT+ZFL/3LcTwB8+fgTdPNgsdG0rJaLSwpnP28coxkFAmZvjJVGOXHJpSkxoL0xinVHIC65stFSBv9R9AjJ30P/W0AZ/XoXyklgAwAyIapH7kGIZtA68a7OkPUq/hjJi4VrySDNJ891G0bgVxAzf/k6C+P3qJ7EP3Z2Tjz2DSflZ8gNtAqpwx1pzoFFD/fYtqKp/NgYKRsNK5Amt8gF6HtryrAj87OZQXLVnJSS7uTr6xblRLMmlQwgDy0F1NJDWewG/3TfeZShmzVSoGn+QBk76uVSpgC066PUUTPDmlU1CfHjHX7dFWJ9l/vzT3OkydkoS6KqLhqgiQ3kwD3Q5gsKRfFgZtPHVD/aqWu91
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K29JZjE5bjYrdnZXWVhvNCs2b0ZtTVB3cjJtTlpzNEJjekgrWlNKZHZocWRl?=
 =?utf-8?B?U0M1M3RSeG4wZVpqRWJVTGEybGpzalB0OW5vdnJNV0w2b1dPRjBSRHg1bEhm?=
 =?utf-8?B?SFkyM0IrTGhQclNsSy95MXJzUy9Kc3dYNEl6Vm9oVmV5YVRVM1lqNkxkUzJP?=
 =?utf-8?B?ZEJiWXNtclpFaXNEV0ZoTFZhemdWeUptcTdqK3lrTElrQU4yOHNWVUxIbG02?=
 =?utf-8?B?RHEyTzRUY2lhSVdmeWJNRE5HUzM1SFVjQjRnN2pXWG56aWdlT2tNNkZmNkR3?=
 =?utf-8?B?Y1R5aDdUZ1c5eUQxdndaNFZHTHRmUHRIVXdaeTJtRmd5NVl2U3RnYmhuemd5?=
 =?utf-8?B?Nm1CSEhEU1JQY0ZDQkJIRnRGNGV5Y1pmNlhCVFRCYTEvYXNSVm0yMEh3ekYr?=
 =?utf-8?B?WDl4emljZGJXdy90NStWcm0xUDlPbHhHazFFbGVRcEJWNnB6bEwrWmJyUFRq?=
 =?utf-8?B?b1ZVTmZNeTFTbXNReUpzbktmdmxWMjB6ZmFNSFJHRDhVRFhJdmdoWWM3QUJu?=
 =?utf-8?B?NGtqcFk4eG1QK1lzay8zMTcwTk9VZi95Vlh4aHdqL01leDVPODhEVGRxeW91?=
 =?utf-8?B?QzJUcnlIZzEwaVlwSVlqWFAzcWo1REY3NmN4MDZudFFibmMrSk1tL0R5MmlX?=
 =?utf-8?B?Q3hqR241K3NWUEJ0NEMyNVFpeHVaMlN4ZUQvSW9YZGN4dmw4S1lrOHNxQ3ho?=
 =?utf-8?B?VUc2a0ZCMW5GZWJKVTZkdllQTzBpdXF5QTBZQ2s5ZUxyc1Y2SFUyT3VaZ09z?=
 =?utf-8?B?SXd6NXMwdGsxZFQ3UkpCMUxjV2JkMEFtM1lOcU1mbjlMZDNhUWpGNGlYT2RR?=
 =?utf-8?B?Z0ZiYzA1dStPUmdZVEFFVEpqZmtxdVoxTmFOeWZKTDdhVmdPSmFBSVNTd1RD?=
 =?utf-8?B?YUh0akFoYUJYdFIrdk8ycFZXUjRRc0ovS3lTVUZuckFqQXhvVWtObkJCY2M5?=
 =?utf-8?B?V0xCbm5tOE5vcFRjczJtejJyeXNzM2hPSURCWFhQZm1Ga2Z4VXdodVJmUnp5?=
 =?utf-8?B?TzZQenNzZmlzWDFyaWlLcmxtczU0RjlwbkhPR2laQmxlV29oOEtjVFFpV3Fu?=
 =?utf-8?B?OW4xQUhKSDdheUdCbUZYTmVBWDNDTU8vNDh2NXkrZk5qWkNjY2w1ekZMald1?=
 =?utf-8?B?dWdnODlvWm50TzBUYlMrQ1JHbDdobkM0UlVhU2xWMUc3aWM5aE1mSUZ6ZU55?=
 =?utf-8?B?cGxzT2xCZXhSYVFRQmFCK1E2UUlpN1VhV1dXZVlsQmRHRHFGYkh1TUZIN1BF?=
 =?utf-8?B?dWRNenNseTBiekN0OTcrUnlhU3E2MjRFczVheFFUTnRPT1lMNi9WT0xsMGF1?=
 =?utf-8?B?M3d4RXpCU050UG10MmpxdFVsbks4SElOUUp3YXIwQmpZc25jNmx0eUF1L2NY?=
 =?utf-8?B?K0NGRVpFaDZSaTUycFNSRHdhU3pmUmpXQWcrT25pN29hajdjYzNWV0NzVlRS?=
 =?utf-8?B?OE9MaThqTS9zWk9qTGFkd3Vkd0l0U3NKTzhxT3NrT2Zwa0Jic0g0RU5JcnJk?=
 =?utf-8?B?dUcxVVdITXBRUFRpMjk4R2lPaTVLMHgvd1g1Ujc5WWE1VmtEa2NhUW8wcm50?=
 =?utf-8?B?TXJXTnlGZ2hzYlVDb0dBMENvK1lxRHpUZHZWLzBGNUk2cmVDdGRUMytyR3JF?=
 =?utf-8?B?UWgrRWU4R2Y5ZGFkdGNGNVZsenlNRS81aElvd2dweDBXN1plbEEyWTZ4dW9R?=
 =?utf-8?B?bC9xbzVUc0JRNG03RlNTTDdHUzRHQzJ4UG9rSzJSS3FUWitCNThVcjlOVk9m?=
 =?utf-8?B?SUZSTGxyd2lrMmdhdGlWS3ZBeXUwU29xZEZDRlE4dHpaaHhwMWk2WkQxcTBX?=
 =?utf-8?B?b1pqV2Z6Rm5yKzlrVG12TVQ4M0RKZmZEbis2a1RhSkthZXRyamNwMHQ4SlRS?=
 =?utf-8?B?TllreGt6bm5tL3dLWWliSWRkcmFIN0dodHBrZk5SamR0TkhEQjJBeUl6RW9M?=
 =?utf-8?B?TGtxWjNSc0xWd1VZQmFONUdRVW8zRmxUSUVJQjhkaFJlR1NJWXJaSVJoTWh0?=
 =?utf-8?B?cnAwU1I5NzlWODJOSTlaY3JqU2ZLVndYM2kxVEN1TG1MQit6akRLN3czclNZ?=
 =?utf-8?B?bEpxSS9ZeTdzd2hUU1IvZGVHQmI5Tm9xSzh1MmIvOWdHM2g4ZG5LMFhUeXU0?=
 =?utf-8?B?VEVIQlNOTTg2R0hlRjd4S1JZT2xWVlU1NVliZ0M2Z2RIbFgrSWdzMXZYOHFU?=
 =?utf-8?B?WWZkQ3NiaU02Y00vV1pMNWNTOXVzUVRTcEgwNzRSSUxpcWNVUUFSR2Fhdytr?=
 =?utf-8?B?Z3N5Zjh5aWJHV2NWUjhlYlU5MldtYm9VTUVEVk0zK2VSZWlBVUpRdGw1aW51?=
 =?utf-8?B?OHJ6N2VRREUzNDNTSG9iTmZldGM0WWZYZmpLbDBLRG45aDlzTFYzUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oFB3WYfq55Ras4dtygkbv57a0NKn5CNcfWMN09oDRM/inMgTPlKivaCUKD3rdlvtN8oqoDtas3WijIJFowcXoTcHopAeipIVWnj6/3/+gMN2p3KQKW5fq0zFMsUg7xMdUt0vRuFVLR6j1Lg9Hl1h31Is8HxgzEK6phO099MLsePt3KRmuYR7/T9g2gjwzhe1TwLAwmT9DDcUh1Rnvxs31wTVrvja6hOii5d1bs15ME0lzDwvmNmH2KWe4CziQJVhcbTHCqeMtSc5a+P9rxKfdj1SrOq00CW/1WPnH0vnftD/NrZ03QZIwnluigX4mDXXLggeDsD42D/v4LjuDrTHKw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3432ac3-9a60-4dbb-a4d6-08dec236c678
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 12:42:44.6876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CrCjVoVGpxxeMI5NXTZuwDwZsVJBAl2Qw+At7LILMQIdXftlRuxH1wrGSzliLsw+CfQs2LaryMQr992b/39WgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[suse.de,oss.qualcomm.com,linux.intel.com,ffwll.ch,gmail.com,kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,PH3PPFAB4263235.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F1BA63FFB2

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gU2VudDogVGh1cnNkYXksIDQgSnVuZSAyMDI2
IDkuMDYNCj4gVG86IHJhamF0Lmd1cHRhQG9zcy5xdWFsY29tbS5jb207IGphbmkubmlrdWxhQGxp
bnV4LmludGVsLmNvbTsgU2FhcmluZW4sDQo+IEphbmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29t
Pjsgc2ltb25hQGZmd2xsLmNoOyBhaXJsaWVkQGdtYWlsLmNvbTsNCj4gbXJpcGFyZEBrZXJuZWwu
b3JnOyBtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20NCj4gQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGlu
dGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0g
ZHJtL2R1bWItYnVmZmVyOiBEcm9wIGJ1ZmZlci1zaXplIGxpbWl0cyBmb3Igbm93DQo+IA0KPiBN
ZXJnZWQgaW50byBkcm0tbWlzYy1maXhlcw0KDQpUaGFua3MuIA0KDQpCciwNCkphbmkNCg==
