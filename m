Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D411A56798
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30BB10E083;
	Fri,  7 Mar 2025 12:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Do2tP5+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5408C10E083
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 12:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741349650; x=1772885650;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=835SWF4eBMjcXJm/rNWo0y3a5wrTJNrA0H4Nbrri/Cw=;
 b=Do2tP5+4uOaJlTK8YPHefyMkKm6ARXeQwAIsMrsU4/yk609rxfMDQD9P
 zPuP7FDV2mqGYoBdkK3Dn+7Pb8mNWcbAPm34tMWtU4/4b6jT2Ht1ZTTom
 gEDdQkfoJiTkS8WHkE5Oy5eE2A7fjgMCQNG4+DBMAlEvkDovfZmZwbqrn
 KKurkOWVLtgEBUJXLUvm/TEQfmjCPWp54EGTDKGU9PeclLAF/W2qhxAM/
 RSxkKnlb5bO5b3WVKy/tagbXHVKTqBAIfSDtAFDBtc2/z5Oyt4iIPHUe+
 3PpVw57HU/QGvCo0oQ2C4B63Q0TJUmd9VR39F2QmVvqknxSlksYDj/OSn Q==;
X-CSE-ConnectionGUID: +juiSi8wR92p5IL57ApN+g==
X-CSE-MsgGUID: 0D72x8YRRRy1SZx+fye+/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="46321328"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="46321328"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:14:10 -0800
X-CSE-ConnectionGUID: Z4eesKpvRjm9mCPcLQT2IA==
X-CSE-MsgGUID: yiYEP78oTu2L6BycJTKkJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119306105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 04:14:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 04:14:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 04:14:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 04:14:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEgHdaBNJWYMcL88EEfuLHwGd7XSYX5FgufuHikdBxsvFUA7fXrpXvVp7KvuFb4X0MgNaVU88M4Jul/rHyf4POZfmvcyIlxsN7GKlbH1p4+IjuHR/2xFocGsOrcSbUiToRAL2nCHUleLL4qMW3QrIAghq8nv/h/uKxFInhqg+phsNkqpaHkTqfZiuNn93/+8yR1YbZk00eksD4IQh4l1AkG2rrF1GNa1OS/xGQYgOIlgfPDgfvGpgDtelHasiV/K5eYHfMdjuy1T8Fcq09D5fh9Uknc0dGSkypWVs6oIxLnZufoUdtPqKCa5s9vYEfdZhruBu8rmqcnxBQYis4aF4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=02R0LhTJ8TF2Iw14WMtuqu9BcQrEUuWeQRNkgoQTaXc=;
 b=Uxzs9IVAgK46bhsZadHgAeNBob2SDH5BXzVKSMLPUng3JSHSxVLZtnt/LTYl7rvNawV73c1cuPQbJ8+srlYW9kSzq78k9bAARs4S3Jb5YD3Dsq4V5E3njhzwPeyieXRHCPL7A7SXm74/4yGkh5QB1YfL2hs/b18qTenbsKiDpWX6usMUGgpm6QjoU/y3dtzgSisOE/wBGx4thhB3P316jb8nCmR9shHwlq8TXvnQDNyl3cHWfZ0lQ9iblIEVGis7odBNEgn/DQEfn+jRWX6bPukx0yuylxz2P+7crtF2Bj5FNWI06OmRt23CSmxizvRVooyd3uXQul8fRRRmTPpEFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 12:14:05 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.020; Fri, 7 Mar 2025
 12:14:05 +0000
