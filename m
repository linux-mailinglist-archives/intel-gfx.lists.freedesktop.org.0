Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5D8B24A20
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4439A10E711;
	Wed, 13 Aug 2025 13:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLzhChgM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA9E310E711;
 Wed, 13 Aug 2025 13:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755090399; x=1786626399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=smRN3/A4536QWEm/fekwMoMeXxjJ2r0xcpkizBX+i3s=;
 b=RLzhChgMUNvmgUFCAhxkV/Wrir9eAySSbSfct+Z9aBY2K1Qke7nYlXJy
 BX4nkgu/CIbr4UseFxAMNwKawmkumbV80iBnAYSZpHZ+4WX0wV/RwmoqU
 CUKdJEfyj17Z3CqF3pIlqCqNP/lKPjmWVboN24yu9jTZ7skZu/7WcLOko
 NUJXrZqqpJ9ReYi+P1htYwkJ622e7WW/wTpGgT1EG7SS1351j2Uv66oxB
 P5KQejHI/quENxh6v4yz4HvBEPKjrjWNeAzev66VFw+fkVko+pRfxeYtR
 YZpNZ68SkxIBsH/I9m9qwzHxg6tKWuvq0/du/9QSSgGCg8D78ehtjXr0h Q==;
X-CSE-ConnectionGUID: DWzwyVudRgmrKIv4BIeYTA==
X-CSE-MsgGUID: 5DcBt3qkR4ugv3W3AYX2Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57251650"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57251650"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:06:39 -0700
X-CSE-ConnectionGUID: VWeyfj8XRZKF196Pis8tzw==
X-CSE-MsgGUID: Pgt3AZhGQJS2KoI9CVrIgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165652194"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:06:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 06:06:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 06:06:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 06:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ItURBnTpWZp6+mRDe+n7E8XQixM4i7rfy4PdurIc0JVesaQn0yThvenqZeCBpr31fbwodHpIc10Hb04dRGpdIe46XsSsrLzPY8js6pv92yDJ89AkD81njOJdrTjygfTJHakhcUaqNwRl1RpKOZTU4u+WYuOzmx9Y2+jdRzQCvSiOUyZfM2w4f2FYsY1sitMe24mry61WOT3YvGuWN5jTrxBQZBVAbs5mAWT5coWLDkTWUPMFO+m4c1RX7uG5AsN/qmKeaKH946Vqq9DZ8dHPSw+Ti30TcCDAwvS3j5U5O8WA1f2v7mD2sXqb2SHas5Xz5Mbpp0DVIZDJrLVUR6d+ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=smRN3/A4536QWEm/fekwMoMeXxjJ2r0xcpkizBX+i3s=;
 b=uJrVd/aX887IMTXNWUlZjbHrKTM0JmbnyPvazP6SmVX+sItndj/V5Rh2PKzfE4wRAb4sl9+0e18glV2SeX5DJx3EtZH2599UZGD2wfWVjB15GhYytr6dRDKil0LRPw0TN4cYamlvUYlLlcjAHbg/eag4dCDOj+9oL71XmxH9tBnMQugENIZNadpbuYMIU1L3eH/MimyDAh0knJs/NB0Xt45U0u7YTvhUCxkRWpAGN1y//Qbtap/JrKi9gkmnY3HRnvzJoveReV5teC0u9Skm5ZU4KoNzgqgbNnKz5vuxzg1qiDepHEizicwBa46ZqUyQ/aHDpnXVOJM95FGKdlM9Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB4925.namprd11.prod.outlook.com
 (2603:10b6:a03:2df::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Wed, 13 Aug
 2025 13:06:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Wed, 13 Aug 2025
 13:06:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 01/12] drm/i915: add vlv_clock_get_gpll()
Thread-Topic: [PATCH 01/12] drm/i915: add vlv_clock_get_gpll()
Thread-Index: AQHcBen5Uo7apnwzu06kBQEQeF6NjbRgmkOA
Date: Wed, 13 Aug 2025 13:06:33 +0000
Message-ID: <DS4PPF69154114FB9488FDCDEC242908260EF2AA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
 <becd1b070256c11ca3a12df76fb8fb1ac832d05c.1754385408.git.jani.nikula@intel.com>
