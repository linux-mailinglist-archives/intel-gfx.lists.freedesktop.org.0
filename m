Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D90B9B14C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 12:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780D810E1EF;
	Tue, 29 Jul 2025 10:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Te9JCxKW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3AA10E1EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 10:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753784371; x=1785320371;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=9lV/tZxqi0FPDp3ndrOVZ9eBr22C6pzXcdBCqDfxd3U=;
 b=Te9JCxKWLnKndKdBA3W9egBLn+wTWxaSGnDOpL1CtCGjUHtJX7ZSJ2Hn
 wWCOoa4g4/XDT7bbvrTl+OojcEYZxA6C/wjkmynGSNOQVWw1z45yEwtzF
 JYa6KbKKi5sWXya1gqtJ/YSJVWOqRmQaj3v8ZATL9Y2/fDLrH/VtnOn29
 siwWm+gRwg4di87Qdo8fvyZpcsOKvPnNqT1d5ag2WbtBKKHok9t82NyNK
 iCiTK/EgV/K7Zfm6HerGar3JTTnRPYExpu+UZVwi9HD7TzqxUu6KoFer2
 Cx2XL1I3iey/eIS8BAEhScW3dFNtSkMmiY5fcR76vNb+dfD40/taG79v5 A==;
X-CSE-ConnectionGUID: SQO2O97TQGKSGCaAZvOqNA==
X-CSE-MsgGUID: QlvWJ3BhR/K3I3IC8T9QoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="59853743"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="59853743"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:19:20 -0700
X-CSE-ConnectionGUID: F/K5LWM2RW2+zU3TuNhIAQ==
X-CSE-MsgGUID: 85N4My/eQKK74j3Wx5fQJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="166867543"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:19:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:19:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 03:19:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:19:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cTFGxV9Z7d3kY9gQ7xrXMFoEhD91y5mtmQ7oCdXNec2zoZSVgNJ8hJiv3undlqd2oTlN8QpYsirhKGU2gNemhyDbdVs3HledHtnR3ZDam3gFxxKVcUp0+SItYQjOTSzVxPsH/mbXyvw4z5fMui5lcr+6VR4oQzk3AHrZSygKweHYp9W9b4cV3RJIAAF4niHf9w46DLhnVgJeCIzTOZeEPDpVl9BFw/NAKSb/Em4l7lICmDEJew8dR+sULWA2X21WMlgmh/pP+6WBZUY8zdq7dToyzsFx+eUOVe/Ew+VY4evEHfN6CYj37XD0yZnRV636Xny7DCFUlFTO9tp4t92eFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2lrvj5n0lv1Xu2aO4tl+OPEDaeVGjHFBdNnW61EjIc=;
 b=mMITN82zUTlZSv0syyhorWp/dqeh71DRwm+NJZDtsepVEEX25Aka83anyM+gXgm3qxbJCdPIRUeYdj0i7U60elbFZsPQRoKXF9q3/zdwPGZ14CSHQcJsNSkKEIB4+5CH9rQDDcNxy2nsFGGH01uGzdnt9widaKhZVSPuI1mgmjZ+bmqTD66M+FVZPBA6zT/Nw6sAJnI4FR00jmd9KYCrG9R/+yWXV3jBySf5VniwLD+AtjdUi86HobdIE2kSsKy34PhUJU3eztWJruZjNjXFA+Wng944hzb4JzTkyqP/T1Lh2qA5Ll+/2x12G5bOJ+oKxedbREfQz6k5Hz7QWRhWpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 29 Jul
 2025 10:19:16 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 10:19:16 +0000
Date: Tue, 29 Jul 2025 10:19:11 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: [PATCH 2/2] drm/i915/selftests: Do not leak vm_area_struct on early
 return
