Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F3ABB194
	for <lists+intel-gfx@lfdr.de>; Sun, 18 May 2025 22:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5384810E2F1;
	Sun, 18 May 2025 20:37:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dgCFSFi3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4B110E2B5;
 Sun, 18 May 2025 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747600626; x=1779136626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K/xzKVLQWsw46+34yZ4fK/Dw/jYgbN+0offdA5dGZlo=;
 b=dgCFSFi3oGsau3Puw7wrtZRzpjaYSenaVHxrswM3AP/PpmVokU7pqw9T
 jMDpJOgzZoskUn02oGNuLcgtv+to0NPATdOVFw0wosbx3VgqJl1rJZwkk
 DmHjyjE4SGxDXm3mhbLfmf+ljFw858TvKn7tKgZuIw7qXZaa1kCsfsoOm
 teFRFNh8xMSsY+XbsP89J4z0M1goazjWreBrA4BayWCCecKRieJhg/bcg
 csvDe9nnwpB62nMGjdHPnMRcmuuyaavwj7W6E4lWuAGPk6FF6VBRXc8XT
 VgIFPJcA9CVu8m0OXNFaGTb1DRndHo21+VVIEkLLPtPU5UkSsciBzPYxg A==;
X-CSE-ConnectionGUID: kAE1FiRLRbeNIV39plqi0Q==
X-CSE-MsgGUID: nWIShHq4QlCstV42M4tdJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="66911200"
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="66911200"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 13:37:05 -0700
X-CSE-ConnectionGUID: sTR90TtWTwmqrgMdBzW6dw==
X-CSE-MsgGUID: lEebdMrIQReSyBP0L5MpsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="139595525"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 13:37:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 18 May 2025 13:37:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 18 May 2025 13:37:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 18 May 2025 13:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DK9iz8kzgUVn4nE9KbUrdsN5rNyF+pGa0rA77NAEQ/FT7qLFLmiwwjT1zAH39Rx2z1uDSXEVS3YPfpk/rfBJ2ehJfEiWY7orJFmmmJ9a/x3VRlU05TLJ6V8chSUtqoxz4wMGvCFE+Oas9PXduyiCPXXNtz2qLoHTMQmeZew4ChDHxDm/yfs+gTyjYex6VE0fkSGi6wv/9D4IFvxC+R4iXidNGnD27dPmRzYT+k+GmqDLZ4/87vZjN1HdtdTWdDe8vGZb2BO0WDMlQXzlgQ7MUTuZ9ogeE/zPLEKIege58aNAb0CTpxBXdESJs/lOULcPpw0cVUbL8kMJ8Ai0NlutZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/xzKVLQWsw46+34yZ4fK/Dw/jYgbN+0offdA5dGZlo=;
 b=GaPUCQCeBFw0z2YwqZjjAUTpDDa9rAX1Iy9RApw+EaQVHSxacg+s3BF6Kn1u3Znxqv6g3h/oEWU3QLsYAir6/5dF9zqOPX/MhRSre+4I86BirUznMC3tRpjwPvwoEdznruuJSJnRz4DEMwI5vXouLKcZoAEEUh3dMHwDy/vfuheJqlJKDjbR5PbogQof3NJ1VFUzIQVifTzQ9WrWcUQ13Y/B78P70TWZmGW9PLfk0zgCTr4eTpnY6T1tYmkBern1ITZ4KxauKRvdRrx/8UkFF0MABLhLrB33t5Gkn8j7NhTcqHBe4ktub0jKSnIikM6qMtWsKLWJo/l8wY2uRGQ85g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Sun, 18 May
 2025 20:36:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.031; Sun, 18 May 2025
 20:36:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 11/12] drm/i915/flipq: Add intel_flipq_dump()
