Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FFBA835BA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 03:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9600B10E34D;
	Thu, 10 Apr 2025 01:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VNASU4VJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4673D10E349;
 Thu, 10 Apr 2025 01:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744248426; x=1775784426;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9LM4b4w6oesF7SeZAi+NjCG53RMFyxT26eJaokwfRqw=;
 b=VNASU4VJtEnc64xH5fh2E7qApMc1uRDbuv1UAHPZyxnwN61pGu9Pp1GH
 bAzzhakU1emClhBhAol5Y1xI58PcYWnOjHSDIZkRdkkizQ610ejCKPLdl
 oUh/Hqc9du2AzM3Lhaj3EwwxKs84ODS3bTuoJZaHlJ4135xPPub4Y90kK
 f/v++//YABlSz5rIRv36eXMLbsHIZCotwB0QAkDCdXe4nKCJ6XMFyUcMf
 az8qjfsGcX86Pw3alnK7WtxlPz+XE+ZiuqX9kZ8lEz0zhsLsNdpNZIaDf
 gqooS8VMkspwZp6zDJ2fabFhj8Zg8YJtyP6vlLC0hMa0iZjTrhexHBC+Q Q==;
X-CSE-ConnectionGUID: rrAZ2wCoR8aoaVeZJIlS4A==
X-CSE-MsgGUID: v1MWQXeCQ/SiIfKOI2wpCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56387435"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="56387435"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:27:05 -0700
X-CSE-ConnectionGUID: yyeHvcNDTLORNjirJqIP4g==
X-CSE-MsgGUID: Wz8r2fiITpaAqIyg4zi+wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133477536"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:27:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 18:27:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 18:27:05 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 18:27:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mvKITd2+vyOS3A+vUg3UOfjxLz+mSqMtnHDsNeIKSyQeogyxbTamBUuFYyLc0fOJChdASWdksMF+ATlbqpw3KNhqNQPUg9TCGgH0l9RZdSg5Nqi25oi8dQVVcO0FJ9oOdMzphiz3pvT19VTIAJq5Le54U6Ho7Mc9sKX7ulYHvAtljqYwHqcU3stwUS5cUmJz/99Q/zy9LQSF9f/1tnpPEIYnEek4henQ2F1tK9zEYqhu0F1s0mB1G0KR69Aq8ok1NWLeD/cyhw7ASLqXy0UpUyH9CAZVVBLfbbUKaMb3Lh7F7fpI1ymRjLI1+XEdXgtgbSoy8BarUT2Qy2xfzJ5qJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j9KQN9DCpnEFkkiQR5nHVQ1e/0ZG6ysUvH73AjtE6bg=;
 b=GhUHnnUtGCDzubQfTjXqege4GFd5coJwZ/ZoB6jIDeIncDj1eIvXBFTpyvURdD3DL8ALETg85Eg6zAtVshxKuY0XwhPY208i0dxAPg9ZF1rsyj7F9DuQgfpi0dJl2uurWvbilHgV+slkgBBMNmcwfNPGw4atzNzObwvOxZ53Rg4Ximb8smMaDOwOVQ0il6ROyGn1UuTDBM7UwZOSJPcbg+Xwv6FQ/I6szorNjBqpGJLpjncwgaJkdBc7jV4nPu9Hgv3F8dZyFHZ1Urw10vWWWt+WUJGcZ2wFSQ+FtKP4fXTdDj6DIP2jFLjXCcFuum075r22t4uQH/dza2LRCtCoRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Thu, 10 Apr
 2025 01:26:48 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 01:26:48 +0000
