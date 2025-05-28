Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCE5AC724B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 22:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4792310E039;
	Wed, 28 May 2025 20:36:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUE1rAul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990EF10E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 20:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748464566; x=1780000566;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jytJEUj/arDbaxaHdx3yhOgHgyaoGlGkuMBDfBjpexk=;
 b=AUE1rAulJE57d9rr3EeRd1EBgMUL3o8lGMV30JqUjb1+nzqeWbJhIcv4
 Xu47cH4VQXAVFCDyTuKC0zNvpQ2V+XRTt+lglpuujukDf61x6OWH3vMRv
 TSzJY9mL6STKWdJZxDurP0GzHi9lD5fKXWArh8MFAvL1fw9qSKm1Qa+Qy
 Fz9wIeKXOpVD/rGwz9ze/Gn42B/i+TxhPj8Yh0Th9hQhsjtRmvokYj4zm
 3EQ70EzcRx7ksci6lziJ8YBiKoI5PwgfcS1HWEnyv5nRMsA89PDWF8z9G
 WvSKdflC2i72gGx0iPJrSO9o+/WuEQZNR8VXCnWtpdR33cEkMVCa2aJHS w==;
X-CSE-ConnectionGUID: 0qhDsK40RtmGO/1CtNw5oQ==
X-CSE-MsgGUID: YuKZd4jrSZOioQhmbyFSRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="54170606"
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="54170606"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 13:36:05 -0700
X-CSE-ConnectionGUID: q92rBdqRQ1aL7KlC5C+siQ==
X-CSE-MsgGUID: rFOk2mXgQmaCdwz17EqIoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="143809411"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 13:36:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 13:36:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 13:36:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.76)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 13:36:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpGfywYvj3cH6ms/69DsWspTJ3Y7vSCJnwEXmrTL03L0fNaGkeu2UloxJygtti862YQHIaMHAnKmEmPEqSOkwD0I6PIZZR6DXZvM6DsotPWsaYjxYlcMGbn2VjPF/ZMynxRp6QkBGWyqjhBfBslKO30fHgqvint9TVPgLLcJXxmNbrCh3KDIAVGK6Ngb41TbAA8BZMkYUHND3o2HZFDt6wolwRB95KUcY77fyelI0uXrS72AZ3raogRcEcRVMGzE3/2AWA1bbZ4w4tyi6nyIQbFWJ7yqBUe3fBWVvDBe7ZN6ueKfLZDXSfbuKci8Dq37fKympFoadz7vZOHV4Dv7eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=evtz++nLkHiJ54zZ/887WAIMFVry8Qhwxr+0aCiTDTs=;
 b=QPjWiAzvbePg8zUvuyNmhNk+C7BVYbXoEdkehShUoymnnE+cjAE7B+pJFROJhCwNmk9EiA80DIZiQmmP3FzPQCH1GU/QJb1aQg7QY7XwCJQcps19Vr/hYTw8oKr0cUeqRC/1uPyoJHMeqv1heIWxiY6pZF0dwUEBcuxqmn/nXRYJlMgfh7deEIE0vj64Ck3RtFla6ZztlBLN5qriUgM36S1q9IUqlcPQDAuJBPt3Fd5Ipcvhm1C6osybWuatNbNwkTB8jX7So5Oys++Ykp3dq3jpmvgDAhSXwRAzTneuVm3YWSt2i6zVrSupLQ71zJh8b9LTGmNKYrvkGKPPmSl74g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ0PR11MB5895.namprd11.prod.outlook.com (2603:10b6:a03:42b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.22; Wed, 28 May
 2025 20:35:16 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8769.025; Wed, 28 May 2025
 20:35:15 +0000
Message-ID: <f48c1717-7854-4515-b0f9-088fba3e0c7b@intel.com>
Date: Wed, 28 May 2025 13:35:12 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/guc: Handle race condition where wakeref
 count drops below 0
To: Jesus Narvaez <jesus.narvaez@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>, Mousumi Jana <mousumi.jana@intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
References: <20250523235210.1329493-1-jesus.narvaez@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250523235210.1329493-1-jesus.narvaez@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0023.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::36) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ0PR11MB5895:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dcecb02-fa1d-47f2-9d8e-08dd9e272720
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGpVWlJLMVJkSlFBZjE3RU81aElhbHNkTDRsZWJCYTVTR2VzcjR5aVVaRzNI?=
 =?utf-8?B?NTJCTUpQNU51U1YzOHBHVjR1YmswNDUzRGVoYnIxeE1Sc2EzSGJIVWQrbHN2?=
 =?utf-8?B?aVZ1OG1WdXA3TlZNRDR5UXdDR3RPc2pWVmEwSmh6TUZwcG1YYVkyc0tqQTlY?=
 =?utf-8?B?YXNUMWZ1RFpobEZhbUlYYzl0bFZidWRFTHhIYm5RaDY1eko3a0lwdzBRN25r?=
 =?utf-8?B?QUJ3TW5vMWRqem5RZE0vTG5UWjdtaG5NU2t4Wi84MUdyRWJqSitDWXU0YUZB?=
 =?utf-8?B?MHRZbk9jWUlUVi9PTjcvNVZYUWtHdXJhWWNla1BlMFZQU3RDbXVsWVVHbkR3?=
 =?utf-8?B?UEdIZG4xM3o3Vk51ZnZOWUxmYTRQdFNwWFI0YUxTZVExOU1CT1BRWlBRVmJs?=
 =?utf-8?B?T3NTd1M0M0lSUHdVYlUzd2c0c0szQ3p6N2xvcW9aWFVqUE5pTDhEaWpQRXdK?=
 =?utf-8?B?aGNaaWNkUk0zRFl1N2xRbHlRTi9tNkUzZHpGWndzc3VWbjE3THBnMW5QRU41?=
 =?utf-8?B?Y2ttRHZKTGFtWi8wTEJLVUl5NTA0Q3ErcXpUcTNBVkpScGNNUytsMlVVOXh3?=
 =?utf-8?B?ZThYSzJZZWpSMnVVbkhhczE0UmRtby9jMWk2YWU5dmtSRjE4Um5HRDU0UVFF?=
 =?utf-8?B?U2FHL05OTGh3Z1cwRG01OG1xZU1XY2hLRmExbFlSTmRnL2wwdDdJUU9OMGNv?=
 =?utf-8?B?d1MyTnUvS1dUelNuNHZnZktsUENrM01ienQ0bjVrSStTMEVwKzFpY05RUmcv?=
 =?utf-8?B?R3VqNnFlZzZFMDNoRnhnNUtpY0kvenl0ZENkQlNNc3hRQ3NyNlpXQ051SjB5?=
 =?utf-8?B?UGQ0VmZSZ0VnRWNuL1ZHTFhPZnZaODIxdWxEa1FpTERZT0NMQ2pvb05kcnJI?=
 =?utf-8?B?K0NOTHc2WkI0M2NjeTBRMW1KWWorTWZaMzQxREF0MmpaMTZZOTZMeFlBYWpG?=
 =?utf-8?B?anNzR09TWk1xR3M2ZTFUNFRnZjJlZlEvbWtOM2xUSERTTEJtL2VvSUVDT3hS?=
 =?utf-8?B?Tk8reExjZ0JIdzFHUWRnbmJiSWl0OFZnVkdVNVNkemx1b1VGSlV1ZmRHWXNp?=
 =?utf-8?B?U0pxNEUwcXlqUVBLb0FMN1phVzZrTG5KeWFKcWhiL3RaVVg0UGxxaFRTazl6?=
 =?utf-8?B?YUFpbVh2dU9sMHlEaFgwei9takR4NmNva3VBMlVjcXk4b2R0aTRmSWJWMDJk?=
 =?utf-8?B?NkRVR0ZaLzBNMWlSZTAwSWRrY3pnYXhIQi9qTnlTcFF6RHFrZkhoaHVod3Fl?=
 =?utf-8?B?N2NaVmZWQUVabXJTQnhHd3FkYlRiRGpnNmdFbjBlZEJNNERwdkRiVmx2VjI3?=
 =?utf-8?B?UlMxS200OFYvUTNGb3dMRDExYm1IOUdVVWIzN2N1TGE5cmplRTFLNXh3b1Fs?=
 =?utf-8?B?ckJDcVJuY2JTQWJwbk00OFo5Wk1xMVdQWXh1RVJ1bzhzTTdxVjY1cTFtSUZT?=
 =?utf-8?B?RzB0UEtCdlRHc1JndHk5Nko4V1FvMW8vRnVWdEJCVTl1MDQrY0xYR3ZqVmFW?=
 =?utf-8?B?K051V0JnbUxlaElWNFh0Y2Z4ZXk5QmljQzByYU90SlNONjdmbXR2VnF5RzBI?=
 =?utf-8?B?UVNZRnJlRW1DM0tETUw4cGg5U0liNnhPN0o1VnlyckNvR0JzNXBhVjAwaE5P?=
 =?utf-8?B?OEtlaE1yWnV5VnJSY1VvRExSQzR3VlRLWkw5S2ExMmp4cnlaVElvYSt1TkhE?=
 =?utf-8?B?RTZBWnpKTnhmZHBJVHlObnFreGoxNGx6TzB0MThmR0JOc3h4d0txMGI4K1Er?=
 =?utf-8?B?R1BGZnl2MDR5UUNvSHpML1lmNm9lTENYZnhMRU9Tck1uWGIrKzcxWDRmSWx0?=
 =?utf-8?B?L1N1bW53MzZzWWhyVW1VVm5GbytEVWhoeTBsenZYYW90NjNqaEtwSTIycHFL?=
 =?utf-8?B?UW9NV0ZhekxRa04rUlR6N1k1WmhOMTZmTDBKbTlWSDRmcWh5VEdPUzA0QS9k?=
 =?utf-8?Q?7PUCTx9wax4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjNEUVV5dXdwRDBFc1F5UGNsMk5zOEZCek55NEswZEYrUnp3aExQQmlveitk?=
 =?utf-8?B?cFdGanJQZnFyU3F3QUNIZm9oU05jSFBmSFArWG52bnZHVTlOTUFTVFh0bXVy?=
 =?utf-8?B?QU1OOThWU2FXL3dpNG9IdXQxODhYUThnK1hmR3pHcFZFY25BYzFKNXovU2FO?=
 =?utf-8?B?TVFMNlZCRC9KaDJodFNZMVYrTVJxdE1PdHg2Y2pXTmFrTkpNNEp1N3h3cVMv?=
 =?utf-8?B?VXhmMWpiZHNuV0JLK3BJT01kemZueUZZdzdqckpsaHJiR3Bjd1RSb1RBc2Zx?=
 =?utf-8?B?ZGNRSDdXQThMeVN3TTJRWk9GY1NHQi9PL1NnSTMyZ2FaOVF2QTRFOFBqNFhQ?=
 =?utf-8?B?R0ZJVURyZlhGWG9sV2QrUnNXaUc3eXpiME5DLzdwMlIrOGRCL2JicXVZV0hi?=
 =?utf-8?B?Q0d2dm1QZzUzZktEaHRMZ0N1NElPOHVpMGhZZUMzcC8wVWlyS1pSRmFQVzJV?=
 =?utf-8?B?YWdwMzB4cUNhbjRGcFozNGcvSDNDZjd4aFI2QjZDWjNwTDBoMkRQUFVDL3hy?=
 =?utf-8?B?L2FtYjdlSE9qSDJpV3dWbWl3bzUxUStqbHVUa2x2aTRwVWJZdkp6TzJlSWta?=
 =?utf-8?B?bmtpVUF3VnFJSjdQWW5MSy8vWkJmdFdzYWxhKyt2aUhsbzhDRUQ0dFU2R0N6?=
 =?utf-8?B?TVM4Tzd1Snh0MHhvRmJzTDJWT01ldjdnR2Qxb0ZEa2Yxell6M0xSV1pndVEz?=
 =?utf-8?B?ZFdPaEtZbGJKZjk1TlppVW5aSzVTQUZlU2h2bUc4YTFZa0szQjgwUnhjWFN4?=
 =?utf-8?B?NXY3a2tPbGVOcytIcFE3ZllxajMxdTNKS3JyVHYrejZsenRsdGRlb1F5WGN4?=
 =?utf-8?B?RS8rR1lnM0FrdGdlekN3RFJVRVB6R2RzbEdCWFdnYlVhN2E2dG1pYzNVNkdQ?=
 =?utf-8?B?QklScUNOK3BBbEFVQWtJd1RZQW5yMExiempyREFDZUZzRUgzMlNVSmZ0MFo5?=
 =?utf-8?B?RXlHMTNmclFkTzVqbW5abzVERHRETmRERC83ODN0ZWg4My9jVjEwcHZTbGFN?=
 =?utf-8?B?bFIrRlVzLzhSbjFqQlFOVEpMTWdnZHpiWExTUDZoUFBYZ2NYaldaL3VQdk56?=
 =?utf-8?B?K0NoK3JLWXZGM0tYL0lrcE5kMk91TzRQaGVJZ0FHL1hKc3VyZVpHR3FkQnlE?=
 =?utf-8?B?ZVZzVGZCckhZbDhpQ0lsUGNaWGs3WkxvWC9QNFMvcVF3RVZ2L0FaV1V3OTgz?=
 =?utf-8?B?R2JXMUhMSW1XZUY2dzBRUW1LYXZnczFTTWRzK29LNDdpeUd6T3d1ZmpIcHZH?=
 =?utf-8?B?VGFhWnhvRDFDL1BIV2phWGY0SjVwck5RVzdKSHNpQ2JIcE9MQUh4UmJSa1pj?=
 =?utf-8?B?QTB4V3E5ZXovQ3ptOE1lazdWbjBoMVNBS2FyYnVXN2d2ZURFL1JCUW94bVd1?=
 =?utf-8?B?aEY0RUJYeFJXck9XUWFIaUg4K3BkUFR6YjBNelRLaWFza2crY2ZqbGxPelg2?=
 =?utf-8?B?WEQ4dzNacGVDWS9mSTMrSnRKVzlITVV4Q0xudFJRZ05VckdXNTZDSWs2UnFt?=
 =?utf-8?B?ajhINjh3NXZZUzgzR25RTTdNUDhZYUNoV1dtcDBZYnoxTjZMZ2ZpUjBZUzM2?=
 =?utf-8?B?TmJtTTYwbzhYaitoejJZZ1prLzhmcVhsRkhMeXA1aktWNi94bjlDREI1Tlcr?=
 =?utf-8?B?d1puejNPNE10dGFlUlBHYTZENEdLRTdUNVBuTFM4eHFmVFlmb0JaUjZ3bVBo?=
 =?utf-8?B?SXROZHl4YStrbFBkcEJNYkJNMnhydkUvNDViNjhLV2ZxVjBWc09DWXQ1Y0cr?=
 =?utf-8?B?ZUQ0MzFqaDFlK1llTEdTbDRrQnZ5b05sY2xDN0EwUHgxVkpaaU1iYnF1aWEy?=
 =?utf-8?B?b0FTcy8xbGwwYWcxUzN2MnpGME1wS2VhOVoyTURvSGhOQWNFMHZxdVpQT3lG?=
 =?utf-8?B?QzJYbGxsTVU1TENwZlUxTyt0YWc3ZG5jdlNPdXNtd2hid1FsNDM4aW5SMEdW?=
 =?utf-8?B?R3dSN21VNzNpZ2JXZnNwSER3RC8wK0YydmFHcWZqbkVpZFdRZDZudUVBTFZI?=
 =?utf-8?B?KzI3bzYrMTdPcnNWYkFKeW52QkVyZ1c1Q1JEMVRPVVNiUzJFaUI1bktVeXpV?=
 =?utf-8?B?WkFpd1BvYnBxQWRRWXpTM0hGZlp3WnkweGtBL0pRK1ZZcmJYTzZ5dVREZlh3?=
 =?utf-8?B?a2NkellOeEhTTE51N0U2S0UzSTNhNEViZHRMY0VudW1tbGsxOUN6MGtCY0pw?=
 =?utf-8?Q?a5yDMcauQTTGAqKJlzPXbrM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dcecb02-fa1d-47f2-9d8e-08dd9e272720
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2025 20:35:15.5428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YpeXeyER0EhTjn7kWN0fSOqtS6EZisMYV9kwMlnBDYTdZRrjwsC5og/iB3a/Xy+K7MuEwTOb/pTVQzhWH2Jjl1u4oOW9neMylkUBS0bJ4oQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5895
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



