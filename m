Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4AEB7D7E5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93F010E077;
	Wed, 17 Sep 2025 06:31:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/tMsTOP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84BC910E077
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 06:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758090691; x=1789626691;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YTT5pd6gdtpxSrruqivKKDp4RAkV74y628lVaKSCQEU=;
 b=L/tMsTOPAfeAErwDccG8JyO4EgH7Y0RtPeqAliA2pEdH4IVzAr3b3tpV
 PkqhqtBwZnaX+AlrO888wwJNP3nU7haBV7gmuDss46JCAUkF+xEbQxgtP
 Xb0RCO5xo+kyDIub+RGB+laU0V7jPBGHzK8C3JJg7DfVFS9p2yMwjVt55
 u+tqWg7es8ekino2ORvvBbp6pW3OSNbI6FNCorYlHEkKpHo5uyvzlu5Cd
 AHAec3J8tWObC/0bfjRYDqlWMx8LfvvdCP3SAvvD36U0XcfgFskB8n+Mk
 tl/Gj74Tvley5akyIB2wHVIUzgynItRQ2gLZY8KEKqguh2kCyNjPgQN20 Q==;
X-CSE-ConnectionGUID: p7BTzi5VRGGBh1c5+7BhhQ==
X-CSE-MsgGUID: QPJyK/GxSmWl4YgUxPmMEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60530931"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="60530931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 23:31:21 -0700
X-CSE-ConnectionGUID: 0o7REhvUQQ2uw61mTfHcaQ==
X-CSE-MsgGUID: 79poNUqzRHaqufk1WOE7RQ==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 23:31:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 23:31:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 23:31:20 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 23:31:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DrIG0BnG2ubVZ9Hi2htN5yvqDgEIc9w7kG+cmpCgfr8+e1miOyMJF7tcicnNFZQUszdQHBM9+BTH8j5mdnxdNt5+J4v4UYwn7uclwECoCyiwmGoTYb3k97qLRPr3Kf+FBkJLldIwv0OYInzB8aCEtQEFrBB3M/K7XFEDQRo/AGKGmpSZwfd+3sK97JjTj8lzQDe6D2WjLG50vu4wq9WrGjCqUE/mYVcwQC4Q6+bMfCHkiebHf0UbMGb6O4+Aq544Aln5HNlyddRSsTcxdmqNEW3GXcP158TG16828c21/B5uHfGX9I2Dj4I1svNm0BCmrCvdYm5git27PpxWYa047w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7COHAHYFBxGtKt2GeCL4TSLe7WiPi2Lw/2ubOmcuaw=;
 b=Ix5jhZrNbaGqJnMFtekFQ4B/3DoqJcnP1GTCjk9rhkzBdZ+W6UfhcbIrPhl8sHsDJz5sS2im0bKxBKB5l67VM/As4U13l7+8GcNyHTcVHUUJ86099WfGt/fwNNlxt0bDGLUQJb/nR9WoefBUgKacgXHgAArQeYJCuISroDRFkYFmhUHiT8HefzzMqrAkK8rzRWBwHovNaYBQGKAOrIynBYD+2fDPeulD/pAl9yw/KDfGsfAjdkunZrWD1WTm4fAEAp3fKW8IHOnYhFZszAoC6eR6qhwFJ51zN1rsCW31XapnKa3rcBc28fFxG8NEud09QXXqqjnciwVocXTRqw6lhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH0PR11MB5220.namprd11.prod.outlook.com (2603:10b6:610:e3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Wed, 17 Sep
 2025 06:31:16 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9137.012; Wed, 17 Sep 2025
 06:31:16 +0000
Date: Wed, 17 Sep 2025 06:31:07 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 0/5] drm: Miscellaneous fixes in drm code
Message-ID: <bpi32pec7tdfvsegrmxfxqe5esginh4li3gp7aqnjnsweaczbv@c7hrk5244cba>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
 <ujmn35bh2gknev3aibfz7zcc3biknnnkrw6aejtt5kvfd22w7x@ggniulqi4o42>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ujmn35bh2gknev3aibfz7zcc3biknnnkrw6aejtt5kvfd22w7x@ggniulqi4o42>