Message-ID: <9d4a9607-bdb2-417f-b1d6-efe623b1ee53@intel.com>
Date: Wed, 9 Apr 2025 18:26:37 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, Riana Tauro <riana.tauro@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
 <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
 <20250409110629.pbnp4dudv3dhnb5t@kamilkon-DESK.igk.intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250409110629.pbnp4dudv3dhnb5t@kamilkon-DESK.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0085.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::26) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 7481b13c-d3d0-4304-f911-08dd77cec34c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmYrTGRUd3FFSHE4UWF2V1loQTdXZnhoQVZ4bXUxRjNPTUUwSk96VHkvWW5w?=
 =?utf-8?B?RjdmbllJcS9mZTFNSzFxS0o1T3p5cEJjZmJnZHVTTmlPZUFuNDNxa1p1ZU4w?=
 =?utf-8?B?c25ENzZuZXZGNXV4WUhLYnVCNmJPWWh5dm93U3FNTmVnRjJSKy9zVy9qRXlh?=
 =?utf-8?B?YXkrNUNHQnJKak1LYkxyMWpIZFB6OWF2WXRNbzlaT21Rb2UvYjM4RlRGdXVG?=
 =?utf-8?B?K1pKSFRWYzdqMTBIUWRGUUhDdmJ3VjFZQUx3MnBTYzhCOGFXQUwvcnRsOHpi?=
 =?utf-8?B?OVpPMWRBMEZpRitWZ2lPWlNORVZwa1ppMlpQcW5oc3l3YmZQYnhqeEMvTlVj?=
 =?utf-8?B?ZUJ5VTUweHV5RFZkbFZBZzE4cCtqbTFWNE5VejFYd04wT2piNlA2T2d6Nlpo?=
 =?utf-8?B?YytINVlWSXRjQ0ViNWFIa1ZML2ovRmZvVUp5T2p4cW4ySlM5N1QvbG1RSTZz?=
 =?utf-8?B?OWQ2UWt1YXYxUUdTUzRseXJ0Z0REMDJHbXZhWUtBNm90RXdBYmIvSlIxUmdp?=
 =?utf-8?B?QkhlUzJXNHp4R21PS0VEZjk0cXlqKys2ODMrek1RendmWTc1bmgxdjFQTHlJ?=
 =?utf-8?B?eVVxYTJCTnlOZzN3dGVwanFPNWY3dDJXdml6NjlxeGV1ZkdIUkhoTE5lZDhQ?=
 =?utf-8?B?emFRVTFWbkNnTTJtTldwSkFQejJmU2ZGTFJkT3pZOHdsZUtuamo0dWJFQmVx?=
 =?utf-8?B?VzFRb01RL2NRR05CUWJQeFhmMjRRbnRVZlN1NXlRdS9UcUN3T2dzUU8wWWN2?=
 =?utf-8?B?dDRlbDNGR21nclJPSkRyNEY2enNVSmlpNkdQR0VWVWoxa3ZFcUdnbG80dkgw?=
 =?utf-8?B?NHpSWEU1MjNSQ21qTVBTRTZKUjlNWm8rck9pTHMyMC9nUEdPSSt3dk5MS3dp?=
 =?utf-8?B?U0g4ejdKUzhLUHdpQkY4Q0Z0cnROWGY3Szd5ajZneGJrUFNvc1JWMk1seG82?=
 =?utf-8?B?ZnkySmRsV1NKMHRsZUZyc2RxVVpWRmh4VlNPeHkzL1dHNE81clZHRE9CT1dU?=
 =?utf-8?B?Sjk0anl1ZGdWQ1lTbDhiVlFFaCs3SVBsRmVhY3ZxUTFvdlk0SHZWdXRrcDlR?=
 =?utf-8?B?cm9XWmFVYnVTZERyb09TZmtFNFlSdjJFN25wUFlMTCtDUE1ycWpJVnFla0ZJ?=
 =?utf-8?B?Ly8zaW0yVldON0w5OHd3d095aldWWkNkSXhlSUx6bXFlMVkwdms5UzJQclNP?=
 =?utf-8?B?emdpTC96MTVyekJyWXlWNzhJYVQ2ZXpsZGdvODFIMW0xKy9NcUdvQUVPQ1Ni?=
 =?utf-8?B?UnlUUllySXJtZFptdXZqRHBUV2p3U3NXN01vMXlIMzlNRENodWx6cUo4VzRC?=
 =?utf-8?B?VUdQVFl4V2ZMOG9kZFRqb3hPb2tmQUlYNG80RnQvMlFxcVpKQzloZHNUSU9N?=
 =?utf-8?B?RVdIbW0xL1hBVXlvYjI3Zlhub0JrZ3FxZ29Jc29sMnJYTGZSWE91TTNQOVZy?=
 =?utf-8?B?RTNKbXFuMHkrNnFXZmRYVXAra3k1K0F3bGtmd2EyMzkwZ2crMVBXdVE2UHZZ?=
 =?utf-8?B?TUM4UHc1aEYzVFBFK0doUko1bkQ1OUVwUDJoa202WDRNS0ZlYlFuQmx0eHJ2?=
 =?utf-8?B?VVhlckszTTJ4TzVMOWxCdmRPZDRoY2lXZU1nK25SdlhBVVhxVEdmTzFXUmlK?=
 =?utf-8?B?YldkbU1VQXRZZ0FxRnpxdVFjSUJFaWs2QkRGTDZWZHhiUkpMRm9TWFBUZjNS?=
 =?utf-8?B?UXdMTFYwN0tVeFRvcWd2NzREYUVnTUR1aExEWW1EV2Z4ckpWbmFEY2xXdDU2?=
 =?utf-8?B?UHVaaURxRFArYXU3eXZ1S0pPYU43TGdxN3ZzR29rejc2eHA0b1Bkayt6QXpJ?=
 =?utf-8?B?VzYvV0svRitoL29EM3RGVmVHZHltZll2azBqZlNDNGY2VUhZdUhNNldpMFh5?=
 =?utf-8?Q?xKy4BQxBG0uF8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bm5kZFR5bm1IeUZrcUJVRE13SGhrT0xGcVJ6VlpYci9nTjJxU01ybUhWRmZE?=
 =?utf-8?B?TXFTekREZEoyaG5VVjZCMFZRWHBMaXpMVXBTVDFOc0FSYWtqS3RpamkyQVc3?=
 =?utf-8?B?T0E4S3dIRUhHQzBOdnk3dStQdTdEdGhJeHlLTVJTalNEWmowd0RNMnpWeGdF?=
 =?utf-8?B?ZFBWY2Zld3VKdFBNUkp0RXBwejZKNVdoa3I2QWc4WWtWV2Voc0VxcnQwRTh5?=
 =?utf-8?B?R2RjNDZXc211Zlh0L0xoYWROdWl4cnlsbVN6REQ2c1NSZXcwQmluMXNTSVpH?=
 =?utf-8?B?MHlLTThzZUZvRXhpZ3ZneGV6Wncwd1krWTZ5NVhEeGdaMHdKYU1zZ0JPY3JF?=
 =?utf-8?B?cDRuODAzLzBHajVGbjltUWl4ZkFNbzZiSnlUNHZiblh6dUM3VWtuMHdnaWky?=
 =?utf-8?B?WlhReks3cWl5YkQwZnZFZ1BIZmd0UkF4WHhsSkpnUVBJUCt2elpXNlIzelJB?=
 =?utf-8?B?WnRRYVUrQThSTzdLb1c4TG02TXRPL2MwaEcxVXZYemNWUEVoREhwSkZWblY5?=
 =?utf-8?B?Q1UxSWpBajZTWk9OcVhlRXNmSWZYU1kvbjJjcjhQdlMwRDVVUVp0QmwyQk5n?=
 =?utf-8?B?S3ZmVlRyOVBMeG00U0FMNGR6TGFKNWdWNDZjcDdIelBpM2lIeHYrWjNzYUJh?=
 =?utf-8?B?bkEzYVRHeDkvOEgwUytiR0ZpK3pEazBDMjJUOW9vRWR3WlA1M3krY0FObGVn?=
 =?utf-8?B?QXNreUR5LzBFWEIwL0xzUVlxZVpzTnlsU1k3Z1dQWmtDQXNFWjlCdzNaZkdS?=
 =?utf-8?B?aVhGR1R4NURmRUVBUExoN0ZrNDdCYVAvcXVweVJCNmtlNlB5ejVJUEZiazNx?=
 =?utf-8?B?aDEyQzZudmkvRVRuT0RIYUk0VlA0V0RwOW9FaDQzbDVKdS9rRG82N2Vwc0VY?=
 =?utf-8?B?S01YZm1FQktKU3BVT0VDWnpFYldtU3hROWdMdHYwMnJJemh6N2hkL2YzWmkr?=
 =?utf-8?B?YlM1b2xjbDE4STZiNjdsMzZrNFErWnZwTE5zUERPTXZGWDlSUjRCbkRzcVVa?=
 =?utf-8?B?SlNJZlY5TTNRaFZtNnlLZFNPY2FMYThnRys4bitZNTV1M3h1dU1yUE9rSW9N?=
 =?utf-8?B?ZHh1WE92K25lU2FJL1gzZjhsMFVXWlhsYXNqQjh3bFEzVnlBRi9jYzJFYW8r?=
 =?utf-8?B?akpEYy9YSTNoV0lmV3RjdXdwd3hkdE5aVElneVlqWXM5T2tqbklmYkI4VGpO?=
 =?utf-8?B?SDlKSm52MGM5VFdjN2RFSUpDZVJiQkJMcmNDWndXSFZPMEszcnBzSFArenpS?=
 =?utf-8?B?TXBRdkVmOTlkQXR5R1dzOXlCQnRDWCszRDhydVI3N1JwbmRCTk5FR3ZKYTdF?=
 =?utf-8?B?WG9iRVBJN1llT1o3aUF6bnNzd0NnWjI4WU56V24rMFdlL2kzbmc0V1plOVFW?=
 =?utf-8?B?YklWaTN6Y2NtYStpWXV2VUNCRVZzM1pPVVQzSkxTMWpVelRNaGd3RUo0Uzg0?=
 =?utf-8?B?RnpSeFI3bUxsYTNuMjFJYUN1NFhEdS9yOUU4QnJSV1FlbWZONHlXdEdOdlN4?=
 =?utf-8?B?VENpWVlmRVpQV2x3UTd6UTZrazJKNE01M2JrYlVUalZHVStabzJIL3hlV1FM?=
 =?utf-8?B?aURrbTNRYmttaUNEZnhTNUczTFNmTkprY0YrUnJzZktzVzBQZFlSSG5EQloy?=
 =?utf-8?B?QUgxZStnOTNyVUtYN3dGWE81UmRyY1NFak9yRE1tc0ppZ0R3S1BCdzByMVRF?=
 =?utf-8?B?QTF6SkRtOExpUkdQKzE3cWhnUWZHZFlkd3ZWMjdyVTZTbDQybzI5WXNNVm5a?=
 =?utf-8?B?M0hjRlZwUFZhRWJCbkRORjJyNnE1ZGxzUWNxZ2xvdy8yS0JERW9WSzNzdytC?=
 =?utf-8?B?enloYUZjWjJXSktQSkFKR2o0RnJOc1J5ajd5L0FTY2FOYVlrdWZWRDQ4ZThr?=
 =?utf-8?B?YnU3SHJMd0w3cDFnbkdDa1FqRXMwZFlhNGtxZzB1aDlyeTN5ZHVZQ0gxUW45?=
 =?utf-8?B?aENGRm4wT3BCQ3FOdVN4V2RWNmVUTjU2R2RSdHl5V0s3QU9LNk5QbWlKc0R4?=
 =?utf-8?B?NkNkNkxlME82RGRSRnFkeldXVFdUeEYzL2FjVUlabDRNMjNPM1c0ZzEybWJT?=
 =?utf-8?B?dTE3ZWYveDJDVlBDK3ZHVk9OcE80UDBLVlFEZ1pTUVpheU9Vb0x1U2pjUmIw?=
 =?utf-8?B?clJNc2k0TlJ4anB2bTJVM0RzTnlsS2xxUVRXTHlmNmVHQWhITzNLeDFoelh4?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7481b13c-d3d0-4304-f911-08dd77cec34c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 01:26:48.4752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R79u5kSN567sgEPwu12KJ4N06kqQa2i9LrczzlTtOBR9LF2iL8PIfO2x7Amw+3WA9doGhmMhSQSaxlT1T553Dj3a2XtoZ5lMljcjMEENLrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7186
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


