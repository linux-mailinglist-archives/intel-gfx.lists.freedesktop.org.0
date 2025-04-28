Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC628A9F26A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C48110E51B;
	Mon, 28 Apr 2025 13:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCeVPRL5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDD210E50B;
 Mon, 28 Apr 2025 13:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847118; x=1777383118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=NNUDLgLONOiCrNq36XkUbGNl5mGKy63sl2R3p4wYTbE=;
 b=PCeVPRL5tC56Yjmj/h/KB7Qm2HFcEkGRksTRB0ImVmX3F95Fc0GC/WHf
 P/qrGrgqjVFBQEM4ucWMIn9euyrCjmVUvaIPIiSQxAEha62Tk3aGifijv
 5hTviVhRUn2FMHZKT7Z1ITGh+/ssn6sAQ3Fb3bAYkTUuUJYwTYB0vHHgC
 J9YC3PZa5xaNPkS8M6Ec9gus2Jx3YJJ0GtCBhfzEwlpMobc7pkWv1FJkT
 gXnOjKYslsH3yjUbnrCjCWkUJ5EEzXI3rXOIOv1LjcorEgu9eBQbb5kBw
 t9aUiRJQzNTSA3O/uqWTYUe1irJhbUIc2zSHJ1jAsi6+UG5DeB+xUdQfG w==;
X-CSE-ConnectionGUID: XdsiGzUFT1mOYsp5K0orUg==
X-CSE-MsgGUID: zlFXzLFaSGercV0GLUHjWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58423145"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58423145"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:57 -0700
X-CSE-ConnectionGUID: zKo9dRb+QpWuwVCQYZYb4A==
X-CSE-MsgGUID: YFqspN+lSM6p4QjI8YxCSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134490973"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ITJXrDNTg7KsRJuvtQxTxSBzFI38SCPoxSh46IngGjqX60Y52Xr4pM425Od2fl7KgSnV0tek9RxdNJhHY/TfZvRNqwCso6iZ3YIZSE/6RZ0Do1eh4S4A3EnYv57f4O0yO0VR0zQWJFEEHxpFe1aiwNXPG2dgiA0PgQQ2h+N2cf9P3eMy2zCQ70+MKuSiH9RpzWUetQ90o+vNlc+OHRbqCuuQFugxLN4wfUDmrh4yqULwQmDFi0WKvd7uhw/RNMquYf9efa1Ce+wQg8Er7y5gD7SvqgGy/A5ApjhLFdK4NBnphr9+GRPH5Hi2ECsR8dD7KMOOVdsj9d01DuebKu+EXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2PY2jtYuJ9dWxorBEAVdlIjm3bhHrSb22HZohYS9VE=;
 b=xtm4fakOYsXzeYM+mInJr+A9Y28SSWmbTTCWhc1IhNUC4XNgkDNU1MPbhksti9vCGTa2d+aWuULNQpA51XDgnDbKrIgtmPXA/FQeb9Uthf5a+GIKoH5l9sA/lU7LAEoVDobX3mo/NUnm3GTWu0aFlNcepXw1EAlhqs+WoJl7k7fjDt/6NzciF7Ugo7oNJxDu9W6JAI3bqIjZZCK5QYKrfZKeBdytT02covnMmGX94F8WRGRjcjQrbN9M0VWKBdCrprldUxS+zh3cwGQ/wonFZ5sQY2+Qw2YYWVr+JbIBx/XmK2cs0QAJQ9mkh3K4hRR93eb4lKBze5369RavSuc6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/12] drm/i915: Add support for forcing the link bpp on a
 connector
