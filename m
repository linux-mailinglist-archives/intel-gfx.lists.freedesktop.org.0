Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2562FAD38CF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 15:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2904C10E55B;
	Tue, 10 Jun 2025 13:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RYNFCHGv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5F510E558;
 Tue, 10 Jun 2025 13:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749561627; x=1781097627;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/7RQRnkh+pZRKSAZyFOrnecDUTUE6JfaHSw5UeE2Wik=;
 b=RYNFCHGvCqbXSJ2kcZpJ/lGHZS5TxNUnHi68EdMqkgY2ctivPXneaNiR
 L5svm8CZsjtmQfyscZQ005UezFt4hwYJfSpb8hQaEpgCyF3vKP5jMa5Em
 4nVml8keSFHczlCdhAGcdEtLQUs6tO7PGkCQxlEuo2mMbTLz8BHYjVdqD
 GBWWIEEBpjnzbv57LK+B5EpD03H1WcwtsBA/cwsJJZ9Fq2RfreWn25jAt
 z7nrMQTJ67By1Op7/3FxmL2kzW4XlGsjtwF2sAkWHlnj4tjJyVEjNy8a9
 v6cUo/dXLjOOxJrkPyoVdQrCO47NsdV4k3J13sRf72jWI8fOs65l072aS g==;
X-CSE-ConnectionGUID: U6JZcL3tRm6NYG/eXz9/mQ==
X-CSE-MsgGUID: ChKx8lDRQfSBT/QKwmM7iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="39288292"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="39288292"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 06:20:27 -0700
X-CSE-ConnectionGUID: Q6gjGZf/Q+qfQ7OOI0Yw+g==
X-CSE-MsgGUID: 4DvMkDCjQbSj6RgFDh2Bmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="150674463"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 06:20:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 06:20:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 06:20:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 06:20:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EfydxF9Xs6sHL2aJVcfpMsOKa8N2ieiuZGYOrfZfGWDeIg/z54eeu4GiN7iL9rqhHsLBl1x57Yfew7oDlwHf7bpBmmDj35GYOqI5dv1su3pEAZU4YXjTaAz7AT4RIikoRlb0JF8mIVoBOtpc6FQZl3t5IqIFq9FKYcBjrxCMMnVgj1sHPBJEYRIaoUB0b2ArL4chRJY6pmaUEc8D7i3x5aJQwUPG7vABs11du7cO043S3e+GOwWHfpDNKRIu4i0GU8GrdjQ6dj2x+2H1KSMO8WxXY7eHGkEVzmaSxSNeL5cztd/ijGm1aQjexkeNHkEMc9pOTVuMUxcJGyJw/97bdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyddEqf4SpLL63X2y50OEjbN9jcJ6c3V7/SZcY5KpNw=;
 b=fO3W1goILhv5Dq3fIEcCq+foEU/BG9xShv7ENoMUP/szURo8ir8iTWbWdaqSOn43rOOJSJdRWiJqCMtJuDfiW43Vm7TYgOwxZMBHfgHVg9Fw5oGJTxUEXKxmUYNbdsIfX8jOQqYlKblBk+KY0qZr0NhT3mnG1tSqiNpJpIc13KiC8cBZtIIUQDh/9CHdjR5FADPz1BDMw4dfFzE2UnLzFiOxx990od+HqtHn3gSTEUAavse+T8t2hsepUpCfq8cWTvczoJgXxRHFX2r9VrP91ui1l5/MzgRYFhP0ldz647MsuZxfQQWPTG4D/y2VTMH3muAcxK9Cs0g0N4f5jzHGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 13:19:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8813.021; Tue, 10 Jun 2025
 13:19:39 +0000
