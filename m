Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAeFG9l+EGrdXwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A635B755D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF3910F66F;
	Fri, 22 May 2026 16:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wlc9Ronw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233BE10F66F;
 Fri, 22 May 2026 16:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779465943; x=1811001943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fTUNoFZyy7EBcUq9ZCmahafGTt795AI65INNlB1D4G0=;
 b=Wlc9RonwLaPtPJ9f1eeaMIPdGclnJeglXQEPOOed1fPjssSi+PO640xU
 7IS86CJJEY0togDxX7S/TVe2J/GtDB30leGN+r0FJdtiGTZDkTW85M7gk
 /nJ1L+CFUOyXDGlJcSp9NV3wWpZ0diwslOI3f4l5CL5vbd3PVC2/hM9nd
 JNgFjK/VxDEMIhhF9gzVyGkLSwPU7cVQg0Qn3DB5EMYuxf7T7DI0gMSpK
 HvJtpOjjFWsL/UL9FIMas7qcUZ83KOLbJnoNhdP0Xmw3cUiKlx4TuTr7z
 YwIqTnWzJyWBG9kFbvHSTgtLjW66YtAzr/tOMpOIzLjga5c5R/8kYfdII Q==;
X-CSE-ConnectionGUID: q5ZFxXA3RCaLwSJTJua6Kg==
X-CSE-MsgGUID: Ms7UU3Y+TEKNW+4BwyH7MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84016359"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="84016359"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:42 -0700
X-CSE-ConnectionGUID: lxjDr8JPSuO7SrY33SEw/Q==
X-CSE-MsgGUID: AyxjBh2KRK6AXeYIjgDH2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="237916967"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 09:05:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ivemhZjMR/uAVQTD/zHN08sHjSorCUoLk4/mY7a6s5xP5TgCBrsjfec7XeAut1XZJdxF3ZZ0/etWaQ4IXF3HLH4fxLF1iCC2JQouGuUDseLhK5qfAVlz8FtZJ9hvqydNfi32XVnz88E4VvnV5C7SiJyQh82oZRG1xtfeERF9X3q9Jb3gBXgkWtK2+Lol/2DTT7tUdZR2TL4pKHb9CDY7aMkOP5Nj/0oVTlW94Jznt/Pm5ABhn6Gr+YFYpD2eZLXJe/q/MfsVNg5kVE5wfIDsy6EJeqY7aYk71JbYurVJIWtORcfrYusrHk3rAjmN3L3IoTzKnxnznh/jyTDmITB7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18sqDyKOoRe1adGpbK64gte+sZKwoaitzaCanx5c7GY=;
 b=Uit+OBeB5iD/LlAoWjwFuyKxxsUUxujai0CHR61gnAc3bcACATc74XB0oCfsLAmKlfhb4dj1HK0pYTqwEuZZTnPSQpQLzVfazxpXnCG2bZxADj7pcvXJzh3rACdCPorUUPeLSVkN29coT++uVocMIXvP7XxkyRrdK8ZLj1pKTbhffPLWTZbJewTZSn5cei9h85RCaT4BCAnrRnH7604IejuE59kLd0GN1tBY+9K0pUW5kbJ4/4YbXtZ2O0ZReEywMdhe7ZkLoX4TV00zjKafNk24h96tRq2E1806tvwZKVzbRA886H/JEZNTapigSN+lFj3RgLAAVbQijaHO+OccEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 16:05:39 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 16:05:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 1/4] drm/i915/dp: Reset link params after a DPRX capability
 change
