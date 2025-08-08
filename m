Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5183EB1E464
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BCF10E8E6;
	Fri,  8 Aug 2025 08:28:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DkTPYuaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D193410E8E6;
 Fri,  8 Aug 2025 08:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754641735; x=1786177735;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4OhZqUqagpP9qy/ZZMSU/F1/kKD4d5izdu4AhGTY9aM=;
 b=DkTPYuaBoVv73+xZaMHUD9BMJSuoXshfWQHIVUJ6S3x2Wr8Eft7IEO56
 I5SnMrCZMafLLbIbey7Jys8+FeGWVHThLC2WT+obpcIFCh41TbUYeLQbD
 MrkOkROWRd85Qcc2FL2RGgOuU45E/GR0czIicgVBG6LqCKwPgwoXDXlXH
 kc1y3D8qULZId6LOD7PeD5KUdPN5tHZicLpWUBeHjKGe4b8UmrutlJ4ve
 QQSmoV8p2nK9IIKfduce5HXvgT3QVm/dhsNAbFml2k0DdHTwaw0ijT7xZ
 i/FZaEyfa1pRbJJ5/dae89qQgBmx+ykR41fSc9eeprUJ3kUYNAbbO+VGm w==;
X-CSE-ConnectionGUID: vzl1rCpgR+qcqvDFw8+vDA==
X-CSE-MsgGUID: Unn3wdbKTSKuoC7TMs+wCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79544015"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79544015"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:28:55 -0700
X-CSE-ConnectionGUID: WdD7KVaxQ1ihyY8VQghrhw==
X-CSE-MsgGUID: nR7R5t4/RwaysjcNm24q8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165662908"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:28:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:28:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 01:28:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oicvFqKKxxLRxDNerump8uz6MkppD2Z8xgwTsj5eRi+qfN2V3I3uz8Wt7PPTnJKQqBp3nQ2Emqe/dGHy+n3DQ939U26SpA8VwYN0UqmjUvNAJ+fiYoESaY/BKYzO5M9nGU4KLbVlO0d2OyrrhBmEajYgjwrREFUbrMq9y1+Xgyz9Tcr0uEXqXLwdn8EBbv0XOPsIll0D0Gy+VPWkjaI8jl+n46edsyjzNqK42+Rxd+DKToMNmYRaLgH5ITeiysh9YtJdqeIDWYUW4bV0m/4khc5BRB///Z9SUzjEGdOd+b81qLYkpheVS+rxM0dt6zUU43jiv2K79u1Qt6e5RjJMOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4OhZqUqagpP9qy/ZZMSU/F1/kKD4d5izdu4AhGTY9aM=;
 b=Zw2m0cuxIF/meMEMBrr7KZfOQH5JLa+qQPPSyTm788+SBKsS0JXnuq9AMgeNsJ9xIkH40uHTFCNw7UCMNxD3/xitHF3+q5BB1FBBk8nkQLkLAxaFYjj+klL3BAMBFaAmET+LvKDhCjD9ESKgLscfLR82b8/WMu5DY7GSA6YY0+sC159x7+Pk/dZJ9yBFujaQ84EXnRzXaZVgWicN9e5t9Z2xziN5om45SPkfRdvrlce64hwHt1zKtW87MAs5C1Wa8fVKTOVxtZYzUFiEHexQ3Cvc+g7U1Peh854awNjB79H4j+nSxyxk51dB6Ln7VMDbkpwIlRZ1C/5kEE1oyINBNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4694.namprd11.prod.outlook.com
 (2603:10b6:208:266::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 08:28:51 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 08:28:51 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 19/19] drm/i915/tc: Debug print the pin assignment and max
 lane count
Thread-Topic: [PATCH 19/19] drm/i915/tc: Debug print the pin assignment and
 max lane count
