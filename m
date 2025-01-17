Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF49A14F94
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 13:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC9410EAD6;
	Fri, 17 Jan 2025 12:46:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIsVOzzO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE3710E23A;
 Fri, 17 Jan 2025 12:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737117986; x=1768653986;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BbHCgOlOcriuiMRtnxxS1S6KLSnQctzvA46lr9sn3O4=;
 b=XIsVOzzObavYgrW2b34VO4zgn2gwT6MxMvHvOgGi5WlkoMGevJl5fYVg
 imOOpdUo0FnRNkJ7TmR2LCYzTAZCHDZLb8v+EFcs3S0VAU0FQ/9y1vYUo
 sSFPQ8vTJSsSb7dshoJlUKhC+OgCg/HmLwW3egClkAafyg02xy/8BzPjp
 XLSwJYwWjusJGOn8zIwNPTivkM4ZWzNND9KIWHPHaogGR26kFFzB/AI4k
 MMQxFb7k3wkQLuOhkz/lzBcHeTCYzTCXh2K3JFTLD0Hr6Wynl3rRrb/+l
 VXu3KLUEIvUbKJ/CXz6DKwykeXQn484pijhs56JmAUe/xNwoTQ8+1cE+L Q==;
X-CSE-ConnectionGUID: 7+Aez9i7RV+h8JNJmXkDDw==
X-CSE-MsgGUID: XPzWnmnbS/2XHcS7OuS+FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48133672"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="48133672"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:46:26 -0800
X-CSE-ConnectionGUID: /MhfuwJ5QMauFd7MFJyJUQ==
X-CSE-MsgGUID: h+feTitpRWiY4kgA/TJj3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129058749"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 04:46:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 04:46:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 04:46:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 04:46:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXsIq9bhnQRquz4nKpE/eru3yUE8CtOLPf7PISvz+pqh9li0A9AF+JCXS1LDtJv2vyey7NWkHis6oCuh4mrevsv7JPQ9ZjmwKmcrqaTqxsl+bfIgY2TbAeCT1G42s5xyHGQU91lH9NnimECe6nqG9l9la9IYjqMoKbYoNfR1DawFagFa1amu35bNI0dyGVzNrUMfFngMtRfkxwSCl48Kiq/Hs6yMIdn2Bka+riclMEIRdP7NKhOr+mUQ0p4MqAumPoK1OiFofRGRuF/FbOEOX4OuvYSukJUAPrHHwnnwNHFdZ62r2Qj260WpsKfhS/7h49b6aTW2s51U4bHQxPUhEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eA3Qmb5w8se1thl8n6exU7tj7enP1sl8IFA8lU5qGTg=;
 b=MDIP9th057U6EJTnxvIaASukfTCY8CEwxI3FIhb7CzuV5lDXeHZqlQPupfea41ma1XtoGYNeZRIv8qB7CfrQfjqRbaPQV4FTU7H8gCGf7MaDlXZhQb108OR+VoaR1pjeRRRzPjXUoZ0CETf3WkdgY2+G79K9d/s6WTSY2JfbFlhhYuYm03iqKT01KfvPGmS2fvU12+yi38N7p3D5+CspRNDzzUdTrFielLCcrJ36lEYrfjZy3EaEoHJZdiRF7TBKAWXhHHGjAvok5QnldUQXeSqkgbILIjmTrBBUblh/jB3Pc/gNp4ro5pB4Fni+tjJ6QZFRnChJ1W/BlvBKVe6FkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6980.namprd11.prod.outlook.com (2603:10b6:510:208::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 12:46:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 12:46:21 +0000
Message-ID: <1618b027-13a4-47a9-a2ed-ab29f885d978@intel.com>
Date: Fri, 17 Jan 2025 18:16:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <v7-000intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250117074124.3965392-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250117074124.3965392-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PEPF000001A9.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::f) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6980:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a8f28d-55f7-4d44-347d-08dd36f4f1e1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2R0WVF5d0lwZFJjak1BbkZGQlZhOS9kWGhqMlVBQlFKNlRtR0w0NTFlUXE3?=
 =?utf-8?B?YzFxRmQ3dGF2RXdweDR4UFNPejBLSTh2OVFscGo5c1dpNTArQjkrMEhyTVdH?=
 =?utf-8?B?ZVZHRDAvb3lvNlRZQnRoZ2N4dkFEME5RRnNJdmxnMjZBY3ZDQ2Z4TFMwaDd3?=
 =?utf-8?B?N0RTUEpMYVlNT240MTB6bU1YTmpmaVpQenIrdnJOem9saktoa25GVGFZZVhq?=
 =?utf-8?B?Z2NhR2lHOFNiL2p1bUl5WGNaRys4TmZxMUIzTVcyREp3cnlUeGRVTzk3bnQz?=
 =?utf-8?B?Um9zVjVmdEFiTzVjVHZnR1hDSTZBSEYweGg2bytQbXdSWHE1SUpZZmlGdmdD?=
 =?utf-8?B?eU9uc3VCbWlxbFJLb2dtN3ZSRkNZVC9ZbTcyeUVEdlVqMVhkd0RjdldQL2pV?=
 =?utf-8?B?emkzc3FxWXlOd1RXR3hzRlhqNitzUElaeTZzS1JQM1V1cVhValdyYUE3WjA5?=
 =?utf-8?B?eERZb3AxME9WdklvRDF2M0JhSThpbjdvUXczbWJhTTdPR3lxeGhnUlpUOHo4?=
 =?utf-8?B?QkFIQ1E1dDhJWjE5R0Vpck8yREZZTFRCZWw0cXJTSkJEOWh6Q2ZDclJCallS?=
 =?utf-8?B?a0xQOG9Sb3lRTk5mSFNYSTJ3RElEYWF2UWJFc2VsRC9zN1FRbE1JMCs0dGxR?=
 =?utf-8?B?OHRGNEcySHFSejlEamo3RHg4bXl1cHZzNGJDTUV6ald3UzlUNmh5dW41dzdv?=
 =?utf-8?B?Sm9DZ0JsT1E1cWRYNEdIYUlHTWFpaUNCUWxEQm93c2svTm9sZU9RdlZOYXJJ?=
 =?utf-8?B?U3pHZEJ0U2VlUDNNUW85UTRBY0FteDhrUnc5Z2hSTlF2YlJUNG1NSEtrVzVB?=
 =?utf-8?B?cHVNbHVsSDJTUEJNaHZNcDFUbjdyTXZlSlJzcjdqNVlJalVRTjN1V3ZWQVpK?=
 =?utf-8?B?Vi9jYWxMK09ZbkZYNzk3MWlrN3Azd0NSbkFQVC8ydGlJTi8xaGdiNDZuaDhh?=
 =?utf-8?B?NDJ6VkxUSmlJSDRPdXIyaEwzQzdlVG00STlCMStwa044bzNjaE9mdFVnSGRt?=
 =?utf-8?B?bTF1eTVUaXVlVDhoeXJWMkhjL21NMk01WUE1cHFQQ0c4SXJ3VlRpKzF6L0U2?=
 =?utf-8?B?K25qZG53QUtCNUhFZDJsa2wzMnJvaGIyaDU5REc1OUt5WDZEbUgxd0czYi9h?=
 =?utf-8?B?aEZRUHU5VjZ5a0FRaDFET0tRV090aHpybUhSdEYySytSelV1MFo3blR2eWdJ?=
 =?utf-8?B?SmN0NXI2emI3aHhWL3Bpb0ZSVWZwei9DOFN0aGtva04zSTRQbnRlczNENU1H?=
 =?utf-8?B?aGhSTnFWZFpENlA3d09qRThNYVV4YjNsSWxwOTlwUGliS1VMaXRKUXZCUTI4?=
 =?utf-8?B?OHlkcklyT3I3YnhVdFVraW1yV3NlVFphQ29sQ3lZQXYzTXRsN3V2RHZYVjN4?=
 =?utf-8?B?Y2p1NzRya0FLTXlxNEtnakROWU9tenJ2MzdubHhrYzFjdDQ0Z25aN3ZGRXV0?=
 =?utf-8?B?WnNiMmZRQWhDN1daVzNWTURVN04rSEJWL1gwUk41VGxOWkhuVkpRUFp3MGlv?=
 =?utf-8?B?V0tZL0EwMzZrMmtMb0MvazJRYkhFZUJ6NXdvK0Z5VGtJdlRkR3NNMTVRZmlI?=
 =?utf-8?B?cFlkV3I2OUpPcitQd0g1VnFlMFB0anc0bVc3TThYMW1TSUZGK0NiQWE1VTBi?=
 =?utf-8?B?ZDNNL3dOOG1pNkk3eDhzd1c1b2xQRkVhTFREaCtORGpFTWdjSlVIN25Ic1VF?=
 =?utf-8?B?dmpvV3BScEhoVkZkMHZTTjkwVkNNR3o4cTFCYkxVUkFGZnpvTk00Zlc3VmlQ?=
 =?utf-8?B?cVNyMUc1azNIV1RvK1pKakN1dDUwSjVXcE5LbUJER1MvRzNHM2x6Tng4SkMv?=
 =?utf-8?B?RU9pTkhHYUpjNmNLUDdXcXFZM1VFNS82LzdJT3dtSktZS0ZjamJSN0xtK2VM?=
 =?utf-8?Q?O6NDPJ2AYn0la?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emhDcFNGS1hFWFNhR3JtdEphT25nMGl4VG41aUhsaHpHVTR3akdXYVFsNzla?=
 =?utf-8?B?M0NFaWg4WWhOWTFJQU1ldWpLZEY2bDVsUnAxZm51Q05kaVdqUjZtN1lnTUUz?=
 =?utf-8?B?bkI3ZlU3MDIxbDA5dU1XRzY1cXVWVnBrKy9YVlhpQnJsTDRibWdLQWE0QmQw?=
 =?utf-8?B?a3AzZ0hoQkhXZjZUalpia2xOOW1MRENmcUFma3ZpbWMrYWVxYW9NK2NEcjR4?=
 =?utf-8?B?cDd1eDBJb1Q3NEJYSmtYdkJ3ZzQrZ1RRQ2k4REtMTXN4RUxoRFhBdU0rY0di?=
 =?utf-8?B?UW5HME5ZTVdVb3puK3dQWkFCTUIvOVorRWN0QTBtZVNuN2VNT0VpWFRmNXhD?=
 =?utf-8?B?ZHZ2US9sWWlTMmk5bjYxZm0wQmpKT0xTYzM3OWVpNTNIWnVJOWEwVngwUGZo?=
 =?utf-8?B?aDZVY3JCdDdYb29JS25kSncwM2xEZ3p3YU1Ud2FZbnRSMXg3TnhzOXRSc0xo?=
 =?utf-8?B?bDlPK01xN1hNQXB6UHRVTklnTkRoN1JNMlNkYWlkTlRSb0ZWQVdZMXNrODFt?=
 =?utf-8?B?aVd5WWZyME5WVFhaZG04ZktqOFFNSElGbEE1a0pDRjMzdE1CZXBLemRjaVBZ?=
 =?utf-8?B?MG1oRWZzV2lkekZHOFoxeXExN0dsdWJXZ0FVUzA4K2JPa0s3cXlKN0hVZUow?=
 =?utf-8?B?dGxXbFRka3V5V2pZOERoNnAzYUJOL1FjakR4UE8rS1YyUWVEQ0dKVmZ4M216?=
 =?utf-8?B?Vk43RVpKOGYyNHZDQWYrWEZxcndROVIrQlZLTDYwRk1tOUt4VCsyUSsxYUVk?=
 =?utf-8?B?VWlOdjV5bEVVQUxnWU5FVmVUY1M0U3gySmYvRHpFeVl1cmJOUEJRMm11eUhU?=
 =?utf-8?B?eDBTQnMzRkt0VVpSS21mV2NmNDY4aTF1WFdZQkNyc0pRMTVHSExoYXpmblMr?=
 =?utf-8?B?V1pVczRBMTdDQlE2Q3dKZUVVUWhnZmNjTGlkWlZ1VTE2SjBYdG1SdDVTRWth?=
 =?utf-8?B?djhYZWFRNTJpTHdrMG5PeE50bmpzRmM5WlJMUHpwYjFPUlNGbytBSEtCclIz?=
 =?utf-8?B?STVGcnllMVZqUnN3a1dyMU0wNW1hbSttenloV2hNbnA3dWNOUGY2Ylk3dXUw?=
 =?utf-8?B?UkhTYTVncVZWUnRxcUZxa2VyelZDZWVrSXNaRVlqVTNLZkNSR2haTHkwT1Zs?=
 =?utf-8?B?ZDhKZ25GRklGdjBYY2xseVlaL3NTY3kxOXBzaDFCK3k0UCtxNTRHUCtjQ2ZJ?=
 =?utf-8?B?czFpeldFRFJvMkN2UE50OFBoZDVOQnUwRkhrUm1DTlhvSlFJRWp1U3BpUHpP?=
 =?utf-8?B?WkVlZ3l5ZmZLZ0dJN2hnVDZWZUFEUEh4WUNrQ3RkdTJ1NGM2RlkwZFlVZnc5?=
 =?utf-8?B?Z3Q4Ky9HRXVLcXljcjZ1SnVwcjFKaVZMU25SQWxyTUNNQTJlS24zM2R3d0RU?=
 =?utf-8?B?SENYd1VHdkdPSjVnQkxPWjVUbnl3Z2p0cXI2UjVlVFhsZ0czTTRUTEV2MjBY?=
 =?utf-8?B?eW1pWmxKV0pQMmRKQWdrMWhWcFNxSWg3aHhjU05jR3ZCVDdTQlQ0R2N5UFow?=
 =?utf-8?B?YzhLc0xvRk52M2ZMSjgyaFozVUoyZG9mOUJrWVYzRFM3cTNLVnV2WS9BandI?=
 =?utf-8?B?SFFRK0NGNFVSNEJIUDh0Z09LZWRpYVhFR1JObG1mSVFSY2dPd2x5d1QyNzVq?=
 =?utf-8?B?a2RqUkhCK2p1bnFsVWFHblZYbk9neGtuZDdTdDdIZStEMFZOeSsrUXpRbjlJ?=
 =?utf-8?B?ZEZGd3NHTlBqbWUvOWloU0hXVUIwQ002SWpRU3dmVmNvRWRIQWVjRVpuNURY?=
 =?utf-8?B?Rm9zRHpaU1I4b3ZSQURLMXRRK3R5MXhoUkpCSkd4VnFFeUNyK2Y4UHdmMXpG?=
 =?utf-8?B?bE1JZyt5cmRiejh6R0orajZmUjM4MG5mSTdCSm9aSzUyODRUdXh2dWtPUHNL?=
 =?utf-8?B?VVhWRENvMlhBMVM2dVFBbGx6MTdoNnlpQktELzRsMWkvV2hxMXNkQWpTZEFP?=
 =?utf-8?B?RzhJaytqRFZNSHpYQVhhOTBJL1ZJU2R4dGt3dXJtMTBBNDRzT3hKR3JiMXBm?=
 =?utf-8?B?Rmk0dE5ESnhUSGFZVW1Ra2RjRzZrMUlVdFYzVG9adGY2QytqTnBYUndXd2VH?=
 =?utf-8?B?cVBsZ2Z3eTR4WDNOUTNCL1p6NVovMzBpMytEWldBMDMwYm1mVWNHT3pNbEgy?=
 =?utf-8?B?NXN5aWZjb1o3eVdLZ2x6MTMvWW1ST2xiSjNKSUoyU3ZXOTVPdFJGaWV3Y0RN?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a8f28d-55f7-4d44-347d-08dd36f4f1e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 12:46:21.7794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HmyFeL4A7ZCFNn6uuiKh9AGrtTgFcxXld7b7/u05ZV+x+efXuLbueu+0ScA96VVD0rqC4aR0fasimJ5YosM8itqiZ3RsvE6EEqIuICQS55k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6980
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


