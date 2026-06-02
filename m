Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJZNCmtZHmoKiwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:17:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E6D628024
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D6C10EB8D;
	Tue,  2 Jun 2026 04:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Poyy+oUa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB6510EB8A;
 Tue,  2 Jun 2026 04:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780373863; x=1811909863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R+GUR0jiyq1l4kPSeaSKe2qAvuqoq3FRl8ZgqQs2s54=;
 b=Poyy+oUaKjxd4I/DZAiGh+ng3SJLlwGfWkAa9gAYBVKybAGgCbheg6Uj
 QKxtLFoAJCnDfbge0hrl+U0Qt8P5s7SvWyBLEVClMlg/j6yMPyWWrt/7+
 ZZshOKnf3bgQkUFsTeAiKWSQ0bY0EhDQBgZBGTDDTzJ9ZSUorcSfxLiPN
 qyE9WChS3r9C2xBY+12H72/fKOdgj0OtxXtQvDPiLsTW3kzr66Btzs778
 6TBo8fuQEtjtxsRGpYVWmRsG1tnwufAlXckZ8iNbxuaFc9UiZMTaqXnrJ
 VuK/HZ8+KOVKLSre3vruZ0WglDXD09L452BKPauu3HcPBD9oIA7DPs8Tp A==;
X-CSE-ConnectionGUID: XyY37ylGSQOyyLzdrKq1UQ==
X-CSE-MsgGUID: 5ywQMouORV2Nq2ZTDJnWDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="106595651"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="106595651"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:17:43 -0700
X-CSE-ConnectionGUID: Fc++JI7oQrKE5tXeXn7wZQ==
X-CSE-MsgGUID: oxkH95CFTmidGS4w0l89kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245595227"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:17:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:17:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 21:17:42 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rlNFmlUu24SMDJnV8g1ds8UdFT+NmJHIV3p8HsDWpWOgyO4I8V6UHOGDBfliL/PxpGLqZl7M96NmHDtBT+4MPl2u6Ee9TYbWG+dLuUi17iaNdvEOOBu+S+lnu+42DnmCnM+9idYktiigGpjTTHobRWkakrJYNE+SNTlHPFAKj4OKtJBC+/ixDzPneT2I4Zm0bgK79nXmC3ajnj40118BfvSNQOJ+BT9oL67odZsGG+hRewDIB5f1MoAsoKO9n0AKUgCywm9zqKI67S5C6TtiEBaSPxrRWyvDHT9UfOQb5kcC6a+tOhu38zGDAgtKZg8ClxH5iz/bS1a4UOLVDkjlkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+GUR0jiyq1l4kPSeaSKe2qAvuqoq3FRl8ZgqQs2s54=;
 b=yYTbTKDGtbP75rBoq5ocARPAO4afCyerxcPu5ywuonEqcaXkeXdV111+df9qtWE4+4dDp+FGk5WqK+yv3SvMZxmR+p6vLVAOPYx3XK770jH5racFccL4Nj0sHwvc3AfFgXkty7ouGnZbMlYaaBzsgTxDK7f7+vFuxi5KbeaZwrIzwSWhwzI/joAEyuFvcDw7OEr8hXBSwggH38uG0oxOH0EcEFOQFHKHiKNOHtWT5Ur/phGY7C+zN5DlLYuHnLcmkMZG0cNd0w5/1pExMblPXI9MpCVCvEQJv6irqjScfZN4jj8Qq+OHQygRxLGIfmvkPgQ5hPQveg3Pe7plAy9cGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by MW4PR11MB5936.namprd11.prod.outlook.com (2603:10b6:303:16b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:17:35 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%3]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 04:17:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
