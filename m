Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA320A3D4BD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 10:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB4410E900;
	Thu, 20 Feb 2025 09:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dpOSpuNv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E4210E900;
 Thu, 20 Feb 2025 09:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740043837; x=1771579837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ANKlR8ttb6YCHXU0wpIV1Zuo65AZUwTeh3lAvWP1YYs=;
 b=dpOSpuNvTOt5jCuTNtqavTRNp5eoTWEZjp7Gole8/tdiQ2hvRJrRl56Q
 FO+I3Z1T37uim5zSFTG76zD3ztrSbpPyCc4gudjXMO3BVmUdM2jW8qyCU
 z+MsmNuxDccmkPJmIKQ7vl+LkQT1PjQnGMIEet9/lES1Jlk+lHUx2R1ni
 GGKB+ZsjTLIBxDwTGRHbC88imtr/ySSqe15cMxBq8XvsKBMfKnXJaapJl
 dHrZ+UKsL1sj8Iw/qmbpp9UwFpvDJqJV0sxYOGAfbVrV3Lco0hBMQTGKd
 pEHLcHbiP3jQzRwBwxGQkloB0d+o/HdRDotkZJ4qy5j8FGYgfDaIPg0l4 g==;
X-CSE-ConnectionGUID: bd49cSwITPO94+ECHIFbMg==
X-CSE-MsgGUID: F3+nscwGS8eeCMqAcjAx4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="43644310"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="43644310"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 01:30:36 -0800
X-CSE-ConnectionGUID: 9PyxX5QcQz+C64ajfwaVnw==
X-CSE-MsgGUID: UHOnTMACT7GC8xauegYJ0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="119925676"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 01:30:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 01:30:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 01:30:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 01:30:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lo2g4Eb1rhtS3/4vAdXlqi+roNE2GZiWITtgQLN7vAqkvPcegE/vIsfkkDC+AlyYh4kmay/zBGlAkXkk5zMaNX4yu2q2P7jZOavFotC6830j7D9+6XE8Zh21RYcaNzu38mPCgbymi9tg0WWvzstJSuXHdr7jZFPnSE397983pStaiFwsmshqpAb4gEBarSgr84JlsQF9BYHIUVXA1e+o/hfWAneBNz9LGgljc56Vxg1oGG73hT9E1mDKF5sxGRo2NSedYO0hcZp9V4sGiIXyhCQ0Ajy/3YhuwJHLOyCpBf4OxXmV1KwEcF2z+tI0xFMAMWR0U+giPwoVj4wiLpIkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ANKlR8ttb6YCHXU0wpIV1Zuo65AZUwTeh3lAvWP1YYs=;
 b=GAsdVbLAeeSXcotL5ZnrSwdY43suite15wiAUB3gEdNWNwPbbGUx0G+xS+z/2CfY4TrZNnebkPWUbx+gslYnchZXjrVvwYoWaZtNvYQ/VXCStCRJcMs9Y5z/VSltPAWF1gL5eU4RZftYUve9vQqsiNlV8Q18gJ5s8gt66aWhfUZ/rNXG2TcZmqkeFEhEDFNHyj7pdMTnu/q9xWAJSiQnmNwJPaQ7xgWHljdRqFwcEAmE0Tsc9Nkb9gWD5E9g7Qi4im6pHHRF3sZfLb2wn+uLNAh5iWrMncxwCwOTqhkddcSNWhsPTPWYneDjXWkz4uO1zWBlktWZMtfDxwe8Qv+bIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6415.namprd11.prod.outlook.com (2603:10b6:930:35::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.15; Thu, 20 Feb 2025 09:30:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.017; Thu, 20 Feb 2025
 09:30:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH 1/3] drm/i915: Fix scanline_offset for LNL+ and BMG+
