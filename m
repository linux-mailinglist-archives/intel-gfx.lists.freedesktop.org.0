Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3619C7284E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FD010E6EC;
	Thu, 20 Nov 2025 07:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1LYoL5+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9B910E6EB;
 Thu, 20 Nov 2025 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763622654; x=1795158654;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+RJqJONQrF9oxBHr6gGBbe4pkgoV2QHG4Zoo4fagufY=;
 b=I1LYoL5+C87it1Fok989/o33HpmcA757msY0I3ErLHPcB/GMy7tX9ty6
 DwRFr+pz+FM0V0xKxc29bi+Ad3HhXZmEGRaVgqRid80MUi0xJJtdiL99M
 HytEHZibHGQexYUjYkRaaCi5IxKahce3bKIrr79PXuenMX8QiiZBDhAGf
 vy5dmlmKrOYN1NdUXuOTKq+NHXR/Z+QMs/b+orvQXP8/X2eRxZboQM7dh
 En5IFGiRBpzIN7NpOMlbi+T80y9RbJ9TfHxW0xy0AuzwlTeyN2Q6/cWPp
 hPkmdPOSM6tpu4SDL4JyjhCmfQvmG0dI9/JcojYo0BXihM9T0SY/H2Hbe w==;
X-CSE-ConnectionGUID: adTWSDrrTQiqUbo1MVaZ6Q==
X-CSE-MsgGUID: 9YlNwGsCR6Wo/K1YY7hnTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65618854"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65618854"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:10:53 -0800
X-CSE-ConnectionGUID: JHKjDWDtTqOHxMbUT2Bvnw==
X-CSE-MsgGUID: kwJIG5DjQaatnIM2qumqQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="222209024"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:10:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:10:52 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 23:10:52 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:10:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GcGbquuezy02S+kaltI5AsASLi12tZfcTZwW4Q6ciaaUSOpil9eQ4iZ14ZBh8jC2xeCGipkjqmrgYlTRQ70tDexragiteSUugVL+Xp4Y9POCZeb793S10xSb7ZW13RXdQOysj+OCmP8rsI4ss1w8yVbIztetWOaUY+poMjfS2dl5gJN9s/nRbElksaQ2OpZrv1mBwQi6KgjBdvOsnDE5NkanLcwBEgOcJzZwuYKypQL42L7Lcl7/V5jY4mm6lhZ7QL1t1G9cWFwATETrkIhsPeZKpzNwKdDj9YHYithw7TuXn5dqtrR4wIMjdIN+fLGQJTgQNwI+ZueEhU1I4vXwCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GohdfpR7T6oLgAvzajTcKZdCKYTxKZhUtJfx8p7mpm8=;
 b=jXJWCBx5vo3ubAwOIlTyWwcFe34nvcA848fn+Z4r/v0tUzOawEuUIr+3CHTXMS8bIRkhphC2tCsqeWF/1wgqpuNBi4RNl4dc+o38ViLRZ0Fy/8SHd/DQ1wV1m3q8BWC0TRrWWrDd9vF7lOJtWI7dsGxqUqFZca7DLArXV9w1KsW2Kxb51z1Cx6a3oxVkiB0X5YyM+Hal81P4YNQHPT3i9UAYfBnZVF5u7pQisyAJt3MHPdwxdk9p44+s9nm1gjnTIPSvPMm6KIp53uCQJ+KuFgeREUVdi0ZaWTVqFr963OOyDJuHHzKLF4prAofVGZOv4ohxz9sKDL+1BNbF1kIcqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA3PR11MB7435.namprd11.prod.outlook.com (2603:10b6:806:305::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 07:10:51 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 07:10:50 +0000
Date: Thu, 20 Nov 2025 07:10:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 1/3] tests/intel/gem_eio: Fix mistyped symbol
Message-ID: <caajmqc7w64r6strn6effov7zhiuo2mkvr52ymzl3pjqrspggz@penphjzszt62>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
 <20251119111205.1297907-6-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251119111205.1297907-6-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA3PR11MB7435:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b3c996c-632b-4501-def8-08de2803efb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SW50czl6VzNmZzVVUW9OQ1p3TEFTWlhHdy94dWJXaVBLQUM5OVFPWDhUYWov?=
 =?utf-8?B?akxxY3Bua1BlRHBIRkJHQnJ2WS9mUlhnQ3ljd1FJSTJ3UExEMDU0bmtTN3pT?=
 =?utf-8?B?bld6RXNCSXBrZmtjbThyQmhueDN3ajl2NUpiVjdGTVAwZDA4SXlJRWhiamQv?=
 =?utf-8?B?THo3dEdreUlmYjgrcjdQTFFhdVYwc2pRQkYvdG96MFdMdmFRRmJFTkxTa2ZV?=
 =?utf-8?B?b1E0TWt6dllyTUxvU2VvOTI4L2VpTTg3U2ZyT1Q3WTU0MEZMOVFiWW5VK3Y1?=
 =?utf-8?B?Qld3TWxlaGpReFBVeklLN0U4NHpDVFBZYXkxYlRTTGJSejNpWE0vMnhrdDFo?=
 =?utf-8?B?TSsyeUdzRHNoR3FPV3NBcHJTYlJFc3ZPcmhuZGNQUEU5Y0dxclRlQXZFb2U2?=
 =?utf-8?B?WXZpRnp1Ky9kS2JRNVVsL0lOeFVHSlM5Wi8yQUNSOHExN3o5aWdNaEJXbDJ6?=
 =?utf-8?B?eWtHM3pWb21tR2NwZGZmczZ3TVYzVUUrdERReWxuNnFPOGNoYlBnZ3JQUHgw?=
 =?utf-8?B?TVJVQysrMllJQ05QbkRDTFJGenlLbHY1empTNFhHMkFvTnFJUmZ1dHRkVDh4?=
 =?utf-8?B?L1JubXU5dnd4V09iUm1Gc1lUbUcwTUtMdUJUa05ycWF2ekJQNHdnSEFOSmlU?=
 =?utf-8?B?djlBdkM4N1o2cTlqY1NTWWVsbnFMZTI1VU1tSnB3N1hMcEJxTWJTU29oZUxL?=
 =?utf-8?B?bkc2aWRHQmdON0hwTVpHYXQ2bHdpVkUwTUpnWHZicmZ2WVBxR2JJcDdyb09Y?=
 =?utf-8?B?cmJTZ05qVGNSYllMSk5LdENqRUlkdkRiVnJEOWFYT0tPM05xTkZJUlhrRVIz?=
 =?utf-8?B?M0R1SVFRTmNlaHQ0MkkrZlRzZ2Nrd0JyNE1wb3g3NFRXU1NxOGx0dWlYaWwr?=
 =?utf-8?B?akZIQ0FXd012Q2QyR2svNENXNFI4dWdoeVpKU3lWUE1VNWcyRzZkWWgxUEti?=
 =?utf-8?B?dkFadGVKZmF2V0hJZ1BKQ1QvY09td3krdXZCVE96UlpTZXhsVm5MWWtobXg3?=
 =?utf-8?B?SE04Wi9sQTlQbHJJWVFFalhlQWpPVlNCYUN1cUdSYUEvTkpVd0JpQU5mYjR6?=
 =?utf-8?B?c0pOeWdQSExPbmVxME91cWZ2cHoyZnlNZVkrdFQvTjEwWkFlUlVJM2UweW9H?=
 =?utf-8?B?alJZa2NrdmFMQ2dxclZMOXFveDNjMGRiTFVwZjU5K3RPNU8rQ2pQREhmWUR5?=
 =?utf-8?B?V3h4VGhmMzdTcnVrcDdYTWpxNEFHYzBhTitRU21NWTFvbzNWVTQvSXJUM1Mz?=
 =?utf-8?B?R1JBUUppejZ1RGdNdFptc0RvM2tSQVVIdFl1ODBTWWFDTVZPcnpTS3hoM25j?=
 =?utf-8?B?VjlPQlgwNVYxTEhEU3R1RUlsNHNLSzQySWlkNUxsUXlOS3NtVmkwMm41T1FG?=
 =?utf-8?B?UlpJdlhscjM4bndWdDBUVVhMZDVwSVBQMGN0dHVJSmtTVkhYODIrVHU1ek5O?=
 =?utf-8?B?ZWNTbElDUDcxcWZkcFptcDlTb25JVmQ1US93Q3NML0ZYVVk5V3VhZElFeFRM?=
 =?utf-8?B?Rjh2cE9YT1VkR0VSWndXcS9paVFVSDBYekZhSkNHMFFtVzNLalh1TGcrNXg4?=
 =?utf-8?B?YzdHTjdEWmZQUVdyYy94Qk5LY3pYc1VsSHczQlJEMmhsUzdIU2pHSEcxQ2Ja?=
 =?utf-8?B?K2QwQTBiZ2hHSU92R1ZxSm5jOUtjTG1Qbk5CRUtiR3F4NmJPa25VaENxU2hW?=
 =?utf-8?B?c0JxWnNZc2NkSGpqM3kvTDVmZkZlNnB2c1F5bUMzeFJnL2E3cldUNys4c0F6?=
 =?utf-8?B?NFRkWG92ZVQrSys1N3BQdU9MOGJrcnRDMzErM3kycUhsaXdRZDFWMEFycERW?=
 =?utf-8?B?Mk96elo3c0pkNmlWZ1VxbUduUFpPdG1JeXZoOERyeDJKRFFVUSthUVNZUEtS?=
 =?utf-8?B?ZkdYczJyTE0xblkzSUhsamNad3hDUTZHb1RlK1gxTHlkSUJ2Zi8rTHJBdUJt?=
 =?utf-8?Q?pmjDdv6TrHIkSF3gw7GVFpCOyiYFeHcu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WG11OHJmR3BudE5XWUVvNFVxWnRzLzdEaE5wUTlHWU4yZGtibkdHaGI5c2h0?=
 =?utf-8?B?OEJ3TjZVL3lXMDBaUzFQU2VOanJGZHg0bWt6UjVFdmNmUEJRTHI1S2xYa01Z?=
 =?utf-8?B?N0pPdnBlR0N4TmpNMG13bTRvTUp0SmxhUzZYMnVWWHByMVZpMnlHYmRjSFZx?=
 =?utf-8?B?b3EyVDlCeCtYaUtEajZzQlhnMEJaZmJQY1pZK29acFJEZFpQcU9xQWxPNTZo?=
 =?utf-8?B?c1ZDWURXWllEakphVmJQYWZEQ1VSeVVoTDhSSitBa3hvWjJFUEg4SXJSSXBM?=
 =?utf-8?B?aGtCOGs3SDB2alhQRk5iY1JWTDhVYjRQQ2tMMXFzcVNWUllsZkZGc3BvcE11?=
 =?utf-8?B?UGp6K21zTE9RZUp5S2x5U0xIVXUveHFSKytFRjFwUlMvRnI4eHIwQkFWdEEy?=
 =?utf-8?B?OVdGeWtmOThYbmQ4WXJ4VXNZVmdDNThKVGpUanp4dE9oUHp1MmliRm5nUXJv?=
 =?utf-8?B?MGM3ME80dDc3MXRpTDZPNy9xUFpKVG5wWjNMRVRjclRlM0ZSaElrakUxc3lu?=
 =?utf-8?B?dTBMUmdkMWZoSXZYeFdOeSt1Lzd6dTJNeUZ3SlNHVkVkUEJzeWNQNjhwUjJa?=
 =?utf-8?B?aDR0a1hCU1NBZElNaCtneGh4TytxY2dJODZ0VG5qaUd1RnJBNUpTRkZMZjV4?=
 =?utf-8?B?YnlNY1BjWWRFQmI5UjZleVJwaW9laWVWQll5NlBxRW02NmVWSzN2MWxOZEph?=
 =?utf-8?B?U29mRXBYMktUVmQzSmhXS1BUQkNIOUw4TUVOZVg1ZnBRdzdpMUdyc2wzNXF0?=
 =?utf-8?B?MGNJMTRVNGlYSFMyTjJRRmJBNjVHNUxkYjd2TG9jbHNmWFNScTRuVkVRelJn?=
 =?utf-8?B?RlArbE5XYWhsTFRIcEZQOE9KWDhyUFNObGhJczg5azBSL2xaYnBjRTRJdVRl?=
 =?utf-8?B?alQ1ZjJEM1lCTEpLS00vb0JreTlRV2NsdzZSbUV5WHFKRitwUEc2eXhIOU5W?=
 =?utf-8?B?cnJUUlU5cW9FaFNrMlcwVndkeGZUd2xDdi9PdE5yWkVDSW9lZGdCTlZFNng1?=
 =?utf-8?B?aUVGc0puUzVNVStwU1llWHA3U0N4eUg3MlZTRkRQbVlxNHJIaEN1Q2xEZXN4?=
 =?utf-8?B?ZkdQVnBjMWtDeWpzL3FORzkvWm5Sdm4yYWcvZ3ZrTjVtb21aZFp6dWVEbzF1?=
 =?utf-8?B?Tnd5eEZzSDlmVFdzNnVwRGR6YnpJdEphNzJVNkdWWEU3QlJUMVZ1Z0dtOWpB?=
 =?utf-8?B?MzYyckZ2YktKeGlGdHB3KzRyNnVoS1F1M1E5ZjJqMnZGUjR3ak4wVWtlbnF4?=
 =?utf-8?B?YVYzUkdWbTJmcHRaaWt5MktCeTk0SnVadXlIYUVXTHBsZHcrVSs0UEswTGN2?=
 =?utf-8?B?Y2E2U3I5NjFTNzJFdUdPTkdzWmFZMG9MaXdiV2x6QkN6dlB5Ym9oZVl5K1Uy?=
 =?utf-8?B?S1c0ZStzcFp1cFBFV0hTK055c1BFMG9ISjV3VW9mZGhhdFVLc3NIRklxT3RE?=
 =?utf-8?B?a1VNWXVXNHQxYkx3ZUk3a0xpVEhCNyszV1ZLYTh2d3NWWXFRT0g5SEtSdExU?=
 =?utf-8?B?MG9Lb0dWdUd4c2V1R1VQZ2FIYmJsSE5QcUgwZUhjYWVSOUZacldiMksxZW5W?=
 =?utf-8?B?clNTWG4xRFdXR1RNS1MzTTZ0L2FHQTJnaTUzNHZVaXVncEJqN1h5YzR4Wmp4?=
 =?utf-8?B?UWdBM0NPdDlxejJuWEJyMjJ2aGk4VGhzRGFKVHNLNnl4MzFSS05Dd2g0UUxR?=
 =?utf-8?B?RHVlQnc4T05DanhNdzREMEFSdW02TUxiZmh1eU8wSmRReTdpbEZaODE1SGND?=
 =?utf-8?B?ZmhxdW5TMDFoYXIvbm9PZXVGdVo1YnBJaVJWOTl4WFo1ekIyVmpxMjNFODk2?=
 =?utf-8?B?blFZcEJNSWw4clQ4ZnZmemlKOFVhWDRkeXFJZ2J0dWNOeUNTWHRQTWJpNjk1?=
 =?utf-8?B?RmFIeTY0dGVCS0MwVmpSUzNSTjZ3VDJwbUg1Y05MbHlBYk5kYTRYMXRCVnJ1?=
 =?utf-8?B?RlMvaGtNM0dJVUtEbG9QWGZmemJvRUJDRTRnQkduejJFMTVVL2hmZmRSSThK?=
 =?utf-8?B?UDh1ejUrNjhlM3doMEVaSEx3d0liSlNWMlluZDRTUzBJa2dWVVg0bkgyU2V6?=
 =?utf-8?B?ZGRYL2RvbXM2bENHcXlpc0NhTmhoM2FSYUJsUmdCMHZYZDladDhsaVdOZmVs?=
 =?utf-8?B?dUdtc2llckE2aWt4YWNiVDVweTBPaGxOaVZGVzFWbkdldXZ0YWVickpDZ3VR?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b3c996c-632b-4501-def8-08de2803efb8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 07:10:50.8777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EVW3unWZSIaQeFkcVvAm7OuQyVO0RdtHfwlrhD9dGRDs4H3Ix1qTdo0zd84N/x/sp57DaVe4oZ7QjotFfzAjjblnQzDTW6guo47MByOb0ZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7435
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

