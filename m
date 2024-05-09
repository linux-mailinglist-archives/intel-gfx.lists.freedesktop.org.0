Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EAB8C11CC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 17:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393A610E2F5;
	Thu,  9 May 2024 15:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GLqdL141";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E408F10E2F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 15:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715267730; x=1746803730;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HFKHayuG1Qd/6WiFIAprvD/9lYOj0j4bLMBXVioO6Iw=;
 b=GLqdL141cdLHKa7oT0GwYx47LL5DwQP6rrkQpDRYUGTAQFcwIbDnS/Wh
 EPYGKsyb7+1dRgCNOrWt7/nSWTnNiKMqJ7ayRWBCtjHrs2/rDOtwJFpCU
 bFnyyZJCH6J5upZtAs6n29fPVP2BJI3EUev11reHxGDTsDII5QijCVlEy
 FNbq8kDIJJ3EkgBhQhMRcKOM7lMa51ugzPxhDfemNr+k5sragyDL4r8tr
 Xq3kgA6aFSZThaHZWII7GptF7PcduMsFeiCHf/K2sn85vlAJJybJ2aaKp
 znhcwKuQuB89/YIDPanKY+2udY/fDlxHQitqtMzyuhnFe0Lu0DXdON+U/ w==;
X-CSE-ConnectionGUID: wqPi/QtQTP+Chmy0wiT/Yg==
X-CSE-MsgGUID: L5AMoojBQWG4VVG329UoxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11131743"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="11131743"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 08:15:29 -0700
X-CSE-ConnectionGUID: dWuZryNKSMSVldw2GAUmdg==
X-CSE-MsgGUID: sYP509VZQuKrzTczMNDG8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="29148979"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 08:15:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:15:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:15:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 08:15:27 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 08:15:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=erzIzxBoUwjWsqL6/BBpVzs+aP/eKcu0XqsGrdNNZ9gKSUtBT43dVo3EY87uf8TJJbQWVAAAUGzt+BWHf/zKaPX4jLmDWGL7PQcMckK3ngchYsX6SraB8XS1fH5c8YaYHfGkDcFgSZS3nlxjqPSw5Mz2OtMqys0ADKulXxz3MwXGWw+9d27ntwrGvjlKztc4NNOf3KwT1fMycPrD7daZHfHo2OgCnlSNUYiGooOMp5KM9336C8sPCk+gd0743jLmn13Mmv6vxi3hB8uwADfbPSu4SSgXdVn4NhWz/yG0KcVesmU2dVbLm+pg/I9rKo8NjsqGlHXLGMzDH8bZI+Cl9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFKHayuG1Qd/6WiFIAprvD/9lYOj0j4bLMBXVioO6Iw=;
 b=bQ2v0eX6SeUcssKmAmsgLFe5JsxU3j4G2DNH+jPoXl6m5C1N/TWqipgOfrCy3QPYpiasGxtQAFMalstGn6LGYeBbhtPBZ3hUMN2/eoUAjhimuOFJy5dWv/w75oN8RgUz6I/xDMPPN/4edpnxJawsbQ8QRMHheMjnWo6f/EejR+VVmKvzISRApOyiexZl12mp29n5hRIpdjYAWEwSDQnm1tPndB47rqGk/5ThD1caSP6WV/pd/mxupRD80vQJOSES9rJ8ZSGE55GgNBaDMUK5PwXa/U01Q2HUlBn/9k9eUK9Kg28kzCKsSNcWyl6EBZ2QgNxTRd4/QAN17z4fCPMy7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS7PR11MB7784.namprd11.prod.outlook.com (2603:10b6:8:e1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Thu, 9 May
 2024 15:15:18 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%6]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 15:15:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 09/12] drm/i915/psr: Do not apply workarounds in case
 of panel replay
Thread-Topic: [PATCH v9 09/12] drm/i915/psr: Do not apply workarounds in case
 of panel replay
