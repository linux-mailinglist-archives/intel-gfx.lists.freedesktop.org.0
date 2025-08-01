Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D573B17F9E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:49:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C5A10E82B;
	Fri,  1 Aug 2025 09:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxcK/ZkS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB69B10E828
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 09:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754041752; x=1785577752;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ee3vhX7S6Z2r60BbZ1ixzorFmQ4VkXGd+ZaMJVUnKaI=;
 b=mxcK/ZkSbl4oXPhe7h3oKa46e75PeyJ+pC4/9yN2XOt+xNYYR2rDGYwY
 p6pOJTvREORfWKTa/zB74O3i1bcn/U7RU//WjH6PbqqiyHnuQolJbtTZm
 HNYJzCmQ3QV9vh7dvFX6AiYu8xDOMVay/RQO6rGJXxWLawlFtwk/IrV4V
 cGUyQIgCJUjfOsjApWumKj3CPRUaxZPNCDj7sHQZFj4rGyWvasPaUFZPk
 pzgTKCmIbqLvpUufn4lWNdXUQVANrzSzWMX7ir3xZ5APseMlVOeOfGg76
 qwPp4QNIbtyDQf3bs+2dia8GWi+LilqzbX6K7AqFL0dYwjjG2PTK8KCoX Q==;
X-CSE-ConnectionGUID: Ft0gLMUNTM+df+c+OQ5ryg==
X-CSE-MsgGUID: hkCc9uqSSG2rmwmjf5dGxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67750258"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67750258"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:11 -0700
X-CSE-ConnectionGUID: bSpWg3b4RDKg+k5i/7V9FA==
X-CSE-MsgGUID: gqJ4ucfbR++l7GJvkpyVag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163542248"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 02:49:07 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.80) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uU2ibm4DMuExu1NeliwoQKtH+IY2ILE4Ayu7da+dUm9s0NN5S+HO4I7g4C2kC0dstGBk54mo7iJugAPeYN3oz3xgXUXDFFPg1qV/79dvKgRNffoYBCfCz9qX7jAeMHFphDuX6vbz8CkiWwnTlVJQegGQPoyOO3c9/jQyHFviHVqU07WhWUf/7D9T5BQfOVpfPsoCZkguUbYN5Nt603I/QNbruT3SqOEhlt2u6xNZXjgNAyGTL+Jv1KTQi9BGVu0G8InaVuLEJFcw1ULgoUZKeeyoz7rRPdlxXzXyRtPTy3EORTD8QpHrhtzWT6jRC0DjMeMokXJaSCdG26pUepQsYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpQA7KlCa+dsLlyOgnzMgDk++Itkeja193W8VdID1Do=;
 b=pAKkQpTr+lNjHsI35zyCqQxK/MyOZbz3p1661h1mkWqI7EGgBnw9CnOvydYOhYsHV2TrO79KvuUxAfeEDJcT2L62V4I96nEgd0Ge+WUTYoJriQYhrVtMmWJ6w+uSjsw+UFwn1HI/EqXk3yknQlc6E9jJEyDcKiqQxkAEsnyUvrH+T1XASxduHPA15vZVlKxvTR2JLt1+YWkx59cN7e21ALk/T7PRSBNB5vLDB4ExQ1kfukCnefDDBtqC+L10jfBsJALPHEBjOtMtOryDquO2+Cokv2Jhgvx/yaszvw5fMRCI4sDX2a+xtbVIemwQool0uVPZ7toU2brGizD2Tcq+RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 09:48:59 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Fri, 1 Aug 2025
 09:48:59 +0000
Date: Fri, 1 Aug 2025 09:48:54 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <ville.syrjala@linux.intel.com>,
 <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 1/3] drm/i915/gt: Relocate compression repacking WA for JSL/EHL
