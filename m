Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5A8A6BB9A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 14:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DE310E135;
	Fri, 21 Mar 2025 13:17:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUG4YFLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3635210E135;
 Fri, 21 Mar 2025 13:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742563023; x=1774099023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8xsJUybFasiZpcUYHDWxHH/BKqyPIPZdXUkbAG03NL4=;
 b=bUG4YFLGMNCG/gAowWhaxZmXJ8srzEp+zjM1RR7KzO1eWlawh7mCsZle
 j+yG0MXkhYH0kyGnXsoIKA5DZeK8RpcrndxbyDHsYnRXP89Axd2jI9Gro
 ELoQr6YOApT9MxU3yhtJ1UBpac1qp4CMutViixnteRB8t8/yqHUkyf8r1
 AO7Lny/+7DWRiNDWc3+8e8jToC9ljH6XjSbXO7N4FIKCsi7zf3yJGGzPt
 QAqE7kAVI6DtIAT4AHhBJcYbwk1imi2rQ5zdnNFgpcCd2zawIsWL32cP6
 M1BxxznT8vJ0oOFlX6Np1JPF9yiFNHR8WdyEpxBgPY8RFcj8rHu4rvdTg A==;
X-CSE-ConnectionGUID: WgMg40iWQLybM8L/Nb4XJw==
X-CSE-MsgGUID: crd7guopT2GC89rDFZiiwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="42993120"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="42993120"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 06:15:15 -0700
X-CSE-ConnectionGUID: kxdvPDHnQmiVy1iboPw8dg==
X-CSE-MsgGUID: UfckjQ4ERTeygvdvEcG1Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123379327"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2025 06:15:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Mar 2025 06:15:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 21 Mar 2025 06:15:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 06:15:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VsDEcPNQS5ILBeNxtxiFhcZH4ZCx72I7z5lej0vLAMyIhhvzDdpZtFlkApXlCMMJZfWyqQ3opzzbl9vFRaWe2dGQqlrUApcAZShbtEuTX+EAp/oKSMrk/ERM33FnVsqRwH2LEWGtNrpY1HAERGzu0kSMWJyoptJECJXnmEytvTxGIa9Z6CdlbLtlFKi0BwPalb5ZcAf6iD7VhmeImtgc8gi2Gt3lRHlldGH8RBKsZB5Jb1ysbL9xCOCOYWr2EOR5YYq3abyiOTRb7u1n8f50Lt3EjT1IUTDgzMni6YX4h/6LAXg5sNLcoLqsYwg7pvtnGCCniRZ4+aL2Na1jIerYZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xsJUybFasiZpcUYHDWxHH/BKqyPIPZdXUkbAG03NL4=;
 b=bZh6GxbpOr7VWXwaTp1+f+28bgY9muFBrUZpVSVTyEKt7jIck6IF3RLw5NlwOG8T6SkujJ9SGkHP3r271nnNWyG6A6+IxstkioURIqX7UbxcgcqUuMVw3a3iousuoItkE8FShtpfnrKcJioXzm59UMPv7NDN9lqHHG32+Rx78NvXG0Jse/W25lRawBK4CMwgQFixremLHrZtGi3nLxv4+meN1yiuOf8azz81lQEvQjDe8QC8tQN+Xv6DOyuP+roIWYM0zp7y7F896zwz9kXED2nzJh38gPeojXY3g60BT055G4R/EvDUjqERqDUXMFFFOErD9L579GIfjvyG0dOM9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Fri, 21 Mar
 2025 13:15:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 13:15:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>, "B,
 Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/fbc: update the panel_replay dependency
 in fbc wa's
Thread-Topic: [PATCH v2 2/2] drm/i915/fbc: update the panel_replay dependency
 in fbc wa's
Thread-Index: AQHbmkYMW5dyF4YoY0aCMa14OhnJFbN9kf8A
Date: Fri, 21 Mar 2025 13:15:12 +0000
Message-ID: <8a0b731f6924eba66deced4ec5f9c5486a4756de.camel@intel.com>
References: <20250321094529.197397-1-vinod.govindapillai@intel.com>
 <20250321094529.197397-3-vinod.govindapillai@intel.com>
