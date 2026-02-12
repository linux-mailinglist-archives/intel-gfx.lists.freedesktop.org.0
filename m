Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGcIGKSbjWkz5QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 10:21:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB64812BCF4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 10:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE0410E703;
	Thu, 12 Feb 2026 09:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7URqZZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93ED410E6FF;
 Thu, 12 Feb 2026 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770888095; x=1802424095;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vTJF5M7O2zlcTPCwvy55zlqH2RcydO2EIsu/uxz1nk0=;
 b=h7URqZZp6tDzKNAQ0U2MoT1PsdFOTpS+oZGuX7/SGprbQGnCDEcT2L/8
 vtzJ3Jh0rLcUeWX9KOk864hguuJGiPhrxGh1SLXcqZS8rdklOqjPImXe2
 Fq4WlgMphyCXKLFOhyzeGdjR7VwRGx+WFvBop/j0V9DOWLfKeb8DD5Qoh
 LT7mBbPnhwap31S5YTSaF9mOtgekV092hpguDJoweR2Sxm3LTP6j7ZzvG
 76jA3m6aXtZ8BuldqAwMqVt1D8vhXiDcm9Og06ExiAsAtsOplfiTB1KEs
 dGhQ0D8c9+DKBMW1hYCHn1Og1Yi5nX0gCKAe/ljMKHhmyEpALgKkIaKmT g==;
X-CSE-ConnectionGUID: q/Q81mmdQHCGs82UlYcY1Q==
X-CSE-MsgGUID: ZvOLn69fS8+GluQmIrJHqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="59626896"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="59626896"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:21:35 -0800
X-CSE-ConnectionGUID: r9IUco1qQlWo/KikOoEFyw==
X-CSE-MsgGUID: 5gH3qguST+yit+5R3yggWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="242157312"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:21:35 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 01:21:34 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 01:21:34 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 01:21:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwiTntjR1TotI+sYqEhPSWhaKfs80nROQlu0jDRJvgT8S7qbbogdLxHJjyAvsS71i310Loix16l6MLC2ufZGvIAYi7yYJbfqAYhbTB+bLV+6fuafHgDEe0E3LO/RNYLWHQfOe6aqb/9VIGxhY2500X3iiwb1ghZpXa7eTq+9mb/bodZfdhgPIM34MQQKzk5kILV8QjfOxpo3AEkil8j7AH11YOlDxjqfiDmsn97ySZAtDlyJL2Nt+fSQHUmTsoyupXfoemwJguKm9Epd3yJJBqsi2SgUREyzC2K71IaYN3TofILDbaHwi0XUau5+fZwX/7ybEinBzMkHpi6WF2a7kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LbDtIo6YA0i77pfKnmg8VGshLy+97k1FefCu5ed/yB4=;
 b=mZ1U0HavrBDX//BMaNTZHdJWtTHxp+v7mRq0KHpOOiCrEb8BYNnAhIaRd1Pe5X7hIyVRrbjLy5diQNhxX6ng9mCHc+bWPT70l87Fbo4QwBsolrTHjOBVdYOwAu1r4D+ho5ndwupG6BvsbgVaW2G1bEOnIQB07bud4l1oM7VY8viXua4mMGzHCdqMD47m4gErZHm2U68C7IUJdiYNH0CVL/KVjntFxdjE8O8uNI4JljVa0Pwg3q6rYAR9UNZVMkAvb534ZCFpVqtWuyajyhCA+J7XC8tYr05ZI0Q7rFtqoCYBqmcrTWmS6lmqJ+LO9fgfQzL7g9KROoDmBou17MTdYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4958.namprd11.prod.outlook.com (2603:10b6:a03:2ae::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 09:21:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 09:21:27 +0000
