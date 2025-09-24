Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A803BB9A99E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 17:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291CA10E23E;
	Wed, 24 Sep 2025 15:24:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZokwRbeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3065D10E23E;
 Wed, 24 Sep 2025 15:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727484; x=1790263484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=K7ZwadThveSfncPH/TN8fZvmNh3+kHSsDFJoGvgofrA=;
 b=ZokwRbeAHWzOKB8r9PYGJ/o04w03ccfUyH7nRyj+vQt5l2yT0HDJI6Se
 lt2YAswEM3GK0As7ou8udK5uFYSyOXfgkhfpOF5K+KcBufXrxugna8ZWk
 LuX/vPaql5aAErRBQVZPHFX5dAdDJzUDgtI6Z/aGgsNo3GAaMFMHamEQ8
 FRBqaHo/mDkYeOZNBYOX/a3fHJzXWTMkvPNLCpFkdBSkmq5R5R47imw/5
 /gre6MKx1TsPg2j1AkT8IRLRc88h0rOS6XlbNaTlYY+RKYl/ueKB7skEK
 BqWDFZXR0ziZTUh+Pg5oXEiXb7X6PVF+pJ+lXv12G3yem2QuD63GorWBG Q==;
X-CSE-ConnectionGUID: DCZVNXW1SIqcd826CVhhCQ==
X-CSE-MsgGUID: MtYUbvZuTiKT6gIHnT4UJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60942498"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60942498"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:22 -0700
X-CSE-ConnectionGUID: krpWKWmqQEyiXUC6WXDQtA==
X-CSE-MsgGUID: mm05aWpVQB635xehcG4JGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="207806770"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 08:24:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 08:24:20 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 08:24:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qp33pJqB2dTziDWSPKi19yLVsd14rSv05fTbkq8/yc7IE02RFlDOdoL06Yti1XXbnzCmFSfXdT/91fHANbX//3DRuaWexzC2SiwOjpZUl7I+BXZJo13rPxOtKL5sxsNUJ5avSGTsmBLsCnFqcRS7baa414AvfBqXJ34lp7O6E9MtAnWuR8eNHbsYXG4dQ4FNBx9vclvGtLcORSjLAf6NCFX8ZOmMTdaSFEImT1GYTsKmVmmlciYXizRGNNJK0S6abKSNGgHYv1/eaQdMiR546HPWR1RpgTLwT8sxzOqr4PgQ43iuk/OrG0TMeNznoXPBF9SBOiMPA2e/YdW4clPSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7/UM91FiP1qsbQ+Smn18YzwzdU/TtU8qTgoqID/C30=;
 b=q+pRWX5jQZw3SScvWgnJcS1hwgB4HlWliEkSfiDrsr8KovGVs0QKnv4ZvPGFfMk5XPWVpj1gT8/Ws7K11lhhNbPZNNO4TQgRMFeNdSPeR47Bfl6vpymNEpMb70KFzDKcj8F4KrjyJ5tERKq0X04Li9DeYB01L/7B5pXXVX9ELYBwhujCjY1K2Djkzi7Wj0CmLBK7DgRLwPMhujmgid2YUQwms67Pif6lDJwjXpLZeFte+aucyZsR4xIeavR7xxbyKnxgDMXHXiPnWnDW6VhNh09JMLM2/U/yLeR/ZLQI3FGBjS238MKOW0H7VvljJYvqvc8mSyM+ixRlEbpNOwTnZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB8962.namprd11.prod.outlook.com (2603:10b6:208:565::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Wed, 24 Sep
 2025 15:24:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:24:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 5/6] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Date: Wed, 24 Sep 2025 18:23:31 +0300
