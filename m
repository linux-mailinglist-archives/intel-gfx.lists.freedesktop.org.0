Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEJwINKHjWkZ3wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 08:57:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A4012B0DE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 08:57:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3782310E6EC;
	Thu, 12 Feb 2026 07:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSruf2Pn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D18610E0FD;
 Thu, 12 Feb 2026 07:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770883023; x=1802419023;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=940j5qE9+h/QlQgZFbhxkwpgXG8M19upoWUCjWGvEFM=;
 b=CSruf2Pn2O6sSP0VpfMc2l/pr1W0TaTJknvc8iX+YWWdyoGdmXSvB79x
 M0hv/4wrW5E7HWwZmEM7Qu+OWypaGzkZiq6iX/O8aMVLJlMwyHAitAZAD
 te4cXUT/ig0oFgYYqMj46blhY0/Lcm394le8WlTHxUPMcGV/Ls11pr24F
 IkqzLNoIjM9q+fNzFBjKBw53tZJOMXgD5nv16rZjGXv/5XEf2xVB8sqlm
 1wQoxHre2RH6RtSJC1VrMr3QNOxFhoJGByvAiSh1RdJUbSUXr2H9SZimp
 Ra4rmS9tEadEpG2QBWFPCcscbAGCAmFQP+KSLKT2eQX2B9GeUZZuSykz1 Q==;
X-CSE-ConnectionGUID: +/UgxI7GQ1iyQLl2lc7UBA==
X-CSE-MsgGUID: wI9+lqPNRhGoILptFptiZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72121300"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72121300"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 23:57:02 -0800
X-CSE-ConnectionGUID: 5/2KzoYuSDWOz5kHeLhL1Q==
X-CSE-MsgGUID: SqcVdRG5Ri+bf/S6x8huIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="211610712"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 23:57:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 23:57:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 23:57:01 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 23:57:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O8hWF7sldsVKCMPTpiBnUCequCNN9Aqdr9oD8fNSwFji5oQ81fstiUp2Q8o6FXzl1LLullqlr56pTpaf2AErneU7fRFArh4fyljvLbQs0ntvlxcE00S090jfST0TrpqZQ4MCJQ9kIwQhLYbXZ2oH47sQqNfLHDtHnHbSdqCrWiPVXKPP9vxhlVZaEYWvLc3mjOOG0/7X6fv1WbI12apAUq+j98Ct/Tp8oDvajVXG0Zk8pJwZN2yISrM8HRXe9ogFn/ynmDghwr+ZDb3IMA7ibLSj+ks7k4IJ9ef+svvyPt/z6m7TYeglgIf3sXmLWVGQMcWnSlQZhZeFhUfV/fTNzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NKEoP9SNzI5O8/BUKjLJArzAkIXCNClzdKYgnbepL5U=;
 b=zRm6sHMcWlt+Njd68JVP494qP8IGcXhkOIa/ITQTJiVpttpDdJxJgviSXWRfiRKQQru7k7d4RFFXR33WZJuCWwbuU81qUfpGLDOsuGgexG+gTdgsuxVITSSFYBwoMoWzY8G+Pzg18GIHDUzbYcuCTF/6iek1mkMpEsIJ4fRO3KkkbiKKKVNnO10EE8CqinO9gg/xX1/WFtW6YS5m41ideiV4IS0Ij8B0WM6AKJn377Tu9R3/TJ3vOL19nAq2PZu8RerZ9P8cZp2Jny3JE/8K+ztfOR0swQFDE+1rU4tmKVDvhMWgmNIZGAhnTRwkyI0sfprZecMThaZ9C1bIl940qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF67FA1A8F8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 12 Feb
 2026 07:56:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 07:56:57 +0000
Date: Thu, 12 Feb 2026 09:56:51 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
Message-ID: <aY2HwxE8irrYdVNu@ideak-desk.lan>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
 <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
 <aYy4grqce26G5sw0@ideak-desk.lan>
 <c25c9c1b-636a-4fd7-8494-807cd9d40ecf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c25c9c1b-636a-4fd7-8494-807cd9d40ecf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0005.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF67FA1A8F8:EE_