Thread-Topic: [PATCH 11/12] drm/i915/flipq: Add intel_flipq_dump()
Thread-Index: AQHbxlaPUpe/TdyFnkKP95qyobwxrLPY3EXw
Date: Sun, 18 May 2025 20:36:33 +0000
Message-ID: <DM4PR11MB6360B8B8A34753A06E91B6CFF49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB4896:EE_
x-ms-office365-filtering-correlation-id: 864d6efa-59e5-4ab2-c9de-08dd964badd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TVZ5ZEZLUWNaY3J4TWQvMkxhRFdhc2hMNzRRQXcrbkZ1N2JCSkh1c0hIWGxx?=
 =?utf-8?B?eDZkbWZEWEV2dmluSU9FWE0waWhJYmp1MXVhQ1ZHTWVJcFNxaWFXZG13eTkx?=
 =?utf-8?B?N29TdEV0ODRhMHM5MjRKc2NPd3VLS3ZvVm9YalVWc2hOV09nWlc2MFFSSUVZ?=
 =?utf-8?B?VHg2MDJNVGpnYlFSOWJNbTNHQm1GUDQ5dTc5RGk4c3pTbWpQbmg0aHpocW1o?=
 =?utf-8?B?T2wvM0hZbEt5b1hZZjQvWGdmTnYxY2F0dktONks0VVpjOWZER3Y3bkZLTHFZ?=
 =?utf-8?B?S0d3bHFPQ0cwbGhlNGV6MXJKWXpaK1MwU25ZYzlyeWdGK2NEQXdXZ0lvN2M1?=
 =?utf-8?B?ZEVENlNieXlTakd1R3V4U0VtZlJzV0Z4TU1JSXJEWjJ5T0FpeVRKbWJBTW95?=
 =?utf-8?B?aFgrcEJDTnJqNUNRaG01NVV4NHA2Ym01eTh1SmU0azNTbzViSDk2S1VLbnBQ?=
 =?utf-8?B?dG9IUzhvditIdUtpK0I2UUNMZFNLekExRk92OFlRTGkxSTZpK0JNbVdwQWtp?=
 =?utf-8?B?U0d1T1pVK2F5bnRqRWF3RzJUNnBLQzgwdnRkSDR5UWxLeE1XOTFnVWVJL2xQ?=
 =?utf-8?B?M25qSlE4RXNVN0ltWGl2QlhVeWFxMmNzT0hkeFVnT0RWYlNkd3p3TS9IV1ZP?=
 =?utf-8?B?UkFFT0xMOGliYzZwUHE5dFJUalhXUVdkSkJOMDhBVnVZV0hIUFBVZExIeHBE?=
 =?utf-8?B?dzFNcEhQanRZbHg5WWVIQmJEWXlicW1uSXlGVERZMmllVzRvdjVIY1pNQVc2?=
 =?utf-8?B?V2pOZDVmVk0xa2Y2Rmpkam5LSFY2c0hFb1ZZSEc2blVtSklxeXFPNi9CbzFh?=
 =?utf-8?B?V0VVWjdLM1NyYlZWSHF6UmNnRjdaM3Z5VGR3VWl6VXFSd2xXNU11elU0eHAz?=
 =?utf-8?B?dUkyQWxSaUxXbUVmYlZSU2xUVk5ZTDI2aWdTUjJvNHBLN0lPL0ROd2N5NDRo?=
 =?utf-8?B?YU9HeUlrNEtPeXRHRWpZTjhlNWhiNXAzLzkzQ3I2K3pvNDFkTFp1KzFYejhu?=
 =?utf-8?B?bktLazJrNTFXNm1nN05lU1Jza2dOaks3TGVPOUE3VVdmYmp3SHBWQXllS1p2?=
 =?utf-8?B?U0xVb3dKV1NFT1JCWDZMcElIOVZWaFpSR3FqMitmQ1lDK2hqdW9pQ01iRGxv?=
 =?utf-8?B?VGFJUFF6ZDhUc2M0eUJqTklNRy9FM1kzNVVsdVh6UFU5WnZBdHdGcUcrRkdL?=
 =?utf-8?B?dm54Mm1iWXhCeXYrUWNCS2tIOU84ckVrREJ5dlh4T2dJTHhqamtRaUVmK0lQ?=
 =?utf-8?B?eFhHeDhCWllVb1BJenNVa091WndUT3g0cDNCcWZ2VWxGV1hmcHJ0WW1OTFF3?=
 =?utf-8?B?UUVZZU01K0JrTTJVa0k4cEY3aURpbzJFOWpwRHMyLzNjQnJmNkttREIyWTNC?=
 =?utf-8?B?VlhQcFQ2eEc5MEU0V1V6Q29rcnJJbTd2NEE1Q091Z1J0aUNQVnlxQ2pZeGps?=
 =?utf-8?B?OThMRUpURGUyb2F4UGpFd1ozbGs0d0M4MTE4QkNhbjliajhrbFFzTkN1UG5s?=
 =?utf-8?B?STU3T1Y2TDNESFhzODBPeE5EZzJSKzI1S3VtWFI4L0ZZZEVsdEttL2hXanlH?=
 =?utf-8?B?RWhrZWxLUXpiSmFKMEtKRTJkUWRLVnQ4RVZCMHY2VDR5WEUvQXlxLzJodG5M?=
 =?utf-8?B?VUxHajZlRTF1blRhcWJ6cEF2SmtLZklSY0NxYy9RcnNRMVRzTUV4RW1rWlkz?=
 =?utf-8?B?c2VFeE5hdWExQ2tUTFNQZjEyMVdZRlJDTmxGdUEzK25WdTlSZTViUTBKY0Yx?=
 =?utf-8?B?VnlucEpKaWpEdjJDdGVOSmJHTWZHWnZmVk8xekNJNWdleTZqWlBRRzd0dDRU?=
 =?utf-8?B?Zmc4Z2RHeWc1L25oNDhxZlF1RTF5TWRleldzZnZib3lNRTY0NXdZZTBaSDhY?=
 =?utf-8?B?QzQ4bDlBcWplWWc5MnV4R2gybXFzc2dEYkdjT2ozazNDSmFrN3ZHbFFtYmdL?=
 =?utf-8?B?SnZRWGJjVk5zNU9KNDR1YWR6UW5RNkN4LzZzWDQxZm4zd1ZVUk13bXIvc3pI?=
 =?utf-8?B?RXNtRHZVTEJnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bEFvR0JqT2JkSHg1UzJENDRkSkg1QUxjZUtWdUtPajNVb0JmVSs3MmRNSGEw?=
 =?utf-8?B?blM5TTd4SnE3eTBMNGkzMnpMSmFWdzZ6SVNNUGRqL1dCTExNSHhQUXRrOW11?=
 =?utf-8?B?WVp2cnR1djJPS3lqTnE1SlE2NzFqbERJWFhQby9Qb2FRLzdPRXdPSm0rcWU1?=
 =?utf-8?B?Ujl0UHJUVjI3am1LeFJZZTB1RUtHcjJQNUIwSUw1WWRERnNmcjY5RnV5NHYz?=
 =?utf-8?B?R0pWd2dVa0lSNFl1Y3dCZE90Ly9vYThCQWprWVVYVHpQczgvVm55bDlRcFpr?=
 =?utf-8?B?emlzQXUxS2VoYmNsZHcrMmJMQ0h6T3BXYW1NVjBtTGpKSURVa3lTL21TVUNC?=
 =?utf-8?B?ellWZDhkc2JUdlQ1UFM4UGJxRmZLYkQ0OE5pUzVzeHlpMnFxMUxBYXdIeW15?=
 =?utf-8?B?MUREQkpGNGxHV2VuSHMwNWgxbWt2a2Z3aXhpRFhxRkdSd1FtejhMU2hSVWlM?=
 =?utf-8?B?djB6dWhDeG1hbjVNZlNLVkxBdG1LVDZiOW9xMXd0eHFLcXRaSUs2VVd0WEkx?=
 =?utf-8?B?M0tWYldrcDF2dkZMdWtKeG9lWnJyNzVWclE0MkZBMzFzYm5VRmJYNERQRGI3?=
 =?utf-8?B?cWNVZjdoWHJpWUVMbzNYbytaWnN6VG1tcEdubzNVcXJIdUNFT2xsU3c1eVdu?=
 =?utf-8?B?ZitTazNiSDVXNVpnMDI0U2MwdEExUG1qYWlrN0F2NXRKeGpXUEtyRll0VHJo?=
 =?utf-8?B?YWZGTVhYWm81bWwxUEt5R3VEZjJkOVlYZzVKKzA0MkgrSmUyMXhnN0h5SGJC?=
 =?utf-8?B?cXRvYk14WWhuczZkaFg1TitKaWdPbzloZEpSZHd3OHcvL3k2RTBocVY3NE1I?=
 =?utf-8?B?LzN6NWZHZGxjbndsdXJ5RDFYTkNYUmV0UDNRdGlXV3ZTaGlQMG9pM1A4M2xy?=
 =?utf-8?B?ZnVnaGRLQlN2dEpmdG9iWHVxWHNEbXdQcHhYZndKb1d4NXdZZmE5RzdyQkNn?=
 =?utf-8?B?RytIREV4QzUrY3dDMjJRWVRhbGVoRkZQaXV5c0lPT2tiL1M5Mmp2aUdCeU5R?=
 =?utf-8?B?eFFreUVlMGxMbnhZUElpUXlkeTEvWWx2UXpmVURxQ3BrdnlDRTZGS3BpNURC?=
 =?utf-8?B?allodEU2SHlOQlNsaVQzbnVocUtEUG0rLzdxOGVPN3VhZW1CbFd5ejB5c3p4?=
 =?utf-8?B?NDdEZi81ekhrSjFIdXRhbUJQZkxZVXp5eXBteDVBTk02TlJPOXBZcUQ4Y2M4?=
 =?utf-8?B?RFJuMG1vVjIzVDc1VzdROFVIN0RjSTl5Y01XcTdRM1BLaVJLdmx0M3F0WHky?=
 =?utf-8?B?VWM1eUpBRVRTNkRLL0hVUE9KTFdVVXRyWFZtNlhXTVNheWlBRW5US0hEaExo?=
 =?utf-8?B?aVY5azJhSERCVVFuRXJrZXV4VU54d3R0VGJTUFc1b21nUnlVWjZQdFdpWm1v?=
 =?utf-8?B?N2NtaFZ1Zkx4b1pIc0I3TGVRRDE0ZWxxOHpvUUYzVTlxY2JsNXdSOS9OblRn?=
 =?utf-8?B?VzE3bUhrUHJ3MmRtNjRMQk5ZOHlyc3A1V1YxMDRLUjc5Rjc2MG45Q1lUQ0hk?=
 =?utf-8?B?OU9CWEFwakNGK0lkU0RFd2tGcHZwa3RObUZXZWhWbEpLU3phVGdEeGVhL0NF?=
 =?utf-8?B?RjFUdzV0ZkpHaDhLU3JRaGJLcWErTW8xVHY4MjZzL1JRYjZKRUl4ZUQ2UlRZ?=
 =?utf-8?B?eWU3SWkvMzFjVjhIYkw0eFJkTG9ZeEg1M1N2aXlEL1NsOWtqejFVS1hPekVG?=
 =?utf-8?B?Sm9GZTZGZmxDRFdzOU0wUjgxQkNLYXcrWS85eFNoWmZWaEJDbTMwSGJQemxI?=
 =?utf-8?B?TFgrUXdpUkNmMmFsdVJ6N081QUJiai8yRWVPWWM0OUdNSE9KdXJ1RzNwRHhk?=
 =?utf-8?B?clI0QzlvMUgyQzlHWUNMTUhEK1NLWXZpbDZIUGY1Q3p5TXdUWnE2cklHbFFa?=
 =?utf-8?B?clUwMkJEcDJiQ2ppQmE1UThkbW5UUTM2cEh6d29JMnNoZlFXeGVORTBJNHpq?=
 =?utf-8?B?VHlaQ1MvWlBodEUzZWsyNDN1QUp2R0I1SEg3Y3RnbGFFRU9PWWFzUUlwUWR2?=
 =?utf-8?B?cmFaci9ER2V4TTI2eWhob2RBTmYxSTNuVG9jSUpsUjNVRGxEUi9sNm5xZHlC?=
 =?utf-8?B?akl1M1F5Nk5Pa2ZDRllvV3FaNUkrZWlHWHJoWlBVRTZqNEJXdXQzNlMveFpN?=
 =?utf-8?Q?d07+8rI+oVlORXfzICi+NqYj3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 864d6efa-59e5-4ab2-c9de-08dd964badd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2025 20:36:33.9319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoArJSTWbUYwrb6x0Pcfz3K42MW8MvUI+gEU7D8uVcRJUvmjCAhxDiS7cB9vA4hZJG/bMCCV5Pam+LMWnw9fwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE2LCAyMDI1IDU6MDQgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTEvMTJdIGRybS9pOTE1L2ZsaXBxOiBBZGQg
