Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C1C933F4F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E4D89C2C;
	Wed, 17 Jul 2024 15:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COWfIusv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E6489C2C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721229082; x=1752765082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8d40j4EqEL5rrUQc8p7zx2FLhelleHBYCCQodiB2eQI=;
 b=COWfIusvTiML+mUlhlYNnpmw6O34Q4pvM5jz7WUiVpwhenCUfASgiUxj
 lbaVBqaBZNW/P6ELaXSiIBVb/ivOMCdBRMNLQ1MUCEP4WO5yO7XR3/UzK
 kUA70d79Dp17ahFS3Dc8ryTk1YPsfLYpVpNfYfnxsInrPVzJAuPsCBtCi
 AD76Qvc854piA8pm0M7qFwEqVIyoKhkZJxlyA/ld/aReG93nZOhKEfXqL
 o3gYwJ5kG7i6bm2vpgFRmsIt2gHDa64xHzNX0TpznpmoT5UJMtyCvnq3r
 DNKxIX/QlD1OsnymkFo3kJwB5R67IYhSY2gZBrWVlvWYXfCpOsj0V4GOJ A==;
X-CSE-ConnectionGUID: IQkVFuFpTSueDWT70KF2DA==
X-CSE-MsgGUID: p+ZLqWTlT6SBJCFfCp7yWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18872814"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="18872814"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:11:21 -0700
X-CSE-ConnectionGUID: 5rO4QLizQ0ibPmFCvlyPUQ==
X-CSE-MsgGUID: SaMG6NvMRTWO4SBfG/9Fxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="50304313"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 08:11:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 08:11:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 08:11:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 08:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KGZoJcg925THyBHQtS+QEMxW8gqqx/dufKBeijiWEhf869nBbw2hpmYIXl7H7VBfvr4r+qCcb4WWkuxV5MN/E4avUK6GtC6xvwagVxhucartdOCunPtCY+D8CBnIZIltE//ldm2yccfQwxlMXwpvGdZjI4nAJMxcBJOVl+KXNd8Ra0b0R7O9GivTmzjwHP8ZcNF3dCwGv5vQUTMmOAaMLzgVHSJcWZc3bBWn2CmEVI6sGBKPNHrYlXFnR0JFuU01mIrDstee6RwjeI8QGr7e5XnBxtSCtctIsu03Cbl3+8R+JyudMWa+mRi6RK+xjT+l778xPCXOOlsh6g5cimynnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8d40j4EqEL5rrUQc8p7zx2FLhelleHBYCCQodiB2eQI=;
 b=omFHxPvp99frOItHMBTaOsGifsVYrEI21pBC/yhNJROzQykdSgQSNsYrO1hsBSVFiPYxxJ0IUU2pg3qIP11KZ/oVtUU0o8eNXNZdkU3aHdozP+PiRDYXkom+QwUpGgHEJifL9PDS1X+4q0xEAN1d3dUgukT/MGDzcukToSxcgOnodEkYPZzScJsn2NeqiuiQFf1V27JCtr+00MXA8aIna9taOOCY0rCq+EMcm5i6oWOaerEXIBBISNhQokg364v8NM6x+bGzqSZurDmLJ794LIMybqoDL2KAA6+fj5y3tRoBCAalwVumOfWQqrJfMUisO9kYjXR7jMSd+PvW7dCCVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB7189.namprd11.prod.outlook.com (2603:10b6:8:137::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 17 Jul
 2024 15:11:12 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7784.016; Wed, 17 Jul 2024
 15:11:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Allow NULL memory region
Thread-Topic: [PATCH] drm/i915: Allow NULL memory region
Thread-Index: AQHa1KbN5UTvSEpbjUOefTSt9WtVWrH7DFeAgAAAesA=
Date: Wed, 17 Jul 2024 15:11:12 +0000
Message-ID: <CH0PR11MB5444A0D640A7B0E8C32189A0E5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
In-Reply-To: <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB7189:EE_
x-ms-office365-filtering-correlation-id: 6900bbb5-3b82-4557-43fd-08dca672b254
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QTRTVXVWYUptZ1lGdkpLdTlBNE9vSDlJeHBHVTlHT3VTZ0YveVJGYVNBNXNi?=
 =?utf-8?B?eFVVbWdmVjYraWIvSkdvQWM5cUU5dFpYY3czQ0hDK0I0YU5Cem5CWTlVVjZK?=
 =?utf-8?B?MGM4L3FuQVg5MDhza0RQeE5OeS9mdmVqYTMxT0hSdUowaktqV3MzaU1nZk1k?=
 =?utf-8?B?Y2VMdHZXTGFjcXRLYk5yVVc2RGNhZWNpbGVWamEyZ2R0clFqYjJvZ0k2TU9o?=
 =?utf-8?B?Qy8wbDdTc2dYR04zUmJxOHliQ1N6dVh0akdXbG55VUM0bTdQbHYrYmZhVEZ4?=
 =?utf-8?B?a2hlWkxLMk9sTWxueVU0Um9MTGJjVUxoTXR6cEdBZTNSck9VS3RFWS90Um9q?=
 =?utf-8?B?cXgxQ0doOVFyNTFGNTQxM0ozeFE5UldYMWpBZ1NOMk1ZV2tnQjFXQkpzM2g0?=
 =?utf-8?B?dHQ2bmlTSkxpQjFKanl0Ynhmb0owRzdtNVdxV1RibHBYT3NMTjN2ZWsvYmZi?=
 =?utf-8?B?OE9BQUt5VmFlaUhNMTVvTjRuT2ZRMFFobGFiWnkrbFg2V3pkTEhXRHNWSmgx?=
 =?utf-8?B?dGtvOUNxRUY0c29HNGZOM05hdkNmV3lpeURtUWFkbDJHZURLek9BWUpQV0Nk?=
 =?utf-8?B?bWRZVURMQzIwakhzeTVMUlhzMW4vYTQrVUpSWHZSblIwSEFYa2tXenE4Y3M5?=
 =?utf-8?B?K1h0NlJWZC96bWdLSXByUnNac2l0aHFEWVZDMFdIZ0QxTW1yNjhURzVrSlg3?=
 =?utf-8?B?UjZLeTZqdnFFK2hFemRpSFhtb0pFK0ZsMnpad0F3eVkrYWEzRDRBYUh5OGpC?=
 =?utf-8?B?Q0NOOE4yN2FFZWxXak9rZUtsUTh6TWpkR3dRYzFFd0V3SzVOTW9ockk3QzJI?=
 =?utf-8?B?OHAzWmg1MWtxbitmdUtKNW9RMllkeTQxb09uNUtxQXlpc2N2SzY2MTArbnFo?=
 =?utf-8?B?cXMxNldKajRMblVkejAya3lLUmsxMXVZOTFZZHFUMTArdXB6eUpHOWgyNkNT?=
 =?utf-8?B?RkZIQm9kNm4wTXBHZHJmTG43c1ZIK0pSWkE2c09EMnUxVzlxQTNEd3pzbUwv?=
 =?utf-8?B?R3BJdWlBQlJrZVU3SExzZmhUWGZpMmM1U05IRFA2Tnlxck5nRmFSS2dQQWVi?=
 =?utf-8?B?S3Q4MnJOanp1Qm1MNEk4anZOVTJxOHFrU3VNQVI1SytyUWh5UTdRM3o3OFM3?=
 =?utf-8?B?dFZoei85cmR3dEZzUHdUcnZTMU44ZjdCVDZiangwTllrUUhFbjlSZEUwbjNN?=
 =?utf-8?B?RVFqZ1A3WUdNTU4wK1VCc3NUcUhxZDhtTE5XUkJMUk1IaUtFa2VIZjEvWWlO?=
 =?utf-8?B?elhSQlhFV09qTVdTc1NJeno3TWprSlpRbWlTVTlFeFhSRzU4Tk96RUphUTBM?=
 =?utf-8?B?b1JBeHJQUFFiYmdxL0FTOXZSQmFQZ2QrbkNNTUUxMTk4RzBIWnY4Z3dGUi9t?=
 =?utf-8?B?eWZmdGVhU25rbzFBN2c3T0x0YWJURFNTN29uRUJuNk9ZejB3aGcrV3VuOVJt?=
 =?utf-8?B?V0JVbHdpNVdFNmdGVjBXRUhWZk5neDNNVVRDOG9RNCtoNG44YXdJTmMrcWtp?=
 =?utf-8?B?ZzY1MDV6QWVJV1JCQmFUcHllTG1XN3ZKNktTNHRxMkJtRG0yUGpmQXFmZTM2?=
 =?utf-8?B?U212VkZDb2tna1Y0MWs3WXVsTU1PNkxrWERmWWZGdThMVmlSYkFUaFJuY2lw?=
 =?utf-8?B?S0Q5UytBZzNYL2Fpa295Rkd6WjJ6YWZRZ3dueEFTRWNud00wQjNXZ2diL3lK?=
 =?utf-8?B?OWhtK2RqT2dRWDJNUmljc3pQS3JaOEFIcng4SUFveUdYL21ocGZld2VmUmdE?=
 =?utf-8?B?SEZNYWJuNXlFQlpEUzZRWjJldUhHbTI2OGJWNmJudWRHMlVjZVJ6NVFXYWdC?=
 =?utf-8?B?UVpRQjB6UWRuaTVwK0FSbW1XTlprVjZZNEQ3dlJINlNmTmlScDd4RlRCcmFN?=
 =?utf-8?B?ZUlrR3djZU1zM0k4TktXUFVtYjU0c1ZxQlR1VzFSVVc1aHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXAvc0gyanJmR3N5RlJtR3J5clNlZW5FTlBncXRpMS91MVh1RGxWc25TOWsr?=
 =?utf-8?B?Q3g3czQvbWYzejBCWGZIRnJ2K0RBNW1sYjVxNUtMTWZGQnhNTTAwL0VFWG1L?=
 =?utf-8?B?WUZ0MjJYSGhZRG9QMGl0QklLTTZjSFRIUlJTME5McVlYR0VHM25rZ2taamJM?=
 =?utf-8?B?b1FucUt0VHhJV3lTdUllTmt5amU3N20rK2ZMeWY1S0lkNldPVlFPK2NLRThC?=
 =?utf-8?B?cFhZMEJ6OVdpaE96RHBjdDIrOVdqd0JNMUxuZDVGVlllYnBBeHJiZkJWdFBX?=
 =?utf-8?B?SDJmMkE1OXZYeUlibktOb0NpbW93ZkhzaE1XWUc3UlhTK0VsTGtxaG9rY1FJ?=
 =?utf-8?B?QXVNSXg1dWQvaTdvMy9oaVQyOGt1T0FUcXNhVWkwMHpkV2lyVWtCZy9KYm9h?=
 =?utf-8?B?bEtIUExLdkd1UDZna21UMnZHYmZuM3UzYW9mdmZUSit6TWc4WjAyVHhJRHI0?=
 =?utf-8?B?L0Y4a2VmaEVEMTRqcncxMmg1dnJtZkpWVGticXBPNlNOYUZ1cC9sVHdFVHNu?=
 =?utf-8?B?dHpQcDdyTkt4SU1iakZCNnp0SVUxY2h0b3VvdGIvWElCUjZoaUxmWkpNeVEr?=
 =?utf-8?B?eXo2T3RYMCtTdlJPN2RiUldFb1lpS2FDb0pkNVM5N25weThDWkZ4T3RtU0JV?=
 =?utf-8?B?cDA5YTZacHNBVUpTR1RBSFY5d0VPMlJ1NVhsd1pLam1lNHVLY3U3YVNyRzl6?=
 =?utf-8?B?TXpYbG1XTlZuemswc3ErcVJBYnlsNUpVK2hpQVhreWNiQUk4WGFvZlFpSm5U?=
 =?utf-8?B?cU1HT1I4WlBzbUdBUTNCdkh4dUFpM0ZYVlNmYUpRcVZZcjg1R0ZJKzdPdDR5?=
 =?utf-8?B?aXVHWEZQZ2pTd0kzWmxHcFhOZXVodjBFMzEwWmpGY1R3OGZ4dGNnTTZyTVhR?=
 =?utf-8?B?UU9sMDQyeWx0SXdvTWQ0eUxZUnFjSUpVdis0bkVyaFhYb2JIbnZuaWgyazJO?=
 =?utf-8?B?ZW5xcWVLdVhFR3Z1M2pvcHNZanAvVUx5SkNJMS9YZnlvMkhHdXhJSjVTYkVQ?=
 =?utf-8?B?YXdBVFVIcE4vMTJOUno3OTRLRUV3V0VURTdRSHQ2Qk9kUmVCT1BXeHBNenF1?=
 =?utf-8?B?Q2FDRTNUL0FoV0hrRXVObEl5Q1FMU2ZYRW9DVWw3czlMN1hZamNIaldWUzJ1?=
 =?utf-8?B?Uk9NTFBYQXgvOWR5QnB3T1M4OVhYa2kwaW5hczJ1Q2YwdXo1T2RYQ0w4eDJv?=
 =?utf-8?B?OXIveVI1Q1dwbGZrZDVRNFRFb2EvMVJkVWY3YlR5Qzd5dGVKeU5sQWlSbzh6?=
 =?utf-8?B?N3pOYlI2NEtMdmRRbnF3aVdPcFB6dDRxdW9iZnFLZHE1N25MeVg4dDFKV3BI?=
 =?utf-8?B?TmZ6a2tqWFZzL0dOUFBUSmZacDh5cytENFRxSkZLVy83OHZjSWJGcnJmOWJo?=
 =?utf-8?B?RDY1ZS9rNGZtanlnaFZQWjJDcFBuY3hXc0h2a0MwWStpRC8vV3BzZStBWWhW?=
 =?utf-8?B?Sm1DOHpjZklYN3Q4cS81YU5LTVlUVzNTUjFoYUdGSnI5MlFtVW1GSkxDRml4?=
 =?utf-8?B?V0U0T0QrMG5pUlFsRW1QM2FvaFFHZDRhTWU0ZWVjT3NDc1d5VFd1aEZJeXJV?=
 =?utf-8?B?RDJnK0dFeUNtWnZqbEFBK3NnUkVLS2JNc3pZbkZpVzd0SUZKRitYU203cW9X?=
 =?utf-8?B?c29tb3Y4V0d4L29raG9BUERibk5FaDJiRnM3UWdnY0dleGFKQmFlWnFrcStU?=
 =?utf-8?B?bzNPTGpOZVFURHlTUHhITkNxbXBQenRPVVllSEUrb0doVTJ0TzFSdTdJeUwv?=
 =?utf-8?B?YStJWEhibXAxOTlqeE51M0t4VzhLcXgyblpzbEFrcEVDbXdBbTQ3Q0EveGpZ?=
 =?utf-8?B?blN5QW5uVjRXazJyY2J0T0pHVmVqMERRUnRDbHhVMklSSHZZcWhzV1dvSWVR?=
 =?utf-8?B?K1laenI4UStPUEhvT1dGTEZibDZkK2J2MDBTdWNGL04zNmF3cURKbzNmT2p5?=
 =?utf-8?B?amtZcDZ4UlNuamRaMFVNQXZJK0d6QWRUMWNsaU55VUVtZGpUZlpvWENRcVJu?=
 =?utf-8?B?WWhDeWcyUDVXLzlWM2VVaHh1WkdwVWRodGZ6Nlk0SmlBeVozVmZ4NDJUS3hn?=
 =?utf-8?B?ZEVsNDkxR2FUUiswUElaOURwSURtd3JSbHNXaUxBTXF6VWIyQWZHVU1uOUxG?=
 =?utf-8?Q?3rjcNzYAfdLAbRVQRwtgYAOzd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6900bbb5-3b82-4557-43fd-08dca672b254
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2024 15:11:12.7631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1j34rSdllQCVebSboNCqkvkz6V01du/OCEyhcB/o3N+E+kXmr8HnSafUKML9yuK5ADrIilD8CGHGy30EsLJ2+2hwSuTlrOhT1UOxWmWEXZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7189
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE5pcm1veSBEYXMgPG5pcm1veS5kYXNA
bGludXguaW50ZWwuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgSnVseSAxNywgMjAyNCA4OjA2IEFN
DQpUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBHdXB0YSwgc2F1cmFiaGcgPHNhdXJhYmhn
Lmd1cHRhQGludGVsLmNvbT47IGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZzsgY2hyaXMucC53aWxz
b25AbGludXguaW50ZWwuY29tOyBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNv
bT4NClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1OiBBbGxvdyBOVUxMIG1lbW9yeSByZWdp
b24NCj4gDQo+IA0KPiBPbiA3LzEyLzIwMjQgMTE6NDEgUE0sIEpvbmF0aGFuIENhdml0dCB3cm90
ZToNCj4gPiBQcmV2ZW50IGEgTlVMTCBwb2ludGVyIGFjY2VzcyBpbiBpbnRlbF9tZW1vcnlfcmVn
aW9uc19od19wcm9iZS4NCj4gPg0KPiA+IEZpeGVzOiAwNWRhN2Q5ZjcxN2IgKCJkcm0vaTkxNS9n
ZW06IERvd25ncmFkZSBzdG9sZW4gbG1lbSBzZXR1cCB3YXJuaW5nIikNCj4gPiBSZXBvcnRlZC1i
eTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvbmF0aGFuIENhdml0dCA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8IDYg
KysrKy0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
Yw0KPiA+IGluZGV4IDE3MmRmYTdjMzU4OGIuLmQ0MGVlMWI0MjExMGEgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jDQo+ID4gQEAgLTM2OCw4
ICszNjgsMTAgQEAgaW50IGludGVsX21lbW9yeV9yZWdpb25zX2h3X3Byb2JlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgCQkJZ290byBvdXRfY2xlYW51cDsNCj4gPiAgIAkJ
fQ0KPiA+ICAgDQo+ID4gLQkJbWVtLT5pZCA9IGk7DQo+ID4gLQkJaTkxNS0+bW0ucmVnaW9uc1tp
XSA9IG1lbTsNCj4gDQo+IFRoZXJlIGlzIGEgY2hlY2sgZm9yIG1lbSBqdXN0IGJlZm9yZSB0aGF0
LiBZb3UgY291bGQgdXNlIA0KPiBJU19FUlJfT1JfTlVMTChtZW0pIGluc3RlYWQgb2YgSVNfRVJS
KCkuDQoNCkkgdGhpbmsgeW91J3JlIHJlZmVycmluZyB0byB0aGUgImdvdG8gb3V0X2NsZWFudXAi
IHBhdGg/DQoNCm1lbSBiZWluZyBOVUxMIGlzIGEgdmFsaWQgdXNlIGNhc2UsIHNvIHdlDQpzaG91
bGRuJ3QgdGFrZSB0aGUgZXJyb3IgcGF0aCB3aGVuIGl0J3Mgb2JzZXJ2ZWQuDQotSm9uYXRoYW4g
Q2F2aXR0DQoNCj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gTmlybW95DQo+IA0KPiA+ICsJCWlm
IChtZW0pIHsgLyogU2tpcCBvbiBub24tZmF0YWwgZXJyb3JzICovDQo+ID4gKwkJCW1lbS0+aWQg
PSBpOw0KPiA+ICsJCQlpOTE1LT5tbS5yZWdpb25zW2ldID0gbWVtOw0KPiA+ICsJCX0NCj4gPiAg
IAl9DQo+ID4gICANCj4gPiAgIAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShpOTE1LT5tbS5y
ZWdpb25zKTsgaSsrKSB7DQo+IA0K