Message-ID: <7997df81-b3ee-4aa0-b278-a5b7f9b88023@intel.com>
Date: Tue, 10 Jun 2025 18:49:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Add kernel param to limit eDP rate to
 HBR2"
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250610100449.185927-1-ankit.k.nautiyal@intel.com>
 <20250610100449.185927-3-ankit.k.nautiyal@intel.com>
 <826e4afa3d3827e40628e69ccecfcb21201c2faa@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <826e4afa3d3827e40628e69ccecfcb21201c2faa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fad2e06-22a2-480b-9719-08dda8217430
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RkRrQWs1VUJlRk5Na1U4TWR6VWhmU0NSRms4eVhGUUJ6aHV1OXpudXd0dDFk?=
 =?utf-8?B?bEVGTkRhK1RmcW1HMnZWTFlWZW9ubDVTRzBveUgrcEp5NmFHZ012MlN5QTAz?=
 =?utf-8?B?eUVuVUtoOFpyeGpVcU9qT0wyclN0VVdzVFFZWTY1dzZLSjlXY2UxM0ZVVVVQ?=
 =?utf-8?B?cFcxQlZPOEJxdFA4dUJQY2tkMHkxRElEUExnZk9MVDlvTnZySVRSdTBmVTlw?=
 =?utf-8?B?Zi8wMTJ5dE9odkxhVmljVFNLeTJURThpTXVVdnQ2VTZJekVkUHBzWU9HdW1Y?=
 =?utf-8?B?cHhFYWNtbGJWYzluQlRZbDl4aEZKMkxSdEJKcktMWkJNZTluRHJ1Z2EzWWx1?=
 =?utf-8?B?R0dleGpGK0FlU084eTJ2WkY1KytvOVlFNnhHaW9vZ1NvMnFyM0hYRlhhS1pa?=
 =?utf-8?B?WlpudklzQTJJTC8rVkFGSllNeURFRGNkbS9vdUJ4ZkhqeGpvbUZkYUZ4V0lT?=
 =?utf-8?B?RFVGcDRaNGJ2REVhM0FzUUgrcnNoTGMxUzdUTXF6RWFtSW9UbGJVQzB3ZWVK?=
 =?utf-8?B?eEg4T2NRTkJGcDdkbXlmVlQ0Tm1jdWZ0V1MrTjlsZHY0Tk9qQ1hualV0bkxR?=
 =?utf-8?B?bTB3RVo0NEN0bGhhKzFSSEJVSzRmT2F2aFdQcmoxMHlRRzZVR3NHZVFwd1hK?=
 =?utf-8?B?OWl6SDFkVythUU02U0ttRENUVjQrY3QydmgzRWRRaUhwa3F6WHpBazM0RDNo?=
 =?utf-8?B?VjJFOGhWRWs3TGNFbXIwaWh3MzVCMSswdmpPLzhoclJBbHpORmxKOWxCbU45?=
 =?utf-8?B?dGw1RHNVWitlS1cybFlUdVlkQlJoZk1hQmhlL0VWclBmNE0zWTBHRzlFeTFJ?=
 =?utf-8?B?dkMxZm5QMXd3N1hOdGxYSlBreGp4aVloQ1BudkpBdG5IaDRMR3N5dDVtU2lq?=
 =?utf-8?B?MVYxMmxsRXFDUnRoekYrbU5BRURFVlNaT0V1b3dSQUlieUtJL2NENHhWd3p3?=
 =?utf-8?B?N2Q1N05nRWpTbHlMNHB0S25qMWpLb0NhVnNpYTJrK3ZwcVY1UXBjdTl1YXU4?=
 =?utf-8?B?cHFKelhLcUhDL29sL21BSWlMUDNiak1ERTFwWGtJY0h6dlpDVFBLRmdFM3Fy?=
 =?utf-8?B?SWpOMEE4R1JyN01CWFphL0V1eUhTWVVWZGVxSjEvUjhQTUlxMUxiZk5uenpG?=
 =?utf-8?B?NVYyV1pTcU82Q1NDbk0vcWhieWZNSzJaV1ZVYVAzZ2FKUmtKbGEvcWs1aFc1?=
 =?utf-8?B?czhZVVQ4QlZNb291bkh6K01tVjNrcndFNlZRV1FYemhLUnFRRXpWS1NnK2pS?=
 =?utf-8?B?SlFBV2pqOVMyc05LRHRNbFdtU29ldzUzRUFWbmRjY3hwNGpHbE5mRUkyankw?=
 =?utf-8?B?c0ZESVBzMmVldDRPemdOQTEwNFMvUWx5SDZMMEh1ZDRuQ0Q1blBJREFzT2lE?=
 =?utf-8?B?Q29oK3Q5R09sd0JUOURabXREMThpMkFVZU9nL1QxWE9BT09BRkNFQUREWUxh?=
 =?utf-8?B?WkN1OHcwR003eENCNy9kalZTam4zSUticmlxVkpuR3dSVHVnR1hzZUtCSGto?=
 =?utf-8?B?WjdnN3g4Q242NmswKzdZZVgrL3BkRFhCNkdWdkVtL2MxdzlCQUp1YnJQeUtN?=
 =?utf-8?B?UE5pbitvOWkyRkQrcitmQjhZRFBCeCtYaERRYVAydHlqeHZ3YzZwalZkeUM2?=
 =?utf-8?B?VVZ3aXF1eGl0SWJ3Ky8wbjR5ZGF4S1g5ak0wSWs2N00rdDRTRUlONXppaTJK?=
 =?utf-8?B?N09STlZ1TXVTdzRXejc1aVNjNm9YL2NwUmFKV0tReU8wcEhYcHE2Ynd0MGxE?=
 =?utf-8?B?cVpLYXlwU3pheHJCZTZIQTg0YjVXVFd5OFVOeXlCTG1KamM3cE9tRXNuUlFy?=
 =?utf-8?Q?63DZcSFbdgJ87YGW+Mam2IHGcbktaCn1qxqJ4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEhpVFMrS0VFTHE0UW1HNE93dGxVai9XdmhCb1MzNFlwTjRhcy94enNobkZB?=
 =?utf-8?B?RWp0ZUsyNnBqcjZucGFaU3JCZktLbzczNHhRZThYZ3RhU09aMW1kNVZKVjgv?=
 =?utf-8?B?T3E0MHlGY0ZIRTdpVXJxNTFtenFqZ1ROTC9kK3NoaW4xSkQxVjNzOG13UUpm?=
 =?utf-8?B?dHlCM1c2VG9iNGk3a1p2MXdIa2lWUGsyWURtQ0pTdWZEazExWHZsUjNubEhU?=
 =?utf-8?B?cmt0R0UycGZTM2cvVU9rVW1WY3pMd3E3MDBRaEl4MnloSkUvRE9NTmJGbTA0?=
 =?utf-8?B?cThQRWFEMk4zeG5IY1lJQklMZG4vMVp0cHdaYWlZaEdJZytvV3EzcWRvSDRC?=
 =?utf-8?B?dE9TMVF0eXYraXQ5VnRqYjY4WHFubURpOUJLV2R6SlhqdkE2SzAyZFM1K3h0?=
 =?utf-8?B?Ny9pRUNtRndMM1ZXcndQV05MOTVoSitOMzBjWTFJMm9PUnZLUVA5RVIvTDhS?=
 =?utf-8?B?ZCtHMmZmWjd2WGl4VzZOM1graTUzUXNtOUVYeU0rZk9VN3FnR1pOQ2k2NlVp?=
 =?utf-8?B?T0Z1SXhIaEpRNUlHSXA4cnRHNlg1bW9TQXBBckI2M2E3NThxRkg5SmpzQk14?=
 =?utf-8?B?MG5YWnAzNjFVNFkyS3c0VGZIakVQMzdRVUNYWmhSeXdocHRWVnIxZjVFdXVS?=
 =?utf-8?B?SVVtY0tiRzZlQmw3N3dmQ1pRMUpsL3lBYUFqTDYzY2xVaXhoT1pVeU1wM01O?=
 =?utf-8?B?MzdUYXNVNnp3MWNuaXFuNjBxTTJIMDhoY29mY0txSXYyaGxBSTlYRExCNExU?=
 =?utf-8?B?akNPZHhjQkV3VDlXZVZvcWlKcjZEdjYxVFB2bDB1dlNzT2N0eEFlb2Rwc2RY?=
 =?utf-8?B?MU5USW0yWTlKSHh2Tk0rVDlyUUZidTFGcUZKSVJhQmNzR25mSGd3QlNRbVJP?=
 =?utf-8?B?QkdjMHd3LzhXOEJnV2xPWW9YQUdINlFDQmtwSk95VTkxZlNQM2VnVzAxaEFI?=
 =?utf-8?B?NlpyYUQ0SE55Q1pGemdkNnp4MjhGRFNtTHdEZnNqMGszZzEwNjh2SXZ2MUd0?=
 =?utf-8?B?bGhzSUJRMFVEQkNTR0k5RWJOY2hEUEdFMEp5SzYxaFVMVlFoaitTTWZ1cGNF?=
 =?utf-8?B?K2U4NVN6d3JTU09hMzF1SER6M0lBY0RyWm16NENiOVMxWUIvbGVpZEdQWkts?=
 =?utf-8?B?b3EwaG1GVm1ubW95eE9KN3FOU3psV2ZNMEtRM2JTRUdPQ3FhckdRcWlUeVVj?=
 =?utf-8?B?UWkyakU5emhzR3IwM2dqMk04VDJSMFNEZUVVWGI5cjJkYkFUOUp4TG8xTjFU?=
 =?utf-8?B?SEJnK0YvTkhZbXd2VDFROFcvOWhENHY0cXdMOS8rYUpwbS9tanZ0NkgySXFT?=
 =?utf-8?B?V3Z6NCtZR1VNS0xXbENqUFZCZFhDL3Y5ajBsdEFvMWY4VDI2ZktZM1V4OHFW?=
 =?utf-8?B?M0g5OWU3QWFJNTZRc0lMb3ROVUFORXZleFk3d1gzZldVQVdOd2lCUklSMkwx?=
 =?utf-8?B?WTN4d0VIbDQvQWQxSVk2elBxQncwZXFiNnhONkZGWG5VbkZTNmZJQUpWYzhU?=
 =?utf-8?B?eEFQVGJ3MHUzaVJGV01iS251MGQ1R1JPWlBERkR3b2Z0Zno1TnpPdWdIQWpG?=
 =?utf-8?B?SjJDMHQ4TWJYS1g2enNERjRrc3gveHpVWmJwcG40ZUZZOXZkMmt4OWNmL2Zz?=
 =?utf-8?B?cTZIb2pkUUNkUURCUXg2U2ZHaEhRT1dTZWsvQUw4dlMySFNnQzB1UjJqRDJn?=
 =?utf-8?B?c2JSVWdKRzhBN0NGZmxhRU9OWm0vcFQxc0w4b2dUS2prU212Sk1CWE42SGQ0?=
 =?utf-8?B?UU1uOXpjdTdKWmtBdFF2VGRsMmkzWEVRT2dRaEp3dGJJVjl3RjNWbTUxZUJX?=
 =?utf-8?B?UmFONmJlOGFOZzBsRW1LV2Q5NFZNMDdvblNiNzEvTHlpbFdUWHVsNTZZWG1J?=
 =?utf-8?B?cnhMU09sL3FacGpBSjNZRVZIcm1pa0QrSHFtLzgxNmhUTXE1ejFEeExDVUtl?=
 =?utf-8?B?MktPRHR4VGhXUEZUeXV2TkRYZGRCd3VxaEU4S2JTOUV4MlhiR0pwTFZXYVJH?=
 =?utf-8?B?NnBDNXZyTDZpZU94Ymx4NDFRUG05OCs4ZkpUek5WZHNTUWZPVlNXV0IvaW5T?=
 =?utf-8?B?ZVhlMDBydGptalpwQ3BiS1hzODd3OW9WVVZJQ1REZkxFdC9DdlBOS2RIS2xm?=
 =?utf-8?B?ZWUwbE1pQ0NmSVVPK1NrSEtVYTJ6ZGNYNm93VXRQeVFhVTlDYnRIeU1xRVho?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fad2e06-22a2-480b-9719-08dda8217430
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 13:19:39.6895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +QUvFly6z4u4a2Y9EVI89AHL2+xFyNF3kdgMkaScqFqH9KzZCU3UMxGwMJI3qNv59IgAGKQVvLDdkB6ov5BZ6YwUytVwmtoFSYFGsUf08A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


