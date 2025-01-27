Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4819A1D8C6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 15:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C347F10E55E;
	Mon, 27 Jan 2025 14:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUtNZf2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7ECE10E31A;
 Mon, 27 Jan 2025 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737989589; x=1769525589;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KiSNlezTHAttCIIw+LTKZ9To0MesIcbAmkaUWkZrmKk=;
 b=ZUtNZf2Rk+CVjUoEZn4WhfGyjhBpu4UPKTc2YNiN3Gwz7fmQnyWNvG+D
 qCYX7m/qqQBbC8S0AMjrPc/Ra5p20NJzFRmAGijDEYCo3WG36OTumJiyy
 jQh7pqbP1b0cLsS6H0PTxWu7c4OlQApqPorzNyxbqz7yAQ5NrSDhw9WBx
 nDiB7e4uQ/ZRuaMNpGjWBAZicS8uc59kgwkNYPkXQpBcC550Md1aHeG40
 nQx+XvGPIZUYFtztJ7W21vlhWvfB6q3JRrOVEX5xySFS3WcKzDwqB/z48
 ALHQuBm9jZwsnPCtML5qBkBWzh488MUW8JSZ0+d3dF/vsP2ithlzieN+Q w==;
X-CSE-ConnectionGUID: zdeE8hd9Qz6/Id/k4AHcSQ==
X-CSE-MsgGUID: N+oCJ59jTOC25Qqx1JBAWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="37651417"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="37651417"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 06:53:08 -0800
X-CSE-ConnectionGUID: /xIXXt0LRlKQG6GbEEdGsA==
X-CSE-MsgGUID: earfd4lmQuyt0xyELs1xvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113426679"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 06:53:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 06:53:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 06:53:07 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 06:53:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fqhE+BV84M7kqok3vkShwBtrVelr9LXFsVvnWDxeddxeAgIvmoHUCYZcQA7FFSP1IEnw+M2S4DvfmK2SeyIUXRBidL4tUyvTCtnNYCICLuPQiqnHmvyUqaE4zLQgUAzW5Js8vfP/QBmGw+LU5DNEeyJABfiBiAkKK971+qNM4P7uZh2SfnrjLCOO0I/PwMDc1jctChJR6Heq0LdMASBU883cmHAwnOpQWuJwWdIFnjA1CyKi2D6HYSbmSAATTgbWjTAfrwQUexqx8L1Sn+I6SHRcHQTNUbRgwicLkBUzHmybnqc8xFED/SzVz2e21BQ7AkEHYJp+sqE23YAFOeSKaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KiSNlezTHAttCIIw+LTKZ9To0MesIcbAmkaUWkZrmKk=;
 b=x1asObuo6GRlGDEOCvDrPVjh1S6hC5pDG1cy4/meq/OAfgPoQgnhcSQPFGY+RUbjg+RkGn0+LzKisaGuQOXrwx3PWn2bWFbULtvjQ+aLlu+tyfSEhUEJzuULLWdpVxWZNnafTnqoWE4mYbC7ixXbLjLP62ogzAefXnStqnoUDOZgFYXXua5B734E5ELkRQfNnoXic2in9mhAM+h9ymv0vXoGSecNJ3xEM/wY7VPOxuVPYGMRZvBMmDfz2igZnNr6UbXuDrcQl1UFuWkJSQgXpGDK6ywIFKhGq6xIRGOsrdkP5tfknlSwjC4SYoUlkHxCEbD/83wtzybDIxvOEpezNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Mon, 27 Jan
 2025 14:53:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 14:53:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Topic: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Index: AQHbbk6705aEA+Nk3UqP1hogPM9mTrMlzI0AgAAFBoCAAAtJAIAAAQMAgAACR4CABMxhgA==
Date: Mon, 27 Jan 2025 14:53:04 +0000
Message-ID: <8db696d45a673e2b0e03510c9476779323e61700.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-12-jouni.hogander@intel.com>
 <Z5N73tdHQqLOKhk7@intel.com>
 <dbf6d20903c2ca8dbab3437b0af7ad414b14f99c.camel@intel.com>
 <Z5OJjKVW5QJEKrPP@intel.com>
 <78d2f599c2ebffb3936071048b3e8d3a343de5c1.camel@intel.com>
 <Z5OMT6x4G-Km9X_I@intel.com>
