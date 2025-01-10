Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030DBA094C1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 16:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111F310F0FC;
	Fri, 10 Jan 2025 15:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBijCKlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C16910F0FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 15:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736522008; x=1768058008;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=eb/VkEuRGfKHUN1uARol3hTdiHYV7s9y2uWP7P6Q80I=;
 b=OBijCKlxrYUpP/OIzLtM+e79my39CX/oKjAlKOqIl1i/cH9eljBkKt9o
 IZ9qE9DM9yyWrFT9WTj7qVFmVHCxLAzGQYbx0W6EEXzQw5kGa+MYWzKRe
 X3pTLnOFtBo7U1REyoEKD2INnhgjnlc3cBpcAT1j5YtJR5bK+qdMv7f96
 lZafGvAUVeI4eWbGf1ERwlHpK4ynWbuhPtBvvaBQOBWN8883A45VnxFmo
 E8BmP/J75QkSuvU2SAEjQBzGOpjTHPKfmjPWwbiVCGtk4f1JWKL6OT+55
 3s0Nv3oZUtZnM/mdKnEPgc/hgMeaQ+w2hZvs/Rk7/K+OSbzJr/vUT8gJ8 A==;
X-CSE-ConnectionGUID: DZNRWUtpTkWR4UjRK4UskQ==
X-CSE-MsgGUID: nwx5gR0OR3m1WEmWLDYdWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="40583815"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208,217";a="40583815"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 07:13:28 -0800
X-CSE-ConnectionGUID: QnzVMcgETvK1aqgrT8edGA==
X-CSE-MsgGUID: IKN+Jp9rSt2h19oAal6vkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
 d="scan'208,217";a="127040699"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 07:13:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 07:13:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 07:13:27 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 07:13:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MWJd1T99N20kM7eLeC4oJC8M7lHN/nO2dcZMX5xj/hxDZ+cRXbhGGSByRTxB3rDwfOBwDK29V2C7FavlwyRBl/doGx1KWR3f2AWsAXXw8Ix5BASRNT+tSHHaHnawHVOFr78bHILnW1nmiRLHvSuCGwZgd1TScmgk7oSuE1csLe+qDo/i3mXLc9JJjTQISLK9HHGVfKynJzG2sS9+YJ0hUUh9U7r1c7o4BF20x7liB8d7RN4T5d6tyPqmukjcTPYJ07k5+hVHzQOXjQR/rJvu5pRX/2vLo10nXK3DOJie+6mO6qRGXruThX0qSv6Fksu/UEXRKkvOpJxhmXuhEIK7SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=isw3kZJKm+58H/5iKLQhGJb2oitMu2xykZsrGA7/+ek=;
 b=vKuGNQP2kzJ0cgN72umn5DrdprBg4e1Yj31Wj0jvENN7J/n+xD7Or1A1R4iVayd1PwDpfRQwFvV8WZHTLiD/Ayy5G/xJ5E6WgE77TIGEbDJsT2kE4EB403mciVzsHc3BayMJ+jt6kvCfYE5ffbPFjZZ96/MfDA/qogY4Rdvl6xHSvDsiRuOrXr+L/akSL5H+Foov5/0biYG9HaUWMGdC844t1D+sx8XZhhgQIN9KWmU0dd7GQ6VrpS+AKMpCzDwYIu73cQA7HGMoZg6XdPwuSRkGj9HugljUgi0CW/GQeFKoMjraCrHRQ2eY75YQx053S/bsV1+ixUxNhFTT3je7Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH7PR11MB5984.namprd11.prod.outlook.com (2603:10b6:510:1e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 15:13:08 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8314.018; Fri, 10 Jan 2025
 15:13:08 +0000
Content-Type: multipart/alternative;
 boundary="------------2O0m4hEu1VlSCOIYo9ahgrOs"
Message-ID: <0155609b-b3ef-456b-a838-37e5fcf8bf88@intel.com>
Date: Fri, 10 Jan 2025 20:42:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <riana.tauro@intel.com>, <anshuman.gupta@intel.com>,
 <karthik.poosa@intel.com>
References: <20250109093010.3879245-1-sk.anirban@intel.com>
 <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
 <66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com>
X-ClientProxiedBy: PN0PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::22) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|PH7PR11MB5984:EE_
X-MS-Office365-Filtering-Correlation-Id: 05e00ab8-4dc3-4f70-6641-08dd31894a41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGFrcTRCUks1aGUwRGViQ3poaE9iRG5VUkJwNmtvVUxXR3FXUXNsTGd5VWV4?=
 =?utf-8?B?dE12VnAvdHdocmloZ2VjUzNjQjNZRkx2bnhxN0NmUDRaSHVKTVVNOFNsSnRv?=
 =?utf-8?B?OG1nUWtzelhBeVRjZ3NpYVdRalZKckRqT0dMcFdXdFFxYWgwbzVwQ1dGeDFk?=
 =?utf-8?B?NUNLc0I3d29DVmJ6Ny9sWENWQXNvQ0NNeU05TWdzOUl5dHByaDk0TjJKU0xT?=
 =?utf-8?B?OHNJUjJsS3IrSUh5eVNZanhqVnh3dUhiWHZIWExTVERuTnlUNThuUG8xVXBk?=
 =?utf-8?B?cmtVWEpmTk1ZTVMwc01PcEZscWhxYjUvTEJjd2tNbExQWHZiakVjdVVzWjYz?=
 =?utf-8?B?TFpVK05FNHZzaWt6cVpvVFJaQVNhS0poYkpLeFhBNUtXT0l2RlgxbU1mbjJt?=
 =?utf-8?B?VnVveHZ6NFhxcjdYK1E1dHlwVXMwekRDWWUyZzNBT3pzMXkyTXNqS0d1ZzZv?=
 =?utf-8?B?NzlPMm9jdE1mTHU3eXlzVHpSaEZidVBhR3JpUy9sN0RxdURoK1NmbUVpWXF6?=
 =?utf-8?B?RXJqdnJPQ0g5eGs4YVlPNTdRNU93clNjREpPRFVTdDIvVTdLY3JvTko1UG00?=
 =?utf-8?B?LzlLYmVkZnN2R1U0eFp4UUtrSklQeWUvODRDOEVNbHpXKzdoRmxsZ2E5WXB0?=
 =?utf-8?B?Ty9WbzRINno0VkgvU3hxeXBLSzh0anhsS1N4UFpFSnE4UlZHelRoU1dHaVdj?=
 =?utf-8?B?elRrTFcyVG1xVVhPMCs3TzhWRXVDeDc2eXFhK3IzRGhoTENPejQ2K3dVWFNa?=
 =?utf-8?B?b1NGZFFmUFlmTFdiRW8yeFBRR0EvdFh6R3N4a1JhcUJ2RUdXUm5pakJ3SW9p?=
 =?utf-8?B?MWx1UGZhem1DZHYxSlJHU25ybnUxZTdxdDlUNk5iYi85UkwxejN1UlovcTNM?=
 =?utf-8?B?QXUzcExWazE1WmNtT2tNamFjN0Y5RHU2MnVsWGNVTlVCTFhFU0NJOE9Zc3BI?=
 =?utf-8?B?Z3RaM0NEYkdkZ3dPVGtZM0tUZjJzUHdDTDVkWkl2SXcycHozZ2lKbVhBdE1C?=
 =?utf-8?B?WUhTWGw5Uzh5Q3E1anVkbHpkaW9odEFpRGRQWFpwTWdIckthZlI3SmI4anJt?=
 =?utf-8?B?QkxjbVg0K2p6VUZYOVBDM0NHYjhOY3RXc2QyZUZPOUhza294UTlGWmw4eXdL?=
 =?utf-8?B?Z0Jyb3pWUXdUR1VzdVgwdUpaQURVTlFhemNKWmhvcEFMdzMvaFF5RE9CV2sw?=
 =?utf-8?B?RmV5bFpKTTZhQzBYZEtQSU5OZ2Uwb2dqRXB6SkdXS3c2MkRWdjZmQ1Z2aFA1?=
 =?utf-8?B?aUJCRUJCQlI1US9xTmRrUzI2N1VVVVdULzQxaC9Tak5nNytCYnM0U1NSNGcy?=
 =?utf-8?B?bTBGSE5vSDlranUyQmREWEcrVTM3M0RRSkFFRVFiaWtuRElWeWN3Q2dtMFhh?=
 =?utf-8?B?WDdhRVJ1QVYvRXRXakVGSk4xeVBwTGU4azJuNlF5WHFPdlpnS0VIL3hVVUk5?=
 =?utf-8?B?TlBGUWhaT3ZwNi83amNRaGhGL25INnFtbTQ0ZmNmendqZUU0UTRsZlptaU1y?=
 =?utf-8?B?am5haW9rNUY5bEtVanN3R29PKzZPeEF3WXl0aW9OeExWaXk3RnI1V05MdFdV?=
 =?utf-8?B?M1JnZk1UUXluRUdqMTAxMEhPTFNSc05ZRlpLMFNxS1l1OURUeUlmUnpvRGtW?=
 =?utf-8?B?MlZpY2t6UTdzaTBpRGI2QmN6WXlxMU81WlpmNm9KekR5SFYyeDZOSXZTOEkr?=
 =?utf-8?B?Zm1KcnFYd3NWYkNEYlNsRjhxczMxSjNBVUhVRFpCQzNoVDJrNXNwS0ZJbTdT?=
 =?utf-8?B?ODVTcWVpTTVEa21ic0tEWVllZ0o1ZGNxeWZid2NWLzVhQ3F3NGRHR3RuLzZx?=
 =?utf-8?B?bXZKYkw3d21jZVMrNWtTalJXb0I2MCtDVGJxOEh6VFY4RFZSWGZqMXhTUGhB?=
 =?utf-8?Q?URTUnE077+GTV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDFaSFByZUphemxrY0haaVIyeFBOdGxvbjV1QlZjUEdYN0VwMkgvNng5R1po?=
 =?utf-8?B?aW1wcVBwVmJJa052UDAyWWF5cGQ3aU5Lc092RmJSZCttWTNKUjJtNmF2VXRx?=
 =?utf-8?B?MGp5OWpqZ3VSNlJZVjVSVVU1Q2JQZHV0Zm9NRE5pM0tPbGRBTHlXek9NeHVy?=
 =?utf-8?B?YWczbmhyM2IrM0pidVluRlVQd0RkM0w0WVIrcFB1TjBiYkVaWmF3WUxTZkZr?=
 =?utf-8?B?Mi9EUEFKbmVpVWtPeXg0MzJpd1QveDIvc2hFc0xEQWRZQmE1VjdQUU96NUEy?=
 =?utf-8?B?Z0RLNzViemxNZ3BNTldOMVpsRURxa0ExektnaUkyMlFROG52bWFFOFpWdHl4?=
 =?utf-8?B?ZFdxZ1RQamRXRnp3TmVPWUR5d0x2dGhOVlAwbFZqOVlRVUdyWkpuMkdlSnNV?=
 =?utf-8?B?MDZ0NGFQU0VMVGF1NGJFbWE4UEliRytLTXdHVE5TWm5mQWF3dHdVdysvQm5M?=
 =?utf-8?B?ZU5GTitWR2pYTWdCOU1XT2NiQnE2S2U3dk1JdnNDcmNyUTNmUmliL0cwM2FO?=
 =?utf-8?B?TGFxUHVaQkJsVUlmaWFoelpqMkx4VW9xVkJNV0tFSmZneW5JclZtUjJBRHpr?=
 =?utf-8?B?cDk1YUpXOHhDKzRMUGh6OWM3L0pjYlZOMjJ5cE9BaE9zRWlLb1FWM2Q4cnJ1?=
 =?utf-8?B?YStWdzE4NitRRnc0VU9VbHdzVGlYelpxYkdJZk44SVc0amVycXMzdDFXRjhk?=
 =?utf-8?B?Zm1rbncrSFRER3l1SHRUOVFVT2p4cmVDclhuaHByTHJ3Uzgrdjl3Kzg4eXo2?=
 =?utf-8?B?SFpJSGJwWVEvOG0vckVJZVJXVW54TlQ3aVd3ZGl0WlJTUkVtYkRCYUF2T0k3?=
 =?utf-8?B?bGJhSzVLNGw1cnh3Y3BZanhJNC9qT0hFVWdpK25lejE5WC9wVDBNbGtaVUU2?=
 =?utf-8?B?QW1BYWJLemIvbEUxUlBRUUR1RC9oT1hGSzFCeEN2eGtyNjRWd3RBZUJibDcy?=
 =?utf-8?B?Y2pBeEdFMGlJUUpxTUs0NVNva1JxbTl5WnFxWVNGRlRFZFBleEw2R1RubU8y?=
 =?utf-8?B?czN2TmlWRXNMWW52dUx5ZnRINVEyQ011a3RlZVZRVENJdExpeXlFODZFa3dp?=
 =?utf-8?B?MVFnczVIdnVBRHlVNlB6NGF1YVlGNXQ0amo4MUUwcFJENjk5YS83SUVkVTNT?=
 =?utf-8?B?TXNQQmd0eEt5VGQxL0xEanAzRzl1eWR1UXRaOXZBcVdUSmc1T3BHVkZmamhW?=
 =?utf-8?B?WlNaaTVBZ1BqWmxIVGI1ZmNPWU51cjBXVDYvU2FITWF1V0tuM0hDTXF1eG1K?=
 =?utf-8?B?OE1FYkFiQ1VPb2g2V3YvTWcxNWhTR0tabHFNeXhOQWxQM3l4cklFaWxIUFNE?=
 =?utf-8?B?UmFsbUpKYVk0WWxweVdqRm9tWUZZMFZQblRZa3VtdGNTcUdQSnBIdHVIMWZF?=
 =?utf-8?B?cnRxams5UnFhU2NhVHVhU2w3NGtpbXpOaGNNTDg5aE9DSmRIK2lyVHZUUVlZ?=
 =?utf-8?B?YURWTGdScCtTV3M2Z3NTM2Z6cDZzWWUzUjcrMytjRm5EYTBaZndtM2l6N3ZZ?=
 =?utf-8?B?OGF5UVBnajJ2TXZMTkdjYzc2dDc3NHVoZmhRTW53OUtkdktUSjc1UUlKa2Mv?=
 =?utf-8?B?cE53aHhxOUpHcHRpMU9SYkUzeWxZKzlRQ2FwMXQxRjhjcTdsOWtJdlR5WHp3?=
 =?utf-8?B?a3haTmY3V2hMYTd3N0huY2NPRE80TG5XTXRUdXh2dmp2TWtyNlN2dHVtZ0VX?=
 =?utf-8?B?TE5vejZqV0N0WWMzcHNHRFF3SmdZbWlFRFRZM2NxY3RpejFRZnd5czJrQUcw?=
 =?utf-8?B?aUFHU2xQeW1WYUpGWW5hUjErLy9sL2tMTnJmL1Y2Wk1FbG4zRFBkVWJFcDZu?=
 =?utf-8?B?VlY4UmlrRGxzcTBZekdabVJnRHR5YndlUit5TGkydkNtRVROc3dVRC9QZlVh?=
 =?utf-8?B?UVhrMXRDR2lPVjFFUjlWWkZpKzk5K1dLc3hBOWIvMHI0RXZ0TmVTWloxSklF?=
 =?utf-8?B?UmppN28wV2R5NmxnbzZiamd2R3hvQ1JpR0dFM2ptbjZnRHVlOHNtSzRnV25O?=
 =?utf-8?B?N2cva0NFSHZab28veWdBUVBRemtoS1dFQmdTZUxVenRwWC8rcjhPT1hORVhq?=
 =?utf-8?B?WTlHZFU4dnJnUlZnTzFaZ1pMNGhSUWtoODZLYXBQOVZaV0s0SE9hdTNDMDdC?=
 =?utf-8?Q?vDrmkTHyQeJAZfixG9rWcVbgT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e00ab8-4dc3-4f70-6641-08dd31894a41
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 15:13:08.6132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ubOQh7hpN7b+wHYsxhpd/Sm5CITG7kjd/Gi32nAcEH332kU7thnRAp/nZCOamWaDR1CC3HhoU2f0vjFeLHLCzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5984
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

