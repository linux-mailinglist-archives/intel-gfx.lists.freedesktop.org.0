Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA60DB56706
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F8F10E225;
	Sun, 14 Sep 2025 06:09:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="StwtyMsN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB50210E225;
 Sun, 14 Sep 2025 06:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757830147; x=1789366147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qSgJ0gzZAduRA7RsjxeFJvvH1UufSkKplz87Ikq1KyQ=;
 b=StwtyMsNvWzPMdJJf/meL998sShkCxrHvn1rCzyB7iyNnUVAT599DRxE
 cVy6HVbE869CB4XL55OAcYpT1Uf26PRaZYo6rTVn6X3nZhRgGDR/P3EqY
 DWBvgtCYK9325lNmIGdx4jOsi2yyUqNxkIDlQPxivH4kHhaDqWEen/msJ
 nbKSVAOSFf+2cQETrn/3+pnENBqWR2jbDtptWIPGJ+As7ks2D2YFkU0iX
 wFphDPoM6QlZTNUg6XPfY3g+ENUJ2kCoE34HKq5T1LVkzR2NHcgN/0wXw
 XGkIuXBj2t1vKjI9vcsQdZpBHno2bErVKYYRZdMf9KKJcgqMRLp1sNw1S w==;
X-CSE-ConnectionGUID: u4mm3WKsQ7eruwuRukW/0w==
X-CSE-MsgGUID: ItxC//liTlyopVcG4V//Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="47685993"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="47685993"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:09:07 -0700
X-CSE-ConnectionGUID: eRmNZMl8TLC9BRPkpcYYYg==
X-CSE-MsgGUID: pnKEAID5R8CcGwsL4KylFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="174721215"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:08:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:08:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:08:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZiB769HFB+DLx5XvwtaYYEgNHz5YF3xAEOfrOJeN4PngQo5yVe0vw1B7gTqf5wpBfE+fUx3IZs1xzg+HHorfILYxFVxfxCBnM9BRcfIn7MMfPgtzyg8/gEIUmy4etm+reqZH0C6AFVC9CG/Zma0V3ZnVqXiFQsOg3TYOtcI7Oh+tMbIxuDEX4lFopcLtUHb7zhJPcpGGhitUV4k7++Lumudj9SILsoUOlP/tfW1yXhY1WZjkZJY4eA+DFZFSN25Tb+PbF0erC0Pt9jpxytTGa5NApXFIKtUBl+lks8wPcv5A2oPReUNuGvUan2B1wHihdg7ejtNp9UXekCcYx4UgKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvOWUK4hY45O429UleYh8sE3YeowQK5vnTEFkEPOHIk=;
 b=UYYFEp2EQO2fFWUf5FTnxbcI+PeO0HRkfoEfZqd9F3xvemrSqUeh8DWRHcCF2R4PSMekwfikCTZPTMsW3Kmg/wtyus571TUBQhg63Ifk9PFnR9UQiB6RH0VhVFCcX2i5WUtGWlz625YlQt2GMrgLbWqXDXvnlMSXELo8MX2DlAwonrqVlci5S3MJ41p3pWcjmzTo/vj2OvOHKYO+jaBZ6zQ5T1fm2mYb7buyUi98BtqcihSa/vQrRHCHcqO3arsBKnOZ5GtJngpxPfu1a7EIyjCslm000a1bk6bepHyIOEKv9MoEOWoTpydsRWnoRfoNQwJwZwJjn7MzeBwX2f0cSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CO1PR11MB4932.namprd11.prod.outlook.com (2603:10b6:303:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:08:39 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:08:39 +0000
Message-ID: <430d1d55-9309-4f7d-8d91-f57fb1de5468@intel.com>
Date: Sun, 14 Sep 2025 11:38:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/15] drm/i915/panel: Refactor helper to get highest
 fixed mode
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-15-ankit.k.nautiyal@intel.com>
 <aMLeo8EirLaPa940@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLeo8EirLaPa940@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::9) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CO1PR11MB4932:EE_
