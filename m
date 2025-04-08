Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18CDA7FC9A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 12:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E6910E63A;
	Tue,  8 Apr 2025 10:45:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/Xllj6W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAF110E637;
 Tue,  8 Apr 2025 10:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744109113; x=1775645113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xBE5+gRF5q8V8epCEDhtnLdXXNMVZF2tvXBUrzyAyco=;
 b=X/Xllj6WiUpMx5hr9jla1b6hiwLe8AQtwSgPOrd+/Sn2ALmm3xMzsGOf
 jAr34LybuaSl4s9ksLj8jOq9fRN162vCifw9gnFSbuOyHvJAhYQWYk0ZL
 B5rrSrpqM4D+8QUj/6bAATQoV2McnkqDTViZEM2ngdxEHjoYP1ximdUkF
 klriA2e8NF279uKOvgIjxrd64eOM/EbTtbpLHkGRZ3GA9sjdgjsxk094O
 Wky70c6/WPyPIyMTKrz4kcEGFk60BRFUIKcg3YpNuCOXRe1ql/CYNEH75
 W+nQ4ZvzevqeDvvNwzunFOcyw9ejAw2B99OZo788LYoMTWswSClt9MR7l Q==;
X-CSE-ConnectionGUID: ngWFt8vJQmGjQ7qpP1QnCQ==
X-CSE-MsgGUID: YPqpmZNRSdWD26RODYSVnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="48243456"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="48243456"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 03:45:01 -0700
X-CSE-ConnectionGUID: iXVq4jw9Ry2t5q9QqcVckA==
X-CSE-MsgGUID: I0KbIl2WSNSo7C9FeXC74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128211387"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 03:45:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 03:45:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 03:45:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 03:45:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TFthNomu8QPpDRpMc6SJMrBXkkvx9dALQ5hytykk0fU5VxhYSbAiYArA/4YLyTQqOrnMzFuIMrj1PUZ037akydPw90Pa7zCzTJrCsFiO5j3+b/5WdxBhW8HpL4mBG7dQMx+ZegLSzNDbL29EEzsfDBo8tjKAr9A2/y9wJ5VXH6f3h6l/tBUfOFAYVGB4AhfBViKr5Q7sTFifOeLafAgxTw9IZf6HuJPHs8AGgA0WVUufiYsJ/E+mojAJrVR5vsq429q+7xK+LJcVs1UVORLjvf1yWnrYyM6q4iul1c0CAhakbi3q03SPlNbhrgALKK+r9i+BdnLAdw7aAlKq8ieOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBE5+gRF5q8V8epCEDhtnLdXXNMVZF2tvXBUrzyAyco=;
 b=wHIMjONQpFOZm2yfROzh9D5j1n2hqnZq6YtIUMlyA1mR0nmMgJm1PMfknRzhJCxTvFKs+wfaycoVtWQ+az6KP3pnWBKeYOelFXlTz5LilRfX+EjSwbp3afq11Rqb3ARAFI3IYJiuUkHhdZWtw8urR4ebgpoTjR5sUXFu6JT7OSguy8VedRmxoCNh2hKWte395wW6HO37EXq4mAp2mMz2WcdXzswjHPOKUaoMXc722206rdL4/KlJL6q+XWOa9E/Xr6L+bhubyhNXM9isqNM1K5Wf/z85pOhnvi/l6wn5bt6CK9gwckr2sr2KWYeZaLPQnLK6ui4UnDgYmiirrLytuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Tue, 8 Apr
 2025 10:44:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Tue, 8 Apr 2025
 10:44:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 06/11] drm/i915/psr: Add mechanism to notify PSR of
 pipe enable/disable
Thread-Topic: [PATCH v2 06/11] drm/i915/psr: Add mechanism to notify PSR of
 pipe enable/disable
