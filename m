Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F811A5CB26
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 17:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040B010E2F1;
	Tue, 11 Mar 2025 16:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VevG9aGp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9611F10E230;
 Tue, 11 Mar 2025 16:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741711837; x=1773247837;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7iAS8xE6TPu8iPaCrBySH0ed37+J8eiWaNGjdzE7kyo=;
 b=VevG9aGpn2/LQr0fBgrO7MGkP1zp2hLMN1abMwtI2w4GfQdXFbqcviFn
 35LpxbIwE2w1PAkzfKe/GMsvFoh0193ZIQx9fXgnUjcKJv8mcRZO6zZyi
 +KX+Q3E+ZSS0KgDmt86ggk4ZwIi9qtcICZvEImhDsqBJOG75zJIY0pvzw
 3v5PR1dXuXnAXBvrXiZFJIYPSzbm3L6SxqE2AZQ2HqwqiYCgJPyvjL8/1
 XVLmVnwceuCCIPAILBjtEb4KPB92nMdk5v2DzZLyUdOOQE7yTk1zbxeCY
 7AyenzP4jhXGOJWhe+NQh9hqwKECBBY7h1yjux4p7ju0kFO/LacVRsp0o g==;
X-CSE-ConnectionGUID: QjVTltR5S+y3w2Bjs+MQSg==
X-CSE-MsgGUID: 1y9Cx9mUQVOy4PoGXe4OkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42481994"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42481994"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 09:50:37 -0700
X-CSE-ConnectionGUID: FdjE/2FDSE6uRxiIcZUTJQ==
X-CSE-MsgGUID: e2/gspj1QsevcCg49SnsOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="121273512"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 09:50:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 09:50:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 09:50:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 09:50:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZbYZ55bDqOPvgWjKd+FsWBUIL9tgPSp7gEG6wxBqm0f6GOHfSSdWpufNJdPCiJFIfsT3cbak0XnDpQRj9XFjabS09ZEqUyiQBe0/s+ucV/NakYDL46s5sfE1KpQUNq+xvmSZ0DDTTuPrYDcLEZP+xMn41rHdQjZlzozvMFlWUT/RScPYiJ63i/1V08TM0THRvzYD0sSHRizbyY0n50owtbqrlH4JM3ayzTY/FuYPoL0BUq86yHKgLtUCwzLCG8TXWjfU6l+oh11zt8j5FL0rHx8LSnzqRipWjy8ZY58HbfXEAA0PfbfvWDeuVqolyAPSz4f87vvucgk4YDVa50GdrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LVDPYuyMAZrzSYdxdUytICtGtsdG5uWcIFZXggHhFBo=;
 b=OqWOTw5G1NibjmlvOMYGg+1nSerpWp/ITFkhj4hWsoR6fLB/cQ9VvN7ItxslI0HeDb2CgHyhbUe1jTVSbkSFYBMgbDh/VgVEdni/cdOAlF3/JFEEOLrDDVfbSoVehclmA9zKuw4Q0pOYYKQJeEy7UoI8uRoUUmWwQ26xUBdq11a2LHE6E9A9/Sh5oWVIvFTh/D2L6u8S4h0tsL+IeLy5bOSMj28oaqJ55mPfBlhLNyJ4RIuEZ+h09iFnaWcdrcV5SwZMzbwVYzuBvyHuYufPX6O9io7b/q76LBf8DplxMRZAXc2mwRWE4ob1zZ2lxixVp4beZHbH+k5FOOTsXCvBrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 16:50:31 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 16:50:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z9Bo4RVkY5mnYsmo@intel.com>
References: <20250310-xe3lpd-bandwidth-update-v4-0-4191964b034d@intel.com>
 <20250310-xe3lpd-bandwidth-update-v4-1-4191964b034d@intel.com>
 <Z9Bo4RVkY5mnYsmo@intel.com>
Subject: Re: [PATCH v4 1/3] drm/i915/display: Convert intel_bw.c internally to
 intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 11 Mar 2025 13:50:24 -0300