X-MS-Office365-Filtering-Correlation-Id: a95d80e9-0f2a-48fd-5e76-08ddf3552607
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmExMldrVmZxYXVFR1l6UmxJcnB1dW41QlJHc3A3c0hobUFYOGFVZWhqOW54?=
 =?utf-8?B?SFVtTnk4emFCelc4blJQQ1JnakhYS0d3S3c1YVA3YWtsYjF0T2RNd0FsSEJC?=
 =?utf-8?B?UVhtL3BlYVlqMXRQQW9FdHV2SXUxaFlseGJGWC9nbC9rNGlKSm9CNXZhRm1q?=
 =?utf-8?B?NXVqRlREZmRKSHBtRTk1TXFLL3cvS3FpY0FuanJrbUpXTzhoQll1ZlJuQnBO?=
 =?utf-8?B?VFBwblNjay9rZWMrZDRMKzZ1RGJpTnJLVTFheXNpclpxWk5EdmJJZmV2ZW5E?=
 =?utf-8?B?VTlPS3pHQkdjTE16NTJkRFJoUGt2VDh3Qnh6d2lLZjlEejBQalRnb25WQXph?=
 =?utf-8?B?cGxEQVdVQmpaS2dNaG9NNkROWjVlYmZiMXJDN3VGT2ZTUzFkL3ZUKzQ1YVhi?=
 =?utf-8?B?akREcnVBUlJrb0VVb0ZkMVNubVpjSER4ZXhlSnVXa3luVlpKTkdNZGRYQlFM?=
 =?utf-8?B?ZGM4dkp1UVlyOGtSZkpScFRmbmxQNHg2anVCZnJMUy9PamxUd2dJeHM1Z1RE?=
 =?utf-8?B?Nm9aTks0OFhndzg3SGZPR20xQ2J4WGtncHExSFVCOWhoZXcwWDRjNDFDK2x5?=
 =?utf-8?B?SWFhL1pWN1F2TVdpUnRmOGlubTdKdGhYeFQ0YjBRcUNHWXlQanVyVGtRNUF5?=
 =?utf-8?B?ZktnUzhOL256cWs4akR1RzVzK0xja0lYa2p0UEYyOVl0S1NVNExROTNMSGlh?=
 =?utf-8?B?QU0vTEk4L05aQjJUVnN4Wmk0NGtUM3gyU1VLTmFmbUFhZHFrZFFWVU1QTWt1?=
 =?utf-8?B?Zzg2ejg5RzdyTlVlN3IwV2l6KzlEYnBJUUtLWWJmRVgxOXU5ejFxRFk3Zmkr?=
 =?utf-8?B?WHRJeGdUTSt0YVZiTzB5ZTl1SS9BTDdDZ3ZTdVZSaFpVOGVUUkxvMEpkckc5?=
 =?utf-8?B?bDM1YzRrT25VZGpPWmYzOXlLN1oxRitTZXIyMzRia1NlN0xUeFgxc083K3pG?=
 =?utf-8?B?ekdmQ3k3V3V1T2N1clBTdnBWQzZOdVZsOWpFbDBGMytHdGtoeGJIQmJpdHg3?=
 =?utf-8?B?ckcycVJaWHF6UVhKby84RHM5czB4UDBIazBZNjZxM3U1VGJZM1NDZlZKa2FT?=
 =?utf-8?B?a1lma1d5UGdSbWc0TnpDbnZBK1pDMEI5WjVNNXB3cVRRbXUvNkZ2Z1lnOU5N?=
 =?utf-8?B?Qm5pUCtRUzI2UWVSVmJ6VGNFL2tzOVYzOWNoK0tSNzIvelFHdXI5SVV2cEpX?=
 =?utf-8?B?aDdkeHZTbzBIRHhCSHkzOStvZDBSRndZZzZSNGNyRjMwSnhPbWZnS1l5NlB6?=
 =?utf-8?B?UVlyTkJTbmdHR3pIdkE3b3FHZ0NjZ0ZnNndFUjh0enZMUGVTTlBCNFgwc0Ri?=
 =?utf-8?B?a3N0U0tDLzFIOWV4aDhpYUw1WGFEdFVZTU5oKzJTN2QwN0U2S0lhWkNiZ0w0?=
 =?utf-8?B?OXdOdjNvQzI2M3FyRFRGeFQzTlZIb1lPWjVTSW1Wb2hOQStyZGtraU9sTnRD?=
 =?utf-8?B?UTQrMFFvbGZTdkR0SlZDbks0WlpvN0NTVVFzMnhiRVhmS2dMa2JwSDloSlpR?=
 =?utf-8?B?WmVIdWhsRG1pNXB6RnNwTVZFUitLNWZiZkd0amVuditSbGFyNTkrckdXUmd6?=
 =?utf-8?B?a2dpM08rNkJPblg1ZS9GVExMalR2UG1aYlIyUFdoMXpCWlMzSXFJU1RoVGVz?=
 =?utf-8?B?ejA0TzI4Y1p4V3o4REtLNllWNWRsQlFwdng5MlZwS2FtMUVmRlI3VmdnYXQ3?=
 =?utf-8?B?VTduaGhoUHJ6M1IzcE4yUEdQekFzS2tBN01iMVhQMFRCWDJFQkRKbE1TanVz?=
 =?utf-8?B?bFhZVDVaRENMMEwydGh5MjNNMS9qb01KRXBxekNqSDdsM1Z0bVdyNENEZm1h?=
 =?utf-8?B?NE5aTTBRSzl0dVFNUDc5Nloxb21LZzJGQmxXRlU4TC9ZalNJOTZzVDBJbGN6?=
 =?utf-8?B?WHdKbS9EK3V2c1NFNHpxVW5PaUk0b01TMHlyOGd6V1RnS3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?citsQ2FRVm5MVXlJWkhRc3lzcERKNTNUTjM3YnZOU05jOExPa1FodnBWc2NK?=
 =?utf-8?B?TEVKZWdaMFg2L2I3eWdrZkN6djk3SnBsUTREMzVSZkxZbmZSenNPSHd0L1pG?=
 =?utf-8?B?d3RVZ2JtNkc4a3VjMDFZR1AvL1pTODA3ZWs0OGlnU2o3eDU3SjcwSVVYdnhu?=
 =?utf-8?B?aS9WaWpUb2NTM0xrbXNncVlJZTV1OXFZK3QvbnVtMm14OUVkbzlVTjM2eGVx?=
 =?utf-8?B?YTkxaXBXOEVqakV0aXkrUUlEcEcyN25ZamczcCtqWFM5aGl2UTVnbjhkNUNl?=
 =?utf-8?B?TXFSWjFsTEhRYWNleE9kRmRYRnppZm5Jc084alRWd0UrK01pVWlsS3ZRWExt?=
 =?utf-8?B?R0l5LzlBZGNYeUtuVzhUeWkzSW5jdXRQalhvTUd4SjZiQ2svYXIwWHRBMFZS?=
 =?utf-8?B?RjlZTVg5U0xkeENaemR5QmdWcUJvTjdqdk5SREVMN292UmtHM2tCUXhGcEJ2?=
 =?utf-8?B?eCtPbmdWa1hCN3A2Y0Z1dExVcWs1R2REbFZPdFd3QTg5ZHNCN1NNUmxGUlNT?=
 =?utf-8?B?NFpUd1BVQWJkOFB3ekNHUS91aVV2ck50elhIUzZpbVoxUHM3em1TRTNxeno0?=
 =?utf-8?B?SGp3dFNlTWtSa3FuUnRPMHhtd2VsSGVuVEFmYkg5U2tyTU1uelYzaDFMWk5l?=
 =?utf-8?B?NUF0aVZBYXFmL3Ezc0xPTmFxMFdUMksrNDRjTTNjVDFDMW5yUjlmYmFieFE1?=
 =?utf-8?B?Y3lkZm9qRURKMFFPeWc3cC94UHZvQkJiQXlMY3BqTHVMb3JrUE10RTVQS1BJ?=
 =?utf-8?B?bDVWL0hFeVcraWFaUGZaZFIvNjdDdDVnbnd1L1BuQ3RnOGh6VjdkbmV5cFJF?=
 =?utf-8?B?V2wwUXVhY0pWR1NNVjZPZG02KzRuWG5wczB0b1RJZ08yNGdkL0RHc1V0Q3Nr?=
 =?utf-8?B?aTB5eDFxbXI5Skp1QVNiQno3WjIyVjYzSXdGaUtNZmFDcHVIaFRYNlh2WDhT?=
 =?utf-8?B?L3MweEo5OGg1N1BhTWRaZnd6QTE1LzdJUmkxVk1ISmE0UnpkYlBGY1JnRktI?=
 =?utf-8?B?dUZmWGc4NjV2MEdRempoTk5SbERxdk05bEJMZGZTUkwxdllwdHdReEludjRB?=
 =?utf-8?B?c1Q0UXppUEVjOERHd3Z4Um1qWitjK2FZN0JwYy9ZVlVsRXJVNXRhdUhqZHFo?=
 =?utf-8?B?bUx3TFdzMFNiOGU0MlpOMTVzSDBQQ1RTc0dLdkdjeXl2Mks0TnV0L0JtMU9O?=
 =?utf-8?B?aC8vUDZ3TjZ5dnVXNlhuU2JQOWVvY2h3U2hMZk83MnFyYnNKaHNKOXdWTzJ1?=
 =?utf-8?B?QmowTElDZzQvZ2M5b3dPY3BwV1MvcVQxWmF6YnJROC8zNlFxMXJvQzhmNkFR?=
 =?utf-8?B?KzNyV29vWVJqTWZpKzRsVDhjc3FFRmxIZlhvZEF6VFpFUVp0c0hHSngxcll5?=
 =?utf-8?B?VWppNXNLS3I1NWg3ODBxVFczd05tVFNKWDg0Um96eGZpYlhmWi9GQ3NNK2tB?=
 =?utf-8?B?eWtVdjJnOUd2NkNUckF4SFU3MStHY0MyZXIveWoyL0JNcDRNbXFhQzgzczhB?=
 =?utf-8?B?WFkzaGRBL0JVVEsvcGFrdlhXZ0cwT0x2RGxQWW1oVmJDTlg1ci9HNjhZWlJi?=
 =?utf-8?B?QTA5ZnZPK0JXVkNhekVxKzRSaE5PaTl5MGJ3N0VuVzlZNWFoSFdmazZHdzZU?=
 =?utf-8?B?dDdhdjkyVWhYUjNsS2JINlk1UnBHankyVk5NdEl1eEJ1eUVMellDMEpxNUV1?=
 =?utf-8?B?L0s2VGpHRXZrWUQrSzBZZWpZMnVQaEZQSE9xN1FjWDNtYXpBem1lVnVlMkhq?=
 =?utf-8?B?cEZEZWUzRnByekdiYXlHR1UwL1B1ZlJjZDZ4Y21iTlFtS0xnZk1uOE5aNVdT?=
 =?utf-8?B?TE80S3BkUlloWlhmQVlxdjNYWlUzRHo1ZGhLRllIMitmSDFtUzIrdjR5UGdo?=
 =?utf-8?B?aFRZRXNSdnBGVm1INkFUYUVVY0Qvc0V4MTVOcVloRVhMT1h4T2I0dlp0M3pQ?=
 =?utf-8?B?T1VNS05OdzFQRElpMG9vMmhDc3VQTm9USW51S1Q5U2svTkJDVWVqZnJMNUE2?=
 =?utf-8?B?ZzFFL0J2RlZGbnhWT2E3dDcySUZoeXJ4aldsVC9yLzdEWlA5UndmWkVRak8y?=
 =?utf-8?B?c3hMK0R0SkgxRlBQSHl6bmlEc0ErRUxOWTE2eHEwMFdpaVpjWWowaFNoUXIv?=
 =?utf-8?B?L3NoZkRBZThuM3RyV3Yzck9DTG1HY3FNZjhybUVDeENVNFVWRE42N3Q5c2o1?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a95d80e9-0f2a-48fd-5e76-08ddf3552607
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:08:39.7610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qmnl3+O6ClB3y41m0tmDiQHd2bjDdgJvNR82kQZGAgv/hcQ3oDowv+Ismy/YPRSY4Aktf7msuj42CEygqhm0S0tGjh5A8gZUII6dNeUEMa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4932
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


