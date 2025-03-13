Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB85A5F7CF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F3010E8B1;
	Thu, 13 Mar 2025 14:21:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R2UUdBq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCBA510E8AE;
 Thu, 13 Mar 2025 14:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741875670; x=1773411670;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LWJ17r/oQOJFl1we5Z5tq0pr92PkVG9Ljjl2AYE6Yes=;
 b=R2UUdBq1V1ndyuqfqpKvEofDcnUN4GCtUd814KVyh7/S0lF7qKQ2pAY7
 brGCZhHOy2YpRQ8xfINh9GF7uodP4FwH0pNuYuhsqEPDPeV0lFZPUuk9s
 es9LnOfh/cpFfBS03H9iUU1D6S3gEJ5W5jGhVk+WGRD/ppPw5m7Ulnegf
 qUF7nhHfRpznLX9mlUCWHbJXhJ9WyNAb7Bt3H6FW172xM4NMzmRwweZcv
 tYLsju97X33hafnbJsa+ALbcRpsj0ZsINFythSAH2BEPi3neheeIT+fGL
 F8GlK+DkZLio6+Tse3UV0YLns0Q038T3Vh19iUvvYgG+qqoN5CBiIMMCK Q==;
X-CSE-ConnectionGUID: Cw/uo40gRMmdxLadFK2I3Q==
X-CSE-MsgGUID: OcntyuSwTem0Dhfc5X3S1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="46780720"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="46780720"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:20:48 -0700
X-CSE-ConnectionGUID: qScYN6qoTaqEC8vEmS6wCA==
X-CSE-MsgGUID: fWUCUx7rSGuHLq5mkAQVYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="121176541"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2025 07:20:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Mar 2025 07:20:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 07:20:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 07:20:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q9a6QeNNHFuqZk31W9ostXmK0lSwH+5c3tO5m9tyV726oitbfy8g2Gnw9eHHfsz0yE2Sna1+vhw/HI26W+w/dWpBozU05GWa13p38jioDiCTovO2Kc+1YgCtPsfWj+tTAfdo2K775ZGA1QNYeoqQABstrYdYxDBBOGm2QkfBB9vokkfQiAhrjYVfIep1mHxs/qtRRUrGPbJ3b1BjjTSXUe6IsOuP6KjwE8FDDljIjh8iOb70W2H/JzM3VuTjFIcgAIQhQcI2nQoQnRFU5m2cfs1Ack3mH+19r2fmKqj3d5pNgUqZGXBe36CLQlAzqtNUKUGHEKvUR7df7SMH1ilX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUELNVRKtClKJoHiimbvXzgLPMXsJ3N3qMo6OtaiEKg=;
 b=HwRewth2aUGM1RqZLwWz0Y2G+uOPFb8uWRwnirRuoUKOEvNiJNKbNWM96hs6MFUn7q0ef+ZHn4NEztNB5QZqkOmqlfQdGRimxw1NiTKygFDUj9bx/EVryeoWNFpvbEawijbSXOGv1SJVR7UGeY4C1B3iWolNqoYd0cdPioBmMBqwAIKqMLeM4P7l9dsBOVcvXJ3SJSuWY6UYkYdVKzdgIahvCrwcqqwB4PWHoAdcAp9bYnr2342We3f2dR39imyCBLdHrrZabKFOs9Y34dHKMftVPVvTYDZ9JpVmEhO1tTnVVyrdUo1auY1l5wJqyRho8W3J6XmAS8Ne8/qqmzMRug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4607.namprd11.prod.outlook.com (2603:10b6:806:9b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Thu, 13 Mar
 2025 14:20:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 14:20:44 +0000
Message-ID: <c75d96b7-a38d-442e-9cf1-213fb726aa82@intel.com>
Date: Thu, 13 Mar 2025 19:50:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/watermark: Check bounds for scaler_users for dsc
 prefill latency
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20250227034106.1638203-1-ankit.k.nautiyal@intel.com>
 <IA1PR11MB634809FF5527600CB614F230B2CD2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB634809FF5527600CB614F230B2CD2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4607:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cb85bb8-b13d-4375-e1c8-08dd623a3de6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amlucjhhaW5IMG5ZbFE5cFJ2TUNaTGd3NDROTWZEMkxWNzIyVlM4OEpRTEww?=
 =?utf-8?B?K3JaVkptM0JnREo2enpaQXVZeHYwTXNaby9Dbm9EamgzaEZGajhZb3J6NGRi?=
 =?utf-8?B?TmxPNGloY3lXZm8reklxRmFOa2R0aytiZ2NrWFhCb3lsZmZWMGhETFVtTVBF?=
 =?utf-8?B?T3FsbXdIZ0pXV1IyczNTeG9OeHNaUUl1dGsyQU1LK2lYUm1zNjNjdHhXaXZG?=
 =?utf-8?B?YjI2dnI4L1VJRU55WExyYWcybTFsZkRSWFBVOFNNOFhXbng2Q3J4OS9XQXFz?=
 =?utf-8?B?dGdoWjNDMFl5cG0rNXZrL2RFMktxTm9QNlRrOHV6RDJKQ0o0QmJlcDA1VlMz?=
 =?utf-8?B?enpvVlg3QXErMDZUMFdTMUpLUTRVNXhFQ2pPOG1ReWY2U2FRTy9MeWl1R0NY?=
 =?utf-8?B?cDBWRkxyMDhRU3lMSHlCeGRJckN5d0tpckt6TzlEcVBtTHdFYUVyYk44anBE?=
 =?utf-8?B?YzlVQVVtTm52M2tvNHFyZmEwcDZpK1l2VDV0bzh1RHFCKy92RUcvckIvVmg3?=
 =?utf-8?B?aEVick1MVlFFVFU0MXprSTlROGhNZ3FNczRFUFI5dFN5SzJVZEVuMlVJNTVP?=
 =?utf-8?B?bitFV3J5QStlZ3hBSlZBTlk3dDJmZzZhbUZoTkZQekp6YjhMVUlXd2N5MEtq?=
 =?utf-8?B?bldEZXNNTng2em5UYjZNbWtacUQvZmQ5aGNPK2g4OXdtOS9uRW1hbVZMMDk0?=
 =?utf-8?B?dDVjT0x2M2RoTXcxWHN0TFV4WGlTanJHaTBLYURtSFNEV212Ry9GSVRrVG1o?=
 =?utf-8?B?NUVhdmJuUE5HN3ZTTC9NR0RNcmY4OEMzYXdYUXRqdU9pbG5ZOVhVVnJINVFL?=
 =?utf-8?B?NzhvaFdjcW9vTmVRTzlJTkcreW9RdHhVMG5WYi9JQWtEZXU4VUhKNXRVTkRi?=
 =?utf-8?B?RmhPSUp0ak1FU01Jb1g0UzkxelEzeFdEclNLM1g4RTBGN2kyOWhwM0xwMFFZ?=
 =?utf-8?B?YWJnYWo0WDNVZ09uZlNjd1VJMTU5YWxlTDJOeEFGMS9vTnd2Smg4eUNhR2dZ?=
 =?utf-8?B?QmwwWTgwcjg0S1RTY25Wa0FSYjVJbStqamx5WVdSOE93NjBESnNwNkp2aEd1?=
 =?utf-8?B?bGpmSGFRZWdXUXF1SlZoU1ZrUVg5OFZyRjQrSWdYR1FTRHVtN0ZGUGxNbFhE?=
 =?utf-8?B?VFBwT2thOEhqNHNwRDhiUlZRWlByMmtJNWlJd2pFWm9tQmFENmZ5M2ZIWUtx?=
 =?utf-8?B?cFJSWHUvQ1BHVnROMWplSndnYmVrUzJZQkpPbC80TzJNaEZJTVY0Uy9rNGta?=
 =?utf-8?B?d1RsVWZTZE9zcjBwN2ZVLzBtT24xb1pwRXlSVkJ5M1FKN2MvdG5hVS9ZRUYz?=
 =?utf-8?B?YmpzNXl0WlM2UEs3alRIWUFZbUNJUEczZ1U5Yy9hVGh5a3E4ejZ2a25zaUtJ?=
 =?utf-8?B?czhWOFJaVjFKeEhCNVF5cjJ6ZFFVNGlmZFhmamE4QXRaMEdaNXRqbFlhRnh1?=
 =?utf-8?B?SjU3Z2s3WHlSa1oxK1dPRkVmWFVkZ0VHUTYvdzVrZzFPS1FwNDYrR2lkVm9n?=
 =?utf-8?B?RCs4aG04NWdWNm1jTDV2SFZ6SmJjVU1SVDB5M0MyY0Qrdm54N2twRlMxazJl?=
 =?utf-8?B?YXo2UmpxWEUySjlnZVlPMUFXQmRCWHBNVjJsV3JaY21qdjNXcGZFVGsxVkNH?=
 =?utf-8?B?TW8yVVphZFp4akVLbzBsdm1pbHpmOTUza2FKbGQxTzdXSWd0eUFrQkQzUXBi?=
 =?utf-8?B?cGFEZUVkd1lRQTYzOGZVVFQxN21aZWV0RTJNd2t1WjRQbHUxSjdRRVNOOGZC?=
 =?utf-8?Q?WP/p5VXQjK9N0OTUWVn9kTDoK+vSncDhXEy5Qfi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2tKYjAyU1BoM25hd2x5aDdjZ096WFI5bGJsU1kzaS9kNm93bXkwZVpMd2FB?=
 =?utf-8?B?aVBTSFQ0aXVxek1FZmdORFBCMXNxMlB5YzhDWllwQVNmOGVSeWM0eTI5aXRD?=
 =?utf-8?B?VHhvNjhMNHBRM09ja0NoMDc4R2hyZlRIWlpwc3N3QkV2UWFBSERTTllQa3Rq?=
 =?utf-8?B?YjJ6V3VMUi9rSlQ0SUdNNjhodFJSZnZQSXQ1dE54Q3RWS1I1ZGlNZzRVRUY0?=
 =?utf-8?B?U2pqN20rRUVKNFJJSmtjNGJITlJDSUxST0orb2pYWGtxNXh3RGJreTlZdDJo?=
 =?utf-8?B?bDU4aTBsUFZYQTlrOFR3V2hJR1oxVkNLNXR6b1AwYVpoUCtkQ3UvZW96N2Fr?=
 =?utf-8?B?NnZiZjhyT3l1SitRdjZSNXR2VU9YQmYzc0VvUFdZK1V1NHhWTFhKVUtENUhi?=
 =?utf-8?B?VE5SZWdwTTZ5YkM4QWk3MkxWQ05FclhMT21pOUhlTnJjVDllZjhKWCtIWG1l?=
 =?utf-8?B?TnFPd0tOaVNKRVZ0NWRVNzlibHkydHZKbEFodCsyT0VxRjdqMHlQaHVybkVS?=
 =?utf-8?B?UXVZKzlIb0N3clJQQ2FFdGI2WFlla0p1VlFxM0hRdnpzSWdzQjZkcCtBak9i?=
 =?utf-8?B?TjFsYjlrTW0xSElCdXhjSFNuckJkcFUxVmpRayt2aE1sTURnQUZIT09zUW9i?=
 =?utf-8?B?UVpqNkZkeWE0dHNKRm9YOVM5RjJSRlBSeTgraEhEaDVBcGV0aGcvN0J0bE02?=
 =?utf-8?B?cXAvV0w0cXVOZmREaE1SR0VpMExzeW02WldjVDdiWnlpME9WSlBMYmUzYVN4?=
 =?utf-8?B?cTl0eUFEZ09Ldk1UKzF0V3V5TGVnOHFjTHZKL1hubDNQRitNcWJJVzI0Z0xo?=
 =?utf-8?B?ZE9xNThkRzZ3RGpuV0MxU3FQWEhOTlFiRGp4cmMwM05oVm4rM2tKbFQ3QUxL?=
 =?utf-8?B?YjBuQ0Y2Ry9CM2EvWDB4UVQ1UTlqQ2swRFNjcUI0Z2NrK1N6d1kwWFpIdzMx?=
 =?utf-8?B?RXUybGlzM0E3SGozbHN1bDRNTGdJZmZWNUJFNDlFbklNVndrQkRvaFEyaWJj?=
 =?utf-8?B?SGE0M2tzSjhEb09MNFh3U1pXdEQrcFJzYU1relc3dUlkMnJPUXRFVWRwTDFY?=
 =?utf-8?B?VlNPb0xDMnFsb21NSDU1b3NyeVJodkd2NmZ4WEczZmQrL0kwVUVmd3FBcUdp?=
 =?utf-8?B?cDEweUNCN3lrQmYwdjBYejFTVmloSmpXL3hEZDFVb2tMTVpDS0pQcWxlNjdM?=
 =?utf-8?B?Nk5RSW1qMzVmeGpGZWo1RHV0ZFZpSTd6UjNDbVJMdzdNQmRUbzZTWVpFQmNK?=
 =?utf-8?B?SkNJc3RCTDRPeEZTTEw1L3djVGwvK2ZZUTZuMVFCLzVKeVByV09ST0RRTktv?=
 =?utf-8?B?OVhwSFRyR0p4RjF3L0pnTXFEYjRnSU1pdk1sMGlJM1Y0VEhPcEZCamtQUGZ0?=
 =?utf-8?B?bmZkcGdyWnY4VzZkUmo5MzUrZThsTk8zUGU5Ylp3NTVjQmkxMXNGSllDYUp0?=
 =?utf-8?B?aFVtbUdlOUVUUXhaS21VSUFVRCtnRGQ1My8zdWNVNWtjZ3d2a3hWblNqVVhj?=
 =?utf-8?B?aHlzMmFNY2xoY1BUTWgyRXJaZjliM01SbWRTQ3RJbnlCUnk1eU4xTDJtVVF3?=
 =?utf-8?B?S3p2QlRNVzExSm1IWlpRQ3dtMnRDU1RUTTlQTk5wcEQ1UnVJbVB4bTZHMmJY?=
 =?utf-8?B?QlBYVG0wdm5sYmdydUVxUUVjOFhZRmsrSlhxQVVuU0NJYVdGVnVTZEh5b3p3?=
 =?utf-8?B?VzRRczU5ZkNxTjlmNHpvNTZXY1Z2TExrcTAvYUxuRmcrOVJNWEVBTTVGSWRQ?=
 =?utf-8?B?Smt1eUhCcXVZeFB4OHNXb3BQZThqRHp0dHM1bEJHbHYrNktPYXhmNTAyODRM?=
 =?utf-8?B?OWFNVGFuRnAwYUU3VENheEd1MXBiVW9LTzdNb1lLdnl0am5Gc05uM0dDdzcy?=
 =?utf-8?B?UzlvLzZhVGdZZHVTeENlcllmMDNwczhMRkcwMVByclQ3cU8yOCsxZE94MWJv?=
 =?utf-8?B?b0FRVzM4MkVJUVJLRlppMVpqdWxNWDFpZDNTb1A3OVFPWHZ2QUk4b1dkall4?=
 =?utf-8?B?UFYzK2VwNFprKzdYZmM2Zy9SWXBaZmx6VCtHNmhiRjJWSUZCNDNQamoxQzVm?=
 =?utf-8?B?TkFJUnRBaFhpSXIyV1liN2I0b3dVMU5ZZlNnOTFpTkhVZE5HbWR6RkhFbFpu?=
 =?utf-8?B?REVmMTUvcGo4QUg4cUptNGo0SnN2anRUQUdrMUcvM2s1VTNVK1V3WHRWSW4r?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb85bb8-b13d-4375-e1c8-08dd623a3de6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 14:20:44.6498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnl/V/XhPaLwlzAfrxkUPiz3+snu6LK5N5WJrgqVFFoAmeGECv261JtS9j54z60STAiD8AmM0AG7PI6d6ccJMO0EHGK3KnmbP9wAEo3xUGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4607
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


On 2/27/2025 10:20 AM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: 27 February 2025 09:11
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
>> Ankit K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH] drm/i915/watermark: Check bounds for scaler_users for
>> dsc prefill latency
>>
>> Currently, during the computation of global watermarks, the latency for each
>> scaler user is calculated to compute the DSC prefill latency.
>> At this point, the number of scaler users can exceed the number of
>> supported scalers, which is checked later in intel_atomic_setup_scalers().
>>
>> This can cause issues when the number of scaler users exceeds the number
>> of supported scalers.
>>
>> While checking for DSC prefill, ensure that the number of scaler users does
>> not exceed the number of supported scalers.
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4341
>> Fixes: a9b14af999b0 ("drm/i915/dsc: Check if vblank is sufficient for dsc
>> prefill")
>> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 10a1daad28eb..58b91981e400 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2314,6 +2314,7 @@ cdclk_prefill_adjustment(const struct
>> intel_crtc_state *crtc_state)  static int  dsc_prefill_latency(const struct
>> intel_crtc_state *crtc_state)  {
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	const struct intel_crtc_scaler_state *scaler_state =
>>   					&crtc_state->scaler_state;
>>   	int linetime = DIV_ROUND_UP(1000 * crtc_state-
>>> hw.adjusted_mode.htotal,
>> @@ -2323,7 +2324,9 @@ dsc_prefill_latency(const struct intel_crtc_state
>> *crtc_state)
>>   		crtc_state->output_format ==
>> INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
>>   	u32 dsc_prefill_latency = 0;
>>
>> -	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
>> +	if (!crtc_state->dsc.compression_enable ||
>> +	    !num_scaler_users ||
>> +	    num_scaler_users > crtc->num_scalers)
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Thanks for the review, patch is pushed to drm-intel-next.

Regards,

Ankit

>
>>   		return dsc_prefill_latency;
>>
>>   	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime *
>> chroma_downscaling_factor, 10);
>> --
>> 2.45.2
