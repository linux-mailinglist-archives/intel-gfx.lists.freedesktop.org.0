Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD07A9E929E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 12:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB04910E0CB;
	Mon,  9 Dec 2024 11:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHPz4ia5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979FC10E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 11:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733744437; x=1765280437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wJmK6x/2pDw1Z9DCI0viKyfu1wxWzQKHSyFH3vu9mv4=;
 b=dHPz4ia5e7eL2LT+Ev4/l2/A6o2ve7L1FtjhoZhevlemDqk7NwU94anu
 n/8CFCg8uoE5zj0Gqp35lwj55iFKNBsexQ935wqI4QwzPZIKy4Oy6oSu5
 RX8oyx9Ixh8+3L2p10c1T6pwB+O1YezU5DyH2aYs7Wpy3XDRUoIlotzok
 /Wy7R7MVSLroVUgM0gBekSPZfeKUzJcj/tjsRX+HhkEwLnj9y2THnu0q+
 Bw8Sgs0kqnRyXdkmHsfv3445Jg9npbuYaCWEvIDoJx6HOMBZUzpdXy+Fd
 2w7HLWW+TP8tUDTTS4BQWELg3LjMrwzDtP9yhJpwO/aythFcYT+83PCEq A==;
X-CSE-ConnectionGUID: /f8FddWXSamRRIcsiIX/gA==
X-CSE-MsgGUID: tVgl+PShSRGppJ+2W+b1kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="33374571"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33374571"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 03:40:37 -0800
X-CSE-ConnectionGUID: qNYFHs0+SSuU+4stDYBHjQ==
X-CSE-MsgGUID: B8mQBaxASm25JNKeyHN39w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="118287002"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 03:40:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 03:40:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 03:40:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 03:40:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ukfyeOfmBOtAKxOuU9yGvzY1n4K/dQJJygIpWV4MNJmyEwFl/ri4Dt5YXswKWQHiUIZIBwhmpc7EbG1Cuy/swORA7Uh0bdiJRxCHbOCvFOWwFsk5BzxRjIKnRRM+zVY5DlBEfXY3KRzH0WbckiJjF/C2+nqTQGufrlHfCibDtbJoooUeBVdwm4Ovyfg2FB3wDgaqC2dl9F9mIJomYdeIj1u+uC4nYCIWnfxkIPRMt0uPoSoO7J3uVUTLZ002E/aaIL2yW2Er8LwSn50/36RedZ9GPrO8QKCfOxvQ0rS9kGmFP/86kGZcn1hCVZYjWA0Su1wd9akfTGeZ+baVntiYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJmK6x/2pDw1Z9DCI0viKyfu1wxWzQKHSyFH3vu9mv4=;
 b=BkWso1EoKk/NS9fpbFx9nUn/gI/1p8MqGBh9FGPzjiuav+s33rErpG3yJPdARWYez7Gz1IHxBx45HFqYQUqseoSEzh/hdBRFFCvrTmMYcRJLGZ69XwoMrEsSN6pisTYOCDAvhyAXjvn+RtCfUzxHU6JnPN1IR7f2Yt5JDd9k5Vc+9hmKbWDSk+xlghpTBQ8Fdzb6mgCTsjVxXYYuH+uTcFiBJGsmVJvKALwDO980HcXM07qOpcqT/aunXoyR3kCMykjoTLVm6lXN1HOVGdbnxd1sEBmx7p6Y7Q6fQhzDFmwu5qbVkrzhWgem5DouEuJqv5SGqkNWcKrfqprZqBLdZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.17; Mon, 9 Dec
 2024 11:40:33 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8207.017; Mon, 9 Dec 2024
 11:40:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v2 0/2] LOBF enablement fix
