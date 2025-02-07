Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B139A2C8A2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 17:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C9710EB70;
	Fri,  7 Feb 2025 16:24:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTJHqVqP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D7310EB69;
 Fri,  7 Feb 2025 16:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738945356; x=1770481356;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=1+DTh2smQOmzrMgz7nBqHsQQPIph7dfKpp5Gs4JoCGU=;
 b=nTJHqVqPSsiB+Ux/r6l9CtB1oGcXwZYYpb8mCmJOnaor2O5rNqqQUdWt
 dnWF3yLW+vgwyEywBdDhMoZ6hk5/lpgR9/xKUgROXJ8EC2N/uaDt2AOdn
 fZ74kCnIrLioi6MGQ6++A4VuyeNiC8z4pXOpN1zFAjcjBPh6V0t5PMSxs
 TFeBK2S/Y+TiOzAS00vZsdkE87QAQzZJ8DFFdnGwzmBlq1q3zI9Ya249j
 Sf6UhwZT0gZUHBUFxfUsq5NSvxVmArxwNjh/GZ0E4Zdej4FjtXB8ClVzC
 jlheY5XqJOTwxj0P1YjH3hNS+pjvikR6C90OvSYC1Ozkr8x1I3sjo6It5 g==;
X-CSE-ConnectionGUID: uNp83eslSJ+llK4eZzC34g==
X-CSE-MsgGUID: xbYHAqtcQjq3/o57TABcLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39462494"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39462494"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 08:22:36 -0800
X-CSE-ConnectionGUID: Be/1K9RqQmaTK7RniGlH9A==
X-CSE-MsgGUID: T0HWV254SMmwuCAL2vrJ/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="112072403"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 08:22:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 08:22:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 08:22:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 08:22:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Whx4CX1K6gJl+4bBWFy+8ImgX0cARwMLFB2PSg+OVDwkpAe7sllJl2WW1lXYnnvoOxR7yBbRuhZTpMdr7mJAsIzgdpYN3tWDPxOL2PGGiE3Vp5zV305hZ7SbHLtkRAGLxuhTxq87KDcVX9WXq/w8p4kNLv+Z9+nhHb1gMW5xldILlKkM3+Y7URMivkskVqXzpB8Spsv7BG0HDQ0Ao6/PvWuRm9lzo9sbcmwBpFkfHathqd1q6Bz/bnpsSSxvqf7SSV/EYtgTS8Xhf2xh/Q9w9GQa+9+Yhipam9/uRo0tzvAP+PzPjOFUJjRc6n48ixzmtuDUb+j3q+D8ul6I8RIlWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3neqCZkgpM6vedUmhplTi8kkC56NRqdwxLXPvk5rVmU=;
 b=q1gMllAlmMpTnLCO7bW/41w0ba/fKsDEdC8ObnHU6J6vJoxkZrT460ZpkfoSSYwSO+nFYfYrhiYulLdJVxQZ3rL+8QolpPufcEE2YwmGi/c1g0qod49notskbmXAZ5VCdH2HvNGd/PugIWKe9W8UqpIQdNvgdM+OLY/QUrtT8hhmHHqcmvTyf1L9HYIYMiFn++ZWy6WGtwPY67uFq++JtxUgdDDicH+qvnkgg+9ft8sBTuJcmb5aUGYDH3hEpN8HpOALANSeRBBvHvcYwPa7aIBndzxw8tW2VzmwetN5Pm5JPmKjCgPrdX8kDcWBJsyNIorqw+jDdoH1eh0V10R/9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.24; Fri, 7 Feb 2025 16:22:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 16:22:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250206192148.53610-3-gustavo.sousa@intel.com>
