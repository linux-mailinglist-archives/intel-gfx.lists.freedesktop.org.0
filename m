Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58D88C1007
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 14:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33DF910E4A8;
	Thu,  9 May 2024 12:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsl4OVvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD6710E4A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715259510; x=1746795510;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2UA9q3nASvbrgxitvbV/XP245cC8dE210bBTPO11pjQ=;
 b=hsl4OVvQvbaylUDUI+5R9YveF1uLVW5v284ZCVwPXqzFe6aOVgQVpha9
 qcLxnMUlazLgqO2lgl7RH/sAKVf4+zUZXWwlmLXxfWb7y2bzB0hhMtJ+p
 RmvMXCFUwWccRlt6lNhzYKK+2ekZIlV+kQY6w0u0WINu9V1JM7aRoFuGC
 I7llLHyXMQ4MByHQgsQvwQYcCF8FaM82f65HacMPgp5e7AkV9D55R37Wd
 j8dMmDKGf3YygTQaoHmJVZXM1qZdX4EE4zoxbvHXWy89D5bzfZAQv7oRK
 IVIWJLqP7j7Sv/ilsrrQaLNBeRMSw+oIzpuqtBLBTs83PXoU2/K0UsKGW A==;
X-CSE-ConnectionGUID: oLoxUXGHQSGTN9lMaP6gGQ==
X-CSE-MsgGUID: Nns0P5BWRY6oh4NiSEDSRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14999676"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="14999676"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 05:58:28 -0700
X-CSE-ConnectionGUID: sUTLCzPPT8qDJZ4GT8HFbg==
X-CSE-MsgGUID: l7cwEHAAT9G+VXCtYxKA9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33702017"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 05:58:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 05:58:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 05:58:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 05:58:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 05:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l0cPmFirBKYqnGkPsE/EYWKs09YCmhyp5vQGp2qqmeCIXFNmYIfV4ZGX6V0XtkqZ2R1jSf6DnWnF5WVN/bwS7zVO0z7JhsRAqw/urJMIyaCoG85unnMigufpSBRnlT9kjCPyLlJw/ebICVkZsC8epnsF/8Yvx83euta3SqkG7+iKf0S1m+mGiKa76y0ZG6C82awIxbWb3Kc+yZpXWSdjf5IvdZE3Zr6NLBbUqHjS2gVR/2+NKxHxsW/60u0yNxEsfwqlBbuDeibELVODTBme8kuroMyVUnZCLhfNO5BCINSLHBBeruxeEgey1V0GHyq/0a7psS5TCT7VLS/lR7THfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2UA9q3nASvbrgxitvbV/XP245cC8dE210bBTPO11pjQ=;
 b=katHzo+1ZIlatezCvfOCUoB9EP6JZ0rHiB+wlXcVcJ2SaqWup8TtWaM49JCpaiQGDPhx1LEJtc3dkWsIh4qnbLYhfk6+d5RSVadVHIMKG1HZTcHPLIFs4hiw4Z5ucK5yeCpYEQjXfR48Kd8WotnDXc+roGVPUyIXSipF/AYcxS6wh+r7EvwpvrmGTUoXq4wyMvul3J0AWZF+B7OvwupTIv+VsiLh18XogZr/s3jpCMw7iqIZaR+2sqJGVv0NAbmkM1+Er0QDz0Ba3zKxsiNlqZV+WZikBj2ANSspOWrszX5ay4v/DBRgCduwrOut1rsffUOKOtvvmfLOWgdWQ/Ju4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 12:58:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 12:58:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 02/12] drm/i915/display: Do not print "psr: enabled"
 for on Panel Replay
Thread-Topic: [PATCH v9 02/12] drm/i915/display: Do not print "psr: enabled"
 for on Panel Replay
