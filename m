Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F7D202F2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F131610E627;
	Wed, 14 Jan 2026 16:23:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnwRdbHq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46D6610E627;
 Wed, 14 Jan 2026 16:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407790; x=1799943790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=guJaiVWSeN/zv4mkpgEVeJivzejTxpZPT+7LYXkjDOY=;
 b=hnwRdbHqvOkg1TEjiklVGeUlz4ny2/0lxsy7q96tOj4UHDXO9NLA4L6v
 +LPHntd1YpNHJ/ETb9mZvggu2egDJgVSXkrsLK95bs05+ANLI1BzRUGRu
 ADC3JLTMMja5IFB1UPaNjLw1OgVvfqjSql/CHD9DpcB1PMNO1HW0G1VgJ
 gpa4L77GLQl+h8znVzfVvU74DDNo7zyKKAYKIfX2au2ymyJl2vBrKovsL
 JSRfx+t/CgA2NguqYBQun9MFj1n26egpbaKQmqPp+NuldSVgXkXmH+UKq
 7YK3KE6AZz9yjgckRcO7T99gIi2degvc8HBEg6f3uWm7y5TVVpuRODoXL Q==;
X-CSE-ConnectionGUID: PfGwZW4CTLyyHpAT+yfIxQ==
X-CSE-MsgGUID: d1FqFOxEQvC1TYr7kE5wcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551570"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551570"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:10 -0800
X-CSE-ConnectionGUID: bj5G6MPeRxikzzD3GcKnpg==
X-CSE-MsgGUID: 8+YI5ryfR/OAPK32sgfYDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611143"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f1i5W11ycKa5R9hXwZveTvRPNlH2jOiQYf7ADc2PcmkdfTwHcBlp5cAcpoLYZSVuDV6y8Swyt5PaQdeoVQEaCx/tTrLBQm8B2elqOrXcQEQxwS6T2DgCjzdUXFzzG7VXyviPIm9mhNQcLGL2+sFTVbFBGEqwxTjctmI/iEFOWQpGQ3ThdCpioaJ1F7xhGOHbpeoCr0kqmi/LQ8IyKJYHczNgYo9F3TGPyNROHoga7Dr7O92teU97du1cZLm38OCemX4WR9ArM2GZMtE+ke08+5UotrVlv6Nsp9JHdlx5bsRZ1qDhYk9kyFDYBYya47CF7+ijpTig09ZVRqmrAOY/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KwK1YFrw9orpCz2/E5DUhs/cOGIjJUcprP6ejY8Xlmc=;
 b=fcQ8wrA+Ef5Ep76d9eMbSc+Zj+q1EDFMGcFHprf2REiwu5C2zRMWGKgLp71tcBtx9PVMc41VuEvXk/jQaUv6upz1DOCEjxcYBHSF5+eeQkBVyzk7s+zGVmbS3sz4yXu43u9gkCD4z+q3U/z9vg9aPpRWFRlf0tPXjkT5v1rCLBb7XV0UnJEF40PzbFrpuk3N/f6OfytNAqBUFoAmSqIxzfcw71Zb3ga7ShNb95RYDnwzKZ8VsCUATWbU8AQIZ5MF5usVDZdswN0bW5wSepi0Q5PV0UJ2shLNke1lOGaabgZXk2wSX4oOi8v7m0O+pPm6u+smjg7zUnDaFRimDBKNYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 09/15] drm/i915/dp: Rename test_slice_count to slices_per_line