Thread-Topic: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
Thread-Index: AQHc76F9NpshLxEzUE6LNRBomkU1sbYqpQSQ
Date: Tue, 2 Jun 2026 04:17:35 +0000
Message-ID: <IA3PR11MB89376FA72BFFB178F27810B2E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-8-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-8-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|MW4PR11MB5936:EE_
x-ms-office365-filtering-correlation-id: a7b41ffe-c873-4d90-1e90-08dec05ddff0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|3023799007|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: txRHfXFFjatlJzIUDpd3SjUp72v+UEIxR/DmYxqnW7j12gh6D+bfYO9htF+nWIKepkjEKRKIDjK8I7pkYEJh6DbEJMiZieWQVIczCuj2qP3vhdH4/hSAp3t+7ylciw+tdFLw2jbPSA9yomiUdibfFxFRv2yeVDqhaXe+ucqtWcq8sFbcEc9j6FYiEum+c98xhripASR4YUDbLCKNMitpcI6E3D00XQ7deppmf65slGGbzJK/xuapDy4qFpmlu5UePBgUk0ALSAJv8VgjXNFgHpFg3flMM9uCmIZU8CTJhf3YsYt73GNSIKqNwTUYF/8idLjiy863maovY75o5zTeKjE6rkI5Y9heh91lYqL9gRNaTP5IMPkXjCHr38z9JkP+i5uKl7s4pWvPhu8FkjWHp8jsmNUiilz/IKR2MrSHkqyAyCrE2ntbPIHYyR3rS0Rux7VSIYvMv4fwAgwTZIp10zU1vSGZhuHnYQXBuGf0e6rxZcdroltRM6le+A/0Kb97UrXLmQwHZ3kMnf/gb4oVafSSaoSj/LdDGuJG1eMG2QR0rqhyYPl1FSPR1ezNFfXOqYJxazgfWXyr/C2Ml45MWqG1Qcp32kQxr2Tyd2S9x2cy80TQ7RDQFER4IPrhGcmSaoscxt+E8xjE+vu2X6gRdoYjbPuxFIncrkGvkk0yMzqTar/0Bt8NirPpTD2LNt+mAk4mkzEDRguKRfUMFrZE9d4G3750/rqy/IxUsKZjt4IISqfZYbNJz9j9A5+ylvdc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(3023799007)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjltS3pmZTVjMWN4aStjcEVGR1dVOE9pMGUySjhOVFpieDZFZjF1MzBpZjdR?=
 =?utf-8?B?WjA0STh4aitobnYwdW9BWFhxY0tZV2ZPSGFzRWtYdUZKMlRCQllyNEltYW5j?=
 =?utf-8?B?cW1VbzdFeHdPZHRtWi83b05heFVnNk5vYURVU1JkLzNVUGtUcUhzcjc5cTkx?=
 =?utf-8?B?Zi9SeDArQkF0M1JZQ3cwTDZGdDNtZ3RESlFsTFc5UlAwbkRIVUVVQ0xGc0JD?=
 =?utf-8?B?Y2IyWVVOb3JvMmtkWEpzMmNuVXo2V3RwZGJtUTNRbm9yc1hTT1pTR2dDaVB5?=
 =?utf-8?B?OEFoZGpZQllLcHNIVUJVYXFhbjAyOGNQL0ppVUliYnNLbDdId3dIR2VGVmFS?=
 =?utf-8?B?MmtNRXFpQ0NyRVVWZDlUTGN1cllvVkorTzFhTW9jQWpFQlBzYjNSUStTVXdK?=
 =?utf-8?B?VVdCVDliazcvNCtieGlxNnZxY1BPKzJXZzlCNmxVUnMyNHlUVURFMkg4dmNt?=
 =?utf-8?B?RXJsMTBmVXdmRGRCOUExcFB2U3cxMThmY0xGd3NOZDNlWkdadTlYN0ZIY0FD?=
 =?utf-8?B?ajN2RlY4SHlNU3owOStxNm1FZVJpY0FMVjU2OVRKU0kvd2M1aHpCVWRTVmVB?=
 =?utf-8?B?TTdzRG9uQnU2d2JPOVVjT1UvT0l4M1oxaHdjR0tBUlRveUtObVJzWFZhazky?=
 =?utf-8?B?RnFFNTBXdzU4WTdqSFZraU5kcnFqUnlWTVcxb3pRUzhFN2ljV3J0OUJtaXZC?=
 =?utf-8?B?ays0S3VQamFzM3FyazNMWUh0OFpCblJvdmRCUU5hbGR6blIzS25NRkFsaCtD?=
 =?utf-8?B?TzJBMEx3YWJFZmw1MEhyMklsL1NCUTdUTmxoRjVmZzhJZVlyQnl5ajYyc0c3?=
 =?utf-8?B?L3FJVG8rTWdESkRpRGNOWTVhNFJQZ2pCSUZ6L1h5NVRLWFJYNDhiVEpseGtx?=
 =?utf-8?B?ems5aXg4ckxXY2JTN2tWM2VNekg0Q2NUNi92bFdDdzRUb3MvRG5xaytFZzEx?=
 =?utf-8?B?emI4cFRPSldTNGJCZmlDSXRwZlZ2d09XSWJaRkpQeTh1TGxSaHcrRlU3ZzNp?=
 =?utf-8?B?eVVKVHAvRUV5MG9SZ1hyVmFIekUrU1pTNzJNT3JOdndTdVpJS0I2OFczeHIx?=
 =?utf-8?B?Y0NVS1JaeG1kU1ZTc2RsbVBqUlIzMVdGVlZFREgxekg1d2JKMjBPNkh2OVVL?=
 =?utf-8?B?ZXMrQ3NHcEdlTXJLVVREU3JGb09tMFM3TElUSzdzbURJMTdiOTdkVFpIcDND?=
 =?utf-8?B?MzhqRTd3QUk4a04xL1liWDJMN3lFZ0F0U04vb0lPR3dSM3J0OXVHN3Y5V0Qy?=
 =?utf-8?B?Q1g2QUNaam8yeTdTZlJXMmJHMTRZa3BKWk9TZzJrUU1USHhaemlSZGRPVGw1?=
 =?utf-8?B?RXlFeDM4RXBEazJJWWIrekdCdGJZcFByZW01ei9yUDkrbVE5Sk9YTnRRTzVW?=
 =?utf-8?B?YUZPVElDWkxiOXluN1B5N1phbGIvNk10bFBSSmpWU3FDTFFmcHZacWRjZ2Zn?=
 =?utf-8?B?VksyaVNCclNRR3FqUHprQ1ZvVksrZkRYRDJmU1M1RE1pZ000TjZJOGovL2dx?=
 =?utf-8?B?eDluNjRnKy9YbVY4bVRIZ3QxWTN5UEFPQ29rN01TRkZMVEF5K2xEYU5RY0l6?=
 =?utf-8?B?SGtwdDJQTmxSdXJUcFRydjhMVjNqNVRZbWtDWUNNL2wyek5mMDM4cDlXckxX?=
 =?utf-8?B?WWUxOHV2aHhXK2VNVzRUTTFvS0o3MFo4MDJ6VXFKejIyQnRDbWdsb2paWVZD?=
 =?utf-8?B?ekl6Ry9yblYwR2gvUlZXTWhpazJrWEloZXIvQ00yajdRaFFSM2hJL05yTDNJ?=
 =?utf-8?B?RXJ2UTBveTExVFBWSlV4dUNJZVdNRk1XaVk5WkJ3OTFNWEp6WHAvZ3kzaUtr?=
 =?utf-8?B?RmtNQXJtOWlSZDQ2SVFOWGFpNjVML01ZbE9BQ3p4STZIbFM5UndmYnl1bWpD?=
 =?utf-8?B?UXBLdWNqTC8rRGlSVjR2ZWM4bUY0c28zYml0UHV1T3JMcDdTd2V0dkVIaEU3?=
 =?utf-8?B?dXRCVXN3QUNtUEVXUHhiQVVPKzJjOUZUMkNIc0Z1dUdhWHkwTVRCWUNlNUlT?=
 =?utf-8?B?dU9mSmw4aTlRTVNoQnEwVjhtNXRQWndYdWFuTU5HNy9vUlgxQm1qYmJzdDNy?=
 =?utf-8?B?dnJFbTVnV1h1cUQ2cXNXZ3IxRmRuUXVBMVNackJTR2Y0ZTFVdVltL096dnFJ?=
 =?utf-8?B?Q3lIbi9sVXVCNHozVkxOWVFxaWdaNVo0eVgvM0U5QTJUbGlWeGxsclU0Y1VK?=
 =?utf-8?B?b3BIK1JNZVAvQU0zcW5TR2FDaGp2QWFkUEwyUzB3M0Q5czY1VENGaC9PS2Zn?=
 =?utf-8?B?bWRvYUJISXJBZ2hkUVJoQnhGbmU4dWNJd0VvTkNkU3MvZWd5OFpYUDVtcTQy?=
 =?utf-8?B?emdhMnNYRmVOZ2FKbmNvMUhNRkN2amh3b2pLd2UyRi84VmJOVG9zUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pltpnh2H4I7/iZpLHbM90BbfjP1iWWIyqiByheO5I7PUiDSCGd6jh/mZFFNUXOVqQn7Jo8ovE316q+PMNHr7+Ie73jiiYnLBtZmGQmNpC8WCTcQI78amSpzvtJRXiuGJxE4zaVeVsDbKO1Th5Zm0O2JHoIE558j9Qi3MJAL7MtkUJ3luBbq0QZtkO2WcLvhFPwr5hp6VIk75KDkwNvn4gYBxLSviIGAGQOIAIH5ZFNbJrqXydWusRja//EaV4tUoY0D4hXITM3iU5QHdFwYtUQd0QuOwE/q+z9AOdsLdhGs6DhsYe3YIFONk4sDDK8WVfZgZCa5cEVhdMnwiuH4G8w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7b41ffe-c873-4d90-1e90-08dec05ddff0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 04:17:35.4582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0+pAbXa+346rClNOHIVfk3+zoVmwt2uz1LsnkS8XGYFaLz6lRsLgBYW5Z72V0L04JD6dpZvd+LOeXff6MIfcUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5936
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 88E6D628024
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDcvMTBdIGRybS9pOTE1OiBvdmVycmlkZSBMVCdzIFZTL1BF
IHdoZW4gcmVxdWVzdGVkDQo+IA0KPiBBZGQgYWNjZXNzb3IgZnVuY3Rpb24gZm9yIExUIHRvIHJl
YWQgcmVxdWVzdGVkIHRhYmxlIGZyb20gVkJUICM1Ny4NCj4gUGFyc2UgdGhlIHJlcXVlc3RlZCB0
YWJsZSBhbmQgdHJhbnNmb3JtIGRhdGEgaW50byBwb3J0J3MgYnVmZmVyLg0KPiANCj4gTFQncyBW
Uy9QRS1PIHRhYmxlcyBoYXZlIGxlc3MgY29sdW1ucyB0aGFuIHhlM3BscGRfbHRfcGh5X2J1Zl90
cmFucw0KPiBjb250YWlucyBmaWVsZHMuIFdhcm4gYWJvdXQgbWlzc2luZyBmaWVsZHMuDQo+IA0K
PiBVc2UgNnRoIHRhYmxlIGlmIGVuY29kZXIgc3VwcG9ydHMgRFAgMi4wIG9yIGhpZ2hlci4gT3Ro
ZXJ3aXNlIHVzZSA1dGggdGFibGUgZm9yDQo+IERQLg0KPiANCj4gV2FybiBpZiBlbmNvZGVyIGRv
ZXMgbm90IHN1cHBvcnQgRFAuIEluIHRoYXQgY2FzZSBmYWxsYmFjayB0byB1c2luZyBkZWZhdWx0
DQo+IFZTL1BFIHRhYmxlcy4NCj4gDQo+IFRoZXJlIGFyZSBubyBjaGFuZ2VzIHRvIGludGVsX2Rk
aV9kcF9sZXZlbCgpIHNpbmNlIHNlbGVjdGlvbiBvZiBjb3JyZWN0IHJvdyBvZg0KPiBpbnRlbF9k
ZGlfYnVmX3RyYW5zX2VudHJ5IGlzIHNhbWUgYXMgd2hlbiBubyBvdmVycmlkZSByZXF1ZXN0IGhh
cyBiZWVuDQo+IGRvbmUuDQo+IA0KPiBUYWJsZXMgMS00IGFyZSBub3QgdXNlZCBhdCBhbGwgYW5k
IGFyZSBtb3N0IGxpa2VseSB0byBiZSB6ZXJvZWQuIDV0aCB0YWJsZSBpcw0KPiB1c2VkIGZvciBh
bnkgbW9kZSBiZWxvdyBEUCAyLjAgKGV4Y2x1c2l2ZSkuIDZ0aCB0YWJsZSBpcyB1c2VkIGZvciBh
bnkgbW9kZQ0KPiBhYm92ZSBEUCAyLjAgKGluY2x1c2l2ZSkuDQo+IA0KPiBJbmRpY2VzIGZvciBv
dGhlciB0YWJsZXMgaGF2ZSBub3QgeWV0IGJlZW4gb2JzZXJ2ZWQgdG8gYmUgdXNlZCBhcyBvZiBu
b3cuDQo+IA0KPiB2My0+djQNCj4gLSBzdGljayB0byBzb2xlbHkgY2hhbmdpbmcgVkJUIGRhdGEg
aW50byBjdXJyZW50IHN0cnVjdHVyZXMgKEphbmkpDQo+IC0gbW92ZSBpdGVyYXRvciBkZWNsYXJh
dGlvbiB0byBkZWNsYXJhdGlvbiBibG9jayAoU3VyYWopDQo+IA0KPiB2Mi0+djMNCj4gLSByZW1v
dmUgdW5uZWNlc3NhcnkgYnJhY2VzIGZyb20gaWYgYmxvY2sgKFN1cmFqKQ0KPiAtIHJldHVybiAt
RUlOVkFMIGluc3RlYWQgb2YgLTEgKFN1cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHF
giBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMzkgKysrKysrKysrKysrKysr
KysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAgIHwg
IDQgKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyAgICB8
IDI0ICsrKysrKysrKysrLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90
cmFucy5oICAgIHwgMTAgKysrKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgNzYgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gaW5kZXggZTQ3YWMxNjkyNzFmLi40ZjFhN2Q1MTAxYzYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0zODYwLDYg
KzM4NjAsNDUgQEAgYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfdGJ0KGNvbnN0DQo+
IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGENCj4gIAlyZXR1cm4gZGV2ZGF0
YS0+ZGlzcGxheS0+dmJ0LnZlcnNpb24gPj0gMjA5ICYmIGRldmRhdGEtPmNoaWxkLnRidDsgIH0N
Cj4gDQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9z
X2VuY29kZXJfZ2V0X2x0X3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0
YQ0KPiAqZGV2ZGF0YSwNCj4gKwkJCQlpbnQgaWR4KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRp
X2J1Zl90cmFucyAqdnNwZW8gPSAodm9pZCAqKSBkZXZkYXRhLT52c3BlbzsNCg0KVW5uZWNlc3Nh
cnkgc3BhY2UgYWZ0ZXIgdHlwZSBjYXN0aW5nDQoNCj4gKwl1bmlvbiBpbnRlbF9kZGlfYnVmX3Ry
YW5zX2VudHJ5ICplbnRyaWVzID0gKHZvaWQgKikgZGV2ZGF0YS0+dnNwZW8tDQo+ID5lbnRyaWVz
Ow0KDQpEaXR0bw0KDQo+ICsJY29uc3QgdTMyICp0YWJsZXMgPSBkaXNwbGF5LT52YnQudnNwZW8u
dGFibGVzOw0KPiArCWludCBudW1fY29sdW1ucyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fY29s
dW1uczsNCj4gKwlpbnQgbnVtX3Jvd3MgPSBkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+
ICsJc2l6ZV90IG9mZnNldCA9IDA7DQo+ICsJaW50IGxldmVsOw0KPiArDQo+ICsJSU5URUxfRElT
UExBWV9TVEFURV9XQVJOKGRpc3BsYXksIGlkeCA8IF9MVF91bnVzZWQwIHx8IGlkeCA+DQo+IExU
X0RQMlgsDQo+ICsJCQkJICJMVCByZXF1ZXN0ZWQgaW52YWxpZCBWUy9QRS1PIHRhYmxlOiAlZFxu
IiwNCj4gaWR4KTsNCg0KTm8gbmVlZCBmb3IgYSBkaXNwbGF5IHN0YXRlIHdhcm4gaGVyZSB0aGUg
b25seSB2YWx1ZSB5b3UgY2FuIHBvc3NpYmx5IGVuZCB1cCB3aXRoIGhlcmUgaXMgLUVJTlZBTCAs
IExUX0RQXzE0LzJ4DQpTbyBqdXN0IGRvIGEgcmV0dXJuIG5vIG5lZWQgdG8gbG9nIGl0IGhlcmUu
IExhdGVyIHRoZSBmdW5jdGlvbiBjYWxsaW5nIHRoaXMgY2FuIGZhbGxiYWNrIHRvIGl0cyB1c3Vh
bCBwYXRod2F5LiAodGhhdCB3b3VsZCBtZWFuIEluIHRoZSBwcmV2aW91cyBwYXRjaCB5b3Ugd2ls
bCBoYXZlIHRvIGNoZWNrIHdoYXQgZ2V0X3BoeV92c3BlbyByZXR1cm5zIGFuZCBqdXN0IHVzZSBk
ZWZhdWx0IHBhdGggaWYgaXQgcmV0dXJucyBmYWlsdXJlKQ0KQWxzbyBJIHRoaW5rIHlvdSBkbyBu
b3QgcmVxdWlyZSBfTFRfdW51c2VkIGF0IGFsbC4NCg0KDQo+ICsNCj4gKwlkcm1fV0FSTl9PTkNF
KGRpc3BsYXktPmRybSwgMSwNCj4gKwkJICAgICAgInNldHRpbmcgdHhzd2luZyAmIF9sZXZlbCB0
byAwIG9uIExUJ3MgVlMvUEUtTyByZXF1ZXN0XG4iKTsNCg0KV0FSTiBub3QgcmVxdWlyZWQNCkFs
c28gV2h5ID8gQWRkIGJzcGVjIGxpbmsuDQoNCj4gKw0KPiArCW9mZnNldCArPSBpZHggKiBudW1f
cm93cyAqIG51bV9jb2x1bW5zOw0KPiArDQo+ICsJZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgbnVt
X3Jvd3M7IGxldmVsKyspIHsNCj4gKwkJdTMyIG1haW5fY3Vyc29yID0gdGFibGVzW29mZnNldF07
DQo+ICsJCXUzMiBwcmVfY3Vyc29yID0gdGFibGVzW29mZnNldCsxXTsNCg0KQWRkIGJsYW5rIHNw
YWNlIGFyb3VuZCBvcGVyYXRvci4NCg0KPiArCQl1MzIgcG9zdF9jdXJzb3IgPSB0YWJsZXNbb2Zm
c2V0KzJdOw0KDQpTYW1lIGhlcmUuDQoNCj4gKw0KPiArCQllbnRyaWVzW2xldmVsXS5sdC50eHN3
aW5nID0gMDsNCj4gKwkJZW50cmllc1tsZXZlbF0ubHQudHhzd2luZ19sZXZlbCA9IDA7DQo+ICsJ
CWVudHJpZXNbbGV2ZWxdLmx0Lm1haW5fY3Vyc29yID0gbWFpbl9jdXJzb3I7DQo+ICsJCWVudHJp
ZXNbbGV2ZWxdLmx0LnByZV9jdXJzb3IgPSBwcmVfY3Vyc29yOw0KPiArCQllbnRyaWVzW2xldmVs
XS5sdC5wb3N0X2N1cnNvciA9IHBvc3RfY3Vyc29yOw0KPiArDQo+ICsJCW9mZnNldCArPSBudW1f
Y29sdW1uczsNCj4gKwl9DQo+ICsNCj4gKwl2c3Blby0+bnVtX2VudHJpZXMgPSBudW1fcm93czsN
Cj4gKwlyZXR1cm4gdnNwZW87DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVy
X2lzX2RlZGljYXRlZF9leHRlcm5hbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGEgKmRldmRhdGEpICB7DQo+ICAJcmV0dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJz
aW9uID49IDI2NCAmJiBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuaA0KPiBpbmRleCA3YTUwYTI3MmNkMjcuLjczNzg2ODMyYjQwMiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTczLDYgKzczLDEwIEBA
IGJvb2wgaW50ZWxfYmlvc19nZXRfZHNjX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAq
ZW5jb2RlciwgIGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqDQo+IGludGVs
X2Jpb3NfZW5jb2Rlcl9kYXRhX2xvb2t1cChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwg
ZW51bSBwb3J0DQo+IHBvcnQpOw0KPiANCj4gK2NvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3Ry
YW5zICoNCj4gK2ludGVsX2Jpb3NfZW5jb2Rlcl9nZXRfbHRfdnNwZW8oY29uc3Qgc3RydWN0IGlu
dGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhLA0KPiArCQkJCWludCB0YWJsZSk7DQo+
ICsNCj4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3ZzcGVvKGNvbnN0IHN0cnVj
dA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7ICBib29sDQo+IGludGVsX2Jp
b3NfZW5jb2Rlcl9zdXBwb3J0c19kdmkoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhDQo+ICpkZXZkYXRhKTsgIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2hkbWko
Y29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKTsgZGlmZiAt
LWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5z
LmMNCj4gaW5kZXggZmJkNWVmYzVjYTZjLi42ODI1OGZiZmE0M2UgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jDQo+IEBA
IC0zLDYgKzMsOCBAQA0KPiAgICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24N
Cj4gICAqLw0KPiANCj4gKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+ICsNCj4gICNpbmNs
dWRlICJpbnRlbF9jeDBfcGh5LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGRpLmgiDQo+ICAjaW5j
bHVkZSAiaW50ZWxfZGRpX2J1Zl90cmFucy5oIg0KPiBAQCAtMTc4NCw2ICsxNzg2LDIwIEBAIHhl
M3BscGRfZ2V0X2x0X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwN
Cj4gIAkJcmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoJnhlM3BscGRfbHRfdHJhbnNfZHAxNCwN
Cj4gbl9lbnRyaWVzKTsgIH0NCj4gDQo+ICtzdGF0aWMgaW50DQo+ICt4ZTNwbHBkX2dldF9sdF92
c3Blb19pbmRleChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gKwkJCSAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJaWYgKGludGVsX2Ny
dGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gKwkJaWYgKGludGVsX2RwX2lzX3Vo
YnIoY3J0Y19zdGF0ZSkpDQo+ICsJCQlyZXR1cm4gTFRfRFAyWDsNCj4gKwkJZWxzZQ0KPiArCQkJ
cmV0dXJuIExUX0RQMTQ7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIC1FSU5WQUw7DQo+ICt9DQo+
ICsNCj4gIHN0YXRpYyBpbnQNCj4gIF9nZXRfcGh5X3ZzcGVvX2luZGV4KHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiAgCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKSBAQCAtMTgwMCw2DQo+ICsxODE2LDggQEAgdm9pZCBpbnRlbF9kZGlfYnVm
X3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+IA0KPiAgCWlmIChI
QVNfTFRfUEhZKGRpc3BsYXkpKSB7DQo+ICAJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSB4ZTNw
bHBkX2dldF9sdF9idWZfdHJhbnM7DQo+ICsJCWVuY29kZXItPmdldF9waHlfdnNwZW9faW5kZXgg
PQ0KPiB4ZTNwbHBkX2dldF9sdF92c3Blb19pbmRleDsNCj4gKwkJZW5jb2Rlci0+Z2V0X3BoeV92
c3BlbyA9IGludGVsX2Jpb3NfZW5jb2Rlcl9nZXRfbHRfdnNwZW87DQo+ICAJfSBlbHNlIGlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkgew0KPiAgCQlpZiAoaW50ZWxfZW5jb2Rlcl9pc19j
MTBwaHkoZW5jb2RlcikpDQo+ICAJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gbXRsX2dldF9j
MTBfYnVmX3RyYW5zOw0KPiBAQCAtMTg3OCw5ICsxODk2LDEzIEBAIGNvbnN0IHN0cnVjdCBpbnRl
bF9kZGlfYnVmX3RyYW5zDQo+ICppbnRlbF9kZGlfYnVmX3RyYW5zX2dldChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqDQo+IA0KPiAgCXRhYmxlID0gZW5jb2Rlci0+Z2V0X3BoeV92c3Blb19pbmRleChl
bmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gIAlpZiAodGFibGUgPCAwKSB7DQo+IC0JCWRybV9XQVJO
X09OQ0UoZGlzcGxheS0+ZHJtLCAxLA0KPiArCQlkcm1fV0FSTl9PTkNFKGRpc3BsYXktPmRybSwg
dGFibGUgPT0gRU9QTk9UU1VQUCwNCj4gIAkJCSAgICAgICJwbGF0Zm9ybSBkb2VzIG5vdCBzdXBw
b3J0IFZTL1BFLU8sIHNldHRpbmcNCj4gZGVmYXVsdFxuIik7DQo+IA0KPiArCQlkcm1fV0FSTl9P
TkNFKGRpc3BsYXktPmRybSwgdGFibGUgIT0gRU9QTk9UU1VQUCwNCj4gKwkJCSAgICAgICJub24t
RFAgKCVkKSBlbmNvZGVyIGFza3MgZm9yIFZTL1BFLU8sIHNldHRpbmcNCj4gZGVmYXVsdFxuIiwN
Cj4gKwkJCSAgICAgIGNydGNfc3RhdGUtPm91dHB1dF90eXBlcyk7DQo+ICsNCj4gIAkJcmV0dXJu
IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gbl9lbnRyaWVz
KTsNCj4gIAl9DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaV9idWZfdHJhbnMuaA0KPiBpbmRleCA5Njk4Njk3ZjM5MTcuLjU2MDg5MmI0ZWY4
YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlf
YnVmX3RyYW5zLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGlfYnVmX3RyYW5zLmgNCj4gQEAgLTc0LDYgKzc0LDE2IEBAIHN0cnVjdCBpbnRlbF9kZGlfYnVm
X3RyYW5zIHsNCj4gIAl1OCBoZG1pX2RlZmF1bHRfZW50cnk7DQo+ICB9Ow0KPiANCj4gK2VudW0g
aW50ZWxfbHRfdnNwZW8gew0KPiArCV9MVF91bnVzZWQwID0gMCwNCj4gKwlfTFRfdW51c2VkMSwN
Cj4gKwlfTFRfdW51c2VkMiwNCj4gKwlfTFRfdW51c2VkMywNCj4gKw0KPiArCUxUX0RQMTQgPSA0
LA0KPiArCUxUX0RQMlgNCj4gK307DQoNCkp1c3QgDQplbnVtIGludGVsX2x0X3ZzcGVvX2luZGV4
IHsNCglMVF9EUDE0ID0gNCwNCglMVF9EUDJYDQp9Ow0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBh
bA0KDQo+ICsNCj4gIGJvb2wgaXNfaG9ibF9idWZfdHJhbnMoY29uc3Qgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgKnRhYmxlKTsNCj4gDQo+ICB2b2lkIGludGVsX2RkaV9idWZfdHJhbnNfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
