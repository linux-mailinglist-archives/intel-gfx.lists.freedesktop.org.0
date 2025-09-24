Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 951B7B998FF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5C510E703;
	Wed, 24 Sep 2025 11:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M54J88+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC42410E6FD;
 Wed, 24 Sep 2025 11:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758712879; x=1790248879;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=rO09Y08QK7jgn0+7e2/ato5mVEvQdRnHT9NlVgLEchs=;
 b=M54J88+kUuPM/IW8GgI4BWwnPNW4du6Y66gb+/3Utg8OaI+VnX7b8vjm
 qjECoBplCU4X060fHhHGOSuzq89ieMd2k+j0pJ3C/RXrPWcl1RvalAL55
 je/kwumdpHH1IqrpEI/IEsLcjDQXjXfh0skCFFdWLUEitHUmUDSXsRz+Y
 zvdq6MRydmpAmKonbM6IIyivAtQ3MkdDS5HuuttvBi9CVK9znuqZ9Lm05
 hHfH08Neyt/neAaXZrC2sSqoyNeGx4k3Rc7EGlLICgPXLpApsVv5N52KY
 nxp+4Rp8dT2A6g1idoDNdNLfBMkGhczxO7IaNo3pR8OQfX0hC/Jb4PQmX g==;
X-CSE-ConnectionGUID: Eh0llfAtRpShyPueF9UGJA==
X-CSE-MsgGUID: vtF5xHbpT/yVPYvpv7O/SQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60947519"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208,217";a="60947519"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:21:19 -0700
X-CSE-ConnectionGUID: Lg6HxUBdQu66R5fQnFKl8A==
X-CSE-MsgGUID: oG895HgUSIGKkwziQGzJlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; 
 d="scan'208,217";a="177786438"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:21:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 04:21:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 04:21:17 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 04:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TlCcFq2MyTp53xsYe49kqRdi1B5NYdsjgrINhaCHT7O0JRc8sVjWo6OhxoB0Gl/d/0QtkAt7TLEenrk1I5Of1gYNak1orUOK+pjpplA2mXCTanMAFeDZ/cj5FwTTTRx14PvNLKxUw/e5NAry8s9BTiCw/pYbH+xFnsQuNLe4FsgxymzbK9a4sCsiTxRxbuj/FS/cM86L+JhyPhxYOeAKhhup6nUhzPMP2L/NOz6u/xxtHOcG21PgVFDmqrfIPfj6Ot7vySzJnfGxrDFiyAZFDg2iInj55WoLC91XrEmyqNsuZM4caakPyJDFnM9+hbnwWPYMHH3F8To0tLX2n1yhpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/glEHG40Sqx+bkAwKLMxQhgB2vGAUPE5v9xwI7I7XM=;
 b=iKvsbOGMht3nWMqiHyszw+hKkqeiSXMNZDvRFZTsWvXJ2go2h3LzXDGbedaATS/qpiAYgeYF9PVcdkTwDQQRV4RVzVFretBveKeKpvJq5tmjnRe4P8/nrnNXLnr8iQuffexFpARu9kLQ3NOpXSv2KksLtrd4RtAvh/soSgWr6b+Ik2iKPnb9KuCSKJV3d0uAjcDOtQf8/R2enCJ++5GHBKjPsxtz+MS+2WJVmG+FgRU00ScCqjz0FAOrp0VH/7ySSBfn/VSwaQ2qybB9WahI9XQjQuzbpRLCY6+N40K/AT0/ZK1w3106pVZmA3o5jddZgb5wnOD5Vqo5n5asDQgADQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 24 Sep
 2025 11:21:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 11:21:12 +0000
Content-Type: multipart/alternative;
 boundary="------------9oSxmnb0LkkfTax1xJBeiNMR"
Message-ID: <fbef3a9c-10f9-4b65-bbb8-da61eb833439@intel.com>
Date: Wed, 24 Sep 2025 16:51:05 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?vrr=3A_Refactor_VRR_live_status_wait_into_common_helper_=28rev2?=
 =?UTF-8?Q?=29?=
