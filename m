Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE9AB1BEF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9293810EAE1;
	Fri,  9 May 2025 18:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CCxp98Rl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C49810EACC;
 Fri,  9 May 2025 18:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813844; x=1778349844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=7sC6KY2ef7RUDmhlMbCAHwMskmyiS6hZ8c0EzWkDOBQ=;
 b=CCxp98RlUxYBe4eXBdcMtiPzYHvrbwW4eRUivwKSYwRbpcYAMH/79QDj
 T29KZgMgD3N0IugNJRnLscH6dyc7W1Iv60sOtlC/xPIKcLlc/wPazSPMP
 RYEhm4RBO+z6gxP6m55JmKRcGB80RL6FW3vuvdRmmWXSDZ20H1uX+eT/Q
 14Dqt0QFE7ODBQWeDzLxM8x2mrZcKIDkOhqWaMBMS5NlpR47TQtnXIlsp
 6IiNjelcp3dZgxmdU2FBymP+97/arvQqno7WS6o99BD6tXjmviyBfgjM9
 n8XCGFb68HiONMbSCisArDs4ipckzu63rVd0lifprF1IJf8ECkhOxQvQm A==;
X-CSE-ConnectionGUID: uXl8n/K4RleA75EshoFvhQ==
X-CSE-MsgGUID: htT1+1L0RKOesOBmnP/noQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464917"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464917"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:03 -0700
X-CSE-ConnectionGUID: WnVhtpoIQa2cnXR8cOPYrA==
X-CSE-MsgGUID: pvo8ZbkeSaOTk2WUfZYlNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564205"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:04:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:04:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:04:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lr6zEqFK5WmoqGjrwBjOPf70bZ08HSDFEH3eKoM3ROK9d/Uxm/VTEmwXFz9XsmeeXVUAlSAMbWV72P/CpRC5V8jZ8uuGQgNDwNdIR9MJ3hn4kAhB03sB9GzFws1B2sCXVU4C6pjSLe2JlqyZS0+re+85TpzdZ2wOZnz/fIDLEKnj+0oXqhAxLyNQyOtigZIBQbkkeLby1y/0Mo1Wq0uIr6ZKnFy/bI8I1VOobJWN1+NtGbKC+plg9rxkIO35n/Su4ujy7pv9o9rGGfpmGde1/JO70Z/MdaTBfSGU0AZkJOBkOEMyV3rMBaJKGik/Te2wHWW9QdKTCY4fUrxG6bZhng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iD6OAYuRJtpebnXsrsAhqiWg9UNmMKbu9oMEQ4JjAT0=;
 b=s6T/j6xheZc3nROtdab+Gn2zi2Q/mz+lej9QszZ7ZSSFBk6f94/T0BU46HT2nr2+JNhhsVhxDszV2wEatz+P08eYFUEpXxtEfnMiMn+T3gNnj+JKsvmPq4AtPLVF5BhGYLxNhdYTSBHi3Day8tXXsfOCHb+c0Qhp7BSOHCdd+KaVkokbZ3Qbfd2/xRPneuoQo12BC1dHuJ8RHRf2fDjMkDOif+GwKe0lkzbcYLCBLJJJcKDNfYZi0NDWV2iP9Xg9jmoe+F99lgzi54nhLbRlnUYE4gltyHgWGyrDscCt0r1XMOj5WV85CmbHD9qtJjg3IVhKnfp5Hht9EdMNjSqYSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 11/12] drm/i915: Add support for forcing the link bpp on a
 connector