Date: Wed, 14 Jan 2026 18:22:26 +0200
Message-ID: <20260114162232.92731-10-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 621822fb-6533-439e-0065-08de5389320d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUt6RTRmNFVOYWw5ZXdFQldWaktnZk51NlhrQ1ZoTEJkZmJJQVozN0l1WjY3?=
 =?utf-8?B?T0sxUnkyZXFweXNkd2JteXcrUjRvN2gxSFhCMEp1ZEF2Ynh5RVFVak1qeDZi?=
 =?utf-8?B?RktEdzVUQzQ4azIxRDJXeldHdHQ2cmUzY0VXTnJrSFhvYzdEalBMNStVRkp1?=
 =?utf-8?B?Y01pS2R3cm5WcE9HTVZhYmNCU0FvcUVtWUNDVHBNZjVGSHNzRjVSTEZvMlRI?=
 =?utf-8?B?SjcwVHUrQVVuRUYzMVQ5UDJvMkZCNDN0ZVNSVmZDcktnQXVJWW1vTWFIaUl3?=
 =?utf-8?B?a0hMb0pHSDhHcXVFeEN3d0JKdVJPWkowVHl3U1U5bEN4aHJBSHNCcndhZDd6?=
 =?utf-8?B?UXdHZjdpTm5nVE9sL3N6cU9uL01DZE9wMEJqdWM3T2Q1TlA0MFVHVHJVQ2RB?=
 =?utf-8?B?L2tnZHFUT1psRUZVd0hFUXhoKzduTW1BOGhCWFNhd2xFTk91Y1NZSC9VTHdF?=
 =?utf-8?B?VDBmd3Z6RXh1UGx0NmIzdmkzM2JlRDd1WXUyT3FhdC9ZT1dCUENlOFJac2E4?=
 =?utf-8?B?WXM1QlVTYzVVOWF1VW1OODlnbUdPN0M2dGtpY0JseGg1UnBRUmJYMXR0cUFl?=
 =?utf-8?B?QlNTR08rVVlpL2FlYjlOMnBxeXZyTTB6WW93UXhTV3YrQkswQzI5U01La1Bk?=
 =?utf-8?B?bi80NEJRQm5vZ2FLcitHWEVpenlMQUFyOVdoUUxlMHlKSUg3LzQ5UFk3dVVa?=
 =?utf-8?B?N0l5cm9QY2pxMGZxR1JjRk1LYWREZWZNV2FBQlBRa1hXOExFQ0Q5dzBzdGtm?=
 =?utf-8?B?SCtMcVZsMnZBRThXdnBlN2xrMUxFcWRtL2laYTFSMkplL1VucmhaaERzZVVU?=
 =?utf-8?B?MmErd0JzYlJJU1YwK3hCUDFTTHMwWmlIZWJZdFc1SXNDQm5ra2tQdmdFeXRn?=
 =?utf-8?B?QkRBdEpzRUhoMnR1c3FZTndmYzQxSlNHVDZVWE5DNFVjYWZsdEx2a2JueGhN?=
 =?utf-8?B?NmdiWER4NlNMVjZzQ1lsNlhnOSsrVmRBWFhlQ05IQUp6OU1xR3pGUHFtZ2o2?=
 =?utf-8?B?eEJMdlEwakUyR3VnVTN1WHdWckl3MUsxRkErNXpxYy9BVTZJMHhRR0Vwb3Za?=
 =?utf-8?B?cWVyTi8vcWk1Smtzc29teU5rYXArMkQwMklzMDJtWWdCMWRHSTJWZkptalVj?=
 =?utf-8?B?bXpGVTJzR2dqdHpqVWFwNWhVZjNwMHRKSnhucFdFQldBMFFiNTBTVlU5dW52?=
 =?utf-8?B?c2xZNE5SWWVOWVhVK3BZVHVSMWdGclBDSDl4b3lLZUU5ZDlYSzlPQTNHODRj?=
 =?utf-8?B?azBncEZyZnJ4MVp3b2dJWm4vTnFvM2lsWU1DSnlsVW0xbS9uVlRQa0VqOERT?=
 =?utf-8?B?OCtHakpUL1dRZVQ5NFJSbG9zekJQVXBGZG1WNlN0Y05tcG9NeWxyMktVWjNq?=
 =?utf-8?B?RGhZNEFlSlhKVnZUQjZCK1NPZ3p5dE1NazBJN0NKUElJWENRbWdUOHN3dUpP?=
 =?utf-8?B?THRmS05rNEJLaE1SY3dzYXlldk94ZkxMUGpXaHcwTVBUZjBDN29pQ1JnZ3ky?=
 =?utf-8?B?VXM1Vmc2eE1XZ3JQeWZJdlR1NkVjc2dqcHB6dW9NRThINDdORWxFMGxXWDds?=
 =?utf-8?B?UC9qM3JCdkYrdWphbFp6YzJCVnEyS2xsR05mZGt4ZVp6QVRFSzVEN2lHTjdk?=
 =?utf-8?B?T0Fxa0F4UktOSjlrOEZlckw0OEl5UWY3ZlF3UnpmT0JGRVlqZmFWbXlVeCt4?=
 =?utf-8?B?ZW5jbnNHbkpQVitmVWNUangrZ2p0MjBOa3JvVnBvN1BrakxWNDJTengxalJB?=
 =?utf-8?B?eGh4dHp2QjR2ZHpxbVAwVkRzWUVKMm1JZG4xdmdtT2tvSGM5NzlyR3NQL2Rx?=
 =?utf-8?B?MjZHMHhmUVBDNjhhOU9sZDdST2dlcWNDMEtHWnJCR1ZrdUFOUm9yT2RvSElh?=
 =?utf-8?B?d3BzL04xcktQckpLTy9Kc3NQN09LTVlyaU9FS2RhZGh3MENseVc4RzE0V1hO?=
 =?utf-8?B?TDViUUdEK0wvY0xqODQ3dytORjdBRG1oZnRDZVBkTUFjRVpCUjg1d3h5ckZk?=
 =?utf-8?B?UHlXTU51dG5td3ppd3dpNFI1L29EOGpZRWtlcy85bWhNbnVmWHpqallYYWFH?=
 =?utf-8?B?MU8wRjdob3Z2R3BxbW1lT1FYNU9udXRHZllHWjdwaU11MXU2cExwWE9FcFIr?=
 =?utf-8?Q?czLo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzJnS2RXdnE4Sk5WaG5Ca0xYaWt0cG15aVJYVXk1QkY3ek0xbWRCb1ZqYWdQ?=
 =?utf-8?B?dlovVExGSmFHU3V4bjVMelJzQjI4cEJ3dUovQ01GMEJKR1BML3V4VlZNY05M?=
 =?utf-8?B?M2ZadGtKM1YrMGpKd3hsRnpzbm0rOE0zZGpsajlqQURJb3UxcVBpdHR2RStk?=
 =?utf-8?B?V0dQczUrT2hjcDA4K3NMc3U1SGp2aVFSMzRVbGx0cDdDNTZGZ2ZiTGliVVFL?=
 =?utf-8?B?am9CanNzYmZFaGJ3eGhnQStoZHk1V3FVS1dDRmtjdVdUVUphUkZUVkVqT25N?=
 =?utf-8?B?ejFZTkRaTzh6SEtjSEZ3TFFnY2hBR21CY05jVWxLZEtPOCsvNkVuVDI2OUdJ?=
 =?utf-8?B?SkRlVEhMSStPZW5xNWU3UlNxbVRFcTFEQW4yVHF3M3dsa3V5YlVlL3N6bm83?=
 =?utf-8?B?ZG5vRnhDOTlSQWJtVHo5ZjBZQ3dRaFVWZVJtQVE4elB0ekdlMzQxQzViMGg3?=
 =?utf-8?B?TjNGUUpNMEJ5OVM2M0dvNFRGS3NZVllaMGwrU3c3MW5RdTN2dnNCTjNlOGxG?=
 =?utf-8?B?NEkzMXV6Z1N4ZTdzNUl2djhQYTBTR3B5RU53YWxaN0FCMGJidGpSNEdCVTlQ?=
 =?utf-8?B?NUVCVzEzNkRFcFpISzNiZk1WS3l6eTBSak53ay85N2VnTDlxRkpWSVlzT2ls?=
 =?utf-8?B?STBpY041RmVwOS9tYUs0emFPM1FmK2RWY3FBRlFwN28rUDU3R0VpeSt0czA2?=
 =?utf-8?B?OHJQbUl1YkprR3hFOFVsTWNmKzNkOVFNbmJ3dVhQR2JhMTJvaW5la1loWEg3?=
 =?utf-8?B?cWRoUkQyb2RwVldXYnhTY2FReUt1SlRYS01tcEU5UFU2a0xRR200ZzVFZ09X?=
 =?utf-8?B?Y1UwaEIzL1pNRG1LeWptRzB6STMzcEFMc1ZwRmNlY2preThITnVyRjg3VlRM?=
 =?utf-8?B?Z3pQL2oyYUZVa3lSMjd0Y3FzT3YvUCtXL2NYRkNGRlB3ZUdra3BYOW9XMFdH?=
 =?utf-8?B?TWtUdDd0M3NkMm9LdFRvZUNTdzNacnJNd1JqeUpoUVlEcFZTSXRvYmFQZTRH?=
 =?utf-8?B?ZmhVVkpUZVVsdXNvczlFbWphS2tzbTNXRXNCcmFWTGN6NGdMenlZVkhoWEJa?=
 =?utf-8?B?RVlQVFRMOWlybmJXMkJLRWsxYk5zcWJERDdxWHFvNzRlNkZVbkc3VkwydGFy?=
 =?utf-8?B?WWljZ2pmRUNvS25nU29qSnpTVjlZbWxnMVNQTFE3dno5QWxnNWs5TEFNcjJU?=
 =?utf-8?B?Wm9hL3Rnblg4Mm9xcmEyaEduamdON2RCTlMxN3dBbVlmbWJ6ckVkSnFpRGR3?=
 =?utf-8?B?Z21XTFQ2UmYyM2JQWmZMRlI1MTVubzZGTVBFc2QwRnYvcHNaRFdyanBaUGIv?=
 =?utf-8?B?VFBCVUtrMEdJK0diT093aDdMbU9EUnNEYXJHOTNOTiswTzVydU5pSThaL2Qx?=
 =?utf-8?B?SWxxNW5jRmVQNW56YnI3anNtdXRKem1ad25jQ0FUd1NpNlJDb2xseG80K3N0?=
 =?utf-8?B?Z0M4WndkMzAvYVoxRUlrZGZXN0NEd3BhUXhRVWlka1VHTFUrV05EeXB3UFhK?=
 =?utf-8?B?Qld6Z2NBQ01ENnRwMkVWRk44VkFSWjF6STZnTDcveFF1Z0dvejlaZGUrU2s0?=
 =?utf-8?B?SXNUWm9YdTRTdlQ0VGI3c0VLaytwZStPVDN1ZVkzTWhnT0hMOTRIYkhoZmJ3?=
 =?utf-8?B?dk8vaEVNOWhycFI4aE5KOW1oTGRHazk3Mmh3VGxHeVdtblhidWFKWXBrMUVO?=
 =?utf-8?B?bU9KVmN1b0cxQmxsTlAvdU1sTWNGZUtFSitjaHJzcG9JdjN1cUwwY0hRT2VK?=
 =?utf-8?B?cW9LTmQ0SS9NL3RGd2VyakdFVUpMSmV3cWNRSzZjRGg0WkxxMnRnTytZYW52?=
 =?utf-8?B?cHZJMWZYVDE4TGRlWEhvdDhDd2h6b2dzVkpQUnFFUDJaY2pHYThSYmRjWjNn?=
 =?utf-8?B?NkVYY3Nqc2o3QXNYNGd2QytNTjB5WGl0STA5cVd6T0x0QUZFTFl2c1dBT1VO?=
 =?utf-8?B?dlJNdWxvMVFzbG1YcWJESllkVFhaK3lwQWxQNzAzWHNwcUVWd0lJSm9pMUtZ?=
 =?utf-8?B?eGVpV2hDTzgvbFZkMXN4ZFhaYmpPVmk4bEhZWTVKSmFmQXhNLzRmdDZVV211?=
 =?utf-8?B?d0QzMGdUZjAvVmVoN0M2MWFWc2RPRkZTYi9UMC83MkZKMlJ6eUw3QWFsdUxJ?=
 =?utf-8?B?YzFybDVLU2dmU0ZzL3ZGOWV4TWNjcm9QYTFjVzlCZW51MUtMT0ZsSXJtWEdy?=
 =?utf-8?B?MExlMlpYam9qWnJMcHE0cEFzVUpKb2VUT2FnS2tlMERMOExMVGxxS0dNaFNX?=
 =?utf-8?B?bExuQ2EyTFZJSnpZeWFXbUdMZG9NS3ByRzcyNjZPM2FKSmNIUmlSRHMvdXpq?=
 =?utf-8?B?eUxHTHVkLyszR1NuMU5NYWhLdkxSbEVQWkRuc2hPeFJYTVloMWcxWFRiVktX?=
 =?utf-8?Q?Vxl+IgMGB4i67lmuaNJnZ/14yYlcdxQp9nb+ffnyAUB2z?=
X-MS-Exchange-AntiSpam-MessageData-1: YPqJRE4SOkX/1A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 621822fb-6533-439e-0065-08de5389320d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:04.9817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E/Mcetbrh1mXVILaZBK6GpJPiU+/L9gagZZCAVzWHCdLoLPFnIdAdLO3ElO1B3NDRIK3gxHHR8Wj6LjpAoL8Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Rename test_slice_count to slices_per_line for clarity.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bd35a2ba30421..57abc13a02d2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1037,7 +1037,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		int test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
+		int slices_per_line = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
@@ -1047,7 +1047,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
 			continue;
 
-		if (!(drm_dp_dsc_slice_count_to_mask(test_slice_count) &
+		if (!(drm_dp_dsc_slice_count_to_mask(slices_per_line) &
 		      sink_slice_count_mask))
 			continue;
 
@@ -1059,11 +1059,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
-		if (mode_hdisplay % test_slice_count)
+		if (mode_hdisplay % slices_per_line)
 			continue;
 
-		if (min_slice_count <= test_slice_count)
-			return test_slice_count;
+		if (min_slice_count <= slices_per_line)
+			return slices_per_line;
 	}
 
 	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
-- 
2.49.1

