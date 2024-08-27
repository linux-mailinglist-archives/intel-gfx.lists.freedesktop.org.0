Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84080961793
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 21:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BE110E408;
	Tue, 27 Aug 2024 19:00:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRwt8773";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F2910E402;
 Tue, 27 Aug 2024 19:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724785214; x=1756321214;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Mbw/DF38mbc91+v8o8sUhhJTYe1B39RHM2DIlGNzbIk=;
 b=FRwt8773ai9n4/85zs4Um3Cf8mo0cALElCJT6KoW+PaY1wc5dcgsXc3G
 b1x9vCP1Zcf/Fee0UxqoSlFbryIMDQbXJ9ziDrlsRzZq89m6kZnVwHb9r
 qhMSwUb2qNGoDAWbxAhWkZwfhr5MQt0q2Fq0Z7HBGcw0+NLlrKi93hC/7
 MoDFhWmk0jSYue16rIAJyhUtamgpXjxqT2a9j+Tn4uCGtRfttoYelXhkd
 z4LR5HMLi2EhzSRdpJVoB/LuwJgWQOz2OemwEwGVu5gdHodUHoWBpEhTn
 fzQdUfzYlBRLe6GSz3N/9/VonMVkpE3Yy8uerQ3loH5dalcGsfmm2rMwA Q==;
X-CSE-ConnectionGUID: RdlBjTyfQ2y0aNcTdKO/9w==
X-CSE-MsgGUID: 7yqEMZi9QLOdaZRUdrAXGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="33908986"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="33908986"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 12:00:09 -0700
X-CSE-ConnectionGUID: nUKp47U/TVmkx+aXn6xQoQ==
X-CSE-MsgGUID: Pu7f0xueSQ69pqi2X0AV0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="62616950"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 12:00:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 12:00:08 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 12:00:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 12:00:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 11:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QfPOvLKH7jrCAgbk1oaCK97oCOs06uujzCX9FYAalXg1KdrSiF6I3/IcKxunzI7cX+CzQ5BIasBs+gztaTwBOfUnUnuXvh54Rbdt1y41voZtxdehxKDEMFAzbo6ghic61AMrm9rkmKzrJaTaCMJHZnSE8lh8ij3qbp/6Q17dAC5h+fL3uwHKdGEcbHLzq7QcNRMAvOgksu9EopAlyTM3tREdMbZ8Z19AdamFwN+Buajdc2DW7rUNui0TjcdMLFMpV3zCQSAc1VB/Taum9x3dcuEyp5iENeNSixSG0R8uDo7MzbP9VBGbdwkbQM/ueny/WOgycp4wT46CoueWbt1wMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KET+xKkYMeR9dGB3USZB4rLyNkArRvcJlLs4EvQPSAI=;
 b=Mq04mV2SKCbUP3mWgLMwZUvSXx+1NKfRX2n0uV39gcnml0PVVpex/7mEQWRUIOlraMEX7vMIHonK6vCYmgYPsR4egR31BXbyJ8qJTufRyPHHiiuagRH2LlDGgnwkoecGkwnOOkQb5v9gsYWQcVTMQ9RVLwbhqejzSLiadwCNi+qM4gz2kX4yjJkMssmwM2A7jUcCDXcn2dQoeS7tQji6+JlXVDc+iPX2/BhB1OFbtk6TO7YyAAumezpkylrwBeOcUIkNFUpPMJTlc/rVJKH1G0pVTyLi46QyrGPA/rZbWiZqk0ns/oSPcSCidrY1Sp5F6LFiCdEW7+GvVV8Y0Cixmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Tue, 27 Aug
 2024 18:59:57 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Tue, 27 Aug 2024
 18:59:57 +0000
Date: Tue, 27 Aug 2024 14:59:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Subject: Re: [PATCH v6 1/2] drm/i915/display: Plane capability for 64k phys
 alignment
Message-ID: <Zs4iKaevgkjY3i4b@intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-2-maarten.lankhorst@linux.intel.com>
 <Zs3-RrVfnDA6XSRY@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zs3-RrVfnDA6XSRY@intel.com>
