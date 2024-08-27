Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E268C960B26
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 14:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA5810E318;
	Tue, 27 Aug 2024 12:55:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AHHqTVB8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAFB010E318;
 Tue, 27 Aug 2024 12:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724763300; x=1756299300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gwzRK8/9+9/fMXxNa0JnCHwwuCQYkDCA0vcuqA34IxU=;
 b=AHHqTVB8nQRt22EMI0rK7w1ewxZhzDL/is8FU95oYAQj0fL8U62LhC7l
 FDzSR+wY6KWqwCK4uQ/yWYWoTnlX0q0ZrkQbrFPUjkmyCDVMim0PPCvWJ
 zuoF/YQFasqD9rEzJrAVFeUnxM0DyTozv7vZP2IqTKHHh7wt9lXiFX7bS
 tQjIKSPzQzac59B8I769enx31EjIFT4A3qa8jagNIB38OzndAnDdM4fP8
 aPv8I7RyM8Etyqv0hDLIEmDi3JYKukr291MAkBu3DwrYR/dTffk3Y4zEt
 0f4czWtG5uLbRLvCQNMwaBYnQNZU6NT7UdU7SJPUYHx/WGTsjDF5muZ0s w==;
X-CSE-ConnectionGUID: E4EoXYaiRbmezFOrGPXR2g==
X-CSE-MsgGUID: +TkeFlNxR4qhw915hwZ80Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40708290"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40708290"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 05:54:59 -0700
X-CSE-ConnectionGUID: lU6PUzgfR7K7+/olJuTQDQ==
X-CSE-MsgGUID: 1zDpIxhoSHK1/clbKy6Y2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="62566771"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 05:55:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 05:54:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 05:54:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 05:54:58 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 05:54:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oR56ADgATbU0OX2yHfJCC7uQXaDlqeNfsmm+qRpRnVzWLEAiKm4PuGeHfYN9q1zV372W1Y80XhAwslo5dIKT5dULAjqrl4+57Y0xiJ3UoGC5BwpE66k67Rc6UjojrBfcNHVF7uNIYR+UdA1P5l489C/M3/XvLWGAj0c/22Mq01ZzNtE/M49ofT3TpcD4K497cAYZsqphb9csUtJ32ClCCQseSAB7cqZJsLxph4ZlteWBYNkkTwrXZikUhFRE2E0Ax0LNHTN5SiJJCDSQpgjOugqjJ0OCRR49A3w8+cBjH012HR8/gA5bohzvY88+8BWFLieD9BI/boRTRVHtXa5tag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwzRK8/9+9/fMXxNa0JnCHwwuCQYkDCA0vcuqA34IxU=;
 b=OtVQP6POs5GquGoPe3p8Ghk0Xr+a7m9KVutyLKF88dza7VB1GfqBD6S9kpIuOEK0slmX7hzw6YZeCKxICz57B03eSh1neDLyyBvyt4VoA40VOQOXWGv0SYMy2r6h3gbweprI/cOg5TqXLadUhR7ZN7lcWpqb9FQ5+FJ6rlWIWt58nhhjeCE1L+wnPIWKQz96cnR4oJcZ7KoVtn2SI0dshQDw0rdkiw8rGUv6x9QZk1zIH7tUukZoh8cZjaXT+YUDXEksq48kiZe2ZIV8dHk58I0FukypjgXErySZtYkMsAsKDxpnps90uWeLTa0BPJscZWetHhKm01nDhEbRjLMNOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB7050.namprd11.prod.outlook.com (2603:10b6:510:20d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Tue, 27 Aug
 2024 12:54:56 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 12:54:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
Thread-Topic: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
Thread-Index: AQHa+FozxB6LGNp8rkWxyAsL9p6OAbI7D71Q
Date: Tue, 27 Aug 2024 12:54:56 +0000
Message-ID: <MW4PR11MB7054EF56FCB37EA2D705902CEF942@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240827081205.136569-1-arun.r.murthy@intel.com>
In-Reply-To: <20240827081205.136569-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB7050:EE_
x-ms-office365-filtering-correlation-id: 72989cfa-d400-46ae-fcad-08dcc697739e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZXFyc0xIYmtmeHFvYUtnY0ZzN3VJWkJZd0ZnM0p4enEwL1NKUUlxKzNaREtY?=
 =?utf-8?B?NUtFZElRdkhmM3dSdXROSXNkWkFnY0poa09DNHZnRUdRQ1lDMnpLL3B0Nks5?=
 =?utf-8?B?dmlzdXk3bmNjQTltMllZRUVIRW5aR0svM21zQ2NUTVk1RkVHVlZyWWRmNGJU?=
 =?utf-8?B?OCtjcG1qemF6U3lDc056VkhTNGw4anVxd2lpUWJaNWtHSkk0ZlI0c24vclVx?=
 =?utf-8?B?cUloMlFQb0UvNno3aDRFU1NoS2ZsYWxhM3lTSzVlRWxIMStTSlQzZ1BxYUdw?=
 =?utf-8?B?YUVvN2lXNzNEZGI4QnNsWXZaNVhJN1NTRFptRmw1U3Q0VDVGSTQxQlEvY1NT?=
 =?utf-8?B?SU1yS2xtdXJvWEpsVHo5K0Nrb2JlRjdXb0Q4VWRXWFI4dUxvbTBmY1FYS1BG?=
 =?utf-8?B?b0NkOEJDeGdDK1BkWk1HczhTUUtDNzlJb0xjQUhOa2JmK25VbFJTeWRLYmFu?=
 =?utf-8?B?WVdzUmlvMHpabC8wdjBGS1ZpQk50QzFIYmlpWXF1UjdPU0RKdmUrY04xck5H?=
 =?utf-8?B?cWo2QVVoTjl5d1FRcFIxMVZzNEpWYm5LVWhUUVVtY3phTXhldjRnZlNNNWMz?=
 =?utf-8?B?L29CaEEvMWNZY2owTGIvdlJTRXA3VWxGY3c3eDhzRElyQkZIbytOMGtiMHlD?=
 =?utf-8?B?R2haVUQvNDAybnVMUnJCZUFyRjNaaXBBRzRoczRzaDZHVFFmVndCSm55K3U4?=
 =?utf-8?B?eWpPQldXb0V6QzRza1hyZUkzR0RGYkhNNmFkYnpaakNvUkgyb2hYeXI4Smdy?=
 =?utf-8?B?eXFzU01FUTNTY0dIdGcvM2hlWVgxWU5kd2dCN0dod3d0NXhWMmp1Z2JkL1lF?=
 =?utf-8?B?Y243Y2hWRUptOVU4Q0pWazhicXE1SStmeG5ON3NCdkRmNGwrVlA3N0p1NDls?=
 =?utf-8?B?TjQ1VnFqTjBRRDIxSlhiUHppbzJlUG11L0JUQm13S2NJTVRkUFBwV2dMbG1u?=
 =?utf-8?B?c3oycEgrbldLd1hIQTNiNEFCUU1wdmNjb2tYdHdSVWh4YkNLTTVDN3htZzBW?=
 =?utf-8?B?Q0RoNHgwMGF4bjRNWDcrNEFpS3JqT0NaSnV2YjhEa0xSWGprQkM5b2ZSNXR3?=
 =?utf-8?B?NWtRZ0RCUmM1aElXZXIvWW9pRFljRFU1aXNTUlFTVUlQbGYyOTlUaHVEME92?=
 =?utf-8?B?TS9LZkU0OU1iSUVQSnBwc3ZxRFQ5MDVKQjA4bGxrRm90RVlEYlYxMGFNVUlR?=
 =?utf-8?B?VHJ1NlY4NGNSV1FVNHhxMmFsV1BjL0ZDbHZEU3ZRZGwrSkZjalo5bnpaUkFy?=
 =?utf-8?B?Qm1RTU03UVo3SHRKa2Y5czdqb2NTOTBVUUcvUHowa21RQXV2bFhvdCtQUm5C?=
 =?utf-8?B?TVF2K2xpRGl6UFhCbFFmVjR6dStqSFdaVzNqK3lwY0ZLbFpIZ3pvTWwySW15?=
 =?utf-8?B?eXQrYkJBS3I3bUVnUjVkY1RyV3crb3Q5Z3ZqQmxjdmw1SDJGODM1K3BGUENI?=
 =?utf-8?B?cnhpb3ZKblM4OGg5bTF0VnloRGVlMnZFUGJ2aHZmVVZzNmV3OWc4NDVhbHNJ?=
 =?utf-8?B?NzBCZEVFSGZvVVZ4VFlacE1lazROTi8xRDhxeG4xcXg2RnpqaHJBUmd6dUFJ?=
 =?utf-8?B?QXRyK3RoZGJyLzVJOTFEQ2xSMWozZDRhMWQ3ejc2aXlhWDI5WEJuMjBYSlgy?=
 =?utf-8?B?LzRsOUNBWGwvN1l5U0xLZVpEUjJ0ZFhHNzdLU2JSRHhjc2g5NVlhenlnRUJj?=
 =?utf-8?B?Zmp6Y1UvM0FMSGtMazZFTzJBZEVrQ1RiOFVhc1k2Si8zaWZvS2NtbjRGSzE0?=
 =?utf-8?B?YUNkNmpaNmFobEh5amNVcjI2L2xkajRYMWE2TnNlU1E0NEN2NEtNVm11TzJK?=
 =?utf-8?B?eFYwWkJvNExqc1NIMGV5MWVjdnJTMnhIRmVsdFU5cVFzcWNCaTRobUFiSHRw?=
 =?utf-8?B?Mks2TXpIRVlJL2ZXRlJuL0t0NHN4aythYWpuM0Q1UDlSNmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmhJN0dmeWtJMnhOSUtNYVUvKzdLVmJsKzZ0RnJyMzc3VU91Q3h0QTg0TnJi?=
 =?utf-8?B?NDEySExOcWxVUGFMVUtFWmdNMkE3RW9TajdFb0Rra3dwSHZQS0s1WjdYSCs0?=
 =?utf-8?B?YnNWR0tIUEs1Z2lQcHZzWTBPcmh3MFJvS2E0M2JaOGF2VjcwM1dteGxwa2JB?=
 =?utf-8?B?VEsyYWUzVHlCaW43d3dUaWZIZUpNWVZXUHJac0IyOVY5aWV4RWRNci9CQW5P?=
 =?utf-8?B?RVcwWFBKZFBTWCtuczdWSnRpWVdVUnpwSWYzVGFFNUo5Q0svOWR6eTVTTGhW?=
 =?utf-8?B?QjJTODlKTzFIaWRkeVFVUXdiSU9SSlY3a09UTkczcW5Ha1IvV2lidVhaT0RE?=
 =?utf-8?B?TFowQkdFaDcyRzZxZnYyK0Z4bVNrSHpZOWovTFo5MXN1QWdkekpQeHl3cmIr?=
 =?utf-8?B?WEo4eldZbkVBNUkzZDkvVkFOWk5GeDBLenVGNi91QXk2S21HMGpZSFliN04w?=
 =?utf-8?B?SlpWRWp2ejJ6d0ZheVNheldTK2xpZitLVXduQmkvdmtvV1ZEYlRqbjdJY05Q?=
 =?utf-8?B?eGFOWlFiTnk0V0NacmVISXp4VnNKTU9BZGVxYWpWMk5GUGRCMDFkN0w2UDdI?=
 =?utf-8?B?a05TZHBYb08xc3JLS1RKdDU2MlNoVmx1Y2NtRGNXdWxaRmFPSGlCMzMvUkJz?=
 =?utf-8?B?S1RRdnVHak5waER2Y2xjaUR1cXpsc0l4S254KzFiTTFLRno0TFJpRHVqelc1?=
 =?utf-8?B?SDlTcGFRazBjeEd1ZVRKcW05dGY4cURWOTdjTEZWSFVKNmJZRlFDdVpwaUZw?=
 =?utf-8?B?bHJaRjZiRk9NYTl0bkRkWlJCTnZBNDJYd3RvRXZ3bE1nbE8xNmJ3aWdYNnI1?=
 =?utf-8?B?ZFpRUkZTbERpRzlBamtjbHJLZFRBWjJNeHZYaXEvVlA3ZkxocG1ZMjdlYkho?=
 =?utf-8?B?d2l6WWhDYTltRW5LL3p4Z0RwVVpRREttMUlDYXczZlErZmJwL0F6K2tDR2Zn?=
 =?utf-8?B?TklLV0NFTUxScnUrN0F2QjJrQUp2SHE4NXJHZlVKditVRUc3ajUvdUUyd2Zo?=
 =?utf-8?B?elFvbFM3VElMT3VYcitYeXplNU1lNWN3NGV0Uy9scHhMcUV0M1hlYzljeENS?=
 =?utf-8?B?bEsrSVZ0TVhiSC9TVEtDN3NQRGFsZkZxOVhBVzErMzFUbzhPOXk2ZEJjRWFz?=
 =?utf-8?B?R1preURPcnhXWmRVcllTTC9HOXY4ejd5SnBCbTZ0QVByUFhWeEttQ1R2SjZz?=
 =?utf-8?B?NVZsL1I1UjhWdU93cUp4aWRMRVk2K2hrcDhVczVjZTF5ajlYSHNEMXphUFI5?=
 =?utf-8?B?c2o2cnBGV1VhZk9Kd2I1VXZ0dVUzb0FGU0U1NDcwYnNEZkNSWVJpZXFoWC9y?=
 =?utf-8?B?eFA4V3ZFd1V2Nnh6dEVtV2xUZ2NkcjhwVjczNkZoSzJBbGp4RytxMlB5YmhS?=
 =?utf-8?B?T0hhaGYwYkZSeU5KNTQrLzIvNEhud0xNbnRDZUw4enlnV1hnMW16eFExc3la?=
 =?utf-8?B?aUNxSVhsam8yQm5ZMVZJaWsvUS92ZVBjWFZKRW9PaXNBZzl3WlduN2ZGNjA0?=
 =?utf-8?B?a1BMOXRZU28xcmdFT0J6cnpVNUVpNVh5aWNsZnBqSTlxUkd1ZFV2S2ZkQ2tv?=
 =?utf-8?B?S0FYTXZCM2FWeWNwZ29xOXRLSndLM1l4VURKWDdBV3A0T0F4UWJNUUZ3WlY1?=
 =?utf-8?B?Tll6TFR2TWtMWnFTcUtwbGdVTjB4eTdmZE43bjh5RjY5cGp2ZStBVUlPZkZO?=
 =?utf-8?B?dUhSakdERDdjV3l4TWZSMGRnUkpMRWVqbytLeXV2MlN4alNJMnprcE93RlBm?=
 =?utf-8?B?M2RxRXNZM3V3QWhrOE10SWhWNDhGVFFoSmkwY3ljNkJvelpHMTIrazdvbURR?=
 =?utf-8?B?UW01MXVvYS9HdTJjdkp6MVF6b2U4SXdJbml2ZEh5RDNub0hWUHo5Ukk3NUJ4?=
 =?utf-8?B?MFgxeWNRUDBWMmM2TW12ejNxTTdBOTExT1RYUUM5QldmZVFlM0FWWWhtU1N5?=
 =?utf-8?B?QTAzVDBPUndnc3RvZkxwbGt4eWc5aHhwMFZ3VGxWbFViTHRrZll4NExiWGdm?=
 =?utf-8?B?S1ZWSFRFbFV2QlMzWTBpMzZIY0cwL3hqWVQvMzNpdXNWc3Z0NDlTU2h6R0Q2?=
 =?utf-8?B?UlFSZzl4Q2ptMGFueStDTDVWYlBmakdiQWVxNXAyam1jR2Y4N29UUGtRVGNF?=
 =?utf-8?Q?zRztVylNkwBJSOj+g69r9ZYw3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72989cfa-d400-46ae-fcad-08dcc697739e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 12:54:56.1736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o2dK7UhBnxYclfLTk2aJ4PpQeNdN3AWAo26uKZE4uSxmG9MZ5USZcTZvXuPXkYR1yNR25EkOy/8RZFxYRH/fpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7050
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBcnVuIFIgTXVydGh5
DQo+IFNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyNywgMjAyNCAxMToxMiBBTQ0KPiBUbzogaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSHYyXSBkcm0vaTkxNS9kaXNwbGF5OiBCTUcgc3VwcG9ydHMgVUhCUjEzLjUNCj4g
DQo+IFVIQlIyMCBpcyBub3Qgc3VwcG9ydGVkIGJ5IGJhdHRsZW1hZ2UgYW5kIHRoZSBtYXhpbXVt
IGxpbmsgcmF0ZSBzdXBwb3J0ZWQgaXMNCj4gVUhCUjEzLjUNCj4gDQo+IHYyOiBSZXBsYWNlIElT
X0RHRlggd2l0aCBJU19CQVRUTEVNQUdFIChKYW5pKQ0KPiANCj4gSFNEOiAxNjAyMzI2MzY3Nw0K
DQpMb29rcyBvayB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11
cnRoeUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIHwgMTMgKysrKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDc4OWMyZjc4ODI2ZC4uOTlhMzY1YTk0NWFlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC01MjgsNiAr
NTI4LDEwIEBAIHN0YXRpYyB2b2lkDQo+ICBpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+ICAJLyogVGhlIHZhbHVlcyBtdXN0IGJlIGluIGlu
Y3JlYXNpbmcgb3JkZXIgKi8NCj4gKwlzdGF0aWMgY29uc3QgaW50IGJtZ19yYXRlc1tdID0gew0K
PiArCQkxNjIwMDAsIDIxNjAwMCwgMjQzMDAwLCAyNzAwMDAsIDMyNDAwMCwgNDMyMDAwLCA1NDAw
MDAsIDY3NTAwMCwNCj4gKwkJODEwMDAwLAkxMDAwMDAwLCAxMzUwMDAwLA0KPiArCX07DQo+ICAJ
c3RhdGljIGNvbnN0IGludCBtdGxfcmF0ZXNbXSA9IHsNCj4gIAkJMTYyMDAwLCAyMTYwMDAsIDI0
MzAwMCwgMjcwMDAwLCAzMjQwMDAsIDQzMjAwMCwgNTQwMDAwLCA2NzUwMDAsDQo+ICAJCTgxMDAw
MCwJMTAwMDAwMCwgMjAwMDAwMCwNCj4gQEAgLTU1OCw4ICs1NjIsMTMgQEAgaW50ZWxfZHBfc2V0
X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQkgICAgaW50ZWxf
ZHAtPnNvdXJjZV9yYXRlcyB8fCBpbnRlbF9kcC0+bnVtX3NvdXJjZV9yYXRlcyk7DQo+IA0KPiAg
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpIHsNCj4gLQkJc291cmNlX3JhdGVzID0g
bXRsX3JhdGVzOw0KPiAtCQlzaXplID0gQVJSQVlfU0laRShtdGxfcmF0ZXMpOw0KPiArCQlpZiAo
SVNfQkFUVExFTUFHRShkZXZfcHJpdikpIHsNCj4gKwkJCXNvdXJjZV9yYXRlcyA9IGJtZ19yYXRl
czsNCj4gKwkJCXNpemUgPSBBUlJBWV9TSVpFKGJtZ19yYXRlcyk7DQo+ICsJCX0gZWxzZSB7DQo+
ICsJCQlzb3VyY2VfcmF0ZXMgPSBtdGxfcmF0ZXM7DQo+ICsJCQlzaXplID0gQVJSQVlfU0laRSht
dGxfcmF0ZXMpOw0KPiArCQl9DQo+ICAJCW1heF9yYXRlID0gbXRsX21heF9zb3VyY2VfcmF0ZShp
bnRlbF9kcCk7DQo+ICAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTEpIHsN
Cj4gIAkJc291cmNlX3JhdGVzID0gaWNsX3JhdGVzOw0KPiAtLQ0KPiAyLjI1LjENCg0K
