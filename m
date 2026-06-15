Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OjQNIimKL2p+CAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:14:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF57D683689
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:14:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K5ne8ZQc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A372810E1A8;
	Mon, 15 Jun 2026 05:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280E110E1A2;
 Mon, 15 Jun 2026 05:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781500449; x=1813036449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PNFBzLkQhmGM9+KtFVTdc/3ubwQdYKNPQXRy2wYJf2k=;
 b=K5ne8ZQcvIUgH3jXgSzxPDeHlbkgAgZ6U+V6e90ijl8Jm6jF9m0a40uI
 PXKVFznWFZomcR9SW8tV0578ttjk832toxUPKhk/QSXPE71kiiL4gpl2u
 nV7T/MH4mvbedKZgxxfGWIkexLjVWQpgt7jGhIRrYrXnAqFGwr/oOZYCz
 YCy43N7rniT5L+ROLw3snQow+qfecy779YTdGwkGjpbn1AX1hMw5J8WY0
 aGYkG4Mse1gcmkcLNHlAhgfFHuJOT2u2WSISObFXnUH7vD43aOyCODl9e
 H1oszojsJGfKITkWYMBGiKbnYqgtNiu36YCVWHWaJZzzGts0uA3N0eppt A==;
X-CSE-ConnectionGUID: XYkgWuUtSpGT540hHPnrdg==
X-CSE-MsgGUID: vvoSp8muR0mk342wxLK5XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="99808874"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="99808874"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:14:04 -0700
X-CSE-ConnectionGUID: AwJjcE6UTj+2BA0kOyT51w==
X-CSE-MsgGUID: mP6R1jFAQMuQ3lukS6zsxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="246481418"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:14:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:14:03 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:14:03 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:14:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nx1N4nQCpPM1A/Zy1QbPkE+mwoDztbMZFDSARJmQpsvVthRG0RcpL8AMvXycWGzc8Vh76FT/m8gCx9wMqmX50V0gEYls+06Mv+WiBb5dx7eTakj4ItAJDsT4e27MIg4rjYIgqcUp2bngR+m94B9KHiS55pzPwb1t47tWASu6Qz9kMgs3E6bUEadhD8wEwCIcjG+9OTNdYlBgVEw9Vl4owmYybu6d9G7OYePKCA4ljG4SoyXZeY5VyOM1Ttkn71BvxJVBbI9vOZXaeP9HcLN7GlCMbbZDnGr4P3e+FQT0XgAlj+W1ZrI4qsz5Hll0HAL2jOFHrNZfb0cxj1VrQo5uyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNFBzLkQhmGM9+KtFVTdc/3ubwQdYKNPQXRy2wYJf2k=;
 b=PwTeoJQ50372ZvUlmyXzEgm8Qlq45UdlVproFgExrU4B8xNSk6lBbHtno0b31vGOKPy/EMtU6f+gxKJs9prIzS4MjFGmKFaOqW+OY4TdjjhoW1kJFKb1+Z2N2GV4+11jIipKK+C2BF/XvTqhJiDKHYu/up6uS4DfFuHGIuQ7nRhpA4MEvnFkXNZ41Nb7rF40UfEDlo7x2tJhzU45S8vC2tXtpIUKDddZaoS2zi9xYszSRtbLJZQldxy2o+sVDQThRlz91DupJiNnsSrLIK2GCHuCVi2xfglejEHqBTGnjnbqqVx0oYzk2E6atcXNPAo18Ko23Xlrqut53ThmD8I+YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:14:01 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:14:00 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1 2/9] drm/i915/scaler: s/i/scaler_id/
Thread-Topic: [PATCH v1 2/9] drm/i915/scaler: s/i/scaler_id/
Thread-Index: AQHc+GWB1ZjiJlcXckW6vij0bSkJrbY/Gqzg
Date: Mon, 15 Jun 2026 05:14:00 +0000
Message-ID: <IA1PR11MB6467FB1485BF013D34006917E3E62@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260609231217.208357-1-michal.grzelak@intel.com>
 <20260609231217.208357-3-michal.grzelak@intel.com>