Message-ID: <174171182470.59796.16290700265728873513@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0051.namprd04.prod.outlook.com
 (2603:10b6:303:6a::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7715:EE_
X-MS-Office365-Filtering-Correlation-Id: 57fcc197-1554-43ba-cc08-08dd60bcd546
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkVUbG5DdHJHTTVpcDlkU1FWMlVDSjdJR1lidHZEcTZTR3pMTDlTc1Z5aEUw?=
 =?utf-8?B?VXJHUUh4SU9veXh3ZU41MlNCYjMyZWVMYk8xb0lVYUVMY1RLWXNYbmJwdjJF?=
 =?utf-8?B?bmNQYmhNYkJvWGhZTk9jQkg2TGR6ZEF5ZDR1TnZrK0QrSktjWHpEZnpiSS9V?=
 =?utf-8?B?TUxPQmdMOG8wMWl5OGxhU29sSG9rYXBVV1VoUEJ1c240Q3V1VCtXd2NnMUdx?=
 =?utf-8?B?TnIvVHN0NHJST0tZRThCMzZiU0o5Vk55Yi9FR1BBeTd3Z1doTktsOUJrcXVF?=
 =?utf-8?B?YjZiUHkxVW9seWVoa1hWMS9Ld1NWdHBub21zS05NaWUvbVZsaU8vRGErbFBu?=
 =?utf-8?B?VjRXVU8xdWEwakZmeDVYTEZ4SDRiVzV1ODJ0M2lnT2lRdjRqQTRkL3BtaVEw?=
 =?utf-8?B?MDlDTmNQNXV0Vi9lY1dzUldoTlppczFxWnk5TzRTNERXY0xHNlBUMEVPVi9y?=
 =?utf-8?B?S2ZMRmZjN2tQaVBBSERTOTdXQTlaRXBVcGcxam1Zc1BlSVpaYysvaVMrdmlZ?=
 =?utf-8?B?b0RrS3V2V1IwamdKc3NFZGN6VjAySkNaOHA0bENMRmZMcmlKdm1QRXRTMHd0?=
 =?utf-8?B?MkpqRDcwRXNkazBBOTBIMjNOWTFDbzlwS0lyYU11bkI4MEQrbHQwWXRHQmtv?=
 =?utf-8?B?S0pzTTMzM2dxb043d0RObldKOGFiVmMrNk5xWGFkODhXR2FDYzdVMkx6QVNT?=
 =?utf-8?B?b09HclYwT1REZy8wQVJ1TGxMK1pqZUhFVk1FajdmeGc2WXlMMnB4OWxvT21B?=
 =?utf-8?B?YXNBZVZqV0ZmN2sra0FIZmJLcXlHVm9QbklTb2drdEZ4VGhLT1lsUW5VUFBD?=
 =?utf-8?B?Tjh1NUVqUExPSktNZjQxcGpGb2tiVzVKVjZ4S0VzVnkvV0M4YVNrNlBDQzlw?=
 =?utf-8?B?ajJkTG5Kd3ZqRHFKc2k2TEJUSnNTNWR5L2tPQ3QydzF5VVM4cFpJZnpQa2Mv?=
 =?utf-8?B?WmlYdjVEVWZVL1p1SE50L04vTk1OM2ZVLzFCclpOMy8vWFRWM1NTTkZKWkRN?=
 =?utf-8?B?Z3RvL1hNNW5LejR3OUVOVHNWS25EbzVNN0lnbGtmVWM0bnF0ZDJ0MXE3eFNL?=
 =?utf-8?B?dXhxNWtvU1pMMmlQci9Vb256K3RKVXlmRnFrYUVYUlZSV1ptV294R1RHdXg4?=
 =?utf-8?B?cVRneTF5QnNHL2tDemdSS3NCOWVZMy9adXNOenZnS3Q4QVBGNGUramZxY2V1?=
 =?utf-8?B?aVVRNWhlZWhXYlQ2aHBoUWZZVHl3TTBZODcvWmV6Vkx6UWVtV3ZYZENxdlpU?=
 =?utf-8?B?bC9qaWs1a1RlejZDdE1aUHhIRld3SllieEh5ZzZ3R1EwbjZMRTRxbjBqcnps?=
 =?utf-8?B?QlRYbFgxcFBVTzlZSXdvTXZSUUgyZ212UXNhTDl2R05QZzl2aWROZUlTZlUx?=
 =?utf-8?B?WG1BcjdLR0xNV1IzQlJmbmlyOW5vRVBxQ3lXb2RIZ3gxTkJKU0dxMTJHbUdF?=
 =?utf-8?B?TEtTakVQaVpzZHcrMmpVcG9HZGRCclYxdlZCYjJqc2V1cExGa1pCTmRUQmhC?=
 =?utf-8?B?emVraG1USWJmQUFJNnhiaklrZmFmWTZkYUQ4TldYbGIvZEUxKzdleHpDMjRI?=
 =?utf-8?B?UjlBWlNzNjJiN0dPUlV1RU1IbFc0TWhXbHl6M1FIdU03aTAyeVVTQ3MyMFZq?=
 =?utf-8?B?WkhIMDhPNTRtU2FUZVBLOG1CamgwOFB4QzViMllGODBLMWZ1cmhIYkZ4WnUr?=
 =?utf-8?B?c2hDWSt2STFnUzJndW82MHF1ZC9jUVJQY21jVWhkc3F4SnlORnpYTDhNaHVo?=
 =?utf-8?B?RS9FdldabTRMb010VEtiRzk3ajlFWFRYaE8rQnBFREttb2hmVzdwOHVPRUNT?=
 =?utf-8?B?aU9jdWszLzFWY0k3TWdSS1VjOE53NmRmdGsvNVpONlBsR2JpYkswa0hxcEdl?=
 =?utf-8?Q?iMUi14Sg2Ok8p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUR0cVp1bTVKUEkxZVFENzFTamhZS1N1SjJRS21pUEFXNW9tR0tLRmdaUzVx?=
 =?utf-8?B?dkhCWmkycEdXYUM3TVNjTXZDc0NzNitBTlExQTN3NUxoUm1jZzEwWExmQUgx?=
 =?utf-8?B?dDBra0ZoQW81eEhmVHhCYVFlOTRlamIrS3dYeExnejlmV3cxVm9hL3A0eStF?=
 =?utf-8?B?MWhxTWhRTTZNdWVBZ3BPUWdObElJYkNDakVIK1FJU0lIbmk3djlrY2pkcXIy?=
 =?utf-8?B?Z1BXR2htTGpvUUc4Qm1TRXdOekVDelhtVXFYWFB4RlBzZ0l1bU4ycTBCL2ZL?=
 =?utf-8?B?eVAxeFdPUFlKR2RudmVEODVaR1cyNkc2aWg4OVF6WlQ3RzUxdnc1NElPbkZ4?=
 =?utf-8?B?VnNxbk9yM21uUjU2YXE5SEZDTjFaelA3cjFLNnE1MTVWZGRkSjB3UmxqNTF4?=
 =?utf-8?B?OGxJQVMxM2hlQ3NTUERGd0t2K0MvaUd0ZmpDZlVBc3BjTTE3eExsMFFENHlS?=
 =?utf-8?B?N0Q3cDhwZFkzZTJoRDNzSnhoU2RXYlhlL3lsMVV5aEhhQ012NVJZMjdMUTYy?=
 =?utf-8?B?VFA4NHlRNHREKzBnU0NsbFpoOUJvNVlsbHpSUnZzbDlxRUF4Mnc1WVh2RkVn?=
 =?utf-8?B?WWhnZlZobERrVTNlRVg5cU5Db2tHL3gwTWJlRVcxRHg5aDE2U1VPQTZ1MVh6?=
 =?utf-8?B?Z0M5SEpsMXVaKzN0YTJWdTZVNU81QUM2Rlcyck9OcWY3NEVIeVNnYks3VmEv?=
 =?utf-8?B?bXBnWGlzckZvWEh0TUg5dnpTdFlXSnNRM1RqRklqUmU2NjNuV3hINzJqTklW?=
 =?utf-8?B?WWs4NkxsUFh6Z3lQRmVPa1B2dUpuaVZoRXErcnE0bWt2VkNhdm90ZlN5U1VJ?=
 =?utf-8?B?Z2w1MElmbm1jMVFIWGFyNDlqR1A2RVQ4NHdlRlNaMFQvU0FwQ1lXQ0h2dmdR?=
 =?utf-8?B?TnZucnNueGxjS2krOE02Y3NJeFRyVmJmdVQ3SlZNMzYxdCthRm8xaWd2UFBz?=
 =?utf-8?B?dTMzTFZCaHZKQUJTdHdDUHprR250aythTjc4em8vdno0d3RQRkQ2VzM1c1ZY?=
 =?utf-8?B?U0hPL01YQ1VUYkhxVjNBajJyTkoyc01OMG5keVVhanRERzU3d0tTbDJtWVF2?=
 =?utf-8?B?OTNvbk96dWcwNldiS1hNQVk5cGQ4b2FjRDBOT2t3UGxOeVk1YXhQTTZyejNH?=
 =?utf-8?B?MmUzcXljemJHTi8zbFk1ZHVpKzF3Yk5SeERNQlFCWnU3TkY4SmI4d1FWYnRi?=
 =?utf-8?B?djQybGptQ0hiT0JZQ2d5NS9iL3NRQ0tIKzZMRVhxTjRCNGozRDAyeDNVTTJq?=
 =?utf-8?B?SmdlbU1Tak02d3VGZXRpTDJlWGpjVDBENy95N2VvYUpHaktKRWk5cDRFQytK?=
 =?utf-8?B?NTRZVUZCQVNqbWdaNDR4dndwaDBUNzNoeWtVd2VqV3orL1ltakJ5T0Z2VnJT?=
 =?utf-8?B?NG1hdVZ3MjZaSGhTM0ViVWtnVlZ2ak1rc0lFRWF6VjRZUW1UbFU5ZnBEdnBI?=
 =?utf-8?B?cmkrOUlwaEFSdHlSckc0eWRhRVlxbFlmeDZXUWgzS3ZnWjVWRFlUTU5VczBS?=
 =?utf-8?B?WWcvWWJZN0MyaUVJZ2VCQkpFTGlwQkhCMjlzc2M5KzdwaGFxRWEyMm4wcXZE?=
 =?utf-8?B?SC9zNHNIZXNVNzVhY3BNRm5UUXhsdENnWkZyTW1MT3R2UUQ5L0JDekFGTHBk?=
 =?utf-8?B?MFNsZzRsUFNBWTVjMjlEc1hISlVtQmpzNkdOOVgzUE9ZdkFBeEt5akZ5WlZz?=
 =?utf-8?B?Uk02RVpzcHMvRWhjMjc5Z2w1VGxSVGhrMHI1VmpzOGdMbytScUdDdHhKcXB2?=
 =?utf-8?B?ZkdSVDlFVkRXZENtNFZaR2Z0VGpqb09PaC9kY3ArVm5BVGU2SEd3Y0FaSVMx?=
 =?utf-8?B?V001NGlTd1VaSHZNWTN3UytWbGpUUGFwK202QU11cU9YbUxlZWZsWGIvRW80?=
 =?utf-8?B?OVkwRGlyakhXd2xVbXQwNWNLcVBkODgvbnViR0NnL1hvZkl0Sm1STEhzZlhS?=
 =?utf-8?B?RWxKeXlzbyt4MlV0N0pweXF2Q0JlUURHd21rbkIrL3RCREo4TnRqUk05QTBi?=
 =?utf-8?B?azhLaUI3ZWkxeFRwMUJHelpoaHgwWVhaYnd0UjFBcjl2empxUVhtSjZlMmlQ?=
 =?utf-8?B?bTdhWjhOUTFldm43eFhuU0VwRnNneVlZRUJXbzlxVDJiT0dFL256MEpVdGdO?=
 =?utf-8?B?Qm1Tc1BOa3NPVFcwdFRYMkt6Yi9GQlZTQ1BzN0V6cGFXeFB5NGFXRS9UZmQ2?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57fcc197-1554-43ba-cc08-08dd60bcd546
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 16:50:31.4218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l7ah7XtRsDV0zFDdubeGgU5uqTJXXjh+9GNR87T9Wbv/AkKH3yeDcVbkSTkDVCQNavQOMush07cUzycc96ue3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7715
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-03-11 13:46:25-03:00)
>On Mon, Mar 10, 2025 at 03:57:58PM -0300, Gustavo Sousa wrote:
>> Update intel_bw.c internally use intel_display. Conversion of the public
>> interface will come as a follow-up.
>>=20
>> v2:
>>   - Prefer intel_uncore_read() for MCHBAR registers. (Ville)
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 417 +++++++++++++++++--------=
-------
>>  1 file changed, 218 insertions(+), 199 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 048be287224774110d94fe2944daa580d8dc20a6..633b3ad4b6b50b6ff56483eb=
836ee31d5dfdecbf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -11,6 +11,7 @@
>>  #include "intel_atomic.h"
>>  #include "intel_bw.h"
>>  #include "intel_cdclk.h"
>> +#include "intel_de.h"
>
>Should't be necessary now?