Date: Mon, 28 Apr 2025 16:31:22 +0300
Message-ID: <20250428133135.3396080-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: 92c422cc-3594-478d-1d65-08dd865904de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXRBSmNMNyttcEk0Y2hHV0ZYdHNtcTRHdkNJaE1tTXUzajRJTGVnWFlIMW05?=
 =?utf-8?B?VEl6YUdLMitpUUpSZit0RTl6VDFHaldHcVlvL3ltdSt1QWhYOGc0a2t1WHda?=
 =?utf-8?B?R1hiOUEySGl0S1hIaEF4VEt1S0s4VDJHZ3JtUU9vbzNSOUl4MFJ5Ni9sWldS?=
 =?utf-8?B?UTF4ZFNicUhIdVk1NEMrRHFQbVE1OEJmUjBwR1ZzVXNWdkRqY1pFRTVxZWlG?=
 =?utf-8?B?aXU2OGhnVHJDd0cyek9xQWZTWFNzRU1WdGozMTRxUWRhMzlkTDJPOHhaaTFu?=
 =?utf-8?B?aGIxSGk0UHZCeG1CNUgrQ2JOQW9sd3ZEN0RBUlhYLzVEcENhelEyNXQ5TEZ0?=
 =?utf-8?B?TTg0Tm5zQlVCalBta2VjU21Yd2dHU0doMXJUNkJ5VmYrTEx6Q3JSdTN0SXFL?=
 =?utf-8?B?RXdUTEJJb2MwbGRTdkM2QnA2dE83OXlJRHNtNTljalZtZGMrOHRyZndzZXdN?=
 =?utf-8?B?UFN1Z0s1Q3JLdDc3ejZrZXZjb01CeCtPYXJXeGNZTVdRbkRmV1VnRmZCV1Nx?=
 =?utf-8?B?diszU1VzSXJuZnQ4eDlvSzFhTXBlajN3dDJwU1ovS2VXWmtRM0NTeC95RkRV?=
 =?utf-8?B?WVNieGdiYWRmZ3ZhNithZTdvd0Y5YzA5ZXZ5T2Q1TURvd1pBZ3lPMHR0dk55?=
 =?utf-8?B?UWNDd2phbFo3VzdUeVNidGpDUEc5cnZxVE1QMGxnWHkxeUZlc0ZVTWhmNmJJ?=
 =?utf-8?B?SEw4YVhvZDdyODNma2JMeGszYXNET1pEZHloRWtpNC9sRWo4OEVsL0thUkZD?=
 =?utf-8?B?UTNTNWRhaGc1c0JSMkE1UmtISG9jL25TMXhITFY4bFFBem4zKzJ1N001bmFK?=
 =?utf-8?B?clVJZldjY2lrRjBSeHEyWHZsajFhRHY1NnNOZE1SaXZUck5ONlNQRzJVcEYy?=
 =?utf-8?B?Q1NUZE9IdmtrTUFNd2VGa0F2WERTYnBuYk0vZjIwWWtKZENVTzlNQWxIeWk5?=
 =?utf-8?B?MnhvMWxENHRYTkVkMlBwaStvdlpBcHFTRXdtMm5EWXpQRE0wU0FFRVRWZUdC?=
 =?utf-8?B?QlYvaUxXQk9XazdlSjNCeG9KSjlnT205bjhYenppeHUwQkJHaU53Wk5JMngy?=
 =?utf-8?B?Z0s4Y09FYzE0U09vNlM2a0Zja2VYLythRjQ5SEZycnZINC9Oc3VWZHloY2h3?=
 =?utf-8?B?RVFSVHVOTjVkMFB0eUlZQ1NmbldFd3lnQ1NOZjlrSTlCL1F5bmRSSnhQcTJ1?=
 =?utf-8?B?NkZQUmQ3TEhXQWZJMkw3V2ljTVU5K2dnVFhtMzFHUmRFcTZCUTVMOFhRMHd6?=
 =?utf-8?B?Z0FXTU5TMWYxT3FPa29senlUQkEyMkZEU2I2c3N4T1dNcndLTkZiRWlsY2Q5?=
 =?utf-8?B?UzVLa2RyM0pzM3llMFlvanRuNkJ2UGhveG9iUzA1OENGODg1cHk0aFNlbFZi?=
 =?utf-8?B?QzJuVVkxTmhCbm5raEJiUllEcUhaVDg5aEZuWFUyOFNMVHRPS1p1WTZZVGVn?=
 =?utf-8?B?Z3FsQ3hMN3dmZ2dwUDllL1lVelVlcytuTVg0ajFSNFVvVWRSUHBsUjY4aU9N?=
 =?utf-8?B?SzA5MzhOWE9tTFlnQVQxVGJBK1ZEb2VTNXZsZUpCNXRxY05nakVoUGpHeG9P?=
 =?utf-8?B?UTV5eUtVd2ZDNGNOejgzMjBWNDZJblFraG52Tm1hWjhjSEJhU3ZUbURVZlMy?=
 =?utf-8?B?akV4UFg1emFEZmtkU3RVTlhKMDZaaDJXa3pXUStpd0YzM3hndjVXb3dWTnlw?=
 =?utf-8?B?eEdlR3ZWSGU4OTRYN0hkeWp0K3RpdXRpM1hoSlZPOVB3dHAxaGlQQTg5SHIx?=
 =?utf-8?B?cnRzQ0lNZElMeTh1d0J0OGJldmdKdDFnbGp6WTdNelNlNjFpK08xVGdQOEN4?=
 =?utf-8?B?aVZRL0dEMVlOZ3FaRVRMZTJmM2FQZE95UWJ6bEd2QnQ4TXNzU0VhQWhKVVRn?=
 =?utf-8?B?eDJVM25BQ0dOQzZCb1V6bVFhR2FkTldyQ2pMQ05yV2YzT1ZNTlF1VWRhY0ds?=
 =?utf-8?Q?Z4UiezUs6rA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXhDQ1dyM2RHNTJSVWcwYndiZlBBUmJXVXZOVlJHMkU2ZVVnWkFjMXpGL0tt?=
 =?utf-8?B?Z2pSZ3JjZU5vR0EyU2NNdzM1bmViTDN3TThUT0FEQkgxejdOOFZRcU1nRlZs?=
 =?utf-8?B?MXYyZWFMajc2aUJBVW5jcGl3aFg2Q0ttMHRyS2dqNmh5UGtkMTNGNlB3dE02?=
 =?utf-8?B?RVpHZ2oraEtzV2ZhMVBHSVVUK0pKRFJxd25TV3pBKzRiOERWK2dmclJCdUZV?=
 =?utf-8?B?bGQ5dS91RVltc0VUMG12NTBNRVB0L3dET1JHUU5LaW1xU1lXU1hXV0ZvSUg5?=
 =?utf-8?B?QS9xTGhWSk9tQ3dpVkVNU1l5eGtybkY5QW1vZmlmZ3JNRkNkUmVFNUNwemVk?=
 =?utf-8?B?WEZGbnptKzZwSlVnYlFQUU5pdVQ4UkdiWnlKKzIycEhaeTU3VkFTSmVRMzMw?=
 =?utf-8?B?a1g5TnBQai9WcVpMZ2h5cjN2ejBCZWlNUUlpeXlveVQ3SUg4a3FrZTNUUXpY?=
 =?utf-8?B?bnFiVlNBUFA1bnUyMW5tYkVRRlhWWG9kcHd3YUdiMnBEQXdkODF5WUtFYSt5?=
 =?utf-8?B?U2lLZmYrdHc1VU5Jbkp5Vm44ZnU3azJuWHFTdWRsNFBPcU1iTGRDcmpVa25a?=
 =?utf-8?B?SFZSdlZaZFhTZEg2WUJGbmxRT2QyVVpNbUQzdDBVMG16YWZNVUlZaTZTVGFM?=
 =?utf-8?B?UUxNcDBWTVB0dzhVbWdVZEszS1daTkZTZmJvdUprZmxSbVovMGsvYnJjKzJW?=
 =?utf-8?B?RlBSWHJXeUlZb01SMmFBM2hTZ3dOVkRDUnBSZitUTDdUUUlZWnd4dTNvc1gr?=
 =?utf-8?B?V3l3V3pZWmVDYTVVcTlMc2dacG5wUXBuVzBuODZCK1M1T2hIekdvRmZTY293?=
 =?utf-8?B?dkdGaXIyNTk3VE1SN09ZaDRiZU9NL0dualpBRHhxVEMwbmFOTit1WG9UaUJn?=
 =?utf-8?B?M1lRczZBbDVuYmNLUWE5LzB6V0FJbGszbDdCdTBZNXllcm96MUowT0Q4VGE2?=
 =?utf-8?B?c3lHMHRXM1dEU2IzTUh0TDRXcTBZZlJSbnJSMWFjQ3ErMlBGa0JUbkRVUWM1?=
 =?utf-8?B?eG9RRnlhN3FyeVhxRDRHb1diMWphNlpEVGJHSDlxVEhyZVZRSnZ4Ykl0ZDBi?=
 =?utf-8?B?V2ZmYTlPY29PVWYrVGhXOHlBTFVXcEV4WTNJbEVFQjUzbUd6a3A5RytEY0tU?=
 =?utf-8?B?OVNlbzBhcGtuVHFDZlpqaWNWaHN2SXVUc0NiclZoaWFtbjk4cTFDMjEyUGMr?=
 =?utf-8?B?L2tzOFpYNUFLcE01TGoramFrbUNMRkdqcFhmdVBsMWV5WllOcUhvTGRTVDZG?=
 =?utf-8?B?MEV6bW5VNnMrRC9PUWRGSzdXM2pzR1RXQnVnRUZBdm5ZdWRQcGE0elBsOUIx?=
 =?utf-8?B?NkFYek9vRDJqSWRKV0xEcnN6NWFsek11bjJ5eUdYbFNpRGF4UWx6WGpCK1RZ?=
 =?utf-8?B?QXhOaVk5VTlmY0JwWFVmL1lKaXZmSXRocU5jQWlHVmlDUVZ0dWNnd0hJbGo2?=
 =?utf-8?B?aFQ3N0JBek1BMUF4UHJrZFdTSUdGaHQ4ODZ2dmt3Q3ViQW5ZK3lIc01OZjhu?=
 =?utf-8?B?ZlFaMm55STlmRi9XZWh0anhLRzBpWittSDk5SWRqUExUNmpIVlBOUU5OMGxr?=
 =?utf-8?B?dFFvUlcycGNod2hJak14UW0yMTN5M09nVkU2dmxoY1FxRktuU3JkR3hpZlBV?=
 =?utf-8?B?QVRDZ09vLzFtUHd1MkZQT1YrZHc4eW5KSnZIdWdSY0dRWU9nQXVnRmkrRSt6?=
 =?utf-8?B?ZitzMEI0dXMxcHRRYnV2UFV5Z2Z0YmNxUngrV0FQL3Y1dy9KRWlRRGFWV3pt?=
 =?utf-8?B?SzUvZFZ1VHV5d0N0NXBPQ0JCT204OXk0d0tpVWFuM3ZQbm9HdEZzZ0VvWFJx?=
 =?utf-8?B?NXRVWFhaOHI4aFh0emI1ZTg3cE15dWhzc1lUZEtzWGo2RHBDOFArdHZteTgy?=
 =?utf-8?B?VWFPNmtaUGlHZytDUmJQa2o3WlZ3S3BGQ2kxVWJWbDBFMk5XWSt1Y0pQcS9D?=
 =?utf-8?B?QlNOcU9qWmJqd0QvNWxJbnoxa0phVUpKMUlkTkRwSWI4VzJic3hxdERNdWxr?=
 =?utf-8?B?WEthUlVYSXJZa2ZCakFVOXk0aS9jK2xMOTVMdWMwUTB0WmtoZzM3UlV2Qis4?=
 =?utf-8?B?c1lVR0hiUW03dHBMeDhBMERiNGVZb0MwOUZTMVcxdjUvTmlXVUk5TW84bEdH?=
 =?utf-8?Q?GvQ8OH8oULejX1vZj230mjdXl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92c422cc-3594-478d-1d65-08dd865904de
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:45.1372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FLhNpyyK+XiTs30X1j0RrYNVU1CsQr429Mtrc6zvJg7H/0jvgKXVUpf/j8nYTG+FmK7R7CRuVRTyoyXQg0G8zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Add support for forcing the link bpp on a connector via a connector
debugfs entry. During reducing link bpps due to a link BW limit, keep
bpps close to their forced value.

