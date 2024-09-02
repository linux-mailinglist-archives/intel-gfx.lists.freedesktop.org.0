Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B39967E7E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 06:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AA310E1F2;
	Mon,  2 Sep 2024 04:37:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1S8nLg3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB6C10E1F2;
 Mon,  2 Sep 2024 04:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725251830; x=1756787830;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4o9KfVPNIYS7q748kunQBww2Kyyx5NZYlg58nrSmans=;
 b=S1S8nLg3OCUxNVHiDlqwNszG/TQK0oa1OH1NlZan7GlTX210HgZsJh47
 VNGmYJPDAzjAp1G99MjE7JXiKULnrp8iexOugqGPOh+Qc/5nB79DSvry1
 q3zRnQDOdUqNEXqvl9hAzpe0kiakoB/C3tG+0ds2iyeUw9fl0JOCv9qy5
 H4ZfE6INvW3BmatYWObEOo3nw+WzCpPSAQ87YLUc3Q6J5MR5t3+XnYso1
 BqUqFewVHfaWfN3sQ1XP/LedfUWyPeHJoJEBuJ1kKs5pTXAPUDClBaXyh
 Tz3f9hnMv3hR0rSUSpYTjN/a51cCgxmqvjEmxVQJ5xxuc3BRG1LEuUxL8 g==;
X-CSE-ConnectionGUID: UT2CfJ/+QA2hMbEQlAKdAA==
X-CSE-MsgGUID: dtuvNZHPQT2XA1VuUGa3gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23937337"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23937337"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 21:37:10 -0700
X-CSE-ConnectionGUID: JbeKNcPqQf6MCOZ2zAE+Bw==
X-CSE-MsgGUID: QphgIHouQ8eTGaLi8p06Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="69286166"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2024 21:37:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 1 Sep 2024 21:37:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 1 Sep 2024 21:37:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 1 Sep 2024 21:37:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 1 Sep 2024 21:37:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zNRWndzoynMnygwnVmAFTgd3KzMC4EGOZgfByfgSbRsr3JQHQVfyDdcfW/VmW2RqFRFW7IWY/23iGgxOxWenEEp9qdOzt8KSqj+62rjeg+f+Jw4Ty9FsFPfcCkZuPjLyvEx+Fwoy8zFsKh00lPtg+uzkxBkTSqx3Jwq3HYiAK3Q3ccOEuBJB+6E0y7BspvjBabgkGkt9Rp0iQhR3RxYKjhPtN0yDOlArtw2WPo880tZZgbmyjPkbXFv3D6xWUHzXDpwaSt0X+YaNJeOK8q8S3nWzMaO9niY60klwHCptSRWoDpQa9T7FGnoOIOipU8DIN9dXCBGwcNnMOQVZbDmqmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T93KxSDrj1nXEZwI6t+KnWEwzwmkfvUhgRmmgtdnLw4=;
 b=fof/bkX5j59fD9SFN2GYHXeqS8qjagAdQUAa54LUEXrmN6btFiLjI27WIZ0fPot/KzCVbStX3bKG+XIFR231TrKm3bdJNy2MDRsTilgbWRtwH4VXNNWQ7uwcZU2zpPwWR9CnQljdWvClqmT5WxkQ3CkrPZPd/djif5M0+1NdKEJS9Qp/snaTledCIo+OECdEyWk9SwX4jltcRg4IZKrZ4jSoWDR2y0rFYSv6x1K0sTVad19eRTMURaPiL+rkfi5IGY7Vc0Ih36BSut7dP1bWWJhhkioVOT7p1ihCAqLxY4YB6Cw1tW3PM92IMQYy5qNwFsOJwSz65xC7bSKlqiKRFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6095.namprd11.prod.outlook.com (2603:10b6:8:aa::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 04:37:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 04:37:06 +0000
Message-ID: <6eb3cb54-a8b8-4035-8070-c2e4a507c0dd@intel.com>
Date: Mon, 2 Sep 2024 10:06:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/19] drm/i915/dss_regs: Use REG_* macros for the DSS ctl
 bits
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <suraj.kandpal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
 <20240830050950.2528450-3-ankit.k.nautiyal@intel.com>
 <ZtGqzFZzkn-HoVC4@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtGqzFZzkn-HoVC4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6095:EE_