Date: Fri, 9 May 2025 21:03:38 +0300
Message-ID: <20250509180340.554867-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: c5db7c3d-fb9e-49bd-fe43-08dd8f23dc77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjdLeFRtRzNnd01BbUZFUUNMZGswUTRsRy9jVW84OXpFNk4wV1Ayd2R3ekEy?=
 =?utf-8?B?UUQwT2pLSlF3K3RNK0ovc1VmaThiTjVDa2ZndHRCZXhjc21IbFpZQlhTNUJG?=
 =?utf-8?B?cklvS01lN0g5Z0ZHZnFTbkVhMXZ3UlFrTVdYRVNkSEhkS0c2YnF3Qzc2Vktp?=
 =?utf-8?B?WHV2Qzk1Y1dRUjB3RWFlYlhqcXpRYXY2K0dKYlZpYzJ0T3V6b0NIdlBiOUwx?=
 =?utf-8?B?WC9WdHhJYVpDeVR1Sk55NmlkMjNmU0NlNEJ6THJaSGs0NlI0UXR5Q0tBTkd0?=
 =?utf-8?B?bVV4TnMzamVaUXR4dEpuRVk4Q3pOaVM2ZkwyeGNRdlBoSVhmMmtjdklielQw?=
 =?utf-8?B?OVFSMnVzRWdLaEtKZWtxNW91dWtBVElFeVJzOXNKOWtFcFg2QkZRNFJDdENV?=
 =?utf-8?B?THc1NUpiU0xsWGY1YVZVc0VYWnNVR0NXbkprVXNIdStlakNtTS92TmFzNEdh?=
 =?utf-8?B?bVI0R0F3a2VUQ215NFFVWFpLTUdtY1hKa2ZjY3RVYmdIQ1kzNFd4RHp1Y0Nv?=
 =?utf-8?B?amhVRldOVmFVcGx4ODAwOERqbmcwNUNXNzlnL2Rjc29jM1dBa292bEV3TFRr?=
 =?utf-8?B?Q1RWUzRqVEhJWlhSbkk5L1grM3d5YlFKbXd5RXpSMjNtYklISnprTkFjQlVu?=
 =?utf-8?B?OEJtdWtnM2xnTnlXdEx1VHJYYkVUdWVuM1dQRWFFVVl5clVrSlZBaExQR3kv?=
 =?utf-8?B?akFxM2FIdkcvZ2ZWdi9Oa2NCMU4xS01SOVdONXA5ZUQzRXZZSjc1MlN4Tk14?=
 =?utf-8?B?TjVWSjFlbWRTOVUyTDc5Y2c3ckV3RFhsbDZQT09QemhCSi9YNGZxMy8vSVp1?=
 =?utf-8?B?VnlDV3VtZEwzRDRMUUkrY2ZVQ29JaUZ1Wi9TMFV4RWl4TjlZS0FiWjJOcGRw?=
 =?utf-8?B?NTBCdVovZm5SQ05oVnJXL3BVTlJDRVVMTm9jWVYwQkpxc3hUZ0dMTHBJLzQ2?=
 =?utf-8?B?SVRZNE1iVFFMTTRaenEzZmNxbGlUY080V1R3bVhzZENEMFZieGJ6YlhmRWQ3?=
 =?utf-8?B?STl4c2tWcGtENEZaRWY4cUJJOFM0ZXI0UEVnTEN5eDB1cDA4WmtHaG5OZ20z?=
 =?utf-8?B?YUY2Z0c5YUsvdVdZVTUvdnRlTFJqRmZTQStXcHRBNkduUVhxK3FWVlN5d1U5?=
 =?utf-8?B?YzFFTGdEdU5FYkVkTFRxd1hXNjlKUmo0ZGJGT0g5c1FKekswUi84aGVmM1Zv?=
 =?utf-8?B?c1dMTkxDK09sMHh2bUpPUXRsN0Z5ZlpJYkZCQ0dDSkpYS0FyOGY2SHdzSStT?=
 =?utf-8?B?N1V6eG92UFRJbTdWYmZrQ3VQemkwTmN2UlQyUURYRDB2OWJzUFJjYWpaV2dq?=
 =?utf-8?B?dXlGNjN5QTZSZDR4dmhWd0N5M1B6ZEFFTjB0blNWcS9BVWIzeHNvSnRlUTdB?=
 =?utf-8?B?K001R2dLSGc5SzlrS1FlVmw5NytKT0NOajJMMVo2K1VIbERJNWNTOUhObFVi?=
 =?utf-8?B?TGtVKy9kUXFiWENBU3N0MXlwZGhlbFM2SWRpdEtyMlQxdFdWSTI0OW9CejRp?=
 =?utf-8?B?OGZUVXlZMitJQ0FvOW1qclFXYTFHNldGQ3FHWXMvTFh0YnViUzlCbzIrQTBr?=
 =?utf-8?B?UXVlSUhVaXdFeWVzZUhoMGcxd3JFN2VUVlZmVERWQTA2ZjlFQ3pvVG5iU2xj?=
 =?utf-8?B?eDVFZWcwcEVwMXBTSFo1endxYTFCUVZlaXdTc3VZWCtDWXF6dk52aEtSNkRh?=
 =?utf-8?B?TTUwTHY1SE41dTNocFV2QWR5MTdVd1ZhSUZEWXk5aHRMaHo0dTdQZEVKR3k2?=
 =?utf-8?B?MmFPcTdLazQ4U0pXU3Y0WEdIRDdxcTJ6eGtQZEoyTTJSb2I3Rm1TeWtpcHo4?=
 =?utf-8?B?V2U2bnM2Sm9wY01IVnR2Ri9yejJwc09ZaysyMlZ5R3RDWkVBalFabTVjNktO?=
 =?utf-8?B?WE1DdW11VXJZSkdKa1VyelNjSElJajRqdWVsZk16elRsd0FKMmhmQUJJZzJ4?=
 =?utf-8?Q?kB4Szxdjx8k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHRnVXd1OXIzOXpLaU9rR3pKbHBsdHphRWZTUGc3S0lISW1TdUttY0t0aTIv?=
 =?utf-8?B?ZGhnRlRtc05KK1pTOWx5RjRFb3VnK3RzR3ozeW10d3ZCSU44ZXlCNFJtUnVx?=
 =?utf-8?B?bXhDM1ZmS0FOcnBlc1BpUVB1K2l6SWREQ3pjUGdhUzQycDRIT0IvWkZYOG5s?=
 =?utf-8?B?K01wM1dJdUV4NnBSMUhjbjEvUWlqSEp4NEFwZjdNNUhWeWNFZFI5eUMyTm95?=
 =?utf-8?B?dEVzbHJiTjF0aVFPNVBuYmZ6WVQ1SWtQS3VuZXkwMEkrYVBUVGRUdTZydGda?=
 =?utf-8?B?bVd3VGhWMFA0QWtUY0NDQVIyYi9naEViYVk3ZXhiUUEyOHgreUphVkJIaUpR?=
 =?utf-8?B?enYxZDNldEtsMGRPZDVxTHQ2NlhJVHNQQXJKdTdNanU3ZERkcGxJeTI0S1lo?=
 =?utf-8?B?bkZxeWVQOWJxendwQy80Q1o1MnYxSzJnTFRUdmxUSWRIZGxURWVOODA1S2JM?=
 =?utf-8?B?Q1lSSkNMclIrOUJialNsT1hRNzB1alBuakovL3ZjTXNvc2pzQzJVOW9jTk44?=
 =?utf-8?B?UEhmSEpFemIvV3Ixb25SRlBqSWI5YnZDUmovS290Q3p6cFVMNnBNWkxnMzVD?=
 =?utf-8?B?eDEyYXhiQ2hpWmVxaExiUEVRVStIa1pqakErSVhXdEs5ZTFoUlpabzRFNHhL?=
 =?utf-8?B?K3pHZG1LWXRjblBaaUJoTzM2N3ZsVVQ3TENNbkZzT0hmd0lnbzJIa1RtZE5r?=
 =?utf-8?B?QVNIeXFTTXVvTTgwRTM2VTZPazY2VU1XczJaazVEbENRTDdFUGIrbk91N3JL?=
 =?utf-8?B?T1piREZWc1pVOGtWUWRGc0U3SHVZMjhRRVFYUFVPZ25yR04wQW13c2podTY4?=
 =?utf-8?B?czRaNnV4VERFMGhzNnQvMFZ5ZWhIWXdBcThXbXNNRG5xVmpHK2pQSDZhUGdN?=
 =?utf-8?B?aStKdmRreUlGN2xNeHlQUHhsRHorUlhEc3Z2Nk1tZXVJZGM4TkM0RkdFSTlX?=
 =?utf-8?B?T0pNVllCeEd4WGg0TzJHYnJQVGJDcmFBbjFQS2hRYlFHbk0rVngvWEMwUDRa?=
 =?utf-8?B?UElvUXJ6QmtCMHd6YWVUTndYRlRpQ1hlL2JlRll6R28zTlBpOUJyT3phN0x6?=
 =?utf-8?B?d21TSVdLdzlTZVRLa1hpR0NvdDJrQUVWWlNJVGI2S0YybFQ0VTdJNkFuSy9n?=
 =?utf-8?B?ZVJPd3ZBLzJXTWJ1NzNHeGo2MEdxSndIcVBFNEJsMDJJNHhaWTRqMFM2VWNR?=
 =?utf-8?B?b2J5U0svWDY2b0dnQmJLUEUxRWdPKzJ3TE5FV1V3azdsMUxVcW9IRENSaWpk?=
 =?utf-8?B?NitUeUVaQ2Z0SkVraC9rNlRqNEhNbEM5eXdvQks3Tk45N2llYnROc01pOTZs?=
 =?utf-8?B?NXJhUEw2TlNrYW8wZFV2NUw3MlpKSVVIZ2pCSTFtZi9OMXV5VnRocXRVSVh2?=
 =?utf-8?B?Vy8zazdGczdMejNGWldGSFJhRXIzcmkyaXRyWHkrOUNxSUVXZGJOQUhYYmxq?=
 =?utf-8?B?YXlESzREQk1TcTdCOWlJU2RjdUVvcGErSXhvVUptaEdNV1hmUnROSG1pUUNL?=
 =?utf-8?B?MU9aMC9mLzFRQVc2NHM1RzYwUFRRek9tNnJPZHNGWUE4V2ZJMWNsU1VoaGdZ?=
 =?utf-8?B?SDFCQmNIVExYNEp5cEhnVXE2YWk5a3ZaVEw1TmRmcEpKQUErUEpQNitES2Iz?=
 =?utf-8?B?L0I1eXhQY3pERFBVWnRoYXJsajNHUlR2RHNGODRRWTMwcEt6bXVVYzEwVmFT?=
 =?utf-8?B?NUhVZGM0R2tCNW9tdCtFR1ZsVlZpc1B1TzdUUzR4MzczL0pGUTJwbC85RXN6?=
 =?utf-8?B?elVOVEFYZTE2QzVZR1N4cWkwZXdIOU1Ib09SdW04L200YVptblUxWHR2cVUz?=
 =?utf-8?B?OU1Ja2tQRDNjQnhld3pYeTdQQ0V4dWc2ZkpYMXlDeDh0V1FMSnVyTThrRXF5?=
 =?utf-8?B?bW1lazRBcmVEbS9LL0dkWWYveDNaRHU1SENUTW5jM2g2Zm94WVF4MGc0c2E4?=
 =?utf-8?B?cEdsY2pJRzF1WTZzUzN0clFRQm1PU0RYYXBQRGZOK3NWODdGS21zWXVoTTll?=
 =?utf-8?B?aXRxRWZ2TUxkRjRwZk1BVjZlcmJkWnhBRGYvQkpDMjVMNDBDd2plOG9kWm1h?=
 =?utf-8?B?T1g1OFp1MVBLRlNrYXJrbSt3NDdwZUt1cUkvanNYV09iUjBpS0V1ditRQWxV?=
 =?utf-8?B?eGx4QXQxRktnSUdwVHJ4bzRvK3FtaTlhUGcrdmRJSDI2NHRwTUZSYnVQV0JI?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5db7c3d-fb9e-49bd-fe43-08dd8f23dc77
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:54.5689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLcYq9y2cooQ74Zt0GaD7sp/7KpDa7tQN+OU5OYrIkMl4NtxFWmrjKZEnzo1eWLBYFP5lMnJqf1ycKfi1JQaEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

