Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61F78D35BA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 13:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB2C10EDD0;
	Wed, 29 May 2024 11:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KsoOjNA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C2310EE55
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 11:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716983013; x=1748519013;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sl8zwkVPK9TbKrppKSWxjA7LQoP3ZQRCxZbtzDKfZ7g=;
 b=KsoOjNA2bjJbC0fTQU1LuCTwNbR6nahh9jFVmQudbGo1NmIwZqLn94qL
 1ATcyDV5zllpxk/fu55XAFhvlRD4RgGijOBm+7G3Y4/vIlWUtJaqdLpok
 bsMGZ4XtL6pCeuTRX5DaDSP/z9MesK1LMAkH1c6jhfhGL4OUTM1CaZKi8
 ttwuLNvumnh/jqU0zBRCmSJJVGK6yMy0tOIY7Hpx0NEsr8Aymq1YINILK
 n67ylcUeKlNRfcbj+cZxwm5SRyiyr/fycs6h6I2qWKATIDhA/afdfMH7X
 OOwpo/yUHBHCkl65jfxF6bEWQXe+fQXAwyKgxIXusoDkPfKAYwMHPdR0g w==;
X-CSE-ConnectionGUID: lTdYK7UeSsuHuXh/5PNMdw==
X-CSE-MsgGUID: 0zVa/rEQTnC3DxzSggOBVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13153612"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="13153612"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:43:32 -0700
X-CSE-ConnectionGUID: ZLuXRzqdQAKAoKnXJvQoRw==
X-CSE-MsgGUID: jl3BSF2DRqOBSvIyreuGUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35497616"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 04:43:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 04:43:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 04:43:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 04:43:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 04:43:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8j5rnUGp7MvbM7YqOGrnvJygds/PAa7wFhKWsb/XV/Y9VtHfKV5iuZtgDwtWd7BX3HnhcRvegxp5lmewlNDHcufIifDyNlXwRa8rJeXKU8oD3hZVAUZzQcBvt3QfUDjSmIfWxB5Fe5u7dHgZ0l2Eps78ybWwS9H0tpsnT379h1oq5PZmXjDzkTlirM6Z8MPwXdsP5QwD63HDg6DW7Fxjlsq8dj/MstWVbx/OSzZIsEHQ/j9xrFQK5eIHYaCsiMboAhbc0V1Pu4O2HLP4ftS1MTMnET0ZSHkqzThAVHRUu9tV7t8hVuf32xGK6ghX7NpIQQCOV0B0FQhV54jzN9rWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76++3f4xpSsZlBuQTz9pQd1IESFkfaCAnyivqbcn74Y=;
 b=msGhqmDdXFSw37hs8WzxKP7FY4jg/MqMWIgE/yXrMAAmzE+1ZgklVXXsBm0bXphMIb5ZytKZ44ZVtc6Ie0YUqlBwbW9SiX0V5hwdSl0O/DWjDcyjaTbhiCW59Mciy5mmBCk3JvNT+7tCXU1hkD80bj4SjLczqssmfoRJwe5rvXxQ/B12HjvnoFsxr7wtFK6syCJgF387M1UpvkuH7aBNfYWWvAk4APCGgbsHwImgxW2hrtS0p3HoFS69c9M3y+5C/bHWG/wdNgxkaOW8e8nSJkMhy7wIrtyf/9IUPMQbzIyKza+cgaGIed7ovXh3edQuRqJeBzR5ioEkkZL3Xx7x4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7270.namprd11.prod.outlook.com (2603:10b6:208:42a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.28; Wed, 29 May
 2024 11:43:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.018; Wed, 29 May 2024
 11:43:30 +0000
Message-ID: <a1cd96ce-421b-4cca-81c2-69ae184fee25@intel.com>
Date: Wed, 29 May 2024 17:13:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/8] drm/i915: Compute CMRR and calculate vtotal
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-4-mitulkumar.ajitkumar.golani@intel.com>
 <4d3e0a8c-7bd8-426c-bcac-93ad38af2227@intel.com>
