Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F25CDB4BA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 05:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808FD10E327;
	Wed, 24 Dec 2025 04:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XF7V4+0S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFF610E100;
 Wed, 24 Dec 2025 04:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766550058; x=1798086058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fLmYJWNS/R9js8v7s00BOjy5zbYeWz5IDbNKvVfLRSU=;
 b=XF7V4+0SE5cWKVTLjfwVltYvQ3NMX9TQoH/DGR0CtDIJNUGU3NGji1TS
 yVGE8VGRfmZSJvMsm1BPOMCOKrL94j+/UIG7SQGO25SA+PwzHUkCa7hd5
 BDy9Q5TRVmoZbOXEYRB9ZiE276RWqfvzs8uJbUzuPrbqi+VM2iT9P+odo
 S23v2M0IuZt1adJ1Rm8X1c9MhgnqBpTaFvwuy3J6bOGHaCipzAMPPWk2h
 DWm4ElaINcbKHkBZmZFQWQBP0eFGNsbymL7uzsMxVACUHaunS8R0LNBVC
 2TfSVAnh5TFlCCHGCbh14g9sjVcg+4pt+lyYjcyfLNCFrPMzTgSaddZ/V A==;
X-CSE-ConnectionGUID: sYXACBscSOeA9n2zA0be/w==
X-CSE-MsgGUID: 7hd2x9iSR5e4Xm5EadR97A==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="72021834"
X-IronPort-AV: E=Sophos;i="6.21,172,1763452800"; d="scan'208";a="72021834"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 20:20:58 -0800
X-CSE-ConnectionGUID: V/kc+mV9Sx66LC7NPCLTIQ==
X-CSE-MsgGUID: zibPYQF3RsWo8DnIoQn0BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,172,1763452800"; d="scan'208";a="199847834"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 20:20:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 20:20:56 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 20:20:56 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.60)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 20:20:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjMBBmA/4lOY+3pet7U1g/7O9KNgwO1D94R6JlgQCP8m1yXbc7Xo2v8YaVXJCjOxhmv8iwEmt5vmLo93N13b4PyfREe14EU86TudqorjVAoBRoNNEHY2TNiCotooxoVbYMDRpDWLOHzv5PIwPtT20XXyvvdOUlMjC+jj05/XBdy5o/WaBQwG75F6ohO0nZ/fMGa2OwcSjXYz76clxU8Qzo3mTx5JjXYAQCmJFr9KeePJNAXXec5BwHImt7AQeVEJSSgeULOGgHcLLXGK7VVnWxja0ch8lvZgQI82Fywo5ul1qcfyjZ5FiloqRITnCL8UAs1YrzFLIqxbB7bCespdRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9EGf7fmF64/PoE87kIprIMZP//CDuzBRkQYGK0Gp6mE=;
 b=wMOzI9mQ4QvVmJ3Hqve5Ogk76Dw3luZLGaRj/27Lp76we8mE2lzBqp7OlcD2jnNJNPBM5CWwS1+8aLgZ5kQ7gMmVyd9Kf7eo9xRHuhWZYEgTYCE2cUToAZKd0VFjtfnu7ZZFXeSXiXLxZtDhR8MW9M/ITnqYO7g/Rx4ib92UZP46bYtSA+OKJ468ZdBkttGNu3tXir8t3DYNOVQnPQvdTAAbZIGGzb813EtfkWfWAeo2jOHrFXsqQnHNEJCUyg51QNO59x0exVXxeJSfgg756Makw1umuPBBwGZWI4rqmwVbaxnIvHWOA1Et/KUw4w5cJszECJZYExP4+gt62r+bdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Wed, 24 Dec
 2025 04:20:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Wed, 24 Dec 2025
 04:20:54 +0000
