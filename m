Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EB49A1AF2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 08:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633A210E2FD;
	Thu, 17 Oct 2024 06:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffccjml9";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2E610E2FD
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2024 06:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729147669; x=1760683669;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4snoNGjDvfu43pZ063ScNoMIh6i9xprg1iP264Kpe+Y=;
 b=ffccjml9BrzHtSH0OeiyCgIMZ7WQj1uAy96NVVBLRA1vd3+/VSfTB5rL
 IRoIHw/JdhqN42vvFb63qrr/O5eHc2G5d+sfY624dKhuet+4GvMQ+OfeK
 /LpJclQoHT3063V+hv+ypG2i7u9J6UnqKO4+rCgdMkZdQPgqyw8xnU+qC
 nqOqELWrQMbM1VgdjxEIiVt0XjaS3AKyGg8HhTX3YWSHgE1GMrbmkixhr
 hatFMPNcAHL781GUFrKOxKw8pDQMAk9wVDIfkn71lfTFnnJ8XLvKPY+af
 SRlgL5gS+uloMEmckOGbxVTABBhlWL91oq2vx5emnQAnb661VeXpx3ztt A==;
X-CSE-ConnectionGUID: d6Rz54KrSRS8DLaZFqyVjg==
X-CSE-MsgGUID: F2L2HIl4SPmDb8LWSW/rXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="28710448"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="28710448"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 23:46:57 -0700
X-CSE-ConnectionGUID: S2AzQJztTP6tB65Kx0ejDQ==
X-CSE-MsgGUID: JCj1k0M9SDm46nh8M5ZQEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="83231885"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 23:46:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 23:46:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 23:46:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 23:46:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 23:46:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 23:46:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okITp2q/9RINFXsHmcaTzBCDB/PLUD8W9KFGc2tsxPsbIBcMKdvxU+UPPQl4VmoeLiODFF/i37oGByrFx5JrgreT5UQkT5TgLozsdVKkcDDIqSJJc5iGI1BBfd3Fg7/PTOkCI2XfxoY8DMmhJENwnD8SAUMpg63aVmkMdr4NCj6EiLJO9A1gMSV+d13URu+Ft6Go2gav7YqU2btgIAKU7IVana4v5pZSe8VKJ39j78oL4Z06IaxLPUdyfPiwXZ5vnbtFTnfz4X2WORNw1jSbkJGVidKHOTIU0JnYgWi3J4T6hHg9onz2d5VDf+hFndZ5X/vWHSf4INZ1srBjnMNKVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d93rn+4/AZXwCGzvdk0uyN64N11KNYvqclZZfxLL0VQ=;
 b=w6xCOFMcQWogu9l+SxDvC+VXS1n8eJrIzti7BbseX3mTlHTG2PCbG7SsJxyOXZLhq5Oeip5mq2ctjo30sBWX4DheSkPLTbHq3m5hpnoWhmW3RPPxyEzPmjsyRlpR26ZLzVtcsnW9gM4CbPlSBjnRLXSy4KwT0jNBWHAHqnEPhL6SBiHkZH2SeSUfpI5UL4IaaAhaQnkD2pfJlXrjoqposOEYDhyhkt7V4pYlMY8CFiQ5JqNq4o+qcy4lTwhPXRYF79c3tWhHxAKWq77aofiAo0jxIjeY2fsc8NgKFV0D9noiRoTS/qVbCeI+A2s4YjVSV0a/zpu42zYq9Rbz3zTDGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 06:46:52 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 06:46:52 +0000
Message-ID: <08375d89-adb4-4f62-9810-1125ad0e8fc6@intel.com>
Date: Thu, 17 Oct 2024 12:16:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
 <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
 <2916f018481d3ecb354c0c1d6c2bd8f0c891bef4.camel@intel.com>
 <85919a8b-0027-4a40-8be0-69be8582d70e@intel.com>
 <c8e19680d2dd8f5e432127faf0cc9c32622bedc5.camel@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <c8e19680d2dd8f5e432127faf0cc9c32622bedc5.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::6) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|BN9PR11MB5257:EE_