On 5/23/2025 4:52 PM, Jesus Narvaez wrote:
> There is a rare race condition when preparing for a reset where
> guc_lrc_desc_unpin() could be in the process of deregistering a context
> while a different thread is scrubbing outstanding contexts and it alters
> the context state and does a wakeref put. Then, if there is a failure
> with deregister_context(), a second wakeref put could occur. As a result
> the wakeref count could drop below 0 and fail an INTEL_WAKEREF_BUG_ON()
> check.
>
> Therefore if there is a failure with deregister_context(), undo the
> context state changes and do a wakeref put only if the context was set
> to be destroyed earlier.
>
> v2: Expand comment to better explain change. (Daniele)
>
> Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Mousumi Jana <mousumi.jana@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 ++++++++++++++-----
>   1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index f8cb7c630d5b..a20a9969c4e7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3441,20 +3441,32 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
>   
>   	/*
>   	 * GuC is active, lets destroy this context, but at this point we can still be racing
> -	 * with suspend, so we undo everything if the H2G fails in deregister_context so
> -	 * that GuC reset will find this context during clean up.
> +	 * with suspend, so we undo everything if the H2G fails in deregister_context
> +	 * and if the context was scheduled to be destroyed so that GuC reset will
> +	 * find this context during clean up.
> +	 *
> +	 * There is a race condition where the reset code could have altered
> +	 * this context's state and done a wakeref put before we try to
> +	 * deregister it here. So check if the context is still set to be
> +	 * destroyed before undoing earlier changes, to avoid two wakeref puts
> +	 * on the same context.

The new chunk is good, but you've kept the modification to the previous 
comment which is still confusing. I suggest leaving the original comment 
as-is and just have the second chunk added. With that:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   	 */
>   	ret = deregister_context(ce, ce->guc_id.id);
>   	if (ret) {
> +		bool pending_destroyed;
>   		spin_lock_irqsave(&ce->guc_state.lock, flags);
> -		set_context_registered(ce);
> -		clr_context_destroyed(ce);
> +		pending_destroyed = context_destroyed(ce);
> +		if (pending_destroyed) {
> +			set_context_registered(ce);
> +			clr_context_destroyed(ce);
> +		}
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>   		/*
>   		 * As gt-pm is awake at function entry, intel_wakeref_put_async merely decrements
>   		 * the wakeref immediately but per function spec usage call this after unlock.
>   		 */
> -		intel_wakeref_put_async(&gt->wakeref);
> +		if (pending_destroyed)
> +			intel_wakeref_put_async(&gt->wakeref);
>   	}
>   
>   	return ret;