Message-ID: <20250924152332.359768-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250924152332.359768-1-imre.deak@intel.com>
References: <20250924152332.359768-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P302CA0030.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB8962:EE_
X-MS-Office365-Filtering-Correlation-Id: 242b545b-195c-470c-2c25-08ddfb7e64da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDFmVVhWbEJzbzR1NEFPb3JqdEJhc2VuTkpRYkx0ejhGd1JkdHFPblZHWGpN?=
 =?utf-8?B?a3owcFZEUkZwdFZZQ2VwR2toaCtnb3ZsL2lPQ2ZMT2tocW8rVXNVbksvZ2pq?=
 =?utf-8?B?cEFnSnhBU0lTY1NxTXVoYXZpVzdMQ2xFRE1GNWVId2VpQzVKYWZlL3NEUWVw?=
 =?utf-8?B?UHhTTFhCbzR6MHprWXlWTC9aNkRpQnBJZEdjMy9MdDhXeWkxa0FucTFSWFhy?=
 =?utf-8?B?R01MUmxRQWk1Q0hlZnVhV05peTJ5WkZWTU4zdjRDRDdJcEF5UVh2NW1rTTAz?=
 =?utf-8?B?V2ZLMWw1VzlHTDRmNnFtSXVUUkZXWWpadFdnc0FIaXRIV2VPK3BBYjJEU2JR?=
 =?utf-8?B?NjFEb1BEcW5UR2l0VnJ6eG1MdS9kTUpEck9iS2d1dzVFRmZTc01wMmZDZS96?=
 =?utf-8?B?bTc1cmlSdGxZUUdmSk16TG9hV2UzWTlmOGxzY1dYREIwQVMwVUg4ak1uWlYw?=
 =?utf-8?B?c1Vxc2htcTBYWXlmYlF4S1hnNzRBTEo5OGxML2EwbW05SGlJOWhHdkZWbVEy?=
 =?utf-8?B?dUl6dXpzcCt6eDRYcjlralU0cTdvRWZCeUlOaUZRaWFkL2tSK1N3RUdXNWxo?=
 =?utf-8?B?MDZYcTlNMHJwVzFZZml0NWlLUzVkcGdsY05jcWd0Um5WbEw5dFdlNklJVDZx?=
 =?utf-8?B?b1F2dHBiekRxVmkxWGh3Z0FrWkNqMHgwSVRkUzhCTGduemYrZ3ZIVEtKSEl4?=
 =?utf-8?B?cUhDMm4rWnF3RGlJNVZmNk9XaE9MdDBCUFdxV05PdDJxTWExV1JNUWNRbFNR?=
 =?utf-8?B?TzltZEFoWEl5Q2plalF0dFcrVDNTMFZIR2JQUGxuMXBPaG5sU1BsK2dTMFNa?=
 =?utf-8?B?YUNES1NLWHJpb1RwRllVWk9TSzlXcHRnVE5aRVd5aXZ0Rmw0UEhrdnBGZUxu?=
 =?utf-8?B?ZlhzZ3ZqSzZCQ2dIRmdWTzg1RFdWQ0VzWVZXdjBERVdOMEZYTlpkVVFncWI5?=
 =?utf-8?B?SitzMGZ3QXRIbm9qR25Hc29xeGlzd0FGdHhKNzErVEhRdEpwYmJoakJ2S2Z2?=
 =?utf-8?B?QTAweTBLRjdjU0FnU2hPZTdFOW1qN2JMWkd4eUFnS2dkcVNxTUJ6WlpUUDhZ?=
 =?utf-8?B?bkhZRWxqQkxETFQ0bVJ2TmFWd3YvS1hPTVNXYjdVdDZNVlRZbnVYaVJad0kv?=
 =?utf-8?B?U1dOMmtCTEEyTVVWRWVNNThFUnIyenBjY0c2eTkwazJBd3ZUMVJ3aUJYMS9I?=
 =?utf-8?B?WXJkNTdaTlg3VlNTYStKK3NRRUlaOExXVEg2Q2pUb0xQRUp1MWxCZEJtYmgz?=
 =?utf-8?B?N1dqdTNMQmhTek9RbzlvLzNTZTUzVG05WnRCb001bkE4OExtaXBuM0p1dHcz?=
 =?utf-8?B?eFJNY2gwYWRRZnBxcVJqc09UcCs3bEpxNVNaQUlwU0hsK1BXQ3oveWwyQUNZ?=
 =?utf-8?B?L0RHVkUyMlpHRFN2QlZmOXNsVVgzSlB5L2grUnMwVGhVaWlENnh0UWtBZXRF?=
 =?utf-8?B?WjFVd01uTjFxRUNzejRtbXhnM2NOS3VKdFYzWEl1S3pyeVp0RFZhNGpLemVH?=
 =?utf-8?B?cjFUR0NFUUVUN1B4ZnRWWlB0bGdnZGpqQ3F3ZUs1ek5IenhzMzY3NDdvTkZ6?=
 =?utf-8?B?c0dsUTNUUVZQS2lrUEdwNldsRVFYNmZrYkJwSCtNMlZWN3dNbDBsN3VMWFlk?=
 =?utf-8?B?cDBjVjhoQXEzajVtRkJvcGlmMHFGSDZ0NWZkNnAxenNkc0tQYUFBdHBVTG5R?=
 =?utf-8?B?ekFDemJscm5lYnRvOXBQOUU5cVlrQm9xMzN6RUcvR1NxcndqK0Q4WWxPemVs?=
 =?utf-8?B?QUdkQ0VGMTM4MFZMcmc1YlpTTzhKakEvaGEwNW5CWVdXWU1YdnYwVTFIRy9Z?=
 =?utf-8?B?elNUZTJQR3dNSHFWbDdvbjlHcytEbko2YU1GV0JDQSt0Z2ZFVTRkU21HRnBi?=
 =?utf-8?B?Qkh4NW9ZRXhkbGwxVFNlNTdoUGVXemtQN0pzb0wvamhLR3E1Nk9uNy80RElO?=
 =?utf-8?Q?BOj+kVvPefQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1NvdVpWc29hT1lxNjA5OTdMM2MvNEg0V1ppRnI1UHhMallGSDh6cnpscGd4?=
 =?utf-8?B?eUNzakg4Ync5YncvbkZTSENYUFFFNk1GdUJyRzgyVzVvM1pyUmEycjhqV044?=
 =?utf-8?B?WmJBU2c2ZTF4N2lDVDZ4ZEJ5VU9LeTZxNlV5bGF2anp3eDNkS1dSR0oyU3E0?=
 =?utf-8?B?QTVyWWFPZmxxNmNReFNYUXdpWWxkZ2g4U0tJWXBNbk0yOEl0ZlI2dnNnS01O?=
 =?utf-8?B?WFZEc1E4amNHYXJTYXVScFlmam51dGJBcGVIOU0rczQvNzF6bmhBaUJKenhF?=
 =?utf-8?B?NlNoVnVjTFpyeUhXcmllazhuT05PWHdGZVB6MWIyVEI1NEFUWTJ0bDFzZ29n?=
 =?utf-8?B?czJMdGVEYTQxVVMxSS8rb1dlM3dSZDM0N25aWG5HNldmaHF0QmxaeFZ5WWpN?=
 =?utf-8?B?WUcwSXhBUVhSZlBuL2tCRWpUVGlTTUJuQ291Q0hwYlVrNHZJNnRnaGtEUjlI?=
 =?utf-8?B?WWFSU3VDRit6YUd3YlQvMGpuMEE1MVRtRHlKU3FYWWNxZ1p3bXVzeHJTbjBB?=
 =?utf-8?B?MExQWWtUU0Vkbk5ESDgwN2dxbXhzbkRkZHM2TUZaa3lkNnVBTGM5UDdjTkZS?=
 =?utf-8?B?d3RGbUVzbkpOZUQ4Q3VzQ2wxcldKSFA1bG8za2xqSU4wbkthb2o2L3JNaHVO?=
 =?utf-8?B?djVLT0JZL0dvQ21mNUxOWG0wbGhSNTJLc3hGWkdNNTRKUUhYQUVFOTA3TEVi?=
 =?utf-8?B?TXh3d3dMc1I5NFoybHh6VTlxckNWaGVDM01jcDRqRzJPeHRwSlVqU1g2bHdh?=
 =?utf-8?B?amRIM2xMZjQvWC9CbFNFRStHSHZRTWMyMk84dElTSkltbytmK0JlYjVpM1dW?=
 =?utf-8?B?TTFJeW5PN1pzZWtHTnpoeVYxOUpWUmQ2OVh1cEdNZEtuejBaYW9pREN6TnQ1?=
 =?utf-8?B?Z3hkbzNPekFYeEhKYTdsM1JLWHptTGZpVzZoeXNmKzE1azJiZWhZc1JTYnBn?=
 =?utf-8?B?bWh2ZWROVGpvMTZ3Ty9HN0R2cEovSUZvZzNZVktiZlU5bllYdVV3Z25DSlpQ?=
 =?utf-8?B?UGJUbEZKN2N5aittVlNNOVhZR2x1RUNqdTNOUGZCWFYzUUswbTdrbGExM2ha?=
 =?utf-8?B?TXVwODR4QXJHUW9meEhKTG1oVVNKNEVWbnlUdUl1STVJd1JPcCtIbEFtVG5a?=
 =?utf-8?B?WElGemdoVExyZmdCQnROVU9ZYlBtaTh4UjhiWGFsWEhQbU5jZ1JrQkRkdEE1?=
 =?utf-8?B?b0xNTjVDOC9CZ255MHZ4aW1leFNFWC9WVjYyRFM5b2cwbU85aGwzUW1EVjZk?=
 =?utf-8?B?MmttbkwyNURvQ2xtVU00enJqa0ZTbldvc2h4K2FWMk8zWGFnLzdxcWlzNmlO?=
 =?utf-8?B?c1JTRGxEek5DbG9PR0FQNUJ6bEg1MDJhOUpieXhPOGxwMi9uMktVbDI5N2RS?=
 =?utf-8?B?TnRwYWw2Rm5zdGx1YmdXNnRPOXhQOVpqZnI3UE9TRFhSN1RpdUl1R1EySm9y?=
 =?utf-8?B?aEdrM3Z1dk9kNmlvL1VKOHY0bnlQL2RtVGZZTElkUUxGaFk5YlBuUElKVmJO?=
 =?utf-8?B?VEdlc2hLRVlmL0Nwb1BWQ0hKWC9LZVpUZk1vTS9SUTNDbklsc3NpeUp3TlJO?=
 =?utf-8?B?Z1hUM2Q5Y1ptdkdDcGpIMmM3d09hZUk0c2d2UXRpd1QyMGFhaDQycEdZNlNo?=
 =?utf-8?B?eU1QdGF1L2lvZ21hYzBURnE5T1o2NTBxN0M0N0YvaWJJV3JXSDFKdmpOSkhs?=
 =?utf-8?B?VEJ5eTNRaEVCK1Y4aUdVcGR3bTQ2cEhwQ1ZHWGxQZXUyWE1rVGY3ZDV4RFAw?=
 =?utf-8?B?WWxWcCtxZ2YxTEZVUTF0VFRzWkw0UUJzNmErdVlselR1NVgzVDZpTWdBVmRy?=
 =?utf-8?B?RU16VTI2QlBIelJKWlBZaVc2NS9TMXUxc0crdUVKaUxOSk1pd3VxVEdVa3FB?=
 =?utf-8?B?a3BOOUluR0dUM1Y1WlR1RzBFMHlEd1diUHcyakt1OHArMnYxcngrdUNjYU54?=
 =?utf-8?B?UXlaV0dLcXh3RTc0M1MvdkNHS1F5dmsxYXhEMUdhejFGeWRoRXlQakU0NUU1?=
 =?utf-8?B?OEFsNGJBblcrQ3RhRU5YL29qRjd0UEZuREx4eVgvNmlrK3A0eGNSWGpuVk1R?=
 =?utf-8?B?dkpjRzYzbm5SZDRmcGRtQWxIWEI3Q3cySyszc1d2VDdMSXlTRXZXeWlhZlJF?=
 =?utf-8?B?MjFBOFFTb1R4aFdKNjR6Uit4bGxtcDdEYUFXQU45M0N3UWZtcnI1OTR6ZVgr?=
 =?utf-8?Q?4QViHd/Z5cicrLCLHFlVJ8Q6+jWAp3UNmiyNo8nvyQ05?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 242b545b-195c-470c-2c25-08ddfb7e64da
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:24:03.4504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qf5wBzDnFFb5uNAlEPX0ffr5in6fSeevC8RRRo5T4MnUSeAszzBrr+YyL1gzmbkRGbvSUp+IdIQE57F+QooyDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
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

