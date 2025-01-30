Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC046A22C92
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B61B10E939;
	Thu, 30 Jan 2025 11:35:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bu7OUMYR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A8C10E939
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2025 11:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738236922; x=1769772922;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Gd3DkQbJiru60tKpRh3DYe1TcONS3f6MxknMAOhx1aU=;
 b=bu7OUMYRHyDVWIP4HWzlxF6+smQsA3EclSgdJgsxCzrXLvj5UiJw/ZXw
 wJbcZuSX1FjbcaTGbgncSt/l3l4YFv1FVik6V1Ko0lwtkIa90f++6d6do
 O7ic0y3MCDRVc0f8RBC1Dr9RYB+UCrKQTKPJ9MGBNmt0QblsgIe0ZyBQd
 HNl3RFHH6+1GXy6p0alI612VUz92krYdrH73Atz4AGTvSmoHcM5xcKhjV
 YEHTb0+PDbWpLnNSpMAUZ3+fFrKzXoQyaCMSw8awgIH9g86+/XXr6+kGp
 8NJ1gxgMUvswrA8bfbn3YfqLbcVwUjcPogH+W0orog0Z6TohcKZZotL8t Q==;
X-CSE-ConnectionGUID: 3Gz1IhumR4WOxG8H+6HP8Q==
X-CSE-MsgGUID: eu+9MgbvQ8OrCG0Y7R0bww==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="41609482"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="41609482"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:35:21 -0800
X-CSE-ConnectionGUID: 3sBffTKJRiScVlWCli6SvQ==
X-CSE-MsgGUID: o2T1k3iiTG6jqqde/spF4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132574553"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 03:35:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 03:35:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 03:35:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 03:35:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e00cJzGEn4NUXvNGjVoc7NfHgZg9uvrt2hKwbmKrvCZRudqe+p2/P8bqyUBnsqk0G1Km6aKgi2cFvBHg6NrKbuB2HeluAHNfbJnFqusC7PFQB5C5cSqcMn2jSCEbMeklPaEKNkThHpuZ8qV/srPQv4btSG/sxjRePEiOdvURHFsOWp8eg494lIXxEcgnbYW5b1elLk85cWNJWXXMFpESgoZH7UWA+UnuebTmhlcLQVgx9ztn1vdevwrdpmxOTzv805bMfY0R7Yh8U5EuwHKHzLmBbdiD4LoVS06kkh2sq8et3Orxf8nylGv7S46L8IMplcSrZMCFLQ950/WCBBZCXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeiN+7+2CiagvacIiPLaPotX5fRPhiBReOTiqfsLsgM=;
 b=RxWgeDUSuUnDOCUWkj6jjq6icGV0Q8J7DXOGw1DuoYYmZQRpYDFHQdxLyohUFmaCyOmpC4nuW7i9WMaNGPui47fbQc5x1OghI99FcPPyMVAU+9ScMJP6ckW+X2Vv9v7ncF1eC6bJQsWknZr6mqNLeC4Xc0dsol1pY6Jt9eP/xZ3aH1bJiGqCQ2fnLLzvKi4MfLs4xVt2bBdOCOW02hIeteyJaH1FKxdu5GhVlfyFzVROs2HE5Pq4eyswVia1J+pFaF8zDLwYW6cALqK76bSFzg2l5nVDahdDjeTd8Xuhyf7418HF41J3CfzfqZRl3befWLOdeAGe2Y+KlGSTgztoHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 11:35:13 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8398.014; Thu, 30 Jan 2025
 11:35:13 +0000
Date: Thu, 30 Jan 2025 11:35:08 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.niemiec@intel.com>,
 <krzysztof.karas@intel.com>
Subject: [PATCH v3] Revert "drm/i915/gt: Log reason for setting TAINT_WARN at
 reset"
