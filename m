Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37CEB0BE5C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 10:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984F310E264;
	Mon, 21 Jul 2025 08:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Md3cioqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1498F10E263;
 Mon, 21 Jul 2025 08:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753084990; x=1784620990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OfutAkBfaFw7RCx7Cxwq1OzB4naTBAjV3ONos62oqWw=;
 b=Md3cioqjSzUfpKeeI/FogHvgTVE9g6U1Tf9Bwynn4E5HCNHTU3+FnGsd
 15YK6hY9BvKcsKN/8DnYVvTQ47Nynwb5eqUagg/+RIeoWUVakw/ioBpLi
 JR99GqIzCtlAoxFYOWYpFFujkPYD5+9tC8NFwJA7emcukXblHJP1zEA6k
 YtJfnERtAmiacPF8TIz42sQFFrbn5PhT5sv5oWiccmWAwX6oPQZPGkhw0
 cTIbofwYtYCPncoUhoPxuR1VL0hPKNdQcjJD7rdstUSM2BYiFrNW6W7G0
 rfAv59s/yJ9hsXhLtpyUM9lZX1TsTZB+wYH2T1VeAtgOLcde370CzkDar A==;
X-CSE-ConnectionGUID: qAFBAWaIQhGmtr9LiwFErg==
X-CSE-MsgGUID: vbFN1ICtQUWOUiXQNaKukA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55171070"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55171070"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 01:03:09 -0700
X-CSE-ConnectionGUID: MuDWVYvnQlymQJmtUTrU+A==
X-CSE-MsgGUID: 4uN1iMdnSC2OyYDKa4l89Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="189749487"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 01:03:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 01:03:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 01:03:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 01:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qbZuUgEInXFxyluLzDC4xvk/Yh47LRz0KgX8OS+X6tbN7+/wAX0UXouiuD+QoLWadnjzjmABH2WMDAeBbDcrGBUkkwU8awBB8ceMhHFD1MMAfqj68IUu2PY2vguhWKHWJixgna5c0C++imzjmYqbR3V2OlBlxkifn7gCWm5kA58fEGojCeVeMyeHB/ZoKzu9M0YCdnz2zxeLalBw0+gjNMe31YiUOFwG/KJoPzCtzQJqNFj81f/r1R9TvwGXScZZGQzFq5aqqLJYSMvVIOYDEf2TpSgL2S0Ea9VpfgUxjCSakfv4OB5hNPYwwSHmQ1z7MmORZnSJKqksVs+BeYEZ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OfutAkBfaFw7RCx7Cxwq1OzB4naTBAjV3ONos62oqWw=;
 b=uDifKTHzJmy5vti5dkenyAS+65tNMY14mfVOfJbHiiVLLDwNl00C3bgjVx0EgeGLs0szfgK1fWSKHsFMtd//moPFWAgF5SX2RMtC2ryEOcOFX0EQZY26VFQvvbQ2UlUa9/27MIjnthuJZivefhQ30HpUbXI85TTE6CIVxb254lojBIOGQsKtz+T+MiphlrwjEnMjHxk0VgM3moqiL8nKnyY4rHHF6ABRxgP5g7a5cU0tr/1TfZagD3Xz2YOTbnoG+HqEFZrqCTilLhYhJioPSYsGrYc5DPVSasBV3c3rlwJUNDlm76A2i7XecxRmdljg2khMH9WO5bCWWLXIKHrKxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6713.namprd11.prod.outlook.com (2603:10b6:303:1e8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.30; Mon, 21 Jul 2025 08:02:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 08:02:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 1/3] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Thread-Topic: [PATCH v4 1/3] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Thread-Index: AQHb9XcL2ZgXVzuj0EqhKGR1UnZRr7QzjSGAgAizjQA=
Date: Mon, 21 Jul 2025 08:02:31 +0000
Message-ID: <b0eb171b69c90c757301ba59b972f5c351766194.camel@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
 <20250715105509.4146806-2-jouni.hogander@intel.com>
 <aHane60V4FB-hUlT@intel.com>
