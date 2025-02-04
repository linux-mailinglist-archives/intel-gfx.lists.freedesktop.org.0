Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A91FA27234
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 13:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DD110E61A;
	Tue,  4 Feb 2025 12:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEBz7WZK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B86310E637;
 Tue,  4 Feb 2025 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738673452; x=1770209452;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=9iEX1Wjl1HevmpIczgpKI0FJK+A3+9wcP+BRQLx4g4g=;
 b=SEBz7WZKMJ+POzpa9DxsFruZ3VslZ3xf9wjtHatAtKe5Otkd4XKJeqaS
 HSQMIPnO+q7F7uRt2jtD1C2iVWxsJFuKakoIwmOoXV/lFvTUHpjmT3ecI
 BvYRriq60b8Ohrar9kXPGS0tMhjLSw0Z2RG+JN+/HxE6nV1hGD8uwbNKQ
 TOBeBbCU3YP7zFuYsKB5/cEb7Q1I5C/4CTC3LS3eGPrk+B90EAlt2aflP
 vlIvZ8OBS3zq4Ydtw1kSSW6RnROgFgCHbw/o0HA9zq4w1RD/gu+UDrDCq
 LxTtf+AAk20PhiXy835Cm8U7YQvhcyzO9hhBKa/DQHkDUDKF7qJ3JRaR7 g==;
X-CSE-ConnectionGUID: k66UrTboRZiL2Q4ZLUfLYA==
X-CSE-MsgGUID: zGUozOKPRg6rt15g99cZ3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39335250"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39335250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 04:50:52 -0800
X-CSE-ConnectionGUID: HpGvQmyNQeaisXk2eSaE5Q==
X-CSE-MsgGUID: IcGxKDqvQoKSI3XzEaIDug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110764965"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 04:50:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 04:50:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 04:50:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 04:50:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HjR24ijNQlaKuWwvJO5E8uc/xCyeA2Z1G6Iqs2N7LXc/qzzL8aoDfMtGzRQKEfAnIiLJNgFiggZvTBoLpvkPNf3WMj8Hp6Ys2bstghWO2d4pax+uuN3kavmRdNF3wLbAuL9tDNPNSWKpvueSjLxUXA8sCjf1LUhJMmqc2oyeZgxCi/vBg1MquGCIwMX70gT+vGkPF1I+hfHLpMYIjDna09YcTrkKxqR0163ilPadnihC6htw3ZYs43qloVH7MQB3qka//mgDs5P38FI2zsrL3/psEPFBwqnTB5jWFeYBFuFoehTLhWArPa/JW9gqZBjn0SoKv5eEgCH+m0S4MRoxkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l+LYaKL8nAlHEWnoIocl61CPal7nDaO4zAT5rH9Dr7A=;
 b=svO5RtGpy/knuVlFyFsJuvgSxZyV+oG7VdIAtHPMHJ3gpQNUSGHMVwqJWFqGCmPYYA5kL55qgPfAk4z1P5tixEv27Oi0vRDfT4b6B40lG5iJ8FPiiavCAoaw+0q3DlxwGXgJ2RGBZiANw81vwFZ/+K0auYIPd7gTglpdNd7hq5YLHpDqB1SxBnX7gYyEK3YHRAXCwEEwD2ejZC/SgFaNBEp2bj7GyvEozW/0497epFoW50mAXoVi/bzGPTes3rbbLteB7/7yJ6NxYjCa+S69kkJB8u3TACDZMS6svy/zoUwm2xP9h4E4319hQ6S8W8w3PecAc81RHPV+jIqo4dRfig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 12:50:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 12:50:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1b46838458692079e07251286f0b6ff388e2070d.camel@coelho.fi>
References: <20250203205941.251754-1-gustavo.sousa@intel.com>
 <1b46838458692079e07251286f0b6ff388e2070d.camel@coelho.fi>