On 6/10/2025 5:52 PM, Jani Nikula wrote:
> On Tue, 10 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
>> but in practice, signal integrity issues may prevent stable operation.
>> While some systems include a Parade PS8461 mux chip to mitigate jitter and
>> enable HBR3, there is no reliable way to detect its presence.
>> Additionally, many systems have broken or missing VBT entries, making it
>> unsafe to rely on VBT for link rate limits.
>>
>> To address this, introduce a new kernel parameter `limit_edp_hbr2`.
>> When set, this parameter forces the eDP link rate to be capped at
>> HBR2 (540000 kHz), overriding any higher advertised rates from the sink or
>> DPCD. By default, the higher rates will be allowed, i.e. the parameter
>> will be set to false.
>>
>> This provides a manual override for users and OEMs to limit the rate to
>> HBR2, where output with HBR3 is unstable.
> I'm afraid a module parameter is not an acceptable solution.
>
> Have I missed a discussion why a quirk is not possible?

The problem I was facing was that the OUI details are available from the 
logs in gitlab issue 5969 [1], but the DEVICE_ID field was blank so I 
had used DEVICE_ID_ANY.

+	/* Novatek panel */
+	{ OUI(0x38, 0xEC, 0x11), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_HBR3) },

But with this, the HBR3 rate might get removed for many panels with same 
OUI, as I had mentioned in [3].

