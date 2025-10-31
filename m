Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24381C25001
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 13:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADE210EB1E;
	Fri, 31 Oct 2025 12:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lH5MCNbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC2310EB1E;
 Fri, 31 Oct 2025 12:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761913780; x=1793449780;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=bIMdw9coPYAtb3Hd99nH+G2cY+K8Ty4dIKio1x8fjbo=;
 b=lH5MCNbnqc8PpYEqGjNI/MSlqauAytALjWNglSCXySur2B3+Wc48GQmr
 c8ihIqmYdKj+tGLXPfMZNcckWVYP2LpqvukgoeYNGE0D0q0KsLZuAMN1h
 vZ4M3RySQ9uV+fEO2jiirGysJlKcUseS7y5DHdELa3T5CpZxVAPHf/nWd
 0B9+KEgdgfg/y+pXiP00p6csfgmPHGfzhSYSxTOHRsDFy9U/wp1DpcDok
 ofKUG0UBGW1BGH7A1iBNXumzRatDKj1ZYQYdLWSP+f8NBjfAm/EgY9vuD
 NojQECEZXEIjeTjswyDGWpOH3Xjbf68w6Y3U/zVPiLD9OcgIyLxu67v4p w==;
X-CSE-ConnectionGUID: pdoeNqdgSjKOT6ghs+UMlg==
X-CSE-MsgGUID: 2LITuzM1QN2rbuEi/KoELw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63989586"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="63989586"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 05:29:40 -0700
X-CSE-ConnectionGUID: ZTnWrY+dTmSntVE7Qa1G3Q==
X-CSE-MsgGUID: JoOpfyEdRTemxxYEjOOnOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190572353"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 05:29:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 05:29:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 05:29:39 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 05:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bALeeFU5qOn+UvFgD7QZ2Ujph0SKlcIpbPpdZKc6wA+sYcRd5rmc5aPZXCnJU+SvB4dBQW74XiQ1zaFYVlZUuMOC7As3mABopwgG1AKY9/XaNugI7pIeTa+HVpO+Ae7UOCYW+1jYyfekZ91otvGnDjerm9kWTmfvh2C+mP05wvfSGU8ByYUmBaNjd+ZQQSCXXwQX+L+Ljzn2yNcngDvyO/EEvEg86WlviR/TVvmO7skFfdCZPOazOCsY3TEBoW0LML8Jvtmyd2xSyDYo8XTHVf1IKCu1e7yBu1coa55wEJZlqFs0/ThJvTu9nAXfeyH4D6gDxpRZ5EzRWpI+KkEZ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIMdw9coPYAtb3Hd99nH+G2cY+K8Ty4dIKio1x8fjbo=;
 b=mvfye5DCzVsSKLLh1LHiR5R3/9006gSNrK/Xr9Aj7OCMt5Xpikcfw1aogWoQE1GZaTggSa6A9iLbik6HibMF2Avcz4E1gWfepzDFnvM8LCPIjRrv9klVmSbV13m6Rq/+NqgfFnvIdiR3gG6xv3zyRkP9c1nRZbPy1hIvzBRpK/U431kJUjgfla/wzZLAvoNnAft72dC6YxRceVj1Bp89BvGdPvXDSGasYsRqU2F8juLs1QBbcPOh0nYa2Bg8oSh+gLCI48Qa/AnC5nLZd2lFOek1kE0LaSmGZ+4AZlc5P8kib7F9HtoODOU7lAatSkYpS1tbyqmJ+r0uQ4OwuWVZYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by IA4PR11MB9419.namprd11.prod.outlook.com (2603:10b6:208:564::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 12:29:36 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%7]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 12:29:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 0/6] Use display parent interface for runtime pm
Thread-Topic: [PATCH v3 0/6] Use display parent interface for runtime pm
Thread-Index: AQHcSdvSCllfo1EqikKTRkeHT0J74LTcFLiAgAAblwA=
Date: Fri, 31 Oct 2025 12:29:36 +0000
Message-ID: <173012c68f40ea9a08bddc1737fd87ed2715b4be.camel@intel.com>
References: <20251030202836.1815680-1-jouni.hogander@intel.com>
 <d28d4a6355e691f27c2dc2dffe62cc0242b11860@intel.com>
