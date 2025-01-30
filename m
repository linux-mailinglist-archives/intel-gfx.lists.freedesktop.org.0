Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F69A22C06
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 11:55:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6586D10E92E;
	Thu, 30 Jan 2025 10:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiV2QSyH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45DCB10E926;
 Thu, 30 Jan 2025 10:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738234532; x=1769770532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+APfy6uWbkFcW82B5nGeuA3VqFo1L0zS1jlDAQLGmHM=;
 b=QiV2QSyHzK6ZdNP/Bmp7C7h52kya+HIU0An4lFEhDsX3FkuQyKFSOhOF
 oj8ZJstuQQPEk/wGl5+rA2d6AArIEJv0Cga2xoScr3n04mdjVdcWCwpI5
 bGTMdEtYVoA6cKnFicEuvGY6MmLa/zskolNPBDXYThtkxsm7tpgrhSETe
 cyQ54Afqs3g8jJAHUMfiPhZxLj/8coShzOiCfVVFfMGMy/DEU4iIJYUg7
 IQeLstE73672ltPCgV4Z5yzlqLsQP1fsjH/VSFRYfug5NZ35UUHlZ+fLn
 IsowKFI+wWWdac8TJzhjLKSVAbPEIxYt881YU2Navof1Qf86xSI7J0nZm w==;
X-CSE-ConnectionGUID: 04GkZou4QdaWT7vV4l1aJA==
X-CSE-MsgGUID: hynR9ExsSGuOgpLiX4ardg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="61245197"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="61245197"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 02:55:32 -0800
X-CSE-ConnectionGUID: qaddqmOvTgSRkqkNav8qLw==
X-CSE-MsgGUID: FmEL8/yjRUy3hUKu5SqODg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109146187"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 02:55:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 02:55:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 02:55:31 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 02:55:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MWt8SWToGEfX5KR8jORuJQmLDMmhzK7NnMwLbNkuRl7eZxQ8e+nAhUujJaI/jWmkkmGoDuWl4e4dBqK/tjl/uc1zqqLp4mMc+JvcRxZ16//IWctJhtTBT9sf2Ac/TjHY3rpFyVxQRdkBU3Jp4DNmqIECyMpG5m85zb3LDOa1qzfsV+TtuUWhvrf2rNto1oO6B/YkuGqAZK3waJI4wt9+gESSO36YLXS4To8vT/pVJpqPRD+OC5TpyPgbfrhw+Btdk/ndD1aNTreAzDFkGXt1hw7XSkdqud6eaB3mwdrDSxUfwwIxngYQu4XJEw/1cVfWkcEAx1T+U5xic0Mll9wWng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROgF1jHQgqOM2OwRHQwhCwzK0nw7/zXN/M9L6MInZKw=;
 b=dHkrqpvo9nsGa4e8xqMBEA06YkDFTMq/YLQNW2TGfa7GwKjfi3ZOa/5fbubWcCTXZuUpA0iCMEl/SrdwjpIoepuSVn8gi2832HKAvQLuW3Yj+6H7MuF07qtfvhT4tbcmAjOtnc+gsvMhpg9kHgQR8ZbpZ1dKnA5Gs497E+EUSGS8+dPtiYLpSRQTdbqjk85VvooBTkq2DvQyKqhjd4N8exw6rvZVt36mcJQFPb640KG+8dHrkzQis2eA8iSJFrL2Nm8uJYl8XE8st21/tq1Dc/ub8s2YBU/e7VXuWYmkbG4DJDq2je8i4d/fcN0VzbVXVeJsQqUColqa4zIRWs2Kbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 10:54:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 10:54:43 +0000
Message-ID: <9e18b152-692d-4ea0-bc8e-d7cdaa0eab22@intel.com>
Date: Thu, 30 Jan 2025 16:24:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/35] drm/i915/vrr: Avoid prepare vrr timings for cmrr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-12-ankit.k.nautiyal@intel.com>
 <Z5QBpsqXDE2aluVw@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5QBpsqXDE2aluVw@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4798:EE_
