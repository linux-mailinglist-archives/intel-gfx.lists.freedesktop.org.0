Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AEBA1B347
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14AEF10E944;
	Fri, 24 Jan 2025 10:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grtCCU1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364C810E944;
 Fri, 24 Jan 2025 10:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737713301; x=1769249301;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=J3XmZXuK/YWYwjT8rxmBlnrSO8ZuY4r5XA8WuHjF5t0=;
 b=grtCCU1nB4hRvvdaxI79tNCHEJO+r/rvVlDYrHbEg6mT5H0w4oju4WGz
 jQjSMCCNOd3n35d1i0oIMony1jjOw9uFI/9x9yCx4/ivuZ5SrSqKUY6+F
 02J8SCHy8X5HBXhq7z0aKziirNpF84ZqjqdhPHvRirtfLX5+XZNusn9cG
 OeMoMXCCd5UKnDK/uOPdgK/doFSjRDIYafA8Qdxunnk2ZEtVWUpO41uug
 YEL974/x6+yFT6gsOcTa+SVnHg6XCR67JvV3w65SLx8sJ0BZSWQu/nuJe
 Ifs4D9OQSpt0g/qpNFcusyBbD1A28aKwf8FJ08UnLj5Xe6ZuA96cg9XF6 g==;
X-CSE-ConnectionGUID: HTLBijjQQxaNyWHutZkHPw==
X-CSE-MsgGUID: XTYQyc/iSz2ezWT4oZy3/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="63596609"
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="63596609"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:08:17 -0800
X-CSE-ConnectionGUID: 5+MTCYF+RE6pAJfFxKb/nw==
X-CSE-MsgGUID: NPV++YPRSdGGsKQ3R01ZYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="107855677"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 02:08:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 02:08:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 02:08:14 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 02:08:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xy7Nuydm3ObEJ3JWbnkRPYgiDu3jjEZ/sJg1VHybXpd1SEK0h3QBkfqxwUD0z++mQ3a6jkCsAOpJFO3jFd0G0+Rr6IHFOGh0QJxE/ka3KihHYcEbP/xJFnw4Vh2LYT0UBgBiDY4hHGQyWzt/0Keoi+urZmWL5RNZb/kLRJ1k2SeEnPDpwtXz9Yzd8/4uuQAhrwDvXXjegonDy4MAzzS6cSEkgSf8yZtl2ymp0OkufpR6vLDDHeirGxN6q4g2XSZkApYndttVS/NG1pzr9d2776wPkwd3CBwzyhWe1+FDTWJA3CmpuaMImn0DXqwxgqUFOff7U+pSNqi3OONcUbKZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ju8KQ5ra/iAdoKhe/2YbXqJ7PDw6sn+rbISTqeuPDY0=;
 b=rmcF580/RiHpTeRAKxCQ2/agY0s1luw6F4nCO6ACsRLfFPSJ1pN2U2VC1pP9ngxhOtytSo2OlVIi1LI9SjMdOGUgvnK1ZACiyC5+qZa8DAD9uduk9ugC7Lu3g3tu43yLOk7n7BPv/g3JZ0nFkZJGgbwC6QHha7/nVfk8rDxFXUHQL3F9lAkWgWQw+TXTHNMR4GBbq6ur3InmekGqX1dEARIPaQOdRFr+GK3YUv4pY3dBMnXqW4rw0Q37zdjKq3XNCDQ2+zEmxwtuncqq9XuBCiKclfshvVtvfJXqINtnANbXbS64gt9EyQ1OsGPt6C63zy1kUXMaUQEmy7xcgZUpWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB5813.namprd11.prod.outlook.com (2603:10b6:a03:422::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 10:08:12 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8356.020; Fri, 24 Jan 2025
 10:08:12 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 24 Jan 2025 10:08:08 +0000
Message-ID: <D7A7Y85JQKH8.130HBENOK5D0J@intel.com>
CC: <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?q?Re:_=E2=9C=97_i915.CI.BAT:_failure_for_Revert_"drm/i915/gt:_Log?=
 =?utf-8?q?_reason_for_setting_TAINT=5FWARN_at_reset"_(rev2)?=
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
 <173764757380.3595954.4113005804078016073@b555e5b46a47>
In-Reply-To: <173764757380.3595954.4113005804078016073@b555e5b46a47>
X-ClientProxiedBy: DB9PR05CA0022.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::27) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB5813:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c766223-9604-4048-9b65-08dd3c5f02a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZURnUTFzWkl6TkgzN0NhSWlSS1lCNnR3M1BraEFKNGsrK1ZBejFyTW1HZlFS?=
 =?utf-8?B?WTA2QnlxR0VSV2xXNHBvMGhIMHdXazFBT2VaMk1TdU9oTzdYR0Q5Wm9aV0JE?=
 =?utf-8?B?N2tlOU1oRzNFd0svNkp5c3JwRC9RSjZrRmxZcjgyYnQweGs5dnRoV3VLMTNT?=
 =?utf-8?B?Q2VEbnhITmNaYU8wbThhSEtEK1ZERGpWT0RxKysrRDdwZVhROWhQNjRDOHJP?=
 =?utf-8?B?UnpDYWMyQTN1S2JBOE9MVUFtN3o0TkRJNjdpNFM4anEyVWpoWjlhRzdRbWRJ?=
 =?utf-8?B?Q2VSU2kzc1JoV1NZOStzS0JjM0pRRERGYTBuMzF4RzRHU0UxNjUxMkExV1Uz?=
 =?utf-8?B?K09zTzNWL002YisvZHlUT0YrRkpJcHppaHRFYytEbFVKZmFrSEhDU0xLQlhB?=
 =?utf-8?B?NEZkN3Nra2NaejJJUEZha3lFMmtHQ24yOVR1MEM2WGdVNFFUZ3FnbWh5VFkw?=
 =?utf-8?B?aVJLNVZ1SzFobVNQeEhadGFzMTNJNTR4Vy80alQzK1VhVDBoNk9JVC9ha29D?=
 =?utf-8?B?U2hkbllOcDFURjhleHVNVnIvTURSMUdzRVBtaXhtMVVydG5oU2VmQTZWbVRa?=
 =?utf-8?B?NFhYRTlXNXkxSEd1UWhaN0lQZmZMM01vQlpjV2JBRld6U0ovUUNNU3JHUHJq?=
 =?utf-8?B?NGxIZ0lRK0FuUVJJZ1ZkZXJMa3RyZ2RXaU5kRktocWhGeG02MUg3M2g0L3A1?=
 =?utf-8?B?ZUtiN284UnUvUElpclpaSmh1bFcwd0NDeHdTczc1MGFyWFlkSXBxMXZwWE03?=
 =?utf-8?B?Q29QamtJLzR6N1hwWVl4VzNyVWJzVzVHZVpuMzRwRHlKSjkydDNrZnlsMDQ4?=
 =?utf-8?B?R1h3SGJ4Zm9ycExRREdvcEtxNlFENmFTN09mY0oxZkVBZjBOU09sVCt0Q2pv?=
 =?utf-8?B?YnNOQmxneWJtVlBQMnlTVkUzTzdNNHd0Q1Z1eG1tTUpNaW9tUy84MlR1OXBo?=
 =?utf-8?B?U0dTZlRXd3FZMW9DSmlVcXU4NGh1S2FxOHlqaytlYzRiZENKZ3hITlZ4eUl3?=
 =?utf-8?B?UFFsVkF4RFhkYVFoVUd1c3ZyZ1F2TVZyckdRb09qSk1JL0t0NW5xdWZMTEhT?=
 =?utf-8?B?TTlRQkFsRStzakxMSDB6K04rY3VFaHYzK1E0TTRQR3Q5QzJ4SzE4QjBsa1BK?=
 =?utf-8?B?UnpQNFZMZThpNzU1YWlkZVM0MDcxQjRRNXdLaUNyeldvclJScVFHT3YzYzNJ?=
 =?utf-8?B?dmpFWmNXUlZzTVV0OVE3azZ5NzIwUW5TMnIyTEVrZStna3lUOVM0ZjUwL2lw?=
 =?utf-8?B?aTA5TnNwM1J0TWF2RmtHcHN6bTVqRkFyb3FlREY2bEJodEJxNU1PUUFsYyty?=
 =?utf-8?B?czRoTzhMWjVNNjdFYUYyZXF5Z3BHUk9FSXcySU9DRUFFN0FwNGhwVzl6UTA2?=
 =?utf-8?B?VFdhYnpwZ0RWcENjaElkU1lpQVE0ODg4QTVhK3E2UTVNY2FZLzNiMnhDL3J6?=
 =?utf-8?B?QW40cWlNajR4M3FnNXVRZnRuZmZOQlBpVDNzeVVaSkFaZm9YN3ViV04yK29h?=
 =?utf-8?B?Ly9YZDdSbXZ1enMrL0djeFlkaHVYQ1JhT2trYjlic1VlWWVEMzJRMk9HZGE5?=
 =?utf-8?B?aEVaRExKdTZFVFBGQmc2SVdEVmwxNmxNTzJWT0Q1bm90STBFZFNuZXNvdEhH?=
 =?utf-8?B?bG5iRURHakJ5b2JKMXIxV0ErV3ovbGJrakpYSDFJWXdOVWk1eCtFUGNxUWpD?=
 =?utf-8?B?MjA5YmhuQ0RkaXYrSnMvaHhXV01rNGMzR21EeW9HK2M3SFYzZ1hadnlKUG1i?=
 =?utf-8?B?UVN5bXlPbGxObW5TaHZxTVN2N0xBUWpiSkRGN25zRGRpekRpaE8rZjJjeDFX?=
 =?utf-8?B?bm51YXd1d0pEQUxQRms0QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzJUM1FDYm96UDV4WHJwS0E5U3RHbG8vemxJeDVVL04yMkRabTIxNnNGSE1u?=
 =?utf-8?B?UlZxVmltL0dIc0xxOVJnbFB6RmQyYmIyZFVpd0hCWlN4V0l0NEIxd21vNEZt?=
 =?utf-8?B?WnU3YXlLdGF5S0FKWDVqOEUrK3h5OWdkOWtYb1kzZ3VCUGRVUWFaaTlITW9E?=
 =?utf-8?B?bXJHVjI4YWVScDVIVHY2TFZtVXo0YWk0RVAydGtsSkt2ejRMRldRbkR4MWI5?=
 =?utf-8?B?UWI1bU1PaHFGQktzY29BWGpvMndRaFdXSGx4SUlCS2NkeFF6cHprSnlaV2F5?=
 =?utf-8?B?NFZqRk15eWhiYVdxYVlPeDBPRm5FM01DczFNdnVrMlNGbHpsVlhoTThjU3lH?=
 =?utf-8?B?d3ZzamFUOEUyK2M3YldZQWV2cHNIUlI2b2pHeWRTTk03UW8zTmR3UUZrWXhX?=
 =?utf-8?B?ZHlCS2txc0xRckZUT2lUUHJ6MXRNVVE2MVlEZGJ0Skp5YTdFcksybHNKb3Yz?=
 =?utf-8?B?eTE4ZVdJVEpxbmlGZ3dXNndoR0l1ak04Z09JTHNCMy9IWXk4WUVBK0JzUWdM?=
 =?utf-8?B?dkFMcGM1SUk1aFZwa3dvOWhLUEd1cEQvc3hvc1hHUk9YeXlTQUVmeWNsVzVJ?=
 =?utf-8?B?RUVuWjhLVDErQ0VNdHRucXNJOFpNTXFxeDE2VzVCVXRiVGdFeUszTHIzdFF2?=
 =?utf-8?B?WDNSSUpXaGpGL1NDQmtjWnNLMEdxOUVXYVlnK0lPeWczV0lCSHRjWTErOVRn?=
 =?utf-8?B?N3ozdXBwMytJODduenVjb2YwMFFWMVNScGdMNEdJUy9qK20xcjhNT2NoU1pC?=
 =?utf-8?B?NXVNWjZLUTBZMG9tbGI1ZExWeXEvd0NSZllSbkRHUVhjUmpNSEdmb0plVGZT?=
 =?utf-8?B?OTRLVUV6cVMyZ0srMEx5RXhGMTREZTYxQnAyWUdNakN4OFdTTUh2SndwREVQ?=
 =?utf-8?B?VGhZUUtwMXVqOHJxNVVRU2xLQXhqclJEMCs4ZTRFN1Z3STd0ZGZCK1BwdmFv?=
 =?utf-8?B?ejg0K0F6L29CY3VKY0JaVzNtUUxYSlpLMHArc2dlWERISGFscjJrbGlTeHN2?=
 =?utf-8?B?UXR0ZXQvaGVpalNtT1R6TnB3ekV3UmVaeXpOakpXcE12Q2d5dXpiNlVxSlRZ?=
 =?utf-8?B?V2VqYlRWK3cyZ1UyL3NqRHBMc3Q0MVRrMjZ3QSszbCsxL0grcFlrd1JiOFFL?=
 =?utf-8?B?OFNXNzg3ak03eTRsVVAxUTlXbDFwclBJbzlIcEgwU3lqL251VzBiclpsdWtW?=
 =?utf-8?B?OSt1NFFUeis5YnppaHorR3Nad1Y1Q0VSR0syWU9OMmZwL2taRm93Nm9RM2Fj?=
 =?utf-8?B?cXY5UDJoNzJrRkVQOURjc2NVWUo5VlloeXFuTnhhRkhUSzU4b0JZcENFYUtD?=
 =?utf-8?B?QkFWVmh0bWRQY1ExOU9RUng1Mkh5d2IzTE11eVBUMUZUTkt6TzhJMFg3M1hE?=
 =?utf-8?B?Nzd4L0pJY2t5Y1I3amFEKzkzWGxGbjk5M0g4Q040MDFQYlhnS0swVWlpdXRD?=
 =?utf-8?B?cEsyNytWaVd0QksxcWhvMjNPZXg2c1BlSkw0ZUFtd3RXVms2aVczS21KRFgr?=
 =?utf-8?B?bWJobWpVWTVwZkxTOGVIYjBDVjFNNmJZM1IyWTkzVTdJWVZZRmRvZ2U4SVZy?=
 =?utf-8?B?M2syM0s0c25xeStiZXBjUjJqRGJGckhtVnk0Ly8xWTNLSldCNjUyN1hsaCt4?=
 =?utf-8?B?UzNyK0lNc1Y5SVRBVWZScXcvUlJ3UDBLc0Z4dFRrWHdweDUwc1paZWpLR2Nh?=
 =?utf-8?B?M3lPZkh4b255VzMrQUZLa2lhTGpQeUdkWnVNcEcwRU5BMnVTM3JFRnp3ZjV5?=
 =?utf-8?B?dnEvZ2R0NmhoYmFZNzNVUmVXL3JjS3hDVjl1VUdLWTFtbjFmbUlUVEl2d295?=
 =?utf-8?B?TXJrTDFOOCt5dGtqTGVmb1FWZGV2b2ZHa1RXTzBQZ3JKQ3Qzc2dWY3Rub3Y2?=
 =?utf-8?B?S1BkamNvS2tEaUx4VlV4cU5SVk1SL2ovZWhHd0w2VUVYRERPTlFwNjN2TFNY?=
 =?utf-8?B?czYrS2hnMVFON0hPSDJBM2xJZ1dPTURPUWM5b2EycEFXQSsvalJyK1ZIK01S?=
 =?utf-8?B?MGdLVEVDUWNkVWp4MHlXOFUrejIzejBmUkdTazNEYUthbnh3RW5Mc2NZUDRI?=
 =?utf-8?B?M0k5TSt0TzhsQ2lhU1J4R3UzOG9pbGdWVFM3Mmw0UHdmSzRXY3Q0dFZFY2Qz?=
 =?utf-8?B?aDFhdzFxK3cwTW15NG1nOEY4ektTMzFFT0dSU1NPMis0akdkOXA1dmw1ZWJl?=
 =?utf-8?Q?FP0CCi99TWk5R+s8fXcOnfk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c766223-9604-4048-9b65-08dd3c5f02a7
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 10:08:12.1679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CKikbIimBdBz26/ZVqX+jCRiwDeqEBAs+M8g+CQWqOv8XbP/5szF675Zezz4Qjck8/wrMxlSI8ASr56w6gm0NI/edwgIT2G8aQxtRZe8SQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5813
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

