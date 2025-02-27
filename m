Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AB2A47A54
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0EE10EA76;
	Thu, 27 Feb 2025 10:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRpzOZHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7350E10EA6E;
 Thu, 27 Feb 2025 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652324; x=1772188324;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eh7+WPv6wS/aMqxz88rmhppJ0NgIxGi/NAdyajF2NTE=;
 b=nRpzOZHTRmdaXL5ero4ahuzUvF1RQ4JwAETHRIGo7ZOia4JY1L4Cjjbz
 wvO1FxsmSw9hcK2cJfohSIJjTfSGFI7tw8AZUbtHvjXUhByuReZ/zGnSd
 dv2aDhBP8ImtR4q50wsrppsDBSV/vgxWwjlhf8X3Mjses+Ywn7wwY2xYa
 l2kAa1SAgq5CbVnQD5NOTEy4s+dqc2SfOrTSqMBp59mQgIRwDVMKNmvJ7
 w4tKDKKaWhQ/9PcjdTzHV3WQiMXJsG1xm0Q0hrqOToerv4ot1E+oauN/M
 l3WFfuAoIfB1Z/SMWhiIR7dfyn96Y7G2bWzKBUuM4XycM0hd+oQqrW7mR A==;
X-CSE-ConnectionGUID: MVPb5MurRYS45XutIZYzVA==
X-CSE-MsgGUID: AeRxoaYVReCeztTDOsFR7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58951325"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="58951325"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:32:04 -0800
X-CSE-ConnectionGUID: Pfv3O2skRSGkvd4BWXe2Gw==
X-CSE-MsgGUID: SgeKNW5ZTSydNefVqxiJ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116758805"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:32:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:32:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:32:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:32:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XvWZuZCAHpqma5qfHIR44Mz32Ac+dgLO3wW0hN26EDPpxPpza2VjbgH/QfURnftH18KFaflb77KGPLKZQ64unbMuoPg/0FKrW+OT2clDzZdNIbuAKs6yUI+HZbATL4b/pPITaUqyISAn52AQpD/kridFKxfIkXSjSCTq+kFVffnuRfj8XwpYjepN17QfzpaRooYowrJ16UwnkqH8OczX2mWNI9NCfCHZYSwpQpOkM3JwOH00iw91Hu1S2pGQrN1s4Kz6guhPe3grYwTwfROzQx9VR4kjDjwXSyMWAtO8Udk8dix9KSP2D+3TYlvL6i31Tohr+ZlxyphSwsRvosKlFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QQcSvtz0MsztDUowCtG9vee1Ok8vxaukjRwwNpQBJUM=;
 b=ZBaVqk8NQrjYjEUKDxGDOHc74e7k58QkoDFvB+iMY8KOsWSiSaCVkCBoIiIzg4z0FHg+u8wr+c/owO8MMSdzHLmrhVRyYEaTB1H2ORVpxtPf0y0zrjCC6zuSi0FSfQnFWejbKNWy0a+wu/rSHTD7zigrQvHsNaFqbQmaGcY2jJExYrbF9OnhxpP7csAkyPRtZ5YAh2eQejKPpkDCRxtyKCWZfrprhXiIgm4t6JGGwUgCXkZuEMX73zvdMOJXiN3shy5qR5Cd65Y4kkJU2s3RP6AQwDNbArlcY5HCjyPrNYeXf1sZMj4zXZvsg6xO890AmW1Z0wwqeW/waaaMkyaXaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 10:31:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:31:53 +0000
Message-ID: <29c09015-4bfe-41b1-ba35-fdf390798eda@intel.com>
Date: Thu, 27 Feb 2025 16:01:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/20] drm/i915/hdmi: Use VRR Timing generator for HDMI
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-10-ankit.k.nautiyal@intel.com>
 <Z78XXOEOf4i4Y7ZZ@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78XXOEOf4i4Y7ZZ@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7077:EE_
