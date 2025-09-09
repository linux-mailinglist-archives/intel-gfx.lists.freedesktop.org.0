Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F7B4A37E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 09:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EA410E638;
	Tue,  9 Sep 2025 07:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3TIfuhI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9546C10E638
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757402946; x=1788938946;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bHRQOgZ0TtbzugZGl1NaP76eCYErf6HArDO7Kmz7Qms=;
 b=W3TIfuhIhnyuVIsGU7rMMQCfUhgGfjH6nQiLQ3KdNJeJ4BEK/F8Yr+0v
 +L7EF5QoJhZpKbzWcT3spdK8z/u9zW/XIcAXhpFSngsNn2cut8ip8D5ch
 lJ0P4bNdd+DpxxJOKu3eSbBHjkeEwQ61sXrcPJNQvGu1DTvPbFpFnA/dr
 jPEzQ5VVVnodru80lIku497YDjZQzrZJJkZ+vetlBo2cD9BbjsyF3IFHW
 0SNjpbImhr6QDpKQef8W7F8TbMy+5U7tAeWYnCVYLUgUrLLtD9Qw/qoW9
 2u2yWGP35xIWw3s2kDZ9GAGFk7DJGksUOHqF3hN7VAJPtj18Qhfa4I76w w==;
X-CSE-ConnectionGUID: /xg8BwnGRmiC+sPbRnCGjg==
X-CSE-MsgGUID: 7yUIJiQCTXC9oshRssvGuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="62304040"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="62304040"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 00:29:05 -0700
X-CSE-ConnectionGUID: qWJix9m3TlevVAf5SUXVgA==
X-CSE-MsgGUID: xV57VvxFTQe5XhDt1NZ37Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="178234356"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 00:29:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 00:29:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 00:29:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.89) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 00:29:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R6Nr5zIvhEMVF7RPDvAdvBqYldC6lvhnzeGjplCxVPe8SyJLSc45mF+Hyl8nruE0XNTypJrBU+6S6tSMCwdu5LoCIxF2L4WMnQAOoCSM5KxGWMb1Bawnyq2+uHCb4JzW7cDs3WtoLyU8BeqlFu2tRMAYYs7VjzDZBPrd9/FmH3N+KKFuu+iNo+agugAVXjDwk1Dq6oHjxJPpbzjMy1CKMv6H1eY2vzwXHGputoNWlDwN2YCOXnUz2sCGiKWVAoC5e9fauuglnYMC/WSh3ZOisigSHXwRKCZLQpOIVAyoPMnG1Gtl8wILLQDBl4Xhr+3sWjcCYkBqrBqkFmQj688P2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGAjZEHjCd+YTZrORPPa0JvaiGpyewkTpb6bJJMG154=;
 b=M+u0TSX+Xe73sX8vXsHsZay1P0rbMIeta7sVoboRfECdiN/YVGJSoNYJEzfoiWL3A9UrXSxqlRWTmFSOs0xx9nVK/9iaP6naYOBxDL2mT2bWbsTLfZ3PMG+OFjTDyXu4xWbGv+g9bq9tsFjknvUPCFGuvCAYc4TMlrURB/K+YHyeBqWyGkghkyIaBtyxGy0JxKRwxC1mZxQ++aJf8s96Oy6K1RHHMNmY5/u+/GG7QJaGM5TaHH9tDtvMQRqv5ChS11ncGOaGrjkjJqBWae6HX+wgGsqpQP145GcO5j49goV+0HqQkDMd9AvTBKATdUMmXvBF8I1EWTEkOTUDv2No2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 07:29:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 07:29:02 +0000