--------------2O0m4hEu1VlSCOIYo9ahgrOs
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit




On 09-01-2025 16:45, Nilawar, Badal wrote:
>
>
> On 09-01-2025 15:50, Nilawar, Badal wrote:
>>
>>
>> On 09-01-2025 15:00, sk.anirban@intel.com wrote:
>>> From: Sk Anirban<sk.anirban@intel.com>
>>>
>>> Fix the frequency calculation by ensuring it is adjusted
>>> only once during power measurement. Update live_rps_power test
>>> to use the correct frequency values for logging and comparison.
>>>
>>> v2:
>>>    - Improved frequency logging (Riana)
>>>
>>> Signed-off-by: Sk Anirban<sk.anirban@intel.com>
>>> Reviewed-by: Riana Tauro<riana.tauro@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>> index c207a4fb03bf..e515d7eb628a 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
>>>   {
>>>   	*freq = rps_set_check(rps, *freq);
>>>   	msleep(100);
>>> +	*freq = intel_gpu_freq(rps, *freq);
>> I am seeingrps_set_check will wait till act freq become desired freq, in case of 
>> timeout act freq could be different. I think it would be good to 
>> check freq returned by rps_set_check is expected freq if not then 
>> read freq again after msleep.
>
> Please ignore above comments, I got your code. You are applying freq 
> multiplier before passing to measure_power. While this approach works 
> fine, I recommend fixing measure_power() by using read_cagf() instead 
> of intel_rps_read_actual_frequency().
> Add Fixes: ac4e8560248f ("drm/i915/selftests: Add helper function 
> measure_power") in commit message.
>
> Regards,
> Badal
>
The measure_power() function is being used by slpc also, as slpc is not 
passing the raw frequency it may cause issue. So the plan is to create 
independent function to measure power for slpc, and for rps I will be 
using read_cagf() to calculate the avg.

Regards,
Anirban
>
>> Regards, Badal
>>
>>>   	return measure_power(rps, freq);
>>>   }
>>>   
>>> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>>>   
>>>   		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>>>   			engine->name,
>>> -			min.power, intel_gpu_freq(rps, min.freq),
>>> -			max.power, intel_gpu_freq(rps, max.freq));
>>> +			min.power, min.freq,
>>> +			max.power, max.freq);
>>>   
>>>   		if (10 * min.freq >= 9 * max.freq) {
>>> -			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
>>> -				  min.freq, intel_gpu_freq(rps, min.freq),
>>> -				  max.freq, intel_gpu_freq(rps, max.freq));
>>> +			pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
>>> +				  min.freq,
>>> +				  max.freq);
>>>   			continue;
>>>   		}
>>>   