X-MS-Office365-Filtering-Correlation-Id: 713c020d-a04b-488b-855c-08dd411c8078
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjFkcFIzeUFQTmFUcFZUQnlKWG9zK0pjKzNBdjNzSXRiMkV6a1JVcTg3VjI5?=
 =?utf-8?B?S1hzeVd2c256SmI3MUlLVTRhTEMrQ0w5UmNBUXkxeTJEL0F5M25tMzVlSWY0?=
 =?utf-8?B?YkVVOHhEOFVlWmwvTDFnVC9jejhNdXBwelVIRlc2T29wbXNGUHVINnpMa3k1?=
 =?utf-8?B?VHR0d21WaHRGendLTVF4clNvUE15Z1ZRYXJSTjhjSHN3a1lFNWxEMXBhRWtw?=
 =?utf-8?B?Y3ZLSnJubHdzcHhwWVRiU1VJK2xjRklYK1ZSSHZjdnY3eGVQSFUxTDIyK1lM?=
 =?utf-8?B?dlllVTFiZUlOQmhONFJnb0F2cDVSVzFOUU4zWXVtNnBoNiszMEFRUUV6L2p1?=
 =?utf-8?B?UTFxN29hKzJCM1pwSSs1dlhHNkU2S1lTNzBHQTJBQm85YlRrQ2QwMFlIWTQw?=
 =?utf-8?B?dmxUcm1XU1lzbDJwMmNqT3A1MHh2a3J6N1VHTFJjbUl4MStqZERXOEQxaTBO?=
 =?utf-8?B?Z0JZUTB3aDRmcVRWMkxYbS8xS3lESSt5dElrSUg5Z291SlA2RUlUWE5SQm9q?=
 =?utf-8?B?cFRpQTZrYzZxOTBYWTBPd1RIZjNKYzI3U0hxSlZ2MklqcldtQW9HWmo3cGMv?=
 =?utf-8?B?TFVneWpvUkhGMkppWFRWS2t5Rm1SQUdpNStnOXoreTRsZ2ttZlRBZE5SaWxo?=
 =?utf-8?B?K285MFhrUUtmcFFmdktzbDRYWXpEckJYYWswN2hiN2VVVmxkWURwUzZBeDRD?=
 =?utf-8?B?NHdzSmROYkRCdjc2ajQ0ZHdTamF2YzhWZ0l5eXFBS1J4RURoTGFtNkwvMzdv?=
 =?utf-8?B?WmxPQTdvKzFvbTNMRmowZUtzNUxmc1lYUmxRc21PcUJNYmdTVjJ3QTR0b2J1?=
 =?utf-8?B?SzExc0ZOM1M3eS8wU2lEemJuSUZCKzR1S01ma0JYWit0VDFWQ3VnSXhJRXRZ?=
 =?utf-8?B?ZlRSNkxYYjhicmUyN2wydzRPK0tGeER3WkJwT0xqczk2VnN4TmpQZGRNL0RD?=
 =?utf-8?B?MExQZ2t1bWJ0RStaVDNvNFFtSGdtS3FXYW5HdzdUbS9RT1NJSURGcGZnTHJj?=
 =?utf-8?B?b0J1a1BUZldnQVMydkEyWXkyUDc3KzkyTVNudnNNUFhub2d2dTVUaTk2YVVJ?=
 =?utf-8?B?cTV1WEtWTkVDOTVXSkdFOCtHMHR1WmxydEtCUEVOTjBkQTZyWTdGM3J1cnky?=
 =?utf-8?B?NGFqUnhldlJXbUdvVm9EWmM1RjU0UTMrSElWNjBuaWdPT0FCL0Z4ZnZKc01a?=
 =?utf-8?B?L2xSNGYrWlllSFFKbnpMNUhQQXRreTI1R3lob3pEdkFKbm1GRjJlZzMzZlE1?=
 =?utf-8?B?V3BnL0VBL1ZGZ0FIZFpFYjRHc1dFRFJCZ3JyOW5NVzVYekhHM01WNGFnb3RJ?=
 =?utf-8?B?a0dvcitvSTIyMEdWSGZBdE1hQi9tZjFzeGhFb1pIM21jY2EyUVB4SS9XczZF?=
 =?utf-8?B?dnlCcXFXcHl5U3NnQVVSMUd5QitCZTh3NGkrQkZZVGN3djViSG1xaXFLV3U5?=
 =?utf-8?B?Y2s0Rno1a2lwWTczelhsdGpYdmc0NjFISUdGRGNCMUFCVjliWjZQUThZYnBy?=
 =?utf-8?B?T2I5cHFnc2w3VmZEMWNaQ2JVYnBJYVJkVnZ2dEN3SWd4OWpRaGcvcmlQbysr?=
 =?utf-8?B?QjJRWkpaQTBjdm1oNW9LM2tNamg4ZDg3MnFmU3l6UDhNYk1TVkU4Z0VXdU45?=
 =?utf-8?B?M0paTmt2bm5EM0dSWEh6dEduOHBkeTRsRUZBNE5LVzRySmtIdzRNdytHalF1?=
 =?utf-8?B?cmM2YXNxUHhhMGpQa0t4SzFaZW1JckVRK1YrRWduaWhXYkIrdEhZU1lFUVQ4?=
 =?utf-8?B?all3Um13MWNkUTU0bW5yVzVHaEl4QkVTYnFRVHZSNlk3Y2dwTFh3dXRyV3Ur?=
 =?utf-8?B?bGRhUElSaUNOc0Y1ZVJIRm1YblhNOXlrOEZJS01FODk3REkwOUxtOWltWnQw?=
 =?utf-8?Q?+KXL+IssT2BUt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWNxa204ak1pUGROMHpRMGRYdTdWbTdXNTA3aDBkVXBVMFlKUTBWcGpCbFNr?=
 =?utf-8?B?YmF0TTZVQlRyVytNajF1VFZmcDhSZy9yMksybVlEc0t0UmJPalBMRU9XNURN?=
 =?utf-8?B?RkRQaTRzSHFwWjByWnZJOW5Tc0dJL2F5ZlZuZGtwVTZJcFZjYU1kQmM0NlNC?=
 =?utf-8?B?dDEycW9OT0dyVEcrdUYzWC9pSkl4c2syNVMzSEFrUlVwZXRZd0lmbTV4VWdU?=
 =?utf-8?B?TGI3d1k1SC9HbjQwd2I2b2d6Vm9jVklIOWdXMFZUWXZSTGdlZTBFc0lXZHUr?=
 =?utf-8?B?aFdCV25ObmZrQWVWQm1mOU13SVBSbDBENjY3bHBMWXJsbkQzeENoZmlDTDc3?=
 =?utf-8?B?dUQzd1hSeUVIZWNXNkU1cTNPYWVJczZna25IZS9lTEd0Nlk4YlpJLzErZEpJ?=
 =?utf-8?B?S3k2cS9lWVVxMGZjbWZxb003SEkxbTJNelBKbFBjSEJwSzZwZ0ZJSzhtUEEr?=
 =?utf-8?B?TXlPWS95STNzS1EzVkFoY01YVnpEbksza2Z0U282anFwS0psSDlob3VEWkl3?=
 =?utf-8?B?cVN0Q3FoRWJOdUNldStldzJRT3lKZnFkZEc5Q3orbzVIMlVua1pqQWo1MnZY?=
 =?utf-8?B?SU1halNmWkJEK29OYlFjMDN0TGwyY0hVUklNcXVUWW9wam5iNklubmxhQWhq?=
 =?utf-8?B?aEhIdDU0cFNqdE5qSjFLQVNabmYrTTU3dmtHd3greGtLUEdmNEsyY1lQV3F4?=
 =?utf-8?B?ZlR4M2QzWUhRd0wrU0VvdG5WbVNOMk5PV3NuUTJqcDR4QzFLZllCeHVnYXM5?=
 =?utf-8?B?bWxqSjU3VmhTc1ZZYkNVb2ZBbURvZEV5UE1pRVUwNk0wMjd3eFd3NkxoOFUv?=
 =?utf-8?B?M0l5dno1dVkyaThmdVBEYjBkd1NDVFZyeGhHeTJ1aktFeUh3Z0lXWisyU2RW?=
 =?utf-8?B?WGZ5WnVRbXlMVnE5cFphRWFIVWhMUXZoR2lKVjdiQWZDb3lmM0JlYlJ5YWNa?=
 =?utf-8?B?ckF6OEZlTFMyY0tkYjNrdi9nWVdEWTdRZERBbHdCeHBmOTlpVW96Z01yenpz?=
 =?utf-8?B?ZS8xK0kzTlY0RmV5Zm81SnRYdXJ6cjNnWkcxcnFicStJeUowNHJjenBqcmdt?=
 =?utf-8?B?YUhxaTltL28xdkhIcFpDclFuOU5KTXdCVGVvYXVDN0M1N1VJcnRnYm1CQ21y?=
 =?utf-8?B?Z1lINlByblpqWmcxTno0WWx3VWZuSlZKZmFBSEtZeEVuRFcyemJFTVBOM1Zi?=
 =?utf-8?B?aEhtK3NnWGZjRlMwcDJkbXU3aHA2SjhCVm1oYmxoaElRT3d6cjZwRWtGMTF2?=
 =?utf-8?B?anVMU25XYVVUM08rVzdnL3FMWUdSUGxKWUdNazFRdkJ2Z2J6dVZzbjUxVjF2?=
 =?utf-8?B?V2k1N0hmamxrQU5KM2JUMWVnYXFkbUhzb3pYeHJSOHp2b0dkK1djRjk3TDB6?=
 =?utf-8?B?ekpVcGw1eG5BUTdXeXhSS1g5UVgxWmg2ZWVHM3VBOFliQWxQRnplU09MTXFQ?=
 =?utf-8?B?R09IYkE0bVVnVGw5WWxhSkVsMVpENUt4bndkRE4veWExUDBvaUhKUWlybit0?=
 =?utf-8?B?eTVrTmJNNyszLzhwL3o4MmM4RXBacEl1cW1ENXZWQ0Y4MWpacGRGdGJkUENa?=
 =?utf-8?B?c1ZRb0R6MjV6L1I3WmIzTkM4dlFOa0xyeEo0MVdaVENuWmVzOExvVkhPcjB6?=
 =?utf-8?B?Y0RVdDFsYlptTEdwbzdJK0grclBkYW0yaWgvQSttZmNXdWo0Nm5pcEQ0K0wr?=
 =?utf-8?B?eVMrWTdxU2dkb1ZVSEJyck1hbk94SWVoWnhydUZjaktWRmtBSFE1RzU1cmRK?=
 =?utf-8?B?aEY3ZHN4eFZiZCtUQ2RLcVZ3bmZIOXZXcStYUFcwMTR5SDNOU0k2UU9DV1RJ?=
 =?utf-8?B?cCtvampvZEsvajNXMlV1VUovcDFuZWxURXFpdU9LajVOSXVvR0M3NFJQd21E?=
 =?utf-8?B?am52bjRKTTNuTWlZZUxuTFpmbmwxaktOQU9pSnJkYko3RnpNUW5vYk1mSkpH?=
 =?utf-8?B?cUkvNmp6eTNBRllnZ1ZQKzV0S1J5eCtqd3ljMDd4VmhkM0d3dDNXYThVOUNn?=
 =?utf-8?B?ZEpEUTFHUVkwU1lOdlQ2SU5MWFRHeVBKTVQrWlJyNTZtNHgrT0pMeE9RQ3Zk?=
 =?utf-8?B?aStJNUVyUE95M0c0N0trS3gvWUNuV212STRkWXBnTm45azlRQmg2TTRVQVNy?=
 =?utf-8?B?cGswakZMSUVjT0NyS2tBcjRBTWhaRDhaZlhRV00vTmF0KzQzOG14OVRRWWRX?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 713c020d-a04b-488b-855c-08dd411c8078
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 10:54:43.3792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tMkyjzNDaOjpMfa4tHMEM9A4JcNHLwnMbtS6CvnM1sto/TLaTnJQOcAGjLSbJdNkYVqPXABDKZ0xGTOH3MLcQ0lYX/Y32rZhdlZCcO39D9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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


