Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8643A8C629D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 10:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FD910E0D9;
	Wed, 15 May 2024 08:16:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idbQeRec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35AEB10E0D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 08:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715761001; x=1747297001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PrPep0M/PygP7bI1MFM/ytGJ8VPv6AlIbRJTaZlSThc=;
 b=idbQeRecAwakEjSt2MbG/NG+wqEuc+siloBhmxaTaqXKl+2/My5KepbO
 vlJW1dyS0sRmGUcN8+OkhgKCpQknVZkZwO+0cF3bdlSaOkdcHtIndPDpD
 1cSBFuoJW4P1EheMqMnshGwxp6clZe3pYZjMolUFJvXw9lrwXRvRifWHV
 h3FYV66AFgDtkz/lDk4KrAGq/bP9OjbqEF9JHmcKFt+V4RnmRb/snXnFX
 NqYhoNDAI5b+ma1DUpGTns9dr+K9bkEYO87uxD+hyFSk9Rrh4hne6/P1n
 UYByzvvNk4QNbzVPnCY/rHtfc6tFn09M6LtWZdk6OcGESjLARv49BNkDT w==;
X-CSE-ConnectionGUID: A1Ca1w96Sw6si4VdlIStUA==
X-CSE-MsgGUID: X5R8rzUeSoKOMMFKYZGIWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11647660"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11647660"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 01:16:40 -0700
X-CSE-ConnectionGUID: pw1EbYrORg6YlDiZ+1JR/g==
X-CSE-MsgGUID: ghuhNV1FRqe37zL9tQWZrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31006837"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 01:16:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 01:16:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 01:16:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 15 May 2024 01:16:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 01:16:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfzjOAgmdjYMdkSfb5QBegYu01kmmTNA3PRY+OQCRu1QUH88QL5TnTorTPaoOZ4VsqHvEqbJcrd457L26ZgIGjVgXMD/vnvM8QpEj84d882RnT1C0gPSuIFwEI0VEwvdNOsqN79BAaQeKKvFNDgvE3rOYNox1FEDPmPxdfcuwuWW7zUOO92DeQIQbfMPPTSjWj0BhK4E5gdPAe7X18LfsWV9HxgGvsKeZ5cp5RvA1ieykFUXIXm58qgXEWyvhAdjpiPEIHSNxrJHrdPR3SEFCDLp0qSWpOQJ7GyRuzqQOKE2pnnZwvL8XLRa5KqVBNkMBtcxH9OVcSR6+GWAzskccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PrPep0M/PygP7bI1MFM/ytGJ8VPv6AlIbRJTaZlSThc=;
 b=Ypn2KCqK5aoVokRLdBtsL1dVTXMUrOOD6ZLO0MDpx/89veLV11tZEY8gBLq5hfi5mUKD7Bmj4Dn8xQjPkYX7Rs8YHYeBicU604H9G+2U1niE8q021ype7gGKFWlJ4uE2k3mbBRuKP4bX2GDqhi5hO3yi3clG8LMk47YhiubRZ1LdAN1CDFPNGc92d0Z0TY6KTRN4vnTeJR1Rir7BnoQDvUE3bartOJIcZQXH4NQRawkVQUZWaxXII+DKpkKIGpDt/rLYeVsb2qWlKmu//hsUO/WExwY1KtMFgK7rqMozLaWrGE6ORoaE6uUsin+8CQ7uk6gg8N7a8bAeGWxHKga8Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.49; Wed, 15 May
 2024 08:16:36 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 08:16:36 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "tzimmermann@suse.de" <tzimmermann@suse.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: Regression on linux-next (next-20240506)
