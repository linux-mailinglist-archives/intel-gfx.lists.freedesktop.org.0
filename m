Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFkOB0/G02mqlgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 16:42:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792CF3A44C2
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 16:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A2A10E262;
	Mon,  6 Apr 2026 14:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejM+3W8i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238A10E24D;
 Mon,  6 Apr 2026 14:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775486539; x=1807022539;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lBMYdCeMrXKDt8gT+WAD13Ei4+hM1K/ysxeNNy+0P4k=;
 b=ejM+3W8iLBvnGLq+7D5NDbKHtdaJvwvBOyixXyZ8Yo6hOoRekP30oZ08
 /oz2OHs+PkRvROitw2XQBdyKQaHFa86VuPBkwFu9oGr4yQGfLxgPR8CO1
 WPI77vEqB4EPG3gIuakxtjUDGakDVDWr++JF4lKTjWLfphOfH+XilRp9V
 NLaqArG9KpBo4/PwS5gbrDKXRz81JVswYak2EygYoQMn08F5sS8Y+wCCI
 y6wRKkLiAJ5hIFDE9ySHsKAaI9zirI2HlBXEQAwq+B/vMQws8w0WwvbQ8
 CaXYXfwEg9ZgNpQK6o59+OA5LRzckKpERY86zfI/4+lNrAS/fS1tccMLd Q==;