Thread-Topic: [PATCH 1/3] drm/i915: Fix scanline_offset for LNL+ and BMG+
Thread-Index: AQHbearzRiRaxVyb4E686J4fuA1zzbNQALAA
Date: Thu, 20 Feb 2025 09:30:01 +0000
Message-ID: <1143dadb36dc3d3572e4e4b2daca73497589db04.camel@intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <20250207215406.19348-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207215406.19348-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6415:EE_
x-ms-office365-filtering-correlation-id: 2c5c37f6-ed26-4af4-ea8f-08dd519126b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TFk5U1BYS2xzUkJhbXYxUjh5TUJyd096QmJQVEY3VjNxM0YzN3hQeURaYitE?=
 =?utf-8?B?RW1GQThja0RFM295RE10b0ZaSnQ2UzJ6TjB6NVprQjE0eE01UHZpVFZINVJW?=
 =?utf-8?B?d2JNdkc0bzNPWnI2bmdEOHIrN3VMelBQQjhvYnd3cDZWR21mRjhaazVjcytm?=
 =?utf-8?B?dnhvbTBuL0VhNjRBWTA3dHRWUDRkcUltM1o1T1pnRU5xTjhnZ0xhTlVxekFI?=
 =?utf-8?B?MExINWFJc05NSmNXVzEzNmFYbk12TW13ZitIL1FaUGJUUkZaRzVZZ1BWelhR?=
 =?utf-8?B?VWFyMmJkUFF4b0VsYWxQT3o3QU9EQTh4UVVOZnFNUjFTVmFQQXlxNU5rNmNl?=
 =?utf-8?B?czNmY1NCR3F6azlvU0ZQempIcjB3djZDalpYS3RNZWVsdmswd0gzcjIxSFFm?=
 =?utf-8?B?SWk5NzVWTmJSWmJWSkwzSVJMajIwWG52M0V4Tm5RY0dDcDJRbGg4TEVGWlhG?=
 =?utf-8?B?OUJsejZETGM1SU9XRmNxN1BiQndkWEI3cStZOVlrcGZXU0xJTUtmM0M0N0d4?=
 =?utf-8?B?UkNuclo3M3Vub2o0NVk1cm53YjZRYkpHY2ZxL2E3TTNBbzNJTXZNOTNlUnRq?=
 =?utf-8?B?UHcrRklzU09Sa20ySitrd2lDbzNQL0grU3hyVTVlcE10b1hNbEdETVQycnJN?=
 =?utf-8?B?Q2pjcnpvUW9VQTFPeXlzV3FuN2I2SllRVXdtTkhtZlJ2WlJLaVdrS0w5TmVW?=
 =?utf-8?B?VWlHcjBLTGcrQ09VMjBXL1dFME44d25lNlFCQzRzZHM0dlBLMmRZVTRyTUht?=
 =?utf-8?B?WnNxbmc4dlUrRkozYXp6V0VLekVNS2x5Q010bWlCdUFsV0Izdy8rZFpnZDZG?=
 =?utf-8?B?T05qZnhUUFErbVhvclZGMWFaL0JlZDRVRGRDd2FSZ2tjY253VS85elNZMkZ1?=
 =?utf-8?B?NVFvRFhsckR1RFN5aFJpZTlsQjA2QkprVHJPMmVrRkozTWI1TlhtWFFNblcv?=
 =?utf-8?B?b0o0SVhobFlab3owTjVLSnBFUGRwNm1CbnJmMGFNcTN2Z0xwU3h5cnFia1Yr?=
 =?utf-8?B?OVg2enBzMG9qMlJIVEhoR21Pd2VqNm5KS2tpdVU5dHBuMlY1UmJBd2kvTkxK?=
 =?utf-8?B?Q003RWw3QzdUazJEclFVME0rTVBoTHVHYk9nTG9LdUF6QUZXbzBReHdCUkVk?=
 =?utf-8?B?MHY0MndTcFdpdkVsMXFBeXFlTFB0UlI1ZWNNM1Z2UXY0NEgxNHhXa2l2alZI?=
 =?utf-8?B?WU9PcDFtWDF1c2RXa3pwT2hXZy9oS0NFQTRVMXhXck10MmlyZFo3di95Q3Bl?=
 =?utf-8?B?ZWNnS0NQMjdSSUlGT0FjWVkxeFpQblZzK3FRQVBDLzVab0hLVEs3QnVodkRS?=
 =?utf-8?B?bk1rQTZCOS9sNHhkbDdoV0UvZ1AyNEtGWGR1d2dJK21ENmFYSm52Rm5MUGJy?=
 =?utf-8?B?cUh4d1lkMjRLMFNUN21IOExFSW1BSmxkWTlYeWVuMGlsUFBiWmZmSGl2S0dk?=
 =?utf-8?B?NDVBMUtFTWF4T3NGOHFCSTBjMXpySWNsNWw3ZzlxK0dySE42YWNjcXRZNjhO?=
 =?utf-8?B?MGFsc0VQSDg0U1laWTgyaC9oR3NCajNtdEpoVGU0dUdVMlZVdUg0dVIreWhq?=
 =?utf-8?B?d21LSGMycm4wNEM2ay9kR2RMa0VVQUhOU0ptbldNZkcvaWVkei9PR1crRmxt?=
 =?utf-8?B?aDR1Q2xhQkg1dzVqbkErUXVDdys2QVk1Wlo1Y0pXaHlmN0RtaktMaU92OHNt?=
 =?utf-8?B?VzgrNFc3YXlZOG03WGZzOU1lQnQ1ZjFWcGFXdDMzZTJIVkpyeldvZGJPMlBn?=
 =?utf-8?B?dnU2d1JTRnlPUG5HdmxmQlByc2IxTElkOXZTdVN3QVRud045dzlsWnlBbG1w?=
 =?utf-8?B?SHNZcTRSa1Uzdm1FNE5ZSnN6SFB4RVlzU2NMenhMRU1PZjBhdmpnNFc1QlV5?=
 =?utf-8?B?OW95eUdkcjhnQUVCNnl3Rll6UTBBaVIzbDQ2UEdxVUxuTzVzdjhsVzNLVXF3?=
 =?utf-8?Q?CnCRQheYA2JXgZo8DGTkXb98WkQJ8Ap3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU5Yb3BVNlRscmNQdmJ3bnBPZTBqV1VzdFltNWVaenBiUnF3TDk1SGZMN3Y3?=
 =?utf-8?B?WUR4K2JydDhZNFNnSG5sWi9tSDIwTVgyQzBxUS9Ja0NxVjY5OWp2UUFZQWp0?=
 =?utf-8?B?RGJyU3RRaFU0bGhoNnBtTkJoVGh3YTNYRnY3dzlHR05odGFEelV3WTh6akh5?=
 =?utf-8?B?QUVUUEN0Z2JQYmRSM09uQjc3MWsxeTZBcTg3MFdabGVRelhrYUM2RnZ1Z3Y0?=
 =?utf-8?B?VGFpcVJ2NzNEWDFYd3hoY0dsUlIwVWxrYXFSdysxLy84NHZ6aXZsbTF6aVQw?=
 =?utf-8?B?TCt6TlZSVXpVOGs2eTh2R3lHRS84bGdOek5KOUdwMlVINmJta0pnYXdTOFRO?=
 =?utf-8?B?WWYxSDFZeFRxOEZxOWdhUUVtdVhyNzZPMWpNZEw3NnR3S2wxSGFERWlqRlRC?=
 =?utf-8?B?d2dOeVNMcG5wemZnOGluWWZ4S3RwTkhuQ1pxNFluckdRdmFZTGlDSW9ob3RU?=
 =?utf-8?B?VU5MeGp1ekpJVmtzakIwTGp1MkJuKzhRZkUxQWRpZHBvdWdtOUx2RlhZY21o?=
 =?utf-8?B?SWpxK2pLYmR3QW5OaGFySDlXNVJHSFQveVBteVJ4a0RFVDV0UU5ML0pGOERL?=
 =?utf-8?B?cmU4clpBUC9VNzZYVlY2THJHeHVTSENxZnp6N29iak8vTU56T09IWE5Hck5F?=
 =?utf-8?B?b3k3ajg2Umt1bXRNYlBDei9rR0tRNFhJQ2NSbHNzTWJFdHNRWjRhalJkeXBT?=
 =?utf-8?B?cFVkMk5USlRoam4vb2JoNlYzd0U3K2xGWTNpWDh3TkZzQzJac0x4QVlUd1VU?=
 =?utf-8?B?RStMUTVXcVdjMUF0aE9aOHlrbnVGTEhpZGRxczBkdHV4YzIvWGwrcGdDUEJI?=
 =?utf-8?B?ME8vRHdKaEVETlkzTThJcnlMNTFFUi84bWlqM0U1VElhcHQ0dHdzSStvL2U0?=
 =?utf-8?B?M2orWWpUVzR6RStOWjlRUFRKdEh2N3E1TU9uVllQT2M3eGZMam05UUFwdmhL?=
 =?utf-8?B?cUwrU3lrYXRaZS9tMlRUZ3dpcTlkQ3lJYURmazUwYTREdTkxMjkrQTBHZ2Rh?=
 =?utf-8?B?dzA3bnhTVkNxVHJVMTdZTDFEdXVjbXJjdEJtMngyTjRSNmF4SHRaQmJEY3Mx?=
 =?utf-8?B?aDVEd2RXSUZvV1ZjbnQwa3ljSnpJQ1kzalhQem4xYWY5a0tHSnBKdWo1ekJk?=
 =?utf-8?B?U2E3cVZSN3c0aWtBbWt0UGhpK2R2U0c3ZDJhODF2bmlpbzFzRFM3SFNmRDhF?=
 =?utf-8?B?VUJUSG0yMjZzVU9NcC9zb09WLy9qQXpzYWFGVFdYdXNId3hoWGhhRWtQZ1hl?=
 =?utf-8?B?QzlMc25qbEhycEtNQWxHRTdNcUN6bkE2RlB0cG9oNHdWZXpPUkFjNDRpUzBz?=
 =?utf-8?B?VUFCTU5obCsreXhxUHQ5UnlBRzgxdEUzbmFBam9ySW9PYVpScmxRUE5HRkVu?=
 =?utf-8?B?ZlVlSk9CT0lYVXE3TG4raUFqbUoxYloyQkJKOUNBbmk2RlFXdlloWkZDNHJ4?=
 =?utf-8?B?ZGFNMjRjMGFDSnBLdWM2VlRpaEJEWVZ5ZlVJVjhjbTlFclpTTnh6VDEzeGZS?=
 =?utf-8?B?T28rVU9jSHdCcWlhQ0JMWnFOQlIvdktDcjRVM1EvZDArbDdWRFhMQUV1dERx?=
 =?utf-8?B?NVkvemx0L0lhNm16anFjSWdYNjJIaUU5ajhSODQ1MXc3ZGZ4TUNPanM2dnF0?=
 =?utf-8?B?M1kwVFAzZUVZaVRseG1kbVl1c3MrZmt2SVRTVDdwTFR1VUM2d29YTDRNSSsv?=
 =?utf-8?B?TXdaY1pmWnd1QzFFL0h3dTN5cmZjczZvMVZ3bUE4dzN3VUJYVGM1NE14Z1Uz?=
 =?utf-8?B?eWpLb0ppS0kwTzBSbHYrNTExcURoQmI1dTRNOTFXQ3Zxd0RLRTJGODNRTEZG?=
 =?utf-8?B?UjV2bU9CNHZrZ29vUGcvZzlFS1JlRWtrYkt3Vk9OYjVwY3lYYnp3dU5tNnJT?=
 =?utf-8?B?T1B3OUpMSkg5RWxsRm1JVlJZM2k0b1pkd2Z3eHJtVEFtRTMwVTRiUG9XOHF1?=
 =?utf-8?B?UXdzc3FWUFNVQm1IcXJLcU5mRlZ0UG5ZSkwvbUNGTmkxMGhzZy95L2JwSnRz?=
 =?utf-8?B?MG1ZcERFbmlHelZiTFhWNUJxNVloY1pyQlMrQXR1d1Y1MjdoUlFtUzBjNWNX?=
 =?utf-8?B?ZTdQRTM3WEJrZFdiaTRrVFVnOC9ZNUtqRTVFZi8yb2lEaEFhUWgzSG45ejl2?=
 =?utf-8?B?UzNaai80TmdWRW1Sa1NzYktSdVAyOU92TmNQTWNnWEpNT0tOYTBkTUZMMVFV?=
 =?utf-8?B?NE5OWnM5dVpqb014dDdGN0pPaWtycFNKTzRRL09ZRC84UG1HdmpaMTJTemFy?=
 =?utf-8?B?TlJGSXN2cHMrOU1xZ0hmZ3VyWmd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FAC9987145C2074196B0EA19A178D86A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c5c37f6-ed26-4af4-ea8f-08dd519126b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2025 09:30:01.7949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dPeqt6ONpTPaZabS+k2BO2TCgNyjykU4Y7w3BSI0KhNrlQxzQr71VKRn7hixSxLHHrLxMSCR/9He+YVY+fPIDc37yOFOhOlE3gP9S/sY9RM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6415
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

