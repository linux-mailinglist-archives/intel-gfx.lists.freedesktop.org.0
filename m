Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D24D9D107D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 13:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C221910E446;
	Mon, 18 Nov 2024 12:19:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4AyT5Mr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A3F10E446
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 12:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731932375; x=1763468375;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=cRRFbn6l4zkJdCXXG/o3CAM1rbnXNXV0ouCktMoHJJE=;
 b=F4AyT5MrIUIKW7gX0dZtkFksIli4A/+FOZVNyB2XaM/Xq9TWLUNIjxW5
 S7IMVLFfWtglqXMF30SDp9Vrbjlsne75+sGAFj0UyfQHAMz9/S/NPNVLJ
 XTn++7fPlkNzUlvmhQwOkk/sdhUiOGbgaJJgJXiiLzn1YQZ/j+tkxWY6f
 i7rLwX4u86ryNiOcHooL66wTOK0veCYF1C8nF3ITjHjmnVXs1++108kiZ
 0spClnk+VzCj02Y/gAAZaS+0W10lUsiTWUxUOFdpAgO0f5cK3ugtlcxAm
 M/124ZK6rUKPMCZy1bmT3yFKMWfnMpIoi2/0slhzm+6XReGxHin88L5xM Q==;
X-CSE-ConnectionGUID: 8jxDBqJJSG6qfE57uNnR2g==
X-CSE-MsgGUID: kMC/h27pTIK/sAh9272Xlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="32024356"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="32024356"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 04:19:35 -0800
X-CSE-ConnectionGUID: M0HsB6CiRrqzfODjw9owSQ==
X-CSE-MsgGUID: 5aqte5NyTCaQFmKR3YxxFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="90003688"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 04:19:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 04:19:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 04:19:35 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 04:19:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oON5MOeiSeKcXD5kVX8PwwE+T/tXOLVYt8RYTpE+bVyX37BCh+MRvcQcd0za/qOCPGxpK5mTZ17QiqBfQO0ySTfeDXYqbUiYx45nx//4xYrzPSCBLN9H2S6hy/s7M7kiHj0SKDTPEhN1Iq5fonFhTVByR2IYjRsDo7hicM4DABJSP7WQPRtk8qX7HAv8zYoB3dmb0AQWdN+4kGK+dhnEgalUZszra1bolGG4nQLw2cTkzvpy18oM5GVK277/rsxJ/fPtk2vVI2H6zquYWVMATmCzwX3RcI7xAEhzGu6ho+WyzUnkxS0MVyUl3TgRGEFgvcBuR8uMsko0IgayLGpSdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J8PRco1lK9kj70xrA1lvWL+9OLd4xBP5kjYUAwxMsjk=;
 b=KejteCdc0IUdBQ/8HhZNVCXkF5cR5hu5paLBDtQoCTj69Ro7vr+oF5tJXolNsMh3r9jyac0nT9XTjiRJs6o7A9itztJQD3FO3uuoNJ00PxXrOE/W7d7t43moZOkoI7kZIrg5JUJhE9hfeiT7kDVz4b+ugo02sVvM7NQkD/FhJDieL+jYx+sCC5ldt05OcsFgi/B1oPav/d1iCE8sHPM5VgkCFf8DjJTcgGxdnDXofG9tAVikHdWYORVFuSKw4db6qZOno2DVdkHP2cLf03oRa3j5eYb5kKAc5nH3aaL7VXZ/8EKR32y5ln1RjQkGcSsb5YgdqxM3qL7oG8XadUlKRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB6682.namprd11.prod.outlook.com (2603:10b6:510:1c5::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Mon, 18 Nov
 2024 12:19:31 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 12:19:31 +0000
Date: Mon, 18 Nov 2024 12:19:22 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>
Subject: [PATCH v5] drm/i915: ensure segment offset never exceeds allowed max
Message-ID: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: MI1P293CA0001.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:2::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB6682:EE_
X-MS-Office365-Filtering-Correlation-Id: dcdef329-7c10-4c17-eb49-08dd07cb4191
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFRyeWxYMEtHem9HTThpQ0xuTjVzSXBtdXpKdlNWUm9IK1RTSE4rT3NMNDVW?=
 =?utf-8?B?bkI0Z1hVOGkxbDU3alJtWkpTWVZ5RlFWWTFIUUQ3czJjaWViWlFXR2dZN1Y1?=
 =?utf-8?B?N1VrOTNra2NXdmF4Vnp6K3NJYlVvRWZBRmhxdFU2cHYxZ1N5d3c3dFd2NHYx?=
 =?utf-8?B?WlNJZHgxVXByYVVibCs5TFY3aXpGejZxZzlJNTNtMGgxNGxrWTFkbVl4WGlX?=
 =?utf-8?B?WDVkaENtY2RyL09mRVBrdHYyMVRUOGJsV1pIeVl4OThTQmY1Y01HYWRlYmRt?=
 =?utf-8?B?REtGMW5oVkdQOTlPQXZ0OWpXelJZWnF5c09VRDFyZDRjWVNrNElZWXpGb0dN?=
 =?utf-8?B?ZDFaa2E2QXMyWXZXMGYzSHdWNmxQaXhWUUhXam1YMW1VMm42cFFPb2xnbnZD?=
 =?utf-8?B?YWpwbmVoS1I4NUVWWWhQcTdCVWhhb2pIcE1HR0dDUXIzK01Ba0w3SFl1WVRx?=
 =?utf-8?B?aGk4Ynd3M3hlVVZFUHNsdzlCOGZUR29hY0UxRkNHc1BoZXEyMW84OTJ0MUg3?=
 =?utf-8?B?UGxUTUVjMjg1QlJnUnFHS213SGUxMHBJT2JkdXBBVU5hYW02NU9za0xGbVBn?=
 =?utf-8?B?dmxOWFMxMjRtUmd6M0xBUG9TM2JxL2J2K3RtQU5GSlc5STdLRkZtakQyRzlu?=
 =?utf-8?B?WVBPeUhvZTkxVldvdlVXV0Z5ODBZWWFVVGZpRGRHd0E2UndDdjJWU1M2WC9u?=
 =?utf-8?B?Y2c5b2FJb3dnbHFwWk1DejVJRmxrY1laTXVMblIxZWtBOWNnd2RpZHJ4REZq?=
 =?utf-8?B?NHkrR0gvSGtCODRsclVJWkllK1llOG9jWXhmKzR5M25qbFM2QzlabU83Uy9K?=
 =?utf-8?B?TW1nbUFRSkpOdkFVRDM4T3p3ZS9MbVRqOHlWWlY4NjJCZWRHcTNDZnZLYXZv?=
 =?utf-8?B?ZHY5bXFqVzIxRk5qTXRvMlNiOE94MHh5NWM1SlYxeThvdThuUjk3RkpQdW1X?=
 =?utf-8?B?b0F2emFVUmFpYS85SVRHdFJNNEtIbGhyU0FqZ1I0ZWhwWmZvRStEcy9DcXVJ?=
 =?utf-8?B?MmxaSXNnVWRidjNadjZVRUlCSTArUE5Id01WRStKMDI1RTRmNnFnWmlwNnpL?=
 =?utf-8?B?NStENkVzRUltNVN4bGFZVnduRUJTeStKeW1ha3J0Z09tT2JJVjRoRVdWVy8x?=
 =?utf-8?B?NFJwcU41dGhuSCt6UXNNdXEyYlByZWNSRFYveWI1SUVvbDRmWWljejh4WTFX?=
 =?utf-8?B?VTRhZlNEb1dLY0RFWCtjVWRONkNGV3Y0UUhvN0ZXd2FIM0xHTldYMWVTNGx2?=
 =?utf-8?B?cGlTTERQdTlQK1NHRFU0L3VYdkdEQm4vYnE5UGpqcWJYRGMwWUpzQkNsL052?=
 =?utf-8?B?MVVlZ040M3BRU0YrN3ZqMFVJMWQ0Q2RWUWRiQW5TMUJxK1d2enorU0VFb2t2?=
 =?utf-8?B?ZzZqU3FDeWc2ekQ4Z0lTTVpYakVoUDBLRjBBdk9LeXoyZ2RvNG5NeUh2Z2Rj?=
 =?utf-8?B?Nmc1MjQzV3NoS04vdnJSNjd0REN1bGgxanFSeEJKaDB3RkphaGphVm9WQmxO?=
 =?utf-8?B?OXVXRFE1T3dhMlp0bjVYQW8wa3lnNkJwVXdNZVlSY3RnRkl6VG8vT0s2anlH?=
 =?utf-8?B?ZlhrcmhBZ2I5QzhhMmF2YUF3Uk9SNmdXOG9nVDA3bXY1V3crM00rR1VrMitm?=
 =?utf-8?B?M296N2l0amdIM2xUTTFZSUxIN291aUhURTRoMVJ0TXd6RlV0SGZqODVWSzdB?=
 =?utf-8?B?OVRsU2dvU0ZzY1ArZml2ZDNtTnlKR08xNkkwSWdIc2hGclFjbmRIUGcremtD?=
 =?utf-8?Q?uthtyYqgOv4MVpPlb4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWZlNTRWdUZvemNOM2ZvMTBTcFR5YmNqVDd5eEJuOXlZYWIvK1pmdXdWb3dW?=
 =?utf-8?B?dFJ5bHV4RTdHaG5hVTZQbW9haml5eXZ6N3U2UjhvVUsxd254bHFnN2lGU0xk?=
 =?utf-8?B?WWxucXZvRVhuVmxuMkJtNENKTFVXZVJZK01qT3ExQlJGZ3NaOVp0ZUZ2VVBB?=
 =?utf-8?B?eU4yUTFKUVJmOHV2bytUT3lEOGRIbVk0KzdFZlV3ems5NHAwSmE3UU9Cam1M?=
 =?utf-8?B?Ni9xVDdaMlQ0b3lQcEpEd2gwZU44bjZhc3dtbUpWYnhPajVmSnpTeFc2N3k1?=
 =?utf-8?B?N3dTSFlERlB6WHJRQ2hRRDJ0NFRjTE5YeWtZd1NSdnBVMVRTeXRjSGhEcVFZ?=
 =?utf-8?B?aTR2UjVYOUdHNVRidHNEdkhTaVRtOHdxYzZ3bytzUVM2NzBrTE1SZm0xbmhD?=
 =?utf-8?B?Uk5UdEd5azhMeWpiQWk0ZU5TM2ZFSWZRUG1FL0kzUEFFZllIb2hYTEpCb3px?=
 =?utf-8?B?K0VvWm1LQStCY0FFZkxONnplUW1FVjdETEw4V2FpdWZkT2ROR3BmM3pWbFk2?=
 =?utf-8?B?UEVGQ0xQVU91aFpNb0dmYUlHSnBmSXdVd2c1ZHhoMWJhNXZJMkw3eUxrekJn?=
 =?utf-8?B?Y1A2cUFLRWsvSlJMNmN2dlVIVHVjajhidGYwcGViUHdrNTl0dFNqT3hwTDR6?=
 =?utf-8?B?UDNBaHlQUWFadCtzTis1MXkrRTB1T2dJaFI4RG53SmZ2TStxWmxtQWVZbzg4?=
 =?utf-8?B?RzFxWlo5VWUwYUJUbjVEMDZUSFJ5NjVaaVl3UGFRQXRBZE5aMmdNUG4raW15?=
 =?utf-8?B?aE1iTHE1elZoVGswamxWenI2UlE1NlVJYzJEUDF5UDJBTU9udnZZYUYvdi9I?=
 =?utf-8?B?UmcyeENuS0pxeU4zMVZ6MDNJZ0tYblpXNUxqelhuQURYTnpuUWdjdEt0WWhE?=
 =?utf-8?B?dXBDOTIvamRnbVVpc1hKOFRBYlNkQnJLZWk2UFF3S0RScmRBbGM0WWEzUjV4?=
 =?utf-8?B?cXFpZEU3NERJNG1NRDl3RTEyZ2NvbFFuaFhmWHVIaWU2QVBsRll1NXprM2p1?=
 =?utf-8?B?bW5zM0p5VFl4dTB0VTlKOTI2Y0htSGxKN1lYSCtDdlBhTkora3k2QlZzY2VC?=
 =?utf-8?B?NVFobVdaTWtlcThDQXpaSnhKelhPRmVmbDlJdmNhdDE2OVFrcGg5enRXOW9v?=
 =?utf-8?B?eVphN2YxZS92UTNhdi9NY2tXMDRBdEpNSFhVWStNTks5TDdNWG10Ulo0VlI0?=
 =?utf-8?B?N1Jsb1dIMjdLamRBa2xld0V2V2pCNzJRbDZRaW4yVVgwZ2plUTNHUng4dkdK?=
 =?utf-8?B?OG9jdDNYRG5GNVVPeWVvNitOTVlEaWJBREluRTVhdnBHZkFDVGRyMDUvZzdQ?=
 =?utf-8?B?L2NueWVGSXZ4aG9wQ2hNU1VGS1kyK1ZydzRpVHplMnpScGFldmhJTUY1OXFx?=
 =?utf-8?B?ZGVXQzhXZ1dXSURaZGgyWmpicE95NTJDL252czdveDZ6a3E5ZTFJVjQzd3lj?=
 =?utf-8?B?MENXWnh5T3lGK21vNUJ1amRqYXk3YlVwOFBuOVBXWWlmd0hkdXluaGM5NkNj?=
 =?utf-8?B?RGFFQ2hCU3o5T0RuWU01eXlSZEdUd2pSdzl6alFUOE84STJ0YkJVVXRXS1Vl?=
 =?utf-8?B?QVdSSHJwMVR5ZXpzQ1RITENZUkRLMWFiN1N5UnJ5eUlrYzY2enM1T1RwREZt?=
 =?utf-8?B?Rlpmd3ZMWkFHczduZ0NLUkNaL0dsVFlrUDBaV3dBUVRhUTZaK2Y1MUZkbTVW?=
 =?utf-8?B?QXhpV0toN1RqOWhnYk9DSVZOemlEbzg3S0JLVVF5NEpqN3l1d1FWbnF0RGhX?=
 =?utf-8?B?SGllSTgyakVIbFo2NE92emw4N3E5RGU5RDN6OStYSDA3b0lqNGlCb2Fjb2tq?=
 =?utf-8?B?TXZaSWhKS1lZU2FzeTRDaDVzUW9IVXk0SExxcGUxZTZSVVFuaEVKTU40ODc5?=
 =?utf-8?B?VEJxa285MnVBVDYzQWp3ZlZYTWc4aVBnZ2lFd0JTZjI0ejFDYk1ac1RETGxk?=
 =?utf-8?B?M01VKzdhM1FTTFZIUTgyU0xoZUJ2MDZwdTB3SzlaaHdzSzUzY0dxdWljZHJS?=
 =?utf-8?B?cjlaVzhaSERtK1lVd2MrbXdHVEhrNzF2c0J5OWhJbVRHb0l0Ukl5c01ZVU9J?=
 =?utf-8?B?aGttd2F6WitXam0vMGFQZi9UYkdDMm9qZ1NnaTNkNlphVEx1Z3FFK0Y5Snkx?=
 =?utf-8?B?Wjd1QUNNRjdZMDN4SG0yVkZOTTdHR1FwSzREcm9UdVUvbVJCQU43bFQ2dWIv?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcdef329-7c10-4c17-eb49-08dd07cb4191
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 12:19:31.7147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pBN72OgEDwjlCkIFtnZNb42th79ummUN3zqnkdOWKXDMkDTawq4rA/jD76kvS5eoAamDTPsuqEgkMaNVYlA9DGHTBPRLLrXAO/t9Xaz3lXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6682
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

Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
partial memory mapping") introduced a new offset, which accounts for
userspace mapping not starting from the beginning of object's scatterlist.

This works fine for cases where first object pte is larger than the new
offset - "r->sgt.curr" counter is set to the offset to match the difference
in the number of total pages. However, if object's first pte's size is
equal to or smaller than the offset, then information about the offset
in userspace is covered up by moving "r->sgt" pointer in remap_sg():

	r->sgt.curr += PAGE_SIZE;
	if (r->sgt.curr >= r->sgt.max)
		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));

This means that two or more pages from virtual memory are counted for
only one page in object's memory, because after moving "r->sgt" pointer
"r->sgt.curr" will be 0.

We should account for this mismatch by moving "r->sgt" pointer to the
next pte. For that we may use "r.sgt.max", which already holds the max
allowed size. This change also eliminates possible confusion, when
looking at i915_scatterlist.h and remap_io_sg() code: former has
scatterlist pointer definition, which differentiates "s.max" value
based on "dma" flag (sg_dma_len() is used only when the flag is
enabled), while latter uses sg_dma_len() indiscriminately.

This patch aims to resolve issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031


v3:
 - instead of checking if r.sgt.curr would exceed allowed max, changed
the value in the while loop to be aligned with `dma` value

v4:
 - remove unnecessary parent relation

v5:
 - update commit message with explanation about page counting mismatch
 and link to the issue

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..76e2801619f0 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -143,8 +143,8 @@ int remap_io_sg(struct vm_area_struct *vma,
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
-		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
+	while (offset >= r.sgt.max >> PAGE_SHIFT) {
+		offset -= r.sgt.max >> PAGE_SHIFT;
 		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
 		if (!r.sgt.sgp)
 			return -EINVAL;
-- 
2.43.0