In-Reply-To: <d28d4a6355e691f27c2dc2dffe62cc0242b11860@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|IA4PR11MB9419:EE_
x-ms-office365-filtering-correlation-id: 233daa8e-c673-42e3-b5ff-08de18792766
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dEM4ZjQ5ZGlOeU5QaXowVUZ5cWdGUWZoNm92K2pYK09wdlNFTTUwYUg2aVBy?=
 =?utf-8?B?RkhVR1JndExMbzJxWVI4cjdMWUxwUFlDWlU3TDE0dTdRYXhTWWEyZThKTmgv?=
 =?utf-8?B?RC9TbWdxWE9QQW5MczFNOVkxUUxqOWs1V2M5bzgxODFrZFphVUl0SlB6VUg4?=
 =?utf-8?B?NnhoM2xnWFFqQm5oZ2daUTZKUFlBQjQ4RXNNNHR4OEVoN2Vyc2Z3Tk41dVVY?=
 =?utf-8?B?Y25pTUh6UkZwQ2FNdUhtQlFLUHlRMkdhR0t1TGJ4Sm5uMEg5YndNSUIwdmEv?=
 =?utf-8?B?aENaVW5YSFZhYmNNM0ltYTBjQ2g4MGlZbVZVMnR3dTloc205MGtxbTBRQVV3?=
 =?utf-8?B?Ump1UTBKWlFzM0J5TW0reTV1bk9pYSs4MzNEMXA0NkcxZ3pJVFZUbm1aQlNm?=
 =?utf-8?B?aEFWbHVGaGx2dDY2ZFRucWR3eU83VkRCT0EvMVlUdE9vZUdRczRpMDRHNkZQ?=
 =?utf-8?B?NWd5WEZ4VDZBWWM3VUM5YlJQVGxRRlZWd3JaWnNBSFZMZ1MyNGxlSmpTbGRo?=
 =?utf-8?B?QUtZYWUvMDloSWZBZDVYVW5ldFZ3dXNwV2owSktGcENFY2tvV1c1Wlg1WGs0?=
 =?utf-8?B?VTk2UlM1RlJTaUpVTHlxOWcyNy9oUk5ZVWtRT0dlcHYvYmxnOUV4eXpmTmpi?=
 =?utf-8?B?WGxQKzF0V2VxYmJRSzJ1TVFaZ21TdlJ2M0lhUVV6VmxrVDlzK1doSzdKaWlN?=
 =?utf-8?B?OEtwVndrbEw0bitwSkJWVWtXeGFaMG41WVFsVURLNW5tOHR6NVVpSjZMYVdN?=
 =?utf-8?B?czRaZW1uZnIrVnlaRW0wcW5QMk9Obk9GbW1vdWxKU3V3UTh5K1FuWlFpRnlo?=
 =?utf-8?B?eTZyYVYvU0hEK2hJR09laWEzclVLZjhWdllWbStaN3dKQkFPaW9PVXpoQUJs?=
 =?utf-8?B?VWpzbXVucnJRbDYyWks5WkdKZFRFb1B1V3VSUThSYVcwRm14QklLcVBsblZH?=
 =?utf-8?B?bGZCVHdWK1czd2pGVEhwSUVsbVo0YVRERXI1eTlteis4QS9NTG1BaXE5T3VC?=
 =?utf-8?B?d3pPR0gvUGlob3FjMXRzNXdhTjhoakFmdWp4T0JQY1FibEJvVEpDRVlZTU84?=
 =?utf-8?B?SU9LR2F5bE5ybXJVLzBRSElKN3hWZEZ3WWJEVzZkVS9pd1JQOTF1Y0JkdWQw?=
 =?utf-8?B?R3pibGg1blNqUllFL0FVK3lrRmE0NkZLUXZoN2hKbWpjdWxwdUY2Y0VBVHVa?=
 =?utf-8?B?VmlzK2d6c2luWStybkZTNnUwVm9YbFo1c0plYXlMSmpmK0FXYXRjOGlDUHR6?=
 =?utf-8?B?YnVkUkM5N1hzWittKytWYUo1SDg4S2hEVFowV3NJdTRVekJMOTh0MXNMenRt?=
 =?utf-8?B?TTJpM1BYbVpwUlllblhVTjg1am55MHhvandkRTdBclNtQkV6bit0czJUYjBj?=
 =?utf-8?B?bUZnUTl4c1Z5WS9OQjlqdVB1OXBaRFhIQVVxcEhhQkhyVEFxSWhHSE1KWVF6?=
 =?utf-8?B?TG82dzAzTmVVdHNrd3V5VzFtbGdWUFJKdGJuLzFQYUtieDN6OHo5UHlPRlMw?=
 =?utf-8?B?OGM4N1BBUzJtN2w5WTJvMm9HWnAyWWMzR0p0MVhxTjdYK01EWGRTK1NOREdp?=
 =?utf-8?B?SXh5T2trQjdHeDdaallMcUM1NFBoamtXZWZGSkRGMFRodllPemRpNjRTaDhE?=
 =?utf-8?B?SnlHT3hYSmhuRjVhL3hCSXRMRGE3UHJaOGFveWRydUhMUEN6TS9BQzhVTXhq?=
 =?utf-8?B?Y1hmMDFnUFpxQ3dPdm9VaDVIV2Q2VnhqaWw2MG14c1d3Q3JSS2NYQVc4V1Vw?=
 =?utf-8?B?M0FpTjlUMVhpaDlMWFRvUUhIbGFEMmd2eG1EVDJkTFVXS3VYWDFkN0E3SUUx?=
 =?utf-8?B?MlZmbHlMdHdCOXBxeUR2c3ZvNzZUaXpZcytjVXd2NExEUE1udFpHRnQ4UHhk?=
 =?utf-8?B?U2ppdnl1ZUpReWhXMVp1T2FWdzhnU2JxVmp1c1VBS2dHYmRGSFdPSGdoc0J4?=
 =?utf-8?B?Rk5YakxyWDRvSjhiZnRKc3g2d0dHZTJCWVRDRHlXQUFCV1k3VlZqV2Z4ZjY5?=
 =?utf-8?B?WEpRUTVnbkQ4THZUYW9oTndyc1BsbDRPRnpIUkNTVlQ2OXVLTG1CLzkxSFV5?=
 =?utf-8?Q?zd8frR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dG5WaW05c0xOUEh3ckM2Y05VWnlLcjJuZmR4OHhtdk5oNEJVbmNqeWFKbjVh?=
 =?utf-8?B?d1IyVzc5eWtZWUFNTkt2RHU5cm5yNWJOdGRZc1p2VFlrZ3pZQ2JEZWpERFJx?=
 =?utf-8?B?ajFSNlJMZE5XOFRkQThIQUxsZmMxelNFYzRseFErQmJsNmVDcUcvbzhpWTgw?=
 =?utf-8?B?S1pINm5maFRSR1lISzgzaXdjQUowRytmamM3NjN0em5zRnRNWTBwWjdjMTdl?=
 =?utf-8?B?eUpxOUg3TlZXL1NzNDBpR3lYSExlNytzTEM1RXlmNFhBTml2V3RxcEloN3p6?=
 =?utf-8?B?ZTg1dlJPN3ZRQmZ1Q1pxTUVQaWJQY1BUVlAxZVhaMTFTUHAycFczSjJjbFNH?=
 =?utf-8?B?ZURXUUd5K1ZISUFDajVRRmdNM2VYclVFZCtMdmN0ekFFRXZLNWNhQ3I5cStK?=
 =?utf-8?B?MVlLWVJKVzI0ckgzcnNOSmNNTFVZQ004bFQ3WEVHQ3NSZlI2UTdNdkFSWXEy?=
 =?utf-8?B?R3gwc2t2MW9rdFFlK2tYZUpCRmdFcVF3dFlMbjdGbk1ic0RqYzNHaDRrYm1t?=
 =?utf-8?B?V3dRQkVSQXlZM1N2Qm9ybXlhQzN1V2NsbEZLZTJRbU1mbDhKNm90Q1RMaUUv?=
 =?utf-8?B?NWF2a1lMQjY0YzliWVMxNGI2bEJUbDJwbzgwTU1ZbzY2d1FFTFpPcHI0VHB1?=
 =?utf-8?B?cUM0T2c5Zk5LREJWQVFxbkNta0tzWnYvaFJOcWo1emMwOHVKYnR4VmNMbnRy?=
 =?utf-8?B?K1VZcURQQ0x4NkJsM2kxUXlWbDh4cGlFdGp6TXF0UWxMSTZTL0V1YzBZc2hL?=
 =?utf-8?B?YjRVdUpaNDZHZnVzUjhnTCtybFhHdGd4UG02OUJCV0RXcnl2cktka1c0R00r?=
 =?utf-8?B?ZURrTEswOXBUcFlmUEtOdVk5OFdMTGFpWGhnSjRMYXpYVFZETDZQSnRYQmxo?=
 =?utf-8?B?aUFmNm5jMzBjM3dBZm9ySFc0SHpickhpNFA3aDZ5K3E4dVZUOXZnL2FpMHR5?=
 =?utf-8?B?T0VUTEVFbmJNTWRhSjYrNE9xdkt1cWErU2pMTnhZd1FURkhHVTIrakcyK1Nu?=
 =?utf-8?B?NWtvQTdtVjF1Y1RjUzhtZHVsWXZUeFlMK0ZBMWF4V2NtV1RFS3hDL2N0d1oz?=
 =?utf-8?B?T1BjUTJzMllEVlZneGZNeGNBVzhoQ1QwR3g2VkhIemNmWVNXNnArUWQ5eTlo?=
 =?utf-8?B?TTRoRElJQ05iamVCV0JGdTI5ZXZnd2lKTTVpWTBmN1hvaHVvMVZoUVo0MFdt?=
 =?utf-8?B?YW0zVmF3UE9OekZrNUg2U1NOb05BVGlOUkdoTEpRNXJHalEwZ0xkWlE2VVA4?=
 =?utf-8?B?S1Qxckk0VlpxWkl4MTdwWHRQVnJCdnl1QzFOTjBQenhpQzVpNVdNdlFGV25V?=
 =?utf-8?B?aDhUTTIvb054eTczcUZmbzNZZjBLRVRjZXhDYlhLS080VmFLditkZGZRTzJi?=
 =?utf-8?B?R2IzUnhmY1c2R3duNWYyUHpLeFRoMWFrcW8xNG5KbnhubFNWZ2w0b0lqME96?=
 =?utf-8?B?U1RzTmM3ODZ0STRHYms2NVkwWWNPRzdscXVwZmQyR1MyWFBPQ1ZuakwrN3gv?=
 =?utf-8?B?K2hxWEZXYjJPWmF0UU5TYVFMVWNBWkhBbGR5TDUrbmZlZ0RmRlI2S2k5RlY3?=
 =?utf-8?B?d3NubVdaMmdZT05qWEFVNVFpRDZrdTd6NzJiMUpVK2JJT0VMM1dlcmtDc3ky?=
 =?utf-8?B?RXNjZlpkSDVDNWhPcUcvZERIUEVlK08xbjlQSW9KaU5PeXZXM2xiVitVSXA0?=
 =?utf-8?B?MWI4U05aN21rQjhsYzRNRkRqRnRoY08wcjRwUDFVbHFXam5aVWF3WEdlYnNX?=
 =?utf-8?B?bUV5VjBZZGhUNEJwazErYWlEakljUVdPVE9tQXJYSUIyT3duQkN2ai93Nldq?=
 =?utf-8?B?NE9NeTA0ZkJFVjBZNjd6TGE2QklUbVQ0M0d2Zk5mMkU3WmtIOG05bWVGMnBi?=
 =?utf-8?B?cCtPMkNFQW1VaGFld0NjaVluaVVRd01PRmsvcWhOazR4Q1JvdGxxOVFkLytN?=
 =?utf-8?B?WHBQRnNrMnlYUWN2ODE5Kzg3bEZiWnhVQlR3STY3OE5vb3lQM2EwY3lwVGtY?=
 =?utf-8?B?VWtabWJPdDdXQmRkdEhmWno3MUhqak5qUVlENGdLLzRWUHJVZDVXejNwaWJq?=
 =?utf-8?B?RlFyQm5Ga1BMNWpLQmlYaGZpY3htNHl0aytiV1MvY25XWW5QdDBRZnI3akZY?=
 =?utf-8?B?RVdON0NpdWFlMGFDOEtFb2IxeFcrb3lNNjFLVThsN3ZzU2lIVXZaN1VNMU90?=
 =?utf-8?B?YXJSR1JxOUhxSE5FbkVrOTBwbnNpc1Y1MnllVnQ1S3hPZm1ESE1UaDYwYjFW?=
 =?utf-8?B?QS9LR1FVaUxBbkh5VzRvVlJBZ1RnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D62D331C31D42C4DA5B2520BA7888530@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 233daa8e-c673-42e3-b5ff-08de18792766
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 12:29:36.4081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WgDX9cpWshnZVgUI2kwg1lQXof0kyPnBxbRUxBIllQWAdDYDcSJ6rVKsgTvNNUnj7I4K6R9ignAeuxciGZ16YyHCi9Eg8eOE2hq0i0wajhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9419
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

