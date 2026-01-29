Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLezM0Yne2nXBgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:24:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB2AE184
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF8310E173;
	Thu, 29 Jan 2026 09:24:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S8bv3VnT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DA410E173;
 Thu, 29 Jan 2026 09:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769678659; x=1801214659;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/wYpsIABUUmBUDgPawAqgvWwH5NZqXNgrgGP4VC1AEo=;
 b=S8bv3VnTiM5FxcOWlAsXizgzJ7jbV/oaOmLuCkTHwUdKf6eZSqyZAvhJ
 peFmHD3KBuYpb2fLkaCHgsiNGgi0DNI6As2uzW4cfK8OHI0VRSrL+1K2Z
 ejdySrw0tzkS8RMrRWm2bf/QdyJJVfcpmZ7JqyGtCA5TebVinnSg7g1y3
 oUGcq4rrDFJhnXL+NHPIJ27G4laESHCRPhyIOBmrKxbv6J8npfssYQ/dB
 fonYOxqKpCAaByno/GqjmnoM3t5lH4q3Yh4QCkArIahK1PQb+R6ydphEc
 JlnbnueO7jPCBbdgGlm5C0/OCpZJYPAb1YE4laiIb/9V9ZgLIigbrA+RI A==;
X-CSE-ConnectionGUID: qqByaiJvQAi/omhDS+a9JA==
X-CSE-MsgGUID: Pi2BbJ0HTgSiQz7+XCv6xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88482139"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="88482139"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 01:24:18 -0800
X-CSE-ConnectionGUID: pTKZ2vwpTpySP7iUgZmT2w==
X-CSE-MsgGUID: fECYW4laTjOxlmtC8jTItA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239259955"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 01:24:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 01:24:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 01:24:17 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 01:24:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ibFvsIXCCYzwCj/PCSUXbERP0t9FYboCsanaVZtoKTytX4Z3GFz1otvWm6Wj49CxUDd2w9k7DLEnMUbRZbu2N4Yhl5gtffL319AyVUhhmX/wQl5di+uKGNgAm7zdF6PxeNtNaFvMtUYMbsCcwSK9QFO8jFdu36kcLw/A67BR8FKAUEHhD0SBlBnNMTkf6kriQL4xYbjPepVjYBfiPlqju1Iu6hPw2qamq1ZA1Z2VLO0Ckraq/4NPPzIBoQ2yyAwAukdTk3H5C+XpN5jZSZSe8kyhBCLQAb5mC1OVEDkWe+TK1QGcPjX5TsFS4WxzF5BkeVp9NOWsWLsUi1p6E9b7IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npZZORXCwdkeQdItJ6B9qhdf6ztOAAn75QjSYy/0/qY=;
 b=OuuamH0KkfRGohtBQvGYqH5ImN8Y52HcQ9kfEmgZ6tO6U2sbIb84euMj5XSogvxeloIdCWQ0HKS8oF159kkrZEfhkFcm8sz4B2EMn2qJw6im30bAqzucU/vitI4eR+u9X8XxUgB/8qPaCngxnoYWaNOeYNyji3JBjmLTQGPM2YJmaEvr+OJqI0wzH80fgIa0Q8jWaSWp1K9cNBgdUT9lDDXJaIv3USaWEhmV5d+jxYiHu6JbxHitGjt19wVZHU6MCPYwjcQ+zMXoDpCFGM8Ki5+55ezrpmOE4tH/hgwcrvKDfJM7upt/EHnM2+bsX+VxgPjX6rWPTyyyf9QQnIsopA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8842.namprd11.prod.outlook.com (2603:10b6:408:2b3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 09:24:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 09:24:13 +0000
Date: Thu, 29 Jan 2026 11:24:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aXsnN6_AtVeWvL_J@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
 <aXo8dwGBqxY5vE6o@ideak-desk.lan>
 <079b962e-c649-4abd-a75e-5c50800542be@intel.com>
 <0fea6800-d846-450f-af08-5fa90f6827bf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0fea6800-d846-450f-af08-5fa90f6827bf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF00011B55.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:8:0:19) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8842:EE_
