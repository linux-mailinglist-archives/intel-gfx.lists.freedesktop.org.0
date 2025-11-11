Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49784C49E4C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 01:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB19110E35C;
	Tue, 11 Nov 2025 00:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCvrHfX/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5669210E243;
 Tue, 11 Nov 2025 00:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762821891; x=1794357891;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=jdCxuUJVkQ55ovB4gFDeGp1J31PK4fSI3cjCpV92Rng=;
 b=PCvrHfX/NOpdM8HYNhXFs18IyNiHcSiDfB3I2tRYTQnjHzrjTzla09eL
 9yQ8ewYlCE5fPFaI4oNLcvbExSkbBbgq47bErKseUixb6Xmu98krB92p7
 cXW3gA3Cn4deXZ/ZyidMXvo6hhuWkqMb6i+icaG0jLt4M5zoY0GtaHU0M
 1JTHLa4/jLIa0SW6CM1S0c+MRnyvSepqy+I+nns/XxKjzZUjuuP7y0EyS
 aEzeETsc7QJU5vMaG9TzkC0Wcy7cwoD43/bh6reG5tp1vLHTh1bgh+TQ8
 GWnwP7VzWjAh/Eu+75VeJcxpFxc7C0weNvVGBPdZ1U0u7KRucS1nIg3gD g==;
X-CSE-ConnectionGUID: 4Sdw1AruSoyL1vpOkwOgKQ==
X-CSE-MsgGUID: q4wRprPDR+auNnGk9MiV6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52436132"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="52436132"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 16:44:51 -0800
X-CSE-ConnectionGUID: McoevtP3SA+ygoBuWeG4ug==
X-CSE-MsgGUID: UukA2IYxTeWAzA+X5zNaMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="194004770"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 16:44:51 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 16:44:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 16:44:50 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 16:44:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yM5FMsBCsfMnM8BaFMP5szq/9dQYf4sgu2AVxve8NbRU/etBkieqP2uT+AJYTAJcBKkuz+0BBd0d/+44OSkuY3Ohn4B3jDKHiC6W3sZt7IowcIGiSdt5s4jKjw6rj+pSCzQcKi984Nfk6EVffeaTQJERBOVnO7ou0tHzSTq9X5pCuJvDx+hli7m0xoMD6GZ/7T/xmjj3c2RoCTUfxfQPbK/le0azKV57dUH7gMtUDN3khY5LYHTcQtqvNzCGrsEUJEcmWboMjpojmqIXWWV7Sk6iTTdNRoSa8w/8o8jJ2YULCRTqXqOPJAt7fr0kzHUtJPdqy8Jx612KbfVTtS7KhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R8wedqpDMAw2v2MneCiB6fGLPeZ+sg5negcj4Kpq17w=;
 b=LnlvaRZZU8PX44pcpnfUfk1FOHr95VklHE6XYd+SDValRay6mcyiST3IjnIOWbJgAobkXF3THjOBvXI3FKJU5vt3yHuv7ycDFbmkgkplTOH6zHZD0Cn61NnUNWYCMesqyFuG5BJqHZhOtfy92/sgvAU88fWJQgL6SlbOLQ0idiXAUi7Qpc0KJjXzf0GxvDZu1shMooLkOpVwenPwcabnEG8rYWSTmazENnhqcsVXx7R95LRpctfd+XxS54bCUQ4afJOj5blfd8q8ipE1pvm0wZKwovrdroB5h96xH3szbJNEG7nW1ZG0yBgXG92Q7MFlbh234UspnXc36ayiq3/l8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 00:44:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 00:44:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251031221723.GB2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
 <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
 <176186136767.3303.5566189832436852888@intel.com>
 <20251031221723.GB2980942@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@gmail.com>
