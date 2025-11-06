Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E14C395A9
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 08:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A0010E0E9;
	Thu,  6 Nov 2025 07:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTU+sxlA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0060710E0E9;
 Thu,  6 Nov 2025 07:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762413212; x=1793949212;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2A3NqAVcmuXbFQyECJqlxHw/M89VchxvICIfrGg+zI0=;
 b=eTU+sxlAO9F9bDoydf+7/ypRnpAJ7ZMbHnAAQNyO1f6Q003oC+qUM8le
 1kJmnNAZKVRukxYvADJs/QhUmfM9T25tc2iLMXsOk2h8fRmH2x88NSG1U
 ipz2E8sij1fzYHJ6MJf0M7bHS1FU/S3V+Zn/mt9xgoGVntCsHl2YsRXlz
 Ez0mksu88QUDkZn5qXlpJ9foEh6fD1elwV4ac0bKb5af5VctdibzYw36D
 PCasTCKtLICE+arZIrmiU2/hF4l/EoIZL0JTsWHa5NohwD9miFggzYWLH
 ZfZxFCM5+wouKk1OZYJfk4CGkkrZlHyf35gYsC1QPAmltAxzrqek7r9ic g==;
X-CSE-ConnectionGUID: 9iQxz30zRnasDJOE1CUqTQ==
X-CSE-MsgGUID: WZlGANjJSUm7Iknb26vM6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75893480"
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="75893480"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 23:13:31 -0800
X-CSE-ConnectionGUID: eOm/+FXjSlq/33airU3JqQ==
X-CSE-MsgGUID: cNQ57Sn1Rd6g8OY/Z9Oe6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="186968616"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 23:13:31 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 23:13:30 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 23:13:30 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.14)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 23:13:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tT0FwIaCHKAP0oGVgF4r1DF9sRSwDemoDZv41972+0iA+Wnz6DMWRx9anfDdr9IyO2ECYA+AcMF8XfH9PSavr1eYiWvs5BRCcmCecZgJx5qJEWJCKy+/QcEmEUTyjkpddxFlulPmOhSlcgODqU94j76hMGvIpMEdx/CaufZW2PJUEoMKFABc4jIHSOx/uPTp5U5wY6bbv3rj0b0TFhiMlUy+NWnsbS6Sg83/GRBPTUG0FgJU9mD4QbHBMkzSkN9qcSPIHnDJKqlbIFvXTYA6Zw1nMlrqpxxqWOXENiuA+XirUREyy6Y2/p3qEW21Ur+PUMn/dVsuutXzTIIDoz995g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2A3NqAVcmuXbFQyECJqlxHw/M89VchxvICIfrGg+zI0=;
 b=r7LSLWWnzaabRe5V21Z2h1JrGaTwzsB93ViivJ5ActTa4o7dQmreXp5M/ggF3srwjX60P7eJvmqd9f4DOCelHu/KcLbSAWEeL+Ev/LrsSVnbt+iiODlJhS4TmEosowSoaBzTdSRC6/UqoBOcWRltn5Bl/HcbyWtPVrNc8GUzsPd7/YVts8aCHHLnFzPYbapWlqG3RE34kGKDwHYJubX3/yvlXNvF+yZsCg+Dfv/R+vnGaGkrRfIYGadiynVfosOcr1z443r7Sf/Z6LkA/UHLS29N9n/zJoPfjDy0Eh4nlTe0O7IwiOyA/4Q29hXWWv4lw85E181R+7PO8FJmncPxiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8517.namprd11.prod.outlook.com (2603:10b6:610:1ad::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 07:13:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9275.015; Thu, 6 Nov 2025
 07:13:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/psr: Reject async flips when selective fetch is
 enabled
Thread-Topic: [PATCH] drm/i915/psr: Reject async flips when selective fetch is
 enabled
Thread-Index: AQHcTncf7kmPwpfdxkWqNSp0k0ljZ7TlPMCA
Date: Thu, 6 Nov 2025 07:13:28 +0000
Message-ID: <c4a4be9261eec75201ff5a8dcb8f5da2373a4884.camel@intel.com>
References: <20251105171015.22234-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20251105171015.22234-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8517:EE_
x-ms-office365-filtering-correlation-id: 3805473d-d023-4f2b-6fe1-08de1d03fc11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RTNmSmcwMC9XaElNaGp5d3oxa2syK1VIclI4MTVwdkRaaC81NUMwdjFNbitw?=
 =?utf-8?B?VGlaelcvS25ocnBTUVlKcTV3YUNSa3VyV0RwakV2d1A4Ti9waFI2Zi85dVps?=
 =?utf-8?B?bXE3WUFNcmpVODJHbXdDbEwzeUpVNTR1NWNxK0NEMXRpQzNxYy9sa3JjUDdV?=
 =?utf-8?B?aVpMYlBveXVxL2UvSS96TGltRGFKU3hUK0hUQzJGaXVuenBRUnhSeWZiS28w?=
 =?utf-8?B?b1F5Z0t4TlJlZ2RCV2tUM1llaHdNZ1kzSE0zT0t1cjVXY2YvN1NDTVZ6ZEVF?=
 =?utf-8?B?MWJ3d2dzV1dQa3U3bjhJYXZnWUhCK0NmL2dJRjJCMmZmeFFkVDErbUt5enNq?=
 =?utf-8?B?eGJpYjBveHlXZ1I1OWJIZEhmZzhaWTFRZnpzL2xFM29QZWFLcWhSTTJQb29I?=
 =?utf-8?B?TnIzZGFmMGFqS3ZBWHg1UlBlY2Nmay9zdjc1RjBVK3RoYzMxb0dtRkFLSU5N?=
 =?utf-8?B?SVk1VWg5N2kvUUNqaGxnVXBSM2ZhbFJCRFlWdHFqeUVQckNlYlVtakl2aUtS?=
 =?utf-8?B?MVlsR2Z5UWdIejYrY0t0VjY4eGdlcWx5M2hiZ2c5Q1NtcFNQS21YSHRDaEhm?=
 =?utf-8?B?d0x0ZFphZDdJRmVTbHg1YU5SYmNBUlNnbzdOKzhHQWQ4ZFdaZEZWYnBNYjd0?=
 =?utf-8?B?dVNkYkhIVGp6MnYvMUFtUkkyOVVad1dONGVOZTRPTWxOWmZlWHdYSWV1dTRK?=
 =?utf-8?B?Zi80TGVscDRMYnpNWmUvSHFtQzJ1bGhibkRQaDZCUWR3Y3lkYTJkMENGdk10?=
 =?utf-8?B?clhlWXZuaHVJcFFnNEJjZzVYUDVkS213T3FITGhJUCtuZU9nTDZ0UE1uMTFD?=
 =?utf-8?B?RGZnR2ZTL1hZUlRQTTJpVmZGQkNKRi93YmVET0ttZ3Jrd09vT1BnZWdoRXg1?=
 =?utf-8?B?U2xQSFFWRmplSThkRVk4RWtVVk90TEFXZmpRVllZYVFacUdZMGtsd0xnbldr?=
 =?utf-8?B?b25Db1g5R3dXU2puMGNvSlM2NkoxZ2xXUmwxRGUyaWN5UGoxODBNNU5oUXhN?=
 =?utf-8?B?UjhuK0JHSWg2NlRES0Z3bkRFQlBFb3NkTmp4OE1XWFBIMHkySjFkc3NLOFBY?=
 =?utf-8?B?bGNTalVpU2tjT2lVTk4wbUNUKzkyRlBzYUFhRE9ldk56OUR3S3JXblFlUkhX?=
 =?utf-8?B?b3hHdFFTNUpGc1dOUDV5bXZ4dzVsLzhCelV2enV6bFBnd1YrL0E1WDU0T05h?=
 =?utf-8?B?NkpFVHBTblBBb0pXK1RRY3ovTmUvc2dYU0QvRWFzVjdjQ0dDRExMNVU4ZXpw?=
 =?utf-8?B?Y3F2bmE3VnRvZnExWFBvQlNlN0pvM3ZFUnhpK1VTZzVNbkJqd3Fxc2VPYmMz?=
 =?utf-8?B?MUF3VHJIYmhNOXhNQzlmN1g2NGtRVW4vMjlnWEtDUVp5K3RrWDV3TGx4TFdS?=
 =?utf-8?B?NWl0M1J5dmdYdW8rSnNiRFZQRGlFU3FIMEtVUytmaWxDWHkxYUJjenJPZU5C?=
 =?utf-8?B?RkpWRzZFOXRaVmFGbk9xVDRPRk9RazFvQ1RSTVhhbU9RLzJoSW5EdnRFYWhk?=
 =?utf-8?B?b2swWUp0NUVJUG1WUndBTVJhZFBXR2g0NzRGV0h2OUF3amcva0szUWRSRmV3?=
 =?utf-8?B?bkpiaWsxc1JtQkd6dDJoTmpxWmk2ekdOVmFSazZWakpzSVU1VVBZUHdSOFg5?=
 =?utf-8?B?VXBsSU8zeWczeVdsakJvRkNHa0hzak9KOWljQmk5Q1l3ZlhSOUZUM0RjdE1z?=
 =?utf-8?B?WTlheGMza1k0RE1WSVJrblZIaVVIUXo4dC8yYkZJMmFMZUFNcDAvbDgwRExZ?=
 =?utf-8?B?eUh6VDdlZy9TWkdOejE2WTliWXFneDNzcWFKcSt1OEd4eEVUL29UZHc4UUR3?=
 =?utf-8?B?Y1dtMEZXbWVpUzkyQVBKeStMVFJNRnlYaDVVV3Jrd0JxMVpTMHRzeURud1dD?=
 =?utf-8?B?dmRHRVJwNTJLNno4SExSdXJqc0M3R2s2SkpGcnQwRktPaXpJNlpWdk1aVXY3?=
 =?utf-8?B?dFBhTXF6d094QURlYmFCN1ZIM2xJTTB5d3pyYi8xWDNMYzZ1Mm9FNWIvcWUr?=
 =?utf-8?B?Rm9ORGFQcFY1VkV4a3pkVkY5NGRGVWdaclhvNmVBQk5QaFlJM0VsNmZoaUh6?=
 =?utf-8?Q?87pT5g?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VW4rWFFrWmd4REQ4WFVpa2sraG5KQmEvSndaNEdjSXZsa2tzcE1CK21ETnkw?=
 =?utf-8?B?azlvZzAyWFR6WUd6SUpkdzJBZmRhUm5wTUw4dXpNWWZKNUM3TzczNHNRRUpr?=
 =?utf-8?B?YjFhOWdZeHhHSCtsOU9aUUwyU2RkTlgybU80d3pBTkZQNXRFYXE5WTN2aWFv?=
 =?utf-8?B?MDk3Ym5UOUFhTnFvMEJNNlVoL1ZPWWNHQjdXcHNVcWhLNGFwYXcveTdMVTlt?=
 =?utf-8?B?d05wZXRVZnA2RGhlTmROSUJDU01udVdjUnVKWXJCMmdEZTN2dnBUWGlVYTBt?=
 =?utf-8?B?SFJrWVk1K1M4OU1tbVFJUStFMDVVQ015TnljSlUwWWk3eHdNN3pmT09lY1l6?=
 =?utf-8?B?K2d4N1hRZkJsc2JpNnNYb05meFhrMnhTWk9aZ21mUXJvWFliOXhMMnZOYzRu?=
 =?utf-8?B?bk02SDBUVE00cmQ1bERpeUNLajhFSnFFdW5hbGZsNmJxTmlkSGVkbUlSVkZ4?=
 =?utf-8?B?TXBoeCtVSFJhaVY4RmRIRnZaOTY1bnR4UEFDNjF4ZEJSRm9sdHBqYVJKczFN?=
 =?utf-8?B?WFh3aFZpOURpaStkbFVNQWQvQVNDS3h2TkJhT0JNQURsOVFsNVZIQVNYWjIr?=
 =?utf-8?B?N3o2QU5uckd5NVRiM3FEekF6ZGExSXQveW5vSE1jSXBscjlPNG84ZGt1dWVT?=
 =?utf-8?B?NFhoeEhUVVhJc0xJR0ovY0J6WTc3MDR4OXBDOG1Hbk5Ra3RGWk5OaG0xdlFF?=
 =?utf-8?B?SXlMS2pPa2tJeVk5UXRGWjhSMTBaTFNQSTZMeTQ3Vm9DYndjUXZsZW03NGJU?=
 =?utf-8?B?Q2lVS1NOSDZYaGpRdDlUNS80V2oxQmNpUm1XRUQ0dFZXa0RTTkdFbUVybHF4?=
 =?utf-8?B?WXFWb2FNTUsxSWtmNFJmeXh0cWk0S29uQzB1S0JRQUZhenU5NjR1RVpleWdl?=
 =?utf-8?B?RFluWG1abzU3OFF3clRYVXpOaU1qZHJoVklOSXNpdFRJQnFzL0hldnl2em8v?=
 =?utf-8?B?MjV0Z2JNVU4wVVpBT0wyb2ZtNW90d0F5YkZXZ2w2bXZWdDBQQmk0Z2JTWVlT?=
 =?utf-8?B?aVBpRDVzYTNmSlZ0TVI3V3AzWHlQMjlEa0tOcHRhQ0ppN0xxdDh3UUg4bDYr?=
 =?utf-8?B?a0l4VEpBbHFuSGdvRDA4amdNTWdDWEFGVFhIVTY3T1BUQ2NVTDJmSFNNYVRZ?=
 =?utf-8?B?M3hkeUNmWXdua3BsWjl6azYzUnR1Q3pCS1pPWnZhNXhyODg3M2l5UnNWcUhx?=
 =?utf-8?B?NjllOVVqcEZvb2RHMFdIYmpJVm8zanowb0tsTU14YmMzRy8xTTczTmpvQjdj?=
 =?utf-8?B?THkvSW9hZHZLd05DUUduVDIweGxmLys0TjBuVnozcStLaWhQRGVWSDhYZENR?=
 =?utf-8?B?ZzRmRTVTbVVJY0wxQlU1eWZZUU1hVXFCMFhxUEJHamxLMTM4OXlSM2dseTVy?=
 =?utf-8?B?ZUFhYXNwdzFpN2VJbXl1M29ybHp3SDlhRUF0M2RvcDVJVGpTOVFabERiMTZ0?=
 =?utf-8?B?d3BsQnVFY3k0bFoxVXdWc0JxYzdzMEt1M0U3WTB1Z255ZHBPb1lxM3FaTzFp?=
 =?utf-8?B?RmdOMklIUC9yckdKc0lINUZwNTlqZzF0Z04xZ1BYR1dQcTFHaGJqRUdwMUVU?=
 =?utf-8?B?OThUUmxqU1JlU2U4bEJtTEtoUFVnUTlMYnZ6ZXk2WDM3cy8vREEwbXk1SzBP?=
 =?utf-8?B?SzFsU2NHNmtMWVYwVEh2QTVyMTZUSXMzazJvS09XMlYyMjlnU3JBY0dBQ2d4?=
 =?utf-8?B?dHdsN2tOWnFhR0h4T1NGOFZNNGJBTEF6dEppRFNxVW5GeTljdC9EdzNUNElU?=
 =?utf-8?B?aENoc3BPNlNPQkxIZEV6MnJpajZhWEtYZ3VwbHlIemJ0c0EzSTgvWmtTSTRL?=
 =?utf-8?B?Nkl0akJRMnpON2Z1MWJ6VUFsNzUxTzBVRDZ6eXRHMGZtcXB6cGR5bjZrdXl2?=
 =?utf-8?B?TkZJL2hSNDlxaWlYVHJTdC8vdmpSdXFsYk03eWJtc1RUQXQ1cSs0eURjUnFF?=
 =?utf-8?B?SUF5UW1MMlY1N0grbXF2RDkwbFpUenZYaHM2VG5HVVhPUkRyMVVrTHkraEJ6?=
 =?utf-8?B?bkpyUVNGWkVPMS9SZUtLNzBWUHJzZ3IvdGxDU2NxQ1JHUnM1WUpXbHhEYVpR?=
 =?utf-8?B?RklKN2tPV1Fqa20zd3dFcHgraXM1RFFqTzdYYm8zWXNwb0pYTHhWa00weXVq?=
 =?utf-8?B?RnBOVVRNdnozOG8rWDFJMVRXUDR6eG9uUGtzVmtIYXIvTStZZWNzNE5UeU5T?=
 =?utf-8?B?QzhXTTNydTZDQzNVTXRweS80Y2hqbjhENFB1c3FaU2dFSTJEM0EyUnZzSCtz?=
 =?utf-8?B?YTgyN3VXM004aEN6OHBNZlp1SFdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7A0F5B35E0821544BE37B48F8792299F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3805473d-d023-4f2b-6fe1-08de1d03fc11
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 07:13:28.3680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yg01kDqU4/ZtoBouz3OskU8yzy47Flx5yzft5N++tf87oDHmr5MtBQNXOXyJgzaVhsbCoodUMQYa4Ek+QNIoboiEZ9gSBF7Mwf9bdykzqFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8517
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

T24gV2VkLCAyMDI1LTExLTA1IGF0IDE5OjEwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIHNlbGVjdGl2ZSBmZXRjaCBjb2RlIGRvZXNuJ3QgaGFuZGxlIGFzeWNuIGZsaXBz
IGNvcnJlY3RseS4NCj4gVGhlcmUgaXMgYSBub25zZW5zZSBjaGVjayBmb3IgYXN5bmMgZmxpcHMg
aW4NCj4gaW50ZWxfcHNyMl9zZWxfZmV0Y2hfY29uZmlnX3ZhbGlkKCkgYnV0IHRoYXQgb25seSBn
ZXRzIGNhbGxlZA0KPiBmb3IgbW9kZXNldHMvZmFzdHNldHMgYW5kIHRodXMgZG9lcyBub3RoaW5n
IGZvciBhc3luYyBmbGlwcy4NCj4gDQo+IEN1cnJlbnRseSBpbnRlbF9hc3luY19mbGlwX2NoZWNr
X2h3KCkgaXMgdmVyeSB1bmhhcHB5IGFzIHRoZQ0KPiBzZWxlY3RpdmUgZmV0Y2ggY29kZSBwdWxs
cyBpbiBwbGFuZXMgdGhhdCBhcmUgbm90IGV2ZW4gYXN5bmMNCj4gZmxpcHMgY2FwYWJsZS4NCj4g
DQo+IFJlamVjdCBhc3luYyBmbGlwcyB3aGVuIHNlbGVjdGl2ZSBmZXRjaCBpcyBlbmFibGVkLCB1
bnRpbA0KPiBzb21lb25lIGZpeGVzIHRoaXMgcHJvcGVybHkgKGllLiBkaXNhYmxlIHNlbGVjdGl2
ZSBmZXRjaCB3aGlsZQ0KPiBhc3luYyBmbGlwcyBhcmUgYmVpbmcgaXNzdWVkKS4NCg0KSXMgaXQg
b2sgdG8gYWxsb3cgcHNyMiBodyB0cmFja2luZz8gTm90IGRpcmVjdGx5IHJlbGF0ZWQgdG8gdGhp
cyBwYXRjaA0Kc286DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCA4ICsrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgwqDCoMKgIHwgNiAtLS0tLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDQyZWM3ODc5ODY2Ni4uMTA1ODM1OTJmZWZl
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtNjAyMCw2ICs2MDIwLDE0IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXN5bmNfZmxpcF9j
aGVja191YXBpKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJcmV0
dXJuIC1FSU5WQUw7DQo+IMKgCX0NCj4gwqANCj4gKwkvKiBGSVhNRTogc2VsZWN0aXZlIGZldGNo
IHNob3VsZCBiZSBkaXNhYmxlZCBmb3IgYXN5bmMgZmxpcHMNCj4gKi8NCj4gKwlpZiAobmV3X2Ny
dGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sDQo+ICsJCQnCoMKgwqAgIltDUlRDOiVkOiVzXSBhc3luYyBmbGlwIGRpc2FsbG93
ZWQgd2l0aA0KPiBQU1IyIHNlbGVjdGl2ZSBmZXRjaFxuIiwNCj4gKwkJCcKgwqDCoCBjcnRjLT5i
YXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSk7DQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiAr
CX0NCj4gKw0KPiDCoAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3RhdGUs
IHBsYW5lLA0KPiBvbGRfcGxhbmVfc3RhdGUsDQo+IMKgCQkJCQnCoMKgwqDCoCBuZXdfcGxhbmVf
c3RhdGUsIGkpIHsNCj4gwqAJCWlmIChwbGFuZS0+cGlwZSAhPSBjcnRjLT5waXBlKQ0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMDUwMTRmZmUz
Y2UxLi42NWQ3N2FlYTk1MzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBAQCAtMTI5NiwxMiArMTI5Niw2IEBAIHN0YXRpYyBib29sDQo+IGludGVs
X3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoAl9DQo+IMKgDQo+IC0JaWYgKGNydGNfc3RhdGUtPnVh
cGkuYXN5bmNfZmxpcCkgew0KPiAtCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IC0JCQnC
oMKgwqAgIlBTUjIgc2VsIGZldGNoIG5vdCBlbmFibGVkLCBhc3luYyBmbGlwDQo+IGVuYWJsZWRc
biIpOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0JfQ0KPiAtDQo+IMKgCXJldHVybiBjcnRjX3N0
YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSB0cnVlOw0KPiDCoH0NCj4gwqANCg0K
