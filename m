Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA7HMThJuWmK+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 13:29:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F81A2A9E32
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 13:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B0910E260;
	Tue, 17 Mar 2026 12:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kX9gi1Wc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDEC10E260;
 Tue, 17 Mar 2026 12:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773750582; x=1805286582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CftwInI/JMzpv3/v2UAyBa6i6veI+40wpec4a/g5GpY=;
 b=kX9gi1WcnYo7sJFABuqj6NqaWtRuv4mVVD2I/zjTSxQvKMv+8h1U25h3
 bfXqJt4mfobZ1wO22IdKMVoebqXYN88w0ewUTqKDG06JeGecp+CzHvjWj
 eiC9aAtQxtLEuA3dHX+QYWCxGivTvQ04PkSNLm3RFNlFvcmlM9Zjk6J9Z
 4n4h9YPCosXaMUDuWCQckBxDfkzSo71NFq/vuuLRkoCKzEQfKtk6p1PU2
 evdTVYvmUx+YkZOId0ZwFu9Qdb1Q+P7NIUkkWiBfy2t6+aewU0hGACM9n
 EgNBkSg74rh9fSGRVyw6u7UfNjtUMojdor9gcv9omxkEDxaMuVLrnziBh Q==;
X-CSE-ConnectionGUID: FNWynFdbSIWPJtrYEkNp0g==
X-CSE-MsgGUID: 7b2REe/7RuKLFyIKK0cnoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="73958204"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="73958204"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 05:29:41 -0700
X-CSE-ConnectionGUID: IiMxQdIuTzOvTW/y46267A==
X-CSE-MsgGUID: Du9rpPZ5SXykkV9k4p/W/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222311763"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 05:29:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 05:29:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 05:29:40 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 05:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gwHraN+ZRiJxfUxH6megEYt9ZDvvI9LkHrWq2HNCTdIkbzna6jt8ozqXy+/RLLxDNhCzppltVo9OelPGGIm3IfbZqZrvYMFJq6NllsGy8CZoaR1Vvt9Tqyh6DuS7kGkSmYOG7EQ3uEKXl5Y8UrSBeANQITaB9vFoatxI/8ID6XNcGwm4CzjaTxGyE/dkq/vaV1XyxXNZnCy4eeXAJlZ8RSY/ccWTQHNTdLNkNGyi/gts6GHK7AM6vxivX8eTl109hD9aPn/BtwO+zdNagMzFC0chrJ1nXLiPafFVVJzu+CKwWPoHodZJEsFI+yvexMeqP+pMB/+nLEVwyYGdh3hpxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtu0ITjLRNbQSAgqnjSAVO/qXmOjEcrjk+Ws07R7i+4=;
 b=RDC/FnpTqCB39CpJq9SG3AqHS4hdVx49HEH+ua/sESHV86etxydWSKEEe9432W/N/u5UGisSlI7S/zKOlj5g5GplRv88Ht4Y4rvZWfVyWtf+5UBsh2aU/MJFMbWAcwdoznPr7flqCfXmoKnjLz90J3PeI3dZi9LYKgrvHR2uFnqX1fY9CrMRNDnKGD7FBjr81xXC29F07GcJF4YqwWTGBhUFDeYKsB88eH8N9hP4a5buvpUKwjjwx/HQtkYHorEef1mxYt4BL/oxCuG1RUXk1aaxQ6Sbca7NLvGTTf0pH8JRWSLoX63mTtQkayVxMZIoEIx5yIgUF6OszhnN0E0KFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB5285.namprd11.prod.outlook.com (2603:10b6:208:309::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Tue, 17 Mar
 2026 12:29:36 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9723.018; Tue, 17 Mar 2026
 12:29:36 +0000
Message-ID: <306d456f-4015-4b28-9fd8-b671d4c01929@intel.com>
Date: Tue, 17 Mar 2026 17:59:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Content-Language: en-GB
To: Harry Wentland <harry.wentland@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <louis.chauvet@bootlin.com>, <mwen@igalia.com>, <contact@emersion.fr>,
 <alex.hung@amd.com>, <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pekka.paalanen@collabora.com>,
 <pranay.samala@intel.com>, <swati2.sharma@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <3cc8bd83-8a19-488b-b5bf-b71f75c18e74@amd.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <3cc8bd83-8a19-488b-b5bf-b71f75c18e74@amd.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|BL1PR11MB5285:EE_
X-MS-Office365-Filtering-Correlation-Id: c69f42ae-c09b-4df7-6a91-08de8420d9a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: XE7GN5FznBItk6NDdw9MFWcZfL5trHDZGSbe49zEYKaJaRxEuPUD5KOO2xStlNDagDNz82NuFuHtVqoatfNcRS9setFlNZDA9qyjcPtIP8o4/xAuDgpzLp7hSpFHWq4mgcaoMHdVq8gCcvLTqCgTlADqVxDk7Uv8GtlVi9fZdew9nBDsh4ufZ3zNMkRmqi1LwcVp+CwclNHCySF5qqg7BSis3McOlrbQBl7HaZ1udhVOD5w8jS+/iQpj0QlLqQH6PEqrGnTwyJA+VpuFdwwWr51CVLX4RotMdAq8nW6gRkDmOEQGzvd8znNgQEvylfyuCmw4lnmBAE8PUu7cJ33hGlyC8aNDi2UZX6+F2he2tpPu0dFeX0TB2Noel+0UuADzidV58A1fEFMOn9J67nf2TUKr7aGQhkdr/Bu9oR8Dv2gMWIjV7ryDBWNujY+vA0zNgpJj1NtoSvjH2SqCGxyQzFdukpz1EU3tMdng/CL3tB3raCQqWNwCtsm+RvGnpn2iMSV7cvXVYMdaC0Yy8B+6CASY5ivpzcXsyoYCEbBca8dPfrgeKCKLq7Yz7KzNxC9AizhgLmC7GTvLt15wCF9U7u4rxgG/+YmjlXgTvB+Pm18M/Jx3k3aVbqgbp2LxwjQVBP46WlCb56wSPRuymnTAxmuhc1tC7tTibqU+j3rzKjGEx91fz3UUQENVeICFyb3K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3FvdjQxYVErLzU5YXE1c283RjFFa3ZzbnBlQkNCeXBNVndTNlBFM3FDZEZk?=
 =?utf-8?B?blNlOWo4aHVpYUhtdm5wN05aSjZuYmYxQVo1Y29MZ0pFMllRWEM4b21qdHhu?=
 =?utf-8?B?ZXVqaXZnSDNnb081MmtiY2hPNVFlQWJ0ekpBOFBZTlBMcG1CRmtMQi9kOUJ5?=
 =?utf-8?B?YlIxUWVUbEJ2ZlR3c21sM3hGK2I1T29UL0tJblh3MnNlMmxvMHQ4R3hUMVhw?=
 =?utf-8?B?Qi9WNkM3eHNuamphVWg5S01TNk5IWDNpZXA4UmZ0VTdNWGNXUDFWZXRkZVd3?=
 =?utf-8?B?R1l1UnZYQUFwMUZjOVplOXVWMjlQcXo4bnFwNlk4b3FYbG41L2dFWVdFWTZX?=
 =?utf-8?B?UzhaUmQ1OGhKR1VYemdkR2kxTkNzL2F1Z0tWdE15YnJFN3pCOWwwOGF6VDN6?=
 =?utf-8?B?VEZiTHpRUDlKTTdmdXNuNDhFTkFKa2pzazF0QmlFNjBJSUlUZ0tkUTVEK3Q2?=
 =?utf-8?B?R09LMjBkRWVER2xWK3piZ1hLY01NOXdZMzBDZVVYTE9sSG5maGNrMTZjUG82?=
 =?utf-8?B?dkFuanM2ZktESXo2cnozK0JBbmJUM0s4Q1U0NmhEQ0ZGald3UG9RWi9UQjZE?=
 =?utf-8?B?b1pYRGFoQWZxeVBhd1lhV1MvZHdNc1JKVnV2bjBzVEp5S3BQdDhRVS9NT1JN?=
 =?utf-8?B?K0FyOU15SVRlc1Z1d2VuaHR4L0I0VVpMTWRlS25Fb01qWmd2V0pSVEpVNEx5?=
 =?utf-8?B?c2tLWU00R1lzOHJwbVFCSHBJUEIwdTYyODYxc3R2S3QyTFZ4ZGxjR3pveUFv?=
 =?utf-8?B?M0tMYmtuUnFHRDF6OFBNREhBcTJ2VmlMempCWEs2aWJ5ZmJZZDhCdStVNWt6?=
 =?utf-8?B?VXA4MVE5OHdMQmZBeGZDWHllUVVHZ2xLTDkxZVp0ZWdwTGdsRVppWXdnTkpR?=
 =?utf-8?B?S1lDT2FCYUxIVXI0ZE90d2pqL0ZETHArLzB2ZFB1THFQcUQvdUF5a1Nya1Np?=
 =?utf-8?B?R1lzTStMYU0wTEJ0V0RSaDNKOGRzMlZsbXdPb2dPbjR5YTRoWTh1NkdlZGRD?=
 =?utf-8?B?cE9jU01QQ3ZZRm5ram4zbitMZ1dYUURXK010REI5b1pSZ1NQUGpXbk10a0d5?=
 =?utf-8?B?WUdsRkZLVUFIcU1Kc1BRUGFTZm1Pd0l4d21WRVJHTU40anVzSzRGcGlNTERO?=
 =?utf-8?B?cFl4b21mVlFTcklVYUpiSzBzRnF1VGdlSURhN1dndEc3L2J2UDNpenQzVDR6?=
 =?utf-8?B?cDdxVlFDZ2Z1RUdIWThkNURKZisveUxYMGY5dUZhaE9VU0FLcFdSNktyWnlJ?=
 =?utf-8?B?aHlGN1VqdE44b0RNdlM5dWtocUZXU013aStHczEvUTk4c1F5SDBOSjZoRGt4?=
 =?utf-8?B?d1VGZko3ek4xK1NtaFhJcy9YYTRXSjdUQWJpQU84NTkreFpHbDJvb3ZIZ2RW?=
 =?utf-8?B?aUNsRGRwS2VlMEo2OTRicUNjWC9FbkV5YThYVlJFOWkvdlZvemdLS0dac1Ez?=
 =?utf-8?B?YXdCY1NjeUpWSzJvSmF2YlhFMGVGb3drYXpINGVVamIzZUFud2lNdG5iNVRH?=
 =?utf-8?B?RVhkejBZemswQnNRUGZxU1BaY1IxaHM5NFo4Q3lnZ2tXTE55QzYwU090czYv?=
 =?utf-8?B?bUpjQ3NKU1hDUGVlb2ljbStLTXBGT2ZEdEJ5dlF5a0RlZGpnUFRXWVVERHpN?=
 =?utf-8?B?aGdLTm9uVjdNOXhNVFh4OXkvZWUrWFVrUXBadlJJNzB6ME5hQjJqNFpuL282?=
 =?utf-8?B?dGVWck1RVVV5Z3F4djFlL1duU3FUay83TzJvRi9PdHRKNnpaTlcrUDhnT2JU?=
 =?utf-8?B?aVJIOG1YNEpLSk1EcWZpaGZwdkpNT3ZTeDQ2UVFYdUNwdTRSby9nZUNIcEln?=
 =?utf-8?B?Y3dkREtlazhPYnRZT0xCa2t1UjIyazA1aXM1NEZPbWFHRFdOYnljdkhwMndN?=
 =?utf-8?B?SmtlVUUrb0VlMTVzeGZXMFJMNnpwcXVIbjE5S0c2SE9jeGwySW9yU3dUZ2lH?=
 =?utf-8?B?UVV6ZEszTEM2eCtjendnYldJT053NVVMWTZCSGwxRE5FV3A1U25hbC9JcDdT?=
 =?utf-8?B?cVpGM2kyWmQyNXNSMHIzSk53Q0FqcksrM0w3elRROVVIMzVKcGhDZEFVNGlI?=
 =?utf-8?B?L09WTkl5UzN5bEIwZlVVeE05UGxXY3FOS0V1aHVzS0pUekFpZ2hsKzVuUjVM?=
 =?utf-8?B?RlJuTjEvbWtyaExDOEY4eXRCWHVoQlpHUjNOTzlpVlNlRlNlZmx6M3EzVHM5?=
 =?utf-8?B?RXNwT1Yyb05KR1V3Y1hHa1RVdjJnZ0hCN1M4Q2hiWVNGcGIydDVubC9zaXZq?=
 =?utf-8?B?WlF3b0htUkE0Y0h4NGFob0hQd0xOSlZ2a2J1cGRkWk5DekpnTGZWck0rbDgz?=
 =?utf-8?B?YkE0SFUxdENBMkNDWCtYUUViOU9mQzUrRFFQSVp3SlY2OEhQVlFpQm95eFd2?=
 =?utf-8?Q?pX1yhvAjXEczeHU8=3D?=
X-Exchange-RoutingPolicyChecked: jz2Uv2aP0QGiyZ+getlnMGEhE8pnN0p6ba4jkf1KpqmyMydv2WTJn8W6Na7y6TUbyVmD3W6zWV6hjmD95hp2dCIg7LI+6XGn1+rYC8I6HhyuawlOiOO4Yt7Iy0oxHqdMaoD4frmUEbbwt/4sl5FnFNItwj0otWLYzi4WJ1ROCK3Tn4PfoSAohJHP8fW0SD/EbHHWJDsvjbdgkZ/icj232iJZyWqqhULWYoWcawDfwV9jgvAG4yAMH3G5Znsi7wruNny0Ku6eAlu4v/i2AMi21vAZMAsSacTOdc+X82YSdIyh8jimm2r0gKd2IVVo7wIC/uYnUlvGzAM/E12uRUwNvw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c69f42ae-c09b-4df7-6a91-08de8420d9a7
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 12:29:36.2521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lnCuou+UkY1sJqBZKOteF15MiZqUOc1+IG/w/KPoBsFjQcYMQhHnn4DgwNCkyPvFoJDUezSIH/fhIbL6hmhvWeWYTg61Yu3EcZ6tNMzNAao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5285
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2F81A2A9E32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Harry,

On 3/17/2026 2:15 AM, Harry Wentland wrote:
> 
> 
> On 2026-03-06 11:52, Chaitanya Kumar Borah wrote:
>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>> fixed-function Color Space Conversion (CSC) block.
>>
>> Unlike CTM-based colorops, this block does not expose programmable
>> coefficients. Instead, userspace selects one of the predefined
>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>   drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++++
>>   include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
>>   include/uapi/drm/drm_mode.h       |  13 ++++
>>   5 files changed, 198 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>> index 04925166df98..7296b844e3fd 100644
>> --- a/drivers/gpu/drm/drm_atomic.c
>> +++ b/drivers/gpu/drm/drm_atomic.c
>> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>>   			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
>>   		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>>   		break;
>> +	case DRM_COLOROP_CSC_FF:
>> +		drm_printf(p, "\tcsc_ff_type=%s\n",
>> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
>> +		break;
>>   	default:
>>   		break;
>>   	}
>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
>> index 87de41fb4459..9af73325aa93 100644
>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>   	} else if (property == colorop->data_property) {
>>   		return drm_atomic_color_set_data_property(colorop, state,
>>   							  property, val);
>> +	} else if (property == colorop->csc_ff_type_property) {
>> +		state->csc_ff_type = val;
>>   	} else {
>>   		drm_dbg_atomic(colorop->dev,
>>   			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>>   		*val = colorop->lut3d_interpolation;
>>   	else if (property == colorop->data_property)
>>   		*val = (state->data) ? state->data->base.id : 0;
>> +	else if (property == colorop->csc_ff_type_property)
>> +		*val = state->csc_ff_type;
>>   	else
>>   		return -EINVAL;
>>   
>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>> index f421c623b3f0..49422c625f4d 100644
>> --- a/drivers/gpu/drm/drm_colorop.c
>> +++ b/drivers/gpu/drm/drm_colorop.c
>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>   	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>   	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>   	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},
>>   };
>>   
>>   static const char * const colorop_curve_1d_type_names[] = {
>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>   	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>   };
>>   
>> +static const char * const colorop_csc_ff_type_names[] = {
>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
> 
> If these are intended to be used for YCbCr to RGB conversions
> will they convert from limited to full range? Or full range
> to full range? Or something else?
> 

AFAIU, the block I wanted to represent is Full Range YCbCr -> Full Range 
RGB. We have the following configuration in our plane.

[YUV range correction Block] -> [Degamma LUT] -> [PRESET CSC] -> [Gamma LUT]

With the legacy "COLOR RANGE" property, selecting limited range enabled 
the YUV range correction block.

I still need to figure out what use-case does the degamma LUT in between 
the Range correction block and the Preset CSC serve since YCbCr to RGB 
conversion will take place in non-linear domain. But it makes me wonder 
if we can have "COLOR ENCODING" and "COLOR RANGE" property within the 
same colorop like you have been implementing in [1] or should they be 
represented by separate colorops.

Uma please weigh in if you have something to add or disagree with.

==
Chaitanya

[1] https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop

> Harry
> 
>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",
>> +};
>> +
>>   /* Init Helpers */
>>   
>>   static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
>> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>   }
>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>   
>> +/**
>> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
>> + *
>> + * @dev: DRM device
>> + * @colorop: The drm_colorop object to initialize
>> + * @plane: The associated drm_plane
>> + * @funcs: control functions for the new colorop
>> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_ff_type enum values,
>> + *                    created using BIT(csc_ff_type) and combined with the OR '|'
>> + *                    operator.
>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>> + * @return zero on success, -E value on failure
>> + */
>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>> +				  u64 supported_csc_ff, uint32_t flags)
>> +{
>> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
>> +	int i, len;
>> +
>> +	struct drm_property *prop;
>> +	int ret;
>> +
>> +	if (!supported_csc_ff) {
>> +		drm_err(dev,
>> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
>> +			plane->base.id, plane->name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) != 0) {
>> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
>> +			plane->base.id, plane->name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_CSC_FF, flags);
>> +	if (ret)
>> +		return ret;
>> +
>> +	len = 0;
>> +	for (i = 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
>> +		if ((supported_csc_ff & BIT(i)) == 0)
>> +			continue;
>> +
>> +		enum_list[len].type = i;
>> +		enum_list[len].name = colorop_csc_ff_type_names[i];
>> +		len++;
>> +	}
>> +
>> +	if (WARN_ON(len <= 0))
>> +		return -EINVAL;
>> +
>> +	prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF_TYPE",
>> +					enum_list, len);
>> +
>> +	if (!prop)
>> +		return -ENOMEM;
>> +
>> +	colorop->csc_ff_type_property = prop;
>> +	/*
>> +	 * Default to the first supported CSC mode as provided by the driver.
>> +	 * Intuitively this should be something that keeps the colorop in pixel bypass
>> +	 * mode but that is already handled via the standard colorop bypass
>> +	 * property.
>> +	 */
>> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_property,
>> +				   enum_list[0].type);
>> +	drm_colorop_reset(colorop);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
>> +
>>   static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
>>   							struct drm_colorop_state *state)
>>   {
>> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>>   						      &val);
>>   		colorop_state->curve_1d_type = val;
>>   	}
>> +
>> +	if (colorop->csc_ff_type_property) {
>> +		drm_object_property_get_default_value(&colorop->base,
>> +						      colorop->csc_ff_type_property,
>> +						      &val);
>> +		colorop_state->csc_ff_type = val;
>> +	}
>>   }
>>   
>>   /**
>> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] = {
>>   	[DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>   	[DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>   	[DRM_COLOROP_3D_LUT] = "3D LUT",
>> +	[DRM_COLOROP_CSC_FF] = "CSC Fixed-Function",
>>   };
>>   
>>   static const char * const colorop_lu3d_interpolation_name[] = {
>> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>   	return colorop_lu3d_interpolation_name[type];
>>   }
>>   
>> +/**
>> + * drm_get_colorop_csc_ff_type_name: return a string for interpolation type
>> + * @type: csc ff type to compute name of
>> + *
>> + * In contrast to the other drm_get_*_name functions this one here returns a
>> + * const pointer and hence is threadsafe.
>> + */
>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type)
>> +{
>> +	if (WARN_ON(type >= ARRAY_SIZE(colorop_csc_ff_type_names)))
>> +		return "unknown";
>> +
>> +	return colorop_csc_ff_type_names[type];
>> +}
>> +
>>   /**
>>    * drm_colorop_set_next_property - sets the next pointer
>>    * @colorop: drm colorop
>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>> index bd082854ca74..2cd8e0779c2a 100644
>> --- a/include/drm/drm_colorop.h
>> +++ b/include/drm/drm_colorop.h
>> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
>>   	DRM_COLOROP_1D_CURVE_COUNT
>>   };
>>   
>> +/**
>> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
>> + *
>> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF colorop.
>> + */
>> +enum drm_colorop_csc_ff_type {
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
>> +	 *
>> +	 * enum string "YUV601 to RGB601"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.601) colorimetry to RGB (BT.601).
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
>> +	 *
>> +	 * enum string "YUV709 to RGB709"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.709) colorimetry to RGB (BT.709).
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
>> +	 *
>> +	 * enum string "YUV2020 to RGB2020"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.2020) colorimetry to RGB (BT.2020).
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
>> +	 *
>> +	 * enum string "RGB709 to RGB2020"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts RGB
>> +	 * (BT.709) colorimetry to RGB (BT.2020).
>> +	 */
>> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_COUNT:
>> +	 *
>> +	 * enum value denoting the size of the enum
>> +	 */
>> +	DRM_COLOROP_CSC_FF_COUNT
>> +};
>> +
>>   /**
>>    * struct drm_colorop_state - mutable colorop state
>>    */
>> @@ -183,6 +237,13 @@ struct drm_colorop_state {
>>   	 */
>>   	struct drm_property_blob *data;
>>   
>> +	/**
>> +	 * @csc_ff_type:
>> +	 *
>> +	 * Type of Fixed function CSC.
>> +	 */
>> +	enum drm_colorop_csc_ff_type csc_ff_type;
>> +
>>   	/** @state: backpointer to global drm_atomic_state */
>>   	struct drm_atomic_state *state;
>>   };
>> @@ -368,6 +429,13 @@ struct drm_colorop {
>>   	 */
>>   	struct drm_property *data_property;
>>   
>> +	/**
>> +	 * @csc_ff_type_property:
>> +	 *
>> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
>> +	 */
>> +	struct drm_property *csc_ff_type_property;
>> +
>>   	/**
>>   	 * @next_property:
>>   	 *
>> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>   				 uint32_t lut_size,
>>   				 enum drm_colorop_lut3d_interpolation_type interpolation,
>>   				 uint32_t flags);
>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>> +				  u64 supported_csc_ff, uint32_t flags);
>>   
>>   struct drm_colorop_state *
>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
>> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
>>   
>>   const char *
>>   drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type);
>>   
>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
>>   
>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>> index 3693d82b5279..f7808e7ea984 100644
>> --- a/include/uapi/drm/drm_mode.h
>> +++ b/include/uapi/drm/drm_mode.h
>> @@ -968,6 +968,19 @@ enum drm_colorop_type {
>>   	 *         color = lut3d[index]
>>   	 */
>>   	DRM_COLOROP_3D_LUT,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF:
>> +	 *
>> +	 * enum string "CSC Fixed-Function"
>> +	 *
>> +	 * A fixed-function Color Space Conversion block where the coefficients
>> +	 * are not programmable but selected from predefined hardware modes via
>> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
>> +	 * CSC modes through this property.
>> +	 */
>> +	DRM_COLOROP_CSC_FF,
>> +
>>   };
>>   
>>   /**
> 