Date: Fri, 22 May 2026 19:05:11 +0300
Message-ID: <20260522160514.2628249-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260522160514.2628249-1-imre.deak@intel.com>
References: <20260522160514.2628249-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F70D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cea0534-8653-4c24-67f3-08deb81bf752
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|11063799006|3023799007|6133799003;
X-Microsoft-Antispam-Message-Info: aJbHZYc2MAtMo0exNCnUAjixnyYPjJuiJjUgatkcn3JO1ng99FLAHWB8aOUtqs2fjEbOOrReiBiQk1urv/oz423Sg6ykokWO1O8k93QEUe0cILtjGVVuDbVN0PFLV6kE734tkJxhOfK7bkuONHJaR2/QU9OITW+LUX60c/YQxhihoV7tQp+50tOeZyZ9+z20/GOyEELUMmCdKU2cf9g79jmPNtMbWnGrrLiFZEh4Xj2zjeZb4JCV1CInSGOLcBd7Bm6/qp770ROmkF0FVtvyH0fPMyZyASmHSk8IE2zUhlWIbFVVxpELuYsvShZpQuVxzVFma108mscxq+PzTgVaG78cx5a9E73yMLZ/OnVPvahJXyLybWwiiLLaXwq3VsZLFizZ6xMZy4JQeWpy7oHqGZWRoAB8xswVFOjhZN5BN/aoN/XR06QevR4qWfIkV09pWp7UtGg0Zzr9JE2nNxG/5BEoKlsn5Snh7gAwA0do+8mS3ODYiia4rWd79CsDF5+5lGoFiLJkz0mPH+FLk865UOzEnUN8k6SkSLBp815Z3RMbe5pJqSvZQiRrMDRFPyrjOibNk0Ja7y8Pjxg58VdEEbBtmFCxzJWy4fc9dtgfPmeI22WIW2cmTibCZHZQqiuow6IVoV3lyM71bG5MVRpsouYG3ArjbomwiLMv1ymcHThlNYs6bzLvnXd25DrjoRrH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(11063799006)(3023799007)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHhQUW56MkNlaEhzMC83M3VCQ3d0ZHZyQ1FLdEkrUnZZb1p2NGw1T3BWL3Rk?=
 =?utf-8?B?N2kyeWt4RW51TWNkMnVHeWpyS3QvNUNjaWJRL0VhSVFMOElRdnJmMlBRY3VZ?=
 =?utf-8?B?dWJNR2hYaktzcDBUSWwzcTZqb3d2VW1qOElNaUFXaXVTR0REVUx1dHZDM2xn?=
 =?utf-8?B?dmxlSVU0ZVNrK0poQ2FTdnhXSEUzZlUxd0ZadXRmZlJWTEo0Z3NqQ2ZkcjZK?=
 =?utf-8?B?aDVBRE5EUk5Ma3VNaSs5bHdUYnhzTktYeithVnRHYlFETTF1NWg2ZkFTcGMr?=
 =?utf-8?B?VlF1VGdFZHI2bkpRK1JHOXpqU2ZrTGF3WXZZR2NQd0k2SWt1WnJhSkh1ZDcv?=
 =?utf-8?B?alo1dnBJK3JOQkV4eEM1a25QdWVCWVN1OVl4WHhpdVh6eWZISEtWdE11QTJx?=
 =?utf-8?B?T3ZHVVo3UHExN3BKb1RWbEd5bm42VHZyZS9xTjNIOEw3NHdSUzVkRWdwOTBT?=
 =?utf-8?B?TkhPb3puVlF1NURYUFc1NkUxWVBES3k5eFptTmRLR2RvWkNJUk56bUhublNr?=
 =?utf-8?B?VHZLbjRHTFVESHZTWUNDd0ZCRXVmbXF2UEF4bmMzNVJZZEI3K3Y0cG8xeHBk?=
 =?utf-8?B?c21xZEIrTzFuT1p1a3dheXhOU29xOVZMVnNmZnBYRGNUbVpSVUpYR3ZIbEhy?=
 =?utf-8?B?U2RzSlF3TXoxdGdDRXlGYnZodko4N2c5SkNMd2tPRjU1UFg5VWp1ekx5TmNL?=
 =?utf-8?B?RkxwMkUwcEdXdHUvYjM4Z2dPdGRGenFRZ2RRZ3RRd2ZoeHBOakdXRDNQZkZk?=
 =?utf-8?B?U3JuVE44SlE5bExwSXA5ckxOTFY4OVlNdG1nMk5zNmxidlRNNGh4Q3ZGajlF?=
 =?utf-8?B?TVhpckh2ZWZ1c1dYVlFVR0VmSTBBTVVEeTYxb0JEWmUzSlZBQmNnYUY0VWxy?=
 =?utf-8?B?QUQ2dlpZZXlKT2I3SGp5bU1JRWtUR3c1Yk5sN25qZmlRa0JPRWZ5T3IvRUg1?=
 =?utf-8?B?WlhDbmw4RjFsQ1BoUVhzZWV6VExDU1BKTFZWcUZvMytkRExrdHNpSkhCNWZx?=
 =?utf-8?B?TUUxVlgvcTdhOVlaQWZJbVpwK1loTGdlcmYzQy9aTU5xQ3BDajdPMXgwN3dW?=
 =?utf-8?B?R0pOOWNPendBaW5zZ3h6ZXZOS2JkUER1dEs2N0tXVWIzQXlVSDVMaGRDQmpa?=
 =?utf-8?B?UHFiTTdoeVRmSWt5RGRIZEFONzg4YWVETzVMbC9odUgzTjRVU3dKbmtiMWRJ?=
 =?utf-8?B?WWdxNnA1akordDBPYW95ZXBCY2hnWVZUQzV6Ky9jcTVWckg5QUNmWFdRbFdF?=
 =?utf-8?B?R25hbS9US2VidGRFKy9wdGVuaVkwUHp2N0hpWVNxMlhuQXliOFdSNTUrWnhh?=
 =?utf-8?B?QitHbHIySHJUMDRWNDhJUEVhT2JoZ1kxSWVyQkFiSnVXZmNxeDBIREVVVHN1?=
 =?utf-8?B?clk5QjFiRk1zZ0l4QWFQUS9zeWFMWWJwT3lZbnU0ZXhjMUxIYllVbmlyQWV5?=
 =?utf-8?B?KzZRZkZSOGp3OGMyeGJOaE9KU1IrWEdNd1BHMGFMRGNUeU55Tk1zMmZsMCtV?=
 =?utf-8?B?bjdtdEdNV1JSK29XVFZ3NGVSU2VIZzdIWkZaelltNy9sajNpYUFQeHA0SHdN?=
 =?utf-8?B?eCt4T2dlSFlrZVk4YTh3ZUllMnVqTUp6NTczbFhrM004cE9qWGFsbnJBL2NO?=
 =?utf-8?B?dUtuMnZHdDJXb2VCOFltV2lzMDd3bUQrekVZSzZ4NGVUUHJDNlQ3ODFWdkFa?=
 =?utf-8?B?d3VYVTRQRkRHckRyaEJ2M2k0Z2pFbVBpaEdydmp0RzgyMkZWcTgvalVXQ3A3?=
 =?utf-8?B?bUl1dERnK3E3ZlFpY3pmclhDaWxEeis3TFRkOHV3U2o2eHg4TEllVlhqQWtU?=
 =?utf-8?B?RVJCRjdjbEx3bG0zaVhvaUdZaWtjWEZ6OUlBelJmdmhzYXUwUnFWbW1nYmZL?=
 =?utf-8?B?RFFoNUJNRnpuNG9XUjNvdnlNOFgzOGNVRytYRkJ0azh6R2hsL1M2SzhVTkpx?=
 =?utf-8?B?aUFKK3BiaWFZQ0FSU1ZXSERDUElhSTh6U0R2OE81WVcvSTcyR0FIL3ZmRmY2?=
 =?utf-8?B?ZTM0K2N0YWZUZ0JpSW1VRUNqYndLSU1heXNOWG94SzlISHphMVdSNnNsanlY?=
 =?utf-8?B?OTU1RXBLQ1lRTWFSRTBORXArUXlXcXdQZTFvaURKa1Y0anZiOElaR3FLcGZi?=
 =?utf-8?B?R29yWFZsMzhKWVdHVnljWVkwSEVNRGJia2pOYkNhb0NBZ1BJdTVMUUZhdHRq?=
 =?utf-8?B?RlZidlVZUktWOTR2Tjh3b2VVZFBtMjlkaDVyNHlSbUczRHU0VHhrc3hERUpW?=
 =?utf-8?B?MVhqLzZJblozbGNhQU9TL00vaTgvVFIvWDZkQWVEWkJJMXk1ZmJvN2VGS2ZR?=
 =?utf-8?B?NlY3RWxoQWxEM0lhMUQwZk9qdTZ1OThnU3ovM2EyUWRsNHVRaGJZUT09?=