In-Reply-To: <Z5OMT6x4G-Km9X_I@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7137:EE_
x-ms-office365-filtering-correlation-id: ea28fb0a-709e-4807-0efd-08dd3ee24dd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cFZXdkZ4UzM5b3ZBakxma0x6cWM3a1VJL21XelBKd0NUYVRNd3hEWTkyU1BM?=
 =?utf-8?B?ZlFSY2dmc05CUElXVmRpODl1YUpUc3lMdkZiazFieDFvd084aHNFUm1XZlR5?=
 =?utf-8?B?NXFxc0MrWXZvZHJMa1NnNlZIY0dMQ1BtbnVhNmV4dWdSMSt0cWdWYk90SkNp?=
 =?utf-8?B?RExDSFVEQTd4RTBxWEp5SFhuTGJxTkdzL2dGdUxnWkdOVlE0NTFPTHk3TnVX?=
 =?utf-8?B?dzVldkRCSnAxcmE3ZExSQXYwK240d21XUXVjYnV4ckdpd0pOeVJ6ZlZ3ZDkx?=
 =?utf-8?B?REU4TEJ4Umo0NUczc1lxMDA1djZFVnZzWDA5MDdDb0gwUlo3dDhBY3JWbHBo?=
 =?utf-8?B?QnhXT0VZdGZtL3F3Mk9yNDBDTHI3MnAxcmVVNFpqLzRldnFFc1QxY3RWczNm?=
 =?utf-8?B?ZUVuODVmUWVhK1F4cE5GVHJOR29VUVFVRVcvd21VL3FlSzl0Q3ZTMGlLclA2?=
 =?utf-8?B?U2V1Y0NVaDc2N0Q5TzZ6SFhWQlNheEFOWWx0aHM2Wml4bDlxSmIzZkV4R2tW?=
 =?utf-8?B?MjhQMHNmejNOMzdqa0xKYmwySXVDNitQSEk0Q3hQbS9weEdBN1RkTlIwOXg1?=
 =?utf-8?B?MmZTeTBrSENsVDM1U0UrVm4vVmdxZTlYRDE3dUVQMkNrUjZ3bGhHVGdrdWwx?=
 =?utf-8?B?ajRENWk2NzVyUG5vaGVkSUVwNDJsZ2NYMDFSRkppcHJPQXVSRVVOdXNiUnFP?=
 =?utf-8?B?SThnRmVWL0VNZ2dONnVNU0RRUTdFZkxKTzN5cmRpNnIyWisxWlVrKzV6ays2?=
 =?utf-8?B?L29wUDBLRVZVK3AwT2gybWl3R3J4Q3daOHBrYzFkcmtkc3BVUlpJVWVnOWZX?=
 =?utf-8?B?ZU1SeEFEZWZTMUEyb3J6QjN1SjhZUEM1bFMyN0Zzc2xFZk5UNjBGWG9GQnRG?=
 =?utf-8?B?UHJ2QzBYYmZROGlDczc3cWVMeUtYVGZxTzNhaW5Kejk2NlYxS1dPdjljb2NJ?=
 =?utf-8?B?K0pIVlpJZkR2Yk54OTZDc0ZFNkNVZWNVa2E0UmVwWklybTUreTQrcnhsZGZJ?=
 =?utf-8?B?bk45c09paHZRbFpSSWdEU2NIRjVacEZwV1hRSU1WQnlHdmVBQlRXOHBNUTlB?=
 =?utf-8?B?VloxQTJaYmlmNVZMNkdJRVEzM0xSbFVnT0dYYzcvUVM1RnFpeUcvajdoVjBT?=
 =?utf-8?B?OFhGMDJRSy84SFQxdzBYdnZVN0pNWkJKNlMwZGJlYS8yK3VVUk1vMFQvQlA0?=
 =?utf-8?B?SEZqbjAxd2srY0x4OXJLNmlaUDVSKzJKWS9EM1dSNlA0L3lWNXM2Q25vUTNJ?=
 =?utf-8?B?VjIxTE1aT1RmcmVtRXltWjVJaVNHNGV2R0RiamZ0N0d5ZVdKMHpqK2VHRmNF?=
 =?utf-8?B?VXlSV2Rsd2VFeU4wT2djOHNnVC9vdFlaQ1NxMlJFUWRjM2NPNTlPTFhHWUdv?=
 =?utf-8?B?RlJjYnd4eVREUWpsWVJBNlhKQ0dqbUlsMVRVV1NPalBOTnNWTGpqdjJUcjda?=
 =?utf-8?B?c1lXRjdnaEdUYmpmV0NzVG9MeVVIanEvNURjZ2d2TFp4Umw1cVVOdzJmamVV?=
 =?utf-8?B?VGE5TmFLdTJrZ1huRUtYWFhYdy9lK0NKZ2NaZG5COURlMjlkSHVDcFNQVzBq?=
 =?utf-8?B?R1Z5bkRyMHFWV1l6YWczZFdvK2M4L1djUkRsNjV1bmNlRTNDakdnWmIxNWxG?=
 =?utf-8?B?MlQ5T3pCUVhuMmNOVG5Hc2lPVmZKdkhkT01qRktFeFN6MGxEY0hHcjVXTmhD?=
 =?utf-8?B?RjdZZmtKaTJvd3dYNi9QRTdlZ0tjVzBIU21WSUoySWRiOWJLRWgrOENRQmFO?=
 =?utf-8?B?UktHSW1HQk1udVFJekgrSkNGWnFTOEdydUZxMCswc1cxQkxiUDE0R3dzWmJW?=
 =?utf-8?B?U09vMXl5c1ZlZDNEWkkrZ29HajhydVVDeWpQVEh0K1pSSDJZbDZDdFdSeWdP?=
 =?utf-8?B?dFNTWVNoUDVtdmpCbjRoeTlDRGlhZTB6bHdHYnN2WGFpU3NDenA0bUlkcllI?=
 =?utf-8?Q?/8wNObomtH722CqtlRh9Ja9WmxOk8jAJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NlVhcDR4VUpTSlhRZStoeXRNOVh0RkZlTnZtR0YycXJ2R05WdW5MRTkrdmdq?=
 =?utf-8?B?R0lXdTlIRWRQRWNSYlFGTURxTEh4Z1p3M2ttbDRWRzZGSERFc1ZqUkdlRVM3?=
 =?utf-8?B?c2NYcERHU0NNdGpFUHpCc3Y2ekQ2T0NjanB4c0Nicm1Gb1hrWkVXU3M5R0Yx?=
 =?utf-8?B?S0ZpdWNPcXlHZGFGRi9JTkZFOURXNGdMdVlWVExzSXFPZzlheE9PaDlVa1BQ?=
 =?utf-8?B?L3dXaGNLTmxSTjJnNmo0TWt3bEUzTlFGNVlibzNaTzR1SkloZFlFdzM2bnMv?=
 =?utf-8?B?SEtYRzlueUNBbGxKNDZ5bGxrd3ZpaGxPUUhiZmFlZXluY3NOekREVnFyYytD?=
 =?utf-8?B?d0FLbUkrMHJ2djIrMnZsa2didkg5WC9ZZ05CbmVFdExJRTBnVDF2QVp0UEc5?=
 =?utf-8?B?ZldPMjVySXFGdEJUQnJ3U29Jam9SdGs0UEhvS0htL1d2cDdpSVlBV3UvbFRw?=
 =?utf-8?B?WXFjYzhjU3VzTUZMdGxvZjV3WnVSYVZoWnBLeHZ6Y3BMclpKRDg5d0o4dS80?=
 =?utf-8?B?bEN1REZsWHU0NTBMdjIrVFhwZllOODVaM0NlTG83NlVseDhSVVo5eDZQcU1s?=
 =?utf-8?B?R0dTK1E1VHViaHk0aEJjdDJVNytDNUVHRE1oUUxuOEhOeXhqSkF5d0QwS1pm?=
 =?utf-8?B?dDNBUHQ4c0pRK1g3bytMWFUxaVphWERoTzZqMFpsM05CRkpmOHljZ2hFamNG?=
 =?utf-8?B?azNlcFllc2JuejBTYU1mWk10TkZESWlzOThvQ0FqMm1kbnpFWFVmOXIyWkFW?=
 =?utf-8?B?bDI0c0xiSWZpdVRWUmM0N1hGcmJEclgwTFFtUnVSaEZTd2JVbi84eFBrK2hE?=
 =?utf-8?B?RWJqTDNta2U4MzVpTnhmeU1VSGZDUmpFTHVCNTNDVkVMdXdwL3JiaVBpYjNp?=
 =?utf-8?B?bzM0S0R1eXFiMEorcXpuQWVVdTJIU04vSC9weFhNTlV5TzBuYjI0U3dRQmdN?=
 =?utf-8?B?aTRqOWVjVGY3c0tKelJPL0NZTkpqN1hUWEIvTURLSlpRckNDV1N1K1p6d3Bz?=
 =?utf-8?B?bGxhbFlDcCttbmtyN21DN1BYbHJFNkpRSnVIRmtueStSVWdMa2dyOG93MGZh?=
 =?utf-8?B?MkNiK2J1RFBzT281OVRxdTBSeVdmWm9vcm9UY25iTHJRSTNkSUx0NEpUb1hM?=
 =?utf-8?B?b2FOWmdDUXRLNldiRVZ3Vzk2RTJoVDRQY0d2Vk9WRlBnSXhCTkwveUg3Rm5P?=
 =?utf-8?B?TjVDVDVLUDJ3UHhQSFJuTFJ6a1dINmF3bnd4MDV3amJXOXpVcHVYODVCWWlR?=
 =?utf-8?B?aksydnlWeTlDU0xrYytKSmZzMlIybDRkamVQb2ZmQXE5UXFaQTYwN09EbUJ4?=
 =?utf-8?B?c0h5YXdPZTJoM0FjNnY4Z2ZzQmNNb2FQdGtRWk9VUk4yMzdQR3p5THJVS3N5?=
 =?utf-8?B?V2ZlRFhUM2EyWUU4M09BZzZoa1lVTDRzZzREbmJBWG94VUFUUnFudzhZTXhX?=
 =?utf-8?B?dUFUQUtOcTBCU2R1a2swazJPaXpYZitHb2ViVmZPa3BwVzMwby9xbXVMYk5i?=
 =?utf-8?B?SHJNRTN4MEE0d3R2QVBiQ09scSsvc1hFTEc2YThSQUVwTHdxWVY1Z1lFMzE0?=
 =?utf-8?B?TDlZZUpVUVE1dzRvWXJvbExURjQrNEgwR0NQRnArT3FSRGxlaytDdGhRaVVM?=
 =?utf-8?B?Yi9BajBjMFpSYytLOG92S1BVcmlWd2N2SFVZcUFjTzJVTHBTcDV5L3p4UGhQ?=
 =?utf-8?B?c053STRUSFFnLzZ6MkJuZTNxbjdUdmRmMS93dlJlNklhSG9rOERYcmtraExx?=
 =?utf-8?B?eGJNb0ZNaTlHR0RVREVrS1ViTVFPMUNXM3lra2RSSWVaS1E5Wmt0NjRZM3Fm?=
 =?utf-8?B?RzJBMGZkZ1Fja1dDd1NLb1JSaW4xRHN5d0RSaklNVDhERnJKQXhDUmRSdkdU?=
 =?utf-8?B?SEp4N2d6VXVsdi8rN0VWaXdMbEg2WWNQTXNBUUk3UDI4SnhzUVNUNnV2bDJ6?=
 =?utf-8?B?YUtydGpBN1FNZ3lCZmhhQ0dNbENINXZyYWJmUmFRUjA1Mk5ianpGUFV5eDFE?=
 =?utf-8?B?Zm02ZFUzTWFNSGtzRzdMeE1GVVMwTW54SlJ5RTFhNkZBTkpxODhyTXRFNVdi?=
 =?utf-8?B?aHl6MVh6YUFKNzdhaWM0TW9TY1pKY3dPNzBBWkNoSUhVbzg2UW9sclJGM1d2?=
 =?utf-8?B?OEFTSzVRYmEwMnBwSHJvSzM1cTBHN2puMWdncWJjNUZvVXdNVnlISmdxaUpm?=
 =?utf-8?B?ZXQyODV3UGNLcUNYbkdYYjg5QTkxYW1oQ2cwbFR0eEc1L1pEa252Qmt1UnFL?=
 =?utf-8?B?cVRxVHNxOGRXZW9mYi9Jdm14VW1nPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <841E8B4CB2EAB4498BEBA9C4D3E5551B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea28fb0a-709e-4807-0efd-08dd3ee24dd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 14:53:04.5402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /YlNYwQY10Ay+MC4iLPfrZ15rnVmOTW5aE/BpKvT1LYSgJQHkgFchsarULpCI4CkWSlWg6tcOeJVVKYMbVSKokU3hi++GnOXmTg40ApHsCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDE0OjQ5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjQxOjExUE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjUtMDEtMjQgYXQgMTQ6MzcgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDExOjU3OjEw
