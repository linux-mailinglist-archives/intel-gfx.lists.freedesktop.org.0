Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D8BD202E5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A19310E626;
	Wed, 14 Jan 2026 16:23:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/i1LDf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C3210E622;
 Wed, 14 Jan 2026 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407788; x=1799943788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dRujqz1BMoc1nIOHYlDPc0rf4qgXHJLXnn6uvHgaGy8=;
 b=X/i1LDf5mc/1V7HoZ2X5EY8/P0kI+wsB58K9+FxKanBpVI4UYwdHjVzS
 yH8p+KbZl+OGpQLeg8iD0F34JGkKGZiQ+sHpZQJZbWuMuvI439peZ8xTc
 6JnAfuIgkiL795PXr1DA22ok71N0gEAAcBviTV/6Lvt7bQ+EczyxiWpMb
 qR1fOI3HzH9hc9HZgoFkjDIA/ks+Xxhnhe/J+gUHus9nwtn4lG0ljHgJl
 f7yIFQ6YdWM1jVIOwPzL3aFB++P6cUsnhvfBp8ENoI/gg/pjPU+sA1VLS
 OBAf/f0vyCYzP2thEGHUPwChZHD1weWAcJhzhix7hMJN4qR/gfrhmXTZK Q==;
X-CSE-ConnectionGUID: iMl5APsqSByT2Kgld3qcGA==
X-CSE-MsgGUID: jaiTox8uQsCNtwf9+le6MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551562"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551562"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:08 -0800
X-CSE-ConnectionGUID: KeVwPVjVRRun5DoxzvEO7Q==
X-CSE-MsgGUID: ZibH8iEMSyeLAEXawgtsvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611136"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:07 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:07 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uySnBBg2/H+8wWKPwgGYu/GstTwq19MpW4+C4UNLGdErA7khazOrfpt+fk8DM2gcOeLoT25keEbg3XcwHrRhg+CZZRmBp5y34LJUH+Sdr/mI8OUIYT9/dHA/LU/2mzMz1EZy6/ZbeOEDrtFVzRv4QNdTHt614qPvy6fc6Gps7Zp3JH5O6cEvgAcdRzlFSHm2CexRC+Nb61qpFh9z+iKp5ymWg5tNUIDoVd76+BaEiJdsG7Jm6Tf/2UA+o8YkQAv5LOclw/Bq3hnr7dVrhXo2KipYGMYcDyykAw/vPWpvEa1IwOxY7qPhf/hux7UV82YBUZsTCuOW33ci7qwUdNSMxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLzX1sd/jz0leLRh/jep9JFUj67wv+uzs4q8EIvfow8=;
 b=BQEMWav13EnpZGI+V50DjxRtJnryyP7Jo1kX+06ulk5siWY/ZtFhydQhrMUl77Q+FYcpH32nkNOvhENVPAb2zpTHTbF9HrYLSu1IlBtiE6QTzGUldqLqC2Pg8E+wqrayU7pJ9cJ+IBtpZli/limWD7f+8N/hrFBY96+EPlYrnp8hzuuyjowsE0mB5govW4+QXt8xOwds+dCULa95hPOCEQRF7Qf2TfIlgx//EMDXFGUtFDbGVfLJ9vJG2jwqO/3b6iY51Jkb0dEnsRJAtxfjKMOmt8l/mZCEjUIQgGe7cAamn8pZOuoDjuhH/Oofnhe6OJj8WgJj/D18mFj1SnhEwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 16:22:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 05/15] drm/i915/dp: Track the detailed DSC slice configuration
