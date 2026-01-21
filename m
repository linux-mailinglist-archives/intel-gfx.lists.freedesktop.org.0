Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DtON9YWcWmodQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 19:11:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94C45B156
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 19:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3DE10E10E;
	Wed, 21 Jan 2026 18:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ra2U582j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7CC10E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 18:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769019090; x=1800555090;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u2KTFJ4XQVziBwUwaszSlzqpCeV6zGKMXPe1Nj5SVQE=;
 b=Ra2U582j4NSUgKW6qhR7351O8+/Qd/7nkkZl1kwPYvM9F32jdsQuDcJS
 g2Gi28T5DIuzF72aiZDJusPSzQ/h7o7EbYUormhnKVNwD76Yls2482pkU
 qiDKb6m4c27fd6Q420UliO3Zws+AroMtbIlrNL5b4RuRXg0SlrUqMPzC9
 4zdmwmPJT+JStQvkWo/GWWLsbhR6nZCXVxIT3htDIyla0CV55m1/aNuy6
 LkV4v3MSz+RcdIAr5iRgB3g6X9IXHXOzrSBiuazvZ8Ui6dZSAOFTUOEQ7
 y4O719nglQH/cd3I4WA2ZydM8CgKnfheXWI2ZplsJPElGyVcuRpkbiwFs w==;