References: <20250206192148.53610-1-gustavo.sousa@intel.com>
 <20250206192148.53610-3-gustavo.sousa@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Use display-specific platform
 checks in intel_bw.c
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 7 Feb 2025 13:22:28 -0300
Message-ID: <173894534825.1963.9135467857710590685@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0301.namprd04.prod.outlook.com
 (2603:10b6:303:82::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6068:EE_
X-MS-Office365-Filtering-Correlation-Id: d0472474-aab5-4db2-e8d2-08dd4793a031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXBaRzk4dm1QOHNsUUZMRTlzUUoyNTJXaUxXcU1Jckp0SVdXcTM5S2tZTkNX?=
 =?utf-8?B?T3VvMDR4WXBEWklKSkYxcjd2YUlFT1pmcEh6VVpZVFNjMWswQWJYRkxIMlpW?=
 =?utf-8?B?QklObmxES0orTlpyTDhkZXgzMXVSS3lNOEdOVlZDR3lIZFFXV0xRVkljZndO?=
 =?utf-8?B?OUhMWGltNDB5UE1HVXVlZURpeTBtMXNMN1F2VVJnN0NZbEpxa1Z6VW5qTzV2?=
 =?utf-8?B?ci9LZkJQQ1VpSnBMNk1TUzNnYkRPQWJEcEZycFNoT3pOczl0dUNES0p5TzRO?=
 =?utf-8?B?UnIvOWl1eUFvSHVQb0FVZzJoUWxud3JJWDFjNWNEMTArZk9OdlNqa0ZDbUNO?=
 =?utf-8?B?VVQ2aGhpT1F2KzI3OFVJdjh6Tk04cTNVVkt0VXZiRWtxdS9IMWZ1QzZnNUpU?=
 =?utf-8?B?c1c0NkJXc1hBNXJGRzM5L0gyZUxNaEpwakVQdTNELzVMQy9UNDdsejVnZkFE?=
 =?utf-8?B?RXJwaG5qUndjZUxjSFBuSktadjYrOTlpcXoxV2hEOC9lQnpOMUN0WWZlaWha?=
 =?utf-8?B?SVV5ek4rOVV1ZnIyanN2bzM5YzVxam40eDVTZDlCYmhrOHhWOWY1eDEyaGVu?=
 =?utf-8?B?dEg0NzNTNUdyN1MreHMvcFBuSkJBL1FPQ1gxWFJpdjNDK05mMWZ6MVFLNWFm?=
 =?utf-8?B?dU1USUIzWHl0VmNaQUxIdzgzL2o1Sncya2xhMGZoRG9BdjN1V0hOOGNacHFw?=
 =?utf-8?B?RncwZmltcVFJV0kxU0tvN2VZNE5oUTJCcjNLYmkyejdNRnJmL0NBZkxCZzE2?=
 =?utf-8?B?ekdNZ1N3L1VJaThQRVNZNGY0VldyejBVUW4xbk1OTGs0UEZqeUh2UVpnOXdS?=
 =?utf-8?B?WHcrMC8zY3hMdWtnbENuVU1UaWlhOFd1Z0VVd044aHR5QTJjWnFZK1ZMei8v?=
 =?utf-8?B?N0t5djE4UWJxOE9qTkxaa21pVE93VmpLZjNXdHNjYTFnQ3hkUTVKSlhnTGd1?=
 =?utf-8?B?Vm01S2hta1RaRTRZOU9DbnRxL1dxTTUvbFRNUEJMUVRVTDAzTWxveExQbDZh?=
 =?utf-8?B?UWhhUm5mcnp2djltK0ZzS2JIWW9peEpmSEtZdSttQkpuRVpjT0lxTisyTHBL?=
 =?utf-8?B?ek5aSkEyR00zS1lpMWE5ajNUc2FnaUN1WTljaE9VdWg2MURHSEJLK3RwN2VE?=
 =?utf-8?B?ekwwVVY3WFdsVEpYNDNaY3JBR1BaVHlaQlI3cW1CYzROdVN5bWFBcjlDbzdE?=
 =?utf-8?B?R1k3VXg1U2VERnR4YkNzQzV0cm5hc0UzTU1WNWdaMFh4MnZZd2xFbGNIZkU0?=
 =?utf-8?B?aFY2aGppQ0FIVXZ2bk5VNmtIZmtXSGNhZnpiM2lWVjFhTVdmZ3NHTkRvSG93?=
 =?utf-8?B?YWQwc3pNbVNEa2dRNU5Xd05XY2x1MmhheXZGZkdjb0hNdmx4Q1VZTjM1bTM4?=
 =?utf-8?B?NnRsVHR1QkNtQUlhSHhPQVlvUzE5UDJFODVBNWFUMkJ6cmIwclE3VnhuSFd0?=
 =?utf-8?B?eFF6OFFKOWVpM3hJWnZQZ0RaVkJDaG85SyswQ0NzTXNsWEprMTJ6eG5pZHJ3?=
 =?utf-8?B?VmdQZzBwZXgzdU01bnB5MGpiY3BId25POE5vdnEwRzJuYTlXTEtMKzY0K1VF?=
 =?utf-8?B?djlYQkpxOHN5NjZJeVljZWdTNmI0UmtmUXpRNXFkM0tpZmVaRitXYVNMWThH?=
 =?utf-8?B?SHhOWFJaYzkvd3IxQk4zcXZiRUpqM2x0Z0lNellQWmJITzhkQlR4R3BWaEFT?=
 =?utf-8?B?M1JleHREY0lrUGJ5SDMvQmRKMUh4Z0Z5c3BibEliQ2VlU2ZMVVhIcTZXNTRj?=
 =?utf-8?B?RUtsYnJESkxoVW1peHB0V2F1NHlqLzNEVHQ2YnZvaWQwSVlEYmpZU1U0dk5s?=
 =?utf-8?B?Ukp2ZlRUV1hsN3RWUG9sbVdDZWEyMUxNRUR3Y0FRc2FiVElxaGJhdDZaR2tw?=
 =?utf-8?Q?SeVJYI/UKBqnc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akUwVjYzdlRWWUwzbHJBWlRjZ0RiNzVzYW1FMW9jOEZCcmdzbVFzT3NtYXlD?=
 =?utf-8?B?QW9seDdGOVYwNmRNelM4S0NwL2VJeTJLQUVJMVN5SSsybEpyaTlOYVZxa1Y3?=
 =?utf-8?B?MXVoSGs3a01QYUJCbk9vVDRWRkUwSThLcS9pY1RDdjgwaEp5R1RFVU9wRWd6?=
 =?utf-8?B?L0pkcVd6QXlpSGloVjVkVDdWREloSW1zVG13RHM3M2N6OUF6YXZuSmdJMHgz?=
 =?utf-8?B?Z0dhSkpjZmJIWWVzRFpkUkZGVCtRV0FSWC9xWmpFM2g0YmMyR1FxTVR2eXRT?=
 =?utf-8?B?OGFFL1ExRDhVdGJPcS9ZUkpUMnJ1cXh0MVRRMFJwS3VUR3lNd0RmZkhNN28y?=
 =?utf-8?B?VGdHd0V5UVJEZzNyN3lLZDhZOWFRQzNRUEwrajJ1QVR0VVFHWktCWlB4NHFQ?=
 =?utf-8?B?eEZCdGdLT3FwbHYvRkZja0VQbkVJSnBEV1Iyd1JIWkN1ejBsT1Yyc1YvNTJX?=
 =?utf-8?B?ZHRQRDlqY3JFd05hb2lVanBRZE92SFBraXAydFB1aUR0eVlDeUQrTUlBN0lI?=
 =?utf-8?B?T2lObHpqQVlDRi8yb2VNNy84cXRGQzQ1VEJLVjd5UHNkOFNNVmZidkpVOUVC?=
 =?utf-8?B?dW5aLzhUb21ZTkkvTkl3NEUvaHZMU204Sk8zRkRnUzRPc0JiQ3IyZUY4Vnlr?=
 =?utf-8?B?ZGg1eUlxNmxPbHNvekVDekplZ3lzMTkxZFFja3dGbEFGQ0Urb0V5S1VwWE9k?=
 =?utf-8?B?WENpZUlBVVdLT3I3bXB0ZnZwQ2ZaaUx1RzMxUHJhVC9abWRUV0F6UlVxcUtE?=
 =?utf-8?B?bzJFY3hHbitwYXlwVzhVV3FobTFwL1JRam04bFZBbDJxTW8rN0s3R25TYS9M?=
 =?utf-8?B?UW8rdzRJT3ZoTUZQOEc5Y1VBeVN1N1I1OEY1aTAwVGxVQmp6YU9mVHdRWjJt?=
 =?utf-8?B?UW16R0lFc3BpM0JEMkNWNEt5Q2xCQ2tWWVk0QzdiVHo4MWJFemoyWU81VTNB?=
 =?utf-8?B?ZExnNmFSZDJUMmtvY1hBTDJBeWk1K0NRYnUydnZnRks4WkxHaXQvU1lvZmlJ?=
 =?utf-8?B?QlRydDNFbVVRT29ySk5RalB0d0JZbUhLK1FpTE1XYWx1anJxeC83U1ZEQlZR?=
 =?utf-8?B?Z0lSLzc5UENQcnV2VldONHV1a2llYnNnZ250VDY1OXZvKytOOEV0dXhLZ1Ra?=
 =?utf-8?B?ekh5THZkdjNRblNJY014SzNmTFhWTHZ0ZW5xOThXVFdWaS8rcjdrYUdiQUpO?=
 =?utf-8?B?dlVXV2VpNE1DNVdHbmlXOENQbTU1TkZNVDlkOHhZZUwzd1JtUjk5eEVEVmJw?=
 =?utf-8?B?bUxkRDZrZG5ialB0cVdQTkJ0THBzYmhNeXNqelBYMElwQ3RLa0tJdXhibWZE?=
 =?utf-8?B?QmppUkZ2WjRENnRLL1FNVWJpelNMb0d6a0tCS0JROXlzNUhYc1FwVldiRldX?=
 =?utf-8?B?ekpLTWlHYUtMMFpEUzVySUZybEc2K2hUc0thM2lRaFNoR09rTFNZNDdFN0dC?=
 =?utf-8?B?YXFxelNqd3M3YUlCSnVZTElTTzI2THdQQk95aEtPWjFJWGJ2MkI1bkc0S2tV?=
 =?utf-8?B?ZTVuTzRwSmxaRUhnRzBrSm4rNjJsNU5pNmhqcGlxYytma1A1ZnlQSmtxZEJi?=
 =?utf-8?B?L09LdnpIb1pzU05DT0JkdFdyby9jQWp0K1NBRk9rNW5wSWlxcHhpb1RjbVE2?=
 =?utf-8?B?clYrcTZNUWlWODQvZzA0YUM5aDdYdzhDRHQ0NUdRZlBwdXExQ1dDaXNIeHlv?=
 =?utf-8?B?Zk92OVhVVURJTnV0cUhUQVd4OVExTzBUbUwvcjN3UDY0YlpwU0lWMmZTUUpE?=
 =?utf-8?B?RmZjaXg5K0dDSEthdkZ0Rm1jS0RORDUxa2NWdkpaR045SFdZSDRzT2s5NmF6?=
 =?utf-8?B?U1VaTDluczlpU0VqbzdBUWVrSUtyL0pGOTBycGJXaEJWeCtJR0laVzhSaDBV?=
 =?utf-8?B?V1YvUmZvVXJsVkI2WCtsRUtpYWV3YXFEWmJMQy9PMkVDTHJXWVprWlJDWCs3?=
 =?utf-8?B?dGsybUt3WEdOSTRwUGY4R3NGM2haSHVjLzFUVWNBeDhVaFhEMDJ1RVljbHBq?=
 =?utf-8?B?TWt4bGpURTBiT2djRGtCQlYwT2lOYkxHSlRiRXNtMk5FSCtOd0xYSUZWY2lT?=
 =?utf-8?B?RFA4N2x3aWRjeG9VREJZMWdEOU5OYjVIbUFIcVhuNFhYeVVldHRWV3FEbHY4?=
 =?utf-8?B?RWthQ0xpSHJBNTloTDRWd2tJZHBQRVIzQ3grVGhuaUJ0Mmx1aDVlK05henkv?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0472474-aab5-4db2-e8d2-08dd4793a031
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2025 16:22:33.3416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6dxroxl6sg0ce1wVpQIk7udzqQwh7lk8NipOKS3Cdj5mm7FPipQReBPQeLynbdiN90mwea6vAniu/TDFXZM0Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
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

Quoting Gustavo Sousa (2025-02-06 16:21:29-03:00)
>Add one step further into making intel_bw.c xe/i915 agnostic by using
>display-specific platform checks.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 77 ++++++++++++++-----------
> 1 file changed, 43 insertions(+), 34 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index 0fb41e6cd8ae..e52c66eca93d 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -78,6 +78,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915=
_private *dev_priv,
>                                          struct intel_qgv_point *sp,
>                                          int point)
> {
>+        struct intel_display *display =3D &dev_priv->display;
>         u32 val =3D 0, val2 =3D 0;
>         u16 dclk;
>         int ret;
>@@ -89,7 +90,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915=
_private *dev_priv,
>                 return ret;
>=20
>         dclk =3D val & 0xffff;
>-        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv)=
 >=3D 12 ? 500 : 0),
