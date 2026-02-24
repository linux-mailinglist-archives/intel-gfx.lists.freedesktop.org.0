Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE6RD03vnWkHSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:34:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24B18B74B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DF310E600;
	Tue, 24 Feb 2026 18:34:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZwQI9jI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A53D10E5F0;
 Tue, 24 Feb 2026 18:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771958088; x=1803494088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vlkeM1HTBKPFFcQAB1UuULRf8ImKYL/I56upkYwqkRs=;
 b=FZwQI9jIrJa3fWEER+WZfC98bs2FkexmQCXJIyGySJq0SeIzrAtr/LRX
 40cGbTeTksfKpFy2rrDp/HM/0Bec2/6GitkUtGJjOoywdvBobdkpUFrUt
 jcvW9uioJFoOcp7hgrHjndBGDydVGIYtvunSfEC0gT8S9IpzqfzE3rvJU
 9pVsIHE6VdUK83L5VzkkJakScsenn+Pn6WFy3Y7YUbXfMNol9wmfd+LPS
 oIr8HdNb0rMHxkBqfZX3qmT32aXCdAusxGxnpftWOOBuqPDbeCe/Nls59
 RtzTqlWK5l+24PpnWLwsqDsshXyrLfjoLMEyKGVuZEuUJsCT/AVTIMfZO w==;