In-Reply-To: <aHane60V4FB-hUlT@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6713:EE_
x-ms-office365-filtering-correlation-id: aa73cf08-639a-4d7c-e9ba-08ddc82cf1bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ajF2ckYwTVZ6WlJVWUpycW4zR254eTBBbDlLN1lYUEhLZ2R0NFRkZVFmMlFF?=
 =?utf-8?B?OGZteUR1anU3OTFPSnNOOExnRjQvR1VqNW1qLzd6SWtLOTl1K3VoSkhHWXh2?=
 =?utf-8?B?cE5URXJ0ZlYzMWdoYmJQbEVHMkVpaDJCOURqOWJVcTRFaGdDUGlpRGZmNFFI?=
 =?utf-8?B?eHZvNG9IWGJsUmZaWHUrYkFCU0VKc0RDN0xVL1ExM3NqNTVhQXhnWHVDWG91?=
 =?utf-8?B?K3BNbFYrTjJtMndYSTNhMWtVQ1F0cVlxMjkwSHNjK2pTdjY0YkV0Z0V5OVJt?=
 =?utf-8?B?K3R4QXlqSzhLZG8xTzIwb0labDFHb2dQdElpeTVNY1NpcjE1V09uVk52SEtS?=
 =?utf-8?B?L3BBU2ZkaFZwUVRGZFpuMG01Rlk1eHNhbldvQ3ZYNGhoVTU0VS94MjBoTG5t?=
 =?utf-8?B?YkJEM2l1Nkg0ZFBpaGVGNEZPamdNT1A2K214SUxsZHo1dTVrWkhXV0JhOFhw?=
 =?utf-8?B?Y0p6WitldDFtcDA4SFlnMXVBM1BmMEhMY3hBUE4wRUp2WTVwNmo4aGVyTzRm?=
 =?utf-8?B?RFpwbFFSTjdja3RWNjE2aG5UQmNsRWRUSUxlU2hxUG9pWVVSL1pYTTd3bnM1?=
 =?utf-8?B?RXk4eE5Uck1rVkowRHZjSngzbHh0eG9LSHhEc0YxUmh1ekVyRkpIZVNnZllS?=
 =?utf-8?B?by9jOFluMzJndXlGS3FrRXNSYmZzYmNiZDJ3RzdqZ3d4REVyKzFJeWZrQm1l?=
 =?utf-8?B?SVlvQjJjT1VlQXZqbkl4Z1BobVR4TG1PNWtRTmhjd2JkQVBDMjBBaGV3aCtV?=
 =?utf-8?B?UlplQkwzdUFzSTdkYjNyM1ptUkNKMHN5R01CZ3NjTlRxZU1nbm1jUGRZRXY2?=
 =?utf-8?B?U2RYdmkwRjU1emk4ajNEWGtiNElBMVAvd2kzQzZCWm81cmo0MWZTdUZVRlBj?=
 =?utf-8?B?REVMa3lUME40VjdzQkJVZkdnZThSbUI1VC9RZ3hySzhTMmUvYjlPRTJLTjRp?=
 =?utf-8?B?UkloQk5SekxLYUVOV2xjUWRRcm1DUzIvSDFRS0JJOWpqbVZJd0dVV2JHa05z?=
 =?utf-8?B?WGNGaFF2L3lsZXlZRzlNalo3ekdiYUp1NGFxVnJzK0lLRzBYZEtwRzl0b293?=
 =?utf-8?B?ZFFFRkJLRFI4a1hySkdzbVhqZ2w0ZDRQNUFxQys2cjhTTUwxNFQyaHNtTVA2?=
 =?utf-8?B?ZkVUUktGRG1JVlFzZmFGY3dKcDB1azlKWVNNSXZ4eGRIUGdrSFFaWlA0RkVl?=
 =?utf-8?B?N1NlMG5wWlAzbTFQWG8vYTROY05pdFltVnpQUHVOc21vWEdtYmJGNEJaYnI5?=
 =?utf-8?B?bnIyQW13QmV1NnUvSjloRjJScGhuTkxVSVdxUURJNUFJUjZ0K0VNYkZXY05Y?=
 =?utf-8?B?OHN1MGJ1Wld1ZXN2MU9GaDg3aHM2d3lsUDFiR2ZnL3ZCWHBLU0VXdzlnYWFM?=
 =?utf-8?B?SHI5eUJkanN6WC8rdzNRS3BRZXk5NGtBRzloa0NsSmRxZDkyNjJxVW1tbnJv?=
 =?utf-8?B?eExVaTQydGZtTktKNEdwc0ZDMzAydmNWVTlOcC82L2RNdS9hWU11NytiQ2N5?=
 =?utf-8?B?SEtJdndOODFUb1FLZ3hOREdRelpKaVpHTDU1WXp1dythampDZXVDVlVrZUhB?=
 =?utf-8?B?R3crb1VlZ3o0ZkZCMjhrY0wyV254Uml1UUNWVzBaY3NNaFdjMFlnWEgxdmdv?=
 =?utf-8?B?NjVJTTJyWHhVNTB3YjBGOUNJUHErZU9LYWVFTEQzaUlPdFpkNGhQQ2gwS3Vh?=
 =?utf-8?B?ajAzaGVkTzg2SkNwVzdrcXg5cmxZRnJXeDdFMmpEdWl4QW5EdHQwRGd6bGE5?=
 =?utf-8?B?Wng0WUNwcDNnQXdPWGxvQkNMcUU0bXVQeUVZL21rZmxmZ284eGtVNitTYXZo?=
 =?utf-8?B?RjVuSFd2WEdNSVhubUhhbWswODdISU8zNnFUYm9yaHBuV3RFU0JOZGEvL3Ar?=
 =?utf-8?B?SEZ3eUZyRzZIdzg5ZDFNRlFTYmtnVmh6b1VtZzJVUWM3d3Bzd04vemxLeG9j?=
 =?utf-8?B?Z2MwNlhHN2c2bFB5UVpCazNsWjlCQ2N4NVh1ZlpGeWQ1bjhMdGNmNS9oN09B?=
 =?utf-8?B?cWxLSnFDaFZBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTIyc2pQYmlKYVFhS3RJazVCcGg0SzNYNGVWL3pBVkw5OVp3SSt1cFpPSzVS?=
 =?utf-8?B?SVk1MkRlN2ZzRDNjZmhQN2hzUUY0bUNIR0JBZzNwUkxsaFNPaDNVM3hFMkho?=
 =?utf-8?B?bGFGQ254QnRBdDZHRGc5NUNpdTZDM2lpdU1HT0RXQW8xQ1lFZlVrdXdielgw?=
 =?utf-8?B?NUdHekNtSm0ydE9rYWgvRVArNXVtUXFpa25lR05KbVc4elF6alhWSlpnNkEv?=
 =?utf-8?B?UkdpWFM4djZhWjNIV2w5YkNVeWVZSVl4TnJVa043VTl1c3ZML283ell1djY3?=
 =?utf-8?B?ZHZYbUdCVjBCWi9OUnhUQjZKeFVmWGRjVEhNc29GRGY5YTBEdVJldmU1cTVB?=
 =?utf-8?B?bCs2THVzNm93b0R5NGlFQkM2L1BQVklXZ0szVlp4amlTdVkwYUM2b2ZHWUdu?=
 =?utf-8?B?NHMyTDR1NFIwZk5Ia1BmdDBuak8rZEZBQ2VuMkxZbXd2TmlSMHFubGY2QzNZ?=
 =?utf-8?B?NjZxSThYY1UwUHRmNkNLNWd5WnZsejRlejhvVVZNNTJNbUxFYkFDTmVhaG1a?=
 =?utf-8?B?M1hsVm5GdFl5NHltVmM2ZXV5ZGVzZnRiQjU0QTB5cXRnYkxMakFzd0t3QWRJ?=
 =?utf-8?B?MG9yeDB2QXMydU9PenpWZVdSWS8waXZKR0Fud3B2dU9uNDU5ajhMR3JTUFQx?=
 =?utf-8?B?V0tQSXdvbjMreVFpS0p6NjFWQjlMMUtPeWhTWGFGSHlmUldzZ2ZRdXpDV282?=
 =?utf-8?B?eDFEWmZyWFcybnhvNkw4S054ekRheFU2YkczRmtiZHdpVWtPaldmV3FVZmVx?=
 =?utf-8?B?OTIyR2ZYKzJjTFdWc3lObzZvNE9obkh6SmcvYUNLK3ZRbUkwQ1JNd2Y1UFZ6?=
 =?utf-8?B?alA0V2oySXpiKzZ5UmNycUVrTzk3VWUvOWdLZUZsNXc3c2RIZzd3dW5tQ2Ir?=
 =?utf-8?B?NDAzK1RPYStGVmFTNG1veHpaK3pVZXRvM0ZOTTE3TnEyWEJtWWpuWUF6MEdm?=
 =?utf-8?B?cFRTQU9Hbkhwazh3QkN0SUZRZ1pkVzFhMjZ2T3B2SWYyekRENkpBbi9sNnhT?=
 =?utf-8?B?WjR4L2xDL21wM3Rqc04yMDlrUCs1VnJqQVIzalRBQlpqVVMrQXJCTnp3RWJu?=
 =?utf-8?B?VHNCMGl1YkxVL0d3V0t3VDFNNkcvQzc5UmtLTHBmNjc1bG9OaWVpWkJ4ZlZR?=
 =?utf-8?B?ZnJIdVd6SDA1ekNHalkyN3k2eS9ILzJKTWg4LzFCWGZ5a3BheDF2WVd0Q3la?=
 =?utf-8?B?TGloNXQ1SGxobm1sdXNWQnU0YzV6dXVMcFdpWUl0MlpsNCtKRjc0ME9jblJj?=
 =?utf-8?B?VS9xZjZCYmlJMDMvcVNQZDZiWE1Kb01JUjRUYXUrL0sveHJCcTlidkVxN0VD?=
 =?utf-8?B?aFIzMm1qWWluRjJFRDVONzEzVnQ2Y1I5WDA5NWs4VXJGZ3FZVEdLZ1hGblRM?=
 =?utf-8?B?Q2FuVlF0c3hFTDk5NTVmZ0wzc0JIbzZGRVk5SVMvQ1lYY0d6NnNlZ0xkbVNQ?=
 =?utf-8?B?Yk1UcklXREZFOWt6WTBRaTFvUWo5RmNYaDBpdDhTaFBmU0NnNm00YzFVWFhP?=
 =?utf-8?B?NS83T3R6UXRCWWlIbHNXSnVQM0JpSG9BMWFZdEJUUTYvRW9iT2tnbDV0ZjRj?=
 =?utf-8?B?UEllVmJLYjNPaVBwUzlicEZ2cERVYytkRmtpb1hvUDM5WXBTOWlkZmRpYmkz?=
 =?utf-8?B?eGZXaU4wT09zZU1oeUZSZG9wNUdiQTNyZnRFRnlyYTJmaEpzTlE5WHo1R1JG?=
 =?utf-8?B?VHluQlBtUmdjVWhhWmRTNjZHbTNjN2J2WFJxenB1MWQ4dHoralBGUGcraWRI?=
 =?utf-8?B?SXRnY0ZWMGU3RENPYm5LYW5mWFIyNGpnSG5mcmQzUE9sZy9Za0JjVUEvRDI1?=
 =?utf-8?B?ZmhzdG90Y0NhQnpoRTNCNnJiT0t6L2NSZldLZC9yeHdzU08zRnY0SEZidnBo?=
 =?utf-8?B?V1RxaUY4dTEyMk5seUVJanh1UXFZbE5XamJ2UFVBSHhMQy95OVpUaEJHU1A5?=
 =?utf-8?B?TThmNVl5MXhBTmVIb25ObFFXcXVhQ2MzSUk4YVpYYTBCREZGU3pkV05WUU1o?=
 =?utf-8?B?dEFlSTcxblBMT1RIL2dZSXVwbGwrTHlMTStOZFB3MkJoTEpZVU9abUtiY1F1?=
 =?utf-8?B?MHBlV1VNY05hamtVZ1A1N1o4NzVjUmVyN0FLdHdVUnRqdnArSWd5cmJrOFNt?=
 =?utf-8?B?UVlBRktEREIzaG4zQmYrbDIxY25hMDV1YXNOdjVzY01ROTl0WG9DcitGVEtX?=
 =?utf-8?B?d1dGUncrZHdIS2doU0tKUTJtSnJheUhHNm1zREt3Sk9NbnRZMVhFNUxmQnVL?=
 =?utf-8?B?M3JCZXJrTW1YWXVQdGJTTVc2WEpBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <579974D8EB646F4AA6F460839B4D3A5B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa73cf08-639a-4d7c-e9ba-08ddc82cf1bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2025 08:02:31.6087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TT+wDs2SrUZ81uhmhNedcY1q0kgwkR8MYIWF0mDYinh+P/NkSI1Y6T+YDFt0KY1P/M2vwosgJX7kPl5wGpETzcCeTbtEW3hbdSOzV/dPmr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6713
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

