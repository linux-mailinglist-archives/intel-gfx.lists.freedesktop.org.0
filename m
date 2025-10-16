Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DECDBE335C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 13:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835EC10E2F7;
	Thu, 16 Oct 2025 11:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n00AeHys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBA710E2F7;
 Thu, 16 Oct 2025 11:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760615982; x=1792151982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lyay8E0Zw0qWifxSbUTIKelWBicbptcq/e4UPdNfqZI=;
 b=n00AeHysZGRJAhK3cl0j5YX0UO5v+/0BSN2x9pi7ALHMDk0hw1S46PoS
 97X1Zhs3LIS9ma0iZRBmUpq9+8irkecBuqj7SUFzE17p47J8s/H83Fd/A
 IuaJwa3OD75nE6nb6Re9X/hqTzTHNi/6PDJ2ZfHGGjL79Bjp2eirPY74V
 xqswAZQ4EbZOLUhmaU6WXzrUg2Oj6deH/gNc99L608WhpfNvYuiEbDUX3
 aY7kDqrYIDAHxYEd/E1kcnUjb2rAkAGbNMNOAxSIXS14y2lVu0dLpOlbs
 QkPSOpvTyszPG3e+P8m72HA2lLiK5VyIdDEqthZCk8u2fxREBf4r1xIPy Q==;
X-CSE-ConnectionGUID: RFlyFFQZRrSjD/PSLBPIUg==
X-CSE-MsgGUID: xfoTOEWQT02f4YVh/Up/vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62704553"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62704553"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:59:41 -0700
X-CSE-ConnectionGUID: 0cMPf06lTpq0qJKw8QXwKQ==
X-CSE-MsgGUID: OFpvbwsNSWy7kvvf3JprEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="181567101"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:59:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:59:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 04:59:40 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qm6FB4UXhB45vkr+se+fh8vnyX+Vjmwt1RCQRS0t3sZC89MUS4dh3Xn92xesJ2g0UUjE54pqZHTnbkjBkZVrN2+gamlZXnTezQTrQrW6Fwi9TmIm3iLOj0OSsAv+o9ssuaL+ZRP1cMkLwjsUS124JjMid2hPiFM7VD2px77UJxMTh2dNORTx4yx2V9uWJs0IU+KCS8pDczacnvO598p+kVG0td95+0beNGerblLdiIZa5bdoYg72ZqP2Sc6NfNUju+BJ/sbASgonY09piHT3cPgMp15689yLdZGFn35OQnSUjkczZhxNNM00kWzVgSEhB/Gh1zjLN+2gbIanD3D1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lyay8E0Zw0qWifxSbUTIKelWBicbptcq/e4UPdNfqZI=;
 b=axJOUyGviI0XSIqyFlgMdkHTC6654TRsmW1beo9PxsL7XPREItxoAWTFvGVQNiamC4oy5ENh52IjF1jjaJ3j/T6zytqgAGDEzQhJ2ehlzHfPj7FU246U5s9ngqXPD4ohdEVEs2tzqPZnXUjwUlewfP5QPrxSShLMhRkB+RCxfFzs3VqWsNNsAi3z/VRgQiHTUOVm2zpLDrMmxMBmBNaTT/OzMfT75voBMuREUJA6Y9mdft8gAAhRbESN+mh5W6lofay36PXhzHJ6oXJ4o8OmMCDnyhxXaEyYmy2KiKfO/G4Xhn5HMqQAsv1WOe4t1GiU0jlnxScyRyp4puIrtKSVZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MW6PR11MB8365.namprd11.prod.outlook.com
 (2603:10b6:303:240::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Thu, 16 Oct
 2025 11:59:38 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 11:59:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 9/9] drm/i915: Neuter cdclk_prefill_adjustment()