X-MS-Office365-Filtering-Correlation-Id: 720cca7a-a926-4ccb-ae0d-08dccb08e625
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3BxNURkSWpvT0l0Z0prUlVabithanVlMVZlVS9yTzNmYTI4T0FRMzBGOGc3?=
 =?utf-8?B?KzZIR05RQjdnbFJrVGdpaHdTV09KcjFjRGpoMTJZWW5yaDFqbHNmcG5zaXZQ?=
 =?utf-8?B?VGtxNzhndFJFaU5XekV3eXpoK0NjNlVkanllUHljdmhMbUdyOVhsTE90bG5l?=
 =?utf-8?B?UXhkeXNsVlBLb1dqdkgxdko5Y1k4enFWNzBwakpmN0t2SnNFOE9INGFIR1RD?=
 =?utf-8?B?eHVMRGRkVmdIaHFUTENWdXd2c2E4VkY2QWJiM0tvUThhaEpWQkh6d3A3c3dX?=
 =?utf-8?B?YmN1OWJuRVI2TW5FcUEwUFpORll1a0dQZ2UzbTkrNTF2S3BnY0o1TDdRdFZH?=
 =?utf-8?B?c2pmcXdHT0NDMnhSN3dodTh2TjV2OGhkaDBKa3JPdmhYMEJXdjA5V2hHK2Jn?=
 =?utf-8?B?ZWNab2Vmai9jdUo3RElQRzhVRU96TnpkMzY5Vm9rOGcyVWx4cWh2MlZtVGRG?=
 =?utf-8?B?UzNBOXZSMVdDTHpnaE9vRkhkV0NRdDFWQjhOZUEwcHNscnBzbWtrcHh2d2RS?=
 =?utf-8?B?SFJXcWtINTByc1ZmVkN1Q3MyNldEcVZCL2hySzIwSGRjZUNaWGFxUG83c2Yx?=
 =?utf-8?B?M0JKWCtUb05VR0oxVzF2WTJmdHdickdxSWJsRG8vbEYrNkMvZHQyK01iMjZX?=
 =?utf-8?B?dWFtbDZJdjMxQy9qQjQwYUdSNlJHVFZhaENsRi9SRHluczdIZVBIYys5U0My?=
 =?utf-8?B?WEZxcGNLZG9US21DQVA5WmhaeGFwdXFYTzVjVlZPVkxTWjB2TDFpWGUrMFpa?=
 =?utf-8?B?eVN0SlllMjlpT1hhOHBscC8ycFNFUjdwTTM2UlRPM1J0d0JYSml3dVdLMy96?=
 =?utf-8?B?WGRQQXREZHdweDQ5Z2lMcWlsVTRHajdOeHpJYVZRS1VEODUyWUV1bXJFT2ZO?=
 =?utf-8?B?a05MYUhvdlI3cG1ZSDlwRFNkRml5djI0amcvU3ZQTmpJd1JoZ25CeTgwZEty?=
 =?utf-8?B?NFcrck1uNnd3UHQxbHNRSGF2NmluUHl2b0k4STkvRENib0hqa3FkZk5yQUhF?=
 =?utf-8?B?b2pkMGNNTEdEMUJ6bXo4Rm85ZkUrdTllZ0ZtUlU0QzFsNVZ6dmZFNkl0TkNW?=
 =?utf-8?B?bmlUOHpIVzJuTS9wZk4zQ1ZZbE9lUkpLVFR2aHpBZ0tyN25sd1FoeDkwYkNi?=
 =?utf-8?B?c3I0aDlNbHM5OFRMMStCMU0vZU5DV2Z5OEt3UUF3aDlCMGNEa1NIQlJ4SmFT?=
 =?utf-8?B?MWREODJMVTNnaEhQdDZqa3A3L0YwakdJNVZXcHl1RW8yU2tET05kVmdURFho?=
 =?utf-8?B?aG5sUG8rSmJYdXBGOXBtNHlVblVmQTU0R0oyTFVrWmJmLzRCUFlGeDh6Q1B6?=
 =?utf-8?B?T2tqeEZSZHdMS1FyZXN1eW81eU5IMmVYUEFqSDdnYnRXWDFpcnBLd2UrK0pO?=
 =?utf-8?B?alJuaFUvR05mM2hHVGtrVlJEVkMyTlltVHV5Z3BvdkI1Y3REUmJaVitxbjVr?=
 =?utf-8?B?N2s5MHJMZmRSdGEyR2svZVhZSUl6Mk9xbTQ2aHhqdjc2SzY5VitSeVNSMzc0?=
 =?utf-8?B?VEZWa00rNExOQlZTYXpSY0RRYk9BME1rdDZEQVFCZG5lTTNUNXN4Y0J2aGRD?=
 =?utf-8?B?cHloMERvWTZJdEtuNzBZcGU1WkVHcGJtREk4d1pHR1J3UWhNSzFQUWxuUkdo?=
 =?utf-8?B?SFVYdkxnMFRYUFVRdkM3NzY0WnEwT284ejVpTDRPUi9FbC9aQnFrdmwwSGh0?=
 =?utf-8?B?U3JsK1FvU2x1K21jQy9rd1g1aG9URUFxZDlFNEpSTWpIenRrOGpkOE4ybkdC?=
 =?utf-8?B?R1REWFhVYW1lUDBKUE1iWFg0Q1BFOExPdUlMNldDeXgyd3dvTlV2L2Q1ZnZG?=
 =?utf-8?B?SnZhbFNiRlRsdms0eXZsZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUVPRVVSZzNWOVZmeHpmTHQ0T3pCRGxtUzM4bXRoWDlUNHZCaHp2ajh4czZB?=
 =?utf-8?B?U25mQ3BESmRLdXlWYkhUQ0xQT1dJL1lXclozRHhSZnNpUHdHaDdXSUQ4bVRI?=
 =?utf-8?B?S1hxRUx1Sjd6cjRqTmJpL0JTWndJUXpRRHZoaW5tRlZleU5DN29NLzZ3aUIz?=
 =?utf-8?B?ZDN5Sk5uTDd4cTlCZDdLM1NwSnhpMFUyVjZWT3lEYjZKbUpRVFdLR3RyOERV?=
 =?utf-8?B?QzBtNDhKV241UnhRQkpZc1dqeFNURnluYjk5LzlrczJJZnhFYWdYMjRxdldE?=
 =?utf-8?B?cU5JTk8wcXpZczlGbkJ3bUxnZGQvNGJJbEd0NXRvcTNrYXJhQmFBUlBMbmVS?=
 =?utf-8?B?amdQL2taQ2hhdnhXS1dOcnRUbUFzYmorcXByS3NjUlFmOTBmd2NUbEFnL1VK?=
 =?utf-8?B?anFyblVFZFU5Mlp1QmVHaE5ONEgyb1NiVzVmQmhPaUZKUFdiQ2RXSnd1bFhH?=
 =?utf-8?B?UnZncU9IN1oxdkVPWjBZOWNocm5tQktXNGg5cjc5WWpGNWFFTmJ6VmxqZ01Q?=
 =?utf-8?B?WURKUVU0TWZZSmVYVWNTUTNYaE96TXRudExqaVJMaEFEYy95aGtJc2grM3Vp?=
 =?utf-8?B?V0xRRUhwMm5vTCtuRHNRbzkzajY1WlNwRkZsMUNhUG5BSmFtZWlHRXpjWFpn?=
 =?utf-8?B?VkF3cG1sbDkvcVFOOS9nOU5XUng0OWovYmUwbVhhc1E2TWcweHhRMlYxbGxy?=
 =?utf-8?B?R0dwaGhJQzNNa1FhTDk5TGZreGZza1pjTVltSHpuVTVPb29qV2tjNmEwVVFM?=
 =?utf-8?B?VW5mQUpYMGZPaHlEVnkxbjBxeEJPRXQ0L0dQNDVaRmZsQmtnaXZTV3JRbEE1?=
 =?utf-8?B?eFFITzFxSHNZZ01JVkozS1N3QjU0czI3N1ZVdjNDYTYvQjdkdjc0d3lxOXlB?=
 =?utf-8?B?c1pDL1lSWVp6MjRiVG9rMDZaU0xjTTFzbk5jNWFCcmtVZlM1RWRDUDE2Wmtx?=
 =?utf-8?B?NW5OY3YzS2swMXpDRmJxdDMvbElGVmY3QVZmYlJHNlh6THU0N2hNdzhtSGl5?=
 =?utf-8?B?L2xacnFZcHA1WFBnc29rUzJ0OTk3Ly9xT1h5RlhZSlZyR2p1MlA1akpTSExh?=
 =?utf-8?B?R2hvYzF4VkNlQ3hJR0RMZkRNR0hvU0o0QmVLNzZSUVh3bTFGREEraG1mZGQr?=
 =?utf-8?B?MzdWMWlpVDNoQnpKNzRXdFhCbGNzWlJSK2JwblBBTEhDVUk0R0dvWFdWWDg3?=
 =?utf-8?B?UVpnTFZqUnJ3TGhrOE03V1JvcTlHZUswNklkUy92KzZKM0piWWZiUGptcUlm?=
 =?utf-8?B?anFpak8ybjdyNVBSSkFDYWwveGFyeCtnU2YzcXFGaUNTcVltamdyZUQyMTl5?=
 =?utf-8?B?azZQWVllMENzSE1RM3pMWnBUeW5yRVFBUnRrNm9uQUd3cjEvdDRPVldNQ2xQ?=
 =?utf-8?B?U0dWRnZ1U1FUQTBKVTJGOU1nZ2YwemhrOVFsL2w5VVJzMkZNaUJYTXJzUXdX?=
 =?utf-8?B?MzlLOWd3WjNpVFMwV05mOGZPNmRMNVhtSFJ2UEhBSlBSNXVrRS9WWjBXc3lZ?=
 =?utf-8?B?eEw5bWFtTERKZE0zVGtwaDhuZHhlNlNlbXhZTWk5U0xGL2xiQ3ZocElXMTRE?=
 =?utf-8?B?Ry9jeTdHd1dBclB1WTVXVlRwaThROGNxWkFJR3dVSmUwcGhBcnNPRWJTRkN1?=
 =?utf-8?B?ZzZHdnNCKzR3aWl3QWFZbis2L3grcU9rRGhXd3FveUxka2NXVFV2eFRXMDU0?=
 =?utf-8?B?M0dzU2dtQ2FKZmhJdFZ1WmNNL2J1OUtiYkdBaGZDU2lXRkVwOTRJY2dEcW91?=
 =?utf-8?B?dFl1bzFQMW5icHhkb0ZnNjJ2L2tQbzYyS0g0ZjAwaVo4MG00d2dlbDhXb3hl?=
 =?utf-8?B?V0ZGYVpaV0NZQnJPUjVlaW10cGlDU0ZoVW1KNDhFZXZDV2ZYaHNhNnJVbzNE?=
 =?utf-8?B?aXRtTEtob0hyRVR1d3hlUkJyL0ZVZmF5SmpZQVhxQ2NEYUVzL2VNYXdiSDNU?=
 =?utf-8?B?ZGlCdzFXZU1WK0YwQ2JjVnkvUDJ0NjZhc1BaYkRJUXBlWHBKNDdxYVU3VEZ3?=
 =?utf-8?B?L01zb2RJTmZ4eGxGS0VlY25vR0Nxa3puUDAxaUYyNmd3ZVJLak5uNW94cUE5?=
 =?utf-8?B?VXR5ZUNGZi85RllaTHJlWVFQZzA2dmoycDVhNHZ2OVp6VXRXdmZnNlNNQ1Jm?=
 =?utf-8?B?N3NZU1pWbG9OR3VIQUdQY003WC8vL3I1eVVRM2tRSmEzSGUySUxQbjRCRnR0?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 720cca7a-a926-4ccb-ae0d-08dccb08e625
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 04:37:06.2176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dm6HQq8FBAH1gnlRz0cmQpFWJmHpy12LOUN+V5LEHyZDLPELWqmlNMQYqtRH/4YWYcqlL5zB0d7Jfl41A+EEaQ5rLoJHif1HY/Z5Y5zeBhs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6095
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