T24gVHVlLCAyMDI1LTA3LTE1IGF0IDE1OjA5IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFR1ZSwgSnVsIDE1LCAyMDI1IGF0IDAxOjU1OjA3UE0gKzAzMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiBDdXJyZW50IGFwcHJvYWNoIGlzIHRoYXQgRWFybHkgVHJhbnNwb3J0IGlz
IGRpc2FibGVkIGluIGNhc2UNCj4gPiBlbmFibGVfcHNyDQo+ID4gbW9kdWxlIHBhcmFtZXRlciBp
cyBzZXQuIExldCdzIGlnbm9yZSBlbmFibGVfcHNyIHBhcmFtZXRlciB3aGVuDQo+ID4gY2hvb3Np
bmcgaWYNCj4gPiBFYXJseSBUcmFuc3BvcnQgY2FuIGJlIHVzZWQuDQo+ID4gDQo+ID4gU2lnbmVk
LW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0K
PiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KDQpU
aGFuayB5b3UgUm9kcmlnbyBmb3IgeW91ciByZXZpZXcgaGVyZS4gV2hvbGUgc2V0IGlzIG5vdyBw
dXNoZWQgdG8gZHJtLQ0KaW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDEzICstLS0tLS0tLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMTIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBhZTkwNTM5MTkyMTEuLmEyYjU2ODhmMGM4MiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IEBAIC0yNjUsMTYgKzI2NSw2IEBAIHN0YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3Ry
dWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgCX0NCj4gPiDCoH0NCj4gPiDCoA0K
PiA+IC1zdGF0aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9ldF9nbG9iYWxfZW5hYmxlZChzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gLXsNCj4gPiAtCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiAtDQo+
ID4gLQlpZiAoZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEpDQo+ID4gLQkJcmV0dXJu
IGZhbHNlOw0KPiA+IC0NCj4gPiAtCXJldHVybiB0cnVlOw0KPiA+IC19DQo+ID4gLQ0KPiA+IMKg
c3RhdGljIGJvb2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IEBAIC03NDIsOCArNzMyLDcg
QEAgc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdpb25fZXRfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxf
ZHAgKmludGVsX2RwLCBib29sIHBhbmVsX3JlcGxheQ0KPiA+IMKgCXJldHVybiBwYW5lbF9yZXBs
YXkgPw0KPiA+IMKgCQlpbnRlbF9kcC0NCj4gPiA+cHJfZHBjZFtJTlRFTF9QUl9EUENEX0lOREVY
KERQX1BBTkVMX1JFUExBWV9DQVBfU1VQUE9SVCldICYNCj4gPiDCoAkJRFBfUEFORUxfUkVQTEFZ
X0VBUkxZX1RSQU5TUE9SVF9TVVBQT1JUIDoNCj4gPiAtCQlpbnRlbF9kcC0+cHNyX2RwY2RbMF0g
PT0NCj4gPiBEUF9QU1IyX1dJVEhfWV9DT09SRF9FVF9TVVBQT1JURUQgJiYNCj4gPiAtCQlwc3Iy
X3N1X3JlZ2lvbl9ldF9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCk7DQo+ID4gKwkJaW50ZWxfZHAt
PnBzcl9kcGNkWzBdID09DQo+ID4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEOw0K
PiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2VuYWJsZV9z
aW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4g
DQoNCg==
