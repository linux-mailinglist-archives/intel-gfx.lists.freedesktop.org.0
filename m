Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F9D0B20A
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 17:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBF110E8FF;
	Fri,  9 Jan 2026 16:09:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGF5lx4r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 927BF10E8FE;
 Fri,  9 Jan 2026 16:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767974979; x=1799510979;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=M2uwvULX9G9ddsn6/47CfMUkdyh+ajvAzEZbl3Q1hcM=;
 b=CGF5lx4rM4sX1WEr4/6aVMWnCFJfGIKE9dqXrBNUWYD9ICScRGSwEWrH
 PdHzu9loFoRC5fvYlrLZt4W95jDF7wHUqtbkyKfYkGdkzMBeBfXRwzMPi
 13hZQ9LElOCLD2kXej3g6ooEkQZyKkPLAN09/QgZJx3J8r2r92MmD67Vp
 L1UifJInoT92p3k1PFlnH+ZElIMD9C240g5RQw45d6Dl7gRCIWiRBTzDG
 JwohvEHjM+rRfwdU3cQVQA7oNvrRKOeQwkjVtzvfhT2jgdkVTOyetUUuU
 ZIi/9TNYO9pDDyoaut8sO/3LMCdW3NnPmPTZqguH8xWLydO0e9pXxpHaS Q==;
X-CSE-ConnectionGUID: 4HJxOE5MR5eMd9hFUorU5w==
X-CSE-MsgGUID: LK2Ot+NcQ4qVnM61VQr9aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11666"; a="69404700"
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; d="scan'208";a="69404700"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 08:09:39 -0800
X-CSE-ConnectionGUID: VIWV5IpHQa6M71jL87XvGA==
X-CSE-MsgGUID: ALDMCUdLQaKxu+i5PcdBDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; d="scan'208";a="203292224"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 08:09:39 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 08:09:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 08:09:38 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 08:09:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ktk6yaN1cjbryDZFudpLKrSEp9M2DdxirPeLGd2Wq1RQxhgv3ytB5WRs5XSXo2yAOJIfkjqYWqOKfRuO28fvAyQFiPAbF3K4LNEYBWOoiVk53xVhKI+KexReL3NxvYsNRsou1zJpkFxdJahprtk619zFXauxmBYs4eNyb8DTMUCZF1x/tjFRK8ejnnfasY7xt2pwMMtvqvsShmyZysnAvMCPaNFSYn2UUpUuDrEI6yv6fOl4xMPx2Wz6nQ48qJqz0+DUzwURjZkWMdJbKLOWol22hCq1lbGfUWNFJCsrGq+3gNIxSRKsOXGvyCDoV8ezn/XPgJXl6j0AbFZTF5GbHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zYn7s0Kmi3A7gaHSa022YmnxsPg4d6HoXBzLlm8AzUM=;
 b=ClSr84B9Dt6sr6qj+UScJJhCUfBpCNLPwxgVFMJ3hRWmtIdzDlHZZ6OaIVAJXZ9bBB+YB+OS26FWqOjCq8ND7xnhQnD4EYjqHD2xDvP0BF60GtRi00a2xQTgz39iXUdJlcMVMCKtd5BGQvVaMEyn9pquWLLd0acBt3Crq67gN42nN0rGjkc8HDhzCemJ8ZDP7CEU/nAkL6hWzlbb7j7/zPlzvHVXQcUm3RKkiGuDe9FsoSZDKeCVCjsqZNnz1C5Cvlf+IS3h0RHxzfxyORhktx3QYM9tDyPbz3+fg5sO2C6FYGSfiasMcix8iFN/YnpJilwh/geWNVFJKg9jZRp29g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.5; Fri, 9 Jan
 2026 16:09:32 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::cdde:8d34:980c:776e]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::cdde:8d34:980c:776e%5]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 16:09:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <IA1PR11MB6266B480556D9B6B710C7CE3E284A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20260106-xe3_lpd-no-cd2x-divider-v2-1-06e5cbc9dabb@intel.com>
 <IA1PR11MB6266B480556D9B6B710C7CE3E284A@IA1PR11MB6266.namprd11.prod.outlook.com>
