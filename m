Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCBAD202DC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437C510E621;
	Wed, 14 Jan 2026 16:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5gd/Z2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBB610E619;
 Wed, 14 Jan 2026 16:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407781; x=1799943781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rTkvG3qxVzX2GfavEdwfDJgq1H6JjbLDGe2EwI/zYEg=;
 b=A5gd/Z2ZJYMkeHpIAXsrOiQY7FXtnYtYKBrbPIjO0/aWldedI4jF0wk0
 BZAv4QpwPn6zwF/doAVw3S4J9zLVk9eVT+SPUcLZWDt51Z768A69UvH8f
 1PjokDvgBofcpS/nBE4WX7EkZ4ZgGpavN6BKY3W+xeZ+03JQ31p4hg9X6
 Z9McP9cC4a7TqL8k/a9UEwYFgBM3/9AjgveTUjJg5YhSyvb69DlQrxraY
 5KPutNNzN5DOP4uHoWymfEhQsV+IJBSHeWC8WNG3IY1MTe2UpRMGeAAUh
 Uoy89d1wAnbzbSzsWy8b39YBpHOicUvwBGb74qmR15EzreYo6IT1gm8wg g==;
X-CSE-ConnectionGUID: 5/ZQezpDTCiZePUA+lVL5g==
X-CSE-MsgGUID: MPLQETkEQ3aczR+XMkM9mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="80007374"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="80007374"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:01 -0800
X-CSE-ConnectionGUID: moTr2MOmTDKZqP5UBRwuuw==
X-CSE-MsgGUID: RDVkGXsnSKS/Lk6HcNg1QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209222554"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:00 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:00 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fU2n8ePvmiyQoh9uB8uPjZ96bfg8EnWqKAbOcV+G/nhGjEVN83uRM3ZOQGgOYPLFoEvyqaHb9IO3yQQ9LTForils01ZMUmMc3nlnV9xZk17kdKTzZsatIVqSGHbyrECC5ZbxTYIPJFnwR1GHd9J1HbyFRCA+PfMRe1JAlVeT90tdxizsl0erBOyT2c8udImKwV7NXzCkdadoN37rLdmgVeanqN1Ji9F/QyRgprxbTgxIPLrOft3pFRLmLOAFOHMUanJY4lwNWM3vh1anQNyP97puKK4A6WvAtQJ+knWqkI+FjgOKyES5c+MsJhmx2vO5EkXkJNZCAXI1eE2o2nUQDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFrSpvQqe5vXgZ1v16PaQIfsjJkzGt9MFXRMDfsGB3k=;
 b=gTRwNli51kEafNGKCeUj0viKnVz4axr1BxM+VrOO3d7+yzq1VxLqmCB3Ki25TbCEPRWGpIckpgEENejRf9Zq5NeCx02axZ8+paGRA57+PJNBVh07gdABYYKoVLVtFqDgapo02i7nxIH0dFRdJFQidA3j+GjK26w7hg4wgWqjh/vwWQRpKYZuoGxvW++guI7G097FVHosgMPAV4WeFxPbVkzd7azU4vdbOyKE0YJurmS7fKsxp1t3MptKNFndwMiiFtS7/qQlRwQDJrDREmrbcwjODtsZ7XZiNJ45UL93aVvFzTcfIyKfmnOncUXmsB81jnns7OvonB14nVWe1KhxiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 16:22:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 03/15] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Date: Wed, 14 Jan 2026 18:22:20 +0200
