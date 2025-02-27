Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420BA47A86
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9443A10EA77;
	Thu, 27 Feb 2025 10:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuSxwX3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E4C10E30F;
 Thu, 27 Feb 2025 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652949; x=1772188949;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oHleyFvznN20Bt1eFdxsTPkuSlmIKgurOYhc/n2qtUI=;
 b=NuSxwX3wG+f/FVdv/3fiOLO/o2Nauv4rE3tt+bRFzYnbpVhYwxgCCRWk
 2ihy1shzoKpY3KwmruxvRFrUtDW5PWKyWpSuC15Jj7b2j3R21wZyh3hJX
 4kq3U8+Wp/6JjP3rjjs+1NNyuI+5XYj1n6rcV5AxIKPfXn0pcYACYpnoA
 FHGWXZVAS8aDGwZTs6xq43T4Nc5b8wRHGikHox5G/7+eTUhWyDXvjWSZP
 FBkPr5GGa0rvFM++VXX1PqoLayRjIf/tlZNKy4ifsoNcLBuxhFnFiqBpT
 oJpcIBiVRUX9iC//9fo9zA8hJQHGfZNdTwPuwznLDee3Zi41Lz0CG3leA g==;
X-CSE-ConnectionGUID: HmI2evCJQ4aKeI5+lw1gEA==
X-CSE-MsgGUID: d9j2I6G3RqySTINn0b83Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41733779"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41733779"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:42:29 -0800
X-CSE-ConnectionGUID: Vn+dMy/8THiPdZGT1IBt5A==
X-CSE-MsgGUID: PcyyhGP4RIGzIOAqQKH96Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116862665"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:42:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:42:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:42:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:42:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pHWI6MOeuM8kfL2uoNptIAq21z+TIewmCycCubLgW4uCOTP5aafP9qe0G1OwzADl2hBa+usE71syP788oMfLgHfxLnBY3ZKh/BA6E3pD/FBXc1XZ6I72gnAxkkG3x4ZgVlnRjLB97d+DXS9nN7bNejjuT6Yu2xeJeg4iVDCkRHj7XtntWP/3K4rJh/bIYboeHJigJ6j0A+CDlEn7Hf1KH34YIsKb3dUczN2WtBt9A4I6XCNMn1KbIJAiZkXF4kM4t/GhqrWNHEWRgQ1CbRkrdkFeLRIgRffr7sjFEaVOiUsgd9dEX+vMghWho1vh3RhggUmPgOoTfB0OSJqAta9GlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sCCVFeffKqj94lb7sALJBRQ2rUVBDsZnQA4qjgnoZqI=;
 b=d9Mbi3Herkzi+ORBzI6cfEvBpIobUL100iYHagPwVLJI4ivQqU2HttxVDGuRy2bLxXvHXHgB315kVcGanLhy05aSJFmffnDRLJF88ZB1pszbQ60MrmPouWkR+wrLemqgekFsodYaTVatQB9r4Mlu2wkqU5/HtwhxptiWzW5defQrnXodMJrJCojTgQICuduw20OMHfpfkSchsoFXsPtnF/F7s5cUTJ+7rZk7wbmNgw9rQXOMgXow5Oh8xKODJW5PavAgDtxoyHLyzdkc923koMUDgo5LbHWPVFjDYsj7c537f97tyriBIGk3kIjle4pkvcpOOpiXfXEWHaE1apjCWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Thu, 27 Feb
 2025 10:42:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:42:20 +0000
