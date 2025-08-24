Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F200B32D89
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Aug 2025 06:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252A810E1F9;
	Sun, 24 Aug 2025 04:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKWLbx7m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5EA610E1F9;
 Sun, 24 Aug 2025 04:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756010177; x=1787546177;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tFJgPgJRv8rMK/JRxgHA/MUonw7xEUy3vpgJ+R4VfvQ=;
 b=jKWLbx7mT79x/6zs8Eqig0vDCS395AJKFIZYCiy7uVmUx+FiQ4c47Ahm
 8+ivKd+NIPdXU+WzyADPIPSihhknse9OtVE95ndttbI4j4JCHSBfpHE8E
 hQ4Yv4DjFoqhfCAxGTBe8409fnjsPnfgjn/ZOujDHiq8cq6bPh0665ORU
 Bz7VaBqnUKrVp4cMCq0zf6qdkaXuWex5VH44VoX086WXCkKV6xUbnYPqV
 zMioHdLaHtYYtFq6X+MXDIpmkbol7YkZuLcr/27fPvX3jVeBfw1mPx0aE
 HfA/tJOUPLOdMIcDeRbxMmmMK9t+7KH/32oHyksuJzby1anh+Bk5X/B9f Q==;
X-CSE-ConnectionGUID: GngTtWPpTai/6yxEEO2wbQ==
X-CSE-MsgGUID: jIg1H638SGqrn1gRlsnVGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58179819"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58179819"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 21:36:17 -0700
X-CSE-ConnectionGUID: 32cDX/YiQFuS1TL/P6oGvQ==
X-CSE-MsgGUID: Pgbe5bGaTiel3kWBy9Qzbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="169842053"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 21:36:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 23 Aug 2025 21:36:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 23 Aug 2025 21:36:15 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.79)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 23 Aug 2025 21:36:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m5msMxi+9pb796eX/JN1lVDuuVBjbad59MM4M89fZYQtA8CvzEwsWFug362oOTPMmujGp1G8sGKWtTczCz8ja4WWrg/h+c/OnbpThZNznnuzOSHlGlG7X/DouQbdE/EmsapdGEdZ1LylSzlNsYunk7A+OqbqvkLA4nmA9sBCYta2IaqIUJMiOgVe1Sw/61Ka5ahayvRhRfCVM5vlElkHgJZK+RMEU49OWxRRKcKm8gYcyweXNGtJhRQIEALFnvDu+e7hC29Ji0PF9YJuFd+2SnQzvgzPM5sMO1NnN3+RLeyg9gY4yfeJVdg3hgmNhaMHVwAYWg7zwz7IeiMI77YT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MRZ8WZ6CjwmhovG2BO/TUfDKTOehBM1cihSQuPpcwg=;
 b=a6PLxDKsHpx8zjSHpjXi7e2QRyyupnQi6jYeRgolUIHpAx6x+SeSdlz+5esiim5RmGRuEg3MEnyPpx5SPcmxwRw1fYPhT7Yz/NOVWYLmCMV+6xsbq1wn2hK6tJsOyIx6woL6t+K5kFYORC0qKOIsTXdvC1n8lS968VmQQM30rEUvaW0nswRV54ccN9hYkrs565dEZpfgsJn34x1dB++sf39PuHKQ+lqPcgZwsDeeNTaGFZZER/rlOCJ5gWFmpQOoxECQioCn1++5fBVySDrsxCtOl1UZBSa6DwAxe/AWP0vp+vcrGe2V7LVCK7qGc78tfIxbZWtajBw3sg+BTI2jtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6115.namprd11.prod.outlook.com (2603:10b6:930:2c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Sun, 24 Aug
 2025 04:36:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Sun, 24 Aug 2025
 04:36:13 +0000
Message-ID: <44dbccd6-854e-41f8-a226-3be406f15f76@intel.com>
Date: Sun, 24 Aug 2025 10:06:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-5-ankit.k.nautiyal@intel.com>
 <ec108ab6a7018cd162e5fcbdead88a2f1fd89a9d@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ec108ab6a7018cd162e5fcbdead88a2f1fd89a9d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6115:EE_
X-MS-Office365-Filtering-Correlation-Id: c465b443-9820-4b04-077b-08dde2c7c197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aG9yQkVWYUhSRC9ZRnR0eVhxMm93c0I4YW9MdW1IR3ZjczRYRnA1RWxlVWd2?=
 =?utf-8?B?bk5QNE8yZmtnZnBuWXhqZUdOdkw3Zm5Yck1XVGgwNXlnU25hODBmYzlRdjFa?=
 =?utf-8?B?SDZnT3JyYXg1REVqcXJRUWlQR0NRekJzbVYwS3o5S2VhNUNDZXRFb1RzN1FN?=
 =?utf-8?B?YzZKbUpCdi9UYjl1QUVzZjBzTVhXMldCaTF3QlFtT3V3MTJLRjJFWU5NSHJJ?=
 =?utf-8?B?Ny9lcUJaUU5zb3BlZXgyQnRrczVOSWdQVzVZWnNiWTRqN2JvR1VQRVRCdEJN?=
 =?utf-8?B?YnJydFQ3VHJnUHBscWxreVl5YVNYNzlpN2Z5U3pkK3VlK0dPMzNJdFczbFE1?=
 =?utf-8?B?TFRmeUxuU0JORlJqbGdXYW5xRkNKb0k3d2gyMEZ4c1JHdHBtOEY4ZU9lOG9o?=
 =?utf-8?B?U0k3NE5rQTdJNVdwMWZITllUcURaMzZNRVB3RmE1cmtKSFRHWHF2eUNLTm4z?=
 =?utf-8?B?NjR5WFNPRkVhWjB4Zi9rWkNUMTcyZkdtUUZpUnZsMmMzSHM0K0FkSzRmQXlP?=
 =?utf-8?B?TVNKUTBTMml5dlNMQWlFN3NvQ2pwMW5CNDFMc0hpTGpZVHVwbkcyU1RmTWVZ?=
 =?utf-8?B?dnhMeHR0MWNzdlZzTG9uT0JzYVFMRm1vL0lpVFduM3ZJUHdPZWVkaVl5U1RR?=
 =?utf-8?B?UU8xNzFtbTY1OHRCNWdUR2J5QUFCNnI4UmEvVTJCSlgxWFJiL3RxVDJkQ3ZB?=
 =?utf-8?B?SW9NWXMyYWJ5aVR5Q0lWeFJXTkU2Z2pTV1VyUFlQcW1BOXJXZjMzelNWdmlM?=
 =?utf-8?B?a0d6M05FR3JNKytLRy9UTktsWFllQkJMTVoxbVlYUUhSVnMzYUV6TFVtQ1Jp?=
 =?utf-8?B?akhDaGovZEVoWDhkemUwMlIyMUVZdEpyL1RxSmRkYmt1RkNsakt0YXdWSjBw?=
 =?utf-8?B?aFdCTGNiWkg1ZTVtc1laTnhWMWIrcEoxalNmWHMySUlpeHpMenB4R0YzTUtV?=
 =?utf-8?B?V0JvSElTaUdGeEIyZ3N4R0V5azd3Mlk5RVIwaDVqTGZENVJlTEVERE5ZSTVE?=
 =?utf-8?B?VU4wQjVhRVRhTitza2EwcU92Y1l5clNNQXhGRGZVeXZhMTVqdE45d3cyU1Z5?=
 =?utf-8?B?dU8yOWZFcHBjS3JzM2NyakJrK28ySzJBVTBYYnBwY1Y1T2VZSDRXN3BmK3kv?=
 =?utf-8?B?R1FxTUhrTGw1UmFsUGFKZFF4WWVzZTZ6YnZjSUI0NzMxeDR0U3ZpR3MyWjU2?=
 =?utf-8?B?Q0gzNFlnU1k2cmQvU1JLSGQvZlJvZ21uWHdySE44bDZQSU1iYS9tOUdOMmho?=
 =?utf-8?B?TWlzbFEwWU04cEFTMkhOMVE4aHpYdHVsbThNMThScFcwVUhDUG5uOFFqQW9U?=
 =?utf-8?B?WEdJSkpPQXFBL0M2WkdUQ2NwaFpqK0RmcVZ4blBKa1FZWVhZdGJpUUR6LzJi?=
 =?utf-8?B?WjRlMWFjL1JpTnNXcHRNb2ppdG1nZXM2RU9ES1VHcDR0L1dFV2dnUm12Ty9B?=
 =?utf-8?B?Q2toYkplRnhkdGFoSUNiT3FHenhlZVowMmhnRkxlMUorS2oyYlhPRURxelQ3?=
 =?utf-8?B?MFdlSm1qQlVNRng1SVgzMlJZbzZIcXJ4bXBVSTNZMllnWU9hNU1FWHllUElh?=
 =?utf-8?B?QmFsN0hiT3FmTHZES2IramMzM25EQUY5QzcwVCtnS0VuelFMb05XRGZGZGtv?=
 =?utf-8?B?dzNFaWdtVFV3cW8yMklWenJ1bzVLSUdsdmVSYWVpdE5LVkg5N2c0dHpZa29V?=
 =?utf-8?B?L2U4RE0rdzlKYm1Bc0RTOVErODJGSFZ6MlB3YkNaN0lJWDFQUzRUMzU2QXN3?=
 =?utf-8?B?dS9jWG9MdkIxRm4vdy92dGdYME9iaFc0NlZZNzlwemRmTUhXUENubTRUbzBl?=
 =?utf-8?B?QVltcVdaV0xFMHZwUmFHOFBiVUNwQmJPRmJGZ1RpcDRLb3ZPdXVHMHp1YmNx?=
 =?utf-8?B?WjVMaDRTSHVFeVlabkRoMkZWalhBK1psK3lsMlVvOTNuMEpnY2VaK0RGdFBE?=
 =?utf-8?Q?Y7X6r7C0D20=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGwyL3lsSWlGNHBVSEFoR09xQTRhb1VMV2JJVUxucFFmLzNmaXhuNkNYemZP?=
 =?utf-8?B?U0lGazVOdW9BQmc2SVlqdkVzREYxNFowZldRa1ZmWmo3TmUyQ3YrUDcxaDE5?=
 =?utf-8?B?WFpsY0VXbklNQXFmQm5KNUZmd3M0SkVBTy9GVUdIMmVMZ0VCN1VFSHJTcHF4?=
 =?utf-8?B?Yi9oM0gyUzc0Y2YwSDJpa3hiZFJsMlJJd3gwUkpoaytSNG1na1hwOEJ1bmpL?=
 =?utf-8?B?UXdtajQ3SXdhUDVpUThvVUU1WVo2aFVENk80RGpvZVdmQTA0VjRqSVpPelN4?=
 =?utf-8?B?dUJSaHZ3VDRSUlJqVmN5K1VLVUVIY3RnU0FVM0lZZ1k2TDh6QmE2SVJCbFZV?=
 =?utf-8?B?MHVyY2dSZDk3SGFod3BTQTZ6WlJQMEhTWlNXZ3JMTEZoWitLLzIrTzlzeTBJ?=
 =?utf-8?B?bDJOZFJydERsdDExbmtyMWwvYVp2QWRBcUhURkJRcEdaVml3UUxEZXZWcWd2?=
 =?utf-8?B?dWg4NXZiOWNhdHRRVDBBenZldDJKZkNmOGR3VWxrNUd0QnE5cStTcEllTDRj?=
 =?utf-8?B?YUJHMWR1WGhYa0VpTlJub1VJQU1zelpWTXZ6TEc3Q2M4Nk1GZUZtMEl5SGhB?=
 =?utf-8?B?MVlXMU1lTnVxVmRBME1hcHJYRWtiRWVwSVFKTFUwdFVNMWZWb0RNa2RIZjFw?=
 =?utf-8?B?Z2RpNkZoZXBxWCttQ3NHR1RHaGhKZWdwdmVOdnFqOFFBRTYzUk5RVUlya0Jl?=
 =?utf-8?B?K05OWDE5bzF6a2FYOWQxOXY2THllb3crVVExWGxLZnZVMlZEYlBSY0tBaFNR?=
 =?utf-8?B?RFFzUW5qMTZuTm9qeVl2NGJiQTcyd2lCUllrUVl4ZTJwVFNCbXJMTkhzNDQr?=
 =?utf-8?B?UXhLbkFiOWpTUjVNQjQ2Y3hjSE1NOWRRWGdJeTRXZTFtQnk3dm5LWU5VUm1k?=
 =?utf-8?B?MlVIVDJ4ZUlVQWdoV2FMMEEzV2xBVkI1bnNjeEN1RW1ZUVZtNm02U2pkdWly?=
 =?utf-8?B?Tk9MRlpVdjdQNW9OWGZERzNnOWlHMWxzVXdLazJPMlQzakVxbzRUYUJvVlAv?=
 =?utf-8?B?TlJQQWJDOUkrUTU2QUVYUWFvZ3dzQ1FRUXZDbm9kN29BK3NWYkpKc2ZHSzJU?=
 =?utf-8?B?UXR3UUovTDJuTE4wcFZEd1YzMitjQlEzQWZuaWNLVFdyMHlhZHBWNkZ2K2l5?=
 =?utf-8?B?dWNyaVJqZCtqWDJmeW9mOFVMMXMxc1FYTUJWdEFhbnFXVFNGZE1GcEphSVhq?=
 =?utf-8?B?eFVTVDQxWk0wNWxWTGN6SEUvTjlPYW9PQ1VkVmMxNDh2d3VIRHBwSXhUL2d2?=
 =?utf-8?B?MUc4cWt0VTBLcDFEQXhYTVlhQk05QkF1Z1ZxNUR1RE83OCttNlpsdFpvT1Z3?=
 =?utf-8?B?ZXVKMkFsZzIyOVlSb1U5OUk2M1lPNnV4aFNFdGlMMkdldEJmcUxiWE44Z21o?=
 =?utf-8?B?N3ZDVE5xRHN5Y0pnd1ZtMWJDVE5CZ3NhKzBYVG5kM1g2elgyN0xmVlpXQ0NP?=
 =?utf-8?B?SEJJMDQ2dmxPZEVheWp3OVpCbkMvSUlyK1Z1dDhLcUJOUWt3NFh6WmZ3RlM4?=
 =?utf-8?B?Mmd1b0FkZDA2cEo3dktVbHBneDVYeHIvemJGTlV4VmhweXRDUUg5SzVhckRr?=
 =?utf-8?B?dVdGMjZia0FBa0oxQjNKY0VjaDRXRmZPc3VFT2tqTWViUk5WdkZMalluRUFO?=
 =?utf-8?B?aUUxZ294a2dLdUxodzBpaFZTcU16YWZkNEhxeFd1d2RDSHZkL3A5cWdxcHZI?=
 =?utf-8?B?eEhaN0FQRmFNSXpiKzVHMmppTVhSQjhqdGkvSjFKcnJFMENrRlVZOURxU1lR?=
 =?utf-8?B?Zm9pMTRuT0lUSE5aV0FublhIeUZPL29QQ0pUWDJXbWFUb3dDcjFFeDdNNDAy?=
 =?utf-8?B?Z1ZhTWFEbVVvL21CVERSMS8rRVUrbE80Y2I0NjdxR0Z0QTR0bW5hcFoyQkpu?=
 =?utf-8?B?ZGJCVEhXd0ZrT0lSZHBZSThCOW54SXhMS2dmZ1ZQN0h4ZC96ZWdzTnNLNFdR?=
 =?utf-8?B?K2FrVThxY0pFRk5iSjFTczIwdnlpNVQ2K0IrQWc5RFFGd1loRUZ5RXJQckIr?=
 =?utf-8?B?OFdMR2NLVU5hamxMdzg0UCsveUQ5cUJuVDM2Yy8zQzIwa3NXRXhmaldSRWtX?=
 =?utf-8?B?UFJBWlFLdGhkZUlIVXJDTUlRcHVHWUQ1WTJTMWxKUmNxZ1BVdXA3QTJhek0w?=
 =?utf-8?B?ZVoxSmdyU1Yyd2o1bklKU0hrcmlxVWNjNG5OcytmbGRpUGM3T2I1TE5IK1ZV?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c465b443-9820-4b04-077b-08dde2c7c197
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2025 04:36:13.5727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TYalUGcPFa+/+aJhYkvMkVRgt4/ZeZL3dkTuayd79rqcZbQwoxwfrZ9eNQ0N2zH13l6GctsO5FDjHIcDiaRXYEJWO1tCMlEXx72FVMe6DN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6115
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


On 8/22/2025 4:53 PM, Jani Nikula wrote:
> On Wed, 20 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Currently dsc/scaler prefill latencies are handled during watermark
>> calculations. With the optimized guardband, we need to compute the
>> latencies to find the minimum guardband that works for most cases.
>> Extract the helpers to compute these latencies, so that they can be used
>> while computing vrr guardband.
>>
>> While at it, put declarations in reverse xmas tree order for better
>> redability.
>>
>> v2: Initialize {h,v}scale_k to 0, and simplify the check in
>> intel_display_scaler_prefill_latency(). (Mitul)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
> Side note, basically adding anything to intel_display.c becomes a new
> todo item of things to move out of intel_display.c.
>
> It has long been a dumping ground, and continues to be so. :(

Thanks, Jani. Understood about intel_display.c being overloaded.

I can keep the latency computation helpers in skl_watermark.c for now to 
avoid adding more to intel_display.c.

Let me know if you'd prefer a different location.


Regards,

Ankit

>
> BR,
> Jani.
>
>
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>>   3 files changed, 62 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index c1a3a95c65f0..62ec95a75154 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8328,3 +8328,36 @@ bool intel_scanout_needs_vtd_wa(struct intel_display *display)
>>   
>>   	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
>>   }
>> +
>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
>> +					 int chroma_downscaling_factor,
>> +					 int cdclk_prefill_adjustment,
>> +					 int linetime)
>> +{
>> +	int scaler_prefill_latency;
>> +
>> +	scaler_prefill_latency = 4 * linetime +
>> +				 DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
>> +						   chroma_downscaling_factor), 1000000);
>> +
>> +	scaler_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
>> +				      int chroma_downscaling_factor,
>> +				      int cdclk_prefill_adjustment,
>> +				      int linetime)
>> +{
>> +	int dsc_prefill_latency;
>> +
>> +	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
>> +
>> +	for (int i = 0; i < num_scaler_users; i++)
>> +		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale[i] * vscale[i],
>> +						       1000000);
>> +	dsc_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return dsc_prefill_latency;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 37e2ab301a80..8d094b0a8c6b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>>   
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>>   int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
>> +					 int chroma_downscaling_factor,
>> +					 int cdclk_prefill_adjustment,
>> +					 int linetime);
>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
>> +				      int chroma_downscaling_factor,
>> +				      int cdclk_prefill_adjustment,
>> +				      int linetime);
>>   
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 97b42bbf5642..f0213785e9fc 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>>   static int
>>   dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>>   	u32 dsc_prefill_latency = 0;
>>   
>>   	if (!crtc_state->dsc.compression_enable ||
>> @@ -2191,18 +2192,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   	    num_scaler_users > crtc->num_scalers)
>>   		return dsc_prefill_latency;
>>   
>> -	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
>> -
>>   	for (int i = 0; i < num_scaler_users; i++) {
>> -		u64 hscale_k, vscale_k;
>> -
>> -		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> -		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>> -		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
>> -						       1000000);
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>>   	}
>>   
>> -	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	dsc_prefill_latency =
>> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
>> +						  chroma_downscaling_factor,
>> +						  cdclk_prefill_adjustment(crtc_state),
>> +						  linetime);
>>   
>>   	return dsc_prefill_latency;
>>   }
>> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   static int
>>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   {
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 0, vscale_k = 0;
>>   	int scaler_prefill_latency = 0;
>>   
>>   	if (!num_scaler_users)
>>   		return scaler_prefill_latency;
>>   
>> -	scaler_prefill_latency = 4 * linetime;
>> -
>>   	if (num_scaler_users > 1) {
>> -		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> -		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>> -		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> -		int latency;
>> -
>> -		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
>> -					    chroma_downscaling_factor), 1000000);
>> -		scaler_prefill_latency += latency;
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>>   	}
>>   
>> -	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	scaler_prefill_latency =
>> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
>> +						     chroma_downscaling_factor,
>> +						     cdclk_prefill_adjustment(crtc_state),
>> +						     linetime);
>>   
>>   	return scaler_prefill_latency;
>>   }
