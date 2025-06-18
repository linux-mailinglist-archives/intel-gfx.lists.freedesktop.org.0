Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC94EADEE63
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DDA10E84A;
	Wed, 18 Jun 2025 13:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fbn91Y6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FD110E84A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 13:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254684; x=1781790684;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=J3xG0fJurodWH3O24je065JpNpI1Idf6BWkkr3VZqBc=;
 b=Fbn91Y6+tLWAI/NkZi/pFNJ2rOKMcjxB2pv0MSEa+ogQwaNKEQV+IOU/
 BxCIw/Na/MtpxLCCqTcIZkvQx0uhcZPLxdVPMDqQg+KQduWLCuVnTvIqO
 r+fZG+DA+XZN91l40/wpxN09p50o8/pNVxPmHBMUU3u6aiEUv/HiF9M4g
 iQOTs91gmLiz3V5d/zvUaUUItEVbvTP2fPOwXFNZeDcl4VXZxoPjiUmSS
 kAHfxU2wL97674Jqteiu5okPjNnC3awD+AhqGUfFHIlXrTxX8L44qXCxe
 l7F2AvEFOMHu13hZdzmfVMGYoEqCkG6NM06ChTxGrmiIWJtwaWdio8ZzM Q==;
X-CSE-ConnectionGUID: tbsFqTaaRK+qvjwu4+Gjiw==
X-CSE-MsgGUID: bA4BOL1CTJSsAiWRYdw5xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56290356"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56290356"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:51:23 -0700
X-CSE-ConnectionGUID: xYgXvpobTruZKtIcsN5LaA==
X-CSE-MsgGUID: sBxuvuclSDqRcPCRAed+pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149385529"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:51:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:51:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:51:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:51:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wrJhPm7gMMFPULmm+XRgdFM9vgPh8/8SFUDDEtlzp/sZBJ08VVgGNgcaiamOP7hYAhPy5evGP+Pc9yQHMzjSmjIk4QJly6zzhsoPkELGVKxjGn6Sw8YXm+L9K+NVLWIqjmeXTwojYf5vNPHsHVUnbgDUg00J2kSJfaamttS1kzF3MhG+vbikUoUptt+EcaTGTpFV1UjMyIN38cl/2PEmkYeu5UlvO3Oi8ZHEsYs9+9WvdenRYY8tTW4OG74l9jNz1dIXIJBSQE+IjywuTGSFsCeEFhf2G4kjo4HLQeKTC8aTtkvwL45n4m/pvd/BJsU1Zgp7L9dsMmfX6VcS1NuAyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABLlPvCWUQRG8HWt72k7kChihC0qfpcMWXNZaZZtvGE=;
 b=saM1Ffd8ne/t6hEe4WhO29OjrgLXukm9x75VGDsGdcgInTpmF+A1yMxc2o7RvRPeou8dA2P/c/TQOw8fq8nd/G2Lm9CCQR6HhPWJA0dPBZCwfpDX/F9XWEiB+LmL8mHNIWDWZx58k/BxgZsccAyg06sP8eOuYiPVPrg9AHSYKcq5ig4sIatRwtdUw3r0qcqEBdBgRmF0WP0yXBlrGzMJ9huMkqIKHylRZJH/E+mk0wKfspNViGc5/jBOIOdF8Csh4jrzFQM3V8kuvhZwE3uw0iLPvaIm0y+YuUtXt7WH4x1NmjF4wL8HuFPiXNSSa278SdsrMFPYZZz3YBh6MQ1/Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.19; Wed, 18 Jun
 2025 13:50:53 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.019; Wed, 18 Jun 2025
 13:50:53 +0000