Thread-Topic: [PATCH 9/9] drm/i915: Neuter cdclk_prefill_adjustment()
Thread-Index: AQHcPH8UYRwoWhpCuUqGj+Ia0nodTrTEr43Q
Date: Thu, 16 Oct 2025 11:59:37 +0000
Message-ID: <DS4PPF69154114F4A886367A351863C6B26EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MW6PR11MB8365:EE_
x-ms-office365-filtering-correlation-id: f85e62d6-5ed9-4d9e-ed96-08de0cab7b49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b01NU1hNRFNKaGcwejdCQmMzTTNXbVkvME53MFNRZFdaa2p4WTdnVlp4TlVj?=
 =?utf-8?B?V2cyMGJsSGpiOXYydkh0anQ0eGFyQllsQjVGSzVZWGJrZHBYQ3ZwWDZpRTlS?=
 =?utf-8?B?S1ZIUUQ3RHFmQkJSNDYrR3dXR1AxdzY5N09XNnVXVVBVOEFVNFZMTEZsSVdU?=
 =?utf-8?B?VUJRbDFVTUs4WWVNTjZtMXZRc0RDbElEZ1NqOEFDU0FBV1kvWGVHMHFLSUFW?=
 =?utf-8?B?c1JuZUE1aFMwVXZpVTY4S1M0NDZjb2xhcHZIa2pVZHFMdjF0Ukp3b2gzOTNh?=
 =?utf-8?B?MFNaWHRnK1d4ODl4ZURNdmNpQTNwQ3N5MXB4NFNMRlZDUG9mUGlKcm9pTW16?=
 =?utf-8?B?VXBtSzJMNUxvcE9KSWlmd01lc0N2eGw0c3E0K0owRnVsZVNrRlZucjRyQUYv?=
 =?utf-8?B?WGpFT3JqRVo4MmNVNXVFczdDREluTnVoVXplMXhnd0lwaEpIUjJScU4vMmli?=
 =?utf-8?B?K21FQU80a2MveGtUNFZVdFFTVWhRcUtPZzlDNGxRandVNTdySDA3UkpTK1lr?=
 =?utf-8?B?Mi9uRDYwYU1LTXMrMkRlSjRCcTRWU1ZTdytzNVdNZnQyM0kxa0xjOURBQjhr?=
 =?utf-8?B?RzY4UWZwSmFCM2M3YzFLSjROblVEcE55MHVXZFNUL0VUWTZLbzVERmhaa3Fs?=
 =?utf-8?B?Nm5maW5HdWNHMHd0TDE4eUtIV3djUXc2RVJTb1Nqclp0c255eU1IcTUraXBl?=
 =?utf-8?B?ZHZHdWN6YkJvU0Rhd2VNd0pnaFZQNnl4d09qYU42azdwYmFxdHBUT3ZhUEYr?=
 =?utf-8?B?OGVqb2F4eENaTmMzK3NJUnpjb0gwdzNaS0pML3p2ZGlkMklnL1NlTTJQVkdE?=
 =?utf-8?B?UUE5NVBoOW5ueUN3WEsremQxVTE0RVNOdmFGd1hjd2RRZXE4M0l0MHB5SVM3?=
 =?utf-8?B?SW1WdG4wU1VQL3Q1UEdkajZzYi84azJOcC9ocnRUQnVab2tpUEE3ckE2cjdI?=
 =?utf-8?B?akdqM1paRDdDRmd5VHVSb1BaUnRBVFdHdURHQXNBc3NGdHlxcVBPeFhoZlp5?=
 =?utf-8?B?eUhOdkVUNlZSdzlseER5dm1aQm11SHE3ZWxMYUdiNUhBSStLRXdXNUREY0lI?=
 =?utf-8?B?NUlpeE5SM21PZUlUQWx5cC9zbHRya0NjbDJKMkFGeGo3dlVUa3JvVWxPWmtK?=
 =?utf-8?B?ZllySllPTXE5M0ZKSTNlYkU3QzFUc1pXWEtmWENHL2FnaWV6N0NqSGFVZ1pD?=
 =?utf-8?B?K2Z3L0xDVTNiRmhjVHViQXdiTkVheUxXeUlYd2RWbk5SZlVUMXhVaFp6aUpR?=
 =?utf-8?B?a2pTd3V4cHhIL3ZpT3pTWjk2T1dJZmxoYzY3Qzkxc2swVWt6cm1Fanh3aFpS?=
 =?utf-8?B?S0tvV3ZDYkhIVGtxak51YmhIQ094WUFIa2hkUU4ySE9ScVBSVVBpUi80MXNG?=
 =?utf-8?B?RkVPdE4rZTZCSk1wbmpwaWp1T0NkeTlWMUdpbTllTnAvS04vTFJtRnBuU3Qw?=
 =?utf-8?B?anpvMDlqc2xobGFKTENjZi9acHp6N0RVSVQwM21ESDNFckhzdThqb0tKVjda?=
 =?utf-8?B?Q09lQ1NJVUF0TFBhenJLZEhPQXdOVWJOWE91dW03UFZwV2NEdHlzU3h1cnNJ?=
 =?utf-8?B?bkFIUnNURURMYTROT3I2VGpzZVdmV3k2bG5xZWU2dGRCMlhFUEsycy9jM2xC?=
 =?utf-8?B?UndxdTNFU1MzbzBETEtxV2Y5M09ObWtHaklndEovMFEwQVdTdmtjNU8rb2sr?=
 =?utf-8?B?cHJuNDUrV3NOQlpJZ0ptRU9wRE9VMjEyRmU0dUY0MGhBNURaUWZha2RWTjFU?=
 =?utf-8?B?WWJzcSt5YTlZVjVmTHA0MDhVL1V3MzBya0FSRFdYbjlkOHZQWjUvZi91OUFy?=
 =?utf-8?B?a25pOVQ0bVBJVGdTMmRDanFqR3k2MG5yY0NkeWxIK0dOZTBsQ1h1bmhadjh3?=
 =?utf-8?B?c1RFZWsvaFdrKzhYc0JNMlFaWGpsa040Z1orZllieW1uVTdqVFhpN3BXMzNh?=
 =?utf-8?B?UlBVTC9acjM3d1QyeHdmS0xEN21RMWgrSkQ3blEvMTRzQ1JQd3haUTJRK2Uz?=
 =?utf-8?B?dDhkdGQ1YjVGSnlzaDRIOXEza01VODdtblNMTERQa0hvK0U5c1E0MFcvdFNF?=
 =?utf-8?Q?3XLqLL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VE1XRU5lV3N3Ujl3S3pKbUgxRDBCWTZuaHlaSmt5dkFpenB0dU1pc3J0Qmgw?=
 =?utf-8?B?UmhTT21MVk9FSlFBeTZOb2pxeTVKMWNsTmVJK3hmL0dUZkhrekkyY3ozbG01?=
 =?utf-8?B?SUFpcnhKLzhLeSs4QmN2eDNmVVZjRGZ2bkxJQTU3VEpxNE9JdThqb3dzMWxR?=
 =?utf-8?B?VGQ1UG5sWUFLZjZva2o3NXZlMVhNVW9sRXNaZDBNK0loaGt5ZVZhODM1QWcz?=
 =?utf-8?B?RjZLQTFHNFIreXo3SHR5VWp6REwrZjZyYUhmT3lzTzRlUjZCNDlHZjV3NGsr?=
 =?utf-8?B?Mk5SeGZyR1lBOEtXcG9iaHltdzV1blJrSFJFZno1dEpvZDJDalhISDRwM1pQ?=
 =?utf-8?B?bldWemZsTW5qQkttVG1NWDdUWlFQMmNFUDQ3MFV4RDcrbzI4clgzTXlicFVh?=
 =?utf-8?B?eXNTamVSaHN1NmU1VVA1RCtGYmV5ajVPVmJPbndzNklvek9pZHdtM0xIeHZk?=
 =?utf-8?B?TjhPUW53TncvZDN1MDQ0c09JU1ZuaWR4YUVxZEo5NTVEUTVtNStrU21PWGRM?=
 =?utf-8?B?aFNuWFVRU0RKbjJmNWJHWWZibnpyUGdMWnlnUTNaK3BnUlRseC9YQ3dzcDZT?=
 =?utf-8?B?V2hFbUlSL0RQeDJzNENKOE5LRmdHT2w4dHZhTXhzOTFSQ1ZUaTk4bWtMVEdV?=
 =?utf-8?B?eEI2Q0hQSEJVT1dWMSs0dWh5ak1WU3V4Y2pRbnB2OHQxL09yK3lNWnErVlFU?=
 =?utf-8?B?MHMxRWJnWW1wc1J6YkhDZWMvSFh4VzdURXhDU3dmNlkyZE44Nk13R0ZZdENi?=
 =?utf-8?B?SE9rMXVJZVlsdGJLQmxRb3QwbjhXUmVtdms3UVR3Si85QzRWanpyV3c5b3Fh?=
 =?utf-8?B?UjBVbTg1NkRkT2R5TEhkNVFIL2JvL0RGcXRUcmp2V1c4RnppOHhCbTIvWUlF?=
 =?utf-8?B?RWJ2c0daTGJCT1RianVXQXo4Zis4STJsdWhPdTA5SmI1Wis4b1ZsdHh0WHhj?=
 =?utf-8?B?dGpkTlJGSHV4aWNYdWR6azk5bFNUMVVaTXNzVWZsOHN5dzBwcFl4MXo3bS9V?=
 =?utf-8?B?TmxuYnVmWlYwakJseTV0ZTBtQWxxTzFuejVvSXJIaSt0aTZ0WGQxUDhHK0Jk?=
 =?utf-8?B?cUg1RzVRa1ZKTUw1UzM1cWp5R015UUtqUXJtby9KbWpLVXAwNG9CNzlTZ05u?=
 =?utf-8?B?QlltNWpSVktkenVrTTRpNFFuWW1mMDd2ZWFqUEIwTzM4MjBqL2N4NzFrYzQr?=
 =?utf-8?B?WE5vQVBBUmVtaGlhRjdZekxqdUxFUUVtaUQxdjdwbjF3Q3J2MksrVzFOVlBN?=
 =?utf-8?B?bGE0dXpKWWd5UXBhMVM0YldzS2pCUTlraWxHOWgvWHV4ZFZLNVdzR3hncWs5?=
 =?utf-8?B?Q0lDcTNPZE1hMFh1ajZPUWFXTkJScFdHZGppaWQ3cER3SG4zZ1JQYnlzS2hm?=
 =?utf-8?B?NWR4TElHS3loTnZmdy9DQUNCMVlxRzhBd0N5QThUU3hLL0hNQ0Vpakg2WWlI?=
 =?utf-8?B?Q25mRThiOEpyRE5WM080eFE2REdob1lqeWlkakZpbmdkQkh1Mk94VFh1OUhG?=
 =?utf-8?B?bGZxajVKem5URGVSMW1vNFE4VURKRzVnNno3QXNhZis5QjNzRHV1bnBhc3d6?=
 =?utf-8?B?d1lHNzcrVVVrcDlFS0hPeUlXWTZ2T3I5M0FhemZDSytpNzc4Q0lIU3gydG5H?=
 =?utf-8?B?dXFCZzJRMW1YQ3FBSWFmamRYWDFPWGV0ZzhCQTlJSExIcnRncHp2ODQwWHhY?=
 =?utf-8?B?a1gvZWZFT2MwVXVTTkJvOVhFcXpaTUVjNS9wMG44ajdwY01zNk1wYmJpTExs?=
 =?utf-8?B?aWQ4clN3bGRBb01ZT004RG9hV3N4d05aUFhHUDRkVEhkMlhWeVJDY3AwWkth?=
 =?utf-8?B?S0NBdjd6L3NxSEJQTnZOSE4vbVltcXYvOU1ScFo0UHJSZk5WWTA1R1MwK1h1?=
 =?utf-8?B?U2ZUcitFY2d3NDlKUmt6RzJsL3RVU0pNVS91U3ZId3VkZ1lhNmJYV0cxdXdC?=
 =?utf-8?B?VVpDY0dIZ05ZYnoybTRhS04vaisvMThZL2dPOTdTTHNnNnczR1RjSEUrSlVK?=
 =?utf-8?B?UWdxc3g3RzN4aDh6czk0bXR5eHRobVptYlNWVTcxY1hjVWhxaFRHS2grdVFN?=
 =?utf-8?B?UWlaSkRBK0JWdWhGdDJqemlrbGRlWkMrR2hQS0hRL0RRME1FL2c4VDVwUGtN?=
 =?utf-8?Q?AVBJX9bdTXMy0uJr078M1Ja57?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f85e62d6-5ed9-4d9e-ed96-08de0cab7b49
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 11:59:37.9965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 13ELHez/cg+ynrHpzILEmujSFliazaTVOKHoEzRU8JHHfVTzQC9zw8LMLdyVmX8C0MOSWDTzTdUHOFH3S/WVHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8365
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgMTMgT2N0b2JlciAyMDI1IDIzLjEzDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDkvOV0gZHJtL2k5MTU6IE5ldXRlciBjZGNsa19w
cmVmaWxsX2FkanVzdG1lbnQoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IGNkY2xrX3ByZWZpbGxfYWRqdXN0bWVudCgp
IGN1cnJlbnRseSB1c2VzIGEgc3RhbGUgY2RjbGsgdmFsdWUuIEFuZCBldmVuIGlmIGl0IHdhcyB1
c2luZyB0aGUgY29ycmVjdCB2YWx1ZSBpdCdkIHN0aWxsIGp1c3QgJ3JldHVybiAxJw0KPiBiZWNh
dXNlIHRoZSByYXRpbyB0aGF0IGl0J3MgY2FsY3VsYXRpbmcgaXMgYWx3YXlzIDw9IDEuMCwgYW5k
IGl0IGp1c3Qgcm91bmRzIHRoZSByYXRpbyBpbnRvIGFuIGludGVnZXIgKGFuZCBjbGFtcHMgdGhl
IHJlc3VsdCB0byBhDQo+IG1heGltdW0gb2YgMSkuDQo+IFNvIGZvciB0aGUgbW9tZW50LCBsZXQn
cyBqdXN0ICdyZXR1cm4gMScgc2luY2UgdGhhdCdzIHdoYXQgdGhlIGNvZGUgZW5kcyB1cCBkb2lu
ZyBhbnl3YXkuDQo+IA0KPiBUaGlzIGlzIGFjdHVhbGx5IHNhZmUgYmVjYXVzZSAxLjAgaXMgdGhl
IHdvcnN0IGNhc2UgKGllLiBzbG93ZXN0DQo+IHByZWZpbGwpIGFuZCB0aHVzIHRoZSBhY3R1YWwg
cHJlZmlsbCBpcyBhbHdheXMgZ3VhcmFudGVlZCB0byBiZSBhdCBsZWFzdCBhcyBmYXN0IGFzIHdo
YXQgd2UgYXNzdW1lZCBkdXJpbmcgdGhlIGNoZWNrLg0KPiANCj4gV2UnbGwgcmVwbGFjZSB0aGlz
IHNvb24gd2l0aCBzb21ldGhpbmcgdGhhdCBnaXZlcyBtb3JlIGFjY3VyYXRlIGVzdGltYXRlcy4N
Cj4gDQoNCkknbGwgYnV5IHRoZSBleHBsYW5hdGlvbg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMTQgKy0tLS0tLS0tLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJr
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRl
eCA5ZGY5ZWUxMzdiZjkuLjFiMDYyYzZjMGUwMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTIxNDgsMTkgKzIxNDgsNyBAQCBz
dGF0aWMgaW50IGljbF9idWlsZF9wbGFuZV93bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwgIHN0YXRpYyBpbnQNCj4gY2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAtCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gLQlzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9DQo+IC0JCXRvX2ludGVsX2F0b21pY19zdGF0
ZShjcnRjX3N0YXRlLT51YXBpLnN0YXRlKTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtf
c3RhdGUgKmNkY2xrX3N0YXRlOw0KPiAtDQo+IC0JY2RjbGtfc3RhdGUgPSBpbnRlbF9hdG9taWNf
Z2V0X2NkY2xrX3N0YXRlKHN0YXRlKTsNCj4gLQlpZiAoSVNfRVJSKGNkY2xrX3N0YXRlKSkgew0K
PiAtCQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIFBUUl9FUlIoY2RjbGtfc3RhdGUpKTsNCj4g
LQkJcmV0dXJuIDE7DQo+IC0JfQ0KPiAtDQo+IC0JcmV0dXJuIG1pbigxLCBESVZfUk9VTkRfVVAo
Y3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSwNCj4gLQkJCQkgICAyICogaW50ZWxfY2RjbGtfbG9naWNh
bChjZGNsa19zdGF0ZSkpKTsNCj4gKwlyZXR1cm4gMTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50
DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