In-Reply-To: <20250321094529.197397-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV2PR11MB6022:EE_
x-ms-office365-filtering-correlation-id: 264b7650-5720-44b7-4877-08dd687a6977
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YjMvSUJtZEJjSmZRTndiTDVwM1NTY1JZbGozKzR0TXMxdEpCQkY5ZHJJanJs?=
 =?utf-8?B?bTF1cXhCNktuZmh6TExNUXdXa29VaDBZTExJckNsRVJ0UHFpT2dudDhqeXBE?=
 =?utf-8?B?NFNaZWk2aUJ4dzkvajBHS1B6Sm5PQnU1WFFGY0dTdlFMZi9Ea2lYKzNZcVp4?=
 =?utf-8?B?WlF2QVkyMVBFRmF1UW1najFHU3Y4NjU0ZzBuOWVPT0xkZzhMMkFWVVFUNHZi?=
 =?utf-8?B?L1FrcXdXcFA3R1Ntc0hLd3MwQmZ4WGR0VG9QUi94UkwrK3Evbi9TL1lEMXRO?=
 =?utf-8?B?OHFpT2htdkt2MmY1UWZtQklCRFBtUUJlY0p3NmZJR1lLMmRkdHF6UWJyaGl4?=
 =?utf-8?B?M3JkYmRNOEtyOXExaXlGSjZvaHVsKzdNSlVsTEpPcGdPQXF4L0thNUI2eExx?=
 =?utf-8?B?K205b1dnM0c5d1JKUkRZTG1tdW5Qd0R1Zk1uWG0xaDYwR1NkNmtiYmNtcmR4?=
 =?utf-8?B?d0NXYTBiL2JTMGwySU5PNmd4amEvTmR3citEUWs1ZSsvM3NTTnV3SlhnYjlW?=
 =?utf-8?B?TWVCWWREOFV1UGlxdG5RQjNjdE9qSEdNaWFkNjlIOVBOWnN2RUJxWmg0SUJ6?=
 =?utf-8?B?YTJzTHVDVnAwUTlxMVcrTGlKMUJ5cnUxWW5NdkZhNE9JR2hyd012dHA5VnRO?=
 =?utf-8?B?d0JQREtiZ1ExM3NoMmRIZDdGWWRwNlp0d3VxTjVsR1ZIWjUyQlByY1RFQ3Zr?=
 =?utf-8?B?NVRSMWZFOWZhcXNKTkVwVytXMjNJNEdNcHVOLzJ1b3doY043VldFUWFLeXNr?=
 =?utf-8?B?dGw5c0RMdDdrZXV0eTVYeFpYUHNzOHhtU1AwUXA2Z1A1MWtJMWYyY25tTUxq?=
 =?utf-8?B?TWIwa25icmFKWjdLQXp1NE9scVJMWjkvdmdQU1FqTThSRFluSytOalVNK1Uz?=
 =?utf-8?B?c21NYmlWODR3L2l6RHQwaDBteGlOL3hTYjJhL0pURzVOV2Foa2F3TlNKV0U4?=
 =?utf-8?B?QjBpdkhkZ1FoOEJ4dEhHUE55L0hyZFp0cXI3Vi9kK2ZqcVF2NkllM1ZqYVUr?=
 =?utf-8?B?REZJVnNMMnB4TXdMZkNYOTc5L1NJVytFOEIvclQrNW5TSHp3Q3E5b0pScS8x?=
 =?utf-8?B?UnJQNFl4MkdZMnAwejdrSG9CbEtqTm8xSFFMSnhRaGE0TVNpRW8ydVgvb1Ux?=
 =?utf-8?B?SGEvMGNkSnpMY0JrTFJ5U1JXcWE2bUNsYlg5RHFXUzAvZjQvbitaV2kxVWNU?=
 =?utf-8?B?eUFLd0p5R3dWWXVQRUFYWmRXSDMrWTcwNnZBUWxteXV5RjlVaGErNDdjMHl1?=
 =?utf-8?B?L3doTm1ZNWlGUkxsc3lvdjJKYmsyM0N2ZHF3R0tVRHg0ZzRlQm9CbmFBNzJQ?=
 =?utf-8?B?blRBNDIvQ0krZlRYV2FHYWNDVDVyMTVtcVlqTXk4RkNZZXB1L2dVd3J0M2Ni?=
 =?utf-8?B?NzA2MWdWS3VQTjM1K0pTcjlkQzh3clpTUlpoZlgxREkrYmZENCsvQlZqdXpO?=
 =?utf-8?B?OFZETUNybVUvWFZ6NE9zT0VWdnNKWVpOTVVOOVNBUEx1Y3BLWitGT08xdGIv?=
 =?utf-8?B?T1BuZFd5ejdzdlRUSzdpdnRoREczdmZpUlZBcUpBTDhDdVlhYnR0YnFtUmNu?=
 =?utf-8?B?WmtLWEtIV3UrMDh1T3N2RGtpNHZTbm1MbGlaa2ZpNWV6MlMzSDBjN0ExTWha?=
 =?utf-8?B?S3lsdjdFclEwc0pZT0NkSWM2VnJwNTVwcG1JMWtBWHR6WTJHRlNPbmtFVGY4?=
 =?utf-8?B?TWZVeGYydURoR21XY05PUkJWOFhRZU9VQUNVdkM0ckF1bloybjdiVkIxdVFt?=
 =?utf-8?B?NkJEbDRoVGVoZEhpaWkyTDVDVjQzSlgxUHEzWFhGRER2SndudkpudVpCdFkr?=
 =?utf-8?B?cmIwY25oNXVZc0I1UFZoVEdSMVRlNzdoUTdUcXhQRFpWSVZ5Zk90dTI1MEVy?=
 =?utf-8?B?KzNqbHFRYUZyZm9nZ3FhL1hKQ1MzcnhrR3lyUExCTFVUajUvRkJWaDU4ZU1l?=
 =?utf-8?Q?lsig7RuFNWXGmvDVnGUHPZa3zU1Nc6Tc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YURzZFI1KzR0RnE3NWZxdVFRTDZaYjBJVkhxSTNkNTlrMTBmZndjSHpzZXVS?=
 =?utf-8?B?YzZCQ1loQ21tZUg5UVBzemh5eFp4SmxycVZlUzFEMitIcmszajExdGcxa2xZ?=
 =?utf-8?B?aUpOUzR4WlpOb1dnN2dBWC9KRTQreitvVXVtTVVrMW53UGJGMkNxKzBjaDV5?=
 =?utf-8?B?blBFekFaVFF2TXFXNVZrOVF3d2xsUjl1VXZHeDJpUWtKM29rdXpDWWNBdjl5?=
 =?utf-8?B?V2orenpUd1I3NFlEbjZNT2hWZlVDbVY2emFqUkpzamxQY21tWlhIcUh5T1Vs?=
 =?utf-8?B?NnpONTZyYmc5anozeENCTzk0VW5hUFpEU0dCMk8vcVZxaVRGSzlXZHZaZmIx?=
 =?utf-8?B?YXBwWlBTU1REMjE5VFBFQ1p2MThRcjM0SUx4TzkzNWNIYVJzeVJ1c1p2VW5F?=
 =?utf-8?B?R1hsNWQ0SHNEMVAzNFR6aXdaY2IzeHpzY1g5QTZRRUY3MXBaejhKMnhhZHJO?=
 =?utf-8?B?TU5BSUcxdzZHNlE3cGlORm5sb0NPM3p5cUZRUDd2ZjkvQmxKeTJxMGx6TG5D?=
 =?utf-8?B?VmdtMHlhdTh0NStaUk5YeUdzczB4WTJPaE1zQjdCdmpaRnRweDJ3YkFPZmNa?=
 =?utf-8?B?NXVqV25CeloxN1N0RXg0ai9PeHhPWGI2OUZVSVgycVBwb0RzS1hYNld2OWRF?=
 =?utf-8?B?VHJPcklDU2JLUVBxTk1zdFJkNmxxS2I2aVhOWk9ySHNWSFpEdndCcHY0M0F3?=
 =?utf-8?B?VE1SM3ZMNXIralVpcjMyL0dqWFJSLzNmbEF4UFlOVDFDc0I5Y3dLT2Qvc3Ur?=
 =?utf-8?B?c2hSeHF1dFV5KzJsdklLVllEVVlDWk9yQXQrbU1zNjE3TWoxOTV2QWYzVmJE?=
 =?utf-8?B?R0hiaTJXOWdPclZaQkxtNGkrUW1kQXdIVUMvRXFMZ0QvRHBXeklkSTY1RlhK?=
 =?utf-8?B?cXhMb0lZRjUzMEJVak14VE1ScHBlNU11YWpJVlphUjJTRG81V0hoYzA4Ulo0?=
 =?utf-8?B?dUdhbVpnT3U2a1creVdoOUliSzdORnJXdlB5dlU0SU8xY2JKakp5bkJuSFlE?=
 =?utf-8?B?MDdNdlJjRDRwaFNZRjg4TlFaK1JyZWhnUkVlUXpLcytQbmZWRzBEeWs2S1dh?=
 =?utf-8?B?OXZGM1NrWW5KWXFlMU9wNzNoRTVrSU9ybHlDUmpCNEsxd0I2NDRVdVJxTWdD?=
 =?utf-8?B?d2RyZlFsd0VqaVhiTjhCWHdRZWxlcWk0SldTUGMyOUllYVZmQjl4UFNjcHZS?=
 =?utf-8?B?bWxmdTk5Ym5hVUJVNFN0UVBVUE16N1ZtMzZlcUdmODZvc3YrZzRVaUNGS0Fa?=
 =?utf-8?B?bVA4WjZLM0U4TTB5NGEvdE5UVWlDNjdFQ2hvQUhxemlzVG1NaFlWWGZwakFn?=
 =?utf-8?B?dDRUcVBIY2NFVHdYN0I5dmRkemhSWkNOOHNpSkFrWUcwQlE0L3BGMmFqbThp?=
 =?utf-8?B?SHJtZDczVG5LMWZGblFYWlg4d0QxWHUxMG5lNlFqS2pTa2dObzZ2Q20rOUVq?=
 =?utf-8?B?MmhBY1p2NWtUUmFtbi9sSGVkZDhRZnM3Rnd5Qzh0SzJzRVZmR1d2V3Bjejh4?=
 =?utf-8?B?MXNnbVR2cnFXL0xrekJkT3MxdmpPTkdxOUUzN2xjL0UrME9pWi96eER6VGsz?=
 =?utf-8?B?SU5hSlBHWXpGbGMvWjJ2SklDNkQvY2lGUE0zWStlNmMzVS9LVm10WHZEcjRv?=
 =?utf-8?B?V0hkRW9BRk5TN1huSzh4bTBKSEpTeGJBL0dYbzRsUFFESHhoOWlPTWp5RVdi?=
 =?utf-8?B?aThLNitZZmQyaDVQSGs2dll6Qm4vYUVHODlLMDdvSmcrZnR6TmxaSDVTUnRI?=
 =?utf-8?B?YlFFcG9mV05YRUtoRW5HZGRuNkxmSXZFSi9DeUxqc0dmWTduRFVwOHlOemsy?=
 =?utf-8?B?a2tmYWZNVkNxMzN0Nk5qVVFLd3B0VnJ4dW9FL1dtUUFVYmRwREI5cFN2YVpP?=
 =?utf-8?B?VWc5NEdUeVVDblhQZUFVT1BERVBPbnVVL0ZpRTRiVytVNlRXNDRVaU43c1p6?=
 =?utf-8?B?bXFBbDh1ZnB6cDZ0Q2hTbHcyYk05MzRkL0t1WkxDalNOOUM5ekRCTFEvWCsx?=
 =?utf-8?B?VkxGQmpUMXcwL2JLZGk0K1JlYXM2dDJERFFGUFFqazRmdjc1MXNMeGpEbnFr?=
 =?utf-8?B?Yjl1dkxSNWZCYjFwZ2R6dmlHdnpnQnlIT1U5MjU3ZHJhZk9BRDZKMU1EbHhX?=
 =?utf-8?B?MEtVaC9FbG95bndFeGpTSnVxQ3hncHR1aERHdE5jZXMyVDhJZWVDYWxKVTFw?=
 =?utf-8?B?ckZBNTRoWWNPdWU2OVJ0aDJpYWNReG5PZTVUWmI0SFhlYnhXNUJxamhVc3JH?=
 =?utf-8?B?d3U2N2NoaGdoQ1IvUTVIbFM3SUlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <434C393F8469DF46B0E1390E1F7CE513@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 264b7650-5720-44b7-4877-08dd687a6977
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 13:15:12.0844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SeX4p51yNmbTGMkndZqKNLN8Qv5HIR4Y7arIOmFMJXu955E0v4DRSMu20lpje9sL2H7qSHcggWoKS/lvT4VzmbAnotc02Zfnjy6jSG1+rS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
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