X-ClientProxiedBy: MW2PR16CA0036.namprd16.prod.outlook.com (2603:10b6:907::49)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7548:EE_
X-MS-Office365-Filtering-Correlation-Id: cd309a26-853e-4869-6c6c-08dcc6ca718b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0dKcm1KaEt4QUFMSGZmd0dKU1pCeGZHVHJJWnNPbnhyN2dESnduNS9BVW5h?=
 =?utf-8?B?cStYV0JlcUppTFIvUldnMTBQNVpPT2E1a3VNM1pXMnBNcUEzUmY1ZU80eE8v?=
 =?utf-8?B?czMrVTZ6Q3NOUUJWMU9zN0JIb1VXZWc0SjdYanQ4K3dVZEgwczF1RnRvK0Zr?=
 =?utf-8?B?YjYxTDVXenp2TzlYa2hETnJVNndFdExJSDVZYy9RUSszNVdhYnJtdnpTQllu?=
 =?utf-8?B?ZksyaWhDeUp3ZUdPdE8zWklmRDl0UUtndHhkd2x2R2lvM284dmdlMFFUQ2I5?=
 =?utf-8?B?YTdiSWdkZnZ1M1NVYWdqVktWVzlsemd3NGFwR1dzVVhQdUhiVGYrYzFGZnZR?=
 =?utf-8?B?aWhrUjZBTzBWWnY4K21IOVVCRURqMWlDMWlKbndjdk1aMzhuaWo1UHRjRGFt?=
 =?utf-8?B?S09GNTIwNCtOUjBLWXNaQk9XbUszdTErTnByZ29lTzZyNEJNdFoxZG5Fbjhw?=
 =?utf-8?B?UjFiS25qbzdwNEZJYmZnTHhNMXkzajZtRHRQS2tHdC8vTmQrYlJLWkpZeUFq?=
 =?utf-8?B?VU8vRmgrWTlnQk1hK2sxekcvc0VuaDJVUG8zZk5wMUttcUtkdktBVGpyWk8r?=
 =?utf-8?B?VVJ5anpRVEFUUzZiSDV6OHpvWVhyV01VemRmaUt5dXlOY1N6UmoyTThQclJh?=
 =?utf-8?B?RTBwNUpRQlNCaHBwU21wbHFWUnBWYmpCK2M1d1NPeFVsb21IWHB6WTNJbkla?=
 =?utf-8?B?ZnFSM3hDWUVvYWk1ZEtjWnhxelFiSFNIY01PUUNBbHVFaTI1YVd1Nk9uc0dk?=
 =?utf-8?B?RjB6TW1BdXhCVUN2UGxFRFMranBPOTdKeW84ZkU0ck44NnNsdG1aekgvSG5p?=
 =?utf-8?B?ay9Ud2E3TTBvYWF0WktNeDYvNnNWRXdRcEJUdS85Y1I1UEk3TDdkeUJ3SVBU?=
 =?utf-8?B?bHZzSkFCL2pPbXorL213R1ArRWlUanJVcVRSUWNjeVVMcnE2T2lTQ21ieXFj?=
 =?utf-8?B?UHhWVU0vYjZ0elZnYkkxTjVPWW5FcUNRMVpHempXN0lRUkJvcVhFUGs2d0hK?=
 =?utf-8?B?SW01S0FYTHA4OHpSZUIxcTNOUnFyeEdYdGVVOERRWGEvdkkvakZkMmVKb0Yz?=
 =?utf-8?B?dHVqdVpBR254czRwNUtsREIwOXpZcS9md3RRU1FaM3VLTC9UaVBhNUgrNFBw?=
 =?utf-8?B?RGEwWkdkM284c3Ayd3VwcVhHaDRkeWJsRkd4WWtzTmYxVkhrdktkTGhWS3Aw?=
 =?utf-8?B?S01LZEhGODhlL2h6TXVyblA0djNHdnBhengveHV4UHg0U3pUQkNpaWprWHJE?=
 =?utf-8?B?RVlOWmlXL0RiQ1RKbS95ZkF3R2ErNVRtQUFBOXROTHpwTGN5STUxSVI0cGo0?=
 =?utf-8?B?ZlF1blhyU0NzTFdIV2pXaW5RbDFlYkRSQ3JvVXROWGpvTjZQWk9ObUtIVWlC?=
 =?utf-8?B?bXRGcWNISTV5cjc5TVl2R29Kdzc1Q1U1K083dEpSMStWSWEwbGI3cVd3ei9V?=
 =?utf-8?B?cFF0a3V3TU5VTWRCaEhzYTFjRmk3eFdmcHlYRHFhMVdyWXBNNFJTK3ZFblJM?=
 =?utf-8?B?NEF1TWgrYk1pdmczc1ZhcUtTak5FS1VFVkdTOWZWUEpqdWZPaU4wWVBLamx5?=
 =?utf-8?B?d3pBaUNHeTc0dUl5N3VYWGY1VlAwbVQ3T1dOK3Z2Qk9qQmR3Ukx0cFBDRnR2?=
 =?utf-8?B?YnJYc2MvMklBMGhZZzRlMTh4end2MkpoQUkxSk9KY0ROZ3Y3cTBmOHF4dDFq?=
 =?utf-8?B?aXVJU1Z5SUlJTkVKWm85QksydDcwQzRLSXFOR01aNlBKMG5WclNRKytlb01E?=
 =?utf-8?B?bFk1ZjJGQzk5N0FDU1NFS1JWTnFtOFNuNFJaZHNYeHN4ZjQvdmxqdGZuVHdR?=
 =?utf-8?B?VVptZjMyWkhMV3FaczV2dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjVwTGYvWGw2VWR1QVRXZGdaQjBzSUdJNXRhcy96VjJodjh0V2tkTGc1aTNS?=
 =?utf-8?B?Vy9VRWVFSGtnRkRnb3lBMG1SS0ZUVkZpMjJjeUplNzVxMnRubitQS1R3SFZ1?=
 =?utf-8?B?dCtkLzJXbXcyeXdYOVdTT3M1ajBXaDhNcFJEQUNaYzlZNkxkZ3hiU2Q3cWIv?=
 =?utf-8?B?V3cySnlxNjUyelVsOXlsV1JGRUVDcU8yUVFJSk5ISmZtN3R2cjRSbnZTOE5m?=
 =?utf-8?B?TEE4TUtndVdOdW9mdlZiN09TaGlLRzUwVktTNVFOWTZucjV1a2oraWsyK2pw?=
 =?utf-8?B?N2RiZDd6em1nU0M1MmRDbGpmeGZwdFFLbXhPU3RnOEZwTlBhUzJkTjJTam4z?=
 =?utf-8?B?MUZQMTlGMHpBTDRnVmNBa0tSakt4VVB2YVJ5T3RaU1UxNTNVT0lCOCswTjFY?=
 =?utf-8?B?SWdIZFE1dTlSZ2RValRsZ3RtQlB6SWZjVFhxVnRjR2NhTXpxK1JKYXhKV1lH?=
 =?utf-8?B?TlJlTFZuTmRzTUVzc0NYcFJMMkgrUSt1dUU5dVo1TXZEYlNmWldVVUQrOWJG?=
 =?utf-8?B?ZEpVc0NrR3c1QlhtenNGK3lkZ1hubWFZOTlpL2F0VnRiejFSdlVRSjZ4cmtV?=
 =?utf-8?B?djhJWkhuMEsvbzZna0FkZ0I3REE5aDlITU9PQ2F2VkZZL0JHdlh2NHpmNXV6?=
 =?utf-8?B?cmlSeFE1NnhzNnVvZEdTVmMxbU5vd0dMZnZTaVlqV3V0WlNFSlBZSGtkMHZS?=
 =?utf-8?B?d3dQb2RZMnAzS1pGMTNRM0J6WkNvM0tlZ1J2MkFHY1V1dysxKzFEaGY0NEFy?=
 =?utf-8?B?MElma3grODZtRlNSSW15ZWxFYzRiY255UTJXMGdLejdjZ2ptemxTMVZvUjR0?=
 =?utf-8?B?ekh2VTdwclhjTTVva2RBL2YxaFZPTDVCYzFaYzVQSmFDR3JjZDFuWUFjcWlH?=
 =?utf-8?B?QXhmb0x6MmVvdmJLODA5bysxQUpMdTFwbWhmQ0gwK0lzMG45WjZnOWdjZVhQ?=
 =?utf-8?B?cStTM2JsSkJlZlBwQjdxb0hvWGtqMkcxVWJPMkUzRG5lcXFNMmJMeThua1Jj?=
 =?utf-8?B?a3NvaWUxY3h6OUJtTFI3ZzZWVnpQdkpiOUhFdU5IUnI3eHdqcUNFT3h6bE92?=
 =?utf-8?B?RDNLVXZ2REdzd1ZGRmhnSGIxRmR1REl0dUNiaXZ1MWZ6MndBNUhsMnNLa2NJ?=
 =?utf-8?B?eEh1dXFiZnZmSWVwTzdJeDdqaEM1enpQdWhFbUpIOTFyQmVHYWFQemNnc0RN?=
 =?utf-8?B?Y0c1OS91NkNkbVIrZFh4dk45amp2K3JkbWZwck56R0lINkZRWXhKQWlUUjJn?=
 =?utf-8?B?YjhDOEJLS2piVExkdFdNNzlWL3F2UTdadmp5S2JoUkVxVml3WTNCNGdaWDk4?=
 =?utf-8?B?cFp0RUxJTWhYNkxGZUJwaC9mVit5S0UzNUxqMzFlQnRQbWJzMnY3REtYd3Zn?=
 =?utf-8?B?N3BBODZNNFdiOUkzMER5L29DdS8wUUYwOEs1TzhNbFh3U3NQeUVkYlRPMjBp?=
 =?utf-8?B?eGJXUHlzc1dkanlqckNkanpiTDdqMDc5dnJuMkQ5dVk2Q0tpYVgvYXBOT012?=
 =?utf-8?B?L0NpUnhDcWpTdm5oMUdKSERGZ2VocUJTOXpvSzRSaWptdHlQb2F2Nm1VbFZX?=
 =?utf-8?B?Nk84N0VqMmppRi9ZNmpDcysvU1R2RkNEZEZIMzBCdm1qL2xTN3UrQVovWitz?=
 =?utf-8?B?clRVVnFSUThPb05xNU5mSURCNkdGNmJxN0VobnM4SHZPMHIwWHRiSHJDRkNi?=
 =?utf-8?B?dzd0SU1qNjVBeS9oZFptMm5LT1ZZbmt0QmQ0bU5DWGhRZDBxOWlGSTNTVG80?=
 =?utf-8?B?ZXlWclV6UHhRMERMaWN4VE5iNXlSVWZYVlFlRU1TN3FPcDNJOGp1Qmhvc3lz?=
 =?utf-8?B?ZkJHcWwxRUxGNFdjcy93NzcvMHFPQnBaNlYxa2MyNmZ4K1Yxbm94V3orUitk?=
 =?utf-8?B?ZThFUHZWM2dNZFJydHgzR3Y1RnltcENXOU5ONGs4VGMxRVNDQzNGajFyL040?=
 =?utf-8?B?aFF5c3BNMlpjWlZMZGR2RmhsYnRrdXdWWERmd09iWVRqRFRoUWduOTVaeEgr?=
 =?utf-8?B?Z3JhYnFNWnBLMXFVYkxtbGRaUzdISmxFYUk3MjVSQUZwcTVDRmpaZmpPaTBa?=
 =?utf-8?B?cXBwUTd3TEhvVDFxTnlrZTE2L0trTnhaVWJaaHJPWEFGbTJlNlhhd2FqdU00?=
 =?utf-8?B?RW1IY2x3T3ZEUkx3d3AwS3NNWnJFSUJNYTlQZEdDRDNYaURiclU1azY1WGwr?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd309a26-853e-4869-6c6c-08dcc6ca718b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 18:59:57.2419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3cTPlpWSrxXqsSJj1kpNwr/7HHkoQbbpJjwevSG48n0FrcBDcg0rXbbqdAIGGXLj57Wgf2QXIyNz+1/t0lbSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
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

