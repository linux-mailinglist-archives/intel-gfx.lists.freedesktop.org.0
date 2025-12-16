Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0507CCC19AB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEDC10E422;
	Tue, 16 Dec 2025 08:38:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WP/QndER";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70F310E422;
 Tue, 16 Dec 2025 08:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874329; x=1797410329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/mHIPNVoKjlIGutXaYzx3TmmvKcwRIgEVEOISSXmkds=;
 b=WP/QndERSJGVulVrtZFyjcEp10J0bi659ylrAeoUoLk9lZhLwkA4WSTK
 2Ua6cGA70rUDu2USouHmyl85rynnU/QdWJj8TadfQvnokL6lr2nZGP7jr
 Imu1uZhwggp1YqS1VZimqqK4wf9qxIX7D6vyQZJtz3MqRJ93jbBTvBAQp
 3CBbIRmfrVOh9sMOsMlZfd/hiQy+4/YOmEYl2WIOTDPLEL94km0jr0Z+4
 XwSMp9tBwBhjhDCredsua0kDZBuNfGdkfsl3AtgKAH7gDtcIbmXJwVlks
 3l/Rw9aS/Zbgx+4LmIt/tQyWBjzFEZ9LJc3tB7BdTlf54hdRmdn2CfKg+ Q==;
X-CSE-ConnectionGUID: +5qYKZ6iQH24PYghnlKxOA==
X-CSE-MsgGUID: kjMsJtUYRr+A1TQayfVi6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="90443419"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="90443419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:38:49 -0800
X-CSE-ConnectionGUID: d8UXkoSsSYOv9Rb5POHEOA==
X-CSE-MsgGUID: HAvsb/yYQTicwBBm+8KaxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="203064260"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:38:49 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:38:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 00:38:48 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:38:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jR1lsrLo8tyHkS3AfF5wkNzMVdMSgLe0XZgrQblpWpk4jBiwxL53c8eceaZecr6lp3xKGagP0q9BENHwHUy746d9Lv4peIQ2l1MjvxdhdoxIESBwtITzkSWGSOp2SxArMMUdbFGZM7GzhsCEMYQeGZZg4PDHb1xZz93kK8IaL4RyY/EQh9970EH8f1PpeRBriiB6hrXzgsvZ6wUZxRB4ZfvitiqDyvWTnrPVFj6H+BTZRe08VWoMQEmHpFVMOc6iAo6Y80p483Eyesu57pAWqu4AGewr95cb+vo5M4vEIi1MznvylNX2NN8xcm6/EjsBJ63lcM/H4tTBLZE4ysKieQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mHIPNVoKjlIGutXaYzx3TmmvKcwRIgEVEOISSXmkds=;
 b=VIOAtIG1c7M0YAOCpW83QYRr7WRi9njq5dcyn+mXajpKmAxS02setwrObXWa+4a95DL9snrwSwhyDQry08A/cyFjqHkcKUADWrN/E3JVj3Hgp/RvgVFnJ1PNcK7yO9yLmO+bs24RuMiD5KcGsWuWow8lfZwrRpMazpLIV8Kuwn6pyY4YYXpAIyObfhrhjcwzNggYVHPaMCk/5Z3lwXMMvFVzbWcgQqu+3FlMsM8dtLOP2CEjOMe036747X/goYOBbxQOalKrYWN98yW7zLBLeGfh6oZthxyUYEgEAKAYb/JZgLPWYzRy+1dwx0tVTk4x+suIQZh9hkIrA5RXqFr8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6998.namprd11.prod.outlook.com (2603:10b6:510:222::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 08:38:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 08:38:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Thread-Topic: [PATCH v3 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Thread-Index: AQHcYsX0kkXrXhu5aE+Zt82gX143kLUP6FaAgBQg3wA=
Date: Tue, 16 Dec 2025 08:38:41 +0000
Message-ID: <7bbf61949c2cc7d5ab9c1bc0b3f8accc98eb071f.camel@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-2-jouni.hogander@intel.com>
 <aTA4BTe4I5sA-WSJ@intel.com>
In-Reply-To: <aTA4BTe4I5sA-WSJ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6998:EE_
x-ms-office365-filtering-correlation-id: 46a0e326-6c44-4896-5e44-08de3c7e843d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?My9ldnA4TFVkVmRrdW4xblEyV3FDWjZqdUdRQldmZXZZSE1TeGFoRFBRcENW?=
 =?utf-8?B?ZXN5aW5zQURLVEVxSHBOaTNydnp5T2pmMk5zcnhOdmZOclRUcm5ndU90L0Q0?=
 =?utf-8?B?R0RnSXZFUnVOVHNxc1N0TWZLSFA2UVIva3F5bXE5Zkx6b3ZQNlBQNjNUVmxC?=
 =?utf-8?B?cStGcVArS3pubmZ3NE9hb25ra25WNHlpTlhtQnpXbHhrRFRiOXVCTUw4STBI?=
 =?utf-8?B?M1BiTXk2aGx2Ym5yeU1LZTljQU1icHRBWGtnR2N2Q1RPZ3VDRnAvckk2b3p2?=
 =?utf-8?B?WHhGeS9mMys1Y0pZYWh0MVMwOVowTmI1RWJ2WUNNekJUNG01Ukt3Q0w4dnJS?=
 =?utf-8?B?ZVBsb1lWdTF0aUx1NytzaEw2Ti96cnN0LzJpaVhlNi9YZmQ0aHN4Tng0S3Fk?=
 =?utf-8?B?ck1GVTA3aHoyc1pjRzBuZndFd3c0MXN1ZnBXdGdscXJBUnAvcG5qazVsRDhI?=
 =?utf-8?B?Ym5oeE5zTWxsamJkZ0dlNXE5TFZLbmxmWE5uRFBXQVBkeXc2NDZTejY2ZTlJ?=
 =?utf-8?B?MW15OEJiSHlyZTVvVmVwalVNM05jeG5vL1dqVHFESDNwYkFubzNRY3IwVzlJ?=
 =?utf-8?B?STJEREpyQnY5SkkvMURYYkJJaGNvWGRNSnpmVjRQWk1oM2RpeHo1VTZWcVli?=
 =?utf-8?B?Nm43TER4ckJsZ3NLbEtZV2hKb0IybFFnKy9nQVZEcWlOUlFOWG9vaE9XTEt4?=
 =?utf-8?B?WkZBdDJqaVY4d2ZJMGZUWk5TMk51ZkkvTXVxT0dYakc1cXZGZ3o0Nk9iaHY5?=
 =?utf-8?B?clpGTHJhTFRFTTltRGVpb09YUE1nYjE1SFZFcDZ5SE5wRnloN2dvTmFFS09E?=
 =?utf-8?B?TmwyZXFHMWZtNjRwRVFaaGZ0N0dkQXFTQlRqRU02dkdtOE50VjUzSTJmRHFV?=
 =?utf-8?B?NmN2ODNPWHg5M1pPTGpWUkVxcHVJMkNxUGtzc2w1VjI0TEhLdFlCV0lEMkFl?=
 =?utf-8?B?ZnZ3aWpPVS9EYXVxVEhVR0JIaXgrL2xKVmNUSEJuL2ZZMmpMbFg4YlRDMVMw?=
 =?utf-8?B?NmJaZExJQjNRdXI3V2l1Q25CTGhRQ1NTc3RpUVhGRnF2REFDdGFUMURENGNJ?=
 =?utf-8?B?STVsbHFvM2cvRmFpNDF5c2NXQ0JGWXNCNm55eHUxR21kUmlnWXc5LzhGZ01v?=
 =?utf-8?B?aFA1aTJ2b2pQY2N4eVlUMUx2cThoc0lnRHI2ZjVmL0tpN0ZFbGlPVngzYkFh?=
 =?utf-8?B?MHlRSnBuZmduZEhQcjQvd2RnbTZrWFNlb3l5eml4aVc3MUF3U0pYeTdxZmQ2?=
 =?utf-8?B?YWVnTlBQUDk2SmN1bEozVHIrYlVnU3haL2lnSzlDNWZjdEpUdjU2WEdEcjFw?=
 =?utf-8?B?VXpTMUNGd3NJRURxSnRab2lieStxNWZOLzNHQVEwQ3dmaGNCdGpDT0didWVP?=
 =?utf-8?B?VmlEdmovSVhEWmJpdTdlK1FtWXF1eHpEWHNXb29xWnhJK21oOEptbTlsdzRi?=
 =?utf-8?B?VDlsTFQvVHdwcXp1UFFObFJnT0ZhdFQveUt3Q1dxaGZLYmZxWHBsd3M0ckww?=
 =?utf-8?B?OC9maGtYUTVLR09vdkt1aUZjaHpKZllGK1FMQ3dqdDhNSWU3NUUzZys3eXRw?=
 =?utf-8?B?MWN5bElvN0REZ3dES3Z6b0NsK2o5Yk5NczE4SkF1eTBDdXlXOXozam9sRyts?=
 =?utf-8?B?NjBMU3NkNmptdU15R0M1c1hxUlNzRlVyRFlkaGpHdVRjaWZjaEJSMGdJWXhG?=
 =?utf-8?B?TXNqYmFydGh1dk5JdnhIM0FweWFvbjBlakdJc3I2MXhhZVdBYXQwdDhJdXpS?=
 =?utf-8?B?R0JYVksxWUN6OW5rampMaHdrZUFaaUN6c1hKazdYMmhBU2g0Qk45cDZBZk1z?=
 =?utf-8?B?bUtMTjZiOTJRZGJCRFczOUhCYWhEK1BLN2IwWjlnQ0o3V2d1bWlnR3hYN25E?=
 =?utf-8?B?WmdaRmdtM1BBNGdhL2tENkhWdVNmU1lrditHZTRQZTJ2aVdCOVdrUmV1bzBq?=
 =?utf-8?Q?n5HzmyIBoeOTWF6kakzRCyTSmEKSXpSb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXJqcGdrMTdmajNLcm9pMmw4VzVTY2xjeTlJZE1iczF4TDlWSjE3YU8zT0U5?=
 =?utf-8?B?ZlVQMU03N3VNak5KaC9TL09LOGNuVVcvQkhJUTlVWFM2T1lZNVNSa1ZWNXdO?=
 =?utf-8?B?dzVNTFVFU2t0RjhxTUFJdnBZdUl6OEV3OEJoYWhiazhaaFducVp0VUc0THB2?=
 =?utf-8?B?Sk1VOHREMnhPeDRxdko5emc4TmRmWnVaQXZjaVlhQm5KYVNTaCt6blZZM3RH?=
 =?utf-8?B?WGRzS3lYL2pLVkhQK3FvZGp1eUR4K1NXZzM1UVdCaGpiYS9RaU1zYnZRQ2I1?=
 =?utf-8?B?Um1hQjc2eTVJUzhtMmdSWjRodGdxMHhGdDFOMnM0RnA0Y0VDNmh3RUlOZm5I?=
 =?utf-8?B?NER4Y3VaY3JuNkZULzdGaDlpaWpDU0RJMTNqZ293YUxrMTBFRm5INThFMW1T?=
 =?utf-8?B?dnIyaC9kVTdNWWpqcEZ5WW4yaVhGaWFwdExmRmFWdHhhRTJWMWI2MnpoUjZ3?=
 =?utf-8?B?dGIrZFdBWWxtd2FhclR2Y0xJelI2OHBORUxvd3k2K1UyaDVUUzVkVUJWcFRJ?=
 =?utf-8?B?cnNncW11MVhZcGlwUDFWWGhwTUh3ak1lTnVSdmJleWQxQ3RsRit5a1FYVGUx?=
 =?utf-8?B?UlNYRDRyWnA5ODB1ZVo3NFRsVmQzRFdHbFp6TlRESVc1MkN2Q3hORVdueDhs?=
 =?utf-8?B?RklUOXJJcm5STmF4UGdLQUhjMTdUSTRJQWpVUks4RENaYzF2Ym1XN1UwSXBR?=
 =?utf-8?B?NTgzeUVpSU9FejdWeXplRGJZMER5cEtVUXJjbWZHVjJ5eVUrN0xBaXJpejhr?=
 =?utf-8?B?SW9iZ1Y1d2ZrbW54bUk5WkdZQU5JWE9ibnlFNmFtSDJqZE42OGNlTWJ0SGZt?=
 =?utf-8?B?aGtyT2I5dXUrcndjNUNReStzM0daemxRb0w0c1YrM0puWjAwRG15RUpNOUVJ?=
 =?utf-8?B?djVaL2daU2tXYTlTUHIzYzl0QUQwWUFaUGd4Q0xCZ25hb0hGL29nYjFseEVW?=
 =?utf-8?B?MGtzSEhJSzlQQmovUUNlNnhLcnpTRCtEMmhxb2tCbTRjckNYekRMbDcxU3dT?=
 =?utf-8?B?RFBWUStjOGJUalRKY2NSWFBWNHdWQVZybEtOajgvMEtUTW81UjdWcW9BVlMv?=
 =?utf-8?B?VFNDRGVwdU9xaHFSUkFmVUM4SHMva0MrVjdiSHIzM3RST3FFdmZacGZ3YnVF?=
 =?utf-8?B?SFFOTHI0ZTBVQ1d1S1FtUm1VRnMvY2JNUWJTY3RHTTdMQjZaUTF5NHVNV0tk?=
 =?utf-8?B?bXI3UzcwZzJBMitBRlg1VFBhZUhQNHpqK3o2a3RGdUVRRFBpWGViK2FydkJN?=
 =?utf-8?B?T1ZWMTJLUHZKMzNlRlgwdXkyQ0drRC9NOWxwS05iNm9xcXhRQnIzMjhnRGFv?=
 =?utf-8?B?QmNYM3NLMEVrNUZUUC8vSkphQ0k0VGRQVis0NjVyMFM3SG1NWEdBNng5N2RN?=
 =?utf-8?B?Zys2Q0NzVXJJRGZrTytkWVNObTJaTEdvWHI1QkhIUkZHT1JGNkR5K0g0MW1x?=
 =?utf-8?B?RU9JNVBZUWlBYTlzcnMzQjJkRzNrRDQwQ3NkQVFnd0dsUnVhTHRPZnZnWGM2?=
 =?utf-8?B?V0FyaTk1dmZnV2VUTEF0cXJRZlhNT3plZGV3SFE3RUl0NEs2VFdHaFJETGw3?=
 =?utf-8?B?MkEvR1l3SXVpaG52Y043VS9vUjl0bWROcDUzTGhDOTlqWjFBSkR3MzZiblpH?=
 =?utf-8?B?NzBBbmc0WUFUdnNVaUprVVBRSnIzeHFDdy9UTFRnQThUZzYyVEliaW5SSUZj?=
 =?utf-8?B?d3IrQzlvTzhyWXh6RnhXWFE1NnVyK0ZSWm4vbjM2bVZ1YWZzQXdoRXkzTURJ?=
 =?utf-8?B?aUY5RGN2c1FZVm9ydmlueWtwbENNRzJQWWdmbjgzTUhJNzdaUGNFV2VyMGVn?=
 =?utf-8?B?TDRMT1hTUC9mTnFBTmN2YldUZ2pXMFlXM1hhSVEzRTVuY0dyWmZ6UXBYYmVk?=
 =?utf-8?B?TllvbmszUXRrWmtqeEZ4SWxoZE9JY2tTMnB2cWZsajRLQzd0Tnd1T3ZMWFRS?=
 =?utf-8?B?KytNM0lvdjB2UnArVjRzcG5JQUYxMkIwT1poWmgvSmVucklJRTFUUm5hTnFl?=
 =?utf-8?B?OHZ6QldNR3RjNzZxcklJRDlsekQ3ZS9ZK0VpcGMrUjFpQVdMRnA0RGZxZ1Vt?=
 =?utf-8?B?d1JuS1RNdE9lV3lUWUsyQ2VxemMvMUxjMWN4ckNiTWtGdmk3WkFlRjlscXA4?=
 =?utf-8?B?bWtLcVkrdUllVmxvakFONCtHdHJGeGNQM0NuWHRwTTBSdHo3bFR0UXRNaE14?=
 =?utf-8?B?dXRLZjFZVHA5OEhMbXhVNDNoZkprSzdOZjJvTlozUUxuTjF1TTlsaFk3K0JH?=
 =?utf-8?B?VEJaU3B0a3hreEViSVdlNk1ZdzNnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7514A41207B1734CB1FBD140523BA1E8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a0e326-6c44-4896-5e44-08de3c7e843d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2025 08:38:41.5260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ucMh8pT7Z/omlsMO4xhjT/B6e0jtL0LJwK2FQYwP2q6B9qA5jlXIuH5E1ioHUTIz6P8M3/Jpn44b0Bx0YIcIIadJWlQflNBZ7REtU7pWUxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
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

T24gV2VkLCAyMDI1LTEyLTAzIGF0IDE1OjE1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgRGVjIDAxLCAyMDI1IGF0IDAzOjI0OjU1UE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDdXJyZW50bHkgcGxhbmUgaWQgYml0IGlzIHNldCBpbiBjcnRjX3N0
YXRlLT5hc3luY19mbGlwX3BsYW5lcyBvbmx5DQo+ID4gd2hlbg0KPiA+IGFzeW5jIGZsaXAgdG9n
Z2xlIHdvcmthcm91bmQgaXMgbmVlZGVkLiBXZSB3YW50IHRvIHV0aWxpemUNCj4gPiBjcnRjX3N0
YXRlLT5hc3luY19mbGlwX3BsYW5lcyBmdXJ0aGVyIGluIFNlbGVjdGl2ZSBGZXRjaA0KPiA+IGNh
bGN1bGF0aW9uLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jIHwgMTAgKysrKysrKystLQ0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiBpbmRleCA3Yjc2
MTlkNTkyNTEuLmRlMGE2OWM1NTU4MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiBAQCAtNjAzLDggKzYwMyw3IEBAIHN0YXRpYyBp
bnQNCj4gPiBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ID4gKm9sZF9jcg0KPiA+IMKgCWlmIChpbnRlbF9wbGFuZV9kb19hc3lu
Y19mbGlwKHBsYW5lLCBvbGRfY3J0Y19zdGF0ZSwNCj4gPiBuZXdfY3J0Y19zdGF0ZSkpIHsNCj4g
PiDCoAkJbmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiA+IMKgCQluZXdf
Y3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLQ0KPiA+ID5pZCk7DQo+
ID4gLQl9IGVsc2UgaWYgKHBsYW5lLT5uZWVkX2FzeW5jX2ZsaXBfdG9nZ2xlX3dhICYmDQo+ID4g
LQkJwqDCoCBuZXdfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gKwl9IGVsc2Ug
aWYgKG5ld19jcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApIHsNCj4gDQo+IEknZCBnZXQgcmlk
IG9mIHRoZSBpZi1lbHNlIGNvbnN0cnVjdCBoZXJlIG5vdywgYW5kIGp1c3QgZG8gc29tZXRoaW5n
DQo+IGxpa2U6DQo+IA0KPiBpZiAoaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcCguLi4pKQ0KPiAJ
bmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiANCj4gaWYgKG5ld19jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApIHsNCj4gCS8qIC4uLiAqLw0KPiAJbmV3X2NydGNfc3Rh
dGUtPmFzeW5jX2ZsaXBfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOw0KPiB9DQo+IA0KPiBXZSBz
aG91bGQgcHJvYmFibHkgYWxzbyBtb3ZlIHRoZSBwbGFuZS0+YXN5bmNfZmxpcCBjaGVjaw0KPiBv
dXQgZnJvbSBpbnRlbF9wbGFuZV9kb19hc3luY19mbGlwKCkgYW5kIGp1c3QgbWFrZSBpdCBhDQo+
IGRybV9XQVJOX09OKC4uLiwgdWFwaS5hc3luY19mbGlwICYmICFwbGFuZS0+YXN5bmNfZmxpcCku
DQo+IEJ1dCB0aGF0J3MgcHJvYmFibHkgYmV0dGVyIGxlZnQgZm9yIGEgc2VwYXJhdGUgcGF0Y2gu
DQoNCkkgaGF2ZSBzZW50IGEgcGF0Y2ggZm9yIHRoaXM6DQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU5MDg2Lw0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0K