Date: Mon, 10 Nov 2025 21:44:42 -0300
Message-ID: <176282188252.2999.18437093121239881318@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR08CA0024.namprd08.prod.outlook.com
 (2603:10b6:a03:100::37) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: 40e0eecd-5412-4ac3-a2b1-08de20bb836a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TElhOFR6NUZzMWZ6RXlMTmh0RDc4SHB5YnFkK01kSUNlTm1ycmdQSElnQ0hy?=
 =?utf-8?B?N0oxM3cxYTBUclZKZDZhNkVWZS9YZEYwNHBmWVpqRk5vMzhZaS9YQXdNUGNK?=
 =?utf-8?B?U29DbjNzUXFZd3dGajMwbW5nbnc1c3I4N0xkSEsvSTE5UkhSK3NrOGJOOGVB?=
 =?utf-8?B?N3FXdWUxaVgvYm1ZcnkxWG9ZMDhoa296YS9MTWNGYTA5SXBUQ3NOZmhCQXc3?=
 =?utf-8?B?d0o4S1A5eVplTFY4Z3RBcGdoTHQveUE2MmtYNEt1UkY2bmcxY3J1QTdLMkFw?=
 =?utf-8?B?dHlUd0NoZXhQZDFyUSt5MllRalFDWkxpY0xpanpkblhyWStnZWVMMGVnSks1?=
 =?utf-8?B?WHFxaVJ1VTVzdzQ4NWJqZUtHUzVLbi9VSWNWdmJLZFRXaXlMVVZmRysxQ05u?=
 =?utf-8?B?SGUvYzVkMnRWUjdoYzUwTGM1MUw3RDZIT2xTMmU0cFU2bHV6c1pKbGtCdmo5?=
 =?utf-8?B?R3NQZnY5T2pwSnlUWUNKdUJCRFp5YXNMWHE1alhGTDdZWGFVaHdxcWRvaEY3?=
 =?utf-8?B?UUxSY3M0WlI5L1d6dG1SdHV2S0NZNUl0RTE5SFlCOERUemZZOXBmOUtkV0w2?=
 =?utf-8?B?QnA3S1Rhb0Vha2lDRDZjK3o3V0xsL1ZmWk92a0pBZEZXR2ZOZk5GV2ZBRmwx?=
 =?utf-8?B?Z1ZpRVllK2lMRU9jM3VTaFdLbW5XQitCRS96Q3o4UFZGQXNkM25RdXlRTndw?=
 =?utf-8?B?ak1HUDRvUTZRSnRpVVRXQ1ZPa2hpWVhBaW5qQlp4VWVRVEFFVnJIRkxSc3Fq?=
 =?utf-8?B?L3FkQ1FTSHZUVmxTY0VZTTFuZWU2d0Z4V1B2SzllSzMyWExnaTd4ZjFLNVEx?=
 =?utf-8?B?VGdidmlmVUJJMzBNUEJiT1hCdnJBUXN4eHVhem9uU1ZqQjRaOGFNbzZjZ1c4?=
 =?utf-8?B?Tjl0M0pjYVZZUFNrMVhLUEtiZmNJbENsbHFrWlpHbUN6OXlUSDk4dm9iSWF4?=
 =?utf-8?B?VkR1end2TzdKYUg1U08vdzZYRm5nRUZKZ1E3MllNdGQwa1BONmN6UkVCR2Rj?=
 =?utf-8?B?QmRoVUZhUGxRSG5JQWdRaHRzTE9CM1l0V3Y4RXdHc1d4cHVSMW51bk5iZXB2?=
 =?utf-8?B?WGlXbnk5MlZOZlJPT0lNb0NiVm1qNkthYmwvVzdFczRvUGplSFQ5ZGhlWjJu?=
 =?utf-8?B?SHZ6QmpEVVRQYkwxOTBQQXFJZk5sWUhLSkwzZDRaNkE5VWRDSHRiYUEvWC9T?=
 =?utf-8?B?OFRPQlJkamhJN3RzOVRmL0dJeHRKczFqMEgxSlJGWTcwZVBJMFFvRzY4aFRp?=
 =?utf-8?B?TkdIbnQ3WE5taSs1SHdiYVFNNTk3LzlTNmUrN3ZKYkZjMHBmUy9IOVhueE9F?=
 =?utf-8?B?RWJXZ0hMUmU0bjNMREd3QVlmWWR3aFJWSi8yOWc2bFdaVFBSWUdhdlE0a29k?=
 =?utf-8?B?UW5PQTZtcUNMSGRqOWMrK25wZ0tDOE8wOXhYYkNwbmI2RlFGR1pEbk8vQkZB?=
 =?utf-8?B?TlFDQXg3V2ZML0FDdmwxdzdJOEFBSEQxRDJpdVdEOHRFVmdWSmdKam5OOGF0?=
 =?utf-8?B?N0QxUHgvYVJ4TU5IcEhvMzgyVUxQV3UyY21SNC9manlFY1M1ZzhETktMaGtv?=
 =?utf-8?B?UGxTVEQ4S3lIMnhtRkhvejZxWnA1T0NHU2YxejFIWXhPZG8vellzVVhJc0NF?=
 =?utf-8?B?TTdwWlVyeXc1cE1hZHJkR3hycDlEUElab0dvY21qSWZnTnQrRGw4d3JmUVlE?=
 =?utf-8?B?U3Vla1M3RTFSVWpWenpTY1NjZUNzYUNmUjMrWDdKL0RKb3ZmYzgrUWxMNjRT?=
 =?utf-8?B?dHdoODNBZFZieXc0S0g5OW9zVUg4c01aS3BoemZRdk1QbVBUL3Zwb0FrUjd4?=
 =?utf-8?B?MlRVbUN5enNiYXRXV0FOdDViQU5TMmVqZW0wRytKU2kwbFZyRUk0S1lxQ3Nh?=
 =?utf-8?B?Mnd3b2M2b1NmSGRXczhUTFVxR0pPdjcwcmdzMDhKZVpFbGNEcWs5TC8yUnB3?=
 =?utf-8?B?dzRGekRGQnd3NkV4TVVPNjJrMmlzVURjR1B4YmU1Yk9mTmVIczFrMXVIUER3?=
 =?utf-8?B?ZGxuczFJWkJRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVIwMGJ5OUlsZUtGSnR5OUZJUmhnY08wb3FHVVlxZzFrbHNlY1ZGTmQ4OUZN?=
 =?utf-8?B?ZmVTOVFTMGJUK1RNazZXbmYxT2o4Z1JYYTJtdCs2SElZQlEzWExxS3NFWkJh?=
 =?utf-8?B?NGVIZjVtL2w2VStBMG9hbWJwZmZPM1AxU0RxdStCSUd0R25aM1FFZ2J1ZVRR?=
 =?utf-8?B?RjFCVHZ5OU9Xa2phSXc4YmVtNGNOdzVsakZIZ0hnd3FvR05PbFVua2RMbFlZ?=
 =?utf-8?B?VjFFaTV4UWhSUFpjUmw0cm5rUFhBTEZMRVpOREhEQWZ1Z29vaXFtU29kcHBs?=
 =?utf-8?B?KzM1U2d4YlV0UWtkNDZYOGhHZVdUYm1mYjZwZTRuTFgvWlNQamVCSjdZQzhJ?=
 =?utf-8?B?MUJWK3o3ZUFiTmZmQmdzUElZUUMxckM3UnprdlpFQ0RJVWZORGVEenJ0cjJr?=
 =?utf-8?B?dzRCK25tU0pBNFRDSW5SZ3oxSlUxdnA3NEZwNVBSU1h4VXB2NWM3SElNbVo1?=
 =?utf-8?B?eEtrUGViOXBibmhoTE81dmlYZld4OTFlcUw1K0ZYbDlWM3dnazFOK3RhdnZq?=
 =?utf-8?B?WFQ3bDZ5a09JVnQ5VmhiekJjS09RQWZYT0p5cmpvMHpXWWJ1bS9jWVdLeHUv?=
 =?utf-8?B?aGJBK3hKSXcyWTQxcUJpZUJpbFZ2czdmN3ZMbmFWeVgvbTJjUythYzJqRXFG?=
 =?utf-8?B?cEpIQkhvUVdUb2NST1RZcXlrTDNHbm9hU1FXbEVRMklVSmdjNzByVDVWUzkr?=
 =?utf-8?B?ckZTZklyV3hreUFVSU9oc0ZrUmNnZDZJblZ2dEUvSTdrY3JuWXZCb041MG9R?=
 =?utf-8?B?dVN5TzBOVkZhZnFpWU5VdmpLRUJmQnFNTms4dmo1cWJLYmJxNkV0RkhwaE5D?=
 =?utf-8?B?THd2dXIvL0dZclNmK1RlQUx0aEpTSnJQVnd0SlNBdUxaN1ZVMVVvaC9YYmhz?=
 =?utf-8?B?L2NObmQzRDQzejBYRkZSMFZLajN0VnBUWWxmbm9tSGVXMHBJTFN0RFMveXM2?=
 =?utf-8?B?bldlSTdPWEllU04wQXJvWmVUVmtRY1VhRGp1dHJTSkpsUGQxNm9BNVhjekYw?=
 =?utf-8?B?emRRVkZxektXZjRqdy9oQ1AxeHlzcEZuTGtvQUxLZ09ENUxmVFlJU1lmeUUw?=
 =?utf-8?B?YVhvYVZ4ZmVsT2g4THAxamFSbFpKdnFMMkhnam9JUlhHZWRUNDNSZDZkYk91?=
 =?utf-8?B?U3F2eTBFYVVJSFlra05xemxxU3VjTWJJWlhRbXVJTXNOc21jbkpBSEhrZ2U2?=
 =?utf-8?B?VFllUEd1WTV3QUtSQm5LTW5nTkk5VWhkUDYyUzFjaWUvWVRJNVBDQUpna3Q0?=
 =?utf-8?B?OHl3K3JvcWJ6R0RocnlaYTUydkNxU25iRmRJVFVLZU9rYXVxQmxyTWNPZlZX?=
 =?utf-8?B?RHM4UXNNTUM5VW1tOUV3NWRKU1pMUUloTDhBTE9BMGJnN0Z4YVROSFprMUVj?=
 =?utf-8?B?Smhlc2QrKzlJLzRva044c21UM1JVZXJXWnFrc0lTRlpmQUU4bTk3THBJb0NR?=
 =?utf-8?B?N1FMVVgvRlU5STk2ZkdGZVRSUVpyNWZUNjNQY0VaWExNNGlGWTJ0SGcyZHF3?=
 =?utf-8?B?S0F3OThNemptSGI1RGVQNFNBYy8vSjVHTGltTHkzVWhHTEVsRjhFazE0azM3?=
 =?utf-8?B?dHV4YUhvNGtGNzN6VGVlMmpVRUxTNzFsdXFuTXB4eC9hWUxsSk9aZVBjb3hw?=
 =?utf-8?B?QXB4aHY5dkVBbUt5bHlZK3ZqK0lvcEowdWJOVi9EZ245UkU3cWRtZ1lKRjNi?=
 =?utf-8?B?d3hLb0ppS3BtSXVuTm9JbUpSai90aHM0REhkTG16UlQzbGdnTTRQWkpFaXE4?=
 =?utf-8?B?WVJGZFQrS3JrWE5ZemRxeWtCZlF0bjlJa0pVZEtIZU9GVFVqYTBZS2V1QVA4?=
 =?utf-8?B?MWg4MHhNNllIalZaU1JTRUVTMFh6MXdsMXFaVSs5UnM0aldQa2k2TEJtOXc0?=
 =?utf-8?B?VFpsNVIxUlhwYlZYUlAwTU80MFRFQnp1UDFoVldJVkdEOFp5QXVNSFJMRVNT?=
 =?utf-8?B?YTVqNDl3YW1pbXBHc1ord3dmTHVFM3BhSHAwaFdJNmNmN0c4TmpOOHh0SmhD?=
 =?utf-8?B?ZExkTkxTdVlETEtFZm93MUdsMW9lUytzZ3ZTdlN5dnNDV1ZyZjZFeU85SGpt?=
 =?utf-8?B?V1JrVzRTenpnMWZZcFFmV0ZUZFdKZ01TU3ZTdEwvOXBVb3FjNWJRT0pZQk55?=
 =?utf-8?B?RDJqNjdiV2lEbFlSU3RBZ2JsUTQvYmUxc0tRYU1RdGt4Y1JxcStTdHhTQVZm?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e0eecd-5412-4ac3-a2b1-08de20bb836a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 00:44:47.7527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1d2TcudgjszJKQl45c0jQ2Cz+1BYUhh44EKXOnqQx4coxeRwLc1zGWgMXW7cE+/0maaMx8jTcWM8xlDlKCHXUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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