T24gRnJpLCAyMDI1LTAyLTA3IGF0IDIzOjU0ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVHVybnMgb3V0IExOTCsgYW5kIEJNRysgbm8gbG9uZ2VyIGhhdmUgdGhlIHdlaXJkIGV4
dHJhIHNjYW5saW5lDQo+IG9mZnNldCBmb3IgSERNSSBvdXRwdXRzLiBGaXggaW50ZWxfY3J0Y19z
Y2FubGluZV9vZmZzZXQoKQ0KPiBhY2NvcmRpbmdseSBzbyB0aGF0IHNjYW5saW5lIGV2YXNpb24v
ZXRjLiB3b3JrcyBjb3JyZWN0bHkgb24NCj4gSERNSSBvdXRwdXRzIG9uIHRoZXNlIG5ldyBwbGF0
Zm9ybXMuDQo+IA0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwgNCArKyst
DQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5r
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGlu
ZGV4IDRlZmQ0ZjdkNDk3YS4uN2IyNDBjZTY4MWEwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gQEAgLTIyMiw3ICsyMjIsOSBAQCBpbnQg
aW50ZWxfY3J0Y19zY2FubGluZV9vZmZzZXQoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+IMKgCSAqIEhvd2V2ZXIgaWYgcXVlcmllZCBqdXN0IGJlZm9yZSB0
aGUgc3RhcnQgb2YgdmJsYW5rIHdlJ2xsDQo+IGdldCBhbg0KPiDCoAkgKiBhbnN3ZXIgdGhhdCdz
IHNsaWdodGx5IGluIHRoZSBmdXR1cmUuDQo+IMKgCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA9PSAyKQ0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCB8fCBkaXNw
bGF5LQ0KPiA+cGxhdGZvcm0uYmF0dGxlbWFnZSkNCg0KQmFzZWQgb24gd2hhdCBNYXR0IFJvcGVy
IHdyb3RlIGluIHJlc3BvbnNlIHRvIGNvdmVyIGxldHRlciB5b3UgY291bGQNCmNvbnNpZGVyIGNo
YW5naW5nIHRoaXMgdG86DQoNCmlmIChESVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPj0gMTQwMSkN
Cg0KV2hhdCBkbyB5b3UgdGhpbms/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArCQly
ZXR1cm4gMTsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyKQ0KPiDCoAkJ
cmV0dXJuIC0xOw0KPiDCoAllbHNlIGlmIChIQVNfRERJKGRpc3BsYXkpICYmIGludGVsX2NydGNf
aGFzX3R5cGUoY3J0Y19zdGF0ZSwNCj4gSU5URUxfT1VUUFVUX0hETUkpKQ0KPiDCoAkJcmV0dXJu
IDI7DQoNCg==