Message-ID: <306c65e6-1762-4b5d-8a54-a983cdeb60a2@intel.com>
Date: Tue, 9 Sep 2025 12:58:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250909050228.4106539-1-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250909050228.4106539-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: 250511b6-bc05-41b4-4194-08ddef728c36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWE1cGs0dWlZMjVVOS9uUHNaV2p2NTIvQkwwU2c3ejRoNjNZWjVISUtRckJq?=
 =?utf-8?B?V2lpYTBINDl1RmJ3RFhRL041ZXRXSFhrR2VhaFNzbGx0azZkUkZ2ZGFseXN3?=
 =?utf-8?B?cVYxZnE0QWplL3Bad3FSZGF6eWxhYk1rU3ZTN1pURFB3eWhYQXdwS0wwL3Ri?=
 =?utf-8?B?N2dCcEtMOUNHTWtWN0x6WWtWd08zOU1yZ21CZjFoYlNVNVAwNXpTSGhlRzFJ?=
 =?utf-8?B?WkNMYmNNaFMzOEZlVC9BeEJWbUxzeXVyb0ZJUHJqL1kybmoweUFVa0txMThW?=
 =?utf-8?B?TUdYaHEzVWQ0TGVWeFB3elFYaWxjcG9naUhIVU1oYlVNazBxVUE2MEMyb25K?=
 =?utf-8?B?WnRsbTZPZXE5TUYyZlJvNStNc0syU1hZZjBMK3k4cnNiVTRCOTdCUjdzbDZY?=
 =?utf-8?B?UmQ0WWxFU2tkYUlVclp3SnhINHd3WitINWtyT1VqalNFQ0ZvVzk1U1JNcWIy?=
 =?utf-8?B?elhabG15TVlPVGVzSU1uTnV6L244emljRlB5ZVdoWEJpUDdXUDROQnpnWkZ1?=
 =?utf-8?B?TUcvU0dCQU1WbExyd2VrckJIREVCSEYxWmxKM1hsTGFkR3M4bnhwUTFHbkli?=
 =?utf-8?B?REJhdE9wL2FVRTBkc2QrWVJwcXZnTVJPSi9xUFZJN2ExamNRdmE5eDVSK3M3?=
 =?utf-8?B?Z2VYZWtJdm1tMXlKUmV6WFhucTVTc2wwV1Ftcis2QU9DMHFybExVbTlCazBl?=
 =?utf-8?B?cWphWGlhcnRBb05Wd21xcFR5UHNCMEVyZHJoNXIwZmlydkhLUWUzUjdZaHpY?=
 =?utf-8?B?MmhibG9YazB4cVlvR1N2enJvSTdsaG1rNnhDU3FJS2hxZkptSERvbzY5WFdH?=
 =?utf-8?B?RVRpc01BT3A4aEg1TjJ3M3BjaG91aVJqNHVCNnRWbk1aZ0hPaXZMNUxSUzFJ?=
 =?utf-8?B?UFlsVC9qS29ZZEh3QlE1U2M1Sno4Z3c5MkNqR29OdW1LL1hBbGlDamozenNM?=
 =?utf-8?B?M3daZkRnY0EwcGVyNWtldnJtZEEyc3psUEtVamZycjFxL3dvZk9wOEk4QzMv?=
 =?utf-8?B?WjN6aXdJU3BPSGI3azNURmFhYmNMQVFmRGZ5R3ZlQ1kzVUpmM1FlV1FQWlZC?=
 =?utf-8?B?SkxHeGJHN2h6L0Q0ZmZVOTZ3WTdrZ2hucW53VTZ2a2pZUy8xLzRFY2tJR0hr?=
 =?utf-8?B?eUlUY3NuRm82d0FBRE5pUXdWWGc5RkdUTXhISzlRWUw5eU1OZUp5SFowWWN2?=
 =?utf-8?B?bk45RjA3M0cxOWVRRTlSOHZuN0VGVFVEMlorT0R5NGNvQ3d5V1FVQk9yaFVP?=
 =?utf-8?B?eWxHSkJaKy9pdlU0VTFLQnAySUduSXFWMHNTWitDdmtLR0VTMXRhQktRVDhN?=
 =?utf-8?B?SEt5ekMzeStNME93ejhMeTZhZXJCbE5DVlVwTkRma2ExY00reHdpaVoxNFZD?=
 =?utf-8?B?Q200c3dhNkdvSEQrbW5oeVIydGZEbFhRZzZUZnUrNUppSnpVV1MvSkNLM3hv?=
 =?utf-8?B?TjZTMnJxelZuK3ZyUUFWNVROSHVUNk1RcDFWZjFhclVQUEFoTndTNC9odjY3?=
 =?utf-8?B?TDliOXdtV3hnbUJxR2tGVGJlUlJ4RkYzV0NHUkxTZHpVMDhBOWs4aW1LMFdW?=
 =?utf-8?B?UmtYMXVncjFDMXRTTTExekd3WXlabm1sTWlXMEo0RnBpNVBpRUJIbit3Yk9j?=
 =?utf-8?B?VnlLYmxCOXRPYjZsbGZmajRPcUI1Z0FXQk9kdFpKSkc3WnpxOGRpYzU4dGZP?=
 =?utf-8?B?T1hvK3BYMWltdjRVeDQ1RHd2VlcxZzR2N2VWRTRkZ29FUWhkek9DRVB5Sml3?=
 =?utf-8?B?RDJpOW1rSFJJWnlyb1M2RXBXYVo2eTBxMFdVZnRaUVhNczZ2cDJJMEN0T0dK?=
 =?utf-8?B?Z1FseEVOQjhxU0RFaHkvUGhkQi9PUE9sRURKc1pleURpalZ6elRyaWxRcFEr?=
 =?utf-8?B?Um1aT3duVzRweThCTzhkVW1oSndjYVIzYm5VRXl4L1Z5QUNFc0Q2bGJUOGpi?=
 =?utf-8?Q?ySN0o0ojYlI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGlIeEtQeTlKRFdKcDExLzR6WXJ6eEhvYnloQUNUTitYVzVCSzRmV1lHL2lW?=
 =?utf-8?B?NncwSjdHRDRuQTVxcHJ0Y0VLWWszSEkraHJQa0dTbUdoaFppSElTa0FidERr?=
 =?utf-8?B?TGlBWithL1pmaVFFTGFFZE1IMG1VVFVvSFRJMTR1NVZ1TEZ4bUxZY2hxVCtP?=
 =?utf-8?B?TW1Sd1YyRTM4b3lFb2FkNDB5SjZwdlprTTF4VWp6RjZSRmpLWDkrNjdZTG0w?=
 =?utf-8?B?V3ZPaUZ5bU9qaERGQjRodzlJT1ZzTXQrQ2JPNjM4Z0tSTEFCQjJjME5hNmVB?=
 =?utf-8?B?a2VBRlFCZTNySk1XVU03VEhaWkN4a1NHYTBhUDEwS29kMk5rZ0Z1MS8wMDM4?=
 =?utf-8?B?NzBic1pIMWVtbzdXbnF1Mlk0UU4raGxHQWJ4V21naFFFaGk3RnExQjIrMlFK?=
 =?utf-8?B?RXZUd0J3V3dhVTZBZG9oN2w5Vmh1ZE9xaTAyV25zMElCUVRDYWVTOUJkaGw2?=
 =?utf-8?B?bWJvTUxuUkw3ZzFFRVlDN0dpeENGVThNS0x0c1Q2Znp3TlNxYzBWQ3M4QjlE?=
 =?utf-8?B?bDJ4UFNjNW9VcEROWGZQN3NDSDA1Mm9MT3VwMUlrVnBnemtGcVp5T0JoWlk5?=
 =?utf-8?B?NW9MRE1tZG9oTGJ2aElpbnlkTUZXNkxtNldLN081L0h4NTJsU3RrZ24ydmY0?=
 =?utf-8?B?SmJPT3JlaVRVQ0F6QmVHS2pPRGwrdjJhWmZEWGtLSHlFdGpQa2JOTTBIM0lP?=
 =?utf-8?B?SDh4dmZPdm84RzBYWnExWGYyN0gyR3FreVFKNXBUd3QxWWNEaEovMkVZVDE5?=
 =?utf-8?B?TDdRcko5MUJIdklhV3puV1lRMkVVbDRqQnlEZk1sMWVReGUvek1UQ2xTU0lt?=
 =?utf-8?B?OUNYTitqODNFeEthTjVTbERuTGRjSjRScGpSN3BHb0l3UUh4S3J3Q0o5U296?=
 =?utf-8?B?aG1OMkJNMTRqVzJxVFNXK1NjS0drWjNreUQxK2NlMXNqR1JBLytPWW5wTHRw?=
 =?utf-8?B?VXNXU0loNXpYakY3RzhTSSsxU3JYWC9YSndDVFZpMU01eXZXSVZYa2RxNnZz?=
 =?utf-8?B?ZTYvRzRPN2VZQnl5Yzk3OTd5a3FwbTZBZWlDQUJhNkwvUC9hWWo0NVdRY0FS?=
 =?utf-8?B?Tjk2TjNzTE9QT1JHT1EvZHdqVDd4UFRBb0ZZYWYzWGwzYURQVzhsenVYUkVy?=
 =?utf-8?B?V0N2QlNrem45dVVNZXJTOUlZT1pOMVZKdlZ0TWhicmtZOVR2NDIrS0ZVWEZs?=
 =?utf-8?B?ZGxXdW9WTnRWcHkrZGJzODdxejVJV2dKdXR2TzhhWDlRUW55NUJHZVh1Qkli?=
 =?utf-8?B?bTlDTmh5WmZseXU2NEN1eFFTMldES3VnVEtjdWlrRkFzWlFRcVFyUjZYMUw0?=
 =?utf-8?B?TGZzcmo0YzVrQWFmRXJ3MnplYUlqSHl6L2NvUW5kUnM2UWY1YXZCcjJHOEpU?=
 =?utf-8?B?NFZZMkx0TE9KZzNudTVCNUFZeVZ0T2p2STN3aVZvVDVBNjl2ZktSMWhWZHRD?=
 =?utf-8?B?Rmt3MTMwTVBNNHdNMmNrbTZjK0VBcXZBUERGR0RKNDBRWVYvMy8waUg5bGNs?=
 =?utf-8?B?MlM4REtMWW1Ib2F2ME1PeW82QXBSbWF2YWFpZzJhbUtZUWd4NnlOM2lvOEFH?=
 =?utf-8?B?d2xFYjRreUpvOUZRWTBHK2xIWmM3Q0lkK1RiZkVpVkNFdnFuZGhKSGgrUUdz?=
 =?utf-8?B?SnRPNC80MDJSNi8yRUJ5TkZiNklPWDN6OERmZVpBQmhaQ3ZzaTI0bm4zSE44?=
 =?utf-8?B?NDdRWnhLaFY2dGI2TzRrd0JPVExaRy9PR3c2U1NGUzhLOXB4U1ZuWWxxbVk3?=
 =?utf-8?B?VkFkRk51Z0pjTHRwdTRCc1BIM2czcWJ0bllUN0hJOTh6dEsxdTR3bWJ0ODRZ?=
 =?utf-8?B?QkpoTXoxMGd1eUxQVDI3ZE5ETlFBbXJodGVRbmZ0ZTNTVnEvdVpiSWNCNVJq?=
 =?utf-8?B?MW4zQzAzM0tMczg5Z3U0cndKMFowaXllelM3b0VOWC9ySGJMUDFha3FiaEl0?=
 =?utf-8?B?MHFRT0tmVkFDOTRseHZXUUtyZEJjbWdYQncvL2N0bW1ZM28vNXJ4SklHem5x?=
 =?utf-8?B?K0ZWYVNOelpwb1IyY0pCWHZhTFEzOUpYajNPbGJsR0Y1M2Iydzh3dHd3aFBi?=
 =?utf-8?B?YnB1NDFyVExBNkpYMGdRTEUwMWF0NzE2QUpJaHQ0YVUzQjFKdk9JekZYSVNn?=
 =?utf-8?B?VW9UeHVYd2p1QVZOZnN1UXlWem1kL2xKSFJjSlhLZzVOK08vT3k2QWNWUXYy?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 250511b6-bc05-41b4-4194-08ddef728c36
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 07:29:02.0427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 38CHMPw1/VUZnxIezfdqDI5iTBv51/xkR5Y6FnQRxgerKB8udIOtqMmSt7OJ8M8MyLDo3irKm/8JUDl8sINg0wYcruQyoBNF3Z2TCjhgs64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
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