X-MS-Office365-Filtering-Correlation-Id: 9eec9945-f93d-420f-a52a-08de6a0c4b49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djZVd3Y5Y1djcGZ5WUNwVlNndUUvMFZsUDVhekJOWDZsYUZtcTdhSWo0Umt2?=
 =?utf-8?B?YnJYV2VSMWpRVlZMdk1Ud2o5MTNrQkJkL1FFQmsvbEtrMGJjUjVnSTlMQWFW?=
 =?utf-8?B?c0p0cUpDMUNrTjQ1RGlnVnUxTzQvSkNoY3lxNFRGV2p2aDBVSUNaYWxsR0lw?=
 =?utf-8?B?MmQ3bTZ3OVUyRHAzRzJuYytZZUtNVW9KKzBUQTJVRTZQa1dNMTNWeEVIYlBs?=
 =?utf-8?B?SVQyNDNLZmFxNmJRSDVraVB6blpnN2VyZWxEUFZ6bXJOYnpiR25CN1lFLzN3?=
 =?utf-8?B?ai8vV2l1N25QUUpEdzg5Z1ZFYVFKRmUxNkt1TktBaXV3ZkFqYVlrMVNzUmkw?=
 =?utf-8?B?RFMycWNvaldIbnFzV3RoUytTNklSdVlITkpRS2NsR2F4SERubzU4Y3B5dkhV?=
 =?utf-8?B?cCt2STVtc0xuby9qYnBQUnRzMFFWc1pjdFNpYVNOQnFGSGJZQXl2c1NxZHBq?=
 =?utf-8?B?TW53L3dQdjNBV3NhSWZEMGhQZVl4U3lQWU9pUUR3cHNWZENyK1JMc3Q4bTZn?=
 =?utf-8?B?YmtsTTJ6VEsvVmdyc0xNNGhHOVBZcDVyNU16M2sveFoxWVJRa29ZWE5aNzQy?=
 =?utf-8?B?MGRoSDNaYVBzRVdyVFhzWDFVUzdjZmM2dCtibmF1UzlmQ2ZDT3dDR3RnVjlq?=
 =?utf-8?B?VzQ5dDUyWk50REtHczBlbUlYTnY2SjR2M29rRG9VbWhVZjI3djl1OUEzMUpj?=
 =?utf-8?B?Ky9YeEZvWlk4aHFTQVRtM2YrNTJZWnhUSWZmOFM5dDVvWTZIdjBMa0dKbUJj?=
 =?utf-8?B?RFVkL0E1eDUzUGJMcW1weHUxOE05eDdrN3dRZ012WXRSZXlGZ052YXJ6ZUE4?=
 =?utf-8?B?SVlxZXdxSzVCMXdkcUlkRkgvQ1MvTklzVlFJUTRQQit3M0k3czQ2OEFHRkNJ?=
 =?utf-8?B?Z3pFYnJyd3dDTUk4NnF2RmFscWl5M21QUDN3bjhIVnV1V1MvWE9YLytlMUsy?=
 =?utf-8?B?a2Fxa2hSY3RvRFJEZkdHSGFJMFcwS29WaUZpdmE2cjJRajhGOGtJRFRkMjFY?=
 =?utf-8?B?OCtYVGhmU2w5b2J2REU3SEhIQnRGRVBXM243NTE4R0srek5vQ0NLV3lzVTVo?=
 =?utf-8?B?Z2E3eFRvV3YwWGRBWWJOcG16RnlDdVhWV0F3TnNOTFBKK2RUQXhBdmpGa3U0?=
 =?utf-8?B?OG96bGZXZUZSYW1sN3ZuVGFGanVvdFVtUytTOXhsVzNhUk5QUEl6VTRHd2RR?=
 =?utf-8?B?Nk9yV1BtaXRVOHE3OE8rMU5Tc2JFNkJaSkxBSmZEZlQ1Q2hUdHBlMjVKNCty?=
 =?utf-8?B?LzVscGN0NVJpT3B1dGJWUDFFZ0hYV05qc3lUZk54R3V1Q1JmK2twOVVibVc3?=
 =?utf-8?B?QndPWmNZNExTdGEvaGpUL09qVE5LdW5vNDk1WGRDWEZLNklQeW9aS3BQbFhS?=
 =?utf-8?B?SEdyWnpvQ3Vaelh0SHh5QWVIUjZiSXhmeTdCZ21nRU9nNjF0TXZlSitlUWpx?=
 =?utf-8?B?aFlDTVhGRlhoYzNvamFSRWpIL1lwMy90dFJ0Uzg1NVE0aFVibU9kUjhzd1Ix?=
 =?utf-8?B?VXFmNk5vZ1pLMkJRQS9DajVJTzZGNnJJbXVtZ2dmN3huYWJGeGRMdlEreFRm?=
 =?utf-8?B?aU1TWDhPYVl6UFFtNk8zUkNYR3ZmOWpoaVdtRmFUWllnMGZ2VnlRRVFIcGY5?=
 =?utf-8?B?aDlrUUwvbmZROTY3YXA0czlyQ21wb2Q2ZnY4bjlFVWZlR3l6bGJlTTBocjc0?=
 =?utf-8?B?UElzSEFLWHRoekNyNFpXc1IxV0JOcjU2Tkg2MVpqYU1PRkMvOE9QcWtrT3lR?=
 =?utf-8?B?cmxueWhnZVdPKytRRnFscTRXVTJEOWtjV0Y3VDFhRS9YWUszWE9WZGdCUUxP?=
 =?utf-8?B?SFdOOFhETFJkU0drUlVINjA4VHlxdW5TajFYb21hVjJhUjdFS0svaDRDcFZx?=
 =?utf-8?B?U3RicnBPVWJabWhJMVNoYnRjbGdQWlJwTWtZNnEzSURheHpsL0svN3k4c3NH?=
 =?utf-8?B?QXBqcWJYb2ZoaDdRK1NQQnoxbDFaNzA4QXJRVG9COWZvdk5kRm5QVGlCQTA4?=
 =?utf-8?B?b3Y5VFRHaDJzWm1uM2liNzNnKys5SkI1eDlkL252NlpnUnk2d2dHQnBGdjlU?=
 =?utf-8?B?TW9kN2I2Ui9MK2k5OXdlSVBkdXNMUUl5REVOYmdXbHBtRjZiUXdGeEQzVTdD?=
 =?utf-8?Q?DeTw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUVjT255bHJ4SkxOdUtjamR4VWlCMlV0dWd3a0Q1MTVPRklYelVDemxwM0Nx?=
 =?utf-8?B?Zjc0N3pwRjNjcUJ3NWh2YVBrMmhKb1R6dk9OWTZMSVlZTEs4L1ZnUHRHOHFF?=
 =?utf-8?B?RUl1NGdsZmY1R0xnNTBEcWlJbENxS05tTjJlWGw1WDQrMnVrZjJzM0srM2xl?=
 =?utf-8?B?RVE4WXErbmcrcDdLLzFHQlNLRExmRExvT0dacTVlRVFvcVMrOWdNSWV4aWxQ?=
 =?utf-8?B?NzlSdnVFUnhoanhoZ3pRcFZ0SUtpVXh1WG1JbEtqamxIUEt5ZjVpUmFCcnI1?=
 =?utf-8?B?V3JhOCtpdExzU0FwbzdFejJlV0ZhaW9kaStUT0ZLY1FNeG8ramFoVW5Lei9S?=
 =?utf-8?B?WUlBMmFVRVNTQ0lwRWQ3TG5rZTlHWk1KREVRcTFtWE5kN05pY0tDMnFoQmN5?=
 =?utf-8?B?RXJTNm85eEg5eVBTVFVmMC8rK0ZDbEpLVHBYMkR0eGlmcmE3cFVKUWgyeVNC?=
 =?utf-8?B?WFpIeG9SYkg1QUxqc2R1alM1bTliZ2xEMUtWZ2hsdDR5bng5alJZbXVtTnlZ?=
 =?utf-8?B?YmZpcnRzbTI0QXdjbWdVUWlldlRkQjhsUGpkUU01L3FtNWlhdDZJVTVBVmhj?=
 =?utf-8?B?VVdoVERHRVdlblQwSzllK1p6eHhnaThINVc4c0t5aC9RLy9neTB6Nm1IWFBV?=
 =?utf-8?B?ZHBtTWQ0N3VtaXJOTldielFydHVPQThuRTB6YldWRlkzQ3F4anJHa2tEbXdu?=
 =?utf-8?B?TmVzMVg3RFhBTGMxVjZHZ3BwNVBvdUx4NjFpNzRIWWF3U2xMekZQb0dIazFa?=
 =?utf-8?B?Wm9iWkR4RjJndjZucTNvcStJd0tiMjc2dDhtcnR2WGdJalNBVFFLcDBGVXln?=
 =?utf-8?B?aTBvblU1TTRJdHBLSSs2YXlqbDNjaCsvcXNmSzVtamI5ekc4eEdicmkycDRk?=
 =?utf-8?B?S2w4RmcwNk1rNDJ6SmQ0STdFay9WSkpxdjNVUm1tblJxaWplbzUwYVpZWWJl?=
 =?utf-8?B?TDlQbjFWOVNQdDR5VVlzYmY4YndXSkovWE5FZ212TFh4V2VqVVBPTDZMV2dZ?=
 =?utf-8?B?ZGVkU3UzQ3FKdzFJWVdnYzBRaHNsdHN1cDhCVFVKYS8vVnhweWhzL2QzZEtw?=
 =?utf-8?B?MEVldk9QU1prTXVzR1pjRE01TkIrRnhXRmZFOXpvbnB4TXp3MUk1UVd0T1Uz?=
 =?utf-8?B?OWpWNitQVDhqZ3Fzam4zVjBYUWlSaGZnOXh2c2dGei9hSWlzaHNEQ1h0K1F2?=
 =?utf-8?B?SUIzNnZpaGRZcUZaTHY2RTRFR1hjQjRCZm50VHd5M0ppZjY4TWdxTU9ES2VI?=
 =?utf-8?B?bytoa1VCcWJhbXpNOUVuTUJ3WjVKSmpEa0VsR0hkZ0VtUWpENUd4V0dHNEZl?=
 =?utf-8?B?N0l3L1Y3QjRWdDBvNUJCVDNxZmVFeldVdkc5K0VwVnFha3A0T0puTGFrWU1t?=
 =?utf-8?B?azJDb05sU1JGdElnWjF2UkZGUWtvMm9ER2g4UEQwa3JzWjRFMkRJaVBObmRL?=
 =?utf-8?B?SlIwZDRHUHJSTCtCMVFMSUZaUnF4dmVNN3ExVUJ2RFNUZXdJNXZVNEorVUFJ?=
 =?utf-8?B?WldjOE5rcTNSYjJibmpYREx2K1htdzg2WnBKMHhYcmVyVUtUSjRnUjFqakpH?=
 =?utf-8?B?MWNlV1RlNnd0RnJsM2szMXJMSEU5UmJwWXVTZWFGTDhnMGhhd3pJTHJwMnRr?=
 =?utf-8?B?SkVHVnlMUm1SdEFFLy9XUC8zWlJTSU9LV083L0FOU0FzalhzMHc3MVFiRXhP?=
 =?utf-8?B?MjdrMjlqamhqak5tMnF4UGxKRk4xMm5vN2I0OTBJUlFRUEdwZktxM25RMjZh?=
 =?utf-8?B?V3BxQlQxS0dkeTBick5iSC9EL3JvRlYrMzEvK3NoekdVR29pejZkWUFrNVBN?=
 =?utf-8?B?S0krRnhLN2c0RHR4U2VpNGdVMWRjWWdZZW1Uc2haMGh1Q2RTOHNGU1E5NW1B?=
 =?utf-8?B?c041dFZiZFV3eE53VXU5eXlmRmRMTEpEVzA4UjdyRmZocDFzUUlNVFlKRzlt?=
 =?utf-8?B?dUpwaHYrUm8yRXQ5ZEVLM082NDZzdFpsbUtEOHNBUEFzcjN3TUt4SHVjam83?=
 =?utf-8?B?NE5kWEFGVUZ6S0dUSUFOWDc2SitzR1lXSURJa1BzbHpUTzB6Y2lORGMrdUdL?=
 =?utf-8?B?Q3JtNUlSbTE0QU5IM2l2Tjc3OXBYeU1UNXIrUFlIOTh4QWlYdngwTGVGSlF1?=
 =?utf-8?B?S0Q5N29jTzVSSVpnNnp0WFlkN3NZOXhFMysxWnY5cEJxNENjTERQTkJod0FG?=
 =?utf-8?B?SkxDN1NqZEdpLzc1UnZJOFlmc1MrWkYrY1NJV3hpWmpHMGNvUlc2Qi9KR0w1?=
 =?utf-8?B?RHh0RjhwOURMclM3WVlaSU1jbityb24rbTlkU2RTMkk0bGpRM2tBOTZKSmNX?=
 =?utf-8?B?L2JyMU56MU9mZVpGUmE4UVJJR2NYVEQyTkI4Q04rZFNOdTcyV1dtQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eec9945-f93d-420f-a52a-08de6a0c4b49
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 07:56:56.9848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SpR3K6wGuDk1NQTPMiykyxDppuvmWCZy8yhwSyFpIFWW4xSV5Kk94GRz8g2Y5mPFd1WwzQXeT8KXORCp+b/NyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF67FA1A8F8
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
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
X-Rspamd-Queue-Id: E7A4012B0DE
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 09:44:15AM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/11/2026 10:42 PM, Imre Deak wrote:
> > On Wed, Feb 11, 2026 at 09:36:55PM +0530, Nautiyal, Ankit K wrote:
> > > On 2/11/2026 5:28 PM, Imre Deak wrote:
> > > > The user's request for a maximum BPC - via the max-bpc connector
> > > > property - determines the pipe BPP selected by the encoder, which is in
> > > > turn used either as the uncompressed output BPP or as the input BPP for
> > > > the DSC engine. This user-requested BPC->BPP can be outside of the
> > > > source/sink's supported valid min/max pipe BPP range and atm such an
> > > > out-of-bound request will be rejected by the encoder's state
> > > > computation.
> > > > 
> > > > As opposed to the above, the semantic for the max-bpc connector property
> > > > - which the user may reasonably expect - is not to fail the modeset in
> > > > case of an out-of-bound max BPC request, rather to adjust the request
> > > > clamping it to the valid BPP range.
> > > > 
> > > > Based on the above, calculate the baseline (i.e. the non-DP specific
> > > > platform/EDID) _maximum_ pipe BPP, storing it in
> > > > intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
> > > > pipe BPP (which is the lower BPP of the baseline maximum and requested
> > > > BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
> > > > state computation to use the baseline maximum pipe BPP as a hard limit
> > > > for the selected pipe BPP, while also letting it use the baseline target
> > > > pipe BPP only as a preference, clamping this target BPP to the valid
> > > > DP pipe BPP range.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
> > > >    .../drm/i915/display/intel_display_types.h    |  1 +
> > > >    drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
> > > >    3 files changed, 35 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index ab4b59916d2e7..dae7a7d11cb84 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> > > >    	struct intel_display *display = to_intel_display(crtc_state);
> > > >    	struct drm_connector *connector = conn_state->connector;
> > > >    	const struct drm_display_info *info = &connector->display_info;
> > > > +	int edid_bpc = info->bpc ? : 8;
> > > >    	int target_pipe_bpp;
> > > > +	int max_edid_bpp;
> > > > +
> > > > +	max_edid_bpp = bpc_to_bpp(edid_bpc);
> > > > +	if (max_edid_bpp < 0)
> > > > +		return max_edid_bpp;
> > > >    	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
> > > >    	if (target_pipe_bpp < 0)
> > > >    		return target_pipe_bpp;
> > > > +	/*
> > > > +	 * The maximum pipe BPP is the minimum of the max platform BPP and
> > > > +	 * the max EDID BPP.
> > > > +	 */
> > > > +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
> > > The function compute_sink_pipe_bpp() is actually just limiting the pipe_bpp
> > > to sink max limits.
> > It limits the platform maximum pipe BPP passed to the function via
> > intel_crtc_state::pipe_bpp to the maximum EDID BPP _and_ the connector's
> > requested max-bpc x 3.
> 
> Yes right thats true.
> 
> 
> > 
> > > Instead of filling the crtc_state->max_pipe_bpp in this function itself, can
> > > we have a separate function only to set the crtc_state->max_pipe_bpp from
> > > the edid max:
> > > compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
> > >                       struct intel_crtc_state *crtc_state)
> > > 
> > > This can be called separately from compute_baseline_pipe_bpp:
> > > 
> > > ret = compute_max_pipe_bpp(connector_state, crtc_state);
> > > if (ret)
> > >      return ret;
> > > 
> > > ret = compute_sink_pipe_bpp(connector_state, crtc_state);
> > > ...
> > > 
> > > This way the compute_sink_pipe_bpp will only do one thing(adjusting the
> > > pipe_bpp to sink limits).
> > > 
> > > ˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).
> > Not sure. It's also good to see in one place how the debug-printed
> > max/target/edid BPPs are calculated.
> 
> Hmm yes indeed make sense.
> 
> 
> > 
> > In any case compute_sink_pipe_bpp() did compute both the target and max
> > BPPs implicitly even before, combining these to
> > intel_crtc_state::pipe_bpp, and this patch didn't change that. If
> > separate functions make more sense that should be a separate follow-up
> > change imo.
> 
> You can ignore the comment. It seems better to have ctrc_state->max_pipe_bpp
> set and the relevant debug message in same place for now.
> 
> 
> > 
> > > > +
> > > >    	if (target_pipe_bpp < crtc_state->pipe_bpp) {
> > > >    		drm_dbg_kms(display->drm,
> > > >    			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index e6298279dc892..e8e4af03a6a6c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
> > > >    	} dsi_pll;
> > > >    	int max_link_bpp_x16;	/* in 1/16 bpp units */
> > > > +	int max_pipe_bpp;	/* in 1 bpp units */
> > > >    	int pipe_bpp;		/* in 1 bpp units */
> > > >    	int min_hblank;
> > > >    	struct intel_link_m_n dp_m_n;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 48845899298e4..4018b0122e8e0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
> > > >    	struct intel_connector *connector = intel_dp->attached_connector;
> > > >    	int bpp, bpc;
> > > > -	bpc = crtc_state->pipe_bpp / 3;
> > > > +	bpc = crtc_state->max_pipe_bpp / 3;
> > > >    	if (intel_dp->dfp.max_bpc)
> > > >    		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
> > > > @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> > > >    		 * previously. This hack should be removed once we have the
> > > >    		 * proper retry logic in place.
> > > >    		 */
> > > > -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> > > > +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
> > > >    	} else {
> > > >    		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> > > >    							respect_downstream_limits);
> > > > @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> > > >    	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
> > > >    		return false;
> > > > +	/*
> > > > +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
> > > > +	 * maximum pipe BPP limited by the max-BPC connector property request.
> > > > +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
> > > Hmm I think I am missing something. Till now we have set pipe.max_bpp using
> > > crtc_state->max_pipe_bpp.
> > Yes and then also reducing pipe.max_bpp further by every other source
> > and sink maximum BPP limits.
> > 
> > > This is set using min of max platform Bpp and the max edid bpp (and DP dfp
> > > considerations, DSC sink input bpp cap).
> > > 
> > > So the relationship between pipe.max_bpp and the crtc_state->max_pipe_bpp is
> 
> 
> sorry I meant about pipe.max_bpp and the baseline BPP i.e.
> crtc_state->pipe_bpp (not crtc_state->max_pip_bpp).
> 
> 
> > > not yet clear.
> > The relationship is:
> > 
> > crtc_state->max_pipe_bpp = min(platform_max_bpp, sink_edid_max_bpp);
> > limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp,
> > 			   dfp_max_bpp, vbt_edp_max_bpp,
> > 			   sink_dsc_input_max_bpp,
> > 			   src_dsc_input_max_bpp,
> > 			   mst_max_24bpp);
> > 
> > > I do agree with the rest of the below: we need to clamp the
> > > limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.
> > crtc_state->pipe_bpp = min(crtc_state->max_pipe_bpp, requested_bpc * 3);
> 
> Sorry, I am unable to find this line..

This line is in compute_sink_pipe_bpp(). So at this point in the code
crtc_state->pipe_bpp has the above min() value.

> perhaps you mean that we intend to
> make sure that crtc_state->pipe_bpp is in the range
> (crtc_state->max_pipe_bpp, requested_bpc * 3)?

No. crtc_state->pipe_bpp at this point in the code has exactly the above
min() value.

> OR, is there any place we are using crtc_state->max_pipe_bpp to set
> crtc_state->pipe_bpp, till this point?

Yes, in compute_sink_pipe_bpp().

> So, I am still not getting the line:
> 
> "Since by now pipe.max_bpp is <= the above baseline BPP"

limits->pipe.max_bpp at this point in the code is <= the baseline
_maximum_ BPP that is crtc_state->max_pipe_bpp.

> Regards,
> 
> Ankit
> 
> 
> > 
> > and so
> > 
> > limits->pipe.max_bpp should be set to crtc_state->pipe_bpp clamped
> > between limits->pipe.min_bpp and limits->pipe.max_bpp.
> > 
> > > Regards,
> > > 
> > > Ankit
> > > 
> > > > +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
> > > > +	 * property request. Adjust pipe.max_bpp to this request within the
> > > > +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
> > > > +	 */
> > > > +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
> > > > +				     limits->pipe.max_bpp);
> > > > +	if (dsc)
> > > > +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
> > > > +								    limits->pipe.max_bpp);
> > > > +
> > > > +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
> > > > +		drm_dbg_kms(display->drm,
> > > > +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
> > > > +			    connector->base.base.id, connector->base.name,
> > > > +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> > > > +
> > > >    	if (is_mst || intel_dp->use_max_params) {
> > > >    		/*
> > > >    		 * For MST we always configure max link bw - the spec doesn't