Subject: Re: [PATCH] drm/i915/dmc_wl: Track INITIATE_PM_DMD_REQ for DC5
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 4 Feb 2025 09:50:41 -0300
Message-ID: <173867344150.1635.2419403316434821729@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0241.namprd04.prod.outlook.com
 (2603:10b6:303:88::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: cb740a89-3d48-4b48-b3a1-08dd451a8bba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZE9idG42QTA4VU5lYkw0VzlOdy9BamtpdHFTdE5GbHJzRHBoVjk5M1ZUTzEz?=
 =?utf-8?B?S3l2UHJKbytzbkFPNHJiSmloeWdpVlVaajZ5dVpiOGMxdi82QnRScDJJMHEw?=
 =?utf-8?B?L2tUZkJsMzAwcDlUTWJ3ZHBER1ovaWJFczNwaWhmTjJLYmJWQW9Qc1dYcHN4?=
 =?utf-8?B?NFRkcnlIUHRWYU5pMWs4dXZld3dQQ2xUSWpKQk4rR0FJTGozYW13QmVWNUIv?=
 =?utf-8?B?TFhWSldsTW9hVjltY3B2dTRmNlFncGNBQlJ6M1MxR2dySi9NQnpYQXhZclJj?=
 =?utf-8?B?emppdFZ1bUluUE1KbHgvWmlGSUZ0R3J1ZWtoMmU4eklBNURabloralMxVTB1?=
 =?utf-8?B?eTh3UUdXclF1QU1XaXA5ZDNGRHAwZlg5TzFWdEY4a0JoOEttcnlWK1hyL0Jp?=
 =?utf-8?B?aWQ4UDlIb3lNUlllM3MyQlM1RnZKenFPUUMyc3dZOFVSSlZxMW9BcXJPQU1h?=
 =?utf-8?B?RS8vVVNvQnMrRVduS2R3R090MGVidnd1TTl2d3JCRkh0SEZDS0c1VGhUSE5l?=
 =?utf-8?B?cHZlaGd4ZFI1WlNsRHhqcmpOZ2ozZy9PeWp5SzB0QmZQSmxVS0xZNkpCMHpu?=
 =?utf-8?B?VEcxa3lSMnlWL2doLzN3VElzYnJuNkNlZy9UZkF3L2hmTnFqT0ZXNGkwclRa?=
 =?utf-8?B?UWxHbFdEdEYweit0WjF2U1F6QjROTmdTNjEzNlNNRVZtYUJwSTlvRm82MWM0?=
 =?utf-8?B?cFdNcmhONHVkWUtndGFxUXlyUmphQWRZejQ3UU82c2Y0SzVaTHZIKzJnd2JU?=
 =?utf-8?B?NFpvMzk5NElVZHJXVWg0N0tvNjA4WXlHRlQ0dmpBN25EdHg2UE5qd2Fzd3NX?=
 =?utf-8?B?ZmsvbVY3cGlRazNENi9GNDVRRzZvYS9oSGhoalRBTGVrN2RLQVFTOC94eisw?=
 =?utf-8?B?aDNsNTVENDRtVmxjM05ZU085NkFaVzFEU2FuUThBSDlGUU9FU3dHOURDRUli?=
 =?utf-8?B?SEhrT3I1UkUyazBSeVErWEJvc0FHdHh5R21HcnhvaTRQU1JmK09kUmM0YTBn?=
 =?utf-8?B?dndSR2xpK2JGZ01hVTBFblhpeHpNTTV3K0E4QXhoRVNSTVkrS2YyWjN6aFh3?=
 =?utf-8?B?ZFl6blFSN20xRmhuNk9PeWFUWTZnZHErNHYzbUViUFM5THZHd2hDcVdBK011?=
 =?utf-8?B?VW1CTTJWUnJQSTRiOGVJN0lyOVZZb3lMNTBXK29Kc2twZktlaEtTMVpQNEwv?=
 =?utf-8?B?eW9QV3U0OVJ0NUg2V1NLZzZOeE53TFd0WEQ5bHhjcnNNY1JoNTV5KzUzUmti?=
 =?utf-8?B?QitQSHowOU9LYXRSU2JPVGg5S2RSY0JmZm9lQ0xnNkRhWU9LcStMUVJ2alFH?=
 =?utf-8?B?U2xsRU56MHpkdlJtSXZBbmJVRmg1NFYrNHowZXZxNGR0YXpFZU9JRno2VEw3?=
 =?utf-8?B?LzloYW9zTXRYQkRJU253SDB0aVdhRmhjMjNQeXNlRDhyMHRkMzZGVmpwei9V?=
 =?utf-8?B?OUt5VkljRStRNVd1bGRyMDdPNXVmU0ExY3E4WENDSnJ6cWltVzFUdmtjVENR?=
 =?utf-8?B?aGoxcVFXd1lVeXdQa0UxZy9hcWZHTTNOZXNtYmJjbzZHNjZ6THpjM3RCcklG?=
 =?utf-8?B?K0c3Y0s5QXhYUklrZCtuUkdZT0JKYU5yeE9vVUg4LzRvK2psdDJCZ2ZBYWpD?=
 =?utf-8?B?NEZOTWkzQVBqOUdEMndUS092Ykp0cHkrUG1LUzNTRGtxMmFjSlV0dC9SOG1T?=
 =?utf-8?B?dWdHVjhYTXgrSHNFaElOV2VpNWhGR1FhanNtNUZCYnhvdkp2UkRqb3lUVHlX?=
 =?utf-8?B?SHJvRDV4QUxCaUNGOUdEVUt3YWMvbks2RWVpSm5Dc2Y0MmxkeW1SQzJNUEgz?=
 =?utf-8?B?L0h2TXJ3M0dMbm1SMU1ySnN1TENqZy8vYlBkdjlrZTl6cTQ4TURUUjNyMVhD?=
 =?utf-8?Q?VRRaw0/n0ufF/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHpQSW9INVBzMldQRWNHWUVmbWlKMVEySVZkclFMQUFIRnp2ai9GdjRscG03?=
 =?utf-8?B?Y0Y2U0txbVRpaFc4YzNDaUc2bmlVSGlXbE4raWlyQ2Q4Z013bzFIV21UbE5O?=
 =?utf-8?B?NkttOElWRlo2VnhianBLbkxKSk5pdGpVcDhLZDdLcDQyc0g2NlpTQlhYVFFM?=
 =?utf-8?B?dXJWcjNoN0xxVFpqWUxIUDBESm5BZjN2SS91Tm8rVHYzTFBpRnBRSjY3Mitm?=
 =?utf-8?B?WUptMHpoVzROZ0t5bXVPTndHZmpuNmx0d0tOa2dwWWpTQTgzekZ2aUdWRlVN?=
 =?utf-8?B?OEVjZmJhVW5mTTBWeG1Ld0VkU3BIb1g1U3BKZk5pSU9sTUwxaE8xUnN5cXp0?=
 =?utf-8?B?WTV3dFRRUlRDY21VbVNvV0JpYjQ3OXJqUmpTczZzdDFaVWxzU1UyVCtmdmJO?=
 =?utf-8?B?d3U5V3Jwb201OWxPT2MxelhHMUd6enJqMEZaVU5EMFR5c2ZBTm5rdXJibUlK?=
 =?utf-8?B?NkVCRUowb3IrVlhLWU05UUsvdzVQWnRheWk1VHEyOGw1b1k2MFFtVDJqNUlB?=
 =?utf-8?B?KytLUkRSMWlZUTM3aGJJU1lXVTNLRDNQM2Q1WWVHQmFhSHZDc0NSRk4rWlc2?=
 =?utf-8?B?ZE91d2dDL2UyS0pJMERYdS9CbHZyVkJBWitQU29IdTRjRERSSERINWMvUmtj?=
 =?utf-8?B?WnF5cXgyc2R5em5DR0tlaVBDcUhCV2dKUGcwc0RzVVRvQ1pjaW0rL1JNL241?=
 =?utf-8?B?dVAwMFAzQ2MwVmhPbWhWZFlyZkJJcVFhdk5jcHkvMkdXeU50b1lEUnQrT0tw?=
 =?utf-8?B?eEZZbm1GNGRWeXhTQ0ZKTEtDdmsydUgwTEpBYmhseFRzSml3NlBZeE1pdzlS?=
 =?utf-8?B?VTl0eVphamxGSUFtajZPd0FRSjE1eU51ZGJvQzFmSkdWbkJ3ZTl3SE5xQm0r?=
 =?utf-8?B?dzJzSlhYeWZMamEwQnNjRTJlOVk0SzFSOGl3blVQSngwV3hPS0h0QXRBUmdS?=
 =?utf-8?B?cjA2cDBwUzNGeEptT2lJa1pQMklhM1M0dlBaU01HTml5N1hNai9lZk1oTGZY?=
 =?utf-8?B?Q2diL2d3RkRxRTMyNzVlRy9HNWVjSGxqZmlkcVF6N1BCS0xJMzFWeWMrbDhu?=
 =?utf-8?B?bGcwWDQ2Sm42QnVFVXN6M2h6Y2czYlJaM25VS3ViL3JmbXdmT0lQRUMvNkFU?=
 =?utf-8?B?Y2wwOUJFL2RuTHBERWI4L1pmSEg2Q3ZJcmp5SWxSQnhoVnNRUm1uaVBBbTRL?=
 =?utf-8?B?cndaTTUyeUlVeGREWW1XbmFUMWNWOVBPNjM5VWtPZjZ4VVoyVktWbmVNTGha?=
 =?utf-8?B?MVVDdEZCK1Z4OWFJKzdTN1J3eHdlVWs1Z2lNRk9LZzdrTEV1ZWhlbDFGRWJT?=
 =?utf-8?B?S1AzM3hPTU9Zd2FML1ZEODZpRE0yVVVhTFNCWTYvQzd5cGVsN3dCb2x3ZFVJ?=
 =?utf-8?B?WUFPVDdubnNCRTRuNTZDcVJ6SmJSZERMRk41WmcrQ0wrWXF3RXFUb2gxRzZj?=
 =?utf-8?B?bzlZMlBMV2hKbFlLajRRb1FDT010Tm9CZklaTUo5M1lTV2NFNDdpZ0dLTGN5?=
 =?utf-8?B?QWIwMU1udTl4UUZsenFSUHgxdkxxelFtYVhSN3A0RTJpOE9EUHIyNjdnR1hr?=
 =?utf-8?B?MEFmcHlOU2VrSGM4SDBwRDBJcnBFLzRFWjhUdWdBMVNLNFNpSnh0MjZJQ2lC?=
 =?utf-8?B?ZzRaaEV6bVFENW9RUGlkYi9QdlBKRjVUbWZPc1JwTkVUZmxZbzh2cmNmb2hl?=
 =?utf-8?B?SUNVMXRlSnJEOUxUc0hzUllaWkZkcmhTMmpkaktXWkdjZy8vZjhoV1ZBaWFy?=
 =?utf-8?B?UHlWeStDK0xmazVvOVdUaFFlWUEzbFhYSG1KcUZ2T3BzZG5vT25Wbmh5d1hQ?=
 =?utf-8?B?ZzBsczdvUGhTT04va2htLzFJM1k5cTh1VU5IdjZMVEZ6RDVidWhuandwVFY4?=
 =?utf-8?B?alYvdXJEWmFVVHpZSXFXU1RrNzE5ZVowSmx0d2RxTzEwNWgrQldvUXBHNnhV?=
 =?utf-8?B?a283SXJMbSs3THdnT1RBSHo0ZXpSWGRUWklZMi9TblRGMUxTUHNObytUU21I?=
 =?utf-8?B?cXBGYmhwN0h0RWNjbXpsZ0RFdkZuRCs4QkZHdDMvUG1FWmVxZjB4SU0ycG0y?=
 =?utf-8?B?dmU2Umd2ckNYWEZiUFUzbFRrOWdwS0llMFlGcmJrS3NGUTRNa21FUElQckdv?=
 =?utf-8?B?NzJZczNCTHUzQzJ6QWFQSWNnbDZ4VjlHdWtZQ3A5eE5CVVdZdFJGd0g0MEpD?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb740a89-3d48-4b48-b3a1-08dd451a8bba
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 12:50:47.3600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IlZkrh6Wv1FaEOZF4fWJwU8so+qDknYDAiVIVOAz0bJuybr8+dFlPv8sSTLrrtONpjCnsM+rLCh2jmPSCsPofw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4526
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

Quoting Luca Coelho (2025-02-04 05:46:38-03:00)
>On Mon, 2025-02-03 at 17:58 -0300, Gustavo Sousa wrote:
>> The Bspec has been updated to include INITIATE_PM_DMD_REQ in the set of
>> register offsets that require the DMC wakelock for access during DC5.
>> Update our table accordingly.
>>=20
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index 43884740f8ea..86ba159b683c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -102,6 +102,7 @@ static const struct intel_dmc_wl_range xe3lpd_dc5_dc=
6_dmc_ranges[] =3D {
>>          { .start =3D 0x42088 }, /* CHICKEN_MISC_3 */
>>          { .start =3D 0x46160 }, /* CMTG_CLK_SEL */
>>          { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +        { .start =3D 0x45230 }, /* INITIATE_PM_DMD_REQ */
>> =20
>>          {},
>>  };
>
>Matches the bspec.
>
>Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the review! Pushed to drm-intel-next.

--
Gustavo Sousa