On 9/9/2025 10:32 AM, Dnyaneshwar Bhadane wrote:
> On PTL, no combo PHY is connected to PORT B. However, PORT B can
> still be used for Type-C and will utilize the C20 PHY for eDP
> over Type-C. In such configurations, VBTs also enumerate PORT B.
>
> This leads to issues where PORT B is incorrectly identified as using the
> C10 PHY, due to the assumption that returning true for PORT B in
> intel_encoder_is_c10phy() would not cause problems.
>
>  From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>
> Update the helper intel_encoder_is_c10phy() to return true only for
> PORT A/PHY on PTL.
>
> Bspec: 72571,73944
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

LGTM. Need to send this to intel-xe@lists.freedesktop.org too.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 801235a5bc0a..33963ad14cfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -39,13 +39,8 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum phy phy = intel_encoder_to_phy(encoder);
>   
> -	/* PTL doesn't have a PHY connected to PORT B; as such,
> -	 * there will never be a case where PTL uses PHY B.
> -	 * WCL uses PORT A and B with the C10 PHY.
> -	 * Reusing the condition for WCL and extending it for PORT B
> -	 * should not cause any issues for PTL.
> -	 */
> -	if (display->platform.pantherlake && phy < PHY_C)
> +	if ((display->platform.pantherlake && phy == PHY_A) ||
> +	    ((DISPLAY_VERx100(display) == 3002) && phy == PHY_B))
>   		return true;
>   
>   	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
