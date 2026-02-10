Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHgCId3MimndNwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 07:14:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ECC1174F9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 07:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F79410E4BF;
	Tue, 10 Feb 2026 06:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NegVP6Za";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072A710E4BB;
 Tue, 10 Feb 2026 06:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770704089; x=1802240089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QNW14Tyq/VXQtzLLZ+bvhuOo8GV5zazE/E90aSadYDM=;
 b=NegVP6ZayvMzUg4GI+7IhLdSSButeguylBE4ZFauMBD/2ht37ZuZHlD2
 IcSVjxiUFkb17hg9VdUcUQLWx7etldeTLjqvnFvI0e6KFksqwuP4Q+eh6
 zV8VVeoKjlbtwM/UIGCKziURDEbEM3EHQL4l37skGT9MGIrWNy9NV5M3G
 PNr+36745a5WW0CLowGU4LSuVAAQmbINmJHmJNftgrtPitooaoSJ/8RAZ
 8XmyFpPtNqg2qYA/NeWbTGsGGP+5X1f2w+awKVUh8J8ISQQAYR9IvvNYt
 IBYs448B4Ix0+HbembVord4nsYwWtteaArUQs6zJcVG9N3CS2ilq58w3J A==;
X-CSE-ConnectionGUID: wiSubq5gSdO1JMDx6KopYw==
X-CSE-MsgGUID: Y7KCxsMzRY+EJPDo1ioSkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71034850"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71034850"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 22:14:49 -0800
X-CSE-ConnectionGUID: cHcTCF3ARqKN1sBRamK34A==
X-CSE-MsgGUID: AJ7VK1QRRJWF3E59dwIigw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211488210"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 22:14:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 22:14:48 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 22:14:48 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 22:14:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O0Q5cRT5WegfRumez8FyK19Vp/q3/4MTRDt85dmtD+mXvvfo5fosZRx0GKTn4VX0BlNCiuFvQH7d5KcXrLD79QCe8RD4JolXzuGEFWSc7a4tmyEtm7RAN8T9Q4eTYUOdGCp09mzKoaa5Ax0PQY2Wl9NJC94Tbbcleo9n4ty1d9lB8Xv7xGzKVgyaE7TWCAGTR5zac7GFY0xjhczGAGYq748ZOauDXukRMejyANtlY7G0aySOLtFGPaDyueBdjfzW8PtoVGVRuJuqb/SesfKV1u/j7BHz4GBrlUXBVBAGmZB3vwr3L6v3csLM6f0JuYY8/nFk/FKN8ytUQk98p+p1Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvqiAsDz0Mg30yLQC1XFvaYCx/5XnH0hGdMC1wRV8r0=;
 b=uShJ0Lm6VJENeZTwUfCdiLLW+q1PKnZUGs8pEv7xe6m5jzgtc5l2r0ARWY3MI20KKX23dqIhx+wfrS4KqdqIpxDwgRpdIjfLwjdRuGHXIAGokPAwP3EoDyLnGPyHBGIobVE8+R7vwQny41LZ5ug+gA/Tpn7igu1yCxZ2UetorYoVI62vPtKpVkm02MSY8looFw5Yf5FqJgoBuN4+Y4zReZIlZjZGKDRbpwN1YBcenLX9EXYm+EP8GRs8s9wlFteRFKicfQm2uYB9E15H9JGFxDwmMrRKc7O8YRBle3aDNfTVocoAVOyLOF2EGpWHmbBRwI7gIr4fXnsorww27oSl2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB7601.namprd11.prod.outlook.com (2603:10b6:806:34a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Tue, 10 Feb
 2026 06:14:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 06:14:39 +0000
Message-ID: <90e05e50-dcc9-4516-8525-601821a09dab@intel.com>
Date: Tue, 10 Feb 2026 11:44:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Content-Language: en-GB
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
References: <20260209133817.395823-1-imre.deak@intel.com>
 <baa6c5c6-5adb-4cf5-9d01-ad8d2c37db1d@intel.com>
 <aYn_5pIAIq2C5Ezc@ideak-desk.lan>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aYn_5pIAIq2C5Ezc@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0045.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::20) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SN7PR11MB7601:EE_