Thread-Index: AQHblxVajqLBqvtkPUKZ2yn9h7m+x7OZuCRQ
Date: Tue, 8 Apr 2025 10:44:30 +0000
Message-ID: <MW4PR11MB705494F3EB246F9D3FEDC4C9EFB52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-7-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB7549:EE_
x-ms-office365-filtering-correlation-id: 9ef46780-7607-4828-8011-08dd768a57e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q0xVSTczSVM2UUxYTStOTEp3eTg5SFlDalpDc1dSOFh2bUpKaXl3YWJBNkIx?=
 =?utf-8?B?ZGlncHlTb2U3eE1QOXg3V2ZGM000S3BrL2dUSGhLWGNybXlMREp2SXRwbWxo?=
 =?utf-8?B?TGU4ZDU0a2JWdkRWbEZtWVQ4ajNWeXZZNWxmV1NVZWlPVUtvSjNIRlZkelFT?=
 =?utf-8?B?ZklMTGZjVEZwYVlwN3ZQc213K1UrUFBVU01Hc3VnMXRCaXUzR0NucDBDV1ZQ?=
 =?utf-8?B?WHlNNTRFL0tleXBudmNwakpUbFAvSUoxdDNBQ2FlRHdHc3J2bE13d0oyMHM2?=
 =?utf-8?B?aDBOOEh1bVVrbDdBNWhmdG9KNXJDc2x5R0V0YnN1azJhU3llYmdVeUYrc0RT?=
 =?utf-8?B?UVRwSFF2ZW40dnZ0SVVVSXJ3VG5jbGc4c0djMVpubDZvNk5JNlN1d01xUDFG?=
 =?utf-8?B?bHh0WGNJOGJSdkd4ZjRiY3E0bWZuOEJxNWNtWFJOWGZkMlJ6bnc4dWZjMW5C?=
 =?utf-8?B?TzRQckhFeDBSaldxdTd1dGVtaytTamdrL1o0WVBpVmhrMjhMbnB5WHFmdVQz?=
 =?utf-8?B?L3ZMdE5Wd1l2elJnZndyejIvVkM5Wk9VNHMwbFU4QWljMzlaSUxlN29nMk1x?=
 =?utf-8?B?N3laWmpXaXd4RmZTRWtHSjI3NkI3MEdzU1NCU21RanVHUlRoSlJkVy9CMlVW?=
 =?utf-8?B?eURnMWVtUVNTZGdyYzFsTG10eVA5aFVQWGg3aG8yd0hpWUhJcEtvYW9YZTJp?=
 =?utf-8?B?Z20yUDRLcy9sSnI4SWs4V29RS3dWTmNsRGpTd0Zxa0I0aUM2RmVRYzRsWm5Q?=
 =?utf-8?B?Vkh5YXprazgrR0hqUjJnRlRsVDhwSDlPcGc5UGt2ZUphUUxmeWgvU3YreG5w?=
 =?utf-8?B?Z1RiRWNVSE51QVA0akducVdTZjZOSFRwUGlobkwrcDJxbUtWZEpCVy9LU2dF?=
 =?utf-8?B?dVJXV3MxWldkbCszaFZYY0gvMEpWQm1LMUEyYjNWRU1LM2MvSFZVdGVBOHBC?=
 =?utf-8?B?Tk5HMTUzeXVMbzNjTndTWjNKL2RyL2xUN2ptQVpsajFVUzg4aHkvYloyaTZE?=
 =?utf-8?B?WmluSVF3RUFZc2MveG9JMTU3Zkc0UVUvYmV6eXh5TEFEdS9ocEMwUTZpRTZR?=
 =?utf-8?B?N3ZVZUpSZzFSSkp1b1M1MG1UQUNNNWVJNHI4L0pkWlJJLzVzNzVqMGQxYzFP?=
 =?utf-8?B?VGp5YXNjWmJGSHkyMmlBOER3Z1lRSjgyTVQrU24yTmx0Nm5SUFd6ZlRYZ3pH?=
 =?utf-8?B?ZUd3bHNrNWFscDJlcE9wNURUbk9zWTFOenluc0ZjOHFTbTFhVHlESnVhMFhO?=
 =?utf-8?B?SkZ6L0xUS2dJZkRlUnlsTjNlWGhXWlFTSkxyaEphRHNweHUwSGE0dXJ6N2Ev?=
 =?utf-8?B?ZmFrQ1hHRnI0YUp1bHQyWGFnNXF5QjlXeWFNbURMWlphejRFbEdLT2lJYW5O?=
 =?utf-8?B?YWNNUHZNZWw1Z1JMMVYrM0pvYjczWFZJQS8zYzhDRzRqTm5TWVlvdDNkSW1L?=
 =?utf-8?B?UEFHbm8zQWZEdjdSZWJ0R3drWFB0cWh1U3pvY0hpRzVqUllKVFNqczJxN1Zk?=
 =?utf-8?B?dzZLdWRpL2d0TUt0WVJmK1BYSUJuRnUwT25PRDZVUDM0RUhSdm1DOTRTVExn?=
 =?utf-8?B?cE9jTFNVNUxoUktjUHlMd0tCYVV2anhKZm02QkFWZXpkYjk2VjY2U2E4NVlm?=
 =?utf-8?B?NWo0K01neG5PakZmbXRyY1VWUFUySWhHYjdqNTJ4MlFhRk52VGxZVStnSFRK?=
 =?utf-8?B?eVpmM0tNckZ4UG9MNTVuOW4rTlBJU2dXcGRLUGZabkhWclFobFM5aWNVclMr?=
 =?utf-8?B?UWErR2FnL0o2NTUzMkZDM2FZMW5ENDB0cktyV3poZkdUUkhPamUzL3VVSVJS?=
 =?utf-8?B?ZzYrUzh0ME13RVRsQ2tFNGFhUmFlcGdwVzRQYWk3UTVoN0FscXpiYmpTMWox?=
 =?utf-8?B?bXVDcWxyaFNheDRzaUU2V0FtVk4rdktTWGFhQnFKcUpEMFVYMGowdUh3NGQ0?=
 =?utf-8?Q?1jRoz7AQegXjedtmk1XbIQedAFu8iqx0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b05uemt6bW9aY2Q1VlB5YnNNN01walIxTFpmOG10byt6NUlYVWVJT0szOG5U?=
 =?utf-8?B?M292OXYrUlI1UkZOYUpHa3BrVGVaK0l3QThPOHdjRHNJVzZXeHNOMEE0ODR3?=
 =?utf-8?B?Rm1IbXo2NVlaV0pyOWhMcTd6YjlIZEdiWThzY0RQUEp0REFEa3NSOXZsU1I3?=
 =?utf-8?B?eGRHeWU4QnJnd1RxSFJhUzBSQ3dxZWxoTjYveDFnemczTE1uMDhaRHA5THh5?=
 =?utf-8?B?UjJXUm9VMTFKSGJsTE94ZXJUNTJTSXhYeGtHWWhvNk9lQk5VcGZLUFVZa1pQ?=
 =?utf-8?B?YzU1eWVVRW4zam1POS9ScE01MVc0NjAxaE4xd2RSak8wUHh4WmFGcWxvcHNp?=
 =?utf-8?B?cmNlZTQ1blhsL3lwUjFGdHVraHo1MURUeFVGNGVKdlZEUUMvSUJWTDF2ZkUy?=
 =?utf-8?B?NFF6Mjl3a3M5TFQzSmcwUUhMcjhKR2d6OWg4K0JwdkQyb0hhRkpDUFZ4eFQ3?=
 =?utf-8?B?RlpDc3dtUmhkNDRyYVR3OWdLbTFaWFQvekN6WDRFb2hSK0p0NEhUSlBtcDlR?=
 =?utf-8?B?MUt2TU5nbnV2a1h1VisvVzlMejVKY29SUEIwT1o1T0tYYmlUUUk4WEw0eGhL?=
 =?utf-8?B?RDhuZUJEWkpQeFVqU0J0Z0RTSGFmYzh3dGhGakwxSFBvL3Z2OHNWSWI0QVhB?=
 =?utf-8?B?ZVFkeWw2bVBpYTFMZmRJc1B5WFA0NHh2MWpXVU1KcWtZTEZjRUZpdjFVRURu?=
 =?utf-8?B?WFFKdmxaN0J1dVlCYndoL09YYWtzbHVEOWJBS2ZkSFJKZTlnUldrZTBOc28w?=
 =?utf-8?B?ektCdy85QVVwZ0VUNDY1dVBRQ0xYc1lkWnQ5L1Raajk5MkIvOE1ZNUFjSVBu?=
 =?utf-8?B?Y1c0V3pTMUwza1JaNnpqR2E5Ky8yQ3l2QXF1YVNLbm95YjF6TVhhL0xvcTBN?=
 =?utf-8?B?M0toMGVjRi9SbHJtckNnMnVYRnBuNVExeTRKeklJMDdJeHgzWjd6dFFZQkJ3?=
 =?utf-8?B?a1ZyY2V4aUZDZjQwYzhJclFUSzZoQjVjYXNud3VMakMxZjVDRlJmem9DYk94?=
 =?utf-8?B?SW9NR015NEVaZVo3RFU2YzhIOHI5ckNneVpST2h6RUtCV1VoTDlHV1BCV04x?=
 =?utf-8?B?cUVnVS9KYmd1L2krRGFCa0ttNk9ITG9jMkh2NzNKbWNYdmE1WnlrSzFWc2pC?=
 =?utf-8?B?eFpYOUJrNVVjT0kwYUc5ckp2ZVlFZXI1SjZtTWRRL0RiRWpkZlFuOGFUenZi?=
 =?utf-8?B?UGx2emFaWHYxT3NYWUJ3NnBFVFNBaGlEU3o0K0FxUnVIbE54M0dWQ1B6anZF?=
 =?utf-8?B?WUl6Vzk5SWtHU1IxcmRFVXd2a2FEYzhDSkhFeVhPMmYyWEludmxuQjVuQzZo?=
 =?utf-8?B?Z2cwcDU1bzlpQXJQckxJeFhyS0NoMFpOOGwyUVJuQ1prUG56MHNPWDVpZng0?=
 =?utf-8?B?MHMzVWdZcTUwYUtzZ2NBU3k3c2EyVzZpUHJQQ0ZMM0ZSYVhxLzYyUFg4byta?=
 =?utf-8?B?NmVTa0xpbnMvTEZmOWZ2VFdUamdNWXRDWkZ5TDNvS3c2enpxdUppbWNldHhn?=
 =?utf-8?B?MzRpbmxncms2VWdhaVp4RkxraTJjM2RoRE1MbnJPMXhyM2s5aTN0S2U5bCtV?=
 =?utf-8?B?UEpGdVZNK3JLRUFqdWp5aWE3L3M4dEFWaWFOL05RVCs0VkMvbFJKNyt6QWxm?=
 =?utf-8?B?ZDFKTFQrWWlyZ0t4WVMzRTJrVTluS2czK3F2NXlxR1hzeHlSZXA3WUczbUp5?=
 =?utf-8?B?c1JMQ1lTMDZBQys3YVI2M3R5M0IrYk1OaHI0Rkg5RTFabnZlNURXdWIvRjNv?=
 =?utf-8?B?b2dEYXByYnMwU1JLRCtZejhEU2oyamQxVjVQRy9RRXVSQ050cG5pSWhkSDhG?=
 =?utf-8?B?Z1BiODQzZzl3UXYrSFlIdi83cFVGcW4vR2ZLRGFVa0N2amlOQ0pzS1hsbzAx?=
 =?utf-8?B?V0s5TUJWVGRRM0lhSHJOZkVZZDFkTXJ6SWJ1QjEwY2gxZHlGeXpTZHZXWEE2?=
 =?utf-8?B?aVZHNTJEenY3bzZaSUR3WktwVjVqV1pLdzVtaUhxYnI5MjgwQkFWZS8xQk5z?=
 =?utf-8?B?Q0JYMjlzM0NjQmp3TDREdkQvTmhmNTVZTExZVkpYdHlJRWhRQUdEWkdoMkIy?=
 =?utf-8?B?TWc5ZHBDa3phUForb2l3ODRJMEN6Vk1lVWJjb0VQejJyQno0VVR2ajFaYitp?=
 =?utf-8?Q?mV+kMyF55ndImhJ8r6v2icTEt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef46780-7607-4828-8011-08dd768a57e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 10:44:30.8670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k60grYuJ7pxpTD60UYizY3+W3BohplAdEsu6+2sdjRCXDBwZIhb2QTE1dOcj1DXWQuQnjTBIjY40hQ86kKl1rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDE3IE1hcmNoIDIwMjUgMTAuMTkNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2MiAwNi8xMV0gZHJtL2k5MTUvcHNyOiBBZGQgbWVjaGFuaXNtIHRvIG5v
