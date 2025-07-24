Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08FEB10FC3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 18:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5884010E3F1;
	Thu, 24 Jul 2025 16:39:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iFysYJOF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90AA10E3F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 16:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753375165; x=1784911165;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=30KzIdk8eKi7bDuQc4QsVdQfObwojOZG6OMetZYvKTQ=;
 b=iFysYJOFy7kxVHh7CMlTLmGvjQZbYGJm/4mGi96CK8P1l7h5i+M5I1LU
 4q6H0C7nlouNbxGN1biMCftn9GCuH9513HSOIlXjBSuTC7SQiuR0ApsIG
 iMZkeDW7sjuNtf47r1HnSu1CU1KbIzyHm1uSowx/7XxSTx1MwKKvSL7jM
 GAXMZ2oI7bNUsxMdqh5F9fmQOm11uUFPeQJ9pb0aNZvDi/4Bj00W9R6xc
 KSn7G0+21nRejNUYs6der54yEy7mJvcxCnAzATQU8VkyVoLiitxOZaTyo
 eGdnuvtegUiYQ7epfLrb6aMYtKFFdYAoNZY8qfMtv/sGfTTVXqPZn4AO5 w==;
X-CSE-ConnectionGUID: EXbYuLS7RnmT2RB0figDng==
X-CSE-MsgGUID: Hlwsyon6SNGBgCF9gMOm6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="78251155"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="78251155"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 09:39:25 -0700
X-CSE-ConnectionGUID: GiR4db8JQfifI5FxrbCubQ==
X-CSE-MsgGUID: ruuY59YdQ0e5BfvP6iFBLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="165710842"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 09:39:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 09:39:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 09:39:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.72)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 24 Jul 2025 09:39:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZWjxZBk8lX3COY7Ud4A8tXBTL0t/MYOAcf1mRoLE39Z3bfbShJbOvLlNBozWU87HtNnn1MU6VkUBijYCHjsADRddJuS8uXqR0tIFuR+Vj2ydl6XDewQCdLzThYaHK1rOaruNmwugjMuvYquN+/26lqbUNjbZt7Ur8HJzl9+wn8Oj6VZfhPmTqhs3HcMDvcl33h7boHYVIacWneCilhm4tTh2xGguyi4pGpiS1O4mW82lbpDliocZD0yRomcUkk8JOXVxxNqlfIITm1HzaFiT/V0aW6B+BMv5B7ruixV7XTbsgVA+Dz1nnzfynO2Sgk5fUWVKhKUbniwq44OCbeDXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fk4vMsvp8+8Capw0skJ7Y8zTgi4W4e5mquzroV3SJzk=;
 b=QUKPolmE9nvDrpn6ttEjCfayTTXVWcKL9K4JjMzMfGDmLHO9S6ztPMGmTeh+jgqOkLZhUFFSp6DI3ivvT4HbV3YUeqzWIo7svW5S9l+SW6UpoDSa2rL0GsPij+L63KRofOqIJ1UPdkKnTUSNaMT8rHKozA9scfisEswry0KQhnBsWe2tECjnyxHVHxSQ8iPCxlviA2Kccuz+gx43xv6M7VT7UdVGP5hv8nOimhYAAtU+gGeXvw7oaJMcsJa35s+fDtg8s5uJauyoTawLQ9fVTpDekJ2w88yZlJZjrhzW1AO68v157JUZpfU6Xo9HaLmKNh3tGrenwGQjR6jvAOVHSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8275.namprd11.prod.outlook.com (2603:10b6:510:1ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Thu, 24 Jul
 2025 16:39:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 16:39:20 +0000
Date: Thu, 24 Jul 2025 19:39:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Ruben Wauters <rubenru09@aol.com>
Subject: Re: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug
 builds
Message-ID: <aIJhr_yoE-FwyIiN@ideak-desk>
References: <20250724090237.92040-1-imre.deak@intel.com>
 <aIJey5rLh_lBaEtu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aIJey5rLh_lBaEtu@intel.com>
X-ClientProxiedBy: DUZPR01CA0266.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8275:EE_
X-MS-Office365-Filtering-Correlation-Id: f7528c73-1b7b-4465-ba42-08ddcad0a3ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGhXek4yL0g2YVZsZXA1MFk5R0MyeTk1ckI0Njg1Q0dLb29jN3p6cGIrcUJl?=
 =?utf-8?B?dDd4TkZDVGpqaFMzckFVcFRDM2lxUWZXemVyMVJ1YUFma0k3TExSL0VmdU9h?=
 =?utf-8?B?OWNFRlREK1NzY3VHWHRqeStjR3Zmc0wvck9hWXFPOGtYalJhejR5Nkx4THhH?=
 =?utf-8?B?ckprSHBYd09MMTFBL1M1Y2RjS0k5Ry95QlY2QUVwbUpLYllFWjIraWNrMGMw?=
 =?utf-8?B?bUxDTXJWSXFtUEE4UzQ3WktGczR6VDJSSTdlUHl2MmZEUGtEZ2pESUtPcUdW?=
 =?utf-8?B?R2hKdEMzTDJCSWhRS0dIVzlFQjh6YkVWRlA2bWM2OHZTMTF0SERQRjFBYVNi?=
 =?utf-8?B?MlB6b1FlNERmQVZNei9LYVZtSUlmYVVLOWdOM1JqSDBkLzhueno0Y08yRE8x?=
 =?utf-8?B?bTc2QkphMGVuZkN1Z1dHblJIOThRTzdZVC9pNVBCR2ovTE9QRWVKRi94enln?=
 =?utf-8?B?Wk82dWgzbWNZZ0hPTTlNL1RaYXgwWWZTNHpWV0w0QUFWbWJwUzJZbWtHRU9B?=
 =?utf-8?B?dUhodzQxSHA3SkpwTythRmFhZzFPS2M1Zy9aSktxbm1XWVU2QmowZWJReEdx?=
 =?utf-8?B?NU55alpKTGxTMUJtY0tWdFFiTDVHTTlNRlFCaE1jS2NLdlNJUm9Wb3lUQkpm?=
 =?utf-8?B?VFY0VmhCUFdpeUFSTktzeVRyOFVwK2xrSi92T0VNZnFJT2FPTndIbGtvMDZD?=
 =?utf-8?B?NTAzS0dEUUxGMHpXL0RMRUpOQXgxQkZvaVh6SjdTTGVlWHVwV2x6aHhpd2Z3?=
 =?utf-8?B?emVrY1FKTlU1bmFUcVZyeGFQYTZUOHJNNjhTU3RkU29YVXRlaHBmTnU4SU1q?=
 =?utf-8?B?czNPeFZ2ZmJ3R3dCa00rRlVLc0hmMEI2bW9kRWg3Nk05c1dNQzVXMkdOTEVU?=
 =?utf-8?B?RmJ3RmkxSVBYZnc4djhVVXlnSkIrM1daZEVpdC9BQyswSkJUd0h1ZXZ4cU9z?=
 =?utf-8?B?TExqbU9MWU02Y3dKQjRwTnVsZFBWcDZIN3l0OGpOQmo3MWMxRUh4Q3JUZXU3?=
 =?utf-8?B?YXpHSTY0c3lvY081YnpNZ0k0Qzl6Wk55NnBFQmN1UFVMZW12R050aEpjYzBh?=
 =?utf-8?B?b0ZRY0REeHYyUDVCU01OZWpQdG11aGJadlp2RWdhSXduU29DMVR2b1Z4QkxI?=
 =?utf-8?B?UktZbHdqK3RlYWxyb01NbVhlanhTVW8wV2lLNjFIclJwRXk2eko5TjlsNEFv?=
 =?utf-8?B?Vko2WlZoMUZxNktHNldHM29OQUQ2U2VrSDJZTm5SMHN5K0FQZ1NEcmdqRVBi?=
 =?utf-8?B?Rkk3SFAzNFRLWVQydmNRaDRycGNWRGF4enplYjNJOTdZTkI5WWMzTEo5VnJ3?=
 =?utf-8?B?QjltSHI4Wnk3QjA5Z1hJTm42TW93R2psTWRQWmxYMTRzSXVnWm4xWVpmN2tJ?=
 =?utf-8?B?MUI4NWZyNURrRFRRakF2SCsyQU1PT2pMNXBpRERoMDQxdDRtUlhDbjcreTBI?=
 =?utf-8?B?WjUzTWFBS0xSdCs4SDYva1BJQWgrL3A0TkhXeXRvRDlJVy9tejJRVkdmZ1hC?=
 =?utf-8?B?c2gxVlZjcVFYNFFabzNxOTRJQ1RNcmJTYnFuVGJxZHlQTGd4cGJWV0lmSlNF?=
 =?utf-8?B?RWFTb2c2MXZHNFdiOW9pTVRQT3JldmtnWEVVR3NZTmdYUFk5REFhSUQyS2E1?=
 =?utf-8?B?NGV3ai9jNVJVSWJ4djVzSndYazVqNnZyQnc5RTljQnBvSEV3R3gxL0FqN0Mz?=
 =?utf-8?B?OHpVV2RYUlJ3SERoVXg4Ym5JMThvL29SNTlRUkF0NWFRSkV3Y0JjbWVsb0FD?=
 =?utf-8?B?VG9qNzQwcW83eTh3amFwanBpVkdnT3pCazExcU0ra1VRd0RiaS9tQjZNeko0?=
 =?utf-8?B?d3FCQlF4RTdnSXczVllXRDNEYzd5cThETXRyb0lpSmVpRWxyV3dwS3Q4K283?=
 =?utf-8?B?bEpaSkZMZEp4YmhnVFl5NUhwVHNyUEw2Zmo1V2NpR0p3SHQ3Y2txM2xwWlVa?=
 =?utf-8?Q?iuJ8aGQk3D8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emVLSTBhUUJyUlhQMStYcjExWm1HSXJFWXJhLytTUS95Z29vNEZ6WHVORlN0?=
 =?utf-8?B?WE9SYzVZVmdMNW5MVjNaWEt5WTE0MnVXRWp2eW1YQUR2K3I0TnJ5bU9nKzNE?=
 =?utf-8?B?SkdkTkhmMW9iWUlwaFU3Q0hmZzZSbFI4OHRYY0U3NDZGb3lySkE3L3ZqQ2JN?=
 =?utf-8?B?ODhtTDFPcGdhSjdPb2JHUXozSFdCMmc3cEFrTHdoVnBsUkN3VkV4U05OUDU5?=
 =?utf-8?B?NmJPTFJRMmg3UnVWWmRyYmZXQkJQL1hZVTE4QjlNWklsSEZadWxsU0Fxam83?=
 =?utf-8?B?cjVRM2pHSW1vVHc5UHhENUJhWDJ1UlFVMTh5aysySWxMYzRJMDJnY0V1TFZF?=
 =?utf-8?B?S0RwdE9tWlFHdkFtS3pIemVSSGNOZWI2di9YYjNIMWVoVGthQ3E2ZjY2Skhu?=
 =?utf-8?B?RHBWbnB5Ri9WVFc4SGhDRzFHQ25yUzE0RjhJZEJjcER6RmhPM2JEa0VrQ0oy?=
 =?utf-8?B?YlpVSjdEaVl0TW01VThnTnRydnpveUhhTGNkN0Y2VngxMmtDN2F6RFl4cXRO?=
 =?utf-8?B?SWxhcXNWb0JMV0NOTWZKZjFZMjJiVHpIVE0wdHhQcjVkdjB3UTlXcG9VSlVk?=
 =?utf-8?B?Tlhia0NQN3FpaTVzRnRjWUw0QjFwdEpvTzZZWGxZaExGZFIzSkVjOE1zTkh4?=
 =?utf-8?B?d0d1MHdzSVB1cWVJNXRLdkwxYmFDUjIySENHRlZXVkNjaElVcEk1cWVIeStU?=
 =?utf-8?B?ZEd5UC9TWXJIeUt5T3lhdGcweHkrMGkyOUNycEgzSjUxekFpN2RDbG9PbGdG?=
 =?utf-8?B?N0tUTXN2WjBqZXFTbEIxT0s0OTlUSmZlREw1eENrcXAxVUF2SVNOTW1ORHhZ?=
 =?utf-8?B?cnZNcEQxbXd5cUVGWVhtVUdSWk16dXArVXVXMklpVEd0N1l4ays5NytTL3d1?=
 =?utf-8?B?NkRuOTZRT082UjltZ2E3TjJGNFc4RWJLTFNzOXVvWlBiRWROSTF1bEhGdWdm?=
 =?utf-8?B?OWdWR1lOOVdpS1d4ZVhBVnM0U0svRlFCT2NHSTZtSkJlNjQ5K0RneUc5NC84?=
 =?utf-8?B?Yk5nV3M4Unl6ZWhBTDg4cHBTRGdFWWlRMWZwOXZoVklvTTFwNDNhKzg2RmFI?=
 =?utf-8?B?czZkQlNBZ2NRemZyemVDNEsxdnZ3QVUwbWQ4dlNxOFpqbWlpN2lLWTFXN0xU?=
 =?utf-8?B?dmVvTDE0eFlVRTcyR2ZFcUVpZzg0Sm51andxWURQRDlGK0doSWRrS1RlSVY1?=
 =?utf-8?B?dXIyQjlnVFlPS0QvVzlWMVpWOTFHakpROS9ybi90eS9YdCs2QnVEcmdQcUlW?=
 =?utf-8?B?dFgyMDI1NFIxMytQNzNyMkNWdm5pY3Fmc1RMcEVQSGZ5ajNPcENwUjRvanZT?=
 =?utf-8?B?a1IwM1NDbTJGeVNVSzgyWGVVZVlkZWdzMjRNbk52MnZ1MkNwQnNJUW1xaGlo?=
 =?utf-8?B?L2kxL3d1WGdFNll0THh2WDdMbFpuQ2JvV05DRFJxalk4VDRWdzZnN0RJeHNj?=
 =?utf-8?B?UUJHdWRjVDl3TnlCZG9yZ2cySWZNamN1K3JqeHh4UHlITCt5LytrM2pIRkdV?=
 =?utf-8?B?eDBHTEJvVkg1N3FyMEhQb1QzU3lCU0tybjl0QXo5VnJJWm0xRHNybUlZL0FE?=
 =?utf-8?B?dG14RFZuRUg4WVJkWVBTWDREUk81OERzWngyK2NGekxPUXUrTGdxckZqSmQ1?=
 =?utf-8?B?ZU9SVGhQUGRVaDlqazBGT0dpd1JteU9wQ1lWNThSeGxha0tJL0Z2Mkt3WlJj?=
 =?utf-8?B?ZGlQTldoRytJU1F3TlA3a2k2dkpPRmt0bloxenBLRWRCQlJpRExjdGNxTlN1?=
 =?utf-8?B?VWtLSzJkQllnaVlQcmdsQi9jNU4wajhnb2hXNVhUbTBUYU8vd0l0SGdCZG5N?=
 =?utf-8?B?MkRBeGlMOHZIbTJXTFc3SXdXTFgxTkViaXhQZzFtVzE3a1NGNEtsWG9sRFNS?=
 =?utf-8?B?OVVWSzdrM1VGMGdyanNjUWhkQmhxS0ZHY1U3ai9ITllMcTVUTEZjMkV2STky?=
 =?utf-8?B?bUNGcmFSc1ZQcFBud3FqZzNUc3JlYmtoMGdHOTBIcDJPL0Q3M0dWM2tqU21p?=
 =?utf-8?B?RkpJOW1zN2VsbXYvSmo3ZFUxN0Z2MnY1SzdSTjg5eGsvZGdJT3VOQmc2SW5N?=
 =?utf-8?B?ZW5yM2Yzc0VNaEhEeW8wOXNucnIxUWVGOVNvd1RWOVZuOUh0ZkJ5MlBlOWMw?=
 =?utf-8?B?UkN1bldyTnMrdGRqQ3NNbUZadkU3UWlyMlJaM0R3U3JaaU5qRDQ4Y3BmWjB6?=
 =?utf-8?Q?pfHIXJWHufW/5h3nqKRDetK/G+dN5dVzyDWYKGU71XiN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7528c73-1b7b-4465-ba42-08ddcad0a3ac
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 16:39:20.6019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jqWbu54MEFo4Ciw9gPu8mCfDsjcDo8zx966DUuP97UG6zuW3sy9dgLddZFFitC+dxgzYo5gThS4FQrazW/225Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8275
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 24, 2025 at 12:26:51PM -0400, Rodrigo Vivi wrote:
> On Thu, Jul 24, 2025 at 12:02:37PM +0300, Imre Deak wrote:
> > Selecting an option which depends on other options only works if the
> > dependencies are guaranteed to be selected (as these dependencies will
> > not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on DRM,
> > MMU and KUNIT the first two of which are guaranteed to be selected for
> > i915, but the last one is not. Hence, selecting CONFIG_DRM_KUNIT_TEST in
> > i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being selected
> > without the CONFIG_KUNIT dependency being selected. This causes at least
> > the following compile error:
> > 
> > drivers/gpu/drm/tests/drm_bridge_test.c: In function ‘drm_test_bridge_alloc_init’:
> > drivers/gpu/drm/tests/drm_bridge_test.c:449:21: error: implicit declaration of function ‘kunit_device_register’; did you mean ‘root_device_register’? [-Werror=implicit-function-declaration]
> >   449 |         priv->dev = kunit_device_register(test, "drm-bridge-dev");
> > 
> > Fix the above by selecting CONFIG_DRM_KUNIT_TEST only if CONFIG_KUNIT is
> > also selected.
> 
> Perhaps DRM_KUNIT_TEST should select CONFIG_KUNIT ?!

Yes, considered that too. However, I presume enabling
CONFIG_DRM_I915_DEBUG should enable the KUNIT part only if it's a KUNIT
build. IOW, a regular kernel, built for running on real HW, will not use
the KUNIT part, but still may need the rest of debug options.

> But well, let's fix our own mess on our side. I'm sorry for missing
> this detail. :/
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> > 
> > Fixes: 17133255a322 ("drm/i915: replace DRM_DEBUG_SELFTEST with DRM_KUNIT_TEST")
> > Cc: Ruben Wauters <rubenru09@aol.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Kconfig.debug | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> > index b15b1cecb3aad..3562a02ef7adc 100644
> > --- a/drivers/gpu/drm/i915/Kconfig.debug
> > +++ b/drivers/gpu/drm/i915/Kconfig.debug
> > @@ -50,7 +50,7 @@ config DRM_I915_DEBUG
> >  	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop checks)
> >  	select DRM_DEBUG_MM if DRM=y
> >  	select DRM_EXPORT_FOR_TESTS if m
> > -	select DRM_KUNIT_TEST
> > +	select DRM_KUNIT_TEST if KUNIT
> >  	select DMABUF_SELFTESTS
> >  	select SW_SYNC # signaling validation framework (igt/syncobj*)
> >  	select DRM_I915_WERROR
> > -- 
> > 2.49.1
> > 
