Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBB2LNNKeGkKpQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:19:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9E2900BF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13FA10E27C;
	Tue, 27 Jan 2026 05:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRcjbp59";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154A810E06F;
 Tue, 27 Jan 2026 05:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769491151; x=1801027151;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+osrLNUZmkpE67kYttsOrgh9r/+cdabYm6FQjdr7zuM=;
 b=QRcjbp59sXUXwe9SHh7jvA6Coy33aZ8Idlk7SGX0sI03RmS1fsRaybtB
 RTKRqDhvwoA0pbPUtVhzBxnMQcyOgGp7s/ZvDSePDkLjeR3mxf1Jf/iR2
 GmBFRpuiW9vOTdlFe4ize3cQQJSYirYNXntQIi+VbIHB/UrRT8fXfxRg/
 WYL/nHiVdVws2zm9BQSMIhaC9MIJWYGWd4sCcHFud9xCAAgzmuQhamBr8
 1NzsmY+FxLPSuR7Xy4Qfjmt0YbtgjbZKzskbMF7qIfqj+CBcHGahmQ2iH
 jZw0iVC2P8Z7wLe3t7Sg5s1ph1Lt7qFNGeYQ1sqD/SgoORG/Z0+Rt9++m Q==;
X-CSE-ConnectionGUID: WqQ5AAAtQrGQKU0cn5TePg==
X-CSE-MsgGUID: eE2Hx9Q7R9WnLHFOMauWDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82107024"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="82107024"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:19:10 -0800
X-CSE-ConnectionGUID: y8byT27XRKeZ49gpA1i1Ww==
X-CSE-MsgGUID: 0zvJ3mgqQ5Caw8n6O32giw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:19:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:19:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 21:19:09 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:19:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vj4imlzAo2d5zt/hd3Py2Md2/ps6KNijhVWxKK5KBhRi/veJEil7two74PXd9YW/DORrTel7uQ5yyrWDFzYYz7m0i1UsXnTIjYT7xNVBPLF+w4x3yRUe/Npt5XCplXSNgh8WramlB83tWNypvooNt2E0ITxsnCRNuBHA1bvibJLCXg5TTk1Qu4IT9afpjkKawQIgQBa06txM1qvnirHqu3CzJBGIMn3z7i+GbRjH14lmEe8hKEmbGxvPmwZjc3dkqZ4tWYSv2pv3lkKvfzr/DqqYDUHZk4LD9R4AZ4cAResX7tzoGhHNsCvYRF4z7DrYJOhgtuUxwWJfW6mGGclQRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cF3xhO3a/DFN5CL6NpY11XZWnxMSIAWFw1MGVay7wJg=;
 b=gPl4HTfDQ29aZAN5tlDQKEDdBdEx7p2yDHJ+750xpTGZQ11ZT3qIjL14kxagCy7zn2ofi+9c7GAkgtI91jZD6HHwN7IYvKEIO6AtoWNN3tVvO4pLOyzz0CF/EXjjbMEqRjQpLL/62n4J4hATWkTXlZFkKzQaJ5YIhTLNOIcxFcMfn07OVc64Apm3/cIxww8nc71A9Gdd/yqSyQsH88ciTVUtj/9/E1jtkFOhB5n5SfgUDI/n2OqX6pjJ8KJxr/2t+b5O+OhUyuIJwDyk3saRUgEiThIAy+pmbnDF8TVAaICPF9caK2HNeCPfUyPNXf27MuIYRMWsVajFXBcx7DZdOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8801.namprd11.prod.outlook.com (2603:10b6:208:599::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 05:19:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 05:19:00 +0000
Message-ID: <d4988550-e0cf-490d-873d-ce55878b240a@intel.com>
Date: Tue, 27 Jan 2026 10:48:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 04/10] drm/i915/vrr: Prepare to Use TRANS_PUSH
 mechanism for PSR frame change
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0125.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8801:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a35b757-9e52-4c5b-5ac4-08de5d6393b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWN6SGhsWWFkRHJja3hOK1BOKzBHQ0FGd3JQaUlybFFLRXQxYUhQWnhHK1hr?=
 =?utf-8?B?cDQvNTVuQWd2dUR0eFpZSDhoQVRDamdYT2JtK0ZVd2NXRDJBUHh4L1BFQVpX?=
 =?utf-8?B?dUt1SkRnRWVDY2krNGs2VDVYamNBbkw4VkVaRkhjSHc3by9qRHZoblliVjdD?=
 =?utf-8?B?MDhDY2UxUzc4bHZuYW55eFJUckh6OWh5Q1hZSXo0UThYalR2YkxZbG5lOHVT?=
 =?utf-8?B?dkdWQXNCUElJcmF2RnlEVmNFMk5VTDBxV1JITTlrK05KZU5hZFhHeGRZZ3o4?=
 =?utf-8?B?a1RONGVpUDFoVW05N3lZaklERmVLWHVPeGpjQTJwZFFhY1Q0QWZpL1RPaFR2?=
 =?utf-8?B?V3FSM3ZQSEg1bkFrRXh2QzFDdGtnV3ZudXlXSm9KY1ExWmhvRXIrK2h4Y21q?=
 =?utf-8?B?U1krNHJnaFJ6TlNSSWhYdXBnUjFMYzRHNm80UUZWbzcwMTNVcWVKSHVINlhJ?=
 =?utf-8?B?U3BTS0V1eHZYU2Qvd1c1bHFRSTdmckNFNTNENnpvc1RTZjF5L0xPYjNraS9v?=
 =?utf-8?B?ZmFZVThKRWFkOU1SL1NVbmZMYldHc3hkc210ZTBsMm1JT3ZZTVRmRGk1NGNI?=
 =?utf-8?B?NG5WSWRza3FucHdFeEVXNXhnbXRyN0x2SWVXcWhLbzRZMndXVXVkUEJGdEhK?=
 =?utf-8?B?V3lXcmdWeitYeWZQRDJBTUowbDZYZEtOSGgrTWpYNENVak1WR3MxYVRma2Zp?=
 =?utf-8?B?NmhtNTdOUWtqYThtYy9sRDcvN3k3bUVxcXZJc3ErcStKUTBGUkh6c0RKRVQ5?=
 =?utf-8?B?WEZxU1Zub1pib3YwR1YrTFNqVmdLVW90UTJKSCtjRHVKeTR0elRpdUtTajZm?=
 =?utf-8?B?SitWUzcrLy9aTFZJMjJYSUMwTWZMeldDWXdEbWJPOGorOExYRFc1WWNDNE12?=
 =?utf-8?B?QUtoVGhScm1qS1dxVWNmR2lkU3NrVnoxNEVoQ1RsaU5aeEl4czRqbCtXNWwv?=
 =?utf-8?B?dFZBc0IraXFqZGo4eCtZbjBaNXRoN08zS25rMEl4RHp0eDhSdGdMdUZHYmEy?=
 =?utf-8?B?Y25NL29VcjZ2TEpKQlM5MGx5S2hoWXJjQ1crY0wzL0Q4azNhbjIwclNzbUkx?=
 =?utf-8?B?SjlUbkVadHpMR3hoOC81MHRxaXRyOEJTNWdKR01aMytkaUxCS3dHWVYrSWl1?=
 =?utf-8?B?QmhrWTlQU09EVVdVM040SXBkS3dFeThFendTclRSc1ZkNlJNVy9iaXNrL3dM?=
 =?utf-8?B?dzBZZDNYTGwraGlOM2NmQnlNTzBCYlgrQkxpK1ZJbjdBbFFnVW1UTzZtTTFF?=
 =?utf-8?B?d2lGUG1HVGlRNGJiVzhlWDdraWJnWGN2MlQvcmd2Z0g4WWRxeTNLMFlQQzQ0?=
 =?utf-8?B?eVI1YncxMUkrcXB5QlYvMGxGN3BNZk9QQ2QxdTc0blAxZzlvb204d1J0Yy9O?=
 =?utf-8?B?YXNFQVcxMjFpTWVLK1B3SFJTTlFQR3lPMWFrdTFBb1N1d1AzcXZ6Y200WlZG?=
 =?utf-8?B?U3FoUWtUWEpvcDIwQkhKUFNSOVlMMVUwYU5TditzaUcyYzJpTkVCTVBYTmd6?=
 =?utf-8?B?VjlGU2RmdXljYm5pelNyWE1SMlQ0VHo1VkxqQ2k3b2dnQlFLSzJCQ1VYL2Ev?=
 =?utf-8?B?LzF4OThtUVd2cG9xUUZWcXcrdnl5UDQ4SjNXbjlJaFZnNlZScUlXL2pkcEMx?=
 =?utf-8?B?Yll5L1hvNlJyNUV3cjRYRU91QXZwZ25QcWJYWVZKOXpGL0ovaEU0SGZReFZ6?=
 =?utf-8?B?N1FqSWk5N1RiSnF3SUtEWWtINVVXMFRWOGRzSnl6RG5mV1BObEpvOXJqY0xY?=
 =?utf-8?B?VXNkeENmNVg1cVRKZjRQVXc2QTRGR1lPSEpiUHRBRnlLUXZBaUZDeVlVbG0w?=
 =?utf-8?B?aEhBQWtjb1BXb3ZOc3FWeHJXSTVnODF5aTRxOHBFbStVTjJnUUZnUGFpUG5N?=
 =?utf-8?B?anA0bmhEODlaSXpRSmxIUUpKZitvejYvV2U1MDc0bjVQOFhKSFpFajg4N1E4?=
 =?utf-8?B?VVJwUW1XeXZmcUl1MG9zcGxsKzRmbjdtL1I4WnM5WEVkZUd5Mm9KM1RYNHVY?=
 =?utf-8?B?bTFiRjUwUW1vZkF1c2FiOWxQWHl3bERaSlo0MFRYbmJ1SFBEQVBmVzNjZ2VE?=
 =?utf-8?B?MDJHRzdIZWE2K0lYTXM0a3pHR2JzTHMrdExUazU4UmFXdkl0aFVMaGFiMzI0?=
 =?utf-8?Q?lDLE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXY1eEU3OTRYcDZJT1Z0MFRINVZCOW5OSzR2b210T2luMm5oVmRxUEhRWkoz?=
 =?utf-8?B?RE1ub2YxWjlZTUhMenBzRUs0OGJUMEdxaHZvcGZMcDBCb1FBVmkxbWhnWUt6?=
 =?utf-8?B?eHRVWE9ReWhYZEVLTkhLOXM1MWYyMVkramo3QkpYeUdOMVNrWFoxdVdCK2RO?=
 =?utf-8?B?enh3YnFjOHpkZWtaL2NQd0lyZUwyblI4alNuTTVmc1l2WVNjZnhHZWtQM1Va?=
 =?utf-8?B?Zk1JWSsvaDgwRUJKRWJ6Zk5vVVdFV3V3YjhzeUc0UFdVOEpTUlUrNjJ2OTdT?=
 =?utf-8?B?RDYrQW45NHFXckc3U3c5eHhVcXJ5SXZSTkRzUkdya2dPSDJqaEFSSWJtcHF0?=
 =?utf-8?B?MEovZ3FtNndVSDVkZGswNURLYkdveUFQa0J2aGtXVnNwVm9XcVZnYzdHNDdn?=
 =?utf-8?B?VFJReCsrakxSWFNueXhsN1BSLy85TkN4SWt3ZVkxM2VqUU9DL05SbC91aG5x?=
 =?utf-8?B?b3VYNHRta2J1Wjh0VC94QWpRR21Cb1ByaHdFVGkybDZ0UW1XOU1KaFFCSXZt?=
 =?utf-8?B?VHpKeVR2dXAyUnFCVnFEWXRpZ3hFdUpwSVNnZ0pwenBtaDFQaDlCUW14VCtZ?=
 =?utf-8?B?b2htdms2QXRVWTUyMWJpbkp5NnVxT1RDYmJKWDZEbFBBZ0p5WElNSDdBVkRD?=
 =?utf-8?B?TzRudXYxOU1JRUQ2Vm5Pc1BGMkpyZFgvSEJUOHQyaFpxNHBLR1ozV1hKK0NK?=
 =?utf-8?B?OWhKYm5Ib3Mwa2U1Z2tndElXL05NdTYxL2dyc1F5cWcvZWtwdVNsVWJjbXQx?=
 =?utf-8?B?RjdzK0lvdUdXOFUydGlvUE1VYnJmZDRsd0tkVmRXaUNsR0paZGpLdHh4SUNy?=
 =?utf-8?B?a3ZZb0xrWG5hSzc1L29ib3IrSTB1VU13MDY5aS9Qb2t3WGV3U0o3KzRHQVdL?=
 =?utf-8?B?U2JSbEpCVHBkL1B3bFF4WEkzYzdkMThqVUhKSWZGQ1pVTzFIMEVWQ0prRHZ3?=
 =?utf-8?B?b1prQnJwU0JLa2Vsc3RtTUcwd09iUmR2Rzl6WVhlMGFJVWI3cWd5US9FZ05i?=
 =?utf-8?B?cUdCcTl1OUlnbGxlN2RSVWJXYzNrdmhjYkZjK2lhTjUxVGNqeHlzMS9DZmIr?=
 =?utf-8?B?bHgxTXB6ZnlEeDJEdTZQVE5vczhrL0FDWE9ON1dwQS9Ram5ISVNlNGJma29u?=
 =?utf-8?B?M054M2puTWE1WXFuMzBZOEdsVm5QYXRPRStnaWc2MlhhTkxmNlZCRTNOcG5v?=
 =?utf-8?B?enR6Zmp3bnNrQnMyRXJncWNrSzNZaENTdzZKK0RoVGkvQzJrU2hVN2o5MGZk?=
 =?utf-8?B?RWowejZRTUtqUExvQXZ5clRsMDN3MzNzSEJZS0JIRTdtYkRmekowUmhzTFJk?=
 =?utf-8?B?dzBYVzI3OU1PekNKMnJ6cmoxN24wWTllVkRZK2wxT1J2UiszeTdQTGJvSzdw?=
 =?utf-8?B?RDZKZmdVZzh3M09tRUJqR1pZb0t3MVpVSnZ4YUFFZmhBdUNGUHYzdlVYb3Y5?=
 =?utf-8?B?c1l6a1RNcVErVjhzSXFUM3g0d1J5Zm5aRTlyNVBBc3BiWkkwQmxMeGhWcDND?=
 =?utf-8?B?YUxWK25VSE1pRnFHa0xyR094RTY3a0I2UC9tQUhGalFZODdyeHVRaGp1cUtv?=
 =?utf-8?B?d0V5d3BoakYzZmZ1RDFkcXRIdkFJck9scEgwWkZ3NTFZdmFiWjR1akdDRC94?=
 =?utf-8?B?UnFaczQzRXFTaVh2K2FndEZHMlhxdy94RTFJUFVkVlNmUUFrS2UyZHVkdm5W?=
 =?utf-8?B?aitPMEcrVTlZdWJpWTFvQjlybStQbUtxMHQ5d2gyMS9aQmdxYmp1NVBJZ28v?=
 =?utf-8?B?NnNZNjk4TWFaNC9lZGFnc3BYMDI5OUVmK3lleXo5cVdkaHAyejNPUVlnQUo1?=
 =?utf-8?B?Ly9lYlRwKzNkajdSVmlsa21LVEpVMVNiK0pHVHY4Qkt2Y2xxT3F4Vnp5QUZ1?=
 =?utf-8?B?TGx5b0JITktlcEY0RW9tNlpsODFsYUNUWEo3UnZuSjkvVjByNVMyc0d0dUdQ?=
 =?utf-8?B?ZnBFVVY1NEQ2anp1R2F3dUtPV1Y1SWpqbjBVekp2V3l3KzdMMnpYMit4emF1?=
 =?utf-8?B?VjByTE5kTmRkUFNsQU9KV3RvMW5EUm5GUzg4TTJrTmZtdkRXQlkrNktHZjhz?=
 =?utf-8?B?T0FzOW5CcEppYW03TlM4bFVRaE04MkRqaDM4Zll4Y2ZJMVVlZnZLUkFRN1Rq?=
 =?utf-8?B?RW8yMEJDMVJwSnFoSzVZei9nVEhjN2xseUd4QTNPVzBPOUJ6U0cwdjNKcWkv?=
 =?utf-8?B?VkRINHo3TE00QTZJQXR6WHVFVEpaZHpCN1NSWldTdVNrSDRIa3NqbS91K21r?=
 =?utf-8?B?dGlLSlFXR1ozUG8zajk4OW1PWkkwV1RpdnNZTmMwVU9aRUM5d0Uwa0FFUTFH?=
 =?utf-8?B?NEgzejY2MkhUK0RFQzBiQTRSTCt6NmFib1dxZDVVRDdPNXJCcmtuWllLbE8z?=
 =?utf-8?Q?ornh4BnddcLfFUEI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a35b757-9e52-4c5b-5ac4-08de5d6393b6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 05:18:59.9391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKYGe/e1Vw34Dlp37TOuFXwod9bla5qsD1gmhgPJeZ5uOR27BGjqHRmf8tsEbiP8Vc0fs2I5x4TA41qwV7BaUrDB2iAJIrWBvm56SmmiA4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8801
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1D9E2900BF
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> On Lunarlake and onwards it is possible to generate PSR "frame change"
> event using TRANS_PUSH mechanism. Implement function to enable this and
> take PSR into account in intel_vrr_send_push.
>
> v7:
>    - HAS_PSR_FRAME_CHANGE macro moved to separate patch and renamed as
>      HAS_PSR_TRANS_PUSH_FRAME_CHANGE
>    - use intel_psr_use_trans_push instead of HAS_PSR_FRAME_CHANGE in
>      intel_psr_trigger_frame_change
>    - moved calling intel_vrr_psr_frame_change_enable away from this patch
> v6:
>    - add HAS_PSR_FRAME_CHANGE macro
>    - use TRANS_PUSH in instead of TRAN_VRR_CTL
> v5: use intel_psr_use_trans_push for intel_vrr_psr_frame_change_enable
> v4:
>    - use rmw when enabling/disabling transcoder
>    - set TRANS_PUSH_EN conditionally in intel_vrr_send_push
>    - do not call intel_vrr_send_push from intel_psr_trigger_frame_change
>    - do not enable using TRANS_PUSH mechanism for PSR "Frame Change"
> v3:
>    - use rmw when enabling/disabling
>    - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
> v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c |  4 +++-
>   drivers/gpu/drm/i915/display/intel_psr.c  |  8 +++++---
>   drivers/gpu/drm/i915/display/intel_vrr.c  | 14 ++++++++++++--
>   drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
>   4 files changed, 21 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 778ebc5095c3..ed3c6c4ce025 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -747,7 +747,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>   	 * which would cause the next frame to terminate already at vmin
>   	 * vblank start instead of vmax vblank start.
>   	 */
> -	if (!state->base.legacy_cursor_update)
> +	if (!state->base.legacy_cursor_update ||
> +	    (intel_psr_use_trans_push(new_crtc_state) &&
> +	     !new_crtc_state->vrr.enable))
>   		intel_vrr_send_push(NULL, new_crtc_state);
>   
>   	local_irq_enable();
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b0d72c04db45..9613c50623dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2516,9 +2516,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>   		intel_pre_commit_crtc_state(state, crtc);
>   	struct intel_display *display = to_intel_display(crtc);
>   
> -	if (crtc_state->has_psr)
> -		intel_de_write_dsb(display, dsb,
> -				   CURSURFLIVE(display, crtc->pipe), 0);
> +	if (!crtc_state->has_psr || intel_psr_use_trans_push(crtc_state))
> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   CURSURFLIVE(display, crtc->pipe), 0);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index f26989c74268..8a072f90049f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -698,7 +698,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
>   		return;
>   
>   	if (dsb)
> @@ -920,7 +920,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   				       VRR_STATUS_VRR_EN_LIVE, 1000))
>   		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +		     TRANS_PUSH_EN, 0);
>   }
>   
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> @@ -973,6 +974,15 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_vrr_tg_disable(old_crtc_state);
>   }
>   
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)


I think introduction to this helper can be a separate patch.

So in the current patch, we are essentially preparing PSR HW to hook to 
the new frame change enable based on intel_psr_use_trans_push().

IMO, the helper to enable this new functionality can be a separate thing.

Overall I agree with the changes.

Regards,

Ankit

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +		       trans_vrr_push(crtc_state, false));
> +}
> +
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>   {
>   	return crtc_state->vrr.flipline &&
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index bedcc8c4bff2..4f16ca4af91f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -33,6 +33,7 @@ void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
>   					struct intel_crtc *crtc);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
