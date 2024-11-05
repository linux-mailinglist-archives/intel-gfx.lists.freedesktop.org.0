Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F309BCE65
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51EC210E5AD;
	Tue,  5 Nov 2024 13:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMx3qlR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A8510E5AD;
 Tue,  5 Nov 2024 13:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730814996; x=1762350996;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=TwUboFPDJm/tBHBtk8lgdIK8hh+mHUAYZf0KvBHbzBw=;
 b=cMx3qlR395warG8WU3a7O2b59GaE2QSDY5iaCYgN2Y7Wcc6lqmOtpRuN
 M3DfwvFryqgDJcvm75iVtlwMu2/Wk6PFhzOuA4UcL4r3iEPoEbcOkqPDL
 NDu/aE3niN/Bs6N51AEeZ0r1f4lYOEytlePSLUDeH6+etUfmwYBYw3tDC
 Qi+pZNzXZQuWZHe3zTIP9mv2Q1oHGZ7sTujs92iIc7cZjbDUcljYYvJQG
 6mDPZqAwjCaCO1/JyyNbNrPtWa3VSBGJ/hwf6ETbFSSyOk7N4Fm9WL12L
 biZEN4swQVcrjPYzLW7BTyee1tVDmuIEfpKT54svxxE0XBVw5USbemKEI g==;