To: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
References: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
 <175861910098.357031.4995431610634037439@1538d3639d33>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <175861910098.357031.4995431610634037439@1538d3639d33>
X-ClientProxiedBy: MA5PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: 27a45aeb-7707-4bad-889c-08ddfb5c776c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|8096899003|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TG5oRlVTVHFYT0JSQ1ZaSXZIY2t0ampGRkZUYW5EZzM1KzJuMzBnWXc4b1hM?=
 =?utf-8?B?d1MwQ2J1dis4cXJpaG5tYWVzYXdzNmxUZVZiamhLTTYzcnk1cllzTE1yUGtI?=
 =?utf-8?B?ZXpub2Q5Um5xZEtiU1hxMnc5a3oyZ2hWY0NyWTRaTlZKTDhBZzVEZEZQcFFK?=
 =?utf-8?B?dFN0U3Z1VXgzYXdTWGNWcVlrZWpoa1pRQXNhaklPemw3dW1NY3gxYnVYblJR?=
 =?utf-8?B?d2E0czFYeENWejhKWW1ZRnNYK1NSamZ0U0J3STBwa2pyN2xjUTk2cDVVTjdn?=
 =?utf-8?B?L0h1Um40aVRIZ25xVW94SVdQTUdBMU91WlhwZ252SSs5a2dOc1ZFVWFuaTcw?=
 =?utf-8?B?bzVmVDVzcjJhbWg3UHVaUk0xTW4rdXFKZE5raFl4bnhTdFVKV2xEZEdoemRx?=
 =?utf-8?B?Skl3eXh4Z3M4S0ZvcWtqNFpoek9qRXFYc0NBMlVYRnBYWjYzckRwRnhHaXNq?=
 =?utf-8?B?TE9zZkFhM29INkVjb1NtZkwrQ0ZBeHB2bytqVHk5aTBqcnpza0R4YjhnQlM4?=
 =?utf-8?B?SkF6RDBYdlR1SHM3cURINlduY0hrYlNZSGE5YWlZTTY1Rm1iTW5vVy9QYU1B?=
 =?utf-8?B?bVpNNDNBNDZHTndVaURxOU1ha1lVUGE2UFkvelNPZUM4TVczNy9WTExWY2NE?=
 =?utf-8?B?ZnMwK0RRdjVpTTBtVVk5bWxON2pMTlhZVCtYSktTVW9CVFVmamt2OEV1M1NY?=
 =?utf-8?B?dmsyb0lUVTJaVlczbGlYSnMrZ3N1aGdQMnpud21rSkhOY1htZmNJcTlVSW5N?=
 =?utf-8?B?STBtSFVYdDBwa2xTRnlnbXpLL0pqTXUwZy9iSUxXWkVaaDMrMitPV2JMREQy?=
 =?utf-8?B?Z2U5amhvbkpLYnlvTDIrRVlBVVJtRDVXT2RrNmNXOHk4aW9YTE1CN1M1LzlB?=
 =?utf-8?B?cDBZaTQwY2w5SGJ2YnhxdlB3R0g3bmFPaitzMXY3MWU1V04vSXBoL0xueDRs?=
 =?utf-8?B?QVV0TlA5SVhLdXZKQ1NReDQ0dGFkVUdHcjR6cnRBWEtYZFRSaENLYVVWVzE4?=
 =?utf-8?B?dHN0bXl0T2hOSXUvdkNKb0JIcjI1UnBSSUZaZHpmREhlM0ZqK2ZkNzBNbmpD?=
 =?utf-8?B?VFBPai8zNTZsNGE2TDR2OGxjVkgvdEp0dCt5VXl3bHg2Kyt2b3psYTlZY05p?=
 =?utf-8?B?c1BlTnI2VTQ5cnc5cG5EMkRjTDhVaTM1Q1FEaG9RbGxUbGYxaERlcVdMcGt6?=
 =?utf-8?B?UFZmQzBRSmltR1J1azUrbUl6VFZLMXVkN2VpWTNxUTVFSzJGRVZSMlZFeE9F?=
 =?utf-8?B?SFVDV1lEbXlVUERNRCtLRU8wZzdPL2hFcnJwdTluSUFKTHZ6QUVLb3UxakRi?=
 =?utf-8?B?S3JIbkFUaDN2RG44alVlS1lwdU5vZm0xZjVWL0xpRkV4NTUwNjU5Y0NxZ0NT?=
 =?utf-8?B?aUpFbUt5dVp3bHFwaURqbjNhN1VHUUJiSXJsejhibHdsQWdDMktWYThqQmpV?=
 =?utf-8?B?a3hrTTRZL1JjK1VjYUZrZkJXSkVHU0k2VHR1NncwdzdqcTVJeTBJSUE5TVBr?=
 =?utf-8?B?dEJuSHgxcWJMRmUweFlPTXhxWUZIKzdiMVBJT1MwNVA5MkNUYXBjMDdtRXJS?=
 =?utf-8?B?RnJDRU9EOGx5NGFsanlyeVljNnU1cERlT0R6NDRnM3R2Z0ZkUTZHdDNydzhC?=
 =?utf-8?B?Q1FZOGtzZnhNUkk1SVdQb1hFYzlrcTRTUWhVKzRRaG1lcDRBb08reFZCUHFj?=
 =?utf-8?B?aGMxY3hiUFNZcjIzc3BDclZaKzlNOTE2Y2JpNnpJQURBOG5BVkxXMTYzYmZB?=
 =?utf-8?B?Y1FRUnROdFoyc2J0U052bGVSdjhvZDVVMGNXNkJ2emk5M2lVbUVyOUZ5R0l4?=
 =?utf-8?Q?slvin9nPMOEcivDsgKxKtFmawyPqNGsWDZkcI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2VVeStFRzJXaUwvZnZ6MzhNK0NVMUIxMnVvZStxS1FMbk9yWjRKNCsrd1Jn?=
 =?utf-8?B?TG1kZEh0aGkxbkxWRnVzV1FCTHBaMWRHdmRmOFRCZStFZ0JPUFNOM0NYSy9q?=
 =?utf-8?B?bUg1MEpKS25RV3pmSWNaVno0U0RUY1ZheUVEV1ZFMEhZRWFlMjVLenhhT3E5?=
 =?utf-8?B?U1FXVlc2cVRaMDlpeEkwUjE1dVRacDZOZ2x1bEEvd1J4Rk1WdXA2c3o1WklK?=
 =?utf-8?B?eXN1SE0wZDZ3Mmd6MnBBOWMreFdjK0p4bEROUUpNdjJQTlc1ZGtCK05uVzQ3?=
 =?utf-8?B?MUFFNHZndXJpajluTVFPUmtWYlNDeFpWdTRTUTVqNUtZZXB4SW1FWEpqVmFl?=
 =?utf-8?B?QW1xMmIvKzNNOFJJS3pmcStLZiszeVFlV252MzdHbHVnM0lDVU1JT0xnWDlD?=
 =?utf-8?B?dEhUaXRJZ1ZIak1IbDArblRRMmE0WUg0UGN4c3hPNFcycUhBRGl1dzVmbGdk?=
 =?utf-8?B?ZkFHQW9JNWdZenNteEdmMTNOdE9qa056anBVaE5yeTA4RFdUWGRBY2hxc2Mw?=
 =?utf-8?B?Zmh3bU1rTXgzcngvSUxuVkJkKzhXdXlMS2paZ3Vpbi9aaWtvR1lHUGF4ZmJZ?=
 =?utf-8?B?Z3BtRXI2Z2Q0TE5tdUxVb3FZTlJUc04zUmNTQWl3VXRSOVpVN09TRG8vTm9w?=
 =?utf-8?B?MmFaR2hONVhveFgxRzBNS0ZrTHhhQXM4dytmWGlFaXFjeHdLNUthaE5LZXpB?=
 =?utf-8?B?dS9GV3V6aUNCb1lDNHU4alFmTFhsVG9tczRWLzhXQjhia0ZlZEhJUGlKdFpt?=
 =?utf-8?B?d1BiUHF3c3IvMXRnS0VIOGE3UmFZbUo0bmZDSkhtdDhiQVQzbGo1VXdGc2NE?=
 =?utf-8?B?N1p6TzhoTkoxTTBuQm9XRnhQV1l4enNRS3ozWitMZUFRNTI3V3c3ck9ncG9x?=
 =?utf-8?B?aFo3NTFSczAzaXM3QVNXa3hVRDJEZFpReDRVZERnRVg3ZFRnRVA1ckZCUFJJ?=
 =?utf-8?B?VGJJTFRtb1RWOGMvbWJINEF6bnI5KzR1UjBMQm10b2xXVEJhbmdvTzBjZkFH?=
 =?utf-8?B?Q3hPYnJFWHQ0b053R0F5MXFHWlUwK2Nwd1ZEQy8xaUN3VWJGU1lDVXdFU3Jr?=
 =?utf-8?B?UjlqclNZblZacXVjektoZGthRDlqM0NuTjVHVmlQQnRKTmJmbXA3VlB1Tlpn?=
 =?utf-8?B?NlNZQmdWa204eWUrTmJqWEh5WWJ5cmRUNUZ5VDNLLzQyeGpUcm5OSjZ6YkMz?=
 =?utf-8?B?SEpHYlpRTWZBOWY1NWo0VFBCdzh3aDZXYkIrbnlwVHlvMm1yYUpIdGM3bjhJ?=
 =?utf-8?B?Y0lKUmZENkp0YXh5ZVhITWZQNkZQOVl3Uit4Z0MwRlQveWVkV3FlVURLMnAr?=
 =?utf-8?B?ZXdwaC9xcmlKcjJXWU1sampFek5oay94Ri9YTmRHZGd6Z0Y3dksvNnI0NXVm?=
 =?utf-8?B?RmpBcG1NTUx4VDdwM3oxNVpUaTFYaUFCV1ZCeGR0RW5OeXViSklPanpjUHJY?=
 =?utf-8?B?Szlpbkc4d09mdVVLTXNIT2RYWWZudi90Rnl2ZlphdW9OWFpYOWJyM05FZ0Z6?=
 =?utf-8?B?cVlONzJFenR5c3hhUDRqUUZma09Ma0RlYnRKTytHOSs3OWNXUFdnaG14ME92?=
 =?utf-8?B?Z0JpR0dzZmxUM2VlUzZqeGx1ZURPdXBmTFFJZEVjVnh0MlVZOG9lSnBpeFJR?=
 =?utf-8?B?T3gvUnZqbnUxc1BLUlJIOFJJdmo3a29qTVRnZ01wak1ycnRQSmp5U2xiTmt0?=
 =?utf-8?B?K1h2YTJMUXFrOGNGSlJISkRYclAxOWViVVp6R01jV1g4TmN4RHRSMXRmVU9E?=
 =?utf-8?B?YXdUQmJoek5CZTc3QTFhSC84V3RwQVlTU255bVNJQ2NjMW1rQ0RqS0lWOE5k?=
 =?utf-8?B?SEQxcFBIbWxmSEVZK2xsSlYyWURKVG44eDF3WmhWd25HV2Q0NjVYUzliWlhn?=
 =?utf-8?B?bTlNZ05WVjNUdW5JcS8zVjR0TDdKcEFMR2VqMDZPTDE1bmxhQ2g1SGF4ME5R?=
 =?utf-8?B?TFFUM2U3WFIvSUFXSmRyV1loUVgweGVobGlLNmlDeDVRTWVCRERIMkw3ZTRZ?=
 =?utf-8?B?d1hyNVgvSVJtSTRYYWRVVXc4eTUwdzZDTmdVVFplaVh4OEF4Ni9GVGROUG5Y?=
 =?utf-8?B?Vm9hMmZ1TlZZYmlKRDUxT1NadmZFK2Vzd21iQUhYRkNvWXFOcmM0aWpSbHdF?=
 =?utf-8?B?YVUwKzdVd1ZCVk85TnlzODF4Q3FCZlB6bTh3ZzhxVERQNnI5cXpCYlp4QW5x?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a45aeb-7707-4bad-889c-08ddfb5c776c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 11:21:12.3562 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AZvDRCX7zIJvzgOCUKyFa0GClEexVwRX5RBTckgVuUPbQ1aQGkalDuse0CJJndAXBRXPQRNtrAvIs6HtMW7QzilSnrE3v0kDKJn5c2sZlZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
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

