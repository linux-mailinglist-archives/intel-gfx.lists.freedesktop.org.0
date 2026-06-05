Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id foGqAUKAImoDZAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:52:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBDE646268
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:52:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="lR4/zzs+";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E215A11A52E;
	Fri,  5 Jun 2026 07:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E8C11A52C;
 Fri,  5 Jun 2026 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780645950; x=1812181950;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zEFwuLvhbT5sNAcqFgIa0PDFRqA4C3OxTSkvHBEKyC0=;
 b=lR4/zzs+9nxup2RHKtqnspytXgcBhuZXYatLPz5O8Wi2n4YYkwxYrFSC
 YU8LVFb8u/ptU+TdfZ+c1qhzIBGdCo5q9xKOhC8/2t3YS/ohdDwRuHbRk
 KmK++23UPHvqz/2pZF9FDlXL4v5k7GwAI7/EQCmRni6iWq+MiAMUMiz0B
 lXqiAlSLn8l4dlADMJ6SVNGYTe2UfE8gj3AG20h50JCtMyxh8r+R6TBRr
 dlAv9TyGCY6kRhytkFYXQ9Qmuv9OGNndUDeFL5ioYOopZlg3A6QtmQbyE
 Di4lGrkkcR9RDCfqp7KEu7Zp7BSn7Fjqp7G5NCA89G7OA6k7gDmmhmRgM A==;