X-CSE-ConnectionGUID: 3SDLJB4xR8SLdEwygm1akA==
X-CSE-MsgGUID: GHWu3ytCQyyqC+G2sv35gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41665896"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41665896"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:56:36 -0800
X-CSE-ConnectionGUID: Eirfqrk7RxKgXR6nvF0lSg==
X-CSE-MsgGUID: s5xN++r8S5C0ZB6bJen13A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="88829836"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 05:56:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 05:56:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 05:56:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 05:56:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jaNluVhhnf5KhnKpb8l73JbZEPHj2hdHeh+WKPXK/kcZSpwMRVZcSQD7SRVdnLwYhReziDHNLDxhoY3ttsDDEXeAFUd3RSkmNq2WMhVXPdUBm1U1m5MJTEyyxd6sOrH5KVdtmD6Fc0nAIIZWvTFc0w2UrT0Yqge6fpULHXa8gKc9kk0vx7sE/DD0Rs3qJWJQ4T5aq+/XeDrxNrZHRvTztNqr7GmHvjOLIeq2slookXpI9Oj+D9IWnaNCC0ba7WA5/l1NxSKMXv9VHoa+HMM686VMY2QGc3NULvLhuwNgva5sTiDGFTOd1NvD2ayeHb/10TCCFcKkd7lj+VRzXNKjHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYI8X4CROqGroRjIt9Qle6hkTQe+XA8mQhxnWigVatQ=;
 b=K1QgiZW1QqiGuAH5M2lfVNpN68eQo3jfmZchK8KseL7Kl4Xa4em0pxryI3YPuaU58SOESjlo1qoJkwzSF/TYCCe/I+GE+lmDA6JAZKYpONhstq0606C3b7PobqmHNe5/p50yLe9QSimgvtG8uUbnsJTSm2UclpLmBQUdGMU8/M9w4nyQRd/6ReA4y7doYlHgS/SGCA/iBPkiwhOSrrrcxODXfLxxn71uvgOQCLwNW22ziFXKdcHgYosZKVSmz9jZKSl312SEg+20AwHxwkiyPLHRB869hU/xQZYHOgrUozQfoyPtmvAPNmwBXz1nPC2tIgcDRjezJArZGDJVeFkwqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7292.namprd11.prod.outlook.com (2603:10b6:930:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Tue, 5 Nov
 2024 13:56:31 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 13:56:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172959501916.3700.2271511841896515028@gjsousa-mobl2>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-12-gustavo.sousa@intel.com> <87ttd4v5ow.fsf@intel.com>
 <172959501916.3700.2271511841896515028@gjsousa-mobl2>
Subject: Re: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 10:56:26 -0300
Message-ID: <173081498652.2525.11002030128754340512@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:303:b6::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7292:EE_
X-MS-Office365-Filtering-Correlation-Id: 49cc8a4c-dbe6-426a-6d78-08dcfda1a677
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RitGMDkzUndNTTlLU1c2c0xKaTZuNkx1YjRSV3dsR1NRc0VuUFBVRk1PZUt5?=
 =?utf-8?B?TjZObURtZnkwRGoxWEVoYk8rbU1vR0cwVmNVUGNTM0hvTDkxQnFTK3daQ1Ni?=
 =?utf-8?B?VDBqMzlZU3VBQ2RiM2hxS2FxNXJ4WU1tMEZmOUVRSENSU3Q3WU5lNnoyeGxi?=
 =?utf-8?B?QWxQdkhWK2RCclJ5WFdqSHQyMCtDd1ZPZWZRc3hoSm1iZkFseFZ2VVJLS3NU?=
 =?utf-8?B?UlJRTW1lUzRRR1BvVll3YitlRWd3R2NCVkFyOE9NRTdOWUk0QUJtV21sU0tT?=
 =?utf-8?B?ODlPQ0RWVXl1dzJyQ0JGOTRmWXZCWkJDdm4zSzZjUUpadGNXWkduR3ZKaEp3?=
 =?utf-8?B?cXZzVXJ1TzhUWHV1YTlmVDRGa20rTExDV08xM2NDY2grUnZvdVpNN0w0Q3dX?=
 =?utf-8?B?ZGRjN21idzFpRldiSldFWSt3RDRYZXRoNXRTOHJzZVMwV1ZuY1dOY1p6amxs?=
 =?utf-8?B?Z1RJNEszRGQ2QjJyTnNMdnlZWHAxUThtZ0orSWtFcWptWlVZZzBjMGNrUVh4?=
 =?utf-8?B?dmVzSmI4cFp2ZjI0MHJBaUtMN0UzTTVEaTE2M0dYUmR2djMvQ1JsOHA1UHcy?=
 =?utf-8?B?U3lDODh1bzRRN1k1dElHQkhMYXhVU0RWa1lxcnBuZ2hVTnhhUVkxdnI5WG9w?=
 =?utf-8?B?cC9WM0hkeUpEMDZ3c29JY0dqcHB5LzZDR3l1RVFjRUcwK0hrblFnVmxtZzVv?=
 =?utf-8?B?Y05qYVNOTXY4SHVhZVV2M3BEQ3lrWGgxcEQ2OHNML1pVOVNNQVZTeE1uUk1B?=
 =?utf-8?B?ZC96S2MwNUk3a1hMYUtFRVBSVi9aakJ6MkdLUGZFalc0bEUyU0h2YVo5Szhn?=
 =?utf-8?B?cXNMV3Q2M2FZRkRCWllOVW5yb3ZwSDVzdVFWZWYwdHNVWEdMVi9aRVpNaWpl?=
 =?utf-8?B?M1VjMndQc2c3dWhNQUZxZkpmNHVzVFhrMURvODB6M2FHM1kyR1pyTzFRWjRx?=
 =?utf-8?B?WFhBdDdTbkVOMzFHRWZjbjZBTVlKMk9pT2c2NnVCQ2hTd04zUHdUUUVDRnNa?=
 =?utf-8?B?amFsU2J4SzIweTBLQUsyZFVGNk5tVnB6a2dkVVVWUDJIbXE4dWZYNy9pdkt5?=
 =?utf-8?B?S0Eyb3ZnZDR3Nm9PejdDaEQybjFNMTNZWTN6Q2xSQU9Iamoxa0pLeS96d2t4?=
 =?utf-8?B?Kzd5dmF6dGxEOEdUZ0NnbGhUYXZzVm9EdnhKMVRud2UxRGEzeE4zdkF0TVZ0?=
 =?utf-8?B?SjJFRC8yQjdEaUkxcXJFRHJOM3ZEUEltaE16RDMraCsxc3BDZ0h0Vi9RaW1w?=
 =?utf-8?B?RFkyY0RxWU9rWlhDYXdOU3pVcXdxaWwwNWMwVlFBam1FWFBXRzFTT0hHVk1S?=
 =?utf-8?B?VHVaTzEyamNqdXZSMHZYenNsbHlFVWhJUUtCazQ3RGozbUJTT2JJamdLSmhK?=
 =?utf-8?B?aWRsamN1S2tPZHFXUDkvb1VTWFl4a2RuNXFZTEJtRnhnckVrOVREWEFpYzhT?=
 =?utf-8?B?c2lCLzRXWnFtUVk3Ni9obWJNdlFqelNQWU9vOHVOaTdjL0VsMjZrZ2xxWDI2?=
 =?utf-8?B?REErTzNUTlQ4UXM3V251dGZnR2RGQ1MvKzRWWG45N0MvYmRjQUpqeU1oelpS?=
 =?utf-8?B?QmRUMzgyWWRkWDJBY2xQTEpyczFDQzZLbXBJajlaWlV0MktNYjZYU2ZQSmtt?=
 =?utf-8?B?ZFdrL1NMdFVRUjZhb2dINExHU21sNVNoamJqVGFLRlZiREhzV2t1Y2QyZzhS?=
 =?utf-8?B?UmZ5SWdJMHFtMTlSNGNKOVVrMWllTXk5bEVOSmtZZ0tYSlMyeFk5MDRZN2ZR?=
 =?utf-8?Q?P6PHrVIeayhBjwGG20/F5/+AMw8fA/pwkL7oj8S?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGlqR0w1L1VCWnNodW95Z1ZMNXN6QS9RQldiMGR4ZHM4YUpLQ0pmdGFZaDRl?=
 =?utf-8?B?L3Vvb2FJU1JiNUNrWGMvUHRkN2xrTWNHY2FTSnBFU0hiM0EzSzg5Y1g4YVRB?=
 =?utf-8?B?Q0YremxNb0h3REdDanJPWG1IVTFhT0xnOEQ4dnl6cHYwL3hDWnFsVTJWUmll?=
 =?utf-8?B?NkNzcUlPZk14UDUzRnJIbTBJUFZ1WkpkM1VUNUdObzhGS2xuVFRDaGwzWmpa?=
 =?utf-8?B?WVM2ZjB4bG5JSDhWdkVGelM3d0pHL3ZRMWw4K1FqMVVNUmlmR1E0dFFDc3Na?=
 =?utf-8?B?K29JZWJSM01RY3d5bEx3NXVWSGk1SEVYdUpnUHQzWUdxZFgyaWtlYm82ZFJt?=
 =?utf-8?B?QnNFWXMvWGpFclI5QUU3Vjhvb2laR21WZkhXeXRUaDVYOU1GeUVlNXEyWERz?=
 =?utf-8?B?anQrYXBGRUtSSTYyOHNSZE9IMzUwVWtOWE9NUVhrQ0RxcVliK3AvaHRPR01i?=
 =?utf-8?B?UEkvSHFlOVF1QlZqaldiRnZtVXREMForM3gxU0hpbmxHU2c2Rkg4TGJDU0NI?=
 =?utf-8?B?TFgxOWdVY2hjNkVsMmRjeEpreW9kWkhHNlNxVVB1T0lFaVlLY3VCcFoxZzZp?=
 =?utf-8?B?V0JsZ0haTHdBeFhWYnN4aElEL3ZkMWhvNm5STTczTXM1MGFRVnY1QTljd2Q2?=
 =?utf-8?B?MFRlZWZERFRYSDVtU1VKOFpWc1RvOFBuUkpnMWdiR1Rhbnd5b2VubXQvV0Y0?=
 =?utf-8?B?ZGdlMkNBc1k1NXRkaTExZVFvdnVXL0E2MU9BZmxBK0I1Y2FoOU4xSGFsQkVa?=
 =?utf-8?B?OXRqWGgxUDdncWN0czcvNDJiVHR5Sms4eFZlM2JhYmYxcjZMSHdEWHlOSjlU?=
 =?utf-8?B?UTlYQ256OGJodDg1bnRVa3RuWEdyR1dmWE8zWFp5cGlwdkNocEo5T0pad3lU?=
 =?utf-8?B?RkdiL29CS0ZVckF0UXFKY0FmMDJmSGtsSXJpOUJMUnROU2gyMFMrbllwM1p6?=
 =?utf-8?B?V1l1QkE4M0lxZWJ4NkNUTFhjVWU5czJ2RzBUVVUvMmdxWEc0TER5YVk0ZXhi?=
 =?utf-8?B?L0FBVTVJeC9XS0dtVWt1RlJiTDZtWFdJbW0wdnc3bE55ZTdrRDVTTXByOFBE?=
 =?utf-8?B?K0VHdkt4OXFaZkJTbG45TlRJUkFkQnZPMndYRjJvYjdWeitNTzU2amNOSGxD?=
 =?utf-8?B?aXFHWUlSWGhFQ3BuWkVwc0p2SjE4USs0LzNFaXpkbjhqN3MvbXQrWFMvK01t?=
 =?utf-8?B?bU14MmhSMTYzd2d4Wk1DcFVGWVFIYjhxa2JCdXVQNkpIOTYzbHlBUTNWYkg5?=
 =?utf-8?B?WVZRakFKRkFQbGVBY1F6Wm1UNitYVjNQaTdTdzAwYkJQOUZYVDY3KzAyNlE5?=
 =?utf-8?B?dEZ6RXo3dEJpS1BKNjlIdXV3ZGcrMSsvOEorZ2txSlZ4OWtRRkJHQ1VlQUdK?=
 =?utf-8?B?c3YvQzdKMGZMTElNWXJQeFdycWkrUzdLMjFYTGUxQ2haaDhoTVNhK1lHTUVm?=
 =?utf-8?B?aDFIM1FNVG8vMDF3VVJnb3pFYzVNa2tXcE1tVVRBWmVkcURPYmN4Z0J4YkpV?=
 =?utf-8?B?cGpsRVZiZWNmMmw5MmdHOFFldkpXR3hqK25rdmRZNEVCSk5RUXAyUUxOOGFM?=
 =?utf-8?B?QytuMkhSVVluYTBDMmI0NGhCalhXUzN0K3BZVlNkZ0o5aDVObDFRUDhVOGlj?=
 =?utf-8?B?QW9MSzJxNlphY0Y5NS8zUkRTR2RuTEpUZU83TnlBb3ZGbnJRZFd2RTA0U2d2?=
 =?utf-8?B?SkovY0hoaGJqN09hVEVLUHAyck01YlVvOGE5Y3J2Q1g1VTlKWWlWY3B4RE5z?=
 =?utf-8?B?akhBdmNNYXdkZEg4cDR0VnRoZE5BOTcxeSswRzFFNEdMOTYzWjdzN3dpQSs0?=
 =?utf-8?B?eWR4VS9uWnhyQVhwcndRS0t0QWtzRm5GamFaWVpoK3Q4UVVIOVNBNEd6R3A0?=
 =?utf-8?B?VUd0ZVQ2blpzeXNOMk1sQ0U2T0E2ckFDbTc4THVFZDlBQ1Ztck1QbGxKQzJo?=
 =?utf-8?B?QnFJRmg4dXNtY2pmQTdOVENKc0NmTStYOWgxWHhuSkJxTFY0U09KdC9SNHpo?=
 =?utf-8?B?ZWhLeVlPOVFWZTR4aHZNL0QxVEtFbENFN21nUURjenAwK2dldlhwNEVEUGx3?=
 =?utf-8?B?RVlhYTFnWCtnMElJTThmOVoxQjA2M0pnUGkxY3ZNUzZBUFJIeE5WM0RiYVJL?=
 =?utf-8?B?MGprSE9uVjltN1Q4NHh0RGdreGZ1MXNzY0hDaVZEalJoeFcrbmkvNXZuUTk1?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49cc8a4c-dbe6-426a-6d78-08dcfda1a677
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 13:56:30.6551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kU6NCOvCgWRjENogRRrKkINjfuNB3gGS5M5uafb6l5XP7pIejE+vgdz8OqwvGxzyg+zjcAWYHZSUpdKyFxzKtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7292
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

Quoting Gustavo Sousa (2024-10-22 08:03:39-03:00)
>Quoting Jani Nikula (2024-10-22 06:37:51-03:00)
>>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> In order to be able to use the DMC wakelock, we also need to know that
>>> the display hardware has support for DMC, which is a runtime info.
>>> Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and I=
P
>>> version, and use it in place of directly checking the display version.
>>>
>>> Since we depend on runtime info, also make sure to call
>>> intel_dmc_wl_init() only after we have probed the hardware for such inf=
o
>>> (i.e. after intel_display_device_info_runtime_init()).
>>
>>Non-functional changes combined with functional changes. Please split.
>
>Do you mean changing the call site of intel_dmc_wl_init() as being
>non-functional? Or is it something else?

Jani, I'll send a v2 soon-ish. I'll go ahead and assume the anwser for
the above is the former. Please stop me if otherwise :-)