Message-ID: <20260114162232.92731-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7676:EE_
X-MS-Office365-Filtering-Correlation-Id: 766a06df-c56f-475c-1650-08de53892d6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STIyVjU0L1EyYXgzVTE1WjNBZCt5OEpXM1VDbGJqd1pvNjEvUkUrbXNKbXRq?=
 =?utf-8?B?aURLeENEL0s5YUNqdmdoRFZING53SkZtYWdaYkFVUzhRcm5QMk9JTnRhMnRR?=
 =?utf-8?B?cTd4dGxDQ2JEUGh0RjRnME5ha2lqTThkT3pHRTVid1NPNXJYOTFzcXVkb3ow?=
 =?utf-8?B?ckwrZElXVHZxZGx0L0F5c1hEMitPaWk1RjhGSkxwaG94bHJCK3FDYjBRcDBI?=
 =?utf-8?B?T2c3eFYzZkpoT0NBRVpCazZmTG1BZmJqQnY5TjRaMk5VQndUSUtBVnJKclph?=
 =?utf-8?B?MFZxSmV5MVNVdHJtakUwQ3VaNTh3bTJhdXZzemxma3A2U3JWcTR6RUNMaElW?=
 =?utf-8?B?SUtzanBlK3N1YWdYaWNLOUVkcU54c1FmRVBEZkIzT1dzTmRwdXZreTJhbFlL?=
 =?utf-8?B?aXlrajRaSE5UbCtja1huSkdCTGgvMU5oMFhLb0VRZHVpZUFoc2MvQ1JzMjA4?=
 =?utf-8?B?SEkrQWw1R3UvNkJ0eXlrZVhXZ2NSajdCTmx6bVBIeWYrS3IrTmJZcGVOeWNs?=
 =?utf-8?B?a3JjWVpqYjhTOTYyQWxobTRnMWkwSldQMHdDUnVES0ZPSkZscXNKTFBRbEdY?=
 =?utf-8?B?blI0SkN5cFo0UVVuNE5YN3crU0RuTUpMdHdLTmhVa3lkTmR6OVl6ak5XaEQ0?=
 =?utf-8?B?SHhNQ0hpaDFwU0hZYnRXejZXN3FPNURVTTQ4OUw2a1d0VzVvcFg2ZnZ1V0Y0?=
 =?utf-8?B?QW02eVdNQW5wUmdqNFpMdjhTUlNjcXRvVWhadjdOTHFIZUNJekJqeVJTODhs?=
 =?utf-8?B?bmwrWGV4ZzBNdVpnM2J4eE1yVGwwT1lwcEE2SjdtRlM2QS96d0dqdnVHRkJF?=
 =?utf-8?B?eWpvWE12NG0yajRHZG90OU9aUHdzQkdraTl5NjVjUEp2aDVPSm9nQWtTZXN2?=
 =?utf-8?B?TnEzRWFIK0IrOE1kMGtMQlB2UmltbVpuaVFwM01zdXZEdENLSzdsT0pNVFly?=
 =?utf-8?B?VVZXV00vR3VCWTZqbURMRFFhUStsZm9UZE9Ma21RVVd5ZUlReWo5eTlNZ1ZC?=
 =?utf-8?B?bGREYlk3ak5lZmJVeFV5bExlTzFLQ3I3VTRWcW1MNXRIWk1qY3NoUC9OWVBs?=
 =?utf-8?B?dVlTSElpWTFnUk1DNjhyMHRUQ21DNkFLdXAxRktPWklEdEI2TVRyQkI5TFlV?=
 =?utf-8?B?SkNvMmZGNmRIaGVMaVc1ZGNEWGtSYUFTTURCM0grLzVSRHRjWi92ZUUvWUZW?=
 =?utf-8?B?TVdUdE1QR3kzS24zdWRnWVNOZFo0cEJYZWFxNnZqbkNiek9INkYwR1ZERmNx?=
 =?utf-8?B?Um9JQm1ib2tiaVlpcHVldHVYMEJOYVBmS1V2TXlncFFDYlA0Mkw3QStRMFhV?=
 =?utf-8?B?UUNocUR4Rk03NnNuR3JvWCtST3BvVGMzTHNzODl5eU1jY1g2SjFUMDVzY05S?=
 =?utf-8?B?ajFCR0h0UW9pa1ZVR2YxTW8xZ2kzR3c1SEJRdVd3Y05MMnk0RTRITkNtRm5G?=
 =?utf-8?B?WlhLT1dBM3g3V3d4a25FdUhRbHE2U1ZUZmljcW4rQ2twdXMvaXB0NGdxN1p6?=
 =?utf-8?B?MWxVcktqdzZKSVFqODYzdnRtYWtZemNlR0hOMnYvZk1nU0M0R0wyUUNldDQy?=
 =?utf-8?B?T1pha25mdEJzcVVxTjJUNTZpQ3A5TFhzMnJhdzYwSzJCODY1ZkZ1SlltN0VG?=
 =?utf-8?B?OUJFRS8yWUlLKzRjQ0tTbXJQNjN1a0JzeEw2R3l6TGpLSDZnZ01DZVFSdkJH?=
 =?utf-8?B?aXFzV0RhSTlzK0RhUmNoVlRzWkdoZGpRVTR2R2lXK0tUNHVuQTRQMjMvY0pT?=
 =?utf-8?B?NVd1VFVDL3ZHMUgyMlI2a2tDTEE5L1h3SFhKRS9jM1M2VklzRHdnUFdpNHJ5?=
 =?utf-8?B?aHFkUzlETXg3Y3hvdFJnTkJweERoOEp3aTJpd0k0QWtEQnJVbVhCNGpRR2RL?=
 =?utf-8?B?OEZCeUdPZVA2M3cza1cxMm81VlZYOTRMQ0xxN2tqRG1DVVAwakg4MzdhY2Jo?=
 =?utf-8?B?bGlSbmZiVjZMZ2RHRFlpZGFTK3pRSHIzOTRBdWZNS21tN1dkdlhpZ3NVTFNB?=
 =?utf-8?B?cjk3VFFkdkUxUXREaFprNkpiRHR1SDNmRFR4SmZwWHA2dGtnY3BFdTl5YnNM?=
 =?utf-8?B?cC9GSHBBaUp2THdxZDhxRS8vV3AzMERxSEttalhxYlRNSmVETjBWelYydm82?=
 =?utf-8?Q?ql7w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEg5bjFIcGF6RDlqeUJkRkR0Q2lqdTkxcHp4Ymw4Sk8xczFVZDBITnZDOUhD?=
 =?utf-8?B?ZXY1OUFrVld3VXNoZlpGc0ExOXVDUFNoeVp5MnN2ZG5ubExCbldrZEpuMitQ?=
 =?utf-8?B?ZmgyT2dUeEdoaGRZQ0JFdGdsRWlDS0Z0andxVDVQZVRnZlZ2V1JvdGlkQzl1?=
 =?utf-8?B?L2ZOVE0vS3RNbVRXMGJPcjVIWUhUSXgwWkFxSlBHNDA0ckIyZ09MdEE1WE9q?=
 =?utf-8?B?d1d3ZW42N3kzd1NNbDNJbmZWMTlNM2R4TFRKU2pFanpQbEEzN1ZmcmZjTHdU?=
 =?utf-8?B?NUovdml6cTNKOUpweHhDdDBiZ1ZVelZPRUNhdjdjOEI1enlyMzByM0RWa1Rj?=
 =?utf-8?B?ZWVtWU9EV2YxYStVNlR0akdUOXBmbGM1a0FZS3JhMGcxVTRJYWhhbWhwWVpL?=
 =?utf-8?B?Z3orVll0MU1Jd25rRkJ0VzM2RUljakZueEZLNkdXOEFVSVZpa1R3dlEzbjZ5?=
 =?utf-8?B?T2ZtczlLM1crR1l5Nk9RSXdWTzNUUitCRTVRYm92ZkVBTmJhK2Fia3VTUFJa?=
 =?utf-8?B?MFhOMzNEU3B0RDdyRnJhQWk1NXZWTVhOYjE5ZzlaODhDZDhxb3ZiWmJqdXUv?=
 =?utf-8?B?alJBeHhURE1qdXRsWldlNTBZcFc1WWgrK1BkcS85QnkwbDR5RjhKWHlpd1p2?=
 =?utf-8?B?NTU2aDgwcnMweWl2M1hzUzdZOGEyZmY5U2o4VnpxM1dyUnpkcmgyWkI1TFor?=
 =?utf-8?B?TXkyY3JPVDN3azY4K25pVmoxTk12cVd0cDRTTWp0UnplMkMrdVljQ1paMzR5?=
 =?utf-8?B?OVplSnJQYWsyWVNaaTIxZGU1R2xoUDcvNE95a2N4TElCNVJCbUY3VWw2RDBx?=
 =?utf-8?B?b0t5MytSZXVoTml2L3JzY2FmWHRxUlphYjNuOElabUxFcmVyL2laVHMzREZw?=
 =?utf-8?B?QjBGQWhYZGNtOVZYajBzeHJzT25CMStTcmtKSUdXaXNGZE9nRVpaMEVWenVF?=
 =?utf-8?B?a3I0c2cwNDNzVjZRdzhFOEk4dHJBUWtJa3I0WjVpQkR3M0JrMlRYUFVHY05j?=
 =?utf-8?B?Sk5vYTQ1ZnB0MDZFdWJMQ3lJM3h2MG9TN0tFcE9WMEplczhxRjM3K1dqYXEw?=
 =?utf-8?B?cCtESnV0ajdhS1dQNnpZb0RDSGszTkROMloxRVU5RHNwNmJkUFcwMWF1bWVP?=
 =?utf-8?B?RVh4VllLMlRPNitpdCtocXRRemRRWFFpY1BZNGRnVGFWeUcvd3RpZUtiR0dS?=
 =?utf-8?B?V0dyNTBZSWUrZERtYm1wZ2w3Z1p0Z1FmK0w4bkRVcmxSeHRGUURQYUlvaFVj?=
 =?utf-8?B?aXAzVUlWRVlGd2ZvUitQWmw0dTFEL053SzJNaXBLUEVsbzFFZFVHQ2xCOG5v?=
 =?utf-8?B?dWlNcXp4SCtGN2ZuYytsTjJFS2lhbFZhRnRtbHZyQlNLMlJIU0Z4aml3eGVH?=
 =?utf-8?B?NUtELzZETVBuVjBwQVUzaFRpYndNMVdLQVk2NjFrYUN4R1NLMXhDRWprbjcr?=
 =?utf-8?B?WmVXdnZoTzZpMnl5bnppWWIzd1dQOC9CaEJBcmh5TEhKOENqU1hMVzlGMU9o?=
 =?utf-8?B?d2NiYVJyczBGQy92OUxKanZucE02Unlxcjk0UGZ3T1hZaEZYd3MvN3ZJWWJp?=
 =?utf-8?B?UzNHVjNGNUFDd0lhaHBTWHJoeElFUFZpU1RqNXVGY1hHOXZWbHMyYTdGLzZO?=
 =?utf-8?B?ejJEMTFzajFXR1IxZ1RFdjJ1cmdOcm9uNmd3UjRLWjBxekJEQmtMZGJwMm1S?=
 =?utf-8?B?dU83VldMaG8yVUVqTjNPWjNhTVlhbjJ6OGk2REpxUGVtV0pSaFJEc0hZZ2FR?=
 =?utf-8?B?MkwrT3ZDS0VNQ1NtT042Yi9pYWhLdWRUVStURWRFdnFQenZtanNRSXV3K0Rt?=
 =?utf-8?B?YWVMRkNHRWZwOXovcCtFMS9JekRCQ3doaWUwQXcvSk9sYm5RYldzQkpCNFd1?=
 =?utf-8?B?WWFiTnNUSXREY2hzQ0xUUlNKR29EMkdUZndJaFZyeTlhNWNlMS9yNldWM09F?=
 =?utf-8?B?SDBUS1p6VE9wbVhvUU5TNTZvOGdRM0FkczNsQng2am14T1BIV0VXZWdzRzhX?=
 =?utf-8?B?RHg1aCtNN3N6TitHRm1WbCtVblhqMlZFbUVrNHcvWGhOTDFEMXZLT1NQeEs2?=
 =?utf-8?B?TkFIWDcwUGZKamRaem54LzZYQlpmajBpRWpqRVQxaFlvb0JZUEhZRFhQc1NK?=
 =?utf-8?B?SmRNTE5lMUpVTWpyb095WXBwcFlmMlBZcEhLZVQreU8xdzlwOWZORVpnOXRZ?=
 =?utf-8?B?bWJmLzdNU3RiWHpmNHFWL3liSzdsZ2NCUEJPc0k1WFNMMTBCVW85UnR0WlFC?=
 =?utf-8?B?S2t2d2E2dnAvcFZqZ3RJWXRHNzh6TGQvUEUrN0ZBQVBMa0kyNlREYjJTTU5X?=
 =?utf-8?B?ZnM3NjdlbjRjSWxENWhWOUdaZ2RvS3NqYTJxa3RPK2xYZEZFNTN4KzF3WGhj?=
 =?utf-8?Q?Ga5LBidhTz3wxhyNGN76EVw//DlDRpMOuNLvW+zUM1Rja?=