dGlmeSBQU1Igb2YgcGlwZQ0KPiBlbmFibGUvZGlzYWJsZQ0KPiANCj4gV2UgbmVlZCB0byBhcHBs
eS9yZW1vdmUgd29ya2Fyb3VuZCBmb3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcgaXNzdWUNCj4g
KFdhXzE2MDI1NTk2NjQ3KSB3aGVuIG5ldyBwaXBlIGlzIGVuYWJsZWQgb3IgcGlwZSBpcyBnZXR0
aW5nIGRpc2FibGVkLiBUaGlzDQo+IHBhdGNoIGltcGxlbWVudHMgbWVjaGFuaXNtIHRvIG5vdGlm
eSBQU1IgYWJvdXQgcGlwZSBlbmFibGUvZGlzYWJsZSBhbmQNCj4gYXBwbGllcy9yZW1vdmVzIHRo
ZSB3b3JrYXJvdW5kIHVzaW5nIHRoaXMgbm90aWZpY2F0aW9uLg0KPiANCj4gQnNwZWM6IDc0MTUx
DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMTA2ICsrKysrKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5oIHwgICAyICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTA4IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBpbmRleCBhMzk0NmVlZjQ0ZjBkLi40YjYyZDU4MzJjYmZhIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTI2LDYgKzI2LDcgQEANCj4g
ICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJt
X2RhbWFnZV9oZWxwZXIuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX2RlYnVnZnMuaD4NCj4gKyNp
bmNsdWRlIDxkcm0vZHJtX3ZibGFuay5oPg0KPiANCj4gICNpbmNsdWRlICJpOTE1X2Rydi5oIg0K
PiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+IEBAIC0zNjY0LDYgKzM2NjUsMTExIEBAIHZvaWQg
aW50ZWxfcHNyX3VubG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSkNCj4gIAl9DQo+ICB9DQo+IA0KPiArLyogV2FfMTYwMjU1OTY2NDcgKi8NCj4gK3N0YXRp
YyB2b2lkIHBzcjFfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9sb2NrZWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gKwkJCQkJCSAgYm9vbCBkYzVfZGM2X2Jsb2NrZWQpDQo+ICt7DQo+
ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVs
X2RwKTsNCj4gKwl1MzIgdmFsOw0KPiArDQo+ICsJaWYgKGRjNV9kYzZfYmxvY2tlZCkNCj4gKwkJ
dmFsID0gRE1DX0VWVF9DVExfRU5BQkxFIHwgRE1DX0VWVF9DVExfUkVDVVJSSU5HIHwNCj4gKwkJ
CVJFR19GSUVMRF9QUkVQKERNQ19FVlRfQ1RMX1RZUEVfTUFTSywNCj4gKwkJCQkgICAgICAgRE1D
X0VWVF9DVExfVFlQRV9FREdFXzBfMSkgfA0KPiArCQkJUkVHX0ZJRUxEX1BSRVAoRE1DX0VWVF9D
VExfRVZFTlRfSURfTUFTSywNCj4gKwkJCQkgICAgICAgRE1DX0VWVF9DVExfRVZFTlRfSURfVkJM
QU5LX0EpOw0KPiArCWVsc2UNCj4gKwkJdmFsID0gUkVHX0ZJRUxEX1BSRVAoRE1DX0VWVF9DVExf
RVZFTlRfSURfTUFTSywNCj4gKwkJCQkgICAgIERNQ19FVlRfQ1RMX0VWRU5UX0lEX0ZBTFNFKSB8
DQo+ICsJCQlSRUdfRklFTERfUFJFUChETUNfRVZUX0NUTF9UWVBFX01BU0ssDQo+ICsJCQkJICAg
ICAgIERNQ19FVlRfQ1RMX1RZUEVfRURHRV8wXzEpOw0KPiArDQo+ICsJaW50ZWxfZGVfd3JpdGUo
ZGlzcGxheSwgTVRMX1BJUEVETUNfRVZUX0NUTF80KGludGVsX2RwLT5wc3IucGlwZSksDQo+ICsJ
CSAgICAgICB2YWwpOw0KPiArfQ0KPiArDQo+ICsvKiBXYV8xNjAyNTU5NjY0NyAqLw0KPiArc3Rh
dGljIGJvb2wgaXNfZGM1X2RjNl9ibG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50
ZWxfZHApOw0KPiArCXUzMiBjdXJyZW50X2RjX3N0YXRlID0NCj4gaW50ZWxfZGlzcGxheV9wb3dl
cl9nZXRfY3VycmVudF9kY19zdGF0ZShkaXNwbGF5KTsNCj4gKwlzdHJ1Y3QgZHJtX3ZibGFua19j
cnRjICp2YmxhbmsgPQ0KPiArJmRpc3BsYXktPmRybS0+dmJsYW5rW2ludGVsX2RwLT5wc3IucGlw
ZV07DQo+ICsNCj4gKwlyZXR1cm4gKGN1cnJlbnRfZGNfc3RhdGUgIT0gRENfU1RBVEVfRU5fVVBU
T19EQzUgJiYNCj4gKwkJY3VycmVudF9kY19zdGF0ZSAhPSBEQ19TVEFURV9FTl9VUFRPX0RDNikg
fHwNCj4gKwkJaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9waXBlcyB8fA0KPiArCQlSRUFE
X09OQ0UodmJsYW5rLT5lbmFibGVkKTsNCj4gK30NCj4gKw0KPiArLyogV2FfMTYwMjU1OTY2NDcg
Ki8NCj4gK3N0YXRpYyB2b2lkIGludGVsX3Bzcl9hcHBseV91bmRlcnJ1bl9vbl9pZGxlX3dhX2xv
Y2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKyppbnRlbF9kcCkgew0KPiArCWJvb2wgZGM1X2RjNl9i
bG9ja2VkOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9kcC0+cHNyLmFjdGl2ZSkNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+ICsJZGM1X2RjNl9ibG9ja2VkID0gaXNfZGM1X2RjNl9ibG9ja2VkKGludGVsX2Rw
KTsNCj4gKw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCkNCj4gKwkJ
cHNyMl9wcm9ncmFtX2lkbGVfZnJhbWVzKGludGVsX2RwLCBkYzVfZGM2X2Jsb2NrZWQgPyAwIDoN
Cj4gKwkJCQkJIHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ICsJZWxzZQ0K
PiArCQlwc3IxX2FwcGx5X3VuZGVycnVuX29uX2lkbGVfd2FfbG9ja2VkKGludGVsX2RwLA0KPiBk
YzVfZGM2X2Jsb2NrZWQpOyB9DQo+ICsNCj4gKy8qKg0KPiArICogaW50ZWxfcHNyX25vdGlmeV9w
aXBlX2NoYW5nZSAtIE5vdGlmeSBQU1IgYWJvdXQgZW5hYmxlL2Rpc2FibGUgb2YgYQ0KPiArcGlw
ZQ0KPiArICogQHN0YXRlOiBpbnRlbCBhdG9taWMgc3RhdGUNCj4gKyAqIEBjcnRjOiBpbnRlbCBj
cnRjDQo+ICsgKiBAZW5hYmxlOiBlbmFibGUvZGlzYWJsZQ0KPiArICoNCj4gKyAqIFRoaXMgaXMg
dGFyZ2V0ZWQgZm9yIHVuZGVycnVuIG9uIGlkbGUgUFNSIEhXIGJ1ZyAoV2FfMTYwMjU1OTY2NDcp
IHRvDQo+ICthcHBseQ0KPiArICogcmVtb3ZlIHRoZSB3b3JrYXJvdW5kIHdoZW4gcGlwZSBpcyBn
ZXR0aW5nIGVuYWJsZWQvZGlzYWJsZWQgICovIHZvaWQNCj4gK2ludGVsX3Bzcl9ub3RpZnlfcGlw
ZV9jaGFuZ2Uoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywgYm9vbCBlbmFibGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpICE9
IDIwICYmDQo+ICsJICAgICFJU19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAzMDAwLCBT
VEVQX0EwLCBTVEVQX0IwKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJZm9yX2VhY2hfaW50ZWxf
ZW5jb2Rlcl93aXRoX3BzcihkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsNCj4gKwkJc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKwkJdTggYWN0
aXZlX25vbl9wc3JfcGlwZXM7DQo+ICsNCj4gKwkJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5s
b2NrKTsNCj4gKw0KPiArCQlpZiAoIWludGVsX2RwLT5wc3IuZW5hYmxlZCB8fCBpbnRlbF9kcC0N
Cj4gPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKwkJCWdvdG8gdW5sb2NrOw0KPiArDQo+
ICsJCWFjdGl2ZV9ub25fcHNyX3BpcGVzID0gaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9w
aXBlczsNCj4gKw0KPiArCQlpZiAoZW5hYmxlKQ0KPiArCQkJYWN0aXZlX25vbl9wc3JfcGlwZXMg
fD0gQklUKGNydGMtPnBpcGUpOw0KPiArCQllbHNlDQo+ICsJCQlhY3RpdmVfbm9uX3Bzcl9waXBl
cyAmPSB+QklUKGNydGMtPnBpcGUpOw0KPiArDQo+ICsJCWlmIChhY3RpdmVfbm9uX3Bzcl9waXBl
cyA9PSBpbnRlbF9kcC0+cHNyLmFjdGl2ZV9ub25fcHNyX3BpcGVzKQ0KPiArCQkJZ290byB1bmxv
Y2s7DQo+ICsNCj4gKwkJaWYgKChlbmFibGUgJiYgaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bz
cl9waXBlcykgfHwNCj4gKwkJICAgICghZW5hYmxlICYmICFpbnRlbF9kcC0+cHNyLmFjdGl2ZV9u
b25fcHNyX3BpcGVzKSkgew0KPiArCQkJaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9waXBl
cyA9DQo+IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiArCQkJZ290byB1bmxvY2s7DQo+ICsJCX0N
Cj4gKw0KPiArCQlpbnRlbF9kcC0+cHNyLmFjdGl2ZV9ub25fcHNyX3BpcGVzID0gYWN0aXZlX25v
bl9wc3JfcGlwZXM7DQo+ICsNCj4gKwkJaW50ZWxfcHNyX2FwcGx5X3VuZGVycnVuX29uX2lkbGVf
d2FfbG9ja2VkKGludGVsX2RwKTsNCj4gK3VubG9jazoNCj4gKwkJbXV0ZXhfdW5sb2NrKCZpbnRl
bF9kcC0+cHNyLmxvY2spOw0KPiArCX0NCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQNCj4gIHBz
cl9zb3VyY2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBzZXFfZmls
ZSAqbSkgIHsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
IGluZGV4IGE0M2EzNzRjZmY1NTAuLjI3M2U3MGE1MDkxNWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBAQCAtNjAsNiArNjAsOCBAQCB2b2lkIGlu
dGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChzdHJ1Y3QNCj4gaW50ZWxfZHNiICpk
c2IsICB2b2lkIGludGVsX3Bzcl9wYXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsgIHZv
aWQNCj4gaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsgIGJvb2wN
Cj4gaW50ZWxfcHNyX25lZWRzX2Jsb2NrX2RjX3ZibGFuayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGludGVsX3Bzcl9ub3RpZnlfcGlwZV9jaGFu
Z2Uoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJICBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywgYm9vbCBlbmFibGUpOw0KPiAgYm9vbCBpbnRlbF9wc3JfbGlua19vayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9sb2NrKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gLS0NCj4gMi40My4w
DQoNCg==
