Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3888C9ACE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22EF10E558;
	Mon, 20 May 2024 09:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SPGzFcZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A68810E53A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716199020; x=1747735020;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zWk87IZvZm51qJe8oYB1W0DNzZskaNsC//vThItFgPM=;
 b=SPGzFcZpZACXJDVlutIH8ZIWDP26608ny8mB0ygZtk7uP9+YV4mySR+Z
 /SNczW6Zy7XbvrY9croSKwS+licFi+cmqZdNRc7ZejSzF1RQ6Lg4dSLMt
 oP9lpYtkMYvkwC7+RjZapE/5vbw99bkv3ODklk74oAyqaSxoUk+Z7njko
 8ERVTWTcW5Qusf8VNDNiUZZ6atEv54YIhEhzQZtn/G1Nbz44K+0zQ/sGs
 0U2C1BUGiQqfmoOjr6xHaO8KTew+lz8g+WcpzyiH+YZwN+LXJM5ztwFtR
 DxKGP/YnKJzIrzW8M8oHGPwqepnVV+AKmXZQcW1RQTJTFAlN0WqA1kQEZ A==;
X-CSE-ConnectionGUID: MW6aIu5/TFyuXqHYkFlMKw==
X-CSE-MsgGUID: iLwNZdsfSU6bN2hD0SZIUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="22989270"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="22989270"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:56:59 -0700
X-CSE-ConnectionGUID: tk1orhklSnaB4fsGUKhbVQ==
X-CSE-MsgGUID: LLVOz7JNRfiDDj3wiGv3Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="63703887"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 May 2024 02:57:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 02:56:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 02:56:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 20 May 2024 02:56:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 20 May 2024 02:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i+JqT7+YpdzOoTb8mca5neUyodsomUEKUgbfWpkI8RlYok9ByZucclg61ddu6frOKnEMfxyCr/Cu+3mRbNwgZFWeeJbxPgSEFW4enNjV+/zP4IYv9BbAqZTKlEz8PJungRc//lEW+1CgyXHKrfblQbmxteSWEj/62XMkffI4noKrr4VEmIcZL4gaB46IC9YATbSX2IeXEWqSD5cAxfZzRNqyK9dtG1BgG0AyOlO1JT5DpALwmp1BaaEyVF+74mt+IEoYqBrUs4zzWQ2C4F+HcWmMTISpgweP2i+HDCS5udUr813mPfuxyIm2HjI39PAkZa9DPlGzB6d2w4UYyRNmrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zWk87IZvZm51qJe8oYB1W0DNzZskaNsC//vThItFgPM=;
 b=EdkiP579yUT7uJsiwgfD7MgzaId0ICJtq4B5c4+Jt0e9pZzZStRw/5s6DIMD+vwsBP4sQXENOg/unRw6uhcgWA7OPtT8iA8p1hD6lwDy2cSk/N1JJjCTYnbFUeYIi1KQFRiHZ1lDqekow51qvHk1gywyqI6qDH8Vssk+/A43ey33iQaug/mJWYJCn8H4pcNbYKcJL7JGnqYxpMxY4TM4rBZAaOlSP6ZTig3Gzv+jwe/s3whY5ddGWaqbQBEJzice2QXZPuFFxzWZBPnJ4jaOzYFzXwCeXpcpEnnc49dtlVq+HQKgn+PcxVuX5mL44VHvFsuLKM4xf9Uf3/266F0jdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7372.namprd11.prod.outlook.com (2603:10b6:610:145::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Mon, 20 May
 2024 09:56:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 09:56:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/13] drm/i915: Simplify PIPESRC_ERLY_TPT definition
Thread-Topic: [PATCH 04/13] drm/i915: Simplify PIPESRC_ERLY_TPT definition
Thread-Index: AQHap5jq1PVurn8ii06MZt1hDbr4YbGf4teAgAAAsACAAAVegA==
Date: Mon, 20 May 2024 09:56:57 +0000
Message-ID: <43b054c388feab4890acf70f3bacce0f0ad65aaf.camel@intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-5-ville.syrjala@linux.intel.com>
 <8734qcvnak.fsf@intel.com> <87zfsku8m1.fsf@intel.com>