X-MS-Office365-Filtering-Correlation-Id: 98b4a03e-70f8-4e17-5617-08de5f182a65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eVdLUTJHdDJFdEgxS1JSVms4RlRrUHV0bW5nK3V4VUcreU9BNllvVkJwRkhV?=
 =?utf-8?B?ZE5lZzZ4amZpbzlHR1laUVo1U2NXc1VSM3IxWnVBSXFsdXpKY1FUNS94clJl?=
 =?utf-8?B?Rnl5bEVZWXB4NVRNczlVSUhKZGp0bksrUExESkFZVVVwd0dPeWdFZE8vc2ZU?=
 =?utf-8?B?NDgzSmR3VWp0MWV4Z1Fuck5yV0gxaWZtU1NxZFVJMjI5ZDB6NGtwVHBESGE4?=
 =?utf-8?B?NzNuSFBrdmQ4akYxUU00NldxWEEwM3MxbmpwV1pHcEFmNUdxdDBuWVZ2bE9P?=
 =?utf-8?B?eFZDdXFNSENWbGdNT09GcGhoR2lWWjYvcjFlVlNBbWkrb3EyUm4waFJZbHRi?=
 =?utf-8?B?RnoxcVRvRC9PemxsTUx1RkE0Sy96Yk8vZ2hIOE1jSG1VVk04cmZHd0piU3g5?=
 =?utf-8?B?Q21UeWZTSlVSK3VyMnByb3lKWXErcENnd3JrR3djc0dLdjhzeUVsaWRxU2Rm?=
 =?utf-8?B?anN3Zjk5bkJEbzBZbXlvcmp6TXNGcWtRWEd5TjBQRHF2enBXMDlhZVVBNTlO?=
 =?utf-8?B?QklobGJGeXJ2YmFKSXdZUmE3MUh0ejdyeEUwWVFiQ1NDK1hlalZFMlRxZHpH?=
 =?utf-8?B?dk5KNlp4STJPNEo0L0l0cGVqMkhwbTBLRDY5MnlTdjNXTnE0dVJwUkVKL25x?=
 =?utf-8?B?Q1RGcWxqT3NXU0tWb3lJVnBMMUkraWdNOVhFalE5bE5tVWZKZS90U2ZqSnFw?=
 =?utf-8?B?VUl2UGYvc010cHZkWHNITE5nVzJJTGJ1dElDTDFnZlc1dGJYdTBDVmNVQnA3?=
 =?utf-8?B?S0RIRHJGS1VXengvN3lDOUY2UkIxUG8vYlkzREdtN0QzbkYrR3pna2w2ZDZY?=
 =?utf-8?B?L2QvcVBweEo3R3pzQ0FNWjcrWitNVzBScFRoYzBwTDBIOEcwVGh3TTliM2di?=
 =?utf-8?B?WTlMY2plZHpYc0I4dE13ck9STit0WllFU1lYWktFV3NIeURPMGs4aWxzR2tv?=
 =?utf-8?B?WkpROHZJNStOMlJ3TVYvYzBrNlJyRmNZT2NYalhkaWo4Smc5VnJuMlhiNG96?=
 =?utf-8?B?QUQyQUNvenVWcm1FUnJVN3ZTcEhPbUFFQlkvTlhEMHRPQ0ViWVFucDA1TUhh?=
 =?utf-8?B?cDVKTHJXamlXWGloZEI3UnRnalV6Y2Z5WDBTcVpnNk0rMDM1SWRpVXBScGJo?=
 =?utf-8?B?NEE4Zy9rSHNEK2JZR3JJbVJnREpWbCtqeWRBVHZnRWZkclBMQkNCRFN5QUxC?=
 =?utf-8?B?a0Vzd0ZvZWlKNXlrU3NZNWNOVExwTU5MSFcwQmFMZkNsSFpMaXVMM0tBakdl?=
 =?utf-8?B?ZExINVVRUGR5WTl1aGxiOFNJZVhTckRvbFl4cWpxMHdTYUJLVndNeE11TkZa?=
 =?utf-8?B?cFpqR2ptZG5hVzBxQlIzM0tzdkpSUit2OXZycmlRSjd2dFA5RGh5UndqNDZP?=
 =?utf-8?B?ZGZUUjJmSEwzekYzK1lINE1IdGxIM00zakZkcmc4cWxDSlFsc3E3di9ud1Fx?=
 =?utf-8?B?NHI0SzlvcFVNa1hyTWQrODRRTTBwelBlazl5Q0dUaXh3dCtpOFBDdmVnOUVV?=
 =?utf-8?B?TkRqRU1CT0k5Ny9oNjMwZVFTbHFlWjh1Z0RtRXh5a0hwQjZ2V0kybTduRW1T?=
 =?utf-8?B?eFk4QXhrTUh5OW4rYmZzYXpDZ2YyZnc0UTU3MUVxYXBud21YN1FrUEthM1BQ?=
 =?utf-8?B?MTd4TjAvRHE4dTcyMXhyTCszcHlIQkZ2RTZBeHloZ2t2d0NFSnpLRXh2YldS?=
 =?utf-8?B?T2tGL3F5OGwvODRPY3RFbVJxUVo1VGlFK1pCdkE5ZFBWVlY2cDVVZ2NJQyt4?=
 =?utf-8?B?YkRuWThOS0VPcllYQzhtcTNNb0tuS05mcEtObWJ6N0I3dy8zL3pnWjJGdlV0?=
 =?utf-8?B?a2pmRkpWTlYxZFU5SzJsMW44OWdJdmEyU2hZajJLRkFhVWd3TjV4d2h6b1RB?=
 =?utf-8?B?cklzMnFpQ0drT2E4bDZPcXJlLytNYmFWKzdhY2IvcnVjck0zb28yeTgxWmo4?=
 =?utf-8?B?aU9IUTArWjB5a2NLWmdvVUlyQjZZb3E5TVNranV4dG9RdXFMOEpJeEw2VUFC?=
 =?utf-8?B?L2dRYjJZSUJXVTlGNGNHZXNnZ3dxVGx3QmRiZ3FxVS9rUlNrT25nSnJXREpE?=
 =?utf-8?B?S2gzT2VsMFJob0lnR3FpSHA2bXBKSXB6RG9aTGEvREdzcXduV0t0R3hreVRa?=
 =?utf-8?Q?vf8U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTNmMkFWRXFwckdrVzNXeGpWblVEdHV5VGhJdGlNbUcwTW5hcmgwZkplM0Fo?=
 =?utf-8?B?QzZrUEFGc1c3anh0VTNsQkgxMUhJUUtCZnh6UnFkcVk3eVJyMHhyMzMrRnVS?=
 =?utf-8?B?cCtpSi91VlJ4SVlIaWo2TlBwcnlLQjQ1RnZ3VXY5cEY2eHpsR2lMMnhBdlJa?=
 =?utf-8?B?TStQc28wRUJJd3NBMllIcnQ0K0FmTUN6dklaL0tmV09vMU5oeXBkSWYrcmZu?=
 =?utf-8?B?WEhWREZYYThncDFINGhGYy92eDA4UC81QW5HUlBBMGExQXVvOUdTY2Ywb2VH?=
 =?utf-8?B?NGhWQlJDWWR4VGJOWVNENXVuT21wbm04RFdtaytUckEyNXdMdXlEL3M4emFy?=
 =?utf-8?B?WUlQaDhNZG41QVNqVWdVc2x4WWptUkdGQ3dFRDRPa2RSTXhyTTFYS0tPOXpV?=
 =?utf-8?B?RHo2QkZlWGp5TGp2UnBQcDdqdWVWT2hSa0xFVE54RGNjczRYcjBlL1I3V2Jy?=
 =?utf-8?B?eWRTdmtKQnhrcXZVR3czK3ZuQmNGYXJCeE9uRWtZVDF4ZmtqeVdXa1NRTE43?=
 =?utf-8?B?cDQxNHhzcXJFMllhUmZpVFhjdGxERzExR1VlWWpYa29QVlRaQkxvOHFwQTVL?=
 =?utf-8?B?TlJoNTArZkYyR21GOWRsdndOMS8zcmhWNXh0T01IOFZYUjljbEhzQTc2dUJB?=
 =?utf-8?B?VFp2MmVodGh3VUJXcUJOMjFBQmROR3A2clJqaC9IYmM0QWdNQXB3WFgyQlBv?=
 =?utf-8?B?T2tmdlpSQXI3ZnN2TjF2Wk5QSXB6aEladnRRV1VnNXFwYVB6ejVxbmNiN3px?=
 =?utf-8?B?RTRWZ0Q5emRycytYRnI1RDd3cGNuNm0zWWhIWkRSbGtKYUxPTVpYT1hmbjNh?=
 =?utf-8?B?N0hJWFZSOTBnc0lkSEE0L2V0eURnZi8yK2d5eTQ5dHI2Vk80bzNIdVMzQlBX?=
 =?utf-8?B?SlFoT2lFeFJBUlRNVXE3aGVrdWZCbkhlWk1jK1BrSmx5RVFHWFZNMW1PNXh4?=
 =?utf-8?B?d0RSOVhiaHRadVduWlYrOTF6RkFKRjgyYTVidWVaVmZ1NFcrOHhXMHczdjJF?=
 =?utf-8?B?dWNieWdxRGNNeXI2VVpVZU5HK2pkUUlpVEVPS2ZMOUNqRHM3bmNYTTl0c240?=
 =?utf-8?B?L3ltVTlFZkN4d0JHRmdHcDRQR3g2QW9jbHRNTVRkdENqQTdKd2ltMFN1QXBI?=
 =?utf-8?B?Y2pJVTRFODlIeUp5Qk5Lc2UySmQ5UTQ4eVpOOFhtMlJQWTB2ZUx1OVNkVGJ2?=
 =?utf-8?B?TEFaYUtHd2pYNWtoN0dyNStvUXR4MXloUEtaVmRGOHA5N2xZS3NsUHpJVGtB?=
 =?utf-8?B?WHBTZk85RHdKU0hyUnc0Nmt6N3VxNGlTTitlYk41K1EvQ2drT2FUeTdBY0Er?=
 =?utf-8?B?d2dRc1d6ZFEvZUJnckNQMTJRRzZTcUkvVmV4dkhkQ2pBUTN2T1c1TGp5VXJr?=
 =?utf-8?B?SFJibVlqWDMySTNJOEFBb3pCbHNjU2swYTNPNllhVUExUndReUI2TXcwS2Fy?=
 =?utf-8?B?M2dpMjJJQmZacmpRajhtaTBZOC9HWkI0YlBXcFcwc1ZuUEFaamVDVkp5dDhT?=
 =?utf-8?B?TEUzWE1GK1FiQnEraUtFRjZxK3g2K3ZPZFpWM1ZJOGZhdHhtZU95akFXK3ZN?=
 =?utf-8?B?VEhDLzRNcnZYTVhLUEVpSjgxVjdVVHFPTTd5QmZVQWZZTk9OZngyZmNINE5N?=
 =?utf-8?B?eEUyMzlkTnJoY0hZMjhlblIyL2s1RnB0eEpKTzlpTldvMkhIZFlpWUEvKzFG?=
 =?utf-8?B?T3c2Ly8rQ3JUdlBEZ0JiU3lxSVV4b2wyMnZFN1Y4MUtQOHBxQmhVTGtIQnl4?=
 =?utf-8?B?RlpaY0tjUkppOHdXb2RBTzBiR3pqMWk5RnkvdG82YVBpMmI4eUlMK1A4VGNZ?=
 =?utf-8?B?MG1razhOZUNFZnlKRHpDZDZSTzhUL1NXTnhDUWNCMjg4RzJSVGQ4NHQ3cnBQ?=
 =?utf-8?B?VG42L2NHdVdOempYYVppZ0h0QndPWXBIVHR6V2NYMjZKYTNwbTgxei8xZWhn?=
 =?utf-8?B?UjYyZExOOTg2cHJzSlB0ajNFVTMzbE4wWENQRnVVVGtrNXhCdDlhc21Nc2RR?=
 =?utf-8?B?RmsybnNDbkY0cThrbXB5NlJBTitDbThaMXNncFhLNGp4UVJ3YkJUQTUwaE91?=
 =?utf-8?B?b0RZL1ZlWGtBNWtHTGkwOHN0eHFaRmFiMXlwNEFKdWhBZm03WVV6YWppdmNX?=
 =?utf-8?B?VGRWUnRZSXIzUXFFNWJXY05SakZneENhNjMxNWI0NVVIZEpzR1gxNXlzS1Ny?=
 =?utf-8?B?dTc1YUtWVU5QdDZUTmdNZUQwTzArMThneDBQOXlrcS9nOVAzdUVJNk9zZzFQ?=
 =?utf-8?B?YVAyV2lpSXpGcEFublVOR09CSXJBdE5zamEyREdoVldqNjRuOVJKSjY5T2VU?=
 =?utf-8?B?a2RJenhzeHBqTHh1NE5MOWVUL21IalBtK3lqSzNYL3R2T1dNbU9lQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b4a03e-70f8-4e17-5617-08de5f182a65
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 09:24:13.4587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A71Ya8YuXBMDPdCsQj1cschqnuQZGCuQajZ1A6n7/iZaT7EAlQZdhamh5O/BeHoSHCEQ2FIdJf5V0mCrFw0N5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8842
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 96AB2AE184
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 11:18:28AM +0530, Nautiyal, Ankit K wrote:
> 
> On 1/29/2026 10:51 AM, Nautiyal, Ankit K wrote:
> > 
> > On 1/28/2026 10:16 PM, Imre Deak wrote:
> > > On Wed, Jan 28, 2026 at 07:36:24PM +0530, Ankit Nautiyal wrote:
> > > > Currently in intel_dp_mode_valid(), we compute the number of
> > > > joined pipes
> > > > required before deciding whether DSC is needed. This ordering
> > > > prevents us
> > > > from accounting for DSC-related overhead when determining pipe
> > > > requirements.
> > > > 
> > > > It is not possible to first decide whether DSC is needed and
> > > > then compute
> > > > the required number of joined pipes, because the two depend on
> > > > each other:
> > > > 
> > > >   - DSC need is a function of the pipe count (e.g., 4‑pipe
> > > > always requires
> > > >     DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
> > > > 
> > > >   - Whether a given pipe‑join configuration is sufficient depends on
> > > >     effective bandwidth, which itself changes when DSC is used.
> > > > 
> > > > As a result, the only correct approach is to iterate candidate
> > > > pipe counts.
> > > > 
> > > > So, refactor the logic to start with a single pipe and
> > > > incrementally try
> > > > additional pipes only if needed. While DSC overhead is not yet computed
> > > > here, this restructuring prepares the code to support that in a
> > > > follow-up
> > > > changes.
> > > > 
> > > > Additionally, if a forced joiner configuration is present, we
> > > > first check
> > > > whether it satisfies the bandwidth and timing constraints. If it
> > > > does not,
> > > > we fall back to evaluating configurations with 1, 2, or 4 pipes joined
> > > > and prune or keep the mode accordingly.
> > > > 
> > > > v2:
> > > >   - Iterate over number of pipes to be joined instead of joiner
> > > >     candidates. (Jani)
> > > >   - Document the rationale of iterating over number of joined pipes.
> > > >     (Imre)
> > > > 
> > > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/display/intel_dp.c | 158
> > > > +++++++++++++++---------
> > > >   1 file changed, 103 insertions(+), 55 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 4c3a1b6d0015..599965a6e1a6 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct
> > > > intel_connector *connector)
> > > >       return true;
> > > >   }
> > > >   +static
> > > > +bool intel_dp_can_join(struct intel_display *display,
> > > > +               int num_joined_pipes)
> > > > +{
> > > > +    switch (num_joined_pipes) {
> > > > +    case 1:
> > > > +        return true;
> > > > +    case 2:
> > > > +        return HAS_BIGJOINER(display) ||
> > > > +               HAS_UNCOMPRESSED_JOINER(display);
> > > > +    case 4:
> > > > +        return HAS_ULTRAJOINER(display);
> > > > +    default:
> > > > +        return false;
> > > > +    }
> > > > +}
> > > > +
> > > >   static enum drm_mode_status
> > > >   intel_dp_mode_valid(struct drm_connector *_connector,
> > > >               const struct drm_display_mode *mode)
> > > > @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector
> > > > *_connector,
> > > >       const struct drm_display_mode *fixed_mode;
> > > >       int target_clock = mode->clock;
> > > >       int max_rate, mode_rate, max_lanes, max_link_clock;
> > > > -    int max_dotclk = display->cdclk.max_dotclk_freq;
> > > >       u16 dsc_max_compressed_bpp = 0;
> > > >       u8 dsc_slice_count = 0;
> > > >       enum drm_mode_status status;
> > > >       bool dsc = false;
> > > >       int num_joined_pipes;
> > > >       int link_bpp_x16;
> > > > +    int num_pipes;
> > > >         status = intel_cpu_transcoder_mode_valid(display, mode);
> > > >       if (status != MODE_OK)
> > > > @@ -1488,67 +1505,98 @@ intel_dp_mode_valid(struct drm_connector
> > > > *_connector,
> > > >                          target_clock, mode->hdisplay,
> > > >                          link_bpp_x16, 0);
> > > >   -    num_joined_pipes = intel_dp_num_joined_pipes(intel_dp,
> > > > connector,
> > > > -                             mode->hdisplay, target_clock);
> > > > -    max_dotclk *= num_joined_pipes;
> > > > -
> > > > -    if (target_clock > max_dotclk)
> > > > -        return MODE_CLOCK_HIGH;
> > > > -
> > > > -    status = intel_pfit_mode_valid(display, mode,
> > > > output_format, num_joined_pipes);
> > > > -    if (status != MODE_OK)
> > > > -        return status;
> > > > -
> > > > -    if (intel_dp_has_dsc(connector)) {
> > > > -        int pipe_bpp;
> > > > -
> > > > -        /*
> > > > -         * TBD pass the connector BPC,
> > > > -         * for now U8_MAX so that max BPC on that platform
> > > > would be picked
> > > > -         */
> > > > -        pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> > > > -
> > > > -        /*
> > > > -         * Output bpp is stored in 6.4 format so right shift by
> > > > 4 to get the
> > > > -         * integer value since we support only integer values of bpp.
> > > > -         */
> > > > -        if (intel_dp_is_edp(intel_dp)) {
> > > > -            dsc_max_compressed_bpp =
> > > > - drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> > > > -
> > > > -            dsc_slice_count =
> > > > -                intel_dp_dsc_get_slice_count(connector,
> > > > -                                 target_clock,
> > > > -                                 mode->hdisplay,
> > > > -                                 num_joined_pipes);
> > > > -
> > > > -            dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > > -        } else if
> > > > (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > > > -            unsigned long bw_overhead_flags = 0;
> > > > -
> > > > -            if (!drm_dp_is_uhbr_rate(max_link_clock))
> > > > -                bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> > > > -
> > > > -            dsc = intel_dp_mode_valid_with_dsc(connector,
> > > > -                               max_link_clock, max_lanes,
> > > > -                               target_clock, mode->hdisplay,
> > > > -                               num_joined_pipes,
> > > > -                               output_format, pipe_bpp,
> > > > -                               bw_overhead_flags);
> > > > +    /*
> > > > +     * We cannot determine the required pipe‑join count before
> > > > knowing whether
> > > > +     * DSC is needed, nor can we determine DSC need without
> > > > knowing the pipe
> > > > +     * count.
> > > > +     * Because of this dependency cycle, the only correct
> > > > approach is to iterate
> > > > +     * over candidate pipe counts and evaluate each combination.
> > > > +     */
> > > > +    for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> > > > +        int max_dotclk = display->cdclk.max_dotclk_freq;
> > > > +
> > > > +        status = MODE_CLOCK_HIGH;
> > > > +
> > > > +        if (num_pipes == 0) {
> > > > +            if (!connector->force_joined_pipes)
> > > > +                continue;
> > > > +            num_joined_pipes = connector->force_joined_pipes;
> > > > +        } else {
> > > > +            num_joined_pipes = num_pipes;
> > > > +        }
> > > The current way is to try connector->force_joined_pipes and fail the
> > > commit if that doesn't work. Here you'd change that to fall back trying
> > > non-forced pipe-joined configs in that case. If that's needed (not sure
> > > if that's a good idea, since then the user wouldn't know which case
> > > succeeded or failed), it should be a separate change. Here it could be
> > > simply an if (forced_joined_pipes && num_pipes != forced_joined_pipes)
> > > continue and then use num_pipes instead of num_joined_pipes later in the
> > > loop.
> > 
> > Hmm Yeah the initial thought process was to try force joiner thing
> > first, if succeed well and good, if not we do our usual thing.
> > 
> > But I see your point. I think we can just fail the commit if forced
> > joiner doesn't work.
> > 
> > This will also help simplify the loop and will allow to have an iterator
> > macro as you have mentioned in the later patch.
> 
> For mode_valid phase can there be a corner case where force joiner is set to
> some high value with which all modes somehow fail?
> 
> Can hdisplay/htotal or clock  for a mode go below some acceptable value if
> joiner is used?

I.e. hdisplay/htotal/clock per-pipe becoming too low, right? I don't
recall that the driver would check for these anywhere. The mode timing
itself is checked and then (for instance) MODE_CLOCK_LOW is returned,
but that's not a per-pipe thing. One thing that can fail is the DSC
slice count, which can get too high for the sink.

In any case there's not much we can do about any such failure scenario,
just fail the commit?

> Regards,
> 
> Ankit
> 
> > 
> > 
> > > 
> > > > +
> > > > +        if (!intel_dp_can_join(display, num_joined_pipes))
> > > > +            continue;
> > > > +
> > > > +        if (mode->hdisplay > num_joined_pipes *
> > > > intel_dp_max_hdisplay_per_pipe(display))
> > > > +            continue;
> > > > +
> > > > +        status = intel_pfit_mode_valid(display, mode,
> > > > output_format, num_joined_pipes);
> > > > +        if (status != MODE_OK)
> > > > +            continue;
> > > > +
> > > > +        if (intel_dp_has_dsc(connector)) {
> > > > +            int pipe_bpp;
> > > > +
> > > > +            /*
> > > > +             * TBD pass the connector BPC,
> > > > +             * for now U8_MAX so that max BPC on that platform
> > > > would be picked
> > > > +             */
> > > > +            pipe_bpp = intel_dp_dsc_compute_max_bpp(connector,
> > > > U8_MAX);
> > > > +
> > > > +            /*
> > > > +             * Output bpp is stored in 6.4 format so right
> > > > shift by 4 to get the
> > > > +             * integer value since we support only integer
> > > > values of bpp.
> > > > +             */
> > > > +            if (intel_dp_is_edp(intel_dp)) {
> > > > +                dsc_max_compressed_bpp =
> > > > + drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> > > > +
> > > > +                dsc_slice_count =
> > > > +                    intel_dp_dsc_get_slice_count(connector,
> > > > +                                     target_clock,
> > > > +                                     mode->hdisplay,
> > > > +                                     num_joined_pipes);
> > > > +
> > > > +                dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > > +            } else if
> > > > (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > > > +                unsigned long bw_overhead_flags = 0;
> > > > +
> > > > +                if (!drm_dp_is_uhbr_rate(max_link_clock))
> > > > +                    bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> > > > +
> > > > +                dsc = intel_dp_mode_valid_with_dsc(connector,
> > > > +                                   max_link_clock, max_lanes,
> > > > +                                   target_clock, mode->hdisplay,
> > > > +                                   num_joined_pipes,
> > > > +                                   output_format, pipe_bpp,
> > > > +                                   bw_overhead_flags);
> > > > +            }
> > > > +        }
> > > > +
> > > > +        if (intel_dp_joiner_needs_dsc(display,
> > > > num_joined_pipes) && !dsc)
> > > > +            continue;
> > > > +
> > > > +        if (mode_rate > max_rate && !dsc)
> > > > +            continue;
> > > > +
> > > > +        status = intel_mode_valid_max_plane_size(display, mode,
> > > > num_joined_pipes);
> > > > +        if (status != MODE_OK)
> > > > +            continue;
> > > > +
> > > > +        max_dotclk *= num_joined_pipes;
> > > > +
> > > > +        if (target_clock <= max_dotclk) {
> > > > +            status = MODE_OK;
> > > status stays MODE_OK if target_clock > max_dotclk.
> > 
> > Oh yes.. will fix this.
> > 
> > 
> > > 
> > > > +            break;
> > > >           }
> > > >       }
> > > >   -    if (intel_dp_joiner_needs_dsc(display, num_joined_pipes)
> > > > && !dsc)
> > > > -        return MODE_CLOCK_HIGH;
> > > > -
> > > > -    status = intel_mode_valid_max_plane_size(display, mode,
> > > > num_joined_pipes);
> > > >       if (status != MODE_OK)
> > > >           return status;
> > > >   -    if (mode_rate > max_rate && !dsc)
> > > > -        return MODE_CLOCK_HIGH;
> > > > -
> > > >       return intel_dp_mode_valid_downstream(connector, mode,
> > > > target_clock);
> > > > +
> > > Extra w/s.
> > 
> > Will drop this extra line.
> > 
> > 
> > Thanks & Regards,
> > 
> > Ankit
> > 
> > > >   }
> > > >     bool intel_dp_source_supports_tps3(struct intel_display *display)
> > > > -- 
> > > > 2.45.2
> > > > 