Message-ID: <edc6d2df651f5990c1d70ca78e8704b60e06adb2.1754041191.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754041191.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DUZPR01CA0137.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::10) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 52a9a573-caba-4074-ef3f-08ddd0e0a390
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MCtxOTVXbXYwTHd6ZjYwYjNpSVNINVk1MkhYL1hnV2lGWStXaVQ3eHc2L3lo?=
 =?utf-8?B?ZmptRm5ZRmdCQnk1b3RLRTRMUHlicVZwSFY4dElEQXVoY2cyWnpaQnNvNXk1?=
 =?utf-8?B?bCsrZjNsaVQrd0hpWTRVdVQ4dFJraFBCaElVd2gzU3NiUGpyM3pTTUpvajVN?=
 =?utf-8?B?bW9CSG9iYUpOM2YyZHo0S3dRR1czWlJiS3pXWjhzak5JLzRPLzV4Q2JYSHpy?=
 =?utf-8?B?a1FRNGhoRVJuVHYxc2JaYlRqZVVhY1dtU1RxYmxpclNWUXhnZ2JmNWVXK09h?=
 =?utf-8?B?YnZuc2NSTCt6ZjA4ZmNabHNhUkxIZjN3ZG5mMXprR0FLUUVWU1dXMUtvT2F5?=
 =?utf-8?B?Y0Z5VXBML1oyRk5JdDlUOURoZUZ3Unl5TWszVW82Q1ZsMlNIZHpEY3B1ZEVh?=
 =?utf-8?B?dkF2bjZUa1RJdFRvdDJMN2pVOFJQdUFjaFVzdU9WL2dhWkNqcmRRcHV6S2lJ?=
 =?utf-8?B?VGtlbDlHUWptd0EybndjUFpYL1JrekM3NTBOZHhmOStLcElENEFxSkhaeGI2?=
 =?utf-8?B?dGJmSFpMcGczNE9HY1llTWNUUzNUZ0dKMmIwOHhhb1VkNTZ6b2x3MnhheFFr?=
 =?utf-8?B?YXJkSG1DcDVzUWxzSEZGOG95L21qRUtIWnBtTWFXcVcvQlBOcFJlQkI0d3Bl?=
 =?utf-8?B?cGRSYk85Vlp1WjdhNU1jSWxSditpNlRCdHgxRGtLcmR3Y21IVUtFVG5uUG1C?=
 =?utf-8?B?YlZ6WHlXVTgzRG9JZ0FLOFVtb3EvZi9RV2o5VmE2bElpeE44dlZFSTZuS25P?=
 =?utf-8?B?THA1aGEyK04ySi9OR1dQWXlvUTE2RXpuR0xEVHlNdGlyQTJwVFpneWx5Mzc2?=
 =?utf-8?B?K21VbGFxcTZHUXZLLzQzTi9vQ0VORDFoUnpiQTRmNFk3ZnpockE3QUlYaEx2?=
 =?utf-8?B?VXN5dXE4ZWE1azRDcFFMc3ZKYjBGQXUycVRJQllVeGxkdlFaZEhYOTFvYUU3?=
 =?utf-8?B?MVB2aFlqZTlzUE9LUHpueW15N015bVRuWVRpQklDSnhVRmlaZ2Rzdm5OZUxp?=
 =?utf-8?B?NGh4bU1IcktJbFJHUnBNRHJuc3EzQmJkVjZEVlBudHdwa3NxT2FLYzE1Q0sw?=
 =?utf-8?B?UExBdExDTnZveHY4WElSako0dDRvV01wNDhvVGEwUWNDSHExVmxLRFM1bml0?=
 =?utf-8?B?YlA2Rm0rUWoxZkczbVA1NEZGdElMdG9SM2ljY2F0UnJiVDYvQXllWUdTa2t3?=
 =?utf-8?B?VExiL3M2TUY4Z0FOMEs1VFo2bEJsaVk5MnZLaU9aUnJjVmhSR0x4eTJQV3l2?=
 =?utf-8?B?RDA3MEM5YlB0TzExVUR6cmRPKzByTU9QS2FaeHR1eUQ1S045Q215bG9ubVZ1?=
 =?utf-8?B?c0ZNVDYvNWROU1BIREJ2ZTZrOWhXRjB6dUNja0pqMVJzb3M4RVI4YTQ3cWNt?=
 =?utf-8?B?TnhiaEYxNVRjMzFnc1A2ekFvVVpjNFc1K1JBYjFXMTRuWHpmV1FXd2NwVjNZ?=
 =?utf-8?B?UDVUa3cvbjFkWndoUjBDQ2RrUnlBTFdjZkg0ZFBkWmVHbUtWdVhBZHhwMTdo?=
 =?utf-8?B?SmpwcE1KY21uWHgxQ2kwWENlTk1jRG1IemRLT3RaejFjQUVBZ0NtZ0d1a2Zq?=
 =?utf-8?B?QVpUd3I3bmVOQUkxUGhsd1p1eDdpQ2dJZytjZHNtSjZtT2dIR0RzRVRBVHYr?=
 =?utf-8?B?SVdzbzE5Tko3MVJsSUJBd0RsZVZyYTRhajBoTjhGb2tncDBWWEtHa0Z0dkNo?=
 =?utf-8?B?U1plT3JhQjdDcUZRTThTbDdPN1V0NERCSVpUQkZuam9HUFJWZENBbzZ0azBX?=
 =?utf-8?B?eWxXRnRWeTgwYUdSQWpqSUp1RDNvNzd1M1Y4V0VVOTFDM2ozQjFFSDZZNHpY?=
 =?utf-8?B?emk5TVhZS0JiZHVoYis2V3krZHNnNzkrUGtiNXNqclVEM09GRHdxc2N2V29u?=
 =?utf-8?B?a25QcUdxTjZCbFk2eUY2SysvTWROUFpqWkczMi9KMEx2dXZIVE13aEJZVkMz?=
 =?utf-8?Q?Lzm2+op8sS8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlMwek9uVDllbk9IUzRKSVJ3N1E1bFJyV3NLeWNOTUsraXVmUWJMYlJZZjVn?=
 =?utf-8?B?SUdlcUxzcWtNcVNiZzBnVGNMSHZya1Y3blA2Z0tRUGtHczBpRnB0eEI3TWRQ?=
 =?utf-8?B?WU5Lb0xCSGllYjU0d2dXYWNvVTBiWVFoUGNmdzB0bk1Qc3NXRXF4WTljUkJx?=
 =?utf-8?B?MGZXRndodDlQRWdjYzd1TjkwSU1zWUxTVk9Jci9HMGhOcXFzVlk3RlNNVzh3?=
 =?utf-8?B?WUVvYjN6VktPcDBSYzZDL1Z6cVNDanl1cXF4cjBPYWRGRHVqQldqRFB6MWpO?=
 =?utf-8?B?NnRIVUZra2F4Z01LQTdIYkU4eklXUnczUmNOeVBOV09ERlRNUXFINi9Lc2pR?=
 =?utf-8?B?bU5haHZ1NTZYMEZSZXo0SjBPdEp1RW90c0hIcTJQSHJxS2luWGd4b3NxMUJG?=
 =?utf-8?B?aDJNQTBwYzlPUU5yZENUMEYvdit0TUdYaDdxTVY2Qk12WUJlRWZsSTZKaGxm?=
 =?utf-8?B?RDBKSC9QU25EcXFTbHJ5QnJoN3YyczNyWXVQUzVrdisvUjBTOS82R25KK1dX?=
 =?utf-8?B?Q0x6Wjd6UG5uQStTSlFtbi9KMmNhV25qSmIvVHRRWkpQVHhXdHVTV3A0cG5N?=
 =?utf-8?B?QlBYMVdyaW1rUzIxMktrdG92OTF1L1o5cnh4NG54OWxEbVRQeUlUMC9ZYWxp?=
 =?utf-8?B?VjZYTjFvMmk2SXN5T3BOV1BBVVloVjQ2ejMwKzVmbytsQ09yQ21pN3BvTWdq?=
 =?utf-8?B?cTdvcHdQRE1GR2N0a3JZZkZNeFRvWVN3QmZML08wdkNWWTFldFAyRVRiWXZp?=
 =?utf-8?B?NVFyWVZlSFN4eWFzMjczS0NRYWZydk5SUHpOaFJuajZKU1Z5Yk4vdXZGRmdZ?=
 =?utf-8?B?amhwUVpkei9RQTVaa1dIRTR4QUxyendGUFdBQy9ScHJYRGRhZ0phdTZwektz?=
 =?utf-8?B?dThmaUE5a1FWU0dmZWtha0x5QTc0ZWo2ZUo4S1J4Mm0zVWRVNmljTDVCV3gx?=
 =?utf-8?B?endlMnp6d2R3VnVHYWpEWnlEczRVb0lHMityRDc0emU4K2J6U1BuWEhVWHRp?=
 =?utf-8?B?Nzl4NFM4YkJFUFV3eThkM3dTYjdlbElmbC93MXNoRE5ySTE1aTBFdXBZYmJN?=
 =?utf-8?B?N3dmS3VJbGg1NmMzSFJaNjcva2d0TTdUMVFjNzVQNklWSlhTL1MvdVBUaEdu?=
 =?utf-8?B?Tm1FMGllSTJZdVB3ZDlIYzhhWWZ3b0F3bjRGdE01Wm1Zc1JBTzRLajZIRUpD?=
 =?utf-8?B?WnZ6M3l3MStvMndEWjhKT2ZWRjVBVk1IVUlUWmRPaFpLelRGWDJKdWRTTzBx?=
 =?utf-8?B?NjJRQzhkWGUxOXVWd0VlLyt2Z2FrNG1nb1dSQ1YwanlLRjJFMXhCS2FzcEdS?=
 =?utf-8?B?amUxajg1VHBNbXBiWWhkZzduTVU2dkpLMDdKbHg1dUYyQjZ2a1h5TUNsb3BT?=
 =?utf-8?B?bHE2U2lJOGk4azRTYnlKR0RPZDAxNXlDd0ZqNU02UEtra0NldnVQT0JCdTJM?=
 =?utf-8?B?eFVlZGJlRnhLVm5IM3h4d1YzMHh5L3VpUktJNmVVS3BkWmFZcURLWWFYMGxu?=
 =?utf-8?B?MlFWR0pUUGJocWtmKzNwZkVlcGtGOUh6WVlDaFVKRW5VRjZSRitEc0hQcEZM?=
 =?utf-8?B?eFBXVVVMYTNjMTY2YXhuaC9taFBDeXRnK1hhSlNlbklVV25DUXBBNjNmcm9O?=
 =?utf-8?B?Rm03NndscVBrOXZsS2hsRzA1c2R0UmhGTUdMM1JjSVBtUzh6S1NzRVlXSUJu?=
 =?utf-8?B?aDhDbEFTMnMzM0tOeVdnUjVIazl0TVplQjB6bWNpUzRnamdQWUpobEJFRGNH?=
 =?utf-8?B?VEVqTUNLWUJhOGpKeVp6NDhvK1lmTHl3WHpUNllzWnRGQ2hEUkFpUnRmSHZN?=
 =?utf-8?B?UnZ4SmJ2L3lVaXhsRXZZWHdrWU9TaEd2NEZiN3pVZ3QzeUxrcHoreW9tWE93?=
 =?utf-8?B?RFYzV1RXTS9TSEh4blkycVpURFFNR2U4cUJoa283RVlwaEtGYnYzVXRnM0tX?=
 =?utf-8?B?b3RXdlYxV0VKNFZCc29LQWwrb1JLenluSkJpc0JHMHlqcVQ3TTZNemhXbXA0?=
 =?utf-8?B?bDRuaXIzb0FOb0dXa21xa3RtRFYyU1plYTNOazQvZkNYbXlNZ0hGWmJzMXBN?=
 =?utf-8?B?RlM3d1hIVnZaMDZsYzd4dmFGeDFiUW5NS2UvVmNGWnZJaXU0VVpVaHo1bS9E?=
 =?utf-8?B?bU1NdE5YakVTd1FMbm4vSUVtWGJkUGVUT2VWdDk0VitrbklMSkw4dFFKa2lt?=
 =?utf-8?Q?8cEoaXX7voPXJg/uy/SG/fM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a9a573-caba-4074-ef3f-08ddd0e0a390
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 09:48:59.3292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jarTeTxFOehzXmMRnbV3eJ6V+pSJzb1lJB7vQlmLMEV0SwYxiQr/JiqR+9eI7NEUXLes8FkHdoFjuvPR51vYq9LyqNyZDy/HEvmG4Z8s/5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