Thanks Ville for the comments.

Please my response inline:

On 8/30/2024 4:49 PM, Ville Syrjälä wrote:
> On Fri, Aug 30, 2024 at 10:39:32AM +0530, Ankit Nautiyal wrote:
>> Cleanup register definitions for DSS CLT reg bits.
> DSS_CTL

Will fix this in next version.


>
>> Replace the hand rolled (1<<n) with the modern REG_BIT().
>> Use REG_GENMASK and REG_FIELD_PREP for the bit fields.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dss_regs.h | 34 ++++++++++---------
>>   1 file changed, 18 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dss_regs.h b/drivers/gpu/drm/i915/display/intel_dss_regs.h
>> index b1e24ea027c3..cfc8ef451917 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dss_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dss_regs.h
>> @@ -10,35 +10,37 @@
>>   
>>   /* Display Stream Splitter Control */
>>   #define DSS_CTL1				_MMIO(0x67400)
>> -#define  SPLITTER_ENABLE			(1 << 31)
>> -#define  JOINER_ENABLE				(1 << 30)
>> -#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
>> +#define  SPLITTER_ENABLE			REG_BIT(31)
>> +#define  JOINER_ENABLE				REG_BIT(30)
>> +#define  DUAL_LINK_MODE_INTERLEAVE		REG_BIT(24)
>>   #define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
> If we want to keep this then we should define the bit as
> DUAL_LINK_MODE_MASK, and then both values should be defined
> via REG_FIELD_PREP().