Message-ID: <f979d008-58c8-4e3a-8ac1-7f23093178bf@intel.com>
Date: Wed, 24 Dec 2025 09:50:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 08/18] drm/i915/vrr: Add function to check if DC
 Balance Possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251223104542.2688548-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223104542.2688548-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SGBP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::21)
 To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6796:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d9c3a4a-72ef-4a7c-ec4e-08de42a3d459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0RWdUQ4c1RsMFlESGZXZkZ1VzZNZEZITVhScTRwRjlhKzZrSHRReHBwQlNX?=
 =?utf-8?B?Z29SUE55ODBUOWZCbFEwSUZLNDdzSndvS1hVSWZyMm5NQloxVnZISENyK1B0?=
 =?utf-8?B?WkNVaTBqTzR4WGtNT3liVTE1SnFrZU1SNlF4WkE0NUw2aC9XbVgyTEFhZFh5?=
 =?utf-8?B?Ky9waTJWMHJsUUVOV014bHhTemlZZldrU3cxaFprS2FweE5OMEdHOGp5ZFdC?=
 =?utf-8?B?VFVaZlB4L2c2NmF5ZHFhaGZDOXVXODNHcDZaM2dmMnJxUXhoS0tnSmpVc3Fy?=
 =?utf-8?B?UGdwRnBCWnE3RW1tVmJuVzFTWGhYcmpnMzMvNkN5K1pCUFBrY3hPUFRhWXhC?=
 =?utf-8?B?SklBZVd4emYxSS9kNW9EditsZU5YY1BaUzJVUzFXZU5IUEZiVDhrbjNaa01q?=
 =?utf-8?B?eFY4aE1nRk9yVkhiQ3ptVlpKZStrQVhSTU9UMVMrWEFyaFFJZnR0M2RHSXlQ?=
 =?utf-8?B?azd2dVlncjJ5NHo2cVhqckVTQnhndVlyUzQ3QkVTODkzcXA3YUpsTU40RCtG?=
 =?utf-8?B?N1E5eWZJd1hvaXJBeHQzdUw3WjdOMnhQQmdlYmV0blp4UmxzNC9yYmZLalQ2?=
 =?utf-8?B?YVB3Smo1aEwrTW1lbE9ac3pxeUJEN3B5RENPeGpXT2pYcWdUTlg0SFh4VjVN?=
 =?utf-8?B?L1ZrNkl2cUlkenEwQlcwcDBnVyszMmluSTlqMkxXcVhFSkhBcGxEYlZoZUhp?=
 =?utf-8?B?YmxuRDBKSk92NWlhTFY4aUNDTUJCMHhwcEl5b0pUUnlsWWJ5SUg2K1JXM0Ru?=
 =?utf-8?B?Nmd4VW1sMHFoRHMyajhzL1VmWFVwb3I5azZqbjVCcG9ZK1BlMmNSL3VTYnlN?=
 =?utf-8?B?MDFpeHpnNkt0dVMvUWtoVXJDc0RQYTRLK2lUNVFyMjhpM0dMa3U0MHZYWk9y?=
 =?utf-8?B?R0RMM2VUKzQ2a0NiSzV4TGpuWmxYWjZrc05mS0RmWFQxUnBHVWpMOXhPc0N3?=
 =?utf-8?B?b2JLRWVObTBUOHVGM3pBQzBKWElWakpTSGxIL1pJYmE3VlByQkdyVTlSbDh3?=
 =?utf-8?B?L1AvZXRmTllsWDhGWnlSYjQ1cUc3MWhPSFJhM2llTHR1c0U5RjFlR1cxaGJ0?=
 =?utf-8?B?MGswN3djdm5EVUNUTENwcE9Xck1FRlcyUU1PZTBqUnloNFFLK0gzOGtyZ3F2?=
 =?utf-8?B?KzZ5aStRVUFEKzRIYzVjdUNkd242b2gxTzFYR3FYZktpeEwwTEp5aktKRGJC?=
 =?utf-8?B?ZlRJVzZhVytTbHNwaXNXVERUVGp2M08rNFlHM2k2elNQN3h5L1R6S1lSZS9m?=
 =?utf-8?B?SVZxZVF0UktQeThnRlhicWwvaTdlVUhsaTJJTklvWTJ6MmFoRDNmdHZxNVUx?=
 =?utf-8?B?Z01CMlZkUC9ZOVZyUDJsbkVBUDBSZW5CbnlYMUlZdWJjQW1yeG1rSm80Nmxj?=
 =?utf-8?B?YVlIdGVtMmlXcG5Ic200Umw4SFJsY2srRk1DUlJzR0FMRzlXYmNidDZDaGhC?=
 =?utf-8?B?elNSWFJHb25jRWwxN2tWR29XdHVLb0pIQUw3VmpBL2pIWmpPYlY1am91VlhP?=
 =?utf-8?B?VlNCWjJpWXdpRytHc0E0ZWQyUmNNMnpJMUtrK1JnL0NQMnEzbGk4NnpxNE1U?=
 =?utf-8?B?cVFnZjlBRUV0WDB4S1V1bUJFTGRoZm56dkNEN3RhV0xtZXhhb3RRWVlvNWFp?=
 =?utf-8?B?ZmZlL1RKSUNiRVZTVGdlcTA2YzNtWWhpSjBDRHZlK0RZaSt6MElkOFhXQjA4?=
 =?utf-8?B?TzRvSEw5TUVoeGY0RU1Ta3FIZEVWdVZLTHVxRkhraFZJR1UyeGNxQTBpelpZ?=
 =?utf-8?B?YjNZRFV0TnRkbFpYa0JqZ3YxL3hkZVNFRDNlOWhoS015TzJBSG9JT0xCR0w0?=
 =?utf-8?B?Skp3WVBWV0tsSjU1cDNjS3VxcGx0SjFMTEFHRm93b0l2M0piUXo4K2tQSk8y?=
 =?utf-8?B?N0hqUmRsZ3k2c2lvWXBZWWVTYTRxa21FVXkycnVLTlB5N3Y0WlFTYzRtM3NI?=
 =?utf-8?Q?wLAYMAV7zP3VzxaFQDqmesQQLj85g9cF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTlvcFhJVlc2NWlNcWlXOTAwdVdOTFBVTlB4Ynp6aG8xVkxBVHU5RUxpN01a?=
 =?utf-8?B?clpFSzNQYXo1eFVLZDQyT1lXVmE4MXRjeDMxM1ltUk1iWVJLaDNjY1IydU10?=
 =?utf-8?B?YWtTWVFQa00vWHU0bTFUV0RiQnlnL0UyRjlwTFNVc0UySXdJVU9BSHhzKysx?=
 =?utf-8?B?cDQvSDFkWWo0QVF1N0dhd0l5aTFteDVoU2xUeGZpdFoxemRoVnR0SlJ6RFlN?=
 =?utf-8?B?NFFyVUptd2orNmZib3ZXRTlYSVN6ODNrL0ZseGhmQWVtRk96Y2ZxUUN4RXNx?=
 =?utf-8?B?bFpMUkx5bUl2VG5EK2NVOFZIOW5rbjJMQUdtQzVwTFV4ZXpiTFRDL3MxWWsr?=
 =?utf-8?B?NWpXMWZFY2RNOTJrRUFMcmpTYVFOVUxhWW1NRVpPclo2YjJWN0piT29RemN0?=
 =?utf-8?B?YmZIQUFUUDdoNnhwMThJQXMvRVlkZ01GcVQvamRpM2M5cUR0NFBKZ3ZBcHh4?=
 =?utf-8?B?OUF2NERjVVo5SmVFaktsMVpCS215K3V2bXhna2FuTFZEMjluanZLc2FlaHg2?=
 =?utf-8?B?QWRJRVpiaXdEMVErSTNzL2NaalphL2NPNUdHdkZjRzdIUHRKa2pla2NZTSts?=
 =?utf-8?B?eExsRzh1aFh5amExaTFiUDh3YUJlY2twcHdiZDhBcENYZi9xcEZFUjh4eGZU?=
 =?utf-8?B?RnhGVHY4SjZLUmhpbFBhRm5DRDdXa1JrSlBHWDJ2RFdJT21RR2VJUmFUWXFJ?=
 =?utf-8?B?VUpidFRwTmhjSVJQZXVVMjVtVkg3akoyRVpmOWJkbS9BTFkvRG91RC9URmNv?=
 =?utf-8?B?U1crRDJ3dVRTeEQ2QmppNDA4RGJ0eXVCdGJ1aHBpdHpqZktnSnN2OVIxSUE2?=
 =?utf-8?B?bHhUSUxtUkVBNDd2VXVlVW5KK1BYUDVMS2dCTVdtdDV1dFZBZ0lBS0ZrS0Ux?=
 =?utf-8?B?QWZZRlhSMTZxdUZ6azlSSmsyR3JKZGRBZFZtdXlGZjdLWk44WHZzaERoUEMx?=
 =?utf-8?B?VjlockRNYjlRMFZxSDd5T2xOYWMzMi9qY0pGaktKcjU2a2YwWkhIRHhSRUc2?=
 =?utf-8?B?U0hDQ1pKVXVBb1RrTDlMdW83cGgxb1pVVGNUK2l6TVpPenFYWUZDNkpMR1dp?=
 =?utf-8?B?bmVTU1d2dnpsR0plWnk0Y1BOVGtGTFhaN2U2K2xhamlJYTUyL0RoandUbk9v?=
 =?utf-8?B?U2ppZlZqQThBTGU4U0lGZG1PckJqbkRGNS9scHBmVUczVlVoVS92U0VhTmR4?=
 =?utf-8?B?b05iemZ6Y0Z0SGp1eWFkNHlNZklyWlhROHRTUjVMNVNIZEJRU0sycHZTM0lv?=
 =?utf-8?B?c0dFL1hab0JLUnBHdXA0S1lMKzllY0R1MzBaUlM3Z1ZvajJWWnFNS2xiRWpI?=
 =?utf-8?B?NlRUczlLZk5hamhGWlhXNXFPV3lMVVVXcWdvN2ROeTErby85L2hIRmZPSFZn?=
 =?utf-8?B?Rk42Z3lzekZXdDBIM2NYZUF1c0F6emduRkVieEtsNVR2SlFBVk5aMEM0YVls?=
 =?utf-8?B?a1RJYkNEOG1RYytQbkZ1OGtWTFNBS3dBaDRUbU1oOElESjVGem9JVS80U2Ru?=
 =?utf-8?B?UWhsYlNETFo3Y3lzVmtPVUs2ZVpFdmZFTjNLdVNLekY3MDhNRy9IaTNuMWNz?=
 =?utf-8?B?OWtKNElXLy84TzM3eFdYcjVERjlkVkJEUXlQcTJzR3BtNTlZem5kcndmd2JO?=
 =?utf-8?B?RDNBaE9RRk1sRnROemQ2WnN3QVhEUXZMcGxBenV4UXVtN1VQVDRTWFhSellB?=
 =?utf-8?B?cVdUalIrYUZETmNiWVdvdjZ6aEJGcStXVUUrWGxUOGpoa2tIZUE3d043Vlht?=
 =?utf-8?B?bXEzWXZLUld3KzFyak5sZXVqR2dkNzNqSEU4RktXU0lidEZhS0l3VkZXdlo4?=
 =?utf-8?B?WlBPSVFwaCtRcnNzalI4eWQ5TXQya2hGTTVPaFBZNUU3c3UyMVBIZWI3M05E?=
 =?utf-8?B?N1dpbFRYL3NjN1E0aWtJMEpobnFzNGl1anIrYTdvY1lqN2JITkJQaE9Dazd3?=
 =?utf-8?B?bmVsNitFVkVvOHM3aGt2b3NQTFhtU3RvNE9ZV3R3U01DeFFkRGhWb0NucCty?=
 =?utf-8?B?V1k4aHhueTkxTmFINlRKclVjS05wWTg0UndMUGs5SzM1L3pRbkJCazQxdGZG?=
 =?utf-8?B?VE9HeWVZY2x4Qm8wc1psd05tczFucVAyRk55bDRGM3FGRmdmUjlHK2piS1Vj?=
 =?utf-8?B?N2srYWh6NFR5OXVtdzlSMEVMUnhIWDk0azAvNU9CczhRQ2t6NHZaczhwakNK?=
 =?utf-8?B?QkZiYXFJTkFqT0pJU1dLclY5M1hMdFFrTUwvbitLZEo2b1BIbUt6K296ZVNy?=
 =?utf-8?B?cHJQVVdldkpMM2JRVUdCam9qVnN0VEZUbjZnNkttalhuM3JPTG5JUTB0a3NW?=
 =?utf-8?B?UFdaRVY0dW9ZOWQxNVk1T1o3ejAxZkZSNE0rQXl2VFdmYm9JZWZOUG92MFps?=
 =?utf-8?Q?L3BhrUYSaqGCPTyk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d9c3a4a-72ef-4a7c-ec4e-08de42a3d459
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2025 04:20:54.6072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EQFWcFIX9EsWM3qUrOfGUKcNQyaR7dOOpSHOUoOC0DS0P3NmORMBRZ3VsM/DdMZBM26SC8CQkqr1NYJ1FVkY+vbCPCudKCeImsmBdaLv6mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
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