Quoting Matt Roper (2025-10-31 19:17:23-03:00)
>On Thu, Oct 30, 2025 at 06:56:07PM -0300, Gustavo Sousa wrote:
>> Quoting Matt Roper (2025-10-29 17:54:39-03:00)
>> >On Tue, Oct 21, 2025 at 09:28:36PM -0300, Gustavo Sousa wrote:
>> >> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> >>=20
>> >> Starting with Xe3p_LPD, we get two new registers and some bits in
>> >> existing registers that expose hardware state information at the time=
 of
>> >> underrun notification that can be relevant to debugging.
>> >>=20
>> >> Add the necessary logic in the driver to print the available debug
>> >> information when an underrun happens.
>> >>=20
>> >> v2:
>> >>   - Use seq_buf to generate planes string. (Jani)
>> >>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>> >>   - Change logic for processing UNDERRUN_DBG1 to use loops and move i=
t
>> >>     to a separate function. (Gustavo)
>> >>   - Always print underrun error message, even if there wouldn't be an=
y
>> >>     debug info associated to the underrun. (Gustavo)
>> >>=20
>> >> Bspec: 69111, 69561, 74411, 74412
>> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> >> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
>> >>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>> >>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 ++++++++++++=
++++++++++
>> >>  3 files changed, 109 insertions(+)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/driv=
ers/gpu/drm/i915/display/intel_display_regs.h
>> >> index 9d71e26a4fa2..c9f8b90faa42 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> @@ -882,6 +882,25 @@
>> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GEN=
MASK(2, 0) /* tgl+ */
>> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_=
PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> >> =20
>> >> +#define _UNDERRUN_DBG1_A                                0x70064
>> >> +#define _UNDERRUN_DBG1_B                                0x71064
>> >> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIP=
E(pipe, \
>> >> +                                                                   _=
UNDERRUN_DBG1_A, \
>> >> +                                                                   _=
UNDERRUN_DBG1_B)
>> >> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENM=
ASK(29, 24)
>> >> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK=
(21, 16)
>> >> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_G=
ENMASK(13, 8)
>> >> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK=
(5, 0)
>> >> +
>> >> +#define _UNDERRUN_DBG2_A                                0x70068
>> >> +#define _UNDERRUN_DBG2_B                                0x71068
>> >> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIP=
E(pipe, \
>> >> +                                                                   _=
UNDERRUN_DBG2_A, \
>> >> +                                                                   _=
UNDERRUN_DBG2_B)
>> >> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT=
(31)
>> >> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(=
30, 20)
>> >> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMAS=
K(19, 0)
>> >> +
>> >>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BA=
SE + 0x7002c) /* VLV/CHV only */
>> >>  #define   DPINVGTT_EN_MASK_CHV                                REG_GE=
NMASK(27, 16)
>> >>  #define   DPINVGTT_EN_MASK_VLV                                REG_GE=
NMASK(23, 16)
>> >> @@ -1416,6 +1435,7 @@
>> >> =20
>> >>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4=
6440)
>> >>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> >> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(2=
1)
>> >> =20
>> >>  #define FUSE_STRAP                _MMIO(0x42014)
>> >>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/=
gpu/drm/i915/display/intel_fbc_regs.h
>> >> index b1d0161a3196..272dba7f9695 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> >> @@ -88,6 +88,8 @@
>> >>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>> >>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43=
218, 0x43258)
>> >>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> >> +#define FBC_DEBUG_STATUS(pipe)                _MMIO_PIPE(pipe, 0x432=
20, 0x43260)
>> >
>> >Is 'pipe' correct here?  Most of the other FBC registers are
>> >parameterized by FBC instance rather than pipe.
>>=20
>> Yeah, I just blindly copy/pasted the definition without realizing that
>> the rest of the file uses fbc_id. I'll change it to use fbc_id as well.
>>=20
>> >
>> >> +#define   FBC_UNDERRUN_DECOMPRESSION                REG_BIT(27)
>> >>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224=
, 0x43264)
>> >>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-i=
vb */
>> >>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /=
* bdw+ */
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/dri=
vers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> index c2ce8461ac9e..43cf141a59ae 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> @@ -25,6 +25,8 @@
>> >>   *
>> >>   */
>> >> =20
>> >> +#include <linux/seq_buf.h>
>> >> +
>> >>  #include <drm/drm_print.h>
>> >> =20
>> >>  #include "i915_reg.h"
>> >> @@ -34,6 +36,7 @@
>> >>  #include "intel_display_trace.h"
>> >>  #include "intel_display_types.h"
>> >>  #include "intel_fbc.h"
>> >> +#include "intel_fbc_regs.h"
>> >>  #include "intel_fifo_underrun.h"
>> >>  #include "intel_pch_display.h"
>> >> =20
>> >> @@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struc=
t intel_display *display,
>> >>          return old;
>> >>  }
>> >> =20
>> >> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> >> +
>> >> +static void process_underrun_dbg1(struct intel_display *display,
>> >> +                                  enum pipe pipe)
>> >> +{
>> >> +        struct {
>> >> +                u32 mask;
>> >> +                const char *info;
>> >> +        } info_masks[] =3D {
>> >> +                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block no=
t valid" },
>> >> +                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>> >> +                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completel=
y filled" },
>> >> +                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>> >> +        };
>> >> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> >> +        u32 val;
>> >> +
>> >> +        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>> >> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> >> +
>> >> +        for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
>> >> +                u32 plane_bits;
>> >> +
>> >> +                plane_bits =3D val & info_masks[i].mask;
>> >> +
>> >> +                if (!plane_bits)
>> >> +                        continue;
>> >> +
>> >> +                plane_bits >>=3D ffs(info_masks[i].mask) - 1;
>> >
>> >Nitpick:  It seems like we're just open-coding REG_FIELD_GET here.  Any
>> >reason not to simplify down to something like this?
>> >
>> >        u32 plane_bits =3D REG_FIELD_GET(info_masks[i].mask, val);
>> >
>> >        if (!plane_bits)
>> >                continue;
>>=20
>> We can't use REG_FIELD_GET() because the mask parameter must be a
>> constant expression. That's why I went with open-coded version.
>
>Oh yeah, I always forget about that restriction.  I'm fine with keeping
>the open-coded version in that case, although you may want to move the
>plane_bits assignment up onto the declaration line.  And maybe use
>__ffs() instead of ffs() to avoid the need to substract 1.

I'm going back to the open-coded version after feedback[1] on v4.  With
that, I'll move the assignment up onto the declaration.

Now, for the suggestion of using __ffs(), while i915 (non-display part)
and xe do use it, it appears display code has the preference of using
"ffs(...) - 1", so I'm a bit hesitant on introducing its usage to
display code.

Maybe display maintainers could give their view on this.

[1] https://lore.kernel.org/all/cd8a88c0e6f02aa1209abd3f1188e1bacf1ec1c1@in=
tel.com/

>
>>=20
>> We could change the current patch to use REG_FIELD_GET() with something
>> like below. What do you think?
>>=20
>>     |diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/d=
rivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |index 43cf141a59ae..34faedb9799c 100644
>>     |--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |@@ -360,35 +360,28 @@ bool intel_set_pch_fifo_underrun_reporting(st=
ruct intel_display *display,
>>     | static void process_underrun_dbg1(struct intel_display *display,
>>     |                                   enum pipe pipe)
>>     | {
>>     |+        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>     |         struct {
>>     |-                u32 mask;
>>     |+                u32 plane_mask;
>>     |                 const char *info;
>>     |-        } info_masks[] =3D {
>>     |-                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block =
not valid" },
>>     |-                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>>     |-                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not complet=
ely filled" },
>>     |-                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>>     |+        } masks[] =3D {
>>     |+                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK=
, val), "DBUF block not valid" },
>>     |+                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DD=
B empty" },
>>     |+                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val=
), "DBUF not completely filled" },
>>     |+                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DB=
UF below WM0" },
>>     |         };
>>     |         DECLARE_SEQ_BUF(planes_desc, 32);
>>     |-        u32 val;
>>     |=20
>>     |-        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>     |         intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>>     |=20
>>     |-        for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
>>     |-                u32 plane_bits;
>>     |-
>>     |-                plane_bits =3D val & info_masks[i].mask;
>>     |-
>>     |-                if (!plane_bits)
>>     |+        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>>     |+                if (!masks[i].plane_mask)
>>     |                         continue;
>>     |=20
>>     |-                plane_bits >>=3D ffs(info_masks[i].mask) - 1;
>>     |-
>>     |                 seq_buf_clear(&planes_desc);
>>     |=20
>>     |                 for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j+=
+) {
>>     |-                        if (!(plane_bits & REG_BIT(j)))
>>     |+                        if (!(masks[i].plane_mask & REG_BIT(j)))
>>     |                                 continue;
>>     |=20
>>     |                         if (j =3D=3D 0)
>>     |@@ -399,7 +392,7 @@ static void process_underrun_dbg1(struct intel_=
display *display,
>>     |=20
>>     |                 drm_err(display->drm,
>>     |                         "Pipe %c FIFO underrun info: %s on planes:=
 %s\n",
>>     |-                        pipe_name(pipe), info_masks[i].info, seq_b=
uf_str(&planes_desc));
>>     |+                        pipe_name(pipe), masks[i].info, seq_buf_st=
r(&planes_desc));
>>     |=20
>>     |                 drm_WARN_ON(display->drm, seq_buf_has_overflowed(&=
planes_desc));
>>     |         }
>>=20
>> >
>> >> +
>> >> +                seq_buf_clear(&planes_desc);
>> >> +
>> >> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++)=
 {
>> >> +                        if (!(plane_bits & REG_BIT(j)))
>> >> +                                continue;
>> >> +
>> >> +                        if (j =3D=3D 0)
>> >> +                                seq_buf_puts(&planes_desc, "[C]");
>> >> +                        else
>> >> +                                seq_buf_printf(&planes_desc, "[%d]",=
 j);
>> >> +                }
>> >> +
>> >> +                drm_err(display->drm,
>> >> +                        "Pipe %c FIFO underrun info: %s on planes: %=
s\n",
>> >> +                        pipe_name(pipe), info_masks[i].info, seq_buf=
_str(&planes_desc));
>> >> +
>> >> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&pl=
anes_desc));
>> >> +        }
>> >> +}
>> >> +
>> >> +static void xe3p_lpd_log_underrun(struct intel_display *display,
>> >> +                                  enum pipe pipe)
>> >> +{
>> >> +        u32 val;
>> >> +
>> >> +        process_underrun_dbg1(display, pipe);
>> >> +
>> >> +        val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> >> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>> >> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRU=
N_FRAME_LINE_COUNTERS_FROZEN);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: F=
rame count: %u, Line count: %u\n",
>> >> +                        pipe_name(pipe),
>> >> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK=
, val),
>> >> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val)=
);
>> >> +        }
>> >> +
>> >> +        val =3D intel_de_read(display, FBC_DEBUG_STATUS(pipe));
>> >> +        if (val & FBC_UNDERRUN_DECOMPRESSION) {
>> >> +                intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_=
UNDERRUN_DECOMPRESSION);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: F=
BC decompression\n",
>> >> +                        pipe_name(pipe));
>> >> +        }
>> >
>> >As noted above, I'm not sure if 'pipe' is technically correct for this
>> >register.  I think it always winds up with a 1:1 relationship on curren=
t
>> >platforms, but would it make more sense to just move this check and
>> >print into intel_fbc_handle_fifo_underrun_irq() where we're already
>> >handling the FBC stuff on a per-FBC unit basis?
>>=20
>> Yeah.  We probably want to check if there is a valid FBC instance
>> respective to this pipe and then read the register.
>>=20
>> I see complications with moving this to
>> intel_fbc_handle_fifo_underrun_irq():
>>=20
>>   1) The function intel_fbc_handle_fifo_underrun_irq() is more about
>>      disabling the FBC on an underrun.  I think reporting that the FBC
>>      was decompressing when the there was an underrun makes more sense
>>      to be grouped together with the other info related to FIFO
>>      underruns.  It could even be useful if, due to some hw/sw bug, FBC
>>      is still doing something after we disabled it (or so we thought)
>>      due to a previous underrun.
>>=20
>>   2) Logging underrun debug info is currently guarded by
>>      intel_set_cpu_fifo_underrun_reporting().  So, we would need to
>>      complicate the implementation a bit to ensure that
>>      intel_fbc_handle_fifo_underrun_irq() would only report when
>>      reporting was enabled.
>>=20
>>=20
>> So, I was thinking about defining a new function
>> intel_fbc_fifo_underrun_log_info() and calling it from
>> xe3p_lpd_log_underrun().  What do you think?
>
>Yeah, that sounds fine to me.
>
>
>Matt
>
>>=20
>> --
>> Gustavo Sousa
>> >
>> >
>> >Matt
>> >
>> >> +
>> >> +        val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> >> +        if (val & XE3P_UNDERRUN_PKGC) {
>> >> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UN=
DERRUN_PKGC);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: P=
kgc blocking memory\n",
>> >> +                        pipe_name(pipe));
>> >> +        }
>> >> +}
>> >> +
>> >>  /**
>> >>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun in=
terrupt
>> >>   * @display: display device instance
>> >> @@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct i=
ntel_display *display,
>> >>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> >> =20
>> >>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n",=
 pipe_name(pipe));
>> >> +
>> >> +                if (DISPLAY_VER(display) >=3D 35)
>> >> +                        xe3p_lpd_log_underrun(display, pipe);
>> >>          }
>> >> =20
>> >>          intel_fbc_handle_fifo_underrun_irq(display);
>> >>=20
>> >> --=20
>> >> 2.51.0
>> >>=20
>> >
>> >--=20
>> >Matt Roper
>> >Graphics Software Engineer
>> >Linux GPU Platform Enablement
>> >Intel Corporation
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
