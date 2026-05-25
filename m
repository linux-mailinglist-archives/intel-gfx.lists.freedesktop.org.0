Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMVHAoGuFGqWPQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:18:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA425CE40D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6449310E15E;
	Mon, 25 May 2026 20:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWZClAy5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA43110E15E;
 Mon, 25 May 2026 20:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779740285; x=1811276285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=64PsZXiaQnIdJI9zK1ihKCNoxWpJEJq88pUgQKWtWoo=;
 b=YWZClAy5Usu/7aoZ1UoPLvD2x7kVi8yjnywUZ8FatxOY9xuBfpvxwflW
 vSCzUwDUEziCDmbll9JMhQeYh9xaS3RoPT/JhhPKmu5A44Gdt9EuKMZZd
 Z1e6yihKsi2j0xfswPPJS07MuKNwj7ZPfuXjX5QF1HdpXSluw8Ze1kjNH
 AGatDT18oIA0XWTZws82C8Xdw8eYjOzQIeERhabMRS+f1hUNwiX3AAUtO
 LIvsreL5gdCmgTjpdZiWWledetPN3anbm/kola5Nl8P1w89Z9qNdz9BF1
 KMuCHvbKpMaw4IJrUeY/phQgmQopkTIkWD9kI4AdJ+7FCbDIsES7eVScL Q==;
X-CSE-ConnectionGUID: 0hcGifmhROic/RlSZN4aWw==
X-CSE-MsgGUID: xeWOb7PBRsepFn/WU1daJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="91247601"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="91247601"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:18:04 -0700
X-CSE-ConnectionGUID: btWXJlenS5Glu4Q/PaEm7g==
X-CSE-MsgGUID: rqeRcx2AT2S0YBuq0Zdklw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="235337977"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:18:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:18:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:18:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:18:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FrnIYGV3szRKVDkEndMRCxBE7w56plgfymeY5GcRKH66yZCYrmAMCAhB9s0q0Nb4Qu/ZEpceHsXRb7s/9vnWm0EbuLLFiBWjWAMav6K3bRp+xlLiAt66X+vLgkmpE/4xShvRuKmww7RewtUjX+cVK14Nap4kvUufE+WUk0Ul8h/ZAtwogPlnNSZDj2oMqjFxyAMQNXRW+1GjkyxTlOWt3becTrExPMKQ0+R9EXhCLTJLn/aWeA0vNxM6ZhYpYffFseabZs4dsooghsNp2IOzIFSUaaHE6/Cruxg4R0MX+AaMbCQWii7Cs9zxtIa8RYInPem8vExTbwf+6ZabKNprvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64PsZXiaQnIdJI9zK1ihKCNoxWpJEJq88pUgQKWtWoo=;
 b=mTVepU5JFlvSKgLlfWGmPJfdOS+JXD/iAWJouAgJ6j1vBNNAb3Qv334e+BaVm22+GmXZymPrUMBnHG7GUjUvVzsKhNFFyPIfgS8xzbue8B867ozTubb9BDTwBkY4IwKA81gD9DLM+nmIL0NrDfKbpkEbZBqG2Hw7kFEUBbvNoMCzqDtnPF9huws3Cweokx6qfY5eA4WZRwEm8RlBqkgYVkRMwIeDAPHxgsON/OctFcIltvxSyuUxuqFJ0QjNOMg5zPobCEBWMjW9JXfTm+Hmx3Ysg8yqRGoqrz45Msn+PhCbKuZgverCGkFQ/ovTQOQAyNOTvAruNdhaSgP7caufpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB7902.namprd11.prod.outlook.com (2603:10b6:8:f6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.20; Mon, 25 May 2026 20:17:59 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:17:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/10] drm/i915/bw: Fix DCLK rounding mess