On 12/23/2025 4:15 PM, Mitul Golani wrote:
> Add function to check if DC Balance possibile on
> requested PIPE and also validate along with DISPLAY_VER
> check.

s/possibile/possible

Perhaps it can be rephrased as:

Add a function that checks if DC Balance enabling is possible on the
requested PIPE. Apart from the DISPLAY_VER check, account for current
firmware limitations, which only allow DC Balance on PIPE A and PIPE B.

With the above changes:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 952e3c31bacc..dbfe56e8973d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -351,13 +351,28 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
>   	return vmax;
>   }
>   
> +static bool intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	/*
> +	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
> +	 * and PIPE B. Account those limitation while computing DC
> +	 * Balance parameters.
> +	 */
> +	return (HAS_VRR_DC_BALANCE(display) &&
> +		((pipe == PIPE_A) || (pipe == PIPE_B)));
> +}
> +
>   static void
>   intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
>   {
>   	int guardband_usec, adjustment_usec;
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   
> -	if (!HAS_VRR_DC_BALANCE(display) || !crtc_state->vrr.enable)
> +	if (!intel_vrr_dc_balance_possible(crtc_state) || !crtc_state->vrr.enable)
>   		return;
>   
>   	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> @@ -839,7 +854,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
>   
> -	if (!HAS_VRR_DC_BALANCE(display))
> +	if (!intel_vrr_dc_balance_possible(crtc_state))
>   		return;
>   
>   	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