QU0gKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+ID4gT24gRnJpLCAyMDI1LTAx
LTI0IGF0IDEzOjM5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gT24g
RnJpLCBKYW4gMjQsIDIwMjUgYXQgMTI6NTY6MjJQTSArMDIwMCwgSm91bmkgSMO2Z2FuZGVyDQo+
ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gPiBQSVBFRFNMIGlzIHJlYWRpbmcgYXMgMCB3aGVu
IGluIFNSREVOVChQU1IxKSBvcg0KPiA+ID4gPiA+ID4gREVFUF9TTEVFUChQU1IyKS4NCj4gPiA+
ID4gPiA+IE9uDQo+ID4gPiA+ID4gPiB3YWtlLXVwIHNjYW5saW5lIGNvdW50aW5nIHN0YXJ0cyBm
cm9tIHZibGFua19zdGFydCAtIDEuIFdlDQo+ID4gPiA+ID4gPiBkb24ndA0KPiA+ID4gPiA+ID4g
a25vdyBpZg0KPiA+ID4gPiA+ID4gd2FrZS11cCBpcyBhbHJlYWR5IG9uZ29pbmcgd2hlbiBldmFz
aW9uIHN0YXJ0cy4gSW4gd29yc3QNCj4gPiA+ID4gPiA+IGNhc2UNCj4gPiA+ID4gPiA+IFBJUEVE
U0wgY291bGQNCj4gPiA+ID4gPiA+IHN0YXJ0IHJlYWRpbmcgdmFsaWQgdmFsdWUgcmlnaHQgYWZ0
ZXIgY2hlY2tpbmcgdGhlDQo+ID4gPiA+ID4gPiBzY2FubGluZS4gSW4NCj4gPiA+ID4gPiA+IHRo
aXMNCj4gPiA+ID4gPiA+IHNjZW5hcmlvIHdlIHdvdWxkbid0IGhhdmUgZW5vdWdoIHRpbWUgdG8g
d3JpdGUgYWxsDQo+ID4gPiA+ID4gPiByZWdpc3RlcnMuDQo+ID4gPiA+ID4gPiBUbw0KPiA+ID4g
PiA+ID4gdGFja2xlDQo+ID4gPiA+ID4gPiB0aGlzIGV2YWRlIHNjYW5saW5lIDAgYXMgd2VsbC4g
QXMgYSBkcmF3YmFjayB3ZSBoYXZlIDENCj4gPiA+ID4gPiA+IGZyYW1lDQo+ID4gPiA+ID4gPiBk
ZWxheQ0KPiA+ID4gPiA+ID4gaW4gZmxpcA0KPiA+ID4gPiA+ID4gd2hlbiB3YWtpbmcgdXAuDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAxMiArKysrKysrKysr
KysNCj4gPiA+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiA+ID4gPiA+ID4gaW5kZXggYmI3N2RlZDhiZjcyNi4uOTE0ZjBi
ZTQ0OTFjNCAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gPiA+IEBAIC01MjgsNiArNTI4LDE4IEBAIHZv
aWQgaW50ZWxfZHNiX3ZibGFua19ldmFkZShzdHJ1Y3QNCj4gPiA+ID4gPiA+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gPiA+ID4gPiDCoAlpbnQgbGF0ZW5jeSA9DQo+ID4gPiA+ID4g
PiBpbnRlbF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtDQo+ID4gPiA+ID4gPiA+IGh3
LmFkanVzdGVkX21vZGUsIDIwKTsNCj4gPiA+ID4gPiA+IMKgCWludCBzdGFydCwgZW5kOw0KPiA+
ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+ICsJLyoNCj4gPiA+ID4gPiA+ICsJICogUElQRURTTCBp
cyByZWFkaW5nIGFzIDAgd2hlbiBpbiBTUkRFTlQoUFNSMSkgb3INCj4gPiA+ID4gPiA+IERFRVBf
U0xFRVAoUFNSMikuIE9uDQo+ID4gPiA+ID4gPiArCSAqIHdha2UtdXAgc2NhbmxpbmUgY291bnRp
bmcgc3RhcnRzIGZyb20NCj4gPiA+ID4gPiA+IHZibGFua19zdGFydA0KPiA+ID4gPiA+ID4gLSAx
Lg0KPiA+ID4gPiA+ID4gV2UgZG9uJ3Qga25vdw0KPiA+ID4gPiA+ID4gKwkgKiBpZiB3YWtlLXVw
IGlzIGFscmVhZHkgb25nb2luZyB3aGVuIGV2YXNpb24NCj4gPiA+ID4gPiA+IHN0YXJ0cy4NCj4g
PiA+ID4gPiA+IEluDQo+ID4gPiA+ID4gPiB3b3JzdCBjYXNlDQo+ID4gPiA+ID4gPiArCSAqIFBJ
UEVEU0wgY291bGQgc3RhcnQgcmVhZGluZyB2YWxpZCB2YWx1ZSByaWdodA0KPiA+ID4gPiA+ID4g
YWZ0ZXINCj4gPiA+ID4gPiA+IGNoZWNraW5nIHRoZQ0KPiA+ID4gPiA+ID4gKwkgKiBzY2FubGlu
ZS4gSW4gdGhpcyBzY2VuYXJpbyB3ZSB3b3VsZG4ndCBoYXZlDQo+ID4gPiA+ID4gPiBlbm91Z2gN
Cj4gPiA+ID4gPiA+IHRpbWUNCj4gPiA+ID4gPiA+IHRvIHdyaXRlIGFsbA0KPiA+ID4gPiA+ID4g
KwkgKiByZWdpc3RlcnMuIFRvIHRhY2tsZSB0aGlzIGV2YWRlIHNjYW5saW5lIDAgYXMNCj4gPiA+
ID4gPiA+IHdlbGwuDQo+ID4gPiA+ID4gPiBBcw0KPiA+ID4gPiA+ID4gYSBkcmF3YmFjayB3ZQ0K
PiA+ID4gPiA+ID4gKwkgKiBoYXZlIDEgZnJhbWUgZGVsYXkgaW4gZmxpcCB3aGVuIHdha2luZyB1
cC4NCj4gPiA+ID4gPiA+ICsJICovDQo+ID4gPiA+ID4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNf
cHNyICYmICFjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4gPiBoYXNfcGFuZWxfcmVwbGF5KQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IFdoYXQncyB0aGUgZGVhbCB3aXRoIHBhbmVsIHJlcGxheSBoZXJl
Pw0KPiA+ID4gPiANCj4gPiA+ID4gSSBjb3VsZG4ndCBzZWUgUElQRURTTCByZXR1cm5pbmcgMCB3
aGVuIHVzaW5nIFBhbmVsIFJlcGxheS4NCj4gPiA+ID4gRXZlbiBvbg0KPiA+ID4gPiBzYW1lIHNl
dHVwIHdpdGggUFNSIEkgc2F3IGl0LCBidXQgd2l0aCBQUiBJIGNvdWxkbid0IHNlZS4NCj4gPiA+
IA0KPiA+ID4gSG1tLiBBcmUgeW91IHN1cmUgaXQncyByZWFjaGluZyBEQzUvNj8NCj4gPiA+IA0K
PiA+ID4gVGhvdWdoIEkgc3VwcG9zZSBpdCdzIHBvc3NpYmxlIHRoYXQgcGFuZWwgcmVwbGF5ICh1
bmxpa2UgUFNSKQ0KPiA+ID4gZG9lcyBwcmV0dHkgbXVjaCBldmVyeXRoaW5nIGZyb20gdGhlIERN
QydzIERDIHN0YXRlIGhhbmRsZXIsDQo+ID4gPiBzbyBhcyBzb29uIGFzIHlvdSByZWFkIHRoZSBy
ZWdpc3RlciBpdCByZXN0b3JlcyB0aGluZ3MgZnVsbHkNCj4gPiA+IGVub3VnaCB0aGF0IHlvdSBn
ZXQgdGhlIHZibGFua19zdGFydC0xIHJlc3BvbnNlLi4uDQo+ID4gDQo+ID4gTWF5YmUgd2UganVz
dCBhZGQgdGhhdCBldmFzaW9uIHdpdGhvdXQgY2hlY2tpbmcgcGFuZWwgcmVwbGF5LiBJdA0KPiA+
IHNob3VsZG4ndCBiZSB0b28gZXhwZW5zaXZlIGFueXdheXMuIFdoYXQgZG8geW91IHRoaW5rPw0K
PiANCj4gWWVhaCwgdGhhdCBzZWVtcyBmaW5lIHRvIG1lLg0KPiANCj4gQnV0IEkgc3RpbGwgdGhp
bmsgeW91IHNob3VsZCB0cnkgdG8gZG91YmxlIGNoZWNrIHRoYXQgaXQNCj4gcmVhbGx5IHJlYWNo
ZXMgREM2IHdpdGggcGFuZWwgcmVwbGF5IGRlc3BpdGUgUElQRFNMIG5vdA0KPiBnZXR0aW5nIHJl
c2V0LCBzbyB0aGF0IHdlIGF0IGxlYXN0IHVuZGVyc3RhbmQgYSBiaXQgYmV0dGVyDQo+IHdoYXQg
aXMgYWN0dWFsbHkgaGFwcGVuaW5nLg0KIA0KSGVyZSBhcmUgbXkgb2JzZXJ2YXRpb25zOg0KDQox
LiBUR0wvUFNSMiwgbm8gRE1DIGZpcm13YXJlIDogUElQRURTTCBpcyByZWFkaW5nIGFzIHZibGFu
ayAtIDEgd2hlbiBpbg0KREVFUF9TTEVFUA0KDQoyLiBUR0wvUFNSMiwgRE1DIGZpcm13YXJlIGxv
YWRlZDogUElQRURTTCBpcyByZWFkaW5nIGFzIDAgd2hlbiBpbg0KREVFUF9TTEVFUA0KDQozLiBU
R0wvUFNSMiwgRE1DIGZpbXdhcmUgbG9hZGVkICwgREMgc3RhdGVzIGRpc2FibGVkIDogUElQRURT
TCByZWFkaW5nDQppcyBydW5uaW5nIGFsbCB0aGUgdGltZQ0KDQo0LiBMTkwvUGFuZWwgUmVwbGF5
LCBubyBETUMgZmlybXdhcmUgOiBQSVBFRFNMIHJlYWRpbmcgaXMgcnVubmluZyBhbGwNCnRoZSB0
aW1lDQoNCjUuIExOTC9QYW5lbCBSZXBsYXksIERNQyBmaXJtd2FyZSBsb2FkZWQgOiBQSVBFRFNM
IGlzIHJlYWRpbmcgYXMgdmJsYW5rDQotIDEgd2hlbiBpbiBTTEVFUA0KDQo2LiBMTkwvUGFuZWwg
UmVwbGF5LCBETUMgZmlybXdhcmUgbG9hZGVkLCBEQyBzdGF0ZSBkaXNhYmxlZCA6IFBJUEVEU0wN
CnJlYWRpbmcgaXMgcnVubmluZyBhbGwgdGhlIHRpbWUNCg0KUmVzdWx0cyBhcmUgZGlmZmVyaW5n
LiBCYXNlZCBvbiB0aGlzOiBDdXJyZW50IGV2YXRpb24gaXMgaGFuZGxpbmcgY2FzZXMNCndoZXJl
IFBJUEVEU0wgcmVhZGluZyBpcyBydW5uaW5nIG9yIHZibGFuayAtIDEuIFBJUEVEU0wgcmVhZGlu
ZyBhcyAwIGlzDQpoYW5kbGVkIGJ5IHRoaXMgYWRkaW5nIHNjYW5saW5lIDAgZXZhdGlvbi4NCg0K
UFNSMiBjb21taXRzIG5vdCB1c2luZyBEU0IgY3VycmVudGx5IG1pZ2h0IGJlIGFjdHVhbGx5IGFm
ZmVjdGVkIGJ5IHlvdXINCmNvbmNlcm4uIEkuZS4gd2FrZS11cCBpcyBhbHJlYWR5IG9uZ29pbmcg
d2hlbiBwZXJmb3JtaW5nIHZibGFuaw0KZXZhdGlvbi4gUFNSMSBzaG91bGRuJ3QgaGF2ZSB0aGlz
IHByb2JsZW0gYXMgdGhlcmUgd2UgYXJlIHdhaXRpbmcgUFNSDQpzdGF0ZSB0byBiZWNvbWUgaWRs
ZS4gTWF5YmUgd2Ugc2hvdWxkIGFkZCBzY2FubGluZSAwIHRoZXJlIGFzIHdlbGw/IE5vdA0KcmVs
YXRlZCB0byB0aGlzIHBhdGNoIHRob3VnaC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KDQo=