Date: Fri, 7 Mar 2025 13:14:01 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <vctqfca6rg2sui7ijymprzvpjip5faclunmhi7jyam3jhqcndc@s5siufouwpuj>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
 <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
 <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
 <174134708564.785137.4586842576093518384@DEV-409>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174134708564.785137.4586842576093518384@DEV-409>
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|DS0PR11MB7631:EE_
X-MS-Office365-Filtering-Correlation-Id: 9daafa39-6cc6-4021-523f-08dd5d718e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1V2NHRJcHorK1pvcEJLQUthWXAxTTlpRFVtd2RGbEZDOFBnQlcvdHFFNTB6?=
 =?utf-8?B?RVBBVlBaclE3ZjhZcFVwc1hJUkdEVCtpb3k5WjlSK0dlOFcwRXlRWTR0NnVa?=
 =?utf-8?B?WGhpa1lvQlpvWk84RlBEaUhHaGdVVzQyMXJxSmxXcDE3TjFwcmtqMDViZGRH?=
 =?utf-8?B?a2lNL3NnbU1WeUR0OUw5OTNLQUt4QTRXQnJDekJxa1ZXaURMS3RrZHltckov?=
 =?utf-8?B?NHNibTNZMGs0WTRiZWQwbm42blBEQkVSWEozR1E3dXViSHVXcE1ERGxXNWM2?=
 =?utf-8?B?V1pPRm1SWDF5UlB5MTJ4MmtuUjJ6YnAyTDlEN0FoYkh1U3AxU0VDQXFKQVZv?=
 =?utf-8?B?bzc2emNTbTJVYm1ReThZRDRpdEFrcUNJQXZESVZtTXNZdDNoWnM1TGlMWFJ4?=
 =?utf-8?B?SWJxUUFwdjJIUmtwQVJveElYdmZEdURYSHlzSVVyZm1lL2xNay90R1JrTkRU?=
 =?utf-8?B?Ymx0SW5zRmlNWmdzWU93KzAwTGtOU2lZR2svUDFoa0N0ZzF5V3h1ZnZleXF5?=
 =?utf-8?B?dDNvVW10WTEwOThla2xkNytzR2VKQzRzOWNZVEx0RWY2SnRCdVFWN1ZUQ245?=
 =?utf-8?B?QkZiVEtCVHNGNi92enN3UE9reFVtY3VPcnJEaEp5UTFPNCt3R0FZdWVGSXVu?=
 =?utf-8?B?TFdoZnlRK1ZETG0ydzBtUkRzRHpUWnZRMXY5N2lBdHNHWHZRVnJFaC8yR3Fk?=
 =?utf-8?B?Y243VlVETU1EUWdWL0M4eGtTMFdTK0VKYjl1dDFTaVkxRnlpOUtYOFQxRjR4?=
 =?utf-8?B?TTczby9LR1oyNkpJL09xcTNFeTRvUHdjSDhxQmxwM05EbXFQdFV4L1k1ZGpD?=
 =?utf-8?B?NHVXK3AxNTg3ZnFodnBFV29ialJxdDVYaTRsVnltVy9jeGNJaXV5WHN1ZWQ5?=
 =?utf-8?B?SUV4UnhaZVJ6VlFMb1d5ZmYycHBNSEg4SGhaeVVVL3p6SjZUT1FQdFRKdDdL?=
 =?utf-8?B?ajZEa1JDM0ozZTFocmxuajZIVkdJMTFUZkxXMHRlSm9QY1lnQmE0UmxsMmhO?=
 =?utf-8?B?RFFwY1p6a01NNkJYQm13UW5yNWVQR3d6dXdOUjV1d1hub0EzaGlKNFlTdTJH?=
 =?utf-8?B?RUxzQ3NvV0tDZTRDSmZOSGNLVlMyQWpwLzZEOU9RTHRkMVlVWkFXRzJubnp1?=
 =?utf-8?B?dUhvNGFmRHZrc1p0MHQzU2FCVVQyNDhoMFNlcDVvcms4U1hJcm80OW1aVEdI?=
 =?utf-8?B?VTJSSUdzZkIvVnh3dVAxbFcwVHhJVGErdnJIR00xTEludllhT05MZGhnTEY3?=
 =?utf-8?B?cnFyRFRFK0lYem1LenUvKzVubktuWmpPb0x2bDh6Y0JTQmdscHN5RytYajFl?=
 =?utf-8?B?RWwyZklncTU0eTRBaTVTRWR5alU3bzJOYjFmVXpKdnlzaWFXV0pQbVBpbE5x?=
 =?utf-8?B?RzJXRGhiZmpFemF5S0QvS1QvQjJpVkdYREVoRWRFeWVGUFpaK2MvUzVjTmZi?=
 =?utf-8?B?bUQ2bzZzdFJYUmFkQ25rYUNSRzQrMkhyRlE4K1VjNjFaOWM3VjBoUFVCZXBn?=
 =?utf-8?B?SjF0UVRZY1hjUzRBMUJ3VUpwZXJBT3RTVlVPUHk2WkI3dVlKZjBNTEE5djFI?=
 =?utf-8?B?VVVGVXVmditCU1o4MkVpNTRUZzV0NGxYN0FPeTU1c083bjBCVlgrNE9LM1RS?=
 =?utf-8?B?eXdRV1FtaWtpbE5aL1ZTTGpZemxEUnVub1B4SWxsaXdUNzFNZ01GMXVZNDBS?=
 =?utf-8?B?d05USkZpMGJCV1hhclpxOUhGaE9OQzBuTUgrOW5JOHFHc1pxMGMxY2VCZWx5?=
 =?utf-8?B?SkpIRXN3dmJ2SlcrOWFpMnBmTFk0NytaQkZOSzZmR21kNGlpS0ZBV1VOUDVO?=
 =?utf-8?B?NlBtV2I4N3k2S3JKQ1VhK1FJTDFWc04yZTdjT0JSZWFXMlVINUJlTTArTFNt?=
 =?utf-8?Q?xob2pQUvwun2K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REZ0U3BOQ2J1dGNQUDZVOExVTXdJaWd1ZVVSRTJvWUluRFhEbHUrT1VqSWFK?=
 =?utf-8?B?WjZ2OU5sTlBwd1NhN2ttRU0vY2Z1d2lDL2hON3FxSWZCQ3RnS1RFN3NlOGpj?=
 =?utf-8?B?ZGxKbW9mMXliZ1JicVBBc2tLQVI0MUM1UW5iMzIzekJUaUtkNGdFV3I5RHY1?=
 =?utf-8?B?SkhhMmY0OEFhSVViL3Bia09lWXliejlGT2xIUHJYenNKWkJ0cVhPNmY1YURo?=
 =?utf-8?B?eUQxdHFFZEE5dSt3WlV0elBMSzZGTUZHNjhTZjllMldhVGlzQk5WdEdZM0gr?=
 =?utf-8?B?UGM3Zm95MnpmU29wNFByemxWQTNIRHFrRkR1SW9WZFVWTVhrNU9DRnpqR1JN?=
 =?utf-8?B?N29yWG0xMUd6OUpwK0xDTmQ1YldEYlozWFlpZzhCczA2THNrV1VSTVo4UlJ4?=
 =?utf-8?B?WTEvOXM0YWw4dXcvSGY5ekNqN2hQWHRFTEQ0RnpzTUwycVZqU2lsTkN6V0RD?=
 =?utf-8?B?dStnY0FUUFFjaFEvNjNVTjQ0SFF4aFJ6aUphTkdqaUxUU0dTMXhHSWxJci9V?=
 =?utf-8?B?NGd1a0lMQndRR2IvWnVhdngrSlhwRjVFMDVtbG5OWEtTU0QySUlyeGU4cTd2?=
 =?utf-8?B?SmxjdG1TMzJHeUo3Mkt0NUJ1eXRUbTNZTXc0OGN5ajcyZlBDVkN5MHdGYURF?=
 =?utf-8?B?S216RnZrYldkQVV3WnBjOWVoRUJKUkkraU9WdjZNWEZKMDVOT3ViKzBVdTN4?=
 =?utf-8?B?MGduNzBlY2c2Z1JjeHRBWTFJV0R0TytzWmwzRDBhZWJabjliMWxlZ3YzYjNG?=
 =?utf-8?B?QnVRaksyVlBjd2l6YkVqbjdIMGRSN0RBV0Q3UjlUNUdQTTdSaDFpVkVzbXZY?=
 =?utf-8?B?VEh2RWhMY2tEV3NEQ0xjTVhQSmZGajlYcWUvYUFTd3ZnYjdGWjdOcFlTOWhm?=
 =?utf-8?B?ditBSUtJdG4yeVhTRTV3KzR4WitDb1lRU0QwRmF3dHZ4MEJYTndzT1kwY3k3?=
 =?utf-8?B?TjNZamZlM0hrTFFsRzh4ekx1TFNJTVAzUnNIcXdkVWhTbkYyT0J6UjBZdTR3?=
 =?utf-8?B?L2xwalNYUVZDVkJqbWRMMzRuZkoxQ3RiRzkzbHZTRHREc2NWV0JPU0xMZ1Jl?=
 =?utf-8?B?VEFyM0d2V3FGaUdTY1BYNDdNMlExYnlLR2FSN0piUmx3OEltZEY2YnRzNXh1?=
 =?utf-8?B?UUdLNHBOYnBQRUJ4aldOb0grSklEOXQ2Nlg1TVYzcTgrYWw1TDRsajlVUU9D?=
 =?utf-8?B?aytmMU5lMU5NV2k1eC90bVR1d1A1U1RxcUpyV1g3ak80UGY2Q0dsb3ErNDM5?=
 =?utf-8?B?U3Z4Sy9xZytsNmpNcnFKa1hzUVVSRkx5UWJDd013d0czVWZRby9QSno2dG0z?=
 =?utf-8?B?Ymh3MG1mY29KdW1GbFZaUmlma0JnelNHZzRlejFYbW1qOEl5YW1Va3FQM0pX?=
 =?utf-8?B?NmZCR2ZQeW5lbDh3ZzV2Y2pYT3YrbUZUMWc3VTJVSFdiSlh6WkozTXUzSDJU?=
 =?utf-8?B?Um9uR1E1M3JlOUJoU0Q2U2tXZXVRU281ZThEL2pDUkpJNVh3d2VzTTVONjEv?=
 =?utf-8?B?YnF4RCtDY0VwSXhKdzgxMmVlUSswbGRsZ0lyNW4vY0gxOVc4WGhPb2gyaXdu?=
 =?utf-8?B?c1haRnVLUEVsOENLRHV0MWlUNDgzRzczeHdHWjF5QlMxbVI1SCtWemszb0NT?=
 =?utf-8?B?M05kWjBoOG05QlJMUU4vc2lXYllkanlZNjhJRnd0T1B3T1J2Wk1ESTB4eGVV?=
 =?utf-8?B?cjZSRkhBSHN1alZMUjdTMDFHL1N5b3Z1V0p4TXNsNk9meWNib0N0d1QrZ0F3?=
 =?utf-8?B?eTNzMGVSYmxBRkR3UDdST1JlczdRcVArZzFxOTRWUjJNVXRjTFV1QXZWeEF0?=
 =?utf-8?B?aldrWCt5aXhydmRnZTQ2WVF5WnFTZGhidVJ0eUZaTDFUZktXa2pYQVZ0Wkw5?=
 =?utf-8?B?ZThCQ1o0MUtGa1pjOHlwTitZZ3cyUEdoSERmUDcyT2U4cWRvbCsyM2ExZ2d3?=
 =?utf-8?B?ckorSzFhd2NQTHFub0V5Sjg0YzVISWVRcU1OWlBubS9MQUlTZnJadUpPNEV5?=
 =?utf-8?B?WHZEbWZSN2FrZEo5a05xUHpBRzRmZzNpQzZFWG40NTZGOFFvK3ZrckNpendh?=
 =?utf-8?B?MzlxQkY1NzVGem5Dc1lOdzhKOUdaT1IzUjIwY2NpU0Fob3hEKzU4QWdsN2pJ?=
 =?utf-8?B?YTY2cndpZVJFdTBKWEdoSnhsbjFtOGVDQVhwY21VdEV1TTdjdExqUWpGM1hl?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9daafa39-6cc6-4021-523f-08dd5d718e18
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 12:14:05.4128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yr7SQaquwJIXdh6MOxS9PQwGVJVnUmc2/ffhaTog0l+ibj7saXKUHOOrXn5TmV+dF96rG1FhSOMjU7baWbRNcNCe0x5/au0qlxkQTcMNK+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
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