Read out the branch devices' maximum overall DSC pixel throughput and
line width and verify the mode's corresponding pixel clock and hactive
period against these.

v2: Use drm helpers to query the throughput/line-width caps. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 51 +++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a76..73bdafae604f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -552,6 +552,14 @@ struct intel_connector {
 
 		u8 dsc_hblank_expansion_quirk:1;
 		u8 dsc_decompression_enabled:1;
+
+		struct {
+			struct {
+				int rgb_yuv444;
+				int yuv422_420;
+			} overall_throughput;
+			int max_line_width;
+		} dsc_branch_caps;
 	} dp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e925966f4c85d..d7ee17d3f75a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1016,6 +1016,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
 
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
+		return 0;
+
+	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
+		return 0;
+
 	tp_rgb_yuv444 = drm_dp_dsc_branch_max_slice_throughput(connector->dp.dsc_dpcd,
 							       mode_clock, true);
 	tp_yuv422_420 = drm_dp_dsc_branch_max_slice_throughput(connector->dp.dsc_dpcd,
@@ -4175,6 +4189,33 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
+static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
+{
+	u8 branch_caps[DP_DSC_BRANCH_CAP_SIZE];
+	int line_width;
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
+	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
+
+	if (!is_branch)
+		return;
+
+	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
+				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
+				  sizeof(branch_caps)) != 0)
+		return;
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
+		drm_dp_dsc_branch_max_overall_throughput(branch_caps, true) ? : INT_MAX;
+
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
+		drm_dp_dsc_branch_max_overall_throughput(branch_caps, false) ? : INT_MAX;
+
+	line_width = drm_dp_dsc_branch_max_line_width(branch_caps);
+	connector->dp.dsc_branch_caps.max_line_width = line_width > 0 ? line_width : INT_MAX;
+}
+
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 			       const struct drm_dp_desc *desc, bool is_branch,
 			       struct intel_connector *connector)
@@ -4190,6 +4231,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	/* Clear fec_capable to avoid using stale values */
 	connector->dp.fec_capability = 0;
 
+	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
 
@@ -4204,6 +4247,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 
 	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
 		    connector->dp.fec_capability);
+
+	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
+		return;
+
+	init_dsc_overall_throughput_limits(connector, is_branch);
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
@@ -4212,6 +4260,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 		return;
 
 	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
+
+	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
+		init_dsc_overall_throughput_limits(connector, false);
 }
 
 static void
-- 
2.49.1