In-Reply-To: <becd1b070256c11ca3a12df76fb8fb1ac832d05c.1754385408.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB4925:EE_
x-ms-office365-filtering-correlation-id: a00a78a4-8911-48c3-46db-08ddda6a3a4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZTU1aThYRjFla0l3OGJrSHBDbGdWRWt1eWd0RHozdWVKQTg0enFIa21vVExQ?=
 =?utf-8?B?RzExeXdHL3E5NEhmam9BVVNjdkFGOVJ1UlJoM3dXM2xlVHV6NEI1YVM0aVIz?=
 =?utf-8?B?dXZiNk9LOURmMW9LMzJiYlcyWi9Ua0tVMEZUejRnTE1zV01MbTd3bDZsTzZz?=
 =?utf-8?B?a015Q3RCQit6YmZzU2ZONkMvSTgvWXViT1FTbm5mdlJpdDVPM0dNVDd3MU9u?=
 =?utf-8?B?K3M1OHFSNHR0b2ZuUDFHWUI5K2U5eDUrNWVnNmZJVUt3d0FlM3g0Qy9qMHRO?=
 =?utf-8?B?Z2dud1k5L1J1N2FVbHlNTFFxdXJuU2xodUVkc0dUMFIydHU3bWw4YmIwVDJ6?=
 =?utf-8?B?eU1QUkxqUGNTRlY2emtuNFRPVmluU1Q2VXQxVDQwZmQ2c09nNmtIeWNPWm44?=
 =?utf-8?B?TjhSR2VRRi9Vb0l2cGxYZ2d0dldTZGJzSUw5Zjk1dzZjYXk0OUpKc1hFcllY?=
 =?utf-8?B?alZ5a2NlelhEMTUxcFY4akgvL0FncWJMdmRIWVRIcUN5b1dqYmZQUER2MkNH?=
 =?utf-8?B?VHlqSjU4Zzk1dlE3WFo5UXJPOEp0OFhZREhaVlMwQi9tOVM2WDB3dWV5OVFS?=
 =?utf-8?B?cmxidHVnUVEyUUNZbWR2VE1uckNHWStBYWlsVitEeGJaaWYwRytqengyUmx2?=
 =?utf-8?B?L1pmREJLcmxpMGVRdlFHaTNpeEJyakZSR0c4cURaeDVzVGUxb2lYc2JWVzZi?=
 =?utf-8?B?N09VVEVIVW1Ka2ZaY2VYWWptQmVmWk1vb1l1cFpuMmZvYldUKy8yWW5wOUhM?=
 =?utf-8?B?M0VLTm5DQjNWb3hnOCtCMGN3WWZKb0RWUy9vQllNUFhUOHdxR0tFcVZWSStO?=
 =?utf-8?B?QjRGUjZDbkZ6elFtQUFteUQ2Rm1aUUhyS1Z1OEcwdEFWYWtRZVk3QU9icGVl?=
 =?utf-8?B?NC9rU01tS09QU3RrVVZVWVRaYUhSOWtZQkJ6OHBtZWY5RDJhRlhncEVSNXJu?=
 =?utf-8?B?OVh2bm52S1IyOElyeUh4N3VTNDA4eU42aUZidXhOU1RlUGFKT1o3VmdIZEt0?=
 =?utf-8?B?Yi8vWllZQzM0d1dhcHVhUjRCU0ZzbDlhM0J1em1YQ3FSSHljQVVuZkIrWFhw?=
 =?utf-8?B?MGVPbENoTVNvbElnb1cxQjZjc2FSQjJvbE04enI4WjJSVmF0TGxrUDJKVkhV?=
 =?utf-8?B?L2RaMG9kRnVZUlpodVVtcmdvQi9VWTJpOUt1TUd2dzVZWGNwdmIvVWhFb2dp?=
 =?utf-8?B?MnkzNXZKbGdFSGV3Rzd0SUlwaWZjTVdaakRzSFdPNGtIdUxrd0l4TjhLSjk3?=
 =?utf-8?B?bVQySW1DMzFPYVRlSDY3STdqRVVxNVp1bjFNSlcvcEhncjZtZGFUTXlCTDJy?=
 =?utf-8?B?ZzVobytlOEVlbEZqQ2Z2RENESi9nSWUzT0IrdTlNZnhMTXV4bnlJYkpyeGp0?=
 =?utf-8?B?TVdFcVk3d0R0NUNYeE1pOUZMSlJjaGlkTW5TZFpNVWtKQW9jUjZ5UHRMNjFP?=
 =?utf-8?B?ekQ3ZVdkYUxMcDhwVmtWVlpVNzdleFFtSzVuRTJSWC9ISHU0M0hKeE1pUkV2?=
 =?utf-8?B?Y1BVOXowckJaYVd0Si8rb29OcDNiSFBXT2Joa0hYd1U3OXJxV1BsNU1iZVlF?=
 =?utf-8?B?RTNuUjhWZHNjUldsT2JDMFdhTnV3b01aYklQQjd4UXcwcitPelczS2tYUTlC?=
 =?utf-8?B?UDJmcEZDNmM3Vk12VS9nUGlNUkZCSmdub0s2emR6eVY4U1VSZDZsbHZ6UFlR?=
 =?utf-8?B?SlBNNkxsMFFmaHNhT1RxLytoenphRnY0WGNVUWxFSWxya29Qd0h6elZFUUxn?=
 =?utf-8?B?QS9qZU9odXNoeG4rdktCNEdlRFUxVXFhTHNoc2RDYVUyRWd6aUQ3MklJbXJW?=
 =?utf-8?B?cTh5SE9EVHhmaGhDbUtuQWtwdkZ3T2hycngva1FGMGVPejZDajFaTmViaS9k?=
 =?utf-8?B?dTZCK0NWcURqUEx4d1Nyb2I4aWN0cHhJM210UkM3SHN3bHhhVGFxcEprekww?=
 =?utf-8?B?MktCem0yTXl6L0tXRmFocFBlN2VzNThrblgrRTdTazJxdVBiSXowMDNXWENV?=
 =?utf-8?B?WU42VjU0a1d3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlJKNW5NV0ZYTEJTVHpjZUViK0N3Yi9vSmxiM3crM2crRnY4Mno0ZWpRUldo?=
 =?utf-8?B?REhkWDczS1FPTjVDbVdTUWxRMHVkTlk2cG1ja2RFQ0dBM3pMY1RRck5sbHFH?=
 =?utf-8?B?QWZNRkxnYnlMZnYrZlowc3UvdlFlakZVdEtDcTY2WEtkTEVJa3dnb3NjZWVT?=
 =?utf-8?B?MmJON2ljMGdXdTRXZkxvb0ZlNmtsVmhQaEt2ekxvYnJIZDZ6empsV2ViOU5J?=
 =?utf-8?B?QUZDQnZ5ZW1TVUErdGFLZDF6eVJJV3duM2FibTdpWm5oZzZrNm5MNzNNRzRt?=
 =?utf-8?B?ZUtRQ3N5cEU2MExNNzVGbjBlSGdNTjVtWDlFTDRWV0FFaEF2TWJ2ZTVNTHZX?=
 =?utf-8?B?N2VKeGRaZEU0UzlQSVVlcVBVaU85RmdpQzdTWVBRbDFwMVpCMmRvazFadWlw?=
 =?utf-8?B?c1BsaUduazZsQ052eW5HOTBWc3ZDajB6SnBxK0ZXa2NEdFBFYUFENFZoOE1L?=
 =?utf-8?B?WnRRVGRZZTNPbXpyekYzOXNmcWtCditSL1JDMU5vMkNpY0R1OE56aTZLT0VM?=
 =?utf-8?B?UjlBVHBUa1Q3Z2ozcldFNHFiMXRpU3FhYlF2SHlPSlgxOS9KNml6NXBVdWxx?=
 =?utf-8?B?ZTJna0I1WStnUUpTWWNBRHhjTGZvbllLVHBVTWI4R3hnS2Q5dFkvdTlqVERQ?=
 =?utf-8?B?b0p2bnRkcVZhS1pWRFZxNE9RMVM3dHR4NFp1RXJCWGtFQTBtZ29LUkFLdVdy?=
 =?utf-8?B?aVh6TzRqaUxHY09TOWdnS3lDTFh2WEtPNW5vd096ZmFlQWEzWkR1UE9UNGdI?=
 =?utf-8?B?OCtITzZWM1ZqWUJvRGJmU0p4amlaVjZTeTJnMkVqK0hyMGZLcmR5NG9pTDhK?=
 =?utf-8?B?TU15VGlLbzZGSFU4bXlNUXR2VHRES1lhNkdnMllXdVR1M25FbitnY0w3TStW?=
 =?utf-8?B?d24yMFZwWUNDZjlrSC9QcDRaS05YejQvWHd3S2ZKQTJVMXBMeWYvdklJVk1Z?=
 =?utf-8?B?ZGYzTjNVWjdaaHlxcjJ1d0dyK1JBUWhRRUxkZDgwNDMrRktpU2J2YzFTOEho?=
 =?utf-8?B?TzRoNGIzcWd1ZHN1WWp3ZmpOOGVTMDBSUHlwWDBzREU4QmFiVERvK3RwSnQ0?=
 =?utf-8?B?K3I2RHhQTWxiZFBnanZxL20yeTVmTldoVkNMakpqQ1pTWmdlV0NHcG1xNXNW?=
 =?utf-8?B?TVV3QTZid1FQMnZ4U2tUSmd5VWExUmZ6OEtkN0pMem5yYmFubHZNcSsrcmhw?=
 =?utf-8?B?STJXT2s0aGRkS2VDSVMvandRY1VFMlNoVzI0VTJvMXFldFFPRWhOeGR4SUtT?=
 =?utf-8?B?akNkdWIyWnVjNnpLUDNGVE5tY1pNdXhhelRhSG53bXNOeWhlQ09xTWtRQUU2?=
 =?utf-8?B?YWVadGdVdTBhL2pldzZGdm1KMFg5OTlSelJHNmhybzA2NEU1UWxzYlY2bk9N?=
 =?utf-8?B?eVRPcnYyTVRUcm45YUQvdTU0SXludWRHMm1uUlpHQ20zVG9UYnFBVGNmTWVD?=
 =?utf-8?B?RlMrT3NYVlp6bFpNZ0VxaXhoNkJDbGNZaWdwdTZGc3NSa2NpcjRiT3dQd2tO?=
 =?utf-8?B?OFNtMWxTQ0orUVJyVi9lRHBZSE9tWGpQdGFUQkZveGRURlRPcDdWYVFFRWxF?=
 =?utf-8?B?NTRVZm9saWhHdytqM1VwN3QwaWZLZlpDQWhYYjV4bktYQnpyNWFhRUNCejE2?=
 =?utf-8?B?YlpZeVJzYVpremRobXZxbVNHZEF3bTg2VldIaHZlaXltbnM5L3ZBMENlUWxo?=
 =?utf-8?B?eW85R1dHZEdKc25SQ0MzY1ZsT0tkQzZNeXoxZjVUTU1hZ2ppczB2QU8vSnRK?=
 =?utf-8?B?MVZ2cHZKZlNSTWgwTFdZYnNEK3ZwOCs3WEh4LzNNUVRFKzJOc3AzQnNQS2Jw?=
 =?utf-8?B?cWlqU045VG1TTms4bWR4YVlGVXIxeDNwRHE3SElmU0V0MUw0ZktMTGhleCs1?=
 =?utf-8?B?RkpHc0lnanBMQi9Xc1ZOWmRVT1pBbE5IaEJsc0ZXZEpzZ2J3K01GZm5CK05q?=
 =?utf-8?B?NzlwSC9FVVlzNVFFZUtjajJIYllpWjdRQ2dZQjlrWEVQT0tPaFQwdjNpWU0z?=
 =?utf-8?B?aHNCSW1UZ1QybS9XeTFSdG9PVUlwLy9QeU5QTWdSYzZERTBQQ2hZbW9NU0Vs?=
 =?utf-8?B?SC90RTBRMjBRN0dtdlN2dTJkVWdOampCaUw0TkpldGhKVEZWclc4aHlscmFG?=
 =?utf-8?Q?VVwTDOU0yIROAo569SyIKr2zE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00a78a4-8911-48c3-46db-08ddda6a3a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 13:06:33.5507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: miRSeiYX/vAHx4FqAaBNbMO8zX0nqoqy0u54G9o4cFkDeIr0XgChrd5D8HIwD1QLfoKp7kPV1IT7ZUV5YUaKEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxh
