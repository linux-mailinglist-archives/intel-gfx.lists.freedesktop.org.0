Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1972A9C7BD
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 13:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C13410E0D8;
	Fri, 25 Apr 2025 11:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZl2t06V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B88510E0D8;
 Fri, 25 Apr 2025 11:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745581023; x=1777117023;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6V93wk/vgStOdTKaJ02h8baad4xixh+qIyzvRYRO6EM=;
 b=CZl2t06VqWdeXmy74DiEMPEhIX/2hQ3oLIvOrBZZ5NAcEAks09wnyxXj
 oTAngvwPri7/KJpbK8hBpdcy9Hu19GbFUw9D8IXhYcFeuKqsscz4qIvX0
 AxtfLVBHAs7loeBz6+kKjos6YV1E32bOMQiFjUj3sNiy/E3KJKhytd8zJ
 PI6NzrIPUYifygToFsC2p8STNkzixtyVWdw/d69PlZR6E+362XLBTBTpJ
 xucp9ftM2Ycs+/iGOmptL1BrYyfUR3fR0HhVTbT5blyb7l5aUv5y9p9j/
 TqBLCSHuP2I/6E33IsDGdGS5wDZlNELbg+Y0DfDUcWrJ1Puuw0zXxZhqx A==;
X-CSE-ConnectionGUID: g3zucROIRiWG0qvGaLW/nA==
X-CSE-MsgGUID: rLXgIVV8Stqlwe4GOCSlLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47151613"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="47151613"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 04:37:02 -0700
X-CSE-ConnectionGUID: hjyRTgwrSaufFtqs+Iu4fg==
X-CSE-MsgGUID: bFAea2NjRbSxb8RbUd5Nhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132877339"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 04:37:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 04:37:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 04:37:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 04:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sn+fSeJFACNKreLTwQFr9p1dgoiBTC7afp1aYNStqo1l8SC0lvFDMIfaW1PW2fgkolEPXRKmKuTrt3xIzI1TQ3Wa2AFHHBo9WPkIb39J/OmmCy8A0mHXym4iqVuhDUveXubIXqfB+BmrcvLO40HGdVqoRapYGXD+4vBkk9/7AEqe4bC2ZUi7Hp8tUvZJCpM6UKMd8D4WLMNEw/TNzrc4lwD8tJl0ZB36wwVGGbJKkscO9+wcxHS3Qw/o230H/K7ksiaLSIU9fL7F2Pj1sCX7knilLGuReOgiIx2fQcmDGViA2szFgMm4XweyiHOttNkUbdiuEcZLzx5H8o6g48Plzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o6BrUXRtnriOBIHfUm/HTRjYQh99HJcqG0dk1hrxXgc=;
 b=fFq3CH3xjIoFcKBQtLYq7O2nSEzNI01B9+otpNJygEaB8/x25n1dJtSdNKoz+t8FQNPVSktYNbwjm+Kn5H6KsgsQFKKv48OALNRzbaijdwFfM01ripmokQOmSTIGj+TDocUjB2QXL6BHMgTrOiLfAD0Nle2dMtU5mogLLxjEqAK1OT8+Qiti0pOsHVZ1298kRcpmMeOPcSfMtoQmFHrDdDSyIjwVz7kiaPJIMoA9pBa5OZ200cwBhCoYMnVes7sKhUs6hytWhknya7l/9uDrQ0KQtASr3ZHoIP+FN8NukD9B/+kyy24/rIxXi5v8SciVURudxL8wO74hqVyGR71Ssg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5207.namprd11.prod.outlook.com (2603:10b6:510:32::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 11:36:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 11:36:46 +0000
Message-ID: <523207bf-0dbf-4c87-baf8-e144b3b375c3@intel.com>
Date: Fri, 25 Apr 2025 17:06:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/i915/vrr: Refactor vmin/vmax stuff
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-2-mitulkumar.ajitkumar.golani@intel.com>
 <54386c10-0c3e-4f5a-9fb7-ca8764dc0602@intel.com>
Content-Language: en-US
In-Reply-To: <54386c10-0c3e-4f5a-9fb7-ca8764dc0602@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5207:EE_
X-MS-Office365-Filtering-Correlation-Id: a7201d50-31ca-4037-8dac-08dd83ed7542
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djEzck5YeWJvbEthTitYRG16ZThyY3kyaE5odyt3cDhGMWJBQjdtcTFWN1My?=
 =?utf-8?B?SzdCWE55YVIxclRzdUtWWE5IOWtwSi9KK3FCeXNHVXF1YjQ0blY2Wmg4VUdF?=
 =?utf-8?B?NmFTamtiU3F1T1c4SlQzVjRRU1ZOeGlJRERLaXpHN1ZjOC83UkJDVlNlMWty?=
 =?utf-8?B?OXl3TDIrMUR5ZjRjR2NmU3ZwYjR1Uk5tOHF3YXBvRlBhU2NOMWxmS3o3amNm?=
 =?utf-8?B?c3J5bDg0bjRLTDdUYXpRWFRZZlFIODVrdEhHSXJldHAvRHpSK1V2YXZ0UGg1?=
 =?utf-8?B?QjVYRW41aUhsbTMxYzBGb2llZ0JXS2lLVlRHekVPUW1hMExad1JZNXMxcVh1?=
 =?utf-8?B?WnVvOGxJWEg1QkI0eFpFa2FPeUh1SnpvSFNtemZnR3doVDdiNE1va1ViY01r?=
 =?utf-8?B?bG1tUEEvU0xIQXh1VTBvV0Z5Q040dWVMd2YyUkt0U3QzWjVDaFNwTGNDOGVa?=
 =?utf-8?B?ejBHNDlncGZXSUpWTEd6RHVFYmYvUld6MGJkQjAwTVVvK3dMZS84NFVIV1ZB?=
 =?utf-8?B?eHZ3dVF2QWZKZHd6cS8vbUpMQ0N3Ym5kcEkxVzlIcG9MQ20xeGdjZ1ZJWmI0?=
 =?utf-8?B?NWhBWGZUWnY0T3VCNEJLWmhBWnNRVWt6VlhWOGFGclQwalpEZUIxT0drYUxh?=
 =?utf-8?B?ci9sR2JGSVRiR1I4anQ0dDc0ZDhMb1hobTRBNkxHNEFBVDJSRU8yU0tZQUFa?=
 =?utf-8?B?RW84RWFCSlpWcW5QMjZOWTVzQmZUY3RDTk1WbHpnSndqVkZXNUZ0YUEvRVlh?=
 =?utf-8?B?K1M5NUU4YmpzaXZxSmNldE9lS0lOTms0ZmZDbGc1V25oSW9UVktvY2NNdXAz?=
 =?utf-8?B?MjVScGFkMUhjZGhxWCttWld5RTdDNFFMZCszYnFtbFhLYjcrS25YMGRMYy9n?=
 =?utf-8?B?WkRHclVRemEzUjZpK0V3NjZFNnd4RFZlaE1OQ3ZzeWxKOG9VSGdka20zdVdw?=
 =?utf-8?B?QVZxOEtxVm8zaitIamVEdXc5RXBWdVdNdElqTjA4VWlVSEZ2UlhObjNFVmZK?=
 =?utf-8?B?bFRFUW9IV2JReGRoMGNNekM4eFJ6cTFDRUhxb1pKeEVvNUp6eEVUMTNUTmdx?=
 =?utf-8?B?cHhldktxQVdRT0wzemlka3lYQ2x6V2ZtaysybXIzZmkzM2wwRkNRSE5TbExw?=
 =?utf-8?B?dzNCbkJoM0hBQjFlZE5NUkhvcWhxYnRNMlBQWUxRa1VvVEkwK0RTay93Tnhr?=
 =?utf-8?B?MFU1QU5xZHZvQ3NyV1ZnYWdEamlaTjFQMFcvVnFqNUlqVk9kamIwNnFPejVn?=
 =?utf-8?B?OHJuNHZUYkJWbHRaN0NMVXc1TUtBb3pMUG9xcUQySHhVenM0SnYzOXB3R1lv?=
 =?utf-8?B?d2x5V1ZUbFNSTEhUVk9ENThkNGJmQXg4YWN0VkRZd0Y1Wm5mRUk5d2hCRmF1?=
 =?utf-8?B?eWtONUt4dmg2QnVqdTlXR3h3UkRuSTZmL0Y3WXo0aEYzbUlPMzdWVWlJVFVa?=
 =?utf-8?B?WUlhVU5lMzUxbVVsaDBBV0tORnpHdStEc0w0dHEzQjFEak9SMXNXSW9DTURN?=
 =?utf-8?B?bStxSDRzUXZpSk9BZnRPWHVDOGJCWEpIOHBRaDhXeU4wYVBIdWxvSUdJL0Fz?=
 =?utf-8?B?eGZ1MlZ5aXF4cjZ3V3JHK3dsWFhQdmpuMXNGajczcnl1VG9yNDY5amk4U0pY?=
 =?utf-8?B?cEVSOUQ5QkRFemVyQkJmWDNOS3Q0OEdmb0x2NFFvVEJDb0JWQkw4MjlXcHc0?=
 =?utf-8?B?Y3lKQUhaemRIMEJ3bjRmWi9rZm9GQ2RNbE5TaEhwV0xqVkZ0TXhuVmJpTExB?=
 =?utf-8?B?UkdleUNETHJzTWhCbGhNeXprbnM0QVlkN3k3bzh2N1FKd21mcHJBcEVmNFli?=
 =?utf-8?B?RXhycHhYR0xFOEVWMU1PTEk0UWoxa3llTlgxSmpaZW8xeWpIYzVuK1pJbnRL?=
 =?utf-8?B?cGJQUVloNUVCMDBCc0tsMTBoN2hvWFo1T21ucXhUZVFmNjN3SEhyZ2l0cEkv?=
 =?utf-8?Q?S1af8pcQ0z0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjN3MUd3dWxYUHdOY3E1NVBwSGZudUdiMHpXc0NmUzNtUjR0dFRFUk9KekVq?=
 =?utf-8?B?RG9xcFVwSTY0UGUvMXduS3BacHpFRkJzcHBGcUhiL2hDMXZ5QitUdXgyZmpZ?=
 =?utf-8?B?OXpINVRRZ0U3VzhvTlk3b1RaMGdsZkdNdk5SMnFBclQ3R0xJaStTUFNxMFUr?=
 =?utf-8?B?U0RlUzM3U21KV0NXMnR1WUlYcW11ZkVXZmF4RWh6VkhKaGxYcndHVHRNOUsz?=
 =?utf-8?B?UUJGTk81T2o5bUVaZ3pMRzhhZThvMHF4N1N4TkcyRlNaVis4K1Vpc3VjdTJN?=
 =?utf-8?B?LzlncE9lWTM3SmVVTkhiMFlId2N2WWJPTVpPTFdLV2ZJZEt2dzNOcEwzQkFD?=
 =?utf-8?B?QnVSeUs0V3FCdys5dzhUQ0NHb2QraXlFb21lM0xFOWp0QlZVaGh3QkdiYzZl?=
 =?utf-8?B?Y0JRS1FnU1gwWlVwUUVNOXFxRUFCVk1QbTNUYWozVzByVUxVUGlubGhLTU9Q?=
 =?utf-8?B?U29CdGdPcGxSOUc0dHVRSnNTYnpKd0ZJMlk4ZEprVEM5MWlBMjR4TjFHMHkw?=
 =?utf-8?B?UVBPTWF0Zms2ZDV4NUhJN1BTbC9HaER6YlVaeGRhM2dRdThIajlQOVV4UUR6?=
 =?utf-8?B?YjE2WDh3UlhqWFp0dVlQR01CU3plTFNiWGx1dWNIaXZWS1FiN29xcGNMdEF5?=
 =?utf-8?B?OXlzY2NMeGJzWHlUdFM1M2R1bjVjSlRLbUFEbFVIUU9KK280TGF5SS95eU9i?=
 =?utf-8?B?T1A5aEFHK29HQVRRRjJVKytKSzFYVU44d0lCSjA0VENySXJ2OGdhSENKUTl3?=
 =?utf-8?B?N2pFT1VXc1FvTDBRakdWcFc3M0lFbXE2U0NPcnNWdzhWQW9heEowM1o1NnFB?=
 =?utf-8?B?RDIrMWtqSEdiWjEyN2MxZ29HNTFHRS82NjBBeFU0dkozWUNBb2lETEVxWGtj?=
 =?utf-8?B?R3YreTZnb28xY2I1SGo2cFZsZ08yOWtpeVk5c0hMQXhqZTd0YTlMV2RLUWRp?=
 =?utf-8?B?NzRvbmJsaUVISWN4Vlh4eFVyNHd2K0pvWXVxcXlGOTg2WUJLYmVhTkZmLzkr?=
 =?utf-8?B?emhlTTBTWFcydlhxUk4yM1hLUUVzNEtqNHlXWWFqY21wY2cyQkZkVS9nclE0?=
 =?utf-8?B?emJmOVA5RkYvbzN3eTBuTEJBZlZSQVJ6blZ0Zm01RElkN0I1RXhibFpRdjZ2?=
 =?utf-8?B?SGY4NzNLRk1SMEtROWFRR2pLZ2xrMUM2NHorQno0NEJWSkFHZit6dTZkWXpM?=
 =?utf-8?B?MmJyYnhxZnA1ZHFQeWIvVS9va0xiRjlVWUVDQS9yZStBYUFVVjUxVFV5ZXU1?=
 =?utf-8?B?YjlodWplVGdVTGkyWVlaeVdmZjU1Yll6ZnNSckI4dmlDQWhxQlFBdDUrVXlz?=
 =?utf-8?B?QkNBQXJTei9CaXp6M3ZKVklXU3ljbXBsZFJqMUhqNjlQaytwWkt1MkIyS1Zy?=
 =?utf-8?B?bkxzWTBtOXlkYng0VGUxMWZDZFJPWXd1S2V4V3pIUzhMMzRXMlp1OXBHNzdD?=
 =?utf-8?B?YmNTdHliL0EzZm8rTS9ZUStmdEo3YzkwbndnZUF2N2sxOFU4anR6c2l0cTFw?=
 =?utf-8?B?NVcrNi9iMnlrL3pPUGpsSHU4emxaS3FBTXlINGR2WnN4QXhsajhaVzF2NllI?=
 =?utf-8?B?Z05IRW9Rczhwby9FVGNaVDI0NFhRbnQ5NzRWZWtuY2xPOC9pTzZOR1V4OXpY?=
 =?utf-8?B?M09ESk0zQkYwclE4eS9ubURMQ2kvRyswb0NhWU9xWHBGU1lOSXVzbTBhWXo2?=
 =?utf-8?B?cFhoUngyNEhWRFdCZ0FQQ0lCVEZBNWJ4dFFtSEZMV2pOZGFQa2pORVp5M3ky?=
 =?utf-8?B?T3FYemNYL2llK2JRdndVVnAxT1RxZzZ6a2RtN0tldWVPR1NSNWhtVFVhSUZ2?=
 =?utf-8?B?ZlVLMHh5M2Nyc3h4SCsvRC9yTU5ybk1lVUNycUVCa0xpQytxQWViK0RFMmw5?=
 =?utf-8?B?bkRVaGRFMmU5Z2t1bVdtUXF5Vmt3TVRQNm9EWk1ocGlFN2M1M2d3VnNMc01N?=
 =?utf-8?B?RWRDTU4zZ1ZSaEZJRmFackhFZmV3UDRUTVFQVHMzaW1SZWpBVGtrTUVYSTll?=
 =?utf-8?B?Nk1xWTZQd2hhZjZzdjJiYlFMMy90Q0NjYmdEczFMVk1JdVRDUTZSa1c3YUtP?=
 =?utf-8?B?UVdLT0pQMXdla2Nkb1U4ZWsrWWRpRjdrbXFTN09yUUdIUjIyUC8zR3lGamtJ?=
 =?utf-8?B?eDVvY2NRSUNLMm9wVzhOYTlEbjR3VWw5QkM4SUNFSjRBR1k3T3lMZ3FJOFYy?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7201d50-31ca-4037-8dac-08dd83ed7542
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2025 11:36:45.8426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rw1Ydft2iC9xnkUpZw+nrShhlWD3L+oZyQ/DbD1+2cgNd6dwjwZ77DXXxQ/I37xarnE2NjjxWJythDB/2bvIu9c4FFWbarfoET78sMmv6J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5207
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


On 4/23/2025 12:19 PM, Nautiyal, Ankit K wrote:
>
> On 4/21/2025 9:18 PM, Mitul Golani wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Refactor vmin/vmax functions for better computation.
>>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
>>   1 file changed, 19 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index c6565baf815a..adfd231eb578 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const 
>> struct intel_crtc_state *crtc_stat
>>           return crtc_state->vrr.pipeline_full + 
>> crtc_state->framestart_delay + 1;
>>   }
>>   -int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>> +static int intel_vrr_vtotal(const struct intel_crtc_state 
>> *crtc_state, int vmin_vmax)
>>   {
>>       struct intel_display *display = to_intel_display(crtc_state);
>>   -    /* Min vblank actually determined by flipline */
>>       if (DISPLAY_VER(display) >= 13)
>> -        return intel_vrr_vmin_flipline(crtc_state);
>> +        return vmin_vmax;
>>       else
>> -        return intel_vrr_vmin_flipline(crtc_state) +
>> -            intel_vrr_real_vblank_delay(crtc_state);
>> +        return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
>>   }
>>   -int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>> +static int intel_vrr_vblank_start(const struct intel_crtc_state 
>> *crtc_state,
>> +                  int vmin_vmax)
>>   {
>> -    struct intel_display *display = to_intel_display(crtc_state);
>> +    return intel_vrr_vtotal(crtc_state, vmin_vmax) -
>> +            intel_vrr_vblank_exit_length(crtc_state);
>> +}
>>   -    if (DISPLAY_VER(display) >= 13)
>> -        return crtc_state->vrr.vmax;
>> -    else
>> -        return crtc_state->vrr.vmax +
>> -            intel_vrr_real_vblank_delay(crtc_state);
>> +int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>> +{
>> +    return intel_vrr_vtotal(crtc_state, 
>> intel_vrr_vmin_flipline(crtc_state));
>> +}
>> +
>> +int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>> +{
>> +    return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
>>   }
>>     int intel_vrr_vmin_vblank_start(const struct intel_crtc_state 
>> *crtc_state)
>>   {
>> -    return intel_vrr_vmin_vtotal(crtc_state) - 
>> intel_vrr_vblank_exit_length(crtc_state);
>> +    return intel_vrr_vblank_start(crtc_state, 
>> intel_vrr_vmin_flipline(crtc_state));
>>   }
>>     int intel_vrr_vmax_vblank_start(const struct intel_crtc_state 
>> *crtc_state)
>>   {
>> -    return intel_vrr_vmax_vtotal(crtc_state) - 
>> intel_vrr_vblank_exit_length(crtc_state);
>> +    return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
>>   }
>>     static bool
>> @@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct 
>> intel_crtc_state *crtc_state)
>>   static
>>   int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state 
>> *crtc_state)
>>   {
>> -    struct intel_display *display = to_intel_display(crtc_state);
>> -    int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>> -
>> -    if (DISPLAY_VER(display) >= 13)
>> -        return crtc_vtotal;
>> -    else
>> -        return crtc_vtotal -
>> -            intel_vrr_real_vblank_delay(crtc_state);
>> +    return intel_vrr_vtotal(crtc_state, 
>> crtc_state->hw.adjusted_mode.crtc_vtotal);
>
> This seems to be off for Display < 13.
>
> If I see it correctly, instead of subtracting we are now adding 
> intel_vrr_real_vblank_delay(crtc_state);


I think the vblank delay should be added for platforms < 13, and not 
subtracted.

Perhaps need a separate fix for this.

Regards,

Ankit

>
>
> Can this be rechecked? or I am missing something?
>
> Rest of the changes seem fine.
>
>
> Regards,
>
> Ankit
>
>
>
>>   }
>>     static
