Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2374FAA70C4
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 13:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C1310E19D;
	Fri,  2 May 2025 11:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkGokNhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180C610E189;
 Fri,  2 May 2025 11:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746186065; x=1777722065;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q+vvfaEaXriu9hDvNA4tmhskj9wv8W8UZQXHKVTiF7E=;
 b=QkGokNhifvsKhsY5uCLhv/WDE7Pgi1dP+fvrEKgzehOcwNuhO8xalOJh
 B4BHPMXV8MV4E+ysTCodZ87EA4ghS3f/JBnd/nibpIjbcqaJkZmGt+d+m
 QUFFKj+YS4GB2cXe0TsyZx+RMjQlL1sNailue1Qa9VPC2zVjKgWfcrlmc
 E5ieXc+VR4JH7ljtWdYCaKiyDrdtzjFcwZxBINNQx4AatFhIt0usW2e0I
 ISWcoSipYLJsdDSVghUGpcqtETLPjgYUsIuXwKbMGYIYTo7NH0D1/v23x
 kF9fF3526btw9+aiXQpsYRlHg4t5wWtJpKQxTELRMFkMbVVssTebc+skw g==;
X-CSE-ConnectionGUID: g8/tOMf0T2G+wXomNUzxZw==
X-CSE-MsgGUID: ho5oJL8rRfqsMBIJVOmTuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11421"; a="48010520"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="48010520"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 04:41:04 -0700
X-CSE-ConnectionGUID: mJpP+nSLTf+/J927e+LLaQ==
X-CSE-MsgGUID: 8dCNiQaGRhafrULp6rZPMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="135148542"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 04:41:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 04:41:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 04:41:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 04:41:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=USAZmlzJylF1B0JlqXA7xMSfw+rn+b6JR8vFtaKTDthxshTSXagQXoPooUcoCCxULhwrcUQlfOw6Iq2HZ8Q75tHlo1kyYCbZU0sQJcFM4UcER3vri9gHPKwJvtzY3YU1Ho/7IumvqRRbQJLv3dv7FvdI1HIQ7Kr7c5GU+fwjEk0E5K2tv7GITTAyzk7Qi9CBVuug/LWo55HMbzFefJNpQ2n+gyYTMIJ0ckixUVLvMvxYV887DH01SrYTwiAxRLSmkRAhuvzIDOwJqTS09zY7HToOFkn4DL7SOCvqcDXNprvOH8nLuEGH4xFSZeRl+PdaElwn48fglCXxqpk4aoQdfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZac/u76UJQBWbUoXzMIUpi/QFreDJNJMhAVHM3TF4o=;
 b=aI4/KTJ1oft9voUDU9ip6phR6AJxJWn+Q6Ab7Lm3RHKJq1V0xDM5y4Hr/9oolskWjcHZs74FoBuOq7qaaNfLriSf8ZKrWT7fAsVO2g4Kv7DLnv0j/7FUrX29H3uVRqPjABqS9v9B6ORMAlYMPzZBO8ZEbP4HMe8fZV0ID+8C8mver/MKfk49A8re8atEind22Ogw75yrwjAeiV2h2aKHEiRTk+gg0rNO3pNJGny4y7aPVMHwhD7Dgr0KnP0CLbvO3RB/IQwt3VJxgV0O1238xccQIQTustCzvbLeUZX27IZ52XbB9tQ7S0RDeFf2DzONOPvtPwY0plQbLjKds/YQig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6858.namprd11.prod.outlook.com (2603:10b6:510:1ee::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Fri, 2 May
 2025 11:40:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8699.022; Fri, 2 May 2025
 11:40:30 +0000
Message-ID: <ee572f3e-7c7a-49f1-a476-c5720cee2971@intel.com>
Date: Fri, 2 May 2025 17:10:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/display: Implement wa_14024400148
To: "Kahola, Mika" <mika.kahola@intel.com>, "Garg, Nemesa"
 <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
References: <20250416152044.2668249-1-nemesa.garg@intel.com>
 <MW4PR11MB70543F96650ADFB9AF628FFCEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <MW4PR11MB70543F96650ADFB9AF628FFCEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0175.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6858:EE_
X-MS-Office365-Filtering-Correlation-Id: 79250877-393a-497c-1c62-08dd896e2418
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUc2eUdLenkxSGlNWlgvektFUENRS0hUaDFSS2ZiamcwMjk5OGNFS1dzZDRB?=
 =?utf-8?B?UGNkaG5LaDNVOU5SZUVKbEgyYUJjZkpyckV3elNqWmtteS91S1ZHRld5RXR6?=
 =?utf-8?B?dVo4OWwrYjBUMzdZK2J6UXMxdUVGS1JDVldDRFo1cVhIVExRWjZpKzh1ZmZ1?=
 =?utf-8?B?dzVxOTcrUGZqTkQvbzlZMm9jdzFoR3ZsMEYyZWF4NHBlU1RURk1oVFVveDI5?=
 =?utf-8?B?dWpvOE5mTjYyOGRBQ0lsSG03RHNocmUrbGVKMkZLUGRINXhhSDZBclduajJt?=
 =?utf-8?B?VU1HS1Fpd2c5Ry96SlNMWE83dUhJS1o2eU42bzRrazU4WUZQeHJqRXE3YTYy?=
 =?utf-8?B?R2dmL2ZQVGFpV0VxSWMybWMwVlhCZ3lFUW9QZkZVT0k5QkRNelhRQWdYMXFG?=
 =?utf-8?B?dTVJU3pUbjgyMjBId2tXRVRJSDJNaUc5M01JdDZieDBqdE1RYVJoa1BpeEJ6?=
 =?utf-8?B?WEtzcVBBSmh4cGN1UTBmNGwwQmEvVGF3WkthV0NDakRSMlgwQUs1VDUweW92?=
 =?utf-8?B?WmtQUDJLR3JadHhFU1ZlQjJiOTdoa2N3eGRHWVBtV2pMN0pUSUlkZVFRaTdv?=
 =?utf-8?B?bG84NVUwamtTRFFyZkNvck5mV1Bnd09pOUJrWmxYby9wU2VjaGplU2liTU8y?=
 =?utf-8?B?Y0RyK1lJclJJR2FHb0NOa1FRVHFtanlKM1VDdUtqaXJvd0VGaUJSenQyVGtY?=
 =?utf-8?B?endGR2lBLzE5YUN4NnN1TEErNFBHWWJyZUpwWkhUbUtIdy9OWWJkRWdSTEd3?=
 =?utf-8?B?aTZHQmEwRE5EajhCUmJxbnNpY0h4aGxWSXp6dUs5SWs4UGZjcHhqOXgrR2NF?=
 =?utf-8?B?TXk0aGs0ZUJQS3ZQWi9WTkpuTzlKUTlDa2lhTDEzNmdBek1HT0VlaG8rUU5l?=
 =?utf-8?B?WlQxZU5laFlpRWY5bkNzUjFHNFBSbThSWmlLQnB5eXgyNTN0T0JJVVFjRk9k?=
 =?utf-8?B?V2ZUWFJaTmIrLzNoLzJjOHZsWCtkakU4RjdMb1RMWno2R243ZEZBN045TFRK?=
 =?utf-8?B?Z2tDUHYrMWc4Nlo2b1MzODU0d1ZQZXFQNUVhOEVtNGMyRGIxZFFmZE9aUHF2?=
 =?utf-8?B?enVKaWVMd3ZBTElDVW1uZGI1QkI1S2ZZSHdVWWNpa045RHpyNktxV0NxZUVJ?=
 =?utf-8?B?OHVtUTdWSDlxTkdQeDVWa0lxU013UFhmZlhYODZqVUp3eXJaYlkvZkFWOGMv?=
 =?utf-8?B?WmdRUXlnSmZJdWVMVnBmclpyc25MaHU2UkJWNk9OUEw3c3dtRzNpNUpURXBX?=
 =?utf-8?B?WjJDQ2Y3RWJRU0lDYWc4ZFFNKyttYmVacU4wWUs2QTc5TTF6VVhpTWkrNmUw?=
 =?utf-8?B?NEt4S3NDbzFucThuWThJYXhqdk9ESlgrTzgyQm5WV3llTFhSaEdyVnZhR2k2?=
 =?utf-8?B?R3VtODhkV01LSC9hZk9vTS9hb0dDZ0c4QjB0TFh3Y2lzLzZKR3padFRVMzY5?=
 =?utf-8?B?RjVXOVJIRGx5OTkzWkR5RW5Fb1JOb001V3NPWnJQakRhcTJxNk43L3R3WGRj?=
 =?utf-8?B?ZUowNmV0VElyZWJPLzZXamJMU3daTmsvUHdFbzNlWkN1cmhEbmYzeFo3YW9D?=
 =?utf-8?B?dDVLazRBNktFUkw1Yk9GaUQ2SDdrOUI0b2Zld0xkcGxWR1lZR0RzZjJnanNu?=
 =?utf-8?B?VDM1WFhUOVRRNS9TNW9rcHNRZVQweHVXWTVubjhNWG1yQnByeE9hdWJVM1cy?=
 =?utf-8?B?QSsyTUEyUXBOZnUzamNQQUNScUlBSmd6OXdITFVIU3dVU3hxUVhYNm1PNW9z?=
 =?utf-8?B?UENXdFhQdmhmTUY3MmpzejVCcFUyMy81OEozN2JyWVV2QTR4YXBmZnlYSlNn?=
 =?utf-8?B?MFM1U09iaEFzRk1BbEdxd1A1NXQ5Ly9saWxiQWQ3T1JOano3ckcvdVRKYmxE?=
 =?utf-8?B?L3ZxNDBTd1UyQlFWYUxUWjVWQjlyWGFvcUgyVHUvT3I2R3FsV3ZKaXNqbTY0?=
 =?utf-8?Q?cSOyNzBCK6E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFJFeE1Nd1d0VWYzYzBqeVZOd1dRUDBnSWViSWJ4dkc2V0xnMFpla2VseXRD?=
 =?utf-8?B?ckt0NjhMNHFvTGs1ekM2eTFYR1FYcWpobys5S3NRSnpNbHFtdDF2N3Y0Q09t?=
 =?utf-8?B?a2ZsZERhMC9xaitTTWxvaUh0aXF0REViRTJSMjRGWVpWQUtCRktsWWZ5ZzFo?=
 =?utf-8?B?QVhnVEVDSzJlSzcrWFV1QlhKeERzZlB4UW40dkdJeXlra1k5azdhcnFJV0ZG?=
 =?utf-8?B?dzhyQ256dW9TTU1ZWTc3bU90VnJiMEtnNTR3R285WEtmQVdoWkhJaHZOODEv?=
 =?utf-8?B?VmR6M2VjQmxDM0htd0ROeWZnUk9OU3h2Y1J0cnI4dTY1M3JXZ21DNDVxN1lv?=
 =?utf-8?B?SVAyRCtFZkovL1ZiS0g2MFJyNVdzbGluS0U4QU1qSkdycXd2SGRadkhkMUNT?=
 =?utf-8?B?THFIZ3lwVkoybXk5MXZDMThza3QrNHg5N2JXZFJJQ3FRcjBmcGZIZFAxLzR1?=
 =?utf-8?B?c2FCV2FaZXdRVktWVFdwL2R0OS9nKzBFeFRIYU1yQWNhMnA3VUpNOThNY1Ja?=
 =?utf-8?B?UnpzamdDKzhZQ2xzZW1XYmRlWWFPS1NtSEtrR09WSXp0bFdqb3F3RmRqMURz?=
 =?utf-8?B?Z05XNmFkTjNOeXloNFkwV0F1UUwrMXRRN3J3T2tvbGxoTTF5STI2UlQ1am9T?=
 =?utf-8?B?dUhuL1k5UWFBMFB1M3YzL1FGampoTWo4RVYzY0diS0t5UDlBeWQ4WjNBL3lt?=
 =?utf-8?B?d1RCb1pqT2JIZnJSM2I3TXp5MnZSdG9xd2tWYXZoSHBlb05QRFZuaUFpT0xi?=
 =?utf-8?B?b1AzaHIrZVNlL1NsS0NsQkdNVitMQXgwQ1V6MmhzcXJYKzRkcSttd1cvdkNB?=
 =?utf-8?B?LzJLb0EwUHJXODFuUG42WSs3dnR0QVhnZFR0UnlrenRuODFIbVpSanhTNkdt?=
 =?utf-8?B?cndieXRGcFNKVzVsajAweElUQnU1a0xMMEdhRzIzL3g2Y0ZMOUQ3b1czQVlG?=
 =?utf-8?B?QllhdzUyS1QxK3VpdG9GM2xhNUYwRDJvcVFZWFhqbnViaDZzNVhVbUo4UU1u?=
 =?utf-8?B?UmtoY2hKZVgzR2lwYUx1WlBIMmg5MFdjREMvb05OSmVOY2p2QWxQUHZ1ZnpM?=
 =?utf-8?B?RFV5OFZOc2x4aWs2UGFGODd1SXQ0ZG1LOHNHSEVBL2l4UEdrZW9icDFKeXUw?=
 =?utf-8?B?RTFTSlBVaVQ2anpBUmF2TXMvOFplNHJrSHdZSTF2dmtsOEM1N2pEVXR0a2FO?=
 =?utf-8?B?UmdDRG8xTFpOTFAvV2IwT3FhbmNvVllPSnVsZS9pbXBOMGRobjlVWWVoTEJP?=
 =?utf-8?B?WktLZXJhaWNlMW4rZTFGaUV4bnNjLzFzQlRhMzZ2Z3huTVU2N0ljVFFvTjlL?=
 =?utf-8?B?ZUVyaSs4QjNqeW92dzdrc2YvaEZxblNZaTFKRFVGbzZ6Y2dhM2xXc3JKcDhu?=
 =?utf-8?B?WHg0V3VKY2M5Z1VpUDVwUzdGaGdXS1pwTGlMaU9yc0V0VFBKN3VGaDFHR0Vy?=
 =?utf-8?B?Tm1aZkExcEZpUHJUMU9xT2QvYngxUjJvQ051d2tWOHVQUDJRaG5TQTM1d1g2?=
 =?utf-8?B?VWxxZ09kVkZVenp5dzFyaDJSRnE2TVZBMkdOV29WU1VtbkRwS0hidGVMSThD?=
 =?utf-8?B?dGhSS3dPaHpKczROUHBTMGFXWU5ZODBOU2k0TklkS2xCYk1iZ21MUjNpWFdR?=
 =?utf-8?B?RGdTckdEaTVDakFKQXY2SThJdlRnZ1ZwaEg2Zjl6NkxHUE9XQ1lTQUdkWmxM?=
 =?utf-8?B?SC9ycDcxUWpKZzQveWVwUHQrRjE4Ynl2cVRVdk9BMklJYTVEZUYvbitERHc3?=
 =?utf-8?B?bVpjTGg2Zjcya2ltY3Y1Vkp4dVMwTFJGWGlsM3hVclZ5NjBmTDBVUHNnamRw?=
 =?utf-8?B?OGl4bnRYL3V6UFFHMjZRUWFJdjVxQmJCTmM2V2ZKbWZud2Z0WFlIOVFQN1JN?=
 =?utf-8?B?WTBuaGgvRmM4U3NUWkY4MkpJTWhlRGVBaDlSblpEWkw3M3pZaHNuVUt1SHFt?=
 =?utf-8?B?cGtuMXJuNnpiZ2d1RDMxeSt1RWZENkpLNXZ4MFVPYlA3QkVpUUpMNkFLQklO?=
 =?utf-8?B?NzNsRnNXTFpTOWpHVmpRMThYSUNzWFlHVEtQZUVsNitVM0wrT3Z5TU5UbDdU?=
 =?utf-8?B?M1JnV2IvUlNyY2dsV0U3WVNpYUZmNFJOaTV3L29GT1hlS2ZtMmdBaG9iMXI1?=
 =?utf-8?B?cU9sTnpuQVVFUmFibml2eXhlcFIvV0s0QTRDaVMrbXBiNjZiOXZSVk5Lai9t?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79250877-393a-497c-1c62-08dd896e2418
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2025 11:40:30.5551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 44GYOruWA+HApKchHqchC6XFi8a5gSR1mJGNIRWFUVA18YJ7miwyEyfomGy09A3o8+IXnZKaiFr1T5WO4N055hrxEUO0tY9TjfxyQ5qMJXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6858
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


On 4/22/2025 9:02 PM, Kahola, Mika wrote:
>> -----Original Message-----
>> From: Garg, Nemesa <nemesa.garg@intel.com>
>> Sent: Wednesday, 16 April 2025 18.21
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kahola, Mika
>> <mika.kahola@intel.com>
>> Cc: Garg, Nemesa <nemesa.garg@intel.com>
>> Subject: [PATCH v2] drm/i915/display: Implement wa_14024400148
>>
>> Workaround recommend use polling method
>> for pm_demand to finish as to avoid timeout.
>>
>> v2: Add polling method within pmdemand_wait.
>>      Update error message[Jani]
>>
>> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_pmdemand.c | 31 ++++++++++++++++---
>>   1 file changed, 26 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> index d22b5469672d..1253376c7654 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -478,13 +478,34 @@ static bool intel_pmdemand_req_complete(struct
>> intel_display *display)
>>   		 XELPDP_PMDEMAND_REQ_ENABLE);
>>   }
>>
>> -static void intel_pmdemand_wait(struct intel_display *display)
>> +static void intel_pmdemand_poll(struct intel_display *display)
>>   {
>> -	if (!wait_event_timeout(display->pmdemand.waitqueue,
>> -				intel_pmdemand_req_complete(display),
>> -				msecs_to_jiffies_timeout(10)))
>> +	const unsigned int timeout_ms = 10;
>> +	u32 status;
>> +	int ret;
>> +
>> +	ret = intel_de_wait_custom(display,
>> XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>> +				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
>> +				   50, timeout_ms, &status);
>> +
>> +	if (ret == -ETIMEDOUT)
>>   		drm_err(display->drm,
>> -			"timed out waiting for Punit PM Demand Response\n");
>> +			"timed out waiting for Punit PM Demand Response
>> within %ums (status 0x%08x)\n",
>> +			timeout_ms, status);
>> +}
>> +
>> +static void intel_pmdemand_wait(struct intel_display *display) {
>> +	/* Wa_14024400148 For lnl use polling method */
>> +	if (DISPLAY_VER(display) == 20) {
>> +		intel_pmdemand_poll(display);
>> +	} else {
> Maybe this else branch could be written as its own function as with if branch. Anyway, this might be a topic for follow up patch.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks for the patch and review. Pushed to drm-intel-next.

Regards,

Ankit

>
>> +		if (!wait_event_timeout(display->pmdemand.waitqueue,
>> +
>> 	intel_pmdemand_req_complete(display),
>> +					msecs_to_jiffies_timeout(10)))
>> +			drm_err(display->drm,
>> +				"timed out waiting for Punit PM Demand
>> Response\n");
>> +	}
>>   }
>>
>>   /* Required to be programmed during Display Init Sequences. */
>> --
>> 2.25.1
