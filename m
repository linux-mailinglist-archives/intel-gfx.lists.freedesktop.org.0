Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEE5A19262
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 14:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E80E10E0EE;
	Wed, 22 Jan 2025 13:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KCjNpwLU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2016010E0EE;
 Wed, 22 Jan 2025 13:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737552460; x=1769088460;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=llIr2mpGSZXDQymvApTNqj0+iaTgnqudQrIlMdOZo/o=;
 b=KCjNpwLUSQVBNJUGR03dcodsYpiZu/EdTpB1lSYO9vpTPlUYb+lkyW10
 RgVLij8gexUSRgQiaB1k7ZLIQWpvRuz84sNjRw8I0Hi5JHtuJ1Gm7Tkgc
 NBKyE83pQgxzbqkZsqvc7rRNJFPYcCBadEl/JgX9GULamWMhBRt+iIefG
 Y/4wl3iVkYFTxWbXqIpe5VOwjywRws/bFBy6BraySG0ed21XnV9CgriTS
 jcZiQcJmy/DL+zCdDjqi9rTILy/U5XsnPgkfGq6LVdcTAnUeUfPfgWoIt
 azzQv9LLEk0lUmKkzfoj9ohzIk2d0sMb7HT88QkH1RagerdRJiKuci6xk w==;
X-CSE-ConnectionGUID: mEHlU21KTzuS35pOHtWPAw==
X-CSE-MsgGUID: qtUN03pkStCF2/sPoW0wiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38257610"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="38257610"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 05:27:39 -0800
X-CSE-ConnectionGUID: fsZmF81ZSYm/QHm8TUhh0Q==
X-CSE-MsgGUID: 62zigUBJS9mTcovAm9LbHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107014029"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 05:27:41 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 05:27:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 05:27:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 05:27:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gk8YInGTuOKMopOAT1Aapn9i8FpeoL4F3zA9RcJdmwYN70sSwLwxwTyfy1VgO/B7WqcB0+xh8BTL4ul1c42LYURYo31opmdsViw7pptOEs2OwWte1peGoLMKplJ22hEYV2oNNII3ukpPvD9F1suHneKnY1x2bu5MGwGBEe8oFOZtwevljYzbx19jzTg+omh9Qp9ecbrkz3BJ1XACCUzaYj/zCijIU1fwLPkwdYqVjE731trDJ3voEHbDqt+kXSl9EnCVSdrpkqXbaqkhURVT4/ojFpf+1QjIdKeTPfTZkhf3E4B4RdIRwXLKSuCSquBbHSyhvGouL4+aTHLvhTiIiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/T4epCah78iqxFajindupU7/CLE+sraybELcLb4smE=;
 b=j0+hhT0ovUymlhOdXIr11s78ZIFgKuxfUIsOqLkZiCmDvfUMed1j0ZhNcEBk7Cl47SkM/TD5MdaQkqTPESvMG4cASFcuEMF9FJS04AJQQKg4Tqvb5+C8Szt4/uJ2iodMw1dQkU1TAyM4tpuacJbBWlb+GPZPwtOoqksnBQqqvs3TgrJfLPN9a9nCIbg7Ftrqo0scFDBv5MmVSwrnM+vZ4rTBksviIZihHVK9ZF7m3MwGr+xb5Gu4hR5IvSI7LUXteN2tg5hWoTUR+M7FeuaG97xcziFhIsdfZIjLKPDqZvySvek/3Zp5id2ER7YszJ+stzICQzE5oDi4SGYmWYA/Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Wed, 22 Jan
 2025 13:27:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Wed, 22 Jan 2025
 13:27:35 +0000
