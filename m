Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BDEB1D2F8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 09:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D5310E7DF;
	Thu,  7 Aug 2025 07:06:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7xqnE6k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6DC10E7DC;
 Thu,  7 Aug 2025 07:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754550402; x=1786086402;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A3DelRc/4ZnY7yx15/ZDlET5em4DFcPvuP1nIQfftn0=;
 b=O7xqnE6k2DFpMK88bs42CRzTyquWjwax3n1R4bBXJBcW3qgKv68y2DhS
 EVLu3HWPyusxnA9FXd6rr3mkGK0xx5dcV3eyrOW0RM0UFPMVdwrt7DVm8
 b2kYLeXeA++36JqIQGZyTNr99DQrY2HUkbIDZCqK/oJB87YQ57oJf2cl6
 6/vZ9SL4oSGjb/XNXuQsavmBRYU8jr6WR1Guhe8ekzwijSsLw1j5muqkg
 IZ3MAUAquzlN0ePxr+yIJVgASd6z8P1Zf/DPHCIs2jZHi1TCYddWb1qs1
 KQPeVeDbM5oS47IEJ5lz9IzsswSdjnTKpMa6RjsZgpjiQ5GjcaXsKZjbf A==;
X-CSE-ConnectionGUID: QeEEOJEaRXu6D7rrK/iVJw==
X-CSE-MsgGUID: bFTUqLEVQNGMBuWAMlTnbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68329820"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68329820"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:06:42 -0700
X-CSE-ConnectionGUID: SFqge9o+QC+ukFw6MVOSFw==
X-CSE-MsgGUID: DHV1XXKUQDCSL04bHpmVzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="195822500"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:06:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 00:06:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 00:06:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.45)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 00:06:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rGFfb8fnxHpLpDbRQqD9xbfdhRZr8yQZmqwfktW4WKUSa6WunYKcpQ9J9XHhAyYIB12DglPcHdYwzUwMemMWCpWMEyJRpxbWaPMGN/fa+3JIpjiT5NFmiX4+Ud4IRkMRke9DzK29C12fkFqhGvDxShPegAPevE3LKscr/gmqYtLeL81ni99m39zvHfGPbjyOk09igLioxbOT3uh6nno5FX1eoG6WF94lDGdqvlZ+BFYkBtUSvBa+0Uge8qijdxiP1CFf2cqPoReJPuIja5SS0Lfg7J0ChTxbeRB1ysV0JFfelRR5kZZk/FARwZUVMaDIqvnfi8mB01RYHUnLlhyyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A3DelRc/4ZnY7yx15/ZDlET5em4DFcPvuP1nIQfftn0=;
 b=NQG90y4xesxiUgI5oo0jsoHwqgAJvbEvWM1CWwJ0le/0moFrQAwTIgFgpW5KKZr6RDgJAgKNnNErtx6U1C3gQBMrW7tPofDJPimpgvDXwk+NNpcjXen2cABmt7DFFA0AVbjT32RDdr6TjlPrduuKT4mH7xUzy8pqUGL3cINVmsUn+Bna/hHkGy8FH+bvnZe+QWb+pCCq9K/GDjWfyxHi3FcuQfbWLKIzmOqK3oiDIT62cmCYEoVX+WWhGwS4SIHCyODnUaX3KsIwaIdJG+Aa6HJ0zC4ldkXnS3xpEmqavDGUGw5ZM3OJffBXBCNdNuyCLGnsYffAfsp5ngeJFvauTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB7199.namprd11.prod.outlook.com
 (2603:10b6:208:418::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 07:06:37 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 07:06:37 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Charlton"
 <charlton.lin@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Thread-Topic: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Thread-Index: AQHcBdvPz4RMcDTl+EeCLIj3FL9BEbRWx8RQ
Date: Thu, 7 Aug 2025 07:06:37 +0000
Message-ID: <DS4PPF69154114F792D1602713B8E3BBFE6EF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB7199:EE_
x-ms-office365-filtering-correlation-id: f77aa1bf-8dcb-4c4e-1bcb-08ddd580f39f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?eERLRGNySmJqeE5xL29rcDg5Z3dRUTQzd3BPSUFUVzEreWZWRUxoUXVHUHgy?=
 =?utf-8?B?ZG5nRHo5VUxxT24zKzljMVpQM2ZmYjFtSzYxK01iMm5oZDJEcG43WncrMHNX?=
 =?utf-8?B?UTRZRWZTNm9nbWV4SGcyNElCY0hDZlRkMzFrdVpvd25xOGhRNEMyaFpTc2tL?=
 =?utf-8?B?Uld0RDRWOVVkZ2cwYmJrTVZuQ0hXSGtTQm9JWmIvcDlkU3A0NFArNzYvSCt5?=
 =?utf-8?B?OHBzUXg5ZmZJZ1F2bXI0clYxQ1B4ck5Wa1NzdFVnZW83TlI3ekE3U2pHRlFM?=
 =?utf-8?B?SFg3SS9SZlRwSEo1TStYeitldVBNbi9BWlF0NG1mK1FHSnR6bVZlOHlTb1NR?=
 =?utf-8?B?cWp6RVhtWVZ5KzQ2bS9XOWRqZzU1ellhT2kvdTdQWUtOQ2NLbEswUmIzWmdF?=
 =?utf-8?B?TGVLTStpMWF2V3pEVzZQeDI4dWRySGdwU1FYRmtlcVNwVHNmNG1HNkdmVWlo?=
 =?utf-8?B?Ty9raWFCTXIybGo4N3VXSERpTTFYTlB5WXp6TkJEL2FYalBTbms1eEd0Q0JV?=
 =?utf-8?B?MWx0Y0tUMWVrMEJzdG94NTdKQ3lQUGxQK25XQlVnQVVRYTcvWjl4Zyt0Vjdi?=
 =?utf-8?B?WkJsdXVSbXdWMXAyVHROU29PUzJPYVZyb041RGFkaitXOUZBRnlaNjFuVmZP?=
 =?utf-8?B?QndhL2tQRWtlRXBDNzBwZElkM05GYjkzVmpmY2tQRHhNb0VJZUZHYWhBS1FK?=
 =?utf-8?B?bmdkSHVianlPb01JMEVsZzJUYS9kcTdFR3YwdHhIaklQdThSakEwbDc4cExt?=
 =?utf-8?B?RWRiZ2ZFbFltdmZBSU1CT0RlYTdURUV3VzRZREhkZEdicDZRUEdJL3ByenRl?=
 =?utf-8?B?NkJwalpDTklneFE2ZEhvR1VUMWxwR0MwZlVwbFpmVjF6R3VvcncyQUNHekZE?=
 =?utf-8?B?ZmIwdDYxaFg2NGZMay9ZSVU3akE3WXNydm1WR0crTTc1WFROWE5Yc0Q4cmlB?=
 =?utf-8?B?K0p4YUozbmdpS2NmMkRVMmpZd1I2M2lCM1BBMjB4SVJ6U21lTnhkdVFueFJU?=
 =?utf-8?B?emVDR1FFaElsaWUva1M1MzBYNEc1OS9Bb1hKWmphUTZYdUpZaWsxdFpOQmR3?=
 =?utf-8?B?Y1l6M0hiRnA4RlQvOWlQWXloeUVNTzhJbUJoRHpuaEhUU2trVDM2NTMvSFhO?=
 =?utf-8?B?Q3ZJSExTNGRhMkRsVksxWENMMC85dVdGZXlJRkVQOVdmWEw2TnNVTTJpalUy?=
 =?utf-8?B?OEppY0YvNE50dnpyRis5VC82M1VpN0JSVTIwK2tmd1UyUlUvYTh2NWJuQTBJ?=
 =?utf-8?B?N3VheU9xbm9ZT3QxSDZvekwvV3M3czR3N0dLUTFOcU03aTJ5Y1NVWkhJQjNw?=
 =?utf-8?B?L3pzRkxBS29VRzZKYVIwMzBqM2pNY2k1R3VWelRHcHRpTnV2cVU3V1ltbFlo?=
 =?utf-8?B?M3poZkdVeWRNdllsL1BqVEMzM1RzYmZlT1JXYlAyazc5ck50UXZib3pRRFYz?=
 =?utf-8?B?L0UxcFIzL0FqcjNOSDFtUFpZdjVvYVoyL0hGRUtWUS9OSUloRncxYTc1VGFS?=
 =?utf-8?B?NGVKa2NSQ0M4ODV6bTdPUWFzODhMMnhMRi9UWGxBZkRNTzBpRk1XdXhkZUli?=
 =?utf-8?B?NCt6UlJIZHM0aDBSYTF1TXBoejE1OUNITWc3c2oxQ2RhVUtHTjlTSWhhNk4v?=
 =?utf-8?B?V3lFaEVuNFJKcjJUVk1paHNzd0Y3b3pXeVNWYWM1cXY3dzM0djQydTJHQUlm?=
 =?utf-8?B?T2lBL2tBeXFiME9wZ1lma0Q1bllwQUxlUnZ2YWJCRE9DYkU2M2tCcGQ5M2Jz?=
 =?utf-8?B?QU9sb05YK0MxRmpFU0xVYW1scm1ZOS9oUDhFZlVTY1k0YUhVcStYMkFjVm5o?=
 =?utf-8?B?eGlBS1lFb2VqVTdvVGE4SHhWZHlkc2psTWU1VFJCTzJxWFdHRUVsL2p0ZW1t?=
 =?utf-8?B?T2UwVXg5SXRVVFB0QWd4K21GMmc0emRGNTMvcjkvMkZ6a1JQK282RWEyVHZt?=
 =?utf-8?B?dnZTVEZWeXZUc2grQ2pRMmFDM0FmR1RBOHJOUE5sTUkrSk1veUJlaElkZ0hE?=
 =?utf-8?Q?VzWRMUBcaRxH12bRjeGSWOj+KzJfqI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmJmWG1VRTBTV2I3TXJwdlNoUTk5SE5kUm1WRStpTVZVVXlPTjE0UW10WDJL?=
 =?utf-8?B?TDF3L1dCd3MzeUxtQWZUYUtDdlI4aVlBcStWdDFnR3NIS1cxK2QyUWdici9P?=
 =?utf-8?B?NUd5RzBWRHRvTVVDVksrTUhvbW1MUkxlT25xcEhGZnA4L2JVa3dlT0lEcGdi?=
 =?utf-8?B?QXVzWlZCTThEU1BMRDJRZ1pTUmc2Q1p5ZkN0ZGtFbzhJNzJNYWR4RloyQm1i?=
 =?utf-8?B?TWF6a3lPL0txYXhjajA2bm9UUzlMRE9pMUIybUVOMVpGR3B0ckxkdzlFR2VT?=
 =?utf-8?B?b0ErME1XZXdVUWQwYmMwNXBkQjdZaGhPVnlaNjVqazl6VDM2NUM1Tk14bXlR?=
 =?utf-8?B?MHZkODRYNGNnb0VJMGZoN1JYRWhwWjdUc2ZrN3JSZG01MjdQL3hyUHNqZVpI?=
 =?utf-8?B?YitwZXdvdExubkVpMFZXT0pnTUVIVnBYMlJ4c1ZjV2d5WWROUHIwVGloNGhj?=
 =?utf-8?B?RlpqS0I0UzJSeDQ2VkVVV3RMS21LQWdWYlB3Y2VVZVFzN0prR3M2eFZYS0lD?=
 =?utf-8?B?NEhSZmRSeEpVR1ZhTEs4MHFiMUVscFE4RTlDeGZPNU5zUmo4U2lXR08yLzNn?=
 =?utf-8?B?K05sOWNJOURZR05UUXpoMlNtSGlxaTZFU0xSd2xSeHZ6MVI0b3g0T1FjZlpu?=
 =?utf-8?B?WWNKenJoMWpIWE5XVjNacDFJQkg2bjhQZW51b2NKdnUyL1hzWWpGZWJiRitF?=
 =?utf-8?B?cFV2UG51VGlOcFJzZFpSMHpNWUhKOWpuVWwzdzY5eE1TdFFjUTVOU3FBamg1?=
 =?utf-8?B?WlRMWVpaNk45UDl4ckUwUGRCK01RN1gwK0pDN0lnVlFWRHhFeXppRXFraGxQ?=
 =?utf-8?B?ZHRwVnVqckFUVlNKbXp2RFBNOFpBdUt4clpkUlozaEU5M0YrYW9OK1cyc1Iw?=
 =?utf-8?B?SUt6UXpqaEszZlU0VFhTa21IdVM3dXR0YVZ6UVBTL1h0QXR6cWJGSTZJdWlJ?=
 =?utf-8?B?MXpxLzJXRnY1VWNHSUVMS3JRNDRQejBmRGpVbzIyb2o3NVRGMlRwMXF1ZmJu?=
 =?utf-8?B?bzF2SktqSFJXVW9GRW1MQzR5Z3N4c2QzY2ZpK2h3Tld2WkhKTklkdC9VeXdG?=
 =?utf-8?B?a1N3eVI4ZjZkY1BsR1JlamRxaXhEbUQ2eGpZVXZpd0FFaWM0eUordDY0TGNP?=
 =?utf-8?B?T29kOUl4Q3RNemZVL3hQeUFXU2VWL2RHMjlkTHlvQkdFOUVycWdGdVI2WTJl?=
 =?utf-8?B?RTZQZWFOQVc1MHhnZEZ3dURhaVp3dUk5cXM1QlJtOGVIK2pRSGtpbityUm0v?=
 =?utf-8?B?c3pJTkhGOGtNRXk2OFkvNnpVU2ZHdWt3OGRNMEE3SndreTBtcTJCVVZ2cWxj?=
 =?utf-8?B?UWk0UVZEWW81a1NiM0FtVzE1OEttZ1kwRytqa2M2cXdDV0JOSEw5a21HSndO?=
 =?utf-8?B?cGMwQXZVNFA3M2gwbXF4M0tZdHljem5GUXd3RTZJU0xEU1NkdDhUUlB3TzBu?=
 =?utf-8?B?VDd2cFpLcmlxbk5UOTBBUncrZFN0RWFXb1RVS0xoTVowMTJnT2xrVEJtcjc3?=
 =?utf-8?B?amhmNWtKS0Q5SlpPaVczM3Z4dUxLWnU3b1hWaWVhWk96OHh0b2ZzU0xnVU5K?=
 =?utf-8?B?SG83WjJtL05NVGErUDFCVjZLL3FzVGNyUVpHTlMzUGx6a0pvbi9wanZTSDR3?=
 =?utf-8?B?TFFEWnNUYmdGbW9EQmw2bnFCQnZ0ZVhYRnQrMHpqY0VIcTdXM2ZDRjMyRzZ0?=
 =?utf-8?B?NUV2NWd2OFNpRktZOGdnM0pUV1RGSC9rWVhqT2FJdFFwaVp2bkZZWjluamhR?=
 =?utf-8?B?aHNnRG0rdW5ub0NBM1BJajNNVlR6RUJDcTVGUjFUaDZDcU1idnl3OGxQeGVI?=
 =?utf-8?B?RVJEWUlNVzJHY3ZxVzNGT0dtODFEcmdDaHZldGpBZUpseWZ3L01MWjRjdkhY?=
 =?utf-8?B?QTJaeFZuSldidWdVUEdCR1Y3NkxrMkpDL3pzK3dXR1JxT0NUQmEycXpaaUdm?=
 =?utf-8?B?NUJ1d1hjR09IcHh6ZDNYNXQzejBjRGNBeERzeTJWZUtnd3g0REtxbFRKVkFu?=
 =?utf-8?B?d0JlRFlRWW53dTVPa3lVUFFtUHBpY1c4NlJ1Mm1DZnpTUmdYckFtb3pPNkZw?=
 =?utf-8?B?SGRpQjVoYjU1VWpEcllFdG4xbGdsc3FhU3NpZnBUNk9ZSE15dkhCMzFBNnhL?=
 =?utf-8?Q?Wb/Cfc8cya9laX2aHl74pZAu7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f77aa1bf-8dcb-4c4e-1bcb-08ddd580f39f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 07:06:37.5839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VL09D28dxZaklDmN8qRO5yeP/gO9epRm+0Ho+qgv9YO5au9rxpoO/+jvRIputXJ9mziCm2bpAzJ1y7YQNxHE/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7199
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnOyBMaW4sIENoYXJsdG9uIDxjaGFybHRvbi5saW5AaW50ZWwu
Y29tPjsgQWxtYWhhbGxhd3ksIEtoYWxlZCA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIIDAxLzE5XSBkcm0vaTkxNS9sbmwrL3RjOiBGaXggaGFuZGxpbmcg
b2YgYW4gZW5hYmxlZC9kaXNjb25uZWN0ZWQgZHAtYWx0IHNpbmsNCj4gDQo+IFRoZSBUeXBlQyBQ
SFkgSFcgcmVhZG91dCBkdXJpbmcgZHJpdmVyIGxvYWRpbmcgYW5kIHN5c3RlbSByZXN1bWUgZGV0
ZXJtaW5lcyB3aGljaCBUeXBlQyBtb2RlIHRoZSBQSFkgaXMgaW4gKGxlZ2FjeS9EUC0NCj4gYWx0
L1RCVC1hbHQpIGFuZCB3aGV0aGVyIHRoZSBQSFkgaXMgY29ubmVjdGVkLCBiYXNlZCBvbiB0aGUg
UEhZJ3MgT3duZWQgYW5kIFJlYWR5IGZsYWdzLg0KPiBGb3IgdGhlIFBIWSB0byBiZSBpbiBEUC1h
bHQgb3IgbGVnYWN5IG1vZGUgYW5kIGZvciB0aGUgUEhZIHRvIGJlIGluIHRoZSBjb25uZWN0ZWQg
c3RhdGUgaW4gdGhlc2UgbW9kZXMsIGJvdGggdGhlIE93bmVkIChzZXQgYnkNCj4gdGhlIEJJT1Mv
ZHJpdmVyKSBhbmQgdGhlIFJlYWR5IChzZXQgYnkgdGhlIEhXKSBmbGFncyBzaG91bGQgYmUgc2V0
Lg0KPiANCj4gT24gSUNMLU1UTCB0aGUgSFcga2VwdCB0aGUgUEhZJ3MgUmVhZHkgZmxhZyBzZXQg
YWZ0ZXIgdGhlIGRyaXZlciBjb25uZWN0ZWQgdGhlIFBIWSBieSBhY3F1aXJpbmcgdGhlIFBIWSBv
d25lcnNoaXAgKGJ5IHNldHRpbmcNCj4gdGhlIE93bmVkIGZsYWcpLCB1bnRpbCB0aGUgZHJpdmVy
IGRpc2Nvbm5lY3RlZCB0aGUgUEhZIGJ5IHJlbGVhc2luZyB0aGUgUEhZIG93bmVyc2hpcCAoYnkg
Y2xlYXJpbmcgdGhlIE93bmVkIGZsYWcpLiBPbiBMTkwrIHRoaXMNCj4gaGFzIGNoYW5nZWQsIGlu
IHRoYXQgdGhlIEhXIGNsZWFycyB0aGUgUmVhZHkgZmxhZyBhcyBzb29uIGFzIHRoZSBzaW5rIGdl
dHMgZGlzY29ubmVjdGVkLCBldmVuIGlmIHRoZSBQSFkgb3duZXJzaGlwIHdhcyBhY3F1aXJlZA0K
PiBhbHJlYWR5IGFuZCBoZW5jZSB0aGUgUEhZIGlzIGJlaW5nIHVzZWQgYnkgdGhlIGRpc3BsYXku
DQo+IA0KPiBXaGVuIGluaGVyaXRpbmcgdGhlIEhXIHN0YXRlIGZyb20gQklPUyBmb3IgYSBQSFkg
Y29ubmVjdGVkIGluIERQLWFsdCBtb2RlIG9uIHdoaWNoIHRoZSBzaW5rIGdvdCBkaXNjb25uZWN0
ZWQgLSBpLmUuIGluIGEgY2FzZQ0KPiB3aGVyZSB0aGUgc2luayB3YXMgY29ubmVjdGVkIHdoaWxl
IEJJT1MvR09QIHdhcyBydW5uaW5nIGFuZCBzbyB0aGUgc2luayBnb3QgZW5hYmxlZCBjb25uZWN0
aW5nIHRoZSBQSFksIGJ1dCB0aGUgdXNlcg0KPiBkaXNjb25uZWN0ZWQgdGhlIHNpbmsgYnkgdGhl
IHRpbWUgdGhlIGRyaXZlciBsb2FkZWQgLSB0aGUgUEhZIE93bmVkIGJ1dCBub3QgUmVhZHkgc3Rh
dGUgbXVzdCBiZSBhY2NvdW50ZWQgZm9yIG9uIExOTCsNCj4gYWNjb3JkaW5nIHRvIHRoZSBhYm92
ZS4gRG8gdGhhdCBieSBhc3N1bWluZyBvbiBMTkwrIHRoYXQgdGhlIFBIWSBpcyBjb25uZWN0ZWQg
aW4gRFAtYWx0IG1vZGUgd2hlbmV2ZXIgdGhlIFBIWSBPd25lZCBmbGFnIGlzDQo+IHNldCwgcmVn
YXJkbGVzcyBvZiB0aGUgUEhZIFJlYWR5IGZsYWcuDQo+IA0KPiBUaGlzIGZpeGVzIGEgcHJvYmxl
bSBvbiBMTkwrLCB3aGVyZSB0aGUgUEhZIFR5cGVDIG1vZGUgLyBjb25uZWN0ZWQgc3RhdGUgd2Fz
IGRldGVjdGVkIGluY29ycmVjdGx5IGZvciBhIERQLWFsdCBzaW5rLCB3aGljaCBnb3QNCj4gY29u
bmVjdGVkIGFuZCB0aGVuIGRpc2Nvbm5lY3RlZCBieSB0aGUgdXNlciBpbiB0aGUgYWJvdmUgd2F5
Lg0KPiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2Ni44Kw0KPiBSZXBvcnRlZC1i
eTogQ2hhcmx0b24gTGluIDxjaGFybHRvbi5saW5AaW50ZWwuY29tPg0KPiBUZXN0ZWQtYnk6IEto
YWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9m
Zi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDE2ICsrKysrKysrKystLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCAzYmM1NzU3OWZl
NTNlLi43M2EwOGJkODRhNzBhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jDQo+IEBAIC0xMjI2LDE0ICsxMjI2LDE4IEBAIHN0YXRpYyB2b2lkIHRjX3BoeV9n
ZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCXRjLT5waHlfb3BzLT5n
ZXRfaHdfc3RhdGUodGMpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIHRjX3BoeV9pc19yZWFk
eV9hbmRfb3duZWQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLA0KPiAtCQkJCSAgICAgIGJvb2wg
cGh5X2lzX3JlYWR5LCBib29sIHBoeV9pc19vd25lZCkNCj4gK3N0YXRpYyBib29sIHRjX3BoeV9p
bl9sZWdhY3lfb3JfZHBfYWx0X21vZGUoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLA0KPiArCQkJ
CQkgICAgYm9vbCBwaHlfaXNfcmVhZHksIGJvb2wgcGh5X2lzX293bmVkKQ0KPiAgew0KPiAgCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheSh0Yy0+ZGlnX3Bv
cnQpOw0KPiANCj4gLQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBoeV9pc19vd25lZCAmJiAh
cGh5X2lzX3JlYWR5KTsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkgew0KPiAr
CQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBoeV9pc19vd25lZCAmJiAhcGh5X2lzX3JlYWR5
KTsNCj4gDQo+IC0JcmV0dXJuIHBoeV9pc19yZWFkeSAmJiBwaHlfaXNfb3duZWQ7DQo+ICsJCXJl
dHVybiBwaHlfaXNfcmVhZHkgJiYgcGh5X2lzX293bmVkOw0KPiArCX0gZWxzZSB7DQo+ICsJCXJl
dHVybiBwaHlfaXNfb3duZWQ7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIHRjX3Bo
eV9pc19jb25uZWN0ZWQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLCBAQCAtMTI0NCw3ICsxMjQ4
LDcgQEAgc3RhdGljIGJvb2wgdGNfcGh5X2lzX2Nvbm5lY3RlZChzdHJ1Y3QNCj4gaW50ZWxfdGNf
cG9ydCAqdGMsDQo+ICAJYm9vbCBwaHlfaXNfb3duZWQgPSB0Y19waHlfaXNfb3duZWQodGMpOw0K
PiAgCWJvb2wgaXNfY29ubmVjdGVkOw0KPiANCj4gLQlpZiAodGNfcGh5X2lzX3JlYWR5X2FuZF9v
d25lZCh0YywgcGh5X2lzX3JlYWR5LCBwaHlfaXNfb3duZWQpKQ0KPiArCWlmICh0Y19waHlfaW5f
bGVnYWN5X29yX2RwX2FsdF9tb2RlKHRjLCBwaHlfaXNfcmVhZHksIHBoeV9pc19vd25lZCkpDQo+
ICAJCWlzX2Nvbm5lY3RlZCA9IHBvcnRfcGxsX3R5cGUgPT0gSUNMX1BPUlRfRFBMTF9NR19QSFk7
DQo+ICAJZWxzZQ0KPiAgCQlpc19jb25uZWN0ZWQgPSBwb3J0X3BsbF90eXBlID09IElDTF9QT1JU
X0RQTExfREVGQVVMVDsgQEAgLTEzNTIsNyArMTM1Niw3IEBADQo+IHRjX3BoeV9nZXRfY3VycmVu
dF9tb2RlKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykNCj4gIAlwaHlfaXNfcmVhZHkgPSB0Y19w
aHlfaXNfcmVhZHkodGMpOw0KPiAgCXBoeV9pc19vd25lZCA9IHRjX3BoeV9pc19vd25lZCh0Yyk7
DQo+IA0KPiAtCWlmICghdGNfcGh5X2lzX3JlYWR5X2FuZF9vd25lZCh0YywgcGh5X2lzX3JlYWR5
LCBwaHlfaXNfb3duZWQpKSB7DQo+ICsJaWYgKCF0Y19waHlfaW5fbGVnYWN5X29yX2RwX2FsdF9t
b2RlKHRjLCBwaHlfaXNfcmVhZHksIHBoeV9pc19vd25lZCkpDQo+ICt7DQo+ICAJCW1vZGUgPSBn
ZXRfdGNfbW9kZV9pbl9waHlfbm90X293bmVkX3N0YXRlKHRjLCBsaXZlX21vZGUpOw0KPiAgCX0g
ZWxzZSB7DQo+ICAJCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgbGl2ZV9tb2RlID09IFRDX1BP
UlRfVEJUX0FMVCk7DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