Message-ID: <vfj2igeeokgsmcekh2qxys2y7c7dqplb6rhsybmjqn3ykxlcrf@yjnuqmgrze3z>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DU2PR04CA0195.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: b241af3a-ad5a-4158-27d7-08dd41222906
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXVmU2VPRENzaU9QNytvZGI1VjZkMUVhTzZpTVNIZC8zYWx2aDRaQzNDMFIy?=
 =?utf-8?B?cERiSmpzdENxN1dXekdNMExIMWNmdHZGT2M3VnFxakpXSW50QUppc3M0di9W?=
 =?utf-8?B?b1p1KzQ1L0ROUkl1TFdCcTJzR1huellYazlTOUFJYURSNzJQWDJjRGtZOU14?=
 =?utf-8?B?R05KeWFCYW9IUks4WmNKTzg5U25oRDUrYW9JWE16OW1Qa2RHUExLcEVmdVh6?=
 =?utf-8?B?a05xbURwcHJzZCtOYnZ0TXhJZkZablZLelZqVnNXbHgrMVFLSGQ5TkVyQTFx?=
 =?utf-8?B?QUxYQnFERzlEb00wbCtaZmJLYkVEcHg0UFpMd3MrOGVXVCtEelFZY0crMXlR?=
 =?utf-8?B?VWUrOXgwNWdHeWhNbFlva1FrNEtYZExYbnVMcFg1S2NhSk1KQ3lSaXZyMnR1?=
 =?utf-8?B?bmduZ21kN0N3TFFOS2NvTFVSekhQSEdSVVRhQWxGdWtsenA1aXdOVzI3N1VD?=
 =?utf-8?B?cWF1cExnSmQ1QVBUQTRRNlE1cURJUFNGWUhyRzN4bWJuNDQ2ZHZFa3BVdEh3?=
 =?utf-8?B?UmlZdFYxZ2ZBSDhqVHB3NDZ6d1gzLzd5WUFhRmxMeFR4eVQvd3FXWVVEaWRS?=
 =?utf-8?B?ak11UEJQeHpaSHJvZGFiVmlLVkhaTHo3VUZjOVdZN3ZoYkYyNkRXVFBvWFhE?=
 =?utf-8?B?dTVmWDZOY29heERuVGplUEJGRG94M01LbmFmOHIzcTh3RVVULzJreG9OU0Z5?=
 =?utf-8?B?YTBoQkhJSXlLNUFoMkJvazhHejBDamsyMVpSVmQxcncwcS9VSmo5VngvYlk4?=
 =?utf-8?B?RTk4c3YrR2hRU2t2aGk2aURkclpncTY2RUc1eElEZ2R3SWthMUNnVnp1NFF0?=
 =?utf-8?B?RytPMkdvZ1JHOWY3aE1jYUdhMlRqTEY1ZThhOXpjTXVGMzFVQk9XTTl3R2V1?=
 =?utf-8?B?MG1oQlBHTmV2VzM2VHNBS0Jpb3BxVEF5NVE2MWNwQVpmMGxVa3lWMS9ITFpT?=
 =?utf-8?B?Q2NpMUVESmlTUzduY3U2QS8wemh5N1lGYWFJTlRHOURDYkR3dG5zUkdnYzUr?=
 =?utf-8?B?bnhVYjF2ckV6KzFMamI3M1VDTWxnT3crS0RBMFAzcE1QYytTVHBDN2ZWeDFN?=
 =?utf-8?B?SDhZeVF6K0RDYW5aUjZ6dEZaUnZOcnBQT0xsdFV6eWFyQTRzOVFVMTJ4OVQw?=
 =?utf-8?B?bHhBaFh5QkF6VTIwM0hpUDdhdzJ4SkliNHFaaHYvMGZDVDJ6OFZ4ZmtJM2Vy?=
 =?utf-8?B?ZHlOcnpVYzN4VEQ1ZmdMRWJUWHJ5QmEwZUpQOXZtTEJpSXZqQ0NUTlFSLzRB?=
 =?utf-8?B?V0FYT1JEMUl4N0hweWZrbVE3TFdvV3NLZjZ0MWM0a1N2M3FUa0cyN2pqdWtz?=
 =?utf-8?B?cUkzUFI0RXVEeWl6U1d2UVBWVFZwQzRlaG1wWlBuWW83RGo1clRpTkdoNVBJ?=
 =?utf-8?B?Vm5FTGxxSmVpR0F6N3V5Y1dqT3pFeGJPVExUZzhoY3VhTnI2RExDWHlMOU9L?=
 =?utf-8?B?QUVFYnRmUU5qcFNOVlMyS0MwdFE1bGI4NGJVUTNEZDNKZzhTMlA4N25rRVNX?=
 =?utf-8?B?MGFjS0V6NWxDMy8wWVFvZWxZK2h4OERaVkdLZTNYeXJXZmVLVm1IbmhFOUg0?=
 =?utf-8?B?b0F1ZkJxTzFCbVJOaitGNWErZUFxTFhYSk1wMFlhekhsTkRLYjVncWtuUWsx?=
 =?utf-8?B?TEI0eDJzVHZOcnU1eE9nakQ1ZzZlRlFPYVF6L2tubGNPTldkb1lRMVJ6OWlK?=
 =?utf-8?B?MHNIRTYwYlFiUkVxWGJ1djVvSXBocmxvTGxUZGgza0hoYmxOUTN2N0c1dGRm?=
 =?utf-8?B?OGdMTGZReS9uWGhDektPSW1mRlE3ak1ITWp3VVFiL3dQdmd6NFZmSUtOUm9S?=
 =?utf-8?B?d2pUWHlvSUQ5YWtQUkdZSFNmUURtT2VUNlZiUGZwbnY1bTBUUGtSbENjS2VZ?=
 =?utf-8?Q?urJXqt3dd/Khs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzRsRzFlaC9mZ3EwYzNqR0NPc2E5L2VUZVQrTi82Qk1FeUpacDNBTzBBbUw1?=
 =?utf-8?B?VytON2lYa2R3dEpQMlRIUVNCUkxsSmE0MDdBQW9tSGljZ3lLelV6aml2dlM5?=
 =?utf-8?B?N0tqQWV0V3pvL3lncHRENjJVQ0RyWS9pNDFMd1J5WS9xdWlIVVJBZ2NTWFJo?=
 =?utf-8?B?ZlZRajZ0dDlHRVM0OW53dU1lQ2dpV2RsOXU4UGs5WDVKajMwMzAwS0REa1My?=
 =?utf-8?B?ZE5FaHE3SVFOV2c0UXlMaGRjWCt0aEltVmw0YlRpeHlzMXNtYldNNlNPaTJ0?=
 =?utf-8?B?dTQxdzVhN2ZmRDBpcHhSNm5ja2Y0WWtDUzMwUkFCblM1and5ZGIvR05KNmpN?=
 =?utf-8?B?cUgyUmlpbTlBQk5jVExKR05haFBGTUExL2tOeWFZTnBNVCsyL0dMbHFTSXZI?=
 =?utf-8?B?NXpkR2gvRHdCUi9RTnU4Qis2U241dXFlZnJHRFhiWlFSQnRCUTd5aktEcWFX?=
 =?utf-8?B?SXdhdGJzbVBnNHlZQVp5R21jWG1JZFBsRUlSSWZ5WDR1UFY2cXEycHEybUdN?=
 =?utf-8?B?bXQwMHV4czZTOXFsWVRoMzNJUWdnT3FId2pjb1FmN1JCa3A5M1lHcWNIaTU0?=
 =?utf-8?B?Q21DMTVTc3pHK08vdC80M0xsUmFzZlRrdUJkWitNOGtGOUpDL0dydzJNR0la?=
 =?utf-8?B?Ky9yaDdxK0NsNEp5UnZFRVZWZEIyYXBTbUtRemtNSUdWTE9VUjgyQmtpU1JD?=
 =?utf-8?B?SzJqdHp4SFVuQms5MFZ6YzR3R2N4RWw3RDI0eGNPUnYxcVJRRG94RE0rd2tv?=
 =?utf-8?B?QjAxbTFZMGs5U3lmcjg5NlRuMkRFVlQ0RmJ5dXExZ3J1V2hvREJ1c0tzd1Rs?=
 =?utf-8?B?M043eFFIa0QwSmxVRStQVUVjWmJYaEhMV05KWEhkTDVRdmdpdmtNWForcnkz?=
 =?utf-8?B?bUFHNzc5QXlnbDFBdW4vcldqODJYVHNESHlrdnJQVXJVYjRicGMyQzh2NC9N?=
 =?utf-8?B?M3drT2Y3V1R3QkdBYmpjOVZ1bGJraDFXOFFtRXc0K0NFZ0o3Nm42bGhsNFZi?=
 =?utf-8?B?b1k5TldPQ0VoV0tQRGZGSHM0VzkvODlnbXF3TzZQbUp1aHY2MDF3Q09UWUp3?=
 =?utf-8?B?QVdaTms1SGJiWVBKczNvcVh4Q1k3V0ttbjB1QnEwR3VORDJaWDBKRnliZ0pZ?=
 =?utf-8?B?ZFRpZ1FGQWlpS0FEOUI4SnJHUXMwT0VmckRidUNsTW52c2ZUSGlJZzhZdWZU?=
 =?utf-8?B?TXpLbk11RE1SZjd3SU5OdkZ4a2cvOVdFR0JFdysvaXhMbm03NW1OTVY2Yk9i?=
 =?utf-8?B?WUdLRysxclNPS1ZzU2xvQWRYNmhwSnl2SzNXVCtMdWt2Y3BwbGFyRXE1T2kx?=
 =?utf-8?B?M2ZYeTlRK1lHVW83ODA1cm51MnZGRVcveW9qVjN4RFc0WEpNTjN3cWxGODJB?=
 =?utf-8?B?ZkJ0alh2elkxQ1pXZGwwc1BxSXR0bzRGM3NHZURxQVZ6cGR3cGVpZWRWTlZi?=
 =?utf-8?B?ZlRjS0hMc1gxZ1o0bXRQYUZJOEtndWR2RzYwT3RaY0lZMVU4L2czaVdkd3Jw?=
 =?utf-8?B?YXk2Qis1aTVscU4vbzFyUjBoc29PUjZDdEJ1Z0cybFMzbkRYMjNEN1RWMjFJ?=
 =?utf-8?B?RmcwdTB0VWdLd1ptdjV0aHBEbGgzOE0zTWFWdXRMWWt2a1lIV0NPVU1rM1BK?=
 =?utf-8?B?TUt1eWpGYkMyNUx1VGdOM2N2T2NmekFremdSK2RvTmJCZlVJK3ZzUEFMa2xC?=
 =?utf-8?B?T2U2QnQyZUM5MC9rUjJybmRJbW1JT3BNSWtEcFhYWThHVlNsbTJldTNtRFVD?=
 =?utf-8?B?dFlhd2hhOWRQR1l0bXZjSDZxWWN2SFJmSUsrTDFzeFdYczIwamg2dlh6RVBt?=
 =?utf-8?B?L3Q0VVRFQW15MkJRbXNWVzR5Mzhsa1M5UWtoa2h4anpkaTdmYnZLKzdNZmVw?=
 =?utf-8?B?S1ppU1p1SG43Y0d3ZVl6RkxzUVhGamd1T0doanFtcUFoL2pEUGFMcmtYQkVJ?=
 =?utf-8?B?emJ4cU01WlhTbkg0QXV3SVNlUEZneS9qZ3d2c0N1ajEzWVpZemQwVUZmS2J5?=
 =?utf-8?B?K2FsMUgxSmlvSG1mUzY2dDhaSTlVMW9GM2VZV1ZVYmt1cCthZHZjOXp4dnZI?=
 =?utf-8?B?Tm1oL0ZEaStOQlorMUlyWUErL2s4SHpUeUxYNkkxNzB2MkY3T1ZkdGtDcFNO?=
 =?utf-8?B?RGFKRkxDQWxYQzR5SzBjUE5KZzdtT3M3UGVWZngyRGpta2J0c0FvMVV6aFRa?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b241af3a-ad5a-4158-27d7-08dd41222906
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 11:35:13.1599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iS1SXpDZieqKR+HF+GZLHtmRkt1AzE7aVDnhHZwfKAnspO7+vHj1pgEiiPqb9DqOuttRZr/SFeHZz3GXA/68Kiu3Qqx7kqc7d69TWbo6XZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
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

This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.

Logging with gt_err() causes CI to detect an error even in cases of
intentional error injection. Since real errors are already correctly
reported by CI, this additional message is unnecessary.

Furthermore, a GT wedge is already being logged elsewhere, so instead
of adjusting the log level, revert the above mentioned commit to prevent
redundant error reporting

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v2 -> v3:
	- rephrase commit message again
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 5a625518d1a9..33b55c581552 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1113,7 +1113,6 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 		 * Warn CI about the unrecoverable wedged condition.
 		 * Time for a reboot.
 		 */
-		gt_err(gt, "Unrecoverable wedged condition\n");
 		add_taint_for_CI(gt->i915, TAINT_WARN);
 		return false;
 	}
@@ -1265,10 +1264,8 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	ret = resume(gt);
-	if (ret) {
-		gt_err(gt, "Failed to resume (%d)\n", ret);
+	if (ret)
 		goto taint;
-	}
 
 finish:
 	reset_finish(gt, awake);
@@ -1611,7 +1608,6 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
 	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
 
 	/* Wedged on init is non-recoverable */
-	gt_err(gt, "Non-recoverable wedged on init\n");
 	add_taint_for_CI(gt->i915, TAINT_WARN);
 }
 
-- 
2.34.1