In-Reply-To: <87zfsku8m1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7372:EE_
x-ms-office365-filtering-correlation-id: 56d4d753-b7dd-4be1-e9ed-08dc78b32f82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bWMydVQ5MEh0UW1HMmk0ajBSQWFNbFJEcEcxZ2djYisxLy96YzlUemNHYTJT?=
 =?utf-8?B?M2pzakZocCtUQjgyMVQyRW4wL25LUDZ0VGpNL21wN1dwQXhQN01OV2dld0Z6?=
 =?utf-8?B?YWx3VURSbDNIeXVNcDUyYUlaQW1BRDZQUGNaektJUDFtcVUxa1hzUXJvWTZ2?=
 =?utf-8?B?MjJzTVI1L21nVXY3NWxWRmh4U3BzakVMcUlWN1VUSDNIVjlqSmp3bXZNOXVV?=
 =?utf-8?B?OGJqOEZCdWE1UVVyRUx6OUcyVFN3a1BKcFM0MWNqMkY3alZueGl4NEY0RzQ4?=
 =?utf-8?B?OVdXNnQ0YThGRzFjT0ZOK0o2QUZyTDFka0YzUDliRm5BdTUwUWVDRFF6dklr?=
 =?utf-8?B?VkNmdnA2akN6YUNEK09NOFdqVm5uZy9yOGZtUTA5NHZZNHVVeDcrTTBWOEhZ?=
 =?utf-8?B?OFJOVDdLWjVrcVlLMVBtcXYvZjFQVHN6L3A1TjNydFpuTmVNWkR5RFI3SDR0?=
 =?utf-8?B?N29aZlBTNXRXR1p3eW9RaktjSUdLSVJEbDZnTnRnSkJwbWJkUTRnUWtteFEz?=
 =?utf-8?B?cFV1Q1k0c05McnowZTRQQ3IzSm9hek9aTDhseUhpTlM0Z1pvb0xucWo1ZjJu?=
 =?utf-8?B?WFJpMnl4SXRPVWtRTlIwblRtcHd3eEVFTWRnYVMvNExiWUE1elpIOUVKaVgx?=
 =?utf-8?B?OVl6eWZvWFpNR0syMEE1ODErbTQvUFJaUEhwSnppZ2xWeUFINlV2ZG11REli?=
 =?utf-8?B?VXNEN1dONnIwNmxyb0MwbHJqMklxNmM4clNLcy9tc05kTDhNTm5kMVBaYUYv?=
 =?utf-8?B?WVNZM20rRUFmbzk0SzUwWlVSL1ZEU3FBL3RQTUgyYXdRMGJoTFU3dmRRclF5?=
 =?utf-8?B?OHRzV3EzMk9OaURLZzd2MlhGUnEwMmxxUy9TTlQwWHRHMTgrQlltN1k1amdD?=
 =?utf-8?B?Y1hBaU9uQUhwOU5UbEtqVjB5ZUpVak9rbUx0RGMzNXRIZWJlRmczZXJwNVdq?=
 =?utf-8?B?NVA1TzY4eENuNXd2WDM1aDFoTCtNTFluVzcwekpPNEo1TldKYkRzdVNRV0ha?=
 =?utf-8?B?N29VWEIrTXpQaTNCOWhYRWsxS1VrRVVkWk9SQktNNTF4SWZYZUtXZlNOV2RZ?=
 =?utf-8?B?RVprZS9MZU5NQWRtWmRLL2k5M0dlak5YWW56OWJMOXlGMy9sVkFXOWJUc0RM?=
 =?utf-8?B?dkZiMitzcHpNSGh5UDdvOHUzTCtRNzNKRVQ2aThGOTQ3VEpNUUNtaitHblpm?=
 =?utf-8?B?eUwzeHdBTGFWTU5UVmlpTzJwWm5va24yMVBBblB1bHlwanJjaUtMaFU3c3lF?=
 =?utf-8?B?SFF1UzBsMDlzc2dwSjlTYW9QamVrUGtyWjRERWg4dFNEbnh5bGVHdFpKOFQy?=
 =?utf-8?B?THlaQnl5bnlsMDUrMStPYnNsQUhXdmQ4c2dPRGkvSi9VQnU3UEZ2bnVNNllB?=
 =?utf-8?B?WWxCSENoaEgvVDEwSGpqbGVEbUZ2ZzZYUzErZmg4ZE9UbFAyRWw0OGJZOHZp?=
 =?utf-8?B?ck9YQVVtK09HcTZNVkgzelRyZFNINjRhdjR3Mkd2WjY3YVhuZndNZFc0Nm5m?=
 =?utf-8?B?Yk5TOTZtREpLUHFBbWFCK00vRTZRSHEzTWZBNXVyUmlyZFFMWW0wVkJxcFFo?=
 =?utf-8?B?aGZYL3BZbkxKMWRlKzVwNTZjM3dLemN6czdxbzNNblpWTUVFMzdrY2czcVFj?=
 =?utf-8?B?c05tUmg4TnFMYk1qTWF0b2c4RVpTWjh2ak11TVl3d1FrSStlc2I3Nk43NHJo?=
 =?utf-8?B?RHFRT1VDNitVaHVYV0hmUG9BSjMwN1MzR2N4Ri9GRTFiQ1VWZ3BoS1pPaU1v?=
 =?utf-8?B?dHlrRnJWNWJpQ1hiQ2lXM1BJNmRYNWJNem1IUTd6TVVjMXNBNXhwY1o5SWRZ?=
 =?utf-8?B?L09ScUhQell2Z1kranBHUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mk5XUGdsMzh2TXNzUUYyL3c3OS91YzdvMXFLckt1WW9iY1FYM3p1RzF5QTFL?=
 =?utf-8?B?M1I3Smxlbk54cUlneGtLcXQzM2k1TFNzMGRWTEhHZDdpL29iK0FkSmlSMVpK?=
 =?utf-8?B?NVFOeHZqZ05hci9HUUtYdFF6a01rNHlWWlIwSjV6UCs0OHZSdkU1QS82cFdQ?=
 =?utf-8?B?UjNYYWVZSzF3eUQxYURHUEE0RkJZbGk5NjkvSGtVTGI1bjBFdWh2NVdTM0I4?=
 =?utf-8?B?QSt3aWJOTDNhbWl0cDV5VFlxTEd0VXI0ajNNUE03dTFiUGNGemcxVmdqTzdC?=
 =?utf-8?B?dTU3QytTNDlKNkhsQ2pqM1BiTG02aVRyaVBBQTl3MlF1RGtscHQxQ0xvRjdO?=
 =?utf-8?B?RGlaU0J1a1FzWWZmSFZ5eTFnV0w2bVExVmJUd21taS9yUytzd1U1c29OZDJC?=
 =?utf-8?B?S1orcDlUTjBwUm5OUGVtVlZvN1Y5cVRjdzM0b2lLRVROZlMvVWFnbks5WnVE?=
 =?utf-8?B?RlhVNlRkazFTQU02Q2xnMDBleUZwMG8rVEhDTnBia3Z0cjM3OFlsYkRTczU2?=
 =?utf-8?B?Nkh0SjdPdjhLbExzODdXQUxVcVcvNEpQckdIOW1vNkFqVCtLUzdHK0RsU2NJ?=
 =?utf-8?B?NFQ0Y01wQkEzRWtNaHhoZ1h0YWNWaDM1WXJoK3IvS0MxcXFDQTFsRmNQdnFV?=
 =?utf-8?B?MEpGaVhTMkw1WWROYlBLVi90a0o1NmNscUJQdnJtTjFYYUE1azNVQkxnbmZ3?=
 =?utf-8?B?bjZOY05zRVVkZEFYbmtBNXpQN0JZNDVPRlU5bmFBdnByMlNaUE9ULzAxT2hB?=
 =?utf-8?B?MG9tNFRSSm9ETHVvMENuZ0dCUWtrS3JhOHBSZlVESVBWaWl5RXhrbzZ1c2ZW?=
 =?utf-8?B?b2ZQU1BJOFQvY3VKRmVjWURGYXRRRDFFbUt4TFQzb2g3alBhY2wvVWF5ZVZw?=
 =?utf-8?B?WmlYazI4MGh3VnZkSHh6RFZzOGp5MTdSQzIxL2NKQU93bzA2K01tVGhBR096?=
 =?utf-8?B?anhaclltd3dCc1YyUm1HdGl6bW1SWW5GYklhQTNNMWRlRnJZWHMybE4rWjRi?=
 =?utf-8?B?bXZmZ21nOWNnQlhLVm93OTZETVVSUzFHS0VObWFKOWpTRXZiWUFkYml1aHVM?=
 =?utf-8?B?QzhWRjNTalRjcHVPVHVqSVJSa1lrYTllZk5oWm41dXV2VDQySTdzTHUxb2lR?=
 =?utf-8?B?aEdmT3EzLzdSak8vT0hXSGwyamlzcGtEN0xzbnFrbHg5NWlFTkMxYWZoVEVN?=
 =?utf-8?B?UnJjbmVqUGVjNzYyN3lVemFrekpoM2t0OHpqQTV0Q05qU0kzUmRPa3ZSNjF3?=
 =?utf-8?B?SFAyVjExaXZJVy9YSWR2UW44NlByTTF3WVpacnJnbEV3bmpJVmFKQTFiM1lV?=
 =?utf-8?B?M291cVRMQTk0MUlHOU81ZXArUnJUQldCdnQrUk9lMTZRZmw4ZTdhUkQxcFFw?=
 =?utf-8?B?Qm9JSDZZdVpSNTBlSWdwVE5NeE9YRmR5UFpaMFgxOVFSMlhyb0RSSUl3TjBU?=
 =?utf-8?B?SThJbVBOa2UvMG82bjlJNnV3TnZZeGtFaWU4UzBqMm4yOXI0WXVlVWdpUzl2?=
 =?utf-8?B?MDVtbzZhWkF0OXV2ME9IMlB3QzNvNjFaUmhOczJYK0lkQnhyc0ZzVHBqdnFX?=
 =?utf-8?B?U1BScERDdDZnKzAvZHdFckhadTQ1WkNEWUZla1FHeXY5VGJxM2VBNUErZi9B?=
 =?utf-8?B?WlZ5NEhDMkNzbmY3UEFjOUdxa0FJOGp0ZUtGWmNiZDI4S08zWFFRbFhDYTBG?=
 =?utf-8?B?WlZEU1Bpd3VwbVlBeFluSTNWdFhVcTUzWkV5enNOMkw3NVdqNkhmMWhxWWo1?=
 =?utf-8?B?S01BR2lBL2tFMHVUbXd5RWVNaFVvREozSW12dHZkTUVpaEt4YURacS9lQVl5?=
 =?utf-8?B?NjltTGo3NVY1aUNuZDF2Tml6eFJCRkw4d1lIUEZTU1dRMU1POVpiV1M5YkFa?=
 =?utf-8?B?Z2luWStsc1RnUGpjbEdidGhkazljZGFTZCtyU09xQVJHa1lCT0FGWkpyS2Uy?=
 =?utf-8?B?dUNLLzFTNTlyN1JkNXFUVVNlTHI5RHEvNzZFUjhPaXZ5cVZrdUlZbFU5dXRq?=
 =?utf-8?B?U3VpQmNkVnkzQ0xXVndkeUtXeEd0VndyL2VpeW1iWkVrOVM0VGpDeEwvMzVv?=
 =?utf-8?B?d1RYTXpCcXFLblVTcGxUcE4zSXVsSXgxLzJCU3lrQ1l4ZFFhVHBRMituelFB?=
 =?utf-8?B?VE9nWjhwNmRyUWlUZ2VmNzBKK2diZHoralVEUjdpTkQyR2k4blQ3a2V3WGor?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F34892909A54C84CBFD61C0F958E61AB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56d4d753-b7dd-4be1-e9ed-08dc78b32f82
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 09:56:57.0862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8sIZgcsgyJQfrUB60R/906h2b5ERQI66tywWoSxPwKyGkiSPS9YObTVCd3ZZWR9kDD4mgMukor4Vk+j11fVQMc4reL2D/aCSK7xWfJOF3Mk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7372
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