T24gRnJpLCAyMDI1LTAzLTIxIGF0IDExOjQ1ICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBUaGVyZSBhcmUgdHdvIHBhbmVsX3JlcGxheSBzY2VuYXJpb3MgZmJjIHdhIG5lZWQg
dG8gYmUgYXdhcmUgb2YsDQo+IHBhbmVsIHJlcGxheSB3aXRoIGFuZCB3aXRob3V0IHNlbGVjdGl2
ZSB1cGRhdGUgY2FwYWJpbGl0eS4NCj4gUGFuZWwgcmVwbGF5IHdpdGhvdXQgc2VsZWN0aXZlIHVw
ZGF0ZSBkb24ndCBoYXZlIGFueSBmYmMgd2EuDQo+IFNvIGtlZXAgdGhlIGZiYyBwc3IxIHdhIGFz
IGl0IGlzLg0KPiANCj4gVGhlIGN1cnJlbnQgZmJjIHBzcjIgd2EgaXMgbWFpbmx5IGFib3V0IHNl
bGVjdGl2ZSBmZXRjaCBhbmQgd2UNCj4gbmVlZCB0byBhcHBseSB0aGUgZmJjIHdhIGlmIHNlbGVj
dGl2ZSBmZXRjaCBpcyBvbiAtIGlycmVzcGVjdGl2ZQ0KPiBvZiBwYW5lbCByZXBsYXkuIEhlbmNl
IHdlIGNhbid0IGV4Y2x1ZGUgcGFuZWwgcmVwbGF5IGZyb20gdGhlDQo+IGZiYyBwc3IyIHdhLg0K
PiANCj4gdjE6IGtlZXAgcGFuZWxfcmVwbGF5IGV4Y2x1c2lvbiBpbiBQU1IxIGNhc2UgKEpvdW5p
KQ0KPiDCoMKgwqAgUGF0Y2ggZGVzY3JpcHRpb24gdXBkYXRlZA0KPiANCj4gQnNwZWM6IDY2NjI0
LCA1MDQ0Mg0KPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3Zp
bmRhcGlsbGFpQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA1ICsrLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCA5MmIwMGRhNGMwYWIuLjNjNzIwNDdiZjFhMiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0x
NDcxLDkgKzE0NzEsOCBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFuZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJICogZGlzYWJsaW5nIFBTUjIsIGtl
ZXAgRkJDIGRpc2FibGVkIGluIGNhc2Ugb2Ygc2VsZWN0aXZlDQo+IHVwZGF0ZSBpcyBvbg0KPiDC
oAkgKiB1bnRpbCB0aGUgc2VsZWN0aW9uIGxvZ2ljIGlzIGltcGxlbWVudGVkLg0KPiDCoAkgKi8N
Cj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTIgJiYgY3J0Y19zdGF0ZS0+aGFzX3Nl
bF91cGRhdGUNCj4gJiYNCj4gLQnCoMKgwqAgIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkp
IHsNCj4gLQkJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiUFNSMiBlbmFibGVkIjsNCj4g
KwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTIgJiYgY3J0Y19zdGF0ZS0NCj4gPmhhc19z
ZWxfdXBkYXRlKSB7DQo+ICsJCXBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlNlbGVjdGl2
ZSB1cGRhdGUNCj4gZW5hYmxlZCI7DQo+IMKgCQlyZXR1cm4gMDsNCj4gwqAJfQ0KPiDCoA0KDQo=