Thread-Topic: Regression on linux-next (next-20240506)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NA4sen+A
Date: Wed, 15 May 2024 08:16:36 +0000
Message-ID: <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: 0906452c-7c52-49d4-50be-08dc74b756ac
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eDJZclhnWFFTZDZ0cUM2cUhScllpalNQOFBOWmlzYkRDckd3OG5WbmNwVXVQ?=
 =?utf-8?B?eEY4TE1tdVcreGFpMHZGbHg0d0l3OUN0ZTJWV2IzWFBlc0VQckpOVXRlTXls?=
 =?utf-8?B?OXFCSVg4RXNJdzRlZWc4b29Fd3NMOEV3YXhUWEVmZ0xCWkFZdXM5WU9EU05K?=
 =?utf-8?B?WFZraisxL3NRR0tHckJKUmFsN21ucS9TQUlyMW1NWGFnQjVuZndEQngzUFd4?=
 =?utf-8?B?N3Z4eFExbkdyTFFJaWx4cVZGTnI4b3p3QzkrOUdhbFJoaWhZT2hjQzFMSit1?=
 =?utf-8?B?T3lXRThtdzliUzE3VUE5KzQvNkk2T2JmUjFLNWpaTThFQUdRT2hCRWgwSjZK?=
 =?utf-8?B?R1VXMSs0WFVBSncralcxekFTUXhVSUlQSGw2ZVVrWFpoV2NnWEd3Q01BU010?=
 =?utf-8?B?Zm9TU2EyQmhDVWFSdTFzcXhuc3p5RUU2TWhEc3dVZm5yclUxeEMzYXNkcDFn?=
 =?utf-8?B?UlcxWFN1NmV3c3FaNkJSY0FVcnJFSnFWQnZBN2ZBMkFHRkFlNHZ1dU5CSjBm?=
 =?utf-8?B?YzhtMEFWc25UaHJQbDF6UWFJc3dCbU5obm9rK0JuRVVpYm9CbEE5UHVCbjV6?=
 =?utf-8?B?NUorUStkYVJyYWJTZ3laMVAydVVrdlBzaGZ1eVdmYkEvWGhkeFl6a0diUDla?=
 =?utf-8?B?LzBqV1NWUnZ6OXAvaUdNb0lpRlVCWTk1aGhuQnpwY2xhSUZqR3pzcmJIcGpX?=
 =?utf-8?B?dXYyYStPZ3JOUWVyZUtJUE1mODBZTWxUaVFBaE5TUGh6N2Y3SHYyaisrN0tW?=
 =?utf-8?B?clNOWnNDZVp4SXI5M25MY0REQ3F1aXhQNVVYZ0d6OW1qZ21ZcWtkbjFFeis3?=
 =?utf-8?B?VXdNQ2FrUFN5ZlVBQ25XSE5MVFNLaFdEUW5mb2Zla21peFFLNTNtdlBnREsr?=
 =?utf-8?B?VFdUT3l0d3dpWkhjWHIzZFNyZm01U00ybFdablZ5bnNCUUVTejJUZWs5ajBK?=
 =?utf-8?B?UWRQaVZZUWFZY096cWYwSi82SFhYMDJudXJ6VFlTRWxtM2NJVlRDNWV1VFdY?=
 =?utf-8?B?SlpzRGVXUUtvUXVSTjFwZU9wWi9Pcmp1Vmh2NUFEcVJYSnN5ekVBWmgyMVlS?=
 =?utf-8?B?RU9YZytZQVRGSmZ1MmYxanRYb3FrUUo3Z1U3U3N3ZEpOUU8yS1lVMmhpeUxw?=
 =?utf-8?B?UWhza1pZcGhvRkRZazRtbUdOaThqVmxzb3FyRlBqMmh0bGtGdS9hR0VvUmpT?=
 =?utf-8?B?bXhVdkJzSmZ3c1JzY2lDQU15R28yNVphV3A3N0YraVF3TDI0RWp4K0JsZWxm?=
 =?utf-8?B?Z1hkaUI2NTlEaXBoMlI5SGVsNWhtYlU5T2dlcjQ1QWVHOE9adG1uT2hUeU41?=
 =?utf-8?B?ZFVNOUJ4dkJSRzlRSGpqdldESE1oZVVCRWZKZzlsSGpyWG1TemlHZ1U4OTF2?=
 =?utf-8?B?TURrZGIrN25zbHprVEo3ZFRPTFduQS9SNHNZTEN4bkZpRWplbHlNMjRkTFJY?=
 =?utf-8?B?RmNwMHZZRyt3SjE5a3NzaWJ5WTZZQ1M4WkROajQ2UWRoTitrcDB4VjF4bTFw?=
 =?utf-8?B?N3grdzRiZlNTbW5OWlUycytYdENOQ2VOUWlEczQ5UWxNK2lOd2tRT09lRGFX?=
 =?utf-8?B?UDNyOGkyampwY0VObm9tZTZNSUUxTk1YcDEvK0VjdDEva05YUm44bk81bksw?=
 =?utf-8?B?YUkwZzZsZ09tNVRIUmRGY0tzNEdORWJoRUtXS0gzd0V6WHhydnkzZm1zTGk0?=
 =?utf-8?B?Tng4UjJza1MydVFNZ0xzd29UZ0UwVFA3cUN1NHYvbDZlbG5yb0t3cmMyK2ZL?=
 =?utf-8?Q?lLlNyPDmI08j2yduDI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUdFdWFKTGR3SHNsZTFDM2FrQnQ4a3VhTlVkV2pqcmUxa2hzUmJncWVSNldw?=
 =?utf-8?B?azNhOFhOWG5nK0d6VTVNeTdFTkU3WHFMZkV4aVh4UzNyZlU0YWUyMUFDTjdG?=
 =?utf-8?B?cHNDMzFqMUhxNStheUd0ZmladlJHOWtKWlJueGtEUEQyUEdsUjlxcEd0K0hL?=
 =?utf-8?B?MnZQdmVLbUhDZHpsejMxdXh1YXRiTjhrVTF3Vm9SaHFYZlY2NFpLbE1DdU5U?=
 =?utf-8?B?MWxVNXZMb0l3OWVqNTZVYXlYRDBySUpSUDhCVzNHT2Q5RDVUT1FkeUV2Zlgz?=
 =?utf-8?B?dkR5dVRESWhZdW5zcTdrZWFKMlRkVDJISVhSK3FMcEkvVEx6MmxEbzF6WGFy?=
 =?utf-8?B?QmNySGx4WVBpWm81cEYycG0zcU93bmRzcVhpdHRqRU1USVE2UVhWUHpkMm5m?=
 =?utf-8?B?K2lzQmlrT3N3WXRXRUdhRUtpMHo3K0FsWVJQTldqMjhjOW1XMHhPMkRWNm5x?=
 =?utf-8?B?OGZFS0tOb1Z0STIyM2N1TEpYcTc0MVRrSlVlbFNpaU4xd3VWZDI1c0dpTGYr?=
 =?utf-8?B?UHJjOWd0RWswZlF2S2VUd3RqeUVVdkptZlZRUE9UbEZ4TkNIZWhMcENZcWpV?=
 =?utf-8?B?Zm9jOXdERVZoVlF6UFV2WjB5bWZYNUIyL1JMYk5QRWJpNUl2Wm9ROXZZQ3J4?=
 =?utf-8?B?Nlo5TWc1YjlkS0RVRXQ3RTU0VFBKWE1CNUFjNEhtU0o0aHlMY1NRRVFoOStK?=
 =?utf-8?B?VGxVTVFibnFqRjliRDdINUJqQnd6U0dWWERKM0FxWjZabmlGTXM3VVNrTExr?=
 =?utf-8?B?U3I2ZURsNUt2NGt6cUpURC9VTnpCeTBubWEzWDFHVWZReERJRkhjc1hCWXJo?=
 =?utf-8?B?NGdoUVZld3kxV3JJQzNJZ09mSXBaS1RySTNXd3lmWWQ4Qzg3cTZIdjlJRytD?=
 =?utf-8?B?RzVaaG8xWGtNUlVIWGdQbFNLRUJFSDNIei8weXZ1QUdtdWJGSHFlOUU0WUxG?=
 =?utf-8?B?ZXM1YnpFRUpxWkNRdGZ0TVJOdnB6T21kZWFIWWIwOTVxcXhyM0tLdldYWlFw?=
 =?utf-8?B?ZFU2ZWpkcXFEV2FaYXJqejFNbzc0ZWJIK0VHbkVGMzFxVjlLb3c3dUVHVHMz?=
 =?utf-8?B?aGdLVi9QZWdVWkRZSXNscXMxTW9zV0hpT0U5aTU4SkZ4Y01XVzdOT3FiOVdo?=
 =?utf-8?B?bzRqUXlmTzdMeDgrSHhUN1hFbXA3SFZJK1V5Q3pXOGg2b2pGR08zb0l0SWwy?=
 =?utf-8?B?NENmVUY0bTZhVFFYN3hDS2x4US95ekp5R1gxTTk1bm8xSXNKMVBnaGhReDNE?=
 =?utf-8?B?NGFKWVBkem1HSWJqWXlHZFJrQUtBODVMbVpqTDNiWUZCM3I5bTZjbWdZMEg3?=
 =?utf-8?B?enloVm8vWFVlNVgzSWlRdE9TcnV1cGtJcjEvTyt0SFEwdTZTOEhhVzhyVnYx?=
 =?utf-8?B?WkViVkxtRk1aVXRlRk5SQkswT01UUnUrNWZMdlBSaUVpU1krYUU0SnNDcXJ0?=
 =?utf-8?B?U3pVQWVoRVB1NkUrVEYzdytnakhvWlJZY0ZEQXBrMHlCYVh1NnhCc29uQ1pL?=
 =?utf-8?B?Q1Z3cU5lbzV4OUc1NGNpMVdhUDRkQi9SY204L2NUbnRLakVhN1BKTmFjQzI2?=
 =?utf-8?B?Ly9nRnVFTklGNmxvVEhVdGVHZFB2UXA2eGNZSHFxTEVYYVlUbEtiVjg4VERV?=
 =?utf-8?B?Ymo3enNmdUxkanFqVndQMEhQdDZnb0ZCeTdoRDhMMkVUd1UxZ0pqWmhvV2pk?=
 =?utf-8?B?R0Q1MnkzZVNVQS9NOTZOS2s2ZDdGOVVOeGxPanNkYnRrNXdSTjR1bUl2c2pw?=
 =?utf-8?B?Uk9yYnNXakttQVIwU2R2R2QrNGNBa3o3dUNuSTJrVFFWZnBhQlNZV0FJVVR4?=
 =?utf-8?B?UDBsTk9GQ01Kb0NXbUY2U28rTHhxWDlxOTNqYXpqa0N0NGM0SUpRMTc3RTZO?=
 =?utf-8?B?WXdlNjd6WmVKR0twa2YzcWU5WFFtdFdKaEdpTldQeDlmWjMwR0tEYkdwYTRZ?=
 =?utf-8?B?dEhpNkJ3SjloZVB2TGx4Unl4a1F5U09CdGlVWGYzWDNEbnQ4MitFQVA3Umd0?=
 =?utf-8?B?dXhnYUpaRjBBMUFDR2piZWJiWnBvV3Zsa1plZlNZTUlMZFpyVVNtZlNUR2sy?=
 =?utf-8?B?S2JYdTQwZmdqM2pLRHh2YmFFKzJFVjFyUzdtRTA2eTRtWTFpY0IxUWZ1RWdB?=
 =?utf-8?B?Z1ByUldlc05QSlJzUllPUVNhbHpVcWp5Uko4VUcrVC9MdmV6ZW1TRkdoUDdz?=
 =?utf-8?B?bXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0906452c-7c52-49d4-50be-08dc74b756ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 08:16:36.1186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2/vt+roYIcyksM3atVAhN+IjpCyEXy3A4pX+0N43kjExZiMzqcrj5RNYLJUHSzdVa8gZ1lXPwk/YfLHjVlqfAySDPNPgFRTloPtlvFapUCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hcg0KPiBTZW50OiBXZWRuZXNkYXksIE1heSA4LCAyMDI0IDM6MDUgUE0NCj4gVG86IHR6