DQo+IFNlbnQ6IFR1ZXNkYXksIDUgQXVndXN0IDIwMjUgMTIuMTgNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRD
SCAwMS8xMl0gZHJtL2k5MTU6IGFkZCB2bHZfY2xvY2tfZ2V0X2dwbGwoKQ0KPiANCj4gQWRkIGEg
dmx2X2Nsb2NrX2dldF9ncGxsKCkgaGVscGVyIHRvIGhpZGUgdGhlIGRldGFpbHMgZnJvbSB0aGUg
Y2FsbGVycy4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCA4ICsrKysrKysrICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaCB8IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgICAg
ICAgICAgfCA1ICstLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiBpbmRleCA3MDM1YzFmYzkwMzMuLmZkZDI5ZDkyNTZlZCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTE4
Niw2ICsxODYsMTQgQEAgaW50IHZsdl9nZXRfY2NrX2Nsb2NrX2hwbGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRybSwNCj4gIAlyZXR1cm4gaHBsbDsNCj4gIH0NCj4gDQo+ICtpbnQgdmx2X2Nsb2NrX2dl
dF9ncGxsKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHRvX2k5MTUoZHJtKTsNCj4gKw0KPiArCXJldHVybiB2bHZfZ2V0X2Nja19j
bG9jayhkcm0sICJHUExMIHJlZiIsIENDS19HUExMX0NMT0NLX0NPTlRST0wsDQo+ICsJCQkJIGk5
MTUtPmN6Y2xrX2ZyZXEpOw0KPiArfQ0KPiArDQo+ICB2b2lkIGludGVsX3VwZGF0ZV9jemNsayhz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+IGluZGV4IDM3ZTJhYjMwMWE4MC4u
N2FlODk5Yjg3ODdhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaA0KPiBAQCAtNDQwLDYgKzQ0MCw3IEBAIGludCB2bHZfZ2V0X2Nja19jbG9j
ayhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KPiAgCQkgICAgICBjb25zdCBjaGFyICpuYW1lLCB1
MzIgcmVnLCBpbnQgcmVmX2ZyZXEpOyAgaW50IHZsdl9nZXRfY2NrX2Nsb2NrX2hwbGwoc3RydWN0
IGRybV9kZXZpY2UgKmRybSwNCj4gIAkJCSAgIGNvbnN0IGNoYXIgKm5hbWUsIHUzMiByZWcpOw0K
PiAraW50IHZsdl9jbG9ja19nZXRfZ3BsbChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKTsNCj4gIGJv
b2wgaW50ZWxfaGFzX3BlbmRpbmdfZmJfdW5waW4oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpOyAgdm9pZCBpbnRlbF9lbmNvZGVyX2Rlc3Ryb3koc3RydWN0IGRybV9lbmNvZGVyICplbmNv
ZGVyKTsNCj4gc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ycHMuYw0KPiBpbmRleCAwYjM1ZmRkNDYxZDQuLmUyYjVjZGY2YjdjYiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMNCj4gQEAgLTE2ODMsMTAgKzE2ODMsNyBAQCBzdGF0
aWMgdm9pZCB2bHZfaW5pdF9ncGxsX3JlZl9mcmVxKHN0cnVjdCBpbnRlbF9ycHMgKnJwcykgIHsN
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHJwc190b19pOTE1KHJwcyk7DQo+
IA0KPiAtCXJwcy0+Z3BsbF9yZWZfZnJlcSA9DQo+IC0JCXZsdl9nZXRfY2NrX2Nsb2NrKCZpOTE1
LT5kcm0sICJHUExMIHJlZiIsDQo+IC0JCQkJICBDQ0tfR1BMTF9DTE9DS19DT05UUk9MLA0KPiAt
CQkJCSAgaTkxNS0+Y3pjbGtfZnJlcSk7DQo+ICsJcnBzLT5ncGxsX3JlZl9mcmVxID0gdmx2X2Ns
b2NrX2dldF9ncGxsKCZpOTE1LT5kcm0pOw0KPiANCj4gIAlkcm1fZGJnKCZpOTE1LT5kcm0sICJH
UExMIHJlZmVyZW5jZSBmcmVxOiAlZCBrSHpcbiIsDQo+ICAJCXJwcy0+Z3BsbF9yZWZfZnJlcSk7
DQo+IC0tDQo+IDIuMzkuNQ0KDQo=
