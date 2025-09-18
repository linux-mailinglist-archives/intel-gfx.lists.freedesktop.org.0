Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05025B84F09
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 16:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9607210E8CA;
	Thu, 18 Sep 2025 13:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gAddc4Gx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D11C10E8C9;
 Thu, 18 Sep 2025 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758203997; x=1789739997;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gh0fxU5y9AMVG8rtqYxy0lYUOE9AczzDofvt7wrEl6Y=;
 b=gAddc4GxfazpKTr7fSBM6SWUJn/Vh1XVC6ByWROp/CHTiBoospFjykH7
 7JBKypHgiqxJyIi5qijXgQgbQv/XGxmLG/YlbkOog/Gt1srg1DLY8eojL
 M+aGPJpToNp9TN4sb1av4oQwLqfd+9HIhgcZMot0VP4Xkt43mA1OVUAqQ
 wIalJiiW7rxizZ/M+4hCBxcaWIvBUPVM/thHUQpFyEUEXOEZ+xLHdQo7z
 cOoN0bgUDuJaWPDELX9fKlNGxF3NDu6ixtIvO24/9zpNeAGFnCLHIMJeQ
 U2805z8GqSnlspHLvHna0APa7qRxtmi2KSoLP7FGBLqqVKbcGkC3zxxYY w==;