X-CSE-ConnectionGUID: HoooUIOfQFmVkmJBdq+3kA==
X-CSE-MsgGUID: Fbd/VTqJQVW2l00tacpt/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="86728681"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="86728681"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 07:42:18 -0700
X-CSE-ConnectionGUID: ncUO02/CSra1RlhyZi95Rg==
X-CSE-MsgGUID: 6VrUwcaHQPae3/Y68us6Vg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 07:42:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 07:42:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 07:42:15 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 07:42:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Io3Fs+lQ5MUOg7nzNKsxrhWQdmdlJhskaVZIjpblZSc8uizyPD7MNhwuKZtbcHPvCAvKmrOaSjZaxkSJzD0jd3HWv2l5Ov99Kr2EFmAOKHkGzyd+XXhiriws8fU8XUTzKItQ75ETTbV7GufWrBJ9ghIqdHjqH5p9URDbr9R5MCB/08iR5hZEy1ycXqispZW0men6xqmBXL0L59T1Td39ZWCWPAOEtWUbVNGWWLrV7MBrJDXy0ry42b8MxPAsMOtAGkNYWX+uh+ZWXcyNZwYu/0O8SYEAiqR7ttKqWxDV6oK6B/Rl0u4eEe1ifyBs5y0kD8Z3kNeeOLYdrrLefa89Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lC2BhizdmaQzfdVXQq4bh8Ddmajvw8P+YCxCqREm6nQ=;
 b=L2PRbHyzl8g64D0QH53ELZVeDcygqjw+uohqeD3jDzj9kWJtChnfEjVXyUtkTIf5Pe8B9kgma6Vn2m61SHU7btFYK/R9V9tHk0n2KmEsKtv4f9VpV4N8l+3sND7Uw/fE+oPwXzYp2RMIn19f6foXmmWm0Qpxb68H14MO3Qc1filGE46IOrOBM+BkHvS5rmu3QhMJx6OtpL3ndu7o9g4oVhmv1a1Hi33dlVwaDYVvtdcs97EBU3KaYVUY4pljaKMMnp9m/Q4iy4UUldvx7WiH2+ClpUiZVlh+7SEqwAUelADDwfQm2cP2YFhb087i567zIx4av8jTv+hnJDijzmBtVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8356.namprd11.prod.outlook.com (2603:10b6:208:486::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.10; Mon, 6 Apr
 2026 14:42:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 14:42:13 +0000
Message-ID: <ab78f6b4-fb84-4d4e-8f4d-63f4754b79eb@intel.com>
Date: Mon, 6 Apr 2026 20:12:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/backlight: Fix VESA backlight possible check
 condition
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20260401034332.1321585-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260401034332.1321585-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0039.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8356:EE_
X-MS-Office365-Filtering-Correlation-Id: d07a7374-c2ce-489d-a73b-08de93eab083
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 7uzXvC12Lld6BLXp9gn90yVecJiUJR9H9iU/ZfaYhGuFCA1i4rX7bpxetrawAY+FkYDo87OK+7q0UW6IrPOg799ybkyyto5qybKChOdtml7CmrHOQG+X+B02ZHIlUkHo2Upo/8flv3/uUCEO6FxglLRlPWX4Y0da6KMvBK0E3Z7Mto3aUTJK8S6X3Elubl55JZ0gyTIkRGF+IgqgZ+c0lo1N+l/Yh7bhrnMn6iT9n7MwWPyc+Shm17SO6uuVJI9hAxHQz8uvaMqc9Ljq5LYoT57VjmrS+Hgb55MQ0yDqcLarRItx9Mma3Da07nbMIUTOFCChPk2/WTzMCaRZgwh8bc0IbcGeM8FE9ehVrSHyENbgGIiLYTjvEC6/w8CrHdXyPNPZHhhmD6jlP0N6HjJ/2J5eCYvtcOcTIWS2tX1Tht53vWdYvLJISFemu00uN1hIeuYvfZs5q4m+t6CJoDI+rOsiBsSHPaXHjpOc05ZqTVYV9EcO+H03yeuLs5X+191KM+vXrTOQ5yJapLw81hdbfpoc8GKVt8RS9y9XrK9uSeVh6xYc1qXADEU/bGL8cnhSo+muBcemr1EMH43HfwGsr/r0m3SHIZ0N7dzBI4Jq6PL8UDqfOEHoLFnTA8M7+NLP9Hp4fI4r3wnfbkADb3qlayxtpG+COjNrXRTlwYmJfVhqnLcO4uYaLReQ7DvSirxO3dItQEiQRWBepvKKzmgqEVlElGPkoadCjHMXu9tQ6qU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REZuR2NOdWpjQ2I1eFFreFNPUUU2Zyt3ZTc4VG9SN25oU1FrVy80M1BjS0Zn?=
 =?utf-8?B?Y2NaME0waGFtcy9MOVgycytCMDRyanJyc0tlYjVkeXpvQWw4ZUhvYTJkWTU1?=
 =?utf-8?B?bUg5YzlxdGxCQkpra0o0MEJ3V1lVam5YdEphL1JHOXBtb0w3ZnprOGkveVZl?=
 =?utf-8?B?TTl2ZHNhOWJEKzRSS3FnU040cDdlUk4walhEQ0lMak5zVDNPR3N6VTZqLzVh?=
 =?utf-8?B?RDFRdXA5TDhsaWRpZFFBRVVQQ05aV0pqWm5neGczV2NkeG51aUdFYnBGRzla?=
 =?utf-8?B?QmRTaFRWejl3SHJSUVJQbjIyYUJMVVBTNWtrclhMY0RhQnNRaW1CQjB5d1NU?=
 =?utf-8?B?OUNSblExL1gzcUZmcDVzR0pPU1orVklNa1NubkpsMXRXNVZZQnc1ODFCZVkv?=
 =?utf-8?B?bjM3TCt5UlR1L2JWUkc0Ly9ZYVNGYU15YzBqT0Jqd25yT2V6WEN6eTRtNlNN?=
 =?utf-8?B?RENldWtOK2FNQnhDRUVkMmJzbmc2NlZZdUJKNlVoNHk0RmZvV0x1NnVtK1p6?=
 =?utf-8?B?ZTRuQlQ3WEwrQThEMklPQmpsYXdzMXE0bGo1dDVCL2tFUjFXSE40MTEvc2ZX?=
 =?utf-8?B?QldNdGw4eXBKYlJzaElXbU9RNU5nbDFBZTNUc002OGw3eE1pWnBXdytLS0dC?=
 =?utf-8?B?eW0vTmZEUit6dlNQL2tYUVVNZTlwb0VFVVppc2ZpTG8vY293Y3hWa2xTL3E3?=
 =?utf-8?B?OWFLVGx0amgxMU80UEg5dDVPaGYvbVEwU0hUVlkreGI0N0ZnTzRCSExxRXVP?=
 =?utf-8?B?eWQzTGw5dzRLUERCNVBQNldGU3Z2T0ZuTFpxdFNVZUY0cUdkMjJNdGs0dTZT?=
 =?utf-8?B?M0o0eVF5V3NVRzh4ekQ0bXBPT1haYXhpWFEyWWlTcjlPQXJLbFBFVzM2NUtD?=
 =?utf-8?B?dEF2T0h3MTBpQ3hXbHR0T0pHWkdiNjZmNWU3U2xZVm8rQVN6cjQ1SzlPOFFH?=
 =?utf-8?B?MHhXdzNTaWx0dnR2TzlSU0RrSW91cTdEanVsYUxvallYaklGMWw2UVAvYW03?=
 =?utf-8?B?cGRobGl1SnR3OTBGMnB1SXlLMTRUeHBybmplUkJPVlRZb3J5WmJzMC9SZzNq?=
 =?utf-8?B?dG8vUnlodmpraDRGV0RXc0RyMmxrSHJRdkdzNFRycDN1dnRuS1E4VmJzZWxz?=
 =?utf-8?B?REhyVlBQTTgzb1ZaOFZVeE1qZFZxV2lRMU8xelJIazh6dnhPeVAwQmNkbHZp?=
 =?utf-8?B?MWJJbjVPdHFtRVlncGEzaGxtcTVWc2dYRlFrQlRXQkNWaXJiK0tWbHVFNDFK?=
 =?utf-8?B?S2ljbDkxS3dtTEk0WGFkN0dkdExzSjdJalRZSC9YbEoxNDRoMWpUK2V4UkZO?=
 =?utf-8?B?V2xERzlPcUZrbnNnemhWelNPYWJIWXpXZUR6dm9QMWU3QnQ5Mk5TdVlsTVB5?=
 =?utf-8?B?QzIvemVLUDl3N1h3bk1GUFQyNWVybURoczdYRmdVYUpOVGdUL0c1R3U4WHFw?=
 =?utf-8?B?RFdrNjlJYTJhUk1xbnkyKzdZRHEyU3Nyays5NTZFYUxFVldlUzBGN3dYZWtQ?=
 =?utf-8?B?bU9ST3c4em5iMjRZTDNWK3Y2QXRPcG9wL0JWbmdlRmFZd0FrMy9GNFJ2M2NI?=
 =?utf-8?B?VTkyMHhXWkJkY1RyYmdSNlBaZkRwY1JPQTNYQU9UOUQxUUx0dmhWL3V4QlFl?=
 =?utf-8?B?K1lzUnA0Z0hBVzZxU1dXZ3hCR3R5TnFzNS90QmFYZTN2RCs5N3BVbk9qMHFM?=
 =?utf-8?B?cVZqU2Z5amt4cEFhUzBkN21tN1Jjb21oZ3NYbU5zSjFrUTkzc1hnVWNvWDB3?=
 =?utf-8?B?NFJoaHk2bEpaa2MwNXhscUtMa3BrTUd4RUcxWFF3RnNiN2dtbTFnTUlrQ1ZS?=
 =?utf-8?B?Qk5EajJvdURhSks3cnhzNWt6R0pWQUYycWN2aHFFRlVHR1l1NEpJZkFMdDNX?=
 =?utf-8?B?ejlFeVJlZjBXWHp5bkV0cURyeFp5c1A5L1RkdTV5ejRCajhuaW4xbnNYZUNr?=
 =?utf-8?B?azAzYjliMXlhZitpNXMxVzR5YWZ6VDQ0eGRrVWZXazEweUdoS1NqNFhKMW83?=
 =?utf-8?B?YnFoRUVEaEJaaEtpb2wwZW1YQjcwbHlGOTN1L2NHK1pSOXhSbUJOMnRndHRr?=
 =?utf-8?B?Z0Z1eUUwdll4NW4wM2dtNXNyUTUvV3pEK0U5MExkeWVGa1RwdDFQNzVmK3N5?=
 =?utf-8?B?a2lCWkpQNGtkcnMrd2FiK3YyTi9NRXduQ0pEOVpONklUWmpFM3BJR3BaOUZs?=
 =?utf-8?B?Y043bkZmRldvbjJyNXpQK1phN2ZDcEZZMWlteTZ1dnkzWVRmdWR3WUh6RllN?=
 =?utf-8?B?Z2U4cmRiOHZMM0RaWmxBdkx1NTJnRU5DVlZJbGFSOUpsY3B6ZGNxQnVrR3lG?=
 =?utf-8?B?aGR5U245WFBaVmlRM2czZ3N4WmtvZGhpUit1YUkyakVWRmQvZ3hKTHp3S1RR?=
 =?utf-8?Q?hSDF/TgcacwyoiPo=3D?=
X-Exchange-RoutingPolicyChecked: PnzBTigMEAwhrRiWvnp2C4sj5DLw0tiZV111DJso/jaUFNXJVQrVcxWdVlywt7XnhkC5DJDOBG2cYT2V9NWLjtMWoPEvJHG8gGQdTR6x8cTWI87x8ajYNqk+k1AiGosADNPJOaROOR5xkm+Pg7oMSIs4Tcy7cBenOJ36YzoZc9zFZpOdtdLYgLtsphR13WxVKLs/RlEqSPV3nJtVJ5eepSUXAuKnL4rTyWX0V9L0tjF1qHHjVg1w91/SPD0SwIes68uShQRzhmbPoydrS8Y2bZPoERQ6Vz3Y2LZjsCtDGaQyMT9gSqfgygiNnDjFzIX/bwWiFWdTUgABt9cHPujnRQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d07a7374-c2ce-489d-a73b-08de93eab083
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 14:42:13.0114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NBt0uSY6hGbXfMSxK1Ab71WnnWaNFTToM2vZ5Ih2mAOfy7XlTXTMtF0CcOWce2gtDYLtW09NYardNI5sLIi6nNX0/WEHtrUcQ+CTJdlqWeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8356
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 792CF3A44C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/1/2026 9:13 AM, Suraj Kandpal wrote:
> VESA backlight is possible through AUX only when
> BACKLIGHT_AUX_ENABLE_CAPABLE is true or when we use BL_ENABLE bit

This statement seems a bit wrong to me.

 From my understanding of Section 12.2, Display Backlight Control Using 
DPCD Registers (quoting part of spec below):

Backlight Enable may be implemented through the use of an AUX command or 
the BL_ENABLE eDP connector pin.

Backlight Enable control capability is indicated as follows:

  - Through an AUX command : BACKLIGHT_AUX_ENABLE_CAPABLE bit in the 
EDP_GENERAL_CAPABILITY_1 register is set (DPCD 00701h[2] = 1)
  - From the BL_ENABLE eDP connector pin : BACKLIGHT_PIN_ENABLE_CAPABLE 
bit in the EDP_GENERAL_CAPABILITY_1 register is set (DPCD 00701h[1] = 1)

So, backlight enable is possible in two ways: AUX-based or via the eDP 
BL_ENABLE pin.

Similarly, backlight brightness adjustment can be done via AUX-based 
control or PWM pin-based control.
It means there can be three configurations:

1) Full AUX-based: Enable and adjustment both via AUX. We currently 
support this
(apart from the AUX luminance-based backlight control).