T24gTW9uLCAyMDI0LTA1LTIwIGF0IDEyOjM3ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBNb24sIDIwIE1heSAyMDI0LCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tPiB3cm90ZToKPiA+IE9uIFRodSwgMTYgTWF5IDIwMjQsIFZpbGxlIFN5cmphbGEgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gd3JvdGU6Cj4gPiA+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IAo+ID4gPiBQSVBF
U1JDX0VSTFlfVFBUIGlzIGEgcGlwZSByZWdpc3RlciwgYW5kIGl0IGxpdmVzIGluIHRoZSAweDcw
MDAwCj4gPiA+IHJhbmdlLgo+ID4gPiBzbyB1c2luZyBfTU1JT19UUkFOUzIoKSBmb3IgaXQgaXMg
bm90IHJlYWxseSBjb3JyZWN0LiBBbHNvIHNpbmNlCj4gPiA+IHRoaXMKPiA+ID4gaXMgYSBwaXBl
IHJlZ2lzdGVyLCBhbmQgbm90IHByZXNlbnQgb24gQ0hWLCB0aGUgcmVnaXN0ZXJzIHdpbGwgYmUK
PiA+ID4gZXF1YWxseSBzcGFjZWQgb3V0LCBzbyB3ZSBjYW4gdXNlIHRoZSBzaW1wbGVyIF9NTUlP
X1BJUEUoKQo+ID4gPiBpbnN0ZWFkCj4gPiA+IG9mIF9NTUlPX1BJUEUyKCkuCj4gPiA+IAo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+ID4gCj4gPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPiAKPiBTaWRlIG5vdGUsIHdoaWxlIHJldmlld2luZyB0aGlzIEkgZm91bmQgdGhp
cyBtb25zdHJvc2l0eToKPiAKPiBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9jb25m
aWdfdmFsaWQoc3RydWN0IGludGVsX2RwCj4gKmludGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ICpjcnRjX3N0YXRlKQo+
IHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghZGV2X3ByaXYt
PmRpc3BsYXkucGFyYW1zLmVuYWJsZV9wc3IyX3NlbF9mZXRjaCAmJgo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZWxfZHAtPnBzci5kZWJ1ZyAhPSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VM
X0ZFVENIKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgIlBTUjIgc2VsIGZldGNoIG5vdCBlbmFibGVkLCBkaXNhYmxlZCBieQo+
IHBhcmFtZXRlclxuIik7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
ZmFsc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNf
c3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IyIHNlbCBmZXRjaCBub3QgZW5hYmxl
ZCwgYXN5bmMgZmxpcAo+IGVuYWJsZWRcbiIpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIGZhbHNlOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gCj4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSB0cnVlOwo+IMKg
wqDCoMKgwqDCoMKgwqBeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl4KPiB9Cj4gCj4gSnVkZ2luZyBieSBuYW1lLCBhIHByZWRpY2F0ZSBmdW5jdGlvbiB0byBj
aGVjayBpZiBjb25maWcgaXMgdmFsaWQsCj4gYWN0dWFsbHkgbW9kaWZpZXMgdGhlIGNvbmZpZyBp
biB3aGF0IGxvb2tzIGxpa2UgYSB0eXBvZWQgcmV0dXJuCj4gc3RhdGVtZW50LiBVZ2guCgpZZXMs
IEkgaGF2ZSBpbmhhbGVkIHRoaXMgYWxyZWFkeSBlbm91Z2ggdGhhdCBpdCBiZWd1biB0byBsb29r
IGxpa2UKbm9ybWFsLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCgo+IAo+IEJSLAo+IEphbmkuCj4g
Cj4gCgo=