Date: Wed, 18 Jun 2025 13:50:47 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 0/2] drm/i915: Miscellaneous clean up changes around i915_drv.h
Message-ID: <cover.1750251040.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA1P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: e9201bd8-0128-45c4-5475-08ddae6f2453
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWUwUk8xcWlIK3VjanVlQUs3M1AvdWFVQVhEeTZQOU1oNXppKzVaWXBxMHVR?=
 =?utf-8?B?RCswTDFJTzRqNnRIdHJmK2RqcVpoQ3cxZ0FLVkxQYkdpZkE5aFl5L3h3c0VS?=
 =?utf-8?B?TTlHaXY3ekpVTjNzOHZFWG9FbE9OQWxxYmtXWnA1UEJoMDRZRE9BRzdnNUdX?=
 =?utf-8?B?Wm9LMmgvL0dLa21FeFVzQ1FBQUpPRHQycnAzRGYwTEtiWDNud0VkUEtLNGIx?=
 =?utf-8?B?TGdxanVncDYyQmtlTW52QlVBaVpUQ3Urb3JIVS9wZDdLM3J4dzVkaVE5M1RN?=
 =?utf-8?B?WThjaVdIOTdjTXVXZ1hQNlNOczBBVndjYmRidzUwcXREaXN5dDBKSndINTBE?=
 =?utf-8?B?QXJsd0RCdWpyVmEwdFVpYWVoc21XeWFabzFRcUhrYTRnTXp5YUU1NTk1dGVt?=
 =?utf-8?B?YUo5WlJSaGpoY2d0Mi9ZamRZWmkxbHZrVWFLZzNJYXlQMXBSR3pVWmowYTR2?=
 =?utf-8?B?VnhIT1hxbmgrZXQySzViNGk4MDdEdUVPd2hOc2YrL2ZZQ1BFNlM0ckpVck1F?=
 =?utf-8?B?SVhDVnJaT3FSSkFCVmgxY2ppMHJ6WVFHd3lYUzZJS01URW0vblJIWHBxUHV2?=
 =?utf-8?B?bDIxQWtHc0hyVWhITFdFUUs0QktLcHNWeGdlaGJHaVVoQWtKdXFkUkdyb0xh?=
 =?utf-8?B?T2lublBzaTRpdnJhcFZsRFcwRXBPd3ZWcTVPRStLRUpGalNmZHppbkl2OVFk?=
 =?utf-8?B?ajhwNi9LQ1Q5M0paY2wyUHlPcGNMbG1PZVZwbFo1M3JuK2hRZk1Xb1VRK3ZT?=
 =?utf-8?B?VXhxSUtETk5VUDExTzVVSDBPektkSXJhTG8wS1lWM1JPQmM2S2xRVVRSZWlD?=
 =?utf-8?B?MHhWWDBYdW81eWlvWjNwMElFVkJCektjMHdTdkI1SHZHYnhPSHpoWHBHUzM3?=
 =?utf-8?B?TTdZc3BqWEt1RXhNcmVEREg4cFpyeFYxLzRVb3BUQkFLWFFrbWsyNytHaFA0?=
 =?utf-8?B?OFlENEFtbnFwZGRFcFNHVzhUdS9lK24ya1BaNXdVT0pqeEpXQVdPKzNodW5N?=
 =?utf-8?B?OEc0Z1J1Sm95b2p0OE5icXdReitOa3RUR21EeW9CV0lUcWpNdU8rcWNxSTVM?=
 =?utf-8?B?Q1RkejZqT3RNWW9BK0kveUpTS3VNdGlkQ3BiVUtjd0RQYm9FbE1NcHdXZUtK?=
 =?utf-8?B?QnVtMitsYjZoZHBsOTdTcWI3TkZ0Rmc0MnJoUytsZkxVTE83L09FWlJJV2sw?=
 =?utf-8?B?enJ5ZjBIQVhiYlFVcHNWaUJNR0N6SXUwSllXcEx2WUdlZGR6enowSUtrbTJV?=
 =?utf-8?B?MTBtNFBzU3doTGRhTm8vR0ZUQlVqbFFVbXVxL1NmdXdMUnBPSUJEdWFkYXk3?=
 =?utf-8?B?YjJDMTdtNnVzV2RMa0tmOU1XU0l4V3VVd1dxS3N6Z2liOHZ3UDQveHRDSWF0?=
 =?utf-8?B?RU1uVVBJWVhLUVhBNjkwdWZhdDZKRFR1MEM3c0xBcyt5MXhxa004dk1FT2hP?=
 =?utf-8?B?UWR2QlNIWmRVQ015Q1kvM1FYM3hkcjdvQ1h6Z1Q0cTExOG9tRllVU2FHQTFS?=
 =?utf-8?B?VXJVZUVEK3puZ3VJZ2Z0YWtFQUNUY0hOWlFKOTNqdEtHaE1TODNQdUczc2VG?=
 =?utf-8?B?c3NHZVRlRTBwVnJlcHpvamM5VFJsZWxUNEZCL3dNWnhUWXo3L1hWd0xnSmxt?=
 =?utf-8?B?Mkx4VGpudXFKMkFvRFhTUk4za3ZpQ25na0x5a21XMlJhWVRmMEMrelF2Nmw1?=
 =?utf-8?B?K25HYTFsOEdMT1VNMXN1ZytkSUtIQ1A0TkxaS0V0UnE3SWJESGt1RThoZUxF?=
 =?utf-8?B?dW81ckxMbWlKRXAzNFg5eTcza1RkYzQ3YkVRbHFPWTZ6UE1BSGVZUDJJVVRG?=
 =?utf-8?B?ZTlEam81bVVuS2N4dERBdWJZUFh6ZkhFdXVWU1J3NzlXUE41NHFxalNKVzhX?=
 =?utf-8?B?NWx4aHFHaFA2aDlxNEwvVnphMGkzYkRranlxM2J0dVJVVzhlS1I5Q096WS9n?=
 =?utf-8?Q?uXk64Xoz7/U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkJuODdDM1cyNnNZaUtCV1V5bTZUVzV2ZUJrWGpWRlJLS2hYSzJIOU1xZ1BD?=
 =?utf-8?B?b25oR1FWOFpsaFRqcG84cUVCbzgyYUpHbzBtSmRkNjFub3hJY1NNdjVBVXhv?=
 =?utf-8?B?R3czS2h4VHJqT0xDQTREejl3ZU9nRk1ZZzkxVHB4cWZCUldDSWxJQXhyY2tz?=
 =?utf-8?B?ZjRTOCt6b2hHY1ljK3dVSjFhM3E4NXJtN2Rkd3hlMWRRNWpwdmZ4M3J4OVFL?=
 =?utf-8?B?djloeG5MVGpBbG80NmtENHZQWkJZamtlSzdub2NGVEdxVUt2YzVXSDltZ2c1?=
 =?utf-8?B?UVEyTmZBajFxV2V5aVJxdFZYZzB2Z0hjZk1EbXJhUTV4bU1VY1MvZUViQUhR?=
 =?utf-8?B?NlVEcVY0Y1d2bWI1elZOWnJnUXF5UC8yTWsrTVZOZHJaTHJzUDJ0b0lIeGlK?=
 =?utf-8?B?SHU4cWRNeVBCeTVOc0lZak1XcW5UMmlQczR6dG1ncWdOWXZLNFpkYk5aTWYz?=
 =?utf-8?B?ZU1DSmxZSmN4OENRZG1YY1diV3FGd3hwbkxHb3A3R3o2NGs0VUxRQ3F4cFdi?=
 =?utf-8?B?QVR6dVR2aWs4RDhMVEVlaDduY3NHaFlROFk2MFl3WDI0anlrT3JjSm1GZlpL?=
 =?utf-8?B?aFBNM2pBNnkrejZUNk1oOWpDM1M0dmwxQWF3WmJBQVJZUyttVHZaam9yZ3Zo?=
 =?utf-8?B?N2QrZFJZdE8xZENRVjAxVnRvR241WGcvRDFvL2JDYllnL09VL29kOTRpck4y?=
 =?utf-8?B?MkxnZTJyUThoNzQyUEtuT2V5cC9pdlhaYnI0RGdHWFRSM0U2UWJYRFFkUEh3?=
 =?utf-8?B?dHdLQTFweG9ueEVDUkZITnBMMEJ3cStuaGs1cFV5eUpKT1ZiZzh6Z0xaM1dE?=
 =?utf-8?B?Z0NxcnRBR3UxZ2h6ZHhXbi9CVGFaZW16WENWK2lWYTgrQ3JRZGRzYmFCcTEz?=
 =?utf-8?B?YzYwQ2JZN01GUC83bDU5UzJZaUxiNURPVnRKeGU5Mi9JL3hJd1hYUHVLZUVj?=
 =?utf-8?B?MUJLbjRJMHFlVzE1ZEhWNGQ4aEprdFFPNHNhVHgxbFBMSGJVb3BPOXVVL1Jo?=
 =?utf-8?B?Mm5qTGZ1NUN3S1M3VGNIMVhmS0liZHpIbk9HQWJyUWV1WEx2N3hma25zOTAx?=
 =?utf-8?B?OGNmRVU5RnlVQ3Q2QkFqMWV3eG40TUthUmZVcE9zdERLMjdGeFhDTlNGbS9T?=
 =?utf-8?B?WDVTWlhBdTMyS2RjWW5QTmI0UGZ2Tm1uSjJOM2dCS3NoY1lZZjA4dzFCUVox?=
 =?utf-8?B?bkw0NzlUSXVPZkJvcWh3cHVYYWxqSVl1SGxmNHIxTlZ4d0J0SUNCVVI4c3Jl?=
 =?utf-8?B?QzhoWlVvTGUwdDBEV2Jkb2VVdGpSRlppRkNsOEFlMDF4K1FERXpYOCtvbkR1?=
 =?utf-8?B?SU41S2VVaEc4QS9RRXVnYmkvOUxKUDc1eE1OaWJJSmt6SDh6QzZZTUlMSUJn?=
 =?utf-8?B?dGFyNnhoMXYyN29XOTZ4MEs3bWtCYlQ5S00wT0dhRUF5d0Fzd3Q4SzJJTzVh?=
 =?utf-8?B?MHpKMTduWFloVC9YUFRPdWUyVmIzcjVkL0R4Q3JsODB6dVJod1gvZkhKaXlZ?=
 =?utf-8?B?MGxVZE1BVDdKVERlZnRZalJwdmVwT2F2N1Q2bXZpcUtmaHU0UWU2TjNLVmVp?=
 =?utf-8?B?S3drZ0o0VU5LSXFyMU14eExTazYwMmd2L0d0NXBJN2QyVUthcm9UNDEzNzhH?=
 =?utf-8?B?amJyWm5mZW9wOUgrTTFLLzF3OVBJU05QbzgzZUFlbGNGR2x5Qk1XTnFJem9j?=
 =?utf-8?B?UkM3amZYSlhBWWJTV0VRcEFJZDdadUlGRk1MUFpEZWJRMDBhKzJqQmJZMUd0?=
 =?utf-8?B?bHRuZkx5TDV3RzR1WTE2YlJ6MTZrVU82V3dpaU8yU1o4QWRacHY0YkJrZXJV?=
 =?utf-8?B?UkJhVW5zYjh5dnc1ZitSeks0bUxRbTh2YUwrbHlPQzM0dTdzeW1YRHMxOTRz?=
 =?utf-8?B?aWpzQktnbkpIY0h6UHJtR01zYTh4dUh0WCthNGg1VEVUWS9tTWZCeTFVUDBU?=
 =?utf-8?B?ZnM0MmtFN2NtZ0VvZncwSWd3ejlZTmVLclVZVHViMWxaNXI0WWU0U2ZjcXRa?=
 =?utf-8?B?V2JBbUF6OGk2cWNkTlBCUWpSQnNUOWFSQ2MvbExUT2crNVowNk4zMll4Zyt3?=
 =?utf-8?B?Mjk4UExsYVF6ZmdENW5oNDBxNi9YM21XYlg5bHBJMXJSdGdaOFdWSmRSUjhV?=
 =?utf-8?B?QjZGbnczaGpmakpJY0VwWVlzNy92REd3N2tMcWtLS1AxYUd3RS8zK0k1L3pJ?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9201bd8-0128-45c4-5475-08ddae6f2453
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:50:53.1509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b69qVJE0SHLEVAwlUaU/AakZlpMXX5dt51Ugsijk09A4qvNUnDnNQislpF6hcBSLXKLoBDscmZi4UMG4tA3wFO/7ZvdIZaSZcFdmFi9CsU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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

Krzysztof Karas (2):
  drm/i915: Move out engine related macros from i915_drv.h
  drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to i915_gem.h

 drivers/gpu/drm/i915/gt/intel_engine.h | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 33 --------------------------
 drivers/gpu/drm/i915/i915_gem.h        |  2 ++
 3 files changed, 33 insertions(+), 33 deletions(-)

-- 
2.34.1