Thread-Topic: [PATCH v2 0/2] LOBF enablement fix
Thread-Index: AQHbRjaORHne3ts68UOaDROgAtYF+bLdoIAAgAAw51A=
Date: Mon, 9 Dec 2024 11:40:33 +0000
Message-ID: <BL1PR11MB5979187660B0EAFD326371CDF93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <e05ae59d8641a94465f891930a59039acfa6b7c8.camel@intel.com>
In-Reply-To: <e05ae59d8641a94465f891930a59039acfa6b7c8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SJ0PR11MB4830:EE_
x-ms-office365-filtering-correlation-id: 2811f722-92db-4fc1-d723-08dd18464aa4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YUYzVWZlZ0pkSlpOeldaTVlGdnpkQUtvbzlJVkNFdEhhUXVpcExpdFgwbHJW?=
 =?utf-8?B?ZmROQjFDK0w3UlUzemhva2FWczFCRStEdjBzOU5oTTNqVlplRzlRZDVrcUUz?=
 =?utf-8?B?V3hUMGFHUlVDQVJKQlpDQ0s2R093N2dwdTBMa3lLN0hFZ09HK0poRUxYZDVx?=
 =?utf-8?B?b1I5Wi9kNHZGSzRzV0o4eU5WZDNucmFvWnVBN0dyRUo4ZjI3Lyt4YnhGdkw0?=
 =?utf-8?B?aDZiK0JMeU5ObU1yV2NLQkdxUWtOUTlCV2g2TWI3c05GNDVHbEtPbEk2M0U0?=
 =?utf-8?B?d2pvc3RvRll5ZmZFMFBBK3lZcHpXWGlPR243RXprTk9sOXNJREpqQmgrUUJE?=
 =?utf-8?B?aEFxZmhzSDZEcktxQWZUaHZ6T0NQTmpUdTFkNVFLN1BIbGN0L1hGVk51RzdP?=
 =?utf-8?B?TXhUSWhUSDJXWG1FbkNhenBoTDBSQ0hCbmdJbUVqWVhZSWIxQlJUSFdqSHIw?=
 =?utf-8?B?S01uKzB6SlZWT3Z4UXIwcEhZZUljYVB6aEtRV0NINUpsVXpKQUZqcVBWWXdC?=
 =?utf-8?B?OTdtMjloUjMxWHhkbk8xTk5HTC83SDkxTVkrQlBkUmtaeVU3OEUrcnRiY0hj?=
 =?utf-8?B?QkJzTkVoc1N2ZjM0YzZWdWdiYTg4WjIxeFBmV1prejZuVzh1RndUYXUvUUVw?=
 =?utf-8?B?bGorVGNYWS9zUFlDRmVZSk0rVStBbUJ3dHE1M1FycERkUkhpdXdMRTZxK0pI?=
 =?utf-8?B?RU5RTTZKRVVKNjZzejBVeER1b3lQNmRvbGxSQjI5WnhSVXc5VGxSSzZrcm1J?=
 =?utf-8?B?YTl0OHROc0RqQ3VDMHY4Uk9WNHJkY1N1cnRELzh3Rm5tZjNBSHZJSkpCeXZG?=
 =?utf-8?B?ek4wbkxhU1JaUlE2a1ZmSUlxeWtDdXNkWG90MlhPVnpPakZnU0ttdm9EV0l5?=
 =?utf-8?B?eDArckVtRUp0TmRzQi9BUEh2TjJLREF4Qy9oWk5zRmRsb2RMYUdTSEovSTRC?=
 =?utf-8?B?Sjh5aVNFQjZoZGI1WDF6U05jVGF6dkhqYjBEZFphTS9CSHRRWklUR3RlbWdk?=
 =?utf-8?B?eVAyTS93VFFjYVBpUkJ2TitUMjF4NzhNN210V2ZNdll0V25tbndKK0JQa3dx?=
 =?utf-8?B?R3l6dFRUNEM1cXQraWdROGJmUitSdWVJZjRFVzV6K2dsczJxblFESlFkSm4y?=
 =?utf-8?B?Ny9aVitZdTZUeWc4N3dPVXdtL3kxV2VFU0YzWWs0REN4N25SOG1YVE91U3Vr?=
 =?utf-8?B?aXRuSktDZ3J6ZGZkM2RwUmE3Yk9VWTFrVkFsZGsxaW5mK0RjdFN1RExjOWxu?=
 =?utf-8?B?WmhQNE9CbzJ2aEFicmVBalFhWUd3eTdxTldLcmthRjdYUnVRMVVIUEh5MzdS?=
 =?utf-8?B?ZTZlQUZkNlRTZG9XbGpMNE5jQnRVSkRiNmFKaUw2V3R2b08vZWtEMlJkTTJE?=
 =?utf-8?B?aXpWRkJyYk51SGJCeXYyUzIrVGxCN1lPbkZOVmlKWUxxRk11cU1TS0hNSFNG?=
 =?utf-8?B?UXVVM1VqMGZMdldENlhnUmd4dmZMYzR6U1JEdkFBMkdlNEVhOGtEOElMOHZq?=
 =?utf-8?B?cVNJckNjVEFPc2lJOWo3aDFDVUU3Mi9OR0pCMUhVWTRhdlJhTmEzVmRzUENU?=
 =?utf-8?B?T1dtODN1TXVXNGxjWitNR2FZUHFPais5TnFYSUJ4REc2RDZVWXJPWWNDYjNq?=
 =?utf-8?B?VUlWZHR6cjNYVnZkMFcrSWhzQ0I2eStvbWJla0JxNExQMGswYlNSQ0pSZWsw?=
 =?utf-8?B?bHBwSE9ZeC9ZTEhyaHpwZmFzcTl4ZVBGS3BpRVZDaFIwQ0orRnUxeUtNTnlw?=
 =?utf-8?B?NGVNTW5SNS94V2ZIOGhNNE1aSVF2S1dIS3Q0a2JNckhsOXh6M250SVVKd3dp?=
 =?utf-8?B?SWU2bWc4aDdJOW9jUm5OREx6ZEdxNjFWMHE0cTB4OGtkeUR6MFBxa3dSTml6?=
 =?utf-8?B?TFVvSWYySHJsSlJ6ai8xY29NSjd0bE4xZFR2d3pzekdLVXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NklBbjVLa1hZbS9hQXBTTmxTUkUwdXl3Y2d2cnVCMDN5TCtYdzYzOHV5ZTNo?=
 =?utf-8?B?RkkzcU1xTVJ0czdRdmVGVldWMjdwaDRyYkZqditHcDhIRis0cmRmUlQwTjJL?=
 =?utf-8?B?cWhmSjBFRFJsZk5nVXVQQ0Zjb0hTY0Uwc1VRNVRSMjhZaDN0ellmVTBRNTdy?=
 =?utf-8?B?RGlBVWZDOG12LytMZ0t6c3lRREZRQVN3OG05b1lxWXEybE9wTmRBWFVhclpU?=
 =?utf-8?B?NVVYVGkvTjlyZ0Y3K0lUbHlrcURPdVFQczN0bGlmYWRHTm5hZkM0VmxTUXAz?=
 =?utf-8?B?emFnb1AxNEtuK0dHV2V4bFBHWGozZWJZdFEwbTJoUk1Ed1gvcGxkYnVrbkdY?=
 =?utf-8?B?dVVCWUZyN0J4TjRQZG90V0hoOVNEVWhjNCs4TWtNbU04OGtKOUJvZUdjRkdJ?=
 =?utf-8?B?QUh5bEpGQVFvOE9aSGU1Z2Vkc0h6U3BqSEdKVy9YK3pOSWdOcXhHN1JsaFhR?=
 =?utf-8?B?em1WQkk2dHF6Z2tRaCs5R3VRY0xDWVVOYWdzS0E2cHZtL0UwN2h1MDA1VlBs?=
 =?utf-8?B?ODFxT2VnTVpERWR2OWsvZTFoaGkzdTVKZ1lUMTU2aUhnZ2ZvU0tQK0pySkt6?=
 =?utf-8?B?T3dkU1JCY3llclNGamRiL21FTWtoWG1xeXVteGVQQWlnOXI2bnZmUjdPSStP?=
 =?utf-8?B?bUVmWDNYSDBOYjE5MDNGRmNKMFB2UktvQ284OVkwTHd0ck1xcW9Qb0RGeWNh?=
 =?utf-8?B?UXJOOWNUb1ZVUUFxVFVuczFMTXRhTUdzMjFuUTc2RGRsTHMwL3FRL0tLRldZ?=
 =?utf-8?B?OUgvK1RJblh2VDB0ZWZOUjkyRjFZdTdlcE5adXhpYlZpbmdoMzdnMUQ1VGpP?=
 =?utf-8?B?MC9YQkpONGh4R3E0UkpZaVRDbGs5SzBKQ3E4dHJidHZXYVVmNUFQZ0NzSHN0?=
 =?utf-8?B?ZjNzQXJwQlVsNng2Ni9EMlowRndsUzRKL0ppR1IzRmV0am5uNVVETjBFdzg1?=
 =?utf-8?B?ajEvVnA5eU5SWGROUnh6SDdGemsxcUJaMHNaZUp2bzg3cVNBTW84TFJwakxo?=
 =?utf-8?B?SklnbW43K28zMjJNbHlHUFRsM09wN3B4N2JpOTJUVm9QajlXVkd3MmlMTGxB?=
 =?utf-8?B?RXV1NHkxaFBtUC9QUlVXSTNmZUdsZU9TRlR1YzZCMUU2RXBKaVdjRis2bTAz?=
 =?utf-8?B?aE5LcXA4VFpPTXo3SGhMQVZVYlZtcERMejNJUUk0Y2FEM3hCQUdsTGlXeis1?=
 =?utf-8?B?dlhTTEVGc2hTSW1UZGs3QjNEaWJsMUNSUlY0Q0w0V21hNU5SU29GajN3aDZj?=
 =?utf-8?B?dW1QZEU0S1ExQlFwR1BYSWJMaGZDcFExUFYyUnJCZ0FNRHNuMmlXNWh3M2Vj?=
 =?utf-8?B?R2NDc0lQcjd0NG1HaVBPQkF6VTluZCs5VUdiSTlGOHFBS2FocGR2SDZQUysw?=
 =?utf-8?B?Q3ZOeTdsSnYxZmt2aDlyYkF3amdjbVc3K1Zsb3FHQXBVclpkVWpFT1lxd0dC?=
 =?utf-8?B?dXQ0dXVUVk1tM3IxRVV6WlRadFFTT3FSTU5jYlM5ZXFRS3ZnZnh5WTZEalBz?=
 =?utf-8?B?UU9PdjNtZUZKcXRjSEFaOUg1ekVYdHpKUWl3Wms4ZXUyOWwraUdjYmhrQWhD?=
 =?utf-8?B?M1VxOEJubXhkNDVoNjNSaEY4bkhwVmFiRm82RGlhbWxKK091NnhBYVVMV1ZQ?=
 =?utf-8?B?NDFnNDVOZUc0V3JMbEErN3h0aldZM29iTCt5TU12U242RDV6QVR1bUQyTFBt?=
 =?utf-8?B?U1I3eittT3RyTnBhYzU4UUxhd29JUTdqK1Y0cXd0WEJoQnpleDR5ODZYNmUw?=
 =?utf-8?B?UWMrN0lqalI2YTBYWmV1L25xS25ZZ1NwR1E3UlA3MXRMNGFSWDRzMGRwSFcv?=
 =?utf-8?B?NWh2UlVqcG0zRmlHNGx5L2VLc09UVk95L2RaOGJoRGt0UkdLOUhicWVDcVRO?=
 =?utf-8?B?ZVg3clNmdEx6NGdzRmpGMERNOUUzVG5OYVlnWklVeDhYNVI4RFZzb3RnV0FE?=
 =?utf-8?B?MlROM2lZMkw1S2JnYmdzUi9ScnlpeDVKQlJpcCtZUExYYVMrTWJPUVZMaU9Q?=
 =?utf-8?B?a3UvdFJLaUZKcTR0cWxyOVQxaDI5L01ZQ0hmNjhZaWhWdS9ReFdqay9PMXlI?=
 =?utf-8?B?cHR3M3lmckw2QTFldElLK3ZOWUU2dmdZdnNIWUw5NmhWMms2T2thTnhXb1RB?=
 =?utf-8?Q?GfFTaHnBHRdu/qsjp46y5z2cc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2811f722-92db-4fc1-d723-08dd18464aa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 11:40:33.5549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s3P3uXjfb4J21odNybDRQyrjY8rQn7SzvVi5BPtqKgYLwInf+cyzkAbMJnW8Imzjqhxln9S1z5vVRVvDdhGwLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgOSwg
MjAyNCAyOjE0IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBK
YW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwLzJdIExPQkYgZW5hYmxlbWVudCBmaXgNCj4g
DQo+IEdlbmVyaWMgY29tbWVudHMgb24gdGhlc2UgcGF0Y2hlcy4NCj4gDQo+IFRoZXNlIGFyZSBl
bmFibGluZyBMT0JGIGlmIGl0J3MgcG9zc2libGUuIFBvc3NpYmxlIGVycm9ycyBhcmUgbm90IHRh
a2VuIGludG8NCj4gYWNjb3VudC4gSSB0aGluayBEUF9BTFBNX0xPQ0tfVElNRU9VVF9FUlJPUiBz
aG91bGQgYmUgdGFrZW4gaW50bw0KPiBhY2NvdW50IGluIExPQkYgYXMgd2VsbDogU2VlDQo+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6cHNyX2FscG1fY2hlY2suDQoN
ClN1cmUsIHdpbGwgYWRkIGNoZWNrcyBmb3IgTE9CRiBhcyB3ZWxsLg0KDQo+IA0KPiBZb3UgbWln
aHQgYWxzbyB3YW50IHRvIGFkZCBzb21lIGRlYnVnIGludGVyZmFjZSB0byBkaXNhYmxlIGxvYmYu
IEkgY2FuDQo+IGltYWdpbmUgdGhpcyBiZWluZyBmZWF0dXJlIG5vdCB3b3JraW5nIG9uIGFsbCBz
ZXR1cHMgd2hlcmUgcG9zc2libGUgb24gZmlyc3QNCj4gdHJ5LiBEZWJ1Z2dpbmcvYmlzZWN0aW5n
IHdvdWxkIGJlIG11Y2ggZWFzaWVyIGlmIHlvdSBoYXZlIHN1Y2ggaW50ZXJmYWNlLg0KDQpHb3Qg
aXQsIHdpbGwgdHJ5IHRvIGFkZC4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+
IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IE9uIFdlZCwgMjAyNC0xMi0wNCBhdCAxNTozMyAr
MDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPg0KPiA+IEFuaW1lc2ggTWFubmEgKDIp
Og0KPiA+IMKgIGRybS9pOTE1L2xvYmY6IEFkZCBsb2JmIGVuYWJsZW1lbnQgaW4gcG9zdCBwbGFu
ZSB1cGRhdGUNCj4gPiDCoCBkcm0vaTkxNS9sb2JmOiBBZGQgZGVidWcgcHJpbnQgZm9yIExPQkYN
Cj4gPg0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKg
wqAgfCAyOQ0KPiA+ICsrKysrKysrKysrKysrKysrKystDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoCB8wqAgNCArKysNCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHzCoCAzICsrDQo+ID4gwqAzIGZp
bGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KDQo=