Message-ID: <1123cd4a-eca5-47d9-a528-c0d1acedb65c@intel.com>
Date: Wed, 22 Jan 2025 18:57:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/23] Use VRR timing generator for fixed refresh rate
 modes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <Z1xvavnFCeaiYwJL@intel.com> <711973f2-03d2-4493-92bb-1da9dbc0e082@intel.com>
 <Z5Dtxu4Gu0eBHNu-@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5Dtxu4Gu0eBHNu-@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0204.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: 40cde983-a078-4a54-5457-08dd3ae88861
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MUJIRldncm1EZE9rVXJ3eWJGdHQ0R2o0cjBReVI4WnJkekg4TlBGQklTWXdy?=
 =?utf-8?B?eEdRallBazZKU1dXRTd2SkUwWEdCNDJhM2U0VmZPN0JLdzdHeHA5ODZmeDdF?=
 =?utf-8?B?VTZDTmNsTWhpNFFOMVo1Um9aUjU0TkNPRGQ3SzNCaFV6clpGdVd3WHZQeFZU?=
 =?utf-8?B?SFpUQ2l0eVBsU1BBbnJZcnFvVTZQSEJUWjdrTWx0WWVwQjJIQmZnVE16by9X?=
 =?utf-8?B?RjRVUGxWOUhTcmpsWGNHSUI3YzNTb3N2U01sa0Z3NG5yWkJ1YzVaWHBrQVEx?=
 =?utf-8?B?ZkVTeUpDQVVyWExoMFZkRXZqRlRKeFFpT3BqUXNlUHRhSHFHTnYvOS9DOXQ2?=
 =?utf-8?B?VEIwTUM1eFpqS0RNOTN3ejVscGhPaHFrWlduU3lUcjhiTDVEVVZTaGFqNFk0?=
 =?utf-8?B?anR5SkpNdE5YSGdlelFuUXNhTTV1TTUwNmN5ejBRV25DeFVFSnVaaFlJenli?=
 =?utf-8?B?SVRqbXdzMW4wS0xnbStTSVJzSXVqSHNwc3F6TXZuU1VMU0hJSngrekQxVHI0?=
 =?utf-8?B?MlNBeTN0UVF1ejFYSklKVTFXR3pJZ1FaM2lyelk5ZUh2a2FUeDdSc3VKRmVk?=
 =?utf-8?B?Y2hqSWpQbUhCb3pZMWZwUkRjaTFTWmxkYkxGQVJwWVVNZUtRVmtsck0weU5V?=
 =?utf-8?B?Z0xybFVvMmRXVU9WeHlOQ0prWkVjcjc4Z1dWR1V3QzI2dytHbGJRKzVoQmJQ?=
 =?utf-8?B?MmhBdWw5ZUVVLzF5ZEFaS2NBeFhOVWMzNXpVSVBROEV5QW1IVDBBK25uRTVZ?=
 =?utf-8?B?OXJJUThXK0htM1piN1crNC9uSW5CWEpRREQ3US9tNzJSQnBiQXhINE40R3dp?=
 =?utf-8?B?T2JBeVFuY3FhSjNINDZqTGpCQWM3dzdqelFxRDlFdUVEam5QL05MMnF4MWh0?=
 =?utf-8?B?NldCaE5NS08yenp1TUNYZEx5SlJqemZmdGJGSTRNeUFpd3RoMGZDQXZvaDAx?=
 =?utf-8?B?b1JPcFpvZXYzU2xsUXNpeEFSQUphNU9SU1B3ZXd1c3Y2K3lJbTNEU2ZXek8z?=
 =?utf-8?B?eGdvMjJGK3NUY21qUWl3RlpEZG91VUtXR0s3cXZPQ2M2Zmhwb1VUMXFrKzYv?=
 =?utf-8?B?WG1RQnZUbEhzTmdJYzRXNjBDS0hlR2RoV2hhclMzL1gweURpSk5EalJjMDNs?=
 =?utf-8?B?U3ZGbmp3ZmhqYmtsY29Hd0FLalM1T3FHSXBsWFozbWpaUUxkNUlSdi9adWxQ?=
 =?utf-8?B?YkhxQy9PYW1mMlFnQWY5QU12Zlp4ZzZrSUFtdWp1VFAvQytYaTVXeHJsQ0lt?=
 =?utf-8?B?UXFJb2NiV1NuUStrOWdLRkpOeXczdGl3TEttKzg0VHRzcVpuelJDT0RaQW02?=
 =?utf-8?B?dVpXVVdMTklNckFrYnh1eis3WTlkK2NOdlE4QjJ6YVYrZDdiS1h4ekZvckpF?=
 =?utf-8?B?aWJNcGthaEYrN21Tb2cva3dJWFkwZjJZZmFlVXRDNnVSay9aRXJ6eUtEZkFj?=
 =?utf-8?B?SGFrcEt1SDdQY2daaEdkb1lCVG9uV0RheFV1UjA2Y015a0VTeG0yQTZ3Z3BP?=
 =?utf-8?B?aEZQeFVSSng3RWh3U3VNeEt3KzhPU0VwaCtYUWplQmRWaVVtUHVsVGdSVzFX?=
 =?utf-8?B?L0lQSkY2V0RPR05lS0lqVDFmOG9xa1c5clRCUmtqQTl2bHphV3VYWWUvZGpT?=
 =?utf-8?B?V0lmdCs4Vm9JUW1DN0hSOHdwdkgrbkhyc0l3OVFTWEU3K2RtY2d3QXppUzZt?=
 =?utf-8?B?VEV3WGRkN0hKYllvd0lPeXZYL1pZb3dQTG04ZU1JWHVxUEVUaG8zYWkwYWdV?=
 =?utf-8?B?VFFyYmhCRHUyUEQvSXRQNmVhT1RxOUROSmNINnhxbytvaURTMERPUXpCKzVE?=
 =?utf-8?B?MnY3MGh3NEVrc1c2TElyUENoSm9MalhheEdUQXN2VjhhdnMvN2NQRVhUZHhD?=
 =?utf-8?Q?Qasxdp1Qdgrmi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1Y5d1BDZFE3QU41Um4rVmdqRGlpNGxvdVhMSEJwNVgyaFh0MGhzY0ZXN3Rr?=
 =?utf-8?B?aFN4VWFlQ0hBeDhYY2lacWtCaGlVQmFjb2NldlBYaDJUVW9HZEQvR2RRNDZX?=
 =?utf-8?B?bHhXZkZINzdnbStIQTF6ZDhCbXFpd0JURjE0QTRkZTB4MmZQRmowVzlWZHVa?=
 =?utf-8?B?VGZ5K0NrS0E4MExYMlVWUnRJRUdyREhoa0pJNDBaZEUrdWtOSmJDWXdMQm1P?=
 =?utf-8?B?dGJGQnZKcW41UmVWOHUyQ252cE1oNWFmczhEb1hjZm16dldBaVVNT013K0or?=
 =?utf-8?B?Z3JrbXdSZExJN3pyVXIrS0ttalNCVU5JSlB5eEZBUzBSNXFQa21CaDhlN2h3?=
 =?utf-8?B?QkdRMXZhMmw4dWdVRkZmZ3l3aHJGVjVETTd4QU9pelFKL0J0V3lRZVc3MUdD?=
 =?utf-8?B?R3VHT2RER0tFS0lRM25NZjhCVnkzQUR6bmVYNkdVa1dvYzJtN2VRRzRkMXhM?=
 =?utf-8?B?Y29Kd1NlVnR0c0E0SkJReEhpMUZsMkpFb21VSEw4TUo4c1h4dUptVXgzMllw?=
 =?utf-8?B?TVhFdHIwbkhTUy81MGl6S3FTUDB5djdUWSsvYkhnbXd5cjQ1YlE1UkYxb3F6?=
 =?utf-8?B?cW1kK05VVzNLdWgwTlhHK1BwZnh4UE9XRWV1QVp6WitIS1BXbnNFOWNLM00v?=
 =?utf-8?B?cmQyRTdLdERjSk1Ga0VWM0FNc1dXd3k1UVc4OWZNM1U3eWJGS1R3RGNRNEZj?=
 =?utf-8?B?bkYzenM3d2xvTnlvNXZNT1VyVGJnZ0VUMzM0Mzg4OWdwc1AycUtSRjUzcVRv?=
 =?utf-8?B?YUpmS25iYnhMU3I2WGV1Nkt5T1pwU2ViSVQrSmFMMnJqMG1nWmR4bVpVNWoy?=
 =?utf-8?B?OFhNZDFxRFJtNUNqVnNHSUpXeGtKcUo2UDR5WUMreFNaZFpheVY4c05KRVRC?=
 =?utf-8?B?SDBFMnZ0QjRCVlZUQ0o4azNlVTJETFlqWWVBbGRJc1AwelVFTlRmOHFMcUIv?=
 =?utf-8?B?LzJHRTNiQUJ5VWpKUFdCeGR6dEJNUjFhaVo4d01wUVBvcUowOTVxUEYrQ0dh?=
 =?utf-8?B?L1h3WUpCT3Q3cStONjYzbHh0TC9DSWk5SEw4OWh4N2MrOUpNWVE3eTdQMklV?=
 =?utf-8?B?dVh5NlcyU1UvN0o4cXhHeTNYWTRhc3BPb3d1S2lPU0U2TEhCdWNsWGJoTDU2?=
 =?utf-8?B?U3JpRHhVVDBueU45WloxU0todUczV2FTZEhNSWFIZE9EU0NsM2MrK3JTcGY5?=
 =?utf-8?B?OVJJVHFTcVd4OFBja0wrTzIyZE1OL2tCZERkeERUWWhUbmpLVEcxY0hmcHhw?=
 =?utf-8?B?ZXdHdVNaRmxKUktaOWxaUjkrVkwwMHlHR2Z3TEFmNUdVeHJzTXBRZTlwVUd3?=
 =?utf-8?B?aVBzNys4dzRJODNwQ09UNytHa1UrNXNIUWtVZ2ZNWGlLMXZmRmZiN0FlbkRj?=
 =?utf-8?B?dTZ5a3drdjFjbkdqalQ2VXdEeHVmaWlLb0F5R3o4dmFURXNPdU5DcmQxUnph?=
 =?utf-8?B?M3cvYlFzVXBCbHZ0eGNQSllsWmNMdmZ2VlFlT0YxM3gyeHM3eEMxS3l3UTRa?=
 =?utf-8?B?VVJaV2MyTE9LdFd0MGxoYXBBZXNqMVRpaXRkZHFYRzVqNGl6M2JWMnlwL3Bw?=
 =?utf-8?B?b1F2clhycDNHUnlDODdsZWZIRUEyWWlQSmpjL293cFh3QVFUa0NqVUZBVkJW?=
 =?utf-8?B?d21ING1hTjRQSmZJZHRqQWw0THdtcW5nMno0YWdlRzRLM1BaWUNaaWxuclQx?=
 =?utf-8?B?M3ovNTNFREJvby9TMUo4bmVGZElwc014U3N2UmFiTlZOa25tWjdOWXd5cll6?=
 =?utf-8?B?anNkYjR2SUpZSTNPRlllUURpVXpyTDREZ0RGeUlTcE4xbzBJOTlLSVJJckFQ?=
 =?utf-8?B?STd2S2hXald2SHpFaWJsa1RlUVBpQ0xDcmJIRHpLN3dGT2VRNWJpM2xWbGV3?=
 =?utf-8?B?RTI0Yk40Wng3SklUZUdsT0s3R1J5dzNRWGhZWFIwNEJFQXJxUUhMcjZjMXVH?=
 =?utf-8?B?OE9jd2ZhbVhPRStsNVNPTnlRMjcxYnJhMTlxdDN1YUlScS9xTlo3MjBBQ3N0?=
 =?utf-8?B?SmwvSjMzN3lIVFNHTnhWS0Z0S1dJcFV4eUR5ejFmUE94a3R3ZHVFdnU5REVV?=
 =?utf-8?B?b0prMUxqd0ZxR29pWUU1dVdWR2tHRGZLeTZmaEdMRmNVd3ZEWU1vSDRLNE5E?=
 =?utf-8?B?bG9tZGIvL29kSUw3STR5QTVPdTZzNWZjbXpSaTl3YjdZN2NFTG44cm1taWVB?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cde983-a078-4a54-5457-08dd3ae88861
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 13:27:35.5361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ot+LFxIgtItHHXFWx2/umZvCYNzMnjTgEV3gXb/8rCaGPr5lXYY0+6OnPiOodbBNQRP/72rc2jh9xREMLxegeh9CBPMIpkkZgocRQsXoNqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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