On 1/17/2025 1:11 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> dsc prefill latency.
>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace with appropriate function name.
>
> --v3:
> - Remove FIXME tag.[Ankit]
> - Replace Ycbcr444 to Ycbcr420.[Anit]
Typo: Ankit
> - Correct precision. [Ankit]
> - Use some local valiables like linetime_factor and latency to
> adjust precision.
> - Declare latency to 0 initially to avoid returning any garbage values.
> - Account for second scaler downscaling factor as well. [Ankit]
>
> --v4:
> - Improvise hscale and vscale calculation. [Ankit]
> - Use appropriate name for number of scaler users. [Ankit]
> - Update commit message and rebase.
> - Add linetime and cdclk prefill adjustment calculation. [Ankit]
>
> --v5:
> - Update bspec link in trailer. [Ankit]
> - Correct hscale, vscale datatype. [Ankit]
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> --v6:
> - Use cdclk_state->logical.cdclk instead of
> intel_crtc_compute_min_cdclk. [Ankit]
>
> Bspec: 70151
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 34 +++++++++++++++++++-
>   1 file changed, 33 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c8e540dd66cc..aacda7f7174c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2307,6 +2307,38 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>   				   2 * cdclk_state->logical.cdclk));
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +						&crtc_state->scaler_state;
> +	int latency = 0;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int chroma_downscaling_factor =
> +		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +	u64 hscale_k[2] = {0, 0};
> +	u64 vscale_k[2] = {0, 0};

We can do away with these just compute these in the loop below and use.


> +
> +	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
> +		return latency;
> +
> +	for (int i = 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	latency  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);
> +
> +	if (num_scaler_users > 1)
> +		latency *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1], 1000000);
> +
> +	latency *= DIV_ROUND_UP(15 * crtc_state->linetime, 10) * chroma_downscaling_factor;
Need to compute linetime, like the previous patch.
> +
> +	return latency * cdclk_prefill_adjustment(crtc_state);

This function can return error.

Regards,

Ankit

> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2346,10 +2378,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