--------------9oSxmnb0LkkfTax1xJBeiNMR
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi CI team,

The issues reported are not related to patch, request for re-report.

  *

    igt@gem_lmem_swapping@heavy-multi:

      o shard-dg2: NOTRUN -> SKIP
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html>
        +2 other tests skip
  *

    igt@i915_suspend@basic-s3-without-i915:

      o shard-dg2: NOTRUN -> WARN
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html>


Regard,

Ankit

On 9/23/2025 2:48 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/vrr: Refactor VRR live status wait into common 
> helper (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/153874/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_17254_full -> Patchwork_153874v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_153874v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_153874v2_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (12 -> 12)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_153874v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_lmem_swapping@heavy-multi:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html>
>         +2 other tests skip
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-dg2: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_153874v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@fbdev@nullptr:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@fbdev@nullptr.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582>)
>  *
>
>     igt@gem_create@create-ext-set-pat:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_create@create-ext-set-pat.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>  *
>
>     igt@gem_ctx_sseu@invalid-sseu:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>  *
>
>     igt@gem_exec_reloc@basic-gtt-read:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +2 other tests skip
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>  *
>
>     igt@gem_mmap_gtt@basic-small-bo:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_mmap_gtt@basic-small-bo.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +77 other tests skip
>  *
>
>     igt@gem_partial_pwrite_pread@reads:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-glk10: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#14702
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702>
>         / i915#2658
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658>)
>  *
>
>     igt@gem_pxp@create-valid-protected-context:
>
>       o shard-rkl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_pxp@create-valid-protected-context.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>  *
>
>     igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +2 other tests skip
>  *
>
>     igt@gem_userptr_blits@stress-purge:
>
>       o shard-rkl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@stress-purge.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>  *
>
>     igt@gem_userptr_blits@unsync-unmap:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gen9_exec_parse@bb-chained:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>  *
>
>     igt@i915_drm_fdinfo@busy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_drm_fdinfo@busy.html>
>         (i915#14959
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14959>)
>         +8 other tests skip
>  *
>
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         (i915#14962
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14962>)
>  *
>
>     igt@i915_suspend@sysfs-reader:
>
>       o shard-glk10: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@i915_suspend@sysfs-reader.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +7 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +1 other test skip
>  *
>
>     igt@kms_color@ctm-blue-to-red:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_color@ctm-blue-to-red.html>
>         (i915#12655
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         +23 other tests skip
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html>
>         +74 other tests skip
>  *
>
>     igt@kms_fbcon_fbt@psr:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3955
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955>)
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip@basic-flip-vs-modeset:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-modeset.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>
>       o shard-glk10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html>
>         +113 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#1849
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849>
>         / i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +18 other tests skip
>  *
>
>     igt@kms_joiner@invalid-modeset-big-joiner:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html>
>         (i915#10656
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>  *
>
>     igt@kms_joiner@invalid-modeset-force-big-joiner:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html>
>         (i915#12388
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>  *
>
>     igt@kms_pipe_crc_basic@read-crc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html>
>         (i915#11190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>  *
>
>     igt@kms_plane@plane-panning-top-left:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#8825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825>)
>  *
>
>     igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html>
>         (i915#14958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +2 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>
>         / i915#8152
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>)
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-a:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-a.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#8152
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>)
>  *
>
>     igt@kms_pm_rpm@fences-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#1849
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849>)
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         (i915#14960
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14960>)
>  *
>
>     igt@kms_prime@d3hot:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_prime@d3hot.html>
>         (i915#15026
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15026>)
>  *
>
>     igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         +1 other test skip
>  *
>
>     igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>
>       o shard-glk10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +1 other test skip
>  *
>
>     igt@kms_psr@fbc-psr2-sprite-render:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +5 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#14958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_vblank@ts-continuation-modeset:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html>
>         (i915#14958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958>)
>         +72 other tests skip
>  *
>
>     igt@perf_pmu@module-unload:
>
>       o shard-glk10: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@perf_pmu@module-unload.html>
>         (i915#14433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433>)
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@prime_vgem@basic-write.html>
>         (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
>         / i915#3291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>
>
>         Possible fixes
>
>   * igt@gem_exec_schedule@manyslice:
>       o shard-rkl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-rkl-6/igt@gem_exec_schedule@manyslice.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_schedule@manyslice.html>
>         +2 other tests pass
>
>
>         Warnings
>
>  *
>
>     igt@i915_module_load@load:
>
>       o shard-glk: (ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html>)
>         (i915#15020
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020>)
>         -> (ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html>)
>         (i915#15020
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020>)
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html>
>         (i915#14958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +2 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html>
>         (i915#14958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_17254 -> Patchwork_153874v2
>
> CI-20190529: 20190529
> CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8547: 8547
> Patchwork_153874v2: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------9oSxmnb0LkkfTax1xJBeiNMR
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p>Hi CI team,</p>
    <p>The issues reported are not related to patch, request for
      re-report.</p>
    <ul>
      <li>
        <p>igt@gem_lmem_swapping@heavy-multi:</p>
        <ul>
          <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-=
multi.html">SKIP</a>
            +2 other tests skip</li>
        </ul>
      </li>
      <li>
        <p>igt@i915_suspend@basic-s3-without-i915:</p>
        <ul>
          <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-wi=
thout-i915.html">WARN</a></li>
        </ul>
      </li>
    </ul>
    <br>
    <p>Regard,</p>
    <p>Ankit</p>
    <div class=3D"moz-cite-prefix">On 9/23/2025 2:48 PM, Patchwork wrote:<b=
r>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:175861910098.357031.4995431610634=
037439@1538d3639d33">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/vrr: Refactor VRR live status wait into common
              helper (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/153874/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/153874/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_153874v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_17254_full -&gt;
        Patchwork_153874v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_153874v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_153874v2_full, please notify your bug
        team (<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:I915-ci-=
infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to al=
low them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (12 -&gt; 12)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_153874v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_lmem_swapping@heavy-multi:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heav=
y-multi.html" moz-do-not-send=3D"true">SKIP</a> +2 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-=
without-i915.html" moz-do-not-send=3D"true">WARN</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_153874v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@fbdev@nullptr:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@fbdev@nullptr.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2582" moz-do-not-send=3D"true">i915#2582</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-set-pat:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_create@create-ext-s=
et-pat.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8562" moz-do-not-send=3D"true">i915#8562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@invalid-sseu:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-ss=
eu.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/280" moz-do-not-send=3D"true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_balancer@paral=
lel-dmabuf-import-out-fence.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-=
not-send=3D"true">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4525" moz-do-not-send=3D"true">i915#4525</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-read:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_reloc@basic-gt=
t-read.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3281" moz-do-not-send=3D"true">i915#3281</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_lmem_swapping@paral=
lel-random-verify.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=
=3D"true">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613" moz-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic-small-bo:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_mmap_gtt@basic-sma=
ll-bo.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/2575" moz-do-not-send=3D"true">i915#=
2575</a>) +77 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@reads:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_partial_pwrite_prea=
d@reads.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282" moz-do-not-send=3D"true">i915#3282</a>) +1 other test skip</li=
>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-glk10: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@gem_pwrite@basic-exha=
ustion.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14702" moz-do-not-send=3D"true">i91=
5#14702</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2658" moz-do-not-send=3D"true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@create-valid-protected-context:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_pxp@create-valid-pr=
otected-context.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send=
=3D"true">i915#12964</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_render_copy@y-tile=
d-mc-ccs-to-yf-tiled-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575" moz-do-no=
t-send=3D"true">i915#2575</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5190" moz-do-not-send=3D"true">i915#5190</a>) +2 ot=
her tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@stress-purge:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@stres=
s-purge.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send=3D"tr=
ue">i915#12964</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@unsyn=
c-unmap.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3297" moz-do-not-send=3D"true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-chained:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gen9_exec_parse@bb-chai=
ned.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2527" moz-do-not-send=3D"true">i915#2527</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_drm_fdinfo@busy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_drm_fdinfo@busy.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14959" moz-do-not-send=3D"true">i915#14959<=
/a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbu=
f-stress-pc8.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14962" moz-do-not-send=3D"tru=
e">i915#14962</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@sysfs-reader:</p>
          <ul>
            <li>shard-glk10: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@i915_suspend@sysfs-re=
ader.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4817" moz-do-not-send=3D"true">=
i915#4817</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64=
bpp-rotate-0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send=3D"true=
">i915#5190</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@dp-hpd:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hp=
d.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send=3D"true">i915#111=
51</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544" moz-do-not-send=3D"true">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send=3D"true">i9=
15#7828</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@ctm-blue-to-red:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_color@ctm-blue-to-r=
ed.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12655" moz-do-not-send=3D"true">i915#12=
655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544" moz-do-not-send=3D"true">i915#14544</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-si=
ze:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_cursor_legacy@basic=
-busy-flip-before-cursor-varying-size.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4" moz-do-not-send=3D"true">i915#14544</a>) +23 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-fractional-bpp:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_dsc@dsc-fractional=
-bpp.html" moz-do-not-send=3D"true">SKIP</a> +74 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955" =
moz-do-not-send=3D"true">i915#3955</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-abs=
olute-wf_vblank-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-d=
o-not-send=3D"true">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934" moz-do-not-send=3D"true">i915#9934</a>) =
+2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-modeset:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-=
modeset.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3637" moz-do-not-send=3D"true">i915#3637</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upsc=
aling:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip_scaled_crc@fli=
p-64bpp-linear-to-32bpp-linear-upscaling.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544" moz-do-not-send=3D"true">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send=3D"true">i915=
#3555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-bl=
t:</p>
          <ul>
            <li>shard-glk10: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_frontbuffer_track=
ing@fbc-1p-offscren-pri-indfb-draw-blt.html" moz-do-not-send=3D"true">SKIP<=
/a> +113 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_frontbuffer_trackin=
g@pipe-fbc-rte.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"t=
rue">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1849" moz-do-not-send=3D"true">i915#1849</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send=
=3D"true">i915#5354</a>) +18 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-mode=
set-big-joiner.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656" moz-do-not-send=3D"t=
rue">i915#10656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544" moz-do-not-send=3D"true">i915#14544</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-mode=
set-force-big-joiner.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388" moz-do-not-sen=
d=3D"true">i915#12388</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14544</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pipe_crc_basic@read=
-crc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11190" moz-do-not-send=3D"true">i915#=
11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544" moz-do-not-send=3D"true">i915#14544</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-top-left:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane@plane-panning=
-top-left.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8825" moz-do-not-send=3D"true">i915#8825</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</=
p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@plan=
e-upscale-20x20-with-pixel-format.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958" m=
oz-do-not-send=3D"true">i915#14958</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9423" moz-do-not-send=3D"true">i915#9423</=
a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-fac=
tor-0-25:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@plane=
s-downscale-factor-0-75-upscale-factor-0-25.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544" moz-do-not-send=3D"true">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6953" moz-do-not-send=3D"true">i=
915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8152" moz-do-not-send=3D"true">i915#8152</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-fac=
tor-0-25@pipe-a:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@plane=
s-downscale-factor-0-75-upscale-factor-0-25@pipe-a.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12247" moz-do-not-send=3D"true">i915#12247</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D=
"true">i915#14544</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-fac=
tor-0-25@pipe-b:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@plane=
s-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12247" moz-do-not-send=3D"true">i915#12247</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D=
"true">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8152" moz-do-not-send=3D"true">i915#8152</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@fences-dpms:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14544=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
849" moz-do-not-send=3D"true">i915#1849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lps=
p-stress-no-wait.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14960" moz-do-not-send=3D=
"true">i915#14960</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@d3hot:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_prime@d3hot.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15026" moz-do-not-send=3D"true">i915#15026</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cu=
rsor-plane-update-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-sen=
d=3D"true">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14544</a>) +1 othe=
r test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-glk10: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_psr2_sf@psr2-over=
lay-plane-update-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-=
do-not-send=3D"true">i915#11520</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr2-sprite-render:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite=
-render.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/1072" moz-do-not-send=3D"true">i91=
5#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544" moz-do-not-send=3D"true">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send=3D"true=
">i915#9732</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@prima=
ry-yf-tiled-reflect-x-180.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958" moz-do-n=
ot-send=3D"true">i915#14958</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5190" moz-do-not-send=3D"true">i915#5190</a>)</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@ts-continuation-modeset:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_vblank@ts-continua=
tion-modeset.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14958" moz-do-not-send=3D"tru=
e">i915#14958</a>) +72 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@module-unload:</p>
          <ul>
            <li>shard-glk10: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@perf_pmu@module-unloa=
d.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14433" moz-do-not-send=3D"true">i915#144=
33</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@prime_vgem@basic-write.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544" moz-do-not-send=3D"true">i915#14544=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
291" moz-do-not-send=3D"true">i915#3291</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3708" moz-do-not-send=3D"true">i915#3=
708</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@gem_exec_schedule@manyslice:
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17254/shard-rkl-6/igt@gem_exec_schedule@manyslice.html" moz-do-n=
ot-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12964" moz-do-not-send=3D"true">i915#12964</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/=
shard-rkl-6/igt@gem_exec_schedule@manyslice.html" moz-do-not-send=3D"true">=
PASS</a> +2 other tests pass</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@i915_module_load@load:</p>
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html" moz-do-not-sen=
d=3D"true">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_17254/shard-glk6/igt@i915_module_load@load.html" moz-do-not-send=3D"t=
rue">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17254/shard-glk5/igt@i915_module_load@load.html" moz-do-not-send=3D"true">A=
BORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/=
shard-glk6/igt@i915_module_load@load.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-g=
lk6/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/ig=
t@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i9=
15_module_load@load.html" moz-do-not-send=3D"true">ABORT</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_mod=
ule_load@load.html" moz-do-not-send=3D"true">ABORT</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_lo=
ad@load.html" moz-do-not-send=3D"true">ABORT</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@loa=
d.html" moz-do-not-send=3D"true">ABORT</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html=
" moz-do-not-send=3D"true">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html" moz-=
do-not-send=3D"true">ABORT</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15020" moz-do-not-send=3D"true">i915#15020</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk5/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk1/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk5/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk1/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk1/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk1/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk5/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk6/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk6/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2=
/shard-glk6/igt@i915_module_load@load.html" moz-do-not-send=3D"true">ABORT<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
020" moz-do-not-send=3D"true">i915#15020</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x2=
0:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17254/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor=
-0-5-upscale-20x20.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423" moz-do-not-send=
=3D"true">i915#9423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@planes-downsc=
ale-factor-0-5-upscale-20x20.html" moz-do-not-send=3D"true">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958" moz-do=
-not-send=3D"true">i915#14958</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9423" moz-do-not-send=3D"true">i915#9423</a>) +=
2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17254/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-=
x-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send=3D"true">i915#=
5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14958" moz-do-not-send=3D"true">i915#1495=
8</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5190" moz-do-not-send=3D"true">i915#5190</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_17254 -&gt; Patchwork_153874v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_8547: 8547<br>
        Patchwork_153874v2: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------9oSxmnb0LkkfTax1xJBeiNMR--
