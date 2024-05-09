Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C808C122D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 17:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07A810E276;
	Thu,  9 May 2024 15:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Atzk+wcI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE85A10E276
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 15:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715269562; x=1746805562;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=D+Zgj4Mdzp5F5ajxHY6PcHJ1zYPYouOV76PFXBmQzSI=;
 b=Atzk+wcIDkpCcADhzuGAx27LjEwxDNDXyrygXvPYpJBASnpJdOOON6ep
 7ORjJXTSgxG/Lgbs8ufxzUrCm7a2BQUJEjMKSx86XMgWO/KaShU9O4D3E
 kYJYXDBD8ThjRE98thGBx+kFx9M6kBl4vzvNA083XAoNysUxIgilnMQpk
 qkXmHnegnyCTgEukoSEz/94dnaFNP7kohFFJsgoWSkhJKCK0ZTF4i0ezv
 4QZON29ev9tdi3EvF3ou3bScA6DNNXD3EfO95Q1RdFr1gnMV6K9wkChKp
 SNjhpVZ8U5JeLXv+nLpktPDpYIuGtIIFGwthw9KtgSTvhbRmQ5yP8XX7C A==;
X-CSE-ConnectionGUID: 90XWzx+RRfiEMzIJ+Lg5fg==
X-CSE-MsgGUID: HJVWRThdQ8ypYU8MdNzqkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11321546"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="11321546"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 08:46:01 -0700
X-CSE-ConnectionGUID: yQZ96stSRAqytmMvltfehA==
X-CSE-MsgGUID: siMSBj+6Qt2iCXvSzTA14Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="29222617"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 08:46:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:46:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:46:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 08:46:00 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 08:45:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAElpu+1Sv0dQdZ/y9fzNOvcG1CySqNXIh5WZc0+MIAq3oX1wmFdlR2R4ExcHyK8RmvJQ78Svj3TEOe1qDA5CDRrwoFoFcDYlxDfsxLlcXw8OKhaJaDG/Pu7Apo5dAeBRU1XVXqOJVJEyLzhSeBYWsj1Cv65JBYUyufTAFPkl8n2/UEI9akC6WfRfTLVAHufvkml6+lkgSA4Lqx9FVgq6vjWYx7FuHC7MXMQUivEUvti9dZZAKwZ5LqmrzLTcYhmLt0PcMKWdw932ZjIwrhUcecZpUjznTNLJhjV57l+HM4MDarqDIJejFXSVaM/1p3tyeLaUpWtfPtlMtPf07nsEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D+Zgj4Mdzp5F5ajxHY6PcHJ1zYPYouOV76PFXBmQzSI=;
 b=geeN1oyH+I1TAH5GQ42bBwkXkB5fdufdpGPShk90q1+r6RiYEGj3LGEvJcGaky9g0Oj2Hbpj6cJ9eO9eD3bjqWvEHN3uKqPIS8vVcgoLRv8KTYJTJuoR4KAhbEH1Kp8E+rcohBdSLtsEk62zg3crlYT9S5BHjxxQ0t3xnBtV7DtaXynakiuj02zYpoyi8+xVY+dGRPXciymjJ7HvHqpNA5lHfd7EsB7dJR4NPpAibr946JToajXtPnuwkrxgkhYItY0OOzj46mkcD+CxUzFp44K92QM8N6vLZbbJwVl8kcg9WWr8XARVx4qnSfnReNd//Rx6XXEl2c6ItfSa6CNWXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS0PR11MB7263.namprd11.prod.outlook.com (2603:10b6:8:13f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 15:45:57 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%6]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 15:45:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 11/12] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Thread-Topic: [PATCH v9 11/12] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Thread-Index: AQHanSP+GKWUYXB6zEOA7m7Sp0qjGLGPFXCg