T24gRnJpLCAyMDI1LTEwLTMxIGF0IDEyOjUwICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAzMCBPY3QgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEFkZCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9wYXJlbnRfaW50ZXJm
YWNlIHdoaWNoIGlzIHN1cHBvc2VkIHRvDQo+ID4gY29udGFpbg0KPiA+IGZ1bmN0aW9uIHBvaW50
ZXJzIHBhc3NlZCBhdCBkaXNwbGF5IHByb2JlLiBUaGlzIGlzIHN1cHBvc2VkIHRvDQo+ID4gYWxs
b3cNCj4gPiBkaWZmZXJpbmcgaW1wbGVtZW50YXRpb25zIGJldHdlZW4gaTkxNSBhbmQgeGUgZHJp
dmVycy4NCj4gPiANCj4gPiBBZGQgcnVudGltZSBwbSBhcyBhbiBleGFtcGxlIGFuZCBmaXJzdCBz
ZXQgb2YgZnVuY3Rpb25zIHVzaW5nIHRoaXMNCj4gPiBuZXcNCj4gPiBtZWNoYW5pc20uIFBhc3Mg
b3duIGltcGxlbWVudGF0aW9ucyBvZiBydW50aW1lIGZyb20gaTkxNSBhbmQgeGUNCj4gPiBkcml2
ZXJzIGR1cmluZyBwcm9iZS4NCj4gDQo+IEdvb2Qgc3R1ZmYsIGxldCdzIG1lcmdlPyBXZSd2ZSBn
b3QgdHdvIHNldHMgb2YgZXllcyBvbiBwYXRjaCAxLA0KPiB0aGF0J3MNCj4gZW5vdWdoLg0KDQpJ
IGNhbiBtZXJnZSB0aGVzZSBlYXJseSBuZXh0IHdlZWsuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiANCj4gPiB2MzoNCj4gPiDCoCAtIHVzZWxl
c3MgaW5jbHVkZXMgcmVtb3ZlZA0KPiA+IMKgIC0gZHJvcCB4ZV9kaXNwbGF5X3JwbV97Z2V0LCBw
dXR9X3Jhdw0KPiA+IHYyOg0KPiA+IMKgIC0gdW5yZWxhdGVkIGluY2x1ZGUgcmVtb3ZhbCBkcm9w
cGVkDQo+ID4gwqAgLSBhZGQgX2ludGVyZmFjZSBzdWZmaXggdG8gcnBtIGZ1bmN0aW9uIHBvaW50
ZXIgc3RydWN0DQo+ID4gwqAgLSBhZGQgc3RydWN0IHJlZl90cmFja2VyIGZvcndhcmQgZGVjbGFy
YXRpb24NCj4gPiDCoCAtIHVzZSBrZXJuZWwtZG9jIGNvbW1lbnRzIGFzIG5lZWRlZA0KPiA+IMKg
IC0gbW92ZSBpOTE1IGRpc3BsYXkgcnBtIGludGVyZmFjZSBpbXBsZW1lbnRhdGlvbiB0bw0KPiA+
IGludGVsX3J1bnRpbWVfcG0uYw0KPiA+IMKgIC0gcmVuYW1lIGludGVsX2Rpc3BsYXkgYXMgaTkx
NV9kaXNwbGF5DQo+ID4gwqAgLSBtb3ZlIHhlX2Rpc3BsYXlfcnBtX2ludGVyZmFjZSBjb2RlIGlu
dG8geGVfZGlzcGxheV9ycG0uYw0KPiA+IMKgIC0gcmVuYW1lIHhlX3JwbSBhcyB4ZV9kaXNwbGF5
X3JwbQ0KPiA+IMKgIC0gdXNlIDw+IHdoZW4gaW5jbHVkaW5nIGRybS9pbnRlbC9kaXNwbGF5X3Bh
cmVudF9pbnRlcmZhY2UuaA0KPiA+IMKgIC0gZHJvcCBjaGVja3MgZm9yIHZhbGlkaXR5IG9mIHJw
bSBmdW5jdGlvbiBwb2ludGVycw0KPiA+IMKgIC0ga2VlcCB4ZV9kaXNwbGF5X3JwbS5jDQo+ID4g
DQo+ID4gSmFuaSBOaWt1bGEgKDEpOg0KPiA+IMKgIGRybS97aTkxNSx4ZX0vZGlzcGxheTogcGFz
cyBwYXJlbnQgaW50ZXJmYWNlIHRvIGRpc3BsYXkgcHJvYmUNCj4gPiANCj4gPiBKb3VuaSBIw7Zn
YW5kZXIgKDUpOg0KPiA+IMKgIGRybS97aTkxNSx4ZX0vZGlzcGxheTogQWRkIGRpc3BsYXkgcnVu
dGltZSBwbSBwYXJlbnQgaW50ZXJmYWNlDQo+ID4gwqAgZHJtL2k5MTUvZGlzcGxheTogUnVudGlt
ZSBwbSB3cmFwcGVycyBmb3IgZGlzcGxheSBwYXJlbnQNCj4gPiBpbnRlcmZhY2UNCj4gPiDCoCBk
cm0veGUvZGlzcGxheTogUnVudGltZSBwbSB3cmFwcGVycyBmb3IgZGlzcGxheSBwYXJlbnQgaW50
ZXJmYWNlDQo+ID4gwqAgZHJtL2k5MTUvZGlzcGxheTogVXNlIGRpc3BsYXkgcGFyZW50IGludGVy
ZmFjZSBmb3IgaTkxNSBydW50aW1lDQo+ID4gcG0NCj4gPiDCoCBkcm0veGUvZGlzcGxheTogVXNl
IGRpc3BsYXkgcGFyZW50IGludGVyZmFjZSBmb3IgeGUgcnVudGltZSBwbQ0KPiA+IA0KPiA+IMKg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIHzCoCA0ICsNCj4g
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmPCoMKgIHzCoCA1
ICstDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5owqDC
oCB8wqAgNCArLQ0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cnBtLmPCoCB8IDMzICsrKystLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEyICsrLQ0KPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcml2ZXIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKw0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jwqDCoMKgwqDCoMKgIHwg
NzcNCj4gPiArKysrKysrKysrKysrKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ydW50aW1lX3BtLmjCoMKgwqDCoMKgwqAgfMKgIDMgKw0KPiA+IMKgLi4uL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmPCoCB8wqAgNCArLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL3hlL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXkuY8Kg
wqDCoMKgwqDCoCB8wqAgOCArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVf
ZGlzcGxheV9ycG0uY8KgwqAgfCA2MSArKysrKysrLS0tLS0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXlfcnBtLmjCoMKgIHwgMTEgKysrDQo+ID4gwqBpbmNs
dWRlL2RybS9pbnRlbC9kaXNwbGF5X3BhcmVudF9pbnRlcmZhY2UuaMKgIHwgNDUgKysrKysrKysr
KysNCj4gPiDCoDE0IGZpbGVzIGNoYW5nZWQsIDIxNSBpbnNlcnRpb25zKCspLCA1NSBkZWxldGlv
bnMoLSkNCj4gPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxh
eS94ZV9kaXNwbGF5X3JwbS5oDQo+ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kcm0v
aW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmgNCj4gDQoNCg==
