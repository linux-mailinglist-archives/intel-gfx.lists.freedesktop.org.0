Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC2CA228DA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 07:14:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6857E10E8F0;
	Thu, 30 Jan 2025 06:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFm09f8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21FC10E8F0;
 Thu, 30 Jan 2025 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738217674; x=1769753674;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1OePclsvdATkacxEY7OXGtTQ2ZsLpkRkwRfJs+oog1A=;
 b=dFm09f8wBwys75uNB9QDcManUILLzsDl6qUUINynvJVTjQ087YnLs/LL
 fmixXHPkePCYKSTzKx9xfhhBMnItaAPGSeyETPJpQsPHLFKd/FDwml42k
 XjMRE/qhWf4jlzuzXDZTvJxV52dA9SouZMKetxt0BpBTejOmbJfhDufpP
 xDsC6SX0/GH8J6cyWqqN2AIXoSQMM/+aOzwTAG3X9rnlHvntKrIyKTmKp
 R/AJ8kixSw37HF+5gv1GloVo64JxYk/F4uXhtW0G70iB3drkP6H4tvYVY
 eRNa7BRSNZ9XlSR/wpeD5evlw2q4nrEkX8fur353OJqCCujjlNhFIVyWk A==;
X-CSE-ConnectionGUID: oQ/TUONcS9ii6FOohRjDMQ==
X-CSE-MsgGUID: 6u6sq8gxSqO4H/iSq1WcuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="37955098"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="37955098"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 22:14:34 -0800
X-CSE-ConnectionGUID: Ft/u6GaiQ/a1nDmvDM6Uaw==
X-CSE-MsgGUID: 4NgZKFUiRCGLvfynFiLbVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114388747"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 22:14:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 22:14:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 22:14:33 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 22:14:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ki9e6r/LW8KB3XNWhIyNkeARUEw/QKiEiC9/RbHEc2m5o0kvvownwJDkdZA/0kaG7FZOFiAA0TVpYS+wfWK1FuWn2qcK6PVv1Cen4XtnYFc1W+RnF3TVmExAB1Mx1uoUhO1NAF3uRXk63rAUTcZzcHn/pRou7R6S0SUSAMSQ8EKdJbjAbm5jMzs0Y8tSTWFzku1mJXGhRoe0UOGFqugV0pC7Cdk28WVRjwb5HrbAYjkWY36WoSW/MgmOoMvBsOXXoas+72G36tTDs/mG9jwNo1Has4YcrLxm846BDaGvLR+ZW0RH5FKkVGnv4AIto2VLN1z5QEMaa0JLloA4+EfiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0iyVyHOKmgD0JMGFhLOhMN5GNBPJ1y7LB28Hq6/XLzo=;
 b=a2LIhhImYa8nSPhQvhwUPTu6EvcJYsnynm95iFo4JeW80DmQLqVr2GYe/abvDQ3Qc3rBaprzS80D4iFhVDIzujM7+PXbFcvZCFVd0Gkq1K/+M96OtVSSa9sZawZwTPS8KVwBr1gsh2Dc0fZaMkMChD7uyHYjzfUhjhxkYxvOxKqPTp3HvMkatDTvXqKq9GD0Sit+joaHszQthN4q7fNua2ZZa6AnYbuOtosQCimNLkFGqzMRmJVxvtMS36q3BJsMzUGWmpH/Fg0M/y/OBPw66itcDa1DidA92V2qlFcvC+pJEPD4e/mfq92nh0QzB1CulM9ma6oVfkQMrmpKJs6/cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 06:14:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 06:14:26 +0000