X-MS-Exchange-AntiSpam-MessageData-1: qJXy+hEb3SW8hw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 766a06df-c56f-475c-1650-08de53892d6a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:57.1825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4TbaiAoQurkZ0TXP31+e+BJltGUIXtTdBMCqQpCdr1jkw0zJ9yubknzeQzOXOKTBJ7ewlMqEALYzRZBd46p5Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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

Move the initialization of the DSI DSC streams-per-pipe value to
fill_dsc() next to where the corresponding (per-line) slice_count value
is initialized. This allows converting the initialization to use the
detailed slice configuration state in follow-up changes.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 6 ------
 drivers/gpu/drm/i915/display/intel_bios.c | 5 +++++
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5b64e8d6e8382..c8e0333706c1e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1624,12 +1624,6 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	if (crtc_state->pipe_bpp < 8 * 3)
 		return -EINVAL;
 
-	/* FIXME: split only when necessary */
-	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-	else
-		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ae0b922d5bc3d..9b44284728318 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3575,10 +3575,14 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 * throughput etc. into account.
 	 *
 	 * Also, per spec DSI supports 1, 2, 3 or 4 horizontal slices.
+	 *
+	 * FIXME: split only when necessary
 	 */
 	if (dsc->slices_per_line & BIT(2)) {
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 		crtc_state->dsc.slice_count = 4;
 	} else if (dsc->slices_per_line & BIT(1)) {
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 		crtc_state->dsc.slice_count = 2;
 	} else {
 		/* FIXME */
@@ -3586,6 +3590,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 			drm_dbg_kms(display->drm,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 		crtc_state->dsc.slice_count = 1;
 	}
 
-- 
2.49.1