--
Gustavo Sousa

>
>If this is about the former, I would argue that's not really
>non-functional, because we are changing the order of how things are
>done... But if making that a standalone patch is preferred, I can do
>that.
>
>--
>Gustavo Sousa
>
>>
>>BR,
>>Jani.
>>
>>>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
>>>  3 files changed, 4 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driv=
ers/gpu/drm/i915/display/intel_display_device.h
>>> index 071a36b51f79..5f78fd127fe0 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -128,6 +128,7 @@ enum intel_display_subplatform {
>>>  #define HAS_DDI(i915)                        (DISPLAY_INFO(i915)->has_=
ddi)
>>>  #define HAS_DISPLAY(i915)                (DISPLAY_RUNTIME_INFO(i915)->=
pipe_mask !=3D 0)
>>>  #define HAS_DMC(i915)                        (DISPLAY_RUNTIME_INFO(i91=
5)->has_dmc)
>>> +#define HAS_DMC_WAKELOCK(i915)                (HAS_DMC(i915) && DISPLA=
Y_VER(i915) >=3D 20)
>>>  #define HAS_DOUBLE_BUFFERED_M_N(i915)        (DISPLAY_VER(i915) >=3D 9=
 || IS_BROADWELL(i915))
>>>  #define HAS_DP_MST(i915)                (DISPLAY_INFO(i915)->has_dp_ms=
t)
>>>  #define HAS_DP20(i915)                        (IS_DG2(i915) || DISPLAY=
_VER(i915) >=3D 14)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driv=
ers/gpu/drm/i915/display/intel_display_driver.c
>>> index 673f9b965494..8afaa9cb89d2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> @@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i9=
15_private *i915)
>>>          intel_dpll_init_clock_hook(i915);
>>>          intel_init_display_hooks(i915);
>>>          intel_fdi_init_hook(i915);
>>> -        intel_dmc_wl_init(&i915->display);
>>>  }
>>> =20
>>>  /* part #1: call before irq install */
>>> @@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i91=
5_private *i915)
>>>                  return 0;
>>> =20
>>>          intel_dmc_init(display);
>>> +        intel_dmc_wl_init(display);
>>> =20
>>>          i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_mod=
eset", 0);
>>>          i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGH=
PRI |
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/=
drm/i915/display/intel_dmc_wl.c
>>> index 8283b607aac4..f6ec79b0e39d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>> @@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel_d=
isplay *display, u32 address)
>>> =20
>>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>>>  {
>>> -        if (DISPLAY_VER(display) < 20 ||
>>> +        if (!HAS_DMC_WAKELOCK(display) ||
>>>              !intel_dmc_has_payload(display) ||
>>>              !display->params.enable_dmc_wl)
>>>                  return false;
>>> @@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *displa=
y)
>>>          struct intel_dmc_wl *wl =3D &display->wl;
>>> =20
>>>          /* don't call __intel_dmc_wl_supported(), DMC is not loaded ye=
t */
>>> -        if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_w=
l)
>>> +        if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_=
wl)
>>>                  return;
>>> =20
>>>          INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>>
>>--=20
>>Jani Nikula, Intel