Message-ID: <c1b1954f-6f44-47f8-82e5-96d5d9f81c9a@intel.com>
Date: Thu, 27 Feb 2025 16:12:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/20] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
 <Z78t-r9fZwr15eMo@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78t-r9fZwr15eMo@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: 61f93a34-4bf9-49c5-48ea-08dd571b6995
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ni85K25LVGxyajVWOUI2TVJ3OTRkdU0vb2Z4Mi9JME9nYzdjN0gvUTFtRGJM?=
 =?utf-8?B?WmIybkVqd2J3WU8xbGpmc0NwZWtJZkdPcGdEbnNuU3NJUzlZZTZwUFpXa2Ru?=
 =?utf-8?B?YWRKWkxZeXJIUStaVjdWdTdDRUhGd1ZVanZNeUZZUGxPV3hLUVZPaytaaUhE?=
 =?utf-8?B?a2ZDUzhNRnYxc1Z2TkI2Z1NCV3BDUmQyRHhxSmIyZ21qK0EwVU1Oa2Z2bmVZ?=
 =?utf-8?B?ZXlTUjJObXdsNGhMVWcwL1VsakFPSjNEMTdJZFdRbnU2MkxLcjNYM2hPZVpV?=
 =?utf-8?B?ck9UVzNtd0x1d2hxSWR6K2hBLzFYOGxjV3AvalRNeHY4UzRBWGtHM0pobGdN?=
 =?utf-8?B?NW56ZzJxTW5GcTdhcnNZekRnMFZnWmRUaXFjZ3FiMk1vK1dGemNoVUlUMnQv?=
 =?utf-8?B?dmphbjVVQTVKY0FLRk1VbWFtbXNRTEJKWTJJbXJXc1paOVNsaGhEbDFSRkg1?=
 =?utf-8?B?N1c0TnhHTjFnUGllOHovdTRjbk9zTUhWU0pSTXVTazdzZCtHN1N5ZVE2ektQ?=
 =?utf-8?B?V3hiazh5em1nMEJ3MzgvNUROVHMzZUNjOXR1SVhFUG1tbFRSWW9SeGF6d0JC?=
 =?utf-8?B?bkQ0YWVaWWs2Q3dXZE1rMy9JRXdmWUt2bDFHOFV6MkhBNGNtaHRuUnA2SjRz?=
 =?utf-8?B?Yk5GU3hmcjVmUU4vZ3hXMGYweDR4ZkRyZnFCbFVMQzZSNnRCaTFPcHgreWhG?=
 =?utf-8?B?TXBkUnFOd0N0TWJBYW42d0MwdkZaYm13T1NvUWc0eXVsc0laeHlYTC9HaGI5?=
 =?utf-8?B?eVpYMWc3L0JZQnd0ZGtpVVlCWlFZalNkYzBDUnlRUUltUGNzd2ovcjZHbzFT?=
 =?utf-8?B?NFFKYWM4MmhZYkFDNGd2dlVvcHNmYzd3NXJlSndNd0N4Vmg5TFhVL0xTZHhU?=
 =?utf-8?B?TGhyQUdYM3N6dlFFSFZBbkNWTUpiWGFsa3JvWGRKOG5hN1l1bkV5RW1IenpT?=
 =?utf-8?B?UEFCK2JmUTJnZkpmWXVGUXU1VUszRzNWamRUa2djWWszM3VhWHpRc3J0c2FS?=
 =?utf-8?B?QXRBWHVzM2NwYU9WVUFPRDkvOHl6MGo2T3M4cEVGaTh2QVZ3QnFmV2Q2T3BW?=
 =?utf-8?B?T01sdVVMSVYyOWcvSmFlUzFIRTN3blNhYWJMU1J6Y25NSTBRTWRncmowb055?=
 =?utf-8?B?SnZVSzJOMVBzTDlQTzE4UG9MQlZURUtiVlFKalBMSFRBdnQ1RkVDZkwzVHZq?=
 =?utf-8?B?K3pGNTBzSGJPSkI0Z2RxRjRrY0JIU2Jpd3JTb21zUzZZdU9Idkc2NW9zRS9J?=
 =?utf-8?B?MnB6ZmZQbjhCSFZyZUl4T2JJdzV0ZUU2ZmtBOXJxOFEwa1hwSmgvMUozNy9y?=
 =?utf-8?B?M2tLQzdPTGxkZzNrTW9rTkxuZ1krZnBhRlNOL09hTTVPSGpzR2E2YzZ4OTNY?=
 =?utf-8?B?djlKUm9EaStPRm1zSWxIVkhhWlh1THY1R2VZWjBpbCs4U2tFS3RQNjhOUTIy?=
 =?utf-8?B?eHF1RE5laEQyYk1ZK1ozOTkwYVVremRHeFk0N2JNbEpMaHQyQWwrY0NQYU1C?=
 =?utf-8?B?RTh4M2FaNU1tZkhWbEhITHRjVFdNV1RCVkk2SW83RXVJUEhOaU5XWjRtWTIv?=
 =?utf-8?B?WHNxYS9HTjRnTHZUa2tvd1ZaaERqOWxTdUV2bVp6Wm1JOE1mOE1mVTM4WFM0?=
 =?utf-8?B?a3hWTnJsOXRmWWhRM2ZOV0xUTnR6T2xPU0NETGUwa25WOE5YOFBNUG9UNnVU?=
 =?utf-8?B?RXBPM0t2VDR6YVVQaWphLzFkTmZsWVp1MnNZQVVuT2RBRFlkMEwrKzE5b1lC?=
 =?utf-8?B?ZmhlTFRVaWhRdjJPaThkYUw3QXN3ZmFGZzlkMmVoTmJORnp2bzRKSkg5cEpB?=
 =?utf-8?B?SUZCbGd4aFMwemVGdGxJZDdWUGFyLzVKSVRjSGZlYzVzcEN4U1VNNUpoWDk1?=
 =?utf-8?Q?xpeQzdIJ4yUsJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckNKbVFZaEJoaHJSYXJvaDhwam5OV3FhNlhjRXNMbU1YQ0huaFp5SVFYd0lE?=
 =?utf-8?B?UGlHWFU3NVdLcDBCTlFTc2NRaFBHTEVyazdscFJhaFZJSTVEc0t5c1pYdS9h?=
 =?utf-8?B?b1Vobi95cGxpTjJ1QndMcTVkc2ZpWUhHL1JQZDdDNXBrRHlUQ28zVG5PaldV?=
 =?utf-8?B?enpqK2MzTS9HTnVQSlF0VlR6bkVrZEZHUXhjVkNXeGlseWJFSFc4YWZEelVH?=
 =?utf-8?B?UmhobU1CcGRoY0ZKcjVrZEJ0R0V6MUFlZTJra0VWVkFQYllDWmRFRUpmUEV5?=
 =?utf-8?B?OERhN3IwcGg3aHZjbWtnazNXVm9GRExVN0FXRXhCRXlNNzg1dkp0UFBzcWlG?=
 =?utf-8?B?NURTT09HcnowdGU0Vlg5TGQ2b3V3WkdMVXNWU1dicTR1UUlzTm1NUVhsOTZ6?=
 =?utf-8?B?aXRrSWEwZ0RhWEZNYVRVN2NEa284QnlWVWRDQVl1WkwvZkxRajEvWFdxZEZ0?=
 =?utf-8?B?TW9ZQ0wxT3NhdmRKQ2loRElnWUh4cUNURDBLS3luQmRoZ0ZkRnBwQWpUTmYv?=
 =?utf-8?B?ZjJSWUlCa3NnWFFoNmdvN3RxcjRHbk9uZnVoTzRvOFdsVHp2K0tFaUZqR0Ju?=
 =?utf-8?B?Y2lXTnhQUjgvMzM4QzczYXBNZlgrT29SMUZianpBZGpzUGhRbUxOaTVRV2RF?=
 =?utf-8?B?VGlHbW1FTUhTVlNNeVJPMTduNDRhNmdsOXEzRlRnSEhPMVhYczZKZ3hQZys2?=
 =?utf-8?B?WktBNVVjVDZFOVRiS0JXT2FOVkZ5YU9WdVE1M1RuZ2RtNW5TcWRoMDZWajVz?=
 =?utf-8?B?VExncm4wSlBReHJydjhNMTFKdXVtaEliNXMwUUhWd2tCMWZZdnV3RjJReUpW?=
 =?utf-8?B?Tm93ajNlY0pmT0xERjl3akdjTHNDOFFBcWdhYzE4TlpSK205MTJrTHY3eXFL?=
 =?utf-8?B?YUJFS3prN3hBbkZkYWdPTE92N0NZNDVxSzJwVFZjdEtKZDVOQWZtR29jeE5B?=
 =?utf-8?B?VHpBZXpaUlhHd1JQQkZldkpCV05uYVUveVVCNzM3WkdXRE5qakxaaUtNNDJV?=
 =?utf-8?B?Z0hNYmdDSXhJdUlCeGtmQkRINVBpRjVsaUtjSW5jVTQ4SjRJUXYwMXRFRlFI?=
 =?utf-8?B?QmI0Y0hCRUd3ak5YcWgzQlNnVDR0MXRPYUg2MDg0L3QxUENJYzVhbTFmSkwr?=
 =?utf-8?B?SXBQTUorWGNacUNhUFQ5QXlld05FMWJDd2NMNC9LTHNFK3JsYWEyZkl5dG82?=
 =?utf-8?B?TS8zRTlhUWQxcHRQK3VyZ1BoU3E1UWhNNFdZdWErMmRIMHRLZjNycEtYSWpU?=
 =?utf-8?B?OEpGUHNONlBJcmJCSzIvRjVzcXB1UFd2c1RSUEd5amI3UDI3UzRMTXlDOWJh?=
 =?utf-8?B?NjNleTdubVZsSVd5eEwyakNFT0hPTGRqbGNHZldyK3lUZVhndit2Vm9DdDQx?=
 =?utf-8?B?dTFtY0J5QjNDQWNHSlBCM0xvYWhUYmg3ZFdkWkJUUmxuWjlXMnVPdDlRS0FD?=
 =?utf-8?B?aGJUdVg5VGpoUWsxVUVGbnhISzhsZ1FVb1l2RmVydEFJMXZlaVhHc3crWUxy?=
 =?utf-8?B?eVFXMUVwWGVMMUJSdmlldXMreHVmMUhaQTB2dXZ5SEU2bGg4UWk5Zm9SWVFl?=
 =?utf-8?B?aEdPMkYzVVpadDMvWmdMN1IvOEtvdFZ0cTFKRk9NWjJvV0RBMmtxdTdMaU5W?=
 =?utf-8?B?alJWZ0ZtMkMrdklvWnBCRDNvc2F1cEcrOVB2QWtoSncxN1NyQVd5ZlRLUG5M?=
 =?utf-8?B?bzV0Zm5CL054UGxXVEJHaG01Z0RsZ2dISUVOY2hGeHpMeTJvVE4zc01YRkhR?=
 =?utf-8?B?bmRFTzdQa0VQbVhGU1JmVjI0V0dnRlVVejVJL243d3lpNStsYXluanhtb3g3?=
 =?utf-8?B?ZG9VcHNTc2dpYXA0MW5ZWmtxYXBQUzZBNzB6OFpjQWxINk9BTU4wd1JIUWFQ?=
 =?utf-8?B?eG9mUzVyTWRoUHB4NXQrbVBNd05vMFJONGpiRkR5RHF5K2hZMDdmUnB0OVRN?=
 =?utf-8?B?NEJlUEFZdnBXWUs1dDVXcjFEMGdwRUkvV1RQR1dWNDVSS2JIbEh3QnNzckEz?=
 =?utf-8?B?WXplcWJaWXFFTEhyaDNNMnFpYTNtNytNeEpKdUNCTW5uQmJGTkpUbnBwelFx?=
 =?utf-8?B?Vzg4VFhhaURpRk9TVEk5amk2d1FvUkxuYVNsdmtmS3Buc3NmSVJhNG9VSWN2?=
 =?utf-8?B?UE90MnNpUHJtZUcydlJxVUYweGpVT3F1UUFVeWZwY2QzM09nQ1FYL1NldzAw?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f93a34-4bf9-49c5-48ea-08dd571b6995
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:42:20.6812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wvxX+92SkD8G9tgbCzIrLQwJHz7x3sElQlRKDSth75Jf8Qt1Z47hmpS+qReHRdEMuMm5IDVK47UmugNZXYWZX287o3Ep4e4gLDddEUa0PiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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