X-CSE-ConnectionGUID: womX1+Z4SFGq4SF5Db/QQQ==
X-CSE-MsgGUID: Fbg0sT0RTcG0VkVtQ4fyTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72019447"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="72019447"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:34:48 -0800
X-CSE-ConnectionGUID: dME4srAeQbuLP3zsMA3WTg==
X-CSE-MsgGUID: pYVYjnC3QJywr7a4I8NuHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="213763873"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:34:48 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:34:47 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 10:34:47 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:34:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mYE15uw5RiWkbTv3bGmSqK4nQE/h/bi0BQxiLaCCTaA91c3wD2BwqlpMov29B3O+wG6N7lgA0xl9oZBh9+uav9qEgbGRsE49Z9B+aHgCpqvdAqR08q7bNrTSl65F7ZOdZlK+jIKQkEnoA1EtGqHrnBV2jYKHymsLj4syuLZAlSI6Motwqn3ELko/QSz1FFsTOUdruhAqvbDOGChbhJsfxf4L8oIOwRd7/ywK3+YUYj41jl/8UIEy4v87VrxeFKMAuODzEQp3c+O/yodmd2dnEum0vptjwp2XrBlJSK91o6VB++6A4eAL1fvhEpDI9Co2yCw2iQamg+IJvfnK6jFpGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vlkeM1HTBKPFFcQAB1UuULRf8ImKYL/I56upkYwqkRs=;
 b=iWjxXh3gmk36NxsAzTfVGISwql3IeV0w4wQzDQ2XFPN6cOhzMIL4TRprDm7o4An3Oa+LQUKyEGchTrnjH6siadWHS+rYUV/xus9ly/L6lxF7N1BvAykJ+3D47TpmAnlbTb2zPyIFKyt7EGuf88YaCF3lDbfvlL/j938w0yZI7+dtXUoXRMWtdLe173F6EMfbXt8LYqbFnmdT3aq5k3byxJm/8C7AL5nvInXAaBMHYDQ9kW6e+PhYycRlxyI9LpwrmUOoIMQ2LLjwSj+kkhnNVY3V+ZkW+Ztb3occviCCIq8BCxQ7h+tpSXMPBupkPvKidE/Wby6ykl/hh75gHOXuiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by DS0PR11MB7957.namprd11.prod.outlook.com (2603:10b6:8:f8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.22; Tue, 24 Feb 2026 18:34:45 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 18:34:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Thread-Topic: [PATCH 3/6] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Index: AQHclqgrLWz1rW4AjE+GXLhLJGqGh7WSSv0g
Date: Tue, 24 Feb 2026 18:34:45 +0000
Message-ID: <IA1PR11MB63473358B8D32F83222F4488F474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260205140235.338410-1-vinod.govindapillai@intel.com>
 <20260205140235.338410-4-vinod.govindapillai@intel.com>
In-Reply-To: <20260205140235.338410-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|DS0PR11MB7957:EE_
x-ms-office365-filtering-correlation-id: d5984e83-f385-458a-ad18-08de73d361fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TllsK3RpTHp5SlZld1IzNjlOcnZXZjcxL05xdHdPb3JHQlgwZk5vK2VMSmZw?=
 =?utf-8?B?MnJHNWhYcDd5dWE1cm8zdks2RHF4Y3RjVWU3ZHRtaWt1bjIvN1htME93VlZj?=
 =?utf-8?B?Y0pNZkQ1Nkp2ZWF0U3JvZ0Jjd0FyL0puU21vUFJHNk9CZmNETEFLbmlEb09N?=
 =?utf-8?B?Ui9pUDhHL0Nhd01mUnRNS2FsN3p6R3JVWHVkbnpFNjNhR3p4WGczbWpraytm?=
 =?utf-8?B?aUZwbzVnQWNtSllkbDdZZmpQV3J6YSsvRDR5d2NKWTFYczVoUll3RkdMK1pO?=
 =?utf-8?B?MmF0YWdTZkhWUlR6S1BBNnlMUlBhejhhU0lGZFVkd1RzckJlRnRCVkZHUGZo?=
 =?utf-8?B?YXRuVDFZTjdOVHdXaVdFQU0ySUdLZllvbkN5ZDg4SzYxRmxVOE43OFo0dUJX?=
 =?utf-8?B?WlZGZ1BKUmp3cUQ1cVFtUm5RcUdsUnhyekQvRkVrTDJwQ0hoZTBRcW9yODVa?=
 =?utf-8?B?TzROaysrRlFTVVJYcXZJNjBYQjZmbE0wZUZMKzRpUGdzRUFBOTFSemNVWXdx?=
 =?utf-8?B?RkZJTTBpVjJWY0pzelV0TkhKSXZwMDlNaTZXYU9xa2NxcmErNnA0TG5oUVJT?=
 =?utf-8?B?akoxSXE3SkllaEZyVTk0VTBYWER4ZEsyc0hKRGFaU3l1bFdSbjdxZDJVcnJ6?=
 =?utf-8?B?T3J5MHVhV1RCbllYVDE3eXZwdENXOEVzNFZOazJydkJGZTYrWHN5RXU4Qisr?=
 =?utf-8?B?VlB1ZCtXcEdZSFZoTDNPb0xYdWx0UUFMNWIra3dwNFpnQ1ArbDZOSFNuNitk?=
 =?utf-8?B?SW53Q2ROQUo2bXJyRGdzdkV0bXpQRENZOHkveTNKYXV4NzAvaEFUNXJFTFVq?=
 =?utf-8?B?cUpoY3FTV2pSYWk5QUVrTHFFaUppSk1yczN3bENEMWZTL29OTWpkdzJ3QTd4?=
 =?utf-8?B?SnhQUlFRb0RpenhLckNUV3R0dHNCRTc4cHIyaGlSaHJyVm5sK0xsaisvLysv?=
 =?utf-8?B?ZWl1OXB6QzJxTzBsVDRnVHFaVnU0TXkvY29TdEJQRjEzeUxXbUdNVWVCUTRj?=
 =?utf-8?B?Sk84bnZ0dzU3T1BaaFZ0Z2xaaFpFY1pVVDNvK0dVczFiZVVlZjhQYTlSdGxu?=
 =?utf-8?B?R253THJqdmk3Y2xYZGR1d0NEYTRHUVEzQ1c1OEUxdXcrUGE1REp6emVySFJJ?=
 =?utf-8?B?VTdubkxXOElUQm1XSlU4czlpdUtiNFluTFIwczRQUE5CNWhic09jK3dXSXZa?=
 =?utf-8?B?aWRES3JtL25Uc3ZDTlZTT3hVSkVxTlhXclozM1hWQ3FBUVUxbjMwa2dVU01m?=
 =?utf-8?B?RFFvQlIwYi9qamVUYmlEK0wwK0plNUVFQVBGbkNTVGs5c0ZmN3pDaTV2bjRZ?=
 =?utf-8?B?TUVDSlBzVEp0MXBVT2RROFZVY0U4YVZiWUxnVmRNSlBRZXJXR0tFU2U3enA5?=
 =?utf-8?B?aldybkw5MTRNVUxFVDVYZGlNUlZBc0Y2N0c5WVk2WWNCUTFpdWYzWjhQS2sx?=
 =?utf-8?B?b2NsODlGOGRFWGdjMXh1N09BM1RPcXdCb3JONXM2YzdTeU1vUkVtajVnbHZR?=
 =?utf-8?B?VjM5eitWUTRhSXlvZ2hvaFdqODNlTTNIR3MrdGRuY3E4NWU5NzJySEhFSzRV?=
 =?utf-8?B?bktpUllTV1BoWmc4Qkp4eDZEU1FCeXh4VmN0ZnVyOUlZdkdUc1ZlS1JrWmFo?=
 =?utf-8?B?SEptMGVlWXo3NDNNWWlXcVdmcGRlN2pYTkpLbGZPWG9ENnk3RHhDajhYMGQv?=
 =?utf-8?B?S0ZocmFVT0cxQW52UVh6QlVGVzl5WUE5TEZkS1ZDTkpHNW9DMGtpTGtLdEdh?=
 =?utf-8?B?UVVLTlpxVDZwZUZXbTBXRS9DbFoveDNnZkZaaldNNDdtWGVVNE96a2Zvdy8w?=
 =?utf-8?B?aUZxcWVYUTlXejVidmhjbnVzSjY3dDc5TnVaSEtGQkZiMlQxZThlR2xoaEhV?=
 =?utf-8?B?TUNqVFRYS0ZILzhNZFFKamtocXR6dUtFSjBjVnFNeUVBWVBxcHAvUFJKSlVZ?=
 =?utf-8?B?MGo2eVlESm1tM1MrOFJ6Yno2U3hMNE5ldTVsNzRyRVdheGxWWEFrYWdBa0dD?=
 =?utf-8?B?THRpTlZ3Mmt1eUtLY3BRWG5sL0p0UUVyNktPWmpUWUNCS0tGcHJ4TlpwQmlr?=
 =?utf-8?B?cUswajVDbWJMYjd4bzdoeFNpZTA3N2J6eWZaQjNTUDVMVU4weFZNNExwWU9h?=
 =?utf-8?B?empxWENRVFRDbHhmaWpDbHc0cFZVN3pyOCtHVTI1ZEprNnA2Z2pMUzhZQk44?=
 =?utf-8?Q?ezNO0U2xd0z4yhczSdU8l0A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1ZMR3U4UTZ0RW4wbnYrQkp2bUViWE1pNCt6TGJkd2Fza2VBUWtrUXdxaG9L?=
 =?utf-8?B?VXhETWtJVlZpZUl5U1puWEZQcEdubk01OU1UNWFjb0pxWXU3N0dTaDAra0FM?=
 =?utf-8?B?TlBpK2FqWVZ3QWx5YkVLdk1rcVZHNGh1KzJXRHZIRWM4bE9ITFErcnV5YWxN?=
 =?utf-8?B?bzNuQ1lPVDVyQzdyZjcwdDZwNzRSTTE0bEhrQjVVc1JaVlJnOXRTekI2N1JK?=
 =?utf-8?B?WlF0d09nV0NFVDMwZkdoMWdGSVlrd29IeUxwQ3E1NHQ2YW1JcThWV2VXdkox?=
 =?utf-8?B?TGV6Y1JZV0JiOGhiNVlvREc2TEYrdTkxRzFtc1lEMmE3OHNUQVA0WHZWRGxY?=
 =?utf-8?B?VHpTUDJkZ20rWG9JWVdwMG5rQXFyR2R4QnMvR3FiTklYbGtRK1ZmKzlZV1ZQ?=
 =?utf-8?B?U1l3eXZ5WXZlT0NrTEZxS0hUYUJCSlhhVTB5RSsvKzAvZzZaYWpYWGRwZDg3?=
 =?utf-8?B?UG0walhyS0xWdXhkc1dLSjFXVzlKZ1V6YUFPWHVoYzlYSW1KcEhuVEVPRXAx?=
 =?utf-8?B?OUFxcWV2dXpaMjREemhXeTR5RER6VGhDbjNPT0tFdmtvc0ZQNnhOa1NnRVZF?=
 =?utf-8?B?SUtYeFNwaXNxRlpaQWNiWGhlNGF1eG1jQVFPQTU4ZW45aUVybmRXVE1tbFJ5?=
 =?utf-8?B?TmxRM3hhK0huemlpd1hBQ3laS2FQR1FaRnYyWWxIaGhELytRcVB2UzYvcHh5?=
 =?utf-8?B?NjJqZ2JmWGNBSmFPNFhQUVhlSHpsSGhZYUN6cU82YjJkY0JHWEJwbDRwemt5?=
 =?utf-8?B?OW0yV1ZFV3R4RXNubFRtbzVKQXpwSjZDSDR6OHQyZ29lZkwzakN6MUdXNFo2?=
 =?utf-8?B?eEczeUxzMVNVL01WRFVSYzVqeE5PRHoxR3hadEVqMmZOcHByeW1CeVhnM0NK?=
 =?utf-8?B?aHBlU2JGWUhzWHhBQmdXZFlrN21RcHNWZXBXMG9OU2RxTm0ycVMzSnpwb282?=
 =?utf-8?B?VXBPcDZ4djBMeVA5b2k1WHFIejZ0RHRJZ2R3T1piekNQL0lKQUQySWJmNWVM?=
 =?utf-8?B?M21RdEhLY2hrR1F2TUIzcTFKeHVXRXU0MjdmSUdSUXhMWDdQc3VBbHZRWHNo?=
 =?utf-8?B?SkVNNFZBMm16YVRXM0paWUliSDJuUU1abFA3elQyYUQ3Wjc1aWJ5dExkdHF3?=
 =?utf-8?B?NVBpYWIyc2MwTERjaXFtWEFWQ2VtSlkyYXAwSG1adnFtVU1meFFZTzl6UVBK?=
 =?utf-8?B?UzV4dTFJZGF5Z3l2T2xHcEtZUGtMOFE1bVBWWGRENmZVUlV1NVM1VVBJQ0p2?=
 =?utf-8?B?VCsyMjdDRUZZWDdKMmZvaUdObDgxWXd1ajZVMStQaUJsNlpuM3cyMzhJcHFP?=
 =?utf-8?B?ME9qby94QitSYlZzRTFLVloxNC85V05rNUM1bU1nVFRNU0tOTEZOazlWbmRi?=
 =?utf-8?B?aTVyQStzRTUvSkZJbWdJYkpSdWR0QU82VWg0byt1S3JSRlZwK3U1d1dMTDJ4?=
 =?utf-8?B?VHBSZXVrOXV4V0psR1FibS9RcFJPQWhRYmd4QTVHeERZYjh4VWRaNFpTalBP?=
 =?utf-8?B?NDlzTXRYb3ptZHZVQzVnVkhnbXppZzViOHFrMVdkcStYTEozd3ZZRjRaRGZT?=
 =?utf-8?B?R1ZML2dzZnYwUWdCN0Fpa013RDVFMlQxM1RySVRWTHU3NjRaVWQ2RkVtQlpa?=
 =?utf-8?B?SmV0MHNkalh5d0VHUFVRSU9YMDhOUHdXVmNFYURiWXlydlNtSm1qeG1TTDVl?=
 =?utf-8?B?Z2RjdXpWRURiT09LNyt2UVF5Z09sTWtLRWhqM001QW5naTQ2MEhWclI0NjVk?=
 =?utf-8?B?OUNvazdyTTQ3cHMyMThtVTA1d0JRTHRSaEc2K3JtdjdGaXVBUmpiVXN1WkVN?=
 =?utf-8?B?Y1M2TXdYaFVJTlZaWTdWeEZhRHJYVG5SRkFQY0VPbEJGQ1dORkVnbS9sWXJE?=
 =?utf-8?B?UU5Cc2JqclFSN0pQYXdNSGl2Q2MyeEJ1TnJvTDY2TXNjVks2cURZK3ZCRkJr?=
 =?utf-8?B?Wk0wSzRFRnBnS0ZyWlBtK0M3WGFzSkhSZTQ2Um43bWxvdG4vMWh4QUJtWHBa?=
 =?utf-8?B?RU8ySlVIdlNhZUhNY3ZSYXppd21KZEdOVVdFV1IxNnlvR2ZQbE5LOUFxKzVH?=
 =?utf-8?B?NC82RUdjY1ltL21PQ2ZLRjBxdHRIcnNIVVo2VkViMDR2VUdTQ3NucE1nRGx2?=
 =?utf-8?B?SnAzMkRMcS81VzkrYVQ5dyt6K3kwdURyb0YvQzc4Y0hIVVBkNkFWNTJXb3Iv?=
 =?utf-8?B?NHBvK3QzcjhSKzhaaU92QTVqUGxicmNSa3ZnS28wR29wODVLZzlOaVhDdFpU?=
 =?utf-8?B?c0Mrbzl6empxdEVoVHh2VnczVXEzY09QU2ZuamgzMys4aWJwWEtQbzBNN2tH?=
 =?utf-8?B?cDk5aXRYWjYwRy9zSk9PZGJ2SjQ3WGVtTFNEUFVUQmU5YU1FVGc1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5984e83-f385-458a-ad18-08de73d361fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 18:34:45.2259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iTMD1xgqL1ilOYym5ksVa6z+fzrQoCFKWqlI+tKPptXfBXkaJOdBP+hlmef1NfCcNvTfi5yD2ppcKrn82J9sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7957
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
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,IA1PR11MB6347.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6F24B18B74B
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
RmVicnVhcnkgNSwgMjAyNiA3OjMzIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxs
YWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFN5cmphbGEsIFZpbGxl
DQo+IDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMy82XSBkcm0vaTkxNS9mYmRldjogRXh0cmFj
dCBpbnRlbF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDb25zb2xpZGF0ZSB0
aGUgInNob3VsZCB3ZSBhbGxvY2F0ZSBmYmRldiBmYiBpbiBzdG9sZW4/Ig0KPiBjaGVjayBpbnRv
IGEgaGVscGVyIGZ1bmN0aW9uLiBNYWtlcyBpdCBlYXNpZXIgdG8gY2hhbmdlIHRoZSBoZXVyaXN0
aWNzIHdpdGhvdXQNCj4gaGF2aW5nIHRvIGNoYW5nZSBzbyBtYW55IHBsYWNlcy4NCj4gDQo+IHYy
OiByZWJhc2UgcmVsYXRlZCBjaGFuZ2VzIGFuZCBjb25zb2xpZGF0ZSBhbGwgdGhlIHByZWZlcg0K
PiAgICAgc3RvbGVuIGNvbmRpdGlvbnMgaW50byBhIHNpbmdsZSBmdW5jdGlvbiAoVmlub2QpDQoN
CkNoYW5nZXMgTG9vayBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5jIHwgMjcgKysrKysrKysr
KysrKy0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2Zi
LmggfCAgMiArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMg
ICAgIHwgIDMgKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmRldl9mYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldl9mYi5jDQo+IGluZGV4IGU1MjUxZWQxNTk0OC4uNGYwNTdkYmQxMjc5IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5jDQo+IEBA
IC0xMCw2ICsxMCw3IEBADQo+ICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCINCj4gDQo+
ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUu
aCINCj4gICNpbmNsdWRlICJpbnRlbF9mYmRldl9mYi5oIg0KPiANCj4gIHUzMiBpbnRlbF9mYmRl
dl9mYl9waXRjaF9hbGlnbih1MzIgc3RyaWRlKSBAQCAtMTcsNiArMTgsMjMgQEAgdTMyDQo+IGlu
dGVsX2ZiZGV2X2ZiX3BpdGNoX2FsaWduKHUzMiBzdHJpZGUpDQo+ICAJcmV0dXJuIEFMSUdOKHN0
cmlkZSwgNjQpOw0KPiAgfQ0KPiANCj4gK2Jvb2wgaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xl
bihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJCQkgIHVuc2lnbmVkIGludCBz
aXplKQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShk
aXNwbGF5LT5kcm0pOw0KPiArDQo+ICsJLyogU2tpcCBzdG9sZW4gb24gTVRMIGFzIFdhXzIyMDE4
NDQ0MDc0IG1pdGlnYXRpb24uICovDQo+ICsJaWYgKElTX01FVEVPUkxBS0UoaTkxNSkpDQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKw0KPiArCS8qDQo+ICsJICogSWYgdGhlIEZCIGlzIHRvbyBiaWcs
IGp1c3QgZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2ZXJ5DQo+ICsJICogaW1wb3J0
YW50IGFuZCB3ZSBzaG91bGQgcHJvYmFibHkgdXNlIHRoYXQgc3BhY2Ugd2l0aCBGQkMgb3Igb3Ro
ZXINCj4gKwkgKiBmZWF0dXJlcy4NCj4gKwkgKi8NCj4gKwlyZXR1cm4gaTkxNS0+ZHNtLnVzYWJs
ZV9zaXplID49IHNpemUgKiAyOyB9DQo+ICsNCj4gIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqaW50
ZWxfZmJkZXZfZmJfYm9fY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIGludA0KPiBzaXpl
KSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkcm0pOyBA
QCAtMjgsMTQgKzQ2LDcgQEANCj4gc3RydWN0IGRybV9nZW1fb2JqZWN0ICppbnRlbF9mYmRldl9m
Yl9ib19jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgaW50IHNpemUNCj4gDQo+IEk5MTVf
Qk9fQUxMT0NfQ09OVElHVU9VUyB8DQo+ICAJCQkJCQkgIEk5MTVfQk9fQUxMT0NfVVNFUik7DQo+
ICAJfSBlbHNlIHsNCj4gLQkJLyoNCj4gLQkJICogSWYgdGhlIEZCIGlzIHRvbyBiaWcsIGp1c3Qg
ZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2ZXJ5DQo+IC0JCSAqIGltcG9ydGFudCBh
bmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNwYWNlIHdpdGggRkJDIG9yDQo+IG90aGVy
DQo+IC0JCSAqIGZlYXR1cmVzLg0KPiAtCQkgKg0KPiAtCQkgKiBBbHNvIHNraXAgc3RvbGVuIG9u
IE1UTCBhcyBXYV8yMjAxODQ0NDA3NCBtaXRpZ2F0aW9uLg0KPiAtCQkgKi8NCj4gLQkJaWYgKCFJ
U19NRVRFT1JMQUtFKGk5MTUpICYmIHNpemUgKiAyIDwgaTkxNS0+ZHNtLnVzYWJsZV9zaXplKQ0K
PiArCQlpZiAoaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbihpOTE1LT5kaXNwbGF5LCBzaXpl
KSkNCj4gIAkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUp
Ow0KPiAgCQlpZiAoSVNfRVJSKG9iaikpDQo+ICAJCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX3NobWVtKGk5MTUsIHNpemUpOyBkaWZmIC0tDQo+IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJkZXZfZmIuaA0KPiBpbmRleCBmZDBiMzc3NWRjMWYuLjgyZGE1NzYwMWRj
NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
dl9mYi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZf
ZmIuaA0KPiBAQCAtMTMsMTEgKzEzLDEzIEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdDsgIHN0cnVj
dCBkcm1fbW9kZV9mYl9jbWQyOw0KPiBzdHJ1Y3QgZmJfaW5mbzsgIHN0cnVjdCBpOTE1X3ZtYTsN
Cj4gK3N0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiANCj4gIHUzMiBpbnRlbF9mYmRldl9mYl9waXRj
aF9hbGlnbih1MzIgc3RyaWRlKTsgIHN0cnVjdCBkcm1fZ2VtX29iamVjdA0KPiAqaW50ZWxfZmJk
ZXZfZmJfYm9fY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIGludCBzaXplKTsgIHZvaWQN
Cj4gaW50ZWxfZmJkZXZfZmJfYm9fZGVzdHJveShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaik7
ICBpbnQNCj4gaW50ZWxfZmJkZXZfZmJfZmlsbF9pbmZvKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0s
IHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPiAgCQkJICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiwgc3RydWN0IGk5MTVfdm1hICp2bWEpOw0KPiArYm9vbCBpbnRlbF9mYmRldl9mYl9wcmVm
ZXJfc3RvbGVuKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArdW5zaWduZWQgaW50
IHNpemUpOw0KPiANCj4gICNlbmRpZg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lu
aXRpYWxfcGxhbmUuYw0KPiBpbmRleCA3ZmI1MmQ4MWY3YjYuLjEyNjNkN2RiMmM0NCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMNCj4gQEAgLTksNiAr
OSw3IEBADQo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9jcnRjLmgiDQo+ICAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRl
bF9mYi5oIg0KPiArI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZmJkZXZfZmIuaCINCj4gICNpbmNs
dWRlICJnZW0vaTkxNV9nZW1fbG1lbS5oIg0KPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdp
b24uaCINCj4gDQo+IEBAIC0xMTYsNyArMTE3LDcgQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJICovDQo+ICAJaWYgKElTX0VOQUJMRUQoQ09O
RklHX0ZSQU1FQlVGRkVSX0NPTlNPTEUpICYmDQo+ICAJICAgIG1lbSA9PSBpOTE1LT5tbS5zdG9s
ZW5fcmVnaW9uICYmDQo+IC0JICAgIHNpemUgKiAyID4gaTkxNS0+ZHNtLnVzYWJsZV9zaXplKSB7
DQo+ICsJICAgICFpbnRlbF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKGk5MTUtPmRpc3BsYXksIHNp
emUpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJJbml0aWFsIEZCIHNpemUgZXhj
ZWVkcyBoYWxmIG9mIHN0b2xlbiwNCj4gZGlzY2FyZGluZ1xuIik7DQo+ICAJCXJldHVybiBOVUxM
Ow0KPiAgCX0NCj4gLS0NCj4gMi40My4wDQoNCg==