Add the debugfs entry to all relevant connectors: all DP connectors and
on an FDI link CRT/SDVO/LVDS/HDMI connectors.

v2:
- Move adding the debugfs entries to this patch.
- Rename i915_force_link_bpp to intel_force_link_bpp. (Jani)
- Select the relevant connectors via platform checks. (Jani)
- Use for_each_new_intel_connector_in_state(). (Jani)
- Fix 64 bit division vs. 32 bit build when converting str to q4. (lkp)
- Avoid division and addition overflow when converting str to q4.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 238 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 5 files changed, 240 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8d0a1779dd193..a9b1ec4cf0f75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -39,6 +39,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_panel.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -1325,6 +1326,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
+	intel_link_bw_connector_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 87c666792c0da..fe14a92ae8c65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -172,6 +172,7 @@ struct intel_display_platforms {
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
 #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
+#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
 #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
 #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
 #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7415564d058a2..23e3e6f204741 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -550,6 +550,10 @@ struct intel_connector {
 		struct intel_dp *dp;
 	} mst;
 
+	struct {
+		int force_bpp_x16;
+	} link;
+
 	/* Work struct to schedule a uevent on link train failure */
 	struct work_struct modeset_retry_work;
 
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index a10cd39926075..b51b62e04fe59 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -3,6 +3,11 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/ctype.h>
+#include <linux/debugfs.h>
+#include <linux/int_log.h>
+#include <linux/math.h>
+
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
@@ -10,11 +15,33 @@
 #include "intel_crtc.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
 #include "intel_fdi.h"
 #include "intel_link_bw.h"
 