Also I feel the issue might not be specific to the panel but perhaps to 
few skus with low voltage combo phy ports.

But we cannot rely on the low voltage sku check as OEMs are expected to 
limit the rate via VBTs. It seems VBTs are also sometimes not correct.

You have briefly highlighted the problem in comments in gitlab issue 
5969 [2].

So I was thinking if we can give a knob to limit the rate.

Can we add a quirk for machine/model/vendor to limit the rate for 
specific machines?


[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969

[2] 
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969#note_2309988

[3] https://patchwork.freedesktop.org/patch/654704/?series=149227&rev=1


Regards,

Ankit

>
>
> BR,
> Jani.
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_params.c   |  2 +
>>   .../drm/i915/display/intel_display_params.h   |  1 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 50 ++++++++++++++++---
>>   3 files changed, 46 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
>> index c4f1ab43fc0c..84f36104f5ca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -133,6 +133,8 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>>   	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
>>   	"Default: -1");
>>   
>> +intel_display_param_named(limit_edp_hbr2, bool, 0400, "Limit EDP link rate to HBR2 (default: false)");
>> +
>>   __maybe_unused
>>   static void _param_print_bool(struct drm_printer *p, const char *driver_name,
>>   			      const char *name, bool val)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
>> index 5317138e6044..f7ba9805f97f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>> @@ -48,6 +48,7 @@ struct drm_printer;
>>   	param(bool, psr_safest_params, false, 0400) \
>>   	param(bool, enable_psr2_sel_fetch, true, 0400) \
>>   	param(int, enable_dmc_wl, -1, 0400) \
>> +	param(bool, limit_edp_hbr2, false, 0400) \
>>   
>>   #define MEMBER(T, member, ...) T member;
>>   struct intel_display_params {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2a0b76ae33cd..85022e5e64f4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -174,10 +174,29 @@ int intel_dp_link_symbol_clock(int rate)
>>   
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> +	int max_rate;
>> +
>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +	else
>> +		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>>   
>> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +	/*
>> +	 * Some platforms with combo PHY ports may not reliably support HBR3
>> +	 * due to signal integrity limitations, despite advertising it.
>> +	 * If the kernel parameter `limit_edp_hbr2` is set, cap the link
>> +	 * rate to HBR2 to avoid unstable configurations.
>> +	 */
>> +	if (max_rate >= 810000 && display->params.limit_edp_hbr2) {
>> +		drm_dbg_kms(display->drm,
>> +			    "[ENCODER:%d:%s] Forcing max link rate to HBR2 due to limit_edp_hbr2 set\n",
>> +			    encoder->base.base.id, encoder->base.name);
>> +		max_rate = 540000;
>> +	}
>> +
>> +	return max_rate;
>>   }
>>   
>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>> @@ -4253,6 +4272,9 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>   static void
>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> +
>>   	intel_dp->num_sink_rates = 0;
>>   
>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>> @@ -4263,10 +4285,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   				 sink_rates, sizeof(sink_rates));
>>   
>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>> -			int val = le16_to_cpu(sink_rates[i]);
>> -
>> -			if (val == 0)
>> -				break;
>> +			int rate;
>>   
>>   			/* Value read multiplied by 200kHz gives the per-lane
>>   			 * link rate in kHz. The source rates are, however,
>> @@ -4274,7 +4293,24 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * back to symbols is
>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>   			 */
>> -			intel_dp->sink_rates[i] = (val * 200) / 10;
>> +			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
>> +
>> +			if (rate == 0)
>> +				break;
>> +
>> +			/*
>> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
>> +			 * even if the sink advertises support. If kernel parameter `limit_edp_hbr2`
>> +			 * is set, reject any sink rates above HBR2 to ensure stable operation.
>> +			 */
>> +			if (rate >= 810000 && display->params.limit_edp_hbr2) {
>> +				drm_dbg_kms(display->drm,
>> +					    "[ENCODER:%d:%s] Limit the rate to HBR2 due to limit_edp_hbr2 param\n",
>> +					    encoder->base.base.id, encoder->base.name);
>> +				break;
>> +			}
>> +
>> +			intel_dp->sink_rates[i] = rate;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>>   	}