On 2025-03-07 at 12:31:25 +0100, Chris Wilson wrote:
> Quoting Mikolaj Wasiak (2025-03-07 08:44:29)
> > Hi Krzysztof,
> > 
> > On 2025-03-05 at 17:31:49 +0100, Krzysztof Niemiec wrote:
> > > Don't we run into the same issue as in V1, meaning we use an unknown
> > > current->active_mm (since we run in a kthread, and cannot control it) to
> > > use as the current->mm? Maybe a better approach would be to create a new
> > > mm for the duration of the test, similarly to how the patch Janusz
> > > mentioned does it? (51104c19d857)
> > 
> > As per discussion with Chris, using active_mm is the correct way of
> > enabling current->mm in kthread. On the other hand it may also expose
> > issues with underlying tests because they didn't previously run on such
> > hardware. I think potential fixes to those tests should be addressed in
> > separate patch.
> 
> We've looked at the tests, and they should all be finding unused space
> in the mm and cleaning up after themselves...
> 
> If we put on our paranoia hats, the biggest problem with borrowing
> userspace's mm is that it gives them temporary insight into whatever
> we place into that mm. We don't expose any data, unless by error...
> Not sure how much effort we want to put on making the selftests paranoia
> proof, but that (and the surety of cleaning up afterwards) would be a
> good argument for creating a temporary mm for our use.
> -Chris

I still don't know if it would be feasible to use methods that are
exposed only to kunit to run our selftest. Do you think we should go that way?

Mikołaj