Relocated the workaround for "Disable Repacking for Compression" from
rcs_engine_wa_init() to icl_ctx_workarounds_init() for Jasper Lake and
Elkhart Lake platforms. This ensures the WA is applied during context
initialization.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b37e400f74e5..79298618cda6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -634,6 +634,8 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
+	struct drm_i915_private *i915 = engine->i915;
+
 	/* Wa_1406697149 (WaDisableBankHangMode:icl) */
 	wa_write(wal, GEN8_L3CNTLREG, GEN8_ERRDETBCTRL);
 
@@ -669,6 +671,15 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_1406306137:icl,ehl */
 	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
+
+	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
+		/*
+		 * "Disable Repacking for Compression (masked R/W access)
+		 *  before rendering compressed surfaces for display."
+		 */
+		wa_masked_en(wal, CACHE_MODE_0_GEN7,
+			     DISABLE_REPACKING_FOR_COMPRESSION);
+	}
 }
 
 /*
@@ -2306,15 +2317,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
-	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
-		/*
-		 * "Disable Repacking for Compression (masked R/W access)
-		 *  before rendering compressed surfaces for display."
-		 */
-		wa_masked_en(wal, CACHE_MODE_0_GEN7,
-			     DISABLE_REPACKING_FOR_COMPRESSION);
-	}
-
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.34.1

