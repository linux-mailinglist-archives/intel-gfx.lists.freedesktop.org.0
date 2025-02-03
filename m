Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70480A26454
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 21:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1501410E55D;
	Mon,  3 Feb 2025 20:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNtOr9Qc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A271010E55D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 20:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738613956; x=1770149956;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/2sm+EqD6ztRmW99PtNYR/q3OnpkoBWHUwMKfTIt3iI=;
 b=TNtOr9Qc2YYyWeEqqys/C8Ur5G2Q7NqwADuU2NjUCI0V3FyTMC0hXGEX
 vJl6mrLTiW+Cc85drfpDzGl82sbEX4EchyksfRTJjEnBPS8pVe+D/ITLa
 GX/d9Ol5joP61z51aUg0HOUJuuBTILVeEtVQRoV5dIKetjc/FGoh8DrVS
 ZQ8EhuQsNgKOTxYQgE4dAEUqTRetfGMWhnIhlQXKTY5a578Wv3vGD3Tye
 XwPCI7fkdjXI9YrwegoehzgN+PDztwJ2u/yre6JKUdhwBuzhbNGQTC926
 Di2L3ZQ0EM+px4Ejuz4+Ez5jPxj6RPRucDQEpMuAxNtvwGroKAlIOEnNw g==;
X-CSE-ConnectionGUID: euzm5X89T5yBedqmJUojog==
X-CSE-MsgGUID: 5l5dfozWQgioZb691tZmwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="50116406"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="50116406"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:19:15 -0800
X-CSE-ConnectionGUID: 1YW+mJRaQViV2cBYfjG9vw==
X-CSE-MsgGUID: SrfQopyIQ0WFlBO6eYvL5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110275258"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 12:19:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 12:19:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 12:19:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 12:19:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nm3IyS/1O7ZUcl9s/AaQIhIu4XFEDql94PtWC1lztZDVPnEn/gaREnJfs7Quwx6+6od/e8FiKkhe2TQhfRNlFBgi3KydS3y9No48wseXzMz2LHmPPQdwhUPFeXRgGpvocDD+e7sI2C6kQ+PP8f62zsV8P5+EMbglMm9d78Uj8b5yxSJt8CVxwOQkeLRCYjs3JIwQzY36eoX1PSHRG2XCRDuI8bJWY1c0/sF4NRz1HO9WrggvtV9SpxoJm35ERk2H0omirKsDL9jpjGWKTHr40l25lDiTG4vNjsvSOtlNSyo6oInQi9SnAbmWpGGbG6CyO/y34z2h+akmhVvc22pfVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYcfV+KLHaqv4e6bilKiOCz+so6VsVV2Ajhiikz673A=;
 b=XttD9f4Gs2BaxuMdQjvxLqWN3mKjr96EFHTj6u70XfF2JfufWcsp4LjHxUffmFg/IrcXK32BGaBFXegf7wuoxVqpCrbGcFCSk23oxuyBGPB2N373fbrCkWUJ1YIEI9NwWqnHAV0P/YK2qIA0aDr+LErriive/fFAW8ReUzBKtmKtoO3rF/MSRUxqKfZhGDbBHEqOiL6RzC+Tb4d3x/roFDumqylD//i5QPimd1RR0F433fk9RfzmvFpVX7CEHv+WFPNDyPVQQOpyH0Al998H7vzDQeW7b1zSJnvhX4BB/WwkxhMm8fXNEzUO3v+vDCZttb4HLXKWWVw+F3jteufD/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6729.namprd11.prod.outlook.com (2603:10b6:510:1c5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 20:19:12 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 20:19:12 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com> <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com> <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com> <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com> <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 <intel-gfx@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 3 Feb 2025 17:19:08 -0300