In-Reply-To: <20260609231217.208357-3-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6697:EE_
x-ms-office365-filtering-correlation-id: d8731707-fea3-432b-7607-08deca9ce91c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|11063799006|4143699003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: RPEOSRzbZ5NyN2A0CgrW88LXBg/xL/0FgtIwqCLWy0MQwGDbwNTEqytcbd5HNhQ//4bAqNDULWZFrO6ueyITMDpE5Tk4GJfDJvwV5giBX8t8xBpt9MP3TTWcDwkZQMJYM7z2a9Qbx/LpOi3PcW3WlU7kavQFT8UQvHEmzW2/H6Z4bHNnGMhqRBrJTv2mT7DZh7WDf8i+4T2h7jWz4rJ67JkMCMyTGztNS/4PPOmoEZNzgrgx92HSQL1Ffb8aPXNuNtiBQHcSxuBaqonuXWsBQaklc6lr6Z73nUWBU/YX7MEMd4O0/fj0TwcRhVnV4elznmVz4eka8eiSqd54h/X9KKPKfjy5Yw1kCpKnJtjaveRr9jbhP1qXQhdN6jo/Z/5vDY5py9ecpeEqfjQmmarJhkdPws7CDmD3u7Jo9FnpN+mNUe0On43NT01ULO10seVfO3+ISmGAysjJHP1kJSlpORZbWqiqF61KIjwZoYoNDPELSBt88+ORfmTWbGS0D1DOkrLhZ9pvDoEeoewoffkhcmVqhC3VP5qMzSOF8KBrHexZewtDIaW7eC9RWO6fxYVTHtK4EnT5rsOvDLENpIYViqEz3/ZDShdtLT8zw4//oVgI/AbxNrkrQ4Po0DXlgC/y0YbD3yBmm8+Mgw0PZQjZegbm+s7yQRuRRl+jTPgun+tfS0bX3hPcnIp6mJoxX5SBvoU5ymofdKHVF4gCWkEWMLfagvL/hPoUGIpblVwCbTxdAaCvaFkjOFMRHKTKNDJh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(11063799006)(4143699003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFByM1V3MEYwUUpjVFVUaW1GVXBXcHBCeU9sZU45VzJhaHNNZkcrb0V3R2dQ?=
 =?utf-8?B?Y2M1M2xrU3ZlMTh5THNNZkNVQXZGRGdmZk9VOEhpcU1GUXhOZW5PYzhJdjFF?=
 =?utf-8?B?S3BwbzJ6ZmlwRGxpVGMxOXA2NlhXTDBxQkJ2azcvSitUdFVCQk1DZW4zbUZD?=
 =?utf-8?B?YXVDcndzM0kwYkxlMTlaOExvQWtoak14eFgvUzhWaXlEMnVJckxsbU9MaFhj?=
 =?utf-8?B?ajBEYmRreGxuQTNKL05OMEd0aGw4STVTSmU5L2tybjVkSFRFN0JmYzRFTWlO?=
 =?utf-8?B?d1NDekFNNEdxY1BqL0dZUHhSUkV0WVRZdlpkc2QxRzRaWUt3KzlOa2lnZnE1?=
 =?utf-8?B?bnBVMGJjd0ZoaHZSbHZxWmxPUi9QOVg2NFdJamt4bmw1c1g0MHdaaFZsVXJw?=
 =?utf-8?B?bUNtUkFMZmJ1L0NBQkJsY1BTVkNFdDBkaGpSTFZmaWdHaGxPV01TeDgvWVdN?=
 =?utf-8?B?cSt4MlVna1l4RDZWdVBMWGx0V3pmSUY1MnJBd0VQRXVEeXFrS0dpMkIvR3Bp?=
 =?utf-8?B?SnJuQlFxS3dVUG54K1FnWnduWjNmZWs5U1UydC9tc3AxR3FIdk9xbXg5S2FS?=
 =?utf-8?B?Q3lJTTFCemRIZlRNWHFLbEtSWVpmWCtqTGR6MXFKdVF4VmpxSkZwbUhqOFlS?=
 =?utf-8?B?M213c1hFQjN3S1dJMjZvbWljL1JLTTRybmpnems4S2U2bkFTVFMwRFFkV29n?=
 =?utf-8?B?SEMwOEdraHExT3g4UDJSU0szUjJVRHFiQ05QUzdIU04vQ2l5Y1pRVmlKTnVa?=
 =?utf-8?B?VFIvaURkd0xFbGdhNzNTaE81ZEt5WGF6NGI0aUZJcTNFMnhINE04cnlieWYr?=
 =?utf-8?B?ZW96VEdYd1JjL1o3dndFRXVmelNpR2l5SnQzTU5QUVU3UmdqbktlZ2p1SU5a?=
 =?utf-8?B?dk9VdWxjOHgwNEk0d2NNYlZYQmVOOU5HVGl6YjMvN1VScVBsWGJrS2c1UER2?=
 =?utf-8?B?N2lZT2wyMVdaT25VejQ5Zy9LZzNpdGtVT09nbTRwRVhGUVkwNExUVCtqSXBM?=
 =?utf-8?B?OVliVU41Tlh5WWxseCt6TG0ycUFxWTlZRTZmRWNaOFgvb01Pa2kyNjB6d2tX?=
 =?utf-8?B?OTVHUFZTTTY5azJHSk0wZnI0RTJZanhXQmdnM2s1T1VhenBiSEZhWnVOdVI3?=
 =?utf-8?B?QlcrNXZZLzNlVCtIQ0dJY0J6STc0aGxMUDRmbldiOEc1WUVEY2pDUU9OZ1pV?=
 =?utf-8?B?WDdqNUVwc0hnY2ljYVAwc01hZG5WcTVodGdBVXFrZit1cll5azUvTUFNREVN?=
 =?utf-8?B?WE1tVEZlbVZtVmhCVmhJVHAzUC9Qb3BLaUwvbG54UExqNXBRTWlNOG9NVWJw?=
 =?utf-8?B?ekc3TnMrc09oSDJDYTl2UHB3WFgwYWdVNWVjblk3TUJiR2VtU1BpTzlPS1Vx?=
 =?utf-8?B?RXZ1UXdUbU0xekFJZEVpQ21JcW9DSjFzVlhVT2ZmL2YxSjBtb3c2Z1I1OEds?=
 =?utf-8?B?WXJGT1RHYnFnT1JqSnRyR3JqK2lweU01RFA2VUhBbEN6bnh6VEhmczJPcUJq?=
 =?utf-8?B?L3N1SCtGYjBkc01LK2xjdVpVS1ZKUHZMVVMxZHA3TnRWN01vL2s0bnBERDNt?=
 =?utf-8?B?dHJiT1VzVVZmeFBzazJoLzFZY0M4TTRlNnhsL3pDc0tFMkErSG1lTGE0Vkxk?=
 =?utf-8?B?MWx3bExKUUgvODlHcnkva05kaTF5NGxuSkFTbDVCWi9NbW1KaDdXL3BvY2xw?=
 =?utf-8?B?V2FvMGJxUFZteC9WTEtXOTB1QlN0bHBKU2xYYjhyKzZnSkJGM1hGaVIxUEFi?=
 =?utf-8?B?eGZFMW9CUCsrcGo4a0J5TzkvcXp5Q1RUT3lVRDAzU2VFbVFzNTVoSHJIQU0r?=
 =?utf-8?B?QmZqb3RxRWxaOTQwd1l2UGtKOEpIcy9zVEpFL2o4UnowMXFqaHpiVmVUSFZN?=
 =?utf-8?B?WmtCa1oyTDM4MXpoUUN3bmRUR1l4Y0VDVjN5NG1PUE5ocEZUeVUyU1ZMY0VG?=
 =?utf-8?B?UlhMT0YybUJ4ZTB0T0hiNkZaRDBIMUVWNDFFL002NTJieDIvWStIQkVWQWdM?=
 =?utf-8?B?TFVzUUw3a0FUNlh0UldXMDdiS3BXVnJZNWdtZVU0ODNnZ0hSdWpKSmdPM2cy?=
 =?utf-8?B?VkR5NTFSNVVaamFjM1BabHJMazAyTWVaVUtwdjI4RFgzSXcxYXR0OVEwY2dx?=
 =?utf-8?B?U1duTHRrNlVpYnBJWkhiOUZEajk4WVV0eGRWcUZyeFpzejBxcXdjY1p4cEhD?=
 =?utf-8?B?MmwzWHdHRmE4K0FtWlA0eW96Y0pZNFlPamRxSDB1ZTRUSWJvVTRmMkEvdDFy?=
 =?utf-8?B?aUprOFVFZ1p0L1VqLytHcG1nZzBYck54TTZYaGlSSU1QWURsZnIwbzIzeHZl?=
 =?utf-8?Q?q8mVJ1s/ZsJbbQJthG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: biqPeVtasyGsfbnKYdml6ZPKWOMqhTxY2vtDl5qMEd7rdyN6QI4Nk8TAK92PCM901leJI3/v6fR3fQOVVYo1PbZLCWvVg0dMwSv0UvqwJP4vA9BzVmBK51pDei52xCbh03I7gl/2+U08iyw2FnZwfijShfRcJc0WW5p3z74aQrXc/WyN0GPFOVQsritSKLALdYrjaqyuTfyTYCJNBjTomYR5HTSqX1SEDO0+QDM6Mp7Z1PpinQX+Og/vjOuCgX+Lx0XsCB3mGeBi2ofmSoBNxSG96L7t83qkKfDGNiUxD6WTiWP0M7w76lL51VvFBhh4GZlyk4SecY9uGD8d8IH7+A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8731707-fea3-432b-7607-08deca9ce91c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:14:00.7270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ec2uhS5ZffxRjPjqZZy4ml3kN8D6w0KDwH5RfT/M7oARhQbNzr/wQIjVoscLC9uI/8SmpcSq5r2KVAQ4G8v8Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
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
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,IA1PR11MB6467.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF57D683689

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3J6ZWxhaywgTWljaGFs
IDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxMCwg
MjAyNiA0OjQyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRl
bC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdyemVsYWssIE1pY2hhbCA8bWljaGFs
LmdyemVsYWtAaW50ZWwuY29tPjsgR2FyZywgTmVtZXNhDQo+IDxuZW1lc2EuZ2FyZ0BpbnRlbC5j
b20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0ggdjEgMi85XSBkcm0vaTkxNS9zY2FsZXI6IHMvaS9zY2FsZXJfaWQvDQo+
IA0KPiBSZW5hbWUgZ2VuZXJpYyBpdGVyYXRvciBpbnRvIG1vcmUgZGVzY3JpcHRpdmUgb25lLg0K
PiANCj4gQ2M6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+DQo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYyB8IDEyICsrKysrKy0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2Fs
ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jDQo+IGlu
ZGV4IDRiNDU2OTI0ZmRlZi4uMGNmYTViNzU2NGJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiBAQCAtMzM3LDE4ICszMzcsMTggQEAgc3RhdGlj
IGludCBpbnRlbF9hbGxvY2F0ZV9zY2FsZXIoc3RydWN0DQo+IGludGVsX2NydGNfc2NhbGVyX3N0
YXRlICpzY2FsZXJfc3RhdGUsDQo+ICAJCQkJIGJvb2wgY2FzZl9zY2FsZXIpDQo+ICB7DQo+ICAJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0K
PiAtCWludCBpOw0KPiArCWludCBzY2FsZXJfaWQ7DQo+IA0KPiAtCWZvciAoaSA9IDA7IGkgPCBj
cnRjLT5udW1fc2NhbGVyczsgaSsrKSB7DQo+IC0JCWlmIChzY2FsZXJfc3RhdGUtPnNjYWxlcnNb
aV0uaW5fdXNlKQ0KPiArCWZvciAoc2NhbGVyX2lkID0gMDsgc2NhbGVyX2lkIDwgY3J0Yy0+bnVt
X3NjYWxlcnM7IHNjYWxlcl9pZCsrKSB7DQo+ICsJCWlmIChzY2FsZXJfc3RhdGUtPnNjYWxlcnNb
c2NhbGVyX2lkXS5pbl91c2UpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+IC0JCWlmIChjYXNmX3Nj
YWxlciAmJiAhc2NhbGVyX2hhc19jYXNmKGRpc3BsYXksIGkpKQ0KPiArCQlpZiAoY2FzZl9zY2Fs
ZXIgJiYgIXNjYWxlcl9oYXNfY2FzZihkaXNwbGF5LCBzY2FsZXJfaWQpKQ0KPiAgCQkJY29udGlu
dWU7DQo+IA0KPiAtCQlzY2FsZXJfc3RhdGUtPnNjYWxlcnNbaV0uaW5fdXNlID0gdHJ1ZTsNCj4g
KwkJc2NhbGVyX3N0YXRlLT5zY2FsZXJzW3NjYWxlcl9pZF0uaW5fdXNlID0gdHJ1ZTsNCj4gDQo+
IC0JCXJldHVybiBpOw0KPiArCQlyZXR1cm4gc2NhbGVyX2lkOw0KPiAgCX0NCj4gDQo+ICAJcmV0
dXJuIC0xOw0KPiAtLQ0KTEdUTSwNClJldmlld2VkLWJ5OiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdh
cmdAaW50ZWwuY29tPg0KDQo+IDIuNDUuMg0KDQo=