On 2/26/2025 8:36 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:14AM +0530, Ankit Nautiyal wrote:
>> During modeset enable sequence, program the fixed timings, and turn on the
>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>
>> For this intel_vrr_set_transcoder now always programs fixed timings.
>> Later if vrr timings are required, vrr_enable() will switch
>> to the real VRR timings.
>>
>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>> and reset in the transcoder enable/disable path.
>>
>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>> v4: Have separate functions to enable/disable VRR CTL
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 40 +++++++++++++--------
>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
>>   4 files changed, 38 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 5082f38b0a02..8863d1526aea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -77,6 +77,7 @@
>>   #include "intel_tc.h"
>>   #include "intel_vdsc.h"
>>   #include "intel_vdsc_regs.h"
>> +#include "intel_vrr.h"
>>   #include "skl_scaler.h"
>>   #include "skl_universal_plane.h"
>>   
>> @@ -3276,6 +3277,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>>   				   const struct intel_crtc_state *old_crtc_state,
>>   				   const struct drm_connector_state *old_conn_state)
>>   {
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>>   		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
>>   						   old_conn_state);
>> @@ -3524,6 +3527,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> +	intel_vrr_transcoder_enable(crtc_state);
>> +
>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>   	intel_audio_sdp_split_update(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 2c4a9ac6f61e..5ec353eceab4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1048,6 +1048,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>   		intel_crtc_vblank_off(old_pipe_crtc_state);
>>   	}
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_disable_transcoder(old_crtc_state);
>>   
>>   	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
>> @@ -1325,6 +1327,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>   
>> +	intel_vrr_transcoder_enable(pipe_config);
>> +
>>   	intel_ddi_clear_act_sent(encoder, pipe_config);
>>   
>>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index e77f5b483b09..551dcc16f0d4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -434,6 +434,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	bool needs_modeset = intel_crtc_needs_modeset(crtc_state);
>>   
>>   	if (intel_crtc_is_joiner_secondary(crtc_state))
>>   		return;
>> @@ -447,12 +448,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>   
>> -	if (!intel_vrr_possible(crtc_state)) {
>> -		intel_de_write(display,
>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> -		return;
>> -	}
>> -
>>   	if (crtc_state->cmrr.enable) {
>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>> @@ -464,14 +459,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>   	}
>>   
>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmin - 1);
>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmax - 1);
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(crtc_state));
>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> -		       crtc_state->vrr.flipline - 1);
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>> +	intel_vrr_update_guardband(crtc_state, needs_modeset);
>>   
>>   	if (HAS_AS_SDP(display))
>>   		intel_de_write(display,
>> @@ -614,6 +603,29 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display))
>> +		return;
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> Hmm. Maybe we should actually program this even for the
> !intel_vrr_always_use_vrr_tg() case, but just leave the enable
> bit unset. That way we shouldn't need the intel_vrr_update_guardband()
> stuff in vrr_set_transcoder_timings().

Yes we can leave the enable bit and program the rest for 
!intel_vrr_always_use_vrr_tg().
Will change this in next version.

>
> We'd still need something for the _lrr() case, but I think that
> could simply call intel_vrr_transcoder_enable() as well.

Alright, will align this with the above change.


>
>> +}
>> +
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display))
>> +		return;
> And if we do the change to the enable() path, then we should probably
> also do this for the !intel_vrr_always_use_vrr_tg() in the name of
> symmetry.

Agreed.


Regards,

Ankit

>
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> +}
>> +
>>   static
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index e4e9cadcdf9e..750a380da9e3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>   struct intel_atomic_state;
>>   struct intel_connector;
>>   struct intel_crtc_state;
>> +struct intel_display;
>>   struct intel_dsb;
>>   
>>   bool intel_vrr_is_capable(struct intel_connector *connector);
>> @@ -37,5 +38,7 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset);
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
