Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6957B50582
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 20:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7A510E7C2;
	Tue,  9 Sep 2025 18:45:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDmatFxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F4510E7C2;
 Tue,  9 Sep 2025 18:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757443503; x=1788979503;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=IZYKYTx6bSjQcdEMe5GZHgnpLGNwgZGA1O61m4/kyh4=;
 b=JDmatFxYZxERWGN8jZVc3ZDc+i/T76f7aGoyIrQrNFBzoZwJosOgiJND
 F8+8v92FCEF27EXudGP2G1ptTwyrZ63aBsuKhNRNi3I/RerAcoT8CQHUG
 Uwuq7YbrjisE7/+QbCIShLKMpnXlJcU+Xi0P2xbV0hipX2cSjryVZo0A2
 tWONGEEj65S/scZl1PQz+6ElOhQHj/6dV6cS0khGB77s/PG2KXiiKdncR
 17A/xRnHGMftnuUHQV3c6NVFtr5POpg4E44jrt3bCbFJFB/Cm7kULbYve
 UAEjCHDmeknD9jKjB7ikRgBGmkR43/1i0WxJErndZ3Vm64Al+HLCdiyGI g==;
X-CSE-ConnectionGUID: H54VSd2DRxOioSTaGHUwbw==
X-CSE-MsgGUID: j6u/uumBSEKX2qTOFcBxPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="69993622"
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="69993622"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 11:45:02 -0700
X-CSE-ConnectionGUID: uGuj4H3/QVeGT+XJYQHmKw==
X-CSE-MsgGUID: bup+MQZfTGC7YFUVra+YEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="177220026"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 11:45:02 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 11:45:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 11:45:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.83)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 11:45:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P+wc9XDHi/xoxn7NAnzM2J7W6iOxldwD0o2bdzv4IvKxORcEiX5gBStwt5wqYuazTtSHyMA4+4ZY0UL+0UuhNnsOMKqV0YbRiUeySZPjlHc7QOei7hABbIAOecQfkzAi37WBL2+WpoGW2DU34FhYb53BUpWXxjw6nIOxkgo7SMKyrkyy3ubdSkKoQ/fEvB1PYcKgA4w35Ue7DJyjQEnGT8AMBMy6TF+YtPpvlrZyMkaw6PyBUlqDLjUFtZm6HBl1uT5QcZiN5Q9yY1gVroDFTA7FLMvBcRZoUkAAF6dt4h2rwgkWMoJnIwwdfHVf1ymNrFNWwRprjyTs7wG3MgwWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUtM/uf8hxnq0EhxKDgXPLxGcNizheza5os+szN6pOU=;
 b=AC4mNPjdsD4TsT9yHZ+UQdWwpe8xiO9a2ZLrUl0G71QC+nTHJV6bz75p2M8f35hvERKAJqYdbVT89xaJxIp/j5v4DNNXktSHDBjDEtI3oWWOba65s8BlIwbgcCu3YF6mJRjK+yw7nBt0LLUDW3Jmi6tHu7+YrSW7erbSEL4zDiPLjMmp0yHRG/3nS7GvvTeNbMw6IDX+RgEJZwWwC2RFKqiQ5/dxOMGxd1Y6VHOGA34C2+PvRA69w9ao4A7QLeBAvXA/XSThkHweNKQGq3VAd3rKrOqmdsWAcUWK8nCbvP2hJG7B7IezvDHyd4XC8bCxkPZlHjYqWoG7Pz8wirAxQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB7751.namprd11.prod.outlook.com (2603:10b6:208:43a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 18:44:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 18:44:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <IA1PR11MB6266A4A408531083F4DE8646E20FA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
 <175743023064.1838.6299430690698520828@intel.com>
 <IA1PR11MB6266A4A408531083F4DE8646E20FA@IA1PR11MB6266.namprd11.prod.outlook.com>
Subject: RE: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Date: Tue, 9 Sep 2025 15:44:49 -0300
Message-ID: <175744348951.1838.3620029253889327019@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0281.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB7751:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b6b9033-70c2-4c1f-50b6-08ddefd0f7d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SE1CS0l4M0d0bUhJTGpWdU5pTTFpS1pIQ2lrekJ1Rm1udHUrTndPYy9VZ1pr?=
 =?utf-8?B?dGJpbDRSeGNzUmpoc1ZHakp5MHRmZVd3MkFTWTh3UGhGbHlodmRpR2xFUXpF?=
 =?utf-8?B?NldGV1N0K2lxWis3ZG9nTkwydERvcHllU0lMQ3MwZW1zYXVucUw4enBNNm5Q?=
 =?utf-8?B?NXlqZ3JtMFpXV0s5ajFLSXY0aVlMSTBxbk9pWnZYSjB0SmVxa2tra2JYSHNP?=
 =?utf-8?B?VzJTcFV3cXk1cnlFRkZkcnEyZWpUbnJZcWorV1RGSmRZZlNhUnRMUUNodEdl?=
 =?utf-8?B?TXVFZHVGc09YbDkzVFpKYWpPUFV2R2h4TWJqZERtM2VONVVFdVBnemtHM2dn?=
 =?utf-8?B?aG83MDZNeW00ajhvR25XQlRIN0dZdjZ2ZStDQWZ3WXA0endhRExzOVZjQWJP?=
 =?utf-8?B?K1ZvdnNoT1NsR0RPR0R4QzJ2eE0wdEFJUVd2TnkyeXduckprUlluSnU3UHlK?=
 =?utf-8?B?dVdlQWEyV3JaNXdmNWQ4cUZWbEdXU0tocEJrL3pHdXIxQXlzRWM4UWdlNUY2?=
 =?utf-8?B?ajgzb0I5RkxMSFhYTGk1RHJ0Y1dnV0c4cFRVcVMyY3dZNy94ZnhPK1NydnJi?=
 =?utf-8?B?b3pibmtVRFJTOVViQkZVcHNLU04zcjA3WmJQRmkrSDFmRHdXU2tGOGN1L1Mx?=
 =?utf-8?B?LzN0V0ZTU3JnRnlCaDJqM3NRc3RBN0tvZzVUc0F1REY0VzBHNDFNcTJaNXRi?=
 =?utf-8?B?L04rRDdLYTNrVzcxUlpBRUZpMUZwNzdqanF6bi9yNExpKzdSQURUZjNnd2tt?=
 =?utf-8?B?blh6WVl5b1ROWXd0bW5CWHk1ME82Tk5EZWRIZXVpK1NmM1NPbGExenhTUFNX?=
 =?utf-8?B?VHJyeThQbkIrMTErM3RRWGJ2N2xMbmh3ZVNYbmduUU10ZU9JQkd1ZVVOUVpP?=
 =?utf-8?B?M2YwbFM2UEVETEtZWFdCZnU5MzhtZ2F3cE9zc0kyOVB5MklIbVhvWXZYakFD?=
 =?utf-8?B?OVczM1BlRDdWOHJmOFpjbU1YRkI5WXBBamdTWXpxa1pXWkdNYlBRS250czNT?=
 =?utf-8?B?UXJsSnZuS3FvbDZEcWc2UkRVdHRFWGh3aDZoRFRGWW9TWm9VZnAydU0zVVRD?=
 =?utf-8?B?dkRSOW1qb2tuSm9FbFZsYzdUVVlaQ1NvTWFMbmJTYWQwZ0hmUGtxaDg1UFAr?=
 =?utf-8?B?ZVhNUnFjVFFJMHVSeGdKK1V1dmhkcTR2aFI2WEloSFRTZnN3MDVpbEp2U0ZG?=
 =?utf-8?B?Z0s0d3ZOSWw5ZkhPZG5SeWRaa3A3ZkU5QmNEL2FyRFFxTC85SXF5MjlpMU44?=
 =?utf-8?B?Nyt4UlNQOEUxaEdQcSs3cGQ0NjlFdnAwcUhuaGlJKys1cWlZVGd1YkJkTk9V?=
 =?utf-8?B?em14R1ZONmpzWE02UXRES1VkM1FZTXI1YUJjVUxkL24zSGxIaFYyZW5Jendz?=
 =?utf-8?B?bWpwVjRkTXV5aENDeGpUODhFVkhGTEluRVBvWUtXNWc1anhCa1dFYTFMQnB5?=
 =?utf-8?B?K3pKQkQyaXI3dmplT2tFSG1ZMVJzSXIwM05xaTVtZ3QvNlVmaWF0K21HV3Nv?=
 =?utf-8?B?cm9QWWFjaHlUNkpRSFJwWTZLOGFUVVRDYUN5SEdTbEwwS0xhRUxVbnQyR2Jt?=
 =?utf-8?B?OFZ1UlFWVUlSb0xvMWdQSTR4bkJZU1JwWklSa25MT2JoL0JGVDUxL3VvbDR6?=
 =?utf-8?B?aGNQa3NuZXZBQmt2M0ZyczBpYzg1OEJtR3hzaGtiNWpNZUFBU1pSejNGUVdr?=
 =?utf-8?B?UXU2NXdnLzJCYzQ3TG9janJvRjE5UFhBVEE3WjF2NTBmTUxqb2IwRm5hTHNu?=
 =?utf-8?B?UCtuYkRaVXNzRXFOT3RmQUVDVEcycWxaYlNrUGlYbFpzTFpoWWdSeko2SUFN?=
 =?utf-8?B?ZGVpQ1RVZTBCTVI5TXJVSlkzNU14SjYyMzhtTmg1N01tNXlqOUd0dkI2WW12?=
 =?utf-8?B?NW1tdFdrbVFHb2NneWFaZER1N253OWFjOGJFVkROMjZrakhveWV3Q2Y4bkpT?=
 =?utf-8?Q?0brctB0sBI8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGtMeERMMnJ5c0h0RExkS0hKc0poeXAydnRXK2c0d1pyd2tiTUlaY2Z6NEhR?=
 =?utf-8?B?SUVCUkQxWTBBSVFDZm05YUxxYVIvdUI2MGpQQ1YwOGpUd3pUL1QxQjNwTDhF?=
 =?utf-8?B?V29uT090aDREQm1yUk1NTWQ1TFhwcVhpSVlOQi9ld3Y3QzV1SDRqN3BDZk9X?=
 =?utf-8?B?QWxtTXBRbVVTbTdsZzZjVmxhQThsTDJpc0d0WW9mQlJuSEE4ZDhNM0RxUzNO?=
 =?utf-8?B?clRCdm1pOU9DeldTUXpxU1doMjZ4K0dJaTZSTWVXaHhzMW56cmpaZERhTlJv?=
 =?utf-8?B?UlVESHE4ZlVmamFyOEY0RTdSWFF0ZDJkb0l3b0I3eTZsSVZ6ZTBxdmgrVDRM?=
 =?utf-8?B?azBrSGMxaXhZcjRITkdvTmhTTFZCMUZtUDl3ajFEZ0JYekl5SytiNlRUNDJa?=
 =?utf-8?B?cytGQTFCSkRtQWJXdDJJdjRwdjRxWWZsZVZDTklNMVdQMWFEbGlqZ1FydURp?=
 =?utf-8?B?ZEVFS0Zqa1V2cHhSYXF6bkk4QXVJbFcrK2dkNE1pTlliUWQ1azdBQ1M1emFj?=
 =?utf-8?B?eGQ4RUowcTJ5ZzMrOUd6KytLN3NLZEE0Smg0aDZmRCtUMmZwaDh2SmFPVEdl?=
 =?utf-8?B?ZjYvNVA1V2EzeU9IY0xONHJQYitGOU9YRnRQU3lTeVNvdHBLZktxUkUzSm9G?=
 =?utf-8?B?U2JVd0s0NGl4eXVvMDNrUW8wcVBoUjk2d2wvdlVucWxrckE5L2V3OFlleTJi?=
 =?utf-8?B?WHBCclpTc1M0clNGa1ZYTjh3dWtKSzhaYmVBSERhaElIMDZ2L2JGWU1CQVFp?=
 =?utf-8?B?dDdSYnU1em15ZXNWQUl6ZWQ5bEovYmFZVkpxMVFQRVBXMEJwZzM2Z2VnR0Vk?=
 =?utf-8?B?WUV1b3JVcU9VVThIT2VZc3p5cFR6ZVY0NXlTbEVRUkt4RHp5N0NKcEltekZQ?=
 =?utf-8?B?Qm5lRVFWTFBGNkR1MDVaZ0ZyeXc5S2RTaEpuYUhQa0l6K1QxeHNlTXRLQUs5?=
 =?utf-8?B?bGpRdW83aWdSSUVvUkVGdGdPbk13RGQzRXRjdlg1aWQ3NkNScjRFNWpvanhP?=
 =?utf-8?B?VW80R0wwdWhncTA4OUdVVmpTZVN3QmFZVXdHUFNTMnlraENPblZldnVKMU9t?=
 =?utf-8?B?RlA5ekJVMlNZcXJNK1FlMlUvQU0xakY2ZXl2SU9UTEllN2xvVlR3R3dVNWRx?=
 =?utf-8?B?VUt6dUx3TGI1L3hkN0p1TWxtUk1WNjhkME9ZRXpPSGlkUDRhNk1PT0NLWjBk?=
 =?utf-8?B?WjdLRG1UYktHUXpJbHFnV3lKZjdFRGpHVDFFQzRVd0Y3SWxKakxvZi9veVBn?=
 =?utf-8?B?aXhrZjZqV3pQMllyV0loeGhaaUs2N0oxSWpULzF0WFR2WEI0QnA3THo5MUxG?=
 =?utf-8?B?eXRsOHRVbUVocHhqUWlBdkYvZGNYWk56U2VaNGxBUjg2U0ZnRXBUSWpJK1M0?=
 =?utf-8?B?RGs5TlpNYkx4M2xPV1dub0lHQ2pnSDA2NmpHTTU4NHhvOHF2a2JkNnBxZ1NG?=
 =?utf-8?B?eWZuT29BeUZkOUdUQUdDdXVOY2h3anVvTGw0Sjhob1k2Wm1zTVlHeU5TR0Jz?=
 =?utf-8?B?dGtUYlJEYjNVQk1VVU1RcVYzSVNtSFpSVTlNdytaUVd6VExIUWZyRnRGcStJ?=
 =?utf-8?B?bmR5M2xKUGhCbzVDUWdlcEFQd2hUcS91UXBuVGpUWEFjbmx6SkxCQnVTWVhr?=
 =?utf-8?B?OTBHQXJZeERCZk9pQ1NqY3hoem9xcEdveFgxSnl1clpadllyS1N0Y2RBRzFH?=
 =?utf-8?B?VWtQdFg5S3V4cnpURGpESEp1OWJITTBmNFkzWDBDQ3pvdGNIN3ZCUHdLR1Ay?=
 =?utf-8?B?ckF4aFY1RzEvbk83MktkQzB1RXlZQWJ5V0RNalRRMU5ja21nWVdaaGgvNlJ6?=
 =?utf-8?B?M2tEZVNOWXJ6N3NTRnBZbmtMaFZOMk5jZ2pNenIrK1lQQWdjNEJhYkZwcGJu?=
 =?utf-8?B?N0FMdXNSM1JqbXVsQStkT1lpVFMvdmkvR0t1WkVuMmRUZmpkNWc1VjJXaVcw?=
 =?utf-8?B?bEpmUS9wV25McGNaQkdxM05xRmR0bGx6NG81ZCtYamFpS0ZkeDBYT0NiME9m?=
 =?utf-8?B?dHZ1ckxzN1VteU1MbXpsSEpTMnhLMnJOVGVHTTZhaTkwSmZUcGZVYkJrT1F3?=
 =?utf-8?B?UzhoNFZYbEdHZTBYdWd4N29ROEZxVGlqSmZTeDZjVSswSWVNbFh3VWsvdmZj?=
 =?utf-8?B?R0pENFlmdUZXb25XUThibGlDZ29IWloyQlJZazFGRzl1ZmpYZ3B0SGNtbVBi?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b6b9033-70c2-4c1f-50b6-08ddefd0f7d2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 18:44:54.8771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ukJ8l8lRBa2DIixmVgfQzEHN1SVBRyB2ycP5p47dqXzhCoES3mXtkmn34Vii0dIWSKoCe0oACqFY/hZpQltLtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7751
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

Quoting Bhadane, Dnyaneshwar (2025-09-09 15:38:49-03:00)
>
>
>> -----Original Message-----
>> From: Sousa, Gustavo <gustavo.sousa@intel.com>
>> Sent: Tuesday, September 9, 2025 8:34 PM
>> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Nautiyal,
>> Ankit K <ankit.k.nautiyal@intel.com>; Atwood, Matthew S
>> <matthew.s.atwood@intel.com>
>> Subject: Re: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy=
()
>> to only PHY A
>>=20
>> Quoting Dnyaneshwar Bhadane (2025-09-09 06:45:35-03:00)
>> >On PTL, no combo PHY is connected to PORT B. However, PORT B can still
>> >be used for Type-C and will utilize the C20 PHY for eDP over Type-C. In
>> >such configurations, VBTs also enumerate PORT B.
>> >
>> >This leads to issues where PORT B is incorrectly identified as using
>> >the
>> >C10 PHY, due to the assumption that returning true for PORT B in
>> >intel_encoder_is_c10phy() would not cause problems.
>> >
>> >From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>> >
>> >Update the helper intel_encoder_is_c10phy() to return true only for
>> >PORT A/PHY on PTL.
>> >
>>=20
>> I think we need a "Fixes" tag here.
>>=20
>> Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
>Sure will incorporate in next rev.
>>=20
>> >Bspec: 72571,73944
>> >Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> >Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++-------
>> > 1 file changed, 2 insertions(+), 7 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >index 801235a5bc0a..33963ad14cfa 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >@@ -39,13 +39,8 @@ bool intel_encoder_is_c10phy(struct intel_encoder
>> *encoder)
>> >         struct intel_display *display =3D to_intel_display(encoder);
>> >         enum phy phy =3D intel_encoder_to_phy(encoder);
>> >
>> >-        /* PTL doesn't have a PHY connected to PORT B; as such,
>> >-         * there will never be a case where PTL uses PHY B.
>> >-         * WCL uses PORT A and B with the C10 PHY.
>> >-         * Reusing the condition for WCL and extending it for PORT B
>> >-         * should not cause any issues for PTL.
>> >-         */
>> >-        if (display->platform.pantherlake && phy < PHY_C)
>> >+        if ((display->platform.pantherlake && phy =3D=3D PHY_A) ||
>> >+            ((DISPLAY_VERx100(display) =3D=3D 3002) && phy =3D=3D PHY_=
B))
>>=20
>> This is usually a property of the SoC and not the display IP. So, we pro=
bably
>> want to know that we are on WCL rather than display version 3002, which
>> could theoretically be re-used in other platforms with different display=
 PHY(s).
>>=20
>Hi,=20
>would you suggest that we should introduce something like platform.wildcat=
lake in this case?

Perhaps as a subplatform (it could be only on display side) of
pantherlake?

Cc: Matt Roper

--
Gustavo Sousa

>
>Dnyaneshwar,=20
>> Also, as side note, there are many superfluous parentheses in the condit=
ion. I
>> think only the one for the if-condition is necessary.
>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >                 return true;
>> >
>> >         if ((display->platform.lunarlake ||
>> >display->platform.meteorlake) && phy < PHY_C)
>> >--
>> >2.51.0
>> >