On 4/9/2025 4:06 AM, Kamil Konieczny wrote:
> Hi,
> On 2025-04-09 at 15:28:59 +0530, Riana Tauro wrote:
>> Hi Vinay
>>
>> On 4/8/2025 5:14 AM, Vinay Belgaumkar wrote:
>>> Add a basic test that uses PMU to read GT actual and requested
>>> frequencies while running a workload.
>>>
>>> v2: Rebase and comments (Riana)
>>>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Riana Tauro <riana.tauro@intel.com>
>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>> ---
>>>    tests/intel/xe_pmu.c | 128 ++++++++++++++++++++++++++++++++++++++++++-
>>>    1 file changed, 127 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
>>> index 175bbf374..fbac9c798 100644
>>> --- a/tests/intel/xe_pmu.c
>>> +++ b/tests/intel/xe_pmu.c
>>> @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
>>>    	close(pmu_fd);
>>>    }
>>> +/**
>>> + * SUBTEST: gt-frequency
>>> + * Description: Validate we can collect accurate frequency PMU stats
>>> + *		while running a workload.
>>> + */
>>> +static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
>>> +{
>>> +	struct xe_cork *cork = NULL;
>>> +	uint64_t end[2], start[2];
>>> +	unsigned long config_rq_freq, config_act_freq;
>>> +	double min[2], max[2];
>>> +	uint32_t gt = eci->gt_id;
>>> +	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
>>> +	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
>>> +	uint32_t vm;
>>> +	int pmu_fd[2];
>>> +
>>> +	config_rq_freq = get_event_config(gt, NULL, "gt-requested-frequency");
>>> +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
>>> +
>>> +	config_act_freq = get_event_config(gt, NULL, "gt-actual-frequency");
>>> +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
>>> +
>>> +	vm = xe_vm_create(fd, 0, 0);
>>> +
>>> +	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
>>> +	xe_cork_sync_start(fd, cork);
>>> +
>>> +	/*
>>> +	 * Set GPU to min frequency and read PMU counters.
>>> +	 */
>>> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
>>> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
>>> +
>>> +	pmu_read_multi(pmu_fd[0], 2, start);
>>> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
>>> +	pmu_read_multi(pmu_fd[0], 2, end);
>>> +
>>> +	min[0] = (end[0] - start[0]);
>>> +	min[1] = (end[1] - start[1]);
>>> +
>>> +	/*
>>> +	 * Set GPU to max frequency and read PMU counters.
>>> +	 */
>>> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
>>> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
>>> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
>>> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
>>> +
>>> +	pmu_read_multi(pmu_fd[0], 2, start);
>>> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
>>> +	pmu_read_multi(pmu_fd[0], 2, end);
>>> +
>>> +	max[0] = (end[0] - start[0]);
>>> +	max[1] = (end[1] - start[1]);
>>> +
>>> +	xe_cork_sync_end(fd, cork);
>>> +
>>> +	/*
>>> +	 * Restore min/max.
>>> +	 */
>>> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
>>> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
>>> +
>>> +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
>>> +		 min[0], min[1]);
>>> +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
>>> +		 max[0], max[1]);
>>> +
>>> +	close(pmu_fd[0]);
>>> +	close(pmu_fd[1]);
>>> +
>>> +	if (cork)
>>> +		xe_cork_destroy(fd, cork);
>>> +
>>> +	xe_vm_destroy(fd, vm);
>>> +
>>> +	close(pmu_fd[0]);
>>> +	close(pmu_fd[1]);
>>> +
>>> +	assert_within_epsilon(min[0], orig_min, tolerance);
>>> +	/*
>>> +	 * On thermally throttled devices we cannot be sure maximum frequency
>>> +	 * can be reached so use larger tolerance downwards.
>>> +	 */
>>> +	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
>>> +}
>>> +
>>>    static unsigned int enable_and_provision_vfs(int fd)
>>>    {
>>>    	unsigned int gt, num_vfs;
>>> @@ -429,8 +517,9 @@ static void disable_vfs(int fd)
>>>    igt_main
>>>    {
>>> -	int fd, gt;
>>> +	int fd, gt, num_gts;
>>>    	struct drm_xe_engine_class_instance *eci;
>>> +	uint32_t *stash_min, *stash_max;
>>>    	igt_fixture {
>>>    		fd = drm_open_driver(DRIVER_XE);
>>> @@ -482,6 +571,43 @@ igt_main
>>>    			disable_vfs(fd);
>>>    	}
>>> +	igt_subtest_group {
> Add here:
> 	bool has_freq0_node, needs_restore = false;
>
>>> +		igt_fixture {
>>> +			igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
> Move this require into subtest. If you need it here then remember its
> value for later use:
> 	has_freq0_node = xe_sysfs_gt_has_node(fd, 0, "freq0");
>
>>> +			num_gts = xe_number_gt(fd);
>>> +
> So here start with if:
>
> 	if (has_freq0_node) {
>
>>> +			stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>>> +			stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>>> +
>>> +			xe_for_each_gt(fd, gt) {
>>> +				stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
>>> +				stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
>> This can be moved inside the igt_subtest with local variables since it's
>> only one test. The subtest group is executed for all the other tests too
>>
>> Thanks
>> Riana> +			}
>>> +		}
>>> +
>>> +		igt_describe("Validate PMU GT freq measured is within the tolerance");
>>> +		igt_subtest_with_dynamic("gt-frequency") {
> needs_restore = true;
>
>>> +			xe_for_each_gt(fd, gt) {
>>> +				igt_dynamic_f("gt%u", gt)
>>> +				xe_for_each_engine(fd, eci) {
>>> +					if (gt == eci->gt_id) {
>>> +						test_gt_frequency(fd, eci);
>>> +						break;
>>> +					}
>>> +				}
>>> +			}
>>> +		}
>>> +
>>> +		igt_fixture {
> 			if (needs_restore) {

ok. Thanks,

Vinay.

> 				
>>> +			xe_for_each_gt(fd, gt) {
>>> +				xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
>>> +				xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>>> +			}
>>> +			free(stash_min);
>>> +			free(stash_max);
> 			} /* restore */
>
> Regards,
> Kamil
>
>>> +		}
>>> +	}
>>> +
>>>    	igt_fixture {
>>>    		close(fd);
>>>    	}
