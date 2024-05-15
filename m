Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E77C8C65DD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E279810E37B;
	Wed, 15 May 2024 11:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRGP/TdI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085D510E37B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715773137; x=1747309137;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pmpDT8gk+2Bir28QiRM+rDV1JrjVq/JNxqMLMji1H24=;
 b=WRGP/TdIS4X7RU0NkUCmoo8fioCX6dfrOTdMdZUWq4/3DcgRnjIqrXkp
 xLtge0skfr1kLxSQsmrqtbSq0MxF1WAF873HwpuCPhg85aQA2ICf9QIWC
 Ftj3rLxzfY8akWzReYOpuZ6Sb6+Q8a1dL3zfmw7gYuAtsIw1B355/r6in
 2jTOpvhjblVNm7AQrxNdY2ybUJCKAraDaMZDXK95pOm8oJcx05u4IpI2b
 YGidQDuomsjxyKo1hRDjBBSf+NvPSWN2A6OONbxycWMwcqXcHL23vdgKa
 UyTKeaQ1yNzV8r8SMC4aHGFnMlMAPJCCha2RI/McVgA3P7LelwkfjXM1v w==;
X-CSE-ConnectionGUID: qciiRLcVRGy12VzYnmVkwA==
X-CSE-MsgGUID: 4VUp4vYhRGWj60wOzEtgtQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="29306904"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="29306904"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:38:56 -0700
X-CSE-ConnectionGUID: Ym85L/nCSSeE47NYmae5uw==
X-CSE-MsgGUID: NJTb64SFSXyRQmaSdaNfHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="35905248"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 04:38:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 04:38:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 15 May 2024 04:38:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 04:38:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNB3/8gisP+nk69t0nn6VpLwR0FmkkNxLJq6U0jo3r4eQiChN6fM+Bp8DIptBkRDzGxeXy3yvNvIb1qPxWdEk8azz3Erm+PVYFcp+j80o3BhgYGDV9MAz+b615N7XvkfpjvJMm/5X8ekCDHx4HeMutvqK7Al4t7ZSSJj6phKt/f2o8XsqeH8lbwxesrd5p4YqJ5MDYzKZ1zif6lzCAdzs5Y/KVUVohNuTWCKOZPi1OKDXBS1RRHQwJamCjnbekQMsSqpsKlIofpYGPosFEfJkjmwoyF4ESyapQyRDc6XwVPVB0fQVliKXb+vECBNpe9NY1LlTJEY/VaZyyrtBrB/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pmpDT8gk+2Bir28QiRM+rDV1JrjVq/JNxqMLMji1H24=;
 b=KPi0CAtWsR16qI68KZiskFUYxZrKPA8WeW610t9sJfBeN0eLtxWlBnX8HL9/f0IuolM1LF1pYIvVQr98q+nusvDjDf/ZJOpXsO0e+sCMWiBfvlFm7rfFiHoU1lLsZN9UuE+6+Dkadn8AYn/VF6Enz9uQoaWkwSSlRlUrg5wW+gOZXa3rEiUqP7uUsUihbyJk9hQ4shrCxq2c909YzwDOUFmcoAwu/mGZDBMmMNtb4v27NaEZqT61pwpGBksW6QIkywguUT1CGkERTlQBKCsb04/VvCHqcU+Dd2meJJA/qo7ipZ+HZCw99coYRHgV/oYF6h6pSU+xFc1MTU73zm66Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA0PR11MB4687.namprd11.prod.outlook.com (2603:10b6:806:96::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.26; Wed, 15 May
 2024 11:38:48 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 11:38:47 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: Regression on linux-next (next-20240506)
Thread-Topic: Regression on linux-next (next-20240506)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NA4sen+AAAF04AAABbFhsA==
Date: Wed, 15 May 2024 11:38:47 +0000
Message-ID: <SJ1PR11MB61298B3FBE1CD57BB6DCD0C9B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
In-Reply-To: <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA0PR11MB4687:EE_
x-ms-office365-filtering-correlation-id: 3f2deac4-b471-4acd-190b-08dc74d395c3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?OGpzYVA0UHNHaUM5Q3R4WjZraUpmdDdsOG9FRm56bC93dndEOEt2eTZZd0tP?=
 =?utf-8?B?czV3UTlXWkJ6M2Vrb2JRV0VTRmxmWkxldmtTeTNaY0l4NWhVWFptcElWWWVi?=
 =?utf-8?B?SUpRb2NUNC9ZNlRsMkdPSDZkTXlZbWVvYnU2UkRjY2pBVm1UWVFaSVljQitQ?=
 =?utf-8?B?ZVE0bFQ3bjJkdndMYTZPT0dET1NlNThzbHBIdTVJWWJxaVMwRGJHZDAvSHZr?=
 =?utf-8?B?MnpHSGlmWnNmTDZPREFZT1FaVnpySWVZWnNzc3NGU3dibDVsWlAyblZ4UVFz?=
 =?utf-8?B?a0N4L0czbWd0ZTdoYXBBZXpaZWhlcks2QzM2OWJaRVdRZmxDZ3pXNnMyazdG?=
 =?utf-8?B?R3RsaUxhSmxLU0xiM1UvV0dFWThLOTBFZUNBdXE3V3ljUXdqZW5UMit3Mkor?=
 =?utf-8?B?TWtuOWRtaDk0SUpGZTFSNlNTODBVM3E1cUh1c2xRKzJCalhqMU1FWnM2L2dl?=
 =?utf-8?B?TEZ4RFhBdHRDbW5td2I2eDNGd0QyOUtHeFp5MGFWYXpBL3JvdTF6Zis4OVBO?=
 =?utf-8?B?ZkRpM3ZOUzRwOW9tc2xUNTUwa1VXa3pPb1pwenhDUlRYUHNjbGhYamRXZGlt?=
 =?utf-8?B?R2kwd3gwRmlqOEwxUDROZUx0S1gzOVVUNUViN3JRUmZVWkdCMHlLVS83WklT?=
 =?utf-8?B?dHROV1VPUm93engwOENBcXBMU0Nzb2c1enZMd01NaEI4ZG83aXMxMlA3ZG5B?=
 =?utf-8?B?R1FHbDdzeVJEWEJ6WE1VYjF5L280TjhQWEw5Y2RkRGhSQllES2hmR2ZXZmdC?=
 =?utf-8?B?cDNPSW5sc2swMlp6d0lURjV4aHp2WUlXbzZUNVJqZHhTNDFEcW0wRkk1RDYr?=
 =?utf-8?B?ZzZXMTJyb0Vkc0dSOE80dW9zaVpjSTVCVlFJRnJoaXYycmJSbjQvVXhLeUNx?=
 =?utf-8?B?V0hvVnlsMmFpdzVRaVJ4aHlwblZPZUxGZzNYdUgyVGR0N2xUVTk5RDVqU2ZU?=
 =?utf-8?B?dDlkcDNKNDg3TmNrMWxiVXdkeWtpM0JRdk1sbnBuT3B3U0N3SEwyc0hqMkJn?=
 =?utf-8?B?UkVKOFQwYmhxZHRTeXBPOGJNNHNzYVo1OU11cjBCUnhLL1Fkc3RkbERDMXIr?=
 =?utf-8?B?Y1RNU3oraGRQMGp2YlJuMXNjeHJxTzl1c0M4YXlIL2hYU3JxdzVpdGVnWFNv?=
 =?utf-8?B?M1FDVDdkSXhhMHNUYzBOOC9XcnNtR1dsNGVza2JvYXhSUEJlclBYbTBVVXl5?=
 =?utf-8?B?clpBYzhCV2xLUGlLb2lZL1QrSmxRZ0VhMlJuSjVZSUNmVklvRXllZytIM2tP?=
 =?utf-8?B?N0xEMVR4KzdkL3lQRVNXT0Q4T2haMzlSelVTU3VlbG0wMjlvTmpmQTVoeit4?=
 =?utf-8?B?LzJrZnA4VXlZdzlXS3VYU3BkVlpib3J6UzliVVFtVFBvUFdkd1luZnEvWUc0?=
 =?utf-8?B?QWpFUzE2Nm1ZSkJWbWlnNmZSRXVneEVsRURlbjVSY3Zud1dMNjR1a3E1RmpM?=
 =?utf-8?B?T1h1WVdpQTN5ZnBUODNFM0tEUHA4cmFJNXlobG1XZmk5UHluNk5LQzVrNG92?=
 =?utf-8?B?OXF3NVk1N0hFbG4zSjh6VlhIaTBPMjdRcDFFQk01SXNmcUhaYmQ0ZjVBRzF3?=
 =?utf-8?B?YnRNV0VRaXBDb1g1RXRDeG5YQkZBQlZRK043UWpYaktrMlhmNHM0NHpnaWZ5?=
 =?utf-8?B?WHJIeEZvanJMTUI2ejY3cTVWNUNRcUFlVVk1M1FUS3RRajlWbUpXOUFaQzJq?=
 =?utf-8?B?L0xPWVY4SjhFQ0tWbDhEbTVsdS9BZzdNTGtjZGJrWlF3VnlCeFFjOEdCSzdC?=
 =?utf-8?Q?q4UXsxMRyfOnVL/yAY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alo2dXJ6R0FqOXdBVnJnWnV6dmljbytRUUZXRmJSdTlDZEhFaXRsUmZINkl6?=
 =?utf-8?B?QUdvTHlTNjhUN0Z6bm9KS09WbWhKVGhGZ3JwU1RvSm1rZGtxendjWE56eGJ6?=
 =?utf-8?B?bXB0WTh2Mm9YUmZLVFBBNlEycVZTSDVLMVp2MzhpZkQvdk1VZmdmaXllWWxr?=
 =?utf-8?B?YnVxekhXc1JpMFRycFVJeHpncVhGV1pHdE1FeE9oYWhMd29YN0RERXdlMUNs?=
 =?utf-8?B?MHptWXpyNTdiYTFqQW9yYUh4YWYweUh6WERxRXBSUWdENFNYZ3RvekNyRFBH?=
 =?utf-8?B?aHlsSHVaa2dyVUxKak95T3JzU1M3dkNuNjAzc2NYNjJpdm0zRzN4TkVoaUJl?=
 =?utf-8?B?NlR1WUt5K05QNzdTZHVpSUdXMS9MeHNNMWFBcVRnUkYwZjdWTFh5dkRzN0hj?=
 =?utf-8?B?N0ZhbkhqaThWVFRvb3BUenRqemhjZFB0YUdoeER2U3JQY0tmUVZUc2FPdWl4?=
 =?utf-8?B?QklmVVJlL0dvRTRTNVlJZ0pKS0JDbXlQdmRRSGwyVG1neC83di80OVhqcHB1?=
 =?utf-8?B?SHgrUTRnQWQzVFkvYjlvYU5Ba1AxVUFrcU1JY0tsVExYRXN4c2VNVml4K0hK?=
 =?utf-8?B?TnE1TzVmWWE0a3A0WE9uQ2FVS0YrVzJ1alQybUpjM3NFdmtlSFlRVnRlUXBn?=
 =?utf-8?B?T3RGMzJrK0FySitkWGYvdUpzcHVxTXh6SVZWdjZYUGxPaHIzZFBPNzNkRE4v?=
 =?utf-8?B?RjN6WS9sWkRYWHY3ZGVSa0pBam45d3V1VCt5SDFNTW53amtFOUJNZkdWcy9w?=
 =?utf-8?B?ZzlWM1JTeHdaNlgyZWdjTjVtVnBJNlVPUWtTM0RYeXl5YkJNRFpyZXdsTm81?=
 =?utf-8?B?d3o1eXczenFnZXo5cUFqMWtDQ3VjMHBxSWVnTUsvSDBORHZUT2lqeVI3djNT?=
 =?utf-8?B?d2tUZ09tQXgrc1RTWjdKYnBtRVpDTitST1hmQ21MblBRNmNGRW5kdU9saUFC?=
 =?utf-8?B?Y1NvaFJvUDFnRnZVY3BJeG9hUnpIU1RXNlB1VVArMUYxRWw0QjY3Zk1qdHJC?=
 =?utf-8?B?WDNpNmZWSGNxekg4N3hxcHlrODkxNGs2blhlcXlwdEo4YkJiWjkva2k3MEQ4?=
 =?utf-8?B?T1lVTVM4d3BYUlgvNTYrdS8xQzNpTWVvdnhYd1Q1ZXNhUUdGODZsMStUYU9Z?=
 =?utf-8?B?QWltakkzS051Ujc4VjJzaTYzdFlWVnpxMEt1ZlVBVFJNSExJWkNwNmtIQ0pv?=
 =?utf-8?B?Y0NRZVdPTHB0bEVLZTF2dlpYcXEzYWhsU203b2x4QW1iN0RqMWN4VXltYXBR?=
 =?utf-8?B?di8vdXNaZm1seEtDaHB3VWVVRVdETzFtWE8xb1B6NXJJOVhndEVncEoxSVhE?=
 =?utf-8?B?RGJScURRVjVBWm1UZVBoNjIrb1VzcW5wT3k0dUVCZ09EODJxMjFEdmhhMDFt?=
 =?utf-8?B?U2F6aWxJVXpNWWhYdGRDcGVlWEw0Q016WEZDT2J1RUhydGQrZEtRZmo2N3dH?=
 =?utf-8?B?Z2R0dHhxNHluZkNodW9zcEovc0lyblh3R1lnZXBBSitnK1Bia0I4QnVzTW4w?=
 =?utf-8?B?ajZiN0JyMVJTdVJPd0ZKd0drMEQxSCtxN1Zkb2YxWi9pUENzTUFNbmZ2alZO?=
 =?utf-8?B?a0h6NDhvQ0N2N1h4cVVRUlluNlFYR2RuaGRxOGNDdFFkSTVlTm0yVlhLWGpU?=
 =?utf-8?B?SDNucFFxODBhSFlMcXhjbW5pWXYyTXg0OHFFUUhleEpFRzBjbGJ2VE8wU0tt?=
 =?utf-8?B?b2FqSDNlUE1JWk1Tak1lNEF1R2RKMUhDejNzNE1aVjlNeGhRWTdZcktFdmxR?=
 =?utf-8?B?aHNYSi80N05wNVdiNkdMYVZxaGVXWFAzMUtmaytmdDZPdzlWOVR3UXRDT2NJ?=
 =?utf-8?B?Y2FYeDBMYWFyb2dMdlp1dXNwcU9kMUhLZy9lelNCMWNpYlMzZ3k5SUJIREUr?=
 =?utf-8?B?UXZOUEYwVFF2R0JXdzlCODlIblBiallUUXV0V2VFUnAvMGRDMDRxdldvT3RB?=
 =?utf-8?B?OEozR0s0aUhRTFg2bTNySHhIbHBhN09hZGRzbTdlcUw5dnlGeWFkeFZhTktQ?=
 =?utf-8?B?MTdaN1NYRFZ6YlpFdDY4c0RQRk1pMUJoMEJHbzdmZ2QwdEY0OEx0VmRxemNq?=
 =?utf-8?B?aUFKRUYzMGlEOXl5dW00MmVuZGF1WmJpODYzcjlFYitsNmkrSTJFeEZrTkVj?=
 =?utf-8?B?ZlJCTFA3RkswYnlsdGVjZjV5azFjWGRISjhwWjZsNlZnQWtXUFpXWCtqeE5Z?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f2deac4-b471-4acd-190b-08dc74d395c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 11:38:47.8971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gWsh7O8xTQjHPf2EzJnblD5LeuiIGiXUxghBoDiCOrc2NcfWCnSQcmNTsf9umYkl8FU77IReiwGNjC7pZed5UvFwwv99YZYtoYNsoAxAEJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4687
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

SGVsbG8NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMTUs
IDIwMjQgMjoyNSBQTQ0KPiBUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1
bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IEt1cm1pLCBTdXJlc2ggS3VtYXINCj4gPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+
OyBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+Ow0KPiBOaWt1bGEsIEph
bmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFJlZ3Jlc3Npb24gb24g
bGludXgtbmV4dCAobmV4dC0yMDI0MDUwNikNCj4gDQo+IEhpDQo+IA0KPiBBbSAxNS4wNS4yNCB1
bSAxMDoxNiBzY2hyaWViIEJvcmFoLCBDaGFpdGFueWEgS3VtYXI6DQo+ID4NCj4gPj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogQm9yYWgsIENoYWl0YW55YSBLdW1hcg0K
PiA+PiBTZW50OiBXZWRuZXNkYXksIE1heSA4LCAyMDI0IDM6MDUgUE0NCj4gPj4gVG86IHR6aW1t
ZXJtYW5uQHN1c2UuZGUNCj4gPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IEt1cm1pLCBTdXJlc2ggS3VtYXINCj4gPj4gPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+
OyBTYWFyaW5lbiwgSmFuaQ0KPiA+PiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+ID4+IFN1
YmplY3Q6IFJlZ3Jlc3Npb24gb24gbGludXgtbmV4dCAobmV4dC0yMDI0MDUwNikNCj4gPj4NCj4g
Pj4gSGVsbG8gVGhvbWFzLA0KPiA+Pg0KPiA+PiBIb3BlIHlvdSBhcmUgZG9pbmcgd2VsbC4NCj4g
Pj4NCj4gPj4gVGhpcyBtYWlsIGlzIHJlZ2FyZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWlu
ZyBpbiBvdXIgQ0kgcnVuc1sxXQ0KPiA+PiBvbiBsaW51eC0gbmV4dCByZXBvc2l0b3J5Lg0KPiA+
Pg0KPiA+PiBTaW5jZSB0aGUgdmVyc2lvbiBuZXh0LTIwMjQwNTA2wqBbMl0sIHdlIGFyZSBzZWVp
bmcgdGhlIGZvbGxvd2luZw0KPiA+PiByZWdyZXNzaW9uDQo+ID4+DQo+ID4+IGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YA0KPiA+PiBgYGBgYGBgYGBgYGAgU3RhcnRpbmcgZHluYW1pYyBzdWJ0ZXN0OiBndF9jb250ZXh0
cw0KPiA+PiAoaTkxNV9zZWxmdGVzdDoxMTA3KSBpZ3Rfa21vZC1XQVJOSU5HOiBpOTE1OiBVbmtu
b3duIHN5bWJvbA0KPiA+PiBhY3BpX3ZpZGVvX3VucmVnaXN0ZXIgKGVyciAtMikNCj4gPj4gKGk5
MTVfc2VsZnRlc3Q6MTEwNykgaWd0X2ttb2QtV0FSTklORzogaTkxNTogVW5rbm93biBzeW1ib2wN
Cj4gPj4gYWNwaV92aWRlb19yZWdpc3Rlcl9iYWNrbGlnaHQgKGVyciAtMikNCj4gPj4gKGk5MTVf
c2VsZnRlc3Q6MTEwNykgaWd0X2ttb2QtV0FSTklORzogaTkxNTogVW5rbm93biBzeW1ib2wNCj4g
Pj4gX19hY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZSAoZXJyIC0yKQ0KPiA+PiAoaTkxNV9z
ZWxmdGVzdDoxMTA3KSBpZ3Rfa21vZC1XQVJOSU5HOiBpOTE1OiBVbmtub3duIHN5bWJvbA0KPiA+
PiBhY3BpX3ZpZGVvX3JlZ2lzdGVyIChlcnIgLTIpDQo+ID4+IChpOTE1X3NlbGZ0ZXN0OjExMDcp
IGlndF9rbW9kLUNSSVRJQ0FMOiBUZXN0IGFzc2VydGlvbiBmYWlsdXJlDQo+ID4+IGZ1bmN0aW9u
IGlndF9rc2VsZnRlc3RfZXhlY3V0ZSwgZmlsZSAuLi8uLi8uLi91c3Ivc3JjL2lndC1ncHUtDQo+
IHRvb2xzL2xpYi9pZ3Rfa21vZC5jOjE1OTQ6DQo+ID4+IChpOTE1X3NlbGZ0ZXN0OjExMDcpIGln
dF9rbW9kLUNSSVRJQ0FMOiBGYWlsZWQgYXNzZXJ0aW9uOiBlcnIgPT0gMA0KPiA+PiAoaTkxNV9z
ZWxmdGVzdDoxMTA3KSBpZ3Rfa21vZC1DUklUSUNBTDoga3NlbGZ0ZXN0ICJpOTE1DQo+ID4+IGln
dF9fMjNfX2xpdmVfZ3RfY29udGV4dHM9MSBsaXZlX3NlbGZ0ZXN0cz0tMSBkaXNhYmxlX2Rpc3Bs
YXk9MSBzdF9maWx0ZXI9Ig0KPiA+PiBmYWlsZWQ6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rvcnkg
WzJdIER5bmFtaWMgc3VidGVzdCBndF9jb250ZXh0cyBmYWlsZWQuDQo+ID4+IGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YA0KPiA+PiBgYGBgYGBgYGBgYGANCj4gPj4gRGV0YWlscyBsb2cgY2FuIGJlIGZvdW5kIGluIFsz
XS4NCj4gPj4NCj4gPj4gQWZ0ZXIgYmlzZWN0aW5nIHRoZSB0cmVlLCB0aGUgZm9sbG93aW5nIHBh
dGNoIFs0XSBzZWVtcyB0byBiZSB0aGUgZmlyc3QgImJhZCINCj4gPj4gY29tbWl0DQo+ID4+DQo+
ID4+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYA0KPiA+PiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGANCj4gPj4gMmZkMDAxY2QzNjAwNTg0NmNhYTY0NTZmZmYxMDA4YzZmNWJhZTlkNCBpcyB0aGUg
Zmlyc3QgYmFkIGNvbW1pdA0KPiA+PiBjb21taXQNCj4gPj4gMmZkMDAxY2QzNjAwNTg0NmNhYTY0
NTZmZmYxMDA4YzZmNWJhZTlkNA0KPiA+PiBBdXRob3I6IFRob21hcyBaaW1tZXJtYW5uIHR6aW1t
ZXJtYW5uQHN1c2UuZGUNCj4gPj4gRGF0ZTrCoMKgIEZyaSBNYXIgMjkgMjE6MzI6MTIgMjAyNCAr
MDEwMA0KPiA+Pg0KPiA+PiAgwqDCoMKgIGFyY2g6IFJlbmFtZSBmYmRldiBoZWFkZXIgYW5kIHNv
dXJjZSBmaWxlcw0KPiA+PiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPj4gYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgDQo+ID4+DQo+ID4+IFdlIGFsc28gdmVyaWZpZWQgdGhhdCBpZiB3ZSBy
ZXZlcnQgdGhlIHBhdGNoIHRoZSBpc3N1ZSBpcyBub3Qgc2Vlbi4NCj4gPj4NCj4gPj4gQ291bGQg
eW91IHBsZWFzZSBjaGVjayB3aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5k
DQo+ID4+IHByb3ZpZGUgYSBmaXggaWYgbmVjZXNzYXJ5Pw0KPiA+Pg0KPiA+ICtKYW5pIE4NCj4g
Pg0KPiA+IEdlbnRsZSBSZW1pbmRlciDwn5iKDQo+IA0KPiBTb3JyeSwgSSBkaWRuJ3Qgbm90aWNl
IHRoZSByZXBvcnQgYmVmb3JlLiBUaGUgY29tbWl0IGlzIG5vdCByZWxhdGVkIHRvIEFDUEkuDQo+
IFRoZXJlJ3Mgbm93IGFzbS92aWRlby5oIGFuZCBhY3BpL3ZpZGVvLmguIE1heWJlIHRoZXJlJ3Mg
YSBjb25mbGljdCBhbW9uZw0KPiBpbmNsdWRlZCBmaWxlcy4NCj4gDQo+IERvIHlvdSBoYXZlIGEg
a2VybmVsIGNvbmZpZyB0byBidWlsZCB3aXRoPw0KPiANCn5Tb3JyeSBteSBlbWFpbCBjbGllbnQg
bWVzc2VkIHVwIG15IHByZXZpb3VzIHJlcGx5LiBTbyBzZW5kaW5nIGFnYWlufg0KDQpJIGNvdWxk
IG5vdCBmaW5kIGEgcHVibGljIGxpbmsgZm9yIHRoZSBsaW51eC1uZXh0IGNvbmZpZyB3ZSB1c2Ug
YnV0IHRoaXMgc2hvdWxkIGJlIGNsb3NlIGVub3VnaC4NCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE0NzY0L2tjb25maWcudHh0DQoNClJlZ2FyZHMNCkNo
YWl0YW55YQ0KDQoNCj4gQmVzdCByZWdhcmRzDQo+IFRob21hcw0KPiANCj4gPg0KPiA+PiBUaGFu
ayB5b3UuDQo+ID4+DQo+ID4+IFJlZ2FyZHMNCj4gPj4NCj4gPj4gQ2hhaXRhbnlhDQo+ID4+DQo+
ID4+IFsxXSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9saW51eC1uZXh0L2NvbWJp
bmVkLWFsdC5odG1sPw0KPiA+PiBbMl0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC0NCj4gPj4gbmV4dC5naXQvY29tbWl0Lz9oPW5leHQt
MjAyNDA1MDYNCj4gPj4gWzNdDQo+ID4+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2xpbnV4LW5leHQvbmV4dC0yMDI0MDUwNi9iYXQtbXRscC0NCj4gPj4gOS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlQGd0X2NvbnRleHRzLmh0bWwNCj4gPj4gWzRdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtDQo+ID4+IG5leHQuZ2l0L2Nv
bW1pdC8/aD1uZXh0LQ0KPiA+PiAyMDI0MDUwNiZpZD0yZmQwMDFjZDM2MDA1ODQ2Y2FhNjQ1NmZm
ZjEwMDhjNmY1YmFlOWQ0DQo+IA0KPiAtLQ0KPiAtLQ0KPiBUaG9tYXMgWmltbWVybWFubg0KPiBH
cmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1h
bnkgR21iSA0KPiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0K
PiBHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBN
b2VybWFuIEhSQg0KPiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQo=
