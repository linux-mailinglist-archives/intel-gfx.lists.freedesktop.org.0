Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FCBA7DB4B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 12:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E50110E424;
	Mon,  7 Apr 2025 10:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fbZ4uLRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB9F10E41D;
 Mon,  7 Apr 2025 10:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744022240; x=1775558240;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/qmvsy7v3UUzICtzykW+PFhF2fyAiAMkKvu1NcoJPOI=;
 b=fbZ4uLROIVYynRKZI2tIObB0KMIHQl1roEJhwRtDhJZD/4bhFmEsLid+
 zpe8ndrSCxbVw5SdsdyHF/GYQSA9FfU7+OnVDKafwkm8j7qrqJpEPkxxc
 tNO8wrw+mhWX7NmOeD+RGeVR5HEBhHZSI9tKUT8DePAl24s88wocpkj4U
 XCNCbOzAOxtMR8oWWvTyFI1eFXFbPW1NhO8Ds5w3BkMjj/cgxCOpWa5vw
 sxclme3N7Y6a2goAGBlrBoZSFARgkP0AiqULq9pzjVYiPtd7AseiyzP3L
 1jEpix5PPOiPoe8BSsHufX42zdDK1LYOSHtZ0KvEZ9CQu9ESV35LBgcf9 g==;
X-CSE-ConnectionGUID: QNkcIPzhRnKbMomOl/liLQ==
X-CSE-MsgGUID: FVDtZ4NTR2SShEJcRaZ0hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="49192451"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49192451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 03:37:19 -0700
X-CSE-ConnectionGUID: YEuQfYRMTrO/qpkfFgHINg==
X-CSE-MsgGUID: Ku9oZcJMRi2idj51Regj0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128241403"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 03:37:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 03:37:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 03:37:18 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 03:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ODHUJ57UVuRW8X83c1XV7kUv6j53VOqvkdMuZwodAPaX6cIaIrQKALQ00P15RRJFW0sMe76O2qR4E29W99Zyy4Tof309JNanR8rPTs6mkpEc+G6OU0jPXc6WcxUC+c5dc8zuz8rVGB7y3FYr8oVTOPH/0LtIchJ67JZfa4V1K25ntydG20xadbSIpllT3+u8xtlbbVDKFfttQdna/0DJNWTR3WVU/PD46O/1+l9ls0wUstRswgGnXzNuSis3K2JpDMn4f3olbkH+SOtumEc8RmUOzGjXDJ8lelB/SNEGdsN8N8isWmNKoMXiuisZSKgA4aFqD2imjX79aJtIu1Gf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qmvsy7v3UUzICtzykW+PFhF2fyAiAMkKvu1NcoJPOI=;
 b=np8j5X4wtM44uo+iBWhkNk/O5UU3vu3h0YFZJfUEsqGMOlsT3CVfOjGWRuqwtZ+KmcBIUjOw1Hm0tl4CSSSvK4pPqxEUrY2LN0L0sCngC8q8AY9QY96Ty5dhTtr6k92l+BlwH+g2XhFt7Wm0Uc4fauBUtNt2NAcYm4+11IJeHJQz+tBJ2WZ6EWYaeIQDymKej6g6E4kcd0FkVH2fyWHqOMs5MDUQ722KFKSnEKHaKkOSPTC/cbN0M1nMd3Or2wfJP0jNxOup2vRGOyzRvAkYxZstG5pFN7ULd+8tWpQ1SJl2fd8/Vmhf/RTekm8G9iTjLEKFMBLNtIfg+/RA1ChrIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB8394.namprd11.prod.outlook.com (2603:10b6:806:37c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Mon, 7 Apr
 2025 10:37:16 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Mon, 7 Apr 2025
 10:37:16 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [RFC PATCH 02/11] drm/i915/psr: Store enabled non-psr pipes into
 intel_crtc_state
Thread-Topic: [RFC PATCH 02/11] drm/i915/psr: Store enabled non-psr pipes into
 intel_crtc_state
Thread-Index: AQHbj08k8pPlkkU+7UiX/qZSFwHe1rOYM1Xg
Date: Mon, 7 Apr 2025 10:37:16 +0000
Message-ID: <MW4PR11MB7054F6533D4DF1178F8C11ABEFAA2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
 <20250307105237.2909849-3-jouni.hogander@intel.com>
In-Reply-To: <20250307105237.2909849-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB8394:EE_
x-ms-office365-filtering-correlation-id: 3331d7a8-b2bb-466d-b55e-08dd75c02a79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V1VmY0dnM3lxRUp0OHM4WnlsMlVHNmxITnpyaXdZdUQ0dzEzZXFvMnBRc2g1?=
 =?utf-8?B?UFIwSXBqTDNGOEpCNDBaYlZjMWVGb3hCanVOTitOaklqamhVdzRtT0JycVRo?=
 =?utf-8?B?NklMSVE1VGl1REJLalFqc2Z6TWRjUVRULzl2QkxWUDBCNGlxMERYMnFFTkg5?=
 =?utf-8?B?aS9SVmd0SlNZNzQvbis1am1CMnJKZEFVOWxsWk02L3dvdkhxRjR5UlJQOFZ0?=
 =?utf-8?B?WGtJb09UOWVoTElIWFptVDBDTk54TndhKzFvd3lseWh3bGE1NWh0MzhISGds?=
 =?utf-8?B?d1l6S1ZwUlA2K0NFa1FYaW9QbnpPekUvQi8xMWs0dlZWYzUrQU5qYmtKZG9J?=
 =?utf-8?B?UndSUFJnRWF0Z1pUNjYxRWt4dkxRcTFMY2pLM0Q5N2ZNVmJIbllhVzRxcmJN?=
 =?utf-8?B?L0FpTkRkL3lHZDFGamlIUHlFbDJCZUZ6ckRya2tlcjFHTmlnb2d6WGhtelZ4?=
 =?utf-8?B?Q2EwRC9DZTNrSGxRaFBWUXk2bERYQ1BtVlJJT2dtWUtpRm1oK3pOR2pjaDdU?=
 =?utf-8?B?ajhOVEE3TWtOOG5jQmhSSExzaVoyY1FQTXFVUTA1T09XNU9yd2Z4WmszM1Zm?=
 =?utf-8?B?WllrNmtBeW9Uc2hvdk1qak9iYWNBbDNGbE1LZG9RUWJSanZpRWZBaEk1b01B?=
 =?utf-8?B?Y1ZVRU12b0VTNWhmeVJnMHE2S0NjK2RCamJYdGJPckY3czdpZ1pMV2hFNFh3?=
 =?utf-8?B?LzZDSHgzT2tTUVV0VC9TdkhVWm43V09TSmhadFdUMTRDRzdKNWlpWHAxc3FP?=
 =?utf-8?B?bWUzWHRWRzZCVjlBYVNMTk45eTNmeHZKSXBnRG9XUFRBRXM5Y2tMaURzNVVs?=
 =?utf-8?B?S3JjV25JOXdJRHZrUU1JZzZKb0J6VURYdlJoYzZmL3h5VEVBZ2lvUGxVNWJh?=
 =?utf-8?B?V3Z6SnByZUM3WEpmV2FwWVJ3Ky9GZG84VUliUFpyVytlNit0UzI4cTlyQjFF?=
 =?utf-8?B?aFcwSUhpSGZScVU4MkR5V0l4VDFBR3BPdGpFRmVZUFhNVnI2RUJuTjJzREcv?=
 =?utf-8?B?TGxiUnE0VnZMdUhId0Nqc3FRWWV3TklQeHpOTStVTHMwc2JrOURiZVdjSXRs?=
 =?utf-8?B?dGNuSHFOVUZpcjFKbVByTzJIalB5VDhXUHpOd1BrcWtkSjVSNi9GQkxOZWhK?=
 =?utf-8?B?UWZMNi9SMXRybndSS2JLS2ZtNjhCTHlvS0dDcEdsdHRUdXpYKzI0OTFsOGxh?=
 =?utf-8?B?cW9COWxab1F2eTNYOG8vQmp4OVBTb0tnT29SeEs3RzhVQTRhUjFlQ3A4blpC?=
 =?utf-8?B?Y1pKdHREVjhJN3dvYzcrTi9WR1BwWGxGUHdCaUtPdzEwSzhPYmhja056Yzli?=
 =?utf-8?B?ZC9yd3JzSFVPaTZMMmJqdWNPOEdrRFArSjJsSGhNWVdRMzlHRkVJVG5Eblg0?=
 =?utf-8?B?WHZybFZJUDFoaTNQRGtrUWVOUTBwa2ZYYjViaGZhWjZaQzhwdTlES1pEcjZV?=
 =?utf-8?B?SkM1d0s3V2YxNWVORGY2UThiNkJDYVpmMjc5RWJ0c2Q2bVlrcitsRjBrdmto?=
 =?utf-8?B?c2xDbFA0T3VsTFVycktmUnh0Sk5XWVgyaEhmNUJuaE5SMVIzV3NVRW1yRFRT?=
 =?utf-8?B?WGxkM2hBay9RUUw2VHc2U3lSdHhrNE9pNE16bThzS0dmdWJUdWZteUFKZWNn?=
 =?utf-8?B?MTZMMzR0aEtnaWxpZUFMR082Qmtnak9nSWMrZ1YzY1FWZmNPZzVTOEdUeTU3?=
 =?utf-8?B?b2J6Q3BiQUIvU3R6bmtXSU9XMVVkeW5PV1VFNjdDZUh0YnYwSUJ4QXEwTXdo?=
 =?utf-8?B?cDQ1ak9WWWtTRGlxTW84MDVaaHpQK09sR1JTSkRjQlZ0REJyM01aKzRZYksv?=
 =?utf-8?B?ZmtwMmlmYUV4NlQ0WXI2cXhkYjRlTjlDZWJsdnRPeHVMSmxGeDlPU1pITUFp?=
 =?utf-8?B?REtUN3MvVFhIMzdLUERUN1N2a0hEQUZXa0JEemxDU0xxeVc4bnFVdjlXUjFm?=
 =?utf-8?Q?0FaG+8yoWfLHwKbDBYWiPbATxrgbr6Oa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1N5MjhJVkZhTHZITzBNZ0JmSFYyakx4Nmx4ak0yNzVGOXRKOVU1UGtNanNN?=
 =?utf-8?B?aXBpSVBBemtwRnUyMkhaZ3JRTEZrcVFNY1YvblZHK3ZnUzI1Y05LdkNvYmR1?=
 =?utf-8?B?KzQ4MW55K2ZOeCtEUldTUVJJUytoWHlZMVQxRVJsS1AzL2luT0g1NWU3Qk9a?=
 =?utf-8?B?UjhUb0liNW12UnRqejc4WDZsVExWNU1TaitMSTBzU0pRNGZBaUFKZTEwNDFk?=
 =?utf-8?B?cXNTVC84c3VlSjhOMEFoeitHM09MT0JhOWN5UjJEcE04UDBjR3hSR3E0TTA2?=
 =?utf-8?B?T2pCb2dlcnVWUUlJSVFQb3d5RnNiczdycndaZm1UTUc4aUh3UXdDaXhhWnZB?=
 =?utf-8?B?b3ZLNFpCdjFjTjAwaHhUaEFjcE5VRmdDQVdTWGMwSnhsdXpGNVBiS1lTU2ZJ?=
 =?utf-8?B?cHJFOFhxSjZlQXBneWdWUWNNcTZHRTNBZFhIYnkrdkZGS1FROEdkd3NseGd5?=
 =?utf-8?B?K2QrWnp2ejBzUXdXVU9oM3hCdkhWNm94YUQxMWxyMmx2T2V1NWxFeDFTSDNx?=
 =?utf-8?B?UXpEYWFMSVJZUS83L3JKcHNuWlF2aDlUWk1SaTNncmR2aDcwNU1qQnl0OE83?=
 =?utf-8?B?a2o5M2VYc25lY2NXcHlqMTdKQjV0ajJoQit3WUw2RlhCYlc0N1puLzVBMVRl?=
 =?utf-8?B?UXNDQ0xPMG1GNXFLWE1jMEhuTHZWZlIxYUN4d0pzQzNmRDFyTkZmQWgwRjdS?=
 =?utf-8?B?TzJoV3cyOGN2MWRuSS83aDhXYWVhK0drNU4xYVg0NmhySkRPc3grM2JTUnpR?=
 =?utf-8?B?NGhSL2Y4VWJlOE1MenBKTUJqdUNVOWNoZ2l3emR3WUtGOSt3ZGpiVkU2M2ZJ?=
 =?utf-8?B?OVpyNlFwSHR4ODhtNzgrR0JTcWptQkQzcXhIZmQzVGYwVHBlQmI4V29jTWlB?=
 =?utf-8?B?UzYycWh5UjRtWGZiN0hZS2FJN2tCeWpXUzVzQXU3Tk1FN1pxWDA0TVZCOVhy?=
 =?utf-8?B?cmdMM3pQem5jOURPQW9yeTFSang3SExtOFY4RXBSd09reXdEQ2FCMWdnSnhE?=
 =?utf-8?B?TlovNmMydUprZVZkL2JCbXlHTnZpRGg1RUhLU0g2VWhrMkhFZU9scFB1OHAz?=
 =?utf-8?B?VjdrMUJnMDNXcWc2U1NONGdPQWgxdmRDeTFFMW9BT2c2TDVacWRMa0xMUnBV?=
 =?utf-8?B?RVRJeDZLekRWbzg2UGR6YmJRNnNFd0EveDlpQ2d5SktyVmp3MzZ6RkorTlZs?=
 =?utf-8?B?RUVjT3l2MC9pSVdCTnpUdk1Ud3luRUFsUllhczI4d0hlZ09zcHA4SlA4cWtk?=
 =?utf-8?B?UnM4Um9CSmg5U2FOTWFNRnFORXZWeXp1KzQwZlAwSXZSTEpzelBnNlhmcXVu?=
 =?utf-8?B?VnVMUURmdkR4TXZzdjVrc2FpNlJlcnh2NkRLTVMvL0cxMGJvc0hMRnZva0VB?=
 =?utf-8?B?dWVjTURZK2E1OVZsVkUvSGk4WS82UHRzTGpiSlNMUG95NUpiU2lIRkdyL092?=
 =?utf-8?B?WUN5dHFzMlhUVWd3YU0vaGxZcE1YQ0lzd1ZiZ2ZvcHV1YUlFaTVOUnlEOXVB?=
 =?utf-8?B?U1dJZEFHajB4aE81Z05tdnZJVDRvOVdmcmxuRUZ4L3VISGt2Y1o0ZHEvWEVD?=
 =?utf-8?B?djRVVlpsVHRqTVUyMkNCbHZIa1RFaEpQZ3E3VFR3cFVseDAveEZaay9PUCt2?=
 =?utf-8?B?WE11SGxOdmVOUE9sMXpQcVNTSG1ZaDl2ODdENUtUZ0pVNUNxWWljRXBuNVJ1?=
 =?utf-8?B?RUUvdmo1T3dBKzNKa2hlRHZRTE9RV2lqdGhXZHZVOEx2WURTMjltY25MOVBY?=
 =?utf-8?B?NDNKYUIrY1pjdkgybVM5NkxDcExzWGRCcmtxRnk5SEQyV2FUK1dNeVlNb3g2?=
 =?utf-8?B?Nm8vM01CU0twemZXNU0wb0hHSi8vT1ZhSnluN0k5cXZiamhiYmFkTTVkY1Nx?=
 =?utf-8?B?THk1V01qTTZHVExRdnBuMmdBaGRhVGxrSzMzWW81cXliL3VmSjB4N1N0V2Nh?=
 =?utf-8?B?TW5OdnViSlgzSC8vT09URW5vNGhNeWZlMW1UaHFFQWMwenNXNHpZK3l2dlhN?=
 =?utf-8?B?RVRyOW9lajM0aGdRMVBqTnRDUGFtdy9uaXR1OE0yNzVPTWN6bVRMYVdWN2xj?=
 =?utf-8?B?dW1ldStPbHNncHZIT3h3YitudkFsZWMydTRVT3oyQlkrOEtod3diWVBFaWpS?=
 =?utf-8?Q?ODuysnzesfb5fPrGbbb7VCTaz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3331d7a8-b2bb-466d-b55e-08dd75c02a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 10:37:16.3220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bLp8AQSZKDSQyLc8ERUsu+evEQzweCCTwnEY6pD4g9Gmio7BfmyG6W1P+W3b9YlhdBGGAHdtnyKfI8/KceyNFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8394
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBGcmlkYXksIDcgTWFyY2ggMjAyNSAxMi41Mg0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogW1JGQyBQQVRDSCAwMi8xMV0gZHJtL2k5MTUvcHNyOiBTdG9yZSBlbmFibGVkIG5vbi1w
c3IgcGlwZXMgaW50bw0KPiBpbnRlbF9jcnRjX3N0YXRlDQo+IA0KPiBUbyBpbXBsZW1lbnQgd29y
a2Fyb3VuZCBmb3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcgaXNzdWUgKFdhXzE2MDI1NTk2NjQ3
KQ0KPiB3ZSBuZWVkIHRvIGtub3cgZW5hYmxlZC4gRmlndXJlIG91dCB3aGljaCBub24tUFNSIHBp
cGVzIHdlIHdpbGwgaGF2ZSBhY3RpdmUNCj4gYW5kIHN0b3JlIGl0IGludG8gaW50ZWxfY3J0Y19z
dGF0ZS0+YWN0aXZlX25vbl9wc3JfcGlwZXMuIFRoaXMgaXMgY3VycmVudGx5DQo+IGFzc3VtaW5n
IG9ubHkgb25lIGVEUCBvbiBhIHRpbWUuIEkuZS4gcG9zc2libGUgc2Vjb25kYXJ5IGVEUCB3aXRo
IFBTUiBjYXBhYmxlDQo+IHBhbmVsIGlzIG5vdCBjb25zaWRlcmVkLg0KPiANCj4gQnNwZWM6IDc0
MTUxDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgMyArKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgICAgICB8IDIzICsrKysrKysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggOTlhNmZkMjkwMGI5Li4zZDIw
M2EyMDAzZjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMTE0LDYgKzExMTQsNyBAQCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSB7DQo+ICAJYm9vbCB3bV9sZXZlbF9kaXNhYmxlZDsNCj4gIAl1MzIgZGMz
Y29fZXhpdGxpbmU7DQo+ICAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+ICsJdTggYWN0aXZlX25v
bl9wc3JfcGlwZXM7DQo+IA0KPiAgCS8qDQo+ICAJICogRnJlcXVlbmN5IHRoZSBkcGxsIGZvciB0
aGUgcG9ydCBzaG91bGQgcnVuIGF0LiBEaWZmZXJzIGZyb20gdGhlIEBAIC0NCj4gMTY1MCw2ICsx
NjUxLDggQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJdTggZW50cnlfc2V0dXBfZnJhbWVzOw0K
PiANCj4gIAlib29sIGxpbmtfb2s7DQo+ICsNCj4gKwl1OCBhY3RpdmVfbm9uX3Bzcl9waXBlczsN
Cj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX2RwIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDRlOTM4YmFkODA4Yy4uMTQxNWUxZTdhYWYy
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTE2NTgsNiArMTY1OCw5IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHAsICB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRf
bW9kZTsNCj4gKwlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9IHRvX2ludGVsX2F0
b21pY19zdGF0ZShjcnRjX3N0YXRlLQ0KPiA+dWFwaS5zdGF0ZSk7DQo+ICsJc3RydWN0IGludGVs
X2NydGMgKmNydGM7DQo+ICsJdTggYWN0aXZlX3BpcGVzID0gMDsNCj4gDQo+ICAJaWYgKCFwc3Jf
Z2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwgIlBTUiBkaXNhYmxlZCBieSBmbGFnXG4iKTsgQEAgLQ0KPiAxNzExLDYgKzE3MTQsMjQgQEAg
dm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gIAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiAgCQkJICAgICJQU1IgZGlzYWJsZWQg
dG8gd29ya2Fyb3VuZCBQU1IgRlNNIGhhbmcgaXNzdWVcbiIpOw0KPiAgCX0NCj4gKw0KPiArCS8q
IFJlc3QgaXMgZm9yIFdhXzE2MDI1NTk2NjQ3ICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpICE9IDIwICYmDQo+ICsJICAgICFJU19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAz
MDAwLCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJLyogTm90IG5l
ZWRlZCBieSBQYW5lbCBSZXBsYXkgICovDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9y
ZXBsYXkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qIFdlIGlnbm9yZSBwb3NzaWJsZSBzZWNv
bmRhcnkgUFNSL1BhbmVsIFJlcGxheSBjYXBhYmxlIGVEUCAqLw0KPiArCWZvcl9lYWNoX2ludGVs
X2NydGMoZGlzcGxheS0+ZHJtLCBjcnRjKQ0KPiArCQlhY3RpdmVfcGlwZXMgfD0gY3J0Yy0+YWN0
aXZlID8gQklUKGNydGMtPnBpcGUpIDogMDsNCj4gKw0KPiArCWFjdGl2ZV9waXBlcyA9IGludGVs
X2NhbGNfYWN0aXZlX3BpcGVzKHN0YXRlLCBhY3RpdmVfcGlwZXMpOw0KPiArDQo+ICsJY3J0Y19z
dGF0ZS0+YWN0aXZlX25vbl9wc3JfcGlwZXMgPSBhY3RpdmVfcGlwZXMgJg0KPiArCQl+QklUKHRv
X2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSk7DQo+ICB9DQo+IA0KPiAg
dm9pZCBpbnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlciwg
QEAgLTE5OTUsNiArMjAxNiw3DQo+IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9j
a2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaW50ZWxfZHAtPnBzci5wc3IyX3Nl
bF9mZXRjaF9jZmZfZW5hYmxlZCA9IGZhbHNlOw0KPiAgCWludGVsX2RwLT5wc3IucmVxX3BzcjJf
c2RwX3ByaW9yX3NjYW5saW5lID0NCj4gIAkJY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lOw0KPiArCWludGVsX2RwLT5wc3IuYWN0aXZlX25vbl9wc3JfcGlwZXMgPSBjcnRj
X3N0YXRlLT5hY3RpdmVfbm9uX3Bzcl9waXBlczsNCj4gDQo+ICAJaWYgKCFwc3JfaW50ZXJydXB0
X2Vycm9yX2NoZWNrKGludGVsX2RwKSkNCj4gIAkJcmV0dXJuOw0KPiBAQCAtMjE3MCw2ICsyMTky
LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9k
cA0KPiAqaW50ZWxfZHApDQo+ICAJaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
ID0gZmFsc2U7DQo+ICAJaW50ZWxfZHAtPnBzci5zdV9yZWdpb25fZXRfZW5hYmxlZCA9IGZhbHNl
Ow0KPiAgCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPSBmYWxzZTsN
Cj4gKwlpbnRlbF9kcC0+cHNyLmFjdGl2ZV9ub25fcHNyX3BpcGVzID0gMDsNCj4gIH0NCj4gDQo+
ICAvKioNCj4gLS0NCj4gMi40My4wDQoNCg==