Hi igt-dev,
On Thu Jan 23, 2025 at 3:52 PM UTC, Patchwork wrote:

Below regresion are unrleated to the change. This patch only revert logs.


--=20
Best regards,
Sebastian

> =3D=3D Series Details =3D=3D
>
> Series: Revert "drm/i915/gt: Log reason for setting TAINT_WARN at reset" =
(rev2)
> URL   : https://patchwork.freedesktop.org/series/143885/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CI Bug Log - changes from CI_DRM_16009 -> Patchwork_143885v2
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_143885v2 absolutely need =
to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143885v2, please notify your bug team (I915-ci-=
infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143885=
v2/index.html
>
> Participating hosts (39 -> 37)
> ------------------------------
>
>   Missing    (2): bat-rplp-1 fi-snb-2520m=20
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork=
_143885v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arlh-3/=
igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143885v2/bat-a=
rlh-3/igt@i915_selftest@live.html
>
>  =20
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_143885v2 that come from known i=
ssues:
>
> ### IGT changes ###
>
> #### Issues hit ####
... cut
> Build changes
> -------------
>
>   * Linux: CI_DRM_16009 -> Patchwork_143885v2
>
>   CI-20190529: 20190529
>   CI_DRM_16009: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://anongit.=
freedesktop.org/gfx-ci/linux
>   IGT_8207: 9f36f9f9e8825a67b762630c2b31628ddcda5c10 @ https://gitlab.fre=
edesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143885v2: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://an=
ongit.freedesktop.org/gfx-ci/linux
>
> =3D=3D Logs =3D=3D
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
143885v2/index.html