On 1/25/2025 2:39 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:29:56PM +0530, Ankit Nautiyal wrote:
>> CMRR has a separate logic for computing vrr timings and so it
>> overwrites the timings prepared for vrr.
>>
>> Avoid prepare vrr timings for cmrr. This will help to separate the
>> helpers for timings for vrr, cmrr and the forthcoming
>> fixed_rr.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 7e69e30b2076..90fd6fe58fce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -257,8 +257,9 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>>   }
>>   
>>   static
>> -void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
>>   {
>> +	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>>   	crtc_state->vrr.enable = true;
>>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> @@ -328,12 +329,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (vmin >= vmax)
>>   		return;
>>   
>> -	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>> -
>>   	if (crtc_state->uapi.vrr_enabled)
>> -		intel_vrr_compute_vrr_timings(crtc_state);
>> +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>> +	else
>> +		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
> I don't understand why the caller is calculating the vrr vmin/vmax
> and then passing them in to everyone. Looks to me like each of those
> guys should just calculate the vmin/vmax on their own.

We are computing vmin and vmax early to avoid computing variable timings 
for non vrr panels, based on the condition vmin < vmax.

But I get your point. Will simplify this as mentioned below.

Thanks & Regards,

Ankit

>
> The
>   crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   crtc_state->vrr.vmin -= intel_vrr_min_flipline_offset(display);
> part could stay in the caller since it's always needed regardless
> of what kind of timings we use.
>
>
>
>
>>   
>>   	if (HAS_AS_SDP(display)) {
>>   		crtc_state->vrr.vsync_start =
>> -- 
>> 2.45.2