Message-ID: <173861394843.77773.14213626182925674257@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0242.namprd03.prod.outlook.com
 (2603:10b6:303:b4::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6729:EE_
X-MS-Office365-Filtering-Correlation-Id: df194e91-e19a-442a-3de9-08dd449005d6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVRGR2ZtMlFoK2daS2RSUmlLdWlGdGYyUjZwTjVIa2R3ZDdLQmFkVGpCWXdC?=
 =?utf-8?B?UXhOUVBpTHd3cXFia0V6L0NucEpUKy9Dam9wZU9jRm5FZkR4YU41aWNyRXBt?=
 =?utf-8?B?WnJVK0tnTmM4LzZQbUdnL3ZtZmhnSDIvTXlRRXFIaTJ2MHM5OCtXdzhHNGZq?=
 =?utf-8?B?dk5hMmVaaVZyOGhib2NSWDZIOEhOV3FlQ1J6dzFvZi96OHdTdUxJeS9jQkJn?=
 =?utf-8?B?bUhiV1B5SmhPakpqUVVWUFExWFNUazMxcG9ETzUwV2VCRThiN3JHY1UrS0Rj?=
 =?utf-8?B?U3lyLytUc0tFUUxmQjlDUU43aS9jbjNNTlBWaGk5bStWMmVwYUtZSkQwOVdi?=
 =?utf-8?B?eURlSFVVazEyQ0xsaU1UK2lMb0RTWUNiNDU2UEpJYm1JclZQV1NWUnlxU05q?=
 =?utf-8?B?SzdRNFZkNmdzTzVDbE0xcm5oMUQ5YndDYUZicEdNTmxjOWpDR0VSVWZ0NURm?=
 =?utf-8?B?Q1IyY1dQNUdaUlFmQm5xTlJ0QTExWHM2NEdlYUlkTGlUSWZTZWwzRmZhdDYy?=
 =?utf-8?B?WXgyOWxLZEMrUnpWRDc1UlNVWGVieWx1RE9pZUpuTXNhb1BraDkxd1lCZm9U?=
 =?utf-8?B?MDFJd0pKVHlhcGRNb3hTakNLLzlQWldvV20yeWc2UjdWeFBPTWo2SFZzQ0l5?=
 =?utf-8?B?cXJCL0lxUW9qMlhWcjJ4OHdPTEtlUFhwRWhQMjZyRXBSajRUWWthVEhPcTY1?=
 =?utf-8?B?NmpPTUNwNkFVdWxEQWYrTWhnNDNXdjM1QTRMVE8wNGltUHk0YitwbEJJYURY?=
 =?utf-8?B?QlNGa2pWVWtJRklzSEpvZUNVM29jZ2QxRit6aHJJS25EUkdySjkvc3p1eGQz?=
 =?utf-8?B?czFvRjZTZTZHMUJDSFVqNFRxOVVydG02ZVpES2hBYUR0N3VONlVCOExZREh0?=
 =?utf-8?B?MlFjaFJKa1BCdHlNak5ZTHgrNm56K21JdGxGNkVRZzNFQ3hxK3NPZisxYmsy?=
 =?utf-8?B?Sm10VXdnK3ozVVQxenF3V3lvakV2dmMwSy9oUnJhMXJaWk5PVC9lQVE2MTM1?=
 =?utf-8?B?cDBIRFI1SW9MOHh1ZDBad2pDKzRsbzVzbmd6R3EycFZzcHlkNDJXaEdpTmtV?=
 =?utf-8?B?cDdRTTlJYWFRaC9GZlNPZXk5TldpaWtGN2xuVGV4Q2xUd2oxUWVVRldxSXE5?=
 =?utf-8?B?ZVUrc3Y5TlJsUExQTEtDNnZZcU92TGg0L1R0RHl0Uk1YS1l3RnhQdk5SRGlP?=
 =?utf-8?B?T3FvN0JiT2JnRlRiRTg2K1JFK0tSa3h3VlhkdFJHTUVDUWg5cVBLbWlHQTJ0?=
 =?utf-8?B?blJPWW5MMWhvK2dLV256MjNyeGtCUnFsUzJTZjVTTGdCNDZwQk5jcytRcWtq?=
 =?utf-8?B?MVVXNnlWSDY4VlUwYUx2QkpyYXBybkR2Uk5XK0UycmlmbGFkQURscVNudlBm?=
 =?utf-8?B?Vk1NWXVoa0wyN1lleHRpcHVJUnpCVVZDbnZkNmZpS2U3MEszM0F0YVdxYTBy?=
 =?utf-8?B?L21NWG1rUVIrdVVJSitIcHhaYy91VThTZWlIYTFad042VUwxMTZxOGR5QzEx?=
 =?utf-8?B?eHRja1F6QzRmN0FJRExFbVR3ejl1MWNBWDZiTFJqRW8yNnZ1MExPYm9rckRy?=
 =?utf-8?B?NlJOMHNhZG1HVlp0WE9IVE5tYjBDOFVsWHlkNUFsaUpydmRuWGNVczhtYkR2?=
 =?utf-8?B?ZXE2bUhhbTdJRlZGbFN3VERvbElwL203K21XWG40RTVtNXlJakpSZ1pQTEFS?=
 =?utf-8?B?UFZ2c1pzcXIrNUlBbERhQXkzOXlzQW9wR2ZySE92MEI2UzRWd1piOWlGbDAy?=
 =?utf-8?B?NVFoYjROS0pWK3ZQemV5ZWRFOCtsSmhEb0dKYlpRWTg4SEs4cU1UZTlsVUFW?=
 =?utf-8?B?cDZETm1ES3NxbFVzUzNVN0JCRFc0cjEwSEo3bHk1d0RsekVoMHl0QlpVbStW?=
 =?utf-8?Q?AAAR/wLd3PdcI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aC9sYzRSOFRXSnh0SEUzUEJKVHFUUG05a3d5YTc3SUVaTk1KdnlMc1VuWDJR?=
 =?utf-8?B?Z0tmdlVVSldxL1l3Y25QclFjNUt0VjFuNDZwY0p0YmptUWRLcXNlYjZYbFM1?=
 =?utf-8?B?ZXYxK0xDcWxqWE9MR204YWFMdGorM3VRQWtZcXFoVTBwSENCbkFuYzZMeHVG?=
 =?utf-8?B?cmY3OEsyVlk3MUNsWUZXWDNnNzVMYWVoc0Y4RXlkSHozaGRwMkxwUFFYSEh1?=
 =?utf-8?B?RXEzTzhPZmpVTWRqbCsxQy9tVWZTVUllbmI1Ynl3S1RsT3MvK3pITkdTRVU0?=
 =?utf-8?B?cFd3RXZUR2pJdGZqaDlvMlR5dHdWN2RwM0hTRk1OcXpOYmNUNE5xb25xOS9v?=
 =?utf-8?B?S2R4NzdaL0JESEZtbE10Uklja1FQcFN6enc2NndqT1pNV1ZDVVV2VHdYSTF5?=
 =?utf-8?B?VFFzcEM3c0d0RGp3VXoxQXl2YW5QS0pvMmRpVkV3NnNOTWZ1RkpCem1lM3hu?=
 =?utf-8?B?SlA0ZDg0MlluUnFhSmYrMndDZ1czUjc2K3BZMjRBaHZNOWtsQkt5OCtXOFUv?=
 =?utf-8?B?dU9GTkhOU2YwRDN2RHFKUElRajhkUmlrRS8valU4ZFVhTFdqT1JjOE5OQVB5?=
 =?utf-8?B?SVhBbW5zMzFldUJ1ZldQRzJadi9wUW5HSmdDbFNadDgzamZEK0RNV2ZHWmM2?=
 =?utf-8?B?dHNNZjR0R1I1VHdBWkJTL1ZWTkM1YUltRVBjQno3T0hNbTZncndQbFFMbkQ0?=
 =?utf-8?B?QmpyTUJ3MnpITWg2cnVXRzdsTWwrdkVCRzZwRG95Y2VKMkRzNzk2VG9OQnpH?=
 =?utf-8?B?bG9zbDUrT2dVdUVnMmJuSUZLV0NqRUdNdVFqdE9KbUxKc2pYS0pjUU82NW9L?=
 =?utf-8?B?VC9iWTlYQTdEdXM5WVNEWG5uL3V1VzJBUGZZNzVVSE1MZ2FXZVpRVUF4UzlJ?=
 =?utf-8?B?YktFUHU5dVRoSGt1OFUzSWlTVWZIRUJ6S3IxSFFHVHg0N0VmT1FpK1I2UWdB?=
 =?utf-8?B?Z3dSV00wOXlxRFRkai9tdUlwVDZlbVVXd1JNRUVvTEJ4aHFzYWJnMlhSMmdI?=
 =?utf-8?B?VDRkSk5TZmJWY3JLWXRXUWtOb0dPS2t4SWxMMGlHSS9uYXJSc3dnSmlDRUdZ?=
 =?utf-8?B?RlpuOEJXY2xmczZVbnUxUHNlMVhjRytqZDFMNjFCNk9TYmE1U1N1a2tSdXdK?=
 =?utf-8?B?czNZck1ybUxvRWNZT1BVWXZzak1EakFUTVMyZWo5RXVkd0tDQytqRnB2Wk15?=
 =?utf-8?B?a3dZRVdrU3diRDUxTk5DQjJaYWc4TFFWckFXUndla0ZwRzhMbmVlS01CcVNu?=
 =?utf-8?B?N3ZqWmlKZ0p4RVhZZ2lHRGZIbEh5SE5MbktyY2tPajJ2UlZXdEptZUl0NWdK?=
 =?utf-8?B?WXFkcHBsWTRiUEpUNmhLQ25LNnRZZWNyeEZ3YmEzOE1GN1JqejNNcE1CelFP?=
 =?utf-8?B?cllxYndTdStYMGNoY2JWcWVSK252aHYwVWJMVWpuVzFXL2pTV0Rwei95bzhD?=
 =?utf-8?B?YjJtNzgyY3c4M2YwSzdTdDFWVGozL25OcXcxSHRFN3kzNFI1NVdzY0JTclpP?=
 =?utf-8?B?WDNhbU1IU04vSmYxRjZKdjVERTVGNjJXakVUdm5XNTMxQUc4cnEyczk1c2NM?=
 =?utf-8?B?Qk5TNmFCZXFJdDR0QlJ5cERPS3dpV1RPekY0cmJYakFxd0JKV2pXRUo2b2ZT?=
 =?utf-8?B?bWYwRDR4MnYrYUIyTHF2R0FFNURGZ0RaL3U1akhXU1I4VjlpZzNoWVVUYk9l?=
 =?utf-8?B?VEF2NkJtUHh3YXNnd0tyczlUU01jbU9UQ2xlMHVkWitCdEtpSHZWWXBmZ1hZ?=
 =?utf-8?B?T1BiNzJ4UUxWS1gvQzltczVIYlZFUmhWOHQzSFphUWt1V3RjbHlPVWp5QkFj?=
 =?utf-8?B?ZFZTMFoySHV3OGtFSkNBenZKWlAzM0YyZkcrVWJTTXg2QTJycld0VlppMm5R?=
 =?utf-8?B?Nms3cmYrVEJmcU9CaDFZQmJkN1NYc0V0TjFMQ2ZjOWR5QXFwMlhuOVN6b3NI?=
 =?utf-8?B?N3plaFcvTXc2QlYwQnBvMzVYWFhrdHJkSGVqTzBLRlh1WFB6NXBsYjM3cHdG?=
 =?utf-8?B?aUwzQytrdlNxZ01vcWZWUlQvcytSeC9LT1lIekV5c1FVNnl1aHRpWTlwTzFH?=
 =?utf-8?B?bnpPUDZwUEJvOGNjazJpTGxaWCsxaHR0NXNoYjZGcGtlL1N2VmJTVlZmNWpj?=
 =?utf-8?B?NnNCWjhRMnpBUmJvdXVseTZ4Z2hETnZrMnd1YS9EUnBEYVNUMUNUbXZQWGlL?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df194e91-e19a-442a-3de9-08dd449005d6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 20:19:12.3227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nEKibrILj/+VR9yLvNb5KyYoJ8CUx+gxHuh5Mmdt2zFmiiT/RHlA8zp8RWtXefAMFaLXx3BoyXiaityUKOWawQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6729
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

Quoting Imre Deak (2025-02-03 16:22:44-03:00)
>On Mon, Feb 03, 2025 at 12:15:26PM -0500, Rodrigo Vivi wrote:
>> > > > [...]
>> > > >
>> > > > The driver enabling DC6 is not an enough condition for DC6 being a=
llowed
>> > > > from the display side. Some display clock gating etc. configuratio=
n by
>> > > > the driver could be blocking it. According to the HW team, DC5 bei=
ng
>> > > > entered while DC6 is enabled is a guarantee that DC6 is allowed fr=
om the
>> > > > display side - i.e. the driver has configured everything correctly=
 for
>> > > > that.
>> > >=20
>> > > Fair enough. So IGT test case would check directly if DC5 counter is
>> > > increasing and DC6 is allowed.
>> > >=20
>> > > Something as simple as this in the kernel code would tell that
>> > > DC6 is enabled:
>> > >=20
>> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > @@ -1294,6 +1294,10 @@ static int intel_dmc_debugfs_status_show(stru=
ct seq_file *m, void *unused)
>> > >                 seq_printf(m, "DC5 -> DC6 count: %d\n",
>> > >                            intel_de_read(display, dc6_reg));
>> > > =20
>> > > +       seq_printf(m, "DC6 allowed: %s\n", str_yes_no((intel_de_read=
(display,
>> > > +                                                                   =
DC_STATE_EN)
>> > > +                                                     & 0x3) =3D=3D =
2));
>> > > +
>> > >=20
>> > > and
>> > >=20
>> > > $ cat i915_dmc_info
>> > > [snip]
>> > > DC3 -> DC5 count: 286
>> > > DC5 -> DC6 count: 0
>> > > DC6 allowed: yes
>> > > [snip]
>> > >=20
>> > > $ cat i915_dmc_info
>> > > [snip]
>> > > DC3 -> DC5 count: 292
>> > > DC5 -> DC6 count: 0
>> > > DC6 allowed: yes
>> > > [snip]
>> > >=20
>> > > Thoughts?
>> >=20
>> > The DC5 increment could've happened while DC6 was disabled by the driv=
er.
>>=20
>> Yes, it could... in general the dc6 bit would be zero, but right, there'=
s
>> a possible race.
>>=20
>> But should we complicate things when we know that on the test case itsel=
f
>> we are in full control of the modeset?! From the test perspective I beli=
eve
>> this would be more than enough without complicating things.
>
>Imo having a counter which works based on the condition that guarantees th=
e
>display to allow DC6, would help later in debugging.
>
>> But well, if you really believe that we need to go further in the driver
>> to cover that it is fine by me.
>>=20
>> But just to ensure that we are in the same page, could you please open
>> up a bit more of your idea on when to increase the dc5 sw counters
>> in a way that we would ensure that we don't have race and that we
>> get the dc6 allowed counter correctly?
>
>Something like the following:
>
>1. Right after the driver sets DC6_EN, it stores the DC5 HW counter's
>   current value:
>   dc5_start =3D dc5_current
>2. Right before the driver clears DC6_EN, it updates the DC6 allowed
>   counter:
>   dc6_allowed +=3D dc5_current - dc5_start
>   dc5_start =3D dc5_current
>3. When userspace reads the counters via debugfs the driver first
>   updates dc6_allowed the same way as 2. did if DC6_EN is set.

This sounds good to me.

I'd like to add that we should ensure that DC6 is really being allowed,
so that might need to be handled inside gen9_set_dc_state(), where
allowed_dc_mask is applied.

--
Gustavo Sousa

>
>> Btw, while doing this experiment I noticed that the debugfs and test
>> also doesn't call that residency anyway and it is just count. So
>> perhaps with your idea we don't need to change the debugfs interface.
