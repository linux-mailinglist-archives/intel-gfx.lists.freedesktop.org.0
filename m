Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D0BCAF51E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 09:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1718310E4B5;
	Tue,  9 Dec 2025 08:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFKd34+2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3925F10E1C0;
 Tue,  9 Dec 2025 08:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765270064; x=1796806064;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=QhKL+Mbpg6+inI8oVfJZ4V5B/tRgcUps6dDlOtPdBbY=;
 b=CFKd34+2dRCUgZp8WietCWbfdPT1/8O/gPQgTjmSjKO3RkW1ijtaEy5o
 wUcs4hcnK8MukpiSv6Je3eLd1BcnsUsPZi91Ayfh9qlAwwRp1iiuz8aaT
 u+rSoxqCghe1iQnEBIHP7UAUQ0dIDSmwuiueg7QfI1AnUr+mptquawguW
 cZS5GydSzmGPXE/I36IA13KF7SQ8XIUo9Ajln3BbofJvGU7tTVbAIvpf2
 1UCKkwAScB7BbbRubOrlaj/HU8KKw0LQzC2WsCqPK3tKETjr3WPaY9goW
 p/zoWwnnKlevmJafyyov1RqJWkZXc2AVGQZbdzHFVzQeZPnF4a69d9q/y A==;
X-CSE-ConnectionGUID: Vdnk6RjlQ6OJO+Xv882oqA==
X-CSE-MsgGUID: g31pxHicTf2OXOyQE1OmSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="84828277"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="84828277"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:47:40 -0800
X-CSE-ConnectionGUID: 3NL25gwlQDWll3T/1OjHWw==
X-CSE-MsgGUID: CHEJqrJCQyi1c578pdrsYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196957487"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:47:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:47:38 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:47:38 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:47:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rpFfa3Nyprgu5XU0GWG+jxlq+SYjrUG2Vig3gb+dPto/Rb7yKg3U1MlNMvEyCEn7okhJJ0XqBBejrrW/TtLGa5otwYcJCQr7aArBqxxzBJQqn52LtvL8L9IQuN2mLzQOVO04h8i2z/MeFnyDwUKqycr2++zw3QaFZK1o/Jh8o5GdWg0Ky7puX9w2WzzVFpVCdzwFAaJRaBhPPDH3ZwpfF1ZogCE55MS7wBuxkSCgvgW6hq5z4SMCvn6SBOlOpJjD3fwB4BZOks/RJiehvysH8NkhXK3I7EWjCNblYdnzzOn2jOdC6Ae+LcRXN7pia4bmx/8TDOKvj5WlP/oYnHGIPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QhKL+Mbpg6+inI8oVfJZ4V5B/tRgcUps6dDlOtPdBbY=;
 b=bM37x2NwOxrexnB205m4fx+iIxBcpK+FjA5jK1AnFVnXtfvPZ+D2oEAuAoWFaPEjGq7DA6Q053LFYExN/wdiQt+hhUAyTOsSOL6VF6yOAfdsGWJesNQYefAfAKkgzYTPvXjPrMctqf6aaKrUIFu9n7UlvaB9R2+mKP//iX2c/0J2iG71pEuc5Mv3TPAro6U5cV0JToIm9xWWJEMAIbSr/agIbG5GK/1A2LsK9yl2yZzelQ+fhCcTO95upaQ+tr85whOO+eoyiotP79i+eWjzxIYHk9SEzUgxf+Fg/iMtpU15+ze9AlPxS9XgyBMeRRVjpHovHuN5BtljiXKqCPXAnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7285.namprd11.prod.outlook.com (2603:10b6:8:13d::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.14; Tue, 9 Dec 2025 08:47:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 08:47:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Thread-Topic: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Thread-Index: AQHcX9szI6b4Jww7+kC80UqxF0B6lbUZETYA
