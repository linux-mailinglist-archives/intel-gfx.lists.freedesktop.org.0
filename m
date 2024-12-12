Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0019EE7C8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 14:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC61E10E22C;
	Thu, 12 Dec 2024 13:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eP7CEyH4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C48410E22C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 13:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734010651; x=1765546651;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=S8sHMd616E0KMuD2wCOP1FCE6tXDcxB178QAB7IvsUc=;
 b=eP7CEyH4X5j87GiUoUxqe4bDPMaXyMD0VZ+TCEU6LpwbwZ2O7PWQsUum
 HRFwAA5mUwi9oLUya2+Ssc0rxfut4vBHjzJCx29pTNraFUBmsgbCcV/Eb
 Up1oTQHGqeWTyjP+s1AOXDccSklfPMuLiWNjNNoKWfTWbywEriRT/Zk3E
 ekbwgu9T1WySy0XsIcrpE77qEcf4AKkx9qIqKPICt2SJ4ioyOA5xyS4s8
 ht6VpBtCHsNBYfbaiBs+McDsM9qafWF44p0PkjCQ6qGi3kunk+keWPXDt
 hnMYvO1hpUHEApi2Masz/63p/enxsliN7/Tl7tiwvPbt2wNoRExHptNBC A==;
X-CSE-ConnectionGUID: 6Zqub+KHRVGYPy/s9+iu3g==
X-CSE-MsgGUID: 3Vmcptx0QcSlZi1tPbvltA==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="51841020"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="51841020"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 05:37:30 -0800
X-CSE-ConnectionGUID: cm1LZZ2CS+ORvLmbqGXHyw==
X-CSE-MsgGUID: w5mTwFL4TR6gxpyWt/J43w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96460740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 05:37:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 05:37:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 05:37:29 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 05:37:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HfY1fg2hHzTv5kpjOxsjhh2ytyNcsWCHI7RE1u194ProVhqKDw1WbLTaK4Rl/ELa3zn5LIDMpyMpA22jVjjzcU3Td24KUTUAWi/Hx44b5TjAYPLvdJTwpJVGcQPVbzjlbVBG4umsrZRP6L6MOwSZDUlL9EKPzmvDxARYQUyA3XJlecjI6Ehr+IL5GSPziMI0fSi6IyI80VVo1zhgZdrZyN4oOc447AdDSsfhWedMMSiqTmwJ3UMi4U/TuV7mFkp7IdiyGo/1Iyna0ruFVZ9AAGBD8aZk6zhF3DKlAYPT2OAgntyGI4aWZwoOlIpOpy6owCBuo5t5ioU/xLSQySKysA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6HAsg7qpzFiwMEdQoZxmi28kCDChMGFMF4AZI/kS38=;
 b=RS903T0ozlevKQ0rglQc8X+ChLwOPnopOkGOlheXkJflwQfdsVA+OIoR8TnqjzMS2hjBmKlCJFdiR98+CnZavE6xPnX0GD6d4Hm7+ZFrzneQKlGjGFut3UhJ+0mOGVCTdmSTARvPtrsPhbk4ZkQR11EasVkY+pdAFuoJhnKvZU7byr/UMEiO2X3ONd7XntX6GtMkLuaPIzmyv9MbeNpFMj3FFLqOXoHKoN43BrRnpu0HD2fX2xg28R5JJxx1Ej40xMnuxmSGmwXm38Wo3TwG4NkzMzc7k1oOEbWTQgQLPV1GFQzErLpg7xmtYxZKdzj4gevOD9ZUom8iDSvfUfqxeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Thu, 12 Dec
 2024 13:36:51 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 13:36:50 +0000
Date: Thu, 12 Dec 2024 13:36:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=2Fdisp?=
 =?utf-8?Q?lay=3A?= use ERR_PTR on DP tunnel manager creation fail (rev2)
Message-ID: <g7lxg2io4afaqatd6czqx6faflypguw27c6knls4csiuyjvp3f@2isvhvcjhdbx>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
 <173400431880.1551260.12013779382242093013@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173400431880.1551260.12013779382242093013@b555e5b46a47>