2) Hybrid: Enable via the BL_ENABLE pin, adjustment via either AUX or PWM.

3) Fully PWM pin-based: Enable via the BL_ENABLE pin, adjustment via PWM.

(As far as I understand, AUX-based enable and brightness adjustment via 
PWM is not possible.)

So, the first statement needs to be corrected slightly, as it implies 
that the BL_ENABLE bit is part of AUX‑based backlight control, which is 
not the case.

Also, I think this can be added as a note before the call to 
intel_dp_aux_supports_vesa_backlight(), something like:

Currently, VESA backlight is supported only via the full AUX-based 
mechanism (or via the AUX luminance-based backlight control).

#TODO: Implement eDP BL_ENABLE pin-based backlight enable and hybrid mode.

> to enable backlight. Since that is not implemented we need to make
> sure we do not try to manipulate backlight when
> BACKLIGHT_AUX_ENABLE_CAPABLE is not set.
> Also fix return value when condition is not fulfilled.
>
> Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")


I think fixes should have this commit :

0fb03890d182 ("drm/i915/backlight: Check if VESA backlight is possible")


> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index d0c76632a946..138d5b5e5482 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -615,8 +615,9 @@ check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
>   	int ret;
>   	u8 bit_min, bit_max;
>   
> -	if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> -		return true;
> +	if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP &&
> +	      intel_dp->edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP))
> +		return false;


Hmm... we already validate DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP in 
drm_edp_backlight_supported(), which establishes that the TCON supports 
backlight adjustment.

At this point, for AUX‑only VESA backlight, we should explicitly check:

DP_EDP_BACKLIGHT_AUX_ENABLE_CAP (00701h[2]) : backlight can be enabled 
via AUX
DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP (00702h[1]) : brightness can be 
set via AUX

So, I do agree that both checks are needed, but IMHO we should check 
Enable capability first and then the Adjustment capability.


Regards,
Ankit

>   
>   	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
>   	if (ret < 0)
