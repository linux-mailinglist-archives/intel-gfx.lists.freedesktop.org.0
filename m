Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93468961FEF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 08:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C572010E4AF;
	Wed, 28 Aug 2024 06:44:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4+KeYdG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E1810E4AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 06:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724827452; x=1756363452;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6VDqVYvcorKa24n9PtjQSRwGR2a6T++hw9gGXlZXZC4=;
 b=S4+KeYdGQc5XIQ/nUGIOmRPi4UB8XX3G/kNDPRmgfBYzXd8M0+LMl/x3
 uiRA+Y1GViqYaYFkJ43k2VpJcrQY0sdbM5fxnxSjve4wjztqEbG7V+ikL
 TWqgznJNg0fk75MP4PItds1Ss5W/3lsPcI6uKVgIeOxPjiosaIvb3Ls81
 pZqjCmNPCkgZWwo4ib1Pn1QSGgR7xS1dijFCh6pm/+wSanZHebHg0eZZN
 vBDUYuDLpCoyo3rleMgfn23G7SvovpsakGkfQO+yG7wZnPUSaMdstrQ6L
 FtLMTRcQKJLqWxgZLE5eOiIlHLwp+RAehrGU7vNLFOGnEBDNVrbroXMch Q==;
X-CSE-ConnectionGUID: oEXllhTIRnarFsZNu5fiYQ==
X-CSE-MsgGUID: xcjXvGDDSwin8eiYgxGTJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="45857286"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="45857286"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 23:44:12 -0700
X-CSE-ConnectionGUID: j4tvzFB/SOCKzfK4Yj8VMQ==
X-CSE-MsgGUID: xC8c7vB9S2CqvV38z1KQVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="67489844"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 23:44:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 23:44:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 23:44:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 23:44:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q4FRNo36DXQuKs+nDhd8csYi4HA7fDUvUV9m7VNGxW6Xk/dyChm+UvIIrqrR/OJxqJuKTk1C30C7FGJWHuB8jkz7VT7zrWXFN7pfzJ8Cqwrfv/LKaSv6HlyhzEpjjf1hWLMGqSH7p0I5gOci4cZ20aDTfP6+NgRKu/1Ir3bk+mMBmguiG8IyYSkhQEXauQ4fHZb66f3n8zJG3b4UE3mZGthVtdisdB0RyKts63uZujMWk3Q1laduZWXQbbyvVDsWT7E23FSzrdifaguJfogzeCm5g98ZfbhXffbyJQ7fbrYLI/8jX5/QIP4RE6bY+fuagajWEgq5Kl8gUm5G2udq2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Met9+C7dZBVwGY4I/DheuuB+3cuQ097NbjR/zU4BzLI=;
 b=p3nVbGmSXCElDTqyufkVSDgYt+6SUFH9dUcInj6eZ1SmDWAqTrW3eB7PGDExlLpSOVltVs9bmiE+I+V7zM5Wfd4pJ/QZ60iaM7MfGth9L4mKarb8MFokvuKqSTYlz0/JzE/YS8pRh+qt4/jygq0Oi/K97TTa3I/d6fBxLIpWXe2IpofDk+sMPznPfuLrT9Q9jxJ+EPh6NezwKlYRcNEkMsbnWt0xh0H1sYe43InLs8HJogFWb0PgpdhD63VKPMkN7N7hsZahwsJwu4PelIjSgdwOBjYsLOzAKEGeJVcsKcaSFFG7UElU6BNMtBABacqWN3KMMEbGVTduB6UsVtFe3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 06:44:03 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.7897.027; Wed, 28 Aug 2024
 06:44:02 +0000
