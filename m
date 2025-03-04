Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF62CA4E022
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F89A10E5D9;
	Tue,  4 Mar 2025 14:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YjTZwuSF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22E310E5C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741097105; x=1772633105;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=oKi06uGDdi0eU/+/qsWDILGVgfPAiWOic+9MxUJBWjI=;
 b=YjTZwuSFyI7q2NBKDKdBxptW1z10rYvU6U2P0LT4rQa4sVAm9V8nVOVY
 HqLkC46R7mflzRxBsiwFVuKSlBMBSVBTM0DDyRiupAtAoiRklEl/BoRny
 MmHe0vswrPHqgtd/HLQyzIciJJO/gVtkOeRcEUiewmT8037/vlYRUSs6L
 2hGriTj1QZwWHyFdjIlKRfvszPH2XZa/QmS6ssbemoMO76TTdKG1w50ZB
 in1DjPlmVjXnIBlGd2auHMDolZrp7MXd3IPG59LJ3RKcZc69nnRjtO2PX
 kdSguo2nSmuhWuIohRvbnrdUrrH3QudFZQLInw0t6e1LJiXm3MFblRL01 A==;
X-CSE-ConnectionGUID: BCWydNZQStq1KEdl1AOOjw==
X-CSE-MsgGUID: Bok7hNMwTqWW668oQiAP/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41911873"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41911873"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:05:05 -0800
X-CSE-ConnectionGUID: EjWc8pWRT9SOdtMHL4Oucg==
X-CSE-MsgGUID: 5M9iACS2QquNkJZ5unBt4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123578672"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:05:05 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 06:05:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:05:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:04:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LqiQr4HBs5y04RcsJ6gPfe3b8WF0gNU9h7OIKt/2PLzxZLRZq+YobfAIq/mxip+Gyx/RoPo0yoIZgJToqKiumwlLkC6MEaS+bGKgusZpqrsriGC0ZJl336Z8cTISRHJTo+AMNP3fb6/OowCQhMEyMDozRCXaD3eG+ADjqc9pALapbfTXqGUjbttmSoEXIcr9xf5/BOm0FYH0ue54uMK0uekPN5g2y3SSN3y81WjQzYqj1DN+TrocVOYzoo4VGMLBvtzhbYjvn0+bkD67GgC5imGH5idPcD4Ur6EmUL7vU4DQGL292bwD5bUbKHIAbcJhrRHEQTQEv16v6l/N4lIGaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKi06uGDdi0eU/+/qsWDILGVgfPAiWOic+9MxUJBWjI=;
 b=s33rcIkNwsmI6p9apTcP7tLlREluhazzz1B94AXjbGROOI/Wd8WBPx6C3dTEzGaqBeg1opP3JMI29xDb76NfTbIvvE6c60SAN3ZyHY4tV/bHAsJ1tqd/nw9i7USUUVQZdu5AuieU6YbOtyKzw2l/bMiQRP5dIWmWrPGbykMkWKdu2UY7jAx7GBFn089sO28+nmlr/4pUfRhAsc3NjJGCTr5OtNWL4dgIx0MYs/YeVs9fV7Uoz60MLl9eShvO6HPoCHt4uJNuo49VP1sGFGs5jQ27GTcnzuvHviJRd1gp993L9TQhcBX9Yf63IW1JxGtcLrUuy2/H0OYrfxZILbUKfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SN7PR11MB6921.namprd11.prod.outlook.com (2603:10b6:806:2a8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 14:04:02 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 14:04:02 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/19] drm/i915: Extract intel_cdclk_update_hw_state()