Add support for forcing the link bpp on a connector via a connector
debugfs entry. During reducing link bpps due to a link BW limit, keep
bpps close to their forced value.

Add the debugfs entry to all relevant connectors: all DP connectors and
on an FDI link CRT/SDVO/LVDS/HDMI connectors.

v2:
- Move adding the debugfs entries to this patch.
- Rename i915_force_link_bpp to intel_force_link_bpp. (Jani)
- Select the relevant connectors via platform checks. (Jani)
- Use for_each_new_intel_connector_in_state(). (Jani)
- Fix 64 bit division vs. 32 bit build when converting str to q4. (lkp)
- Avoid division and addition overflow when converting str to q4.

v3:
- Add TODO: to make the non-DSC min bpp value connector specific. (Ankit)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 239 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 5 files changed, 241 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8d0a1779dd193..a9b1ec4cf0f75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -39,6 +39,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_panel.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -1325,6 +1326,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
+	intel_link_bw_connector_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 87c666792c0da..fe14a92ae8c65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -172,6 +172,7 @@ struct intel_display_platforms {
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
 #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
+#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
 #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
 #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
 #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d6d0440dcee9b..056219272c36e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -550,6 +550,10 @@ struct intel_connector {
 		struct intel_dp *dp;
 	} mst;
 
