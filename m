Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C9CA225F3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 22:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A8410E8B3;
	Wed, 29 Jan 2025 21:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZcGOriw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C55410E1CA;
 Wed, 29 Jan 2025 21:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738187392; x=1769723392;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MwGCeQbo56er4BMqEAZWqCqzxmXEVkoa01efqcB22bk=;
 b=OZcGOriwU4MaW3/SjX9UvFAKmj7qsySSRdl+ORcILa9cOF9hY6SLcgcA
 69JVmaYAl42G/4W1LK/xR21WNjhpdp3F7vhwsc2k3echM7CrNbpWKr+KY
 4CHRMgyT25NSN+QLrqQ8vstD/kQYcWVe7+JthSlq2jEW4rH5cZBOdwYNM
 i2aRF/Lrcj8u8uYmYzQRolenWhKjoe3Xho0huFPP6q8ojjd4EaBwyb3cY
 ylV0IKkD9+NiSVE5/dh6K5B14kHP6ulh5WyBKLCkQSQrnG/iFW6UAm+z5
 lzQDhkFIlfPys3mVmXmq1AX/826dRGZCORhy1pyfxRPOsu2RpYWbuC2cz g==;
X-CSE-ConnectionGUID: Hz98y9pAS3qQhGARRpdBjQ==
X-CSE-MsgGUID: qjxW522KQtKY09kxfoIXcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="42647993"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="42647993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 13:49:52 -0800
X-CSE-ConnectionGUID: OtwnJ5PZSJ2Jz2o8b5iEZg==
X-CSE-MsgGUID: GMDihcpcTAWD3d8grfVjmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109598742"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 13:49:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 13:49:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 13:49:51 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 13:49:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J/kBUCYoJquu/IgwnsQEbkOwJkGJ83vdwGmKJVkRXCooww2WGNGDw9BEpJWrdF28M7p88VZiwp9Sr53h67CdDeycmBZuGpIh/20T2UYCrCAXihN3yeJsAtACsaDew1resgUtpOx5BxpuE8xBScaUazIVKdFY9thZukkNPERj+x19SaUfFXluvqLcZ1/xfOwMxGWstGnqoOc8Tukbf42bUEV6V2oz2q385vJNkCb0FNRw8YPVJ6zXt2rRgLrkE1qDFCKrch3Tf7ibODymCbROH+nVmC/G5DlPFFz0jsZvCV2Bz04WsvaPMjuKgV3/RS1to1zB9hHrUbY0jFflNndYGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2GMNANz86/4gnuKbnXsXzvHqwXiy7Pn/P4rQSl7dUiU=;
 b=xXoItysvV8+hHfdEysvN0ZyR3MPXfpZosO5TpIxmxcneiTWLjWXr8WuL0e0LuNjdlqLxt7CkeNx73BTU1gx70/7DMmWMGL0Bsl0PQAOwUcyZoXoZ712FQYCarmfiDcXNwxKixSZBpjCM/DNsNcj2pXI+3qLGkXqEjo/PghiAekFHOSw49LvnN8/PpQsfPLNQ3wjGE5xSU7vEZSao+s6evAFysZNcR+ott98JYRPFOURrapDm9TWqn/ol2oIJdOCImU/3jPPutF/kv4IHfKU9TjijThrdeKNEs4sB4paMwOH7UaDZFppVgVJmRRrykHIb79d63YKAyW6KM531ZeVzbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Wed, 29 Jan
 2025 21:49:18 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8398.017; Wed, 29 Jan 2025
 21:49:18 +0000
Message-ID: <333e77d2-09f4-4b9d-b82f-5f5e820cb335@intel.com>
Date: Wed, 29 Jan 2025 13:49:17 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v6 1/2] lib/igt_perf: Add utils to extract PMU event
 info
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
 <20250127223301.2819108-2-vinay.belgaumkar@intel.com>
 <ci2sl6gcfnwqd7o7pi4js5sduwx22szch4lx4sghugixipexhb@4ajmfxfbngr5>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ci2sl6gcfnwqd7o7pi4js5sduwx22szch4lx4sghugixipexhb@4ajmfxfbngr5>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::40) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|BY1PR11MB8005:EE_