X-MS-Office365-Filtering-Correlation-Id: 35a76cfc-6424-4fe9-74f9-08dd5719f398
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckJHcXZsYXpPYXJYdlp3Vmt3MkJXTnZOdUt3Y0VHUDVqMDVOWE5EY1N4Nm9I?=
 =?utf-8?B?blZkdjZwYk40UmtlUWpNWlFkK2xDcklGbENYWllGbHpIUHY4UmZ5dmV2UmEz?=
 =?utf-8?B?V2tITmNXY29ZMXJBam1veDB5SVFZTUJmSnFmNkZtVWxBbVBCUWdLcDIrek1u?=
 =?utf-8?B?cStvS1RSaDhqcXM0VmhHR05LL3h0aSthTnRCWUNpdHZCMWFzK3dUaHZ5UDEy?=
 =?utf-8?B?NDlDTHVyTUxrSmM4dlBUeFBYM2M5cjYrQlBjL1Z3eXVSYXNJWFdhd0tOMUNh?=
 =?utf-8?B?aklSblV2TlI5Z0Z3aHdJMHQzZU40WWZRVkh1L1p5cUxoYTFwZzRYeCsxSTFW?=
 =?utf-8?B?UE5YUWYvaWpleFpLQTBXWTJNejcydlZxUXg3RDlWWGhuTzl1UGIyOTdhc2xh?=
 =?utf-8?B?VnROL3cwMWtuNmUrSFRzRnFxcXlwVHBVQkowVnBHYk04Tk5SRnB5d3JGUEZR?=
 =?utf-8?B?ZkVzdjI3OG00Y1RWczBqM0xGMWVCbGsyZE5sNzc1cGJYbGlBbll5TFU2MEtJ?=
 =?utf-8?B?aHVpS2E0V3RjWHMvYmJUQ0JRTC9UK2VlaktnRTNaTm9OLzBPckVIbEpTeXVo?=
 =?utf-8?B?VkJFYXJXUXR0UnFhYzJSd1FDWHU1ZTl6M2libkZRejFuV1d6YlI0Qk5KWGdD?=
 =?utf-8?B?Zm5ZelN2VlJUSTRaeWdDZkhKSHI1bkcxbDBramw0ZzhtdUMyeitjbEh4Nkwx?=
 =?utf-8?B?M1pjRm8wV2Z2TzNQTXlEMnh5SS8yUFBhWkV6b3A3RytJQWpzK1pBaVhTQURV?=
 =?utf-8?B?TkFGNFRDYXV0c2I3RU5RSUpFQjRhZ3JZRHRiVlhBTGVtUUxLNXpSVUhWY3g0?=
 =?utf-8?B?L05vRWpyalZIMnl1UklHbnMwR2R6ekdmbjJkU1l5b2hIQmJOYi9qL3NGOVFv?=
 =?utf-8?B?dW5BRXBZb01yV0JwUDQ0b0l1UFBFdXozS2F2aEp0VTZVZDZrK2tKR0ovRTc3?=
 =?utf-8?B?dlRRcjJLbnBmOWI2WlIzMWtxUmVlSjBjc0JzSUJsVGFWd3JnbWRTTGhRNzdC?=
 =?utf-8?B?Zm5JSjdHdUZLWkhZQlRKb2UwTnJUMllVcGE4K25ZS3dTaHZ6L3V4SHBQNDZO?=
 =?utf-8?B?bG5NbDN4RWFiODVQd01mUjFhWSs3bldSTUhJY0gxT1BFSjdkSHEvZlN3VVU3?=
 =?utf-8?B?WndwYnQxeEYvdzJWbEhZMHBQNlIwVXRvQVhoYkdWa3RDeWNTL3JFb3NvNGJL?=
 =?utf-8?B?djIwYlJuQ1dXTUpSTUZ3dmFtZjFDVFlWUVZsMFFhZHEwdXVMclg4bVNUMVlv?=
 =?utf-8?B?Y21IOFU4eUpkN3FxM3VJK2tBeVYyYXJCVXNVYmZIRndKb1MzeVJlZVYzMzNH?=
 =?utf-8?B?ekJEdEtkZjFuMHZ6bFBUYWJIaDFnVE1yV2lNM2hEY2hpY2J2SlZYcExITzU1?=
 =?utf-8?B?NVJHNDJtMHBFQmluRHFRQ1l6U0o1ckpDeGoyU1orU1VrUmJSdG1jUE13VUl4?=
 =?utf-8?B?WE8xTFJIUDh1eE9qTGZtQUkwMTd2WFo0ZHU5OTdya1FCZElDS3M2dWhrbHE5?=
 =?utf-8?B?S2ZxZHFWbTF4anNnYll3OWszNTZUbUM3UmNXWlVJSC9sU0NHQ2VQdjJxQ3Zz?=
 =?utf-8?B?aWxVUm12L21meDlMdU5wL2ROcjJuZUxXRmlWckY4eWJpMUR1WW1qYkxDd1NL?=
 =?utf-8?B?cUYxbXM5UmRqL0l2ZGZ4OTRCUys0cWZlcmZHSUVlNnlhVjF5S1ZiOTJMSU5O?=
 =?utf-8?B?V2JYbklaWHptREV1ZDdBLytBamhZNmlMeWY4TlAvVGlhMExFK0dPVS9Ld3Br?=
 =?utf-8?B?WkFPb09hTzBaZ09PWEErNXBqZEE2bnNWOHg2a3lpVHhWTGdEVHVkOXMyZVV3?=
 =?utf-8?B?bkREY0lxMWlGUjNMaDhxeU1kN0hsMVVmZW03cjc0NU1BSjMrdDlkcjZCWWVs?=
 =?utf-8?Q?+hKO5o3p7tjLY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkNMSUw1NDFJcTRGNFAwbkgwY0NiTWF2OU5UbFo0OTMxQ25jMGNtMDFwaDZo?=
 =?utf-8?B?UW9aSEgra1RmTE5WZG9tbWtDZ3N4YkN5emNpMW05ZTVFUjNOZG9sUUFGakoy?=
 =?utf-8?B?c3lxQUwzRHNjRUJGeG12UGVRNXRsWFVXQkJIV2o1aE92NHFoV1M1YWdBbmJO?=
 =?utf-8?B?eVRpZmltd3plOUo5aEpQNlpUaG9NNnhBT0g4bTdGL2hWZjhHL3BXUk5jUjFu?=
 =?utf-8?B?QjdZdStwbGt5UEx2a1cxbzRRRWJzM1MrdXJHdTR5RUNGb2JTQmdtOGpEdlV0?=
 =?utf-8?B?bFplN3djb3N1QU9UeFJ1MEhBMkxqUCtWOFVhYUdPZStLbXFCQXVOSTVZcStn?=
 =?utf-8?B?U084TFpYeVlQTzZYVFBhOVFLZE04c2MzMUd6Sml6dXRPcGdMK0V3ZEVTdTUw?=
 =?utf-8?B?OXdkcjd2Vkt1cHlMOUxkVVZuQ3lBbjZJbEZkaFFkaFhVcnRSK2hqeG13ZExR?=
 =?utf-8?B?c29DVmU5UEdQYVRZOUowWGFmRW0zR1ZBejQ3SVdBK2lFNnhXSytSc25wamp6?=
 =?utf-8?B?a3BvWXFvV0ZpdmlsSmpXY0pobHhqbnJkQlZNNHFpanl1TGhTamN2djcrcmF2?=
 =?utf-8?B?Vml2YWd4ODNwMHZyTkRvSHB0WnZvYUNxK0RUUVhjMnIvbkVMSktlekZUTHpY?=
 =?utf-8?B?aGNjTDU0TzNIRXdIaWh5WlRML0ZyQjQwS3VHSTVMZndMSjJqRFdsSUx4NzNZ?=
 =?utf-8?B?YkR5eDFZaCs0ZkN1ZlQwWk1ZNWN6bTR6L041QTVsdHVPV2V6eUtySTFiYWgy?=
 =?utf-8?B?M3YyeXdneGNuNk5rODI5emYyeXRtdzZKMW1wRTFaNVdvWFJPRVlOQTFYWTZu?=
 =?utf-8?B?andDeUpwdWlXaHR2V3AwcU14ZWNZdGc4aFNtS2UyMDQ3VEJkaExRaVVaTlNu?=
 =?utf-8?B?UjNFdURlOFFNajA2ZHdPc1N3OXd1cnRoWnY3S0Q0eHJxOHNsRDFadkZrMm92?=
 =?utf-8?B?YmhsOTBtUVZKL2laV0luNW1FM04wUUk0TkF0Z2RGYnZQYk1HdnBaOVhIeGI3?=
 =?utf-8?B?QVFYSUczUWJWeDFSMGg2RGtCeXJGMjFxRWZWUG5CMm5NdmZ0VkFMTEdxeUZ6?=
 =?utf-8?B?MVRYbDJMK1hlVHlPOG5hWkcvUmFJSGttcTdOekgyUDQvUWFiNzRpT2NKeEhQ?=
 =?utf-8?B?YVFpY2srdnpiK2crTE52ckk5elpFSU40eXVZQVZIYmdkZlpvdHhPWUdjNzJz?=
 =?utf-8?B?NG5DeE9iVzQ0YUxXTmxBbkdqNU1MTmZONVlFbEJxYjY4SUM3Wk1meWNadlJJ?=
 =?utf-8?B?L3llM254aHNYUi9RVWRVZjRzRmo4Y1pFZGNQOVZaQ05jdjhDemttUFBPWVpG?=
 =?utf-8?B?QnJ2ZHM5SFZ4L1ZmbHY5dUYzbWlXRlhSNlpJYXlnUytHbEVXY2dQMUhMV2k5?=
 =?utf-8?B?RW5BSXlHd2dtQUZkd1VoQzZrUm9kYlYwa3BEMjB1UGxMdW84S0RWSzRFR3Fm?=
 =?utf-8?B?UzFSdDVwNE54bE9vdmRVS3FEK2hSMTRVYWh4QmdDTkU1UkNxc1haYktIK25w?=
 =?utf-8?B?OVU0WUtrV0dBelBsNm1KblNZMUQ2YmxXc2xaMEVpelprZHpuVEJKMEZEaTlJ?=
 =?utf-8?B?QWp4eklrUStlN21VTjM3eDBZQ1MzRUtUZFN6N0RLbmJjblVyVy9mdTlzQUFK?=
 =?utf-8?B?UCt1RkIxRlZzTlVLSURjQmFBZXY2L29rT01VMlVKWi92d0FKblRESVRlakly?=
 =?utf-8?B?ODlQOXhnOGxzZGovYi9HeVVtSENhNjRwRFNqaGlTK256T0dDdGpVNGE4N1lV?=
 =?utf-8?B?L3Z5UlNjMWlsVEdYQmpwN3FvUmVPaUE4S0RlOERlUTE3ODJZcmdjNzZlU0Js?=
 =?utf-8?B?NytaYzFhRll0YW9jNks0blFCVUtYRjZPTkxyUkJWK3U5dGtTWnVFMEg5V0J5?=
 =?utf-8?B?ZjQxajNCdnU1Z3RrR2R6b1B2OCtzUnNFSU1CRFlqUm5GNFZRbUVnaWs4RDVO?=
 =?utf-8?B?c3NKaHdnaWZmSGY1WEQ4SFVzcWpFNzY3NzBnK2RJOHY2Y2xVaERUa2tsekl2?=
 =?utf-8?B?UTN6djN0V0tZWEVXTFpDK3BSNjFMUVRxMG5JYmFYRHprcW4zdnpxRzdZc2tI?=
 =?utf-8?B?andNd1ZlKzVGcUFueXJSWFhDWnRubTc5Mkl6L3lmM1orcENYdmJzMG5CVmtr?=
 =?utf-8?B?K3J3eENWM0MyV3EwRklLaHk3b0M3cnlCRThFL0wxSXlSV01TRkZXQVRWYTlZ?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a76cfc-6424-4fe9-74f9-08dd5719f398
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:31:53.3224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bgKanPgvWkSlWcel626BaAW3u4RvT9FQ6AC3bIVQeZhvpjc2cQwFmvOVi3MKX84tF0IkoUy0LhLRvTRFE8z8jEt7mvH9mUbVIqgllUQo5Fs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
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


On 2/26/2025 7:00 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:06AM +0530, Ankit Nautiyal wrote:
>> Add support for using VRR Timing generator for HDMI panels.
> Please provide actual justification for this. And some kind of
> explanation what kind of timings this will give us and why.

You are right. The commit message is giving an impression that the patch 
will enable VRR for HDMI which is incorrect.

Will provide proper explanation/justification here and for MST case too 
in the next patch.


Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index ed017d9de920..28130436735f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -64,6 +64,7 @@
>>   #include "intel_panel.h"
>>   #include "intel_pfit.h"
>>   #include "intel_snps_phy.h"
>> +#include "intel_vrr.h"
>>   
>>   static void
>>   assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
>> @@ -2384,6 +2385,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   		}
>>   	}
>>   
>> +	intel_vrr_compute_config(pipe_config, conn_state);
>> +
>>   	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
>>   					 conn_state);
>>   
>> -- 
>> 2.45.2