X-MS-Office365-Filtering-Correlation-Id: d910c045-5e66-4e48-95c4-08dcee777b34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmlBQUdtTnlGaks0MFpjaUZmaEVNVmZvUDEwMVRwNTVEZjdqbENYa1k2VDhV?=
 =?utf-8?B?dXhUQWhDU09XVTFJbURDZU5LS0lWekdzRGN1WjFIZHlGUVVyd3dTOW5paFNG?=
 =?utf-8?B?QWRPeDFNU2RUQzJLeThsOGxaZ29UNTJvdllFU3VqWW5Ec3I5VXpBMlhrTW52?=
 =?utf-8?B?U0lsd25tdC9FWnlnM0JWYkRSY05raHUzNCswdEQxbVFodzJzSVZrNkw2OERm?=
 =?utf-8?B?b3ZpM2w0WUE1VC90RFRtbG9YNks3b2c1cUhHNXArdmg3MnU1bVBqYnErNFFv?=
 =?utf-8?B?bjM5a2toZXl2M1dXWmQxanBLK2pCMWs5TzF1NjBSTE5CZG1hOE1CcjNBWTNX?=
 =?utf-8?B?bDJqVlNnNzJCYVBUanVDZEhHR0hITU0rS0dOL3FIUVdkVUJEemhmdFZwYUh2?=
 =?utf-8?B?VFgyOGZJZmhyUVAwS3pyODNCTnhVMHBLbW9wMkJablR0dVB2RSs1OURtMm5z?=
 =?utf-8?B?Q0pNellvM1JQVldsWEJIREtldnBuMzlwMVdmVmhQZlkyQ3JIL05kRVRNelFx?=
 =?utf-8?B?QUNDT05QTEZEUnBSRHRhMFZ2MWM2YnlPUFRwSlo0MG9QNE9mNlFhbGUvb21q?=
 =?utf-8?B?K3NLSng4UzRZOUp4RldXdUU1V002K3lxVEcwUnNveXlVTk9PWG5aL3ZMSkc4?=
 =?utf-8?B?QlRRemhLMjBLYnp1Z1MzOGViNERUeHVxUnloN1RYVW85eTZTeE5SaDgzWk5k?=
 =?utf-8?B?L280OTJTZy96azZ1K1o0S25WWWhUM3BLWEZScVBkZ2lGRkg0WUNEV1NWbDlM?=
 =?utf-8?B?WDRsVDAra1kzOVh3TW5qanFZbTk0MmVEUWYwY2gwbmI4anFyRTBKRDZSaDFp?=
 =?utf-8?B?UXJXSTFxcGdnWFFEcUJ6VXIxdXl5R0tabkRxUXFxbEFOTHkyL0diWjRpd011?=
 =?utf-8?B?a2NVLzVGMHplbktUVzFqZHpyT1Z3MzZyUmxSU0dTV1dBWDFRbzFKdmtmNnhN?=
 =?utf-8?B?WkFpTE1vWmxaRUl4SkNFSXgyKzRsdnFlTzl4RW56dE1jdG9PMUlSU1lXRmM1?=
 =?utf-8?B?NDAvV0NROHQ4UnFFYWhlL09kL2RzMllFVHBGaEVEaHNqZFBsalVrbmZTT2xT?=
 =?utf-8?B?Nm9Va1UvOEFIOTVBSkt2ckwxTTNEZjBqaGx0dlo5YXFQMlZHdCtZUGlTK1Rj?=
 =?utf-8?B?OEVUU0FOY2srZGNTcG5XbmVFaXhuU0J1SFE2aVBCZFQ1eE1FMzAxNXZlYTR6?=
 =?utf-8?B?cG1CKzBhdkRtSWJuQ0xMaUlFVytUM3Evc3d0NFNZSlh5SjBKQURNUUkxOFFs?=
 =?utf-8?B?UGREZFEzUGwwZlZ5aUEyUlUzTXdjNHM4Sm8xZ3dTa2ZmV3ZtcEpYK3lqNG9h?=
 =?utf-8?B?SmdhZkVCTS9OWUdZM0w2RDdSejlodGxWaHRUKzVzMEovYytqaGIyQVVQbnhs?=
 =?utf-8?B?WEJWK3hqVC80b0NTb2ZjV1ZBY2lTNDkyc1FKWVVFQlI5aExrVDhDelVJUzll?=
 =?utf-8?B?ZkF6SVZWK1NJVlFBVnFOYVhJbmdISjg4QmZhUUwrTDlOWnAyZ3dRNnkzTkhO?=
 =?utf-8?B?V2R6ZGFtblQ0QlRlYTBtY0RGUjhzUXEreUxLS1FRbzdWNGEraW5iT09RTmV1?=
 =?utf-8?B?U3lBVy9ndExzSGFFZStkUEdCOHVEZ2ZKQVNFclY2LzFtNlAwTlVET1BpVS9u?=
 =?utf-8?B?aWNjQkpaWi9sQ2VMTHZzc1A4dUVIc29SR2I1a1FYNHdJZU5UUnlHMFhLeFBD?=
 =?utf-8?B?VVE3b0dsU2lXVzl6WFZiZlZOM29HVndRY2FIRFJjSzFNYXRFZXVUeXdiU1Rv?=
 =?utf-8?Q?vcFxk0GQmSgBv+Kmq0ZDIo8bEQHnSJDhw68W3lT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjlUY0g1eDU0MU5iZ1NaS1VvRk56UzJRS2FpRUNKUzFhbXdFazBGd0tMcktr?=
 =?utf-8?B?SjI0VjFkRHBQcnBYTkNWOXB1OE1QWXdoVnNqbExrQSt2T2d0R2JCZjQrNmJR?=
 =?utf-8?B?Z05nV3B3OVFVWkxqdVVIMm9OZTJQd1FRaHMrTVh4cVZsWVoxMG13V3VZcFYz?=
 =?utf-8?B?aVkrMWlnZVdBU1VhUEtCaTJFTk90dFM3bjFZWWVlSTRGR3RnNC9xL0ZJbVZ6?=
 =?utf-8?B?Q1ZJUGFSd3NnZ0JYaWdRWHcrODR1SWhjcjZSMU0wb2txMzRVNnpPWkFyb3pT?=
 =?utf-8?B?N09nWDRpOUZvcFhGTU43eHVwQkZlOEphc0tqTXBiaDU1WjB5RklESzJwVFhz?=
 =?utf-8?B?WllnU0x2dUtiYlpFakJTZDRoTnlvOTd5dGxjK09lWHZKZUlCV21LdCs2ZURl?=
 =?utf-8?B?TzRrNTN4aStmRDVyYyt3MjllU0V0Vm92Z1lkMEFXOVVGTXRxaVpJMVFmTHIz?=
 =?utf-8?B?b2dMTEJDaW5PbzU0MmRYTVJjRDNxUURVNmU3anZRb3hiR2ZkclBhL0JRV1lj?=
 =?utf-8?B?OVFZMjI2N3pvT2ZFTDVEYTB2Mm14TWZIazhjMHpMbVRoVmEzNlFicFZ6QnFX?=
 =?utf-8?B?d0U1SlpHbThQeERZWkhRUjZkM0Q3ZHJ6YWpEdG9jL1BaRmNTalhmLy8rcTBm?=
 =?utf-8?B?QUFFUGsxbHV5dW1YaTNOSVNNSnFESjNSem9VLzBZNE1YcFFJeE1iOC9CQUJn?=
 =?utf-8?B?Qyt4V3kyR2xnUVdBQmpHNXlhMzNwVlpHTVNYOVFwYkZYMXdZc1kyaSszQkQ3?=
 =?utf-8?B?NXQ4SVdzamp0M0tKWTBCTi9oVFBqempIU0FPR3l3d2RKei96c1lnMmpDcHpR?=
 =?utf-8?B?NTRiSklnZWhjVWpSckZQOUI4UnVlWWd2Q1BXWUk5ZmtBdVlENUN3dXgzeVBo?=
 =?utf-8?B?eTU4dHFReDNMNjIwTVIzL0hkbXNQL2NOOC9CTXhsWWRvNjhlUUFSNFN0ZSsw?=
 =?utf-8?B?NEFXTTJEVjE5UVROcGFGbjVGUzY0a2F2UGFJNHVhUjlKMzZmbXJrQVpjMGxx?=
 =?utf-8?B?MG95UUdmQ2cwSXV6ZzZpZXJQWUFuZnl1WkxuMlMzY0VYa0ZkNGJwVGUzZ3l0?=
 =?utf-8?B?Q0RVV1UrRFh6N0xOa3VadWJPN24wRDFOVHRIazdPNTRiTjlHMlFEVGUycFFv?=
 =?utf-8?B?Sm8xQkRBaWk3a0VIZnUwOVhybzByMmxTZ1B5ZzF3aGZUY3lGNDJMek8rRkZq?=
 =?utf-8?B?RVJwY0JCNHNGd3JScUpnRXdUYzVPUjRpaVRTSXUva2lFU0k4b3NxUFRUNm0w?=
 =?utf-8?B?eFFGb2wvOTRzbi9DVVRrd3lsQmJnSUtTa2ZXd1Iya2RKSTdpMDZCd1pPcXow?=
 =?utf-8?B?bm5oVXdJQjZneWIyNm1EQ2wxUWpDR2F6ZE5YL1JpVDd0M2hRT3F1UnNIWnhj?=
 =?utf-8?B?SUIrdFV6RVhvWk5RdFpqbk9ZdFRQMU1sZVppM0MrQUxtdUFPR2EyOTRocU5q?=
 =?utf-8?B?SkxLWElpNWFIbC83OFg5eGVrSU43eVVTU3JiM3ZNekp6VVRNQ0VTWnlpYUZ5?=
 =?utf-8?B?OEs5V2FNQ1I0ZTh3Qzd1d0Flek9ORDRPZ0RFOHArbnFqK3paM2tGbklTODdO?=
 =?utf-8?B?RGlrT3pJRVJhOHBEQzBnSlF5UE4xdytGSFdjY09qM0tTcjlRMEJpWGhvcEZx?=
 =?utf-8?B?ako0bzB3RGk3NzFkMDRGeXgrNWNuNm9CMThDSGRobzhUSEpwdnUwT09uZVYy?=
 =?utf-8?B?dUVSeHkxZGlHZ2FWbWF5Rk5sQ1ExSG9UVHpJSXYrVnBoYUIxVWl3eVJ5alQz?=
 =?utf-8?B?a3htMGVIdDROTVRaUjBzcW1FYWxuMHllNlpNdmkvcFV0ZFhuT2hWQnhDMUQ0?=
 =?utf-8?B?R3BtVHU0ZHJ2aVloblE0S05tRGJZWGdzOG5KWDNDc1UrYWx0M1Vhdkk1enkz?=
 =?utf-8?B?UlJMWSthTDBnZ1pBc2tDMmtQU3A5SkFxZVMxQ0VJZ3JoMmZ6L1IycHZlb0lY?=
 =?utf-8?B?NFU0cWMvOVJ2dVRQVnhSakpzR1FqTjc3TE5qVmY1bEt1UFpGN1lWNy9hdVFB?=
 =?utf-8?B?b3BhQnBhVFdPWDFObFFsbjVzYXIrL3BhOVZPcGdJRkxsSUxtWXBvaHQ0d0Mr?=
 =?utf-8?B?ZXN1ZlJKV0dLcU81N2hjVGwveDZ2SEdkdFRpRzlBZnFKQ1Q2SUpOQkttYnZP?=
 =?utf-8?B?aW52NGVyZlppR0RFVG52aVEweHVkNCtWMFMvOTBFVExYNXgwdlgvbm45RzJa?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d910c045-5e66-4e48-95c4-08dcee777b34
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2024 06:46:51.9936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iXwS41AqqbEmmvqyVgQb+klHQrPbZlujn0VjY3kIz6WSeNTjKIo7qIHWpgCVnjMIiK8RvzzdyGi2Otl1LlnhivaaJ1yYSGhX4KF8FVGj7Vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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