X-CSE-ConnectionGUID: CTNktW8vTQuWKJ3YZc2flQ==
X-CSE-MsgGUID: Z/XTWRnZQl6hZetQSgvOUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="80515657"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="80515657"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 00:52:29 -0700
X-CSE-ConnectionGUID: RjKn/e3YQJavTXq1A8ypdw==
X-CSE-MsgGUID: Q3rf4EbkRgG73Hix9HZJwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="268709665"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 00:52:29 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 00:52:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 00:52:29 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 00:52:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hYHFW3y85HJec0SmkuuL4xzTybXjsaaxNld+SXgkAD/av6ER4ZgdI8RiUS+Vzve/UEw0Rt90Q1WjgVRtyH+DEoBTPxWhQzM2GbS3nyrKuqxquMBfyS28RAfsE3ENStjwMP5tgFVvizvtGeBm0snVi9MD1pD87AtacaeVQCZLgojgR1bhKn/AxbCAWjmsWntoVaxF/id7k6SDR7/kB2DkhUUSOh0zMiMTxO6pprIWujj0YQJ+UTDW36Ku0SPtE1bMAQ7QzCGoq1yCOiw3c960eQtn7G6q68IVDHnQqZnmBFF2JLt26+VtI3XafVPXeujEkuOT5Mc/BmRpKQcEJBwJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2fLStkG6LwoG/cQacKN74a/WL052/2VL7AqfkxB05s=;
 b=kgSMTHzhcIPugJbPFCSQpRG0Bximy909DKuJIP9KSIdKVEgwcgN5BjqXG2AyRXSXKVmoYFdbV3WQeSn7pGY/NajwmeO5kM0BKcFropYPy8jeYAOrNtJF3AvrX75cE/SXzvoB96WxOyXHipWgqIrKrr3Grd1Ajq+HMaQ/6bagF6BT2Olwt7q2gNWWttiHWj2hcL6KcyD2okQhemZDenLd8+MQBKNEGH58qJlobouLPJ6wR03m9mhZJOFimX8ZfZYoBI2TPcn02wud25BezKoey2BdIMoU9cyLsYVNWaxGP/9W+qeKrjk9BCTHeHidzXe8Wxj7hkTMEvOCKhJZwC9hSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by BL1PR11MB5320.namprd11.prod.outlook.com (2603:10b6:208:316::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 07:52:21 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 07:52:21 +0000
Message-ID: <559c9705-f959-4fe7-9c77-1247b86a3222@intel.com>
Date: Fri, 5 Jun 2026 13:22:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/display: Mask RO bits in gen9_write_dc_state()
To: Jani Nikula <jani.nikula@linux.intel.com>, <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>
References: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260602113134.2477070-1-dibin.moolakadan.subrahmanian@intel.com>
 <9de0611a934b0a1fcfbcb5b78822611ee45cb2b9@intel.com>
 <aiATv_6EYar1AQHX@ideak-desk.lan>
 <2b4a8d43bf1e2c5c578d9a3fe93c3da932bb9742@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <2b4a8d43bf1e2c5c578d9a3fe93c3da932bb9742@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0126.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::7) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|BL1PR11MB5320:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a3e8ffe-ed6f-49b9-bc7f-08dec2d75f62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|56012099006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: BsT/jgmtuKxkEu/iFImrDSLYuNrAdArPbekCGCEo2fizezaBeOyYoaAKDa6TCxH4MXmePVArHSlKtUWw1rfUfGynlIiUBK2JdUTefyeb2yR2FfBjQ7RbtNwiqDOqoQFPtK0ApgxIM1KMFsIrcrawwN0aFmm0oBHL7riNFE3FDY9gtcNDRRhJ0wekHuAxJMgIvVtsMqKHLImr8DO5H4A0O4P8XdtsZfre4Gzs41QrF4ffLlLwqL5plreIYsXHxZbXiWzB03j4wddKKyQ/SyoWABxWF1+nrTsee57C85eHtbAF61ZMA+hAkLJFQpTotvZVAjFQIYjAW31sqnp8mJVk3A1DrMhsKvLKyP1FHVi2VYgO0kl914X0uvpL0aryDkTJYpriBhcmBihOhhiHXGRm6IZVzNRMoQchfDvlal3G8aairGoDQPzlBuvFW9kGT1sTJh5T0Zv4XD7qyakFowpYME3IpR58nAnAqGRZVmphWespBqOmzAeycP3ETyf4bNazHgsaoIcBPyjDrsmAtm/twZBSFneyA2jci+Qmr+t5MrxMbVL/YFjRrRCvP6DI9jsrwDoJw+kAve3GDLfS+a2aR3hRnDsHDZX/lMFO6Q9qSOnAsu972rN4wv5wn8tqXnLF1psShW2t6ElLTo+KFGtOqezWvK/64Y4hdk6l3bIDgOv4VzigdfWcC2uCAAh9Zewm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(56012099006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTRENkYvQzFxd0JVZUNueGU1WFYvbStzOWNJK2pRdGZmOXNSUVUxOE9tMTRN?=
 =?utf-8?B?SzNzeW9YWWluK1pjMFN5WXRLV1dRejNJQUQ5UzlrbW1BRTN0UTVIbDh0S2tY?=
 =?utf-8?B?TUJKb0lIR3lJOU5WQ1lYbE50djhoR2ZLMkg3RmZWb0hDdmo4b21VbzBsRDBK?=
 =?utf-8?B?NVB5WE5QWE9ZYjNLZ0tZQVR1NXFqajNFMjM1RHFueURvdXZkOGhZTjNSeHh5?=
 =?utf-8?B?MTlIZDU5ZkNBNmJiaENOQmtsM2hKQWdKSjkzQktvUnBpaWRGbm1yYWpmWlN5?=
 =?utf-8?B?TmhDOEkrMVlOK3p6M01JL2VuZjVSa3RzZzlBYnl0THlOYWpjVmhKWjZkZER4?=
 =?utf-8?B?TE5ScG5aZWI5aUJZNVc2TkZiY05lenNsM3dyeHVPRS8yNFk4QmpiOVFIRmtO?=
 =?utf-8?B?d3Q1M3crNWNhNDZkRThNcjlLZWJGSzVDbTczZUsyMEVOTjJ4SmgrdWZSTjJz?=
 =?utf-8?B?elBzd0gwTlZ4RVVEQWgyekZsTkpFdkd5MXBKZHI2TEYvTnc3cU9YTHBmTEw5?=
 =?utf-8?B?NFZFMkp0TWJGZlM0bDNDbXBSRC90NUswMHQwdnJoQWd4TExydjJ1UmgrTUVG?=
 =?utf-8?B?Ukh4aTZhakxiMjU5djVJWmVwNEVPazZuNVVyc29nN1RiUkpjY2RQT2hINjQ5?=
 =?utf-8?B?RFJWcjdSa1NuUm56a1VXYlJzN1FnM3MzZlZpVWxvRFRMQUsvT1FSWC9VOHhl?=
 =?utf-8?B?ZC91UzNBSzBYUGdPaW1UM1c0WDBSOTVQY21YQzlTdHJ3REhDdFc0ZVFjQlcx?=
 =?utf-8?B?cSszKzhUdHQ0V01XbEZJZU0wQ3pqcGkxQWdyTkhsOEhrMkt6OHZlMWw1VElp?=
 =?utf-8?B?aWZ1d1FwZE9FUkN5ejUvUm16a3M1RGlxMmVFWk5wME5UYVg2dTJMUlFMbG85?=
 =?utf-8?B?cFVCaUdFYzdaV1FUdkNxRGgyNmVOdkk3ZkxsVE11eEQ0MTM0SmVRVlZpNExF?=
 =?utf-8?B?N1lPNnVWU2VVdGhqY1ZUR1lKMDMyeElmOFRDakpNUHZKM2hKQ2Ixd25ObjRa?=
 =?utf-8?B?d2xqc3FsZ2l0YjdkOW92cFZQOUYxUHJPdC9LVkpaMlN0ZExtVlRkSzh4b2p2?=
 =?utf-8?B?RU1DQzQxemdwTkgwVDhsU2VQZXp0a0JjMWZ5Vy9PQzhWQloxU00vNGRoaFMx?=
 =?utf-8?B?TkNkOXNUNmh4RWM0S0c4SnpJSlZHellrR0FXZlhxeUlOa2xleHlVc1F6QlZM?=
 =?utf-8?B?anMwYjJ3YU9OTklFQkdTSTJHZUkxeWpXcXJOaGpQNWpqelpNVFNSSEQ3MSta?=
 =?utf-8?B?UUxCWS8xU1RBbys5aDRCSGQ1aG1wRHIvdkU2V1c4citEalk2QkZJUVFxa1Z5?=
 =?utf-8?B?a1c0UUYwVEtCTTRyNmhIMEhwNlRSUHNpZFpkbXZidGUzeFBSZHpUdXFDamMr?=
 =?utf-8?B?OEFEUUpMajFwUXpObkNLS3BsUXJjNXlGZDgzZzI0MmxUalp6SFI0cytKNzRj?=
 =?utf-8?B?WlJFM2kzb2VIQXRCbHljdkRLMW1TWFUvMWdCWWF4NWNGVjJON3h4RmQxK3Iv?=
 =?utf-8?B?NDgrdWpzd3BWR1VIVy9qY0ZDV0M0allnZUtTSFBVSFBoUUNzRzhnZ0pISUk1?=
 =?utf-8?B?eXZ2anRSMVN3cExTa1BRb2Z0elhMNmQ3Q2dQYjU1UTlxVVRTeGRjcktJRW1S?=
 =?utf-8?B?ZWFBTWhmcEhhdkhJdFB5NisrSmdCL3BkODF5R3Ixckp5cUZpTTE3OUNpZ3Vq?=
 =?utf-8?B?YlRldWQ4a0JyUGZTY2duY2M2NzhYSlF0QkgxYXVITkxPOTg5aHp5TFdjMXNW?=
 =?utf-8?B?OWRZMDRzaUFURWlmQ2dYSm8yUURCdGR0T1lLNXRZTDVhb3BRb1R4Mjg0UXJB?=
 =?utf-8?B?Q1F1T0VkRjNJMmZNWldMTjd0MFNJRU1KS0JrUzA4OHpRa1JGaC9RZWJ2Q29F?=
 =?utf-8?B?bkJNWEVCZTdTelR4d3ZJcW1UUk1nLy9CclZ2QkZoMmZQcERxdDZlRXpNQVpq?=
 =?utf-8?B?Q2dKOXg1a3ByeGZTeGxVTnQ0amU5N2ozUGVyMFlWY1I1M2dwNmQ1eHp1WjEv?=
 =?utf-8?B?V1N3RitaUmRUSmVqVVJxb01WYnNvSU96d3o0b3RDbEY4c3ArK3ZPSFhKVis3?=
 =?utf-8?B?QVRLNjV0TEhoa3NVeXRPM2cvOUd0K1ZFREF2Vk1lVklXRDFzV2hLMm1waVox?=
 =?utf-8?B?NUtPTUtjMXQ3KzhYN1lPajU1ZFNZRlZlYmR1dTdjL0JEOHBlOGhmMXZ0aytr?=
 =?utf-8?B?RitIazZrS21jVnJ1MkJ3UnhKSWN4cDUrUVVqTnBPYmpPTU5ZQ3ZIQ0JYaHJD?=
 =?utf-8?B?NHIxSVZuMGF4MmdPeEk2a3M3dm1Sam1kM3FEeEdVR0NTMjBRNmo4OW5sT1Yz?=
 =?utf-8?B?bUE4cDZ3c0lGNzUwOVBUakFZMUpkdEtwZ3lOUm9LQ1J3OXZnTjNYRmpUME01?=
 =?utf-8?Q?GvG87WwCh643MVokGPzIeVlnblcQ3ybwme0It?=
X-Exchange-RoutingPolicyChecked: eYrjaowHDRsuPP0QdoC2NIIvBGDbhqN9EQKBVha39Q4d++dPlcNfjv3EZaMvwi4GR3ppBMFnyRCyZEdG4HUL7kVDnPn4RwwHMQUovK+6oDByFpE9GsYUuvSmByj2kjPSPH4Ec5P2cuNr/tN8yZajH/CaM/cobSS595JvGD3H1Gw3bi19k4KGNjdNCZR0Oy55cAjn4fCGmAYVe1SVFeeW7oIY6bQvOpXZMPHQaxtW1fGPEUQIOtsFR5R2Iwxv68sRgoc9TiqUZWCXwqrGgA7hfY3314t4I2UBfOpo02jlg0/hkDiedx++Y9ViUPZ7wN5ofvz9s1Yap84Mhn158UGoxA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3e8ffe-ed6f-49b9-bc7f-08dec2d75f62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 07:52:21.2627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: StIyK0u3r9pjJ/OKKprhwGifXI305zvtltfRZdfJLiLn405eY275nGOC7+gNZRpbaiAa0nJjZgwpxXJM/qYPbEM45ifCpg/dwjdP2+EvvcE0HvIyfZgCCU1gjOwLzkTi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5320
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CBDE646268

On 6/3/2026 8:46 PM, Jani Nikula wrote:
> On Wed, 03 Jun 2026, Imre Deak <imre.deak@intel.com> wrote:
>> On Wed, Jun 03, 2026 at 11:30:04AM +0300, Jani Nikula wrote:
>>> On Tue, 02 Jun 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>> +static u32 dc_state_ro_mask(struct intel_display *display)
>>>> +{
>>>> +	if (DISPLAY_VER(display) >= 20)
>>>> +		return BIT(10) | BIT(11);
>>>> +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
>>>> +		return BIT(10);
>>> Register contents need to be defined next to the register definition.
>>>
>>> But even so, the caller already has the mask we want to change, I
>>> already suggested passing that in. What's wrong with that?
>> The mask used by the caller only contains the bits which the driver
>> changes. However I would like to know that writing all the other bits in
>> the register also take their effect, reflected by the read-back after the
>> write.
> Fair enough. The first comment still stands, let's not hardcode the bits
> here inline.

Thank you Imre, Jani for confirming mask logic.
I will keep the mask logic as is for next version and add bit definitions
next to DC_STATE_EN register.

> BR,
> Jani.
>
>