Thread-Index: AQHanSP31EagrCb35kmGISyqWmBUD7GO5nPw
Date: Thu, 9 May 2024 12:58:24 +0000
Message-ID: <PH7PR11MB59816DE26C40BD737B13481EF9E62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-3-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4861:EE_
x-ms-office365-filtering-correlation-id: 926cbaa6-4409-4486-772f-08dc7027b636
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?YTZOSnpVdnR4ZjhQSDByeXdHQ1JwSW93aEFpMFhIckM4RG1sd29OajgyMk5W?=
 =?utf-8?B?WGY2RTRUQkhMQTg4L2NyZWZxYVVtUWEzZ2dtd2JyK1dhU3NibmhrUlg0MXFZ?=
 =?utf-8?B?OFJpelFZdkdCNWlYTUdQQ2swOWVPd2xEQ2NGY1ZBUERKQjJsSWZUeWxhM1VU?=
 =?utf-8?B?bG9GR3RyZWJjRVZKNndPVFNhaVhLYVdmQVVWMFBTV2huUVNVM2xDVlIwVUln?=
 =?utf-8?B?UVNUVWJBaXk2c04weUl5MVJoVUttZjI0cUtqa3VjSmxpOXpuQzZKaHJsUGk0?=
 =?utf-8?B?S0I4QlZzbEl3eHljZWh0YVprNXJURFg3MHRiMERkR1VyUVRXcmlVVXo2YWpa?=
 =?utf-8?B?RWdoSnJsUDBtZldKbUhOYmpOMTBZYUxienF4OEdFZ0hTVVhMOEQ0K0ZhMlh0?=
 =?utf-8?B?VXo5RmJScSs0bDBwc0dZN2VML3V6NGRaYm1EWlgxMmVGRWtGaTA1UzZCcjFn?=
 =?utf-8?B?R3pYaVBmT21CcHRVcWFZVUloRER4cTk2Zm1qSFozRnpUUEdRWE5EekNPS2ZI?=
 =?utf-8?B?YWx1blFkbXU1SzFtWmF5T3d1VklqMnpQTGo3eFhjdEwzYVEvTmdDVmpYcUZj?=
 =?utf-8?B?TjVaOU1oMHpjVk4vQXdoTzJDaC9ZL3E4d1lWOGZaVXVJRjlhOU1IUjJLaFA4?=
 =?utf-8?B?T1FEZnVxdVBjYTg4V0N4MXp4YXVvSjgxSFBQSk1CSjl5dlJxNjlIRFYwaThN?=
 =?utf-8?B?N0NaZ3VHYjNoaHFSMmMrWjU4MUVSZkY5U0NDald6eVQyd2xybW5vaTNRdjJh?=
 =?utf-8?B?RlZEQUtONEl0aE9ycnhWTUtIMGVyRitlOWlLdE9jS212aTRoVXRkaXRicFFj?=
 =?utf-8?B?NWtuYXUvbjhXQ3JGcWFacml0Q0txVzBlb3JyWFd5Z0taTkdXQXlJem1VMWor?=
 =?utf-8?B?anY0ZkF3ODhlSmI3YjlnNy9FTllneXNycnpKbXlFSlV6M3RtNU1HWEpuNWpH?=
 =?utf-8?B?NGVnbDlZSGhOTTVHSEVqWEhGNy8zTmVzMHZIYzBHMnJ2OUtxcVY0bmwzdHZW?=
 =?utf-8?B?SXpvYjNvR2xuZFBXbGNxa2RCWG9VMTQ1SDVra0JVclJERUJ0a0xNdnFLeHV4?=
 =?utf-8?B?blNkWWF6TTkzUzVnOVBFL09WT3hzemI5M3hKZU9jTllkbVNsbXZZMXUrVUx1?=
 =?utf-8?B?bmhWT1hQcEZCeVI3ZllWemZZeDZkcVFqZ0JpeWdBeUlDZ3ErMkFYUlI4Rmtr?=
 =?utf-8?B?TTYvY3phMnVwd2RqWWx0SWU4NFpHMGRSNUJKOHIrSEl2YXkyYllqcDdCeGxY?=
 =?utf-8?B?SEpCV0M5c1V4TU5HNE5tcTZtNFVab0J4Ulc5NkxKYWdtMzVhVVU0eVdVWFRq?=
 =?utf-8?B?bGcxSGdWeFFTdXFEdVpUK0k5UUU4cWtQTU8yZmpkbWg5QisxQ0c3c3VMK1JJ?=
 =?utf-8?B?aWx6UnVwYzNjNVVsMjl5UUVkNGw0MmMwWFlhUE8ydlFVemMrYm83TlJoUFRx?=
 =?utf-8?B?aE82QXdwcXNQQitGL0VSQlFsb2xaUGlMc21hTWt2a1MraHBrSnowc0NicHBX?=
 =?utf-8?B?aDhra0U5WTc0bURtMlNZaFRGTkF5eWc4RHVKOXU3d2h1UUpMaGFtdTlUamRs?=
 =?utf-8?B?bmlCRSttb3FDaHA3SmE5TGROUnk1b1dyNVFPVm0wdFBVV2RMWjFhZXhrZVdL?=
 =?utf-8?B?SUJ4a0Y2Q2JUYUtqT1BpQkhCSWsrcGRjTlR1R2N3STg0dndHc0g0VUEzckEx?=
 =?utf-8?B?M3RNSnpacnZQaWpqRzlQZHNmemZkNVNEeiszZTNsWmRIaW1OSi80QnpYOFI0?=
 =?utf-8?B?dkoxalJHcDFtTFhBSWVGSnBKVEgyVTBLQ3AvWE0wRThWbU1EZkZGWVVCWlRz?=
 =?utf-8?B?c2l4dys3NTU2VkJaZS9GUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHYyTGhCckJ4WFd1dUw1Nkpod3BlV0RDekZ4UjB4WGNDMS90UTczT3oxcUFt?=
 =?utf-8?B?MnRCU044ZU1xSnJ1dmlLVjdreXpCNCtPbXF5eXlwWWhsODI4alZjcktzRTUx?=
 =?utf-8?B?cWRZLzVtR25NMTEraHFidklpNTZidWllTHZOa2dRYzUwN3NaSHlsTkYwY3Qz?=
 =?utf-8?B?RlVMTndCczVPMjYwejdUWjJlWVNvc3JhSHA1YUdLdTJ4ZVloNFJibVRNNG5M?=
 =?utf-8?B?UnVxVzJUOXBneFlnam9UU3FGeW5KME05aTdva3JNMXlacHF2eGt1Y2dpQVVW?=
 =?utf-8?B?dHFPaXo3WXRXZXE5Q3dVa0R5TEpBWU5QeXprKzdyVnZ6cXRGUXBrRVlXTk53?=
 =?utf-8?B?YUE3VndKN3lteCt3Y21JS2g5NGJTMllDQkh5ajlWOGVDQVpCTEx4VjgxaTZw?=
 =?utf-8?B?cmNlR21kaTVtMVY1N21Od2llSGdxZiszNTNSbVNpRGRBTi9Ea21Ba3ZwNmRY?=
 =?utf-8?B?Yko2VDhqN0pMeFNXclV0TGdIcngrZE5SaG1ZcVFXZ2R3Wm1iUWtkUFc3R0dX?=
 =?utf-8?B?WjJ5UytqRXFSR0w1MjAreUdMd0cyaGVmb1B1MDZmRDNzQ00xdVV0RHNYY0JE?=
 =?utf-8?B?WVBYSGlYUTRkNGloR3h2L1VsN0t2a1R6SE0wZmFUZzFpOTV6UlpSYWNiRkpH?=
 =?utf-8?B?QThoMTRwTmFIeTluMFVrczRMY1ZucGRtU0xoT3ZtVGlrL3FubXQ5RnNYN3FZ?=
 =?utf-8?B?SmFaRFJqc3JodTlJdzZwK1VJYU5jdHhkbzUrSWNkeVpma1U2VUo3N0RRdVUw?=
 =?utf-8?B?QVE3a0tmZlBLbHJpYWZBTWlFbmdUMnN5RHA3K2ZHL2UzaFFtRXdjRWk5dlg3?=
 =?utf-8?B?VUwrZnhjd0VwRkhibG1hWUZkNnBkNGh5OUJZc1ZtcUs4cVhMcVdsbXR3NmFk?=
 =?utf-8?B?Q3doNExqQmlJRmpnSlB6U2p3ZEFOMHRUazVrck1WWkc5SlVFQVplNnhCdDY0?=
 =?utf-8?B?b0pBRks0R3IxbFcvSW5aeEVlcXJXR0xuTEU2b3VBcG1QUE5sODl5UXE5NkdN?=
 =?utf-8?B?VTQ4VURCZHlsUkRCakwvU1RGaE9HSm5LVXFwRitHWlNqS2crTlZiQUFOYUt5?=
 =?utf-8?B?UFhRR1FQTm83MllMTlRLMmRUaFJsaFlEWWRlSU1WS2w4SVpLZHhNRjVyYlU5?=
 =?utf-8?B?REVjQStXWUlNOFNTMFZ5T3hRUG5PdFRzbzZLSnAyK3hROFk2ZnlPRC80eDIr?=
 =?utf-8?B?Q1ZYOFljam5mYnZhOVNGU3RwRlpkSDBxbk5BZzhWTnQybGNPQkw1OE9zcDBv?=
 =?utf-8?B?bXI1a1RzRDl3UmJzejJXd1QxNjdzdkM4K2xWKzluK3hnSS9ObVp0UlZNK29q?=
 =?utf-8?B?YTVyZnlYNFRLSzVrSUhkb1I2ZnhobWJNUlNEc0ZLRkNabEVoQ01sTkk1V0wx?=
 =?utf-8?B?RFJoNWgrNU1FakM0MC8xZjluM0hpQXRST0k1a1NadVI5YnRuUDkrdnJEdVY0?=
 =?utf-8?B?MmZmcVVnWlNHb0RBODcxSHdMaWoydnJDREw0NEpQOVErYmhWYjJZWm92MmVR?=
 =?utf-8?B?OUVKRkk3enhudUNYdjd5WjZNMDFweW1WRFJVbTF6NlEvYzRXU3Ntbm1BVVZm?=
 =?utf-8?B?RWhjZ0txQW1HKy8vbXFtNDRFWkc3OUNUTGJ6VXltaUdsc0J1Tk14YlBnWnN2?=
 =?utf-8?B?ZjNXYnh6RXhlZFBDREcyb0RJL1J3dHVMV2JEM051YVljamhudkRReTdLRVY2?=
 =?utf-8?B?S0tMWUlCN2xOR0hBYW92VFdjck9MSzAvR3M2ekQrWVdKMTZ6WVV0NVRKUkJt?=
 =?utf-8?B?YXIyakFTK3hMMjhsV05oK2ZKckhZbUxUb1d3RFJlaDgrd0dxZkR3bVBQL0Iy?=
 =?utf-8?B?NVc3YUZQNXpKbGpydmZmSTZmbXVKN3Q5WjFFV0JsUlF4Tno5VDF1eUJHdUNP?=
 =?utf-8?B?VXpDbXZwd3F5MlVPWVBDSUZZWUFoV2hRaHJQS0VHbmo4NHVnYUVRSTZ1SUJF?=
 =?utf-8?B?NjRhK0NLYzNCalQ2R0FpRVNqU3gwOVJwdkZCOGF1U3JBNUcrNjBUdnRQdTM3?=
 =?utf-8?B?amJ6ZVJBZzB4VlVCU0JVSFkvNE9TbVZCMXg3eVRKSHYwUWlDcTNGNzZMNXh6?=
 =?utf-8?B?V2VuemppaUhMUUNyR2gzR2JVTGRWeGRubjhxN2xRcTNpcGxHV3AzdHRmUVR1?=
 =?utf-8?Q?cQYe87GW+kw5AqsQg+QmlWQlp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926cbaa6-4409-4486-772f-08dc7027b636
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 12:58:24.2313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AG2wxDffYJF+H3kXqHqKPLMC9qmhYJaeEqtLFd2Wbkd4XT9QyMtcgiQEiGmNgcJ1L301/R+DAZ++rXYARPt0EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDIvMTJd
IGRybS9pOTE1L2Rpc3BsYXk6IERvIG5vdCBwcmludCAicHNyOiBlbmFibGVkIiBmb3INCj4gb24g
UGFuZWwgUmVwbGF5DQo+IA0KPiBBZnRlciBzZXR0aW5nIGhhc19wc3IgZm9yIHBhbmVsIHJlcGxh
eSBhcyB3ZWxsIGNydGMgc3RhdGUgZHVtcCBpcyBpbXByb3Blcmx5DQo+IHByaW50aW5nICJwc3I6
IGVuYWJsZWQiIGZvciBQYW5lbCBSZXBsYXkgYXMgd2VsbC4gRml4IHRoaXMgYnkgY2hlY2tpbmcg
YWxzbw0KPiBoYXNfcGFuZWxfcmVwbGF5Lg0KPiANCj4gRml4ZXM6IDVhZmE2ZTQ5NjA5OCAoImRy
bS9pOTE1L3BzcjogU2V0IGludGVsX2NydGNfc3RhdGUtPmhhc19wc3Igb24gcGFuZWwNCj4gcmVw
bGF5IGFzIHdlbGwiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jDQo+IGlu
ZGV4IDFkYTRjMTIyYzUyZS4uYmRkY2M5ZWRlYWI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gQEAgLTI1
Miw3ICsyNTIsOCBAQCB2b2lkIGludGVsX2NydGNfc3RhdGVfZHVtcChjb25zdCBzdHJ1Y3QNCj4g
aW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ICAJCQkgICBzdHJfZW5hYmxlZF9kaXNh
YmxlZChwaXBlX2NvbmZpZy0NCj4gPnNkcF9zcGxpdF9lbmFibGUpKTsNCj4gDQo+ICAJCWRybV9w
cmludGYoJnAsICJwc3I6ICVzLCBzZWxlY3RpdmUgdXBkYXRlOiAlcywgcGFuZWwgcmVwbGF5Og0K
PiAlcywgc2VsZWN0aXZlIGZldGNoOiAlc1xuIiwNCj4gLQkJCSAgIHN0cl9lbmFibGVkX2Rpc2Fi
bGVkKHBpcGVfY29uZmlnLT5oYXNfcHNyKSwNCj4gKwkJCSAgIHN0cl9lbmFibGVkX2Rpc2FibGVk
KHBpcGVfY29uZmlnLT5oYXNfcHNyICYmDQo+ICsJCQkJCQkhcGlwZV9jb25maWctDQo+ID5oYXNf
cGFuZWxfcmVwbGF5KSwNCj4gIAkJCSAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmln
LQ0KPiA+aGFzX3NlbF91cGRhdGUpLA0KPiAgCQkJICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlw
ZV9jb25maWctDQo+ID5oYXNfcGFuZWxfcmVwbGF5KSwNCj4gIAkJCSAgIHN0cl9lbmFibGVkX2Rp
c2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKSk7DQo+IC0tDQo+
IDIuMzQuMQ0KDQo=