Thread-Topic: [PATCH 02/10] drm/i915/bw: Fix DCLK rounding mess
Thread-Index: AQHc6iZjX8yPgtsh3kOz5zTyFPhqmLYfMtmA
Date: Mon, 25 May 2026 20:17:58 +0000
Message-ID: <c1ea70cbb91cb5db9c5b46212ffd9c7775fcb7ee.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB7902:EE_
x-ms-office365-filtering-correlation-id: 847943b6-822b-4c2b-85a2-08deba9ab6e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|18002099003|56012099003|22082099003|38070700021|11063799006|4143699003;
x-microsoft-antispam-message-info: qtLCPJ7rDAaPe9V20c4qmoEeM3aR+LzqgNBAVaEvIRQDizak2FGfJw60ZvUHA6bfwse4BL+8MH9xGoDn6CqvbNAIQftuBcQAqgBMs6fLzGvsyonZEduLo6Eyrh1JexSFAHD3RheKsg6gdsr8SPAUwgWnKrbGsKtJvgmS/ZRauHyCIOhHLlnbUgTaFwNTkFQProzYMxz/8pmLot90WcTCS5V6aQDA6JCZ4a/9Bq4Tsk4QAweTRTZdT4H+8MIQHnp/bcuqedsApD6G0eGMvWnAPjA8vQjzW/BSHLl8ITq0tl/4hmQGK1A+5x2xQe+jL+gUf7zJWFnL1CHJ5D3xkYHZ/1LqIuTBrqLpyqgjUICdFrfYvA8rKwgW7f4OAh9u4NCw4NY0zoWFAtAfsVGdjKWYwnVPh0opL5aY1rO12T7cfkE3YugQYfL/ZiBXjVnRg42dKTChQo41b0XepQ8w9+oZzb0ekrEPiS+LjOC2RsKHRcdNu8zaPHzoe6Aj80MBDr+x0E2+OlgGq2wPADklp4PRXV+uQ+Yiv0lIMDIUtvO1Z+U8HFZHEq5Q0+CcOteYJPOAiuZnwkHQR87BEl8sJzbXz8mSTOBGWZeTAlL4CN6MkYZRJ/2Fem8CwVQ3TJbpvVrpe3eivr9vJFlsQShuUDVo5KeFkK/DRtrrr235ODTtltMhKJEfF3pZ95rgXT8HUhL9HlhI9SL8OmKYPI6oo9JBOQA8Y3ykeb9ryxd2EHtAqWMdyuh+F0A1Y2qRVIQGGzZH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(18002099003)(56012099003)(22082099003)(38070700021)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFVhdllnWk9MTVhaQm5idVN4dnN4SDlOaGoxS2FGeGJISDA2M3YvKzc3SnV0?=
 =?utf-8?B?Nnc4MzVUUzVlVHFCTzF4NGJqZUhKemtpUUNXN0VmM0IvZXJFWm1rNGJMRllu?=
 =?utf-8?B?SUtRNVMvSTkxMDR1UWdkdGxFbFZLclVqMmhtdUthVUtUb1NFZzNYYkRpNFc2?=
 =?utf-8?B?U3VNUTFZU0Q3RitvTjgyZzZiL01ENk00dXBGaG43SGVZZWJ2Y0FPTjIzVVNl?=
 =?utf-8?B?OGxBUmRtYUU3QzROM3dUL3AyU1NKcTFiU2VzK3lTWW50L3JKdUg2SG1MRDhG?=
 =?utf-8?B?bHJKcWdaR0N2RGh0aVZNa1FidGN5WDltQjZjcENkdHVVNFFJL2l0N3N2RGVS?=
 =?utf-8?B?c3hVdkhqREdRTTJWdXc0Q3dlZktOckYvU2lIRkZ6UGNjTnN6eCtFZGFQQUE3?=
 =?utf-8?B?Ymw2eU5lNWJLVGY0TTRTd05KS0F2bVpsVTlMNEJhbk80eFlWa1F3QVdqaUEv?=
 =?utf-8?B?Mjg3TkpkcndRQzBBYmxJQ2xiVHRCRDIxVUxkc3grVXNjbDAzb2dRRHlHeUtv?=
 =?utf-8?B?eDZuNTBMRnRWRFZLQWVxRmIrZGo1ODlnbWZLdDNob1IydUdwZzhlYTRLTXFE?=
 =?utf-8?B?Q2dNNGRuakN4U242MWZwWHhkcTNjL3I0ZlFsbzFWNEVDOHFaMnFCWUwwdFBj?=
 =?utf-8?B?VUQvL2dEYkRDWk5oZDBKSU5jbk4zRVV4cWM3Z2V1MzVuY0FKK0MydERVNVFx?=
 =?utf-8?B?TklZNklyU214YzhabGt5QjkwM0k1V0ozeDZIOXVnbEJ5NWNVMXJwTy9IT0RF?=
 =?utf-8?B?Rlg2cmNWM2JCZ21TbjI4NWEzK3BCemxTZzkxMTFoMEhRdXgyaUV6Q0NVWVJ1?=
 =?utf-8?B?aEdIeEFCWUpIUmdoZStMUWRSdml4WENVR3MxQ0p4WUc4SU04ZVdMU0l4ZXFn?=
 =?utf-8?B?TGNPaEFwOEl1MjVOYVpuazNHQk1XRkNMb2lxWEtKZVNFUDRYay9VM2swaGxF?=
 =?utf-8?B?L2ZNU3RieHBzR1RGak9RaWdDbjkyaXpnWHNZQWtMR3hTS0NjWmFReExvemJx?=
 =?utf-8?B?emkzeG9MNmxJVUdVR2FyUUprZm5OdFJEczJWME5qcWFKNTRxWmtwaWZ1c0cw?=
 =?utf-8?B?VmhFY3ZUSkY5MGJzVkVRYzRCc1VmaVhCUEZhMVZnN1NoYzFSZEVZWWdiWm13?=
 =?utf-8?B?L0hIelIvSnNNWm5iSmRRN0NrU0xIVjFReWlndmcycWVwd0pRbXd3dHV0dlAx?=
 =?utf-8?B?ZW4wOFZUVjZBK3RDRFhUeFZid3ZWTGtnTWdDcDhVYU12dGwrYytpdXh0WDUz?=
 =?utf-8?B?bVp1dXJTVWJVMzRPbUJUQVZQM0FYVHM3S3BSSkp3VFE5NHMxRy9JR0x1Uytw?=
 =?utf-8?B?eXNDbVp1dldGb0M0MnVXMmp3dUxlQ0pUSWNiSmh3UnFoZlp5WE1nTU12QnhE?=
 =?utf-8?B?SHM2cGhMT3lUTkhpNUtyZk42Nytnd0JHZi8rZWRlVlZ1d1FlNVJKUTFXT2lC?=
 =?utf-8?B?ZjVRVEsyM3JqMFJqNUhqTGZBOHlvWWlmV3NmU3NsNld3UmZ5S0ZidUtIYkVY?=
 =?utf-8?B?MnVHNm03TlNNYzJoQ2tXNmRZeFdwOVNWcU0yK210dE1IM2ZoRXhCczJRVERO?=
 =?utf-8?B?dzlYbHUwb0RGZ0svdkhSekt0R3BYTjluRUR3T0xhd2FpRm15aHBNQnUwdEd6?=
 =?utf-8?B?VllJZmpBUFZEV2krTmJVeXBXT2FxaERZT09RdGExUE51WlNvczJ4TFk0OUZL?=
 =?utf-8?B?NTFCVTlpbVhIN1pXeUJObnQ5WGlzVlhKUGxCT2xreWliVEJmT3FoR3Jua0NU?=
 =?utf-8?B?RXl3R3k0RitBS2RqejE5RE9IaXNVVzJIaFIvaUVUSVZCRGcxTTNGVitaZUJY?=
 =?utf-8?B?WkgzMURjSkZnWFBmUjN0emhmZzFZeW1TNEVBKzV3ME8rSFVOY1VVQ1JMTDdY?=
 =?utf-8?B?NjYrc09wSklHSVZCR21wdWh6eHFTbHZiM3NudzFkcFM2VUpWaHhMT1ZITTNo?=
 =?utf-8?B?N3RaNnlkbncrY3haaHpUc0xoM0ZjSllaK2pzY3hXNGdIbjBsZWwxVmF5VDFI?=
 =?utf-8?B?amlMOFB1Nk1SYy9BZ3I4bWY4TEhaSVgxU29xVWF4WE5zM1ExV0g0dVNOR2JW?=
 =?utf-8?B?Zno3NG1lVTVxbVFYRzhyancydEVlZVlSQjZHNVMxUXJGckx5bkxDbU5mUjVy?=
 =?utf-8?B?RDEvTllqa0M5REdxcVBEeUdhS0EyajJYeUVVbmdSTm5ZdEwzTDRhdmdTWnhu?=
 =?utf-8?B?dHN5ZU1TSEFocFcrR2IwRS8xd3VSemUvOTVYL01YRjZqaytRUm5NSFR1TC9J?=
 =?utf-8?B?QXljY21DY052RzlGVU1RUnRKdm5NRXB4dXBvNmFnQXBSd3RxSkV3M2hTSVRr?=
 =?utf-8?B?czg2Q1lQa1RtSk1RSXF5YnlQSVJaY3AybkxzS0loVnQ3MlRSNTBqZnBuVjJ0?=
 =?utf-8?Q?pvCa0T47gnBRVr+lRmQtnu5R5+KNc4Ytn+31dierCA7bM?=
