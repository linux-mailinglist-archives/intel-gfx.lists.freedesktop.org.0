Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJFVObimnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:25:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5629D1879DB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F60C10E098;
	Tue, 24 Feb 2026 13:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GysrG7/b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E828210E098;
 Tue, 24 Feb 2026 13:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771939510; x=1803475510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jgx1uUwHmT2fQZNN4omdRkPF4CHVbVMP8Z26HdGaSZY=;
 b=GysrG7/bd2MXHsIiZRwtpYju/zgyivbVVGcl5eCx9MK8oRepoWRJEQyc
 xlGRANnJ9lvR4goFvxFt0TI+1hE9sw8NvNkWlYM8g8x/PsKKwWiztiQCM
 ZaPWGn+vWuK45WPn15jKoQQjLcCZbY9ana69wyHvdl1j69mzDi58doiEU
 Is9YIWHGI4M1kOZ0UR0e1XwbEeQA59zfaTXNxN+4VLnOSNUM1MX21DdSF
 0oO1WaWYpnjkKlEpIpWxaWPezvFZbTL3nxAxnn9lL44OhWw3biDzyYzfj
 q/AlZ7xzd8vkLHorQGh82TlmiSgs/GaaaMGBsV6gcEum5WevMFXykKy0X A==;
X-CSE-ConnectionGUID: DeTWfGhQSRq51yBFokvLPw==
X-CSE-MsgGUID: vpEX8XN9RKWrEIWc0phALw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72827112"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72827112"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:25:09 -0800
X-CSE-ConnectionGUID: mbzmISJnSFmhnM1LyBqO3A==
X-CSE-MsgGUID: HeQS8QnrT3WxRIVtfDRLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219379148"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:25:09 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:25:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 05:25:09 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.23)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:25:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R2n7u7Z3vWrualEkkcaySjubBK0yYqoS9mLqvtdJGKUoAlCSFW725secoyoGthNR9Dx4ckQama6v3KSnqqiSFV5Gu3X/4uxyQATGVGghtyW2I1wCA60hKK3zkPSJEHHPgHpJ0fxETTlgfxm4LrVF2dF7tgKc+bWWMdolxxF5ZX1r9UAr7W1mon0E6jSQtBmb4H8zFg8ZiRzINgqQxTUSQHboHlzY5h3NB9lPQsanjG9u8SNCOoOPuBRjiQlJ+rj+NRL3069O9U3nM/rGRmP7myQ5ynjYZCKiT1xXfoQnMNS5RPZ/REaWZL6+FRfrbgmwJLkB50HovM4aooutFvlDEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jgx1uUwHmT2fQZNN4omdRkPF4CHVbVMP8Z26HdGaSZY=;
 b=Z/DKz4LsmNMEHl1nY+HIop1xcV+YuQJne8r/yfz/OORPq9yK2OV1GKUBOg0+HwXy6B6apmCn0TiEO42u4n5hfAtDyG7XnZlQ4NgJ6ySB4eyDCnfopEXP5PyJAoQ0TYYZNq2OA7FxPu0dCAIXHyoUxQJL3LIfj8qm+H5ClmKpYMiVqK9wqjQbOT8hjohyQj5mYKK/Y+aZaPuiYUt7IKTVGB8cD3TXQw2lUilg8PQ/UNIc7i4ayxLDdsAQYMk3DWO8TtPiE7bWBCsVl40wDR2Qf2d5Ko2J/jx3Cz4G5ypot4z8jvYGcH8mt84F2ndZQHDdUcvsMSlyzhDTvh8o2Y0nTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by IA1PR11MB7855.namprd11.prod.outlook.com (2603:10b6:208:3f8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Tue, 24 Feb
 2026 13:25:05 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 13:25:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Thread-Topic: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat
 header
Thread-Index: AQHcpOT9aGG/xRBbykOdLs98QvwxbbWR0ziAgAAEjlA=
Date: Tue, 24 Feb 2026 13:25:05 +0000
Message-ID: <IA1PR11MB6347F1DD6577F48732699843F474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260223171015.1035550-1-uma.shankar@intel.com>
 <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
In-Reply-To: <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|IA1PR11MB7855:EE_
x-ms-office365-filtering-correlation-id: 69ef7b22-dc7a-4b8f-5aa1-08de73a81f9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?QkdKMm5kRUJUYXp6cUN5S2RnVmp4bWFsV1dsT2d0TGptWC94WXZvdUFXZlhT?=
 =?utf-8?B?MzY2QzYxckc0QW9HU0RpUFpwTG9POS9qQzVXbUVZZXlEYU85MmVvOHkvMElo?=
 =?utf-8?B?NTFnYzdkVEd5OTZhN2J5SW91a2dTdDNOUDhXOUkxdjNJM3Z3NDY0eDN4ZDB6?=
 =?utf-8?B?MUFWeUlVaUx1VDZqZ2QzTkg1eitYdmJENnlHcWhNR1E3clNUU3Jqc2xVVTV0?=
 =?utf-8?B?QUNFL3U3TDVBV2J6WG1EQUw5ZTZ1Qm45MkY3eSt5eHEzRTZFRGltT3B5azgz?=
 =?utf-8?B?N2VXcGRaeldiN014VW5EMXBlaEVtM3hVemhvNE9lZllqa01tcWEyRmQyUVRJ?=
 =?utf-8?B?SHFGakNqelZuUTFxZVBJNnBodEpzbm9FK0hCZk9ldTZmWUp3Z2ZyQ3BsQ090?=
 =?utf-8?B?M2pWU2JhMFZMcWlEc1psVkdLNURPWi9wT055SWNOa243MDNzbmlKc2tqMTk0?=
 =?utf-8?B?ZVhYalp3Sk8rbnF5MjZmTG0vTnVHbnNRYWRMa0d6QnVFVEN3YzlLZTlwendw?=
 =?utf-8?B?eWsvcmJiZStoWmxQVnduYjFSZzcya2N5ZzFrT2pSc2M4TFkwWklhM0gxcHVp?=
 =?utf-8?B?di9FNjdzbllSaXpPTkZRNFRMQStGejNNYTdaOHVzWDhmNTc1SW1Ra0Y1dVZi?=
 =?utf-8?B?NGNOZ0pDbVIwOGVBcnZCNzZlRnR5a2MyQ2kwSzJEaXN6MW5XdVNraGZnZzc2?=
 =?utf-8?B?LzhNS3kwb2NEY0UzVWJKYStKOENaaUttdGhNODE2TWh4WVZkVTlyLzlnUjk4?=
 =?utf-8?B?eThMZEhVQkhqdW1CQUR1T0lqUkx2NC9oNitXdFVvTElkZjd0azhpUnJQb1Jh?=
 =?utf-8?B?QkhvSkRyMlF0eGxpYWt1WWhRbXVOazdrcnlsMm16T3VmZ1ZZaG1BUkR0VzBr?=
 =?utf-8?B?YUErMXcwQzVpampjYVNyWVZRQVhQRFo5ejBQaGd0Wk9uRUFvWVh1U2JyU2pX?=
 =?utf-8?B?bnQyL1p0YXBIekhvNEdJWUlsKzZnVjBLTE1Sa2NnTFhiMStTc0M0U3VDcGFV?=
 =?utf-8?B?ZThTUkhqLytPckZDU2tKc3Z4Wm9kRi9TbG1oWTExLy9NaWE2N3RzaHZON2ZB?=
 =?utf-8?B?ZHN6QzM4UHNZQ0hBZjZrUlBmTURFRXQ5M2pzaUtRVEFjejJBMWN2WDlNZU9q?=
 =?utf-8?B?d245YVh0RHBHcDkxUWJLNW9DYVhUOVRveGhpd1ljVVhJTkpGRHJwemszeWdk?=
 =?utf-8?B?MnhDNGZMNXFwcmk4WHdLdDY1UmRrU3NKSXdoSjVnakpkSWNIdUE4eGJCemNo?=
 =?utf-8?B?R3I4dHhXWThoTzRSLzJ0eGlMREQ4VEJmZSt2RVZvb3Z3UjhYOW9sbDB6aGF0?=
 =?utf-8?B?ejZWUXdMVWo2c2t1NERTOUh4Q2cyaWxna0lleXR0NFJIYTJLRHprWjhadTBH?=
 =?utf-8?B?emxzeUNFSVYvbzA1QmlCMXpWS0hnQWRrNEFBMHFQczZlZk52bjZBZWJSWkxo?=
 =?utf-8?B?MVNUTXY0U2xNQldpbTlRTW1CbnpvcU9pWlJldDdxSGdNY1RLN3RzSGEzUW5m?=
 =?utf-8?B?MllCMmpFRDRSVXl6QTN3ODRrVkUzUXpodFVCT3pBSDRqdkZ5NlhlVXNqNm54?=
 =?utf-8?B?emVFMzdXR2hyMVhGY1lqbjNlQmlmcWVVM0tWcUJWaVBKdHRnREFrUCtmSjJD?=
 =?utf-8?B?Y2hKZU83MFZlWUpNOVEydGYxeWRPM0dPQlZIUkI4U1lFK3ByZEhEZWJhY05Q?=
 =?utf-8?B?U0NEcHlXQVJZMm9iUXJ0RmlneThaNEh5cnRDZzFOMXVjSjcrTUpZZWM5M3dV?=
 =?utf-8?B?eWFoak5YUlpKa0QvZ29yL3YvWElSRlhOZXJ4cXhSWXhuNmRtVG1VaWpHaDlC?=
 =?utf-8?B?WHQzQXBhSG1xcUZRUC8yK1pLZ0djcHY0VTBzWDZRRVJIb0xWck41WTBCdlZt?=
 =?utf-8?B?eFBZcFdsMzg5UnZYQ2Y0LzEwNkY1ZjBkVGorNTJGaUxtcVBYdzV0bnVmNGha?=
 =?utf-8?B?Zmo1Z0tkQkEwVUxuVkZKMUVEOU4xWW93ZFpqRjJSQU4xZXhMNnFMVjFMUmYv?=
 =?utf-8?B?RkJzTFZoRXpMT3g4V2hnM09nVHZRSVB3K2ZxdWVST2tTdEFCeThLclIwVUww?=
 =?utf-8?B?UUxvZGR6am1vTk5vZ3ZmT0ZmaU4xRU9CV0x3WHJmcTY1aURiOGxkZjVxS1Mw?=
 =?utf-8?B?eFZXV0t4QjRyc0FxOVRCbjRxZnJ2TDlEdGtsOGNMM1R1SEJPaEtGRVFkM0JC?=
 =?utf-8?Q?xEmCsT3HSZV/J9E3TOtr9q8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEh6VFpTcUNnMFdQRFVMcHQ1c2NJK0hmNmh3WE5vWWliV3JsTmFMQnNKYklP?=
 =?utf-8?B?N2lhaGpFeFpLT3BOa3pZaU5iZm12MXJEQlFUeTJ5Y25ydkpPYTZCTGh5WXJG?=
 =?utf-8?B?YmdXM3crdW1QV0VSbldzWHo5U25mbDkwbEd5VDk2d1NOd0M2Umtwd3psK3JX?=
 =?utf-8?B?OGtMbGRsQjZZMEhLM1B4ak9uaFN2amNnUEg4alFJRUxuWUR5eEM3RDJpUzJL?=
 =?utf-8?B?WEZRbnFjSTM2T0xkYkVlejFYZjdTRERCOFY3b3o2Y1luQm5DWklpVzd4SExo?=
 =?utf-8?B?bDlianNyVlIydnpNUnNUSWZLSkp5U1ljVnJ6ZnRXVjdOeG1GWFBibXZKaEVH?=
 =?utf-8?B?VHRWRldZZ1pSUVNZcEtwQmpnZHRpdDVhMHIwS1N1VEJUU1Nxdy9aeWpLaTZu?=
 =?utf-8?B?b2xpTm5XalV0Z092dkY3ZU5NL0xqQ2F0dzRtcVYwWmdVSkc1UWt1MHJIMUFK?=
 =?utf-8?B?K2U2VWVTOG5NQmZZc0xiVEtabFJ6Tld2N25vTUlNc3FWVGFRcnk5SmdYMkF3?=
 =?utf-8?B?TmtmbjdKSS95YkhyT2JEc2ZjbTIzTTlmMGd3eUZidENXazl1WUlZU0ZVSDZX?=
 =?utf-8?B?T0lLVVE5YUMzeGtlL0NKdWs0TVpQRFJ0QVZKaEc1TFRxSXU3NC9adlBqYUtL?=
 =?utf-8?B?a1paV0tvZnZBOFdvUngrckR5dWExemxqUlhCV01uTWlmcDdRRC8zaHJjM3RH?=
 =?utf-8?B?WE9WMmwvZlFFM2NVZlRpSW9BUC8wMVFWcU9YaHpMdnFDZ1VWQXBBYkVZYTdr?=
 =?utf-8?B?Y0NHMzRoeXdRRG9rbjNBWUM4djNQSXMwOHVXaXhYYkIrd0ZtdFd6TzFpNFZQ?=
 =?utf-8?B?UjN2U2IzWS9CeGFkZ2QzK1l4SWtzR0dVT0hLYmJkNGhXZlRKNW9CQjVtL0Jj?=
 =?utf-8?B?aHNzUUpPODlGWUZlVHZ3ekNFSHlUbGtCUFFKcVlnQ243bFBlaXNqR0hnemZY?=
 =?utf-8?B?TFp0VnQwRHN2R21wVWhkcVB1OXR0Mm5TellaWGlTck9iVEptcm45R0hPSjha?=
 =?utf-8?B?Z2lsQWRuTFBxeTRBVG52UHBDczl6OGRlQk83akovT0J3d3hoYTFGMU9PeEN2?=
 =?utf-8?B?a3dWYTN4Q0xDL3hKNVJybWRzMUltcDJHSW9INmlFY2xDV3hSZUtKSWJDTXlB?=
 =?utf-8?B?MVg2L0Rtc2E1cjFRNkZZb0VNL3VZaC9reGJYeGc4My82RUNxcE1senlURmk4?=
 =?utf-8?B?aEZvZThHekNSWDl1OHQ0VWU1dmxrTnhYSWU1OHJmQ2hkUG1pRFlKa2krTkhS?=
 =?utf-8?B?eWtJUkIrd3BETHc5WkhBT2s4cWx3RERYUVNvNEx6R1F6c0NPdGYzcHJPbWFG?=
 =?utf-8?B?c0FXVVVrSk9nT0NZdytjVVZvd2tTQjYyNzZLcHhac3dBK2orZW5kOC9qbXJR?=
 =?utf-8?B?Tm5PYkR6L0tXdDRFVnZUa2l3MWRhcE8zMzFtNFY1R2w3S2xwRUhqNGFYY2dE?=
 =?utf-8?B?empjbU0yYlVmZ3ZCM1E3dC82T1hjeUxyQVh5Nk9yNkpMVVpKZW13blB3aWNv?=
 =?utf-8?B?bU00Qm0yQzg4S1R2dU5BakZYdjNGdXRDazM0WEZtT1ZtZGVyUXNJQXhndlZ2?=
 =?utf-8?B?RVY1cC92Z0ttL0dLSUZyRDBnK2gwdVduZ3ZnUVBrN2dCMjNFcm5Yd2xMMi9B?=
 =?utf-8?B?Q3NqMjZFOUk3SXFpSmZiS0pwMWJxblJma2RrRkNZRXBNdDlKVzFxWnpxZzha?=
 =?utf-8?B?OGIwOUdxN1ZpSjFlQTVpWjU5TlFXTFBkemZHQmFMN1VGWldvU1p4QStTV2ZO?=
 =?utf-8?B?a0dSVFR2VkM1L0RERG4zMXZ1QTdsV2VTZ0xmWEYwc0I4elN2QWl5ZmVFMHdw?=
 =?utf-8?B?L0lLRzFSMmdOSERNZWN4TlBMamp0cWUrN252T2t4RlJaNjBjQ0RrejQ1UTVy?=
 =?utf-8?B?aVBaMXNrall3U0NOTjhnRGEwY0ZQVTFZWTFBTm4wbFpwN0F5VUtSdm1rc0Uz?=
 =?utf-8?B?WUI4ejdYSVJnWlJ3akNuZEpKcWNFbXhFODVzc0s1bkprc0EzRkx5b3hKYXVh?=
 =?utf-8?B?OUFENXg1cVByenAxNldqWTN6emVpalNyL2lEd3hQM3RoTWRhNDNuZDdDTTVr?=
 =?utf-8?B?elNsSXEwMThoMm9CbEVNMUthdTNoaXZZbjRyZUduN2wyY2ViTVNRek92aWp6?=
 =?utf-8?B?OWg4dHhjT29ZZHBXcjFTY1UyQkpkVnpHbVVRZ3IwSSswWllsL1Vab3hLNVhq?=
 =?utf-8?B?TUJTN1B4d0lQeW1Vb2k3TUJQdlAzVDZnYW9hM014SHRieGJmdTJBMXlDbDFU?=
 =?utf-8?B?VGY3QkVSL2ZDdEFSYW9RdU9qTSswalpNWWF2cEJhcUtkaWQ5MGMxaWYwMmdV?=
 =?utf-8?B?MG1zMnQrblpNWWorR3FPZjg3Y1hHNjFLeGp5YnVoQ09GNW1MYmFNdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69ef7b22-dc7a-4b8f-5aa1-08de73a81f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 13:25:05.4760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eyWNX4ijSZ8o5Jz9ogTI0DLNUZxoHRPRwLt+Hb0Ds2Ra1UItyPY+ibXm86LeQA71OOVk0mgPemqpA0UqZ5yhQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7855
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,IA1PR11MB6347.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5629D1879DB
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDI0LCAyMDI2
IDY6MzcgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS94ZS9j
b21wYXQ6IFJlbW92ZSB1bnVzZWQgaTkxNV9yZWcuaCBmcm9tIGNvbXBhdA0KPiBoZWFkZXINCj4g
DQo+IE9uIE1vbiwgMjMgRmViIDIwMjYsIFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+IHdyb3RlOg0KPiA+IERpc3BsYXkgQ29kZSBpcyBtYWRlIGluZGVwZW5kZW50IG9mIGk5MTVf
cmVnLmgsIGhlbmNlIGl0IGNhbiBiZQ0KPiA+IGRyb3BwZWQgZnJvbSBjb21wYXQgaGVhZGVyLg0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCj4gDQo+IEkgYWxyZWFkeSBzZW50IHRoZSBzYW1lIHBhdGNoIGVhcmxpZXIsIGJ1dCAqc2hy
dWcqLg0KDQpPaCwgc29ycnkgbWlzc2VkIHRoYXQgSmFuaS4gSXQgd2FzIG9uIG15IFRvRG8gbGlz
dCBmcm9tIGxhc3Qgd2VlayDwn5iKDQpUaGFua3MgZm9yIHRoZSByZXZpZXcuDQoNClJlZ2FyZHMs
DQpVbWEgU2hhbmthcg0KDQo+IFJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPg0KPiANCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1p
OTE1LWhlYWRlcnMvaTkxNV9yZWcuaCB8IDYgLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2
IGRlbGV0aW9ucygtKQ0KPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hl
L2NvbXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9yZWcuaA0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfcmVnLmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfcmVnLmgNCj4gPiBkZWxl
dGVkIGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCA4NjE5ZWMwMTVhZDQuLjAwMDAwMDAwMDAw
MA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVf
cmVnLmgNCj4gPiArKysgL2Rldi9udWxsDQo+ID4gQEAgLTEsNiArMCwwIEBADQo+ID4gLS8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8NCj4gPiAtLyoNCj4gPiAtICogQ29weXJpZ2h0
IMKpIDIwMjMgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiAtICovDQo+ID4gLQ0KPiA+IC0jaW5jbHVk
ZSAiLi4vLi4vaTkxNS9pOTE1X3JlZy5oIg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVs
DQo=
