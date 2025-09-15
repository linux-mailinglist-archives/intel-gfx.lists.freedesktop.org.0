Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0FBB57CAD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9902210E131;
	Mon, 15 Sep 2025 13:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ts3Rsu4g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E978910E131
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757942448; x=1789478448;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CnNjZByzcs5E5ZI2RahJOxfX984izx6TNCcILRkWCic=;
 b=Ts3Rsu4ghzX05kAIRavlZLc4NCbYrklUMFboBk5olKyCjR7/Kxt5AWtF
 U0vOKU98Wfnznjk2d111lTO4830Tl7l0H09LybckQh0qkICG8rP3cORJh
 tnj3JDCqn2DxfozT6QkH9CLknbf66eVVYKifLOY8VGXpsqwjAVxHT06h0
 yrrDVGwCz1wQrwX2NAh4tmbmtMA8nK7btuOoyMQ7EVrmSy+DShuGQr5TQ
 BAAxVPPamhZYz/d5qaUXOfzgx+bfOQXOX7CuWD+K7nIWN6uyNc4GlYV6P
 JRNBCGroczRRiNLNgBeOVp9nie6XA0tv8dshAo3lQy6LR5QBx8ywU2QUO w==;
X-CSE-ConnectionGUID: 2t+m32zvQ6y/emWwk+xr3Q==
X-CSE-MsgGUID: QArObQ/YT1CwnfG26nxd4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="82783125"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="82783125"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:20:47 -0700
X-CSE-ConnectionGUID: /fUk15GqTsKXKLmSR/vSLA==
X-CSE-MsgGUID: QTRONgVdTUGGehYIfy+RBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="205596186"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:20:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:20:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 06:20:46 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Od8bT3bcmP29/9HO94Po/BpuvP9HoXuXgkEojQ6US0ccTxxuk8OfBzrKVo8CP/TI0CNDhvXQWRJ4Gd3pBRDQtesrAVrZOadJ71BO6fhLCVTzBl6rZ0ORWosi/7H87tKNgoWJMOmP0rkgHfaHIj/riwgjlURNgEHDko+oL1O94FoFAbOz6hbuhK7ST8vAwUeAfz+T5VQICzx6dwne8e56BRqeN8jJYgrxl4ER9ZOkDotqJ0SMIcdiB1mSNAwGSVCVC4FwMM4Ax8Tj4jPZUdg86ds0zW4iqqNUd94AHbhE09K8FkgifsFy7ZLnte/WBsdl8Ox0vc2Iw8o09LnrzRoMHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9EQltsrol5pNIsf8LNkGd1A0dLaMwvcykJt9iIQGwt4=;
 b=FSiZi4GRrDIBzKYzcssOpSk+xSpcSgOij6r063xj5VgWe8PUyO/Q9thBjQwSnac8fj9JZTiYWg1m7LG2DV0pjG6oeVGiddLUI6E5k8qGrJfVT2wDcgLXHMfqZOEwB9MEo9YCz+dWquL3JtPCHvIV8tmt5CoGEeaBmeBKHdx+v97JBBbBrRVmMTgn0gMPtKNOcpWfJNTFMTYSa7pfo5wRik50BlCICMFO3S3IWrFQIRPDPWgw+wvdnD+xpDQLjCo8BRS+rxPwTFXw5Rb7/BAWb6228VnZkZNZ151ChbkTKtlB9GWcchbt0QXB4tuMFlkvD/eaFGFGwmohor89ERqv1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5127.namprd11.prod.outlook.com (2603:10b6:510:3c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 13:20:42 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 13:20:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250911205543.388402-4-dnyaneshwar.bhadane@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <20250911205543.388402-4-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy()
 to only PHY A
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <matthew.s.atwood@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 15 Sep 2025 10:20:37 -0300
Message-ID: <175794243794.1613.10845797670247196095@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5127:EE_
X-MS-Office365-Filtering-Correlation-Id: d36d0ca3-5fef-46ad-9a5a-08ddf45aabbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVBJQm8zZ3BJb3N4aXJQZWFubFo3NHlmT3RrbTRXQmJsd2c3WEY4NjRQdmdU?=
 =?utf-8?B?NnhwbDY4OVAzcnlsMGNnZjVXc01VRDVTcVlPbHljUkNBZTZaQWZwYUdMSllU?=
 =?utf-8?B?UXAyVFpFZjI4TWgzbVEyNEQ5SE1kQ01DVGpFS1UxVnlkOG9WMzJTQ09YMXJN?=
 =?utf-8?B?blBkdlRLdDVrcUcwd29JbGNwdUlQNUFob2FCZmFudEd5akdWZVhSMmcyMmVG?=
 =?utf-8?B?M1RhOTBpN3JRK085ZUxmTFRpRE1xcTVDLytoSXdIM0J2aUQvS3pwb3hBSmlT?=
 =?utf-8?B?cXNnamdrWk43NU1kUWZaOEM5TDZRQ2huRVlZOW9aeFRPdXJpTkNEbEtvN2FG?=
 =?utf-8?B?aDJwSUk1elZXYmhUVzhPQkdFR1V1azEzY25hWXBsSkNZdVViY1JMbTVDQ1dV?=
 =?utf-8?B?c2o1TW5nUHpUaVRSN09uRkpEZEtGWWl3Z3BWM24ybHdMUDdBQ2tldXZTU2Vz?=
 =?utf-8?B?Z1lhZHFEUHhlR0RkT2JLNWFDbThhQVB5MDN4cmROZnMzOVp2NnJXSXRVYVdw?=
 =?utf-8?B?L3JXUHpTRUxZbDdwcTg5NjFtMnE0TzFDUitmSi96c1VFZ1RROUUyRWdac3Ey?=
 =?utf-8?B?OW5wMERtb05aT3NMcVJjZWNSWFpUSWpIQURpaW0xc0tRNGg2UFlvYnFwa0xs?=
 =?utf-8?B?MmdmWGswL2x4Y2ZrcVJGNkRYRjVHbkNDa1BSQWRRRlNWYTFqd2E0bmJUd0k2?=
 =?utf-8?B?NjBMWWhFQnlXcllkN1ErL0NlNDFiYm1QWmJudjdHQTVlSHZuYVJvanRnMWww?=
 =?utf-8?B?WkZJeE41cGVDV1pZQlF4Z2VNV1doYXNza3ZGdXRTcTBOZUlFUjVZUmMvdGdG?=
 =?utf-8?B?bzZVL1BwZHlpdjdiR0lpRWZaMVJ0ZEZnZnFha01HaGI2MmZUY3RoSWxZaWRT?=
 =?utf-8?B?VkxhM2l2QkpJQ3Q1L2VlRXFFMmJVT0NxNzdYdXZ1Mk4rd0I4ZVduNHdUNVcr?=
 =?utf-8?B?N2UzNVVyMUZGUElWSUtPdVRRb2NGZkVQL2FzQ21UK1pqc3lJTlBKQkphQ3lv?=
 =?utf-8?B?ZWZrYWZobS9mMEVidWFEbkorR0w0VGZXVlNVWnhyTnUvUlNxdmFEUE5YZXVx?=
 =?utf-8?B?WVBnRWdOc3U5dzhtSVQ4OGV4OUN4L1RGaHdZQXVzdEdLbmlKaGFYazZsenNL?=
 =?utf-8?B?TzRUUExWL2lSbXJqek56c1h3bzU3OFgvWXc0NXhLT1Zid0IvWk9QeE42b2Yr?=
 =?utf-8?B?eGxCdjM2cEd4OC9iOHNuUXB0U1VueU8vSEVLTGNCWURiRE04ZGpWeVowNDV5?=
 =?utf-8?B?Z2wzRTdCSGZFYXQvVTdDYW5ZNG9YdVZpTzNyRTFFQ3RJNTEvWDZaaUM5UEhS?=
 =?utf-8?B?Wm84UktkMlNWckhmcWRmUENpK2V5TjZoN0JPdHp4S3duTXErTFNYTEdPNWtu?=
 =?utf-8?B?TW9meXcvWWEvRzhLd2N3Q0xsb0xuZTdLaGZkeUVVK1ZGVkJJUEgwdE80S0Rj?=
 =?utf-8?B?OGJvVmpQQ3dPcHB6N0h5SkZKekRUZnd0VG1IRGdiQitZaU8xVVFBdmJ1STk5?=
 =?utf-8?B?OFpvNnhyUHl3bk1wRWYvUmQ4eFA2TmhUVFREVERhcWRxWUZDTkh2NW4xeDJD?=
 =?utf-8?B?eWJCaUpKVlRwSjlkTlpGSlZLSUtZVS9wWVh1VllIdSt6bTZSV1RORlg4RldL?=
 =?utf-8?B?RFF1NkUxeENuUUpremptZ1liaDBsNDZTNUZKbDFVQjRQejR4cklPamdVcmw4?=
 =?utf-8?B?ZjN4bzNYczhxekw5c0daUS9GY2oxWDZBOVRMUG95OWhqS2RIOGJJMFY3NERu?=
 =?utf-8?B?OUF1WmZ6UmlHdlVHOGlQd2kxaG9xYjVXSWUxSFZvZG9kSmx5NEFSaTZpR1BU?=
 =?utf-8?B?WXVtMkE5YzN0MC9kaHZYVHpGT2dLSnJsMFU3cE9Ld3N4dGgrRFNxVm1CYmxO?=
 =?utf-8?B?NWRPVkM5Z2VEeHdCQjgzL3lPL3VuK21lM1c2NGNVdHV4aXN0L3MxVjhTZkp3?=
 =?utf-8?Q?Y3CJIS00pzI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0hkc0pDSFRVeFNyYzVIYncrNGhsdDNCSEtZRHdOZjg0YTU5OEZic0NWM2Er?=
 =?utf-8?B?UmtjQjdMN2RXVWtSVEczVmsyYVM4dDJwZGZTQ0sxd0RDZXVNVUhoQ3RSbUt4?=
 =?utf-8?B?by9WUE9YNk92blZ6WW0zZnFlMVhMb0ljUVdKMFlmVjR4TFdVYjVOWWpsME1U?=
 =?utf-8?B?eU5MS05MaG52ZVdoc1lCb3ErSHcvWkVNelpTMlZMMTVJTkZEUUZDWlZ3RnJC?=
 =?utf-8?B?czhNcDRiWkUxQnVMcW1pVGYzczh3VWNkNUFYUSsvMjlZY2RWa0xteGRlNVI0?=
 =?utf-8?B?bE5VYVUzTHM0TVJGc1lrOVVkR3F0ekI0VTZMcDBxVkIxWFJObkdIYVA4YVBp?=
 =?utf-8?B?V3pMRFQ5TFl4VmxRT2xsTWxrRHhMSDhJSHBMakRtWllTZEdsbTNJTDJWT0V4?=
 =?utf-8?B?eUNCZGFpNit5NEN5aFRMRFpHZ2hXakphUTlDeXJhcG5CMGF4RXQ2U2libGk0?=
 =?utf-8?B?RG84NDlzSkVlcXdkandHZnF6SEhqR0ZkTEdvbXpSQ1p0UUEyRVpjNklUOTUv?=
 =?utf-8?B?NzFWQld5RElFdDhIcThyY2lLdTFLOFFsY1JJT2g3WEhZWUREWStDa1FpUm5Y?=
 =?utf-8?B?cXVuOXQ5RzBFbERLcjdIZGs5MjltQWd3Q1p0QUQ1U0YwZFVpTXFTRTRFN21S?=
 =?utf-8?B?MFBaM2pYNHZmeW5VWDdzOWhYc2k2NllVNWRiZDNpaHEyekNaT0RLR3BKUTdQ?=
 =?utf-8?B?dTdvdkwyZ0hPZHAyVFV3dmZXLzZYdG5aZENHbHE5anJnVzJ4cnhtQUZRMUg1?=
 =?utf-8?B?ZHk5d1BCdGIvc1NvaVJpQTVLczNEclhqaU5FWC9MaGpNd3FQVVJySCtVSjI5?=
 =?utf-8?B?dEJJWThRZXNiMEpmb1M2WmdQUzhyNkM2bzBBM0hFeHBCeXd0V0FlVEt1Ykl4?=
 =?utf-8?B?RlBKSWkxRitxcm5mdVhlNzRqc2FrZzQzL0VWN0lzbFk4QndudmxmL0ZibVZS?=
 =?utf-8?B?b0xxM3c1TGVTcEJXK3J5c1BiTmxrL1FhVXZYSElxTlJuOHVsZG16eWp6OHJi?=
 =?utf-8?B?aytEWVlPRTlUS1dhV3gvVjdWdkt2aWNGZDZKcWtWUW1iSDVrWkFDVzRHSnh6?=
 =?utf-8?B?S3BYMndUTlhoczZkZUNSNWRkaFlGTjUza2FZeHZjc3NjeG51anZ0TE5QK0hM?=
 =?utf-8?B?MHFvaUwwak84UldHMkZSZ2lrZ2w3L2Y1c2xEZzY4eE5LWkxFV242aW81ODlr?=
 =?utf-8?B?djlwai9BUmh2d2FMU2NRQXRVLzU3TEVZd3BkOUVvR05KcUJKMjhTbEovZDVl?=
 =?utf-8?B?bnI5a3p4ODFRU2tXd2Fmb1pINGNHMFhXcGZSakUvano4TW9XeFQwN0FrRHdl?=
 =?utf-8?B?MmVJVnlRYkpicmcrU2xvdmNBbUx2anV1UlJwWElIaCtha1VQZ1RqazR1KzlU?=
 =?utf-8?B?NXpNRU1pS1Fyb09KMDB2d2UrL3ZoRkk0L0dTU0VrMEo5QS9SMVY3S1M2WHNo?=
 =?utf-8?B?SGlRUG5RVUU2NTRnMG92dzY0Z3krWktyTXJqTnJsbmpWQ1Y1QkVaNkNzSkh0?=
 =?utf-8?B?OFNFcUJNRmJCRy95KzVramRHODNvUTM1d0ZuOGlKQ3ZXMDJSTGRWcFJ6ZHhS?=
 =?utf-8?B?SEdZa3ZXS01pVE1lZ3FWYitTZEg3N3d4cmxReXl4bkxCNWV5RjJVeFB6SnN2?=
 =?utf-8?B?UjdBejdrbk9hUWIzWnN5anJ6YS9oeUZValJuRFIzaC90VTNRNW44c3k1eHl4?=
 =?utf-8?B?OTBDZmVFdVZxR00yRVp1cVVNTlZiV1Y5MmJ5NGZRNkU1dzFjTk96N3BNWUFM?=
 =?utf-8?B?T1V5U21OeitIUjFVSGhjSDQ4Vmh2ZkxFQU9oNWl6ZVNYS1RTbllySm4ybjYy?=
 =?utf-8?B?T3psRlBoN0l5Q0E5N29lSllUc3EwSTlSaEx1RmNnMVFzeHUyTW9zcytIOWR5?=
 =?utf-8?B?N0lTYzMrL2hpR05KRHJENzFHTzBvOUNyY0ZLbFNFbkptS1NXcnZJUTE0eCtT?=
 =?utf-8?B?aldKbWhKMG5KOHpwbTB5SExtOGxWT1UzV3JvcENQSllRMWRTbTJHWEpCN3Fs?=
 =?utf-8?B?aGd2MXhnMTJJNHNKc2Z5VWpPNzFOMzhQdHU4bDFJeTFLZlBWOHF1RVlhYTRL?=
 =?utf-8?B?ZnNtQ09ub2Z2MEd2RFhBNEV0ZHY0MGJKdzlrR3hVdUg1SmVpUE04RVN0L2Rp?=
 =?utf-8?B?RXh3bFRmTjdqYkQ2ZTFCN1lVSmJCRFZaeEc2cHZMeU82YThLcU4wRGM4UkJx?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d36d0ca3-5fef-46ad-9a5a-08ddf45aabbe
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 13:20:42.4663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9i1KVKcZE5pAGbu9tlgw0fE3kAS5+8cj2Lzo674isar32oYIqlWGaF7VeW8oMR7oQTzbQTiduwJT3yb5lyTZSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5127
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

Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:42-03:00)
>On PTL, no combo PHY is connected to PORT B. However, PORT B can
>still be used for Type-C and will utilize the C20 PHY for eDP
>over Type-C. In such configurations, VBTs also enumerate PORT B.
>
>This leads to issues where PORT B is incorrectly identified as using the
>C10 PHY, due to the assumption that returning true for PORT B in
>intel_encoder_is_c10phy() would not cause problems.
>
>From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>
>Update the helper intel_encoder_is_c10phy() to return true only for
>PORT A/PHY on PTL.
>
>Bspec: 72571,73944
>Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++-------
> 1 file changed, 4 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 801235a5bc0a..e8b354d1c513 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -39,13 +39,10 @@ bool intel_encoder_is_c10phy(struct intel_encoder *enc=
oder)
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>-        /* PTL doesn't have a PHY connected to PORT B; as such,
>-         * there will never be a case where PTL uses PHY B.
>-         * WCL uses PORT A and B with the C10 PHY.
>-         * Reusing the condition for WCL and extending it for PORT B
>-         * should not cause any issues for PTL.
>-         */
>-        if (display->platform.pantherlake && phy < PHY_C)
>+        if (display->platform.pantherlake && phy =3D=3D PHY_A)
>+                return true;
>+
>+        if (display->platform.pantherlake_wildcatlake && phy =3D=3D PHY_B=
)
>                 return true;

This part should go before we check for display->platform.pantherlake,
because display->platform.pantherlake_wildcatlake is true implies that
display->platform.pantherlake is also true.

--
Gustavo Sousa

>=20
>         if ((display->platform.lunarlake || display->platform.meteorlake)=
 && phy < PHY_C)
>--=20
>2.51.0
>