+	struct {
+		int force_bpp_x16;
+	} link;
+
 	/* Work struct to schedule a uevent on link train failure */
 	struct work_struct modeset_retry_work;
 
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index a10cd39926075..3caef7f9c7c47 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -3,6 +3,11 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/ctype.h>
+#include <linux/debugfs.h>
+#include <linux/int_log.h>
+#include <linux/math.h>
+
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
@@ -10,11 +15,33 @@
 #include "intel_crtc.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
 #include "intel_fdi.h"
 #include "intel_link_bw.h"
 
+static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
+				   const struct intel_crtc *crtc)
+{
+	struct intel_digital_connector_state *conn_state;
+	struct intel_connector *connector;
+	int force_bpp_x16 = INT_MAX;
+	int i;
+
+	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
+		if (conn_state->base.crtc != &crtc->base)
+			continue;
+
+		if (!connector->link.force_bpp_x16)
+			continue;
+
+		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
+	}
+
+	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
+}
+
 /**
  * intel_link_bw_init_limits - initialize BW limits
  * @state: Atomic state
@@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 	limits->force_fec_pipes = 0;
 	limits->bpp_limit_reached_pipes = 0;
 	for_each_pipe(display, pipe) {
+		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 		const struct intel_crtc_state *crtc_state =
-			intel_atomic_get_new_crtc_state(state,
-							intel_crtc_for_pipe(display, pipe));
+			intel_atomic_get_new_crtc_state(state, crtc);
+		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
 
 		if (state->base.duplicated && crtc_state) {
 			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
@@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 		} else {
 			limits->max_bpp_x16[pipe] = INT_MAX;
 		}
+
+		if (forced_bpp_x16)
+			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
 	}
 }
 
 /**
- * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
+ * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
  * @state: atomic state
  * @limits: link BW limits
  * @pipe_mask: mask of pipes to select from
  * @reason: explanation of why bpp reduction is needed
+ * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
  *
  * Select the pipe from @pipe_mask with the biggest link bpp value and set the
  * maximum of link bpp in @limits below this value. Modeset the selected pipe,
@@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
  *   - %-ENOSPC if no pipe can further reduce its link bpp
  *   - Other negative error, if modesetting the selected pipe failed
  */
