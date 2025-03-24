Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBBDA6D5CF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2684C10E222;
	Mon, 24 Mar 2025 08:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mTa171mX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E6E10E21E;
 Mon, 24 Mar 2025 08:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803564; x=1774339564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mowq7nPDOXWpeQOAo4kG1tC94seT+OrNrVhhbhuKjbQ=;
 b=mTa171mXHSW4uIHPMzUzK5VkkVwUnnDmmMlZRQq7EOoQ1at+fb6Oc/ra
 OVJGrjFtgvcM0x7JN5mXsbkq11CiZCooRp7CK5lH+VfBTNvjXdLzSSXeH
 AqQHMANqvFBg4Wkj42aZxd/OYzS7+UzZVGx12khPjUy9Y0WFDFZBMOGaP
 AAeHBUMY0Vogx/6Z/oNcV6D7nmo4pm5XUq/IPjBaxhvhtHpFalQV/uk6O
 YhS5IH9QxOZ1gaQgGqhqn6ZgZxSVZPryWxFeCp4IcDWwfNiCVBwu44OrH
 3l5iUcEBqjMvFjECaaMU3VWYb1TK4TY2AzXgnK261MZ+ee98sJ/kge3/I Q==;
X-CSE-ConnectionGUID: eMIeHKxKR4C3Nt4Qj6Cehw==
X-CSE-MsgGUID: 9ArLAIJzT46xwd85KWxHeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="43882326"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="43882326"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:06:04 -0700
X-CSE-ConnectionGUID: 7kchRn6rRo+YM6OfUi5u7g==
X-CSE-MsgGUID: SyzS7VNUSRC24PAtLfhlCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124927148"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:06:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 01:06:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:06:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:06:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KBWeNJ3WSGeDJrgO8xzz4IjeC49IHa1Fga0TEf5WmjxiYQNC2K3QFWfVCXd0wcLEE84CIAleijtfTy3Lsxmi1miDO7F5nBBa4MEQU6yKMDtpJLVI3rkJViNnbVksNO70rk3TJMv/UwYLhWnWT5wgFj3QcnYditVYL7P1RoVuLtug+GwC/JsAp/wZxRnaHXnFmZp1i5qWbzMhbSkUHlnOZ4lrnbZr78HBX5rRHKQZ6DOq/SFVPtDYAPvDICEg3PvptVyXLlywbnsXJ7kExRoH3Tc0PEX76bbo5wEdoOcOem275e0fIOUFWZfhVpt45wzrSrZK/W00yuELPS1kfWt9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mowq7nPDOXWpeQOAo4kG1tC94seT+OrNrVhhbhuKjbQ=;
 b=BNXY4Z9sMNkEcw/IYJXeeujmmnqxi8NTB5Tcq/9ApVapaUbp6m+JaAybDyeUb/Wphi2Uasrtk3wOO5eNxTx2TZ+YDK7gAcuxIg1B0XAeTGS5hkfT7eW5loNgZmJE0Bp//WdCoPrfA2Si5cG6VMElHi5+iT1MhvN/863yAfAwVMQOrmCFNwEeUzwCIrDV2SBk/kiMtv3k+MbLeH+BhrkjJNFIRtsxjVL90tDaFGP9aeUwkBYoTHCVo2Lt4O6Rx4wO5xfJbJW/UYjvzOV1f4cTZr7LpHS3bmiGt9mBuMMB5Y53U4U/uIHHSiG+3+BMjPmBGFSUiaV24sGCwYY6DV4TAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:05:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 08:05:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbmQZnNs76utJ0xEyc4mL6OI3lt7OB9QgA
