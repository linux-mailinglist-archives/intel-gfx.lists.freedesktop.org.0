Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E92C06832
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCEFD10EA9A;
	Fri, 24 Oct 2025 13:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMBE18Zl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E86B10EA96;
 Fri, 24 Oct 2025 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312653; x=1792848653;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=92CQjUye2JmVIXeMpUTV4bLJAjQknOoHqi7iC9oWxDU=;
 b=bMBE18Zl4TteCUi4H/U0wKaHIsjrxVB0leTQ3JmVwOLPf5GHkZanGlHI
 vCcD6R6dvCn1aKQ6xtPq5vVevJ6DMnrmvykanDNFH9toYKha3HrB7+VLx
 Z9GGJsbpw/AL7hfD795MiwY6/psvh0d6hnjwHuYlrqQr8bolSbnT9nGvT
 FQh6WOzJ8N3nR+ksLB+Dw08sd8SF7xBVnMG+rH4312wuajQZQtt3b7ytR
 lc1IlwU9wm33ZAlOxSYR+gEfspd/1fDm85assEuBMuoQm51P2W33sCHkx
 tvDcq7G8swsXtRZNEj3plZ8C/ceHicXwLS6A2v6s22dL0fhPEKQYrWI0N w==;
X-CSE-ConnectionGUID: stD09NSTRAag1QnU4eiltg==
X-CSE-MsgGUID: lgLqfyrNQyKte/q55j1dYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="51070978"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="51070978"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:30:53 -0700
X-CSE-ConnectionGUID: quaTbmBaQfCEqLhVWjXTRQ==
X-CSE-MsgGUID: s+agfxsPQeGztBBc270PxA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:30:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:30:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:30:52 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:30:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FxVmhZb1lFJJg1cv3QKe2RYXlRFBzObKpx2BTutjb3a5M2CBFK9+imTYPCruieOdUP2F4P1ZlRPYv/dBS3HvWpp0SHflG71xqOyyDUF4PVykvQ2VcyVTpdr8J07Z+0LyagHFDQF5h8CO2q+/jSWw2Jd1kMzWkRdoikCubxCFSiE4vHTGULAMS+mE0OeFlBbCIQ3dZ0yVDFIj3zpusm4NGlceZTrZZ/kqtiWCw1LlcEr5WtMppOppndPQNNxdQkv+H7OOuQ7pluPgClL+QKzzM4NcOpCShdI+LFqxqh8KjhsYXQC2/iRpTBfJ+y0ScjyjqUoPRvDi5GrpojV4IFQ31A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XPSHS2vjS+zcThlFALOrGk1GWh13P7RGi3ntdgf9F0=;
 b=yExR7f3eyxO5I157UwB7klHwgm1icypkz8GAu3tRuWiz6A3hfnEWh64mOo2mVvrogvE8jCtcCGmJ1aopvo95WvddtXmjZUF+dJFyyaKnjZkWwZwjn3eH8cC+RCejVtXSg1HFocvqmIJPu5EaeYwOCcV+l1/4b3CBewU3Jl8mTUvufWDoCh9fvb+sjBPg0e1Irrm7PwkZjbLHAFbBLWQaIRPgL0+QJst5FP3NMrvF0IjOXD0kUVjRWLDtmC10c1Wm/Rt50kAtBoSIzGlYxzDT3Y6k8q5etxsaOTfCBvCmVHWdosUpIvwWl34ev8uY7kpL6X5MDUuecCc9sbO9eAk3Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:30:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:30:48 +0000
Message-ID: <8bf0061c-225c-491e-b203-8d80f4f74e3f@intel.com>
Date: Fri, 24 Oct 2025 19:00:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/22] drm/i915/vrr: Avoid redundant TRANS_PUSH write in
 intel_vrr_enable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-10-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6494:EE_