-int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
-			     struct intel_link_bw_limits *limits,
-			     u8 pipe_mask,
-			     const char *reason)
+static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+				      struct intel_link_bw_limits *limits,
+				      u8 pipe_mask,
+				      const char *reason,
+				      bool reduce_forced_bpp)
 {
 	struct intel_display *display = to_intel_display(state);
 	enum pipe max_bpp_pipe = INVALID_PIPE;
@@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			 */
 			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
 
+		if (!reduce_forced_bpp &&
+		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
+			continue;
+
 		if (link_bpp_x16 > max_bpp_x16) {
 			max_bpp_x16 = link_bpp_x16;
 			max_bpp_pipe = crtc->pipe;
@@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 						 BIT(max_bpp_pipe));
 }
 
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason)
+{
+	int ret;
+
+	/* Try to keep any forced link BPP. */
+	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
+	if (ret == -ENOSPC)
+		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
+
+	return ret;
+}
+
 /**
  * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
  * @state: atomic state
@@ -245,3 +297,176 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 
 	return -EAGAIN;
 }
+
+static int force_link_bpp_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
+
+	return 0;
+}
+
+static int str_to_fxp_q4_nonneg_int(const char *str, int *val_x16)
+{
+	unsigned int val;
+	int err;
+
+	err = kstrtouint(str, 10, &val);
+	if (err)
+		return err;
+
+	if (val > INT_MAX >> 4)
+		return -ERANGE;
+
+	*val_x16 = fxp_q4_from_int(val);
+
+	return 0;
+}
+
+/* modifies str */
+static int str_to_fxp_q4_nonneg(char *str, int *val_x16)
+{
+	const char *int_str;
+	char *frac_str;
+	int frac_digits;
+	int frac_val;
+	int err;
+
+	int_str = strim(str);
+	frac_str = strchr(int_str, '.');
+
+	if (frac_str)
+		*frac_str++ = '\0';
+
+	err = str_to_fxp_q4_nonneg_int(int_str, val_x16);
+	if (err)
+		return err;
+
+	if (!frac_str)
+		return 0;
+
+	/* prevent negative number/leading +- sign mark */
+	if (!isdigit(*frac_str))
+		return -EINVAL;
+
+	err = str_to_fxp_q4_nonneg_int(frac_str, &frac_val);
+	if (err)
+		return err;
+
+	frac_digits = strlen(frac_str);
+	if (frac_digits > intlog10(INT_MAX) >> 24 ||
+	    frac_val > INT_MAX - int_pow(10, frac_digits) / 2)
+		return -ERANGE;
+
+	frac_val = DIV_ROUND_CLOSEST(frac_val, (int)int_pow(10, frac_digits));
+
+	if (*val_x16 > INT_MAX - frac_val)
+		return -ERANGE;
+
+	*val_x16 += frac_val;
+
+	return 0;
+}
+
+static int user_str_to_fxp_q4_nonneg(const char __user *ubuf, size_t len, int *val_x16)
+{
+	char *kbuf;
+	int err;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	err = str_to_fxp_q4_nonneg(kbuf, val_x16);
+
+	kfree(kbuf);
+
+	return err;
+}
+
+static bool connector_supports_dsc(struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+		return intel_dp_has_dsc(connector);
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		if (connector->mst.dp)
+			return HAS_DSC_MST(display);
+
+		return HAS_DSC(display);
+	default:
+		return false;
+	}
+}
+
+static ssize_t
+force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	int min_bpp;
+	int bpp_x16;
+	int err;
+
+	err = user_str_to_fxp_q4_nonneg(ubuf, len, &bpp_x16);
+	if (err)
+		return err;
+
+	/* TODO: Make the non-DSC min_bpp value connector specific. */
+	if (connector_supports_dsc(connector))
+		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
+	else
+		min_bpp = intel_display_min_pipe_bpp();
+
+	if (bpp_x16 &&
+	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
+	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
+		return -EINVAL;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	connector->link.force_bpp_x16 = bpp_x16;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
+
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct dentry *root = connector->base.debugfs_entry;
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_DisplayPort:
+	case DRM_MODE_CONNECTOR_eDP:
+		break;
+	case DRM_MODE_CONNECTOR_VGA:
+	case DRM_MODE_CONNECTOR_SVIDEO:
+	case DRM_MODE_CONNECTOR_LVDS:
+	case DRM_MODE_CONNECTOR_DVID:
+		if (HAS_FDI(display))
+			break;
+
+		return;
+	case DRM_MODE_CONNECTOR_HDMIA:
+		if (HAS_FDI(display) && !HAS_DDI(display))
+			break;
+
+		return;
+	default:
+		return;
+	}
+
+	debugfs_create_file("intel_force_link_bpp", 0644, root,
+			    connector, &force_link_bpp_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index e69049cf178f6..b499042e62b13 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc_state;
 
 struct intel_link_bw_limits {
@@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 					  enum pipe pipe);
 int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *new_limits);
+void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
 
 #endif
-- 
2.44.2