--------------2O0m4hEu1VlSCOIYo9ahgrOs
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 09-01-2025 16:45, Nilawar, Badal
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com">
      
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 09-01-2025 15:50, Nilawar, Badal
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com">
        <p><br>
        </p>
        <div class="moz-cite-prefix">On 09-01-2025 15:00, <a class="moz-txt-link-abbreviated moz-txt-link-freetext" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">sk.anirban@intel.com</a>
          wrote:<br>
        </div>
        <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
          <pre wrap="" class="moz-quote-pre">From: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">&lt;sk.anirban@intel.com&gt;</a>

Fix the frequency calculation by ensuring it is adjusted
only once during power measurement. Update live_rps_power test
to use the correct frequency values for logging and comparison.

v2:
  - Improved frequency logging (Riana)

Signed-off-by: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">&lt;sk.anirban@intel.com&gt;</a>
Reviewed-by: Riana Tauro <a class="moz-txt-link-rfc2396E" href="mailto:riana.tauro@intel.com" moz-do-not-send="true">&lt;riana.tauro@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..e515d7eb628a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	*freq = rps_set_check(rps, *freq);
 	msleep(100);
+	*freq = intel_gpu_freq(rps, *freq);</pre>
        </blockquote>
        <pre>I am seeing <span style="white-space: pre-wrap">rps_set_check will wait till act freq become desired freq, in case of timeout act freq could be different.