X-ClientProxiedBy: WA2P291CA0029.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::29) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH0PR11MB5220:EE_
X-MS-Office365-Filtering-Correlation-Id: 2aadd3b5-2598-480d-182a-08ddf5b3ce1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blRTOWpZQnkyOUJ5UjlrT2NCS1ZKQVBENlVLOHd6WU93QlA1UncyeE9BdTNN?=
 =?utf-8?B?Nm52d1REenRxZjFnL0M2RmZKQUtkSE5KNUJ2SFd3cG54ei91c2tUZ255V1lE?=
 =?utf-8?B?VHR5cUxLbS85NzhxcU5nZldROEZNdjF0b3FxTGN0UWZBOU05UFhlN0V3L29I?=
 =?utf-8?B?Mlc2RTFQdEkvQmhlZEtRalRuRDV3OW13aURTWkkvNFpTQk1XWFIyVE9BUUdE?=
 =?utf-8?B?SEtRYnFCL2dxTi9yUGZHVVpqNTAvSnlnWnFBS2Zwa2lwdjkzTk4vQngwS3pJ?=
 =?utf-8?B?Z1lzcDBDL1NnRWFWYWZFNU5xRUp1UGYrWEtZS1V4OUlqYjhiVFd0cUtYeDZq?=
 =?utf-8?B?OWo2c21rd2ZIcDZIVVdRQThPaUdZZmRkS0d5NEREWXNSM1ltdkc5bzJtZXZr?=
 =?utf-8?B?T1dhSlE4dXk3OWdLSUpjdU55SmJTZ0hlK2lkSjdMdU5ZNitLTWZsL3JiZTRI?=
 =?utf-8?B?ZHY0QTNvRDZ3VVNQdVVVSk1tajZtdG4vbk1DTWdqQ3NMaENyNzM2VUdkMGFo?=
 =?utf-8?B?d3VSQjBCUFVub0VVZ0ppalV4aWwrWGNWaE9wdkdIWVRac2NTT3VzZzB2SUhV?=
 =?utf-8?B?SEQrWVU2RGFIZHNxN3FrWmoyMXBDZUZHT1NPWUowUjdENzgyTUFkcTRSOE90?=
 =?utf-8?B?bFAyWlJqWTJUUTFnVFJEcHFLZ1R5aVlDTkVldFlOdFRqWW1ja2FzWSs5c296?=
 =?utf-8?B?alEwUGxTaXgrbUk3SWlmdXZmcVVIWS9QaXd0Tk1xQzVoZWtSMnJra2NVQzly?=
 =?utf-8?B?QmZDMk5VcFpBWWFrVzBydVlVWkZkYStrVk1NUVRnWVkwYXVpMC83eUpQNFVL?=
 =?utf-8?B?Z0NFcDNuYXErYkFlZGM0VUNucTFrdVkwYmt1R2tkS1N5czlNbWJtZTd1ZERu?=
 =?utf-8?B?ZCt0MXBxM3VyaGswbExkaEN0UVVuOU9rUFF1TTBsZlFjZHc5VkErNGNnb2kw?=
 =?utf-8?B?dEw2eFJxRXNnd0ZqejFER0ZuMmg5VE9vWGVJdzNicURsU0tCZEcyV0VBR1du?=
 =?utf-8?B?KzhLR0lNQmQ1Rmt1eVgxaElGcDhyK2I1dDZVUXdXMGxFc3FKa1JxQ09hTC9h?=
 =?utf-8?B?cHRmOVNnM0VNdEpsNzMzSkx5bFFxc0Q2Nndjc0NFYkU2a2pyK3MwU0ZzNWE3?=
 =?utf-8?B?RlpWUmFCR2Z4Q212b1orcjdVQnc4Yndkd3NONyttTkJYei95cU56KzJkaUh3?=
 =?utf-8?B?ZnhrN2N4ckxDR1lLWmJrcENRWUJLNkVqODVraU1WaHFCWW1aZ2ZKZlVaQnBV?=
 =?utf-8?B?cFpIaUExZ0JWNUN5QkZSOVppYmxJNEgyZmNOSmN3U01iT2ZZTzAyOXVnOGtv?=
 =?utf-8?B?bDFKQjB2ZTlnV1p2YUl2L09oY3BqYktKeDVLNEdiTDJkc3hqOFBzU0RMaE13?=
 =?utf-8?B?Z3Yxa1h4dGlOaDdGL1hFbWNwNVNaVG1lcXBpRTVkUmtiMXV1QWozVHZQQ29v?=
 =?utf-8?B?dDVUNFdlOEQ2V2puaVJsRGphVzFDMEF1bW44MFBiZXpxUjBueXdhQlhGZzNQ?=
 =?utf-8?B?V2NLUkVQUk1haTdSSjVzcGcwWDBmM1NUQ0lOaE9ScCtVazJYU3htSmVjajEz?=
 =?utf-8?B?WFVGZzNSQnR1YmdEMDhtRGMvR0gvU0luR1hObHo0SHVMdnl3dWoyWS83dVho?=
 =?utf-8?B?cHY0VVg3OU95SUphZE0yckIwR0cwM2ltamVmK21xUnI0RHhGd0VXQVFneEF4?=
 =?utf-8?B?KzJEZHdIYlQrUGlZU0tOQUJNTDdidFZIbXE1WHl5UHB0R3NqSFhFQVBVYUVP?=
 =?utf-8?B?b3ZKZG5rTk0rek5VcGh6V2E0REVRdUZoQ3pDRi8zaElYOVdzMGk5UEhMNE44?=
 =?utf-8?B?K1F1VEFSb1h2Vjl1d05ydDQ5QmFQbk5wOTVvSDVnSjNhQnNKNTV3Y1hsQVZ6?=
 =?utf-8?B?RGp2SWZiK0E1TlluVVNIQWI2eVpzRlBtNEMvakVLMytaenc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHc0OEUxOU9QbzhuRXlSVHR0STJETUZ3UmE3STlUWUNKSTJ6MmpyZk5lVDBw?=
 =?utf-8?B?OEljSysyWXQ3VkY2RHNRR21jYmRmV2I1TWs4d2J0SzdvWmZyWExQMzl5ZFdt?=
 =?utf-8?B?YU9lVHNsaHdFL1E3ZE9wZHdrV2lWYVoxVzF3QXVsZXZyUDROSWpOK09TZzRz?=
 =?utf-8?B?dEdHNzB6NHZYbGtmU0x1WW8waU5ob1dJZUFGckxXNlRxRTRoZ0svMitpbCtF?=
 =?utf-8?B?eHd2UXZsZlBGZlNZSUl3MmE4U3cva3pKVGdWdTZjSnNWTGxzcmxuYWxra3Qr?=
 =?utf-8?B?RzVwZFRydVVIOThCZGlrVllhSS9ydGtwNXZYK2xrajNicDBRVVlJWG1HV081?=
 =?utf-8?B?U05oMzB1Z0dHS05pT2dQN0MrSVQwMGpSY1VwVUNWTjVNc2pLTjFEeEk0QTFs?=
 =?utf-8?B?TVZqSHZMZlBBT3hQUTBwVk5seGNaWkg3ZGEvTHRwa1FXSUFhMWZDeHRONHJx?=
 =?utf-8?B?cFJPL01qYzllMkthU0pWVjI1aU01QVhTakdXWUpkVWdPTlZWeVJNU0YwaVh2?=
 =?utf-8?B?ZSsxR1pEZG5lSkZPZW4zMFpMWG0zQmpxMVQ4LzlTVEE2dE9LMmxyTXZvTFRL?=
 =?utf-8?B?cmI5dXNyODhoeXZNSWNJNkhPQmc1TFZsck9oVmovd0pQdk1Rc1kxbTVDbkU1?=
 =?utf-8?B?STdhdmFDODdFMWY3VzJEQVRObEhqdjB4TXZlUkdqeXl5bTNTL08vVDdmKzhs?=
 =?utf-8?B?aWtGTFVzdmtJamt1c0lRVVBnZEtJdUtRMUFvODZVOHpUanRYM0NZNC9QWVQy?=
 =?utf-8?B?U29XUFFzdTl4QzAwdnVVbVNvVXBWaWJiL1kzWFdxNXdyWi9UTC9uTHJzd0RY?=
 =?utf-8?B?WHpqY0ptVmRLcGltQUd3Q0xTU3R2amRtSU1NNXF4MUxacVNEWmRwSk5iaWFn?=
 =?utf-8?B?WmpCbGU2Ulp0MEhvUCtpVWR3bitjc1kwZU8xN3oyb1hLeGYvR0YvNWtYbEZF?=
 =?utf-8?B?amJIUGRadm5iQnR0WmhyRzBSWEFwRmtMbWpoN3NEY3M1TkxEUFF5WEJZeFRi?=
 =?utf-8?B?aGRraVU5MlRHeWpKcVlCWEJyRHA2YVdKRUtLQnVicFpuMERxcHA3V3ZPekZt?=
 =?utf-8?B?cW13a1c1SmRnbGRWS1FWaHE3QVBONVpzbUkrYXJPK09IQUlRL3hTSEdDZmlq?=
 =?utf-8?B?SGZnZEt6NFFoRStnZFZFZUcwb2RadFFXN25ickM5QUx6d0xVNzIweTdrWlk3?=
 =?utf-8?B?R0xwaTBmSk9IUjMwUUEvQlFKMWIyKzk2eUJ5UnVCNkUvQm9kYkpvS0E2YmJn?=
 =?utf-8?B?Wmp4YnhtQjJIendFbHNHRWNGS05KNHJpY3hkK3ZOd3BGZTVqRzdYR0dici9W?=
 =?utf-8?B?dGpPdi95RkpzeUtYSCtidUF2Zk1HSmlWTXF4Ti85UGhsQjFEWU51bG1seVIy?=
 =?utf-8?B?Tkxndk8rUTRicjV4UlJCMzRSNGwwbzdEc29RNnJZUlpITnhyMWV5OTE5V0xG?=
 =?utf-8?B?M2R2Tyt3VU83ZWV5eWRwa0Fxd2dRZTFGSjZNYTVRMUhZL2ZUcG5EaGVIVisr?=
 =?utf-8?B?aFZKYVFkeFcrczFpY0g0RE5wdm41dzIwVGlVTFpqRVhOallPUzF5Ni9NUHlm?=
 =?utf-8?B?bVRLcFRlSlJJaXBROWt5WW4xNFNYcGhlWmRGT0RCaDVTdU9qeGhKZjhYRWF5?=
 =?utf-8?B?eDV3Zk1SRE9leXBFRFMvcytBQllsZXJRZXkzdHBEYWxzQ3J2bmpWZVNLR21v?=
 =?utf-8?B?RTRkMG0zeUZGeTQ4aUJCWmI0c3IrRU5xaHBMV2tMaTFsQjBtMEhlM1RMOGJV?=
 =?utf-8?B?SjdIMG5SWTlHZjA1MDVzaVBsbTVWRXYvMXZvL2RiOHhUT3VxcGs3ZTZhdEFi?=
 =?utf-8?B?N3RZcW1SVEhmL1lacjc0Y3A0OExHbUs1WC9EalpnNktGN1l2WlBLbHJvZ3g1?=
 =?utf-8?B?TktSRjFkZGRaS29WMGJnN2xOREJQUFNrYkZpSEpDL0JsSGx3MStjMlR2QXFo?=
 =?utf-8?B?UnpvMURiRjl5L1JZOElNYnIvb3puRjdkUE9JcUpCSWJIQ0Z0bDIzUkVMZHdz?=
 =?utf-8?B?UEZ4TVBwNUEwU0tHT01jU09xNXZwd3ZPT3VHckY1MklnN3ZhbWNieFZJdkYy?=
 =?utf-8?B?bW9GSlNFdzNLMFFaWXpNbGJ6YVpSNXc3SU13WFdFamlQZEk4SW1HU005aWZq?=
 =?utf-8?B?bi9BckRtWVJYcmtaaEFKb21QRTdQSEZXcXNSV1BpZWFlbm9kYk1jejdoUXg4?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aadd3b5-2598-480d-182a-08ddf5b3ce1a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2025 06:31:16.5163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QtNjtPuRKaLi58PEy2H7MEU1Cu+0uMDxs+B+C3CqrrEo0nZ2UJDC9Qdzpv0nf0bc8Ow/aocYp/T+WKaLH8A62leuTbAIIMz1+8mtts4ok50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5220
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

Hi Andi,

> with that list of people Cc'ed it's probable that the series
> won't reach the right people.
> 
> Please Cc the people you have marked as "CC:" in your commit,
> including the kernel stable mailing list (git-send-email would
> take care of it unless you have explicitely added the
> "suppress-cc=all" flag from your git-send-email).
> Inclide the dri-devel mailing list also for intel-gfx patches
> and, finally, the drm maintainers responsible for applying the
> patches (you can rely, but not fully trust, get_maintainer.pl).

Thanks for reviewing. I'll include your suggestions in the v4.
-- 
Best Regards,
Krzysztof