Date: Thu, 12 Feb 2026 11:21:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
Message-ID: <aY2bka2vvVk5Fp-Q@ideak-desk.lan>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
 <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
 <aYy4grqce26G5sw0@ideak-desk.lan>
 <c25c9c1b-636a-4fd7-8494-807cd9d40ecf@intel.com>
 <aY2HwxE8irrYdVNu@ideak-desk.lan>
 <04475ac8-e46a-4a84-a374-cd702f1e6c1d@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04475ac8-e46a-4a84-a374-cd702f1e6c1d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF00011B63.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:8:0:6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4958:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f08c72b-ce66-4b6d-14cb-08de6a18195b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?am1KazgrYnc2M3dNY0EzTnVzSFNuL0FHVHVTdlVSMUQvcnM1VnlYeUVRVmNh?=
 =?utf-8?B?UWMzM1dKWU9IN2FUb1grQnlZVFBrNGMxUUc3Q0NxYUE3cTlDUkpxZUtaZlR5?=
 =?utf-8?B?MWdUSFlkRy9wV1RoNVA4bSt5YzVmVmFvaWhyWlRlQmhzcjZCUlBRRWtyTDRO?=
 =?utf-8?B?REJNRXZISXpSb2RVMUlEdTdqOFA4QWdiN3daY0JuTjJGTWFkbzFMeFhzTkRa?=
 =?utf-8?B?Z1o3T3ZBTWR0UmltYTJhS2lKQzRBOUtVTm03NFRIcHowTTZxazJseGpyTkRU?=
 =?utf-8?B?L3UvVm5ubjN6NWwyam41bUQ5NEZxMlVWQWs1WkNTZ1UzYjNROTRJd05YbUV0?=
 =?utf-8?B?dUUwUWs0UGtOU0YwVzZ4RS9aSnJqWlJnTGE1enN1UWxrdEsybXRkZ1NSQjJH?=
 =?utf-8?B?bmZsVGtEeFA1eWs1bWxHSXkyWEZNR3lEb1NwaVhLTUx5UUE2NjErY2ZJOXhQ?=
 =?utf-8?B?VTJwMEE3VHpyQ29rVkZxYmVMcTBGK0hIYlowd1FwQ3Y4N2lOSUdwNjhBRnpo?=
 =?utf-8?B?WCtRclExaklmK1ltaHFjM1BUbE0xR1A1ZEx6Y0ZENW1DQU9xcjJKaFVHT0V5?=
 =?utf-8?B?R2ZJWkV0Vjl5bjVvODZZU2JlWThhcittU1MvVHdwdVBhZEFBeVZaa3NTY1ov?=
 =?utf-8?B?RTZjSjNtVjA1YjhLOHo5dFk4blcyZHBtbDI3bFpTYnFYWnNHL2NkNmlYRG1R?=
 =?utf-8?B?Q3ZnaVR1bnlkUEEvQ2E5M0Z6bjdQQ0VoViszWFpRVnVKN1VReWpNeGVHOEJI?=
 =?utf-8?B?SlRSdVZNTmkvWUJ1a21TeDJ0dVdRMGVoZXhIQjNnZ1FQZkpqb1JiR1ErdjFT?=
 =?utf-8?B?cFNnbFpYY1BhL3NNR0VZZEY2emZwNUM1dmZWZFZCV1k4OVRQYzdyaG1WTmtu?=
 =?utf-8?B?dms3YVREUW1KazArQ0t0RFhmTEVBVUd0QlpETWRSd1VONDdLdFdidEhzNVpI?=
 =?utf-8?B?bWRMQ3F2UFN3NzY4QmpobHpJSi9yZHp6MkpIUngxczArUEZlRkFNWE9vZnVD?=
 =?utf-8?B?M2szTHNNbHZZR0hTcDlNaHAraHJVcEVNOXVUOE12L0JkMjQxcDRPTm5tU1J6?=
 =?utf-8?B?MjB0a1hTbkp6Y00zSmFkaXFzb3J4TXRSNUUyS3gxV0dlVkY4MlJON1pteGE3?=
 =?utf-8?B?cEROWUxoUFFDTzIyMm1jcFJ2bVF6Y0F4eitTWFBLRFM2UVpCdUJ6RDFrZTVR?=
 =?utf-8?B?cy92dHVnOHpGcWwrNWdwZG5DOUxGWnA5c00rR200L0hia0xrOTVvZ2c0b1pF?=
 =?utf-8?B?UEJ0Z2FPTmZkR0s4WFVxRzNOOWJmU0pTT05MajNaN3AwVDA4bFVRWUIzYVYw?=
 =?utf-8?B?OWFoZHNPclZuYjNRcFpCbGpTL3crVStCV0lveVp1Uk5lOWdrL3ZzYVM1MXcr?=
 =?utf-8?B?dUFjMiszWTR6WDVZT3JuWmpGcVAxV3VjUWdTdmlvem5hNStlUFFUcDlaeCtR?=
 =?utf-8?B?YzArQ3BpQW5wQ0RZWjZYTVByUzVWN2d3R1lLeVUwRTlOVEtuY1pzRjgvcmNm?=
 =?utf-8?B?T0lqV3pCbUV1NFhrWml6UW1CVGZVRFIvUjVrbU5mRWMzN1FkY2s5OVRYM2dS?=
 =?utf-8?B?eTB4TXpVZzZZdTlieXFrNFRJNm91RDA0dDlGNzcvbEZUQktsY0NLUEZKK09m?=
 =?utf-8?B?ejNvZEtvc3dmYWQxZ2FqU3JjVGlJUzhzVkk3VGo4V3d0ZnhOTktnNHBBbk5H?=
 =?utf-8?B?RVhERk9DbExFeGE4NGt0QnA0REdVQXpSQ2I3Y2gvWWdzOUV6SmllaFd2cjk2?=
 =?utf-8?B?NW1kUDVTVWhqTy9pT0R2MDJQanpkVGdtUzIwa1RVcWV0WGlHckM3bitWRi9O?=
 =?utf-8?B?dE9mNzd4MUNZYWhwZHNVdXdlVTRhZHlDeWJ3YlJiSW5GMHpydnhCUEFQdWli?=
 =?utf-8?B?UmVIMzZ3N1FwRE1FbWk0ZXdXOS9nbXJITnZrL0xoOXR5VDM0YW51TUtLbUNY?=
 =?utf-8?B?d3RoRTR1QjA5YmdJSkpseE9GemZUKyt0MkxEMWJWV01YaXJ2bjlsQlJSSjZY?=
 =?utf-8?B?QnFqUzBJTjNFSjZGSHZocFVNN005cTJZQXlUZkU0TTlxYjA1NDJqWDJ2RG1F?=
 =?utf-8?B?c1g5VE1CVUZTSTNlYmdWbk9GVGg3emY3RUFQalpTOEpHU1FmV0l5RzdjZG5N?=
 =?utf-8?Q?mluY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWJ3Zkx2bmxxS3FXZmhXcWg4akR5KzNYSTU4TVJEV0h2Q0NDd1lYOVg1OEpy?=
 =?utf-8?B?emZUYmJ0MjJXbW42akQxcFFRcmZQay9DRmY2WWg3ZGdmc2RZTGt0QVI4NjhD?=
 =?utf-8?B?VnQwbG9KVTZXSi8wdURVdDJONXV1NnJBOWZncEw5NFZBQmFBU2x1eHpRUndi?=
 =?utf-8?B?MGVLVkZNQmZBMVplenNsY2I4eWhCcHJBZ0xwdDhNQ0k2OE51U2ZBeGd0Mi9O?=
 =?utf-8?B?TXFSNlJ1N2puaThzekZRK05rTWtLYTNwcFpFalZjVml2a0RKRFVnYmxJL2F0?=
 =?utf-8?B?UEdFMGxHU21JNmtGS1RLWit2VndtcmRFTzZuYVR1SzE0Z0kzL0l4V0ZpQ3JW?=
 =?utf-8?B?UjRIOFE0Tk1UdVRNY0xTLzZvK1FmOUNvc3JVOWFHbjJ2V08wZGpMcTZReEJW?=
 =?utf-8?B?Y0xDWm5TMlR3VDlVSkJ4aHZ2RVZXRVMyUU10TmtpYkx4THVhdWdDZVp5VWVr?=
 =?utf-8?B?TDladDU3eG1QTHdtd1IrWUdWZXBOS1BpcWFFWldlc3Q3NXRQOUlHaHBMZmZE?=
 =?utf-8?B?WHdmaHdSVHY5YkdUb3pseUxXUHpwN1lYZXUxWjEvbkFDZlBIekhCZ2RVQVRo?=
 =?utf-8?B?L0h5N1RqRFZTVU1CMkxBcUJQdEh0Q3hGcmFQRDRpRlA1M3Y3UXRZWDFjcUNh?=
 =?utf-8?B?UHI2bGthZFVtWlVqaGUwTHZ6c3FLendWZHhyWmx4dXo3bnhXRGpvVkcxQi90?=
 =?utf-8?B?UjBDMmxYbWtQamxlZnhuSExnWDVhQURJTVVLN3liOFYyRy9wd2Zhb0FnZUpz?=
 =?utf-8?B?TW1rOGp1djNEckZHZmRGR2pjMzJxeXhuMDdJaEx6YzJHRDB0THZYRnhVTTd1?=
 =?utf-8?B?TEFQZG80Uk5FaXVrSkkyMzR6M0ZVRU5vZlFDd2wvNzVNR1V4aE1ZZ1ltVFNX?=
 =?utf-8?B?MVJEUzBuNnc0ZzZQNlJ3ckRqTGZzWkQ2SnZNSVZ2SXpWL1o2VHRCMXlqaDZ4?=
 =?utf-8?B?a0xRaDNabFhRSEs5REJsT2ZPdG84S0VocnBja3pJWjVQczY3Q2s5eEZGZ1Qy?=
 =?utf-8?B?Z25nalBhNGUxODZQWC9ZcnFXTldqRUNxNWRydEhTNmM5cGcrRTA1U2xLdU1R?=
 =?utf-8?B?cmkvOEJuc01EZmZHV3krWEJZaERQcXplY0plcHNxbFdwbjNFMi9ENkk3b2pV?=
 =?utf-8?B?cU9VNGZXMmVtY0crOG5zK0JiOVJJVmtNVjhLN0RFK25KZThiem9QMm1ySzIz?=
 =?utf-8?B?QmNiZnFyb3ZyeGdXWUxNeDE1K2VFekJnYWg3Z0taVVZLMVJJNGtTZThlUTJm?=
 =?utf-8?B?Vy9qKy9BM0NocUl6NWtRU20zSFgyb0QvRGcwV0hYWlBqQk5BVTFhSkpzaE1L?=
 =?utf-8?B?QlFpd3NxUzVpTjlEUjlUWG1IQlJkSXhxRW02c3hQNGVjb0xYeGRBMmRUeDZF?=
 =?utf-8?B?NjhvMC91OWZEenRIaFdXQ0tDdGd6RXN6YXB5YXk2UGlqZzhaaTBVcGNBYWxN?=
 =?utf-8?B?MHB5YTFYMUVoejFvUXNKNDdXdGFETTQ2a0xtSWdjQmVJSWpMMzBVQW1lM2lM?=
 =?utf-8?B?MDk4Y01BTlNPcmpQNWVmMVNyQnprRHdiTjF2MWRJV3d1VWU2QmFTeTBIZmF2?=
 =?utf-8?B?ZXl6T1VwMU5GVEdBWlNGMHRVejNtZTNReGJyNXR1em1La2FzUit0Skh6SFJ6?=
 =?utf-8?B?Z01DUUxBeEZLZmNub1dCaDdxMSt4azJyK201VElwcVAyMkxuanJDTGlQOEVZ?=
 =?utf-8?B?ZWxHMkMrNnNZU2RpRER3ZmErR3FHeFdmSHhUQVBXZGozelQ3RjJodkZvL3Zo?=
 =?utf-8?B?M2FiYjNMY0NiclAraGJBYkhOQmd6RlgwSkIrbFRYblk5M0RIbFJST0VKcTI0?=
 =?utf-8?B?V0gvSDE5YjhJNXJxREVTQ3pCU0x1N1VKcDdiOTQ1Qk9Cb2lRaGpPKzJ6ZEhS?=
 =?utf-8?B?cDBGRFdTcFZOT0lqTVZBUldORHVFdS9tQXRPOXUyRG4rQlBXZThNQ3FHc20v?=
 =?utf-8?B?Z2dscVBzRGFxRzV0SklQYURNUmlzSENWbnJtL3NlRjI3d0FrSUNPZDlUYUxS?=
 =?utf-8?B?ZEtObEFNWjBPMU9ZSWFGK0dQQTBvRzBnWlF3eXQzY3haclhHTXJhNFBURThW?=
 =?utf-8?B?dElrcEVQVzNnTytKNFRkWUE3K1dSNDhVbGR2bTBxKzBSSEsvbWVWU2JhU2U5?=
 =?utf-8?B?VFlxQ2xYRDArYkRpRVUwOTN4YjNmVitTVkVoMGU3b3NlaXdLVFN1T3NQQ0d0?=
 =?utf-8?B?eWNPcUx3WGlRMjlFbmlBcUpqS1VyS1pad0JWQy9NUE95RHNaWHZEcWo4eUpi?=
 =?utf-8?B?RW1ZQlVvK1N1NVdLVEVwN0pzUnNsOU84dm1neTNveXJBZXQ5ajRXcXpxbEVF?=
 =?utf-8?B?a3VZUGRkdmVNSFhTdU1qTG9QdmFOOGtIVmcyZDd5NkNKOWx1amJxZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f08c72b-ce66-4b6d-14cb-08de6a18195b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 09:21:27.1995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kM3cWiwBn+d6oqkNxLBYrjjKBVsT8siQyPRt7pRsF7efs1BtCnNWGRGAeJW6OX474cgnaVX86+PAP9G1o299iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4958
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB64812BCF4
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:31:39PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/12/2026 1:26 PM, Imre Deak wrote:
> > On Thu, Feb 12, 2026 at 09:44:15AM +0530, Nautiyal, Ankit K wrote:
> > > On 2/11/2026 10:42 PM, Imre Deak wrote:
> > > > On Wed, Feb 11, 2026 at 09:36:55PM +0530, Nautiyal, Ankit K wrote:
> > > > > On 2/11/2026 5:28 PM, Imre Deak wrote:
> > > > > > The user's request for a maximum BPC - via the max-bpc connector
> > > > > > property - determines the pipe BPP selected by the encoder, which is in
> > > > > > turn used either as the uncompressed output BPP or as the input BPP for
> > > > > > the DSC engine. This user-requested BPC->BPP can be outside of the
> > > > > > source/sink's supported valid min/max pipe BPP range and atm such an
> > > > > > out-of-bound request will be rejected by the encoder's state
> > > > > > computation.
> > > > > > 
> > > > > > As opposed to the above, the semantic for the max-bpc connector property
> > > > > > - which the user may reasonably expect - is not to fail the modeset in
> > > > > > case of an out-of-bound max BPC request, rather to adjust the request
> > > > > > clamping it to the valid BPP range.
> > > > > > 
> > > > > > Based on the above, calculate the baseline (i.e. the non-DP specific
> > > > > > platform/EDID) _maximum_ pipe BPP, storing it in
> > > > > > intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
> > > > > > pipe BPP (which is the lower BPP of the baseline maximum and requested
> > > > > > BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
> > > > > > state computation to use the baseline maximum pipe BPP as a hard limit
> > > > > > for the selected pipe BPP, while also letting it use the baseline target
> > > > > > pipe BPP only as a preference, clamping this target BPP to the valid
> > > > > > DP pipe BPP range.
> > > > > > 
> > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > ---
> > > > > >     drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
> > > > > >     .../drm/i915/display/intel_display_types.h    |  1 +
> > > > > >     drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
> > > > > >     3 files changed, 35 insertions(+), 2 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index ab4b59916d2e7..dae7a7d11cb84 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> > > > > >     	struct intel_display *display = to_intel_display(crtc_state);
> > > > > >     	struct drm_connector *connector = conn_state->connector;
> > > > > >     	const struct drm_display_info *info = &connector->display_info;
> > > > > > +	int edid_bpc = info->bpc ? : 8;
> > > > > >     	int target_pipe_bpp;
> > > > > > +	int max_edid_bpp;
> > > > > > +
> > > > > > +	max_edid_bpp = bpc_to_bpp(edid_bpc);
> > > > > > +	if (max_edid_bpp < 0)
> > > > > > +		return max_edid_bpp;
> > > > > >     	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
> > > > > >     	if (target_pipe_bpp < 0)
> > > > > >     		return target_pipe_bpp;
> > > > > > +	/*
> > > > > > +	 * The maximum pipe BPP is the minimum of the max platform BPP and
> > > > > > +	 * the max EDID BPP.
> > > > > > +	 */
> > > > > > +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
> > > > > The function compute_sink_pipe_bpp() is actually just limiting the pipe_bpp
> > > > > to sink max limits.
> > > > It limits the platform maximum pipe BPP passed to the function via
> > > > intel_crtc_state::pipe_bpp to the maximum EDID BPP _and_ the connector's
> > > > requested max-bpc x 3.
> > > Yes right thats true.
> > > 
> > > 
> > > > > Instead of filling the crtc_state->max_pipe_bpp in this function itself, can
> > > > > we have a separate function only to set the crtc_state->max_pipe_bpp from
> > > > > the edid max:
> > > > > compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
> > > > >                        struct intel_crtc_state *crtc_state)
> > > > > 
> > > > > This can be called separately from compute_baseline_pipe_bpp:
> > > > > 
> > > > > ret = compute_max_pipe_bpp(connector_state, crtc_state);
> > > > > if (ret)
> > > > >       return ret;
> > > > > 
> > > > > ret = compute_sink_pipe_bpp(connector_state, crtc_state);
> > > > > ...
> > > > > 
> > > > > This way the compute_sink_pipe_bpp will only do one thing(adjusting the
> > > > > pipe_bpp to sink limits).
> > > > > 
> > > > > ˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).
> > > > Not sure. It's also good to see in one place how the debug-printed
> > > > max/target/edid BPPs are calculated.
> > > Hmm yes indeed make sense.
> > > 
> > > 
> > > > In any case compute_sink_pipe_bpp() did compute both the target and max
> > > > BPPs implicitly even before, combining these to
> > > > intel_crtc_state::pipe_bpp, and this patch didn't change that. If
> > > > separate functions make more sense that should be a separate follow-up
> > > > change imo.
> > > You can ignore the comment. It seems better to have ctrc_state->max_pipe_bpp
> > > set and the relevant debug message in same place for now.
> > > 
> > > 
> > > > > > +
> > > > > >     	if (target_pipe_bpp < crtc_state->pipe_bpp) {
> > > > > >     		drm_dbg_kms(display->drm,
> > > > > >     			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > index e6298279dc892..e8e4af03a6a6c 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
> > > > > >     	} dsi_pll;
> > > > > >     	int max_link_bpp_x16;	/* in 1/16 bpp units */
> > > > > > +	int max_pipe_bpp;	/* in 1 bpp units */
> > > > > >     	int pipe_bpp;		/* in 1 bpp units */
> > > > > >     	int min_hblank;
> > > > > >     	struct intel_link_m_n dp_m_n;
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > index 48845899298e4..4018b0122e8e0 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
> > > > > >     	struct intel_connector *connector = intel_dp->attached_connector;
> > > > > >     	int bpp, bpc;
> > > > > > -	bpc = crtc_state->pipe_bpp / 3;
> > > > > > +	bpc = crtc_state->max_pipe_bpp / 3;
> > > > > >     	if (intel_dp->dfp.max_bpc)
> > > > > >     		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
> > > > > > @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> > > > > >     		 * previously. This hack should be removed once we have the
> > > > > >     		 * proper retry logic in place.
> > > > > >     		 */
> > > > > > -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> > > > > > +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
> > > > > >     	} else {
> > > > > >     		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> > > > > >     							respect_downstream_limits);
> > > > > > @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> > > > > >     	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
> > > > > >     		return false;
> > > > > > +	/*
> > > > > > +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
> > > > > > +	 * maximum pipe BPP limited by the max-BPC connector property request.
> > > > > > +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
> > > > > Hmm I think I am missing something. Till now we have set pipe.max_bpp using
> > > > > crtc_state->max_pipe_bpp.
> > > > Yes and then also reducing pipe.max_bpp further by every other source
> > > > and sink maximum BPP limits.
> > > > 
> > > > > This is set using min of max platform Bpp and the max edid bpp (and DP dfp
> > > > > considerations, DSC sink input bpp cap).
> > > > > 
> > > > > So the relationship between pipe.max_bpp and the crtc_state->max_pipe_bpp is
> > > 
> > > sorry I meant about pipe.max_bpp and the baseline BPP i.e.
> > > crtc_state->pipe_bpp (not crtc_state->max_pip_bpp).
> > > 
> > > 
> > > > > not yet clear.
> > > > The relationship is:
> > > > 
> > > > crtc_state->max_pipe_bpp = min(platform_max_bpp, sink_edid_max_bpp);
> > > > limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp,
> > > > 			   dfp_max_bpp, vbt_edp_max_bpp,
> > > > 			   sink_dsc_input_max_bpp,
> > > > 			   src_dsc_input_max_bpp,
> > > > 			   mst_max_24bpp);
> > > > 
> > > > > I do agree with the rest of the below: we need to clamp the
> > > > > limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.
> > > > crtc_state->pipe_bpp = min(crtc_state->max_pipe_bpp, requested_bpc * 3);
> 
> Thanks for clarifying this. I was overlooking the part that
> max_requested_bpc is already having the edid_bpc limit accounted.

That's no wonder I think. drm_connector_state::max_bpc combining the max
EDID BPC value and the connector's requested-max-bpc property value is
obscure and misleading I think. Since this drm_connector_state::max_bpc
value is not an actual (hard) maximum. It's a target BPC that the driver
uses as a user preference but can adjust it by both increasing or
decreasing it, based on the driver specific min/max limits (instead of
just failing the commit if that requested BPC value would be
out-of-bound).

I suppose this should be documented at least in DRM core.

> So this statement is clear to me now.
> 
> > > Sorry, I am unable to find this line..
> > This line is in compute_sink_pipe_bpp(). So at this point in the code
> > crtc_state->pipe_bpp has the above min() value.
> > 
> > > perhaps you mean that we intend to
> > > make sure that crtc_state->pipe_bpp is in the range
> > > (crtc_state->max_pipe_bpp, requested_bpc * 3)?
> > No. crtc_state->pipe_bpp at this point in the code has exactly the above
> > min() value.
> > 
> > > OR, is there any place we are using crtc_state->max_pipe_bpp to set
> > > crtc_state->pipe_bpp, till this point?
> > Yes, in compute_sink_pipe_bpp().
> > 
> > > So, I am still not getting the line:
> > > 
> > > "Since by now pipe.max_bpp is <= the above baseline BPP"
> > limits->pipe.max_bpp at this point in the code is <= the baseline
> > _maximum_ BPP that is crtc_state->max_pipe_bpp.
> 
> This too make sense now.
> 
> Thanks for your patience to answer my queries.
> 
> I agree with the changes and with the change suggested by Michał, this looks
> good to me too.
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for the rigor.

> Regards,
> 
> Ankit
> 
> 
> > 
> > > Regards,
> > > 
> > > Ankit
> > > 
> > > 
> > > > and so
> > > > 
> > > > limits->pipe.max_bpp should be set to crtc_state->pipe_bpp clamped
> > > > between limits->pipe.min_bpp and limits->pipe.max_bpp.
> > > > 
> > > > > Regards,
> > > > > 
> > > > > Ankit
> > > > > 
> > > > > > +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
> > > > > > +	 * property request. Adjust pipe.max_bpp to this request within the
> > > > > > +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
> > > > > > +	 */
> > > > > > +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
> > > > > > +				     limits->pipe.max_bpp);
> > > > > > +	if (dsc)
> > > > > > +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
> > > > > > +								    limits->pipe.max_bpp);
> > > > > > +
> > > > > > +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
> > > > > > +		drm_dbg_kms(display->drm,
> > > > > > +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
> > > > > > +			    connector->base.base.id, connector->base.name,
> > > > > > +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> > > > > > +
> > > > > >     	if (is_mst || intel_dp->use_max_params) {
> > > > > >     		/*
> > > > > >     		 * For MST we always configure max link bw - the spec doesn't
