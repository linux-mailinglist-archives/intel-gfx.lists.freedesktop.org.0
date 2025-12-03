Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D56DC9F661
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 16:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059A310E8BD;
	Wed,  3 Dec 2025 15:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XaXKxLHP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59CE10E8AF;
 Wed,  3 Dec 2025 15:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764774658; x=1796310658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MrH98v8QnX4eIi30dr7eHxYwZ+Vd3Ey1zZNyT9IhLCU=;
 b=XaXKxLHPKeY+6k9mWMoyxVzHCTIRWuzR5qdLPiG41f10FQibwHqz938A
 r9tcIrD/OsYMVoTWGVYwXUy46Y9Bh+ciWb3GIT2Z/u2PkYk9E276IRCVF
 Rj9mt0OHOX0ht5lE1kZSeasFl82Lwe21brEQJnQ36eCSidIs4s3u7N52K
 DldXhoXfahlZEJrjDuMfrs0Td4g1ha4BKbxiJUSSwl6jdKY0s8Xjk7sZZ
 Qgm5yKD333Hy6Rvb+7TmzVhkW2uvUTwTABeM0mL9Av+9+IsH1oWoTEX8Z
 xk18pTjZlRcRpb490nVQGnwaLZmmwL4In2Q6giCR8kCubqMV19HAgIxLl w==;
