Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901FFCB4F33
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 07:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F7B10E2A2;
	Thu, 11 Dec 2025 06:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SaZSeahC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9801E10E2A2;
 Thu, 11 Dec 2025 06:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765436372; x=1796972372;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BmNeRhLSgSgQzvK03Ys8R7KpIfbZapU1wtPyLh7IUMk=;
 b=SaZSeahCdWV+oyfBNkVHwq1AAuUeccCFOBTQPYIIVNhJ8CSGHhkKjqX+
 ti11Pq7PtmZ1Y5wCVRXTCAjLxGCsbGqHjxYKBq7hFwISBnOcpKnod7AXp
 VYVX13NDL65T8aCCaNMVlJbAnGDln9Y5dpW6B+UwLabq8LAGOfu3T8YUb
 yxOXZE8mYjysCvVaeAFw2iNHMdiaPbrZ42g7YMqBnNnHyk9ro6KMWZM81
 e3oiYmiZ1AZ686CLJEdNLG9YJNnsnwjgeMMS2VvUpq2r2Vy3o1Vqylfzh
 aNqrCf31bJqsv/3DA/8T27X8/L36fd0j6X4dfQF5y9dPr+aewXnEIyymz A==;
X-CSE-ConnectionGUID: ab3yydirRYy8j3eCLxpZGA==
X-CSE-MsgGUID: 0x14aXq1SR2ecK5x6PbTFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67463687"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67463687"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:59:30 -0800
X-CSE-ConnectionGUID: dZ7q9Y9DQlOEazgPlilapw==
X-CSE-MsgGUID: piYWYz/9T9mFUZBj49c0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196781562"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:59:29 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:59:29 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 22:59:29 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:59:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U9BM2yjrWl5Yw+Wnlx2kXFVlXGqOit0DVP9/nRoGG3pWohbVGhjVCFvEbgbpAA3pDMAM0afT5Sa0BfPjP3Wbm5Ywa0pVT+BhrR9WuA882Krz2fRhRB7IbyWWkhxBwsUOOEht8z/AGAbGjKuj51V9ILEZ6If5SIxL8rjUttB07hJ/a+l29ghZeHdg4Qx592whoEeVfw48PCzhwsKuVzIwduM97LJ276JN88ye7lBFRk91xHeEe9lIjtY4+i73SeamZjThaadmYyTDz03Z50QDOfogZtUKjlloKPhuNSWaUO6IoQRCBdz6KH/wAzsrDDj0bk+KXlpJk4oLEQ6rzY1Eng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BmNeRhLSgSgQzvK03Ys8R7KpIfbZapU1wtPyLh7IUMk=;
 b=bzs29flgOXLVa+D2dz4keAnucAI27S9+x0ZdDQU8T/J3S8sFJ8gR1py9eqhhJSXH3QC5VpHhX7PxvIEK/NsUolyytNZPs3GI0X5OBfEvOZSzLSntLqxfryy9ssmyJGmVTMh+7eosD06fWXAD3ODfknmSkoFa3v65qdDoUwcPPYjpITdOJBwBe23vrLu2VZWj/v2WNJ/3L37haUmnWIVLiKhV/s1KvXZa7kkhBUnaOvbdQON+3qWfPPH2GQqivTCZr4jh/xy1Tp25YRIp4dGLKlgWb/CekL7edSAeQGx24UUAaxZ+qda1q1cj5MnKXEDP2G58jnP91J2q4HR8w/3/ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 06:59:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 06:59:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Thread-Topic: [PATCH 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Thread-Index: AQHcX9Flw5Tps6QqDkqV4/0wBdqW+rUcF7oA
Date: Thu, 11 Dec 2025 06:59:25 +0000
Message-ID: <373f8167ff21a16c8856f3c83499c7176e4b1890.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-51-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-51-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5937:EE_
x-ms-office365-filtering-correlation-id: 98eba87a-6654-4849-a747-08de3882d223
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Q0hZaXJrd1N6NFV1bEluMC9Eckc5WnQrNXlVKzIrenhJV3ZhN21FclBwOE1J?=
 =?utf-8?B?bFlpYTl6eFhWMmtHSnhhUDVNQXlyaDBzTVRJRm5ON2ZoZXF5QlBYN3VwSTFE?=
 =?utf-8?B?UVdnTXpNdHB1SDNyMjRoMDVXQ1hxd0hCOWtzUmxGZGVya1FqZ05sVlVOeWU0?=
 =?utf-8?B?djRxYThGZkg2cmYwRVVWWGJvMHRxRDZrM1E1UWRJT3cwak5mam9KSmZ1VDlm?=
 =?utf-8?B?eGxsOFViaTltS2krZjBNbG01LzdUZFIvU0NJV2VRcTdzalRLcEVRV0pOL2hG?=
 =?utf-8?B?Z05UUEc3ZWNuYVB1Z3lNdXY2Vjg3dGhaN25KYVEwamU2WXJ5MmtOakdweTMv?=
 =?utf-8?B?ZCtNU3d3MCs0RE5CZlRHUXlYeDllWmE4QnM2dUJaMGczK2d1TXhLZW8vSXNH?=
 =?utf-8?B?SXNpYmlib2g3WEhxT05GU1BJWTB0RXJTQUF4NVpFc1RZMEI0OVpsSXVaY2dI?=
 =?utf-8?B?a3FielVhLzJOL3pHYVI1S1cwMlV3WXlGTWRmbUkxeWlXcGcrVGZobGNBL1Jo?=
 =?utf-8?B?SUc5RG1mTDVrYUtobnJWb09PTlo2NHpaYUZqUW5sVEZ3VzRlRE5kMCtwZWVY?=
 =?utf-8?B?ZjlUK1ZXZWJ5a1FSLzlBUFMxcERBNUk3SXd5TU82ZmE1WjU5MkRTckZuRVo0?=
 =?utf-8?B?S1NmN2RJZVV3N2Eyc2l6RmJzU2x5SUNuY2xtWTFqallyU3VyWHg2MGc3Z0Ji?=
 =?utf-8?B?Z0pMMEM3dk5zVmdwQUVaTm9JOVJMczZyQ2Fzdk56a3F2aFZNR21RUVUvbWxj?=
 =?utf-8?B?cmFKc1FqMFJzQ3h3dStYVWc5RmRPNTRPMm5QelZiMFZXSnBvV1dWNGdFQW1m?=
 =?utf-8?B?K3ZROFM3R3hNMzZSNkJaVzIwK3V5NlFxR3RpbHBweFRFaEtzWkNEUUxMU0hJ?=
 =?utf-8?B?a2VtWEdjZ0J0L2oxNklpeURJU1dzNEpJUitrTWJpbHJiZWROcnI3dlJzRFdj?=
 =?utf-8?B?ZzZZZ3NiTStKa1RBTDQ1dERPNTJEWGZjWTJJS3pmemFFT1VyWDhGYTlBV3RM?=
 =?utf-8?B?TlRtcGRlNzZmc2syZE9XNVpHR0ZYcGlmSW52RnNiWktyR0xLdUpQcUpMYVpJ?=
 =?utf-8?B?cWVBNWQ4Q2Y2WWxHMkd2UmRYZFRiL2dQajRKZFJHTjRsQU00TFpwUU5EOWpI?=
 =?utf-8?B?bzZnWkttZGZZdVVsdXNUSmtkYVFiZUk2WU9SRU5qWHNMK2RBbDZRS1N6SGVv?=
 =?utf-8?B?eUl4OWNDVjhIQTZCU3VFY3NiQjlldFFBMmV1Y3cwRnNIV1BwQThVL1ZrVERP?=
 =?utf-8?B?Z3ZHSlMwOG8vM2VWZnpFOTh1SDErMDdpTGIzUXgwQWNMdXIvcnJNMU5lYjVG?=
 =?utf-8?B?anBucWR0OUVGbGdZWklZbm1Ib3NhVVJITUFndjViVHpJVjVQSmc0WlBJeWVP?=
 =?utf-8?B?QlRYK3BmS2tFaHhzWEpjcFZvYU5ObTRSRllNcUkyMWNSMFZjdkdoY3RzZnFU?=
 =?utf-8?B?dTBHdXh4WWp6VEtQcUcwVzdaUkVEQmJBblNwanRGeTFFOW9SU0pGMFZtM1FT?=
 =?utf-8?B?RTVmYlg5VUVwMVh3NnRxQXUrQUxEZ3V5bVZIZUtSVm1qbzFRaEwwSzI5SUlp?=
 =?utf-8?B?NWxMV1lJcWQ1WU1mR1BncTlUVjJhcnk2RFRaQUdsZkY2MmRVaHBqUzNUUDVB?=
 =?utf-8?B?bjlVR28vNGVhZTdLYkh4SDZJUXo0N2FGTXFvQTJ5eUlwdnNIRkZnaUpBVjdL?=
 =?utf-8?B?M1FMNHg0V2R4WnFKZ0RIajRxVS8zZFFUZ3l0RHZjNnowVFErdXRSeW8wL1pQ?=
 =?utf-8?B?R1RtdzFBNXphdGtLa3pzTElTZUFKTTJUdjc1SHJrNWdtNW4rZTRZWkNsNnho?=
 =?utf-8?B?VE5Eb2tYczVhQVMzT3RYY05oZjNBYUJETmN0NVdPN2dseGlGV3IvMlA4d3F4?=
 =?utf-8?B?TWFmQytCWVhtS0tUSnZFalhLL1NhNjRvVU01b0p1SHR3aFQ1RXRJV05LaThh?=
 =?utf-8?B?Y2xjWUlKeXhwTkRPTGpoaUZhYmVJT3NpV0hRMUppL08rY1JqckpkeEl0SDFP?=
 =?utf-8?B?QmZrZGNHTUpsbHlRQXdWVjdwU0lHR2ZMSUVyWmJOWnhxcWRtRjBUNEhQNTFD?=
 =?utf-8?Q?QrradH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qk9HM3NWbWlhcXc5RU5nZnlSblBkQTNQaklDMHBnODgwSmFzRGFTcjJiR1JN?=
 =?utf-8?B?a1VTNFRrUzczMFpBUlVPMDF5UFBGWDBOM3RFSUVyeWxkbFBzc0g3ZWwrMGI3?=
 =?utf-8?B?WUJGaDUwSFVxU0xPYUh6Ym12RGp1N3pBT05uNm05SC9XZlUzNDZXUFVsYlJM?=
 =?utf-8?B?YVJaMXlsajVDZFNyUzl2eE9nT0NtR1JNdmV1Nk05ODF0TGdWMk9ES3FWM21D?=
 =?utf-8?B?dWhzZW43US9ORHlNNjNnR0lDQ2hKanJDSHY5dTZSazN4Znl5bVI5anlzK3By?=
 =?utf-8?B?Z0IzUHltWGtvb0Y3OC9UVGN0Uk9FWlFIZ0Y0WGVIRVg0UXRHU2NEYUF5enFj?=
 =?utf-8?B?SUNrNW5BRE01OFdpMmgrakdoVVdmTGw3Wm1sRk9tMXJ4MExLbzNPMUpZNzRR?=
 =?utf-8?B?L0xST0w3U1hoNGRFV3BRRlErUXB0WlZGbkUwMUZNOXlkVTZSNlNjckx1MDNh?=
 =?utf-8?B?ajFkSWdZUld3WEMzbnVWUnFhemx2Z1N4anJ1WjZ4QjE0OHBWMEZDOXg3aHBY?=
 =?utf-8?B?SCtjclNvT3ArMHlnMjNqeHlYZWxLaWlSc2FYbTN6cWVFdnIyMi8wWmhKVEgr?=
 =?utf-8?B?MEtOSGMzNzJTRzFhK2p5OUFVMGk5eDJ4R1djalBJNVY0REZHdTd5dlB6RFFB?=
 =?utf-8?B?aW9SRGF0VDNzYmZSV05rWndiVCs4L2RyRTJWL2tZSXlRN21tYnVOREl0SGFX?=
 =?utf-8?B?OC9wT1AwRVJoTURBR0JnN0xsUGdOMWQzWUkzT2tydWk1bFJOOEx1OXE1TUtz?=
 =?utf-8?B?RDNMdXJESDU3eXpOSjc3WXVFTzFMbkgyMmw5MFBVOU03MktGT1hseEN6NVAy?=
 =?utf-8?B?WklrL3kwZkVnVzUzV0F5R3RnUDJNMlVGaVpZMVQ1aXVsS3gwaWVmYlpuRGpO?=
 =?utf-8?B?b1NwdFhXMlplc0FiTkU1QlgxOGRld1BUSXlaWFpkVFBjbGh5SVZobFpPeTlT?=
 =?utf-8?B?UWZCQlRMWHo0NlplZ3Jvck9lcFM5YktZTlpmWE1weDlaNGdva3Q2NUJ6dldR?=
 =?utf-8?B?STg2UEVRenhkcVVRNXNOZU1YZVA1ZUc2T0FLQ3JaZ29tbllucFQ5LzVlTVdF?=
 =?utf-8?B?ZU1pMUUyZy9VS3ZLaGpPdjhnUjBrY0FDQk9XN3BZQUZjTkY4Qm1oKzJuYUhO?=
 =?utf-8?B?d1ZxVjI5cSt1T1FvS3VtS3EvZzJ1ZEFvUzdHZ1A1ek9XbDBtd2tWZis4RkYx?=
 =?utf-8?B?WU5MRkR2M3pxZ0RDQzc5YTZRaWthc2R0L3VuY0NhWWlhZWsvYXRaTzkwR0J2?=
 =?utf-8?B?ZUhCWFo2R1hEWGdZcS9OdzBNK0JBWHI5bGZpVmZwVjA1MEtiYXdudlVvVHRs?=
 =?utf-8?B?bDJtTk1pOFRxR0dnYjU4MzllQU1pL0h0L3NnN05LcDBQU1QzNHQyeFBxMW9M?=
 =?utf-8?B?ZDUwcEJkQ0lXaGJWUmQ5bW4vZGhwZVNrS0dQMTkyUjdLRVY2dVlpUml4NHVI?=
 =?utf-8?B?UlZWdEx0M0pBYTRscE1YWDNGYWlpam9JK2RhbG9pcmlRakEwejZYYk9wWWxz?=
 =?utf-8?B?WHczTm5hbkJmMVM5UzNValA1OFpuYlBNQjFWcFdtZHhoTzdFVGJCMGl5Z3ps?=
 =?utf-8?B?Y1pMWk13S0lIekpQNWVWOU9EWHNOelZ0QnZPSmxlSXBZOWlSTUFLL3ZvV2p1?=
 =?utf-8?B?NERKTnFJZE0wUEFGSUpXVTFOdDlsdUIyemIzZW1GcGtuN3ZzRUhxT3FFVVRn?=
 =?utf-8?B?NDBhZUxPU1ZzNVYxUXY5V0RXNHZWS25zUDlKNkhvU2w4VkJCZmhEaHkzaXk3?=
 =?utf-8?B?bkRTdWRGTmhFOFI3TEVzY2s2bW1iMXBYSVd5azk4TXBEMHA1eC9TbTBNQXVw?=
 =?utf-8?B?cm5QLy9zRlcvWTc3UndhZ21BRURneWozcThBR1Jkd2hPZFFucE1MalNNdnpi?=
 =?utf-8?B?K2xTYXFKZ2p6WFhUQ0NIblpJUFUrNEZibDVjOHJObXBmajJBeUg5SkgzTFVs?=
 =?utf-8?B?VnZVWHRLTDB3K0JCMW9xYXh2b0xOTmpSRkpmVkpxc0w2aGtmc0dzM3ZCdmVk?=
 =?utf-8?B?K0F4YlY2ZlQranpPdTBWMXRQRHBBdlphc3JTaXlzaElLU0MxUGNGODZqSCt2?=
 =?utf-8?B?QjNlVGhWNFlRdUlEdWI4SHNweXZqWWl5OHhLOURTbjBzMityNHU1WW1sdVdP?=
 =?utf-8?B?QVNpWkszTFZIQzUrOEFXRmhvditwWFdPa2YrUHRFWCtoRWtLb1Zxb1U3SkFI?=
 =?utf-8?B?YmUyaWJ6RHRxL2tGSEpiYVZ0ZVRhbWcxeEdweUw0TmJEa2JxRC9RVW01NkxD?=
 =?utf-8?B?YkVadVVDK2dLYUdlR1JsOGlrNGVRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD7185A0DAA102468AF4B58C549F8E07@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98eba87a-6654-4849-a747-08de3882d223
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 06:59:25.5208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ew0upI8088g7xuHT36F5zJBT3kxVr8UngkzY2T98dWdfBjSauI1KQsR5lY72hrOK5swFGvACg169k7D8dvjTvT7+wu7R8NBq65PLFbDB1Rk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFNp
bXBsaWZ5IHRoaW5ncyBieSBjb21wdXRpbmcgdGhlIGRldGFpbGVkIHNsaWNlIGNvbmZpZ3VyYXRp
b24gdXNpbmcNCj4gaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb25maWcoKSwgaW5zdGVhZCBvZiBv
cGVuLWNvZGluZyB0aGUgc2FtZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMzUgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDAzZjRiMThjMTE3
NS4uZDQxYzc1YzZmNzgzMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBAQCAtMjM4Nyw3ICsyMzg3LDYgQEAgaW50IGludGVsX2RwX2RzY19jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJJnBpcGVfY29uZmln
LT5ody5hZGp1c3RlZF9tb2RlOw0KPiDCoAlpbnQgbnVtX2pvaW5lZF9waXBlcyA9DQo+IGludGVs
X2NydGNfbnVtX2pvaW5lZF9waXBlcyhwaXBlX2NvbmZpZyk7DQo+IMKgCWJvb2wgaXNfbXN0ID0g
aW50ZWxfY3J0Y19oYXNfdHlwZShwaXBlX2NvbmZpZywNCj4gSU5URUxfT1VUUFVUX0RQX01TVCk7
DQo+IC0JaW50IHNsaWNlc19wZXJfbGluZTsNCj4gwqAJaW50IHJldDsNCj4gwqANCj4gwqAJLyoN
Cj4gQEAgLTI0MTMsMzkgKzI0MTIsMTEgQEAgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZp
ZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJfQ0KPiDCoAl9DQo+IMKgDQo+
IC0JLyogQ2FsY3VsYXRlIFNsaWNlIGNvdW50ICovDQo+IC0Jc2xpY2VzX3Blcl9saW5lID0gaW50
ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudChjb25uZWN0b3IsDQo+IC0JCQkJCQnCoMKgwqDCoMKg
wqANCj4gYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaywNCj4gLQkJCQkJCcKgwqDCoMKgwqDCoA0K
PiBhZGp1c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5LA0KPiAtCQkJCQkJwqDCoMKgwqDCoMKgDQo+
IG51bV9qb2luZWRfcGlwZXMpOw0KPiAtCWlmICghc2xpY2VzX3Blcl9saW5lKQ0KPiArCWlmICgh
aW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb25maWcoY29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlLQ0K
PiA+Y3J0Y19jbG9jaywNCj4gKwkJCQkJwqDCoCBhZGp1c3RlZF9tb2RlLQ0KPiA+Y3J0Y19oZGlz
cGxheSwgbnVtX2pvaW5lZF9waXBlcywNCj4gKwkJCQkJwqDCoCAmcGlwZV9jb25maWctDQo+ID5k
c2Muc2xpY2VfY29uZmlnKSkNCj4gwqAJCXJldHVybiAtRUlOVkFMOw0KPiDCoA0KPiAtCS8qDQo+
IC0JICogVkRTQyBlbmdpbmUgb3BlcmF0ZXMgYXQgMSBQaXhlbCBwZXIgY2xvY2ssIHNvIGlmIHBl
YWsNCj4gcGl4ZWwgcmF0ZQ0KPiAtCSAqIGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4aW11bSBDZGNs
b2NrIGFuZCBpZiBzbGljZSBjb3VudCBpcw0KPiBldmVuDQo+IC0JICogdGhlbiB3ZSBuZWVkIHRv
IHVzZSAyIFZEU0MgaW5zdGFuY2VzLg0KPiAtCSAqIEluIGNhc2Ugb2YgVWx0cmFqb2luZXIgYWxv
bmcgd2l0aCAxMiBzbGljZXMgd2UgbmVlZCB0bw0KPiB1c2UgMw0KPiAtCSAqIFZEU0MgaW5zdGFu
Y2VzLg0KPiAtCSAqLw0KDQpJJ2xsIGd1ZXNzIHlvdSBoYXZlIGNvbnNpZGVyZWQgdGhpcyBjb21t
ZW50IGJlaW5nIHVzZWxlc3M/IEFueXdheXMsDQpwYXRjaCBsb29rcyBvazoNCg0KUmV2aWV3ZWQt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0JcGlw
ZV9jb25maWctPmRzYy5zbGljZV9jb25maWcucGlwZXNfcGVyX2xpbmUgPQ0KPiBudW1fam9pbmVk
X3BpcGVzOw0KPiAtDQo+IC0JaWYgKHBpcGVfY29uZmlnLT5qb2luZXJfcGlwZXMgJiYgbnVtX2pv
aW5lZF9waXBlcyA9PSA0ICYmDQo+IC0JwqDCoMKgIHNsaWNlc19wZXJfbGluZSA9PSAxMikNCj4g
LQkJcGlwZV9jb25maWctPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDM7DQo+
IC0JZWxzZSBpZiAocGlwZV9jb25maWctPmpvaW5lcl9waXBlcyB8fCBzbGljZXNfcGVyX2xpbmUg
PiAxKQ0KPiAtCQlwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBl
ID0gMjsNCj4gLQllbHNlDQo+IC0JCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVh
bXNfcGVyX3BpcGUgPSAxOw0KPiAtDQo+IC0JcGlwZV9jb25maWctPmRzYy5zbGljZV9jb25maWcu
c2xpY2VzX3Blcl9zdHJlYW0gPQ0KPiAtCQlzbGljZXNfcGVyX2xpbmUgLw0KPiAtCQlwaXBlX2Nv
bmZpZy0+ZHNjLnNsaWNlX2NvbmZpZy5waXBlc19wZXJfbGluZSAvDQo+IC0JCXBpcGVfY29uZmln
LT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGU7DQo+IC0NCj4gLQlkcm1fV0FSTl9P
TihkaXNwbGF5LT5kcm0sDQo+IC0JCcKgwqDCoCBpbnRlbF9kc2NfbGluZV9zbGljZV9jb3VudCgm
cGlwZV9jb25maWctDQo+ID5kc2Muc2xpY2VfY29uZmlnKSAhPSBzbGljZXNfcGVyX2xpbmUpOw0K
PiAtDQo+IMKgCXJldCA9IGludGVsX2RwX2RzY19jb21wdXRlX3BhcmFtcyhjb25uZWN0b3IsIHBp
cGVfY29uZmlnKTsNCj4gwqAJaWYgKHJldCA8IDApIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwNCg0K