X-Exchange-RoutingPolicyChecked: Mu/cVpV31sZRTfqLInRWQgq1HGSyInSNIP3IDlQLPck94PfIIMsBLB+/hHszOXmZ4tanSaRKWN2EwmMvE1thybZTu+2f5SpRx7GWuDznfoK3DWzb6Mc2+h1bwTFaRmYlfX0+223D1vKQbzIoU7XoHkHGFdwqNIzXTFYLZrdBBDtTtAzKut7vyMj3dyuC5uSSVAd5Iggfli8GaNvhUyIqc1c8lhdoGctex5hOvNWSCzINUBpnxsWMnbhMgVZeAboRmaEDfpeq1k/kvK/cMxcPQZ515sVGTk0QjcqI/dyesjv8glGpuWIFKt0ov8NVeX+DzwuND8Ndwn8KmUVObRyuOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cea0534-8653-4c24-67f3-08deb81bf752
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:05:38.8020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4AZ+QlFS4r5ntXQzSwH9lMw1yNzlD+HagD+iHcdKZbN7D3oV63GJ4Q/xuz1Whs0q5IxCqI6KU1VZA6+wfRNWUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D5A635B755D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is no reason to distinguish between DPRX capability changes
signaled via a long HPD and via an RX_CAP_CHANGED HPD IRQ.

Both cases result in reading out the DPRX capabilities and updating the
corresponding sink and common capabilities cached in intel_dp, however
only the long HPD resets the link training/recovery state and MST link
probe parameters correspondingly. The link training/recovery state may
contain reduced maximum link rate/lane count values left over from a
previous link training failure.

Based on the above after an RX_CAP_CHANGED increased the link rate, lane
count parameters the maximum link rate/lane count in the link
training/recovery state may remain below these, leaving the newly added
valid configurations unavailable for subsequent modesets in an
inconsistent way.

Handle RX_CAP_CHANGED IRQs the same way as long HPDs and reset the link
recovery state and MST link probe parameters in that case as well.

v2: Set intel_dp::reset_link_params instead of using a helper for this.
    (Ville).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1920d2f026665..940e73ad451d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6000,8 +6000,10 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_SST |
 					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
 
-	if (irq_mask & RX_CAP_CHANGED)
+	if (irq_mask & RX_CAP_CHANGED) {
+		intel_dp->reset_link_params = true;
 		reprobe_needed = true;
+	}
 
 	if (irq_mask & LINK_STATUS_CHANGED)
 		intel_dp_check_link_state(intel_dp);
-- 
2.49.1