Date: Thu, 9 May 2024 15:45:57 +0000
Message-ID: <BL1PR11MB5979452C56F80200DE254069F9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-12-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-12-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS0PR11MB7263:EE_
x-ms-office365-filtering-correlation-id: bb65c4e8-b71a-4f6e-224e-08dc703f1e43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?YmwzZmd5dkVQbm1pdElvZ2dMMW5SUmtsSW5VUUJHQVAyUURrWktsQmErd1py?=
 =?utf-8?B?SWM5aXBkbEd2WE9qaG5jaHlrM2NVZHhRMWFtR2dUckMrVEllRFl1QWRRRFdk?=
 =?utf-8?B?ZUZHNFJlOUFTdmhFV2NjWHVWcFlORmpiWmtrZW50dHVwNlVuSkl3OG5yTmQ0?=
 =?utf-8?B?eW0rUitXWno5TU1SNVM0bVFlMWZ4L2QyUi9ybDRHdDViakxnZC9FeExEa3BN?=
 =?utf-8?B?VzJnTWZHMmFlVnkzUmRQOFZOZmpqT1BxY2NwZFZ3V2M0ek05eGkvc20zbSta?=
 =?utf-8?B?STVQWk1mekhBTjhWMWd1RkNMZEdOUzlJOERMdWovSjlEajdCcWcrZlFjK0Nj?=
 =?utf-8?B?NmRyVEZhOVQ1WGdnMzFjN0dBeUpQTjBKR2d4bnQzNzVUa05vbzAzMGQzWlFI?=
 =?utf-8?B?WVJCQTd3SEJyVXh4aURpY1NESnc5QUdESlF2QjB6S0VkU2IrWUdZMGlpQm5N?=
 =?utf-8?B?bURLTldMYi9FTnRWdE9lOU1xKzE3YVpiNmRwNndpSUMza0FUNE5UOTJMTVRR?=
 =?utf-8?B?Vm9VNzM1Z0djekduUlJCZ3dmdTh2Ry9md3FJRDhtcklpTnU3MWcxUkprdnN5?=
 =?utf-8?B?YWlaa3ZVRHplMkIyanRyNUZkbitSY1NZd0RIbHFoQjNSVXZWMEVoNFlKQlJS?=
 =?utf-8?B?SDY4eSt5RlRDelpZekNuaUIya1V1ay9pS3ZFZWgxcGZzZjJMaWk0RkduVkdl?=
 =?utf-8?B?aE1BOG1KUVdkMEhzeFNybkR3ZlVuUnRwdzJDRVRIRWVSWGIvTm13dWFHRUVE?=
 =?utf-8?B?MCs0UlpkQktmcFk2M2pzc05OV0hIaEVEakJjZWx1NjROVVAyQUkwVThHdTlt?=
 =?utf-8?B?Znl1TDVuOVlBLzZ5SktsREg2Zm1HUWJKamtqV0swOTl2a2ZKZmtWNHk5aWd5?=
 =?utf-8?B?QXlvSjIvaGdqcWV2Ymp4RGQvenhOL3VaSXNlYXBXUGZ3RHNpM2tidEkzeXpE?=
 =?utf-8?B?VXBUdzgvaTFBc2FJdUpYWEV6SzJKQUNlcHBiNi9UZjVSbkErUmJqUHZyamdX?=
 =?utf-8?B?bXdndTlrYXllL2U4eTRCVnZ1Sk9BeE5nY0pPUzAzN2dzZi8yaHFJeWw4ejFr?=
 =?utf-8?B?eE5qTEtNcTB4RkV5aXdpSWhWajFOcDBBWXpMclZYb0ROOHBoZWN1cEo2M2dZ?=
 =?utf-8?B?NEcyUFhvWE1WRVgweWQrY3NFUDhSL1ZYZkJDaEROV3ROMFU0ajIyQUdKQ0pD?=
 =?utf-8?B?ZHIyWVliZGpveVE3dm9YS2M5RGU2OThWSzl0Z1ZzeTFWbC9lc0hhTkg1TDht?=
 =?utf-8?B?cnR1S3lKdVFUbW5zYmVwbGluYVV4QmlLYkQzRDU5S25adi93QnlGUDB5enNz?=
 =?utf-8?B?MEJ1R05JeEh2SEdmWGJNbmwvNGhVUkdKUFZESTRNazhYZU5GS0ovRzZXNnM3?=
 =?utf-8?B?dXdLSm5jS3pva2lMVGxieFFjNGc3cW5vU1FFOFJDZC9tUXdveHlzNnFYbEZx?=
 =?utf-8?B?SmJXZFFxejJEeWp0QkJVMGlqSWg4ajFqbHZhRjExUzQvNWpPSDNrK1krZURk?=
 =?utf-8?B?eFA0cHhlQ0Q3SmFydDFGeHBlVFJ5TWZJQ29mK2VOa3M5YVhpUEExUERiaDBM?=
 =?utf-8?B?V3c0Q0EzM3lEMXo4aUYrZUovNGlXcjBhOE1xMWNKRHp2Unh5d2JyeGJYZ1Rx?=
 =?utf-8?B?WjgxUFUwdm5nempuWEpNak5IL2NYLzRRRHVYeGZmbHpIOUppUXFOZkdxVTR3?=
 =?utf-8?B?RW5UZXFFVGFGcVNGK2ZXdzlkV1FXUjNTZjJJckNLTmUxSkh1MEozSzVVZzZU?=
 =?utf-8?B?eVh0bTBySlBiRW1iTjd1SXFVTFUzelV1SDRvSllUaUE4cm90aWJ0d0hleUsv?=
 =?utf-8?B?bUtqYUg4aXMydVN6Tm1iQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWlhcndjalA4T1QzSzRuK1lLZDhtUkRJMmtSOGFKMGVvdkthNllDendQMVJs?=
 =?utf-8?B?bExSVWN2OUVFaWpoUTRNbE9WQ1RSVUJLLzV0Rnd2Nm5ENjQxZGZhV0pzN0Fh?=
 =?utf-8?B?QWtoa2VUK0huemZLT3FOWGMreGdGQm14MmZjcnVPYUhJYnBnM20wRWRKbSs1?=
 =?utf-8?B?TnN2czN6a1NXUTA1V1B2Mjh3MUY0d0ljcGN2Qmc2WU94bjk3ZUNXZTVXK09v?=
 =?utf-8?B?cDZUNWk4QkZRTFRZenFkS2xUemZCWDl3aWN0bE5URUtBZmgzQnNzQ3lVN3lW?=
 =?utf-8?B?MXRmOGp5bHJRWWxkWmxwaitvVHlBYnJWSDJVam9uMDk0TTJqOFZlZ25obEs2?=
 =?utf-8?B?U3ptU2hmWG1VZVN4ODhteDFXZFNKZWpFZWRUTlRXdHh0Qk5UK2VTUitNVThR?=
 =?utf-8?B?b1lZZVBnY29QdEF4eE42aU9NbnVBOTF2MnJlRisvdzFoa1hmNHFZa2Y0cnB1?=
 =?utf-8?B?Q0RveWhvdVJONDhYS3ZzSFFXWTFxb3QxcGVMUUdLZDNuelVKaDcwb0ZPSUJW?=
 =?utf-8?B?SXlQaXpQVUVtVjkyL2lXWmd5SFJLU2FPNlZXbjAyV1hsc01RQkdGZHZkeTI5?=
 =?utf-8?B?bUc5bExYRHRCOGd6MTU2c2h4MlgvZ1pGdmNvcEttd044cEoyNjdNaFJOUVZO?=
 =?utf-8?B?TmE4V29DcFEvNEJUeWhNVGkvV2hCYzBTZEhkSTlETUxsK3Fhc3lIajZaekZ1?=
 =?utf-8?B?SU5wR0phUFozbnF2YkxJTy9ZUFV5aEZiMDd1OGo5MkpNa2Y3R0MwZVdoTmNC?=
 =?utf-8?B?ckhjazZlYnEvbkhMY25veEdQemhWcXpkQmd3NThucDRtaGdhWjFFSGVHNHlV?=
 =?utf-8?B?SmN5Y1R6b2hRZUY5eENoT1BwbjlPWlRUSE1vNW1mck44cmNRZ0RYRXJra1g4?=
 =?utf-8?B?bkFRVjk2NU40VisveEkrSnJxaFZPMWdBWXFDbmdHMUw1anVhWkVRd0ZnMHNV?=
 =?utf-8?B?aURGK1RISE05TXVwS0pxdWcrKzZoZW9JdUkxcFB4cnU4ekkwS3N2eVNmMGtT?=
 =?utf-8?B?MzlUOG9jTXFqUUdZaHorVVoxdnAvY1BTQ1NxYkl1aDg3WVZWTjdsMzNoYzEw?=
 =?utf-8?B?Tys2SDluTGhWMVhpQm85Q3RvVlhpRjcvOFl4L296SlYyTEZBeTBRMUJGNGN5?=
 =?utf-8?B?NWF2dVNBYmcybnp0bm9BVC8rRDgxU3dVVkZUSVFBQi9nR2JhOUM5NjBpZzhv?=
 =?utf-8?B?OEhHbFM2OWNqcUoxd20xd2htYmIxQStsb1hVem1vcGwwY2ZWSzFiU2IzS0NH?=
 =?utf-8?B?b0ljVXo1ZkZWUFRma1RjZ0xBTEF3RW1GeGQ3VGNBZXJScCtvUjlSWWJ5MUg1?=
 =?utf-8?B?djVoZDM1T2xWVkFCbkRXRVowT0d5YXFGaXhZcUkwMlI0RnZYMUFTQ0ZMK3hF?=
 =?utf-8?B?dFhhUmVPUmZqUWViZmJHbXFFZW1lNjZ6dmo0WVExK3h6a1RTcUpNaDZtSFhk?=
 =?utf-8?B?RGlvb1cwekcrSytxT0lvRlNnV2pERmZQZ3NYSUNzcmVRdnF3ZlE1MWdQVFov?=
 =?utf-8?B?K3FNK2dmL0lKK2wwSi84TFp3bU1hWFMyQVVtWDd0VWdkaHhKc0Vrd0xiVXA0?=
 =?utf-8?B?YXlnb3FBTFQvekZFWlZraTc5SWRIVWt3VEpJcWIyT3RSTlhIZmlkZG1BZGJm?=
 =?utf-8?B?RWtFSHN0ZVRQdUZ6dGFuV3ArQmtFdFFOTkUxWkJFelJiYnpYeWZPZGZqOWZH?=
 =?utf-8?B?VjVOWUhvL21WcmZqTHhkYzBuY1hHUVdrUU1lbEk4UCtlNTFPMHFSMmsvSkph?=
 =?utf-8?B?ME5CZlRCeU81dk1Xdlg4SEM3b3plZ3NxNFEzT3RCYUdMQy9tVjUrYTBwYVQ0?=
 =?utf-8?B?MERZTVNGUWFoZ21kRUgxenJPSEZiRFVNdFY2dnJTSEJFU2czNnV0aDZOaGU3?=
 =?utf-8?B?SExaUjg0TVNHL1diZncvazdhN0Y1QjBiR2haT3hDemdtUFVpN09vbXFFN0V2?=
 =?utf-8?B?L1V5N1dITi9NcXFCeXIrZ2poa25iaHg1YkVCNERoR0wyQXFVSzdzSHdEQTBL?=
 =?utf-8?B?M2JpMzkweVhNUnI4ZGxxSm9MUCtFaTdLOFp6TmdmZWIxLzZkVGVvRGI5eHYz?=
 =?utf-8?B?REV6MStWa2FhMHNaQ0pGdE5nbkxkeFRVMDVEamRwdUVaUW1CVTRlL2sydkpi?=
 =?utf-8?Q?0mVX+JmpRo7ZNqlAitouh5xYN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb65c4e8-b71a-4f6e-224e-08dc703f1e43
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 15:45:57.2105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qwYI1frS9ETmGEiBokGnmNuWiVNSt2UNw3cmIPanF1wMreI3tcY33umivNhHA2NtWD59Mha7fZPJXrijbfEJqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7263
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
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMTEvMTJd
IGRybS9pOTE1L3BzcjogU3BsaXQgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQgZm9yDQo+IHBhbmVs
IHJlcGxheQ0KPiANCj4gUGFydCBvZiBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZCBpcyB2YWxpZCBm
b3IgcGFuZWwgcmVwbGF5LiByZW5hbWUgaXQgYXMNCj4gaW50ZWxfc2VsX3VwZGF0ZV9jb25maWdf
dmFsaWQuIFNwbGl0IHBzcjIgc3BlY2lmaWMgcGFydCBhbmQgbmFtZSBpdCBhcw0KPiBpbnRlbF9w
c3IyX2NvbmZpZ192YWxpZC4NCj4gDQo+IHYzOg0KPiAgIC0gbW92ZSBlYXJseSB0cmFuc3BvcnQg
Y2hlY2sgdG8gcHNyMiBzcGVjaWZpYyBjaGVjaw0KPiAgIC0gY2hlY2sgaW50ZWxfcHNyMl9jb25m
aWdfdmFsaWQgb25seSBmb3Igbm9uLVBhbmVsIFJlcGxheSBjYXNlDQo+IHYyOg0KPiAgIC0gdXNl
IHBzcjJfZ2xvYmFsX2VuYWJsZWQgZm9yIHBhbmVsIHJlcGxheSBhcyB3ZWxsDQo+ICAgLSBnb3Rv
IHVuc3VwcG9ydGVkIGluc3RlYWQgb2YgcmV0dXJuIHdoZW4gZ2xvYmFsIGVuYWJsZWQgY2hlY2sg
ZmFpbHMNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDc2ICsrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGYyZWNhMGRiNDdm
ZC4uMjE5ODQ0OGZkYjI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTExNDIsOSArMTE0Miw2IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJf
c2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAg
CQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiANCj4gLQlpZiAocHNyMl9zdV9yZWdpb25fZXRfdmFs
aWQoaW50ZWxfZHApKQ0KPiAtCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQg
PSB0cnVlOw0KPiAtDQo+ICAJcmV0dXJuIGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRj
aCA9IHRydWU7ICB9DQo+IA0KPiBAQCAtMTUxNSwxMSArMTUxMiw2IEBAIHN0YXRpYyBib29sIGlu
dGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJ
CXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiAtCWlmICghcHNyMl9nbG9iYWxfZW5hYmxlZChp
bnRlbF9kcCkpIHsNCj4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJQU1IyIGRpc2Fi
bGVkIGJ5IGZsYWdcbiIpOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0JfQ0KPiAtDQo+ICAJLyoN
Cj4gIAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJlIGVuYWJsZWQgc2ltdWx0YW5lb3VzbHkuIElm
IGEgcmVxdWVzdGVkDQo+ICAJICogcmVzb2x1dGlvbiByZXF1aXJlcyBEU0MgdG8gYmUgZW5hYmxl
ZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8gRFNDIEBADQo+IC0xNTMyLDEyICsxNTI0LDYgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRl
bF9kcCwNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gDQo+IC0JaWYgKGNydGNfc3RhdGUt
PmNyY19lbmFibGVkKSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJ
ICAgICJQU1IyIG5vdCBlbmFibGVkIGJlY2F1c2UgaXQgd291bGQgaW5oaWJpdCBwaXBlDQo+IENS
QyBjYWxjdWxhdGlvblxuIik7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQl9DQo+IC0NCj4gIAlp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ICAJCXBzcl9tYXhfaCA9IDUxMjA7
DQo+ICAJCXBzcl9tYXhfdiA9IDMyMDA7DQo+IEBAIC0xNTg4LDMwICsxNTc0LDYwIEBAIHN0YXRp
YyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxf
ZHAsDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiAtCWlmIChIQVNfUFNSMl9TRUxf
RkVUQ0goZGV2X3ByaXYpKSB7DQo+IC0JCWlmICghaW50ZWxfcHNyMl9zZWxfZmV0Y2hfY29uZmln
X3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKSAmJg0KPiAtCQkgICAgIUhBU19QU1JfSFdfVFJB
Q0tJTkcoZGV2X3ByaXYpKSB7DQo+IC0JCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4g
LQkJCQkgICAgIlBTUjIgbm90IGVuYWJsZWQsIHNlbGVjdGl2ZSBmZXRjaCBub3QgdmFsaWQNCj4g
YW5kIG5vIEhXIHRyYWNraW5nIGF2YWlsYWJsZVxuIik7DQo+IC0JCQlyZXR1cm4gZmFsc2U7DQo+
IC0JCX0NCj4gLQl9DQo+IC0NCj4gLQlpZiAoIXBzcjJfZ3JhbnVsYXJpdHlfY2hlY2soaW50ZWxf
ZHAsIGNydGNfc3RhdGUpKSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNS
MiBub3QgZW5hYmxlZCwgU1UNCj4gZ3JhbnVsYXJpdHkgbm90IGNvbXBhdGlibGVcbiIpOw0KPiAt
CQlnb3RvIHVuc3VwcG9ydGVkOw0KPiAtCX0NCj4gLQ0KPiAgCWlmICghY3J0Y19zdGF0ZS0+ZW5h
YmxlX3BzcjJfc2VsX2ZldGNoICYmDQo+ICAJICAgIChjcnRjX2hkaXNwbGF5ID4gcHNyX21heF9o
IHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4X3YpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLA0KPiAgCQkJICAgICJQU1IyIG5vdCBlbmFibGVkLCByZXNvbHV0aW9uICVkeCVk
ID4gbWF4DQo+IHN1cHBvcnRlZCAlZHglZFxuIiwNCj4gIAkJCSAgICBjcnRjX2hkaXNwbGF5LCBj
cnRjX3ZkaXNwbGF5LA0KPiAgCQkJICAgIHBzcl9tYXhfaCwgcHNyX21heF92KTsNCj4gLQkJZ290
byB1bnN1cHBvcnRlZDsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gDQo+ICAJdGdsX2Rj
M2NvX2V4aXRsaW5lX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gKw0K
PiArCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChpbnRlbF9kcCkpDQo+ICsJCWNydGNfc3Rh
dGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCA9IHRydWU7DQo+ICsNCj4gKwlyZXR1cm4gdHJ1
ZTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wgaW50ZWxfc2VsX3VwZGF0ZV9jb25maWdfdmFs
aWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkJICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJaWYgKEhBU19QU1IyX1NFTF9G
RVRDSChkZXZfcHJpdikgJiYNCj4gKwkgICAgIWludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192
YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSkgJiYNCj4gKwkgICAgIUhBU19QU1JfSFdfVFJBQ0tJ
TkcoZGV2X3ByaXYpKSB7DQo+ICsJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkJ
ICAgICJTZWxlY3RpdmUgdXBkYXRlIG5vdCBlbmFibGVkLCBzZWxlY3RpdmUgZmV0Y2ggbm90DQo+
IHZhbGlkIGFuZCBubyBIVyB0cmFja2luZyBhdmFpbGFibGVcbiIpOw0KPiArCQlnb3RvIHVuc3Vw
cG9ydGVkOw0KPiArCX0NCj4gKw0KPiArCWlmICghcHNyMl9nbG9iYWxfZW5hYmxlZChpbnRlbF9k
cCkpIHsNCj4gKwkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJTZWxlY3RpdmUgdXBkYXRl
IGRpc2FibGVkDQo+IGJ5IGZsYWdcbiIpOw0KPiArCQlnb3RvIHVuc3VwcG9ydGVkOw0KPiArCX0N
Cj4gKw0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAmJg0KPiAhaW50ZWxf
cHNyMl9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNfc3RhdGUpKQ0KPiArCQlnb3RvIHVuc3Vw
cG9ydGVkOw0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgJiYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA8IDE0IHx8DQo+ICsJCQkJCSAgICAgIWludGVsX2RwLQ0KPiA+
cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpKQ0KPiArCQlnb3RvIHVuc3VwcG9ydGVk
Ow0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmNyY19lbmFibGVkKSB7DQo+ICsJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkJICAgICJTZWxlY3RpdmUgdXBkYXRlIG5vdCBlbmFi
bGVkIGJlY2F1c2UgaXQgd291bGQNCj4gaW5oaWJpdCBwaXBlIENSQyBjYWxjdWxhdGlvblxuIik7
DQo+ICsJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKCFwc3IyX2dyYW51
bGFyaXR5X2NoZWNrKGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KPiArCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gKwkJCSAgICAiU2VsZWN0aXZlIHVwZGF0ZSBub3QgZW5hYmxlZCwg
U1UgZ3JhbnVsYXJpdHkgbm90DQo+IGNvbXBhdGlibGVcbiIpOw0KPiArCQlnb3RvIHVuc3VwcG9y
dGVkOw0KPiArCX0NCj4gKw0KPiAgCXJldHVybiB0cnVlOw0KPiANCj4gIHVuc3VwcG9ydGVkOg0K
PiBAQCAtMTY5Myw3ICsxNzA5LDcgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3Ip
DQo+ICAJCXJldHVybjsNCj4gDQo+IC0JY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBpbnRl
bF9wc3IyX2NvbmZpZ192YWxpZChpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSk7DQo+ICsJY3J0Y19z
dGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBpbnRlbF9zZWxfdXBkYXRlX2NvbmZpZ192YWxpZChpbnRl
bF9kcCwNCj4gK2NydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfcHNyX2dldF9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