>+        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display) =
>=3D 12 ? 500 : 0),
>                                 1000);
>         sp->t_rp =3D (val & 0xff0000) >> 16;
>         sp->t_rcd =3D (val & 0xff000000) >> 24;
>@@ -155,7 +156,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_priv=
ate *dev_priv,
>         struct intel_display *display =3D &dev_priv->display;
>         int ret;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 14)
>+        if (DISPLAY_VER(display) >=3D 14)
>                 return 0;
>=20
>         /* bspec says to keep retrying for at least 1 ms */
>@@ -206,9 +207,11 @@ intel_read_qgv_point_info(struct drm_i915_private *de=
v_priv,
>                           struct intel_qgv_point *sp,
>                           int point)
> {
>-        if (DISPLAY_VER(dev_priv) >=3D 14)
>+        struct intel_display *display =3D &dev_priv->display;
>+
>+        if (DISPLAY_VER(display) >=3D 14)
>                 return mtl_read_qgv_point_info(dev_priv, sp, point);
>-        else if (IS_DG1(dev_priv))
>+        else if (display->platform.dg2)

Woops... This should have been display->platform.dg1.

That would explain the -EINVAL that we see in BAT results for DG1.

I'll recheck for other typos and send a v2.

--
Gustavo Sousa

>                 return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point=
);
>         else
>                 return icl_pcode_read_qgv_point_info(dev_priv, sp, point)=
;
>@@ -218,13 +221,14 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>                               struct intel_qgv_info *qi,
>                               bool is_y_tile)
> {
>+        struct intel_display *display =3D &dev_priv->display;
>         const struct dram_info *dram_info =3D &dev_priv->dram_info;
>         int i, ret;
>=20
>         qi->num_points =3D dram_info->num_qgv_points;
>         qi->num_psf_points =3D dram_info->num_psf_gv_points;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+        if (DISPLAY_VER(display) >=3D 14) {
>                 switch (dram_info->type) {
>                 case INTEL_DRAM_DDR4:
>                         qi->t_bl =3D 4;
>@@ -252,7 +256,7 @@ static int icl_get_qgv_points(struct drm_i915_private =
*dev_priv,
>                         MISSING_CASE(dram_info->type);
>                         return -EINVAL;
>                 }
>-        } else if (DISPLAY_VER(dev_priv) >=3D 12) {
>+        } else if (DISPLAY_VER(display) >=3D 12) {
>                 switch (dram_info->type) {
>                 case INTEL_DRAM_DDR4:
>                         qi->t_bl =3D is_y_tile ? 8 : 4;
>@@ -267,7 +271,7 @@ static int icl_get_qgv_points(struct drm_i915_private =
*dev_priv,
>                         qi->deinterleave =3D is_y_tile ? 1 : 2;
>                         break;
>                 case INTEL_DRAM_LPDDR4:
>-                        if (IS_ROCKETLAKE(dev_priv)) {
>+                        if (display->platform.rocketlake) {
>                                 qi->t_bl =3D 8;
>                                 qi->max_numchannels =3D 4;
>                                 qi->channel_width =3D 32;
>@@ -286,7 +290,7 @@ static int icl_get_qgv_points(struct drm_i915_private =
*dev_priv,
>                         qi->max_numchannels =3D 1;
>                         break;
>                 }
>-        } else if (DISPLAY_VER(dev_priv) =3D=3D 11) {
>+        } else if (DISPLAY_VER(display) =3D=3D 11) {
>                 qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM_D=
DR4 ? 4 : 8;
>                 qi->max_numchannels =3D 1;
>         }
>@@ -491,16 +495,16 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>                 return ret;
>         }
>=20
>-        if (DISPLAY_VER(dev_priv) < 14 &&
>+        if (DISPLAY_VER(display) < 14 &&
>             (dram_info->type =3D=3D INTEL_DRAM_LPDDR4 || dram_info->type =
=3D=3D INTEL_DRAM_LPDDR5))
>                 num_channels *=3D 2;
>=20
>         qi.deinterleave =3D qi.deinterleave ? : DIV_ROUND_UP(num_channels=
, is_y_tile ? 4 : 2);
>=20
>-        if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >=
=3D 12)
>+        if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >=
=3D 12)
>                 qi.deinterleave =3D max(DIV_ROUND_UP(qi.deinterleave, 2),=
 1);
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 12 && num_channels > qi.max_numcha=
nnels)
>+        if (DISPLAY_VER(display) >=3D 12 && num_channels > qi.max_numchan=
nels)
>                 drm_warn(&dev_priv->drm, "Number of channels exceeds max =
number of channels.");
>         if (qi.max_numchannels !=3D 0)
>                 num_channels =3D min_t(u8, num_channels, qi.max_numchanne=
ls);
>@@ -591,7 +595,7 @@ static int tgl_get_bw_info(struct drm_i915_private *de=
v_priv, const struct intel
> static void dg2_get_bw_info(struct drm_i915_private *i915)
> {
>         struct intel_display *display =3D &i915->display;
>-        unsigned int deratedbw =3D IS_DG2_G11(i915) ? 38000 : 50000;
>+        unsigned int deratedbw =3D display->platform.dg2_g11 ? 38000 : 50=
000;
>         int num_groups =3D ARRAY_SIZE(display->bw.max);
>         int i;
>=20
>@@ -737,7 +741,7 @@ static unsigned int icl_qgv_bw(struct drm_i915_private=
 *i915,
>         struct intel_display *display =3D &i915->display;
>         unsigned int idx;
>=20
>-        if (DISPLAY_VER(i915) >=3D 12)
>+        if (DISPLAY_VER(display) >=3D 12)
>                 idx =3D tgl_max_bw_index(i915, num_active_planes, qgv_poi=
nt);
>         else
>                 idx =3D icl_max_bw_index(i915, num_active_planes, qgv_poi=
nt);
>@@ -750,24 +754,26 @@ static unsigned int icl_qgv_bw(struct drm_i915_priva=
te *i915,
>=20
> void intel_bw_init_hw(struct drm_i915_private *dev_priv)
> {
>-        if (!HAS_DISPLAY(dev_priv))
>+        struct intel_display *display =3D &dev_priv->display;
>+
>+        if (!HAS_DISPLAY(display))
>                 return;
>=20
>-        if (DISPLAY_VERx100(dev_priv) >=3D 1401 && IS_DGFX(dev_priv))
>+        if (DISPLAY_VERx100(display) >=3D 1401 && display->platform.dgfx)
>                 xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>-        else if (DISPLAY_VER(dev_priv) >=3D 14)
>+        else if (DISPLAY_VER(display) >=3D 14)
>                 tgl_get_bw_info(dev_priv, &mtl_sa_info);
>-        else if (IS_DG2(dev_priv))
>+        else if (display->platform.dg2)
>                 dg2_get_bw_info(dev_priv);
>-        else if (IS_ALDERLAKE_P(dev_priv))
>+        else if (display->platform.alderlake_p)
>                 tgl_get_bw_info(dev_priv, &adlp_sa_info);
>-        else if (IS_ALDERLAKE_S(dev_priv))
>+        else if (display->platform.alderlake_s)
>                 tgl_get_bw_info(dev_priv, &adls_sa_info);
>-        else if (IS_ROCKETLAKE(dev_priv))
>+        else if (display->platform.rocketlake)
>                 tgl_get_bw_info(dev_priv, &rkl_sa_info);
>-        else if (DISPLAY_VER(dev_priv) =3D=3D 12)
>+        else if (DISPLAY_VER(display) =3D=3D 12)
>                 tgl_get_bw_info(dev_priv, &tgl_sa_info);
>-        else if (DISPLAY_VER(dev_priv) =3D=3D 11)
>+        else if (DISPLAY_VER(display) =3D=3D 11)
>                 icl_get_bw_info(dev_priv, &icl_sa_info);
> }
>=20
>@@ -782,8 +788,8 @@ static unsigned int intel_bw_crtc_num_active_planes(co=
nst struct intel_crtc_stat
>=20
> static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state=
 *crtc_state)
> {
>+        struct intel_display *display =3D to_intel_display(crtc_state);
>         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>-        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>         unsigned int data_rate =3D 0;
>         enum plane_id plane_id;
>=20
>@@ -797,7 +803,7 @@ static unsigned int intel_bw_crtc_data_rate(const stru=
ct intel_crtc_state *crtc_
>=20
>                 data_rate +=3D crtc_state->data_rate[plane_id];
>=20
>-                if (DISPLAY_VER(i915) < 11)
>+                if (DISPLAY_VER(display) < 11)
>                         data_rate +=3D crtc_state->data_rate_y[plane_id];
>         }
>=20
>@@ -807,10 +813,9 @@ static unsigned int intel_bw_crtc_data_rate(const str=
uct intel_crtc_state *crtc_
> /* "Maximum Pipe Read Bandwidth" */
> static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_st=
ate)
> {
>-        struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>-        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>+        struct intel_display *display =3D to_intel_display(crtc_state);
>=20
>-        if (DISPLAY_VER(i915) < 12)
>+        if (DISPLAY_VER(display) < 12)
>                 return 0;
>=20
>         return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_=
state), 10), 512);
>@@ -849,13 +854,14 @@ static unsigned int intel_bw_num_active_planes(struc=
t drm_i915_private *dev_priv
> static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
>                                        const struct intel_bw_state *bw_st=
ate)
> {
>+        struct intel_display *display =3D &dev_priv->display;
>         unsigned int data_rate =3D 0;
>         enum pipe pipe;
>=20
>         for_each_pipe(dev_priv, pipe)
>                 data_rate +=3D bw_state->data_rate[pipe];
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 13 && i915_vtd_active(dev_priv))
>+        if (DISPLAY_VER(display) >=3D 13 && i915_vtd_active(dev_priv))
>                 data_rate =3D DIV_ROUND_UP(data_rate * 105, 100);
>=20
>         return data_rate;
>@@ -1137,13 +1143,14 @@ static int intel_bw_check_qgv_points(struct drm_i9=
15_private *i915,
>                                      const struct intel_bw_state *old_bw_=
state,
>                                      struct intel_bw_state *new_bw_state)
> {
>+        struct intel_display *display =3D &i915->display;
>         unsigned int data_rate =3D intel_bw_data_rate(i915, new_bw_state)=
;
>         unsigned int num_active_planes =3D
>                         intel_bw_num_active_planes(i915, new_bw_state);
>=20
>         data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>=20
>-        if (DISPLAY_VER(i915) >=3D 14)
>+        if (DISPLAY_VER(display) >=3D 14)
>                 return mtl_find_qgv_points(i915, data_rate, num_active_pl=
anes,
>                                            new_bw_state);
>         else
>@@ -1201,8 +1208,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_s=
tate *bw_state,
> static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>                                   const struct intel_crtc_state *crtc_sta=
te)
> {
>+        struct intel_display *display =3D to_intel_display(crtc_state);
>         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>-        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>         struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe];
>         enum plane_id plane_id;
>=20
>@@ -1223,7 +1230,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_st=
ate *bw_state,
>                                        &crtc_state->wm.skl.plane_ddb[plan=
e_id],
>                                        crtc_state->data_rate[plane_id]);
>=20
>-                if (DISPLAY_VER(i915) < 11)
>+                if (DISPLAY_VER(display) < 11)
>                         skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
>                                                &crtc_state->wm.skl.plane_=
ddb_y[plane_id],
>                                                crtc_state->data_rate[plan=
e_id]);
>@@ -1278,6 +1285,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i915=
,
> int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>                             bool *need_cdclk_calc)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>         struct intel_bw_state *new_bw_state =3D NULL;
>         const struct intel_bw_state *old_bw_state =3D NULL;
>@@ -1287,7 +1295,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_stat=
e *state,
>         struct intel_crtc *crtc;
>         int i;
>=20
>-        if (DISPLAY_VER(dev_priv) < 9)
>+        if (DISPLAY_VER(display) < 9)
>                 return 0;
>=20
>         for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>@@ -1397,6 +1405,7 @@ static int intel_bw_check_data_rate(struct intel_ato=
mic_state *state, bool *chan
>=20
> int intel_bw_atomic_check(struct intel_atomic_state *state)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         bool changed =3D false;
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>         struct intel_bw_state *new_bw_state;
>@@ -1404,7 +1413,7 @@ int intel_bw_atomic_check(struct intel_atomic_state =
*state)
>         int ret;
>=20
>         /* FIXME earlier gens need some checks too */
>-        if (DISPLAY_VER(i915) < 11)
>+        if (DISPLAY_VER(display) < 11)
>                 return 0;
>=20
>         ret =3D intel_bw_check_data_rate(state, &changed);
>@@ -1475,7 +1484,7 @@ int intel_bw_init(struct drm_i915_private *i915)
>          * Limit this only if we have SAGV. And for Display version 14 on=
wards
>          * sagv is handled though pmdemand requests
>          */
>-        if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
>+        if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
>                 icl_force_disable_sagv(i915, state);
>=20
>         return 0;
>--=20
>2.48.1
>