Thread-Index: AQHcBd+14nc9vKQyKEqSpi0+qE+2d7RYcR1Q
Date: Fri, 8 Aug 2025 08:28:51 +0000
Message-ID: <DS4PPF69154114FB1EED14C3CA4A054B920EF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-20-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: 6bafa7ff-fb3b-4165-4cdc-08ddd6559af7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?c2NsTDVlTVBqMVdUZmJHcERSV0p1dWdiRnBRdVdJRC9FVUFwUE5Fc1JhKzNp?=
 =?utf-8?B?TktwTHp0OGdXWkdDVnU4MXBSdE44Uzk4a3lFWG4rc094dnorcUZCR3l3eWlP?=
 =?utf-8?B?d1I1cFZxcXQ2NDR5SXhKa2pOSlpGMHg3cVVYcnIwMTVBd1htYlhWbTdCenBN?=
 =?utf-8?B?WHVDaTY1THpqU1laSEdrSmpEa3Z6UUthOHgvSWlqS3NOMHFjV3ArOEY2cGlL?=
 =?utf-8?B?TEVzb0syVDhFUW1EZEdjNUthdWpScDZqMm5VZ25xQXVmUFNEcGZaVmVTOEhu?=
 =?utf-8?B?dFMyZW9nUldaMU5pcG91akhxOWNYbE55MVl4YjZVcmlxRHBKbkpzRjFjbFlx?=
 =?utf-8?B?Wml4aDlDOTJ3b0JnYWZ5ejNRa1M1OFlpVEM4SjZxRjU4bjNqYlRZNUR2Y2I2?=
 =?utf-8?B?UWRxQktDOUxBSlhXQnd4V05Ia0JtSmxJclFBSUJHdlpMZldBRDVLU0JoNnF3?=
 =?utf-8?B?Yi9KRVA5YmhnTmtJSnE2ODNYYW9scEduYVhsU0NLUzBuc3Z0VmR3LzRZN2Mr?=
 =?utf-8?B?VTVxdGZjZDVGZ1F4ZTY0YWNUTS9wbXRlcy9MVC9ReE9PZlRLanBWdTlxVVV4?=
 =?utf-8?B?T3cxRVpkL2NtSk9QUUNKSlhpaFozNUkyb2hmdzV1R2o2Z2dNRnl0NEk0WXh1?=
 =?utf-8?B?Zk9OMGk1aVNjTko5Y1dUV0hvRC9OM3FqaUFQS1BYbHdvUWFJREtoaHgwZkl0?=
 =?utf-8?B?UnY1bHVwQzd1aGc2RnU5WTRDbFduTzVwRmJxemVnTzdoMEZ5QnlJNjBvZVhu?=
 =?utf-8?B?bENSRGlSalVmVEJFeDdjSlRtT2J3ZFRzZ2tvR004Y1NBaFRVVnVJRmxIL3ZO?=
 =?utf-8?B?c0NrallGL3o5ZkZXSGlySXRIOGthQytXbXp5RUdkZDVSS3F6MmdJR2k3SE5J?=
 =?utf-8?B?MEpPMk56a1ZjRElEUHQ4eExUdm1ZQ2NzWEJwS1dKNnVnUFF1cmFFTU5lOUlx?=
 =?utf-8?B?Y3JrTFQrcEZKNDRBV1R1UU9UcWZlQnU0TmhVeC93TUNVODRhNzdkSitER244?=
 =?utf-8?B?UmxpdmxybDJCZm5mODRzY28zOVZrMmRjaFg0WjdvZUV6Sm5kN0x1OFFMaGxY?=
 =?utf-8?B?YUg2MUpKeFF1cExaQTk0ZE56Y3BNMHJLQjBOeTdEUXJEUC9iUXFxV2t1QXBS?=
 =?utf-8?B?allwT0lBRjZZWDNHbHkxNGllZmJ1Q0gwTmU5WVRYY2dMRExpdTlxWHBlcTFL?=
 =?utf-8?B?TkRPTVk1TTNlSndnZjVpaVdKZ0VLazh3Y3BFK1duanl0NUFnK1JBSjdhUG1j?=
 =?utf-8?B?dDNoeXhpSFEvNWw2ZmdDd3d3TWFzbm80cHdLdkdsZXBtQ3c3QVhGbHlpaW9h?=
 =?utf-8?B?bDV2L2tuc3ZmMmFqSzZiY2ZBMHRkQ2llTkFsUzg3eGFRaGplbjRqYUpxbzNh?=
 =?utf-8?B?aGxTRG55YWExNCsyVDN1NXlsT3hjWmd1Yld2Wlk0blpnT2d5ekVVSTVDNklU?=
 =?utf-8?B?YTkxWC9wMkVwWEtoS3NtcmkwWVVkTDAxK1RjdzVjTEh2M0Q1UnBMUkJEZENK?=
 =?utf-8?B?SG00WHY2WUJxTnRJQlczOWh1QmNTejdDak5BS1VDZUVlOG9FY25mNXFRbTRp?=
 =?utf-8?B?ZmR2NFBUQmxMWkZEWGJWMUROaStVQVFhMzZVa2wzemNHaG0zLzhRK0tRNFFu?=
 =?utf-8?B?dks4WXBwYzdMQjVnV0lEV1ZGNTZtYWg4dmdTZktYeWhoQjROM2lqVWZYS1U5?=
 =?utf-8?B?UWFrTHhKVTdtV1VwOGM1S0svSnRzenlHZnp0RXZyS1hzL0NCeU1VazR6U1NK?=
 =?utf-8?B?eWpTQ2x5UEVQSnB2cEFtNjBnUnI2NGlDMXhzbG1ZTHllSG5DNWV2MnpXbGRX?=
 =?utf-8?B?bTZqd1FNUTBmNG5qa0lSZlJDaUlyNGl4VTRYOTRQOTlKU2dmejFDZ29mcWhQ?=
 =?utf-8?B?L1BGK1FJQ2ZFRDViM0pXL3VnUjlldFI3RFNqWkJkTkVOMnV4U0R6bHlLNGs4?=
 =?utf-8?B?eE5Nd2RCQjk0RUpXd042T2ZXTkhuZ2VJbncvUTdLUitCSVQzMkczRitEZlp0?=
 =?utf-8?Q?KXFmeYF6Nu6D7b/sJFBdq8gkzoa2dY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THY4WDIzYThPYURPdDkxWStVWThuRHV4MDJnS3ErcVlBQ3htbDhPenQ1aFYr?=
 =?utf-8?B?U25MbDhOSUg2NG4vNmlIVlFudHo4SEVrL2FlNm9vNWxDZFVNci9uU0c5NGYx?=
 =?utf-8?B?UXRwMmhzcUZia0pvS3FCU04zRjlhSVVrZEhJRXVuVjVEaHIwZGhFaXN1Vkpk?=
 =?utf-8?B?N2dBM1RzTU9BVW1hNnRYK084a2VSSVdrM2xjaWtRMWNMbEpiaGErb3JuMThR?=
 =?utf-8?B?TTR5N3duMkFXQkN6c3FDdU9mK0d3REFiR1FOTkhXQjR3amdIM1o5eTc2cGFP?=
 =?utf-8?B?UnlOTWZQUk1MQXdvSXBmY3d3d3h4SnBvb3lxcTlSUzE2Z0dFMEFGczVZdFVq?=
 =?utf-8?B?MDR0ZmlPY05KVkcyaUtaR0xkcGUvVllrbmdjL0RVQW1GSDFoWFhQWi9RU29L?=
 =?utf-8?B?dTh6REludFlhN210aGdvb2tmSEhidWg2SWhjcFNnZ0RBMGNDRW1SZHFTTm1K?=
 =?utf-8?B?WkVtdlVEMmRmVFZSZm9vbTBVSFFhM09wZFNGNmEwNnUyVVFVVTlBNmVYaXpE?=
 =?utf-8?B?Qzd2SzFFeTdyeFkvMDFZOThnYnRJb2d5YWZONXNuM1QzK3Z5R2plRklkNUhF?=
 =?utf-8?B?Q1I0U1d3MGNnbG43ZERkTGNHckNwZmFhV1J6UGhRYTB5dEtqVFBKbVB5QWdP?=
 =?utf-8?B?ckRqajVBSEdIQldLdnEzTGpzNXVhYnkvTXI4UEk2cjlRVnFkdFZuUWkxRDIy?=
 =?utf-8?B?Z08vS01Tc0F6MDlkZkVyZ3JmMDJQZzBsZCtSSTc0S0swMzFXYjdmc292dTN2?=
 =?utf-8?B?WTVjTDhtYXZ1M3B3VEQ4ZHpzclIweWVGaks4ZHpjNVB0N3pQeC9qS1dxdVVh?=
 =?utf-8?B?Q2Y0aW1JUFM3QkJYTlJTVHhpME1STmx6QXpPYWNXdG5HRnBWNlZKRWlCZmRa?=
 =?utf-8?B?YjBSdUdBYWI4TjRYdmdoTkJ1b3ZBTDczdElSemFNeTZVS3pZOUpXUzdFT1BZ?=
 =?utf-8?B?UnRCSlJjNzFSMW9aT20rNWhpMUpwS0lUcXcyckZOaFZOeGlLZm9FckRXMkdC?=
 =?utf-8?B?QzdhMFR0cStZbkRHN1JLL2FwZmFrU3JJVWNzeDQzQXRIM3NLL2gxbDV5QmxB?=
 =?utf-8?B?UWFvemN3bTZ0ZkxUeXIxY0FNL1ZvcXBMT1dYRTZyYmhJMSt4TnVkdEx6aHRh?=
 =?utf-8?B?UHdYS0MrTGxhNjV3VDc3MFl6RzBrUzJ4TXpvaXpwS0tOcTl3NTNkQVpGU0cx?=
 =?utf-8?B?L2d0MmFMWFk1cWlFVnVSUGpyTDV4eUlTVjZCazMvOUZEMDgvWmV3d00xYTVa?=
 =?utf-8?B?TGJrQklUVTBwSUJHazd0MmVucFRybjJkV3dmQjZzcE82bG5BSktxaXlYR1VZ?=
 =?utf-8?B?RHJyMFNtdkJIQ05pQzhBcXUrZmtZY0UvcWF5bTdxbHBvUFpaSmxUanl2em16?=
 =?utf-8?B?T3BhTjllNGR5RzNPN2dJZnpsMTFOemsxSDJUdUpiMUdrMU5tVTdvV2VqQmlS?=
 =?utf-8?B?Mk4rd1QvdEtxRVd2VHZCa256MTQ3dlBabUdxOEdzZm4zckc5Zm12VHIydDVl?=
 =?utf-8?B?V0E0Rkk2NXk4NkhNODJxeVVqWERWTWljTlhVMElkV1FTbnV5QkQ3WXg3QjRV?=
 =?utf-8?B?eTBMT3JjdHREbjVzK201cXdTdjdqZUZvWmdQeHdBMGdTQ0d0VktXdVdvNm9O?=
 =?utf-8?B?L29qM1N5QWFrTnpXa1VGMkFrVkhnVW13a3NnTHRRYXBONytFWFdhSXVjZUZC?=
 =?utf-8?B?cDlvM0lRditEYlhGRXlycm1iU0loK1dSMzFsRGdWMCthUUpzbFdpRWJsMFRn?=
 =?utf-8?B?cmRzSU4yd2RmVVYzRjhtNmE0aE1RU0RaRFhnYnA0eE1VMEpXVEg3d3Z4cm0w?=
 =?utf-8?B?S2NMd0FnRWpqWm0rYzRmUmk1K0FPVzYveklBcW9sMCtxT3F1YXVvd2RyU3A4?=
 =?utf-8?B?SGZsUFB6eWtpMmxRUW5DZDhLcHRaWlF6YXpwTGdMb2RKRGNFNnNYSEc4bnNi?=
 =?utf-8?B?WGdac093TUM1S1BkaHJBVkVJOXVlVTJ2akM5d3NqbE1KWHg2S2tZdktSZzlT?=
 =?utf-8?B?Y2thT2JtYkJrV2M0V3lBMEwyWk95WU1DSC9kbXRERklrdTBWdzlER0d4Qkoy?=
 =?utf-8?B?ZmNpOHdrZnRYMis5T3RZYUVIQ2RIcDY0NHhDTTV2VlAyV29zUk5XQnNpS1gv?=
 =?utf-8?Q?ogSwHVJ6fispZjd1tzPtRbWtw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bafa7ff-fb3b-4165-4cdc-08ddd6559af7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 08:28:51.6881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kkzPiBEikq29xVkCWe174UiLH1agdo7v+PM/o4QfOLfhC92EOs8b/9jpm1b+KX7uQ9GZYkgwvu29yq0mtRMYMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxOS8xOV0gZHJtL2k5MTUvdGM6IERlYnVnIHByaW50IHRoZSBwaW4gYXNzaWdu