Date: Wed, 14 Jan 2026 18:22:22 +0200
Message-ID: <20260114162232.92731-6-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7676:EE_
X-MS-Office365-Filtering-Correlation-Id: 54d9e2e6-3e49-460c-e5f0-08de53892edf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alI3allaaUJiT3RUK3NXS0k3dDNwaFRSaEJ1c0N2M2xQWUxUT3hlMmd4VUda?=
 =?utf-8?B?MVFCQUp3amp3U0NMVDlsWGZuT3Z1VjJxdFppTGNVWjJGUFkyM2doUjJabWpN?=
 =?utf-8?B?MytiOTN1ZzJRRW1zMDRoMjNhOHZnR3FFSElISDJURDNxTUt5emxCSjFURDcv?=
 =?utf-8?B?Z2VhakFHazEwNDNnWUFqbGZzSVE4ZWdJc0prWDBpM1c1QlNxVE8vQ3ZseWt4?=
 =?utf-8?B?OGpEcmdZWCt6Q010WUhlMWVrb2VsQk52bXAwcFJCYStPS3MyNkpjZzZEUDFn?=
 =?utf-8?B?SVhQRE4rOERNbXFESVhqYXBjeXV1U3hnVUFBbm1ES3NpK1VTRm83d040RDdp?=
 =?utf-8?B?VXFySVl5dzVPcXQ1YVcvQVVPaUxpT3FiVDBxSG00MFpvQ0dqTTBvdGZ6Sldm?=
 =?utf-8?B?QkdnYVNJMlpacnVjVzdwRVFPZ1lNcXhZLzN4NUxUSzZSS1U5SjcvS3dOcHNT?=
 =?utf-8?B?eGpLT1NtRFgweWlEZERCRFZsRXExZThnd3ZRQnJtdnExWDBLRGV3VHcybTMz?=
 =?utf-8?B?Q2g3SXlyTTdHenRFYS9PYnlBZTZhVVd5M3Y3L0Y1OXVMOVRRYXo2ZWUxWjBl?=
 =?utf-8?B?WFBMbHkzc29Fby9MNTVIQUh5MjI3L0NPU1FTSGJMTlhhTWZQVURYc1FzMWlI?=
 =?utf-8?B?cVdJRE93RVdxdncrY2FPWHpSbm85cFh2bWo2elFVNXY2WVBPN0t5T3RhOUdQ?=
 =?utf-8?B?VEpUSlpaWWx3OGF1cmpLRi9VekIwL2J5c05pMFhpSG9TWjkwdXFEU1RhVGJk?=
 =?utf-8?B?K2lxSUtBdEZCWC9JSHFXMk1SVEZRMnlHSEovMy9reXJUNFdyQzJvUmFjM0lC?=
 =?utf-8?B?KzlMaEF4dEp0OEZUWkRiTTdUMWdIOVFuSXhCUlpUWHNlRDhoWE53NXFOci80?=
 =?utf-8?B?RkViQ2dkQVY3UnN0a3UzOTRsVjZQUzF0aktLT2kzK2FRcjJ3YTllOE5BZVNi?=
 =?utf-8?B?U3BBQkVLOFFPSUZDTE44eHljUm96S2UycVl1OG43WlZ4Qi9CTzkvTkxkZTJ5?=
 =?utf-8?B?TkxDaWJNTDB6T0hwbnN3SzZVUjUwc2t2eVJtQzk1aHRPTlNxUVZhOWswNnh2?=
 =?utf-8?B?ekpxMGJpUGZhLzNzaE1GWE5SQ0hBbmpRNlMvTEk5Rk1wMTZ2QVY3c0Z1ZzVE?=
 =?utf-8?B?YUFCd2xRRUQzeWV2azhXUmJXQWhaZGxDRGZGNTdpTmFCNGEydExrNDgxR0NP?=
 =?utf-8?B?UGE5VnJ1SFloZkJGMTZjS2xJUkF0UnI1Mk13VjhHRFhwM0tZb2toVHN5bkda?=
 =?utf-8?B?K09QbXRNWnYxc1BCdnE3azZrZXJ1NWdMcnQ5TGVNclIwaWJyMTNoWFllN1Rm?=
 =?utf-8?B?ajEvSjdpTDB1WHAxaFI3bWVPT1JKWk5vM3lHcFFlbkZNNXV6TklsYTZsR2g3?=
 =?utf-8?B?Mm92Z3llRnNaZFhvWGc2QlJXV0ZDSnJWMjJkcFlNejdZb2VyVzlqWHRCczJ1?=
 =?utf-8?B?QWpIVEI0eDFXUDVrNUVBQ1NSMmJ3Nk9VMFdtcHRKYnAwKytLaTByS21HNGFQ?=
 =?utf-8?B?ZnVHS3NNQ28wR1RUelB4UGNlc2luZjlDSnk5cnl2QWdXM3JOSzFSSTNrcTdp?=
 =?utf-8?B?bW1TZDdlL1dvUCtCNHJ5Nndvdm9vWUxWV2ZFWjNWcWd0bzBRUjl2SXlNRVRM?=
 =?utf-8?B?cmd2REhtZ0ZsWGtrNytZWWErM3Q0Z09CNUhFS2xWWDVZcUJLMlNvc0xjbisx?=
 =?utf-8?B?aTFOMFoxcW8zT1h1aTZXUVlkektnWmQvK3J1Z3ovKzZFaWJZMWZVWm5yU1NQ?=
 =?utf-8?B?S0ZBNjRmZ291UlhjMEFrVWIyOHRKaUgvdkc2SDZGV2ZEc0pVQlVUQnpEYUF1?=
 =?utf-8?B?SGJxcVZXM1EzNnErYUxCa3ptUFlORFNzZXVuM2ZEMTlrclVXV0dGTkJMNVdR?=
 =?utf-8?B?RFB3b2lXaXE4RDcvL3VkQ1lJYW1leUt0bStkYVdHb1BjL0RlQ3ZGWGlpQW0v?=
 =?utf-8?B?bk5Xc1Q5U0RrL0hRdm5zblo4SHRJM0E5TkVUWEtmTE9HY3hQZm5KTXBHUzJJ?=
 =?utf-8?B?ZVRSMjhWNmVVd3R1anJxNjJZVnlYSkR1ejBkZGthRlFmOVhFVzNRY0I4OU5L?=
 =?utf-8?B?V2xkOFpzcjhnVTNqTS9UWU5GeFdMNjF0NHJMbXVHd2ZhTXJBUlYyRzZBeWpq?=
 =?utf-8?Q?cQQw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVMzZTE5ZzRoa3hHM2lEUlg3ZUJCR2hjc0NUVG9MNk9FRUxVSHBqNEtkOVZN?=
 =?utf-8?B?MUhVcXJxTVhFZVVmWXRUWkMxcWQ4MnNOcVNHKzU4RFZRSllNVS9UWEVtbUVJ?=
 =?utf-8?B?cWNIRWNvR09zTEVtMmNGS29qakZEREg4Z2FKZWZHcFpBaVZVLzRVRU84NFNr?=
 =?utf-8?B?UjVBZHJ4cFNoc2g3aFZVbXpURWp4V0NKMXFRMEJ3MDU5clduWWM5VjdnTlRn?=
 =?utf-8?B?dmFpSE5GMnpBUjgwamFlZ0xoSEEwMGI3TDVGeS9qSzZoVDdDd0pFM1BkVjlQ?=
 =?utf-8?B?ekxHdHVnTmNSYmdJaXpFTWF5TlVJZ1lyMzJFM0hua3lmTnJrNCs4aUV5UUJs?=
 =?utf-8?B?VkdFYmdzK3FNbjhCemxaRndSMjNwUklIUzdWVG0yTm5GNEEvR25JUU5FVTVS?=
 =?utf-8?B?SHJMM3diZmU5dTF5UXlUQjEvWGpWcWxLNExtVGJrN3U0N2ltT3h3eGtCQkxK?=
 =?utf-8?B?Wnp1SVN2aVBQTGRtZ2pVcmNWekxFQjFhRDdVWkFWRUpxbnV6Q2gzcmYvVHlh?=
 =?utf-8?B?MmJ3MlpWcC8zODNEbmY5bnhjRmtMYVNEYnJLTFFZYVhybVZGZ01mb0RVMEcr?=
 =?utf-8?B?WFdHVnMzeGVZYlNwWkxEcnVJTEdFSTYrNE15TnlqMzRIbTc2aFcyVXlDME8v?=
 =?utf-8?B?Q29tdGpoL09FNllCQm94NENLeUdqZ2ljckFuZVB2SStNcG05dHhlWEpBWUhO?=
 =?utf-8?B?a0sxdVZQU1VHM1pDZDBEK3loR3dZSkVzSVpQOGdNcmZwU2ZXMEJCck1sdml0?=
 =?utf-8?B?UVN0K204dkFvN01qdWN2ZktEWGVvWno1WHp4bXlod3VnbHZBRUNPNDZDUWJC?=
 =?utf-8?B?M3ZSREw3QUZrNml4MnNnY3JwRUZEdWRpWmkvTUw5OFBnVktBbWlHYjhGQXVQ?=
 =?utf-8?B?KzdlZ0YxU04zeFErb0ZvU09xMDVYMDY2K0puUzZTMkFEUXVDWXFMYW1waFQ5?=
 =?utf-8?B?UEVjenBtTHBiQnlVYW1hOE1VUUlsVWg4OU5DUEF2eFZNVEd6eWZMR29mdWRi?=
 =?utf-8?B?ckRNSUF5eTBBTitSOFYrbXRPb0Nva2c1YkNnTzhjdGllc1V6d29sQkt4bnU5?=
 =?utf-8?B?TlJHTFlwblJFd3kwSW5lbzRVWE1qM3Z4dVhoWGlPaWtJb0oya2ppSkRpQ2pN?=
 =?utf-8?B?TkpNQWhtTjNOcnJHVE50WnY5eE9zS2VPcHA3b254RW1Ha1NVeXlxYU9SVlpk?=
 =?utf-8?B?MWRKQmQ1Z250RHBiTGZCSGhLWDNBTW5FYnZWV3kySU5TUmtSK05uUExLMzA0?=
 =?utf-8?B?UTEvRzNkamNRcUtlVG5jcmEvaEJjWmxEN0UvU204SWFKWHVjdGpwWk5ZV1dG?=
 =?utf-8?B?djNWbU8rcGcwSi9raUF2Vm5mQ2tMSXRUY1h4VUVrcThtL252cDZ6UlZsU0pI?=
 =?utf-8?B?N3pxZ0VKSGx5Vy8zRzZTRzllcnU0UmNjVUlCa2RPNFVhb3N3aCthUnlmaS95?=
 =?utf-8?B?YnphVUozWUhOR2NaYXc4OHBCaG54bGVReUtOeTB2UnUxZ3JHckVnTWtTUzRO?=
 =?utf-8?B?NzFjZ0xCN2paNlpkR0tLZzRmL2NEVXc0NUZ4cXZOQ3cvREZVOHRaWHN0TVp3?=
 =?utf-8?B?eUg0eklvcmErUytSTWhnemI4Q3R5cXY2cWRKSFVYL0hScXE2UTgzRHVTZW44?=
 =?utf-8?B?Unp0cytxUFh1eVVaNlRtS3Z3VXNLdlgzUTZEZHA0S3NIYWR2MUtGZFgyN2Jy?=
 =?utf-8?B?TWJrVlRKZWR0cU1vYXBuVEd6cEsvbG5vbEI5WGlMRXVBazlBa2t2dG9OQitT?=
 =?utf-8?B?aS8yaVliaktOVEZGY1VWSHhmOFpncEc2V21vWlkyS29mcmpVNnBRNGpGZDlU?=
 =?utf-8?B?TTVQZ2I4WVhhdlBTNEViK2dzc0FjSnhTbFc4TmpFby9sQWtMak9PTFJsNXM5?=
 =?utf-8?B?RCtiWFJUTS9NSWU1L2ROdmJhbTJqcFNpYUZkSWpQUmsrY1VwVy9jcWFTcnQr?=
 =?utf-8?B?SXlkNjdpZi9vUUdTaDB6NXRTcXBzSjhSVDh0TFdqN0Z5NEFTU0lVUitNb0tY?=
 =?utf-8?B?bVRCUGJBanh3UlIvaHZldTJFb25CQUlVeXM4NG1TMkRhUlB6ZHVlVGlJYXBt?=
 =?utf-8?B?V0lmdFpvQ0EzandzenZrMUFTbUtUWE9HaXhBbTR0QUx5dEErVllQTkZOeWZ5?=
 =?utf-8?B?UGJaNGM0MFdNejM4RVhYUkt2THU1WGJ6WG5sZmZzQVJHWU0zQVEzNVdIYjFl?=
 =?utf-8?B?cHpMYnNNaGtQOGMxOUxZeG54M05QV3lBbEdldWNFT2JVbjJ4U1FLOE8xT1py?=
 =?utf-8?B?dUNrYjVRODdvQWw1ZlN4QXQxY2VpY1dLRkxkNFNBMnhXQVpxVjlnM3V3Z1k0?=
 =?utf-8?B?R1NTWW82YktLaDRDeWkrVlR5TzZLRkdDaGlldXFtRFVCbUd1UzJnSE1RdnB3?=
 =?utf-8?Q?H3lXtIEbpYjdV7LTc8C2iNei4BZ8EVs4cFqNIgO3cFXO/?=