+static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
+				   const struct intel_crtc *crtc)
+{
+	struct intel_digital_connector_state *conn_state;
+	struct intel_connector *connector;
+	int force_bpp_x16 = INT_MAX;
+	int i;
+
+	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
+		if (conn_state->base.crtc != &crtc->base)
+			continue;
+
+		if (!connector->link.force_bpp_x16)
+			continue;
+
+		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
+	}
+
+	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
+}
+
 /**
  * intel_link_bw_init_limits - initialize BW limits
  * @state: Atomic state
@@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 	limits->force_fec_pipes = 0;
 	limits->bpp_limit_reached_pipes = 0;
 	for_each_pipe(display, pipe) {
+		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 		const struct intel_crtc_state *crtc_state =
-			intel_atomic_get_new_crtc_state(state,
-							intel_crtc_for_pipe(display, pipe));
+			intel_atomic_get_new_crtc_state(state, crtc);
+		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
 
 		if (state->base.duplicated && crtc_state) {
 			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
@@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 		} else {
 			limits->max_bpp_x16[pipe] = INT_MAX;
 		}
+
+		if (forced_bpp_x16)
+			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
 	}
 }
 
 /**
- * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
+ * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
  * @state: atomic state
  * @limits: link BW limits
  * @pipe_mask: mask of pipes to select from
  * @reason: explanation of why bpp reduction is needed
+ * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
  *
  * Select the pipe from @pipe_mask with the biggest link bpp value and set the
  * maximum of link bpp in @limits below this value. Modeset the selected pipe,
@@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
  *   - %-ENOSPC if no pipe can further reduce its link bpp
  *   - Other negative error, if modesetting the selected pipe failed
  */
