Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89CB42987
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 21:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7009210E917;
	Wed,  3 Sep 2025 19:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6htkR7T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3CA10E916
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Sep 2025 19:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756926713; x=1788462713;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=RvHd9Qrdmj2FAYo+391rv+fFkeyjAJV4IMvs7jfPVzI=;
 b=F6htkR7TzufWJxfVv9adSusfxWCRqBzqHsymdFxK47e5/tB1a6uNZ1e+
 TOQtBnLNntTf1SRqkhpFO6mUxliI7InSM2WvcuuPHpoBcj1SBo9ETWapS
 doRWdFonqmZzoFjBrqa4IdlfIdeLNT3w7QXuFHKP2oiNxm2H8Zfg11l4u
 9AZczDRYl4SqduDXf24WtX7Iu6/QvZg/whABwXrOKhzNVw9M4AgKz5RDH
 lWO2SnmhN3VaPy6paRnzU99+MY+T80hYDFbNDnVMS7LTR+vnvFXAQdsTm
 IDgUbPU2e9VjMuqs4FhAbFZm9uwjU7Nug+P6sYL4b0uisEaGWA0tFMT4S g==;
X-CSE-ConnectionGUID: uWOsWhh1SUKTY8qoMh2OPQ==
X-CSE-MsgGUID: 7sTgUqpfQJCR9rPlN3plYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59319518"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59319518"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 12:11:53 -0700
X-CSE-ConnectionGUID: MtQlzNt0SwCGVOa6inMlgw==
X-CSE-MsgGUID: 7A7dkKoITM+AATSaxwi1pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="176027080"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 12:11:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 12:11:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 12:11:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.48)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 12:11:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yEC9dVcqU9h3RW7DBFO2fcyKlhfk+xF9gk+t57ZMunyNJOdwoJ8dmrd7OCMeO/chpH/HXVfJBXsqn1TNzHYkBop7z9BKuAxtyYGIf5AU50MIQBm56PE13i1r5vHISEXvGqznl403m/gieyQNfyb9HAGXQD/z9O0mbeNNvTomHLl/610HfsEcIdbXKHeoxQBlevaVXB2XEsLSjwKuZvUQZVxfRe65qnLJFXPMM871VmjbTliYx3CqxGWlvULlHejI2KyWv8XCjt5IOFOMmk4J6JvwWvTWZ9k1N0wb61L10Phf2RL/iMBL+b9Nlx+/xu2L0DjQBXJFif3xxfzTAQXd0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8oBPjZ4+pdMsPdq9i0G03+dl8mcUZngzsqMExqcaXlM=;
 b=qaH5ZCXM+1CIwGhsDfhywGj32XjR/2bnH85aJVYIB20qQl78Cym9vuRSv1vY+uIQGS+oTshS9yLdn+xKI5wO+r9cd852c2nwZNhDltQEx60frNy02YdWBRpaUsXhDSPqR+0L7uyKQsoE7GXrPXGoN9S15laTCP/2wRGvz8tTjkArVvYqf3nQs7kEzgmy4E5nzhpkpjclSm1YOHe0faIMUUaL3y/MMtJsLe5e3mZhPLtOwiJAF+NDnad783pmjv4RpBtE+g8rGAvxwilZqsD8FUkWv+IgR3fcAS7OEq+nwq0ePvZP1b6qdmdfp/IcYx2VHbRIWckKRXtZfpXVtRURDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by MN2PR11MB4757.namprd11.prod.outlook.com
 (2603:10b6:208:26b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 19:11:47 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9052.027; Wed, 3 Sep 2025
 19:11:47 +0000
Date: Wed, 3 Sep 2025 12:11:44 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
Message-ID: <aLiS8EZH50WdJTag@msatwood-mobl>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175692345046.300424.4285318483529299552@1538d3639d33>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175692345046.300424.4285318483529299552@1538d3639d33>
X-ClientProxiedBy: MW4PR04CA0339.namprd04.prod.outlook.com
 (2603:10b6:303:8a::14) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|MN2PR11MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: 3226f229-6ff3-4fbb-6233-08ddeb1dba48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N29BWkwyNzRrQWgvM09jVHZ5TVVoMW9GRmdVNlhKZ3JqMUpiWDU1ZTF5Qkwy?=
 =?utf-8?B?MnZnTkxNMzhjRVR0eU9OZUhzNkFONDNJelo5cWhNYXJTSFVXZVhQSkltK3px?=
 =?utf-8?B?b1lKQm9HaklnVTA0UG9XWHowMHpoMlhDWmp3T1FPSkdTWmluQ0ZOdmJUdUtM?=
 =?utf-8?B?b0psSjZnL3l6Mi9oRXJWSEpkN3g4Qkl4NkYxMVhYT2wvNUg3VDVxQUk5aFBH?=
 =?utf-8?B?NC9xMTBMOWhibisyMy9FckxRWlgxaytlN05VL002UFlscWhTSTBqK3k4aXdM?=
 =?utf-8?B?Nm0yYytaL21LWnV1ekQ5dCtIRXp0eDJ6a2RmdnRMVXBmSFFnOXloRC9YT1Jn?=
 =?utf-8?B?RnBtVytDY2JMVmlmTFhldGpqbkxtckFiamFnOThIQ2lyekc1V1lWN3NzQ011?=
 =?utf-8?B?Nmdta3g2NWsxOXB6SjIrK0c2Rzc5L0JlY3ZVK2hPUE5US200R0xmSVJ3UWNm?=
 =?utf-8?B?bjV6YVJVbElGTDhjY0FMS242U1h5WDZ3RXdQSTFHQXR0c05ERS9ydUREb1dn?=
 =?utf-8?B?THozeFNCbmZQeFBCUzhuY3JLaWVhNm5EQWFZQWRJRGJBU0QwQ29BVldpNXVw?=
 =?utf-8?B?Y2VwdkRWYzFFS0xMbVdOSkNCV04rQ3QrQUpxdm5DY21iKzhjNkZjOEo4ekFE?=
 =?utf-8?B?d3VOamNoNGJtWGwrWHhnWm9nS0cwaVFYTm92WnJuMlJxTEx1ZDZ2UGR2dVNN?=
 =?utf-8?B?dGw3TkpJV0ZpaW9Dd0ZSZU55a2hnZjJyblNJUWNzVWNTcjk0eTlxVjVBdmxX?=
 =?utf-8?B?Uk5xVkt0NzVoWld1RXF3eUk4T3JHUFQwSXpGZHdJcTF3MGdzNjFDMVk2R2I4?=
 =?utf-8?B?bkNCVnFMc2wzWEZUTW1oK3c5M3FIZFZLUWJPdVd3TDJLZEQ4eXF0TTFNc2Fz?=
 =?utf-8?B?Q0VBQnVaWnUrUmM3ZnFOQk5iYVZSZENwZEwyd09jbTVWZ21nVlhibmxRTEVK?=
 =?utf-8?B?dTVHK0gwaFlSY0VMZEpyYkdSc05iR3pOc2lreU55Q3QxUjhiTFZtakNXc1pC?=
 =?utf-8?B?bnFOOFRMWG8rVTRLSTdaSFEyTXFLOS9GRTc3Q1RNemYxcWU3RU1TQWlZRGx4?=
 =?utf-8?B?d0lYZTB2UVViWFRibkxabFQ2SkVCZFVzbks2UVJLRURrd2kzbTdkQStVWHgr?=
 =?utf-8?B?ZGhqcXcyWVNJNmNXZ0ptTkVTelZXdEEwek45UmV2c1dVeU9zdnBEMFIxbllt?=
 =?utf-8?B?dGgrTERlbENhMlRWQm53Z3BKczl1UWoxd25IVXdyb2RHU2hYZmNjdlZBbGtT?=
 =?utf-8?B?TkFxbm5Qblp2V2d4ZkVpSmJLRXdpbEo0WUo4S3M4ZW5uOWhUQ2U3ME1abjJZ?=
 =?utf-8?B?Wml3UjRKb3pOby8reTVPcjBwY1MyMlozMUsyL1U3KzUyZ2RzMzRyVFljNitW?=
 =?utf-8?B?bk9heEhibm9XRmRBcXNXbk5pTXhxdWRhRThTeGZML0F4SVY2endVbFVmZTAw?=
 =?utf-8?B?Vm5Eb2w2M1ova1ZERkpUcWptbjMwSU1jNEkvQ1dKYkNNbHFadnJ4M3NoRmUz?=
 =?utf-8?B?Y2pmSG5mdXQzNlNIWXBPOUZtR0VTWk1lemZtL043V1VBUUk1MnRFNlFmNEh6?=
 =?utf-8?B?eDFGSTIxUWpaa1Z6R2FnTktkbnBEN0FKQU5GczFhaG0wOURZWkgybExNMC8y?=
 =?utf-8?B?VnRqWDQ3dE5iWno1VmJoZnBkVDA4Qm9KZ1pXYWdBNG5oZWlvQWNweUNRU0M1?=
 =?utf-8?B?ZDNhK1J6MWFiSHpWbGpYbHV4VkdGZ201STZsVUhFdlE3UWpGYVpWc3VWdGRC?=
 =?utf-8?B?eHE1bXh4cTd3aCtCNkZSaHZLaHpOY3ZXNVIrZU1nQ2lmL1I4eXpZUHV1S0hx?=
 =?utf-8?B?K2FiS2FaeEpFU3htQjJoNlppSzloaFdEeXdNU0NyK3BOM0lCZVQ2L3VpTnhm?=
 =?utf-8?Q?Y1kfSbZC/N8cP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW5qenc2cTBvUE5qRzdybHNEektsVWQzc0RvS0grdkkxb2ZqM2ZETDRtc3gr?=
 =?utf-8?B?V0xqRkxTWUJuMy9QUWxiNEZoeitsVXFCZTFlVzZUVGhUL0FacldibUJFM3Qr?=
 =?utf-8?B?RGxNQ0ZRbkZ1WkxkMDV1MjJMSEF4K252c29CeVpKQkh5MTFJRXRFYjE4Z3I4?=
 =?utf-8?B?QUhZL0FXL0t4d09jWW4wcHYyZXIzaXVzZENhSElXTk1ZaEM4d3cxc0pBRmxz?=
 =?utf-8?B?SnRrVkZMblc0cGVYaFkrTXBRRjl3K0hDeXVYTVR2K3FHRm8yRDdvSGd0YlpD?=
 =?utf-8?B?ME1NZ1B1a3B3RDRWZTd1VUd0SGkvdGhYN1VBa3hyczB5cnc2RGV4TzYyRWdI?=
 =?utf-8?B?UkoxQm5sWHpPb3Y5K20zU1dBVTNTSVRtWXVsNW9vaGQ5YzFFVXBCR041eDlC?=
 =?utf-8?B?aWxnMlhWM0Rkbm5nd0JDVUhTbDBLNU02VkJpZEFHeW1jelBjdlBmd3pBWVNI?=
 =?utf-8?B?ZklDdC9mVFgyMlk0VGZBanRCaGw1VzBBaEhqaEFiK0NNNW4wRGZVUnhwVFNB?=
 =?utf-8?B?THMwTWNUQnN4Tk1sQ0I1eFhQbHVESTZvdkJjOEYvUzZnMWhXb0xKVC9Vdmdm?=
 =?utf-8?B?T3ZOTkhQZDhybE0ybGsyelZIbmh0NjFtYjRESjFhK3lrdkhmTEI2bkdXdFhm?=
 =?utf-8?B?MWdOSTQyQTl6TWs5YnZTNVU2SGpWV0pabHJFbEpPcDVoZEZlYTN3alczbEZ4?=
 =?utf-8?B?MDhOVkFkMG9DazA2Y3VON2tDbEdoNDk3L1grYXlveUkwK2FCOVE4dnJ5UUdQ?=
 =?utf-8?B?cFFQUy9rczJFV3dabnhNbG5NajgyVFQ4WUxqSVpqc3k3aHp0V05HRTcxcGVq?=
 =?utf-8?B?LzhQUzdsV3NPbUhDTWRPUTE3cXhLQmo2RitMUmhNV0VibGV0ekhUZkRIbVd5?=
 =?utf-8?B?eHFBR0UyQ005OWc0c04zTmNhZlNVSUtYYXNtM0cvejJZUklsZGVrczY3a1dw?=
 =?utf-8?B?Si9PcXpjSGlJbHRQRldZV1Z0bDB5eXg2MTBOVmNuU2ZsSkZENXN4WWwzWEVj?=
 =?utf-8?B?dWdXRFRtR1c0dmVKMWlaZk1Kd091eC9WeXU1TURQWXBmaDhOTlI1dkJBOUgz?=
 =?utf-8?B?YUVpejJqaVJNYS8zbS9zSUU4bnlmVmNJMlBTYWg4cDBCNTlyaFJld0VEOSty?=
 =?utf-8?B?ZWZkbHVYRTFFK3RHS0lmODNqSGptNXBqQVB4bUhVamtOVW5DUFdWTzV0VW9I?=
 =?utf-8?B?RFBNYmFPeGw3Q3JVSmJmNWdCa2VJa2JPSHJwTmpNRVUrQjVrRmhPMEM5OFcz?=
 =?utf-8?B?QUo5TXViM0kyTi9UNWQyc1BjbmNocFplTDlZZEk0VjVWTWt3Zm8yVmFvbTRZ?=
 =?utf-8?B?U1lIYVhtRW44T0d5NXlWQnhzcUhKajYvYkhneEkyR2JoS200MUM0Zjd3OVdI?=
 =?utf-8?B?VzVQbENCLzRkaGc2UWpjS3ltU0w1dnR0RitRWUp4aEF2WFVDZVoxSDJXMDZm?=
 =?utf-8?B?N0ppajBNZnV2YXEzNDV6RXI0c25hZmxJTkZXczRTbW96NVQwY0pncmJUVk9X?=
 =?utf-8?B?anpiY2pNcEpaTWt2L2lPRnMzQ1c4amFEWHVqYzczL0krb1pkN2VpaWdpTThR?=
 =?utf-8?B?S0dRSWtWOWRoa2JLS2M3Z0tyajR4VHNQcERLdlVvMG9wZ3VNdGw0allSdEpS?=
 =?utf-8?B?K1JmNFlMSDFkeTBSQzQxckwyTm1Wbzd1Rlpqbm43cTJGcFhya2wwcXlKK2do?=
 =?utf-8?B?YUtKMVY5ZnF6TEppWUpUK2d5ellWVnVUTnpoWWVEbXdVaXk1MlFrL09QYjhX?=
 =?utf-8?B?bkYxeWd2WmFZYVRmd0JqYTF0bXBjc1lVSXVzMzA0SlltcUljU3RYdWlEVGl2?=
 =?utf-8?B?ZnQ3SWp1SHpIaHR6blpNUmZYbGpZMHpnZUY4OU5IQmhGVjZKamVkenArZzBB?=
 =?utf-8?B?VkhkdlowbE90Y3RMYVgzYzFEcjBWQVA1WjVkaGRQbUJGNHJ1a25zVVdIQjZx?=
 =?utf-8?B?WGF1RW40dlJQMDBLWStEcmxCOHZBZ0VKMElnVEdJOUpyeTB6clpZb0dXbzhC?=
 =?utf-8?B?TGFCTnlrS2xxWFhYeEZkTmRIcWgvQ0hLVmZQdCtUcDZvNjY4d3dnbnhRb1JT?=
 =?utf-8?B?QndtaE9aeW5wTjQ2U1AzSndFeXNmM3hZVmM1KzFCa1o0VURyMHlNSm42VTRG?=
 =?utf-8?B?Sm1HUDdTV21RN3BwTWNrRjVSWXRqNWdabmdRK2ZvUmxDSWZkeUJic0tyb1Uz?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3226f229-6ff3-4fbb-6233-08ddeb1dba48
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 19:11:47.2973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Ma609rmvVHRg14d0yrfWdOrmb0nLR3/C3mNnE9EOVWxcDBTnoRM6p8b/b83aCnupGAeOWwrjHN5lwf9higIHtD54t98e7ptdGOeo+8JBeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
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

On Wed, Sep 03, 2025 at 06:17:30PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
> URL   : https://patchwork.freedesktop.org/series/153973/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17123 -> Patchwork_153973v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_153973v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_153973v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_153973v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-8/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-mtlp-8/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@memory_region:
>     - bat-arlh-3:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-3/igt@i915_selftest@live@memory_region.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-3/igt@i915_selftest@live@memory_region.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-arlh-2:         [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-2/igt@i915_selftest@live@mman.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-2/igt@i915_selftest@live@mman.html

These failures do not appear to be related. Self tests in mem should not
be impacted by a change in checks for plane format modifiers (ARL).
Failure with guc should not be associated with this change either (MTL).

MattA

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_153973v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][7] -> [INCOMPLETE][8] ([i915#14764] / [i915#14837])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-3/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-3/igt@i915_selftest@live.html
>     - bat-arlh-2:         [PASS][9] -> [INCOMPLETE][10] ([i915#14803] / [i915#14838])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-2/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@client:
>     - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735]) +13 other tests dmesg-warn
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/fi-kbl-7567u/igt@i915_selftest@live@client.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/fi-kbl-7567u/igt@i915_selftest@live@client.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [ABORT][15] ([i915#12904]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-apl-1/igt@dmabuf@all-tests.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-9:          [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
>   [i915#14764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764
>   [i915#14803]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803
>   [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
>   [i915#14838]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17123 -> Patchwork_153973v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8520: 8520
>   Patchwork_153973v1: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/index.html