Content-Language: en-US
In-Reply-To: <4d3e0a8c-7bd8-426c-bcac-93ad38af2227@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7270:EE_
X-MS-Office365-Filtering-Correlation-Id: b6a60102-1cd9-4685-9770-08dc7fd48fbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amVwR0lRSU05N2o1bnB3N3JldjRVb3h0Y0lCdDFkYVBDTEpDdCtVYkY4K3lz?=
 =?utf-8?B?SjhYMDU3ZURvL1VwYlZJQWVrZXlPem5PLy9mQ09YOHNNWTNmY3krNmF1Uytn?=
 =?utf-8?B?MmJNNkxiZFFyMytwcVI2QVFSNmZ6T24xMFcrRG4xWFhOeG0yZHNvcWR3Wmdi?=
 =?utf-8?B?TkV2VnN0U25uUUMzQ1lFVDUrc1BHcmE5YmxxWXRVZE1BN1hISlhSblNPanBl?=
 =?utf-8?B?bjlZYUt2eEcxK0xpbEsrS0ZvdFB0YWpPbHdIbG1zd3lMakpqSTIrYjdyRGlG?=
 =?utf-8?B?b2Uya3F3Qk1CYVFKN2xWOFNRMlVDQ3A3TURyN1pXZHBlQmNVZzdMK0s1bkJa?=
 =?utf-8?B?YUs2bVhuU08xYWRxQnUybDRnd0hqdERySWx5eVN4UEk1ZEhsRjBIMjN4L0Ew?=
 =?utf-8?B?TXZvWnREalBvbWozcmJERG9XcXZ6RUR4aU9uSGhKNUJ1cG0yMkFmaHNKTXFj?=
 =?utf-8?B?L2ZWN29QUkhZcU1xRnVRUXRUUDVZVG11WnVIL0xobWNMRkI2QVNtSHArbTEx?=
 =?utf-8?B?Q1d5NklRM3ROaHVpK1dxSkErZWZxVEJ3c25BdmZtK096OWtSVGphWjB3dFFZ?=
 =?utf-8?B?dmZzdG5nZ0RFZmV6VE5KQmsyM2RFKzBjd1VLMUUyUnBHcFJ3NGliT0tvQkkz?=
 =?utf-8?B?aUZQUnZwdVRDVnh1eDlhd3I0aGQyTWpZN2pPN3JVdlRZYjdmU3hWR1RqVDBH?=
 =?utf-8?B?K2kvWk5FQ2kzMUJ0bXF1SG5BZjkzNmxBOE8vOUUyRkU3aEZiek81QUZ1RGFi?=
 =?utf-8?B?MmRxaFVvSW5Ua3ZBMUljbG9FS3FHUjNGUE8wZmpBVXcxR0tGL2s4ZFVyMXdI?=
 =?utf-8?B?MElpNDIya0ZMRG5QNFpSTlcxV0FlalRGbGtsSnAwYmxlY1NCMlA3cjVuZkl0?=
 =?utf-8?B?dEM4dGptRDVsL3UwYndDWXA0RXNxTzF6NXJPdHk4M0Fzd2FPOVVyaWRsQWJz?=
 =?utf-8?B?SXNveHRiaEptdU1iL00xTGVHLzR6eVJ1NHFKOGN2M0dJYTZPSUxFS3JubU9Z?=
 =?utf-8?B?Mmo5UVpjdkpLNSt3bU5mbjRyTGlIanZpcXVQaU40UVM2NXhwQkx3V05Ia3pa?=
 =?utf-8?B?VWRMQWJVcVM3eThoYnBieE1SWno0blhNZXhtVVlYelJEdCtvdWY2bW55VTZn?=
 =?utf-8?B?cDdtS3dUdkEvVVpWdTdIY1J6SEg4SlF2anRWRlo3azVsNjJWdjltUHBSOVlh?=
 =?utf-8?B?R3NmenltZ2NJa0g4TjFyK2VsMmpTU0NsL2I5dVlmVFpkNFVWQkxGNCtLZTFv?=
 =?utf-8?B?MDZ6Q1JFTXNsVnN1ZkFGWjlxUzBzYWRvWkNKUG5oVFZ2WlFoVHAvS3lubFAr?=
 =?utf-8?B?enVyVmd3MTA1Y2JDSk16elBKWW1XMU9zb0JNSENNc28wWUxBNm5ZcnJtdFpP?=
 =?utf-8?B?a2F1TEw1R2w0MjhxU3MxS1J3dmY4S08yTnZMYUg4VUgvTUxOdjV1SjRsZlAr?=
 =?utf-8?B?MjVCcFhKYWNuMk01QUVHTVIwamloVGZnbTN5bEIyeVVmYm1xRmtzbVlyTDUr?=
 =?utf-8?B?dWRpcnNnS21reUZMVzhmY1lYdkcyMmtXc3RDczNzRS9pYmtkVklYVXZQalha?=
 =?utf-8?B?ck5oeTZDMHByMU50dUJDWWJMdHB3am5NaVVrV1lUL0xaZVdjL2ZkckN0RExC?=
 =?utf-8?B?TGJuUTVtMzdMRFJ4N29oUk9aL0JmUmZWRFp0c2JzY0t1cEh4Z1ltRkp5OC9S?=
 =?utf-8?B?bzhNZTlkNWpNTnlyMSszaU5ab2RhODVqSWI0VkVUQkFmN1ZNOUNKenV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlVzK1ErTU10VkdTcGJjbnRTeDBEa1pqSlZEcGthR0RWWnhJQlFwNUF6UFJ4?=
 =?utf-8?B?QkRQQ1FwNlM5eUtKc0QxVmlJSHkvY1FQbFBBdm5TTzhqZ3gvUmJZNGVEWmRz?=
 =?utf-8?B?MkJ0WXFtYVVpSDc2ZDFITWNpd2JlY1BBL1FyOTNycW5OcHIzVk92Y1BzYkxP?=
 =?utf-8?B?eVFUQ29mNldJeTNVZ1dHL1pUV29YemlVdWZvUmNueUt1ejdvbjRGbXV1UGVk?=
 =?utf-8?B?LzVGNTdONkdQS2FPSGd2NkV2YzYyQ3BZQzBxVjZGTE5pL1lQZHUyNDBBcHJY?=
 =?utf-8?B?QzB5eXFFcHM5Y0NuYWRvTVJDSWc5UDBpWU9mNk8rS2RCU0dNRkg1ZmxPQmZG?=
 =?utf-8?B?VjVqQ0lzL3JWanpsS1laSHdvcFFZYWFLanQ0MkdXVTNjQ3lyL2J0TTBMWmN4?=
 =?utf-8?B?OFZmRFhvZUNMUFlJM3NEaUVoak44UlFKek4zMml2cFFTM1dtM0syNkVxcWlH?=
 =?utf-8?B?R250SlR5Z0pHcGIyV2ZJUHNQbG42ZG9qOUJPMHpzY0FqSlZhSlVPRHFnc2pl?=
 =?utf-8?B?djkwSWZZVWMzcHE4dWRVMm1ERDhKZC9XM3pSbEdubjczNXdlL0UvbHNXdXE0?=
 =?utf-8?B?N0UwUkZ0YmZrQXNSaXM1MHhWUVBxbUVmWm9wOXAxcnZ1eENEam8wSGd2Lzdv?=
 =?utf-8?B?cnZqMWFjUXUrK0NqaFE4Z0NMSVRaTlpTUGUxVDlhWGZZRVdHTURwZjJpUUpp?=
 =?utf-8?B?bHc3Zlp2VmxEdWNTVkp2VGt3aU9UR0hGUTY5M0ZzRTlSWWpNNXlwVnE3UWll?=
 =?utf-8?B?ZlJiTEIrWHhxRjUvS24wNnNTOWpRTGFtaWdzY1RBTHVDN1hnNXNIMWE4NTFl?=
 =?utf-8?B?dGtwYVNsQXYyRGphU2pQMHAyNTZuNGtnWllrTURQalJxK0RFY0E5bitKWlRy?=
 =?utf-8?B?b0JBb2pxL2Rhc3h4QWxLWTNqMmZEeTkyS1FMR0hIWHh6aklLN1RrMDZFTTJy?=
 =?utf-8?B?MVpNSkgvZnNXSDBIajdzSHdkWVpBZC9HS3lCK0dZRnJXT3d5MmY0QUtzTnda?=
 =?utf-8?B?d2M1SFA2RGZ6U3h1QWhMYTQ2QUNJcnJYVkwrRlh6Mk1FYW10QXE5YkxZSldj?=
 =?utf-8?B?bWRUbldoQkl2OTBHTnNMcU5Id2padHc1UXFLVDhIcDNGZUJ5K3JNdXdQMmRL?=
 =?utf-8?B?dXg1cWJvLzk4UjFIazk0akx6dW56TVZWdXBUdXMrRE9HUjFybkxDeHpzNmVj?=
 =?utf-8?B?N2ZwTXN5RndTam5wNWZZVG5Gc1JUK1VGV1JwZ1VmcUJ2RWFRVFJ5VFhQblA3?=
 =?utf-8?B?b0t4VldWTmVZQ1Q5YU5HUGF4KzhEbU9xYnNTSTc0ajdIT1A1bnZRYWZ2dkNv?=
 =?utf-8?B?QWxPQ0JHZ0htM1E2K09acEdkZEluRnJNZ0xjYkFHTEJwNjhSVVFwdU5aazN2?=
 =?utf-8?B?U09lR3ZwaXVSK29Rd0tDemllSngyanhCVi9hZy9hdVZ5bGtZcW52U0ltdkkw?=
 =?utf-8?B?U3crZnFaTEFoVy9sSkdTYlBrSUVXbnFrdWtRR1l6cmNUTUE1d1BYV044R2Ex?=
 =?utf-8?B?YjJocXh2WVMzeGU4WlBUN2JvNGNPR1ROUnQzSFE4S3doYys5OE05SzhGZlBK?=
 =?utf-8?B?OExGb2dtKzRZc0QvR2hBdmRmZFBOak1RQ2JLZnp6aCtiL3N6dU9idjcrUjRW?=
 =?utf-8?B?RWg2TVpIbEFYSUxkRC9jRU5KM2srMDdJYURjQkJlYUR4SW5WUGgvZTY5MDQy?=
 =?utf-8?B?dHZ1RnVGakdtOGdIL1ZnQ0xZSkF5d0JWNmUyeHdJV3pPdlpZVmNOMlZyVWNj?=
 =?utf-8?B?cUFVVlhYVDFRVk1SY2xOb0hQSWR0K1JDRk9YSC9yOGdYTGdmeGJVczRHMVRL?=
 =?utf-8?B?OEsxeTNnenJaR21hcGQ3cDJjQzZ4TE52YURhMEFZNlMrS3lzMTF5SUNOSVZ1?=
 =?utf-8?B?bHlxSWdwSUEyWEN3STAxOVc1d1U0enNqbU9wSENObVY3d0M2WFg1WmM3MjBx?=
 =?utf-8?B?Q3Q4QmhINGprcUk2TVpiSGd5OGFjOVZGakhDVUhVU2RHRUt4UkhGd09GRU1D?=
 =?utf-8?B?SU1CdzNsK2sxcjU0NVh1MHhrdUxvUmY4b3lORGl5aTFNMnJkQWZRRjZjcWhw?=
 =?utf-8?B?MTVOMmUxSXd5U1ZlSTJmZ1hOdURCRnNENjR5TERTZ1VPSzRnWjd4SXRaamxL?=
 =?utf-8?B?S0lNVHRFRkR5VUtHY3VsZ2hJa3VyQVZEL01veENrM01idXZ2NE9TdnBZNnEx?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6a60102-1cd9-4685-9770-08dc7fd48fbf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 11:43:30.2215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d8vuEVCzGlmGKfAlK7uhBPF7RwodpT4R+0+xpRPApDYrMs5LoF2x/ZnuL9xSJDxVtlEWyISdRMHIxfbdUYFthyzpsnWXm2z7xTmaDgGIGKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7270
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


