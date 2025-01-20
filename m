Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC579A16F03
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 16:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6840610E431;
	Mon, 20 Jan 2025 15:09:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOhh2tLf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E092010E431;
 Mon, 20 Jan 2025 15:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737385798; x=1768921798;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RxbAbWLzeAMuDv/xH/mSckaTIKIowdRGaPCyE6jvRNM=;
 b=HOhh2tLfozJvT08DrqWnVhn5xGayTYmsceu6dbl+xEf6kmsTuUphFpdP
 N/jRFvIPR8M7DfAfeKeE/5FRfoI9nnDsOC9TTWtQHtZ4+KWxQodA3v0XC
 8Cv4uSqKxSSRXcQFsEWqLPhYcLqsQ5xEk5yQLYCu+TsCELCfeLk8jzXEJ
 7ZU3bhI3nxYtnC+1x6avwVFJl3vOZlwqeXZLswWPSp/jBiFjIzJEWnGrd
 pk1XL9RxKJKsTAJGYAVtY/jvBsjuWFkeedZNtaEMsrAlyFhni9VJ02RSc
 +/GTL4FRLIYECQli9qrw1oH5OPNdcDhtl3iHTFIcBf0O1/IsLOKbJOWsO A==;
X-CSE-ConnectionGUID: /P+5hPuGSwuDa4xsP1dPzA==
X-CSE-MsgGUID: 8Oeyv5L0RhKDKSN2Vd+3dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="60254748"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="60254748"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 07:09:58 -0800
X-CSE-ConnectionGUID: YUT76pCxR7qnsDMM0uuo0Q==
X-CSE-MsgGUID: t1dO9c4aRFax4zR35S/+nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111636324"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 07:09:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 07:09:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 07:09:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 07:09:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DmXDysqvwpkQsnB5AOMYvSbcGercdyijsCBvJh5sTtxEna+TzPo7+IMZHBLw6kSp1/Pg8v9dLIE8mWQ9zcaRcUI+NXFz1YTjd6EKzg1AsO1nIozSywD6CUQercRFyn6yHUCv6YF/uQIzfCkhw2lJbYVgFyQpmXlNf+v7Pozo0XjNVYuoW9rTxdJ+4cEN3HLyJznoo5ZcQN5qxfr70Y6dA+JktQBgI0soZhe46o9rY9Odw7MXSQ1eAjR4lW94xnLpv8Mw9r1PGN9JPs/RGbXIMnygAvrUF/XA8RyYWDtXJ+bPeTtOg5t1G6zH3eoyeOngI96dBfbBBRYPJL39X+TktA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JakQEIGwYIKc1h6eQ50JX2WjcBnHfF0D1XhUpb9Z4/Y=;
 b=akjSFT8kpP0KyvZQmwXD/iON3ZcN5nyRYNezGn9g3sYu5C6dDGrDSwVlER/aXqWi0+JU073lzGq5RdbleLkVvz2JswuAWSzpEHKeVcDS/fDDXvW3HFlPAtvqE+sd1y0BRCCZzqbJa5BRh7DrAzx2E7asnzRxz1JCjdJGjEIu1JvXAe7ux6aPf6FW2oq3UZrQLzyUYl0p3xV1VYXDKfzGjU9M/Q3w+hv4wrDjFnOZqz2sVvsVarZFdcqPB0Fo9vH5/7jV51F3xZiSprqRzZ8PdVPli6g6Sx/8FgXg352z7S42VC1bU+A4dTz4xOBvwWbcnQOa+gBv7rLSQFF3JkckPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4570.namprd11.prod.outlook.com (2603:10b6:303:5f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Mon, 20 Jan
 2025 15:09:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 15:09:55 +0000
Message-ID: <218d0b96-6785-4bd6-b551-a935cffc1fbe@intel.com>
Date: Mon, 20 Jan 2025 20:39:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250120125439.4188626-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250120125439.4188626-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4570:EE_
X-MS-Office365-Filtering-Correlation-Id: f2396764-fef0-4260-0543-08dd39647f61
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0Y1TFoweHNZS0NTSEJGTHlsNWd4cXNVNTFEMzlZK0NSamlLVmNuM2lEKzBX?=
 =?utf-8?B?emVXeVVTVzRVbW14dmloVEdhSU1kdVRKbXN2cVd0Smhvc0hUZEpueVpIZHhp?=
 =?utf-8?B?WEtTUTN1dXgxVktNKzczbThLZWwxMlJId1dYRFlrNUxaQkhXZVFqNGlnMTZ6?=
 =?utf-8?B?U3pNMEVieWsrSVZDR1k3anJ2T1M0TVBHLy82amdyNTNGSXZhMS90UklXY1NK?=
 =?utf-8?B?U3lCSVdrUWJ2N0xCd2wrM25kamZXR2g1U3ZEV2VBWS9xOHhrTitnWVBWL1lG?=
 =?utf-8?B?M0QxRVVLOTNQdXh4enJ1TmVTZExWWXU3N2NOU2ZXQUZ6bU5QclY5elZENHNo?=
 =?utf-8?B?RWJRd3BxUTNPZnpuTVQrbFNTZXlXZVlvR3FTWnlLUERWeUltRklHTURTMWl1?=
 =?utf-8?B?RDg3Vm83bjJiR2JjYUJheVAya1dkWHgrMDdHOVJmemx3ZFZxbWN6NWxqTjgy?=
 =?utf-8?B?Y2hEWHNCZVFHc2hGM1cxQ0kxWHIralRwMUZPTHhra2gzeG13NkJVaG43UFFK?=
 =?utf-8?B?cU5OMXhXWVFDRFZDRFkxQ3RmUHhneEJxL0JMdEtJZSttbnFBNTAwVlRqbGZk?=
 =?utf-8?B?by8xUlZ0TVY1bThYSnlRT2tQTnhmQnZvZ3pydUpqc0kyY1FBY2JPdVAyMlQz?=
 =?utf-8?B?SzFwOUNEZ0VaSXhvZlI2YU9GajBhWDFMREtOeVNjS3Rua2JmUGw4UGl1NTBQ?=
 =?utf-8?B?VGo4RGpVeDRjb1I0Q0o1V012VTVObUlYRkhkQWkyOFEyYnZpWWVqMnRpR1dz?=
 =?utf-8?B?Y2tiazBuWFRuSklCMXZlYi9zYnFORmdkY2pncnlzK3dVU1ZPZFU4Snh0RFRo?=
 =?utf-8?B?K2x2VVljUDNLTEV4MzNHU2I2NStOcjZwakRhVllGSVNjWEVXOFVLQ3Nxczd3?=
 =?utf-8?B?TEpYQllTSzFZS0xqN215WjZRKytrYS8zQk1MU2dGMG10aVpGaW84Ui9UVmhj?=
 =?utf-8?B?TEl0d3JBMHdpbjIyME9hNEtwWW0vbFhpYXViWW1iYkkzMGh1ZjhZK2Myb0NQ?=
 =?utf-8?B?Mjd2d2o2dHpCSEFRbjhXKy9CUEJqcTR6Y1NLeTB6MEVNc2FhUlExNnNGYlI0?=
 =?utf-8?B?VHhKbGhwM1hwaTMrTzQ0NGMzajBneUJLUE00dlZSWTdYQXRKZGF1SHFYM1Rq?=
 =?utf-8?B?c1FxY0JjUTd0dUJjYXhobkdiWmw3eStzdkp1MVdqTUxNMGlxMlZLNnJua0c0?=
 =?utf-8?B?azh5WnNwSFlDRmMweW1pT2l2dnNITDBERXVaTTdSeFFNMFo0R29kMmhpVnNo?=
 =?utf-8?B?ODA2T2tidjVKakxKU3QwWWZHZlJFZ1VmQkdwNUgyTC9meHlvZUdCOEpQVUVJ?=
 =?utf-8?B?MllLT3RyNzhOc3NpSjVjK3Azbno5UEpzYXZ3alRmSWlWWVhTNjZpRFNzVWUx?=
 =?utf-8?B?aUc2QnB3NUFOMGV3clY3M0hZWDZzZGlkN2ZMNWdpSk5MUSsvWUllUWR1OFFX?=
 =?utf-8?B?bmlidUIxbG5scGhhOFJIbE1ySGlmY2Vxc1NvMnhBK21YM2VycHRhT0djMk1W?=
 =?utf-8?B?VldNa3pMRDFDVXU3V3hPeHdFYy9rSkU2cTBhNmZBNGVHRlBHQnpsTnhFc24r?=
 =?utf-8?B?VkNlbkY0cElXeDBRMHR5OEJ0Tk5vRzV6ZVh0NUFvclU1MHJNRytXSGt0QllC?=
 =?utf-8?B?OWhJeXc3OXZSYll6Vzl6d1J6dGVwcHV6RklKVjJGLzhSOHB2TExYR1U5TzRT?=
 =?utf-8?B?dVZzejMyRkI4akFpZ08vbU5VaFcxZExFRlRYK0NzZnlNeDFkUDBrZGU2RWNZ?=
 =?utf-8?B?L0pJR0xvR0tpN0p0UkYxeDJtbUxOcXBkRk45WWw1T3UzSGdtRGJ5dUR1YStZ?=
 =?utf-8?B?bzA5cTNkcTNveW5uRUdFNjdCK0E2OG1sQ2o5TG03UmxQVGJyMlp6ZVdmSHpV?=
 =?utf-8?Q?Jm2rPNC0I464f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHhPeDJHYXlXdGNMZzh1cFR6RU16MHdvZXdrRWxsTGV3dVVwYmZWZG0wQVFu?=
 =?utf-8?B?V1k3TmhQZUZsbE9DR04zdnkrSU5Ub05iblZoMXRiY2laQmxRWWFGS1A2UWg1?=
 =?utf-8?B?WkUyenVnUEdoVjZTMVB4SHpqNkhCMVpyb3JjK0VxVG1hY09MY3N6VURxejVw?=
 =?utf-8?B?NjJSUHR6UVFqNVVDUHFYL0RZTDdOTHhXM2FFcFJHMThmZDQrRHZUZFdFdnFu?=
 =?utf-8?B?cUQ5T2I5T2JHRlhoQTl0RUZsc0tPMDJYUW9NVzJzY2Y4SXk4WUpTQ0hySjlZ?=
 =?utf-8?B?WW0zVldWdW9HR3pNMlFnaWNXcEgzNWc5aVgwNWFzZzhhbkJQSU15TTdtYXgy?=
 =?utf-8?B?M2QrYVNWL1cvWnZHMU9hTFFwUU11L0pROFI2TnpHbVVBRDExeEtJSmpuT21l?=
 =?utf-8?B?KzNoeFAzZ2NaaHhYZUMxa0Jzd0JTQ05lUEU0eWlFNHdmUm5SU1hIQ25NNG1Q?=
 =?utf-8?B?QzFXeDZLYlZnYjdvRXV4djZoMkRxY0ZKTmxTeG5GT3RXSDhnWGFiYUtETmtx?=
 =?utf-8?B?U3ViTDFGS05pMGtIZU1OSDhyWkZJeVdUS3ZwSTh2MGJRbmZXZFcwR3kvb1Fh?=
 =?utf-8?B?b2RNaGtQd1NsT3FnZkZWdnR3eW1IUHZ2bEZBV3FiNnhyM0NERG9xWE5icWdR?=
 =?utf-8?B?bHBKTWFNdUdBV0VnRlpubWVoRmV5bksvTG05NGcxTkFFUFRxNjQremFkWFRy?=
 =?utf-8?B?RnZ4UVVEZ0tncGVzVnN5R3c3cGE3bSt2TU9Xa3B0V3pZU05TTFBWNVlwOFRj?=
 =?utf-8?B?cTdOK1NlUXJLNnptRXZERU80YnNPUHFTakdOWE1aaUs1UTJjTzBWWmIvZWI5?=
 =?utf-8?B?RDU0MUFqcllYMkMycFB0RDljaytNR0Q5cU15Ty9LcEhJdXgrdkRPNzNTSFRX?=
 =?utf-8?B?ZVZoS3hueWZlRG5wYkJGeGxqdHNTK0J6bU5iaWo5ZFZhdEIrcW9yNW12cStz?=
 =?utf-8?B?aHloaDNnbE5FODU5emJOczA0c1lVc21wSGdKYmFLZkJsaTZOQ1lKa1paT3o2?=
 =?utf-8?B?bVFmV3ZRc1BycVpLTEptcG1RUlFYRGxZMDNmWlRTUk9rV0FIUWhWRnJPdFZm?=
 =?utf-8?B?TUN3a3liVXBVNmpWZUNhcTYydkJ4QjFCUFdKT3BzRG1odE1yU2Y2SmtjODlE?=
 =?utf-8?B?RXlDR3dwUzA4Mm1TWm1pUFRMV00wK3hCR1ZrVXRMeTJkOVhna1RIZVN2bVRW?=
 =?utf-8?B?emliS3F3SjJnQjBFdklYYlkvRUlwZ2w3VnVZWUszS0F5K0FSY0NUR3FBQXpC?=
 =?utf-8?B?NzRYci91bDhXODhjdHJDY2NoOUtIcU15OTR1QkVRNEdBMitnelROelpaeEFH?=
 =?utf-8?B?YmVEajFxWXlvYVFDaHlUY3poMmZpQUVjNmNMa1hXc2JPWVM1aWlXdFdQVW14?=
 =?utf-8?B?R3VTRFlwdlRlVnNUdG8wQkxFQ2pWUUZ2eFhtc01sNEovVVFZTTlLRzhCeVJZ?=
 =?utf-8?B?aFFoZDNEODZDVWNLQ241M1BDQktZUnRWMk5wd09IOFZ3L2dCaTllQXhSbFdU?=
 =?utf-8?B?WmszdDArczdHbU1TMzJDUlpPNU94M0dUNy9KaHdzcXlIaHZqZTIvZGNhYitN?=
 =?utf-8?B?dmNLSWhGa0JqdGl6UVdHMUJpMnR4OEdjcE1WalJGekRtT1RwSkM4L05RdjQ2?=
 =?utf-8?B?RHYxQUw5d1YzRG5iNi9LSDMyc1NLL2pqditEN3l0VmVOdVpGeXVUMjMxMWhE?=
 =?utf-8?B?SWJnRit3cDFEZ0VBbGkrSGNJZDFCeXJRbDJaZjNwWnR3MVg3cG5lblpLNGdU?=
 =?utf-8?B?TU5VUWZoL3MvUkpRaXMxQnowZUdkRXpxaW8rWnBYRkFxRnA2V1lpbjlmV24v?=
 =?utf-8?B?WkZiOXdud3pxTkJnZm9oNDMwSktxRTNDelRpeUdjMUhBMU02bmFWaHZybllu?=
 =?utf-8?B?cm5mcWIzWFQycm44cG9MYldsY2lwaHFrS3RFaE5FTTVEenA5V1Znd0JraUto?=
 =?utf-8?B?YmFpYkdjeDBraHZEcmJoRVMxS0JmUW5ZbG1uMlpHbFhydXYrcFc4WGpzSm1Y?=
 =?utf-8?B?eGhuWUE3UWRQV202VnJuMVFDOTh2SWxsTTdLMnZhbGZMSzhqS2lqUGszcnVG?=
 =?utf-8?B?UHFaTW9JOHhuWDdmRTlIMHZsL1krY0txdldBWWRPZnhDdzh4c09jSjZ1WGtC?=
 =?utf-8?B?YzN2ZFg3NEl2cHEzZ0kvZFFuQm5XRW8rUGFoUFYwQWk4dTV5RFFnSWQrSUhI?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2396764-fef0-4260-0543-08dd39647f61
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 15:09:55.6841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BGdkJzTDrVTBwqxL4mLLIADxJlzutcwRdhi6IYS+Ah6q0ERAlss1Shxa+rDYw4dc6DMQhnL0hs9fHCvrev+CjqN1qf/KkPa33v6eH5FRm/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4570
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


On 1/20/2025 6:24 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> dsc prefill latency.
>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace with appropriate function name.
>
> --v3:
> - Remove FIXME tag.[Ankit]
> - Replace Ycbcr444 to Ycbcr420.[Ankit]
> - Correct precision. [Ankit]
> - Use some local valiables like linetime_factor and latency to
> adjust precision.
> - Declare latency to 0 initially to avoid returning any garbage values.
> - Account for second scaler downscaling factor as well. [Ankit]
>
> --v4:
> - Improvise hscale and vscale calculation. [Ankit]
> - Use appropriate name for number of scaler users. [Ankit]
> - Update commit message and rebase.
> - Add linetime and cdclk prefill adjustment calculation. [Ankit]
>
> --v5:
> - Update bspec link in trailer. [Ankit]
> - Correct hscale, vscale datatype. [Ankit]
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> --v6:
> - Use cdclk_state->logical.cdclk instead of
> intel_crtc_compute_min_cdclk. [Ankit]
>
> --v7:
> - Fix linetime calculation. [Ankit]
> - Reduce redandancy use of variables. [Ankit]
> - Fix typos. [Ankit]
> - Update calculation for precision. [Ankit]
>
> Bspec: 70151
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 32 +++++++++++++++++++-
>   1 file changed, 31 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 448d320e0d47..89e8da70c333 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2310,6 +2310,36 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>   				   2 * cdclk_state->logical.cdclk));
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> +				    crtc_state->hw.adjusted_mode.clock);
> +	u32 dsc_prefill_latency;

Need to initialize this.


> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int chroma_downscaling_factor =
> +		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +	u64 hscale_k, vscale_k;
> +

These should be local to the loop below.

With above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
> +		return dsc_prefill_latency;
> +
> +	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
> +
> +	for (int i = 0; i < num_scaler_users; i++) {
> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> +		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
> +						       1000000);
> +	}
> +
> +	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
> +
> +	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2350,10 +2380,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