Hi Janusz,

On 2025-11-19 at 11:57:20 +0100, Janusz Krzysztofik wrote:
> Commit 4e6a5de3fcb75 ("tests/intel/gem_eio: Try harder to measure median
> resume time") unfortunately introduced a symbol with a spelling error.
> Fix it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 3544cb1fb3..b9c4cdc436 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -410,10 +410,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
>  		 igt_stats_get_median(st)*1e-6,
>  		 igt_stats_get_max(st)*1e-6);
>  
> -#define NUMER_OF_MEASURED_CYCLES_NEEDED 9
> -	igt_require_f(st->n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED,
> +#define NUMBER_OF_MEASURED_CYCLES_NEEDED 9
> +	igt_require_f(st->n_values >= NUMBER_OF_MEASURED_CYCLES_NEEDED,

>  		      "at least %d completed resets are needed for stable median calculation, %d is too few\n",
> -		      NUMER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
> +		      NUMBER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
>  
>  	/*
>  	 * Older platforms need to reset the display (incl. modeset to off,
> @@ -981,7 +981,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  		igt_spin_free(fd, hang);
>  		intel_ctx_destroy(fd, ctx);
>  
> -		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
> +		if (stats.n_values >= NUMBER_OF_MEASURED_CYCLES_NEEDED)
>  			break;
>  	}
>  	check_wait_elapsed(name, fd, &stats);
> -- 
> 2.51.1
> 

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