Message-ID: <95d1542f-0cd7-431c-bf34-b68871514160@intel.com>
Date: Thu, 30 Jan 2025 11:44:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] drm/i915/dp: Compute as_sdp based on if vrr
 possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250130051609.1796524-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130051609.1796524-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: 77c961d4-058d-4853-152e-08dd40f558da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjZSWEp1Zkw1MzNjcFJKV2lLODZTaTZZNllNRXd3U2RlYnZ4RVQ0a3RUUFVE?=
 =?utf-8?B?VFRKUm0rVU14L01Ya0tRL0RDQ2tGQm54ZCtZR0I2NWhpa2tCZ2tRZnFhYmEv?=
 =?utf-8?B?SnROOGpzOVBZMENmbGJVcCtzc3lFeDdqL015VUcraG94akhRNy81WjRBK0FZ?=
 =?utf-8?B?cnpIVDM1MXpBWURtWHVDeFNidDhPSGxZR0g2bnV2NktYSWZqMUJhYkt6a0xR?=
 =?utf-8?B?dnNsazdvRiswaTJIRTZYS0I2TllTanE0RkpjMnlUSUFRUFJNN1g4T3lURTNB?=
 =?utf-8?B?UE5MOG1kVm5Ga3FMTDdRT1A0RGJSaHRvZGdQbldCYjV0a2ZmRWdXWWQrTXdM?=
 =?utf-8?B?ZlR2NU9NeXFxKzVyVDZsQXRSSTlnclNBQjgzb0VtNDNGamVVWmNEa2JmT3I1?=
 =?utf-8?B?RVR1ck1uLzhZUzFQMk5NQnFOZmtZMXB6SkdidGRkNlBrTWkvODJSRnFvLy9r?=
 =?utf-8?B?TW5MVEI4bG9DYU5zUzFjZUZkNDhweGhnenA1TlRFb1gvOE1zRTA0UXJrZnJI?=
 =?utf-8?B?RDNiYlJ2azlnWFd5VFFVQnozRzNTam81MUtOY2JtVlNPd0V1UnhIdHVNQ1A4?=
 =?utf-8?B?Yk04SXMzeEsxN0JoL1FnQVpXclM2ZFZTejh3bUJoRTN3V0doREpGWm9oQTlv?=
 =?utf-8?B?U1IrNG5rOFNiZ2JXQWVEVkhwSmZRbldSOGl4eENTY01kb3krVmtrRFNLcVNJ?=
 =?utf-8?B?M0tvRUkrQ1dJTmljZGdQZXFDNnRRWVppV1VwaWFhSS83aHNYbUx2ZXl5MVdZ?=
 =?utf-8?B?QkgyNTgvN2FTZC9DSStRUnYxbHRSZ3BVTmx3cWZ1aC9henp2VWdRUjRPNmly?=
 =?utf-8?B?RytTU0ZYak91eml1OE1UQVVQaUM0ekdRaTZZUnJWMlBNUGVXdzl3clVrbVUz?=
 =?utf-8?B?V1Q5ait2VXR6UGkyOC9XQ0l5bW1yczJMWVp6aHlCd1Vud2FUQ05OUjFtbTV5?=
 =?utf-8?B?bFpNVmhxUVFwdkpCY09EMHRzb25RZWJ0Tk9mSGI5bGJIcDhqQ1NGWW5udFpT?=
 =?utf-8?B?L3dYdXNEKzJpMTBCamZ5S2JpQnJ5SVlLMEo4M2ZJaVV2aFE3cFZhZ1l6RVBW?=
 =?utf-8?B?N1R5S0F0eWQ2eis3Y2NLY3VCYy9GeTFYSTBVemNZOUI2TnNtMm56MGl6TkZi?=
 =?utf-8?B?cFBCck1DN2JLTzVwSy9XN0pNT043dmxPYzhPb2hFeTF5djErb1FNbVFoMWFp?=
 =?utf-8?B?b1hIZmVKZ09tdGMwc2lub1R5YTVjWnB0REc3RGQxbEt6WHJUeVZtZS93QkNJ?=
 =?utf-8?B?czRQZExpMkNjR0RlUHg1RU1vaTcweHNGMzJibnpldExUdVQ0T1ZYMjlYMHRL?=
 =?utf-8?B?ZFJleFZ4RWJSblVUbFhpQVMrV1p4T3VIckRQcDRXeEN0OWdodkoyT1poNTJ1?=
 =?utf-8?B?dW55SGJiKzc5UUFMR0NXWXRnNlRxL0JkaGdSNytEOVJ6RTlsajlJNnM1YWlV?=
 =?utf-8?B?NDRWZmZqNzduajREZmVJcFgxb3JueGxKdjVNNzFSRnpGSHk2UnlnRXlFb25G?=
 =?utf-8?B?VVFnZzRvOGs4S0hGdEhsT2hJUDVxZm1iWUFjcXhCakJPMGtpOXBzRWtMZ3pT?=
 =?utf-8?B?K3NhemhQLzVOUTBubHpWV093U2tza0JZeGh6R2NKZStwZVhvRmRWYS9PdHBR?=
 =?utf-8?B?L05tUE4rS0NrcWJ6WVF4NVdZNXd6dENqSnlybzM1UnNoYzdROHQ5ck9PMTZU?=
 =?utf-8?B?WVlxNy8wRlNac3FrNDJvYTdhM1NCN3JoRE13T3drYjFMMnlnWlhpenhNVDhm?=
 =?utf-8?B?dXAvdGdXUzVIMU41cFppdDNUQjRsVGlEVXErd1JqcTdvTnBDU3NrUWU0dCtB?=
 =?utf-8?B?L1VtdGp0Y3RqcUpuM2FrbHp6akY1b2tuVndIRWM3SitwNkJ0cW5BQ0dldmJC?=
 =?utf-8?Q?hGneJaPwUH+Ng?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDZiMDdRcEFoTHR4UVhscFRBcHhGZUJuTlVKaVNFM2JPL1J0bVZQNGt2OFhH?=
 =?utf-8?B?cUp5YXZ6RFZHQXJ1N3RXZUpkWklKUFFjaWd4L0xYc0U0M2lIUVNBWU9YbDly?=
 =?utf-8?B?L0hCVVF1a21ESFd1aHAvNUVGUG8yT05xU3prSld5c2JmWWo4ZWlDWkdFVTRH?=
 =?utf-8?B?MDZGdzNtRVFwYjJKeXhnVU5pU2drdHRzdjdZNWJPOHBUa2NBWmlrSWFCOUJF?=
 =?utf-8?B?aEpoWFY0eElSNjErZUhiVm9URDdVWkJqdms0ei94N3JtcnlNWGN4WWt1b0tl?=
 =?utf-8?B?VThWZHNpVDBxVjJJYVhXUlBHcXZsYmZWV01EWHQ1VWN4R2VVZWxiZ0IvTmxu?=
 =?utf-8?B?ak9acDljK1BCc1pGY2lZbnNQSGoxeVhqL0FlclNKM3JLQUlxWEhjMkxZdmtG?=
 =?utf-8?B?V2ZWcWpraU1TVTlRakRMWDNaM04zWS90Mm9Wb3VERlZTYTNGVHBhMTlUL0pt?=
 =?utf-8?B?WXB5aHdDWExIUUZKUFlheVB6RDR3NzRvRllVRkR1R2g3dGY1Y3gvZWFaRDVj?=
 =?utf-8?B?ODg1NVFtS2RFRTNadkNuVm9hdE5PS05EaHY0R1I4bXBPRUR0V3hnSUNNZkto?=
 =?utf-8?B?cHl4QzFPT3ZuaTFqQnFoUFU3Sml1a1hVK0VKTG5zNDdHdkR6QkQ0NWhycXlU?=
 =?utf-8?B?RUFMdFYyb3dITFBYdXNPbFJiSEwray9wQTdITlAyY0Z4bVJkeWNWcFZVU0pU?=
 =?utf-8?B?bEhwc1M1NGN6azFHYU5yZ2NlWGNYWmd3dXBmRU9mNWwvcUVDdkszRkg0QTFy?=
 =?utf-8?B?UmUrRVBMZkErYXZnMVpvWHlNNlo3bUhVeW94KzVrMXVFQnYyQXZJQ25Cbnk2?=
 =?utf-8?B?NGVTcjNQb0dTYWxBbUtBZEN1aGVpcTZ0NWZhT051Y1FvS3NjenRxRG12OS9L?=
 =?utf-8?B?RVZKTnF6aG5DSE5idXpCSEJGTFEwTlk3VkJZL1g1eGIydS9mM3BTVFArdGN2?=
 =?utf-8?B?azRPd2ZHaG5vM0NtWHZIMHRDTUJwWVRseG5PQmtUcHdDOVZCOG5BZnlPa2ZM?=
 =?utf-8?B?TnpWMlUvaUE2MnJZbUFDQUZicEVjUnNPLyt4VUJsdVpaZ3g4NGxwWlJBVjBz?=
 =?utf-8?B?czM5V3ZjdG8wRzVLWWdLcmsydFZlaFVGWWpzQ1ltSCs0RmoxeUgvcFlxek1t?=
 =?utf-8?B?QndVWk43VWpUMDdLdTFxd2t6MXEwamo2blRYOGx0ZSs1Z0p1ejFaWFk0dU1M?=
 =?utf-8?B?eHRreTgvR0o4VkExWGtRRjRWWHQ1clE0aWlZSkJEQTl0VnF4cVI5N0RZV29v?=
 =?utf-8?B?N2VHdnAvTHhIR0s1NndlQlNYcEt1M3NoWWkwMXNsS3BFSkVlWkZIMnRnL0tX?=
 =?utf-8?B?Z283ZklGQXdBZ3F2NVNLbEVGcTgrY1NiVFU5NWF2eVBrVmc2NXlOTHZLQ3Y1?=
 =?utf-8?B?QnF2VFFBcUZKZ1pMZE91VUJzVlkvOXk4eE1uMk56bGE0MWN3VmVZNzVMeW03?=
 =?utf-8?B?emdXYUFKQjc5QUorWnlwaURjTTkyWHlQUlhsRTFEdzAza24rQkpySG5qaTJr?=
 =?utf-8?B?RG1JUmNpcmJ6dCtkZWd1NVN2bVphaDR3blFxTjZTVEJ1VTVMZEtUU3Jjckww?=
 =?utf-8?B?V3czL21TaFlMOUZJZ2NtZXREendMdTZ1ZUltQnJDTnl1dG1wazlYUHF0Y2h5?=
 =?utf-8?B?MVFGZ1czNm9aZnNIeTFFV2lzdHN4NXVPUzFKL0RLc0E4QjJKbEZsWFhzcXU5?=
 =?utf-8?B?NmJqQm1FVG1Rc0xJWmMyTWh6bTFLQ1A1MXZhSmxvQ3RYQjV1bnhKTjRQUHRG?=
 =?utf-8?B?ZWFOcWRYdVJ2YWhwaHBTYnVlaVRjRVlLQk93dnB0Vm8rTUNqbS9FTDZ2VjIz?=
 =?utf-8?B?MXd1VEpwakdIOExzK0pSUFkvRFZ3R2pPQlJMTTh1TFlxM1I5Y0tLbmpWaEU3?=
 =?utf-8?B?QzNqZ2d2MzNPdmQzeGh3bmtabE5qWGlnRmJTeCtBVlloYUQ1V0k2MkI3R1VI?=
 =?utf-8?B?L1ZaVUZTWjNCakhlcExycVg4dHlIL0N2YnkxbTRzY0pxSmlBb3V0QlN5cFBC?=
 =?utf-8?B?YlZLZzV2OG1pSzM3VmRlb1hmMHVNM3NENjBIMkVOMGFmU2FEWmRxblpnNXJH?=
 =?utf-8?B?ZVV5ZWhndHVGRTJJOXVjdUJqN1ZzUVMyYTVoc0t3VzBGQ0szbnE5czlyRVBz?=
 =?utf-8?B?NU1JSEl5THJNbmFKRWZmQUNhcVc2SnhYREtnUVI3NFFzQS91S0p2WXd1akpV?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77c961d4-058d-4853-152e-08dd40f558da
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 06:14:26.1797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qlakzICz9cAZDWc2uaQb2JdKRTf5LzZDxoj7tn1FgwRyufpo3t95XXFIIRYjfdxLjGhFy05X+HSLygg43Bkaeiw9MYpo1+qYkGAO3FRcvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
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


On 1/30/2025 10:46 AM, Mitul Golani wrote:
> Adaptive sync sdp param computation, we can configure during
> full modeset as well when sink is having vrr support, where
> it doesn't need dependency on vrr.enable status and can also
> match vrr enable/disable fastset requirement.
>
> --v2:
>   - Separate the change from as_sdp.vtotal. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f876dbeb6121..80214a559013 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2826,7 +2826,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> +	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
>   		return;
>   
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