Thread-Index: AQHanSP9Ni/ZF791kkGFZepPJlR65bGPDOxQ
Date: Thu, 9 May 2024 15:15:18 +0000
Message-ID: <BL1PR11MB5979A4FB0D05543AF89B77FDF9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-10-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS7PR11MB7784:EE_
x-ms-office365-filtering-correlation-id: 0a1dcf36-b0fa-4db6-ec5b-08dc703ad650
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Z0FWajh1bFR4SWtpL05NZmpmNlJPMFJ0WmtZUXF3RVVQYmp3K3VGb2NKMUNG?=
 =?utf-8?B?Tm1mKzV4K0tSRDVlYXNEZmRmakViSXBFdlFPTWtSRDhqSStwdFVFVytaYmto?=
 =?utf-8?B?b282T1RDaUp6TkVjNkxXd0hjSGNXbElFalk3UjI5SjlMbnVZakRmZGMyUmUy?=
 =?utf-8?B?b0RsMnBtcmU3ZlI4RkIwRnN2SzVUdFJLblBIMzlKTDdMSGtlSkZSQml5eXFB?=
 =?utf-8?B?ckZ0T2VpOWxwR2RURzVxQlRndG9sOTFSSld0RGlnNGpLQzNnbWR1R0hTc1dC?=
 =?utf-8?B?WnZpZ0J4MFFKNTZOYkN1SThmNk5HUnVXTUxMa25TUGZ1NU9YVUh4Z1pBeFdU?=
 =?utf-8?B?cHRZL1h2RmFGVEplZlBWOVhKVEhGaEFiZWZGM1lFMkdvSVhjanVDZTk0MkRR?=
 =?utf-8?B?d3dQL2l4dFAzN2RJYkc1UHNPODV6RHNWVnRBdVJzWnpLTmlEUHFDR20zeHhM?=
 =?utf-8?B?a2xkTWRXa29hR2xNREw1Z1VjZFFOZnp3M3c1c2E3S2tvV2JkU1FybnRtMk9D?=
 =?utf-8?B?bFRJVUI5ckVNbVoxSndEQ0JuTFRkSHhRc29jeG02UTJyN2lzRlp5bGNNZ3o5?=
 =?utf-8?B?QzdqcFVDLy8vVGlzL0JpMFpKK21mQjlsZWJ4cmF3UlpJK3ZQdmxpRktPbU1B?=
 =?utf-8?B?VElBcC96VkE2U1pDRUJyTlRJNWF4cXorVzF1QlZVMFZPV0ZBREFuUkxua2Mx?=
 =?utf-8?B?aFBHVE9ub05qUjZRMWpQVGV0NXlXUldZL2Z1SzhsTVVCdVM5WDYrbXBXdzgr?=
 =?utf-8?B?RWorc3dOa1pkaDR2S1NiMlBmV2N2UkRmTDE1cE9zT2dMWlFyYy9uZno5QVhV?=
 =?utf-8?B?SDVsdHFrSzFod3BsbGNneUJYNEI5dThMakY4bzJDOCtZcnZwV2JYWUhjSEhK?=
 =?utf-8?B?ZmNNQjRMcnhWbmM5ZkxXQzZJa1FLT0tpaEp2cmZ1TDdrbmxhbDJvRW5zaUdS?=
 =?utf-8?B?WHVGOVZPRG5jbzlSZXVHcnJaS0hDTTZ0Ri9hSm9KNDNHNWgwaUJ3MC9LVXpl?=
 =?utf-8?B?T3ptZnpBNS95Q1JJQXcwcW5yY0dvZ1ROTUdWSnJvaFozbzcvNCtLcmNyemkv?=
 =?utf-8?B?NUcyemNrZGxhSkFWcTNVOFNuTVp0SWNqalZ2MXJteUtLSTRaaVRvZGNGTm05?=
 =?utf-8?B?djUxTmFWMDdDZlV4Y1FPUTkwcm1TS01tcmJpYko0anVEbUY5MVFDdkN5MzBK?=
 =?utf-8?B?QXVtVnBNMTZoTUNONG1Ibmk4cHlNUzhDRlRiVmxDcXVySXUyNGIzaGd6ZWda?=
 =?utf-8?B?dlZhMVZiSmFDRk1QSVV0anhPWkp4cFh0TldRcGFlbklUOCtIakNaU21yOFBu?=
 =?utf-8?B?eE9CTEZML1JaZk1MWS9oZWo0NXkzZEwwMDNMdVQ5MGlFaVRtWVo0bU9NK09T?=
 =?utf-8?B?MFQrdmpBY3U2TTRvUkxBYXY4Mi9oanFSTFBzRTBBSU1DUEY3OHB6OTB5Q2lC?=
 =?utf-8?B?aHdzcjdjOHlFcUlUbHZOU2phUmxxZGJNRGphcWUvSkVFcVg2WmRXYlFKOUZi?=
 =?utf-8?B?OVE4MVplZkxlWVhiaXN1aENyYkIrd3ZqQkNCUzB0VzZiR2V2OFBFbXMvTDh6?=
 =?utf-8?B?WkJlYTIzZVcxNzUwMzBoMXhrWjFESG1ncVdZV2ZSMk53VjIwMFhzYlF2QUp0?=
 =?utf-8?B?N3lXMjBpT2ZwMjZGYUlZeFZKYzBzanhSMVFqOW5mVUNsRUtidW9WTlduL0hQ?=
 =?utf-8?B?NlJpQWdkcEQrTnNIM2dkZC95ME5wSDJLaVlPQm9yd2NPRTdPVjJFdVNMemZY?=
 =?utf-8?B?REFUenEzWVNCWW5INERzWXRZYnVWSDNWVjc2eGFLbGNBd1ptcmxhMmNVTXhp?=
 =?utf-8?B?RERyMWtaU2UvK2dDamVXdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YlhCQ2lubWRzdnkzYndjN05TRmJDZGxBVXBaNkJWbEt2Q3JiV2JiN0hPMXIr?=
 =?utf-8?B?VXl2YjgxcjBlZnUwdmljSjhjWWk2aVFNMnBGNTQ3T0FHUDA3OVJFYWFadzdD?=
 =?utf-8?B?Mk85TSsyNHJTc0UxMlBkZWU4NVlmMVp4KzNnbHByU2ZqRjFHK1pocWgvZEwv?=
 =?utf-8?B?SnJJckRrNnhaYkt1WVduK3NlTjY0a0RZcWswMVMzbkp5QXMrMytJMVJpN2tH?=
 =?utf-8?B?Qm55UjFRQjg1a09leUtIMnpCc21Pd1dtNjkxLzR6SFM0eE5VUjhUOEg0VDhQ?=
 =?utf-8?B?cWVEbnF0Q3NEVjNna29xeE1sdEVBall3MzVxTG00YjZieHVrRmdtZ0NqY1Bk?=
 =?utf-8?B?RE1RdHZ1OGM0M2lmTFRlRzlrK2ZwUDdsYmdURTZBK3M0Yk9tY0JncUI5TE5t?=
 =?utf-8?B?aVdZOXhNQ2tlTzEyeGZtOU5DY0U5WXJGcjd5Tk1FN291emhMTXpNeUt2bmtT?=
 =?utf-8?B?WlNWeUxIbm4vSDZCS3BZYU9wYSs3QXJBZXE4Q3Z2QTN5U0pBQllCVkV4YVQy?=
 =?utf-8?B?aVlaM0VObU56ZTNFUHB5cytJVFJKWldmZDFlbkFGMGxiT2RIeDhlc2J1dmp3?=
 =?utf-8?B?SzkycXd4ejBscU5KV1JCUmJxcjBidVliM2Vucnp6VWhlWERPVWs0TmJXOG44?=
 =?utf-8?B?MlZ6dkdFVGtCTWRyaVBRRE9BT3IvekRCakV0KzNEODNFTlRERlpSWjl6c010?=
 =?utf-8?B?ZXY3a3N2UkQxSGhtQjRmSEFock9kV3puNTdhcitzeVMwVWV3QTVUZStsS2hF?=
 =?utf-8?B?czR0M1FGL25PdFZFVDc5NnpvVVlzL3RQVkc4dWwxRDV3NHBrZEZQMEU3cTJi?=
 =?utf-8?B?ckI5NkR5UUdKNWNvQVg4THFpeXVlOEhYak90RHFad2FoaGNTOXhHbzZBc2pq?=
 =?utf-8?B?Vlhjbm81bHN3VVdyOTVacmdGZjgvM21sYWFtVWFJMTlTZHo5bWZrYjdqanJv?=
 =?utf-8?B?bDBVaDd5a002N01vZmljRTFFa1NUdGduSDhqNW9aLzFJVmRPYTl0RU56VXhC?=
 =?utf-8?B?SDJHMGh1TitacmxDeUJWaGZqQ3Zmb3hmaUFYZGE5aG1RUzdZRG9PMm40SWpT?=
 =?utf-8?B?SHZ1aEh0UE1HeTdyOC9NQnBSRXVzSHRnLzZaUzVMYTc0amo0clNaMjRMdkY3?=
 =?utf-8?B?T0xwOWllOUtxSE93NlFUcGd2aitwV05JblFUUW1kb2tJSDJSUlc4ZDF4cTR1?=
 =?utf-8?B?Z01KVHV6aTlRcmM0b0E4YXF5MkVrUDR5MVRDRkZ5c3NzSWI5U29QdXc1bGVq?=
 =?utf-8?B?NGJRVVJoR05tTlcvcm9lVmw0d3RCUk5WVXpZYWJtSUR2UkRjdGpiOWZCbTQz?=
 =?utf-8?B?RzVJZVhnNDR6d3FFb0o4NndDQk1CaUhnS1pRdUlTYmJRcGJIS0VXRUNsd3hP?=
 =?utf-8?B?U0o3MmdqeStmUFBPOU1xbWUxeXdiVzV3d1Y3SWN0eWsrOEVTaGhSU215TWdS?=
 =?utf-8?B?SUlIVVROU2ZIY1BNZmZNNmJaeCtvUTN4MG5Nak1EZGJyb0xMdkprNnlkTzMx?=
 =?utf-8?B?UVhUUGpDUHF4RDA2anVpMU03bnJpbExrajNWQUtVUGZZbjZhNzg4cC9taDdT?=
 =?utf-8?B?ZXNHQUQyS2pwTzh3emdBN1E1VnR6VTg5SVk2UE5EN2dNWXl6NGxRbWxaN3ls?=
 =?utf-8?B?eFk4dkQwOExOTWZCTFI1RkJ6cWJGMEZ0ZHd1M1ZWOUhGODJtMURpejJlcTQr?=
 =?utf-8?B?SFB5WWlsbWp1aEtaYWcvYkg1ZTZBeHZnTHFHOEpMNGk2T3hzbnlpRWxTN05N?=
 =?utf-8?B?R2xXbWRqVnZzdjFQZkJONWV3eU5JMjAvMlZUMUNwd2NEbGlwSG9uSy8rRU1X?=
 =?utf-8?B?eU9KaGZCQitxWFVVZFpyb3RwK3RQR1p0Z3VDd0htb2QzYkZwZWViTmh6cG11?=
 =?utf-8?B?cHBoQlM1SmI3Tlp3MlB2Tm5NOWFON0JCN0hTMkduNTQ3TjlZOHdNZmRSR29S?=
 =?utf-8?B?bnBqYmtsV2dNODl1SERVOENnRWlkYjRsRWJMN3YzRzIwUzZ2QTc2T1pqbzIw?=
 =?utf-8?B?WGRGdnQvcUpvMzE0OWtxb2JhNFd6d1Vwenk4eUVOQVF3K3ROYWYvQ1hSeDJ0?=
 =?utf-8?B?SUN0aVg0dVc4YVI3Z2lSMTEvR2ZVT3RXS2g0Rmtkd0lqcVlZM0dBRmpiN0FK?=
 =?utf-8?Q?zZ+yX6oPFSpEnRTx85SjAs2Jd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a1dcf36-b0fa-4db6-ec5b-08dc703ad650
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 15:15:18.5192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /DpStsTjnhNWRdQUCTGI7rKIcLMbpOB3D/LGanOR03cd0s8SR4Mxa+1pvgBXOP0G/Abc57l7X6GfuPWpYz6U6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7784
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDkvMTJd
IGRybS9pOTE1L3BzcjogRG8gbm90IGFwcGx5IHdvcmthcm91bmRzIGluIGNhc2UNCj4gb2YgcGFu
ZWwgcmVwbGF5DQo+IA0KPiBUaGVyZSBhcmUgc29tZSB3b3JrYXJvdW5kcyB0aGF0IGFyZSBub3Qg
YXBwbGljYWJsZSBmb3IgcGFuZWwgcmVwbGF5LiBEbyBub3QNCj4gYXBwbHkgdGhlc2UgaWYgcGFu
ZWwgcmVwbGF5IGlzIHVzZWQuDQo+IA0KPiBCc3BlYzogNjY2MjQsIDUwNDIyDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAgfCAgNSAr
KystLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8ICAzICsr
LQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICB8IDE2ICsrKysr
KysrKystLS0tLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgOSBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Yw0KPiBpbmRleCA5ODRmMTNkOGMwYzguLjUwZGQ4ZWI5MDEyZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xMjUxLDcgKzEyNTEsOCBAQCBz
dGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFuZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwNCj4gIAkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmlu
YXRpb24gZGlzYWJsZWQNCj4gIAkgKiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiAg
CSAqLw0KPiAtCWlmIChJU19ESVNQTEFZX1ZFUihpOTE1LCAxMiwgMTQpICYmIGNydGNfc3RhdGUt
Pmhhc19zZWxfdXBkYXRlKSB7DQo+ICsJaWYgKElTX0RJU1BMQVlfVkVSKGk5MTUsIDEyLCAxNCkg
JiYgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgJiYNCj4gKwkgICAgIWNydGNfc3RhdGUtPmhh
c19wYW5lbF9yZXBsYXkpIHsNCj4gIAkJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiUFNS
MiBlbmFibGVkIjsNCj4gIAkJcmV0dXJuIDA7DQo+ICAJfQ0KPiBAQCAtMTI1OSw3ICsxMjYwLDcg
QEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJLyogV2FfMTQwMTYyOTE3MTMgKi8NCj4gIAlpZiAoKElTX0RJ
U1BMQVlfVkVSKGk5MTUsIDEyLCAxMykgfHwNCj4gIAkgICAgIElTX0RJU1BMQVlfSVBfU1RFUChp
OTE1LCBJUF9WRVIoMTQsIDApLCBTVEVQX0EwLCBTVEVQX0MwKSkgJiYNCj4gLQkgICAgY3J0Y19z
dGF0ZS0+aGFzX3Bzcikgew0KPiArCSAgICBjcnRjX3N0YXRlLT5oYXNfcHNyICYmICFjcnRjX3N0
YXRlLT5oYXNfcGFuZWxfcmVwbGF5KSB7DQo+ICAJCXBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29u
ID0gIlBTUjEgZW5hYmxlZA0KPiAoV2FfMTQwMTYyOTE3MTMpIjsNCj4gIAkJcmV0dXJuIDA7DQo+
ICAJfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBp
bmRleCA1ZjZkZWNlYWY4YmEuLjBmYWYyYWZhMWMwOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gQEAgLTUzMiw3ICs1MzIsOCBAQCB2b2lkIGhz
d193cml0ZV9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJ
CQkgICAgICAgMCk7DQo+IA0KPiAgCS8qIFdhXzE0MDEzNDc1OTE3ICovDQo+IC0JaWYgKCEoSVNf
RElTUExBWV9WRVIoZGV2X3ByaXYsIDEzLCAxNCkgJiYgY3J0Y19zdGF0ZS0+aGFzX3BzciAmJg0K
PiB0eXBlID09IERQX1NEUF9WU0MpKQ0KPiArCWlmICghKElTX0RJU1BMQVlfVkVSKGRldl9wcml2
LCAxMywgMTQpICYmIGNydGNfc3RhdGUtPmhhc19wc3IgJiYNCj4gKwkgICAgICAhY3J0Y19zdGF0
ZS0+aGFzX3BhbmVsX3JlcGxheSAmJiB0eXBlID09IERQX1NEUF9WU0MpKQ0KPiAgCQl2YWwgfD0g
aHN3X2luZm9mcmFtZV9lbmFibGUodHlwZSk7DQo+IA0KPiAgCWlmICh0eXBlID09IERQX1NEUF9W
U0MpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRl
eCA4ZjIzZGY1Y2Q1YTguLmYyZWNhMGRiNDdmZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xOTU5LDEzICsxOTU5LDE1IEBAIHN0YXRpYyB2
b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCSAqIEFsbCBzdXBwb3J0ZWQgYWRscCBwYW5lbHMgaGF2ZSAxLWJhc2VkIFggZ3JhbnVs
YXJpdHksIHRoaXMNCj4gbWF5DQo+ICAJCSAqIGNhdXNlIGlzc3VlcyBpZiBub24tc3VwcG9ydGVk
IHBhbmVscyBhcmUgdXNlZC4NCj4gIAkJICovDQo+IC0JCWlmIChJU19ESVNQTEFZX0lQX1NURVAo
ZGV2X3ByaXYsIElQX1ZFUigxNCwgMCksIFNURVBfQTAsDQo+IFNURVBfQjApIHx8DQo+IC0JCSAg
ICBJU19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+ICsJCWlmICghaW50ZWxfZHAtPnBzci5wYW5l
bF9yZXBsYXlfZW5hYmxlZCAmJg0KPiArCQkgICAgKElTX0RJU1BMQVlfSVBfU1RFUChkZXZfcHJp
diwgSVBfVkVSKDE0LCAwKSwgU1RFUF9BMCwNCj4gU1RFUF9CMCkgfHwNCj4gKwkJICAgICBJU19B
TERFUkxBS0VfUChkZXZfcHJpdikpKQ0KPiAgCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0KPiBo
c3dfY2hpY2tlbl90cmFuc19yZWcoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKSwNCj4gIAkJCQkg
ICAgIDAsIEFETFBfMV9CQVNFRF9YX0dSQU5VTEFSSVRZKTsNCj4gDQo+ICAJCS8qIFdhXzE2MDEy
NjA0NDY3OmFkbHAsbXRsW2EwLGIwXSAqLw0KPiAtCQlpZiAoSVNfRElTUExBWV9JUF9TVEVQKGRl
dl9wcml2LCBJUF9WRVIoMTQsIDApLCBTVEVQX0EwLA0KPiBTVEVQX0IwKSkNCj4gKwkJaWYgKCFp
bnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkICYmDQo+ICsJCSAgICBJU19ESVNQTEFZ
X0lQX1NURVAoZGV2X3ByaXYsIElQX1ZFUigxNCwgMCksIFNURVBfQTAsDQo+IFNURVBfQjApKQ0K
PiAgCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0KPiANCj4gTVRMX0NMS0dBVEVfRElTX1RSQU5T
KGNwdV90cmFuc2NvZGVyKSwgMCwNCj4gDQo+IE1UTF9DTEtHQVRFX0RJU19UUkFOU19ETUFTQ19H
QVRJTkdfRElTKTsNCj4gQEAgLTIxNDEsNyArMjE0Myw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bz
cl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiANCj4gIAlp
ZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpIHsNCj4gIAkJLyogV2FfMTYwMTI2
MDQ0Njc6YWRscCxtdGxbYTAsYjBdICovDQo+IC0JCWlmIChJU19ESVNQTEFZX0lQX1NURVAoZGV2
X3ByaXYsIElQX1ZFUigxNCwgMCksIFNURVBfQTAsDQo+IFNURVBfQjApKQ0KPiArCQlpZiAoIWlu
dGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gKwkJICAgIElTX0RJU1BMQVlf
SVBfU1RFUChkZXZfcHJpdiwgSVBfVkVSKDE0LCAwKSwgU1RFUF9BMCwNCj4gU1RFUF9CMCkpDQo+
ICAJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsDQo+IA0KPiBNVExfQ0xLR0FURV9ESVNfVFJBTlMo
Y3B1X3RyYW5zY29kZXIpLA0KPiANCj4gTVRMX0NMS0dBVEVfRElTX1RSQU5TX0RNQVNDX0dBVElO
R19ESVMsIDApOyBAQCAtMjYyNyw4ICsyNjMwLDkNCj4gQEAgaW50IGludGVsX3BzcjJfc2VsX2Zl
dGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJZ290byBz
a2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsNCj4gDQo+ICAJLyogV2FfMTQwMTQ5NzE0OTIgKi8NCj4g
LQlpZiAoKElTX0RJU1BMQVlfSVBfU1RFUChkZXZfcHJpdiwgSVBfVkVSKDE0LCAwKSwgU1RFUF9B
MCwgU1RFUF9CMCkNCj4gfHwNCj4gLQkgICAgIElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fCBJ
U19USUdFUkxBS0UoZGV2X3ByaXYpKSAmJg0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX3BhbmVs
X3JlcGxheSAmJg0KPiArCSAgICAoKElTX0RJU1BMQVlfSVBfU1RFUChkZXZfcHJpdiwgSVBfVkVS
KDE0LCAwKSwgU1RFUF9BMCwgU1RFUF9CMCkNCj4gfHwNCj4gKwkgICAgICBJU19BTERFUkxBS0Vf
UChkZXZfcHJpdikgfHwgSVNfVElHRVJMQUtFKGRldl9wcml2KSkpICYmDQo+ICAJICAgIGNydGNf
c3RhdGUtPnNwbGl0dGVyLmVuYWJsZSkNCj4gIAkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkx
ID0gMDsNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