Subject: RE: [PATCH v2] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 9 Jan 2026 13:09:27 -0300
Message-ID: <176797496762.11411.17302011806693435782@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0253.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::18) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|SJ1PR11MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: a97a0fc1-db76-4bfb-0b90-08de4f997980
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmxoVm5UVDFIYTJNb0JGVXJjcXJ5aTJTMGRVNzRsYktSckJiUk5zTmZKTmFn?=
 =?utf-8?B?QVQ2djV1VnZ0anNHR21MMFpvTXlsNXZIVGJBV09SdDIwVXozcEwvQVAzczJz?=
 =?utf-8?B?RnBPcDQ0VXROdm9SMGwxbmsyczh5Y2g1MVQzbGJKQlV4SWpuK0xEVHJWOUF5?=
 =?utf-8?B?S3BRWVpYVGc3Z3o5QXpiejhzVmRWYWVqdmh4SDVvanFwUGpDbjIrS0pJbmlZ?=
 =?utf-8?B?dlp5cldzQ0E5aXA1UjdFbHRhUXJTVHVnaXRNQUJaOXh5OGVkeFNaanpBNncy?=
 =?utf-8?B?djFOaHlBOG8zR3BEY0RDaVM3ZHlERzZYVWRIZU5GRG9PK2NicTIxeWtvZGZ0?=
 =?utf-8?B?c3lOakpaREV5K1NjZ3dLUDNMR3Q0TUQxemhrUjNkZmVCSmZwUTdvT3pObk9p?=
 =?utf-8?B?eWtMUlNNQTFSRmprZjcwZ2ZiYklvTzBNdS9ndjVmWlIvUFVzV0FSbkl0YW5v?=
 =?utf-8?B?VjlaRmtDRWpOb2lrNzYyN0pNMDZqZk1aTlNUbkZyekFCMm1pdzVrcDRBMFlv?=
 =?utf-8?B?bmNwRGFCVEx3T2ZwNlBaN05DTDhKWFY4MXBrTlpERkE3MFNpcUVIY0hMeE1Q?=
 =?utf-8?B?eXlFR21zVk9QR2xONVQveFQwSFc1OTMwUkpYbG1meVA1d016YkVWeUVybE1C?=
 =?utf-8?B?alMwTkJ6Q1I5Mlh1aXhIVmlYdnhFSkl0ZkhmMnl1dzZMLzQ0TlhSVWt4WUFx?=
 =?utf-8?B?MmprQXU4R3NJcnFBaDFGbUZYYkJGNktTQkZhTlMvRFhoYmpQSmx6RzRpaFhX?=
 =?utf-8?B?SmxVUVBVZEdtMG8zOGJQZ0xhbXloTHF4K1hqSHRkRW9ycFNhNHQ1SWFxait6?=
 =?utf-8?B?cmpUTWdnUzQvaVd4TS9heVR2UWsyc2hjdkpReHo5OGFkUkxrWWZXWi9temh1?=
 =?utf-8?B?NXpsUVBaZ2hyVjY1RTF2bkMvQ2x4Z0tQU3ZVaU51S2w3aUJTR0tEbk5LM1Nq?=
 =?utf-8?B?US9jUVFRRzlRWkc2aEJmaFJvQVZQekkzNzZmRWlHMmtwZElQREcyVmtHOVEv?=
 =?utf-8?B?MDFmUlY1dGxLZVlQYVpkSlpJZlA2cUk2WE1yYnVLcE5wSXRlOURIZ2lRaW9T?=
 =?utf-8?B?VmN4WFB2bFFlL0JEbXprZWk1dllvYzRmSGRPbEx4WGp1OGpCR3JTZEYyMHI5?=
 =?utf-8?B?RVVNUHp3NUlxNjVPVjVzWkRWS0RhZnlxbnpWTzF0QVhvczhqV29tT1dOREJx?=
 =?utf-8?B?MWdlZ0x2QkdsTTJKUGVCaDQ1MDhhcjkzQVQ5QmdVSHlDMldDb2lQemtKZHFN?=
 =?utf-8?B?K3lPOXBNaVRidjN2VnNSZ2wwVGRjVXBsNTI1Tk1TdnVvMTNrY1ZkUjlJWlBW?=
 =?utf-8?B?Rkp0WnhsOXpUYWM0VGVWbjg5VVhoRmx0YjBWdHhYNGxyYWlUOFVYc1YrRjZK?=
 =?utf-8?B?UmhyOWU1bUNyTEVpSmtyWHlURTQ5RCtOV2lUZDliOUd5TVBHbWdsWFVvU2Zx?=
 =?utf-8?B?b2locDNVNkpTTHM0QVA1NDJDWVg5MzlxN3NSS21IQzYxc2tXR3V1QkhjM3Vk?=
 =?utf-8?B?SVcrS05paE0zcWl2cTkwZ3I2NU51S082dXZ4a2ZCVUpVdDhBTTF2Wnc0aHVa?=
 =?utf-8?B?TWlqalB6ODFNSmkrbUozRFZFeWdzNDNjeURRdnorblZxY1dUVEQyWWU0UXBh?=
 =?utf-8?B?WGtsZFZPbCtLTE1sSlBkWVlGRHpYT3FJMlFKYVYwdGRjdkl1RzBsMXpZTU9X?=
 =?utf-8?B?d2dUcU5oWDczbmxOd0tmMVJ2UFRhdXlNclIwWkxHS0N5QS85OEkwWmlsczEz?=
 =?utf-8?B?NEV2ZXVCalNoMmN6UVJzNGxsTEwvYWN3SXR5ZUdYSFNXTzNYVnZFaU5wVkl6?=
 =?utf-8?B?U1pRL3hIMzh6aHNLKy9rZFpVSWkyYWx3cFFqNEM5UC9WZVhVaXFlWXBDZEZP?=
 =?utf-8?B?S3JEd0FpYmc0QlVyK0VXcWNrOXc0dW4vemxDTWR3VXRGVHpOazF4MmcrZTFy?=
 =?utf-8?Q?G+FZcokt0lw3NHqWyieFwaGYv7JfrnCg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEEyZlBjREZqVFZQMGNDcWRSd0dOZmRTZlZJWHFHcTlGMFFMNm1lc1ZzVS9N?=
 =?utf-8?B?dFFuVU04TDB3M3IyN3V2eXNCSWt0aHU4bjZ5RCs5Z0pPbDNhUjcvK2VLN2N0?=
 =?utf-8?B?ODRQb2NpdGh3bDQ3TWJWSHptNEFEWThRa0s0ODBQa00veHZEQkNCN21xU09I?=
 =?utf-8?B?MEUrL2V6SWRYMnRvTGZtVDZXWVh4Z05XWWhqSjNWNTI2VDFVM3pyMlc4VEhP?=
 =?utf-8?B?aFlXcVBnbTQyOTg0NEQ0cDBHbnBhbW11SnFJY2l3K2d6MFZKS3NobThNU0xl?=
 =?utf-8?B?M1R5a3E1Q2RwcWZhSDk0V2xaaFB4TktVR3pnVE5rYjU2ajk5V2g4aEI5cmJS?=
 =?utf-8?B?SWFadU5KSXI3amlNbjdwTWVENGNPT2xQZm9IMVRiMHF5dWJUK1FDWkRZVyt5?=
 =?utf-8?B?WXdEeVNYS3J3Zi9CQ3g0cmlGS29KTENudHBXNkdHRU1YUmlYZGRpTWtQTENo?=
 =?utf-8?B?b0dLaDVIU2F3Q0loN0VmZ3ZpUnJNekc3K1duT0NOT1J4UUZBK2s2dGhodmRh?=
 =?utf-8?B?aDZUeXdKdDRBYlZyTndKY0ZicWRSOEdjWXVMRUY3VmxKR0s5TllkdmJTZG9Z?=
 =?utf-8?B?b01JUVczeVU4ZDd4UElldFp5Y2RWNG9LeVMyVzFWUURFS0ZRS3lRQTRiWitn?=
 =?utf-8?B?L0JIYnNhRE9HRXZXc3crRjdoTUlUZHljWlNPdjJ2YTFScDlCS0Z5YzZnbzdN?=
 =?utf-8?B?RFlxZVdhTGdWRjl6SFVXM3A2OTZDN3M2MW01NjFQNDJldHIvanBSeWMzK1hF?=
 =?utf-8?B?dUpDQmZuSkxPL1FuS0xiVlk1NENtSmYzTGUyZUsxUCtGNkEzd3FPdk5VdzhX?=
 =?utf-8?B?WWJEazlKZENjcEpBMy9EZHlMWGNRc2Y2NzFLRWtHQjRPblFURncwQ1BSVFBk?=
 =?utf-8?B?SDlXS3lZditiZ3lGT21TOHBDR2ZRVFR4N1llSkk1c2RGVXZhb2h2Z1VDUVlF?=
 =?utf-8?B?ekZMd3JOTTBRdzg2bUNpa1JxTDFKSEVIT2tTRkVxeEdlRFpJY2NwYTQ5VzIv?=
 =?utf-8?B?U1M5dTJYb2JwWDB4OXdIa3J1R1BoWDZoYmlVQXNFQVFxOVV1Y0JyYUszYjZK?=
 =?utf-8?B?UWJJSnJVRmQ3NHlpbWRUYUM3d09GWkdZRjhlSTBJazJLUzlUZUFrNUg3QXpE?=
 =?utf-8?B?SWNNTE1DRVNvVm1sRkl5ZE5hSFV5Y09SMWJxNHVUTUZRdnRNcmZJNGlXZ3lv?=
 =?utf-8?B?Y09nK0s0NWdjcVp2bWNUc1RKUHJHdjljODJ1Tmc0Y2FDZm4zWVArWFViclFy?=
 =?utf-8?B?N1NrdTZ1clJtdktuQnVqWVI4NHIxbDNqM0p1UHl0RmR2ZXVBSVlNcUc5VTh1?=
 =?utf-8?B?MjdwdFd0ZjlFOURNTkl1b1pkUTgwaVRsdUkvbW1MRDdDcHBHditGcXVUS2Nz?=
 =?utf-8?B?OWVuYkRVMVBsV3JQV0trRE1oU3NKUDZxcUdhcHhpZXk1Y2ltdlhrQnF1TklJ?=
 =?utf-8?B?eWZOVmNnUjhvTkpiNTh3MFJrMXprTFp4VmdOdDhHOUpEVkxTbkEyWHUyNXY4?=
 =?utf-8?B?SVE2aGUrY3FOQUVpUGM5aU1iQnRVdlFpbzFWUVM3OHFCaVNVZVZObW1mSnpQ?=
 =?utf-8?B?N01DbUM1R1o0K2FKQllkbjF2N253NjJHNjNzaW1YdlJUc09RT3J1ZEdVeHdR?=
 =?utf-8?B?dlozWFFQdjlrbjNSay9uN01XN3kweXVQQ2hwMFE5Y0JGaXRZZzhsM0tjOHJW?=
 =?utf-8?B?c01sOGEra0lJb3VNQmoyOUR4bS84NWRTTStROHBPZW5Qa3RNYVptWDNqTGJV?=
 =?utf-8?B?OVZrZE03OE9MRmlDd0VoTGsrVEtmSFdYUHFSUzIrUnA0dzQ3bHIxdWl4OGEz?=
 =?utf-8?B?aTM2ZExzdzExaWhPcXBHeWdqZHRybGN5MnVGdVJTeFhDeDkzcmN6WitOQXdN?=
 =?utf-8?B?eG1ISWlzK0JLdEpjUk5mZElHczVzTmpvQ2krK0RNUGdpWnM1OVdFTXc0NTRn?=
 =?utf-8?B?WG9KYlN5UWlVV0JiY3RZeVd6dmpPRFNsbGdCRVRVYUVzeDd0Tjg5RVg2Vlo1?=
 =?utf-8?B?Zk9NVVpjQWt4MzFGVzl2OFg1Q1ZPajBXUUE3ZmRyMDdnNU9qYzhxbTlobEw2?=
 =?utf-8?B?MG5ybDdqM2xDeWR2bnh2NDUzSWRNcnFRa3VHQTU1dUpPWnNkRXMvbzdKYnVt?=
 =?utf-8?B?T1lyUGY2RXdtY2N3bkZiNGFJVFBxZWVlT3A5cUpvS1Q0NkVibk1iTWUrOTFI?=
 =?utf-8?B?S29DQml2VVdWV2ZHSzVnTm1kMGsrOVFrcU54VFFSYWJpZGVVS0o5Ujl0VnJ0?=
 =?utf-8?B?eFdkRTRDVzB2Um1yL20yWkkrNTZZalJSQUpaYllPc1E3VURsSFF1b2U0ckh6?=
 =?utf-8?B?UWd4bmdCU1p2OTRPYXBadXFrYTZ2TGJqc2hsbU5TVHI5My82V1ZXdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a97a0fc1-db76-4bfb-0b90-08de4f997980
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2026 16:09:32.2401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tdKSn5kBfczCLkF3I+iWndKdOUTV5/nxf3I5wQXCmTP8kDpiSVa/PGIwNheWfjkq6mjBmPJ8vqoQwDWesd+YdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
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