X-ClientProxiedBy: ZR0P278CA0166.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5934:EE_
X-MS-Office365-Filtering-Correlation-Id: 57b4f503-7529-4255-bffd-08dd1ab2088a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dit1bU1wTmtsVTd1SXh1VVJOMVFqZEF4d0R3S25rVXJTRnl2YmdsbVFpekk3?=
 =?utf-8?B?VVhUTXoyZG0xb0IrQmxFQjRmSnF5clVnbHNKcno3R3A0NEpNRFZ2c3BJS0VI?=
 =?utf-8?B?c0VLWW9Ydyt3R2tJdXNFUnhwc282VURXQVlFSmI2SkE4ak5ZbmI0QlBZVXVD?=
 =?utf-8?B?ZUR0a3o0YW4zWjVPUzBNakFsWXhvMUFwLzJwT3ZqNk56WXdTNURNVlgwc1Q2?=
 =?utf-8?B?eE83K1luRnJqWmJIbzJaS0M4TSt0Rno0RjlheEF5ZHlIcGNBRTNTWDhFa0Zu?=
 =?utf-8?B?eXdacURWK015eWNxZzZMNnZETng2TTREOVVwV0p4eXhiMjlaRUJtUy9INGN6?=
 =?utf-8?B?YVcvWXk5UkYwUUJhc1pWSTNzbnhQYlg1K2tVelFIclFZNW1sVktVTTd0eFBx?=
 =?utf-8?B?aXZtYnc3czZ5cnBNMHpUUlRRUWx4NUVBeE1oZlJWVXBST0cyYitKVk1ycytx?=
 =?utf-8?B?aXN5NnprOWlXZ0ZIMGJhc3VienFCNTU5eW00MDA1NDVxaHJNSDVWV292blNu?=
 =?utf-8?B?akhKU1ozZE96Y1JTUEdxZVRDZ1piM214UG5ONG15MGh3a2lMY0NPMWR4VlRG?=
 =?utf-8?B?M3BpeVJYU0VrWGpUU25tZ2pxb2ZKTGVoc3lzcm8zMXpjcHBvb1lPSzlWejFo?=
 =?utf-8?B?UHFRV3dDZXFmaU5MT0U3dHJOaVVXYTdxak93a2dldkk1d0ExQ3h3ejRuQUp3?=
 =?utf-8?B?aWF6cVdjTDYzSnZPVmcxNDJXM3M4UGtZM0dON0VxVitORm1oMUIzMk1WQkRs?=
 =?utf-8?B?dXB3N2IwZGJHZ1BtNFVFZTFhRDd2cWgrbGtsMDJDVW9kRDlzS01mQVlJLzkx?=
 =?utf-8?B?MEdraDJhZHorWkttdEU5LzZmZWtLcXgrdmFOd1JxOGtOQWlZQ3RyRWZSKzBm?=
 =?utf-8?B?UGw4MitKVjVUcG15Z1prR3QzanUyckVoUTV4bkMwamVqSS9PcyszSTA0cU9t?=
 =?utf-8?B?YWVoajh5VDArLzdVVkc2bm9MdHpLMVBBMllzMHdWNllEOEFjSTNIdStLMlZU?=
 =?utf-8?B?WWUwK2ZRY3ZrOGpBL2pscTZGTDJRWkUyd09ZUFJrM0U5NWw5cW1mOHRneEQv?=
 =?utf-8?B?MERuaWVNMzJsMWNjUTN1NUdNazJMc0lnTWhSR2xaZGVBTVkwOWJMbDZZMTFP?=
 =?utf-8?B?aU53UllVUWZ1eFFoUlFlV0RUSllTTytPUnFmblpQYnM0cVMvVHRaV21uczdi?=
 =?utf-8?B?bGRQVEp6emx1eXJ2Y1d1ejVNbE5ySHNLTVpWVjhURmlqeDBWK0k4MzZMcGFX?=
 =?utf-8?B?akZQYWFieWxORDhzM3J3VTJOY0xKUEJVTE9RQVREMFZydFpYaXY4TzA2RE90?=
 =?utf-8?B?Z1NPUEp0cnJGMG91YWJQdm56dkwvQ3BJcE0vMDVCUHlBRWVxUi9hd1NEcDZN?=
 =?utf-8?B?Rk1acHpCcHQ5Rlk1czNITS9La1RGOTlCMGJ6UFYxMjBBeUhESFJvOHNkeEFj?=
 =?utf-8?B?aGVOSTlNUHdMMFF1QlVVY0J1dTJiUUltUnNhd3RhSTlVTkJLZ3BtSDJ3WlpN?=
 =?utf-8?B?cHRMekFkbzZ0OWdTWU1WQ2NCck5EbUM0ZW9KTmpyWHI2dHF0b21SWndoWW9k?=
 =?utf-8?B?UFltMlFwWXRjaWw0RWRoMFFYZjFwcU44MXpCcks1NVBaNzNGU29lVnlrTTVB?=
 =?utf-8?B?YlRlblVyeUZ3c1UvdnVrQmN2ZFZQc2VsWVpyWGZ2cmYyZ3BvckdVcTdvZUhu?=
 =?utf-8?B?TDQrajZCU2xJV1BhWTNBMkVidGJTeDBQMHRVbCtJM1A0R25jV3RmVHF2Zklj?=
 =?utf-8?Q?MIph2OQfILkAdrTYGY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0NUNFdEcVhyakVXbmNRVmhsaHB0SDVvUTM0L1JIMXFBd2F3MWp1L1BkMUs3?=
 =?utf-8?B?b0JVWkNNdzg4ZEtwUFJCWE5RZStUQjY2KzBYY0NLZzUveS83VmFWOWNFSjdl?=
 =?utf-8?B?RWVkSWZsT2FrZlN1MHB0TFJJSUZ1ZUUxYi9hNUk3amZsZ0d1djd3YkE4ODBv?=
 =?utf-8?B?MG1WSTZBY1VhL3g5WGNIZGFrSTV3WUNwOERwNCs1WS9ZbG85SkM2TXBKenFF?=
 =?utf-8?B?UWFORGhnUzMyREtqb2JKcTFRMmpzanBwWmJxZWh2dmI4MG1xcG9TRDJ6WkNt?=
 =?utf-8?B?d0dhT0ZWNmVFS0hoSVBTTXFXKzlHK2ZieEp4dWd2dWFNZng5OElxWjlWL1lN?=
 =?utf-8?B?bmFtdTc3ek9ZOWg3MXh6R3hXKzZvSURVdWt2bSs3TnB0YjRsMFppY2hyZ0kz?=
 =?utf-8?B?aHh5NkVNNUJKRTFSWXgzNTFUTDhIek1Gb0FQSFFWVnJOL0FtVGY1L04zWlZh?=
 =?utf-8?B?TDBvdEc1T2w2V05zYldZZmRmTnJIV3VXNGs5S1NROTlVOUJVc3NPZ0tTb3V0?=
 =?utf-8?B?ZTZZajBvejgrZGpCMnlyNnh0MENicmUrQ01tQlNtZnNMemxoVGs3Vlc5SWd3?=
 =?utf-8?B?N3JMSGRSdGxnMDhxZ2U1RElyNW5CbGJ1M0VKUy91YnIyNm12ZnJIMmlweEpp?=
 =?utf-8?B?eGdqclBmbXJsWk1CaloxVDhqTTlCMC9qOXpSeWRCRjEvNmRuTUtZREZQd28r?=
 =?utf-8?B?a0ZxQnJVT2pVRHkzWVp3UkFITlpSS2NydFkvdjBCTUt6RlBOclRXM1N1Mm9t?=
 =?utf-8?B?VXRRK2VoNUI5UzV1TXNFbHdIYjZJZ2Y5T1NkLzZlcEY0bVpaZ1FadHhoa2tw?=
 =?utf-8?B?ZTVhNlVISkFnY3M2ekppUFhCWnB2eEFvRC9LQ0ZaRUw1NnlZZ0w1Nk51T0Uz?=
 =?utf-8?B?ejRZbmJwZ25vaEMvUFFjc0s4UjB0MWYzanI0RFI2WlBBQXA1Z2kzcUJiRUxu?=
 =?utf-8?B?dkMvYUYraUNlRk5xd21ZVjRtV1hGTW45VXA0WXk2NVprNmE0SXJXZzlqYTRZ?=
 =?utf-8?B?RWExcFFaZlR1NVpibU1XUHh6OExrS21YUmN2TGVKMVBPaGVqVUlOamllVFY0?=
 =?utf-8?B?NDRnTzVhdk9saTR3Y2QxNWNYSFZTS2hORG54SWZNUTR6SVY2WUdyd3RzQzdS?=
 =?utf-8?B?Kzd0amh4UnBJVDQ1TG1VckFKWWhtSWZjb3ZTRkRuVVhoVTRRMVBHV1NKdlpL?=
 =?utf-8?B?dTQzRFZMUzZmRHlNVEtNRHBnNHRzcVpnMzhEeHFNeS9ydWJ3STg5cTdMbnQw?=
 =?utf-8?B?TFpsZWZJR1hCRWhldnlkOHdkcjl2L1hGd3RyUXRQZEVSR3RYbmRnSUk4ZnBH?=
 =?utf-8?B?dzlnRTM4dHExd3EvQmtKN054dkRnbHJ2MmdLZXpuYU1FT3lBeUwrSGNKb25W?=
 =?utf-8?B?VE96OUs3dUZMdk9FQ2NJOE9Ga3B0VlVLOS80K0gxOXQvYW92WTZhM0RVckJZ?=
 =?utf-8?B?MVZKM0VHM3A3RGp5RHYvaTJiTTBoTDJFN2FBYUhLalluWkh3ak8zRGxxamtv?=
 =?utf-8?B?YjdhdGtraGpONkVNeEt3ZzhPOHE2V2xOMllnenlHWG5xazZ0bnhRN3YwZHBQ?=
 =?utf-8?B?bEs5ZWxucStSK1lPc0k5YkhSVkdaMU1PeHdndk9tOVMwR1I1TGQ3cWVkZ2VL?=
 =?utf-8?B?eFJxdXZqbitCNmZ6VVk2a1NLYXhRMnFTOEVvNEhTclIxZUxRVlczN0xsc3NB?=
 =?utf-8?B?VGdpdEFUeDcyZ09sTlQrdXAyQWM4N2RCQlYweDFzcFU4UmpZUjZEZ0l5Rm5U?=
 =?utf-8?B?eUxxVi8rRUMvdEZEV3JLVXZVeGRuWGs4MkxNM0dxSDdueW1ZNFpWcmdkQksx?=
 =?utf-8?B?NzdNWURtMWJCMk9HaG14eUpoU0dlbVAyU3JXSWUwQmtwU1lOeW1IbkIvR2pI?=
 =?utf-8?B?bmNNemMwaVYxa01vTXNWWDQ4WmRLUGN5ZFpSVit2SlBVUEVwRXdyZGdCQVFS?=
 =?utf-8?B?T2UvUytmNHN0NWpQUVNBWktnMmNlQ2hkSVR2OXRwM2RIQkZUcWR5MjhialMy?=
 =?utf-8?B?WlNlc3hYUHJ4N1o5SE9LSmJlanI3V1cwTmcvaS9UOHdYS05QN3N2bWJUSVJW?=
 =?utf-8?B?UmUxV0FNNmZaUHZ0Y1BHNEl4NHM5NzJiUW02eVNzWGpDbkJqQUZkYTJ3NHN2?=
 =?utf-8?B?dk1aeGNpVDh3SHpZczlzWGZlZU5QcDB5ZGpJQjhtVjZ0NUYvMXZkUjU4M3Ew?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57b4f503-7529-4255-bffd-08dd1ab2088a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 13:36:50.9214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MQvJxvzT877d6iO4T4+rKVxavUQncqGpMmV1rEB8nYWsvFCjfWCXgn+4wliQ+UaU1YCZNpXKgLe7TgMndbpCSj0FcYMwvxX0IA53vsXzntg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
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

