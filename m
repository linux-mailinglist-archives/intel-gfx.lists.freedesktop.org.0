Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C848D15B9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF78810E2F9;
	Tue, 28 May 2024 08:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R5MbnHjM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C86910E1F0;
 Tue, 28 May 2024 08:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716883308; x=1748419308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RG2784biaVo+qxJsKy6YpHXNFnDcxMgJQt3fArwIizc=;
 b=R5MbnHjMyh+9WR4oRDa58gXkCbaYnXM1ike9+2TpFoyISzAwRW439szT
 YX6G4B/hu7+Zaax9eDxQHYMgfExJr8UIKE6OEfm8koVRcFHPMOULkIcTA
 30rpv3V4CJHmhnK/IQif3KBg8eqyQTbZMoHlM2YpVqoTWciaGieKSR7Dw
 fh1yPipTQXzxHSdGbQA7P7YZSyvyPghDMTMtoHyXE4r6a01UhXpVSdfyK
 CEu7ccca24zwXjhehPvwmopjTxUH3WfdBJofkVOtfG2TWHzuG8jNNEfiS
 oWxmRUkqUDfh1t5r3o30KxBM8LKFgVxogM20RUfBGImCsZQ1FrI+Tdfpf w==;
X-CSE-ConnectionGUID: vnEy15LsSSiHz/BwS37aTw==
X-CSE-MsgGUID: nl+Kz86FRCCYbV0D6u+f2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17045565"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17045565"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:01:47 -0700
X-CSE-ConnectionGUID: fvagfo1yS0mahudmTViieQ==
X-CSE-MsgGUID: l90qBCRIQGChUkveGPNsBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="58167161"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 01:01:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 01:01:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 01:01:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 01:01:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 01:01:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzD5bsJJnVPDctBgRKUhcLQu+z67anHR8kkd7g93w0HVgNscFJXLubIqbJjXYMOqgz5J+1lHHNq3wpeqyeIcDybQy1guLqdXwWlJUm74N3I89D9+4wKWS5tl2yaWGi7AzFz8fRHUGCVi1xnoFlTNL7m5HlI1kED4B4ZqIyXxROcqaLJFpSKUcjv1c9wktPkRifsEG25xz1P+4ghuWzVL+u8RnAo0E/9jtxx3acEjR5e7XuXojSA/s44xN02ac1ga8gSJAlC31XUMtH7f2LCtePNaVrHfl+JpvLxrsl6adCVS4z4vjiMt9+IUPiyUO8zJ7fO9qsKon9fKtkQ2xGDEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RG2784biaVo+qxJsKy6YpHXNFnDcxMgJQt3fArwIizc=;
 b=mKc13SZS27ygjo1i9v/qm/uw0/py0O+QeG1VXCT5QNpZfut8XU5Bn1t+PN7lEo1YkPNyrCocNLIZ7/AkCVbqQP4xHgkmXuP22Id6Mgv9lNE22fJXi+7Vp1Y9XmGANEncqqK3xAYB3x/99gHV2FEFNAi/p1O+0M3nxrms9YWaSy6Zz2bVVksPc9DxnRxR1xKhgdGljcziMy5kzVZVL5dFS+O/KVOvvhI6PO/IajzoBULn/awahGwBT/ZL9XKACUd1NBTUSKdUUrutHuyizCYXY7JA7iI0we+Mk4NTraZxPrqcVrY1aPFamq1O4sxSqfiaZYrO+49jdKODIT03V35JZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB6936.namprd11.prod.outlook.com (2603:10b6:303:226::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 08:01:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 08:01:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [v6 0/3] Fix cursor FB unpinning.
Thread-Topic: [v6 0/3] Fix cursor FB unpinning.
Thread-Index: AQHarAmxskhemiwKy0GYn+gbK5psQrGsUYfw
Date: Tue, 28 May 2024 08:01:16 +0000
Message-ID: <DM4PR11MB63606E03E14EB6D443114260F4F12@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB6936:EE_
x-ms-office365-filtering-correlation-id: 93f5d3df-50c5-4eed-48d5-08dc7eec59da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ZmczY1dlRXQxMFVrZ2pyYVRVNytqK2hKOHQvZ1lnRndLalhNbUUvc3N2T2hT?=
 =?utf-8?B?QnNReGcxRjBJK0YrUFlJckxLd2k5S1hEZUZPR3dNLzZMTCtFM1E0K0xvR0lu?=
 =?utf-8?B?eHB2RFppQzZ2RGJ4Qm9mcERZZWp4THdRWVJUeFhuRjlGbm52U2ZBb05GUE14?=
 =?utf-8?B?M2JBb2dIUzg4V0FQWXRVTllVSytQLyttODJRS0pObFVvR1lpUVMyb2ZvTCtG?=
 =?utf-8?B?UDlQaVZ5THNLUmJWL2JNdFM3VWJZcEs2UVA3ZytDanR5bnpTd3V4ZnY4MGR6?=
 =?utf-8?B?K2tWK3RKRVJzRnB6OEQ3aGhBdU9iKyt1eENNR0NmWkF4VzhwQTdnTXRtOXFZ?=
 =?utf-8?B?VjZjbXFra3BDRkd3bC9FVnY3QXVtbWlFbDlIKysrMXBPZkMzS08wU29nTTJp?=
 =?utf-8?B?Yjc3VmowUVJuaWU3WWE5ZVh1a01iQm1maFkrL3dMZEpoV3pWbXlUaFh3TVk1?=
 =?utf-8?B?ZVF4TGpwbDF5QUpXMFcxbTU0TDZjRnJFVExxZExoYmtOeDNiQUVnSUd4UUls?=
 =?utf-8?B?NmoreHIralhOVlhMUWlWN2tBWFVXTXlYbi8rRlR3elRGK0M1WG1CcWd5Tjc4?=
 =?utf-8?B?cnJIS2xnQ3hhSld6R1p1RVNnL0poN0I4ZGl2S1Yvbm9aTTB1eDdpUlZSd3Q0?=
 =?utf-8?B?NU5jTHhHODMzY0syWE1uZUJlZ1NYcmRwWWhXNnpIVXRSYnVHT095c1Zvalhr?=
 =?utf-8?B?cm5SMzdUL1hSN3l5VlJZQzRpWnF0eUxwSGVwd0NrWjRxVENtcHdodmtob3d2?=
 =?utf-8?B?bW9XMTRwL013dkJYU1dHbUdVT0RiSTNtVTZBbkd0QzlCM0VVSkl4SkN0QnpF?=
 =?utf-8?B?eGdzVzZxMEEyRGlzdTVKbm4zbVY1TjNaa0dCdHkzR1VaY2JkQUFSdzNONjlX?=
 =?utf-8?B?cFYxR29GK3pYVTNaMkRLMmk2SkkvTnl2MnJxSGZNeThEcGpDZTFaVXpybXRO?=
 =?utf-8?B?c1gwSFBubVVPanJKS3BFeVNVeHExdHFiRlpXSnFraXFCdTZKbWNwZ1hFTXl3?=
 =?utf-8?B?Y3VCQlc5aXlDWVI4VXdWOTRyQ3NCTGRDWld3L0lucGMxdnd3Y20xME5xcldC?=
 =?utf-8?B?WTdrcndrK08vVVEwbGRxb2JkWGo2dkFZT2N4dXNhMWxjdm5ETk5SQWlOeFRB?=
 =?utf-8?B?RXcrUEFJOWJTSzVYS09FeC9nWHBPVng2aDNTZXBrMHFGWUEzVktoTlpRSEhR?=
 =?utf-8?B?eDE4Qnc4SndMQ2hWV3dXVGxLZHpwWTgwcUczL2VOOGRpQkhOdmZBdGpvVTZY?=
 =?utf-8?B?bVVyYlFoRDBESVFWdy90YVlhNEJrNmVSSnBwQkNMOGt1YTczSkROaml6WG9m?=
 =?utf-8?B?aXBEVFgrYUdqdUlQZTlhd2hYT000QmlsSzFueHB3UkxUWHNCYXhzODFGWUs2?=
 =?utf-8?B?Mkc4OVlPNC9HVHR3WDh3OVlib2V6cmUrWUpsODgrVm5raHBaRkhEOGxaYURy?=
 =?utf-8?B?U1U3bis3bDZENTJYcVprR1JGdzMyQ0t6TU9mSGdUSmlmanFjck5hdVdaaTlt?=
 =?utf-8?B?cVBpSXVvVW9BSmtLbWo1UWRURHdDbGYyczlxSzhHcHpWcGdSZFQxQXJ2MVVO?=
 =?utf-8?B?S0ZUbUVLWWo4V0NhbjhFbmNqdEZIL29zV2gzd2lyTkxaSEVpQStueVVPMDI3?=
 =?utf-8?B?TTBIS0U3SW1LV1hUMG5CWHlUV1JidHdlb0xvNHlRUnhtK1ZoWnNMOXkyaHQ0?=
 =?utf-8?B?WC9jRE1BS0x4MFNxOEYwMHdoUCswQ0JmV21MRFdHMjRjUWpsa0RtYnUwKzM5?=
 =?utf-8?B?RnIrRm1RMEllay9IczJyQnRXNG4wTHVwQjd3SGE4eGQwYmZFeWpuSTU2TGNk?=
 =?utf-8?B?ZVcxWktxZ0hWREt1RXREQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b29OelNjSlVUMnU0ZGs2b09Ed1M3a21JYnZaWnBRYVRGL2dPNHV3bUN2M0U3?=
 =?utf-8?B?SDdMWDhSU1lzaDJMczRrK1FlQkhCVHRmWHhFSmZVTUJYd0thZE1FOWV1c1Jv?=
 =?utf-8?B?WFRNSFQwRk1SV05LbTJMVFpMdW9VZzVwVldsSC9sVFBwZFZ5S09xV2I1QTRJ?=
 =?utf-8?B?MkhzS3c1c3ZmSTcxMjlhYjFQSXpwdEppMWlhd1RIcmdEdjhmME5TekV4QXp6?=
 =?utf-8?B?VVJaK0tUcTN6a3lSNENMQWEwMlRDVU1UamRGa29QNnQzQWUxVGlxeUNNcUh5?=
 =?utf-8?B?emZyYmEzWThucXovUlBLMlUwNUU3aFJTOSt0dExsK25JVFdLM3Q0VXUyUlVB?=
 =?utf-8?B?NHVVSlZlS25oUWV0T3VuQjlyRlRvalMrU2lIcXdscEk0a2ppNWRQOUlLQU1x?=
 =?utf-8?B?RUZ6c243Uk8rc1pObWJ1bTlqQ1ZnZktJYnFOdVY2VlFqVkwrMHRTRGx2MWRY?=
 =?utf-8?B?TXhNUHgzcncrS3NvWFNHMnNpU3RhUWZrdkk2V3I4am9tMlVhYUtsclVyM3E0?=
 =?utf-8?B?ZFdJNDg0aXBackRvMzRWK2EwNnY0MW1hak9rOG5RbFFmb3NpSmd6Qmh4VmVJ?=
 =?utf-8?B?Ky9ma2F2aDhzVXhjb1pXakdOd2RvWTZuN25QWWNUM2p0alZLYmxUMFpsZDMw?=
 =?utf-8?B?Z2g3d1RyMnNGMk1DRjVTRy83U0k0RG9ZNW5QeXhIRldINHcvM3cvQ1JtZGIx?=
 =?utf-8?B?WkgwQzZOWWQvUytQenlsT2dXYXhvSGIvYmJwMTZCQ2tWeXZwSU56NXRjMEQ0?=
 =?utf-8?B?V2hkYi9ybUhOZHFyOWNkMUFmZ0VVU1l5elI1QnpXYzFpM3VsYWlHeFNkUkVB?=
 =?utf-8?B?S1hqZHJlWUF5eldQVFJjZVpTOWV5a0V4SUtTZlBnOWswVzdlM3p5OEV1dFlH?=
 =?utf-8?B?eE9CVURVZXZJMTMzVW92YmhZYUppSXhmNUkwSVhraGpsMytvSTNIUzB2VmhU?=
 =?utf-8?B?K0lvNzIxVmxnckMxRHR3b1dJNmppMWNLNWNNZmppUXRybWIzRG5oV201UWlW?=
 =?utf-8?B?SzlWVitVOXE5cFJRQk1rZ3pBY0VJbU05QXZBVFUvdUswa3JpWkprV21SeGNq?=
 =?utf-8?B?N2JpWjNjS3RHTXNyaUh4NTVqWUhiT2VLOGM2bTVIL1hHK1VqZU9na3JRWERy?=
 =?utf-8?B?amtaUjZMQ1EvMW9WVFBPTTIvTWc1M1dWUEpzdlVoZFNBd2FmLzkwNStneEtI?=
 =?utf-8?B?eldoQktSR2drYkY5WTdHbWhTNXhGUU1ISVR3Wm04d1VDTXV5bWJFd3c0OXdJ?=
 =?utf-8?B?OFRDLzdYenRzd2lTV0hBOE5GK0tqbmVJRWFhck83QmthYlhybXU5cWowdG9H?=
 =?utf-8?B?eTdwOG4zT1ZjRHY3U1BSeVVpQ0NoeXZCd3hqSlRXMWI4UlIwUllvSWJVcEp6?=
 =?utf-8?B?OFl3ano0YktOVm4yOVJnelBxYWVnUnhLZk5pSzBwSGFSRjNyK2dYNzFmVWhB?=
 =?utf-8?B?T256OWdFdWR2WmZ2NDcxK3B3d21IR3lnbHZvSFIwU1prYXhzd0pIZ2pPOW9o?=
 =?utf-8?B?dE5RT2ltaHM2S2NzTENjeGxMb1dMTFVlUW40R3V2Ny9vTExpam80VVVGb0hE?=
 =?utf-8?B?RmtWTDBvTWJERWZBVGNWWldhRElJVGZiYUc5Kzk3cEFtelJSU3hqZG9qcXRr?=
 =?utf-8?B?TzBqWktaelAvSnlqZlQvbE5NRjZYLzNKcXJvVzdtd3YyZnhuMy9rb0YxZEFB?=
 =?utf-8?B?M1llVW4vdVcwc3gzQzdYTzhOMWRNVCtwVFFWWXhVaWdkdm9RSE5OeXlFK2JO?=
 =?utf-8?B?ZUM1cSt0QXJhWk85bm5OMUNJekt2ZUJOdU9GbU1MU2Q2YmNZeVVIQ3JOM0x3?=
 =?utf-8?B?dEVFVjN3YjVKdnZZUjJZWVgzNHBkRDlucHpZYUoyQm1XaWNva2VGRytTSklP?=
 =?utf-8?B?OWxvdGFmNktQNkNibC9TNmEzTlJ5VElpRHFUWmZUVzR4cDJHeXI1ZUZtV2F5?=
 =?utf-8?B?ajQ4MkN3Y0U0Vk0yeVBoVWw0UlNOazlsY2s3Skw4WDJhb3NtS1p2TXJhd2dU?=
 =?utf-8?B?eUczU0FpNUFXWUdKd2x2dXJkNzlobjlOWXF0MndJTTlVd3pvdUh0VldZSmJi?=
 =?utf-8?B?QjRJYXJGWkQ0ZGh4MGZiajNhVGgvcEJpc1ZnNmZPeDFCL3JEa3haSlVwenZE?=
 =?utf-8?Q?o9ObmSIliLY7P41aQwpadIeAQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f5d3df-50c5-4eed-48d5-08dc7eec59da
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 08:01:16.4254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GC8XIWCfSsvVFePQQkHoi2X//vyV5AsgArjeVd4SHdMN6tdsut5rBD56apRv1RfSDIHlSzvRwl6gWdJUeCmjbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6936
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgTWFhcnRlbg0K
PiBMYW5raG9yc3QNCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMjIsIDIwMjQgMTE6MDQgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgTWFhcnRlbiBMYW5raG9yc3QNCj4gPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogW3Y2IDAvM10gRml4IGN1cnNvciBGQiB1bnBp
bm5pbmcuDQo+IA0KPiBIb3BlZnVsbHkgbGFzdCBhdHRlbXB0Lg0KPiBTbWFsbCBidWcgaW4gZHJt
X3ZibGFua193b3JrX2ZsdXNoX2FsbCBsZWZ0LCBmaXhlZCBub3cgaG9wZWZ1bGx5Lg0KPiANCj4g
TWFhcnRlbiBMYW5raG9yc3QgKDIpOg0KPiAgIGRybTogQWRkIGRybV92Ymxhbmtfd29ya19mbHVz
aF9hbGwoKS4NCj4gICBkcm0vaTkxNTogVXNlIHRoZSBzYW1lIHZibGFuayB3b3JrZXIgZm9yIGF0
b21pYyB1bnBpbg0KPiANCj4gVmlsbGUgU3lyasOkbMOkICgxKToNCj4gICBkcm0vaTkxNTogVXNl
IHZibGFuayB3b3JrZXIgdG8gdW5waW4gb2xkIGxlZ2FjeSBjdXJzb3IgZmIgc2FmZWx5DQoNClRo
ZSBzZXJpZXMgbG9va3MgZ29vZCBub3csIHBsZWFzZSBnZXQgdGhlIENJIGNsZWFyYW5jZSBhbmQg
cGxhbiBmb3IgbWVyZ2UuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+ICBkcml2ZXJzL2dw
dS9kcm0vZHJtX3ZibGFua193b3JrLmMgICAgICAgICAgICAgfCAyMiArKysrKysrKysrKysrDQo+
ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAxMyArKysr
KysrLQ0KPiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAg
MiArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgIHwg
MzEgKysrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jdXJzb3IuYyAgIHwgMjYgKysrKysrKysrKysrKystLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuaCAgIHwgIDMgKysNCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAzICsrDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMyArKw0KPiAgaW5jbHVkZS9kcm0v
ZHJtX3ZibGFua193b3JrLmggICAgICAgICAgICAgICAgIHwgIDIgKysNCj4gIDkgZmlsZXMgY2hh
bmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjQz
LjANCg0K