-int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
-			     struct intel_link_bw_limits *limits,
-			     u8 pipe_mask,
-			     const char *reason)
+static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+				      struct intel_link_bw_limits *limits,
+				      u8 pipe_mask,
+				      const char *reason,
+				      bool reduce_forced_bpp)
 {
 	struct intel_display *display = to_intel_display(state);
 	enum pipe max_bpp_pipe = INVALID_PIPE;
@@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			 */
 			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
 
+		if (!reduce_forced_bpp &&
+		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
+			continue;
+
 		if (link_bpp_x16 > max_bpp_x16) {
 			max_bpp_x16 = link_bpp_x16;
 			max_bpp_pipe = crtc->pipe;
@@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 						 BIT(max_bpp_pipe));
 }
 
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason)
+{
+	int ret;
+
+	/* Try to keep any forced link BPP. */
+	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
+	if (ret == -ENOSPC)
+		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
+
+	return ret;
+}
+
 /**
  * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
  * @state: atomic state
@@ -245,3 +297,175 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 
 	return -EAGAIN;
 }
+
+static int force_link_bpp_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
+
+	return 0;
+}
+
+static int str_to_fxp_q4_nonneg_int(const char *str, int *val_x16)
+{
+	unsigned int val;
+	int err;
+
+	err = kstrtouint(str, 10, &val);
+	if (err)
+		return err;
+
+	if (val > INT_MAX >> 4)
+		return -ERANGE;
+
+	*val_x16 = fxp_q4_from_int(val);
+
+	return 0;
+}
+
+/* modifies str */
+static int str_to_fxp_q4_nonneg(char *str, int *val_x16)
+{
+	const char *int_str;
+	char *frac_str;
+	int frac_digits;
+	int frac_val;
+	int err;
+
+	int_str = strim(str);
+	frac_str = strchr(int_str, '.');
+
+	if (frac_str)
+		*frac_str++ = '\0';
+
+	err = str_to_fxp_q4_nonneg_int(int_str, val_x16);
+	if (err)
+		return err;
+
+	if (!frac_str)
+		return 0;
+
+	/* prevent negative number/leading +- sign mark */
+	if (!isdigit(*frac_str))
+		return -EINVAL;
+
+	err = str_to_fxp_q4_nonneg_int(frac_str, &frac_val);
+	if (err)
+		return err;
+
+	frac_digits = strlen(frac_str);
+	if (frac_digits > intlog10(INT_MAX) >> 24 ||
+	    frac_val > INT_MAX - int_pow(10, frac_digits) / 2)
+		return -ERANGE;
+
+	frac_val = DIV_ROUND_CLOSEST(frac_val, (int)int_pow(10, frac_digits));
+
+	if (*val_x16 > INT_MAX - frac_val)
+		return -ERANGE;
+
+	*val_x16 += frac_val;
+
+	return 0;
+}
+
+static int user_str_to_fxp_q4_nonneg(const char __user *ubuf, size_t len, int *val_x16)
+{
+	char *kbuf;
+	int err;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	err = str_to_fxp_q4_nonneg(kbuf, val_x16);
+
+	kfree(kbuf);
+
+	return err;
+}
+
+static bool connector_supports_dsc(struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+		return intel_dp_has_dsc(connector);
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		if (connector->mst.dp)
+			return HAS_DSC_MST(display);
+
+		return HAS_DSC(display);
+	default:
+		return false;
+	}
+}
+
+static ssize_t
+force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	int min_bpp;
+	int bpp_x16;
+	int err;
+
+	err = user_str_to_fxp_q4_nonneg(ubuf, len, &bpp_x16);
+	if (err)
+		return err;
+
+	if (connector_supports_dsc(connector))
+		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
+	else
+		min_bpp = intel_display_min_pipe_bpp();
+
+	if (bpp_x16 &&
+	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
+	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
+		return -EINVAL;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	connector->link.force_bpp_x16 = bpp_x16;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
+
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct dentry *root = connector->base.debugfs_entry;
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_DisplayPort:
+	case DRM_MODE_CONNECTOR_eDP:
+		break;
+	case DRM_MODE_CONNECTOR_VGA:
+	case DRM_MODE_CONNECTOR_SVIDEO:
+	case DRM_MODE_CONNECTOR_LVDS:
+	case DRM_MODE_CONNECTOR_DVID:
+		if (HAS_FDI(display))
+			break;
+
+		return;
+	case DRM_MODE_CONNECTOR_HDMIA:
+		if (HAS_FDI(display) && !HAS_DDI(display))
+			break;
+
+		return;
+	default:
+		return;
+	}
+
+	debugfs_create_file("intel_force_link_bpp", 0644, root,
+			    connector, &force_link_bpp_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index e69049cf178f6..b499042e62b13 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc_state;
 
 struct intel_link_bw_limits {
@@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 					  enum pipe pipe);
 int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *new_limits);
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
 
 #endif
-- 
2.44.2