On 17-10-2024 01:12, Taylor, Clinton A wrote:
> On Fri, 2024-10-11 at 12:34 +0530, Pottumuttu, Sai Teja wrote:
>> On 11-10-2024 03:00, Taylor, Clinton A wrote:
>>> On Wed, 2024-10-09 at 22:32 +0530, Pottumuttu, Sai Teja wrote:
>>>> On 05-10-2024 02:38, Clint Taylor wrote:
>>>>> Some devices NAK DPCD writes to the SOURCE OUI (0x300) DPCD registers.
>>>>> Reduce the log level priority to prevent dmesg noise for these devices.
>>>>>
>>>>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>>>>     1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index fbb096be02ad..9920ec1f9c53 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -3418,7 +3418,7 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool
>>>>> careful)
>>>>>     	}
>>>>>     
>>>>>     	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) <
>>>>> 0)
>>>>> -		drm_err(&i915->drm, "Failed to write source OUI\n");
>>>>> +		drm_info(&i915->drm, "Failed to write source OUI\n");
>>>>>     
>>>> Just had one small question here, I think NAK is one case, but in case
>>>> of other errors/failures (EINVAL, ENOMEM) would we still want to reduce
>>>> the log level?
>>> If EINVAL or ENOMEM occurs there will be plenty of other failures earlier and later
>>> that
>>> will be logged. This function returns void so we don't handle any failure for
>>> SourceOUI
>>> write anyway. This just prevents noise in the dmesg log from known devices that NAK
>>> this
>>> particular DPCD operation. The other option would be to list all known devices that
>>> return
>>> NAK and filter them via a DCPD quirk.
>>>
>>> -Clint
>> Ok, in that case, should we also consider decreasing the log level of
>> read failure a little above?
> Read response should never be NAK'd by the Sink device.
>
> -Clint
>   

Thanks for the clarification, with that,

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Thanks,
Sai Teja

>>>     
>>>> Thanks,
>>>> Sai Teja
>>>>
>>>>>     	intel_dp->last_oui_write = jiffies;
>>>>>     }
