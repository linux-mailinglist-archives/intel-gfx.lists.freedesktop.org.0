Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CDD9DEBCF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 18:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0A510E53B;
	Fri, 29 Nov 2024 17:37:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxvkCvT7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B7710E354;
 Fri, 29 Nov 2024 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732901828; x=1764437828;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=OKNMBf2DJ/aM4uCqRqVJW25GMbijmG7uExefhJ1Tb1g=;
 b=NxvkCvT7PQKwIzgYQ2BOCy+kP24eyjDamzA8Cc5wansoi7W6+cXugOmC
 pMEZDS+iYjGjo3clRE6KNK+jHjxXpiqreVDjAcY1qr2GzlnPQz46RTMaK
 +Pka7LKCUAqZ8p/6Q/p1ZCoM5/qJcL6NWh37ZEz90WLtgszME7QI+CUqT
 ToQqz5i9wlUoi4zXB4Hb9LeplPRdEibiB41p++4Z56YAuS1nKLG6YhPoT
 IfuyUz3w5gSJYW/D/IFz7sZKST4ZSHAk0GCrquzGH4dqE31KAPnP1hl4H
 6jfW0zfcOkKDOB6/FCSTVj4/HqpKogxBECToz777peqOCL5XKrTV4gCP4 w==;
X-CSE-ConnectionGUID: yRwp2SLBRXeDpuEiPkwmcw==
X-CSE-MsgGUID: LVabF8l9Tnuu070vNy/ljw==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="50543677"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="50543677"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 09:37:08 -0800
X-CSE-ConnectionGUID: wqIuBDJvSBmmmRWQxiCs3g==
X-CSE-MsgGUID: MI/Lb/+IQwuaQQZTPyN0QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="92635362"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 09:37:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 09:37:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 09:37:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 09:37:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HzgF/OKWaklCE6tZoRWJdu51eeWOAxqgaYvYpWBErd0QTkDn7yorRwPpK35wEwRJSRtap3DYsJ7qjP0DZqveYRN2+lQwynXaLFISkaV4KN9GB9yyJhuX/hcQYBxMkzrhVCumkIstm+k40GCi85v4IyYHm4EHToW0ui67xBJqgeT6kHAQJ5Uc6dG71aKNYoZMGiUafaTHJAH+e88l6MsQLW4Q8X6UjbGLODYQizKgn9lMlH6srHH/3y+Lpts/Mx4y7Ue6ZGuLLK9tzZSrGfzVjATgI+c6H8DxyTG69zyyqv0xE+ws9ewrYWshAvsQY9v48r20nwH0qHl6/pmVJupplQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XP8lXmzdFdWzluyPVyO1X0Q7Nkz/bHX3HgjjwQK568o=;
 b=rdq4uzhZzDLpxcsYhjKVFmqVKvAOSktrvEChRY6+YvGCVbusqKgb/7aaPiLy/j1hgctHkvtH8shpUd2HXr8eApR8jWHzqT5tOQ5/WrI4Uu3e6hnUOpjvzm+IkYNUS/TKqE4k+C19sM37KQwa4gg7b8vcdXMZ+N2Eo2xGz0DLKXZ47f4OLUUda1n1e8vM0npNipJGMXtgYggrlUOoxdgOgPJyqkGrYmS+BYJH3vAWoENFnNCS8e46DnoBTHrGcDyAYiWul8+AxbX6YNCR2JK2qq1e04Z8cER0SdX48ZXVs2h3FzLZcPED7s1+MZzx55X1205qYHde+Z/CCmTmJ5o3Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8860.namprd11.prod.outlook.com (2603:10b6:806:468::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.30; Fri, 29 Nov
 2024 17:37:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 17:37:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173290066120.355976.6029837080249973542@b555e5b46a47>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <173290066120.355976.6029837080249973542@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for Flush DMC wakelock
 release work at the end of runtime suspend (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <i915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Nov 2024 14:36:57 -0300
Message-ID: <173290181717.1637.311761190341957218@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0381.namprd04.prod.outlook.com
 (2603:10b6:303:81::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8860:EE_
X-MS-Office365-Filtering-Correlation-Id: 837315f2-121a-4c30-4fce-08dd109c6e98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWZFc1dKM2JTTzhOZEdGM1ROUjIzdGx4ekV1c1QybVBXWWhSVnBiNnNrcW1D?=
 =?utf-8?B?V0VYYjJHSzh1YkQyWEduUy9HQ1ZTaEdpb2xvUkJtdzRFQ0F0WTRxY2xpbDh0?=
 =?utf-8?B?aHRrY3paeXRSRVJsT2o4SUZ0ZisxODcxWmVqalpLTWJ5QzJwSXQyRGtLaGp1?=
 =?utf-8?B?Zno3VXI0SW5lNnRUanJCa1dBWjFlc1lhbk41QkhwM3ZKZXZaOVI5MkVVNTZY?=
 =?utf-8?B?UjFIQlhvaVVuME9lOTB3dm0wUzdsR1dvV2tnd3NkY29SMGVnMjZBTWpaTkdM?=
 =?utf-8?B?NXF4eXhPVWRteG1hdzYyZzZzY2kyRzNXRFN5cXNMcThXbHFzSXJaaEUvcWxR?=
 =?utf-8?B?Ykh0RVZETGxEZ3o0Y1VCc1o5RzVvTHRNL2Erd0NORGwwQWFkNkZqVmV2dWxn?=
 =?utf-8?B?UDFhbFc2T2QyL1JPQjZ4UmN0OVd4bjlzSndpek11QjN3MUcxWmtLeER0TCs3?=
 =?utf-8?B?YnZiOXJjRXVuZUpiZTNNeXlvb0hWN3FtMHlTS04ybEs5UW9vSWxLYnNpNyt0?=
 =?utf-8?B?VGFRYmx1NGorVURQV1BNdHQ5dS9sUGRNbnI4VERITjVJeDljQUFlQ1dlaU9q?=
 =?utf-8?B?emI2aGtSZ3lSb29KU1VEYVd2T0szTUtZVFdZWkhRN2Fxc3F1ckR5MkdGeEVT?=
 =?utf-8?B?WDkzb3pQOTJTTy9KTzRhSE0vUmxsLzFXeWcxTmdEZ1lTK3Btb29SSHU5ZklV?=
 =?utf-8?B?M01MUHh6VGRaSW1wOHlzaEJScmlCb3N5UEprMW0rL0JtZVpqZmhRbU9FWk1C?=
 =?utf-8?B?MTY4QTdjMzc4ZDRWRVJpNmU5ejNuNzl2ZDRGL1F4VXNzd1BhblBkTlVoMVg1?=
 =?utf-8?B?aHpJU1Z2UlVoL01qbGtScmR0Q2FwU21WODBDRlRTbFNRT0RkTGE5MWgvekhF?=
 =?utf-8?B?dTlESWNVVmFpeU5xQ2NwN0JhbDVTTFIvaTdramFtbjFCaGJmRWhuMlVWVm5K?=
 =?utf-8?B?UlBIenMxOEdHcFhxcnMwRkswQWhYMkMzTUFYK05tNHBHZVFpalBtZWVwZDJw?=
 =?utf-8?B?TWFuMTAyYlJnNmdHWExMSXY0VktPUm9hb0Q4aUgza3Q5cXJoR1RpcHRZNzB0?=
 =?utf-8?B?RDJaZDJZem9iVFpxQjhQV0FGUG1COW95QTFCTEY4UE1kNUIxb3dXd2lENHZv?=
 =?utf-8?B?YkdpSGoyN1NCVzRVaGkzdGl0a0MvVEV4d3VHVkV2UVNHczZLWHBBcktjTmRR?=
 =?utf-8?B?MFgwZmpEMVZLRE9rcFNMbTFBMzhtNWt1djVtdnNGRk9xOW8yNWd0ZEJjTnB6?=
 =?utf-8?B?TTA5ZTZZZi9WVzYxQVhFdHI3dnZubGNOejdZZGg5cXFXOTduNFhuR2xjS3FY?=
 =?utf-8?B?V1RwUFVCKzIxT0U5cm43SmJCSmF1c0VuTml6MmZneGdaeS92TjRlY0E5R0hN?=
 =?utf-8?B?cXFEMTNIYU4zYlpnWG40TUw0UUI1RWphOUhxV0J3bG1hRVZyTVh1bVl5S0s4?=
 =?utf-8?B?WWVVT0p2dStQS0VJSk8rZVQ2T3l3QXJpVmlrLzdkUTFRMmgyR0lYeGhZU3Rw?=
 =?utf-8?B?WlNlTmtHNTVlaTJJanNvby93cDBnNkg2V0lVVXpPV0JSTFBJT1hJSzRYdyto?=
 =?utf-8?B?bkpiN3Z2cjMxRkk2RC9rMTJjUXErL2ZrbWR2ZXU5Rk9uM0JBUWVOTkIzVUx3?=
 =?utf-8?B?Mk8reUVQVnRPeE9CK1NMRkdPUG9naFdOdmtrRmJ4Q3NwM1VzWXNhQWRSYjh3?=
 =?utf-8?B?Ty9IUXhvRkFFWkFLTmpGQkxSZWVxdFlNSXZZeHVBTzBaOUNkZ25GcGhCQlZZ?=
 =?utf-8?Q?z8nAdg9DNxnMV/iKBw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVVLcWJZWVN0ZHRBbFR6UXRtOWhEM0cwUFFxR3hZSll6QzVsLzlsS01rbjFP?=
 =?utf-8?B?YUorMEVLL0pxV0c3ODRLa1ZmOGxSWHNua2FIYlNUNXYxWXpIN3JVVEwvK2tl?=
 =?utf-8?B?clN2MUkrNWxQak1VNWlHUUJieFFmUzFoUUxkOG45YUJHS0YvQVl1eUhNa29y?=
 =?utf-8?B?M3kwd2NNbWhKOWpiZzJzV3hybWRnTHpYVmwwMEdRLzAxK0MrZmJrdWFLZkdj?=
 =?utf-8?B?Z0FNajJLWVdFd1NNZnNHV0FFdlN6TG9oU0tYN1lzVG1RY29DYWNYZFBiNUZt?=
 =?utf-8?B?MnBKOHZhdVYwd0M0TEhRUStSYWxqeWJVcWhKNm1CeDU2YUZoMmV3ck5nc1Vh?=
 =?utf-8?B?SnZBbmN4VFAzd3IyQVBRNDdGdjNrWEUvaUhzMHAyMTlzKzVxekRMcFI0SHB3?=
 =?utf-8?B?STFUaWZlWUtZSXV5M0l3SGJFdGx5SGtCTE4wWG42UmNkRUNGRU9odERvamRk?=
 =?utf-8?B?UzQ1QmhnYjBMZks2UzByR3RsNkI5ZzJkSWhUUHowbkc3VFprVWdLYlZMTDJM?=
 =?utf-8?B?L3dRUjIyMGk2bTRUbkQwb0RXUHNDTFVPUGJvd0wwVVhWY2N0TzVCY1o0SWhY?=
 =?utf-8?B?TjZzOUloNEd3YTZVQmt5MEFDZW1kdGp4MHNhczUrNW5NZkZWRGhqNG5hc1RN?=
 =?utf-8?B?YlcraXlHeGJkeU9BaENoTkdjekNralcwSStROWx5ekljK3cvSlRWNDFZbEdx?=
 =?utf-8?B?VEZtNUpab3VvYUFjaW9kRThKZktkang1UmVsQXZFcVN5NjJQY3k1dWVlU2dH?=
 =?utf-8?B?dzJMb2cyMFFURGx6V3pxVW5nTU0yUWprQ3FEcjRranlNcTJuWEx4MjU1RjFC?=
 =?utf-8?B?WEhudHcxYklTdTJoYXdlZHhCbXk3SzkzcEp0K2VzQlJ6aU5qREpGdUdTSTQ3?=
 =?utf-8?B?OUNqc0Y4SWNXZzBtTzREK2MyTHpRc3RBc3cxeldubUNsUzNZOGcrdnRqbWJn?=
 =?utf-8?B?NEpGWFFqYk5kdk5XZ3U3WGxCZmN2eFNING0wWTVqWmFqQWRJaXFXdlZnSzQv?=
 =?utf-8?B?TklpbmJXK3ZBQlN2N0tBczFRT2YwMEgyeS9GMDNoMFdSME5wU25hYjlOVGY3?=
 =?utf-8?B?bFlmU3NWRmwyQ1BEMWdPNzhHTUF0RktEdG5OcDlVd2lyd0twbGo0WXlHamgv?=
 =?utf-8?B?QUg2SEFjNDhwbTFjUklyK2pwR1hESFhhZkN2c3Z5WFR1YlRYVmlTRTZvRVov?=
 =?utf-8?B?R0RBV0FOWWpxRWtCQ2pIZk8xZm04UG5KL2o5Z1YrdmwzRTJqVXZhWmVnb3dq?=
 =?utf-8?B?emp2a3RMQS9jSmVWdHJGQSt1ZGljcHdrN3NNTGxYZzExdXJjZXZiQm1aNDRG?=
 =?utf-8?B?Z3RUbndlR3Y3ZFFQdERpQ29OQmtxMlNReFM5TnBncDBXR2ROc0V0YlhxWUhK?=
 =?utf-8?B?OVA1dnZoYjJYT04xQXVSdDlPbVcxR0VOdkFZYkg2bVVwQ3BYRkpIc24xQUV3?=
 =?utf-8?B?V1QzVlJnM3VRdHZtcTJqbC9teFFiazU2WkE2U1NzN1l5dzJ6SmdKK0tUeXlO?=
 =?utf-8?B?N2RnMmQxVmkzT1h4LzJaY3Z1VFJ0S3FVdTBoZHNDeWxqaG1EbUs5M2JsSHl1?=
 =?utf-8?B?OXlVcXBwdzlFLy9ma093WDFTMFRDUmFSd3o5UGVKQVhKRndEOUhqM3UwZ2JM?=
 =?utf-8?B?UEdPVVVuQUVRZEZpbnZDR25ZYjN2aE9hY3dqMUN1RmNVZkQ1NnRsYTdyWTRy?=
 =?utf-8?B?THo2b1VUZEZsLzhXdjQ0SWRDdzFBNEltblU2M1c4N1ZISmMxbFpndzcyNGFj?=
 =?utf-8?B?VjdyMm9Gd0lxV1N2cVBuSTFNQnNKNmdBR3lRai9ZVUcwUCtpR21JdnE1Tmpz?=
 =?utf-8?B?Y3dZSzI3SDFuSmQ1UmRmaXorUUlQaHZBVFNrMHRqR25zUnBFQTVxaVNpZ1hV?=
 =?utf-8?B?dldnVTY2MUZLL0dvVUlaUHBpM2g5UDlMdXc0aTd3ZTBJYXA4NndYSUFGcmZ2?=
 =?utf-8?B?RWJES3dmUkZzSFpKRnhmRWZvKzI3ZTgxY3RpWmhxeGV1RGhKYzhpaktFODFL?=
 =?utf-8?B?RzVseEROeDJXSXpTNThvdWp0Z1I4Si9OSXg5ZUFKaUhQQzBzRnA0bEtjazFI?=
 =?utf-8?B?WEhWNVlZalRvdXNKUWJCajNNRnpXTUVvM1pOcllKSndlbXkyS2VFeDlvYUJR?=
 =?utf-8?B?UUhYRGI0QnU2Z1pxUStFR0FhcDhLTy9KTGRrZUtYZEo2elZCa1BrNmtpRklO?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 837315f2-121a-4c30-4fce-08dd109c6e98
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 17:37:01.3893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1XVQJoLx5XSiNWYsb27cAbLlA7DleuGi8DepXXyIFaIstV7SkXalLXpChpft7dq1j6/MZunbI+7cxlYK84Ushg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8860
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

Quoting Patchwork (2024-11-29 14:17:41-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Flush DMC wakelock release work at the end of runtime suspend (rev=
2)
>URL   : https://patchwork.freedesktop.org/series/141932/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15763 -> Patchwork_141932v2
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_141932v2 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_141932v2, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v=
2/index.html
>
>Participating hosts (46 -> 45)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
141932v2:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@reload:
>    - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15763/bat-arlh-3/i=
gt@i915_module_load@reload.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141932v2/bat-ar=
lh-3/igt@i915_module_load@reload.html

This seems unrelated to this series. On the i915-side, the applied
changes are non-functional refactors and nothing on the log indicates an
issue on the DMC wakelock paths (all of which should be functionally a
no-op for ARL).

Please re-report.

--
Gustavo Sousa