On 9/11/2025 8:07 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:53AM +0530, Ankit Nautiyal wrote:
>> Refactor intel_panel_highest_mode() to return the fixed mode with the
>> highest pixel clock, removing the fallback to the adjusted mode. This makes
>> the function semantics clearer and better suited for future use cases where
>> fallback is not desirable.
>>
>> Update the caller in intel_dp_mode_clock() to handle the NULL case
>> explicitly by falling back to the adjusted mode's crtc_clock. This also
>> addresses the existing FIXME comment about ambiguity between clock and
>> crtc_clock, by using mode->clock for fixed modes and mode->crtc_clock for
>> adjusted modes.
>>
>> v2: Avoid introducing a new function and refactor existing one instead.
>> (Jani).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c    | 14 +++++++++-----
>>   drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++------
>>   drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
>>   3 files changed, 15 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 83c46e4680b3..f74ac98062d4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1760,11 +1760,15 @@ static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
>>   	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   
>> -	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
>> -	if (has_seamless_m_n(connector))
>> -		return intel_panel_highest_mode(connector, adjusted_mode)->clock;
>> -	else
>> -		return adjusted_mode->crtc_clock;
>> +	if (has_seamless_m_n(connector)) {
>> +		const struct drm_display_mode *highest_mode;
>> +
>> +		highest_mode = intel_panel_highest_mode(connector);
>> +		if (highest_mode)
>> +			return highest_mode->clock;
>> +	}
>> +
>> +	return adjusted_mode->crtc_clock;
>>   }
>>   
>>   /* Optimize link config in order: max bpp, min clock, min lanes */
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 2a20aaaaac39..ac0f04073ecb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -144,18 +144,17 @@ intel_panel_downclock_mode(struct intel_connector *connector,
>>   }
>>   
>>   const struct drm_display_mode *
>> -intel_panel_highest_mode(struct intel_connector *connector,
>> -			 const struct drm_display_mode *adjusted_mode)
>> +intel_panel_highest_mode(struct intel_connector *connector)
>>   {
>> -	const struct drm_display_mode *fixed_mode, *best_mode = adjusted_mode;
>> +	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
>>   
>>   	/* pick the fixed_mode that has the highest clock */
>>   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>> -		if (fixed_mode->clock > best_mode->clock)
>> -			best_mode = fixed_mode;
>> +		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
>> +			highest_mode = fixed_mode;
> This looks broken now as it will always return some kind of mode
> from the list, but whether or not it's better than the adjusted_mode
> is no logner guaranteed.


This was in relation to supporting seamless MN DRRS with VRR timing 
generator.
As mentioned in the response to the following patch, this is not 
required and I will drop this patch from the series.

Regards,
Ankit

>
>>   	}
>>   
>> -	return best_mode;
>> +	return highest_mode;
>>   }
>>   
>>   int intel_panel_get_modes(struct intel_connector *connector)
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 56a6412cf0fb..8a17600e46a3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -37,8 +37,7 @@ const struct drm_display_mode *
>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>   			   const struct drm_display_mode *adjusted_mode);
>>   const struct drm_display_mode *
>> -intel_panel_highest_mode(struct intel_connector *connector,
>> -			 const struct drm_display_mode *adjusted_mode);
>> +intel_panel_highest_mode(struct intel_connector *connector);
>>   int intel_panel_get_modes(struct intel_connector *connector);
>>   enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>>   enum drm_mode_status
>> -- 
>> 2.45.2