Thread-Topic: [PATCH 10/19] drm/i915: Extract intel_cdclk_update_hw_state()
Thread-Index: AQHbgkr4Q3PrBBxtXEqVQZoimY/IrLNjF/gA
Date: Tue, 4 Mar 2025 14:04:02 +0000
Message-ID: <b5a9654c673f08a35297bcc1b0b1d6b96461a193.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SN7PR11MB6921:EE_
x-ms-office365-filtering-correlation-id: 4cf16f51-7c02-4438-1697-08dd5b256ae8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QWFKV0F1eEtmSUZ3OHJvdEdxT2Z4aEVNVk81RGtmTkdFaHVuampBemRXa2kr?=
 =?utf-8?B?ckFJczkwaDE4ZCtrOGljWE1tcEkwNDNnM0cyK3lEOGxUNW5oR1FvR2JSN1JL?=
 =?utf-8?B?M2FjelVKM2cwSjFpWmlBY3h3b0NFUDZKbktjQWliMlJpUFNmS25CRXZnZWRC?=
 =?utf-8?B?eE9ZMmpKVG1TaVgwdlJvM1Irak1uTGxhMDVCcldORFNNUkMvczlzTGVMZFE5?=
 =?utf-8?B?SmlBRWpId3Q0d3k3U1NlYy8waVp0aUtBYUVRZW10S2hWeFdxMzJpWS9BUUZG?=
 =?utf-8?B?ME56eFQzc212aDBhSTRxMjRZbFB6ZGwwQXNSNGpoOVNvcmhlRGd5UWZ4QVdR?=
 =?utf-8?B?WkwrZjVrbXo4K2gwWE56ak1uNGdqQ2NtNmo1MDBKbzFwc0huWUNiQzdrYjRi?=
 =?utf-8?B?Q284N1VRUW56QmRIcjZGTkRaTjdZeU5FQ2NUdkV4dTRPVHNNK1IrVHA3Nnl3?=
 =?utf-8?B?UzFRQ0wySWQ3QWhxV0QzM09MYld5QUpqTTZLZDROUjlMMi82cjhrN1krWmI4?=
 =?utf-8?B?ZU9JQzJ0TDBBSUlwdWkveUxhS1puRzVESmk0SllaNTFDZnp1enpWK2ZpOEw2?=
 =?utf-8?B?bUpBYStDcVRiUEx4Z1NlM3E3SzZwWnBycUxuWW1rd0JxODFMNWhLM0pjZ0M4?=
 =?utf-8?B?Um93cnhxb1dLbkNwb2lhZ3VzazFXaEpVMmVwbWZ6NWlvUUhkRG5CT0VXU2Z2?=
 =?utf-8?B?NUV6YTFkN2VHSEFmTHRmbWtwR2dwWmxGZzlTS1lHU0Y4ZlpwOGZOeW5BcEdV?=
 =?utf-8?B?aXg4UFgzS1BPSVRtTFFWNnQra3YvTHpOTjcxSjBhdTQxdVMvcmwvVDF3Uk9q?=
 =?utf-8?B?VDFCZmE2R1diZVI0cVpqaWhTZUFlcG5naEdDV1ZEU0FicXJ5SlE0YnkxaXJr?=
 =?utf-8?B?eEQrR3NoMldZMkRUMS96dk1qcTBoU2dveXk3ZVV6bjRRQ0Rianc0YkY1aFkx?=
 =?utf-8?B?ZWh1ZUF3a1Zua2gzZmZHMXBaMVpXMXdlUnZVQ3E2ajZha0c1NGRFTGh0ZTgw?=
 =?utf-8?B?cGxlT1EwV2dYZGovOVEvL29odTdHOVdMTnI5WXNqZzlLSUJZNlI1b21hV3V2?=
 =?utf-8?B?eEJ5QUlpN2ZsSnErMHA1K25KSzM4T1BYYy81RGlySWd5ZUp5ZWNHMHFma1VC?=
 =?utf-8?B?VUFBaS9iYmczRlJUZVIzakZqdjFJWTZCS3U4NFdKTWZBS0xnbmVCMUplRFg2?=
 =?utf-8?B?eVR5VG5MekdibHd6V054cndYdVREU1k1NHZxSnRpOGhSaytFNXRWdDE1MFFT?=
 =?utf-8?B?R21xNklBRU16NFNpV3hsdVhhd2NqcUlIcGNuSXF1N090VTJKeDRnZjUzWmN2?=
 =?utf-8?B?QVVXZnFaRUpaMFFydm9KOEYyT2Y3TDJFc2tzQmdKYWo4Q0NqenBpR0srelR4?=
 =?utf-8?B?cG1UYWt4QytIbm5VeHJmVUh0aUlOa2NrQ0lhSnl2OWZBbFlzWFpvYWdQNU5l?=
 =?utf-8?B?T2htV2hxeEI1WWoybFJvNit5QkdJdkpRajI3YlJnRHNjQzZncm9hekJEWnJU?=
 =?utf-8?B?a0tKaVhHSTVzeWRvZWpaQnBRQmJBT2RPQnlRT2l2Mmh0S1kwa3dJRE56eXpt?=
 =?utf-8?B?Nndnbnd6Vm1GcGEwVFVoZmZrMUtjY2YxdCtaWjA5YU5OL0NEQld6UmlXT2tX?=
 =?utf-8?B?MXBPbVZLU1ZLYW15ZWxUTkJ2NDlVQStpRjRGMXdZdHJVM0xlV2E1dlI0a1hY?=
 =?utf-8?B?d29zMjNCaWlZakczUXo5T09McS9hOVJwVlZpSGNUczRuT1BxYzNkZlhLMnNo?=
 =?utf-8?B?dnllTEF5VVFXdGtreVJKZjNiMkxVTllvOTE2YThsMXpxdFBQc05hczR6OVgx?=
 =?utf-8?B?NE9zbWluQkdDRjVnQ2EzNitkV1hINlVJR0d6V25jcWFXVVRyQWRPNjBQYXVq?=
 =?utf-8?B?ZUNoMm1NaVZqbE05TVd6Rmp2TktNcVkySmo0N1F0NDJicmlwMHBpYUo2d3l4?=
 =?utf-8?Q?uAIAOVyfTxsWf9QImxBQKrZdjrwT4bI+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1pkRFpRMG4xTjdxU0hrVnVFRW1iQkhTTEhLbWZZa1BZdFFIV0xSY1JVemhl?=
 =?utf-8?B?Sm1oMFVqZWhheTJyUGpmcDVkblA3WmR1TUwvVkptMGtVczN5N0h1Yll4Qi9m?=
 =?utf-8?B?VzlGQnc3OWY5a1o5Z0Z5VEdVN0xjZURsYi9pcVpKRHFzeXpQVjVpZnV6amNh?=
 =?utf-8?B?ZUZMZlY2OTdYVnBYcWpqeXRVOExuazh0TWNTTm1XeDM2Z3ZNOUJMNUZmQ1E3?=
 =?utf-8?B?bzBJUnp5TWFCaStyM0YvV1VyOE5JV2VYdVYxSnBqU0FmNHUyMkl5S3ZxQ1Y4?=
 =?utf-8?B?akF1YktLYUkzM3FaV3JmUW1GUi9UTTZOam9ydEhsS09LNXV6OS9rUWR6UzlT?=
 =?utf-8?B?MGhoWTUrWTMwajYwR2IrWVJYM0hMVEovVUJXb0w1NUdwU2cvM3lZdE1VbXBM?=
 =?utf-8?B?aWwyZ0IzajR5OStyeEZxVFQwZGtDMi9DOGxHNmF3TDZiV0MwdGlkR0QwY3Bv?=
 =?utf-8?B?UStNS1Z2QkZZQ0VoY0h3SlNCNGlQTHN3SkFJbmZrQWxMaE5xcHU4WVFaMXRp?=
 =?utf-8?B?bWUwa2JnUkRNaVZyVVZGZC9HM09BY28yOGlBY3FFZ1JQd3A3eXdPYlRVeWQz?=
 =?utf-8?B?aERnRTNMTitSbURhaldaaFJGU1VEcXZlOGpqaDRLazh1VDRTOVZhOGlUOG1l?=
 =?utf-8?B?MjFiRDdlcWlOZGVBTGtrUjNyNm5oTFJLRERMYkV4NU1NYXFCeDRpTnoyYUhh?=
 =?utf-8?B?LzEyOWVMMWJXVWJyYnB5dk9acmY3bnlSSlNFRkJLL0p6Vkcxa0lWZENtTjdO?=
 =?utf-8?B?dklxdjUzL2FIWHZuZ2FMZjRsUExiY1lTVk95cWN6dm5rQ2pjdWZMeDZrREJT?=
 =?utf-8?B?Mzh6M21IOThLU3k0VlcrRjMxWHpWZU9RaCtiNW1yVS9zSSswZEdyQ0dMdVFS?=
 =?utf-8?B?SUZ4UjFON3ZvMVdMR1ZkUWhlQkcvNWkzcU5BNDZZZm5PajluY05vUFNFVHZC?=
 =?utf-8?B?SStMUnpiRmY0RW4yT0FoUXBONmpURVZGcDBVWEhWeTdaSjE5dVVOMmNsamt2?=
 =?utf-8?B?QU5NUnFubGgrL3NQWDBDZGZBc0gzQ2JVT2g5WXg2c0E3ZDJvaEhtb3hGb2sw?=
 =?utf-8?B?Y1hpVnZIUkYvbEcrcFZLME5XTFdGVGZEMkpoNEo3c1lnd2N2UWk2VllZbzZ3?=
 =?utf-8?B?V3VWaktMblJlbkxkWm1SUENsR1ZDVnVjc2luaEZ4TGxSY0RBK0t0TmgxMzBv?=
 =?utf-8?B?MEk4c25vdHJIdldQLzUvZzh5R29lQU5qL2NNTGlYN1FIbUhHV0JoMy9UN09k?=
 =?utf-8?B?UkNVNitYSjBlMFZHSXNoTTl6NXhRR2RlWHpQWUNnSkIyZEJERmNHaDJ4RVpo?=
 =?utf-8?B?MndtTEg5UW1ZbmdIVTRhVzBJMXFZd3UzdXZ0LzN6eEJlQlpONDMzcFpnRmVK?=
 =?utf-8?B?VU5IUWxsUzZ4UzVFcTZXdVFvN25WQ0hlTlBOcHJicmF6L0VNTjBBMXdnUjZS?=
 =?utf-8?B?TmRybDllbjhKa0c0OFBsRmZwNWMveFBGQ01RTTFaOFp3UnZrRnVsTlNNREU1?=
 =?utf-8?B?SkZac25jQmxYNk9pa1pDaUJlOGl6TG5LZzhBNStMNmRzQVBKOVYwSUxaVUdE?=
 =?utf-8?B?ZDlGVGpVSVhzUmZMb3Fqd05MdEZ4R1dTYlBKTnRvMHRyVmEzbVN6bSt3VGlV?=
 =?utf-8?B?KzZVeXVTcFpFTi9VUjlPQUVIS09WVEVOTWF3OGZ4QktoQmc1dk0vZE1WaGJh?=
 =?utf-8?B?Y3FnNm4rWkJvNTVoaW5ZeFUrOHlSTElMVzlSc3hyQmRPV3p2a25EMW9Ob0F6?=
 =?utf-8?B?VFUzSHZ4YVJWSWNsQ2QwOXFEbUVPNjRPQS9HSkM1bFBwTEdvSTNOdzJQNldy?=
 =?utf-8?B?STk2UzFIcGwyL0dveGt4QXF6VGMrNlY4WTd6ei9wTVBFZXE3djVMd0drakNE?=
 =?utf-8?B?UmU0TzlJMDBKTmRIeWx2cHJxME1kZ2EzRUs4N2Y3Um9EYUx1Ni9GZ0VoSXIz?=
 =?utf-8?B?dldDWDVtTkdGbTYrVjJxYkxSK2xVU25OejVIbjhYSVBVbkxkZkFCOXpjQk1p?=
 =?utf-8?B?cGtHQklTMVJkWGtIZkhOV3VJV0VEcWMvL0NoN3ZSbmtRNlVEdEpCSHF1NkJI?=
 =?utf-8?B?VzhMRFlJbGp4VFptdHl5dnBqSGZjZ3l5TVFTVEk1ZmMzNGMxM2FqYU9HRkln?=
 =?utf-8?B?THpkUjZTaXRUUXlVVDZhbVcydFRCRFgxNUZQY2UyUE81SEs4bzhOUFdPbEEr?=
 =?utf-8?Q?3UQYjuc05z/Weh8KXeRHxF8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D01E3E679A00E4CB8CD5B4FF4DE9B91@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf16f51-7c02-4438-1697-08dd5b256ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:04:02.1951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mIidjgYmDPakPC6j/KJoKVvHdkeJ5/2tTogJeLsnR9OFLM/BJxetR6vy4sAiWbuRlSBLZq8tcqJ0CpVxF+BIh1fstkW2epMe+pwxKvUkuEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6921
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9pc3QgdGhlIGNkY2xrIHN0dWZmIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBmcm9t
DQo+IGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZSgpIHNvIHRoYXQgdGhlIGRldGFpbHMN
Cj4gYXJlIGJldHRlciBoaWRkZW4gaW5zaWRlIGludGVsX2NkY2xrLmMuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmPCoMKg
wqAgfCAyOSArKysrKysrKysrKysrKysrKystDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5owqDCoMKgIHzCoCAyICstDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jwqDCoMKgIHwgMTYgKystLS0tLS0tLQ0KPiDCoDMgZmls
ZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IDRiNzA1
OGU2NTU4OC4uOTQ3ODMzYTk2YWI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yNzg4LDcgKzI3ODgsNyBAQCBzdGF0aWMgaW50IGlu
dGVsX3BsYW5lc19taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpDQo+IMKgCXJldHVybiBtaW5fY2RjbGs7DQo+IMKgfQ0KPiDCoA0KPiAtaW50IGludGVs
X2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+ICtzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgew0KPiDCoAlpbnQg
bWluX2NkY2xrOw0KPiDCoA0KPiBAQCAtMzM0MCw2ICszMzQwLDMzIEBAIGludCBpbnRlbF9tb2Rl
c2V0X2NhbGNfY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgCXJl
dHVybiAwOw0KPiDCoH0NCj4gwqANCj4gK3ZvaWQgaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRl
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9j
ZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUgPQ0KPiArCQl0b19pbnRlbF9jZGNsa19zdGF0ZShkaXNw
bGF5LT5jZGNsay5vYmouc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiAr
DQo+ICsJY2RjbGtfc3RhdGUtPmFjdGl2ZV9waXBlcyA9IDA7DQoNCkFzIGFjdGl2ZV9waXBlcyBh
cmUgYWxyZWFkeSBjYWxjdWxhdGVkIGluIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZSwg
d29uZGVyIHdpbGwgaXQgYmUgdXNlZnVsDQppZiB3ZSBwYXNzIGFjdGl2ZV9waXBlcyBhcyBhIHBh
cmFtZXRlciB0byB0aGlzIGZ1bmN0aW9uIGFuZCB1c2UgaXQgYWJvdmU/IFNhbWUgYXBwbGllcyB0
byBid3N0YXRlLQ0KPmFjdGl2ZV9waXBlcyBhcyB3ZWxsIGluIGNvdXBsZSBvZiBwYXRjaGVzIGxh
dGVyLg0KDQpBbnl3YXksIA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlu
b2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gKw0KPiArCWZvcl9lYWNoX2ludGVsX2Ny
dGMoZGlzcGxheS0+ZHJtLCBjcnRjKSB7DQo+ICsJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlID0NCj4gKwkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5z
dGF0ZSk7DQo+ICsJCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gKwkJaW50IG1pbl9j
ZGNsayA9IDA7DQo+ICsNCj4gKwkJaWYgKGNydGNfc3RhdGUtPmh3LmFjdGl2ZSkgew0KPiArCQkJ
Y2RjbGtfc3RhdGUtPmFjdGl2ZV9waXBlcyB8PSBCSVQocGlwZSk7DQo+ICsNCj4gKwkJCW1pbl9j
ZGNsayA9IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY3J0Y19zdGF0ZSk7DQo+ICsJCQlp
ZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBtaW5fY2RjbGsgPCAwKSkNCj4gKwkJCQltaW5f
Y2RjbGsgPSAwOw0KPiArCQl9DQo+ICsNCj4gKwkJY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1twaXBl
XSA9IG1pbl9jZGNsazsNCj4gKwkJY2RjbGtfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsW3BpcGVd
ID0gY3J0Y19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWw7DQo+ICsJfQ0KPiArfQ0KPiArDQo+IMKg
dm9pZCBpbnRlbF9jZGNsa19jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Yyk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmgNCj4gaW5kZXggNjg5ZTEyZTIxOTZiLi5hMWNlZmQ0NTVkOTIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gQEAgLTU5LDcg
KzU5LDYgQEAgc3RydWN0IGludGVsX2NkY2xrX3N0YXRlIHsNCj4gwqAJYm9vbCBkaXNhYmxlX3Bp
cGVzOw0KPiDCoH07DQo+IMKgDQo+IC1pbnQgaW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNsayhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRl
bF9jZGNsa19pbml0X2h3KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gwqB2b2lk
IGludGVsX2NkY2xrX3VuaW5pdF9odyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+
IMKgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KTsNCj4gQEAgLTg0LDYgKzgzLDcgQEAgaW50IGludGVsX2NkY2xrX2F0b21pY19jaGVjayhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqBpbnQgaW50ZWxfY2RjbGtfc3Rh
dGVfc2V0X2pvaW5lZF9tYnVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBib29s
IGpvaW5lZF9tYnVzKTsNCj4gwqBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKg0KPiDCoGludGVs
X2F0b21pY19nZXRfY2RjbGtfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
Ow0KPiArdm9pZCBpbnRlbF9jZGNsa191cGRhdGVfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpOw0KPiDCoHZvaWQgaW50ZWxfY2RjbGtfY3J0Y19kaXNhYmxlX25vYXRvbWlj
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gwqANCj4gwqAjZGVmaW5lIHRvX2ludGVsX2Nk
Y2xrX3N0YXRlKGdsb2JhbF9zdGF0ZSkgXA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBpbmRleCBlOWIwNTMzNTI2ZjYu
LjFjZmEwM2JkMzIyNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gQEAgLTY5Myw4ICs2OTMsNiBAQCBzdGF0aWMg
dm9pZCByZWFkb3V0X3BsYW5lX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0K
PiDCoHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gJmk5MTUtPmRpc3BsYXk7DQo+IC0Jc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpj
ZGNsa19zdGF0ZSA9DQo+IC0JCXRvX2ludGVsX2NkY2xrX3N0YXRlKGk5MTUtPmRpc3BsYXkuY2Rj
bGsub2JqLnN0YXRlKTsNCj4gwqAJc3RydWN0IGludGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGUg
PQ0KPiDCoAkJdG9faW50ZWxfZGJ1Zl9zdGF0ZShpOTE1LT5kaXNwbGF5LmRidWYub2JqLnN0YXRl
KTsNCj4gwqAJc3RydWN0IGludGVsX3BtZGVtYW5kX3N0YXRlICpwbWRlbWFuZF9zdGF0ZSA9DQo+
IEBAIC03MzAsNyArNzI4LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAkJCcKgwqDCoCBzdHJf
ZW5hYmxlZF9kaXNhYmxlZChjcnRjX3N0YXRlLT5ody5hY3RpdmUpKTsNCj4gwqAJfQ0KPiDCoA0K
PiAtCWNkY2xrX3N0YXRlLT5hY3RpdmVfcGlwZXMgPSBhY3RpdmVfcGlwZXM7DQo+IMKgCWRidWZf
c3RhdGUtPmFjdGl2ZV9waXBlcyA9IGFjdGl2ZV9waXBlczsNCj4gwqANCj4gwqAJcmVhZG91dF9w
bGFuZV9zdGF0ZShpOTE1KTsNCj4gQEAgLTgzMyw3ICs4MzAsNiBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
DQo+IMKgCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IMKgCQkJdG9f
aW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gwqAJCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmU7DQo+IC0JCWludCBtaW5fY2RjbGsgPSAwOw0KPiDCoA0KPiDCoAkJaWYgKGNy
dGNfc3RhdGUtPmh3LmFjdGl2ZSkgew0KPiDCoAkJCS8qDQo+IEBAIC04ODIsMjIgKzg3OCwxNCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgCQkJCcKgwqDCoCBjcnRjX3N0YXRlLT5taW5fY2RjbGtb
cGxhbmUtPmlkXSk7DQo+IMKgCQl9DQo+IMKgDQo+IC0JCWlmIChjcnRjX3N0YXRlLT5ody5hY3Rp
dmUpIHsNCj4gLQkJCW1pbl9jZGNsayA9IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY3J0
Y19zdGF0ZSk7DQo+IC0JCQlpZiAoZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbWluX2NkY2xrIDwg
MCkpDQo+IC0JCQkJbWluX2NkY2xrID0gMDsNCj4gLQkJfQ0KPiAtDQo+IC0JCWNkY2xrX3N0YXRl
LT5taW5fY2RjbGtbY3J0Yy0+cGlwZV0gPSBtaW5fY2RjbGs7DQo+IC0JCWNkY2xrX3N0YXRlLT5t
aW5fdm9sdGFnZV9sZXZlbFtjcnRjLT5waXBlXSA9DQo+IC0JCQljcnRjX3N0YXRlLT5taW5fdm9s
dGFnZV9sZXZlbDsNCj4gLQ0KPiDCoAkJaW50ZWxfcG1kZW1hbmRfdXBkYXRlX3BvcnRfY2xvY2so
ZGlzcGxheSwgcG1kZW1hbmRfc3RhdGUsIHBpcGUsDQo+IMKgCQkJCQkJIGNydGNfc3RhdGUtPnBv
cnRfY2xvY2spOw0KPiDCoA0KPiDCoAkJaW50ZWxfYndfY3J0Y191cGRhdGUoYndfc3RhdGUsIGNy
dGNfc3RhdGUpOw0KPiDCoAl9DQo+IMKgDQo+ICsJaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRl
KGRpc3BsYXkpOw0KPiArDQo+IMKgCWludGVsX3BtZGVtYW5kX2luaXRfcG1kZW1hbmRfcGFyYW1z
KGRpc3BsYXksIHBtZGVtYW5kX3N0YXRlKTsNCj4gwqB9DQo+IMKgDQoNCg==