Oops... Yep.

>
>With that sorted
>Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

--
Gustavo Sousa

>
>>  #include "intel_display_core.h"
>>  #include "intel_display_types.h"
>>  #include "skl_watermark.h"
>> @@ -39,14 +40,15 @@ struct intel_qgv_info {
>>          u8 deinterleave;
>>  };
>> =20
>> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_=
priv,
>> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *display=
,
>>                                            struct intel_qgv_point *sp,
>>                                            int point)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 dclk_ratio, dclk_reference;
>>          u32 val;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0=
_0_MCHBAR_PC);
>> +        val =3D intel_uncore_read(&i915->uncore, SA_PERF_STATUS_0_0_0_M=
CHBAR_PC);
>>          dclk_ratio =3D REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
>>          if (val & DG1_QCLK_REFERENCE)
>>                  dclk_reference =3D 6; /* 6 * 16.666 MHz =3D 100 MHz */
>> @@ -54,18 +56,18 @@ static int dg1_mchbar_read_qgv_point_info(struct drm=
_i915_private *dev_priv,
>>                  dclk_reference =3D 8; /* 8 * 16.666 MHz =3D 133 MHz */
>>          sp->dclk =3D DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference)=
 + 500, 1000);
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0=
_0_0_MCHBAR_PCU);
>> +        val =3D intel_uncore_read(&i915->uncore, SKL_MC_BIOS_DATA_0_0_0=
_MCHBAR_PCU);
>>          if (val & DG1_GEAR_TYPE)
>>                  sp->dclk *=3D 2;
>> =20
>>          if (sp->dclk =3D=3D 0)
>>                  return -EINVAL;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_P=
RE_0_0_0_MCHBAR);
>> +        val =3D intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0=
_0_0_MCHBAR);
>>          sp->t_rp =3D REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
>>          sp->t_rdpre =3D REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_P=
RE_0_0_0_MCHBAR_HIGH);
>> +        val =3D intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0=
_0_0_MCHBAR_HIGH);
>>          sp->t_rcd =3D REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
>>          sp->t_ras =3D REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
>> =20
>> @@ -74,22 +76,23 @@ static int dg1_mchbar_read_qgv_point_info(struct drm=
_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_p=
riv,
>> +static int icl_pcode_read_qgv_point_info(struct intel_display *display,
>>                                           struct intel_qgv_point *sp,
>>                                           int point)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val =3D 0, val2 =3D 0;
>>          u16 dclk;
>>          int ret;
>> =20
>> -        ret =3D snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSY=
STEM_INFO |
>> +        ret =3D snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM=
_INFO |
>>                               ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point=
),
>>                               &val, &val2);
>>          if (ret)
>>                  return ret;
>> =20
>>          dclk =3D val & 0xffff;
>> -        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_pri=
v) >=3D 12 ? 500 : 0),
>> +        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display=
) >=3D 12 ? 500 : 0),
>>                                  1000);
>>          sp->t_rp =3D (val & 0xff0000) >> 16;
>>          sp->t_rcd =3D (val & 0xff000000) >> 24;
>> @@ -102,14 +105,15 @@ static int icl_pcode_read_qgv_point_info(struct dr=
m_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *d=
ev_priv,
>> -                                            struct intel_psf_gv_point *=
points)
>> +static int adls_pcode_read_psf_gv_point_info(struct intel_display *disp=
lay,
>> +                                             struct intel_psf_gv_point =
*points)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val =3D 0;
>>          int ret;
>>          int i;
>> =20
>> -        ret =3D snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSY=
STEM_INFO |
>> +        ret =3D snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM=
_INFO |
>>                               ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, N=
ULL);
>>          if (ret)
>>                  return ret;
>> @@ -122,10 +126,10 @@ static int adls_pcode_read_psf_gv_point_info(struc=
t drm_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>> +static u16 icl_qgv_points_mask(struct intel_display *display)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 qgv_points =3D 0, psf_points =3D 0;
>> =20
>>          /*
>> @@ -142,18 +146,19 @@ static u16 icl_qgv_points_mask(struct drm_i915_pri=
vate *i915)
>>          return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT=
(psf_points);
>>  }
>> =20
>> -static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_m=
ask)
>> +static bool is_sagv_enabled(struct intel_display *display, u16 points_m=
ask)
>>  {
>> -        return !is_power_of_2(~points_mask & icl_qgv_points_mask(i915) =
&
>> +        return !is_power_of_2(~points_mask & icl_qgv_points_mask(displa=
y) &
>>                                ICL_PCODE_REQ_QGV_PT_MASK);
>>  }
>> =20
>>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>>                                    u32 points_mask)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          int ret;
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 14)
>> +        if (DISPLAY_VER(display) >=3D 14)
>>                  return 0;
>> =20
>>          /* bspec says to keep retrying for at least 1 ms */
>> @@ -164,27 +169,28 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_=
private *dev_priv,
>>                                  1);
>> =20
>>          if (ret < 0) {
>> -                drm_err(&dev_priv->drm,
>> +                drm_err(display->drm,
>>                          "Failed to disable qgv points (0x%x) points: 0x=
%x\n",
>>                          ret, points_mask);
>>                  return ret;
>>          }
>> =20
>> -        dev_priv->display.sagv.status =3D is_sagv_enabled(dev_priv, poi=
nts_mask) ?
>> +        display->sagv.status =3D is_sagv_enabled(display, points_mask) =
?
>>                  I915_SAGV_ENABLED : I915_SAGV_DISABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>> +static int mtl_read_qgv_point_info(struct intel_display *display,
>>                                     struct intel_qgv_point *sp, int poin=
t)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val, val2;
>>          u16 dclk;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore,
>> +        val =3D intel_uncore_read(&i915->uncore,
>>                                  MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
>> -        val2 =3D intel_uncore_read(&dev_priv->uncore,
>> +        val2 =3D intel_uncore_read(&i915->uncore,
>>                                   MTL_MEM_SS_INFO_QGV_POINT_HIGH(point))=
;
>>          dclk =3D REG_FIELD_GET(MTL_DCLK_MASK, val);
>>          sp->dclk =3D DIV_ROUND_CLOSEST(16667 * dclk, 1000);
>> @@ -200,29 +206,30 @@ static int mtl_read_qgv_point_info(struct drm_i915=
_private *dev_priv,
>>  }
>> =20
>>  static int
>> -intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
>> +intel_read_qgv_point_info(struct intel_display *display,
>>                            struct intel_qgv_point *sp,
>>                            int point)
>>  {
>> -        if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                return mtl_read_qgv_point_info(dev_priv, sp, point);
>> -        else if (IS_DG1(dev_priv))
>> -                return dg1_mchbar_read_qgv_point_info(dev_priv, sp, poi=
nt);
>> +        if (DISPLAY_VER(display) >=3D 14)
>> +                return mtl_read_qgv_point_info(display, sp, point);
>> +        else if (display->platform.dg1)
>> +                return dg1_mchbar_read_qgv_point_info(display, sp, poin=
t);
>>          else
>> -                return icl_pcode_read_qgv_point_info(dev_priv, sp, poin=
t);
>> +                return icl_pcode_read_qgv_point_info(display, sp, point=
);
>>  }
>> =20
>> -static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>> +static int icl_get_qgv_points(struct intel_display *display,
>>                                struct intel_qgv_info *qi,
>>                                bool is_y_tile)
>>  {
>> -        const struct dram_info *dram_info =3D &dev_priv->dram_info;
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        const struct dram_info *dram_info =3D &i915->dram_info;
>>          int i, ret;
>> =20
>>          qi->num_points =3D dram_info->num_qgv_points;
>>          qi->num_psf_points =3D dram_info->num_psf_gv_points;
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 14) {
>> +        if (DISPLAY_VER(display) >=3D 14) {
>>                  switch (dram_info->type) {
>>                  case INTEL_DRAM_DDR4:
>>                          qi->t_bl =3D 4;
>> @@ -250,7 +257,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>>                          MISSING_CASE(dram_info->type);
>>                          return -EINVAL;
>>                  }
>> -        } else if (DISPLAY_VER(dev_priv) >=3D 12) {
>> +        } else if (DISPLAY_VER(display) >=3D 12) {
>>                  switch (dram_info->type) {
>>                  case INTEL_DRAM_DDR4:
>>                          qi->t_bl =3D is_y_tile ? 8 : 4;
>> @@ -265,7 +272,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>>                          qi->deinterleave =3D is_y_tile ? 1 : 2;
>>                          break;
>>                  case INTEL_DRAM_LPDDR4:
>> -                        if (IS_ROCKETLAKE(dev_priv)) {
>> +                        if (display->platform.rocketlake) {
>>                                  qi->t_bl =3D 8;
>>                                  qi->max_numchannels =3D 4;
>>                                  qi->channel_width =3D 32;
>> @@ -284,39 +291,39 @@ static int icl_get_qgv_points(struct drm_i915_priv=
ate *dev_priv,
>>                          qi->max_numchannels =3D 1;
>>                          break;
>>                  }
>> -        } else if (DISPLAY_VER(dev_priv) =3D=3D 11) {
>> -                qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM=
_DDR4 ? 4 : 8;
>> +        } else if (DISPLAY_VER(display) =3D=3D 11) {
>> +                qi->t_bl =3D dram_info->type =3D=3D INTEL_DRAM_DDR4 ? 4=
 : 8;
>>                  qi->max_numchannels =3D 1;
>>          }
>> =20
>> -        if (drm_WARN_ON(&dev_priv->drm,
>> +        if (drm_WARN_ON(display->drm,
>>                          qi->num_points > ARRAY_SIZE(qi->points)))
>>                  qi->num_points =3D ARRAY_SIZE(qi->points);
>> =20
>>          for (i =3D 0; i < qi->num_points; i++) {
>>                  struct intel_qgv_point *sp =3D &qi->points[i];
>> =20
>> -                ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>> +                ret =3D intel_read_qgv_point_info(display, sp, i);
>>                  if (ret) {
>> -                        drm_dbg_kms(&dev_priv->drm, "Could not read QGV=
 %d info\n", i);
>> +                        drm_dbg_kms(display->drm, "Could not read QGV %=
d info\n", i);
>>                          return ret;
>>                  }
>> =20
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "QGV %d: DCLK=3D%d tRP=3D%d tRDPRE=3D%d tRA=
S=3D%d tRCD=3D%d tRC=3D%d\n",
>>                              i, sp->dclk, sp->t_rp, sp->t_rdpre, sp->t_r=
as,
>>                              sp->t_rcd, sp->t_rc);
>>          }
>> =20
>>          if (qi->num_psf_points > 0) {
>> -                ret =3D adls_pcode_read_psf_gv_point_info(dev_priv, qi-=
>psf_points);
>> +                ret =3D adls_pcode_read_psf_gv_point_info(display, qi->=
psf_points);
>>                  if (ret) {
>> -                        drm_err(&dev_priv->drm, "Failed to read PSF poi=
nt data; PSF points will not be considered in bandwidth calculations.\n");
>> +                        drm_err(display->drm, "Failed to read PSF point=
 data; PSF points will not be considered in bandwidth calculations.\n");
>>                          qi->num_psf_points =3D 0;
>>                  }
>> =20
>>                  for (i =3D 0; i < qi->num_psf_points; i++)
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "PSF GV %d: CLK=3D%d \n",
>>                                      i, qi->psf_points[i].clk);
>>          }
>> @@ -398,20 +405,21 @@ static const struct intel_sa_info xe2_hpd_sa_info =
=3D {
>>          /* Other values not used by simplified algorithm */
>>  };
>> =20
>> -static int icl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>> +static int icl_get_bw_info(struct intel_display *display, const struct =
intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>> -        int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_chann=
els);
>> +        int num_channels =3D max_t(u8, 1, i915->dram_info.num_channels)=
;
>>          int ipqdepth, ipqdepthpch =3D 16;
>>          int dclk_max;
>>          int maxdebw;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>> -        ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> +        ret =3D icl_get_qgv_points(display, &qi, is_y_tile);
>>          if (ret) {
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> @@ -422,7 +430,7 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          qi.deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : =
2);
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  int clpchgroup;
>>                  int j;
>> =20
>> @@ -449,7 +457,7 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                          bi->deratedbw[j] =3D min(maxdebw,
>>                                                 bw * (100 - sa->derating=
) / 100);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / QGV %d: num_planes=3D%d der=
atedbw=3D%u\n",
>>                                      i, j, bi->num_planes, bi->deratedbw=
[j]);
>>                  }
>> @@ -460,44 +468,45 @@ static int icl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>> +static int tgl_get_bw_info(struct intel_display *display, const struct =
intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>> -        const struct dram_info *dram_info =3D &dev_priv->dram_info;
>> +        const struct dram_info *dram_info =3D &i915->dram_info;
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>> -        int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_chann=
els);
>> +        int num_channels =3D max_t(u8, 1, dram_info->num_channels);
>>          int ipqdepth, ipqdepthpch =3D 16;
>>          int dclk_max;
>>          int maxdebw, peakbw;
>>          int clperchgroup;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>> -        ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> +        ret =3D icl_get_qgv_points(display, &qi, is_y_tile);
>>          if (ret) {
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> =20
>> -        if (DISPLAY_VER(dev_priv) < 14 &&
>> +        if (DISPLAY_VER(display) < 14 &&
>>              (dram_info->type =3D=3D INTEL_DRAM_LPDDR4 || dram_info->typ=
e =3D=3D INTEL_DRAM_LPDDR5))
>>                  num_channels *=3D 2;
>> =20
>>          qi.deinterleave =3D qi.deinterleave ? : DIV_ROUND_UP(num_channe=
ls, is_y_tile ? 4 : 2);
>> =20
>> -        if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) =
>=3D 12)
>> +        if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >=
=3D 12)
>>                  qi.deinterleave =3D max(DIV_ROUND_UP(qi.deinterleave, 2=
), 1);
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 12 && num_channels > qi.max_numc=
hannels)
>> -                drm_warn(&dev_priv->drm, "Number of channels exceeds ma=
x number of channels.");
>> +        if (DISPLAY_VER(display) >=3D 12 && num_channels > qi.max_numch=
annels)
>> +                drm_warn(display->drm, "Number of channels exceeds max =
number of channels.");
>>          if (qi.max_numchannels !=3D 0)
>>                  num_channels =3D min_t(u8, num_channels, qi.max_numchan=
nels);
>> =20
>> @@ -514,7 +523,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          clperchgroup =3D 4 * DIV_ROUND_UP(8, num_channels) * qi.deinter=
leave;
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  struct intel_bw_info *bi_next;
>>                  int clpchgroup;
>>                  int j;
>> @@ -522,7 +531,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                  clpchgroup =3D (sa->deburst * qi.deinterleave / num_cha=
nnels) << i;
>> =20
>>                  if (i < num_groups - 1) {
>> -                        bi_next =3D &dev_priv->display.bw.max[i + 1];
>> +                        bi_next =3D &display->bw.max[i + 1];
>> =20
>>                          if (clpchgroup < clperchgroup)
>>                                  bi_next->num_planes =3D (ipqdepth - clp=
chgroup) /
>> @@ -554,7 +563,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                                                            num_channels =
*
>>                                                            qi.channel_wi=
dth, 8);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / QGV %d: num_planes=3D%d der=
atedbw=3D%u peakbw: %u\n",
>>                                      i, j, bi->num_planes, bi->deratedbw=
[j],
>>                                      bi->peakbw[j]);
>> @@ -565,7 +574,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>> =20
>>                          bi->psf_bw[j] =3D adl_calc_psf_bw(sp->clk);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / PSF GV %d: num_planes=3D%d =
bw=3D%u\n",
>>                                      i, j, bi->num_planes, bi->psf_bw[j]=
);
>>                  }
>> @@ -577,17 +586,17 @@ static int tgl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static void dg2_get_bw_info(struct drm_i915_private *i915)
>> +static void dg2_get_bw_info(struct intel_display *display)
>>  {
>> -        unsigned int deratedbw =3D IS_DG2_G11(i915) ? 38000 : 50000;
>> -        int num_groups =3D ARRAY_SIZE(i915->display.bw.max);
>> +        unsigned int deratedbw =3D display->platform.dg2_g11 ? 38000 : =
50000;
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i;
>> =20
>>          /*
>> @@ -598,7 +607,7 @@ static void dg2_get_bw_info(struct drm_i915_private =
*i915)
>>           * whereas DG2-G11 platforms have 38 GB/s.
>>           */
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &i915->display.bw.max[i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>> =20
>>                  bi->num_planes =3D 1;
>>                  /* Need only one dummy QGV point per group */
>> @@ -606,20 +615,21 @@ static void dg2_get_bw_info(struct drm_i915_privat=
e *i915)
>>                  bi->deratedbw[0] =3D deratedbw;
>>          }
>> =20
>> -        i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>> +        display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>  }
>> =20
>> -static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
>> +static int xe2_hpd_get_bw_info(struct intel_display *display,
>>                                 const struct intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>>          int num_channels =3D i915->dram_info.num_channels;
>>          int peakbw, maxdebw;
>>          int ret, i;
>> =20
>> -        ret =3D icl_get_qgv_points(i915, &qi, true);
>> +        ret =3D icl_get_qgv_points(display, &qi, true);
>>          if (ret) {
>> -                drm_dbg_kms(&i915->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> @@ -631,33 +641,33 @@ static int xe2_hpd_get_bw_info(struct drm_i915_pri=
vate *i915,
>>                  const struct intel_qgv_point *point =3D &qi.points[i];
>>                  int bw =3D num_channels * (qi.channel_width / 8) * poin=
t->dclk;
>> =20
>> -                i915->display.bw.max[0].deratedbw[i] =3D
>> +                display->bw.max[0].deratedbw[i] =3D
>>                          min(maxdebw, (100 - sa->derating) * bw / 100);
>> -                i915->display.bw.max[0].peakbw[i] =3D bw;
>> +                display->bw.max[0].peakbw[i] =3D bw;
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=3D%u peakbw:=
 %u\n",
>> -                            i, i915->display.bw.max[0].deratedbw[i],
>> -                            i915->display.bw.max[0].peakbw[i]);
>> +                drm_dbg_kms(display->drm, "QGV %d: deratedbw=3D%u peakb=
w: %u\n",
>> +                            i, display->bw.max[0].deratedbw[i],
>> +                            display->bw.max[0].peakbw[i]);
>>          }
>> =20
>>          /* Bandwidth does not depend on # of planes; set all groups the=
 same */
>> -        i915->display.bw.max[0].num_planes =3D 1;
>> -        i915->display.bw.max[0].num_qgv_points =3D qi.num_points;
>> -        for (i =3D 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
>> -                memcpy(&i915->display.bw.max[i], &i915->display.bw.max[=
0],
>> -                       sizeof(i915->display.bw.max[0]));
>> +        display->bw.max[0].num_planes =3D 1;
>> +        display->bw.max[0].num_qgv_points =3D qi.num_points;
>> +        for (i =3D 1; i < ARRAY_SIZE(display->bw.max); i++)
>> +                memcpy(&display->bw.max[i], &display->bw.max[0],
>> +                       sizeof(display->bw.max[0]));
>> =20
>>          /*
>>           * Xe2_HPD should always have exactly two QGV points representi=
ng
>>           * battery and plugged-in operation.
>>           */
>> -        drm_WARN_ON(&i915->drm, qi.num_points !=3D 2);
>> -        i915->display.sagv.status =3D I915_SAGV_ENABLED;
>> +        drm_WARN_ON(display->drm, qi.num_points !=3D 2);
>> +        display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
>> +static unsigned int icl_max_bw_index(struct intel_display *display,
>>                                       int num_planes, int qgv_point)
>>  {
>>          int i;
>> @@ -667,9 +677,9 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
>> +        for (i =3D 0; i < ARRAY_SIZE(display->bw.max); i++) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -685,7 +695,7 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>          return UINT_MAX;
>>  }
>> =20
>> -static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
>> +static unsigned int tgl_max_bw_index(struct intel_display *display,
>>                                       int num_planes, int qgv_point)
>>  {
>>          int i;
>> @@ -695,9 +705,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >=3D 0; =
i--) {
>> +        for (i =3D ARRAY_SIZE(display->bw.max) - 1; i >=3D 0; i--) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -713,52 +723,54 @@ static unsigned int tgl_max_bw_index(struct drm_i9=
15_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
>> +static unsigned int adl_psf_bw(struct intel_display *display,
>>                                 int psf_gv_point)
>>  {
>>          const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[0];
>> +                        &display->bw.max[0];
>> =20
>>          return bi->psf_bw[psf_gv_point];
>>  }
>> =20
>> -static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
>> +static unsigned int icl_qgv_bw(struct intel_display *display,
>>                                 int num_active_planes, int qgv_point)
>>  {
>>          unsigned int idx;
>> =20
>> -        if (DISPLAY_VER(i915) >=3D 12)
>> -                idx =3D tgl_max_bw_index(i915, num_active_planes, qgv_p=
oint);
>> +        if (DISPLAY_VER(display) >=3D 12)
>> +                idx =3D tgl_max_bw_index(display, num_active_planes, qg=
v_point);
>>          else
>> -                idx =3D icl_max_bw_index(i915, num_active_planes, qgv_p=
oint);
>> +                idx =3D icl_max_bw_index(display, num_active_planes, qg=
v_point);
>> =20
>> -        if (idx >=3D ARRAY_SIZE(i915->display.bw.max))
>> +        if (idx >=3D ARRAY_SIZE(display->bw.max))
>>                  return 0;
>> =20
>> -        return i915->display.bw.max[idx].deratedbw[qgv_point];
>> +        return display->bw.max[idx].deratedbw[qgv_point];
>>  }
>> =20
>>  void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>>  {
>> -        if (!HAS_DISPLAY(dev_priv))
>> +        struct intel_display *display =3D &dev_priv->display;
>> +
>> +        if (!HAS_DISPLAY(display))
>>                  return;
>> =20
>> -        if (DISPLAY_VERx100(dev_priv) >=3D 1401 && IS_DGFX(dev_priv))
>> -                xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                tgl_get_bw_info(dev_priv, &mtl_sa_info);
>> -        else if (IS_DG2(dev_priv))
>> -                dg2_get_bw_info(dev_priv);
>> -        else if (IS_ALDERLAKE_P(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &adlp_sa_info);
>> -        else if (IS_ALDERLAKE_S(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &adls_sa_info);
>> -        else if (IS_ROCKETLAKE(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &rkl_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) =3D=3D 12)
>> -                tgl_get_bw_info(dev_priv, &tgl_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) =3D=3D 11)
>> -                icl_get_bw_info(dev_priv, &icl_sa_info);
>> +        if (DISPLAY_VERx100(display) >=3D 1401 && display->platform.dgf=
x)
>> +                xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
>> +        else if (DISPLAY_VER(display) >=3D 14)
>> +                tgl_get_bw_info(display, &mtl_sa_info);
>> +        else if (display->platform.dg2)
>> +                dg2_get_bw_info(display);
>> +        else if (display->platform.alderlake_p)
>> +                tgl_get_bw_info(display, &adlp_sa_info);
>> +        else if (display->platform.alderlake_s)
>> +                tgl_get_bw_info(display, &adls_sa_info);
>> +        else if (display->platform.rocketlake)
>> +                tgl_get_bw_info(display, &rkl_sa_info);
>> +        else if (DISPLAY_VER(display) =3D=3D 12)
>> +                tgl_get_bw_info(display, &tgl_sa_info);
>> +        else if (DISPLAY_VER(display) =3D=3D 11)
>> +                icl_get_bw_info(display, &icl_sa_info);
>>  }
>> =20
>>  static unsigned int intel_bw_crtc_num_active_planes(const struct intel_=
crtc_state *crtc_state)
>> @@ -772,8 +784,8 @@ static unsigned int intel_bw_crtc_num_active_planes(=
const struct intel_crtc_stat
>> =20
>>  static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_sta=
te *crtc_state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>          unsigned int data_rate =3D 0;
>>          enum plane_id plane_id;
>> =20
>> @@ -787,7 +799,7 @@ static unsigned int intel_bw_crtc_data_rate(const st=
ruct intel_crtc_state *crtc_
>> =20
>>                  data_rate +=3D crtc_state->data_rate[plane_id];
>> =20
>> -                if (DISPLAY_VER(i915) < 11)
>> +                if (DISPLAY_VER(display) < 11)
>>                          data_rate +=3D crtc_state->data_rate_y[plane_id=
];
>>          }
>> =20
>> @@ -797,37 +809,37 @@ static unsigned int intel_bw_crtc_data_rate(const =
struct intel_crtc_state *crtc_
>>  /* "Maximum Pipe Read Bandwidth" */
>>  static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_=
state)
>>  {
>> -        struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>> =20
>> -        if (DISPLAY_VER(i915) < 12)
>> +        if (DISPLAY_VER(display) < 12)
>>                  return 0;
>> =20
>>          return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crt=
c_state), 10), 512);
>>  }
>> =20
>> -static unsigned int intel_bw_num_active_planes(struct drm_i915_private =
*dev_priv,
>> +static unsigned int intel_bw_num_active_planes(struct intel_display *di=
splay,
>>                                                 const struct intel_bw_st=
ate *bw_state)
>>  {
>>          unsigned int num_active_planes =3D 0;
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(dev_priv, pipe)
>> +        for_each_pipe(display, pipe)
>>                  num_active_planes +=3D bw_state->num_active_planes[pipe=
];
>> =20
>>          return num_active_planes;
>>  }
>> =20
>> -static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_pri=
v,
>> +static unsigned int intel_bw_data_rate(struct intel_display *display,
>>                                         const struct intel_bw_state *bw_=
state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          unsigned int data_rate =3D 0;
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(dev_priv, pipe)
>> +        for_each_pipe(display, pipe)
>>                  data_rate +=3D bw_state->data_rate[pipe];
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 13 && i915_vtd_active(dev_priv))
>> +        if (DISPLAY_VER(display) >=3D 13 && i915_vtd_active(i915))
>>                  data_rate =3D DIV_ROUND_UP(data_rate * 105, 100);
>> =20
>>          return data_rate;
>> @@ -836,10 +848,10 @@ static unsigned int intel_bw_data_rate(struct drm_=
i915_private *dev_priv,
>>  struct intel_bw_state *
>>  intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_old_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -847,10 +859,10 @@ intel_atomic_get_old_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_new_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -858,27 +870,27 @@ intel_atomic_get_new_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_global_obj_state(state, &dev_priv=
->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_global_obj_state(state, &display-=
>bw.obj);
>>          if (IS_ERR(bw_state))
>>                  return ERR_CAST(bw_state);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> =20
>> -static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *=
i915,
>> +static unsigned int icl_max_bw_qgv_point_mask(struct intel_display *dis=
play,
>>                                                int num_active_planes)
>>  {
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int max_bw_point =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> =20
>>          for (i =3D 0; i < num_qgv_points; i++) {
>>                  unsigned int max_data_rate =3D
>> -                        icl_qgv_bw(i915, num_active_planes, i);
>> +                        icl_qgv_bw(display, num_active_planes, i);
>> =20
>>                  /*
>>                   * We need to know which qgv point gives us
>> @@ -897,23 +909,23 @@ static unsigned int icl_max_bw_qgv_point_mask(stru=
ct drm_i915_private *i915,
>>          return max_bw_point;
>>  }
>> =20
>> -static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
>> +static u16 icl_prepare_qgv_points_mask(struct intel_display *display,
>>                                         unsigned int qgv_points,
>>                                         unsigned int psf_points)
>>  {
>>          return ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
>> -                 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_ma=
sk(i915);
>> +                 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_ma=
sk(display);
>>  }
>> =20
>> -static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_privat=
e *i915)
>> +static unsigned int icl_max_bw_psf_gv_point_mask(struct intel_display *=
display)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>>          unsigned int max_bw_point_mask =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> =20
>>          for (i =3D 0; i < num_psf_gv_points; i++) {
>> -                unsigned int max_data_rate =3D adl_psf_bw(i915, i);
>> +                unsigned int max_data_rate =3D adl_psf_bw(display, i);
>> =20
>>                  if (max_data_rate > max_bw) {
>>                          max_bw_point_mask =3D BIT(i);
>> @@ -926,29 +938,31 @@ static unsigned int icl_max_bw_psf_gv_point_mask(s=
truct drm_i915_private *i915)
>>          return max_bw_point_mask;
>>  }
>> =20
>> -static void icl_force_disable_sagv(struct drm_i915_private *i915,
>> +static void icl_force_disable_sagv(struct intel_display *display,
>>                                     struct intel_bw_state *bw_state)
>>  {
>> -        unsigned int qgv_points =3D icl_max_bw_qgv_point_mask(i915, 0);
>> -        unsigned int psf_points =3D icl_max_bw_psf_gv_point_mask(i915);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        unsigned int qgv_points =3D icl_max_bw_qgv_point_mask(display, =
0);
>> +        unsigned int psf_points =3D icl_max_bw_psf_gv_point_mask(displa=
y);
>> =20
>> -        bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(i915,
>> +        bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(displ=
ay,
>>                                                                  qgv_poi=
nts,
>>                                                                  psf_poi=
nts);
>> =20
>> -        drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask 0x%x\n",
>> +        drm_dbg_kms(display->drm, "Forcing SAGV disable: mask 0x%x\n",
>>                      bw_state->qgv_points_mask);
>> =20
>>          icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
>>  }
>> =20
>> -static int mtl_find_qgv_points(struct drm_i915_private *i915,
>> +static int mtl_find_qgv_points(struct intel_display *display,
>>                                 unsigned int data_rate,
>>                                 unsigned int num_active_planes,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          unsigned int best_rate =3D UINT_MAX;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int qgv_peak_bw  =3D 0;
>>          int i;
>>          int ret;
>> @@ -964,7 +978,7 @@ static int mtl_find_qgv_points(struct drm_i915_priva=
te *i915,
>>           */
>>          if (!intel_can_enable_sagv(i915, new_bw_state)) {
>>                  new_bw_state->qgv_point_peakbw =3D U16_MAX;
>> -                drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak =
bw.");
>> +                drm_dbg_kms(display->drm, "No SAGV, use UINT_MAX as pea=
k bw.");
>>                  return 0;
>>          }
>> =20
>> @@ -974,27 +988,27 @@ static int mtl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           */
>>          for (i =3D 0; i < num_qgv_points; i++) {
>>                  unsigned int bw_index =3D
>> -                        tgl_max_bw_index(i915, num_active_planes, i);
>> +                        tgl_max_bw_index(display, num_active_planes, i)=
;
>>                  unsigned int max_data_rate;
>> =20
>> -                if (bw_index >=3D ARRAY_SIZE(i915->display.bw.max))
>> +                if (bw_index >=3D ARRAY_SIZE(display->bw.max))
>>                          continue;
>> =20
>> -                max_data_rate =3D i915->display.bw.max[bw_index].derate=
dbw[i];
>> +                max_data_rate =3D display->bw.max[bw_index].deratedbw[i=
];
>> =20
>>                  if (max_data_rate < data_rate)
>>                          continue;
>> =20
>>                  if (max_data_rate - data_rate < best_rate) {
>>                          best_rate =3D max_data_rate - data_rate;
>> -                        qgv_peak_bw =3D i915->display.bw.max[bw_index].=
peakbw[i];
>> +                        qgv_peak_bw =3D display->bw.max[bw_index].peakb=
w[i];
>>                  }
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d requir=
ed %d qgv_peak_bw: %d\n",
>> +                drm_dbg_kms(display->drm, "QGV point %d: max bw %d requ=
ired %d qgv_peak_bw: %d\n",
>>                              i, max_data_rate, data_rate, qgv_peak_bw);
>>          }
>> =20
>> -        drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required=
 data rate: %d\n",
>> +        drm_dbg_kms(display->drm, "Matching peaks QGV bw: %d for requir=
ed data rate: %d\n",
>>                      qgv_peak_bw, data_rate);
>> =20
>>          /*
>> @@ -1002,7 +1016,7 @@ static int mtl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * satisfying the required data rate is found
>>           */
>>          if (qgv_peak_bw =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No QGV points for bw %d for di=
splay configuration(%d active planes).\n",
>> +                drm_dbg_kms(display->drm, "No QGV points for bw %d for =
display configuration(%d active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>>          }
>> @@ -1013,14 +1027,15 @@ static int mtl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>          return 0;
>>  }
>> =20
>> -static int icl_find_qgv_points(struct drm_i915_private *i915,
>> +static int icl_find_qgv_points(struct intel_display *display,
>>                                 unsigned int data_rate,
>>                                 unsigned int num_active_planes,
>>                                 const struct intel_bw_state *old_bw_stat=
e,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 psf_points =3D 0;
>>          u16 qgv_points =3D 0;
>>          int i;
>> @@ -1031,22 +1046,22 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>                  return ret;
>> =20
>>          for (i =3D 0; i < num_qgv_points; i++) {
>> -                unsigned int max_data_rate =3D icl_qgv_bw(i915,
>> +                unsigned int max_data_rate =3D icl_qgv_bw(display,
>>                                                          num_active_plan=
es, i);
>>                  if (max_data_rate >=3D data_rate)
>>                          qgv_points |=3D BIT(i);
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d requir=
ed %d\n",
>> +                drm_dbg_kms(display->drm, "QGV point %d: max bw %d requ=
ired %d\n",
>>                              i, max_data_rate, data_rate);
>>          }
>> =20
>>          for (i =3D 0; i < num_psf_gv_points; i++) {
>> -                unsigned int max_data_rate =3D adl_psf_bw(i915, i);
>> +                unsigned int max_data_rate =3D adl_psf_bw(display, i);
>> =20
>>                  if (max_data_rate >=3D data_rate)
>>                          psf_points |=3D BIT(i);
>> =20
>> -                drm_dbg_kms(&i915->drm, "PSF GV point %d: max bw %d"
>> +                drm_dbg_kms(display->drm, "PSF GV point %d: max bw %d"
>>                              " required %d\n",
>>                              i, max_data_rate, data_rate);
>>          }
>> @@ -1057,14 +1072,14 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>           * reasons.
>>           */
>>          if (qgv_points =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No QGV points provide sufficie=
nt memory"
>> +                drm_dbg_kms(display->drm, "No QGV points provide suffic=
ient memory"
>>                              " bandwidth %d for display configuration(%d=
 active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>>          }
>> =20
>>          if (num_psf_gv_points > 0 && psf_points =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No PSF GV points provide suffi=
cient memory"
>> +                drm_dbg_kms(display->drm, "No PSF GV points provide suf=
ficient memory"
>>                              " bandwidth %d for display configuration(%d=
 active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>> @@ -1076,8 +1091,8 @@ static int icl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * cause.
>>           */
>>          if (!intel_can_enable_sagv(i915, new_bw_state)) {
>> -                qgv_points =3D icl_max_bw_qgv_point_mask(i915, num_acti=
ve_planes);
>> -                drm_dbg_kms(&i915->drm, "No SAGV, using single QGV poin=
t mask 0x%x\n",
>> +                qgv_points =3D icl_max_bw_qgv_point_mask(display, num_a=
ctive_planes);
>> +                drm_dbg_kms(display->drm, "No SAGV, using single QGV po=
int mask 0x%x\n",
>>                              qgv_points);
>>          }
>> =20
>> @@ -1085,7 +1100,7 @@ static int icl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * We store the ones which need to be masked as that is what PC=
ode
>>           * actually accepts as a parameter.
>>           */
>> -        new_bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(i=
915,
>> +        new_bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(d=
isplay,
>>                                                                      qgv=
_points,
>>                                                                      psf=
_points);
>>          /*
>> @@ -1101,38 +1116,38 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>          return 0;
>>  }
>> =20
>> -static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
>> +static int intel_bw_check_qgv_points(struct intel_display *display,
>>                                       const struct intel_bw_state *old_b=
w_state,
>>                                       struct intel_bw_state *new_bw_stat=
e)
>>  {
>> -        unsigned int data_rate =3D intel_bw_data_rate(i915, new_bw_stat=
e);
>> +        unsigned int data_rate =3D intel_bw_data_rate(display, new_bw_s=
tate);
>>          unsigned int num_active_planes =3D
>> -                        intel_bw_num_active_planes(i915, new_bw_state);
>> +                        intel_bw_num_active_planes(display, new_bw_stat=
e);
>> =20
>>          data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>> =20
>> -        if (DISPLAY_VER(i915) >=3D 14)
>> -                return mtl_find_qgv_points(i915, data_rate, num_active_=
planes,
>> +        if (DISPLAY_VER(display) >=3D 14)
>> +                return mtl_find_qgv_points(display, data_rate, num_acti=
ve_planes,
>>                                             new_bw_state);
>>          else
>> -                return icl_find_qgv_points(i915, data_rate, num_active_=
planes,
>> +                return icl_find_qgv_points(display, data_rate, num_acti=
ve_planes,
>>                                             old_bw_state, new_bw_state);
>>  }
>> =20
>> -static bool intel_bw_state_changed(struct drm_i915_private *i915,
>> +static bool intel_bw_state_changed(struct intel_display *display,
>>                                     const struct intel_bw_state *old_bw_=
state,
>>                                     const struct intel_bw_state *new_bw_=
state)
>>  {
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(i915, pipe) {
>> +        for_each_pipe(display, pipe) {
>>                  const struct intel_dbuf_bw *old_crtc_bw =3D
>>                          &old_bw_state->dbuf_bw[pipe];
>>                  const struct intel_dbuf_bw *new_crtc_bw =3D
>>                          &new_bw_state->dbuf_bw[pipe];
>>                  enum dbuf_slice slice;
>> =20
>> -                for_each_dbuf_slice(i915, slice) {
>> +                for_each_dbuf_slice(display, slice) {
>>                          if (old_crtc_bw->max_bw[slice] !=3D new_crtc_bw=
->max_bw[slice] ||
>>                              old_crtc_bw->active_planes[slice] !=3D new_=
crtc_bw->active_planes[slice])
>>                                  return true;
>> @@ -1151,7 +1166,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>                                     const struct skl_ddb_entry *ddb,
>>                                     unsigned int data_rate)
>>  {
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> +        struct intel_display *display =3D to_intel_display(crtc);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe=
];
>>          unsigned int dbuf_mask =3D skl_ddb_dbuf_slice_mask(i915, ddb);
>>          enum dbuf_slice slice;
>> @@ -1160,7 +1176,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>           * The arbiter can only really guarantee an
>>           * equal share of the total bw to each plane.
>>           */
>> -        for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
>> +        for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
>>                  crtc_bw->max_bw[slice] =3D max(crtc_bw->max_bw[slice], =
data_rate);
>>                  crtc_bw->active_planes[slice] |=3D BIT(plane_id);
>>          }
>> @@ -1169,8 +1185,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>  static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>>                                    const struct intel_crtc_state *crtc_s=
tate)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>          struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe=
];
>>          enum plane_id plane_id;
>> =20
>> @@ -1191,7 +1207,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_=
state *bw_state,
>>                                         &crtc_state->wm.skl.plane_ddb[pl=
ane_id],
>>                                         crtc_state->data_rate[plane_id])=
;
>> =20
>> -                if (DISPLAY_VER(i915) < 11)
>> +                if (DISPLAY_VER(display) < 11)
>>                          skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id=
,
>>                                                 &crtc_state->wm.skl.plan=
e_ddb_y[plane_id],
>>                                                 crtc_state->data_rate[pl=
ane_id]);
>> @@ -1200,13 +1216,13 @@ static void skl_crtc_calc_dbuf_bw(struct intel_b=
w_state *bw_state,
>> =20
>>  /* "Maximum Data Buffer Bandwidth" */
>>  static int
>> -intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
>> +intel_bw_dbuf_min_cdclk(struct intel_display *display,
>>                          const struct intel_bw_state *bw_state)
>>  {
>>          unsigned int total_max_bw =3D 0;
>>          enum dbuf_slice slice;
>> =20
>> -        for_each_dbuf_slice(i915, slice) {
>> +        for_each_dbuf_slice(display, slice) {
>>                  int num_active_planes =3D 0;
>>                  unsigned int max_bw =3D 0;
>>                  enum pipe pipe;
>> @@ -1215,7 +1231,7 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i=
915,
>>                   * The arbiter can only really guarantee an
>>                   * equal share of the total bw to each plane.
>>                   */
>> -                for_each_pipe(i915, pipe) {
>> +                for_each_pipe(display, pipe) {
>>                          const struct intel_dbuf_bw *crtc_bw =3D &bw_sta=
te->dbuf_bw[pipe];
>> =20
>>                          max_bw =3D max(crtc_bw->max_bw[slice], max_bw);
>> @@ -1232,12 +1248,13 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private =
*i915,
>>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>>                         const struct intel_bw_state *bw_state)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          enum pipe pipe;
>>          int min_cdclk;
>> =20
>> -        min_cdclk =3D intel_bw_dbuf_min_cdclk(i915, bw_state);
>> +        min_cdclk =3D intel_bw_dbuf_min_cdclk(display, bw_state);
>> =20
>> -        for_each_pipe(i915, pipe)
>> +        for_each_pipe(display, pipe)
>>                  min_cdclk =3D max(min_cdclk, bw_state->min_cdclk[pipe])=
;
>> =20
>>          return min_cdclk;
>> @@ -1246,6 +1263,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i9=
15,
>>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>>                              bool *need_cdclk_calc)
>>  {
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>>          struct intel_bw_state *new_bw_state =3D NULL;
>>          const struct intel_bw_state *old_bw_state =3D NULL;
>> @@ -1255,7 +1273,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          struct intel_crtc *crtc;
>>          int i;
>> =20
>> -        if (DISPLAY_VER(dev_priv) < 9)
>> +        if (DISPLAY_VER(display) < 9)
>>                  return 0;
>> =20
>>          for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>> @@ -1274,7 +1292,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          if (!old_bw_state)
>>                  return 0;
>> =20
>> -        if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state=
)) {
>> +        if (intel_bw_state_changed(display, old_bw_state, new_bw_state)=
) {
>>                  int ret =3D intel_atomic_lock_global_state(&new_bw_stat=
e->base);
>>                  if (ret)
>>                          return ret;
>> @@ -1309,7 +1327,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          if (new_min_cdclk <=3D cdclk_state->bw_min_cdclk)
>>                  return 0;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm,
>> +        drm_dbg_kms(display->drm,
>>                      "new bandwidth min cdclk (%d kHz) > old min cdclk (=
%d kHz)\n",
>>                      new_min_cdclk, cdclk_state->bw_min_cdclk);
>>          *need_cdclk_calc =3D true;
>> @@ -1319,7 +1337,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>> =20
>>  static int intel_bw_check_data_rate(struct intel_atomic_state *state, b=
ool *changed)
>>  {
>> -        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>>          struct intel_crtc *crtc;
>>          int i;
>> @@ -1353,7 +1371,7 @@ static int intel_bw_check_data_rate(struct intel_a=
tomic_state *state, bool *chan
>> =20
>>                  *changed =3D true;
>> =20
>> -                drm_dbg_kms(&i915->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "[CRTC:%d:%s] data rate %u num active plane=
s %u\n",
>>                              crtc->base.base.id, crtc->base.name,
>>                              new_bw_state->data_rate[crtc->pipe],
>> @@ -1365,14 +1383,15 @@ static int intel_bw_check_data_rate(struct intel=
_atomic_state *state, bool *chan
>> =20
>>  int intel_bw_atomic_check(struct intel_atomic_state *state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          bool changed =3D false;
>> -        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>>          struct intel_bw_state *new_bw_state;
>>          const struct intel_bw_state *old_bw_state;
>>          int ret;
>> =20
>>          /* FIXME earlier gens need some checks too */
>> -        if (DISPLAY_VER(i915) < 11)
>> +        if (DISPLAY_VER(display) < 11)
>>                  return 0;
>> =20
>>          ret =3D intel_bw_check_data_rate(state, &changed);
>> @@ -1395,7 +1414,7 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>>          if (!changed)
>>                  return 0;
>> =20
>> -        ret =3D intel_bw_check_qgv_points(i915, old_bw_state, new_bw_st=
ate);
>> +        ret =3D intel_bw_check_qgv_points(display, old_bw_state, new_bw=
_state);
>>          if (ret)
>>                  return ret;
>> =20
>> @@ -1407,8 +1426,8 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>>  static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>>                                   const struct intel_crtc_state *crtc_st=
ate)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> =20
>>          bw_state->data_rate[crtc->pipe] =3D
>>                  intel_bw_crtc_data_rate(crtc_state);
>> @@ -1416,7 +1435,7 @@ static void intel_bw_crtc_update(struct intel_bw_s=
tate *bw_state,
>>                  intel_bw_crtc_num_active_planes(crtc_state);
>>          bw_state->force_check_qgv =3D true;
>> =20
>> -        drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes=
 %u\n",
>> +        drm_dbg_kms(display->drm, "pipe %c data rate %u num active plan=
es %u\n",
>>                      pipe_name(crtc->pipe),
>>                      bw_state->data_rate[crtc->pipe],
>>                      bw_state->num_active_planes[crtc->pipe]);
>> @@ -1499,8 +1518,8 @@ int intel_bw_init(struct drm_i915_private *i915)
>>           * Limit this only if we have SAGV. And for Display version 14 =
onwards
>>           * sagv is handled though pmdemand requests
>>           */
>> -        if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
>> -                icl_force_disable_sagv(i915, state);
>> +        if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
>> +                icl_force_disable_sagv(display, state);
>> =20
>>          return 0;
>>  }
>>=20
>> --=20
>> 2.48.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