X-CSE-ConnectionGUID: PQ6CyOZrT0CiY0wZbA5EOQ==
X-CSE-MsgGUID: wEMu/t8lT4aOhXB0LaCeCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="80878688"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80878688"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 10:11:26 -0800
X-CSE-ConnectionGUID: 1osST4qXQy6cQsFm/KVbrA==
X-CSE-MsgGUID: NlOt58+sSaOGS1UgqJ4GRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206122004"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 10:11:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 10:11:25 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 10:11:25 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 10:11:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6b23uzCT2YqTthqXFCPMAfoaUrL1tJC63CL4/ZSKMJgQ1Dwjzf5i7XHiU7kp8zPBEhGFUcFgH5hYcy7ZNcCU733X5Lfwxh9Ufjgttt3hQviEfYQExa85kooEy9WOE+r1JvV+Tl1n9T1hM94MXmWo3b6i99pSkxTI2WyMXq5MjzkLuDAtJVX+zxWfmTSoZyrPbwX6hCPLejJ5zqaR4uv6v3CH+ULPFH08umfvG44qYcay9H7c6wv8tHxTjwRldOnOcq2G36xrK/JJrUCcAzic4TaP3L8iFaxV0Fi3tVYnKGJnYcMi64VO5YtmCT3JTA0uQ9bgBTp4wQU6OvuxvdJ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5oM7rLJXUDlp1edXcBTlVdQMYShw+aBFwPQuLvtCFKo=;
 b=ytD1cu7xteCFd21oV91T4pnFZL8THa2lUmynK8IFrzgplw1h8TEmM3RcPTNeWALKDqnSoCKIvPSTPg8AEGlTxQx+oQqp2ep6bZZilp1Kb0/KYSMb2Nad/FJW7XUEbt6Ku+Ak+hhnWPpEDivDL0tRfM3HNBg3zGdVbAWOfyMxOA9bIn5LiF78xJn49J3/yKZdx+hVTEHamWz06HQqHmHcpVKsp/uwwklpMzibUb/FRQ8y7YNL3bT4kQ3YBU/QJFNfHN7GirMtL1NkbjU/npoUvgXbJhJpegGC1QnOY/vpAdjOB5SLeFZiSkws4BhMTPMEtYzZWOM4qqqJxfvQPLUM4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB6352.namprd11.prod.outlook.com (2603:10b6:8:cb::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Wed, 21 Jan 2026 18:11:03 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 18:11:03 +0000
Date: Wed, 21 Jan 2026 10:11:01 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdisplay?= =?utf-8?Q?=3A?= Prevent u64
 underflow in intel_fbc_stolen_end (rev2)
Message-ID: <20260121181101.GQ458797@mdroper-desk1.amr.corp.intel.com>
References: <20260107162935.8123-2-jonathan.cavitt@intel.com>
 <176781898959.134483.114971183916889935@a3b018990fe9>
 <CH0PR11MB544409EA62A8E6C2A418F83CE596A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CH0PR11MB544409EA62A8E6C2A418F83CE596A@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0113.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB6352:EE_
X-MS-Office365-Filtering-Correlation-Id: 6541a517-db0a-4c38-0c2b-08de59187034
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjA0c2FQamhjZ1NVdjZZcGdWcHFHWUc2WERudU9MUHNkaHhJajhkUzZuMzJa?=
 =?utf-8?B?WEw0VEhRK2FuclJTRVFZZzdsRTFxWEI0TktKRW9qbkxXSW9kVUdjZXBPV0tH?=
 =?utf-8?B?WXZzbGY3d09XRUs5TGtXQlBhb1B2U0g4RGN0amV1NHZIWmRoU1ExdllUUHpk?=
 =?utf-8?B?Ykl6ckVqcXFlaTZnd2VXSUtzWnExNy8renVISTFpWXZrcHBQWndQK0sxMkF0?=
 =?utf-8?B?MmV5K3ZEZE9tUmxyak4rOENsV0hIRWZYbGYvU0x4aUc3dVFNKzluWUtJWFVH?=
 =?utf-8?B?RjNSbUxyNnBVNGZlc0F2aXUwS2w3QTNEbUxvZC9YK0tYbjY3aG9BbnZhZENP?=
 =?utf-8?B?SXhpbFRsSFQ2VExSUDQ2K1VVbS9raXAzOHhjSXFJT2p6dmdCMzZuV25Fb0Nj?=
 =?utf-8?B?YXdVa281d09lYTFhWkhObDRiZjdyMW5iVENFSWRDMGk1TFZZUFNmZmE2Nkxs?=
 =?utf-8?B?WGp2MTlPZmpteVcxeEUxTXNWSXJlQXRXd2lRZTZmbkJDUWJ2V05EYndJbkM2?=
 =?utf-8?B?eUYycFMvMmxCNVZQenZSMThHcm1xOXQ4TXREUWtUaWVSd1NYNWZUeFJRMkNF?=
 =?utf-8?B?Z3hNRWp3TWFSdnYrU054MEpGd21pY0RyeFo2ZmI5UElJY3B3bG9yRy9RSWJa?=
 =?utf-8?B?MlJHNVoxQlU1M2xvSURHNXArc0xuTHhTYmhNZkFCLzc3dnFGVmNpYnJBNEU1?=
 =?utf-8?B?OHplTUFURm5KdjYyWnJ1ZHpoc0N0S2MvQ1hXd0ZXVHhhR1JmdkdoeVpUbytX?=
 =?utf-8?B?M21WcU1EMVNYek53TzZPZFBrZ3BVZFg2MzdYRVpNQzVrS0dYdUdNVUxqQmdP?=
 =?utf-8?B?TFlzZWhSWnhVcTg2bHZpeW83RnExdDZ4UXU1OWhpdFRvSmJ1SGZ6VVRmWDlS?=
 =?utf-8?B?SjR1SzUzWXVwdXZYblIwdUNCd1ByV3VEWXZzaXVkM1hOLzN0MzhhMG1XeEl2?=
 =?utf-8?B?YjdzbDM5MUFYdUs5bTNQbnlzTWJBNVhnR0VoTkk3dnRXQk40aUZGL0NFay9U?=
 =?utf-8?B?VFVmNUxENkZOMXlQQTU4TnJVZytMNzZ5VjBWZXJDTndtTkN3RjhJNENDY0gr?=
 =?utf-8?B?OVNtQ2FTRDE4NmpsSnAyOUxiQ0RvZzUvclZ1Nzk2VlNJS2JmME9EbGJMUUtM?=
 =?utf-8?B?R01ZN1ZNZ3pkUjRtMTQxbmZIZWxsVXg5TUdlUjd4SFVZR2dMdmJSTy9oakUr?=
 =?utf-8?B?QUxXZC9MZkE1ZGVmRTN3WUl1UG9YbkF6cW1IZDlLdWVJejFDeFV6VHlqdkNp?=
 =?utf-8?B?bDdGdnRnamlwQit1bUhmY0dIcWY4bG5NU1lIQTFhZTZIallwaS9pTE4rZTYv?=
 =?utf-8?B?cDNQOE1mZDRYYitoOURuSmVLMkVXSUJDakp0WWIwMUhla2hqdDBKVTZieXlI?=
 =?utf-8?B?QmkyMmN4dVNzNWpBbG90REkzb2x1d0ZURG5mcUhkbHNScW9MaUhOM0ZhWGpk?=
 =?utf-8?B?d3ppeGY4SDMrWTBHNDR5UmNadWYvdEhhcHRyUDRxZU1qb1JZUVZzTkdrQVU5?=
 =?utf-8?B?YXZ6bGk1MmxRRkcyWm43d1NnM3I1UDY5SmZDS3E0OWJmVEZwNWFETE9rZUd5?=
 =?utf-8?B?OHVWRFJaNXNFWUhiUkxrTHVIYzhPaVJnT1hRKzczZjNZamV3K1I5enM1eGRk?=
 =?utf-8?B?dC9OSWltOC9Kc3p1ZGpQQzhsQnFTdmZqYkFSYkd1bWNxWEM5aHBLQnduS0k4?=
 =?utf-8?B?OVp1ZXBqcE0zalF6aXFVTDN6VDlMTHIycGFUQzNNaTFCZk5PRkxUTy9Lc0pv?=
 =?utf-8?B?bmhFcGZtNmlrVW41OEE0YWFsdHZpT0RwQi9RZ2hHdGpYWFRaZ05VNkM5cFdL?=
 =?utf-8?B?cUhKRG5zQnFubk9obGw1dkdxQnZhMWdjZDdPRVdLQmwra3JETGR2UmhNemRQ?=
 =?utf-8?B?VjZQTmZnVGU1WDVjd2dNOCtpdVFoUEJTN0djaU82eURBc2phMjByWW5iYnJX?=
 =?utf-8?B?cjZqMjlqTllNcSs5QlQ3bS9MM1RpQXRUbGwzTHNUL1dpbGdMVVF1NDRVRzF4?=
 =?utf-8?B?TXFMRk9uOVZIYS9VM25QVzhTSG9hVHErUDdDc1h1NVp2VGtUdVpQY0xBaXFZ?=
 =?utf-8?Q?tw1RfK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTZzbGQ3VTV0VjZVdHd3eThzb1JmYlAyTkkraVBManNjOUZ2V3RVVzJBSlQ1?=
 =?utf-8?B?cThTVExna3hOUlcyeVhsSG5MME9kVlJxK0NwQ3hqdEVqMzlram1STW1RazJk?=
 =?utf-8?B?clBpOTQ4VnRJOXpzU3BWN0JKQ1E1eHQ1SGVHSXRJNmJQcGpQL2ZGU0JheENC?=
 =?utf-8?B?TFhBMFpuZ3NyMVlpQXVBYjhQekVNa2NUaGY1NUZpVlBoeTA0dVdUZU9zY0ow?=
 =?utf-8?B?TDNsRnRGT1NMNzVOTzd4aUhNSkVBSkZnLzYxQWZuTk9NMURlU0YxbVZhSHMw?=
 =?utf-8?B?bmdvdEVBdERTQzlHZitkLytheU1HOEwvQUF4T2xadGxvcVZnZXVwMm5HMGNt?=
 =?utf-8?B?WVAwb3V3QzRTNXpWQXJJb1hUWWZxQ1owVStvMFpVUVJLUWMzRFE1d2pqM2FP?=
 =?utf-8?B?VnQySEd6WjE5cW9xRFZlQW16bDI1SkxvQ0JBVkxZTFQyK2U2T01RMkxBMnk4?=
 =?utf-8?B?MlZyQmNGZEx3VCszOHJ2ZEJSalhiRmhDZTdjSFBSTTgreWZZcy84YjJieURq?=
 =?utf-8?B?Y1RSQ0RwY0czbmNRWHdJSjVUeHd6MS9VQmJQNXFncVE4OVZtRG8xTlVCQjBI?=
 =?utf-8?B?alBXa1M0U1ZISkNHMXBDY0ZvY25LSlFMNnZFZ1lEYWppMFZKdkwvYmF2bnVo?=
 =?utf-8?B?SU5hd3VkaEU2dFZndktVYk1MbExiM0grMGl3L3E0YnpKYlNXL2JsTlNOMks2?=
 =?utf-8?B?VmliS201cDRuMlIzanpXUTNjdW5TcE5NbkRsRVo3alBXM3MvV1hWQkxvdy9s?=
 =?utf-8?B?RlJmMG9JM1pMNFRyZnZySFJTZkdxVjdWcUhzeWx3NW9RSUJ3WldLc0MzNFV2?=
 =?utf-8?B?TVk2alFrampuaW54Tko0ZTBBS05qeGk3TmlnMFhQWTh2UFhqbnNxWVRaekxE?=
 =?utf-8?B?NlczRldkajFBWU9IYTlwYzBOZmJWalRzczYybEJsbHUwU0Juakl3WjEvc1Fa?=
 =?utf-8?B?WnpYQWdNWGJ0V2U4aDFXM0ZIVElPMU9jR0ZESUtGUEhadUlQNkY0YWRiak80?=
 =?utf-8?B?SWRUNjJxZ1FScmRuZXNhdCs3OXF5VkhLOCtSSHVyWGh5Tk5UaVNiVTRFYzlL?=
 =?utf-8?B?Z1FYeEVEU2JSVGRLY1VtK2NEVFNPcmkxbGJjb3ZtK0UwMzZXZGh3QlEzZlRW?=
 =?utf-8?B?Q2V6bkY5VDlZT0ZxSk5sRUNZbkhPSzZTN3piYmd6c05HRXlGUjZ4SXJMRFVD?=
 =?utf-8?B?UlNPOTkvTzJwbFNlN3ZTd0tnbjA5cVJNTXQvUndPcFdKdm1TeUp1TWZpZ0xG?=
 =?utf-8?B?blZha290WjlOUWVZTk16OEpDTFM1eDR2Q0hFUUhUY1IvUmNVaTB4YSsweDht?=
 =?utf-8?B?MUIxWklvR293dExVQnlXM0Zyd2NJSkllNW9SUlY4M01XclVDSGZoM0p0ZDdy?=
 =?utf-8?B?RlZybFI4eHdrSVdsUFNBRXcxMjY4MTIvNUJ4Uk14b0xycFVGdWFuelh4THNM?=
 =?utf-8?B?Q1VtR0JrUytyOTR3eVhhT0tCMzJWUVQyN3FKR3gyY2pEaFNneXNLMjJJNS9E?=
 =?utf-8?B?UW1HUDQ5SjZjb1BrYmNXUUhGYjhKYlFYZ0NUTGQ0NGVGaG8rNUV6dUFtVDY5?=
 =?utf-8?B?bXJTR0tXeVlDWm1ZcjhXMkZpZVd3cFdhYmhNb2x5WHRDNHp0bjJ3bXZxcjF5?=
 =?utf-8?B?bU9RaWc4K1J3MHVPZURWNWFvTEk5ZDVscnFnbks5MjlwUzZHaUUwQnZ1bEtP?=
 =?utf-8?B?cTg1TWRjNTEzZ05tc2RVQnpJOFZtRFQwU01RRkR4VWlucVVRUnVmZUpRNG5Y?=
 =?utf-8?B?UXd1N2MxSmxDeGRXQ09ZOXM2RkROOXlGaEFzd0ZmVlFBeXhwR0lLUFVJWlIy?=
 =?utf-8?B?VVEwZS9pbWJ1eGEwUGlMcWkzWVo0R2RzZUFxaE1DNUVQK21GMWtwRGRWa3lG?=
 =?utf-8?B?eldiSjI0QW5oVmFRRWV0RHB0OGZNYTAySVpZb0w4WlVHSFRBcWhSR29jNnRM?=
 =?utf-8?B?aHhUU2dJTFUvSkJFdVBnZTVFZXVwZlVESmdRYjBSSTdoS3RldGVEc1VRTlkv?=
 =?utf-8?B?N0xSYVFDanVjVDBHY0lQY05xZ0tKWS8vNTFWOEdneHFlcDA4ZlBWbVVJeVNS?=
 =?utf-8?B?a1J3YVVCTkVzZDZMbWVtWlFWaWJCR0N6SzBNSzdmUlpGSTM2RXJUVkF0a2V3?=
 =?utf-8?B?K24vaUt2RXFvNTNib3pYOVI5QUtkMzRIMlcxQ2FRSzBSZVpSdVRLMks0T2t3?=
 =?utf-8?B?UHp5KzNzQURuOUJEUFRPQy9WbWhuRUR2bnJmNlBxV056UXVaT1BjV2ZkQmc0?=
 =?utf-8?B?VTZEVlpoSGNLZUl3VVBjMVU2dDFxdFR6Rm9HdG54eDk1WkZ0VnovSjlGWDQ0?=
 =?utf-8?B?eWxXaFpUeXhIR0g3anR5bGk2UldqU0Q5OElNWjFSdlhuaHhodzRuYlAvU2pN?=
 =?utf-8?Q?TBALeB2oGzapFqS0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6541a517-db0a-4c38-0c2b-08de59187034
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 18:11:03.2842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NjrjvCW1FPpNsSxl6nqA3MouIVslpjWmZRIauOZ0b21cuGfiLHoJZmZaDcAhqKW/ikfDr5IIud15dA9W/1bzDgoOTcRCGrxoP3otyI/yp2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6352
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
X-Spamd-Result: default: False [-0.12 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	HFILTER_URL_ONLY(0.19)[0.086637131281003];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D94C45B156
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 05:07:22PM +0000, Cavitt, Jonathan wrote:
> These regressions are unrelated: the changes implemented to the target fu=
nction
> do not result in the function behaving mechanically differently.
> -Jonathan Cavitt

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

>=20
> From: Patchwork <patchwork@emeril.freedesktop.org>
> Sent: Wednesday, January 7, 2026 12:50 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: =E2=9C=97 i915.CI.Full: failure for drm/i915/display: Prevent u6=
4 underflow in intel_fbc_stolen_end (rev2)
>=20
> Patch Details
> Series:
> drm/i915/display: Prevent u64 underflow in intel_fbc_stolen_end (rev2)
> URL:
> https://patchwork.freedesktop.org/series/159319/
> State:
> failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/index.html
> CI Bug Log - changes from CI_DRM_17776_full -> Patchwork_159319v2_full
> Summary
>=20
> FAILURE
>=20
> Serious unknown changes coming with Patchwork_159319v2_full absolutely ne=
ed to be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_159319v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org<mailto:I915-ci-infra@lists.freedesktop.org>)=
 to allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>=20
> Participating hosts (9 -> 9)
>=20
> No changes in participating hosts
>=20
> Possible new issues
>=20
> Here are the unknown changes that may have been introduced in Patchwork_1=
59319v2_full:
>=20
> IGT changes
> Possible regressions
>=20
>   *   igt@i915_selftest@live@gem_contexts:
>      *   shard-tglu: NOTRUN -> DMESG-FAIL<https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_selftest@live@gem_contex=
ts.html> +1 other test dmesg-fail
>   *   igt@kms_content_protection@atomic-dpms-hdcp14:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_content_protection@atomic-dpms-h=
dcp14.html> +1 other test skip
>=20
> New tests
>=20
> New tests have been introduced between CI_DRM_17776_full and Patchwork_15=
9319v2_full:
>=20
> New IGT tests (4)
>=20
>   *   igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-a-hdmi-a-2:
>      *   Statuses : 1 pass(s)
>      *   Exec time: [0.34] s
>   *   igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-b-hdmi-a-2:
>      *   Statuses : 1 pass(s)
>      *   Exec time: [0.32] s
>   *   igt@kms_color_pipeline@plane-lut1d-post-ctm3x4@pipe-c-hdmi-a-2:
>      *   Statuses : 1 pass(s)
>      *   Exec time: [0.32] s
>   *   igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3:
>      *   Statuses : 1 fail(s)
>      *   Exec time: [120.79] s
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_159319v2_full that come from know=
n issues:
>=20
> IGT changes
> Issues hit
>=20
>   *   igt@api_intel_bb@blit-reloc-keep-cache:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.h=
tml> (i915#8411<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/841=
1>)
>   *   igt@gem_ccs@ctrl-surf-copy:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy.html> (i915#3=
555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#93=
23<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *   igt@gem_ccs@large-ctrl-surf-copy:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@gem_ccs@large-ctrl-surf-copy.html> =
(i915#13008<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008>)
>   *   igt@gem_ccs@suspend-resume:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ccs@suspend-resume.html> (i91=
5#9323<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *   igt@gem_ctx_sseu@invalid-sseu:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html> (=
i915#280<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>   *   igt@gem_eio@suspend:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-4/igt@gem_eio@suspend.html> -> ABORT<https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-1/igt@gem_eio@suspend.html>=
 (i915#15131<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131>=
)
>   *   igt@gem_exec_balancer@parallel-keep-in-fence:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-=
fence.html> (i915#4525<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4525>) +1 other test skip
>   *   igt@gem_exec_flush@basic-wb-pro-default:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_flush@basic-wb-pro-default.=
html> (i915#3539<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
39> / i915#4852<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/485=
2>)
>   *   igt@gem_exec_reloc@basic-gtt:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@gem_exec_reloc@basic-gtt.html> (i915=
#3281<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +4 oth=
er tests skip
>   *   igt@gem_exec_schedule@semaphore-power:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_exec_schedule@semaphore-power.ht=
ml> (i915#4812<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812=
>)
>   *   igt@gem_exec_suspend@basic-s3:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html> -> INCOMPLETE<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@gem_ex=
ec_suspend@basic-s3.html> (i915#13356<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13356>) +1 other test incomplete
>   *   igt@gem_fenced_exec_thrash@no-spare-fences:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fenc=
es.html> (i915#4860<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4860>) +4 other tests skip
>   *   igt@gem_lmem_swapping@verify-ccs:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@gem_lmem_swapping@verify-ccs.html> =
(i915#4613<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +=
1 other test skip
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html> (i9=
15#4613<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +1 o=
ther test skip
>   *   igt@gem_lmem_swapping@verify-random:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_lmem_swapping@verify-random.h=
tml> (i915#4613<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3>) +2 other tests skip
>   *   igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy=
-xy.html> (i915#4077<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4077>) +3 other tests skip
>   *   igt@gem_pread@bench:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_pread@bench.html> (i915#3282<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +1 other test s=
kip
>   *   igt@gem_pxp@reject-modify-context-protection-on:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_pxp@reject-modify-context-protec=
tion-on.html> (i915#4270<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4270>)
>   *   igt@gem_render_tiled_blits@basic:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@gem_render_tiled_blits@basic.html> (=
i915#4079<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>   *   igt@gem_softpin@evict-snoop-interruptible:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_softpin@evict-snoop-interruptibl=
e.html> (i915#4885<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4885>)
>   *   igt@gem_userptr_blits@coherency-sync:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.=
html> (i915#3297<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
97>) +2 other tests skip
>   *   igt@gem_userptr_blits@create-destroy-unsync:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@create-destroy-uns=
ync.html> (i915#3297<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3297>)
>   *   igt@gem_userptr_blits@dmabuf-sync:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@gem_userptr_blits@dmabuf-sync.html>=
 (i915#3297<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /=
 i915#3323<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323>)
>   *   igt@gem_userptr_blits@forbidden-operations:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gem_userptr_blits@forbidden-operatio=
ns.html> (i915#3282<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282> / i915#3297<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3297>)
>   *   igt@gen9_exec_parse@basic-rejected-ctx-param:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@gen9_exec_parse@basic-rejected-ctx-=
param.html> (i915#2527<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2527> / i915#2856<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2856>) +1 other test skip
>   *   igt@gen9_exec_parse@batch-invalid-length:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-len=
gth.html> (i915#2527<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2527> / i915#2856<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2856>)
>   *   igt@gen9_exec_parse@bb-large:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@gen9_exec_parse@bb-large.html> (i915=
#2527<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) +1 oth=
er test skip
>   *   igt@i915_drm_fdinfo@busy-idle@bcs0:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@i915_drm_fdinfo@busy-idle@bcs0.html>=
 (i915#14073<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>=
) +5 other tests skip
>   *   igt@i915_module_load@fault-injection:
>      *   shard-glk: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection.html=
> (i915#15342<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342=
> / i915#15481<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1548=
1>)
>   *   igt@i915_module_load@fault-injection@i915_driver_hw_probe:
>      *   shard-glk: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection@i915=
_driver_hw_probe.html> (i915#15481<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15481>)
>   *   igt@i915_module_load@fault-injection@intel_connector_register:
>      *   shard-glk: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_load@fault-injection=
@intel_connector_register.html> (i915#15342<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15342>)
>   *   igt@i915_module_load@load:
>      *   shard-tglu: (PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_17776/shard-tglu-6/igt@i915_module_load@load.html>, PASS<https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8/igt@i915_module_load@loa=
d.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-t=
glu-10/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_17776/shard-tglu-7/igt@i915_module_load@load.html>, PASS<=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i915=
_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17776/shard-tglu-7/igt@i915_module_load@load.html>, PASS<https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@lo=
ad.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-=
tglu-4/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_17776/shard-tglu-5/igt@i915_module_load@load.html>, PASS<=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i91=
5_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_17776/shard-tglu-2/igt@i915_module_load@load.html>, PASS<https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@l=
oad.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard=
-tglu-4/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_17776/shard-tglu-3/igt@i915_module_load@load.html>, PASS=
<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-9/igt@i91=
5_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_17776/shard-tglu-7/igt@i915_module_load@load.html>, PASS<https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-10/igt@i915_module_load@=
load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shar=
d-tglu-5/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17776/shard-tglu-6/igt@i915_module_load@load.html>, PAS=
S<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-4/igt@i9=
15_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_17776/shard-tglu-9/igt@i915_module_load@load.html>, PASS<https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-tglu-8/igt@i915_module_load@=
load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shar=
d-tglu-3/igt@i915_module_load@load.html>) -> (PASS<https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159319v2/shard-tglu-8/igt@i915_module_load@load.=
html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sha=
rd-tglu-9/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_load@load.htm=
l>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-=
tglu-7/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_module_load@load.html>,=
 PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tgl=
u-6/igt@i915_module_load@load.html>, SKIP<https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_159319v2/shard-tglu-3/igt@i915_module_load@load.html>, PA=
SS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4=
/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-tglu-10/igt@i915_module_load@load.html>, PASS=
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/i=
gt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-tglu-2/igt@i915_module_load@load.html>, PASS<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@=
i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159319v2/shard-tglu-6/igt@i915_module_load@load.html>, PASS<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-9/igt@i91=
5_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_159319v2/shard-tglu-5/igt@i915_module_load@load.html>, PASS<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-7/igt@i915_m=
odule_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159319v2/shard-tglu-8/igt@i915_module_load@load.html>, PASS<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-4/igt@i915_modu=
le_load@load.html>) (i915#14785<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14785>)
>      *   shard-glk: (PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-glk5/igt@i915_module_load@load.html>, PASS<https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load@load.htm=
l>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk1/i=
gt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html>, PASS<https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/igt@i915_module_load=
@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/sha=
rd-glk9/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_17776/shard-glk5/igt@i915_module_load@load.html>, PASS<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk1/igt@i915_mo=
dule_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-glk5/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_17776/shard-glk9/igt@i915_module_load@load.html=
>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17776/shard-glk6/ig=
t@i915_module_load@load.html>) -> (PASS<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-glk6/igt@i915_module_load@load.html>, PASS<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i=
915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_159319v2/shard-glk5/igt@i915_module_load@load.html>, PASS<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_mod=
ule_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_159319v2/shard-glk6/igt@i915_module_load@load.html>, PASS<https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/igt@i915_module_loa=
d@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-glk5/igt@i915_module_load@load.html>, SKIP<https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-glk9/igt@i915_module_load@load.=
html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sha=
rd-glk5/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_159319v2/shard-glk9/igt@i915_module_load@load.html>)
>   *   igt@i915_pm_freq_api@freq-reset-multiple:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multi=
ple.html> (i915#8399<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8399>)
>   *   igt@i915_pm_rps@min-max-config-loaded:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@i915_pm_rps@min-max-config-loaded.ht=
ml> (i915#11681<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/116=
81> / i915#6621<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/662=
1>)
>   *   igt@i915_query@hwconfig_table:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@i915_query@hwconfig_table.html> (=
i915#6245<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245>)
>   *   igt@i915_query@test-query-geometry-subslices:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@i915_query@test-query-geometry-subsl=
ices.html> (i915#5723<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/5723>)
>   *   igt@i915_selftest@live@workarounds:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-6/igt@i915_selftest@live@workarounds.html> -> DMESG-FAIL<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-8/igt@i=
915_selftest@live@workarounds.html> (i915#12061<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12061>) +1 other test dmesg-fail
>   *   igt@i915_suspend@sysfs-reader:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@i915_suspend@sysfs-reader.html> -> INCOMPLETE<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@i915_s=
uspend@sysfs-reader.html> (i915#4817<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4817>)
>   *   igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-legac=
y.html> (i915#4212<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4212>)
>   *   igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_addfb_basic@addfb25-x-tiled-mism=
atch-legacy.html> (i915#4212<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4212>)
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inte=
rnal-panels:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@kms_atomic_transition@plane-all-mod=
eset-transition-fencing-internal-panels.html> (i915#1769<https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555<https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555>)
>   *   igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.h=
tml> +1 other test skip
>   *   igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270=
.html> (i915#5286<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286>) +2 other tests skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-=
32bpp-rotate-180-hflip-async-flip.html> (i915#5286<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5286>) +5 other tests skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.htm=
l> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shar=
d-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html> (i915#51=
38<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138>)
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64b=
pp-rotate-180-async-flip.html> (i915#4538<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4538> / i915#5286<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5286>) +2 other tests skip
>   *   igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-14/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html> -> DMESG-WARN=
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-18/i=
gt@kms_big_fb@x-tiled-8bpp-rotate-0.html> (i915#4423<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4423>) +2 other tests dmesg-warn
>   *   igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-fl=
ip:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32b=
pp-rotate-0-hflip-async-flip.html> (i915#4538<https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4538> / i915#5190<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5190>)
>   *   igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64=
bpp-rotate-180.html> (i915#4538<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4538>) +1 other test skip
>   *   igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-=
rc-ccs-cc@pipe-c-hdmi-a-1.html> (i915#6095<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6095>) +206 other tests skip
>   *   igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>      *   shard-glk10: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-glk10/igt@kms_ccs@bad-rotation-90-y-tiled-gen=
12-mc-ccs@pipe-c-hdmi-a-1.html> +26 other tests skip
>   *   igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-g=
en12-mc-ccs@pipe-b-hdmi-a-1.html> (i915#6095<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095>) +34 other tests skip
>   *   igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-ge=
n12-rc-ccs@pipe-a-dp-3.html> (i915#10307<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10307> / i915#6095<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095>) +149 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-=
4-tiled-lnl-ccs.html> (i915#12313<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12313>)
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi=
-a-1:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-=
4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html> (i915#6095<https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6095>) +64 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-d=
g2-mc-ccs@pipe-b-hdmi-a-2.html> (i915#6095<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6095>) +65 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-d=
g2-rc-ccs@pipe-a-hdmi-a-3.html> (i915#6095<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6095>) +35 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-d=
g2-rc-ccs@pipe-c-hdmi-a-2.html> (i915#14098<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14098> / i915#6095<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6095>) +32 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>      *   shard-glk: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-ti=
led-ccs@pipe-a-hdmi-a-1.html> (i915#12796<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12796>) +1 other test incomplete
>   *   igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-=
ccs.html> (i915#12313<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313>)
>   *   igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@=
pipe-d-hdmi-a-1.html> (i915#10307<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/10307> / i915#10434<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/10434> / i915#6095<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6095>) +2 other tests skip
>   *   igt@kms_chamelium_audio@hdmi-audio-edid:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-ed=
id.html> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/11151> / i915#7828<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7828>) +6 other tests skip
>   *   igt@kms_chamelium_color@ctm-negative:
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-glk5/igt@kms_chamelium_color@ctm-negative.html>=
 +172 other tests skip
>   *   igt@kms_chamelium_hpd@hdmi-hpd-fast:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-fast.html=
> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151=
> / i915#7828<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>=
) +3 other tests skip
>   *   igt@kms_chamelium_hpd@hdmi-hpd-storm:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-storm.ht=
ml> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/111=
51> / i915#7828<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/782=
8>) +5 other tests skip
>   *   igt@kms_color_pipeline@plane-lut3d-green-only@pipe-a-hdmi-a-3:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-6/igt@kms_color_pipeline@plane-lut3d-green-=
only@pipe-a-hdmi-a-3.html> (i915#15523<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15523>) +3 other tests skip
>   *   {igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3} (NEW):
>      *   shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms-h=
dcp14@pipe-a-dp-3.html> (i915#7173<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7173>)
>   *   igt@kms_content_protection@dp-mst-suspend-resume:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_content_protection@dp-mst-suspe=
nd-resume.html> (i915#15330<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15330>)
>   *   igt@kms_content_protection@lic-type-0:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@lic-type-0=
.html> (i915#6944<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
944> / i915#9424<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/94=
24>) +1 other test skip
>   *   igt@kms_content_protection@suspend-resume:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_content_protection@suspend-re=
sume.html> (i915#6944<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6944>)
>   *   igt@kms_cursor_crc@cursor-offscreen-max-size:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-max-s=
ize.html> (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555>)
>   *   igt@kms_cursor_crc@cursor-onscreen-256x85:
>      *   shard-tglu: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x=
85.html> (i915#13566<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13566>) +1 other test fail
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html> -> FAIL<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@=
kms_cursor_crc@cursor-onscreen-256x85.html> (i915#13566<https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/13566>)
>   *   igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85=
@pipe-a-hdmi-a-2.html> (i915#13566<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13566>) +3 other tests fail
>   *   igt@kms_cursor_crc@cursor-onscreen-512x170:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x1=
70.html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13049>) +1 other test skip
>   *   igt@kms_cursor_crc@cursor-random-32x32:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_cursor_crc@cursor-random-32x32.h=
tml> (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5>)
>   *   igt@kms_cursor_crc@cursor-random-512x512:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x=
512.html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049>)
>   *   igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>      *   shard-tglu-1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-128=
x42@pipe-a-hdmi-a-1.html> (i915#13566<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13566>) +1 other test fail
>   *   igt@kms_cursor_crc@cursor-sliding-32x10:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x=
10.html> (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555>) +3 other tests skip
>   *   igt@kms_cursor_crc@cursor-sliding-512x170:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x1=
70.html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13049>)
>   *   igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-at=
omic-transitions.html>
>   *   igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transiti=
ons:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-b=
efore-cursor-atomic-transitions.html> (i915#4103<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4103>)
>   *   igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe=
-a-hdmi-a-2.html> (i915#3804<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3804>)
>   *   igt@kms_dp_link_training@non-uhbr-mst:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst=
.html> (i915#13749<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13749>)
>   *   igt@kms_dp_link_training@uhbr-mst:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.htm=
l> (i915#13748<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1374=
8>)
>   *   igt@kms_dp_link_training@uhbr-sst:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@kms_dp_link_training@uhbr-sst.html>=
 (i915#13748<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748>=
)
>   *   igt@kms_dp_linktrain_fallback@dp-fallback:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_dp_linktrain_fallback@dp-fallba=
ck.html> (i915#13707<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707>)
>   *   igt@kms_dsc@dsc-basic:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_dsc@dsc-basic.html> (i915#3555<ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *   igt@kms_dsc@dsc-with-bpc:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html> (i915#355=
5<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *   igt@kms_dsc@dsc-with-formats:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html> (i=
915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i9=
15#3840<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *   igt@kms_fb_coherency@memset-crc@mmap-gtt:
>      *   shard-glk: NOTRUN -> CRASH<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-glk9/igt@kms_fb_coherency@memset-crc@mmap-gtt.=
html> (i915#15351<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5351>) +1 other test crash
>   *   igt@kms_feature_discovery@dp-mst:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_feature_discovery@dp-mst.html> =
(i915#9337<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337>)
>   *   igt@kms_flip@2x-flip-vs-dpms-on-nop:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-on-nop.html=
> (i915#9934<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)=
 +2 other tests skip
>   *   igt@kms_flip@2x-flip-vs-fences:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html> (i91=
5#8381<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381>)
>   *   igt@kms_flip@2x-flip-vs-panning-vs-hang:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-ha=
ng.html> (i915#3637<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3637> / i915#9934<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9934>) +3 other tests skip
>   *   igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html> -> T=
IMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-sn=
b4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html> (i915#14033<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033>) +1 other test tim=
eout
>   *   igt@kms_flip@2x-plain-flip:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip@2x-plain-flip.html> (i915#=
3637<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637> / i915#9=
934<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other=
 tests skip
>   *   igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check-interr=
uptible.html> (i915#9934<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9934>)
>   *   igt@kms_flip@flip-vs-fences:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_flip@flip-vs-fences.html> (i915#=
8381<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381>)
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscal=
ing@pipe-a-valid-mode:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftil=
e-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html> (i915#2587<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2587> / i915#2672<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other test skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yf=
tile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html> (i915#2587<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2587> / i915#2672<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +4 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscal=
ing:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yfti=
leccs-to-64bpp-yftile-upscaling.html> (i915#2672<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/2672> / i915#3555<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555>)
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscal=
ing:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytileccs-downscaling.html> (i915#2587<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/2587> / i915#2672<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2672> / i915#3555<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555>)
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscal=
ing@pipe-a-valid-mode:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html> (i915#2587<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> / i915#2672<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other test skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling=
:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile=
-to-32bpp-4tile-downscaling.html> (i915#2672<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2672> / i915#3555<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555>) +1 other test skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscali=
ng:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yf=
tile-to-32bpp-yftile-downscaling.html> (i915#2672<https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2672> / i915#3555<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555>) +4 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-w=
c:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offs=
creen-pri-shrfb-draw-mmap-wc.html> (i915#15104<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15104>)
>   *   igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-dr=
aw-blt.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159=
319v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-d=
raw-blt.html> (i915#15389<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15389> / i915#6880<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6880>)
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc=
:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-prim=
scrn-pri-indfb-draw-mmap-wc.html> (i915#8708<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/8708>) +5 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scn=
dscrn-cur-indfb-onoff.html> +35 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scnds=
crn-spr-indfb-fullscreen.html> (i915#1825<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1825>) +2 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pr=
imscrn-spr-indfb-move.html> (i915#15102<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102> / i915#3023<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3023>)
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwri=
te:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-p=
rimscrn-spr-indfb-draw-pwrite.html> +16 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwri=
te:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2=
p-scndscrn-spr-indfb-draw-pwrite.html> +43 other tests skip
>   *   igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc=
-rte.html> (i915#9766<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9766>)
>   *   igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-c=
pu:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-off=
screen-pri-shrfb-draw-mmap-cpu.html> (i915#15102<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102>) +16 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-prims=
crn-indfb-pgflip-blt.html> (i915#15102<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15102> / i915#3458<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3458>) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc=
:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-prims=
crn-cur-indfb-draw-mmap-wc.html> (i915#8708<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8708>) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scnds=
crn-pri-shrfb-draw-pwrite.html> (i915#5354<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5354>) +3 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-modeset=
frombusy.html> (i915#15102<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102> / i915#3458<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3458>) +7 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb5=
65-draw-mmap-wc.html> (i915#15102<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15102>) +13 other tests skip
>   *   igt@kms_hdr@bpc-switch:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_hdr@bpc-switch.html> -> SKIP<https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_hdr@bpc-switch.=
html> (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55> / i915#8228<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/822=
8>)
>   *   igt@kms_hdr@brightness-with-hdr:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html>=
 (i915#12713<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>=
)
>   *   igt@kms_hdr@invalid-metadata-sizes:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_hdr@invalid-metadata-sizes.html>=
 (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /=
 i915#8228<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +=
1 other test skip
>   *   igt@kms_hdr@static-toggle:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_hdr@static-toggle.html> (i915=
#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#=
8228<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *   igt@kms_hdr@static-toggle-suspend:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-3/igt@kms_hdr@static-toggle-suspend.html>=
 (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /=
 i915#8228<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *   igt@kms_joiner@basic-force-big-joiner:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html> -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms=
_joiner@basic-force-big-joiner.html> (i915#15459<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15459>)
>   *   igt@kms_joiner@basic-force-ultra-joiner:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_joiner@basic-force-ultra-joiner.=
html> (i915#15458<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5458>) +1 other test skip
>   *   igt@kms_joiner@basic-ultra-joiner:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.htm=
l> (i915#15458<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1545=
8>)
>   *   igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_joiner@switch-modeset-ultra-joine=
r-big-joiner.html> (i915#13522<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13522>)
>   *   igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-p=
ipe-crc-check.html> (i915#1839<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1839>) +1 other test skip
>   *   igt@kms_panel_fitting@legacy:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_panel_fitting@legacy.html> (i91=
5#6301<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>   *   igt@kms_plane@plane-panning-bottom-right-suspend:
>      *   shard-glk: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_plane@plane-panning-bottom-r=
ight-suspend.html> (i915#13026<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13026>) +1 other test incomplete
>   *   igt@kms_plane_multiple@2x-tiling-x:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-x.ht=
ml> (i915#13958<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/139=
58>)
>   *   igt@kms_plane_multiple@2x-tiling-yf:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_plane_multiple@2x-tiling-yf.html=
> (i915#13958<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958=
>)
>   *   igt@kms_plane_multiple@tiling-yf:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_plane_multiple@tiling-yf.html> =
(i915#14259<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259>)=
 +1 other test skip
>   *   igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe=
-a:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-un=
ity-scaling-with-rotation@pipe-a.html> (i915#15329<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15329>) +4 other tests skip
>   *   igt@kms_pm_backlight@fade-with-suspend:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspen=
d.html> (i915#9812<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9812>) +1 other test skip
>   *   igt@kms_pm_dc@dc3co-vpb-simulation:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html>=
 (i915#9685<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>) =
+1 other test skip
>   *   igt@kms_pm_dc@dc5-psr:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_dc@dc5-psr.html> (i915#9685<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>   *   igt@kms_pm_dc@dc6-dpms:
>      *   shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html> (i915#9295<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295>)
>   *   igt@kms_pm_rpm@modeset-lpsp:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html> (i915#=
15073<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
>   *   igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html> -> SKIP=
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-17/i=
gt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html> (i915#15073<https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15073>) +1 other test skip
>   *   igt@kms_pm_rpm@modeset-non-lpsp:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp.html> (=
i915#15073<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt@kms=
_pm_rpm@modeset-non-lpsp-stress.html> (i915#15073<https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15073>) +1 other test skip
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> -> S=
KIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5=
/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#15073<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) +2 other tests skip
>   *   igt@kms_pm_rpm@package-g7:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_pm_rpm@package-g7.html> (i915=
#15403<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403>)
>   *   igt@kms_pm_rpm@system-suspend-idle:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-11/igt@kms_pm_rpm@system-suspend-idle.html> -> INCOMPLETE<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@=
kms_pm_rpm@system-suspend-idle.html> (i915#14419<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14419>)
>   *   igt@kms_pm_rpm@system-suspend-modeset:
>      *   shard-rkl: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modes=
et.html> (i915#14419<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14419>)
>   *   igt@kms_prime@basic-crc-vgem:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_prime@basic-crc-vgem.html> (i915=
#6524<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *   igt@kms_prime@basic-modeset-hybrid:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html=
> (i915#6524<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *   igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-mo=
ve-continuous-exceed-sf.html> (i915#11520<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520>) +5 other tests skip
>   *   igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-=
sf:
>      *   shard-glk10: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_159319v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-m=
ove-continuous-exceed-fully-sf.html> (i915#11520<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520>)
>   *   igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-glk5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.=
html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
1520>) +5 other tests skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr2_sf@pr-plane-move-sf-dmg-are=
a.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11520>) +2 other tests skip
>   *   igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-rkl-3/igt@kms_psr2_sf@pr-primary-plane-update-s=
f-dmg-area-big-fb.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520>)
>   *   igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr2_sf@psr2-cursor-plane-move-co=
ntinuous-exceed-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11520>) +1 other test skip
>   *   igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-mo=
ve-continuous-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11520>) +5 other tests skip
>   *   igt@kms_psr2_su@frontbuffer-xrgb8888:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr2_su@frontbuffer-xrgb8888.htm=
l> (i915#9683<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>=
)
>   *   igt@kms_psr@fbc-pr-no-drrs:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-18/igt@kms_psr@fbc-pr-no-drrs.html> (i915#1=
072<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#97=
32<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +8 other =
tests skip
>   *   igt@kms_psr@fbc-psr-no-drrs:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_psr@fbc-psr-no-drrs.html> (i915=
#9732<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +13 ot=
her tests skip
>   *   igt@kms_psr@fbc-psr-primary-render:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_psr@fbc-psr-primary-render.ht=
ml> (i915#9732<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732=
>) +14 other tests skip
>   *   igt@kms_psr@psr2-sprite-render:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@kms_psr@psr2-sprite-render.html> (i91=
5#1072<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915=
#9732<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +2 oth=
er tests skip
>   *   igt@kms_rotation_crc@multiplane-rotation:
>      *   shard-glk: NOTRUN -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-glk1/igt@kms_rotation_crc@multiplane-rota=
tion.html> (i915#118<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/118>)
>   *   igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>      *   shard-glk: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-glk5/igt@kms_rotation_crc@multiplane-rota=
tion-cropping-bottom.html> (i915#15500<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15500>)
>   *   igt@kms_scaling_modes@scaling-mode-center:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-cent=
er.html> (i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555>) +2 other tests skip
>   *   igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_tiled_display@basic-test-patt=
ern-with-chamelium.html> (i915#8623<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8623>)
>   *   igt@kms_universal_plane@cursor-fb-leak:
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak.html> -> FAIL<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@k=
ms_universal_plane@cursor-fb-leak.html> (i915#9196<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9196>)
>   *   igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:
>      *   shard-dg1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-c-hdmi-a-3.html> (i915#9196<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9196>)
>   *   igt@kms_vrr@negative-basic:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@kms_vrr@negative-basic.html> (i915#3=
555<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#99=
06<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>   *   igt@kms_vrr@seamless-rr-switch-virtual:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtua=
l.html> (i915#9906<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9906>) +1 other test skip
>   *   igt@perf@unprivileged-single-ctx-counters:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg1-12/igt@perf@unprivileged-single-ctx-counter=
s.html> (i915#2433<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2433>)
>   *   igt@perf_pmu@module-unload:
>      *   shard-tglu: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159319v2/shard-tglu-8/igt@perf_pmu@module-unload.html> (i915#=
14433<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433>)
>   *   igt@prime_vgem@coherency-gtt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159319v2/shard-dg2-1/igt@prime_vgem@coherency-gtt.html> (i915#=
3708<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708> / i915#4=
077<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>   *   igt@sriov_basic@bind-unbind-vf@vf-1:
>      *   shard-tglu-1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.h=
tml> (i915#12910<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
910>) +18 other tests fail
>=20
> Possible fixes
>=20
>   *   igt@gem_exec_big@single:
>      *   shard-tglu: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_17776/shard-tglu-5/igt@gem_exec_big@single.html> (i915#11713<https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11713>) -> PASS<https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-3/igt@gem_exec_big@=
single.html>
>   *   igt@gem_workarounds@suspend-resume-fd:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_17776/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html> (i915#13=
356<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356> / i915#1=
4586<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586>) -> PAS=
S<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk1/ig=
t@gem_workarounds@suspend-resume-fd.html>
>   *   igt@gen9_exec_parse@allowed-all:
>      *   shard-glk10: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17776/shard-glk10/igt@gen9_exec_parse@allowed-all.html> (i915#5566<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>) -> PASS<https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk10/igt@gen9_exe=
c_parse@allowed-all.html>
>   *   igt@i915_pm_rc6_residency@rc6-fence:
>      *   shard-tglu: WARN<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-fence.html> (i915#13790<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790> / i915#2681<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681>) -> PASS<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-tglu-6/igt@i91=
5_pm_rc6_residency@rc6-fence.html> +1 other test pass
>   *   igt@i915_pm_rpm@gem-execbuf-stress@lmem0:
>      *   shard-dg1: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_17776/shard-dg1-14/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html> (i9=
15#4423<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> P=
ASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-1=
8/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html>
>   *   igt@i915_pm_rpm@system-suspend-execbuf:
>      *   shard-dg1: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-dg1-12/igt@i915_pm_rpm@system-suspend-execbuf.html> (i915#1356=
2<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562>) -> PASS<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt=
@i915_pm_rpm@system-suspend-execbuf.html>
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hfl=
ip.html> (i915#5138<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5138>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2=
/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.htm=
l>
>   *   igt@kms_dp_link_training@non-uhbr-sst:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-sst.html> (i915#13749<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>) -> PASS<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11/igt@km=
s_dp_link_training@non-uhbr-sst.html>
>   *   igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
>      *   shard-dg2: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip=
-blt.html> (i915#15389<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15389> / i915#6880<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6880>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-=
blt.html> +1 other test pass
>   *   igt@kms_plane_scaling@intel-max-src-size:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>) -> PASS<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-1/igt@km=
s_plane_scaling@intel-max-src-size.html>
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i9=
15#15073<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) ->=
 PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1=
-18/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> +2 other tests pas=
s
>=20
> Warnings
>=20
>   *   igt@api_intel_bb@object-reloc-purge-cache:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html> (i915#145=
44<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#84=
11<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>) -> SKIP<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@=
api_intel_bb@object-reloc-purge-cache.html> (i915#8411<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8411>) +1 other test skip
>   *   igt@gem_ccs@block-multicopy-inplace:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html> (i915#14544<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3555<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#9323<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs=
@block-multicopy-inplace.html> (i915#3555<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555> / i915#9323<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9323>)
>   *   igt@gem_ccs@ctrl-surf-copy-new-ctx:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html> (i915#14544<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9323<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_ccs=
@ctrl-surf-copy-new-ctx.html> (i915#9323<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9323>)
>   *   igt@gem_ccs@suspend-resume:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_ccs@suspend-resume.html> (i915#9323<https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323>) -> SKIP<https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_ccs@suspend-=
resume.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544> / i915#9323<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323>)
>   *   igt@gem_create@create-ext-set-pat:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_create@create-ext-set-pat.html> (i915#14544<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#8562<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>) -> SKIP<https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_crea=
te@create-ext-set-pat.html> (i915#8562<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8562>)
>   *   igt@gem_ctx_sseu@invalid-sseu:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html> (i915#280<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/280>) -> SKIP<https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_ctx_sseu@in=
valid-sseu.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544> / i915#280<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280>)
>   *   igt@gem_exec_balancer@parallel-keep-submit-fence:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i=
915#4525<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>) -> =
SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-=
6/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i915#14544<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4525<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *   igt@gem_exec_capture@capture-invisible:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html> (i915#14544<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6334<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem=
_exec_capture@capture-invisible.html> (i915#6334<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6334>) +1 other test skip
>   *   igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html> (i915#1454=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#328=
1<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@g=
em_exec_reloc@basic-gtt-cpu-noreloc.html> (i915#3281<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3281>) +3 other tests skip
>   *   igt@gem_exec_reloc@basic-softpin:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_exec_reloc@basic-softpin.html> (i915#3281<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_exec_r=
eloc@basic-softpin.html> (i915#14544<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544> / i915#3281<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281>) +5 other tests skip
>   *   igt@gem_lmem_evict@dontneed-evict-race:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html> (i915#14544<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4613<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613> / i915#7582<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582>) -> SKIP<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_=
lmem_evict@dontneed-evict-race.html> (i915#4613<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4613> / i915#7582<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7582>)
>   *   igt@gem_lmem_swapping@heavy-verify-multi:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.html> (i915#4613=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@ge=
m_lmem_swapping@heavy-verify-multi.html> (i915#14544<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544> / i915#4613<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4613>) +2 other tests skip
>   *   igt@gem_lmem_swapping@verify:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_lmem_swapping@verify.html> (i915#14544<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4613<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP<https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_lmem_swap=
ping@verify.html> (i915#4613<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4613>) +1 other test skip
>   *   igt@gem_partial_pwrite_pread@writes-after-reads-display:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.h=
tml> (i915#3282<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
2>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sha=
rd-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html> (i91=
5#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i9=
15#3282<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +3 o=
ther tests skip
>   *   igt@gem_pwrite@basic-exhaustion:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html> (i915#14544<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3282<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_pwrite=
@basic-exhaustion.html> (i915#3282<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3282>) +2 other tests skip
>   *   igt@gem_pxp@hw-rejects-pxp-context:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html> (i915#13717<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717> / i915#14544<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gem_p=
xp@hw-rejects-pxp-context.html> (i915#13717<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13717>)
>   *   igt@gem_userptr_blits@coherency-unsync:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html> (i915#3297<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> SKIP<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gem_=
userptr_blits@coherency-unsync.html> (i915#14544<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544> / i915#3297<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3297>) +1 other test skip
>   *   igt@gem_userptr_blits@unsync-unmap-after-close:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i91=
5#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i9=
15#3297<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> S=
KIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5=
/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#3297<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +2 other tests skip
>   *   igt@gen7_exec_parse@chained-batch:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@gen7_exec_parse@chained-batch.html> -> SKIP<https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@gen7_exe=
c_parse@chained-batch.html> (i915#14544<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544>) +9 other tests skip
>   *   igt@gen9_exec_parse@allowed-all:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html> (i915#14544<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#2527<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@gen9_exec_=
parse@allowed-all.html> (i915#2527<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2527>) +2 other tests skip
>   *   igt@gen9_exec_parse@batch-invalid-length:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@gen9_exec_parse@batch-invalid-length.html> (i915#2527=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@ge=
n9_exec_parse@batch-invalid-length.html> (i915#14544<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544> / i915#2527<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2527>) +1 other test skip
>   *   igt@i915_pm_freq_api@freq-reset:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html> (i915#14544<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#8399<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_pm_fr=
eq_api@freq-reset.html> (i915#8399<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8399>)
>   *   igt@i915_pm_rc6_residency@rc6-idle:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html> (i915#14498<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498> / i915#14544<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@i915_=
pm_rc6_residency@rc6-idle.html> (i915#14498<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14498>)
>   *   igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>      *   shard-dg2: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17776/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html> -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-1/igt@i9=
15_pm_rpm@gem-execbuf-stress-pc8.html>
>   *   igt@i915_query@hwconfig_table:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@i915_query@hwconfig_table.html> (i915#6245<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6245>) -> SKIP<https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@i915_query@hw=
config_table.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544> / i915#6245<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6245>)
>   *   igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html> (i9=
15#12454<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454> / i=
915#12712<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712> / =
i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) =
-> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-r=
kl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html> (i915#12454<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454> / i915#12712<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712>)
>   *   igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (=
i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /=
 i915#9531<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531>) -=
> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rk=
l-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#9531<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531>)
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-internal-pan=
els:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-in=
ternal-panels.html> (i915#1769<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1769> / i915#3555<https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_159319v2/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transiti=
on-internal-panels.html> (i915#14544<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544> / i915#1769<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/1769> / i915#3555<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555>)
>   *   igt@kms_big_fb@4-tiled-addfb:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html> (i915#5286<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5286>) -> SKIP<https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_big_fb@4-t=
iled-addfb.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544> / i915#5286<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/5286>) +3 other tests skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip=
.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544> / i915#5286<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5286>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/=
shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>=
 (i915#5286<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) =
+3 other tests skip
>   *   igt@kms_big_fb@linear-8bpp-rotate-270:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html> (i915#14544<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3638<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) -> SKIP<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_=
big_fb@linear-8bpp-rotate-270.html> (i915#3638<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3638>)
>   *   igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html> (i915#3638<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms=
_big_fb@y-tiled-64bpp-rotate-270.html> (i915#14544<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544> / i915#3638<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3638>) +2 other tests skip
>   *   igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html> (i91=
5#14098<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i9=
15#6095<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> S=
KIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6=
/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html> (i915#14098<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#14544<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6095<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +25 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html=
> (i915#12313<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313=
>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shar=
d-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html> (i915#12=
313<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313> / i915#1=
4544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi=
-a-2:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@p=
ipe-b-hdmi-a-2.html> (i915#6095<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6095>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159319v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-r=
c-ccs@pipe-b-hdmi-a-2.html> (i915#14544<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544> / i915#6095<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6095>) +24 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html> (i915#=
14098<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915=
#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i91=
5#6095<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SK=
IP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/=
igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html> (i915#14098<https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#6095<https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +9 other tests skip
>   *   igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html>=
 (i915#12313<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>=
 / i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shar=
d-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html> (i915#123=
13<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other=
 test skip
>   *   igt@kms_chamelium_frames@hdmi-crc-single:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html> (i915#1115=
1<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#145=
44<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#78=
28<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) -> SKIP<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@=
kms_chamelium_frames@hdmi-crc-single.html> (i915#11151<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11151> / i915#7828<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828>) +5 other tests skip
>   *   igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html> (i=
915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / =
i915#7828<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) ->=
 SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl=
-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html> (i915#11151<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#14544<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#7828<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +5 other tests s=
kip
>   *   igt@kms_content_protection@atomic-dpms-hdcp14:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-1/igt@kms_content_protection@atomic-dpms-hdcp14.html> -> FA=
IL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-11=
/igt@kms_content_protection@atomic-dpms-hdcp14.html> (i915#7173<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>   *   igt@kms_content_protection@mei-interface:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_content_protection@mei-interface.html> (i915#1454=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#694=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> / i915#9424=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>) -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@km=
s_content_protection@mei-interface.html> (i915#6944<https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6944> / i915#9424<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9424>)
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-12/igt@kms_content_protection@mei-interface.html> (i915#943=
3<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-14/igt@=
kms_content_protection@mei-interface.html> (i915#6944<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/6944> / i915#9424<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9424>)
>   *   igt@kms_content_protection@suspend-resume:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_content_protection@suspend-resume.html> (i915#694=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@k=
ms_content_protection@suspend-resume.html> (i915#14544<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544> / i915#6944<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6944>)
>   *   igt@kms_content_protection@type1:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-11/igt@kms_content_protection@type1.html> (i915#6944<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> / i915#7118<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> / i915#7162<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162> / i915#9424<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9424>) -> SKIP<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-6/igt@kms_content_=
protection@type1.html> (i915#6944<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6944> / i915#7118<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7118> / i915#9424<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9424>)
>   *   igt@kms_content_protection@uevent:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_content_protection@uevent.html> (i915#14544<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6944<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> / i915#7118<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> / i915#9424<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_conten=
t_protection@uevent.html> (i915#6944<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6944> / i915#7118<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7118> / i915#9424<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424>) +2 other tests skip
>   *   igt@kms_cursor_crc@cursor-random-512x170:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#1304=
9<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049> / i915#145=
44<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt=
@kms_cursor_crc@cursor-random-512x170.html> (i915#13049<https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/13049>) +1 other test skip
>   *   igt@kms_cursor_crc@cursor-sliding-32x10:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html> (i915#3555<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms=
_cursor_crc@cursor-sliding-32x10.html> (i915#14544<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544> / i915#3555<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3555>) +3 other tests skip
>   *   igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html> (i915#14544<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9723<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dir=
tyfb@drrs-dirtyfb-ioctl.html> (i915#9723<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9723>)
>   *   igt@kms_dp_link_training@non-uhbr-sst:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html> (i915#13749<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>) -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms=
_dp_link_training@non-uhbr-sst.html> (i915#13749<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13749> / i915#14544<https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544>)
>   *   igt@kms_dp_link_training@uhbr-mst:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_dp_link_training@uhbr-mst.html> (i915#13748<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dp_=
link_training@uhbr-mst.html> (i915#13748<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13748> / i915#14544<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544>)
>   *   igt@kms_dp_linktrain_fallback@dsc-fallback:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html> (i915#13=
707<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707> / i915#1=
4544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKI=
P<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/i=
gt@kms_dp_linktrain_fallback@dsc-fallback.html> (i915#13707<https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/13707>)
>   *   igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html> (i915#14544=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3840=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>) -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@km=
s_dsc@dsc-fractional-bpp-with-bpc.html> (i915#3840<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3840>)
>   *   igt@kms_dsc@dsc-with-formats:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html> (i915#3555<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840<https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3840>) -> SKIP<https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_dsc@dsc-wit=
h-formats.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544> / i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555> / i915#3840<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3840>)
>   *   igt@kms_dsc@dsc-with-output-formats:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html> (i915#14544<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3555<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_dsc=
@dsc-with-output-formats.html> (i915#3555<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555> / i915#3840<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840>)
>   *   igt@kms_fbcon_fbt@psr:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_fbcon_fbt@psr.html> (i915#3955<https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3955>) -> SKIP<https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.htm=
l> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4> / i915#3955<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955=
>)
>   *   igt@kms_fbcon_fbt@psr-suspend:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html> (i915#14544<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3955<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3955>) -> SKIP<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_fbcon_fb=
t@psr-suspend.html> (i915#3955<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3955>)
>   *   igt@kms_flip@2x-flip-vs-dpms:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html> (i915#14544<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9934<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) -> SKIP<https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip@2x-f=
lip-vs-dpms.html> (i915#9934<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934>) +4 other tests skip
>   *   igt@kms_flip@2x-flip-vs-panning-vs-hang:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html> (i915#9934<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) -> SKIP<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms=
_flip@2x-flip-vs-panning-vs-hang.html> (i915#14544<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544> / i915#9934<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934>) +2 other tests skip
>   *   igt@kms_flip@2x-flip-vs-suspend:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html> (i915#12314<ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314> / i915#12745<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745> / i915#4839<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839> / i915#6113<ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113>) -> INCOMPLETE<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-glk6/igt@=
kms_flip@2x-flip-vs-suspend.html> (i915#12745<https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12745> / i915#4839<https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4839>)
>   *   igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_17776/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.h=
tml> (i915#12314<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
314> / i915#4839<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/48=
39> / i915#6113<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/611=
3>) -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319=
v2/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html> (i91=
5#4839<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>   *   igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling=
@pipe-a-valid-mode:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-d=
ownscaling@pipe-a-valid-mode.html> (i915#14544<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544> / i915#2672<https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2672>) -> SKIP<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-=
4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2672<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other test skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@p=
ipe-a-valid-mode:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-u=
pscaling@pipe-a-valid-mode.html> (i915#2672<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2672>) -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4ti=
le-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html> (i915#14544<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#2672<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +2 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-u=
pscaling.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544> / i915#2672<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2672> / i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9319v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-=
upscaling.html> (i915#2672<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2672> / i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555>) +1 other test skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscali=
ng:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile=
-downscaling.html> (i915#2672<https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2672> / i915#3555<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yf=
tile-downscaling.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544> / i915#2672<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2672> / i915#3555<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555>) +2 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gt=
t:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-dr=
aw-mmap-gtt.html> (i915#1825<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1825>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrf=
b-draw-mmap-gtt.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544> / i915#1825<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1825>) +19 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt=
:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrf=
b-draw-blt.html> (i915#15102<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_159319v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri=
-shrfb-draw-blt.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544> / i915#15102<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102>) +2 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html> (i915#15=
102<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3=
458<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg2-4/igt=
@kms_frontbuffer_tracking@fbcpsr-1p-rte.html> (i915#10433<https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/10433> / i915#15102<https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3458<https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3458>) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mm=
ap-gtt.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9319v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-m=
map-gtt.html> +14 other tests skip
>   *   igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> (i915#976=
6<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@k=
ms_frontbuffer_tracking@pipe-fbc-rte.html> (i915#14544<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544> / i915#9766<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9766>)
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cp=
u:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-dr=
aw-mmap-cpu.html> (i915#10433<https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10433> / i915#15102<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102> / i915#3458<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3458>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_159319v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-in=
dfb-draw-mmap-cpu.html> (i915#15102<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15102> / i915#3458<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3458>) +2 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-mo=
ve.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544> / i915#15102<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15102> / i915#3023<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3023>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319=
v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.=
html> (i915#15102<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5102> / i915#3023<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
023>) +15 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-d=
raw-pwrite.html> (i915#4423<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4423>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
159319v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrf=
b-draw-pwrite.html>
>   *   igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip=
-blt.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544> / i915#1825<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-b=
lt.html> (i915#1825<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/1825>) +23 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html>=
 (i915#15102<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>=
 / i915#3023<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)=
 -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-=
rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html> (i915#14544=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#1510=
2<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#302=
3<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +10 other =
tests skip
>   *   igt@kms_hdr@brightness-with-hdr:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html> (i915#12713<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>) -> SKIP<https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_hdr@b=
rightness-with-hdr.html> (i915#13331<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/13331> / i915#14544<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544>)
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html> (i915#12713<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>) -> SKIP<https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-13/igt@kms_hdr=
@brightness-with-hdr.html> (i915#1187<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/1187> / i915#12713<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12713>)
>   *   igt@kms_joiner@basic-max-non-joiner:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_joiner@basic-max-non-joiner.html> (i915#13688<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688>) -> SKIP<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_j=
oiner@basic-max-non-joiner.html> (i915#13688<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13688> / i915#14544<https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544>)
>   *   igt@kms_joiner@basic-ultra-joiner:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html> (i915#15458<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_joi=
ner@basic-ultra-joiner.html> (i915#14544<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544> / i915#15458<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15458>)
>   *   igt@kms_joiner@invalid-modeset-force-big-joiner:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html> (i9=
15#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i=
915#15459<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459>) -=
> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rk=
l-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html> (i915#15459<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459>)
>   *   igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> =
(i915#1839<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839> / =
i915#4816<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>) ->=
 SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl=
-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#14544<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#1839<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839> / i915#4816<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>   *   igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html> (i915#1=
4544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#=
14712<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712>) -> SK=
IP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/=
igt@kms_pipe_stress@stress-xrgb8888-yftiled.html> (i915#14712<https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14712>)
>   *   igt@kms_plane_lowres@tiling-yf:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html> (i915#14544<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3555<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP<https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_plane_l=
owres@tiling-yf.html> (i915#3555<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555>) +5 other tests skip
>   *   igt@kms_plane_multiple@2x-tiling-4:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html> (i915#13958<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>) -> SKIP<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_pl=
ane_multiple@2x-tiling-4.html> (i915#13958<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13958> / i915#14544<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544>) +1 other test skip
>   *   igt@kms_plane_multiple@2x-tiling-none:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html> (i915#13958<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958> / i915#14544<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@km=
s_plane_multiple@2x-tiling-none.html> (i915#13958<https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13958>)
>   *   igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-=
c:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rota=
tion@pipe-c.html> (i915#15329<https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15329>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_159319v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-wit=
h-rotation@pipe-c.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544> / i915#15329<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15329>) +7 other tests skip
>   *   igt@kms_pm_lpsp@kms-lpsp:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html> (i915#3828<https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3828>) -> SKIP<https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-3/igt@kms_pm_lpsp@kms-lp=
sp.html> (i915#9340<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9340>)
>   *   igt@kms_pm_rpm@dpms-lpsp:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html> (i915#15073<https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15073>) -> SKIP<https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_pm_rpm@dpms-=
lpsp.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544> / i915#15073<https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15073>)
>   *   igt@kms_prime@basic-crc-hybrid:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html> (i915#6524<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6524>) -> SKIP<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_prime@ba=
sic-crc-hybrid.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544> / i915#6524<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524>)
>   *   igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-ar=
ea.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/11520> / i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931=
9v2/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area=
.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11520>) +4 other tests skip
>   *   igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fu=
lly-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11520>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9319v2/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-f=
ully-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11520> / i915#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544>) +3 other tests skip
>   *   igt@kms_psr2_su@page_flip-xrgb8888:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html> (i915#14544<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9683<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>) -> SKIP<https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr=
2_su@page_flip-xrgb8888.html> (i915#9683<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9683>)
>   *   igt@kms_psr@fbc-psr2-sprite-render:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html> (i915#1072<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#14544<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9732<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP<https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_psr@=
fbc-psr2-sprite-render.html> (i915#1072<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/1072> / i915#9732<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732>) +14 other tests skip
>   *   igt@kms_psr@psr-cursor-plane-move:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-12/igt@kms_psr@psr-cursor-plane-move.html> (i915#1072<https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#4423<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> / i915#9732<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-dg1-12/igt@kms_psr@p=
sr-cursor-plane-move.html> (i915#1072<https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/1072> / i915#9732<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732>)
>   *   igt@kms_psr@psr-sprite-plane-move:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html> (i915#1072<https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_psr@ps=
r-sprite-plane-move.html> (i915#1072<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/1072> / i915#14544<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544> / i915#9732<https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732>) +11 other tests skip
>   *   igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html>=
 (i915#5289<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>) =
-> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-d=
g1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html> (i915#4423<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> / i915#5289<ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>   *   igt@kms_tiled_display@basic-test-pattern:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html> (i915#1454=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#862=
3<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@k=
ms_tiled_display@basic-test-pattern.html> (i915#8623<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623>)
>   *   igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.h=
tml> (i915#8623<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/862=
3>) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/sha=
rd-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html> (i91=
5#14544<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i9=
15#8623<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>   *   igt@kms_vrr@lobf:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@kms_vrr@lobf.html> (i915#11920<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11920> / i915#14544<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP<https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@kms_vrr@lobf.html> (i91=
5#11920<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>   *   igt@kms_vrr@seamless-rr-switch-virtual:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-virtual.html> (i915#9906<h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>) -> SKIP<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@kms_=
vrr@seamless-rr-switch-virtual.html> (i915#14544<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544> / i915#9906<https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9906>) +2 other tests skip
>   *   igt@prime_vgem@fence-flip-hang:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html> (i915#14544<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3708<https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>) -> SKIP<https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-5/igt@prime_vgem@=
fence-flip-hang.html> (i915#3708<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3708>)
>   *   igt@sriov_basic@bind-unbind-vf:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17776/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html> (i915#9917<https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9917>) -> SKIP<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159319v2/shard-rkl-6/igt@sriov_basic@=
bind-unbind-vf.html> (i915#14544<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544> / i915#9917<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9917>)
>=20
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
> Build changes
>=20
>   *   Linux: CI_DRM_17776 -> Patchwork_159319v2
>=20
> CI-20190529: 20190529
> CI_DRM_17776: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anongit.fr=
eedesktop.org/gfx-ci/linux
> IGT_8690: 1022f2615722b105176a8cc4ce102896329b5016 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git
> Patchwork_159319v2: 77ca0c5f244b2796408d20cf3c0741094304e09f @ git://anon=
git.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit

--=20
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
