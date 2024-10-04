Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1784B99023A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 13:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F99610E2B0;
	Fri,  4 Oct 2024 11:43:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbG8zAUP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55B710E2B0;
 Fri,  4 Oct 2024 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728042190; x=1759578190;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Jurj412/XXLhghR5KGxKU+yLCtFLlDUC2qNu1s2cZNk=;
 b=HbG8zAUPoaqsYS4GLF/lUHN1GN2qpm2QDdpNGRA29iiSfgEPapmx/mQC
 Cg+fYFV3y+jBH7qbs/lpXD53BZo34bdXBym1bgW3cLrCswiHAs6llI+RL
 iKAkdVMHJrYQ26wibNsZO7zQuV6TlyOTdjLt77HSAJGw00dU95/YL3GUG
 xtSFCNr1QGGER4wo4MN+3EGuI1pQiIQlPFRMB4NNiuQXdMgZVZ+o7F/bi
 qpdtolk3GZBl5ziPwT3RFih6kI54EMSR3HpW1/HkmQzH8GiqNn0Hfc0XW
 Mg1bh0swz9Ra9D9epe3X5RP+3Wo5XFG/gmUZyFTgVb2GXNpAKdirHjjkr Q==;
X-CSE-ConnectionGUID: MGjyiHWNSYK76SQGW7vJ2A==
X-CSE-MsgGUID: coBwArCUTeWiKQvSpmbrJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27141491"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27141491"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 04:43:09 -0700
X-CSE-ConnectionGUID: WKefC3XZQwG8PDugCwhKLg==
X-CSE-MsgGUID: 6OIAPY2MQ3Ka34AIA5vW6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74790182"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 04:43:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 04:43:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 04:43:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 04:43:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 04:43:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z5r2RmXYY/oMUDFr8oBFacQqj8DWhYqBlvpYzIWwx50RcDabErgN7pBUT5eNeNNd+fPaHrdupUbt9GrGvHjDIjKiaDzpi37BSeJSl9cvyIqSTHwsWq1IzsCEpqGgyIYTfEFFELSqzNKIA605O3Q7QPBco1bkKV2BCXYKwEK9FhCKdz0+ABg+aaHZ/FPy3v9HWZpeU+cgKUAQgwQu8PPzAgupZX5rdOE5yMBhaYfiKhP0RtQlazpR7XXDV7pxzZD0CtZA8qOprYXgUQYlmA6ZaHJ6PvTAw8r9lliMyV58YXbifOF3WcZ9l6B0WuENq3c62OnXD+b2NZWuX1/yf+Z4gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GsBOLk30cUCFoI4azA6CM4n0FKoCPT/V9gPSnUYwCRA=;
 b=Jd1VDC7CAd1UHNprEEME5ZDVqwMYb2lleTx+bR1nhsK6SufWZylr20DaO1mF8JzWcnskx6EeSvLRUw8dG04N3i+ruoZHLKyn+wGaEI5Cwr8PY8A9cjILJ70CT6gIA5YIvrugxbMUq6+skZ2QyBqPAhmn7h8C2pk354cNy8pOu+GFRkc4+Xso+2//S/XmqpgYJt8W6TfMFfpcoK7hVNQ4G9VKDmpwsA57BMGVzoqpGw9sOFXFHS/tn6KRzwRm8YJ/mc7XG5rUFVj+HkkDloEH/vDN5Cax+s5Cbt+ph4fePvreeglPZ1lRvL+tkWxv84qE5e47GwY+VHmPRWoWY/p19g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 11:43:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 11:43:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <878qv4rtkv.fsf@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
 <172804037058.2413.13969013073462156051@gjsousa-mobl2>
 <878qv4rtkv.fsf@intel.com>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for Miscelaneous fixes for
 display tracepoints (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@gmail.com>,
 <i915-ci-infra@lists.freedesktop.org>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 4 Oct 2024 08:43:01 -0300
Message-ID: <172804218117.2413.12993827581789365696@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0351.namprd04.prod.outlook.com
 (2603:10b6:303:8a::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4814:EE_
X-MS-Office365-Filtering-Correlation-Id: 537cdbe7-84a3-4396-9563-08dce469b5d0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXNqNmdxN2EwcjVpVi9YR0hiL2RSbXpwN2pQdGJveC94UENnY3ppblVibHV3?=
 =?utf-8?B?OUxublkwNkhhWFZ2UEFldWxkUEFQVFZ0OHRpMzU3cjZqMDNON2ZrL0s4amVW?=
 =?utf-8?B?SDNEcHBZejBwSHJadEFDeTkxVDh4MXFmcEdISnUxVUlJL3BxQno4NThBNDhx?=
 =?utf-8?B?aktHQlJHSDg5eWNQRVI4Vmk2YjZmdGR3czd4Q21ZRzFMYm04ZXlQUjc2QldP?=
 =?utf-8?B?WXlUMy9QOSsvWkNSQklmSlUwVkZ1bi8vQzRmRWd3N0R3eDc3UXZ5Q3ZBK0c2?=
 =?utf-8?B?RG9kY0JnNDZsT2FodnBmSVRXN3Y4YnRIQ1lONkhsK2Z0a2RTaGRjM0I0UkhM?=
 =?utf-8?B?amxpTktIYWJ5VkpBUDhrVDlMWWJUUXhJT21XTnQveGlTeTNycUpJdzhRNy9i?=
 =?utf-8?B?UjlseXlPMHpxaG9iSG9FcUwveDRhNWtyb1hnbUdNWEtlQ3NwZjQzM3NsVCtN?=
 =?utf-8?B?Z2RiVkdHbnFUWjd3bGNyTUJiaVZiQXAxaDh1NitpUlJsbkVibVFSVXVSMlZv?=
 =?utf-8?B?UUFYVURjVGh1NGFINDRWcVZ5cUR3dWF6aVZ1REtaaDBTMzIzcVFxbWFCclJo?=
 =?utf-8?B?aWN2bUlhb3Bkc0VRWlQ3bmNjdWhSM05PWVB4R0g5Tm50VUxkWkFnY044d0NX?=
 =?utf-8?B?ZmduK0hPUFlrTnhtOTlybGhoQ3RoSmlJSHVxN1BkZS9xUDJFWUwzZTFLS1VV?=
 =?utf-8?B?TWpHVDlSQ0VnV0FRRm1wNDl1WXdSK05Oa1M2YVFjTGh0ZUxoTzY4TTd0a3Ey?=
 =?utf-8?B?V3I4alVCcExtRTNwUExqczZCeFhzUjRNbWJMYmxHYW1uYUJjNlRQKzRISmhP?=
 =?utf-8?B?cnlRdUJ0Rzc1b3JBOGE5Q0s3TVRmNmlzVTdZRUR0WWVNRWhXck40UHhUU0tk?=
 =?utf-8?B?cGpHZGlmZU0xcFZLOXJFdG1VNzVTT0ZFNVNGQ0d6L3JXa3Z0Rk9QL1hRNDVo?=
 =?utf-8?B?Ri9NQ3loTjZkSUhhNmtSZDBRRFp5eWYrYzd4Qm1oSnNobVZhanJvcDRjTnRm?=
 =?utf-8?B?VWZVMDJTdU93WGVJOXZtY0VmMUJCYTJqeVRiNHpGMGlFRk1FdTVrZTVESEti?=
 =?utf-8?B?SlNjSytvTCtOeVhudUpTdHU1ZEdxaFkzU3h3TDhzc3pDZFYwRmlXV1RuVy9R?=
 =?utf-8?B?Z0FFd09SOEJBZ0o5OG9xUVJ4MFV6YUxkcm9oNTJjT3p3K3dhSkJlSDMxTmYr?=
 =?utf-8?B?S3FrM0pHUEhKNnNxY0E3d2RCbjNxbDVVTFpLSTM5aER5SjBTV2FNbml5VXIv?=
 =?utf-8?B?UXl1Vnk4dXM3UW5BazhsY1h1QkhteUdDc2xjY3RJdHB6TE53VDl3K3hPS2hK?=
 =?utf-8?B?QXB0NXNhQ0h3TW5TZjZVZXprZUV1VTFZbUllS1R4emdzNUs3b1RFSGRqOExM?=
 =?utf-8?B?MUFNY2tuQTIrMzBNdUdycGtiWDNja0dSa3FQODFqK2Q0KzA4YWhrL2RMMlEz?=
 =?utf-8?B?b3lZSy9OUWorY042d3FSZ285alh2c2tpYzBHdnJWYlpYTTRpSUozeXJVcm93?=
 =?utf-8?B?ejJEN0pmL0xZVmJjeXBYRlF0ZEhxOTJwRkNyNWhNTVBXU1gxNXVoWWlYa0t2?=
 =?utf-8?B?eVZjUjE1OG9xQmp5ajY1WXJkVEVPTFRYWVNOQ1k3SWgxQTZxZEdESXV2dGF1?=
 =?utf-8?B?cEZETWc5dmFSNFJlVCtKSENTN2NseTJzeUpMaTVFVmVQaDhSL1lMdzRuZXJB?=
 =?utf-8?B?NktkMXdENHRlOHV4YWY5OFRGR09kb1B2bm1SeGdURkdYS2ljRWVXcDB3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnZIVWc4K3JhQlVOUStlMnlQSlNibkozV2p0M3QvMU1vNEdjaVZZeTBscC9F?=
 =?utf-8?B?dVoxbUJnSUFsV1FUUnN0U09wZWlONlJuVy8vVUV2QWpRUHpQb3o3NTNteGYr?=
 =?utf-8?B?bDAwTCsrZ3BDMHgveXdialNSWjZ2eXJKK3VROVJZL0t4U1M3MEFKWTMwOVgz?=
 =?utf-8?B?aVp2Zi9IWGJDbWtmZ1lNNkJpKzJUWm5mY0FON2xIeC9OckpYZHlxSWo0azZt?=
 =?utf-8?B?ek9FSkxCK0UrOFRVZTVOYjZSb0JkVjJtNGxQTEFCTkt1SXVnQTZrdXVnLzl6?=
 =?utf-8?B?MEdBTXdoTVkxbDBza1lrQWNxVUVpUm51bllNc3ByZGdyQk9xOVZrbE9EeTlt?=
 =?utf-8?B?RVZzY0NDOXh1UVRJTnB3bG9zdFF5T2VtWFEzT1p4WlhNUjF0bytwTXRtMWl4?=
 =?utf-8?B?Yy9vcGM5Nmd3N3R4blYxZTU0Tm9hL0dPdTJIWldxenJNMmkwbXBsVmw4OU9Q?=
 =?utf-8?B?S203RW5HejhlSDBNRm9INkdJdStXSWdzVlJGL0pnKzJBQzc3ZnIwRTRZTkRB?=
 =?utf-8?B?WEVuSVhaNXNlekhUdFZuT042V2xPZTg1RHhjdnF2NU1tVHFmamgwY09jWGc5?=
 =?utf-8?B?OTEwMmNiYzR5cUtNZk9MWFNpekdmS1BkY2VlSmRFQ2c3MmFxdTUxNzY1VGFy?=
 =?utf-8?B?aFpuN1ovQ1U2VGJjbndOMTFaMnZLa1VLcE9tR0k4b0YvY2pxNERjeStWVDhH?=
 =?utf-8?B?ejJMVTFzbXc0TFFEWnVORG41NmVJdFdUeHc5dWVyL1hNOXMwazFuamQvMkl4?=
 =?utf-8?B?L0FXbDUrV3J5bEJqYkQrMFVNSWxYMUV5aWZDbVE4MGVWa25qaXljaVJ4UEJj?=
 =?utf-8?B?bWIrYnR5aHdFY2RBT0RBbW5LeElJeUx2czFUZGQwTjVNVkVEd1RZSzU4QzUx?=
 =?utf-8?B?VHVzemx6NmF0UElLeSswb2d3OEI4bzBpVmt5R1cvYWI1ZGgzQWVWbFlOSGF2?=
 =?utf-8?B?bUVSN1M2MDd2N2FVRmJSdG43ZnpqaTRtTWZ2cnJPTXZueXgrVVJhVGEwRkhl?=
 =?utf-8?B?N1F5YWJiR0dQV3JiblZYdEdWVTFUK0lHYkZqYW1nRk4zQlVlWlZyck9WNUlk?=
 =?utf-8?B?UFpSMi9GQkdUaVRDSW1mSmhUYTMybk1wa0tvRlZITDBIS3pZTlBwZkdiNmgy?=
 =?utf-8?B?N2ZSSFZKRG1EY2Viek9sVXkwSkJNZXFaL0R4RGxZSm1jSGdzNFRPTTAxdEpB?=
 =?utf-8?B?VDRhbHB2WjhwdnhzU1VhQ21lV0gxcWpwTjY2NDh6cnpTK2V3eFc3WU5Qd3RT?=
 =?utf-8?B?TSswZEhiRE96RFFuNDVScjNmZTBYeG84NHRHR3lkTldPL2RtS24yR1dyS0lN?=
 =?utf-8?B?QTZIRGRNdHZDQnFJSHQ0Q2o3NVQ3NHZQeTg0bUs2RTZQeStFUDYyRVE5VmRH?=
 =?utf-8?B?YUY5dEpSV3NpWkdVaHJMSDVUT08wZFFRektHTjFJVEFGd09meVdZeTZiZENO?=
 =?utf-8?B?cEFMRlVYZk9kMmRyTzM4WlltdUlhQzVOREtCMGl2bVIxWWxsUEMxYmNKbjNh?=
 =?utf-8?B?OEdpQTRJVEVYMDRpaDRIVmpMUjBJdjVUQUpOQW1VcmgvM043YzgxSEpWVWVx?=
 =?utf-8?B?L3hzOHNIam51TWs2Yk1YRFJRZ1dvVGlLTlI2UHYwM0kvTXp3T0MxWW9kbkhK?=
 =?utf-8?B?V2pOZWt6TFFqVzl0RU1oUXlkNUFNbFhjZ01KUXZ4eGhXTHovZEdlT2IrQUM3?=
 =?utf-8?B?MGh1R0JRRmJ4aTQ2YTlBcDRudnBDSEVTTElkNXB3dFZlV2JPQTdFNkFnM0RS?=
 =?utf-8?B?OWxwdmRNN1pGdytxSE1LK1Vlb1NhcUhsVzhXZlRCOWRobVFvV0JWN0p0T0k3?=
 =?utf-8?B?Q0RObDF1dGVadEhHSEliRWFNU1pKY2Y2VHV4OUJXZmNWdmVuU0VDWGxUMlRL?=
 =?utf-8?B?QkUzRmZDc1NGNzRSa0VpbnpwZnp0ZVNRWlBrVVkwaGJIb1E2SEF6eTl1UUcy?=
 =?utf-8?B?R2FacE4rTXpCaVRvcWdWb2NHV1ZqR2d3VGxicmt3RTZNamt3SDBSRm96SjU3?=
 =?utf-8?B?WlhwR2JNTXNHeENXcU1oVlhReldyOWs2Ni9sRHB5b1NaOUJKSWEvS0I3K1FY?=
 =?utf-8?B?aG9FeWcyYjdSZmZCZEppNHVLeGNFdG5YVkthOUNIUDAyYTdFNC8rcngyQnRM?=
 =?utf-8?B?bzNpTm1tTDM4WVpFSzNGRFQ5cE8vNTl2Q3JoOTBacDhnbDQ5UmdLRTBjVU9R?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 537cdbe7-84a3-4396-9563-08dce469b5d0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 11:43:05.3738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7GyqCKTvhQqt9clHU+tsnPq5bbj2rdRLmMD6uo70EE5xm5gMIeT8J8I85plLFoDTM2M4ZE01ZtyCcwH2lXdAtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
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

Quoting Jani Nikula (2024-10-04 08:33:20-03:00)
>On Fri, 04 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Patchwork (2024-09-26 16:28:07-03:00)
>>>#### Possible regressions ####
>>>
>>>  * igt@i915_selftest@live:
>>>    - bat-mtlp-6:         [PASS][1] -> [ABORT][2] +1 other test abort
>>>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-mtlp-6=
/igt@i915_selftest@live.html
>>>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-=
mtlp-6/igt@i915_selftest@live.html
>>
>> This does not seem related to this series, which is only about
>> tracepoints.
>>
>> Jani or Rodrigo, ack to merge this series without triggering a new CI
>> cycle? I don't believe CI exercises tests that enable tracepoints. Or
>> does it?
>
>BAT *must* pass before merging, no exceptions.

Okay. Thanks.

--
Gustavo Sousa

>
>Full shard run failures can be looked over when it's clear the series
>didn't cause the failures.
>
>
>BR,
>Jani.
>
>
>--=20
>Jani Nikula, Intel