Makes sense. I will add DUAL_LINK_MODE_MASK and prepare value for 
Interleave and frontback.

>
>> -#define  OVERLAP_PIXELS_MASK			(0xf << 16)
>> -#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
>> -#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
>> -#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
>> +#define  OVERLAP_PIXELS_MASK			REG_GENMASK(19, 16)
>> +#define  OVERLAP_PIXELS(pixels)			REG_FIELD_PREP(OVERLAP_PIXELS_MASK, pixels)
>> +#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
>> +#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(LEFT_DL_BUF_TARGET_DEPTH_MASK, \
>> +							       pixels)
> Protect with '(pixels)'
Will take care of this.
>
> The extra line wrap seems pointless.

This was just to make checkpatch happy to avoid long line, but if it 
hampers readability I will do away with this.


>
>>   #define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
>>   
>>   #define DSS_CTL2				_MMIO(0x67404)
>> -#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
>> -#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
>> -#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
>> -#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
>> +#define  LEFT_BRANCH_VDSC_ENABLE		REG_BIT(31)
>> +#define  RIGHT_BRANCH_VDSC_ENABLE		REG_BIT(15)
>> +#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
>> +#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(RIGHT_DL_BUF_TARGET_DEPTH_MASK,\
>> +							       pixels)
> Another unprotected macro argument.