X-MS-Exchange-AntiSpam-MessageData-1: DrtQYg03MLOayQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d9e2e6-3e49-460c-e5f0-08de53892edf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:59.6710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q5+Ff6lfbQzMYayMQ4F4sK4mdMuif6ujO8h9cU2p/j2zqIpH9+t8QuDXK1+fPjqqBA4feGoZuaUX7WeDIzUC6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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

Add tracking for the DP DSC pipes-per-line and slices-per-stream value
in the slice config state and compute the current slices-per-line
(slice_count) value using this slice config. The slices-per-line value
used atm will be removed by a follow-up change after converting all the
places using it to use the slice config instead.

For now the slices-per-stream value is calculated based on the
slices-per-line value (slice_count) calculated by the
drm_dp_dsc_sink_max_slice_count() / intel_dp_dsc_get_slice_count()
functions. In a follow-up change these functions will be converted to
calculate the slices-per-stream value directly, along with the detailed
slice configuration.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++++++---------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 396c25d15af5d..3b62d16403f27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2357,6 +2357,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
+	int slices_per_line;
 	int ret;
 
 	/*
@@ -2384,30 +2385,26 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 	/* Calculate Slice count */
 	if (intel_dp_is_edp(intel_dp)) {
-		pipe_config->dsc.slice_count =
+		slices_per_line =
 			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 							true);