Date: Tue, 9 Dec 2025 08:47:35 +0000
Message-ID: <159d7d279c48cc07847b03e3466e78976dc3d086.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-39-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-39-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7285:EE_
x-ms-office365-filtering-correlation-id: 814f3490-b139-4cf9-c8e5-08de36ff99a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MjVGZzNSdlp3eGl3WVpkVGJsUGgyVUVta09uY1hzNmRTUWxEbmh0Q3IyUWlS?=
 =?utf-8?B?T3kvRE9maHdLUnVKY3hucXgwSG5YZHNEdzY0dnU4MFgzdnJpdndWOGhNSWVO?=
 =?utf-8?B?S0lwNUxBTVR0S0pwaC9nbTYweWV1OW0ybzdBSHBhSXZzYUxhazRmaStIQ0Fx?=
 =?utf-8?B?L3VVWGVYbHNZczhOcGlnRU9SUzNHRWRFTFZiNktFZUVhNmMxZDRhWHdia2Nu?=
 =?utf-8?B?V1JPU3A1a3Zqc0ppZndSK3FrdFZmRHhuUWxDbVNOVlRuMERDbUl0cjJXWkdk?=
 =?utf-8?B?dVVLRkFPdEwwaHBrSTNRVFhEdVB6RHdmNVQyUlBiUk9vRG9PRkczQ0NrVWZt?=
 =?utf-8?B?KzYxT1k4cUhKdDlsdTlWN1Ewb0Z1RzRtQkFlQnVhTlZWWUZLUnB5SWpubkhL?=
 =?utf-8?B?ZVh2NmJrYjZqMzNFc1ZSTGczOWVxbUd3OHFwbnljUXE3eVpNcVN4V1JWVjhP?=
 =?utf-8?B?T3V5WFJEVUNvUjV2WExjVjN5SlJ1MkZ0NGprM1VoK3JmeHFJQlZqQk9iMUhn?=
 =?utf-8?B?aDNuOFRRRXA1WFBPR0pTN1MwUWJLeHYzdkxXbnJyL2JvQ3VZeG1CNFBHZ3Na?=
 =?utf-8?B?ZzBtVU8zblU1Z1IxUWtxWU56UVIrUnJicER1Skt3ZVd0K2QzRDJzQnBWQ2No?=
 =?utf-8?B?QjFpeHU2TjBHVnlLNjJtb1lwU282N3Fqd2tzSkFqRHJ5TGJOcUsrOXF0eTI4?=
 =?utf-8?B?bEJYRnpjcEFnOXVEdUVzM1pUZ0Q3dGs4UDhqTlkxT04vdEZuR1A0K2tLSGFz?=
 =?utf-8?B?allsdnJHT0FZaDRWVzA2SUVIV1ZhWVlHZXRNVGliMER1Tk5NdDdLc09vQjB0?=
 =?utf-8?B?RDJmMkhsclhPTjhtK1o2b3Z2WGpGTUxnS0JlOHRXcG9SeXBLVitPbzQ1MmZq?=
 =?utf-8?B?emVISVc5S0RiNFpWd1pKQ1FqcUNpK3E0cTF0czJJRXJEK09FZURtUzQ5NDZ2?=
 =?utf-8?B?QytkbE4welFkRWltUlgwdW9RTEhRVWVINm9JODFoNjE5aXlWNGhTaHF6aWlh?=
 =?utf-8?B?TktxQkxVSzVlOFZnWHYyek05MElWVEtNbW9rMyt1aFV1eXZpbmlyNjd4YUd4?=
 =?utf-8?B?dGhJZzRhWSs1QUVXYUViRVBFQU1UMXNJcHhIZEFLczB1NnJMRFpCaXA3WXg5?=
 =?utf-8?B?TVhtSG5zb3pNNVlvWFVaT2FhdFN2RVBIZGllYTJPK1JLRXRYY0V4MWEwQmdM?=
 =?utf-8?B?d2RrdDlEb1A1aGJKVlVmQXVzeVpORU1zOVlZQXdHUzlUMTZIOXY4MXVNaHFS?=
 =?utf-8?B?WDBXektxQ0JOTXkrNEFNYTJERmtTbEZSN2E5ZWE5UndqQmVIMHZYKzhpamds?=
 =?utf-8?B?bFk5TmxZbHZmUnFURldmRi9hUVF4NzhVTjJkOHAwcGNNbUFNL1pBN1NDOFJk?=
 =?utf-8?B?anNMYklYZlNEMytlRVlWVHhvZ08vYmYwSzN3SjFiV1J4RFp0ZEU5NnVwQnFW?=
 =?utf-8?B?S0lITEdvbXBiUHc4RjVyZThaMTlaOEZSUElyVXNGbGZaWGozUzdZalhmU2x3?=
 =?utf-8?B?YWdjMUJzY2N2ZFNlSWQyak43bnF3TE54c2NIUDJjSlZTNVlaM1NwWTYxa3Fw?=
 =?utf-8?B?R2JUWnI1WVRUcko4MW9TQnZrWnFEdFpmaTNLMVhaQWV0Y0xlcFQ3WUYwV3Zj?=
 =?utf-8?B?NWRlT0l4bjZVbXdLMXZGeFRjSjAveDgvdU01cXdtbkdMUWZUaXFORy83OEpC?=
 =?utf-8?B?WWM4YXFicnVVb2ltOFFLYlRBaGU3RnVtTTlRbU9rMm1IVzlLeEtGcTJWRDZM?=
 =?utf-8?B?VUpIV0E3UUdQR0pnNnRYTlRRdExsMVZIemF4ckxZWHFHQ2dhbGJ5aDVqdVZZ?=
 =?utf-8?B?Wm1MeisxUXV5V21KZ0Zrb1BDUk5ya2hCNG5xOU8weVlURmhvMWNyck5VbUJJ?=
 =?utf-8?B?OEpYangvb0ZFcU9EMERHb0o3RnBIMnZtU3VsZW9PTWxoQmZ6bS9SSDVtYmJX?=
 =?utf-8?B?S215N3hsdTZ0emZidm5NbGJqM1VsMTNRSGNwTWo2clFlQ2F5b0lwQ0RVRDg5?=
 =?utf-8?B?d3REaUY2a1Jzcml2RWtySXV0cnpQSnhGT3VpSW9NZHIxRWZoT2VXRDlLSUZX?=
 =?utf-8?Q?KIRH9b?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1h2NDhYOU8zSUdlaklTRkdWVUc2bXk4ekgrVlJIeElIQ1Q2SlhWanpwL1dk?=
 =?utf-8?B?R0NjOVQvTDkwN2h4OE9OY2lraDR1WTBSWDFSQ1QvWE1GTHpUYUNOWEtKdWVE?=
 =?utf-8?B?Q0tadFlxT1pSdEpLdlBteEZsbjhZV0VSbmZtSkxsWGdKdU90YThudnFjQTV6?=
 =?utf-8?B?V1grRXRhQ20reEk3dnNEdCtOL1FycS83M2c3bmtIdjdWV0d1R0FOSEVFTEcr?=
 =?utf-8?B?TVp1YUs0Z3dGS09Oak01dEpUeU0ra25yMmFsVWQ4SXdFQVA1ZTVSZ3doZTdG?=
 =?utf-8?B?UUU2NXZPakRsbEZaQkZHcE40QWU3WlBpeXA3SVl6TW1QL1lBVGJoK2lCaGlJ?=
 =?utf-8?B?ejEvbnE3Y0d5TG5lVDM2WUZiSzNvRFJVWGlxZStweFRGOGlzYWc2L3gzRkdj?=
 =?utf-8?B?Z2d2djhtb0lneTFSQ3RFOGlxVHBLa014WGhpaFg4NmM3bFdSUEpKK0gveEMv?=
 =?utf-8?B?djJIMFV0NTQzYm9jMUhxbkZ4cm95dlJPZ29STGVxa0pkQ05SWVJYTmcraG43?=
 =?utf-8?B?c010enI0NWFQT1RsZzJ6YnFleEMxK2RPc2VqM3lhdVl3MENSSzNKODcrcXBn?=
 =?utf-8?B?Z1FxajBUdHR6S214TzdmL2dLVjNsUHpiS0R0WDE1bjdVclI1Y0FEMlVQMlVm?=
 =?utf-8?B?WTBVK1ZtR3JwZllxRzFvUUlBbkc4c0w5bnJjTmtKZ1ZyTERxdHdWMm0vV0li?=
 =?utf-8?B?QmV2ZFRhV0EzcjRmSjRrNkxmRGZLc04rYWxCZmdJY1pxS1o4cHpaK0R0UE83?=
 =?utf-8?B?R3JRTzJSWjliWkc3bTB1RTZ2SGE2TWRtVXBqVkNNZlpXeTZ4d1VuV0VTc0Vw?=
 =?utf-8?B?NGk0c1JBcXNMY21FTFpTTHRzRmhKb3BSVTZXamxmZVY1d1dwY2V2RENoK2hL?=
 =?utf-8?B?WkQxdm0vc1RxTi9qSXpDQUN4a1hUMjFod1pVbkZmb05jK2Q0enZ0S2F3MTFu?=
 =?utf-8?B?SlJxM0JyNTMwaGhMZHpUczVGV3VoaEgzeDM5T0R0THkwQmozY1BLb0EzTUdR?=
 =?utf-8?B?NTVoMDl6emdhdms4WjlHUGVLUFlSbEs3M2Fwdmt3dy9hQWxxUUtUTVB0bHhW?=
 =?utf-8?B?WVFNUDNCTkpEYThST0JYRDE5R0dCbDI4ZkxiV29kRFpGcFhmN1JmRjJORGZB?=
 =?utf-8?B?QkNZblBGN1Jsc0VrcXZFTUdjVXNBWkVROXJTL3ZXTy9iSHI2SUc2S3doWlVq?=
 =?utf-8?B?QnpaTDNqcnkrNU1tNi9DZVZOemsrS051ODh4dGhkRFJPQWhadElwS0pjUWZt?=
 =?utf-8?B?dlIzRTkvbWVrYUtrYXhJakRwT1RqeUNKYU9pczVNRXoyQy9wbUtlNW5aWjky?=
 =?utf-8?B?VGxPc0FIQnR0cW9kMnBHWjNKeGdjOERWYTlmUWk5MEdYQVpNZE16M2sxQVZM?=
 =?utf-8?B?Zzl2bnVsalNwTXloYWduSk1RZFRqQldsL3dwRlBBWVpzUXp4VU5aU3lRbVhX?=
 =?utf-8?B?cHVaa2svMDk2UGJFR0pGZCtkaTZ3dHFYaStCVjRoU0t4UXVSUHcrUTdWYkpq?=
 =?utf-8?B?bDhZaGpoSnBDcjlMc1FQMUxiOTJTUDBqNDRmZG5ZTXVnU05meHhBM2lQbHdw?=
 =?utf-8?B?YnFtclZTNVlmQlFCOXRxcWJPWnNJMk00ZS9hYUwwUTBGbFF6dmt4aCtjQ3BX?=
 =?utf-8?B?QzlBaEhIMWN0TmlpeHJqMzZSeG1QTHVwamt1dkc0QkVTajBwRkVYOHlFS1Qy?=
 =?utf-8?B?YTNhYlBjUzZVZzdiNGhva3Q4OEtlQTJKMEJ5MFJvMW1XY3ZLUEJVd1VHeFA4?=
 =?utf-8?B?eWZqZm1vUzhWOXowY2tTL3VlWDdYaTF4bWJVZWF3Ym01YU5NOGd4d05heUth?=
 =?utf-8?B?bVpCUEdPdlo2VjZ2cklMZnNuUzBKRXp4a2ZkbWp2bUlsNkp0UW1LUUdCWlU1?=
 =?utf-8?B?QmJSYnFVMmFsdlVleTFvek1BTXRtSWlKQTlNS0xEZEM4YzdvSnA1WU5RRU12?=
 =?utf-8?B?MEhwcDY1M2pva1I5Z0Fad2NRMWZsdWlWLzFqOWc0SnZMMWpiUWR0VEpiNk1D?=
 =?utf-8?B?cjU2dmxYVnVabTZ6YUtvdjViK3crdUFLekJ1ZERmaWN5V3NyZ2M3aFdxWHBE?=
 =?utf-8?B?dmlPVk1pVlBuNFcvY2JNU21BdnExZjZRUlhqaEwyS2lNVGlFUVFyU1JHK1gr?=
 =?utf-8?B?eVJ5Q1VCVWhDQ2pmTHZ6RDFTUldiQ0dDOFJ0d0VCc0MwdUpHZVZZMENMN1Fx?=
 =?utf-8?B?dThRTlFOZHBoalp2WlNGaWkvMDQ2dDBpY0FCaFR6Njd2Q2hnS25iQ2FMSHhU?=
 =?utf-8?B?VXVwK3gvMmIzU0ZnekRmb01tNGx3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <761681CBAED2B74EBB8394A423526D8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 814f3490-b139-4cf9-c8e5-08de36ff99a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 08:47:35.5119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nf/sgaZ48D80gbxQ9VNL5VJwFxFnfIWfzkoOrmE8dWla7Az92lKqlmBO3glLvdEeKfHrj6Y2C5rSRAr1mnmyVfD2H9ih9uMsNiz/hLndyb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7285
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1v
dmUgdGhlIGluaXRpYWxpemF0aW9uIG9mIHRoZSBEU0kgRFNDIHN0cmVhbXMtcGVyLXBpcGUgdmFs
dWUgdG8NCj4gZmlsbF9kc2MoKSBuZXh0IHRvIHdoZXJlIHRoZSBjb3JyZXNwb25kaW5nIChwZXIt
bGluZSkgc2xpY2VfY291bnQNCj4gdmFsdWUNCj4gaXMgaW5pdGlhbGl6ZWQuIFRoaXMgYWxsb3dz
IGNvbnZlcnRpbmcgdGhlIGluaXRpYWxpemF0aW9uIHRvIHVzZSB0aGUNCj4gZGV0YWlsZWQgc2xp
Y2UgY29uZmlndXJhdGlvbiBzdGF0ZSBpbiBmb2xsb3ctdXAgY2hhbmdlcy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmPCoMKgwqAgfCA2IC0tLS0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgNSArKysrKw0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gaW5kZXggOTAwNzY4Mzll
NzE1Mi4uOWFiYTNkODEzZGFhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMNCj4gQEAgLTE2MjQsMTIgKzE2MjQsNiBAQCBzdGF0aWMgaW50IGdlbjExX2RzaV9k
c2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKg
CWlmIChjcnRjX3N0YXRlLT5waXBlX2JwcCA8IDggKiAzKQ0KPiDCoAkJcmV0dXJuIC1FSU5WQUw7
DQo+IMKgDQo+IC0JLyogRklYTUU6IHNwbGl0IG9ubHkgd2hlbiBuZWNlc3NhcnkgKi8NCj4gLQlp
ZiAoY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50ID4gMSkNCj4gLQkJY3J0Y19zdGF0ZS0+ZHNj
LnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBlID0gMjsNCj4gLQllbHNlDQo+IC0JCWNydGNf
c3RhdGUtPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDE7DQo+IC0NCj4gwqAJ
LyogRklYTUU6IGluaXRpYWxpemUgZnJvbSBWQlQgKi8NCj4gwqAJdmRzY19jZmctPnJjX21vZGVs
X3NpemUgPSBEU0NfUkNfTU9ERUxfU0laRV9DT05TVDsNCj4gwqANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggYTYzOWM1ZWIzMjQ1OS4uZTY5
ZmFjNGY1YmRmZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gQEAgLTM1MTYsMTAgKzM1MTYsMTQgQEAgc3RhdGljIHZvaWQgZmlsbF9kc2Moc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+IMKgCSAqIHRocm91Z2hwdXQg
ZXRjLiBpbnRvIGFjY291bnQuDQo+IMKgCSAqDQo+IMKgCSAqIEFsc28sIHBlciBzcGVjIERTSSBz
dXBwb3J0cyAxLCAyLCAzIG9yIDQgaG9yaXpvbnRhbA0KPiBzbGljZXMuDQo+ICsJICoNCj4gKwkg
KiBGSVhNRTogc3BsaXQgb25seSB3aGVuIG5lY2Vzc2FyeQ0KPiDCoAkgKi8NCj4gwqAJaWYgKGRz
Yy0+c2xpY2VzX3Blcl9saW5lICYgQklUKDIpKSB7DQo+ICsJCWNydGNfc3RhdGUtPmRzYy5zbGlj
ZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDI7DQo+IMKgCQljcnRjX3N0YXRlLT5kc2Muc2xp
Y2VfY291bnQgPSA0Ow0KPiDCoAl9IGVsc2UgaWYgKGRzYy0+c2xpY2VzX3Blcl9saW5lICYgQklU
KDEpKSB7DQo+ICsJCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlw
ZSA9IDI7DQoNCmZpbGxfZHNjIGlzIGNhbGxlZCBieSBpbnRlbF9iaW9zX2dldF9kc2NfcGFyYW1z
LiBJcyBzdHJlYW1zX3Blcl9waXBlDQpyZWFsbHkgYmlvcyBwYXJhbWV0ZXI/IEkgc2VlIHNsaWNl
c19wZXJfbGluZSBpcyBpbiBWQlQuDQpTdHJlYW1zX3Blcl9waXBlIGFuZCBleGlzdGluZyBzbGlj
ZV9jb3VudCBhcmUgZGVjaWRlZCBiYXNlZCBvbiB0aGF0LiBJcw0KdGhhdCByaWdodCBwbGFjZSB0
byBtYWtlIHRoYXQgZGVjaXNpb25zIG9yIHNob3VsZCB3ZSBsZWF2ZSB0aGF0DQpkZWNpc2lvbiB0
byBjYWxsZXIgb2YgaW50ZWxfYmlvc19nZXRfZHNjX3BhcmFtcz8NCg0KQlIsDQoNCkpvdW5pIEjD
tmdhbmRlcg0KDQo+IMKgCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY291bnQgPSAyOw0KPiDCoAl9
IGVsc2Ugew0KPiDCoAkJLyogRklYTUUgKi8NCj4gQEAgLTM1MjcsNiArMzUzMSw3IEBAIHN0YXRp
YyB2b2lkIGZpbGxfZHNjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0K
PiDCoAkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gwqAJCQkJwqDCoMKgICJWQlQ6IFVu
c3VwcG9ydGVkIERTQyBzbGljZQ0KPiBjb3VudCBmb3IgRFNJXG4iKTsNCj4gwqANCj4gKwkJY3J0
Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBlID0gMTsNCj4gwqAJCWNy
dGNfc3RhdGUtPmRzYy5zbGljZV9jb3VudCA9IDE7DQo+IMKgCX0NCj4gwqANCg0K
