Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B3CA0B5D8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6786E10E0CE;
	Mon, 13 Jan 2025 11:38:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dAbjDk2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3489D10E43A;
 Mon, 13 Jan 2025 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736768279; x=1768304279;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y9skKoH4GiOfRk/tn8q85OzsRgMNYb4GYeE1pZew2eE=;
 b=dAbjDk2wHmjNXrC+chaA+2BE6gxkjBiznuhXB8kK4kbsiOYWQvL9bzEL
 JkPt3WJeh8ZhhV/UaFquDp/UprWFWKfDn2jfyhjRSEKtF78DPkPiMnUHI
 DUagebVr9rGc6k0qL29yCF4NIZHOxiAdT6f/3DYv8feGB8tIGQ4dFoI9z
 If10TQWurbBgFvz6HEDMXdN2GrnkqiTAe1JfqprJiKV6Ows5k1EwqKhuJ
 4kubTh6SWOjlFPI0aMl+HhnHx2YY5OD4wKVLPX/p4sULwiAKEHsXgXM8o
 FHZ0fPNfIuMwMr8TMj3P8OJWsEdArDq3yOpHqTR5d2uP61BCJVWWrgRVO w==;
X-CSE-ConnectionGUID: tNLGVMViQ2KU/lxQARl+fg==
X-CSE-MsgGUID: 8YWueSgySY6JRw/fBLtxnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37186676"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37186676"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:37:59 -0800
X-CSE-ConnectionGUID: ebM/UPewSdmRuuagf9Dn2g==
X-CSE-MsgGUID: qeAtMzuxS7CykBhKge8njQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="109484778"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:37:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:37:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:37:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:37:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zEhHjJ9m0I5NlQbuDPr9YbpC0Sw4CItAY9Eap6/NyQD/8XBGjbZshykVVmE6dYy47mG5e1fW3vUoxt0XKeXX8uwfJYYoKjpuwI3hjuQRyQtwxG0l8peohdOLst27l24e5xgYbDuykp0tGQlTK3zxaDWrf8cQQpHvB43yXxOXzI+IeMmpk5xHbMr0pCOU5/Xg0KfT1jLNxI5mzsGhNDy96ZlJByol+wLSPQhdN+msiWnRfSQk1lfs9t+keJ22pQbYvaFKiq3tb/CgRGA586o6BraZe4ene2k0M5vUFNGaqLeReLHJfGspJXIns8oSgg55IfIFJFj37rrNxboCRILP6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yj0g8zU/pTakwFKj3mxvnzZyAjxOgA3/GRaCjkVEs2M=;
 b=uUX5/tUJ7WyrB8+TpWi+jxnPEpNjebn7ZbnIpnrkZC0WPsvvONuMd46N6c4FarmDfikuNZeFflkKgDxuHHWBF/R1mZg3R6KIk/AcOsDk0SNYSqrVRHQSkk33Lntu0atVOwroyiYpRn8ftBd3Gaiy+RysHf5U3sE/XlPQC45VbmKPhPcFljaearXE/C3wOWoat75OFXOGO7eQFKk0zBoCQ55PbSjgmIaBY7x1unExf9aiZHDZEpfeMTQXG3GF2ADrcWKr3h9wI/+EYD6A02SPHV4Vc84Wgue4pYD460lD5cLezavg1BKNOnqCSn3psOaS0NK293om2GxUP3z0t3kkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5062.namprd11.prod.outlook.com (2603:10b6:510:3e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 11:37:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:37:14 +0000
Message-ID: <b86ae2ce-8edb-46ac-91bb-4395ffb2b265@intel.com>
Date: Mon, 13 Jan 2025 17:07:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250108123541.2101643-8-mitulkumar.ajitkumar.golani@intel.com>
 <10a4a32d-1a5e-483d-9f73-3887fb5a1864@intel.com>
Content-Language: en-US
In-Reply-To: <10a4a32d-1a5e-483d-9f73-3887fb5a1864@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5062:EE_
X-MS-Office365-Filtering-Correlation-Id: 058d2ad0-46b8-4190-c2c0-08dd33c6a057
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTZzT1dtb2EvbVc1d2dZbXpLRkVlR25QTGxYcTQrdzZraWF4dHZxQ0RHYUdu?=
 =?utf-8?B?T2V6MzAzVWZWQldiWnhXME5sVVlBWlRpbGE2KzdJMVh0SElKcU55dkF6ZEpI?=
 =?utf-8?B?Ly8zT0RYRGVCbU9oYjBuVHVZWFpOQkVVTGh3Yk9oQ3FaQk92TGRTM0c5RzBh?=
 =?utf-8?B?M2YvNzV0b0wvNHBFZWs5a2s5eDUzTG1xRDlVWWltZjdPVkpCVEEraUxCYzhU?=
 =?utf-8?B?d3dydDRRdG9YdFIxZnMvWVErMkw2TmJORlZkRFlMUVNNVXA3V0twQzFDUG9Q?=
 =?utf-8?B?WWpFS0sxOEEzcXFtVktZNUN3VENDMlB6VVo1cTBES2hOeDVmNm1uNWFTQi9u?=
 =?utf-8?B?VDVNTUFlL2VueXFHK3VNd2N2dWNxK0Nyem9lY1ptRGM4dGpxU3ZFK1VjVEVj?=
 =?utf-8?B?b01tdE1OV3QwcU9sN2pDUVUwSEN0ejEwTVU4VVk3VWs4YlUrcCtHZ2dzMUo0?=
 =?utf-8?B?bHFJU0VFclBabkVNOVQxaXR6M2I4QnFBSFVhS0svVERXK0xKU1ozOE5BV3dC?=
 =?utf-8?B?SUdvc3VVaDVWUkU1a2JENEl1eXB4QnE4V05mWFI4MDNtNEVLUXhYR0NaYjBE?=
 =?utf-8?B?SjZsRGJzN3FqNXp4aWhMdndpSzUxM1ljUkhEMWc2NHVnU1haeEdYNzZaS3pD?=
 =?utf-8?B?WmRKUGVwR0t2TE85QitqTjJyLzcxaklJbDdsT1h4TE15S0JVamdEbklZek1n?=
 =?utf-8?B?RHhxeS9obXE1ZzBaTUR0SDVQVjVHRENPWGozd0t5c3h0MnFDVkJTMVM2NjFQ?=
 =?utf-8?B?Z1JaK0s2ZXloZXREMmlMUjhhdXZ5SDk2TnQ4aTBIOXYvd1BKRnVnN3BxVTNv?=
 =?utf-8?B?L2pjbG1TRHdhMU9iVWxCZUt0WVdJVEdOcHBSWDJvRm54cXV2VDIvSWVZN0RU?=
 =?utf-8?B?UHpaVmFwdzU1YXNSK1hhRVpmOXRCcnVqcHVYYmN5b1orUkF3Y3NVd0pMUFV6?=
 =?utf-8?B?TGx6aklnSE1tNVlzRFkwTGZxUjlGTTZya0oySUVDZURESTYzTGpoMUJVdUpt?=
 =?utf-8?B?US9JT1E2Z3VITGYwclBQUlNMakI2RVZYcVZNZmdoNW1QTUljVGt0TmdVTG1V?=
 =?utf-8?B?TWdRclVmVmpxT2h6eksvcHRjWnVIRkNIbjc4MlVCcEw3bGN4d05iSnhGNHZH?=
 =?utf-8?B?aU5HVjlGa2NSZ1RaZlpLUnEvL0ZXOVJOQkNKNnhuZC94ZkVWM3pzMTNlY28z?=
 =?utf-8?B?WlZmTU1hYnJhWWJRY2dkRis5WEN1cUxQR09ySEtPbXlYZmJzQTZvYStkcXZP?=
 =?utf-8?B?VHZnUzRsZVQxdnhuWHpJZkRvb21ya0pseU5MQjZZNHU0cUZ2MFpEa1ZEa2tM?=
 =?utf-8?B?Z3Z3Y3k2dUt0UzNiYzBRQ0dMbHAvbTdxYUtwTnVnaHhnMjBPWHYwaFV6ZFJl?=
 =?utf-8?B?V3BHRHByb3pyMnFQSTBDNHJGa3phOXBuMlZ6bVovNCtUaUJDRWJ0cFlqNFp0?=
 =?utf-8?B?QVdQYTkzcm1vcGVpcExXaCttaUEwdVlGTVArWnFUWGV6S3RER1k1MEJRSlIr?=
 =?utf-8?B?ZzE4RDVzYWZKN3RReTJDVzc1eFhqYUp6TWNOSU9XNnVBOUVDZGp0WSs1K3BU?=
 =?utf-8?B?VVNEcUVOQUozazFNKzFkSXNEZDhnejB6Rm1BQ1pDVGc1WnRyYlFjVS8rbm1j?=
 =?utf-8?B?eHZNeFpqdzdLSXVjTkxxV0tZNVNPZzlTK1diaDNpVTBOWEVBNjYrWnFzRW1w?=
 =?utf-8?B?Z2I1RnhoQzB2ejhrSkZNVzB1dHJrQkQwb2ZYUUdzTlZVYm9COWhuU1kwai94?=
 =?utf-8?B?U1hBK0VxWkRueGQyMXlXVXJtN1U0cTQrMkF3M20wWHcreGFrN1NqSk9yN25X?=
 =?utf-8?B?QnI3bDZYM2VRM3E1Ly9SbVBvbHdvYmswNy9xNzBNNDV4ZCtsVkVxaE92NW93?=
 =?utf-8?Q?Fl2PNWvKucf61?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0c0ZHFyaUkyNHlNcHlYemxkWVRkTG1sdTF6cStTQUF4YmpGQkhhMFd5dmFr?=
 =?utf-8?B?R0I0ejRjU0pzU3Z1WnkyTm5uZVZKYkZxUi9yNFVzMC9nTkU5Tmg4QTBoZ29Q?=
 =?utf-8?B?QzdoYUxOOWZzYnZvTEhKMFBUN2MrbklJN1JnSFg5SGk4SStrNWlQWlRoTWwy?=
 =?utf-8?B?TklGY3F6SVJybEU3M09kWlJQZ0Y3Qk1oNlN6cmdHSUpZUWVHVy94d1dCQ3cw?=
 =?utf-8?B?aVh1bTBLMnNhWWJEM2doUlI3Vm1Jc0xWbzRUZStvUEpOMyt3emR5amdxT1p3?=
 =?utf-8?B?OUhEMnJtTkFHL2YzZ0lBeEoxWmZKSG9EQmhXR3AzMFN4bGFzSjJZa1MzamJD?=
 =?utf-8?B?MFd1enBta1BUdGpWS1dGTUhjNE01aHFndm5iNnpCWkxiMU9qSGtTVEh0RDBz?=
 =?utf-8?B?d0xmZkh5Y3N4ZUhBVnVhMjd1TzNiL1RaMlJUUVc1Q1djYjhHbGgvUnZnS29K?=
 =?utf-8?B?dDNDRzByLy9iQWE1Ry91YWYxUUdOZWNJSVVVNHVkcXFmc2s2QzZiYytCRWdO?=
 =?utf-8?B?RE1rUWlPOHQvMWdFdGFOc0JuaHl0QUVoMUVMWWduR3hWSFJYZXg2RUM4d05n?=
 =?utf-8?B?d0JYUnpvRFByQ0x6TE05SGJhZ0gxT1NmZm02N3BMTHFpUUMvS0Z2ckVYN2pT?=
 =?utf-8?B?Rm5YZFhDUDV1QVVReFdDczVmRjlCTTZUWHJvWlhMZVhPeXZnQWZvQ3F2Umdu?=
 =?utf-8?B?TWpsYmJ0VFYyRkk2S0JOZ3BuQkZXd2NHL040bUNxTWFhTDQ1YjArcFEwbHJ2?=
 =?utf-8?B?TUNxV3hnRjJua0svemtHL1NuanI0WTZGRU9GM1NQMjNmdjJ0VWhqcGZMbzZQ?=
 =?utf-8?B?dndCV2p4K0RuSzRVK1NZQjZhRWQ5dWN2ZlVuUVZObElTcVVweWJnWnNPUjNV?=
 =?utf-8?B?R1dCb20vTlJmTmE5YlJIRi9nMndXak9PWG9NbU1LcVU1L1hVZG9SSHFBVVJI?=
 =?utf-8?B?a0pXRExZZVZka1FRMmNKRnhQM1RtdHN3Nm1LZWlIVzZTYlljQ0dpSVlQQ0Nv?=
 =?utf-8?B?dEJXU3A2VHpZWnNZb2VHUE1lMkRYSzJzeWZiWHh3RjJkQUU0MkJwY1QvN1FO?=
 =?utf-8?B?QTI2VXl6L1J4bTJuZVJIbnJCNzlDaU90KyszZTlFdzhjdjF0QU5PbXY3bGJ2?=
 =?utf-8?B?UnZKalVGdE1xOTMyWXYwc3FNdzEvUFAvYnk1Skx2bDEwUU1qSjlmMGJSc3o1?=
 =?utf-8?B?N0NCSlNhb1FZSWZEdDMzSzNVblJ4NC9jUjkyTXBCSmxFN0FJdytRTG95ekdy?=
 =?utf-8?B?S3lZaUdxcEx2KzZ4U0RVbTJFVnJ2dkx4ZEdaNzRCblZMV0ZiOEd1QWVWU0Zk?=
 =?utf-8?B?c251MWdvZThza1pzeWpvenNFaHdEdGxmdVliVllTaFgwL2dkZkdhR0JzQjd0?=
 =?utf-8?B?MVArSVg0VTNTM1JkNUMzSjE2ZGM0RzlCVTc4aEFCVjI2TEU1ZGRyMU14NjVj?=
 =?utf-8?B?VjVjdlg3L21xcFZEaVZEN1RlenZuT0E3ZVM5ZjJhUHM3SDRHSm1UU1VnNHFK?=
 =?utf-8?B?ME83ZjN4NnZ0NEFLL2l0UFU0LzBxOUVFZFZTMHNoZ1d1RFcrYUlCa1VGRS9m?=
 =?utf-8?B?YlRGcUtsNU9LU2VkZDlBRi9FZlRRUGpjTi9Cbm5lMUQ5UU9hdzRKekdRc0Iw?=
 =?utf-8?B?SDF2S1cyVC9wVUVxdis0djJwWGl6RFFkcU85bUVHWTZRQ01ja0xxYkYxSjB2?=
 =?utf-8?B?cTE4MjRwNGpydnZwQXZqeS93MEIwdFRFc1o2KzIzRUROeElCVStKRVVrYkZx?=
 =?utf-8?B?TjM5ZXFiZ2J3cEFveDcycmJaRFZYYnMyczZYV0pnTmVraGhkMHNYNksvWWQy?=
 =?utf-8?B?dWo2Uzc4M3hibWFhd3hSbHVBL2RWcTk4dmlwZmNycnhRaVBHaDBBSFdwQ3lx?=
 =?utf-8?B?MEE4dHVJd0RxdXlodWJDK0dDZ05MWGVtUnZRdjJEYXVidk9xODBoTGxlNlF0?=
 =?utf-8?B?dGt0dDBjdEt6SldvRzUxclV5RzM1WlRSSE5ZUWg2THJHd0JjNHltQ2hyUTN2?=
 =?utf-8?B?SmZ6V3VxOE5vdEpwTzhDY2J4UEpMTDNuWFFNTGJseEZlSlpjK2hVeCtDWUVa?=
 =?utf-8?B?aUwrUHovMVE1M1dJM2ZIRlI4dFpKT3pWbStab1NjOTRxOGpZV1ZqdDdybm9V?=
 =?utf-8?B?ejF0bG1FQTk5aE1hdHlZdWRobE1PakVRdTRPb25UMFBxdFV0dlFtY2hqeTBS?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 058d2ad0-46b8-4190-c2c0-08dd33c6a057
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 11:37:14.6407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZkXHO2mUBGzicjyUwCFtq7fd9+y8QN+brL9iXNZT0/En6YJxGCk67wMGPDjt6F8lA9gvomU7hCjX04saCzGvFEEscowP4i7dlTZ3daVjYlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5062
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


On 1/13/2025 4:43 PM, Nautiyal, Ankit K wrote:
>
> On 1/8/2025 6:05 PM, Mitul Golani wrote:
>> Check if vblank is sufficient for dsc prefill latency.
>>
>> --v2:
>> - Consider chroma downscaling factor in latency calculation. [Ankit]
>> - Replace with appropriate function name.
>>
>> --v3:
>> - Remove FIXME tag.[Ankit]
>> - Replace Ycbcr444 to Ycbcr420.[Anit]
>> - Correct precision. [Ankit]
>> - Use some local valiables like linetime_factor and latency to
>> adjust precision.
>> - Declare latency to 0 initially to avoid returning any garbage values.
>> - Account for second scaler downscaling factor as well. [Ankit]
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 37 ++++++++++++++++++++
>>   1 file changed, 37 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c 
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index fe91854e456c..d275ec687748 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2292,6 +2292,42 @@ static int icl_build_plane_wm(struct 
>> intel_crtc_state *crtc_state,
>>       return 0;
>>   }
>>   +static int
>> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>> +{
>> +    const struct intel_crtc_scaler_state *scaler_state =
>> +                        &crtc_state->scaler_state;
>> +    int latency = 0;
>> +    int count = hweight32(scaler_state->scaler_users);
>> +    long long hscale_k[2] = {1, 1};
>> +    long long vscale_k[2] = {1, 1};
>> +
>> +    if (!crtc_state->dsc.compression_enable)
>> +        return latency;
>> +
>> +    for (int i = 0; i < count; i++) {
>> +        hscale_k[i] = mul_u32_u32(scaler_state->scalers[i].hscale, 
>> 1000) >> 16;
>> +        vscale_k[i] = mul_u32_u32(scaler_state->scalers[i].vscale, 
>> 1000) >> 16;
>> +    }
>> +
>> +    if (count) {
>> +        int chroma_downscaling_factor =
>> +            crtc_state->output_format == 
>> INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
>> +        long long total_scaling_factor;
>> +        int linetime_factor = DIV_ROUND_UP(15 * 
>> crtc_state->linetime, 10);
>> +
>> +        total_scaling_factor  = DIV_ROUND_UP_ULL(hscale_k[0] * 
>> vscale_k[0], 1000000);
>
> I think this might end up being 0.
>
> Consider hscale and vscale to be 0.5 each. hscale_k and vscale_k will 
> be 500 each.
>
> total_scaling_factor will become 500*500/ 10,00,000 or 2,50,000 
> /10,00,000 = 0.
>
> I think you should compute latency for scaler 0 and then if there is 
> another scaler, multiply it with the total scaling factor for scaler 1.

Scratch that.

Just checked the Bspec. We need to have downscale amount <for each 
direction and scaler> = MAX(1, scaler input / scaler output)

So at min the scaling factor will be one. This check is missing and we 
need to consider this while computing the scaling factor.


Regards,

Ankit


>
> Regards,
>
> Ankit
>
>
>> +
>> +        if (count > 1)
>> +            total_scaling_factor *= DIV_ROUND_UP_ULL(hscale_k[1] * 
>> vscale_k[1],
>> +                                 1000000);
>> +
>> +        latency = total_scaling_factor * linetime_factor * 
>> chroma_downscaling_factor;
>> +    }
>> +
>> +    return latency;
>> +}
>> +
>>   static int
>>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -2333,6 +2369,7 @@ skl_is_vblank_too_short(const struct 
>> intel_crtc_state *crtc_state,
>>       return crtc_state->framestart_delay +
>>           intel_usecs_to_scanlines(adjusted_mode, latency) +
>>           scaler_prefill_latency(crtc_state) +
>> +        dsc_prefill_latency(crtc_state) +
>>           wm0_lines >
>>           adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>>   }