Message-ID: <lrghvpsi3gjz5w6ydxi3yuivmfbzsoterdlu3h2snd72aty7dq@pcvdi4yoo5bw>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0092.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: 31164cdf-739b-4a1e-1273-08ddce895fb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWw2ZUpzYjMwaUdTWU93b0Zsd3A3MkpmaGYxTGpMcXFBVHh5cnA2WnZxL202?=
 =?utf-8?B?WUxlekpBcW96bUphbnZQVWdiWmlUQlYzWHQwY2RVdW5zUGE0N2xaV0xWWVd3?=
 =?utf-8?B?Szc0TVZ6YTJMcTRYdlRidzF6NFZubFdZTGRETjA4S0V4VmJHVmQwRmowbHhE?=
 =?utf-8?B?dVZySEJoWVVwOFZrSklnTUViVC80djlPOVBDdElwSEQ1TjlSQjh6R2xBMTZk?=
 =?utf-8?B?Q25OMEZ3Y0d2VmptT2o2V1F2R0NxZEdhaVJTWm50aGxjbGZlalEyWkF2R3do?=
 =?utf-8?B?bDZwWnZPOGxDR1RxbzQyazFhM3k4MFlaM2k2bFNHWU10dUY2KzhzMS9LSGJF?=
 =?utf-8?B?dkl6Y3dBTWZJZzZ0Z2hSbTN5am5KU20xd2diODVibko1ODR3d3RBZnY2YWxN?=
 =?utf-8?B?MXpZZkxjSG4vb2hqdEVFRXZ0SzM4V2ZoeC9LMkVWQ0xZcDBvS3dib1ZJMW9R?=
 =?utf-8?B?THdQaGxzcGNuN3ZzTlFnQzRhbi9RelVGU2psU0xZaUI0eEhqQXhveUN3OHU3?=
 =?utf-8?B?cm1rdXpvbXVFL0ttaUd2K2R1dlFPMGdvNWJSQjEzejc5U0s0cis1bGxUYjYv?=
 =?utf-8?B?cC80MGNteE81WEtweVhFUWtEbGZGb3hZaWY1bmtBYU9ibG12d1NDd0VHYjNz?=
 =?utf-8?B?WDFaVGtBUGo5S05PZzlVK1YwM05pUDYrd0NURkViTmJvNWpKajBPUUZxK1Fw?=
 =?utf-8?B?NXFrbEZNakcvWm1tM250TTBiQzhLUWwxYjQ4dU4rN0Y2Qm1kUWpGd2p3K2pK?=
 =?utf-8?B?T2FvcldyRnM5UDREdCtWZGNPNlBhVlF2b242SzhUZCt1MVkwWTdHVUsxOGJB?=
 =?utf-8?B?aDdaVmMyaDd3WVdGUzlaNmp6VG9sblJmVG83RkZNczU1b3hUOUxMV0tHU0ow?=
 =?utf-8?B?QTQvL05OcTkwQXBvQkE3NEFqTjQvZzZCTG1JTVpmZk9hdzR4ZjBjLzdTZzN2?=
 =?utf-8?B?WU9ZZXF3R25aOUlsY1FENVRkUE9mRS9YblJKc2xPRkhSVHgvZnNCTzBqb0xk?=
 =?utf-8?B?RGEyV1U1aUFuUWorc3prQ3hlSnVpS2U2eEExYlM3enRVLzNYcTk0dWdwUDZs?=
 =?utf-8?B?dEFsVHRwbzNxWWdGSjNzYTF6dVg2SEV3NVBPbHBhN2tvN1VZdlJmUGFrRVUr?=
 =?utf-8?B?QThDdVF3eGtCdFNSbDZVMEJUNlJ2N2pyV2ZqUkU3U3psTWx0eE81aHJIQ25z?=
 =?utf-8?B?dWtjQXBEWVk5SkJUVnpEckVMNnpyaGZSSUZGbmdwYWpBcGhZY0J2Q3FVZVVZ?=
 =?utf-8?B?d05qNzBSYnNjMU5HZzZwaE1laFJUemxJTTRJTnF0anN5a0J3VGlDZDYzSEdQ?=
 =?utf-8?B?ZVg4RGhjdHhBWFhPd29UVTdTL3FGZFk0UEY5QkgvVlN1Wmt3Y1R5UnBCM0hJ?=
 =?utf-8?B?M3I5K3l0SjFJSGRCTEs1d1RkTXJoR2pmdjNmQXB5NFV5VmJqVGtOSGxrdDNr?=
 =?utf-8?B?aHB3MjhEaWlmSDNFQ2k5S2c1UUs3a0VkZUJDRjRNbG00RU1HdUtMV0JMS2c3?=
 =?utf-8?B?NTZzVEExd20yN2UvdEpZRDI1dkZhRHc1TGJkaDRsNlZpTnRBQ3daM0UrYkVP?=
 =?utf-8?B?TDQ5aVBPMXBnVm9DZGVITTZVMkhJTlZEQlFDNlJIVFFFU3Y5WURSZDFGREJm?=
 =?utf-8?B?NkRyY1IxbHl0SXNxM0RTeVhpSWtRVVJnMzhiNVp1eElTMmtTd3U2ZnZjUWJo?=
 =?utf-8?B?a1ppajNXZWhWRmJzRG83ektDQTdZR0pFaXRyUmxDRGFwWWRwNnVqUXNSOTBT?=
 =?utf-8?B?TUszemVCN2t2b0VZNTlFWXpwdExud3VtSDIvTFo1dVkxNFhObExTb2VQRmhu?=
 =?utf-8?B?aXRWY0phbVBIUDU1dHBicHBBL3pSK3FCbXU0cmM4TDJYMTFqdWhDMFFEVDJm?=
 =?utf-8?B?cjM5UWNCTHJXdzdzaHE2Z25NMjBockxtSTY3cVp3TVJ1N2tSZSs1ZHB1Um45?=
 =?utf-8?Q?uzfxM938HpA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjRNQ0Z3ZmRvbTExNHBVSlJtMkZWbHJINGttMDMrRzZ6a1p3dzh1eEJWTXd6?=
 =?utf-8?B?anVEK0lzUWN1YjBibEdpcHFwdlJrQW93eTkzR09oeG9ra3FhcktlQXh6NG96?=
 =?utf-8?B?MC9PMkVRd000U2d0OUhZLy9jU1lRWHRCazl1Q1VydVAwZEkvYnh0VXYySDhC?=
 =?utf-8?B?NXJEMXg0clNydjFKdE9RUzl0U2VwM1VyUDVxdEpEbTdsc1BGa3ZReER1emg0?=
 =?utf-8?B?YktEVnV3WVBJeFV0V0tMYi9YL2tMMHRiTjZBbFFLVGpUNFhyZmUvcnlJTGEv?=
 =?utf-8?B?TzlsZHlJTTFwdTZyNW5jdWJleXNwN1VNbVp5Z1BXUk9CYktFTEdBTzFOeVRn?=
 =?utf-8?B?cThxblQ5TTh4REhFL2pPbExjMWhzUlJHWkx1V1lYTDlPRWdvKzJsa1E3djZq?=
 =?utf-8?B?aFhvNTl3Z2txMDlUdnkrdUNrN2VaZVVVTUY1Zi9zc05LMTBNM2RHSEhCaXBh?=
 =?utf-8?B?dEN0Nm4wQzBFM3ZPdWlLcEZFdzJZaHltdTN2MXJWOHJpb0hyUE5PWHZqS2x4?=
 =?utf-8?B?NjM4QUYxWU8xUVFrZzNZaU5aNFpSWXRzU0EwdXY3cHh0QXo2OUpmWkRJTkUz?=
 =?utf-8?B?N1RHNUFNYXlRNEJ1dFVHZkRadURCWCtNaHVxOVQxZUNONklGNGxvRUk0anB5?=
 =?utf-8?B?eFpJYzJoZklZSDRuSDVMRER4MFVOZ2Y2U1FUSkF6a29RM2hEZk1XQlN5czRB?=
 =?utf-8?B?blBLbEk4akJNODJsVk81d1lrMW0vNzVUSjdxYVRTMlZNZXFZbUVybnBiNzZR?=
 =?utf-8?B?ZWpwcTBXcmtaR1ozSWQ2RkNEYkR4RjJHMkZyK3QzMlJiWkJDbHZPcTBMZFJ2?=
 =?utf-8?B?c3ZyZ1hTcHQ2N3MwbStKY1lOcGhGS1NRdndJTHVCTDkzbThIQUFjWWFCL0Zp?=
 =?utf-8?B?dGcxeS9uTTkyMjN5NlRrY0VzWUliQ2l4bTRXTForbkpCbFJQNThmZEt3Uy9O?=
 =?utf-8?B?V0xtVlVGZ0dHNDdBRmtEMFM1ZVkyU3JraG5qNW1Lb0ZJUXFGZUo2QnJOTjhj?=
 =?utf-8?B?NmZyT0k1YjZYT2FNUXo3aStHQitmdjEzK1NUSnBzTzBNaW5QVzBqazc1VGYv?=
 =?utf-8?B?SkhCYW5TUitSV3VVM1gvbkpBcU03alU2a1Jha0ZQVUVIVmJobVdUZ01BNFRa?=
 =?utf-8?B?Z3hudDkrTGtuWWNVTHBLMkF1RE95OEI5K1VwRjNiV0xrelYvTE1QNFZVLzRx?=
 =?utf-8?B?VlhIY2dqemN3ZlowMVhIZ2FFVkF6UFhrdVNNcWo4ejBpSllNVkROVDNmNGNB?=
 =?utf-8?B?SmNSWEJNVFVYQ3B2RXoyaVdBR3VCanZwUGpuVTNQWXpMc3dYQVR3dURxd0hB?=
 =?utf-8?B?bDJqclFtYkhhRE1seGk4c2RveklJaVZ2cGhmeXFFdzNrbzcyRFBnNkpyNTQv?=
 =?utf-8?B?U3hmQ3kwejRhYVdtZ29nMk5GZTB2alBkaFJNRDJ1VFc0Q2FPcTZWWHE3Yitv?=
 =?utf-8?B?bXFhMXk4VnFoY3REK0dUWFZrbzhTMDlsOXJzSlphaW1vdC9lQlFrTFJmZjhh?=
 =?utf-8?B?WWpQbjlwNVQyNVIyem14MXFsdFB6VU1TS1ZrSUpHSTBrbkVWdjFvVithYW41?=
 =?utf-8?B?QkkvYlMwOE43NGc0aHByMmRMSjZPVXoySCtBRGlmT1B4enB4UWpvOGU2eXlv?=
 =?utf-8?B?R0MwRlRHeFlkdTdVNTAxTENVNzFmZ21wSmhWdk9lTjN4ZUp3SzAyVEtLcVBY?=
 =?utf-8?B?TS9wVm9WOUxoUldSdllTTU9wQzlWN0h2YWk2cXk4K0dPRVdaL3ZHZkJFcGwy?=
 =?utf-8?B?OHZuOFhJN3IxZVQydG92N3VKRzNlTGYwREt6dVBHU3labGtTRDZwcUhkMkE3?=
 =?utf-8?B?VTNpZXZDSFJkWjJnSGM5allyNnRSSlVrcXRldXFuYlhrQUlQMTdsaGsybTBZ?=
 =?utf-8?B?TGsrajNScGJwYXpHY3V6bVJTYjhuQS82Q3ZPU1FRNTJ6cTZnbElZMDBnR0hG?=
 =?utf-8?B?TUNpb2J1N2dlRHl2VjBOVG1mOHVmM3NycEJkTzNtS3AxSmlhMHhkb1BDbHA5?=
 =?utf-8?B?dHcyYW16Zng0b0RRemJDNGFVdVBacytFNnlPbTRzOHFOelpQTkJ1ZVRwMEZx?=
 =?utf-8?B?VktoLzRzM0tYZ3dmNHhBTDhHYStNQ1ovdnR0YUNJZlEvTWw4aVdaTGg1Y3Rj?=
 =?utf-8?B?Ulp0UWs1cFptNC9IdTRzc3ZsbGNTa0ZVMVQrbUI5bWRuYnZxQzNyNVc2UXRn?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31164cdf-739b-4a1e-1273-08ddce895fb0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 10:19:16.8575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SZZa5Ipebcswui3v6Mwi8zOhPFDjegZ0avLy6OD5IxWe/CbicMTC3FtD5Dyh84Vw3Rda93hKv6an1adVumOeJG35/8Qli9ZBKFU5g8cQFBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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