Date: Mon, 24 Mar 2025 08:05:46 +0000
Message-ID: <f5092028624c49bb3aa710b86b95ed890b944091.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-5-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6802:EE_
x-ms-office365-filtering-correlation-id: 006293a8-949b-4b1f-f616-08dd6aaaae9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TUV3VGZTZm1yMDRFNEozeWN5VXdGeDMraWVLcGE2L0F3bEV6UXRGU0l4TFRI?=
 =?utf-8?B?dlo1MW45MEZXU0tiN2l3N2tNOWtIVEpxcENQZHcxbUFLRko1ejZTMW4yT3Bi?=
 =?utf-8?B?QWtvYXZnRVZrek83VExna1FFUEUvT1NONjJiMlVZVkFnQkIwaE5JZ1ZDOS9t?=
 =?utf-8?B?MmgvSmI4eDZiYS9uWmJoRDNRUGE4dElHaXdQZ20zd0N4d3NSN2k5djRiWDg0?=
 =?utf-8?B?UDV2eCs4RnNiWWt1VHhPMDFXTE5jNWhpMTQ1N3VPeWM2SE5kN3RBUjlIdmpn?=
 =?utf-8?B?ZVp2VVZQalJ5ZFZFejZzb3orbCtLV0dmMnB1QzludHJKZzQva0pnc3JCSWpj?=
 =?utf-8?B?RFREVENpZmFFbWI4aDMyK0VYTjRHemgzZzJMaHVmTFVCa0hkWUlWdkJlK2ts?=
 =?utf-8?B?S1lxK2t6M3dnWW5xSnMxSDFPRHhFVWw2UVNHQTZudWlUa0l1cW9GQ1BrUE11?=
 =?utf-8?B?WVIvR04wMzRrRklVenR4MSt1ekhHNGIzTTlJZ0lETTRBU3hnT2F6Tmh3RmJn?=
 =?utf-8?B?djJkRUtKVGVuQlg0Y2M5Q2xSTTZ6cnROUDArNGIvNXNCejdhMkVsLzh3R3Er?=
 =?utf-8?B?eVNlVkFaS0xic1BWbFpZWXpkTThDVEhBVC9QcXlyc1dQWUk0K0x4MU5oM0pS?=
 =?utf-8?B?Q1NGUDFweDVsNnBZRDQwbURXZUxUR3BVcDZuTVI5a2s3MnppM0oyaktOQUEv?=
 =?utf-8?B?R0ZoOHppRC9lZy9CeHVRRTlkdXhzVHVBK0NxaUh6d1dXTkxHcXFSMGZIL0JC?=
 =?utf-8?B?R083UEpjNTNKVGFwMFNmaE5vVWZLeGU3aGJSNjBld0VvVzBxUXJlZ3dOMDRM?=
 =?utf-8?B?KzdBVXMrTklvbHVuem1QcHdtWUJHTG1tTERHNmFBSzJKU0s5Ujd3UWVyM3Fp?=
 =?utf-8?B?NFkvS3ErQW9Gd2NvTXFnT0c3WkhBRURzK0JhTm4zR05ZNEp0WEFFbmM4T3Z4?=
 =?utf-8?B?OHdNYitXeTV4T2k4Q1NZMEp3SFBESEZLQUJZeVQvb01ZSFBVbkNvYUVheVVs?=
 =?utf-8?B?b1Zoc2tBVHFVVVRLWHo4b2lvWllwRDRPYnZtWjBwdmt1ek0yazdkRGpaZ2Yv?=
 =?utf-8?B?dEM2S1plVnVtVXROY0RtUVMybTJNTnNKN3ZtbUJSQUxFelZkYm5oN0t5cFFZ?=
 =?utf-8?B?MEhjd3dqcGpVczQvVEU0QzM3aTV4Y2k2enhXY3pZM2VJTjl2SCtMbitwT2M1?=
 =?utf-8?B?QUI4c1FsRzQ4THExUUtRSk0xYkpvaUF5a2R2UGh6Z3hvd3cxM2xPTzBSemxH?=
 =?utf-8?B?WFVHZTJkK3BOM3BGcXo3M1kramlRS2R6WGVsU1c3b2gwb0lPckVqaDdXWkdx?=
 =?utf-8?B?bzZBWlpZVU1mQ2lvcldjZHpqbUZ0MFFGbFZIL0hTSGdjNTRQbTl6c1hMNUx0?=
 =?utf-8?B?cmFWVU9qcFdrcFRLcFMySDRLVEVqODk5VnlFNmtzOVFNSFRaSjl1Q21ndlFR?=
 =?utf-8?B?U1k0emlWNGxhU2lNU3o4TmcydEY5N2lTWm9kMHFCdWpZbzNOT05RYkw5SnVq?=
 =?utf-8?B?RzJhS25VYmljWVlBdjYwYTVSNXlIdlgwUnB0dFFNaVhvYnA2RjQ3MnFaa2hy?=
 =?utf-8?B?TktuU0NDNWFvTzFzVEJPVGdVeDVvUXArN3VKZkxZYjFKeFEvdTFydHE3Tld6?=
 =?utf-8?B?Y2NPWlJ0Z1JzN1VnaHM3TFdzb1Y5TTIvcHdrMGdzcDJjWFZHdy9yM21TSEdo?=
 =?utf-8?B?dWJaUEtVb0xuZ0lqbEJHcTJvWmRsLzRycHZNOWErMEwraVFYYWNVSHc0YzEw?=
 =?utf-8?B?TTVGM1RIYmkrNnpHVEtxSUp1WFZqemdrV3BVblpJcVJTeWJ3Tm9QYlk0akoy?=
 =?utf-8?B?d2hHSWRINWdJanVOcWVuSkM3SjZyNHFUdFY2YzBtWDZwZ05pZmdrMW9ucDBW?=
 =?utf-8?B?ZEF3RzJjNWUyN0x4Z1Z3Q2hkU0dYMjRVd1dOVFVBeHRKWG44ZFpSaXlaenNK?=
 =?utf-8?Q?zRcbslKWWQwNzjqGlkGomKR3pK1lNdmr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MThyZTJDL0J1aEZkLzlzUUNyUGRMZ2dSb0tiS2hFVi9VenRIM1crYVdKRzdN?=
 =?utf-8?B?U3NKNVBDOFFaZS9qVEUyS2R5QVJFcklWSUR6b3RqZUl4SFVSZ0tKaHR2elBZ?=
 =?utf-8?B?ZG5sc2hZT0xaYUhUYkl5WU1VckNESStMR3pmK0Uyc2t1RFJBeHpObUpHdDFM?=
 =?utf-8?B?QjAwb1FvVHB2OVZITTExd0VqZHZkMXlkSjZwN2ZNSjRVWjJPLzlqT3VUVk1D?=
 =?utf-8?B?SzJ0dTQyUWg2c04yaFNEeFBnMk5Kb2ZWUGswbVVuVmR0Tm1MbmFxekVQYTA0?=
 =?utf-8?B?b3k1MHhJbVdOUXlrZ2FpK3hUQUx3V29yOFMxMGJST2hVRHU1R3NWOHcramNO?=
 =?utf-8?B?TnZzWkZMdHlSVUx3VCsvSW9RZTEwNlpvdEdWb25GVW9GQzd3RjhPdDVMdUxp?=
 =?utf-8?B?UlJPV0FsaWZBWlZoRmtsdFY4N2xPNzRWYWNRUGQyejZwdnZuZm9aSis5QnF1?=
 =?utf-8?B?MDJ1NkRuSGh0eW5DSFlCdDdmNDZqY2NxOUZYRXFiMXo1KzFnMFdERDYvajJM?=
 =?utf-8?B?cU01ZXZiT2U1UTRKK2ZvMXJQbGxrS1V5SE41SmUzUXZOeE9reUpwN1kyR2Yr?=
 =?utf-8?B?cDQ1TTljWU1BUGV1SGFzdGhYdjFReWN0cUpOUnl5S3pGcTRMZm9Ib2ovdWdB?=
 =?utf-8?B?ekllazhaYTIwVVNDTktXdk1EZU9PQUNuRW5uMS9rNTdRa0xBSHhxOW1HaHY3?=
 =?utf-8?B?QU9PR25oQ0pBR3ZDclRFSmZCYkNDRFhYUFpPV1R5WGFKQVFuS09HTWRtdzd6?=
 =?utf-8?B?Yk50VjIrWHFoTWxLRVREQ2ZSRS9JUUViL2FQbXZhN3hDNmc0VjZsNVpFM1lo?=
 =?utf-8?B?dGgxMjFDOEdKVDdUQ0x3cWI3cFJrcHhGNGhqL0dKWmYwMGIxS1RBSzNBNDIz?=
 =?utf-8?B?M1psZ2J1c3o5L2todnp5OGVhNjdpeVFlaUVWUThCVlQwNjF4NXZ6bmNvYlUv?=
 =?utf-8?B?NUV4Umt4Y0pNeCtvMmRoOSsxcmlkY1NuaXFScWVMNXp2VFVIZWYxS0xlOTg0?=
 =?utf-8?B?eG9yQ0JSWEIxWU9OR0dvQWNFRi9WMUhRMFNocHdocjlFWmRweWc0azVKbWN5?=
 =?utf-8?B?NUJuU1htU2pDT1d2cjNjaUJPL0Y3dkIzVmZ6akh0dWUxanFUc2l6TDRXeE9h?=
 =?utf-8?B?Y0R6alYzenpWdGRjL1hLdjNvZWhKc0JXOHFvaDhXRjVqNHVadldHSjgrNVF1?=
 =?utf-8?B?NkZ5N29ISURncWlORXBGZ2l2azlMcHZFeEpOWisrNmRZdTVUZkFrZFVpTmUy?=
 =?utf-8?B?LzMrSml5eXNIWTI0cXliNjlXRnVjcGdiUUIzVnppR3pqWmJBVzBGdTRieWdp?=
 =?utf-8?B?SWY1OTl4R1JTK2ZWVVdRKzlwa3lpeEZwSFQ4dy9Bc1ZoSFVrcWpaSHhYdUQv?=
 =?utf-8?B?Umt0dlQ1SnYwRzJEQjErWG1FRUFySWhNUzVpUVRIa3p4SUtBMkl4eWRRTitS?=
 =?utf-8?B?T2w4MjVwVFlpZGNBa2c1OGpiRjRqZWVjRFJpSnh1SkVDRGJZVXlhZG5pTzdC?=
 =?utf-8?B?d1AxbSt5K3BiNVcrN1puNkJ4R2RIOURnd2VsL3N0MXBwUS83NGFtV05Db05t?=
 =?utf-8?B?L0V1L3VsUmU0RlYrVmtaVG9BdGNEaVBwQUE2RFJiQ0xQb2hLVC9Va3p5d0Vn?=
 =?utf-8?B?aHBkYTZTaS9GNEFYOFRWQXhaV2Y2bDJnOERjWXc1eHVtSnFSSlNIbFplblF4?=
 =?utf-8?B?WTFMNVM4TUxLWDR1b0xIOWZMOTh2dVhrVWZiSnZKd1hkRmx1VjNKU0FLdHdq?=
 =?utf-8?B?bWVCeFR0RlJNNUVpRXRHOHcvSVpuK2YrZWFtdHNRaUU2K1d6UFFYejZTdnVq?=
 =?utf-8?B?Y25RdjVSU1FVaU1BY1BoM2NSaVpHdzE1aWRabjQ3K3JIZFp3Z09hTGRURm55?=
 =?utf-8?B?MGtvQVBUMkhoZlppZDBSWU9jYmliU2g2cnd4WTVMZUhEWWE1VnM4bWx6Vm55?=
 =?utf-8?B?ZHpWSzVHOGphc0xCSkZadEJrK3B5dy9TWTdoQnNlejdnTlNDU2FNNVZ5Vk9h?=
 =?utf-8?B?WFhoZ0d3UjE4eFMvS2lmaWhRcXJRR3NQZldiYVRzK2NQUFUzSHZVY2s2bW1i?=
 =?utf-8?B?WHVSelpuYkN2blIweDI0OFJRcmxRUmRnb0ZPVWc4eFI1Q3o3NEh6NUMvaFJG?=
 =?utf-8?B?QVluZ3AxMnRyeXlwOHVVckgxeWc1TGo2OUppZzhOQ2UxQjNGbWpBS1c5UTlC?=
 =?utf-8?B?TjVzNUhJOVQzTjlnRkNFbHE1aStLazg2ZFhZamxxRk9EUGZtOVNPNXVBeVh0?=
 =?utf-8?B?ZUZKNktzVlJacm1ialZ5UHFqTGhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <43D2FB34DDC95B408331F341EE2A88AB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 006293a8-949b-4b1f-f616-08dd6aaaae9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 08:05:46.2975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: txqtrsFRfB5kbquKpnpQdYKM+VAOBumRxf3xmuJC20oE1yKFeYrWTwKF9KtjU7mly0bp8XyXP24jhk6yigJB8h51bgMONrkA/+riDjsQF0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IHYzOiBVcGRhdGUgTE9CRiBp
biBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiBbSm91
bmldDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMgfCA1ICsrKystDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gaW5kZXggYzI4NjI4ODg0NjZmLi41ZGYxMjUzYTZiNmMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0zNzgsOSArMzc4LDEy
IEBAIHZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsNCj4gwqAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQ0KPiDCoAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShz
dGF0ZSwgY3J0Yyk7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRj
X3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7DQo+IMKgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiDCoA0KPiAtCWlmICgh
Y3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYgIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+ICsJaWYgKCFj
cnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhY3J0Y19zdGF0ZS0+aGFzX3BzciAmJg0KPiArCcKgwqDC
oCAhb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKQ0KDQpJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5k
IHRoaXMgY2hhbmdlPyBXaGVyZSBsb2JmIGlzIGRpc2FibGVkIHdoZW4gDQpoYXNfbG9iZiBpcyBm
YWxzZT8NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiDC
oAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJtLCBlbmNvZGVyLA0KDQo=