x-ms-exchange-antispam-messagedata-1: wwlNIYlDeiwdqLVJzmb8vrl1HoyClgLJ6MY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B26429E4F36E1B4989645FB5A94D6517@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KQ65WdE07HMD14fEymq7HkV7umx3ULpIXFEFKO2baQ9JviCK4G+1Rpg9VAELUAyVi/gl6yAi8KntClyr8YDiC2ClHSdXXKWWrikyr643Ic9V9BjR/Hz42Owtu67jhPJj/E7zAv3TV04Vf/kvQUw/g6wH4s3/j8h3Zb06PAdSHeyjjrduGIkTNG0zpNKilGCFl782EPYbFTAEPb+KOPIjOdwqXVbXJ4RBVuLpQY8f2JtOXBJwtA2xDEMmY0WfGzN9EbZip/TCzlmZhoMklEBz3wWoplJmENW6/egC2UERw1bitg5WEXU3thoowvrfNnMac6ITSK7b96L9AA/d7LiEIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 847943b6-822b-4c2b-85a2-08deba9ab6e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:17:58.8885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QUOrJraJAgTK2TW+NhUWvs7COm6FOmSyxeVBwQ5FJlWvOc2Z4dpgTT6KZ/qdXm4kZvRqQ5Usc1afFmU86fZe+BLnCWeN/gtI/WfdePb4dXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7902
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6DA425CE40D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRml4IHVwIHRoZSB0b3RhbCBtZXNzIHdoZW4gY2FsY3VsYXRpbmcgdGhlIERDTEsNCj4g
ZnJlcXVlbmN5LiBTb21lIGNvZGVwYXRocyBhcmUgdHJ5aW5nIHRvIGRvIGJvdGggRElWX1JPVU5E
X1VQKCkNCj4gYW5kIGFuIG9wZW4gY29kZWQgInJvdW5kIHRvIG5lYXJlc3QiIGF0IHRoZSBzYW1l
IHRpbWUuIFRoZQ0KPiBNVEwrIGNvZGVwYXRoIHdhcyB0aGUgb25seSBvbmUgdGhhdCB3YXMgY29y
cmVjdCAodXNpbmcNCj4gRElWX1JPVU5EX0NMT1NFU1QoKSkuDQo+IA0KPiBMZXQncyB1bmlmeSBh
bGwgb2YgdGhlbSwgYW5kIGJvcnJvdyB0aGUgYWN0dWFsICcxMDAvNicNCj4gYXBwcm9hY2ggZnJv
bSBhZGxfY2FsY19wc2ZfYncoKSBzbyB0aGF0IHdlIGdldCBldmVuIGxlc3MNCj4gcm91bmRpbmcg
ZXJyb3JzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jIHwgMjYgKysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gLS0NCj4gwqAx
IGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KDQpS
ZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQo=
