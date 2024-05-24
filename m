Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F13E8CE0CD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 07:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E8C510E059;
	Fri, 24 May 2024 05:56:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crxfJQyS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD7410E059
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 05:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716530175; x=1748066175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SQbnSeCmGDeAkbGxguR8TGlGJ/HWzspmaEB1III18Sk=;
 b=crxfJQySLDnQn/DaXmXqf1ei4ZgSNxIEIbiatWpx76AjzKpTrAagyxga
 4p2Uq2gz4HW5VbzlK5ylAo2J6YsJlWM74v2Ok1JVJIEAMa+xBRQcGoGKf
 o0he5pTbfIgrRlcfy7IiXSb5EtMZr0umgE+LOr4PTtnQHEzMpi3LxQ8+/
 jGELk+PuE5akoqDIL0AwRa20MW4OcMQRX8lep+Qfo0GqP6JuPzQFsE249
 84C5yJtCp4UQXgu/rx+8mCkrpDmAB91X5EgCYsUsq8zoB2f1vIyOqQpw2
 icdy8oR4E6r6e4PbO+ASqkJls2SYL7vpkkr3bKHzpTdaMZqEGVeB2ndgS w==;
X-CSE-ConnectionGUID: aENceMujR2WQ5FG2S1tcYw==
X-CSE-MsgGUID: 9P8n+byBTPqSeHNRr+vkSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23559847"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="23559847"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 22:56:14 -0700
X-CSE-ConnectionGUID: sOCE+MwJSyeF30owzojg/Q==
X-CSE-MsgGUID: WRWa+yzUTeGBBnW89JkXUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="33996429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 22:56:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 22:55:59 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 22:55:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 22:55:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 22:55:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bG2d1DFfJXguDjWJ+MIQH3qpZPOwFO7hFURiLOuyvpAQFI+Cw0u7jBBg3hglh3D2wNFjTpICiJb4y95EG4lI9a8fFs6kC6VMxSle/Ae9DPwCeoMjmiO32p0Vn3PJ9ClHW8pTqrUnKDcjk45VNXFggPJwAdbTPwg1hKbak5KQnkLxSCHBQ5p6jwF6XABdSRcSu/+OeuhZ4plchPNwo8l44gAUHgTzia0PDJpiFx8hdqkMSedUDfKHm6T7ODda7kfF5Ku1xMZZ+//TBUa3h2MdE0OvRxXlI7lwrjgc+GdCiBpuNHiKcUi9blvXHvVkoLXLAtqHfI6WeLsJquk0l78T7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SQbnSeCmGDeAkbGxguR8TGlGJ/HWzspmaEB1III18Sk=;
 b=hXlolxAajgYmpFgpCR7kIeS3w9P85klBPS7cDd6il22CaUyTaacBqNIoY8Hkexd5jVUbfqLT82uyl8sFLzE90EUWQLYkwDxDddj4DnxGl2PJ/cjT7Yl5hyrRVlvHyyYJ/9WL4svKzoqYLwzIimqffxfqRH+oG+OTV/CVGtCr4ZTjc/3e3qTrtotin3ZlbRYNIAUKEPmBPHCUyXsq9JkkKmXjI8kYmiTXKnXXdqsXhVGLXZYcR85ohlORqwjcEzAQnp8clVf8hmXyYbKhobO+s9zTtajBNwMawnVQ6MrjUN+iNByvkWQL5X0YiWUUgQNkzdsn2mB6pxETQfsLQ54d1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4576.namprd11.prod.outlook.com (2603:10b6:806:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 05:55:56 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 05:55:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Topic: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Index: AQHaq1t/dupE3LZNlE2PhObA1xsuvbGl5svQ
Date: Fri, 24 May 2024 05:55:56 +0000
Message-ID: <PH7PR11MB5981D37648DD78C758F43459F9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <20240521084648.1987837-2-jouni.hogander@intel.com>
In-Reply-To: <20240521084648.1987837-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4576:EE_
x-ms-office365-filtering-correlation-id: 289d5a81-41c3-4aa4-74d0-08dc7bb62dba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?czVEaG5Mc2RMODFNRjRKNjI3dDBPWDIvRHl6YXYyRkZGM2FZQXdLRWt6S2oz?=
 =?utf-8?B?TVIyR1hHMmhsaElQZllsRlNvSmxrcit4NGtVVjdLL1NPcmFONHFjMk1rb01W?=
 =?utf-8?B?cDFNdGEwdzZhQ29ZbTZLd1l2MWxlT2gzSkZlanR5LzhSK0ZaM0YybGQ4UkEr?=
 =?utf-8?B?a1grNFBTWEpiOHhMZ2NWdmpRbmV0bUlRSEtSRDZxck9ZSzVmZjJBaUFSQ0pV?=
 =?utf-8?B?M3NZTmt4TjlPaWlPYmV4WmdpczN4VEJTSlRxS1VuUUh0dXUvejhkbGdsWWJ4?=
 =?utf-8?B?bUxlSTI1bE5sSXhRV01rRTR2TDVDV21VeDFOSFFTSGw2cTNlUlFMZlJHZzFO?=
 =?utf-8?B?QmE2cnVDUHY0Vmt1d1ordVZ5QmdrbDlFMUdTTzZVZjlLUVIxNERwR200cjJl?=
 =?utf-8?B?Ykp5czhaRHd6dDFUOXBPcXpieXFUaVhxSklSSVgrVTZhdGU2YlI3UFlLb05j?=
 =?utf-8?B?bWcvVm53cmZEbU94Z1cyQ1FQZnlXVUxNSnZTdnI2aHJFMjZGdEJSR0NnclRw?=
 =?utf-8?B?WVFnckdROEd3Z00rZCtYOFFraGkxeUJRZGQ3ZU5Tbks3eW12OVdrSGhMNWpJ?=
 =?utf-8?B?US83L2N6L2IzcXNTaXVGQjc1ODFneXFPSUQwRUNtWDF5K29yKzlVRUlUNVkw?=
 =?utf-8?B?RFR6bVVzRDBhd2Q2cTBoSDlGNHRDTlkybmdWTC8wTDlQU1NncjBjdTFrdTdL?=
 =?utf-8?B?Rjh6RHhjUTdYS25QMUVMRXJ1SzM2NkowZW1RQ1liZ3luMFdtVXBwc3hpZVk3?=
 =?utf-8?B?L2JpWksrWmpXT054RzJSaHhTeHJYMGE5ZGdlTGxCbmNyNGlTZE15SzBST2JX?=
 =?utf-8?B?aWZmMVp2VjJvMkVILytXMFpERm5oZlcyc2hrUGFPMmt0M2ZyQkR1aWRxb0hI?=
 =?utf-8?B?c1IwNTZzQ1BVSlVqSW1tUlkzaXQvVXlnWkl5L2tWd1ZmQkpDanlwRVlWVmlh?=
 =?utf-8?B?RFdUOGdCdWJmWEVYOS9EMVUwUTBYR09vTVprQmh3dmdoOWNTYlhLNHgycnAz?=
 =?utf-8?B?RmQzR29NcHVoMGx6UVREUmt1dVBlR1dmSTdjalI2ODErLzlnRlV6U0hGUUFY?=
 =?utf-8?B?bnJrYU5TR25oM05QeGxtekUzS1NiYTcvYXNZZTkreHdQVlJqZkVGNVBSbEha?=
 =?utf-8?B?bVNZMThYQ2pCZ3RaTUc4QXY3TVo5eXBoaXlUUFFoUEd6NDFWeFY3NWZCdEtG?=
 =?utf-8?B?aWFsQ0ZLOEdoRDVOa2Z5SHNZWkF1U1dsQ1Q1clg3c3FMSExSSGVuRWJJWWtJ?=
 =?utf-8?B?MHJnQmlvU1loUkZBNmR4K3RhVjhnUWE2MFJnYmo2NTgrY1JlYkdaQXVFSUp5?=
 =?utf-8?B?Nkx2RWNkQ082VnBSNUhZdHN6ZEMyWHBlU2YvYUVvd0ZlVTcwblUxVUdqQTlw?=
 =?utf-8?B?R1NBU1haaFJaV0FhMS83bGNpTm8veDRJVWlGbDhJNFFHMXF1WlY3S01XVVlX?=
 =?utf-8?B?YXdaS04wSUxxME5RSXFQR1IwWXhPRkF3VHlvQ2xHSnJoU0M5UXhEM1RudTNF?=
 =?utf-8?B?b0JlOVJWL083a0ZUY1R4Z2JvRXBNY2FqNVpxV2tCWGU3L0dIUjBoaEVyOVZE?=
 =?utf-8?B?UEdxajk4RTdPdXVpK2FZT1lldEpxdlROT1Zxbmt6ODI5bFZhNENZYTM4aFls?=
 =?utf-8?B?QjVTTVhpZ3JKdkRSLzg3bFNuaUYxZ1ZTL2Z4UGVaWVZEWkcrZG15RlBha1ZK?=
 =?utf-8?B?TWRQaDYzcEJ0RThLb0FJOFFTRDlGdGoyK3ZDR0Y2TUlLL0NGcnM3ZEVyTkM5?=
 =?utf-8?B?bFFGSFQ3VVNlOWFHVzUwNWJkZlNPcUVjQ0c1b2xkQWQ2QXQ2VFlZSmZlZ0pE?=
 =?utf-8?B?VWl1ektiNXk4QnNsQmx6Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0FBLzJYMTRMaWpqdU1FWVJ6b2RuRGFzRlgxdktPV3ZjMU9yZ2RNMkdZbzhx?=
 =?utf-8?B?b2I4SlBXSHU2bStDOUVPekFtT1F1b1BGclBwZ05kSlZ4Zk5oN1VWT0pXZlR0?=
 =?utf-8?B?REhEM09zbkpLM1JNblBJNVdOa0hUZUtNQUplN3lYZXRtaHVwRzZPSDUxZDFE?=
 =?utf-8?B?cWhNOHpQY0JGTDVGMzNvcndUTWpDdWZHcnYvZDRTZ2ExU3hBeWh3SHlXa2Zh?=
 =?utf-8?B?V3JLYm9DcjNveUpuK0lBcFp4blV6Q1I4Q2U1VkZla0l4djEyY2xYb1VscXZa?=
 =?utf-8?B?NFpqeDVYdnVscGlhbTJMWEZCYjFRL1BrMjRVdmw1TCtvL0tDUDdDYUk5R0wv?=
 =?utf-8?B?cnNvTnhmQ0szRU52TVFyWmdDOWVWUTJzQzRaTUFOZFFNdVR3aEhxdnVWd3pX?=
 =?utf-8?B?cEt1MVAvY3pibkpYemNqejdnVWF6MnRlL3RiRWVNend1YkJxY25UMjhUdTQx?=
 =?utf-8?B?cDBLdldwaVU5NEtPR2J2aHhDR0dEbHVzUTdkT2pZQWgxM2p5cStXS3NFYUtC?=
 =?utf-8?B?WEhlWEVhU0E2dkRaTFByYkdoZjNicWxzUWQ2Mm1NYTFRZmt3YmVyWU1tcFdV?=
 =?utf-8?B?ZGl2WVN5T1RnOTBSQkhmYnQvSkFkT3ZQekNxZy9JV05GYTJiUkpEWDhRQ1No?=
 =?utf-8?B?N2hGUjQ0dWZyY0dBQ3A0bVlSZ2kwei93NVZZOGtvREJrSlN5dDcvanh1UThh?=
 =?utf-8?B?S3lNNkpOakJ5VWZYc0hvbWhBWFZDUjNpd0VTZUdDZ0xMYmtkU1QrQ0VUWVZ0?=
 =?utf-8?B?cDdvdzVDdmJEMjJQenRrbFZlUjVUc0daSzUwQ0gxdFNLdm1kcEl2T3FxWXcy?=
 =?utf-8?B?cStsdkFrdUZYT3p0TGQwdy9ucm13R3ZjVlBNd0d0WmRtRTd1NWVyb0xMeFJ3?=
 =?utf-8?B?ZnJyMUtFZXZGalhpWVpQYWlpZnJkOEFVR0dINFU2VWFoanVwdEQvZE41Vkp3?=
 =?utf-8?B?TWdITkp2QnpYa1BkNWxLdGY2NXAxZnFyMVVlR2NseTgrVXJKb3M0cUkyRHV4?=
 =?utf-8?B?MFBFdXBMRjVZY1hVT1BMM2VBT3NiMlhBcWFXcU5VeTRzVjZqVkVrZzZnTy84?=
 =?utf-8?B?aVluWlgxWExyY0wvSy81SHlqTDlFTUJFd0tBMU5xZXl4UTM2L0lKc05wMWJY?=
 =?utf-8?B?UVJLcHJYWitSYm43S1F4bE9TMmlpRVhLNW5MRnh6TG5DSCs3S3pudVpuR1ZV?=
 =?utf-8?B?aTd1QXNFQjVJSlQ5V29EQmRISzNJQmxmMjRXbVVTY25kaFhPOWdqTzZIUVh0?=
 =?utf-8?B?VWlVVFFmc2owL2hKQ2dISzZoU3diekRKUkVMT0REU2lJMmdmaVNqRFA5U1RS?=
 =?utf-8?B?dGxKUkE2UHg4U0t6bUNxa0wxS3VsanBVMlI1UWIyczBPaGlmS2dXWGl4WGhs?=
 =?utf-8?B?SjV4OUt3bDV5UGdhYy9PbWVWZGNMYy9UVDduMTduWkRHZVI0S25zZU9xUm5q?=
 =?utf-8?B?RzNDdDdwcXgxcjFBUFFOVHQzR0ZrSjJOVVhoMndKZjlFU3Y0MkNqN0VYMFd1?=
 =?utf-8?B?OWxLSWVNd0Q0WGovUDVvSlFjbThVeGNqdFp6UmZtNmthc0hqSXc4aDVvZXFz?=
 =?utf-8?B?OG9QNFRlb0NVelpLT1EzbFoxbi8zQXBydmo4RXJjWmJ0V3BrUkhBN2FhaG1a?=
 =?utf-8?B?ZzJudXpkY0VHLzN4bFpEalkzeGRkai9haHZnYUFucEJtWmxEL3NieEU4aGsy?=
 =?utf-8?B?cXl2MHJDVGx3dkQrbFpjRWozY0w3bCtIYXhWcDVzZkJock42NStqbUtuTW1j?=
 =?utf-8?B?bjE4cU10YlJaS1NFU2JvelZWUm1lMkpDSnR4aEs0bm40aWlMdEcyUEt3dHJn?=
 =?utf-8?B?aVpCSUg2ZURTbTNwTng0SDNoa1I3RGNvbjNBanhKL1BHRnYxbVRKSzFoY01m?=
 =?utf-8?B?anlMUm1KNThtTHozK3hlU0dMNjlpSmhtaXRzWUJIU2RJMVhWbTBYZkh0T1BM?=
 =?utf-8?B?Z2VoL1lBSmVNTm80ck92UVRzZ3VVSEhwUnRKTk9lcmFWMGQyaHhTYUVraHl1?=
 =?utf-8?B?cHU1Q252c0VST1I1cjJnUWVIbE4rR3QraWh4UW90cHVqWWVVYUFhLzZjNGoz?=
 =?utf-8?B?dEg1SEcrMDVna21rQWxsZlgrRFcrSEUzRDB5S3pEMktHR1JPck12QkMyejA1?=
 =?utf-8?Q?nUH4dmV99atjsV8Z8PROHHolX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 289d5a81-41c3-4aa4-74d0-08dc7bb62dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 05:55:56.0766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NaiBZklbijv8I3jMPijliEuXXMuM45GBbM1jCh7ZH3rHuWqox9ElKNnfSDZdw78d7Hqiq/DMH+7GHYRwbaOciQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4576
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAyMSwgMjAy
NCAyOjE3IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDEvMTddIGRybS9pOTE1L3BzcjogU3Rv
cmUgcHJfZHBjZCBpbiBpbnRlbF9kcA0KPiANCj4gV2UgbmVlZCBwcl9kcGNkIGNvbnRlbnRzIGZv
ciBlYXJseSB0cmFuc3BvcnQgdmFsaWRpdHkgY2hlY2sgb24gZURQIFBhbmVsDQo+IFJlcGxheSBh
bmQgaW4gZGVidWdmcyBpbnRlcmZhY2UgdG8gZHVtcCBvdXQgcGFuZWwgZWFybHkgdHJhbnNwb3J0
IGNhcGFiaWxpdHkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jICAgICAgfCAxOSArKysrKystLS0tLS0tLS0tLS0tDQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiBpbmRleCA5Njc4YzJiMTU3ZjYuLjZmYmZlOGExOGY0NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE3
NDMsNiArMTc0Myw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+ICAJYm9vbCB1c2VfbWF4X3BhcmFt
czsNCj4gIAl1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXTsNCj4gIAl1OCBwc3JfZHBjZFtF
RFBfUFNSX1JFQ0VJVkVSX0NBUF9TSVpFXTsNCj4gKwl1OCBwcl9kcGNkOw0KPiAgCXU4IGRvd25z
dHJlYW1fcG9ydHNbRFBfTUFYX0RPV05TVFJFQU1fUE9SVFNdOw0KPiAgCXU4IGVkcF9kcGNkW0VE
UF9ESVNQTEFZX0NUTF9DQVBfU0laRV07DQo+ICAJdTggbHR0cHJfY29tbW9uX2NhcHNbRFBfTFRU
UFJfQ09NTU9OX0NBUF9TSVpFXTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IGQxOGJhZWI5NzFiYi4uYmE5MmY3MWI4MmQ5IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTU1OSwyMCArNTU5
LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QNCj4g
aW50ZWxfZHAgKmludGVsX2RwKSAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAtCXU4IHByX2RwY2QgPSAwOw0K
PiAtDQo+IC0JaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0ID0gZmFsc2U7
DQo+IC0JZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BBTkVMX1JFUExBWV9D
QVAsDQo+ICZwcl9kcGNkKTsNCj4gLQ0KPiAtCWlmICghKHByX2RwY2QgJiBEUF9QQU5FTF9SRVBM
QVlfU1VQUE9SVCkpIHsNCj4gLQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gLQkJCSAgICAi
UGFuZWwgcmVwbGF5IGlzIG5vdCBzdXBwb3J0ZWQgYnkgcGFuZWxcbiIpOw0KDQpQYW5lbCBSZXBs
YXQgbm90IHN1cHBvcnRlZCBwcmludCBhcmUgd2UgcmVtb3ZpbmcgcHVycG9zZWZ1bGx5IG9yIG1p
c3NlZCBzb21laG93IGluIHJlZmFjdG9yaW5nPw0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiAtCQly
ZXR1cm47DQo+IC0JfQ0KPiANCj4gIAlpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1
cHBvcnQgPSB0cnVlOw0KPiANCj4gLQlpZiAocHJfZHBjZCAmIERQX1BBTkVMX1JFUExBWV9TVV9T
VVBQT1JUKQ0KPiArCWlmIChpbnRlbF9kcC0+cHJfZHBjZCAmIERQX1BBTkVMX1JFUExBWV9TVV9T
VVBQT1JUKQ0KPiAgCQlpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQg
PSB0cnVlOw0KPiANCj4gIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiBAQCAtNjMwLDEwICs2
MjAsMTMgQEAgc3RhdGljIHZvaWQgX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCkNCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkgIHsNCj4gLQlfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChpbnRlbF9kcCk7DQo+
IC0NCj4gIAlkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfU1VQUE9SVCwg
aW50ZWxfZHAtDQo+ID5wc3JfZHBjZCwNCj4gIAkJCSBzaXplb2YoaW50ZWxfZHAtPnBzcl9kcGNk
KSk7DQo+ICsJZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BBTkVMX1JFUExB
WV9DQVAsDQo+ICsJCQkgICZpbnRlbF9kcC0+cHJfZHBjZCk7DQo+ICsNCj4gKwlpZiAoaW50ZWxf
ZHAtPnByX2RwY2QgJiBEUF9QQU5FTF9SRVBMQVlfU1VQUE9SVCkNCj4gKwkJX3BhbmVsX3JlcGxh
eV9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiANCj4gIAlpZiAoaW50ZWxfZHAtPnBzcl9kcGNkWzBd
KQ0KPiAgCQlfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