X-MS-Office365-Filtering-Correlation-Id: cc12c9a1-b986-4910-9329-08de13018aec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjZKZ3JFc2xZVzZqdEhCN1dZdTB1QzQxb01oa0hPRVJsRk5vRWdid0FqK3Nr?=
 =?utf-8?B?eGh6dkN0cHBDLzdud1hicWZ6WXVrMkI2alFnekNRanFBR0thM3Ywa3JoV2NU?=
 =?utf-8?B?L3N5VkhBRm13bHhDQmdVY3dFcUxUTFV1d1FjbFdJVVFqQkdRVTNZUlpUM3lj?=
 =?utf-8?B?dkZBUS9ZRENnWmJuZWFwTlF4cnFLSVR3ZmRDS3BmYmhoQ2J0Wmc3V0gyTFF2?=
 =?utf-8?B?NjFYQ3BoMTdldXJYRzNrMkVFTlVybDR6M2hIc1I3MktqUWRhMVZwT3JncVBr?=
 =?utf-8?B?NDlkWGVDcllBZnFNdDNOV2dJZmV4Zi9NZlg5elFUajVzZ1lQUE50NmZwZDYy?=
 =?utf-8?B?SFBsZXBpdmd4c0pSZ2lTNzZaL25FcTRqKzRlcFVKeXpkNWlWNU9UcUxLcmly?=
 =?utf-8?B?NW9lblNoSy85K3JIOE5SOGZHZGsvUlJkL2FvNEVHSkg5dnY3NFRTeVB2S0Jx?=
 =?utf-8?B?N3NMclpMcWJvc25USW55d0x5a0tTS3hVSjEva0JZdEZuKzFQSmdENlZ6YTYv?=
 =?utf-8?B?VkthdytMOGp6bWk5U1FEL1JDb0x1WHF6ZHJFekZ6bm5qTm9pMWY0MXNZampN?=
 =?utf-8?B?VEszeTN3UDZISnlQTzJlUW5SSGJGZXRFSEMzMEtsVlpNMEEvakZDc1k5a0p4?=
 =?utf-8?B?Nm4rdFpEOUs0OEFWUGsxZExFMU9hcDYwTWJuZmxrTnAwQUZ2OHpFY29pUHJz?=
 =?utf-8?B?Sm54T24wMXBleWYvSmpLaXA1YjRoaTZ3OHhMbCtoKzdLMjRBZWQxZ1U5NlF6?=
 =?utf-8?B?dXMzbnpDTGlQRzcrNU5JZjJUNHRmeUI1ZnFWUnE1TVpEaEplbnRSTWNIdFpm?=
 =?utf-8?B?NmtDOVFZekVBZHdQSXlKcWt6eEtUY2I4WXNkNDM3eVdPdjRNMXVVdFZPa0sr?=
 =?utf-8?B?dFhucnVQT1pyT2Y1RmNMei8zRDc5RW5ETnR1RTQzeXIxSTlTaUp3REJyMm1Y?=
 =?utf-8?B?QkFzUmNMY1RaUUxwaEZPMmtIMkp3dEdNNlQ3WnRWcktGYWFpK1Qwd0ppVWxW?=
 =?utf-8?B?VXBGOWdyVmRtS05YQVpDQlBPeDhFamJRL2xnSktIbVFGVG9DWUMxeVdaRTJu?=
 =?utf-8?B?cDV1V1RRbEl4cE90WW5LRGdaYmJ2WnlsQlNLZEJqdm1BeTJqZnk4akNJMCt5?=
 =?utf-8?B?Qi8vR2hnclczb3NYSS9tR2pESW5YVU1xOXNhSTYybW1QVnRmUFlIbys2VTE2?=
 =?utf-8?B?QURuczhSbWUvTVhMeExWUXRxUnVEOXJVbERXditxSkx6Vlg3cjV0TW9McDND?=
 =?utf-8?B?SmhUb1hSQkprZmhadnhrSXJ0NWRpdjhVK3FlbGFIcW9kM08zbjNsM25iVmNL?=
 =?utf-8?B?UzJoUlJYZzNPbUxUSklmNHE1Qy9VYVFjU3VwZ2V6S2Y4VEkxcE1KY05PQ0Fp?=
 =?utf-8?B?d3pLallVZkMrUVp6amIwd211MlkwNElsRjNENGVoVHlEbmR2T1JMVG1BbnJC?=
 =?utf-8?B?bG9DLyt2SVNJZ2dKQ1dtbCsvK2Eyb0JVaWY2WncwOEI2TGF5TVlrL0hTL0lm?=
 =?utf-8?B?eDRmYXBFWjZjQ2s2dkh1akxtTGtwemphY0F5UktoalRQczVIWElROU5TZE95?=
 =?utf-8?B?NXh1VDRZOWpZMVlMTDB1R055OWdOM1JMejZMOVhUeWlqQXJubDMzTFpZKzNz?=
 =?utf-8?B?dEVZdVBzYXlTZldrNHBWZk8xdG9lSmE2Q25zOTRaaGxzR1dUUUZkeGpvVWhN?=
 =?utf-8?B?b3ppRDZPUDl1a0lNODFFZUQweDhpak0rdDMyMDZMQ0ZmL3FPWm9VcHNlVmRr?=
 =?utf-8?B?T1V4Y1BlbnhnRFA5TFBVY1RsbWMwUzQ3OFdiVWRQYk5yUTJjdXdWb1VsL3ZQ?=
 =?utf-8?B?enp6ZE0rS3puQWNZbXhSYzBxWGd5NDh3Q2tCNkU2S0U2M3A0VmZFenZUVDdI?=
 =?utf-8?B?UmpFN2xBNVRnMEJ6dGhlL2MrZmt0TGlMYitUdnMzTEJlb2VOd3prZkJTSmJ0?=
 =?utf-8?Q?FSjow+YatO4hzmgL95V8wTnJmQbOveWO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHJIb3Bld0tiOWZ2YmdmN1l6L2VvendTSGJGZWFidWtXT0N0OEl3YzRZSEJi?=
 =?utf-8?B?S21sTWtxV0xoc2lmaHpYU2xwU2M4dEpzRmtCa1hZeHB6cEZaZWZoOXFYdlRa?=
 =?utf-8?B?dHdFOHptYXBIbVdOYmE5bGJXc3M5VU4xM0dmdU4wcEZNWjlxcFpWVnFmZTZs?=
 =?utf-8?B?alFHTzd5akVUTXg3Vmo4TXFqdlJOMEdkbmZnVVAvbW56cWllRVJ1RVZIOXJU?=
 =?utf-8?B?UnNGZUlGb0JGelRTMURGVzQzQmdjMm43bXBJWlFiNUdoTmowOEc4UVNnR0NF?=
 =?utf-8?B?L3pMcWhkVDYvbmp1YzB5ZmcrYnkwanNGK1dsMFJZaGViVlZkdkFiMmVVdnFK?=
 =?utf-8?B?VWdMN0FpNUwwbnVZZUk1cmxHaUhDNFRma0EzWTRtQjZwNWVUbXJXNVhiTzVq?=
 =?utf-8?B?eVpKMFlDczBWTXNxVEdJY3IrM1ZseWdyWk1UaUEzNEIyWjA0S2xsOGRjUHk0?=
 =?utf-8?B?b203bFNjTDAzZnZKYzhsRUJDQ3pIWW8zZjR2bkZEbnQ3cjFIcFFUVWp3ZG44?=
 =?utf-8?B?VmpEY3FMYjZSNnJ6L20rR25sSUJ6Ukp5SG1XMHpVV3dLa2FCUVNzbzRCMmhh?=
 =?utf-8?B?aTUxSXlmTERtM3o4R3BneVZvRzVwV3M4VUlIS3NjOHJGQmY3WG9neDVqb2xm?=
 =?utf-8?B?MzcxV21QZmlHdVVQSkdtUEdiNUZZVmFCcUZ0WFRhRU96aVJZdTJndzFnK3hm?=
 =?utf-8?B?SllYRXR1YVBrQWhOSXI2NGtmQlZ0aXlOWjRQWDJjcE1Wck1FdCtNUUxrY2Nu?=
 =?utf-8?B?MkptbFEvSFNhd0FQeHRmK2daaytDZzN0enUvTnoxSXVUYllwc3JCTldNeEFO?=
 =?utf-8?B?N2IxSUh4eUlsSVVHRnFBZTl0SDl1K0xBa2ZUc0ZZUXJub2V6TmNtclhSdmQz?=
 =?utf-8?B?TkxrczV6WVNIYk01N1AwUXlMckVabksvNFBLdFZzZlRFeWNRVnJpR2pKWGRh?=
 =?utf-8?B?TExlQnRGc1FDYVZvMk81S1A0QUc1OHFkbkpZeWd6aFNPS0ZlNXl6NUZqbDB2?=
 =?utf-8?B?RHN0WjJwMEVrSWJFekUyZjMyTko0bkRMUm1nQ1NrT2t3aW1tZEcreWZKbEFs?=
 =?utf-8?B?SiszZmdITHZVWUVUK2VaTlVZOC9SdTV3S2oyc05MNXJ5TGMzWnJuU2J2ZzhZ?=
 =?utf-8?B?dFkzR1ZIdlRPSlc3bVJCMWgzbngycXFJOG1yaUFIVFcxa1dPa1o0T3UrQVI5?=
 =?utf-8?B?dnJlaWRDZ2R0Y2xxWEdUeElyUEo2WXhBYk91TlJLUCt2NmtWeFpPZzNsS3h2?=
 =?utf-8?B?ODlLWWQxeFdvWHlHMHlmK3dTTUlFazZMT09jRFFVUUNIWHpoeTNIUlpoNmUr?=
 =?utf-8?B?TGl1UWhSdjNMSklCTU5KUTRCRmIzN1pXTGZmU3FIS2RPVXNOOXlSQUJzMkd6?=
 =?utf-8?B?TGJLQnkrQnMwZTFOVHBaY0xib1l3eldWY09qMzJBM3QrM0FweGoraUdjZVcr?=
 =?utf-8?B?bGVPRUlPZWtuOFl5aTBhMDkvUE9hZlAyTU5mREZWUW1uQzJQV2tVWWVuQjNL?=
 =?utf-8?B?M3VsRXk2TTdvOVdnRUV5dklraGRTTDRiKzd3alN5MjlyamZZY3VieVl0Z3FG?=
 =?utf-8?B?cThBN3l0VkxPWGZCWDVQQkZMWkxCWjlGVkFnWGx6QnRVK3FHSUprc2gvOGFa?=
 =?utf-8?B?MzJnWjhwUmE1eEprZU85ZlN2L2UyU0ZWQWtqODVVNjhoNXRWZVd4VFpZVU9w?=
 =?utf-8?B?VkZkYW5qOWc3eWtqcXB0TjBiSjA2MzIxdExlQ0diOG85QXQ4U0tTN25ISGgw?=
 =?utf-8?B?Z2FSQVVYMXZ3eWUvSkZhWWNmYmYrelYyaDR1UXp0eUNudTlsbVN2bENzK0JF?=
 =?utf-8?B?TThqK01hY0diTENTMjYrVkZ0SlBqRTdMWDJEMHEzcDdNRVBVRFFCdkVVM2Ew?=
 =?utf-8?B?UVlqd25xK1FnYjgza3gvSWdlemxlNHNXRC9NOGdJamNKdnViVWhwSUxmOVZl?=
 =?utf-8?B?M0Y4S0s3S2NwWCtNUG1GdlJVS0hGa2pxYzJTQW44eGFnVGdFQld1VlUyTzJT?=
 =?utf-8?B?WURoMHozVGRUak5mSGFVL0NBZ285bFl3QWkzRWtva3hDaGNRdXBPTmRMdGFH?=
 =?utf-8?B?NUsrT3NZaTFVdG1UU2c2VW5Rb3dvM3R2OE5Nd0p1TE95cHhqaTc5SjFVbUhW?=
 =?utf-8?B?RjA2UjBvTjliQXZRaTJKNnVBcGVqR0tBamc2SERkSlgyK0pYSENhb1E1VFhr?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc12c9a1-b986-4910-9329-08de13018aec
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:30:48.5863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ETW/2kYRgmwSZgzec0wtIQwfAa2INJI+v7LZ1TaRFQdSeZ/VBBV49U0nlqHHSa+ZP085PgAwnL/1Uk/Ev70tn6guinZbZaFXx41xxKK8yes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We keep TRANS_PUSH_EN always set for always_use_vrr_tg() platfforms,
> so there is no need to write it again in  intel_vrr_enable().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b2f139addc8b..6e8f8e673312 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -709,12 +709,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   
>   	intel_vrr_set_vrr_timings(crtc_state);
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> -
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_vrr_set_db_point_and_transmission_line(crtc_state);
>   
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +			       TRANS_PUSH_EN);
> +
>   		if (crtc_state->cmrr.enable) {
>   			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