On 5/28/2024 3:04 PM, Nautiyal, Ankit K wrote:
>
> On 5/24/2024 3:54 PM, Mitul Golani wrote:
>> Compute Fixed Average Vtotal/CMRR with resepect to
>> userspace VRR enablement. Also calculate required
>> parameters in case of CMRR is  enabled. During
>> intel_vrr_compute_config, CMRR is getting enabled
>> based on userspace has enabled Variable refresh mode
>> with VRR timing generator or not. Make CMRR as small subset of
>> FAVT mode, when Panel is running on Fixed refresh rate
>> and on VRR framework then only enable CMRR to match with
>> actual refresh rate.
>>
>> --v2:
>> - Update is_cmrr_frac_required function return as bool, not int. [Jani]
>> - Use signed int math instead of unsigned in cmrr_get_vtotal2. [Jani]
>> - Fix typo and usage of camel case in cmrr_get_vtotal. [Jani]
>> - Use do_div in cmrr_get_vtotalwhile calculating cmrr_m. [ Jani]
>> - Simplify cmrr and vrr compute config in intel_vrr_compute_config. 
>> [Jani]
>> - Correct valiable name usage in is_cmrr_frac_required. [Ville]
>>
>> --v3:
>> - Removing RFC tag.
>>
>> --v4:
>> - Added edp check to address edp usecase for now. (ville)
>> - Updated is_cmrr_fraction_required to more simplified calculation.
>> - on longterm goal to be worked upon uapi as suggestion from ville.
>>
>> --v5:
>> - Correct vtotal paramas accuracy and add 2 digit precision.
>> - Avoid using DIV_ROUND_UP and improve scanline precision.
>>
>> --v6:
>> - Make CMRR a small subset of FAVT mode.
>>
>> --v7:
>> - Update commit message to avoid confusion with Legacy VRR (Ankit).
>> - Add cmrr.enable in last, so remove from this patch.
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>>   .../drm/i915/display/intel_display_device.h   |  1 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 99 ++++++++++++++++---
>>   3 files changed, 89 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 803360fcb0cc..f7e82d1e2bf9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5437,6 +5437,7 @@ intel_pipe_config_compare(const struct 
>> intel_crtc_state *current_config,
>>           PIPE_CONF_CHECK_I(vrr.vsync_end);
>>           PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>>           PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>> +        PIPE_CONF_CHECK_BOOL(cmrr.enable);
>>       }
>>     #undef PIPE_CONF_CHECK_X
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h 
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 17ddf82f0b6e..b372b1acc19b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -71,6 +71,7 @@ struct drm_printer;
>>                         BIT(trans)) != 0)
>>   #define HAS_VRR(i915)            (DISPLAY_VER(i915) >= 11)
>>   #define HAS_AS_SDP(i915)        (DISPLAY_VER(i915) >= 13)
>> +#define HAS_CMRR(i915)            (DISPLAY_VER(i915) >= 20)
>>   #define INTEL_NUM_PIPES(i915) 
>> (hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
>>   #define I915_HAS_HOTPLUG(i915) (DISPLAY_INFO(i915)->has_hotplug)
>>   #define OVERLAY_NEEDS_PHYSICAL(i915) 
>> (DISPLAY_INFO(i915)->overlay_needs_physical)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 3b250e92af98..3fbedd7366bb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -12,6 +12,9 @@
>>   #include "intel_vrr_reg.h"
>>   #include "intel_dp.h"
>>   +#define FIXED_POINT_PRECISION        100
>> +#define CMRR_PRECISION_TOLERANCE    10
>> +
>>   bool intel_vrr_is_capable(struct intel_connector *connector)
>>   {
>>       const struct drm_display_info *info = 
>> &connector->base.display_info;
>> @@ -107,6 +110,59 @@ int intel_vrr_vmax_vblank_start(const struct 
>> intel_crtc_state *crtc_state)
>>       return crtc_state->vrr.vmax - 
>> intel_vrr_vblank_exit_length(crtc_state);
>>   }
>>   +static bool
>> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state, bool is_edp)
>> +{
>> +    int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
>> +    struct drm_display_mode *adjusted_mode = 
>> &crtc_state->hw.adjusted_mode;
>> +    struct drm_i915_private *i915 = 
>> to_i915(crtc_state->uapi.crtc->dev);
>> +
>> +    if (!(HAS_CMRR(i915) && is_edp))
>> +        return false;
>> +
>> +    actual_refresh_k =
>> +        drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
>> +    pixel_clock_per_line =
>> +        adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
>> +    calculated_refresh_k =
>> +        pixel_clock_per_line * FIXED_POINT_PRECISION / 
>> adjusted_mode->crtc_vtotal;
>> +
>> +    if ((actual_refresh_k - calculated_refresh_k) < 
>> CMRR_PRECISION_TOLERANCE)
>> +        return false;
>> +
>> +    return true;
>> +}
>> +
>> +static unsigned int
>> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
>> +{
>> +    int multiplier_m = 1, multiplier_n = 1, vtotal;
>> +    int actual_refresh_rate, desired_refresh_rate;
>> +    long long actual_pixel_rate, adjusted_pixel_rate, 
>> pixel_clock_per_line;
>> +    struct drm_display_mode *adjusted_mode = 
>> &crtc_state->hw.adjusted_mode;
>> +
>> +    pixel_clock_per_line =
>> +        adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
>> +    actual_refresh_rate =
>> +        pixel_clock_per_line * FIXED_POINT_PRECISION / 
>> adjusted_mode->crtc_vtotal;
>> +    desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
>> +    actual_pixel_rate = actual_refresh_rate * 
>> adjusted_mode->crtc_vtotal;
>> +    actual_pixel_rate =
>> +        (actual_pixel_rate * adjusted_mode->crtc_htotal) / 
>> FIXED_POINT_PRECISION;
> I am still not clear about this part. isnt actual_pixel_rate simply 
> adjusted_mode->crtc_clock?
>> +
>> +    multiplier_m = 1001;
>> +    multiplier_n = 1000;

I think multiplier_m and multiplier should be 1 as initialized above.

AFAIU the multipliers 1001 and 1000 are used in videomodes with 59.94, 
71.928Hz etc.


Regards,

Ankit

>> +
>> +    crtc_state->cmrr.cmrr_n =
>> +        ((desired_refresh_rate * adjusted_mode->crtc_htotal * 
>> multiplier_n) / multiplier_m);
>> +    crtc_state->cmrr.cmrr_n *= multiplier_n;
>
>
> This seems wrong: As per bspec:68925 this should be just: 
> crtc_state->cmrr.cmrr_n = ((desired_refresh_rate * 
> adjusted_mode->crtc_htotal * multiplier_n);
>
>
>> +    vtotal = (actual_pixel_rate * multiplier_n) / 
>> crtc_state->cmrr.cmrr_n;
>> +    adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
>> +    crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, 
>> crtc_state->cmrr.cmrr_n);
>> +
>> +    return vtotal;
>> +}
>> +
>>   void
>>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>                struct drm_connector_state *conn_state)
>> @@ -116,6 +172,7 @@ intel_vrr_compute_config(struct intel_crtc_state 
>> *crtc_state,
>>       struct intel_connector *connector =
>>           to_intel_connector(conn_state->connector);
>>       struct intel_dp *intel_dp = intel_attached_dp(connector);
>> +    bool is_edp = intel_dp_is_edp(intel_dp);
>>       struct drm_display_mode *adjusted_mode = 
>> &crtc_state->hw.adjusted_mode;
>>       const struct drm_display_info *info = 
>> &connector->base.display_info;
>>       int vmin, vmax;
>> @@ -160,18 +217,10 @@ intel_vrr_compute_config(struct 
>> intel_crtc_state *crtc_state,
>>       crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>>         /*
>> -     * For XE_LPD+, we use guardband and pipeline override
>> -     * is deprecated.
>> +     * When panel is VRR capable and userspace has
>> +     * not enabled adaptive sync mode then Fixed Average
>> +     * Vtotal mode should be enabled.
>>        */
>> -    if (DISPLAY_VER(i915) >= 13) {
>> -        crtc_state->vrr.guardband =
>> -            crtc_state->vrr.vmin + 1 - 
>> adjusted_mode->crtc_vblank_start;
>> -    } else {
>> -        crtc_state->vrr.pipeline_full =
>> -            min(255, crtc_state->vrr.vmin - 
>> adjusted_mode->crtc_vblank_start -
>> -                crtc_state->framestart_delay - 1);
>> -    }
>> -
>>       if (crtc_state->uapi.vrr_enabled) {
>>           crtc_state->vrr.enable = true;
>>           crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>> @@ -183,6 +232,25 @@ intel_vrr_compute_config(struct intel_crtc_state 
>> *crtc_state,
>>                   (crtc_state->hw.adjusted_mode.crtc_vtotal -
>> crtc_state->hw.adjusted_mode.vsync_end);
>>           }
>> +    } else if (is_cmrr_frac_required(crtc_state, is_edp)) {
>> +        crtc_state->vrr.enable = true;
>
> I think it will be better to add crtc_state->cmrr.enable = true; here 
> instead of a separate patch.
>
>
>> +        crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
>> +        crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>> +        crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>> +        crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>> +    }
>> +
>> +    /*
>> +     * For XE_LPD+, we use guardband and pipeline override
>> +     * is deprecated.
>> +     */
>> +    if (DISPLAY_VER(i915) >= 13) {
>> +        crtc_state->vrr.guardband =
>> +            crtc_state->vrr.vmin + 1 - 
>> adjusted_mode->crtc_vblank_start;
>> +    } else {
>> +        crtc_state->vrr.pipeline_full =
>> +            min(255, crtc_state->vrr.vmin - 
>> adjusted_mode->crtc_vblank_start -
>> +                crtc_state->framestart_delay - 1);
>>       }
>>   }
>>   @@ -323,7 +391,14 @@ void intel_vrr_get_config(struct 
>> intel_crtc_state *crtc_state)
>>       trans_vrr_ctl = intel_de_read(dev_priv,
>>                         TRANS_VRR_CTL(dev_priv, cpu_transcoder));
>>   -    crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>> +    if (HAS_CMRR(dev_priv)) {
>> +        crtc_state->cmrr.enable = (trans_vrr_ctl & 
>> VRR_CTL_CMRR_ENABLE) &&
>> +                      (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
>> +        crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>> +                     !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>
>
> Since vrr.enable and cmrr.enable are not mutually exclusive, this 
> simple can be:
>
> crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>
> if (HAS_CMRR(dev_priv)
>
>      crtc_state->cmrr.enable = trans_vrr_ctl & VRR_CTL_CMRR_ENABLE;
>
>
> Regards,
>
> Ankit
>
>> +    } else {
>> +        crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>> +    }
>>         if (crtc_state->cmrr.enable) {
>>           crtc_state->cmrr.cmrr_n =