Will fix this in the next version.

Thanks again for the suggestions/comments. I will take care of these in 
the next version.

Regards,

Ankit

>
>>   
>>   #define _ICL_PIPE_DSS_CTL1_PB			0x78200
>>   #define _ICL_PIPE_DSS_CTL1_PC			0x78400
>>   #define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
>>   							   _ICL_PIPE_DSS_CTL1_PB, \
>>   							   _ICL_PIPE_DSS_CTL1_PC)
>> -#define  BIG_JOINER_ENABLE			(1 << 29)
>> -#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
>> -#define  VGA_CENTERING_ENABLE			(1 << 27)
>> +#define  BIG_JOINER_ENABLE			REG_BIT(29)
>> +#define  PRIMARY_BIG_JOINER_ENABLE		REG_BIT(28)
>> +#define  VGA_CENTERING_ENABLE			REG_BIT(27)
>>   #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>>   #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>>   #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
>> -#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>> -#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>> +#define  UNCOMPRESSED_JOINER_PRIMARY		REG_BIT(21)
>> +#define  UNCOMPRESSED_JOINER_SECONDARY		REG_BIT(20)
>>   
>>   #define _ICL_PIPE_DSS_CTL2_PB			0x78204
>>   #define _ICL_PIPE_DSS_CTL2_PC			0x78404
>> -- 
>> 2.45.2