X-CSE-ConnectionGUID: bWfKPi+xScWUJOPddGOq+Q==
X-CSE-MsgGUID: +pEs3jeDSyug0KMxAX+dBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="71640621"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="71640621"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:59:56 -0700
X-CSE-ConnectionGUID: NRx8WUbNTmutKd2GLFaWtA==
X-CSE-MsgGUID: AALf5D1VT36Slb+TYwS8Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175473734"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:59:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 06:59:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 06:59:55 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 06:59:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jHeh2sisT0Hqiab8gTtnmIYRQhz2ZC3WS1Okf9xzCmp6pwQOPjigIgEdyp9W6mMhz1zAbKSs5y6pplyEA4N8ClDHwTuCHLZgxUx+aEwOXL1nkTRKo90Dvpn1d+ORZyyLXIncLa7GOOdjDX5OJRvzFWV8DwdnKW7zKCnXA2ZG/Ua4gO/GO7SO9shyFASivazS2c0BHXfICqjznPx5gcFIvrdF46DpJDL6Lz+29/8K1NCApkK2AznXhTvZKkpYBxNiwP++KWzii+QSW2IDt3y6FM2/D436k0xsw80H7jZBwRzQS4fA5Z7+dCIIZ4SVYtpytH5xtD1ANFe6OTHADY0V4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RbinELVDjbgNkcw6hIUYAqX4roVG7HY1X0uC1ypLlOI=;
 b=yS1nibjZS+aFe2SbKoY5/BDpxJ9P6RHWVFscxfVl+vywa+Iwvyb7NYLG+RNWzv8nkqHoe4XUaiySjC9TsDrpkoImIck7TKrB3gCcCE0ylTf7KfS1K8K6MaR81kwlofgjAQOQ8gBHGDruycYIxEdNHzL4Sk83t96Z2rEyRkSAEpOkHdiSQ4wJMYEsJPljXwEMu6XouitzbmwA0aZgJBhU56sZd4MqrhXAJ78qpER+E7ghOF3Sv8jxQMJ0H1yFOfkZX0hglEO2zgrw0w3j8kqW3Y1NgG9a7v5NliDmU97A3AZq3XJ55b7RFN4TMkOIl89oWOMio1482Z9Gjd81kvLEMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB9472.namprd11.prod.outlook.com (2603:10b6:208:5ae::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 13:59:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 13:59:48 +0000
Message-ID: <5637c78a-17d5-47b8-af5a-f20be9ead0ed@intel.com>
Date: Thu, 18 Sep 2025 19:29:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/vrr: Store guardband in crtc state even for
 icl/tgl
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-4-ville.syrjala@linux.intel.com>
 <6ba574f2-9ac3-4da2-aef1-a781f5eb97ed@intel.com> <aMv5OqJuHCdAtQov@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMv5OqJuHCdAtQov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB9472:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d28f800-ca5c-49e3-1ab0-08ddf6bba16f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEMwMkNadmxkMXlvb0FBYUc1d0JEeEJoaUtxRWtyTGVPT2lVaE9vOVpjdTVt?=
 =?utf-8?B?eWdaUHVrYVFqTExvNk4vYld3QnJxaFIvTDg0bHhUamQrayt6eWZRVFhxaHJ0?=
 =?utf-8?B?RGQyZlhRbnIveVpHTG9RcTJMRWhRRFd3dktJeE9vdFNjU3hLMVEvV0JQQ05V?=
 =?utf-8?B?NVVCUURET1pwQ085MmdRK3NGdkM2NVZUcVl5ZTM5SGY1RTRqWlU4UmVaMHkz?=
 =?utf-8?B?eE9vek5sVk93UmhyR0Y0b0g3aHlETVdPbHFDaHV4SnBCQnZQSDVkUXRFQUlL?=
 =?utf-8?B?bWRSUkRvRC8rR0Q5dUoxWGJ2MkhpZXBXcnNrOXpUdTJhaWt3amM5d042ZHZs?=
 =?utf-8?B?bFFERzB2RksrL2g0Q3M4WC81WDdHa0VCdzljM2ptaDhJNkt0S21Hc1plc1Jx?=
 =?utf-8?B?K1hQRldyK2hyMlVnU0lNVExmNFJkeE4vMHBRaERYRlNSZC8zSDgzY3VxRTE1?=
 =?utf-8?B?aWFreVBLOC9VZDFVcmRTSm9tMzNua0REMUpKbkthQXFBRDBOd3dwT0IrK0JN?=
 =?utf-8?B?MDJvRCt4QnRvNWlCYm1aSm0wajBJNG1sdDNtNEhqY0JmOHppaTc1di9Vd3BQ?=
 =?utf-8?B?TEZ4VDYxVG1VV01wS3ZJb2JIWGNxTVRRNWJDVEZvMlE4Y21WK0R3N0hKbVZi?=
 =?utf-8?B?VzMzYjVOOWlUcENjK0NzcElLOEFIOVI5VFhIcjV5SHhvSGtVNlZ5Kzh0Nlly?=
 =?utf-8?B?dUhiTFp4WUdrczllOUNmTlA3c09QdGM1cWgzbytVdVRvd0RXdWhpb3JOYU4y?=
 =?utf-8?B?YXdVRlhXU2RmT3lrSGlsTms3QkN3VkhvM3cxTExvNFVTMEpEWTNkM3NoZ0dC?=
 =?utf-8?B?L2tBWUlRZ29rR3hqZWhDcGl3OUlDbkRXazlPMnp1a3ZCODhQUHNHNlA3OEty?=
 =?utf-8?B?ZDdteFBrSWpnaDRSRzFZTjNod2Nvbm9wMXROelhVWUhGWVU5Qm93Yjl0ZlRN?=
 =?utf-8?B?YXN6VS9CQStOc3hJclkrRlFXRXc1MTRVOUtRRmtNLzhCOGJWaG5QZjV3bFgz?=
 =?utf-8?B?NzEyK3RNOG9rTnFDclNIbVIzWDdEZzdxamZDc2ZNOCtBR3RveDJ4bTdXZXho?=
 =?utf-8?B?cnlqZ3gzaGxQdzIveVEwSnpram9iOHlIcnhyRVd5T3RYMnViSmdiTVRuZUM1?=
 =?utf-8?B?UmtoQ3FWNDJRSkw0QUp1TkhnUHF0UG5VYVZkWVhadHhmTGRJRTBmZlJmaVVT?=
 =?utf-8?B?d1dySjFSbEd2Qis5c2dxeHBjb21RWDFtR1ZtVjU5cEtrNUUwVFFOUXgzL0w0?=
 =?utf-8?B?NUtCdVd4SkxZWVlIU1BnNjFwM2s0Skk5aUhwNHZSeTdCcHVYOTFJalhUN0pu?=
 =?utf-8?B?T3Z0VVRHZGUvQXl5TUc4dlM5TWJaZU11M1AvU3d3N3ZITWdpQmpjWS85VFFl?=
 =?utf-8?B?Zmo4aTFDd05yTzNtMkEwbCthS3RHVE9ackNzbGQ4TnBVdkJEbVgvcEF5Qyt6?=
 =?utf-8?B?RmpVUUgzVzArcXdlemRGM3FtVzRweisrQTBPSEhXODZ6ckFxZjBmSENSQVUr?=
 =?utf-8?B?c2ZkbGxBdE5DbnZZQ3E3ZHY5c3JCdHFCS0VGdzBidUtieHBicUpERkJNa2dy?=
 =?utf-8?B?REpCTG10dDRlSlRVREl1MEFNVjZGaFdQamRJWmlIREpvZzlWY3lPT05obWNU?=
 =?utf-8?B?VUxKQ3lFVlBhSHJyY3hRVjB2Nmx0MGJhdkhDY0NRNnc4bldXSnM4UmpUSTFr?=
 =?utf-8?B?N2R6SnplWHIzVFpOU2FFZmxOa2ZUNTFnQ2ZRRVNOTjh5ODQ2VG0vWHdjTEtM?=
 =?utf-8?B?OTA2Q2VBY0hxalJ4TGw3YWRpenNmRzBHcGkyRjIyM1RoWTlseFUrbW1ZaGZk?=
 =?utf-8?B?aFIwZW1udGJZS0FPOFhTdmtxaXpHbmo5eFF3TzVQUGJjVXRQRzh3U1ZCWGFq?=
 =?utf-8?B?cVl2VVNnWUFqV0hhaGo3ME9MblhMYWM1WmhnRHgyaHR1anZFTXd4enY0U0hR?=
 =?utf-8?Q?U+6gQitrtxw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFJocnM1RjJtM3ZNUHgzSGFEUWxMMkRtU1BaY20yNnVBdmFHeWVpRmNHSEpD?=
 =?utf-8?B?RXBBRWRJcEl1WkZRak1WUStHTitraDgzTWhzS1p6V1BTZjJmL2pwQlFwZURt?=
 =?utf-8?B?blFkeHhReDM5QjJnWUxzZWZNa1Z0cFdmS29TeGxzWmVFWkkxUzloSU15dG9Z?=
 =?utf-8?B?S2p0YVIwUDJlMFRwSjNiYitSTndWUzE3VXlsVjBXdENLRzgzTkNRYjluQjBk?=
 =?utf-8?B?K01vQjcxNEZWT2dLZFhHSzZuTkN3NXhsOXdRMWkyU0NkZWl1a3J4RzNERXht?=
 =?utf-8?B?UmJXNWtGWTNFNmhJelVRUmYzMWJVaTJ0TFF3QVNCclp6a1VFSWlHakd6UFpF?=
 =?utf-8?B?bEI0aVF2REFjZjNTanJZNkh5cFRZOFVpNCtIZExqUFZtTGdSU2dZWkxkZDhs?=
 =?utf-8?B?UytOUysvS0pTdHZVRGN0a3pLN1ZBM1U4NGdzOWFEZm9aNDFWbXJqOTFzRGdI?=
 =?utf-8?B?amVBc3FMa3EwSEhQa3VjWC9Nc0dZUk9laFNvMVhXM01lcTUvcWVpT01sQkxF?=
 =?utf-8?B?anZ3WW05Wnhkek1ITE05MG1BUFJsdjg4OEJoUHFhY3BmU2Jya3p2QWlpTU40?=
 =?utf-8?B?MU0vODBvRmwrWU1UcmxjUml3aUxCVVFiUWczaDgzY0E3MDdJWTJmMFRvNEdB?=
 =?utf-8?B?NjNnRFh4eC9zejdZUGdJK21oUFlVQTdyVnlNVGdyYkFhdE9FZ3ZtbHp1bjR6?=
 =?utf-8?B?TTZtUGJ2STFVSnRTUFQ5SFhna0x0eWIyYVJLMmtCdHpSY1NLVDJtWTdYL1lH?=
 =?utf-8?B?REltdVhCLzE5Z0hUZWZWUlFEcWpLeUY2SWJPRjZDRTZJTVhzeFN5Slg0V3Z5?=
 =?utf-8?B?ZnVYOTVTSmFmSXVCakREQU45MFREYmtxcTIxUEtmS2dMUENLTGpkWEYwZmJs?=
 =?utf-8?B?LzJ4MUpOWmhoT055VXh2Q2o2Tkgwak9MZ0VzalpURDVRbU90ZHoyY1RFcXNU?=
 =?utf-8?B?RCtPcE9GcUJpQ3FsYmRhVUdNazZuT2FReCtnalJ5dUh2WUZYTFViYXkydEky?=
 =?utf-8?B?R1EwVUpUSmhpOE00QkdOVU9OVHdldDZhaDMrWCs4TFBnd21zZjZJVSs0YkVn?=
 =?utf-8?B?SFVmSXdEKzdCeld2MHJ6QVFPV0djZUZaTklTOXVMMGVsRFlkU1NWNEhzK213?=
 =?utf-8?B?VkFjRmpwdThTUW1CWkNUcldmb2ZTZWZWQlNwWnRVSGNEV2hibW1jZXdSK2RZ?=
 =?utf-8?B?LzlwMStSSVFyb0JCN0Z2YmRxbGdkQW1iVUhGTUw1TGUzbk5VZUpVeWtwZzUy?=
 =?utf-8?B?Mkt1WDF2NVJma24vRSt5ODltNzVKbzJiVmNLcmp6QzVqMFpQRDhGK3F1UURI?=
 =?utf-8?B?TUsybWpqUFBlbEg4VVU3T09KeXN1d1RwRjBDc3VDWmNrYzRCNVhvSVJkYnVo?=
 =?utf-8?B?SXg0OWEzNnNFQTBTTW1VTnJTZGVocEE3MDFObkJ4eUZjZFFKQzJuNE5Mc04w?=
 =?utf-8?B?bnpDM2ZCVFQxM0JGSi8rUDhLUEdDQWVZbGhVT1Uzckx2cDZXRGhWU1RneFli?=
 =?utf-8?B?eGlmaTJYWWNTdkJWRGVaMk5rVWl0NThEUHRLOWZOcFh4NnEvaTI5M01qckVh?=
 =?utf-8?B?NmRVV09oMWFNeUg2RlVEUGVCaURrNEdxeDBCajYwU2krRHZ5QlNDZmJ6RXhR?=
 =?utf-8?B?RUxJM0Q2RGlYM0FQVzVDa0tMdDhoS0o5YlRnY1dPeVdJY0kyaUl6dzQ5NGRk?=
 =?utf-8?B?ZjlqWUh6R0Jra3FIMkZTdWlaM0NKNERGOGprajNCMEErRUlzQ2FockdvQVY4?=
 =?utf-8?B?V1hSOGxoNlZ6L3NhYmxVR1UxcTFXU3ZmYUtpdXNpekplb3E1MEVvY1Z5ei83?=
 =?utf-8?B?RTM4cTRHYmpzcXVEKzZhVmN1R25oeVIvNFoxanVMNU1NUHZpVnZVekZCU3hZ?=
 =?utf-8?B?dW9qeEQyZUlrcExQdjJDYmk4NEpTSUZ4WFFwSjJlYXE4M282V0tqZHk2Q1RI?=
 =?utf-8?B?dnhqcnlRRUlDU3BFSUJJU0ozQ2RxakpjZkRpWXZ6ZHhQYU5YeThuVVg5aWxw?=
 =?utf-8?B?KzM3Qlhtai93dnE4UHJsZSsxMDRrbUFVUHg5YVZyV0hFaDZnU3dJWWtnMTh2?=
 =?utf-8?B?WG01TkFzWmRDZEVEZWZteklXekh0cHJtckg5SExBazhwcTlLSU56b0ZCYXkv?=
 =?utf-8?B?NXNQRk56ZEREWkd0ZEVRSXhHQ0wvZ05MUE4zTEduTkUvcmJwTDNvcEQ5OTEw?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d28f800-ca5c-49e3-1ab0-08ddf6bba16f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 13:59:48.7481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XIRZOnQSZblxSw/Eo5fZVcbIFwel9/Yn9jpELWGyR9GjDpRdw9miN6xAEyzLHO+YBRFfq0clAKcqmScr+0WmC7qdVhf7mcB6Sr8d1457Dys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9472
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


On 9/18/2025 5:51 PM, Ville Syrjälä wrote:
> On Thu, Sep 18, 2025 at 03:07:20PM +0530, Nautiyal, Ankit K wrote:
>> On 9/18/2025 2:04 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> While ICL/TGL VRR hardware doesn't have a register for the guardband
>>> value, our lives will be simpler if we pretend that it does. Start
>>> by computing the guardband the same as on ADL+ and storing it in
>>> the state, and only then we convert it into the corresponding
>>> pipeline_full value that the hardware can consume. During readout we
>>> do the opposite.
>>>
>>> I was debating whether to completely remove pipeline_full from the
>>> crtc state, but decided to keep it for now. Mainly because we check
>>> it in vrr_params_changed() and simply checking the guardband instead
>>> isn't 100% equivalent; Theoretically, framestart_delay may have
>>> changed in the opposite direction to pipeline_full, keeping the
>>> derived guardband value unchaged. One solution would be to also check
>>> framestart_delay, but that feels a bit leaky abstraction wise.
>>>
>>> Also note that we don't currently handle the maximum limit of 255
>>> scanlines for the pipeline_full in a very nice way. The actual
>>> position of the delayed vblank will move because of that clamping,
>>> and so some of our code may get confused. But fixing this shall
>>> wait a for now.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c |  1 +
>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 36 +++++++++++---------
>>>    2 files changed, 21 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index c7d85fd38890..f4124c79bc83 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -3891,6 +3891,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>>    	intel_joiner_get_config(pipe_config);
>>>    	intel_dsc_get_config(pipe_config);
>>>    
>>> +	/* intel_vrr_get_config() depends on .framestart_delay */
>>>    	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>>>    		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 5fee85b0bc99..9cdcc2558ead 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -151,13 +151,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
>>>     */
>>>    static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
>>>    {
>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>> -
>>> -	if (DISPLAY_VER(display) >= 13)
>>> -		return crtc_state->vrr.guardband;
>>> -	else
>>> -		return intel_vrr_pipeline_full_to_guardband(crtc_state,
>>> -							    crtc_state->vrr.pipeline_full);
>>> +	return crtc_state->vrr.guardband;
>>>    }
>>>    
>>>    int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>>> @@ -431,18 +425,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>> -	int guardband;
>>>    
>>>    	if (!intel_vrr_possible(crtc_state))
>>>    		return;
>>>    
>>> -	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>>> +	crtc_state->vrr.guardband =
>>> +		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>>> +
>>> +	if (DISPLAY_VER(display) < 13) {
>>> +		/* FIXME handle the limit in a proper way */
>>> +		crtc_state->vrr.guardband =
>>> +			min(crtc_state->vrr.guardband,
>>> +			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
>>>    
>>> -	if (DISPLAY_VER(display) >= 13) {
>>> -		crtc_state->vrr.guardband = guardband;
>>> -	} else {
>>>    		crtc_state->vrr.pipeline_full =
>>> -			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
>>> +			intel_vrr_guardband_to_pipeline_full(crtc_state,
>>> +							     crtc_state->vrr.guardband);
>>
>> For removing the #FIXME to handle the limit what can be required:
>>
>> Do we need to abstract it with intel_vrr_clamp_pipeline_full()  or else
>> we need:
> I haven't though in detail how we should do this, but basically we
> have two constraints that limit the max guardband:
> - actual vblank_length-SCL
> - hardware register limit (~255 for icl/tgl, (apparently)
>    65535 for for adl+)
>
> So when calculating the guardband we just have to clamp it
> the minimum of those.

Ah ok. So something like:

max_guardband = min (pipeline_full_to_guardband(255), vblank_length - scl);

crtc_state->vrr.guardband = min(crtc_state->vrr.guardband, max_guardband);

So with the set_context_latency thing we can properly clamp this and 
remove the #Fix me.

Regards,

Ankit



>
>> crtc_state->vrr.pipeline_full = min(255,
>> intel_vrr_guardband_to_pipeline_full(crtc_state,
>> crtc_state->vrr.guardband));
>>
>> crtc_state->vrr.guardband =
>> intel_vrr_guardband_to_pipeline_full(crtc_state,
>> crtc_state->vrr.pipeline_full);
>>
>> (Though this might be bit confusing since we use guardband to get
>> pipline and again change guardband.)
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>    
>>>    		/*
>>>    		 * vmin/vmax/flipline also need to be adjusted by
>>> @@ -734,14 +732,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>    					     TRANS_CMRR_M_HI(display, cpu_transcoder));
>>>    	}
>>>    
>>> -	if (DISPLAY_VER(display) >= 13)
>>> +	if (DISPLAY_VER(display) >= 13) {
>>>    		crtc_state->vrr.guardband =
>>>    			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
>>> -	else
>>> -		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
>>> +	} else {
>>> +		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE) {
>>>    			crtc_state->vrr.pipeline_full =
>>>    				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>>>    
>>> +			crtc_state->vrr.guardband =
>>> +				intel_vrr_pipeline_full_to_guardband(crtc_state,
>>> +								     crtc_state->vrr.pipeline_full);
>>> +		}
>>> +	}
>>> +
>>>    	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>>>    		crtc_state->vrr.flipline = intel_de_read(display,
>>>    							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