aW50ZWxfZmxpcHFfZHVtcCgpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQWRkIGEgZnVuY3Rpb24gZm9yIGR1bXBpbmcg
dGhlIGVudHJpZXMgb2YgYSBzcGVjaWZpYyBmbGlwIHF1ZXVlLg0KDQpMb29rcyBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZsaXBx
LmMgfCA0NiArKysrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmxpcHEuaCB8ICAyICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmxpcHEuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxp
cHEuYw0KPiBpbmRleCBmZGRhOGQ3MWMxODIuLjgyYTc5OTZlNzAwNSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBAQCAtMTQ3LDYgKzE0Nyw1
MiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mbGlwcV9zd19kbWNfd2FrZShzdHJ1Y3QgaW50ZWxfY3J0
Yw0KPiAqY3J0YykNCj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0ZQUV9DVEwx
KGNydGMtPnBpcGUpLA0KPiBQSVBFRE1DX1NXX0RNQ19XQUtFKTsgIH0NCj4gDQo+ICt2b2lkIGlu
dGVsX2ZsaXBxX2R1bXAoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCSAgICAgIGVudW0g
aW50ZWxfZmxpcHFfaWQgZmxpcHFfaWQpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9mbGlw
cSAqZmxpcHEgPSAmY3J0Yy0+ZmxpcHFbZmxpcHFfaWRdOw0KPiArCXUzMiB0bXA7DQo+ICsNCj4g
Kwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCSAgICAiW0NSVEM6JWQ6JXNdIEZRICVk
IEAgMHgleDogIiwNCj4gKwkJICAgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1l
LCBmbGlwcV9pZCwNCj4gKwkJICAgIGZsaXBxLT5zdGFydF9tbWlvYWRkcik7DQo+ICsJZm9yIChp
bnQgaSA9IDAgOyBpIDwgaW50ZWxfZmxpcHFfc2l6ZV9kdyhmbGlwcV9pZCk7IGkrKykgew0KPiAr
CQlwcmludGsoS0VSTl9DT05UICIgMHglMDh4IiwNCj4gKwkJICAgICAgIGludGVsX2RlX3JlYWQo
ZGlzcGxheSwgUElQRURNQ19GUV9SQU0oZmxpcHEtDQo+ID5zdGFydF9tbWlvYWRkciwgaSkpKTsN
Cj4gKwkJaWYgKGkgJSBpbnRlbF9mbGlwcV9lbGVtX3NpemVfZHcoZmxpcHFfaWQpID09DQo+IGlu
dGVsX2ZsaXBxX2VsZW1fc2l6ZV9kdyhmbGlwcV9pZCkgLSAxKQ0KPiArCQkJcHJpbnRrKEtFUk5f
Q09OVCAiXG4iKTsNCj4gKwl9DQo+ICsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+
ICsJCSAgICAiW0NSVEM6JWQ6JXNdIEZRICVkOiBjaHA9MHgleCwgaHA9MHgleFxuIiwNCj4gKwkJ
ICAgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBmbGlwcV9pZCwNCj4gKwkJ
ICAgIGludGVsX2RlX3JlYWQoZGlzcGxheSwgUElQRURNQ19GUFFfQ0hQKGNydGMtPnBpcGUsDQo+
IGZsaXBxX2lkKSksDQo+ICsJCSAgICBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIFBJUEVETUNfRlBR
X0hQKGNydGMtPnBpcGUsDQo+IGZsaXBxX2lkKSkpOw0KPiArDQo+ICsJZHJtX2RiZ19rbXMoZGlz
cGxheS0+ZHJtLA0KPiArCQkgICAgIltDUlRDOiVkOiVzXSBGUSAlZDogY3VycmVudCBoZWFkICVk
XG4iLA0KPiArCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIGZsaXBx
X2lkLA0KPiArCQkgICAgaW50ZWxfZmxpcHFfY3VycmVudF9oZWFkKGNydGMsIGZsaXBxX2lkKSk7
DQo+ICsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCSAgICAiW0NSVEM6JWQ6
JXNdIGZsaXAgcXVldWUgdGltZXN0YW1wOiAweCV4XG4iLA0KPiArCQkgICAgY3J0Yy0+YmFzZS5i
YXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsDQo+ICsJCSAgICBpbnRlbF9kZV9yZWFkKGRpc3BsYXks
IFBJUEVETUNfRlBRX1RTKGNydGMtPnBpcGUpKSk7DQo+ICsNCj4gKwl0bXAgPSBpbnRlbF9kZV9y
ZWFkKGRpc3BsYXksIFBJUEVETUNfRlBRX0FUT01JQ19UUChjcnRjLT5waXBlKSk7DQo+ICsNCj4g
Kwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCSAgICAiW0NSVEM6JWQ6JXNdIGZsaXAg
cXVldWUgYXRvbWljIHRhaWxzOiBQMyAlZCwgUDIgJWQsIFAxICVkLCBHDQo+ICVkLCBGICVkXG4i
LA0KPiArCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsDQo+ICsJCSAg
ICBSRUdfRklFTERfR0VUKFBJUEVETUNfRlBRX1BMQU5FUV8zX1RQX01BU0ssIHRtcCksDQo+ICsJ
CSAgICBSRUdfRklFTERfR0VUKFBJUEVETUNfRlBRX1BMQU5FUV8yX1RQX01BU0ssIHRtcCksDQo+
ICsJCSAgICBSRUdfRklFTERfR0VUKFBJUEVETUNfRlBRX1BMQU5FUV8xX1RQX01BU0ssIHRtcCks
DQo+ICsJCSAgICBSRUdfRklFTERfR0VUKFBJUEVETUNfRlBRX0dFTkVSQUxRX1RQX01BU0ssIHRt
cCksDQo+ICsJCSAgICBSRUdfRklFTERfR0VUKFBJUEVETUNfRlBRX0ZBU1RRX1RQX01BU0ssIHRt
cCkpOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQgY2RjbGtfZmFjdG9yKHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KSAgew0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCkNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaA0KPiBpbmRleCA4
NDgzYzkzZWNkYjMuLjAxNzk3MTlkZjhhMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaA0KPiBAQCAtMjcsNiArMjcsOCBAQCB2b2lkIGludGVsX2Zs
aXBxX2FkZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJICAgICB1bnNpZ25lZCBpbnQg
cHRzLA0KPiAgCQkgICAgIGVudW0gaW50ZWxfZHNiX2lkIGRzYl9pZCwNCj4gIAkJICAgICBzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpOw0KPiArdm9pZCBpbnRlbF9mbGlwcV9kdW1wKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjLA0KPiArCQkgICAgICBlbnVtIGludGVsX2ZsaXBxX2lkIGZsaXBfcXVldWVf
aWQpOw0KPiAgdm9pZCBpbnRlbF9mbGlwcV93YWl0X2RtY19oYWx0KHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYik7ICB2b2lkDQo+IGludGVsX2ZsaXBxX3VuaGFsdF9kbWMoc3RydWN0IGludGVsX2RzYiAq
ZHNiLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IA0KPiAtLQ0KPiAyLjQ5LjANCg0K