Quoting Bhadane, Dnyaneshwar (2026-01-07 03:31:23-03:00)
>
>
>> -----Original Message-----
>> From: Sousa, Gustavo <gustavo.sousa@intel.com>
>> Sent: Wednesday, January 7, 2026 3:10 AM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Sousa, Gustavo
>> <gustavo.sousa@intel.com>
>> Subject: [PATCH v2] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
>> divider
>>=20
>> On Xe3_LPD, there is no instruction to program the CD2X divider anymore =
and
>> the hardware is expected to always use the default value of 0b00, meanin=
g
>> "divide by 1".
>>=20
>> With that, the CDCLK_CTL register was changed so that:
>>=20
>>   (1) The field "CD2X Divider Select" became a debug-only field.
>>       Because we are programming CDCLK_CTL with a direct write instead
>>       of read-modify-write operation, we still need to program "CD2X
>>       Divider Select" in order to keep the field from deviating from its
>>       default value.  Let's, however, throw a warning if we encounter a
>>       CDCLK value that would result in an unexpected value for that
>>       field.
>>=20
>>   (2) The field "CD2X Pipe Select" has been removed. In fact, some
>>       debugging in a PTL machine showed that such field comes back as
>>       zero after writing a non-zero value to it.  As such, do not
>>       program it starting with Xe3_LPD.
>>=20
>> v2:
>>   - Add missing "val |=3D " when calling bxt_cdclk_cd2x_pipe().
>>     (Dnyaneshwar)
>>=20
>> Bspec: 68864, 69090
>> Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>LGTM, Thank you for the update.
>
>Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Pushed to drm-intel-next. Thanks for the review!

--
Gustavo Sousa