X-MS-Office365-Filtering-Correlation-Id: 37587656-9db7-4488-20ed-08dd40aec839
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFlaZ0ZmL1RpbC9wUmwyaUZmQ2tBYkJzQUR0eFJST3NvOTM4dmFBSS9pQzha?=
 =?utf-8?B?M0pncXh3TmZ5dWN1bjhZOXRFVFlvcWpYK1FMdUUrcm5mVmxHSE0vTERCbUxX?=
 =?utf-8?B?NlpFZXNoVWFtbmZOOTdqM203VXRQdXNCcDRIMTRuVHpyNWpXc1RyenNOWTFO?=
 =?utf-8?B?VVZudGdGcjNWSFNaNU9HSWVLL1hQQ2NlVk5wMmdzamNqb2RMb1NNSWZvVzB6?=
 =?utf-8?B?dnQ0ckkyS1NWQXhKUlY0N3dkOEp5SHc3MmcweW81S3J2bWhibFozWkdvZHo4?=
 =?utf-8?B?VnVucXRPcFNMb2NzSjFSZjJ3R0NmdHlBQWRlajlLR0hRaFV1NmY0bFRBWmR3?=
 =?utf-8?B?V1NBemlUZmhVTnRVZjhvQ0E5QlcrSmRQWnFrdzNZbGtuc3BqaWh6QkxIanUy?=
 =?utf-8?B?aUMreGpBSE5xS2dCOENXdExxKzlaSm56QmpQUWNkY1UzNk9xdWRYZTFlQ3dn?=
 =?utf-8?B?UjlqcjZKMGZ4M3JvblczOHFmSGgwNzJrL205bEMwMnJlbmN3Q2JlRGNNUEFY?=
 =?utf-8?B?cUhPSzlXOUlDN0FiNE9Gdy9LejdCNWRHaVdlRWJxTjlWSlBCeURQdEczWjU5?=
 =?utf-8?B?L3V4YUVjNXQxRndnSCtPTEd1cUN3cy90ZDd2NnRmdGE1SklpbGxQOElPK0Ja?=
 =?utf-8?B?RU55RGJ4N213U1RiYnF0bWZlMHdNN0JaejRMUVVZcjc5YlFISFBXLzUrODJn?=
 =?utf-8?B?bTE3bXJoZmljUU5kTWI1b3RRZXFPRWVCVEVLclVIN2hSWTFJUGp2WVQyQWVU?=
 =?utf-8?B?OFRTVnRPazRNK3VRL3AvOXVZbzV6KzhRV0RRS3dwd0owOFlXVjViUUxhejRK?=
 =?utf-8?B?RytXSVIwZ0g3aWx2emg4MkRWL2JoUXhjWDkwSUV5Qy9oZHBkZ29ibHVRQXlG?=
 =?utf-8?B?aU5Za1N2cVNXelRpNng3M1I4bW1qT2NaTWdNTXFTTWpmcEJaRkVyaTU4R3ZP?=
 =?utf-8?B?bEdHckt0S2dBTUx1NlFKYTNScGphR251ZVBhOTFVb3ByVG4rL29meE13VHNw?=
 =?utf-8?B?Q3Z1K0JMMkFhVUlBODB1WFNSUHhqNy9yOHpOdnBQNWFUR3MwQi9hSWQ4eXVi?=
 =?utf-8?B?M2tSZko3SDJkTG85cjY4Zno2dHYzVUEyb2c5MTRaVERRb2NjTytoOWRBb3hT?=
 =?utf-8?B?ZUwva3ppbDVna2E3SzNPSTV5SktqU3lvL0dvSFYwWkVhYTRrc1RaTm82S3hR?=
 =?utf-8?B?T0RVeU1KVlRSMTdtR0FQcm1LUDRzaTl4MEtKbUhUb3hJT0tvajlEQWdoTkIy?=
 =?utf-8?B?NklvWUhlcXZ1Z0tjZGYxbU85RE1jVGU2dFFMOU1BRjFPTHRabGc3NzBzaWIw?=
 =?utf-8?B?NlpkSncwMHlOMWtLUlJNMW1QZlU2ZHJrNWZCRHFIR1hyenY3alNONDdBMkVM?=
 =?utf-8?B?RGo5YmFXOGVhNHJENVMrNnRXcnBCM2tKN3ZUN1FweDl6THV6SHVjQTBubU00?=
 =?utf-8?B?NU9TeEtzNGtFdWo5WFpmNW4yLzVzb0JwSjlnU3UvNldpVWtFdDlJcVRaZ1Zw?=
 =?utf-8?B?a3IzT2lFM3JNcTNiWmtJR05aeVNYc0R5a21teEs0c2pKdFowZHFudzNCb0dh?=
 =?utf-8?B?NVdCK1VEV3E1MHhzMy9rcW1KTmFIY3hSc1k4K2J5ZW1EaXhoRzdCMGJTOHFD?=
 =?utf-8?B?c0tOKzZaK3doRGcrY0p0WVFtNE12S0w3VnBFZFdpU3lOTFJIWGZIZjFTTlo1?=
 =?utf-8?B?clY5L2NNM1dMaTRPVjQvNW9hakVnU2t5QkJzWDlydFErMGxXa01mUm85aWYr?=
 =?utf-8?B?elJPbTRDWXpOdERxNWVjS0NxTkhEVzJGdnVyYVpxVWhxUkdCNWhqOTA5VE9K?=
 =?utf-8?B?ckpaVXhQTVdsekdNNCtCeFZqTWJBV2tNSWVOMmpqSllBR2txOUM3M2VSNzg0?=
 =?utf-8?Q?8NL+YeJj3JZYt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2xzTnhhdWtTdlBMYkEvYnNicGNOcHdnUlJhZjBKdk1nUnVSVFFqTjZhSEp0?=
 =?utf-8?B?bHZDSTVqT2RKV2ZyQ1BmSkt1RjA1Rk40M1NXTjYrQXdxSUNwbjFMejVTR0g2?=
 =?utf-8?B?L05EUFV1Rm1pMk8wSklKQW9rblMreWYraFN4VGplZG5LSTVRd0tjQ2FtYjNQ?=
 =?utf-8?B?aDlsa3YvQmNoWkhXSXMwLzVyeTJleTFjM2lqZmJsQ1BBRWRUeW1YT3JRY0hX?=
 =?utf-8?B?WUhLdkh3S1dIL1dnRDRPNExuZC9RUm1aYnlJNVNhWUpmQ0lDMkJ0dXRuTmE3?=
 =?utf-8?B?MkMyWXVLUWpBSVFBUDJZMmFvNDlpdFRvZVFNcmI2OEdNSGxWRERoclFPbTM3?=
 =?utf-8?B?NUh0Mi9RRnpGRnlLS0RCRG80aUdRaFRlZUVlMHhqbXA5VEhzTUQxS05yMEVY?=
 =?utf-8?B?NUJQZldtQTVJdU9Sdlo4RzdFL2daOHhMK0VoRTQ5VmtOcllEVzk2RWFGYTEr?=
 =?utf-8?B?cjZ0TzJKcTE4cVpaU2F1bUUwVXFBeTAxREUwTWFUWWZ0bkpaYURLdzg1RTEz?=
 =?utf-8?B?M3F3MlREN0pEM2xTTDArQlNDTzNCYmwwdkxwMWxFSDA5eTgwRC9uTHUrZjFx?=
 =?utf-8?B?Vzk5V3UrZ1lOdG5RMXp3VTFYeG8vcHU0aDZGQ3I5aG9PdkU2SVVHeUpGdUxS?=
 =?utf-8?B?RW1WWEgwVkNZb0kzMHZuYlgxRHJqQXl1cXU5YWhTOFJGZ2k4aHNXOW4yOUdF?=
 =?utf-8?B?Znd2OFR5MXVhcjJ5OCtUbWRoRmJRR3RnMmNDL2pyN3hRZytVa08rUVdrdU1R?=
 =?utf-8?B?dkZXeFlIb1N6blFtR3lYbzRVV0RkeGhUMjV5djd1UjQwRzlVbnRHV0g3TUF1?=
 =?utf-8?B?TjBsWktVK2phbk9vOGE1R01La3ZZVU51dzdESngwaGcwRW1QSjhKNmFqMU9m?=
 =?utf-8?B?WjJ5S2VldEFmbGZ0cHpDS2pzZ0lxYlZDTkpkdU5UWUI5aW93NlY4ZWhCK3hx?=
 =?utf-8?B?dE5hTURFTm9PbFZ4MVdISWdQMnhpMEFaQWJYcUlBWlY4NFNrLy90MXpldkVY?=
 =?utf-8?B?TnVxVERRalNEQ0J6dEtZQWRnTDFnenNjSGxVVis5SjJMK1JpL2xaRDcwa1Vz?=
 =?utf-8?B?QmY1YkdOUzZLdTI2L296YzZqZjVwVUh1bjBqTyswc0dhVWRQUnlPUjFRRjB6?=
 =?utf-8?B?U0Yyc0VGWEpRV2Y4bjVBSkdheElTUjR1UXpHMWc1OHZlT0ZoZlk0MmVGNXRL?=
 =?utf-8?B?ZnpqOHRGM3Q1SlBicGpkWkpIaHhCSnZXc0hlWThBVTFtRFY3cmlaQjNRaTgz?=
 =?utf-8?B?Z1p0UGQxWmlORDVSa0MvRnJDM3EzVEZSUmxlc0d6RjhlTS9QdzcyVHN6ZEhS?=
 =?utf-8?B?bzk1amRRSnh2QkVzTTdYL2YrZkxwUVRRckQxS1FVMFdMSVM1TzBvTmRub3px?=
 =?utf-8?B?SGlOQ2xDVmppd0tJQmM1TmQ4bmtsUUMyYlg4OXVLNitkZldFUW1JNkU0a3dK?=
 =?utf-8?B?akIyU0pUVE41R0VSbFJMV3Bydm9WRHBNOXlpSWZVSjh4RmdZa2VWK2loNXJy?=
 =?utf-8?B?cUJwSUprc1E5a01HVW9DM1VxR0dBQUtzRzBiSmNEQmZnUThIMGNDM1RCTlBt?=
 =?utf-8?B?a3d1eVBtM3J6dWs2UkFsUTcrQlVia3drS0xvWnJmeFV0eHB6c1pRSVV0eEZ6?=
 =?utf-8?B?bXJYNGJ3RkZBZnJ0TFZveVFyUG55S0p3WWpYZFJQeFl2Z0h2b2JLTmpjU3VH?=
 =?utf-8?B?SHE0enZBb1dpRGZuYWI1ODdBd0tUQW5KY0RzMUcyMlpQYzJOYldlbS9PclM3?=
 =?utf-8?B?T2hLN0x2SDJ6Y2RLeFVLUkRJQU9reFNJUUk5anJkTTRsUldmRkpOcXh3M2pa?=
 =?utf-8?B?ZC9PZ1g2eldRMmppa083N1Y5emw5UlhldG90TlRoT0hZWFpMZ0V5RzRFM2o5?=
 =?utf-8?B?K2lZQXppS3Z0MmI3NXB4T0pENUtyWjNlMlJBd0lzdU5RK0FZMkg5emlpZkRV?=
 =?utf-8?B?T2Z1Z1NOcjdvZExvUExBOFpsY1NQZDlQYzF0Nit6NHdvZzJyTllCSmp6S05s?=
 =?utf-8?B?aDd0UERIN3Y1MHp0OEprOUlFWUFhMUFaYnlobUZaMDZkMkZybUQzMGk5eEJl?=
 =?utf-8?B?Y0J4UG1zdUtxZFNaUHRodTNIb0d2d3E3N082WS9yajJMM3N3SmFpM2xoWk9T?=
 =?utf-8?B?SDE2aExRM2szRmh6dXNHQkc1QXUrdk13ZDhYOTl1V2xtRkJ5bFNNY25xSnRi?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37587656-9db7-4488-20ed-08dd40aec839
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2025 21:49:18.6101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HPSxrGhFKQm6XoBnRYux2BJQXa/xt4iBJ2di2eMuQ4pxl8Aaj2NR+55+5FgMeD1TcRlyWBC4g0ACDwtpjzR4+PoF3exTxcEUcMXXuYmdEy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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