</span><span style="white-space: pre-wrap">I think it would be good to check freq returned by r</span><span style="white-space: pre-wrap">ps_set_check is expected freq if not then read freq again after msleep.</span></pre>
      </blockquote>
      <p>Please ignore above comments, I got your code. You are applying
        freq multiplier before passing to measure_power. While this
        approach works fine, I recommend fixing measure_power() by using
        read_cagf() instead of intel_rps_read_actual_frequency().<br>
        Add Fixes: ac4e8560248f (&quot;drm/i915/selftests: Add helper
        function measure_power&quot;) in commit message.<br>
      </p>
      <p>Regards,<br>
        Badal<br>
      </p>
    </blockquote>
    The measure_power() function is being used by slpc also, as slpc is
    not passing the raw frequency it may cause issue. So the plan is to
    create independent function to measure power for slpc, and for rps I
    will be using read_cagf() to calculate the avg.<br>
    <br>
    Regards,<br>
    Anirban<br>
    <blockquote type="cite" cite="mid:66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com">
      <p> </p>
      <blockquote type="cite" cite="mid:f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com">
        <pre><span style="white-space: pre-wrap">

Regards,
Badal</span>

</pre>
        <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
          <pre wrap="" class="moz-quote-pre"> 	return measure_power(rps, freq);
 }
 
@@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
 
 		pr_info(&quot;%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n&quot;,
 			engine-&gt;name,
-			min.power, intel_gpu_freq(rps, min.freq),
-			max.power, intel_gpu_freq(rps, max.freq));
+			min.power, min.freq,
+			max.power, max.freq);
 
 		if (10 * min.freq &gt;= 9 * max.freq) {
-			pr_notice(&quot;Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n&quot;,
-				  min.freq, intel_gpu_freq(rps, min.freq),
-				  max.freq, intel_gpu_freq(rps, max.freq));
+			pr_notice(&quot;Could not control frequency, ran at [%uMHz, %uMhz]\n&quot;,
+				  min.freq,
+				  max.freq);
 			continue;
 		}
 
</pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------2O0m4hEu1VlSCOIYo9ahgrOs--