This structure may be leaked on early failure paths, so include
vm_munmap() call in them to avoid that.

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
This code differs slightly from Chris's suggestion, which also
included a helper function:

│+static struct drm_i915_gem_object *area_to_obj(struct vm_area_struct *area)
│+{
│+       struct i915_mmap_offset *mmo = area->vm_private_data;
│+       return mmo->obj;
│+}

and additional check near area pointer:

|+if (!area || area_to_obj(area) != obj)

I found out that the "area_to_obj(area) != obj" part is never
true in our tests, so I had to abandon it, as it completely
breaks the execution. If we decide that is should be true and
this might be a separate bug, then I'd rather fix that issue in
a separate patch, so the leak is already addressed.

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 68 +++++++++----------
 1 file changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index c94b71a963b2..78734c404a6d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1096,32 +1096,20 @@ static int ___igt_mmap_migrate(struct drm_i915_private *i915,
 			       unsigned long addr,
 			       bool unfaultable)
 {
-	struct vm_area_struct *area;
-	int err = 0, i;
+	int i;
 
 	pr_info("igt_mmap(%s, %d) @ %lx\n",
 		obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);
 
-	mmap_read_lock(current->mm);
-	area = vma_lookup(current->mm, addr);
-	mmap_read_unlock(current->mm);
-	if (!area) {
-		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
-		       obj->mm.region->name);
-		err = -EINVAL;
-		goto out_unmap;
-	}
-
 	for (i = 0; i < obj->base.size / sizeof(u32); i++) {
 		u32 __user *ux = u64_to_user_ptr((u64)(addr + i * sizeof(*ux)));
 		u32 x;
 
 		if (get_user(x, ux)) {
-			err = -EFAULT;
 			if (!unfaultable) {
 				pr_err("%s: Unable to read from mmap, offset:%zd\n",
 				       obj->mm.region->name, i * sizeof(x));
-				goto out_unmap;
+				return -EFAULT;
 			}
 
 			continue;
@@ -1130,37 +1118,29 @@ static int ___igt_mmap_migrate(struct drm_i915_private *i915,
 		if (unfaultable) {
 			pr_err("%s: Faulted unmappable memory\n",
 			       obj->mm.region->name);
-			err = -EINVAL;
-			goto out_unmap;
+			return -EINVAL;
 		}
 
 		if (x != expand32(POISON_INUSE)) {
 			pr_err("%s: Read incorrect value from mmap, offset:%zd, found:%x, expected:%x\n",
 			       obj->mm.region->name,
 			       i * sizeof(x), x, expand32(POISON_INUSE));
-			err = -EINVAL;
-			goto out_unmap;
+			return -EINVAL;
 		}
 
 		x = expand32(POISON_FREE);
 		if (put_user(x, ux)) {
 			pr_err("%s: Unable to write to mmap, offset:%zd\n",
 			       obj->mm.region->name, i * sizeof(x));
-			err = -EFAULT;
-			goto out_unmap;
+			return -EFAULT;
 		}
 	}
 
-	if (unfaultable) {
-		if (err == -EFAULT)
-			err = 0;
-	} else {
-		obj->flags &= ~I915_BO_ALLOC_GPU_ONLY;
-		err = wc_check(obj);
-	}
-out_unmap:
-	vm_munmap(addr, obj->base.size);
-	return err;
+	if (unfaultable)
+		return 0;
+
+	obj->flags &= ~I915_BO_ALLOC_GPU_ONLY;
+	return wc_check(obj);
 }
 
 #define IGT_MMAP_MIGRATE_TOPDOWN     (1 << 0)
@@ -1176,6 +1156,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_private *i915 = placements[0]->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
+	struct vm_area_struct *area;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1207,20 +1188,30 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 	}
 