On 1/22/2025 6:38 PM, Ville Syrjälä wrote:
> On Wed, Jan 22, 2025 at 04:08:07PM +0530, Nautiyal, Ankit K wrote:
>> On 12/13/2024 11:01 PM, Ville Syrjälä wrote:
>>> On Mon, Nov 11, 2024 at 02:41:58PM +0530, Ankit Nautiyal wrote:
>>>> Even though the VRR timing generator (TG) is primarily used for
>>>> variable refresh rates, it can be used for fixed refresh rates as
>>>> well. For a fixed refresh rate the Flip Line and Vmax must be equal
>>>> (TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
>>>> dependencies between the VRR timings and the legacy timing generator
>>>> registers.
>>>>
>>>> This series is an attempt to use VRR TG for fixed refresh rate.
>>>> For platforms XE2LPD+, always go with VRR timing generator for both fixed and
>>>> variable refresh rate cases.
>>> Some ideas I had while thinking about this:
>>>
>>> - perhaps the most fundemental decision we have to make is how do
>>>     we compute the vrr state in each case. My first idea was to
>>>     stick to the current way of always computing it as if vrr is enabled,
>>>     but that complicates the state checker needlessly, so I'm actually
>>>     leaning towards always computing the vrr state based on actual
>>>     uapi.vrr_enable knob. So when that knob is disabled we always compute
>>>     vmin=flipline=vmax. We're going to anyway have to repgrogram all those
>>>     registers when toggle VRR anyway.
>>>
>>> - intel_vrr_{enable,disable}() should just flip between the fixed and
>>>     variable timings in vmin/flipline/vmax. I think we should just do this
>>>     for all the platforms, regarless of whether we also toggle the VRR_CTL
>>>     enable bit there. This minimizes the differences between the two
>>>     approaches fairly well, and it should also work well with the previous
>>>     idea of computing the vrr state based on uapi.vrr_enable. I'm still
>>>     a bit uneasy wrt. repgramming the timings on the fly since none of
>>>     the registers are double buffered. So not entirely sure if we need
>>>     to spend some brain cells on coming up with some kind of safe order
>>>     of writing the registers or not.
>>>
>>> - guardbad/pipeline full probably can't be reprogrammed on the fly,
>>>     so we need to make sure it satisfies both the fixed and variable
>>>     timings. I think we should probably just always set vmin=crtc_vtotal
>>>     instead of the using the current refresh rate based approach. That
>>>     way we never need to change anything to do with the guardband.
>>>
>>> - I was initially thinking we chould jsue the PUSH_EN bit to
>>>     differentiate between variable and fixed timings, but at least tgl
>>>     and adl refuse to play ball and the display just blanks out if you
>>>     attempt to use the VRR timing generator without enabling push.
>>>     So probably we'll just need make the distinction based on
>>>     flipline==vmax.
>>>
>>> - cmrr I've not really though about. It'll still involve frobbing the
>>>     VRR_CTL and whatnot (which I think might be double buffered unlike
>>>     all the other VRR registers). So not sure how to make sure the changes
>>>     beween the modes are done safely. I think easiest to just never use
>>>     cmrr for now, and we can figure it out later.
>>>
>>> So maybe something along the lines of:
>>> 1) do the vmin==crtc_vtotal change
>>> 2) neuter cmrr
>>> 2) change the state computation and
>>>      add vmin/vmax/flipline reprogramming to vrr_{enable,disable}()
>>>      (need to make sure we can still do the fastset vrr toggle)
>> I am getting some confusion around the vrr_enable and vrr_disable
>> functions, with respect to platforms prior to MTL.
>>
>> For prior platforms TGL-ADL, where we do not want to have fixed timings,
>> what happens to them when uapi.vrr_enable is not set.
>>
>> Do we intend to use the same logic as was earlier where we compute vrr
>> timings and write them anyway without enabling VRR?
> I'm thinking we could use basically the same logic
> for all platforms. Something like this:
>
> compute_config()
> {
> 	if (can do vrr && vrr.uapi.enabled)
> 		compute vrr timings into crtc_state.vrr
> 	else
> 		compute fixed timings into crtc_state.vrr
> }
>
> vrr_enable()
> {
> 	write VMAX/VMIN/FLIPINE with vrr timings from crtc_state.vrr
>
> 	if (!always_use_vrr_tg) {
> 		enable PUSH
> 		enable VRR_CTL
> 		// probably wait for vrr live status==enabled here
> 	}
> }
>
> vrr_disable()
> {
> 	if (!always_use_vrr_tg) {
> 		disable VRR_CTL
> 		// wait for vrr live status==disabled here
> 		disable PUSH
> 	}
>
> 	write VMAX/VMIN/FLIPINE with fixed timings
> }
>
> That way the behaviour is consistent between all the
> platforms (apart from the push/vrr enable bits), the state
> checker shouldn't need any changes AFAICS, and it's trivial
> to change which platforms use the always_use_vrr_tg approach
> (should we need to do so).
>
> Or do you see any problems with that approach?

Thanks for clearing this. I think we can work with the above approach.

I am trying to work with something based on above approach, but 
currently I am seeing issues with PSR2 with VRR fixed_rr.

Switching between VRR and Fixed RR is fine though.

  Perhaps I am missing something around PSR.

Will continue the testing and will post the patches in couple of days.

Thanks again for quick response.

Regards,
Ankit

>