-		if (!pipe_config->dsc.slice_count) {
+		if (!slices_per_line) {
 			drm_dbg_kms(display->drm,
 				    "Unsupported Slice Count %d\n",
-				    pipe_config->dsc.slice_count);
+				    slices_per_line);
 			return -EINVAL;
 		}
 	} else {
-		u8 dsc_dp_slice_count;
-
-		dsc_dp_slice_count =
+		slices_per_line =
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
 						     num_joined_pipes);
-		if (!dsc_dp_slice_count) {
+		if (!slices_per_line) {
 			drm_dbg_kms(display->drm,
 				    "Compressed Slice Count not supported\n");
 			return -EINVAL;
 		}
-
-		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
@@ -2416,14 +2413,27 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * In case of Ultrajoiner along with 12 slices we need to use 3
 	 * VDSC instances.
 	 */
+	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
+
 	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
-	    pipe_config->dsc.slice_count == 12)
+	    slices_per_line == 12)
 		pipe_config->dsc.slice_config.streams_per_pipe = 3;
-	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
+	else if (pipe_config->joiner_pipes || slices_per_line > 1)
 		pipe_config->dsc.slice_config.streams_per_pipe = 2;
 	else
 		pipe_config->dsc.slice_config.streams_per_pipe = 1;
 
+	pipe_config->dsc.slice_config.slices_per_stream =
+		slices_per_line /
+		pipe_config->dsc.slice_config.pipes_per_line /
+		pipe_config->dsc.slice_config.streams_per_pipe;
+
+	pipe_config->dsc.slice_count =
+		intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
+
+	drm_WARN_ON(display->drm,
+		    pipe_config->dsc.slice_count != slices_per_line);
+
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