X-MS-Office365-Filtering-Correlation-Id: 41c44867-3a15-4352-03ea-08de686bac5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGJ3MmxsbkFWVFA4RGFwTHFrcFNqZENOSW9PR2xHb1Vkemw2U3RBZWJWdlBJ?=
 =?utf-8?B?dnBJUU93YUNlYjZkTm9FSFdnWTg3STJGRFpnSysydEtzM1BncWxkN2JXVU16?=
 =?utf-8?B?RFd3SHNBTllOcTlGZThyWDBrTDQzN0huVTZRSy9oQk5RME84em0xQWN5UzVD?=
 =?utf-8?B?TzB5cXNPNTRPSEJzWExyWWpkb1UySzA2Mi9Da3ZKUVNJOVVxa3A0OUpOTC85?=
 =?utf-8?B?bFZRVVFUV05mUytLQUF5elZIRm0wTUY2dit2eXhzc0RsTisrSTEvUzNiaXVW?=
 =?utf-8?B?aUlCME8zM0NzUnJjWkNMQkJ5NDBkQStNSndSQ2ZURThGU1VlZWZZVjN0QmhZ?=
 =?utf-8?B?REJDOUtTTHlnbzlIcXAzbmJtSmdYckNHU25ldkdJdUtid2x4VUhXbW94Rm04?=
 =?utf-8?B?elJSSjBucWNpTWYzNUo2bXdjTmF4N0VTSGlzVllvYlRvRWI3WWlFN2NJMm0x?=
 =?utf-8?B?Mm50WmlpOFJKVVRTMGpBbDg0VVhNZldOK1VUSXdCVHUxZlp0VXhlZkFOc2dh?=
 =?utf-8?B?bmF3MjAyV3hsOE5iMW9OVklTejF3R3J4WmtsZXlQUEdCZ1NoODBmUXhWcHdl?=
 =?utf-8?B?UHE5dk5GY3RvVHYxTFFVZ0Nvd1pqY2JpM2orRVVtckFabDRodW5oeGpsbjBK?=
 =?utf-8?B?WHJjeHl3ZXU4ZUhyQnlmS1E5UXNLT2xwMW9nUGduSjBsSHl4ZEhsVVREZWlX?=
 =?utf-8?B?NnBjQ1NEbXFZNEpzUm80QnlFQnhFaWtjRUM4ODh1ak9aUlBIQ3krODhEM0s0?=
 =?utf-8?B?UFllaEQ0Y0NNNmU0bGxUUUFPK0IvMWJhQkloQWswZ3p4czhER25mQTNYNlE3?=
 =?utf-8?B?cTgwVkIrWUdjcGluaWE2RzZpLzY5Y2gvdW1aaEdhSjlETUFUbDNVUkRqckEx?=
 =?utf-8?B?K1ZqUlpPS1dsbWhVakZYeDRzMHFYVUZXQm9EK1pVSFBidlVuUGVFNXpmMzhC?=
 =?utf-8?B?NWhrcTI4bEhFc1lFSTlLczh2RWF3S21icUtPTlNGdXM1ZGgwVGdRYUxwV2dX?=
 =?utf-8?B?VVc4SWZHSVltTUJYMGRYdlNOUjcyWkpOTEJWT3pZV3h4eFluVFhHc1ROaDI5?=
 =?utf-8?B?bFo4YVRXNkpydVdNNmN6dGQ3N0w0OE1DVjdiYU9NSXppUTFad0N3Zmp2eUM3?=
 =?utf-8?B?TlYxQXE5WW9LSUV2dEdLUDVudnJWWmxmUHpuekVMMEZ1elEwYnN6SnBkOEF6?=
 =?utf-8?B?REhuTENlVjdrUGx5S0sveEo4Q3VCMWNxK01OanNKYjhlc2s5OHc2UHJIOWpG?=
 =?utf-8?B?anp5UUxycmV3azE4cGRDYWpXYTg3MmN0Y2x0eHFYOGVnazJIUDZMcGRZRHRE?=
 =?utf-8?B?SUxCNXRPZVNJVXVLMFk0L2docFlQYzd0NkY4b3lab0F5ekhXRVFWQm1ZRHNa?=
 =?utf-8?B?NzNWVlR5amo2dC9lNjRrblpxMXN4T0Y5NzFuakN4WnJYTUFwVEp3cHBTbGJO?=
 =?utf-8?B?OHdWcUs2TzN2dWoreThpY0xMSmE5ZXQ4Vmhmb1NUY1RvMkFMWXc4d2loUDc0?=
 =?utf-8?B?SnpFcVFNSCtMSUU4RDNXbXZ3d3pPeENVYnFpSEhDRDllczdWMDZva1FSMGZS?=
 =?utf-8?B?ZUdsTnpnQ1llUW56R1FNL2t2TE1aUHdtcXhNa2JUa2JKWm0zUC83UDM0RUNX?=
 =?utf-8?B?VkRvT0ZIV0VQYllVTjJPWjkrWE8xUnR2NE5JUXFMalkvUTVTeUpSUjcrUG0v?=
 =?utf-8?B?UXFvTXdjVXZRYi9NRkFpUklYZTNXdUdHZy9LN0Nxb0Y5bGZ6NGc5RkhKZWY5?=
 =?utf-8?B?V2Jxbmxhc1l1ZG9JcnpYc0RmOWVTUzF0UDFIVURPSURLOVNKdGQyUFF4Uytr?=
 =?utf-8?B?UjEzQ0NTYnlFNG81dTB4eWlsR3lieWg2QnU0bm5mS2hQeXlXajlEeVF6dnZY?=
 =?utf-8?B?K2QvLzVZWUtJOTU1Ym1YY3ArQ1I5dlE0blRNZVZYVHBISnZUd2tIZTd1T3Np?=
 =?utf-8?B?UWwwN3UzK3daVnZwY01CcS9CMVdyU1lMTmNsRFBBbWl1cExTRkxnQjBpY0da?=
 =?utf-8?B?TnJKR0ZacUlSRkh2eWhkWUpDQlJQM0pXcUN5MUxkM09Cbzdsa2dEUHBIQStv?=
 =?utf-8?B?NTlpcSszZmtCamRkbjlGZWRxdXRUT2hvUnhzOVVuc2ZmTWtoVyszWm1Kd0RN?=
 =?utf-8?Q?Nt38=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODUyZGlkeUNCRWhLQ1Rzb0I0cm50cXBwRVlEemVPcTVldWFnYmNVSmdpM1Y0?=
 =?utf-8?B?WWlicVErVkVWV1hjK0NMcE41eDRaYkxuTEhYMlFXeTA0VUZreURUaFlmdzlO?=
 =?utf-8?B?VFNmWGpYQ0MvazZyWXREN29iTXFmRlAwVzZaNjIzYXNxSnMvYXlyQ3RsQXlp?=
 =?utf-8?B?NnZIYVJTTUtiWWJUV0F5cFBjWW5hVDNReWhHRStLeVh0eU5BVmlmb0k0bmZw?=
 =?utf-8?B?YUNnSGgyWU1hUGl3bCswZVZSRFBkZUhFNngxWDV4Y1ZJaUltaTRldlRCNnda?=
 =?utf-8?B?VzB0YmxTb0VLK2M1bmtsYWNLbDBMUlFCRVdOZDc1dXVldU5XODVGWXFsSmVl?=
 =?utf-8?B?M0toY3Z5VmQ1a25HK0RWVWtGNGMvZlkwZzNHQmpaUjhuSjVuZUlFRmNhaDE4?=
 =?utf-8?B?ZXIyeVVia3JTUHVQMU1EcGREVGhJQU9naEpTMEwwU3RqcUlwQUoxeG1zS2x0?=
 =?utf-8?B?eXBRODNYSWxjTHFQYUJjT1kzUlN5M3FHWE1WcThubnI3RVVxMHNYRkZOSmE3?=
 =?utf-8?B?SnRQWnpyaUd0TVZkTi9sRys4RkJLd0tHWXhSUEtoSG1QWmx2Q0dMNGM4TkhG?=
 =?utf-8?B?L0dDSkZCZkxHd2tlQzRtWnFSSDRhVEY1RHFQR0c4dTBzRFJWcFNvZWRqRjMv?=
 =?utf-8?B?SWJYSjlDT3VwbjQwNURka2xzZk5ua2FXa3lXT2R0WDlwWGQ5Ry9jamx3dGVR?=
 =?utf-8?B?N1MvOFprTlZOQ2duUzZZU2pIUkxYTGJ3RUorTHEvYVZPVURFU1lvcDZRR3I2?=
 =?utf-8?B?ZmUrK250eU5zZUxDczhFWnlIcy9tSzdpMkFkSzJlaTlHZzVJeTJqSi9PUFdQ?=
 =?utf-8?B?WkUxVlkxMzRoTjhWWjNsWExmWlZCNlRPZEdyMURydlFPcDJDbitBVDZTSFNE?=
 =?utf-8?B?M0FnUHZ6Tm53M2h2ZVBsS1N5dzE1anJxZnZjakU2dkVFcTVoNUJLaytiWk1B?=
 =?utf-8?B?cXcySTZrY1VTRTN4SlFQVmRVK1NEOVI0S21tMlF5TUJNZ1J2TmoyWG1adHRI?=
 =?utf-8?B?LzltdlEwb21sRGlPUTlVSm5lVHpxaGlqN1h3K3JVRDU1QnpkaXRKR0R1RnRz?=
 =?utf-8?B?WmRjaXdHTWNxTlFpajhIVktNdEtsNGpyL2hHb2kzVWpDYWV6MzR1UzFVMExI?=
 =?utf-8?B?M0hURHl5NmJraDV4STcxNUxMaTMvOE5ib3lJRlRyRWlwMEVzT240b0hWS0lu?=
 =?utf-8?B?TlVRWFZxYmJYajhkZ0Rqdld4RXh4WEhqNHh5QVJKdml4aXZtS0U3RU1QWG5I?=
 =?utf-8?B?NElNeWpwTnZrSEpHMVdKdm1mRjN2a1ZhMlZSQkEzazRmWHVXL3Y2bDV1bFp1?=
 =?utf-8?B?YXZpdDBrSlFHTGxPRG1VSnNKeXV0MC8xcjZvbzNYWllRMUxoSWR6Vi9yc0hP?=
 =?utf-8?B?dTN3cmRLTG5EK3duQmcraTVBS2hyMjFDVEJLblpmRExXbHBwdjhOYWV2aE5p?=
 =?utf-8?B?M3dLc2R2ejl3Rm0vdkVDY1lETy93b0N3emtVdnJ1eXgwS1dodXVnYW5sbit2?=
 =?utf-8?B?YWdKNENlVW9LcTZVeHo5U0dJVURadjF2MG5FZnliekFiS0xXcGV5eG5DWFBS?=
 =?utf-8?B?Tk10aUdJa3BEamNGb0M5TDY2OUpaaVNGY0ZVYXRvWnBLUXR3Unpzb1FYU3Z6?=
 =?utf-8?B?QTUyUWhjYVBIWUJ1RGU0OWs3R1lrM0ZrSDVmRlgxbUJ2YjB4ckRXcDZGQVZE?=
 =?utf-8?B?bGYybUJLM0UyQmJiUDlOcG13b0xpRnpOaUhVR3hGKzlBNlFjRy9rZHhpQmhK?=
 =?utf-8?B?d0h0VmNWVzhMU2gzTlZLRGxaWmlpdzVsZE5OalluMGxKbDV5SHhLdUxwWUpQ?=
 =?utf-8?B?UkJQejRtWituc1JuZmdBQTNMaEhyNy9UWFZodVMvVVROQnIxSzRCYmNyaEoy?=
 =?utf-8?B?UDQ2UzFHbkpIYlljczVFek9yMkticmFXdXZrNTNTVXBGZXpEQnZicy90eCt3?=
 =?utf-8?B?cWJkOVI4Q2pxOC95ajd4a1dTbGxRU2MyZUxUb2RKNExxazU2Y1BXK0x4Zm1O?=
 =?utf-8?B?ekdqbTZzeXlDQWVGTHZUclpyRFVpZWRkZ0R0eWpzanNuM08xT1FQNVhBUzAv?=
 =?utf-8?B?ZnNrQWYrTWVjV3RaRTVPTU9vZ0NoU3lIeUFtVm9kQzJVd25sMll3U1o3b1ZC?=
 =?utf-8?B?a051Ukt0bmxlNnhsSFhJSjNmRkVxall3elpGTHlxVUV3elJHb3g2T2ZXZExq?=
 =?utf-8?B?UVpoSHBVTitrOHI4ZlA5Nk1FQmVaVWNuOVk0eE96OHNjeTN1UnN5ZjNjRGpR?=
 =?utf-8?B?TmI3TUp4ZGtKN2tpOFhXb2JNTXpENkRUdjNVbE92VFpHQVROamszbUxDbHlp?=
 =?utf-8?B?eUQwci94M09BQ05uQ3F3NzRFNC9RZVZXRHNZQVpFUEJ2SlNoUE1nOTdtT2xy?=
 =?utf-8?Q?L/UiRMsWTbqXdwMo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41c44867-3a15-4352-03ea-08de686bac5e
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 06:14:39.9047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lGPgb3MVQx8H4I/iYSJkVi2nDwoPC39Z0l0OxyPMxv5LHBGCZHXifANsodsENtqKwzfuIvlOIU5NK3RqEC0UAV5yBOUMy+8pRbC6CCdQVPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7601
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E8ECC1174F9
X-Rspamd-Action: no action



On 2/9/2026 9:10 PM, Imre Deak wrote:
>>> - Don't print the 30 BPP-outside of valid BPP range debug message if
>>>     the min BPP is already > 30 (and so a target BPP >= 30 required
>>>     for HDR is ensured).
>> Does this match the current implementation?
> If you mean the logic that, after the point where the min/max pipe BPP
> based on the source/sink caps has been determined, constrains when the
> minimum pipe BPP is increased due to the requested HDR, then yes.

I was pointing to the last bullet but I got it now. Thank you.

==
Chaitanya