+	mmap_read_lock(current->mm);
+	area = vma_lookup(current->mm, addr);
+	mmap_read_unlock(current->mm);
+	if (!area) {
+		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
+		       obj->mm.region->name);
+		err = -EINVAL;
+		goto out_addr;
+	}
+
 	if (flags & IGT_MMAP_MIGRATE_FILL) {
 		err = igt_fill_mappable(placements[0], &objects);
 		if (err)
-			goto out_put;
+			goto out_addr;
 	}
 
 	err = i915_gem_object_lock(obj, NULL);
 	if (err)
-		goto out_put;
+		goto out_addr;
 
 	err = i915_gem_object_pin_pages(obj);
 	if (err) {
 		i915_gem_object_unlock(obj);
-		goto out_put;
+		goto out_addr;
 	}
 
 	err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
@@ -1237,7 +1228,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 	i915_gem_object_unlock(obj);
 	if (err)
-		goto out_put;
+		goto out_addr;
 
 	if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
 		igt_make_evictable(&objects);
@@ -1245,16 +1236,16 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
 		err = i915_gem_object_lock(obj, NULL);
 		if (err)
-			goto out_put;
+			goto out_addr;
 
 		/*
-		 * Ensure we only simulate the gpu failuire when faulting the
+		 * Ensure we only simulate the gpu failure when faulting the
 		 * pages.
 		 */
 		err = i915_gem_object_wait_moving_fence(obj, true);
 		i915_gem_object_unlock(obj);
 		if (err)
-			goto out_put;
+			goto out_addr;
 		i915_ttm_migrate_set_failure_modes(true, false);
 	}
 
@@ -1298,6 +1289,9 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		}
 	}
 
+out_addr:
+	vm_munmap(addr, obj->base.size);
+
 out_put:
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
-- 
2.43.0