bWVudCBhbmQgbWF4IGxhbmUgY291bnQNCj4gDQo+IERlYnVnIHByaW50IHRoZSBUeXBlQyBwaW4g
YXNzaWdubWVudCBhbmQgbWF4IGxhbmUgY291bnQgdmFsdWUgZHVyaW5nIEhXIHJlYWRvdXQgYW5k
IGFmdGVyIHJlc2V0dGluZyB0aGUgVHlwZUMgbW9kZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMgfCAyMSArKysrKysrKysrKysrKysrKy0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCBmNmJjMjUzYmVjNTU5Li4w
MzMwYjQyOGViMzk4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+IEBAIC0yNzcsNiArMjc3LDE0IEBAIHN0YXRpYyB1MzIgZ2V0X2xhbmVfbWFzayhzdHJ1
Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAJcmV0dXJuIGxhbmVfbWFzayA+PiBEUF9MQU5FX0FT
U0lHTk1FTlRfU0hJRlQodGMtPnBoeV9maWFfaWR4KTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgY2hh
ciBwaW5fYXNzaWdubWVudF9uYW1lKGVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQNCj4gK3Bp
bl9hc3NpZ25tZW50KSB7DQo+ICsJaWYgKHBpbl9hc3NpZ25tZW50ID09IElOVEVMX1RDX1BJTl9B
U1NJR05NRU5UX05PTkUpDQo+ICsJCXJldHVybiAnLSc7DQo+ICsNCj4gKwlyZXR1cm4gJ0EnICsg
cGluX2Fzc2lnbm1lbnQgLSBJTlRFTF9UQ19QSU5fQVNTSUdOTUVOVF9BOyB9DQo+ICsNCj4gIHN0
YXRpYyBlbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50DQo+ICBnZXRfcGluX2Fzc2lnbm1lbnQo
c3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAgeyBAQCAtMTUwNiwxMCArMTUxNCwxMyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF90Y19wb3J0X3Jlc2V0X21vZGUoc3RydWN0DQo+IGludGVsX3RjX3BvcnQg
KnRjLA0KPiAgCWlmICghZm9yY2VfZGlzY29ubmVjdCkNCj4gIAkJdGNfcGh5X2Nvbm5lY3QodGMs
IHJlcXVpcmVkX2xhbmVzKTsNCj4gDQo+IC0JZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiUG9y
dCAlczogVEMgcG9ydCBtb2RlIHJlc2V0ICglcyAtPiAlcylcbiIsDQo+ICsJZHJtX2RiZ19rbXMo
ZGlzcGxheS0+ZHJtLA0KPiArCQkgICAgIlBvcnQgJXM6IFRDIHBvcnQgbW9kZSByZXNldCAoJXMg
LT4gJXMpIHBpbiBhc3NpZ25tZW50OiAlYyBtYXgNCj4gK2xhbmVzOiAlZFxuIiwNCj4gIAkJICAg
IHRjLT5wb3J0X25hbWUsDQo+ICAJCSAgICB0Y19wb3J0X21vZGVfbmFtZShvbGRfdGNfbW9kZSks
DQo+IC0JCSAgICB0Y19wb3J0X21vZGVfbmFtZSh0Yy0+bW9kZSkpOw0KPiArCQkgICAgdGNfcG9y
dF9tb2RlX25hbWUodGMtPm1vZGUpLA0KPiArCQkgICAgcGluX2Fzc2lnbm1lbnRfbmFtZSh0Yy0+
cGluX2Fzc2lnbm1lbnQpLA0KPiArCQkgICAgdGMtPm1heF9sYW5lX2NvdW50KTsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgYm9vbCBpbnRlbF90Y19wb3J0X25lZWRzX3Jlc2V0KHN0cnVjdCBpbnRlbF90
Y19wb3J0ICp0YykgQEAgLTE2NjQsOSArMTY3NSwxMSBAQCB2b2lkDQo+IGludGVsX3RjX3BvcnRf
c2FuaXRpemVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gIAkJ
X19pbnRlbF90Y19wb3J0X3B1dF9saW5rKHRjKTsNCj4gIAl9DQo+IA0KPiAtCWRybV9kYmdfa21z
KGRpc3BsYXktPmRybSwgIlBvcnQgJXM6IHNhbml0aXplIG1vZGUgKCVzKVxuIiwNCj4gKwlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJQb3J0ICVzOiBzYW5pdGl6ZSBtb2RlICglcykgcGluIGFz
c2lnbm1lbnQ6DQo+ICslYyBtYXggbGFuZXM6ICVkXG4iLA0KPiAgCQkgICAgdGMtPnBvcnRfbmFt
ZSwNCj4gLQkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKHRjLT5tb2RlKSk7DQo+ICsJCSAgICB0Y19w
b3J0X21vZGVfbmFtZSh0Yy0+bW9kZSksDQo+ICsJCSAgICBwaW5fYXNzaWdubWVudF9uYW1lKHRj
LT5waW5fYXNzaWdubWVudCksDQo+ICsJCSAgICB0Yy0+bWF4X2xhbmVfY291bnQpOw0KPiANCj4g
IAltdXRleF91bmxvY2soJnRjLT5sb2NrKTsNCj4gIH0NCj4gLS0NCj4gMi40OS4xDQoNCg==