On 1/27/2025 3:30 PM, Lucas De Marchi wrote:
> On Mon, Jan 27, 2025 at 02:33:00PM -0800, Vinay Belgaumkar wrote:
>> Functions to parse event ID and GT bit shift for PMU events.
>>
>> v2: Review comments (Riana)
>>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>> lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
>> lib/igt_perf.h |  2 ++
>> 2 files changed, 72 insertions(+)
>>
>> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>> index 3866c6d77..7e81d5516 100644
>> --- a/lib/igt_perf.c
>> +++ b/lib/igt_perf.c
>> @@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int 
>> buflen)
>>     return buf;
>> }
>>
>> +/**
>> + * perf_event_format: Returns the start/end positions of an event 
>> format param
>> + * @device: Device string in driver:pci format
>
> driver:pci seems wrong and is not true neither for i915 or xe.
> This is actually the pmu_device:
sure. Meant to say it is in the format of device_pci.
>
> /sys/bus/event_source/devices/{pmu_device}/events/{event_name}
>
> and
>
> /sys/bus/event_source/devices/{pmu_device}/format/{field}
>
>
>
>> + * @param: Parameter for which you need the format start/end bits
>> + * Returns: Start/end bit positions for a event parameter format
>
>     Returns 0 on success, or a negative error code on failure.
> would be more accurate to the int return of this function
ok.
>
>
>> + */
>> +int perf_event_format(const char *device, const char *param, 
>> uint32_t *start, uint32_t *end)
>> +{
>> +    char buf[NAME_MAX];
>
> it seems this was part of a previous review, but I don't understand how
> NAME_MAX is related to the buffer size here. You use it for the entire
> **path** size and then re-use it for the buffer content.
meant to replace a hardcoded length value.
>
> Well... don´t really care much: as long as we don't overflow and when we
> do we fail accordingly, should be good enough **for IGT**
>
>> +    ssize_t bytes;
>> +    int ret;
>> +    int fd;
>> +
>> +    snprintf(buf, sizeof(buf),
>> +         "/sys/bus/event_source/devices/%s/format/%s",
>> +         device, param);
>> +
>> +    fd = open(buf, O_RDONLY);
>
> O_CLOEXEC
>
> we have igt_sysfs_read() that could be used here (note dirfd is ignored
> when path is absolute).

I will have to make igt_perf lib dependent on igt_sysfs for this to 
work. So, chose the easy route.

Thanks,

Vinay.

>
> not really blocking this as is though.
>
> Lucas De Marchi
>
>> +    if (fd < 0)
>> +        return -EINVAL;
>> +
>> +    bytes = read(fd, buf, sizeof(buf) - 1);
>> +    close(fd);
>> +    if (bytes < 1)
>> +        return -EINVAL;
>> +
>> +    buf[bytes] = '\0';
>> +    ret = sscanf(buf, "config:%u-%u", start, end);
>> +    if (ret != 2)
>> +        return -EINVAL;
>> +
>> +    return ret;
>> +}
>> +
>> +/**
>> + * perf_event_config:
>> + * @device: Device string in driver:pci format
>> + * @event: The event name
>> + * @config: Pointer to the config
>> + * Returns: 0 for success, negative value on error
>> + */
>> +int perf_event_config(const char *device, const char *event, 
>> uint64_t *config)
>> +{
>> +    char buf[NAME_MAX];
>> +    ssize_t bytes;
>> +    int ret;
>> +    int fd;
>> +
>> +    snprintf(buf, sizeof(buf),
>> +         "/sys/bus/event_source/devices/%s/events/%s",
>> +         device,
>> +         event);
>> +
>> +    fd = open(buf, O_RDONLY);
>> +    if (fd < 0)
>> +        return -EINVAL;
>> +
>> +    bytes = read(fd, buf, sizeof(buf) - 1);
>> +    close(fd);
>> +    if (bytes < 1)
>> +        return ret;
>> +
>> +    buf[bytes] = '\0';
>> +    ret = sscanf(buf, "event=0x%lx", config);
>> +    if (ret != 1)
>> +        return -EINVAL;
>> +
>> +    return 0;
>> +}
>> +
>> uint64_t xe_perf_type_id(int xe)
>> {
>>     char buf[80];
>> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
>> index 3d9ba2917..69f7a3d74 100644
>> --- a/lib/igt_perf.h
>> +++ b/lib/igt_perf.h
>> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>> int perf_i915_open_group(int i915, uint64_t config, int group);
>>
>> int perf_xe_open(int xe, uint64_t config);
>> +int perf_event_config(const char *device, const char *event, 
>> uint64_t *config);
>> +int perf_event_format(const char *device, const char *param, 
>> uint32_t *start, uint32_t *end);
>>
>> #endif /* I915_PERF_H */
>> -- 
>> 2.38.1
>>