On 2024-12-12 at 11:51:58 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/display: use ERR_PTR on DP tunnel manager creation fail (rev2)
> URL   : https://patchwork.freedesktop.org/series/142423/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15830 -> Patchwork_142423v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142423v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142423v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/index.html
> 
> Participating hosts (47 -> 45)
> ------------------------------
> 
>   Missing    (2): fi-glk-j4005 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142423v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@debugfs_test@sysfs:
>     - bat-arls-5:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-arls-5/igt@debugfs_test@sysfs.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-arls-5/igt@debugfs_test@sysfs.html
> 
These failures are related to USB, which is unrelated to the changes
made in this patch. Furthermore, the code did not change from previous
revision of this patch which passed BAT tests. I'm going to re-run the
tests.

Krzysztof Karas
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142423v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_module_load@reload:
>     - bat-arls-5:         [PASS][3] -> [DMESG-WARN][4] ([i915#4423])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-arls-5/igt@i915_module_load@reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-arls-5/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#12903])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>     - bat-adls-6:         [PASS][7] -> [FAIL][8] ([i915#12903])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>     - bat-dg1-7:          [PASS][9] -> [FAIL][10] ([i915#12903])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live:
>     - fi-skl-6600u:       [PASS][11] -> [INCOMPLETE][12] ([i915#13050])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/fi-skl-6600u/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/fi-skl-6600u/igt@i915_selftest@live.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1:
>     - bat-apl-1:          [DMESG-WARN][13] ([i915#12918]) -> [PASS][14] +3 other tests pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-apl-1:          [DMESG-WARN][15] ([i915#12921]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
>   [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
>   [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15830 -> Patchwork_142423v2
> 
>   CI-20190529: 20190529
>   CI_DRM_15830: 7b441ab54824526dd570dfbfbef51bcd2ba4c5b5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8150: 7812065f4aebab1629b570bd78ef71e09480b359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142423v2: 7b441ab54824526dd570dfbfbef51bcd2ba4c5b5 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/index.html