Message-ID: <36ece7d8-cd8c-48b5-a72d-06c7b25ade41@intel.com>
Date: Wed, 28 Aug 2024 12:13:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/mtl: Update PLL c20 phy value for DP uhbr20
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240827141356.3024760-1-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20240827141356.3024760-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::14) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|SA2PR11MB5162:EE_
X-MS-Office365-Filtering-Correlation-Id: 25b703e1-1a84-4b08-f07c-08dcc72ccdd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFd6VXJyNm1QZ1B1V0lHbWIzRzNDbnppTFU2Ni8zNjFiVXU3SXMvL01vaFMv?=
 =?utf-8?B?MFdXTGo5TGhtR0Z2WWRmM1NJY3BCZUZQTDBTRFFra0tEQ050Ymttb3Q5ZUFj?=
 =?utf-8?B?NUdWVi9HTkZMMTRPQ1YyUFR4aUU0QUgwSkpBTlk4NXc1UjFVY0o2NWFRRS83?=
 =?utf-8?B?QWZiVXZOYWp0MEhRTWNPS2hwSU9aQ09yNjJRbm9xMStDcjNOcXpxdXE1NDdR?=
 =?utf-8?B?KzZCMEhLOHdEWTVSRE9NcHBCOVViK0tTNlpsTEsvWURvVlRPZ1RlNzdPdVdZ?=
 =?utf-8?B?NmdUVWRKZUl0UUtNOURMWURUTVVwb1dxbDBaR1hiSHdJaStqNzFWR0k2djN4?=
 =?utf-8?B?Qy9RWDc0K0xGOU1xR3o4bmE2L3o4S0pCUkFjZ3o1ZHd2dUc4OVR2Y3VzMFZs?=
 =?utf-8?B?MS85RWJpQ0hqMEo4a040OTVLMk1DTDd0bmJOb2RsZnJrQ1pxZUYvN1JiNkVU?=
 =?utf-8?B?UExaU3N5L3FxU3pZTVZaT2JMNktHcXlpbzNwMHI5OXJMUXlCMTdRYlN2MDR4?=
 =?utf-8?B?NndGcmxxMEcrQUludjJMUFpNdUMzaG9NZ1NBRllvTDhYNnFiZHZoMVR0ZmdQ?=
 =?utf-8?B?OTZvdVBmbGJvREdGaDBCTzdMZS9FRVBDL0phdUxyYWZGOHBYM1RQRGJHVmpp?=
 =?utf-8?B?Sm5jdGwrUnZlUndIaGVuUkRFVi9jVUh1dUJickJEMjZQZWxkQnp3NG1mc254?=
 =?utf-8?B?RUZZeEJEU1NMVjU4MHRmQVFRckxwYTJRWVNiaTlZMi9td09yYTdiQkdSUWlD?=
 =?utf-8?B?Q004QUt1aHFyUkNUcGVGRkZJdFpVYWhmU1hTT0YyMWVvKzJFeW9ULytqWUEr?=
 =?utf-8?B?K2FwOU5HM2NibjMxZG1ORmIxNlNucy93Qk5HdWRrM2RwaE4rUFVLQngySmhS?=
 =?utf-8?B?S3p0NGx1ZTJPMUlMQmpqb3pTNGY0dFpNMjRNczNDVW1hUGZPbzZ4UnBUNEVQ?=
 =?utf-8?B?RU9mZ3Q3SVZxRWpIN1VpSVdaTGxYQzJ3NmxLcnZjaURKaEE1WVFQRnIydnVx?=
 =?utf-8?B?MjdCcVFmcDZWazl1MWIwdktLVlhjZ0k2MlUwWG5URW9BcmJTR05ONnFGUkd2?=
 =?utf-8?B?RGRwZmdDMm5XSlBCZWZ1ZVBIZGRNMm9rMzd6OHppYVpXQS9FLzRISEgzSmZT?=
 =?utf-8?B?V3MvL1pSdVR6cVRsSFpvM09GTDRrNU9FcEtXZGYyTGdqUzIvU3RaQml6Rk4r?=
 =?utf-8?B?RXJBUzR0bjc4YVczMng4b2V4YTg1dEN1VnNxS243Wk0ycEpTK1haQ2pHNXln?=
 =?utf-8?B?bGsxa2FWdElkSk0vRkNpRXBkdjJHOEtOS042WFFMMlZpZndxNjdyNlVZc3FW?=
 =?utf-8?B?aW5jYVFoSm85Z0NVVVE1c2hJaFJUU0RHRWZRaEFtRDZIL3lzSWVpQmhNZCs4?=
 =?utf-8?B?L3VUN0Y5NGNCWElTVGZ1cEEzV2toRnpwS1NZQ25nVmdGT28vWXdNMXNBRWRT?=
 =?utf-8?B?YmtIWmFpR21Rc0hLZFAxa09rMm1pWUZGQ0NNOWxrWkRmR29qYVpzNGFNMzY1?=
 =?utf-8?B?TEZOMTdTRE1rRXdNNDA2ek5kcVdaZzZjK1BJSW5DUkRGU24zZEdTWVJwRUNH?=
 =?utf-8?B?akdhNGU2dFY0L0R6alRROEkzOXU5S3VERVFkckEzaGI5Qi95d2wvZU9HQTlJ?=
 =?utf-8?B?OExlakF0SW5mcHEyU2NkMHlnMUIxZ29Ecm16MWNlZk53Skt3ZXJxbysvVjZ2?=
 =?utf-8?B?WkhRQjloY3VKRytha2c5c2E1V3M4TWR2dU9ZRUhuMEwvVzhmclVDRXNKdlpO?=
 =?utf-8?B?MERIY2J0UEFYZ3ovTGk4ai9HS3g3QnNpcjhReklhRUVhdWRzUmdodkJCR0JC?=
 =?utf-8?B?Rm9idDVlaCtRNXo2N2xOUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0hGdUZBTXoxdEFWdjE0NWgvRDJBUnVQd0ZpWGpwSFo0MHpnU2RnY0RoaEt6?=
 =?utf-8?B?ZkExU1FES2Y4TnJ4cGRkRWF0WElBcXNMSVBLdEVtUktWR09qR3FIaEI0MWRW?=
 =?utf-8?B?VDJGYzRXbDdFWmhQclhsVitMbjMyZ2tJNEVhUzA3YThJWW9UQ21iZnNBZnFu?=
 =?utf-8?B?djhlYm5oV3RxMFIzVlZkTXJkdllqVWN1Sml4dlQzMDA0cUZqeXk2cmVaTHI4?=
 =?utf-8?B?bkNvYTdVR2Q1QUhWOEx5V29SNkJ5YmxiOFlXM0hWdDY5TnJlWWRTUmVMclJm?=
 =?utf-8?B?L2pVT3cxQjFHZmQ1bnN4SnFaZmRySGx1ZGJsV1R0Uk5yaWVoU0JGRVBJY01B?=
 =?utf-8?B?QnB1V1BjcXhRaXlOZlhpTGxITldQR2VCSkxGUHNEbjR4aW5KbTg4SDN1ZC8w?=
 =?utf-8?B?TFV1NDdITnlWbjM4SFk4V2lPTEJUNEtITks3eGlSTTlVOE1pcmdSN2d0c01s?=
 =?utf-8?B?YUthc2RiVWw3ZnVRTFZHM0NlTjQ3YWt2QytWajM3VjEycjZpQ1pyUDk0S3dU?=
 =?utf-8?B?R2kyL1NJWG9OcDFSckNkU3JpcWgrc29VbE5HODNENE53R0g0dHZFWkpBdnlR?=
 =?utf-8?B?MFQ4Lzc1REhZN2N6YWRaMnpiVnRkM096enJvamlIdERoTkN0bTQrS00wVXlE?=
 =?utf-8?B?TENBeEhmQ3BBbzZiSHNGbVVxemhFSTB4dXEwcmxxRzdOOFQ2QWkwdlRZNVMw?=
 =?utf-8?B?dTNuTXUwbkQ4ZFJTeVI5WVJjVWlrOWpCVWFXcG5CeXFlSC9keUppbW1HUmVE?=
 =?utf-8?B?WlZ0QlpKWlpaQUNITDVXcjM5aVRSY2wyOXE4STFCZlVBQzVNRnZjVHlVNlpL?=
 =?utf-8?B?SkVUM2dkT0IrazdCTHdpWGp6MWZxTnpoTjJLT2tRMFZ0Y3Rlc1BRbnBYTlgy?=
 =?utf-8?B?U2JyS3VhZlVRYW9XY2VPdXZYc3lmZWhSZUdKRllnck1PY0tscFllQ0l5c01T?=
 =?utf-8?B?NWRZL3k2UjQ5VzUwNm9pdVozMkVSL1dZdVZRVC8yMXE1c1p6SFpSS2RMWTd1?=
 =?utf-8?B?b3NvUmR2SThLTmp6VUdFbk1qUUp0Si9UVjdhUSs1UXVodU5WN0xNSE4xaUdS?=
 =?utf-8?B?UEFrSVhJTlJxVWNvL1lmZU9oMFNDNVJvZE0vbUQwTmpLQngyNEczNE1PVHUv?=
 =?utf-8?B?WmFjMllJTjFaUEhzbEFhUWpYU3NaMS84S1hRYXdBSmpSM0h1NnhLck5nSGxZ?=
 =?utf-8?B?VkRpTVNjMnFGdTJtTjhGZEZ3UU43d2pYT1F5WE5xOS9ITytXb2R6S0toYnNS?=
 =?utf-8?B?UElDdVA5RXdJSmlmc1FJanR6SkJHa0ZCSEN4dFdmN3ZPZXhOT1A2d0pGZExD?=
 =?utf-8?B?bkdkVjJvLzQ1ck13dWVBZ1FwVnpuclpobHhSQ1habXQxK0I2V0xZUkkrK2pk?=
 =?utf-8?B?VmFtZWtPMS9GeXYyMnRvZnFLWitFVWFnVGtIbmI2VTBCdGljRFBmK2xkM1Uw?=
 =?utf-8?B?ekpqNUsxaFQzcWRNdTBTU0o1b0NZNjZtMHIxMmtnekM5QmczTG5VTnBlQ0Qv?=
 =?utf-8?B?b29yMkk5U09PUFhXaDZjU2M1Q05Vc0MwNG9CVktyMlh0MVRrYmUwNWZka0dW?=
 =?utf-8?B?NE4zOHorTWw3MTJESEhpeGZFeE1lYThGbDJEZis2aE51N01QVU9HNVNuWU9l?=
 =?utf-8?B?RXk0d3RocjJUczBLQUxSbFNaQ3ZBVlZvZ2l6cm9qejQ3eDBaREYrMUMvSW96?=
 =?utf-8?B?S29DYmUyWk93TDd4YjgwYVFRamIwcEZEQWVTMmFhcVN5OXRkTTVQZ2txQlFD?=
 =?utf-8?B?VEsvcENuREwvUHFBVjlrOG9GclJsV3ZLWHNodVJrL1VEWXZaSmhhckFpZ0tE?=
 =?utf-8?B?UHBXZTBZeDg2K0lFVnFWaGNvL2x5NU9XVHpYdHk2ZGg0WnlWRXJZYnBCdEFj?=
 =?utf-8?B?dDVvYndMSXRMUmtjVHl1bTVxMkZZRXd4R1VhaE9taE5xYjIrL1V1a1VFNncy?=
 =?utf-8?B?aVZPemlIRHRnS2hkUmJCSkhicTJqZmo1WDRMQXY1VzVTc3RLOUFVK2Z3OHht?=
 =?utf-8?B?N3pxRzNWdWRoSjV1eVNwRWNUdEJLckc2TGpXRWtKdHR3Mmt0T2JsV3N3NkJy?=
 =?utf-8?B?SkY0K0dBOFNieXBUMmN2dEhhc3JQWHI4bXJpWXlmREZaRzlmUDZZSEs3VFNq?=
 =?utf-8?B?U3k3OHRJbW1pT2NmM3VjUU45aFBoRkhBTXJkTHR6Ti8wTXJadjU4OGpYb1BZ?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25b703e1-1a84-4b08-f07c-08dcc72ccdd4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 06:44:02.8943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suyAZCVLbEUMK+q3jLhGl7UC5GcgVEMfEmjsAp24G6rMo5kEQ9x0UQUazPlhBcVY8p0g0keYt4E6esLcQwwT4NmTqytMpnSHXz8sTtKZTP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
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


On 27-08-2024 19:43, Dnyaneshwar Bhadane wrote:
> Update mtl c20 phy DP table for uhbr20 values according to the revised
> specifications.
>
> Bspec: 74165
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Looks good

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4a6c3040ca15..f73d576fd99e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -923,10 +923,10 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
>   		},
>   	.mplla = { 0x3104,	/* mplla cfg0 */
>   		0xd105,		/* mplla cfg1 */
> -		0xc025,		/* mplla cfg2 */
> -		0xc025,		/* mplla cfg3 */
> -		0xa6ab,		/* mplla cfg4 */
> -		0x8c00,		/* mplla cfg5 */
> +		0x9217,		/* mplla cfg2 */
> +		0x9217,		/* mplla cfg3 */
> +		0x8c00,		/* mplla cfg4 */
> +		0x759a,		/* mplla cfg5 */
>   		0x4000,		/* mplla cfg6 */
>   		0x0003,		/* mplla cfg7 */
>   		0x3555,		/* mplla cfg8 */