X-CSE-ConnectionGUID: gYbioRp6QHOVCBQNeuNwIg==
X-CSE-MsgGUID: ruBFZ3CfTPKxFdJz8xQRiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70621505"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="70621505"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:10:58 -0800
X-CSE-ConnectionGUID: u1oEtkmeSvuUh5e3e3Yexw==
X-CSE-MsgGUID: KCSIpL7yTmedXPXvMx1Deg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194368733"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:10:58 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 07:10:57 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 07:10:57 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 07:10:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7POjDF7LzfhJZISDjocPKZ8CjVWDGwpBx8ru7qiTAJ/YsfvWm/f3Tnszc9SUvRbd0xytE8L1gCCSpnHySaB1xTxkAd2T6Vk7ScEAd+EO2SwW85K1AD99o1CV3V+Eqm8EafCBsMfy2O8XFPyaTJY5yfEfeqhMWQxxswxynqPdmaB4WrujboCKggyMdATn3/6H3V+WSHhd8WyWPJ7f7LcrB/6xf5JFwJLXNTiN+XtiawX4dP4t+Epniu+d1mNzZPRrmwb0DKsQGJvyen6Vv+IYdLMOfGK3JoUfmKs5qd4oVomj6dXn2bsPPutyyzkErabGwScNi7OmyZRbB+Acgo4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MrH98v8QnX4eIi30dr7eHxYwZ+Vd3Ey1zZNyT9IhLCU=;
 b=HNGyWvZDRZFMZN3yHhg6P9hjrChs8Fy+ILPdFzfsXWyFs3BM8D64NrTMKdjS/zRgt4981dhwGLAaGG9QDoOsbvMangIhBJZ9au84imkLFV1fP5wNoQmkfw/uncaz6v2+CLN1LzibkAuX61HKefL73J9p1ada4MpKIX0fh8h/bf8ICisDAbyUSrzkhGMeEWGxovd+pUzm6/6nAZCOdAL5pdwSVMZemKrxIuih/1P+i+APA3YpqWPZghNniujO/17NkLwDQHoGTJiaZyLEqX1ufh336sZaUQFjHeA93SnOzTqcitKkg9qTzVBUKJISpbgbNMHOvpQhTTA4op55Lb6y3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6571.namprd11.prod.outlook.com (2603:10b6:303:1e2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 3 Dec
 2025 15:10:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 15:10:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Thread-Topic: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Thread-Index: AQHcWthrXqXSADbP2kmhj9D3AaUe/rUMq7mAgAAIeQCAA1ruAIAACTYA
Date: Wed, 3 Dec 2025 15:10:54 +0000
Message-ID: <f6877a4bf35a867b13fcd4d2d32499cae0d41664.camel@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-6-jouni.hogander@intel.com>
 <aS1zoYALyiaUezDI@ideak-desk>
 <04897dced22b4e0600f952354b998f32cfd9f9b1.camel@intel.com>
 <aTBLQkd57Nz4VE7s@ideak-desk>
In-Reply-To: <aTBLQkd57Nz4VE7s@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6571:EE_
x-ms-office365-filtering-correlation-id: 16e80822-1278-4216-71f2-08de327e2778
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MUZPT2NyR05oa1FsNmJTN1pyUDNtRkZYdXd0NklXSGN0aVo1VDNvTklPY3pz?=
 =?utf-8?B?Tkk1REV0VmR3RFpHZ0tKaXFLczJZRGxXa0lERGY2VitycnVCV2IzUTM2dzNE?=
 =?utf-8?B?dnROVWozcklQdzhhd202YnhnRmRqaTUxejMzZG1UOVZMRFlKalY4cm43bFRn?=
 =?utf-8?B?MG5NZVA3QWlMalFjT0hrZkpQSTd6dEt1WStnZG9PSkNoVDZHT2loODRjZ1ND?=
 =?utf-8?B?Z1UwTXZxMXROSDlPbDlxV0thVmt2a1BvUHYyNFkrdkFyc0lpbStUYTZUZHJV?=
 =?utf-8?B?QngvNnZPMVFEdFFzT2pUQUowZVBLbVNvbG56NHZpYllaVStLZVR2Q2pZcmtT?=
 =?utf-8?B?VzVhYlV5V2JXLzJ2bkt2VzFrOTM1ZWx5UVI4RmtzMm5TdFk5K2dMbmJLWFcv?=
 =?utf-8?B?eXJTOTRsdEFUYy9CYXZRVkVXZEJqL2JRYkMzNzB1Y041bmFVV1YvbmRQTUoy?=
 =?utf-8?B?MFR2ZGk2QU50cVFRYjhKZkYrazlhMHZBbnVuK0oxRFQ3RUM5OUxZVDZ1dytD?=
 =?utf-8?B?cUhrcmZSSSsyUWR3WnBDRWhoWUc1bE1oSXUrQis2WkxUblBkRHZoZGRrdE4v?=
 =?utf-8?B?clZZQUJ4bkhwY2tDN1UvQTZ3MFcrVzJwTkZOOTd1MmtQRnZEVjVkcmFzU20r?=
 =?utf-8?B?dnJQbS9yT3JBYVRuSU4vY2FDTld2SU1ITUhJV2VyM0cwcGg2WmZOS1pOVzd1?=
 =?utf-8?B?VmNSeUNvcmJ5Q0FoSjRLaHAyeFNsRm1BWS9jaWhhVW9YOENtdXk2WVJ2bTZP?=
 =?utf-8?B?ZWhtZFR2Vmt3M1NmNG5IZEFuek91YUMrMVB3bGlLWWJnVnh2SnRZNG9LeG1m?=
 =?utf-8?B?c1E3bnNjVk85NVJQamN1bFJKdkJ3Z1VnZEtMRjV6KytXM2xkdW1EbmtLdk1t?=
 =?utf-8?B?dWJpYjR5WTA3UXhYSnRiREZDdGZBaDZsVzFBRzlHaVdwR3ZKcFBnVGtHY1Bw?=
 =?utf-8?B?QkN3ZHVlVzhrQk4zQWhQUCtCdXNvd3Rqd2F4YkcxUWVuYnRhZnJDdUQ1WENn?=
 =?utf-8?B?RFU3d0xyT1paTVNkeHdUSkgxUjZZSlAxSmY4YjFHTjJ3NE9BMDFUUDg5VkVy?=
 =?utf-8?B?NWl4WHR1dFlhZTVtSFRyM1U3OEVKTnNuSE80dGNrdXlvZDJRQ0dGdGhrSENK?=
 =?utf-8?B?ZHdqV01vWCtNYXlYWk93VkpTL1VRdFR5ZEJXdFR5UGpyVVZ0VjcvZElKR25x?=
 =?utf-8?B?T2tEekxQUW9ENTFxRE1jK1V0U3J6bTRhYWlpSmRGWWdpaTVNQ0QzZlB6czVT?=
 =?utf-8?B?cWNXRTZDM0RuNWVHYVZMMEYrVDg2Ykkvd2FxU1YzeWJ2N1pkOHpJYkVhY3BG?=
 =?utf-8?B?Q1BHdFN0YmxEeXBIQWFDZi9YTDFMUTFLRGZyRVdNaVNDeUZIYTJ1QzBaV2d3?=
 =?utf-8?B?Q2NKR053djUvaFk0QnRUak9JYWVlWGxKdUFpeXNPTWVvVkw5WkdTdUpmbXY1?=
 =?utf-8?B?eUdSYUZWb0hpSUJyMkI1YjZzL3daQ0g0RHhjd3lKY3h3czlnazdFSnY1ZlN0?=
 =?utf-8?B?ckNzV1VXdDVlRFF0b3poTkMxWUt4cXUraXptcUU1aVBUMWFyelVSN2hRN1BC?=
 =?utf-8?B?SDZEYzkzaWtCUjhua2RUL1ZqYjZFRDlJTTZaa0hISXVTbExjRzFLRFZuMU85?=
 =?utf-8?B?QnlFWGNUemlGay8wTFdHNWRXRk5OUkhCbVpISGFvL0dqN0w2eEs0LzZmejNF?=
 =?utf-8?B?ZEg0MEhxNUZGUHljSmg0aXpqTWk5UC9qajl0RnVqMDFwczBLV2F2QkFGM3RB?=
 =?utf-8?B?YVdxQXpmODlxUVpHdDV0THFwU0lEWXdvTzQ4VU5tRUFucHhDMW1mRENVcFhN?=
 =?utf-8?B?ek9MQ2VMa1Mwbi9QdzRuMk1ueTNHOENjdHkwYzFsaDNGd2tWUGNnYnNPVm5I?=
 =?utf-8?B?WXdGdDVvNUVSRXJXNEdNWUgvN1RLU1Nic2N4Z3lVZ1VYdmh1dUxPK1ZScEZa?=
 =?utf-8?Q?/1IfFRrtU2z0F+2YWl4cYD/KvOwqared?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czZvaUViSWZMbXlsSjJETEJxVXRmbitZS0QySlVOellLYkpmRWZmNVdNOE9m?=
 =?utf-8?B?R0xxRUpVM2NpWDlxRG9XSUEyWUEyUCtXbnUzbHZEdXU3Vkt5SktEK3l1SWFG?=
 =?utf-8?B?NU5sUHI0bEVOWXdqVWFVWkxid0srR0RFekV4ckthb1IreEp3S2FCR283MDdJ?=
 =?utf-8?B?WmtDdmJUdW1aeHJFTXkxeDhLcG0vZjBtV01SVGJidGwvK0RQWDhhelhUMHRp?=
 =?utf-8?B?cGc1QTFaemFuQnFvTnZjMCt4V25IblRzR2lOVDVOYWFjVUtqVzZNVlFYb2Jn?=
 =?utf-8?B?WERKYnVqdkdjZGpsTTJLY1lZc2xPU2NmUEhXeE92V0ZwM29MRXRoaE5qRkxq?=
 =?utf-8?B?SHova1crc01oaHR6RGFvaTZXU3JmN090RjE2R3hUUUI1cWxBemlLa0JyWmow?=
 =?utf-8?B?bkZHcGFpSDU1VEhaNkM3dk9DM3NIeUdKRTJTKzBaNzNRSFdhTFVvS2JSRGN1?=
 =?utf-8?B?ZzBGRENmb1p0dGJuSWF0U3BqcjN2WlhQTWMzTVVabG5ZTjZleVlMTXB3REVs?=
 =?utf-8?B?bFFsZHpZS0g3L3BBcFZSRk1EbXNwTVc2Wlc3Mlpza3JPcnAzYksvaXBVa3po?=
 =?utf-8?B?QUl4aER2ckVPRXhtd29YUklEYWRmRjI0Wnhoc3hIc0RGU001dGJTTWUwYXRp?=
 =?utf-8?B?OEdQQTRRNDN1MHo3ZXM3d1FTeGlRdXVLVGQ4Qm1hNUU2Q0o1Y2l0UHprUjlq?=
 =?utf-8?B?MFBBT25GNVY3SnhTQlhmSnhhR0M0STBhMmVNSFpXekdGZ3F6R3o1MUdBeXNR?=
 =?utf-8?B?aVJFQnlSbGZBdE9XWWkyMGJJZzVLaWQwVW5RcXhTVXZsNW16QVpnZFFnaDNW?=
 =?utf-8?B?WVZyVjlXUm02aE5OdllONDdIWWQ1NE4zNTJJSkpZWGZXLy9UTFlCYWxYd1Nw?=
 =?utf-8?B?Umo2SC9peHVzRGY3Q3FYYTVNbytERzhFdTlNYUNlbWtzK0pmMnJmZERsZm1V?=
 =?utf-8?B?YkR1NFVGNktpYzNHNlBMbXc0M3A5U0VKK2NDQVluZ2NVbGxtekxhV3ZLeVRD?=
 =?utf-8?B?NDZRQjQ1SHdzTUs2TEFFRU13VjArRkQrSmViQSs0dGw5NHc5bnpyWG8vczZu?=
 =?utf-8?B?YWk2TlpXWVl3VnJzYi96ZE1rTGk5cEp0dkVQVDIvam4xK290UnhQdTZVTTlo?=
 =?utf-8?B?TXdrdmhSSDlhQlV1KzNmZ1BtUHpGeWZ4NGtQbmZrUDlZWVEyenh1cEpSQS9K?=
 =?utf-8?B?bXRpZjhRc0JKR3YxR1FkbG52bU8ranpPZXFWZXJzRkJhQlIydzVFYmkrQ0Jv?=
 =?utf-8?B?SmQ5VEhNM0dKN20wTm1oQ0Jia1pkRUk3WWNGWU1ya0lOSlE4VkJpZXluYy9R?=
 =?utf-8?B?SFN3am0zM2xtWmpsaHovZllRQXluM1EzSUJCVnRJWTlDTUJ0a3VOYUJDYTBX?=
 =?utf-8?B?TURGN0Z0c1BqWm5MdDd3S0tESjVkdTJTUnFkVTN1eVowVU8vSHljTm84ZmlV?=
 =?utf-8?B?T3g1aTBYR2FQUkxSZHFZbzZxdDJmeEcwajhOZWlBVUtUaDdycjZsU0xBbyth?=
 =?utf-8?B?MHlZVGticTVpTFRrRTE0T0RZS2dPSDlzUmpvVUhKaUxoaHpOWXZrM0dzSEZF?=
 =?utf-8?B?VHNIQTA2Q2NPZmlQaWpGeUwrRmtTdURrUGpnSXg5UEZvQ2VSaXZpVzJVdE9L?=
 =?utf-8?B?UG5mZkorcGprWUJHWUJ6eVVjOW45SWNpQ1NKYS9zRktjVFJNbFJGZUQrN1pU?=
 =?utf-8?B?aXMxOWVGQkx5WUhaaGNQTXJDdGNzeHNpNFpEdHVYbjR4YmhDRjROVitUZ1B6?=
 =?utf-8?B?WDJCc1hjN3EvNlBhSENONm9XcWluYkZ5SlJRU1JPNjkxWDJEdGtaNWNvSURs?=
 =?utf-8?B?QkJkRnNGd21HQU9zdjZuM0MzbEZuRnRtSElZcmV4UUhBcXlaaFhHQXdPTmNK?=
 =?utf-8?B?QVB5Nm8zMGtHNkNKWEZNQnhsRDZjelR1ck9mRFpsbndSTlJDRk5PS2Y4VVJZ?=
 =?utf-8?B?T0Y1bTFaT1VEdG8xdjVhMTdKNkExeURIanhUQW9iZ0loU1N4OGtUem9VUEN6?=
 =?utf-8?B?Qy9Wd2h4OHovZjk5RFpoY25ma3NWSWttUmpwK2pQeDNqT1NtV24rNzRSdUkr?=
 =?utf-8?B?RGZteDVMbS9MQWE1bFdCRGV1TmdzUFdzcGZJT3IrdjJudDZBbUlVSzc3Z1g5?=
 =?utf-8?B?SVRyZjdsR3JSUWF1d0dhcWhxclpobEdwSU95Wm1VQUxwV0JZTXJXWkpJOEJT?=
 =?utf-8?B?dkFqNURNbTZlSm5wS1JIVDFuZVk5TjZhdVZJZTAyMlUwNXhkbXQyMmVwU3ZI?=
 =?utf-8?B?SEJKRXNFQlE3d2JRQm1kRk1nbUlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA889511576A0C4EBA593737D429BE58@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16e80822-1278-4216-71f2-08de327e2778
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2025 15:10:54.2337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cv2SEL759koYmGfBS5J5j5y3H38xYLyB0ZCwoN6AR5WTGyBcSZPNusvQA9gKSIeEyFP1aqECurSMJndvkbRV2FQbrqsCdzDQFsnPOPvg81k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6571
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

T24gV2VkLCAyMDI1LTEyLTAzIGF0IDE2OjM3ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IE1vbiwgRGVjIDAxLCAyMDI1IGF0IDAxOjIzOjQxUE0gKzAyMDAsIEpvdW5pIEhvZ2FuZGVyIHdy
b3RlOg0KPiA+IE9uIE1vbiwgMjAyNS0xMi0wMSBhdCAxMjo1MyArMDIwMCwgSW1yZSBEZWFrIHdy
b3RlOg0KPiA+ID4gT24gRnJpLCBOb3YgMjEsIDIwMjUgYXQgMDE6MTY6NTJQTSArMDIwMCwgSm91
bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+ID4gPiBDdXJyZW50bHkgd2UgYXJlIGxlYXZpbmcgcHJf
ZHBjZCBjb250YWluaW5nIFBhbmVsIFJlcGxheQ0KPiA+ID4gPiBjYXBhYmlsaXR5DQo+ID4gPiA+
IERQQ0QgcmVnaXN0ZXJzIGFzIGl0IGlzIG9uIGRpc2Nvbm5lY3QuIENsZWFyIGl0IGFzIHdlbGwg
b24NCj4gPiA+ID4gZGlzY29ubmVjdC4NCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0N
Cj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxICsN
Cj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gPiA+ID4gDQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+
ID4gaW5kZXggNjI4MDhjZDM1ZjVmMi4uNzE5NWM0MDhkOTNhYiAxMDA2NDQNCj4gPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gPiBAQCAtNjA1
MCw2ICs2MDUwLDcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4g
PiA+ICpfY29ubmVjdG9yLA0KPiA+ID4gPiDCoAlpZiAoc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0
dXNfZGlzY29ubmVjdGVkKSB7DQo+ID4gPiA+IMKgCQlpbnRlbF9kcF90ZXN0X3Jlc2V0KGludGVs
X2RwKTsNCj4gPiA+ID4gwqAJCW1lbXNldChjb25uZWN0b3ItPmRwLmRzY19kcGNkLCAwLA0KPiA+
ID4gPiBzaXplb2YoY29ubmVjdG9yLT5kcC5kc2NfZHBjZCkpOw0KPiA+ID4gPiArCQltZW1zZXQo
Y29ubmVjdG9yLT5kcC5wcl9kcGNkLCAwLA0KPiA+ID4gPiBzaXplb2YoY29ubmVjdG9yLT5kcC5w
cl9kcGNkKSk7DQo+ID4gPiANCj4gPiA+IFdoYXQgYWJvdXQgcHNyX2RwY2Q/DQo+ID4gDQo+ID4g
UFNSIGlzIG9ubHkgZm9yIGVEUCBhbmQgY2FuJ3QgYmUgZGlzY29ubmVjdGVkLg0KPiANCj4gT2su
IFBhbmVsIFJlcGxheSB1c2VkIG9uIG5vbi1lRFAgaGFzIGFsc28gU2VsZWN0aXZlIFVwZGF0ZSBm
b3INCj4gaW5zdGFuY2UsDQo+IGJ1dCB0aGF0IGhhcyBzZXBhcmF0ZSBQUiBzcGVjaWZpYyBjYXBh
YmlsaXR5IHJlZ2lzdGVycy4gVGhlIHNhbWUgaXMNCj4gdHJ1ZQ0KPiBJIHByZXN1bWUgZm9yIGFu
eSBvdGhlciBmdW5jdGlvbmFsaXR5IHRoYXQgY291bGQgYmUgdXNlZCBib3RoIG9uIFBTUjINCj4g
YW5kIFBSLg0KPiANCj4gSXQncyBzdGlsbCBhIGJpdCBzdHJhbmdlIHRoYXQgaW50ZWxfZHBfZGV0
ZWN0KCkgLT4NCj4gaW50ZWxfcHNyX2luaXRfZHBjZCgpDQo+IC0+IF9wc3JfaW5pdF9kcGNkKCkg
cmVhZHMgcHNyX2RwY2QgKGFrYSBkcC5wc3JfY2Fwcy5kcGNkIGFmdGVyIHlvdXINCj4gcGF0Y2gp
IGZvciBub24tZURQIGFzIHdlbGwuIEV2ZW4gdGhvdWdoIHRoZSB2YWx1ZXMgc2hvdWxkIG5vdCBi
ZSB1c2VkDQo+IGFueXdoZXJlIGJhc2VkIG9uIHRoZSBhYm92ZSwgSSdkIHN0aWxsIGF2b2lkIGV4
cGxpY2l0bHkgcmVhZGluZyB0aGVtDQo+IG91dA0KPiBmb3Igbm9uLWVEUCAob25seSBhcyBhIGZv
bGxvdy11cCBpbW8sIG5vIG5lZWQgdG8gY2hhbmdlIHRoaXMgbm93KS4NCg0KT2ssIEkgd2lsbCB0
YWtlIGNhcmUgb2YgdGhhdC4NCg0KQW5vdGhlciB0aGluZyBJIGhhdmUgYmVlbiByZWNlbnRseSB3
b25kZXJpbmcgaXMgdGhlIGVEUC9EUCB2ZXJzaW9uLg0KR2VuZXJhbGx5IHNwZWFraW5nOiBzaG91
bGQgSSBjaGVjayBlRFAvRFAgdmVyc2lvbiBiZWZvcmUgY2hlY2tpbmcgdGhlDQpmZWF0dXJlIG9m
IHNvbWUgc3BlY2lmaWMgdmVyc2lvbi4gSSBoYXZlIG5vdyBzZWVuIGNvdXBsZSBvZiBjYXNlcyB3
aGVyZQ0KcGFuZWwgaXMgc3RhdGluZyBQYW5lbCBSZXBsYXkgc3VwcG9ydCwgYnV0IHN0aWxsIHNh
eWluZyBpdCdzIGVEUA0KdmVyc2lvbiAxLjQuIGFuZCBQYW5lbCBSZXBsYXkgaXMgbm9uLWZ1bmN0
aW9uYWwuKFJlbGF0ZWQgcGF0Y2ggaW4NCnRyeWJvdDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy8xNTc3NjAvKQ0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+ID4gPiBBbGwgdGhlc2UgcmVzZXR0aW5nIG9mIHRoZSBjYXBzIGNhdXNlIGEgcHJvYmxlbSBp
ZiB0aGUgY29ubmVjdG9yDQo+ID4gPiBuZWVkcyB0byBiZSBtb2Rlc2V0IGFmdGVyIHRoZSBzaW5r
IGlzIGRpc2Nvbm5lY3RlZCAoc2luY2UgdGhlbg0KPiA+ID4gdGhlDQo+ID4gPiBzdGF0ZSBjb21w
dXRhdGlvbiBmb3IgdGhlIGNvbm5lY3RvciB3aWxsIGZhaWwgc2VlaW5nIHRoZXNlIGNhcHMNCj4g
PiA+IGJlaW5nIHJlc2V0KS4gSW5zdGVhZCB0aGUgY2FwcyBzaG91bGQgYmUga2VwdCBpbnRhY3Qg
aGVyZSwNCj4gPiA+IHJlc2V0dGluZy9yZWluaXRpbmcgdGhlbSBvbmx5IHdoZW4gYSBuZXcgc2lu
ayBpcyBjb25uZWN0ZWQuIFNpbmNlDQo+ID4gPiB0aGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3Vl
LCBjb3VsZCB5b3UgYWRkIGZvciBub3cgYQ0KPiA+ID4gY29ycnNwb25kaW5nDQo+ID4gPiBGSVhN
RTogY29tbWVudCBpbiB0aGlzIHBhdGNoPw0KPiA+IA0KPiA+IFRoYW5rIHlvdSBmb3IgcG9pbnRp
bmcgdGhpcyBvdXQuIEkgd2lsbCBhZGQgdGhlIEZJWE1FLg0KPiA+IA0KPiA+IEJSLA0KPiA+IA0K
PiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0KPiA+ID4gDQo+ID4gPiA+IMKgCQlpbnRlbF9kcC0+
cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1cHBvcnQgPQ0KPiA+ID4gPiBmYWxzZTsNCj4gPiA+ID4g
wqAJCWludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA9DQo+ID4gPiA+
IGZhbHNlOw0KPiA+ID4gPiDCoAkJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9kc2Nf
c3VwcG9ydCA9DQo+ID4gPiA+IC0tIA0KPiA+ID4gPiAyLjQzLjANCg0K