aW1tZXJtYW5uQHN1c2UuZGUNCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IEt1cm1pLCBTdXJlc2ggS3VtYXINCj4gPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBT
YWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlZ3Jl
c3Npb24gb24gbGludXgtbmV4dCAobmV4dC0yMDI0MDUwNikNCj4gDQo+IEhlbGxvIFRob21hcywN
Cj4gDQo+IEhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLg0KPiANCj4gVGhpcyBtYWlsIGlzIHJlZ2Fy
ZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kgcnVuc1sxXSBvbiBsaW51
eC0NCj4gbmV4dCByZXBvc2l0b3J5Lg0KPiANCj4gU2luY2UgdGhlIHZlcnNpb24gbmV4dC0yMDI0
MDUwNsKgWzJdLCB3ZSBhcmUgc2VlaW5nIHRoZSBmb2xsb3dpbmcgcmVncmVzc2lvbg0KPiANCj4g
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+IFN0YXJ0aW5nIGR5bmFtaWMgc3VidGVzdDogZ3Rf
Y29udGV4dHMNCj4gKGk5MTVfc2VsZnRlc3Q6MTEwNykgaWd0X2ttb2QtV0FSTklORzogaTkxNTog
VW5rbm93biBzeW1ib2wNCj4gYWNwaV92aWRlb191bnJlZ2lzdGVyIChlcnIgLTIpDQo+IChpOTE1
X3NlbGZ0ZXN0OjExMDcpIGlndF9rbW9kLVdBUk5JTkc6IGk5MTU6IFVua25vd24gc3ltYm9sDQo+
IGFjcGlfdmlkZW9fcmVnaXN0ZXJfYmFja2xpZ2h0IChlcnIgLTIpDQo+IChpOTE1X3NlbGZ0ZXN0
OjExMDcpIGlndF9rbW9kLVdBUk5JTkc6IGk5MTU6IFVua25vd24gc3ltYm9sDQo+IF9fYWNwaV92
aWRlb19nZXRfYmFja2xpZ2h0X3R5cGUgKGVyciAtMikNCj4gKGk5MTVfc2VsZnRlc3Q6MTEwNykg
aWd0X2ttb2QtV0FSTklORzogaTkxNTogVW5rbm93biBzeW1ib2wNCj4gYWNwaV92aWRlb19yZWdp
c3RlciAoZXJyIC0yKQ0KPiAoaTkxNV9zZWxmdGVzdDoxMTA3KSBpZ3Rfa21vZC1DUklUSUNBTDog
VGVzdCBhc3NlcnRpb24gZmFpbHVyZSBmdW5jdGlvbg0KPiBpZ3Rfa3NlbGZ0ZXN0X2V4ZWN1dGUs
IGZpbGUgLi4vLi4vLi4vdXNyL3NyYy9pZ3QtZ3B1LXRvb2xzL2xpYi9pZ3Rfa21vZC5jOjE1OTQ6
DQo+IChpOTE1X3NlbGZ0ZXN0OjExMDcpIGlndF9rbW9kLUNSSVRJQ0FMOiBGYWlsZWQgYXNzZXJ0
aW9uOiBlcnIgPT0gMA0KPiAoaTkxNV9zZWxmdGVzdDoxMTA3KSBpZ3Rfa21vZC1DUklUSUNBTDog
a3NlbGZ0ZXN0ICJpOTE1DQo+IGlndF9fMjNfX2xpdmVfZ3RfY29udGV4dHM9MSBsaXZlX3NlbGZ0
ZXN0cz0tMSBkaXNhYmxlX2Rpc3BsYXk9MSBzdF9maWx0ZXI9Ig0KPiBmYWlsZWQ6IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkgWzJdIER5bmFtaWMgc3VidGVzdCBndF9jb250ZXh0cyBmYWlsZWQu
DQo+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiBEZXRhaWxzIGxvZyBjYW4gYmUgZm91bmQg
aW4gWzNdLg0KPiANCj4gQWZ0ZXIgYmlzZWN0aW5nIHRoZSB0cmVlLCB0aGUgZm9sbG93aW5nIHBh
dGNoIFs0XSBzZWVtcyB0byBiZSB0aGUgZmlyc3QgImJhZCINCj4gY29tbWl0DQo+IA0KPiBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gMmZkMDAxY2Qz
NjAwNTg0NmNhYTY0NTZmZmYxMDA4YzZmNWJhZTlkNCBpcyB0aGUgZmlyc3QgYmFkIGNvbW1pdCBj
b21taXQNCj4gMmZkMDAxY2QzNjAwNTg0NmNhYTY0NTZmZmYxMDA4YzZmNWJhZTlkNA0KPiBBdXRo
b3I6IFRob21hcyBaaW1tZXJtYW5uIHR6aW1tZXJtYW5uQHN1c2UuZGUNCj4gRGF0ZTrCoMKgIEZy
aSBNYXIgMjkgMjE6MzI6MTIgMjAyNCArMDEwMA0KPiANCj4gwqDCoMKgIGFyY2g6IFJlbmFtZSBm
YmRldiBoZWFkZXIgYW5kIHNvdXJjZSBmaWxlcw0KPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gDQo+IFdlIGFsc28gdmVyaWZpZWQgdGhhdCBpZiB3
ZSByZXZlcnQgdGhlIHBhdGNoIHRoZSBpc3N1ZSBpcyBub3Qgc2Vlbi4NCj4gDQo+IENvdWxkIHlv
dSBwbGVhc2UgY2hlY2sgd2h5IHRoZSBwYXRjaCBjYXVzZXMgdGhpcyByZWdyZXNzaW9uIGFuZCBw
cm92aWRlIGEgZml4DQo+IGlmIG5lY2Vzc2FyeT8NCj4gDQorSmFuaSBODQoNCkdlbnRsZSBSZW1p
bmRlciDwn5iKDQoNCj4gVGhhbmsgeW91Lg0KPiANCj4gUmVnYXJkcw0KPiANCj4gQ2hhaXRhbnlh
DQo+IA0KPiBbMV0gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvbGludXgtbmV4dC9j
b21iaW5lZC1hbHQuaHRtbD8NCj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtDQo+IG5leHQuZ2l0L2NvbW1pdC8/aD1uZXh0LTIw
MjQwNTA2DQo+IFszXSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9saW51eC1uZXh0
L25leHQtMjAyNDA1MDYvYmF0LW10bHAtDQo+IDkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9j
b250ZXh0cy5odG1sDQo+IFs0XSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9uZXh0L2xpbnV4LQ0KPiBuZXh0LmdpdC9jb21taXQvP2g9bmV4dC0NCj4gMjAy
NDA1MDYmaWQ9MmZkMDAxY2QzNjAwNTg0NmNhYTY0NTZmZmYxMDA4YzZmNWJhZTlkNA0K