On Tue, Aug 27, 2024 at 12:26:46PM -0400, Rodrigo Vivi wrote:
> On Mon, Aug 26, 2024 at 07:01:15PM +0200, Maarten Lankhorst wrote:
> > Some plane formats have been designed to require 64k physical alignment.
> > By returning whether this is the case for certain formats, we do not
> > need to hardcode this check inside Xe.
> > 
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> 
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> I still believe that 'CAPS' 'needs64k' is strange. But this is indeed
> the cleanest way we found and easy to port to future platforms.
> 
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> to get this merged through drm-xe-next as well where this is
> needed right now.

Since it is display only and would depend on
 commit fca0abb23447 ("drm/i915/display: allow creation of Xe2 ccs framebuffers")
to apply cleanly and this commit is only part of drm-intel-next yet,
I went ahead and did the other way around and push both patches,
including the Xe one into drm-intel-next.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c | 20 +++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
> >  2 files changed, 21 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index d2716915d046d..5be7bb43e2e0d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
> >  	}, {
> >  		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
> >  		.display_ver = { 14, -1 },
> > -		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> > +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS,
> >  	}, {
> >  		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
> >  		.display_ver = { 14, 14 },
> > @@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
> >  				      INTEL_PLANE_CAP_CCS_MC);
> >  }
> >  
> > +/**
> > + * intel_fb_needs_64k_phys: Check if modifier requires 64k physical placement.
> > + * @modifier: Modifier to check
> > + *
> > + * Returns:
> > + * Returns %true if @modifier requires 64k aligned physical pages.
> > + */
> > +bool intel_fb_needs_64k_phys(u64 modifier)
> > +{
> > +	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
> > +
> > +	if (!md)
> > +		return false;
> > +
> > +	return plane_caps_contain_any(md->plane_caps,
> > +				      INTEL_PLANE_CAP_NEED64K_PHYS);
> > +}
> > +
> >  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
> >  					     u8 display_ver_from, u8 display_ver_until)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> > index 6dee0c8b7f226..10de437e8ef84 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -28,11 +28,13 @@ struct intel_plane_state;
> >  #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
> >  #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
> >  #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> > +#define INTEL_PLANE_CAP_NEED64K_PHYS	BIT(7)
> >  
> >  bool intel_fb_is_tiled_modifier(u64 modifier);
> >  bool intel_fb_is_ccs_modifier(u64 modifier);
> >  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
> >  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> > +bool intel_fb_needs_64k_phys(u64 modifier);
> >  
> >  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
> >  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> > -- 
> > 2.45.2
> > 
