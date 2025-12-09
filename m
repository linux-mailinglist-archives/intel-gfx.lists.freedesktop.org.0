Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3286DCB0BD5
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:34:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E579010E60D;
	Tue,  9 Dec 2025 17:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTbGSExV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FFE10E60D;
 Tue,  9 Dec 2025 17:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765301649; x=1796837649;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=EUnKgdjFCe+GMhqTup33HjVe9EO4zd/KNOTz7h0NFt4=;
 b=gTbGSExVGQbprRVnjC3G69pGLDajwQBF+GJ7lzmL9hB2H089xayMO0tG
 G+7iHc4Vb7ehUqQOIf3BFCFMT6H9956love35CZwBO+2VroB2j2RFiffI
 YTg7ZlmZmapLqpqTYmNVJ4AMfQzugovoFz/xtCPkQPXT/XSGW+3L0A09v
 1pr4ktBGAjuv+0eytk6+Ug6mxtAn2L9cO4etGZS8Ji/t+rXznAJ6TauSc
 5ikd83UwX7O5qbGqR8+fwbZaxqFOp9ZP1Axe/MyVcL1SM9Bt+IDpX2xse
 GKz8E5Yo06RBjcxSELWSzGiAhFJiSFRgx6RdEDIecE8GrO+yAKK5uSRWH A==;
X-CSE-ConnectionGUID: nHEtN7E3TfeDib2cesAGOw==
X-CSE-MsgGUID: pFQqSn0tSRyUFMUPKCciYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78733189"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="78733189"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:34:08 -0800
X-CSE-ConnectionGUID: YiWMQk04Qv+u5blC1lzWCQ==
X-CSE-MsgGUID: N0Q/35CyT+mLzW4GWijw2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="196740261"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:34:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:34:07 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 09:34:07 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:34:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J465Ee0tdGLMJQVzl/tZtjpitxzws4kuG1znxM+lx3hqg64gKmz8DufC4zHXAPwKRH/wODcod1rbuLBMjpDScBOlDPWtnldzLSr7GbTQaogVJwJQ2M0i8ey5BOcIGsWW75MUDNfcdejWHQJwpJYVZELUGlSg7a4YY/lYz5FzMteE/L3uWP/Ka91BHTcllgZV6x00AZqr7069h15gs9oO/HjalL/cBZXyv8/CUq8iDONZcyJ1owYKWgoHkntTxzrW3M731kKVBQdCINbe1DioP99PrDpLpHTYyvBHWlZ/CxMySGIEO5ftAX9gHyNzL537AFcCut7l6gzgY5TtMALwyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EUnKgdjFCe+GMhqTup33HjVe9EO4zd/KNOTz7h0NFt4=;
 b=FzPr2G76akqIOdiFQHHOPurBOrSHE08noaOkXD9fC8eEEYLV/1uHjbMw1bVTtzaxY5EEOK9ttEuFzR/oWVNJQPplKSfmOywIK/ehtmx+m8YZIV4kyyGkvHNN6Zn542EwBevOHaD4Wg82F0K3thxPHPdI+Hb3Dtey4PjY+CxkEGNmYw83BjSypVRNfv1CW4lac3rjwOO3LbrmZ16NuAafDF0sF6lDu/9wmhlHRqqvy6Kkx/tQuyQuFvePrck90/F1AkOLQl7l+x+UCh6Bov8aBoBxxQP2ueicmSpXKFarI6r+0hUTkgzBPafdy3q0Y8P72+sfhNo9jzeC4kRBp2dY2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB5947.namprd11.prod.outlook.com (2603:10b6:806:23b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.6; Tue, 9 Dec 2025 17:34:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 17:34:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 44/50] drm/i915/dp: Rename test_slice_count to
 slices_per_line
Thread-Topic: [PATCH 44/50] drm/i915/dp: Rename test_slice_count to
 slices_per_line
Thread-Index: AQHcX9sv3EMPaHIu8kS6Xed4gaK9p7UZpEsA
Date: Tue, 9 Dec 2025 17:34:01 +0000
Message-ID: <d7540344db415e36b04bfa8846c319d55bf53493.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-45-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-45-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB5947:EE_
x-ms-office365-filtering-correlation-id: d6a27436-ea51-4245-34c3-08de374924a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VlYvQy91ekhtdEF4TUJELzNGVHdseWo2N1lobTk2bERzbHpNazkwaklMZ2F1?=
 =?utf-8?B?ajZYMVV5Yzlsak9GSmFBZmp1Uzg3VkVVTEVHQWJ0NTNMNk1sY1dLRXlDSFN4?=
 =?utf-8?B?ZjBtVXQvM0NzZDUzM1VyUU44Q3phRmEzTHpIMWxRM20rSVZjako4Yk5pMDlv?=
 =?utf-8?B?RnJqanN5dnFrc1V4MGF1NFBlMDJobU9OZlNpRUhCNllVNXpPNmY1TFZvSUVT?=
 =?utf-8?B?bGR5QTJzelNVMGFZay9EajBLeHpCS1pwRkdhNWpuUVlwTWlCcVpjTWhZL2hG?=
 =?utf-8?B?R2tHdVF1am9LaHJEUTBrWE5lQnBwc1kvdHhlb282eHZZR05MU1JGV2ZCaHh3?=
 =?utf-8?B?Q0Q3YjM4OHBNRHFGTzE2Nm5KdGJydHRqejczdnFXNzVkcDY4STYyYUF1U283?=
 =?utf-8?B?c29Qd1d6TlRIS0Z4L1VBazZrU3kzSDhJZDNMQ0ZQYS96LzNWakxlTW9hNlMr?=
 =?utf-8?B?U3dHYWl2ZHJvcmgzeS9QY05BcS8zVDNLamUzYUd0YkV2SnFocHd5ZkRVUk1T?=
 =?utf-8?B?RzVLbDVERW9pcnkrRVZ0K1ZXck9OaDBlZzVaanF2eDdqeHdDVnY3c0h1QkI0?=
 =?utf-8?B?YUFSVHlwQkZTbnZiaVJxZkpiV3hNaXRpK0pOVitCNWl6VWV2RU5PSmVMWGNF?=
 =?utf-8?B?cVRsUWJWaG03dlprcWFRTEZNZE02TGc1WkxpNitWb2ZtK0djYm4vUjVVWW9L?=
 =?utf-8?B?cE1UWkNNRnlka2MwQnVieDNORCtXVWF3TnJIUVluYk5YZ2taQTVoS3IvNHVu?=
 =?utf-8?B?L3FNNmQ0RnZlRHZ5TFQ2c2IvSkVrUmRadG5xUHB6UzlKeHZpZm9vMGxYbUpz?=
 =?utf-8?B?bk5lQmoyZlA4ODhCMUg2WkFkTTlKbHBSMzJEWkc5Mm1tRE03Qlh2ay82VVdl?=
 =?utf-8?B?WmJnWkJUd2M3NFpnZk5MNzNOZjRTU0kvU3lpMUQ5Zi95RHoyVEhrYkd6K0tM?=
 =?utf-8?B?bDhwY2Q3UkwwZDAzSUQrR1cxMDZQdVViZnovRHBPSktSZVhBZkxRZmJpQjZu?=
 =?utf-8?B?UFhkL083R3RxNzFBdjhMcXo5N08xMEw1enlvQmFVcjdENklwY214SzYyNExZ?=
 =?utf-8?B?MHVBcS85R3BDeUtzY2VWMWNsbUdlTUlhWDM5OWlRZ0l6a1RheHFRaHNHZzNw?=
 =?utf-8?B?bGVmOFdDVStncFBmWUVqdDFiWnZjZHBDWHBvdkxhWDNJMXBWNWc1NjVsbUtU?=
 =?utf-8?B?SG5wQXdWc2lEZmUyRUROblBVcHhUczJ1TFlmMUxJU0xqM1R5Z09YcFZGalZ3?=
 =?utf-8?B?aG5NSk1PZ1Z4L2ZaT0hRd1ZjSW1Yb28vV0tYR0VONWk1WkhVKzNsU3JDMGpi?=
 =?utf-8?B?VnFSb0NhcDFSbTRtaDNTQS9YMUR5dlJwV0dSVTYvRE9zVnJYblFFcEllZ2FU?=
 =?utf-8?B?Z01aWHF1RHZUZ25ILzVmb3VRY1hpUVZRZkpPanFtQk5jbTByQ3YwLzhFZlVS?=
 =?utf-8?B?cFpNajNOL3FFWmxoTVNuNzdQdG1wcEVBZlhiUTQyMThueWgwaUx1ZDBYYVVY?=
 =?utf-8?B?WU9mamxFZTBWUWorRFN6SkRmeE1ZUmh2K3F6S3luQjA4T1hSMFFYV0pHbXkw?=
 =?utf-8?B?MTVOQmF4MW0rS3dBMGkvTllBcWJDYytFMnpHdjJzeC9GcDM1bDhTdWtKS0xZ?=
 =?utf-8?B?WWd2b29BbE1Lb09SS3Jla3IwTm1EcTVEVmYvdFg0QzlLK0JKUlhoZm02Z1dW?=
 =?utf-8?B?cnVOSUhFa0VwUVJTWWxFcVQ0S2pZL2RMVUYvTzk2aVNVY3llb1Q2VktHelpt?=
 =?utf-8?B?bm9PMUpZcVJtUU85VURvck1IaGNRdzBBZ1NIVlZGbW9PaHQ5OGNZMmgwaS9Z?=
 =?utf-8?B?TzZyUlp1aFphOTZPeklrTmFuKzVxN3lFcWVPVkFqMENWSWtwSHJocGcvUEhq?=
 =?utf-8?B?L0UrNTJLYWxGeUNoRklreVBxYVcxOVZIM3crVHU5WlpZTGZEVTI4WUxnNkpW?=
 =?utf-8?B?cmdTYzRYejkzeDhFcUYyeDczTXlFdjNoOWRsdHl0MlozWDZKdWtyRWROYkNI?=
 =?utf-8?B?dzl0WGs2Y051VGI1cU4zRVlvVkRlaCtibXBDNlY5Ykg0R2VDTzdUalk4MW51?=
 =?utf-8?Q?Mhm6T6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDhGeHIrWFlLNVV6dWtSQk0vVkh1RzhkbFhIbHZUVjdHcWkrV3JURDRyWHda?=
 =?utf-8?B?N3JCZWpRajRJdjgwaGljZEZJclp5M0h1TDFYMGRXZkFqNUo5WmxtL3RpNERz?=
 =?utf-8?B?N1F0YXNsVzBxR0lzMXJENUJnOUh1NVJqZXRaREZLL2k4NzBkK1hhMGxyUkp3?=
 =?utf-8?B?empGTGhVa3Bvbyt1cVlhcUN4UXVQVEl1ZHJqS011aGM0ZWR6eEtQbDQ3dlVt?=
 =?utf-8?B?WWR4WlcvSVgxVlJYSTVJTGUyanprQndLSWNGZWV1alJ3dzRoODNjSzhFUWIw?=
 =?utf-8?B?TWtHWkxrRUNtbGdqb2N0Z1VycURONm9XOFNzZE1jS2hIMmpyVGVMdjYyeno3?=
 =?utf-8?B?RUplT2trdXZTVFBPU1lrUktMMVZqMGc0N3BMRTlwUFRqZVpqbjRqNGtyRFY3?=
 =?utf-8?B?UCtGWGhMYVdZcEFsV01RS3FOOFJCRE9QOTRybGNQb1lqMWp0MGYxNHZqWjBI?=
 =?utf-8?B?bFB1ZGtJb2J6N3lCOVpiZ3o4M0p3TmUzK2xEa3JYZjJncG1taGR0WVFUdGVY?=
 =?utf-8?B?TTlRRGZtOXhDUUloUUVMc3ZUaDl0Z3lKQ3YrVThTeUwrMDg4cnlQUEczeUhU?=
 =?utf-8?B?N2QydlROc1VRZExKTHorR0lnNVdwMG4waWxaNTVxRGFNV0lTYStnK2pHZHk0?=
 =?utf-8?B?eXA1ekFzQTVBSzhLZEpEUE5wcnF1cEFZU1dIZ2dxbHpmYndtLzhCOU4wa1ZN?=
 =?utf-8?B?b3ovTU05ZXYvL0lnYkEwazl5TEc1Qmh3TE9WbXBCUWtNYzh0OWEzUGEwUHFO?=
 =?utf-8?B?bUk5YTFqNUF6ZmRqZkNKUGNuTm5JMTNzZmZoL2tIQTljcnVJMStjOVRRODhU?=
 =?utf-8?B?bmN3UGQvVy9XcXUxdzhLMTYwZ2F5ZGJNVzdBa1dteE5CTkQ3S0tETW5oL0xB?=
 =?utf-8?B?YWd4VEtCa28rNUVwcTBmbEgvTDVBTkIrR1BnT2JVWkZ6MEtEWTZnekVCdlJq?=
 =?utf-8?B?dnFKNE11WG4wNHJDNEtOeHd0QXBwNmI3czZ1d2RKN0ZQSjRUWHQwbHlSUlUz?=
 =?utf-8?B?VndMb0JwY0sydS9RUEp4cm8rOFo0VWwwbUhQY2tlZk9NQ1pCbUhGQjdaTEVK?=
 =?utf-8?B?aVhZMUxRTUl0WUMxNEFabUhoYVNYY0l6a1B1RE5Jb21aMVZ3eWszNHJQR2I1?=
 =?utf-8?B?VHpGdm5KZ0o1UUZhZndWeVFaa2YxS2F3N2Y1T1JaYThFUWxCbjFrcHVVMnh2?=
 =?utf-8?B?bVRFRG5WY3NZWDFrdDUrVFowa2NPK2FybEo1VW1mbUNERnlJdDBOSllHSVNu?=
 =?utf-8?B?UmpTbnkvWm5sV1E2Vi9ya202ZldlUEdXemlIWnhFeS9CdWNvZFprV3JUb2lk?=
 =?utf-8?B?b2lacW1NN1VaekNJTWVqWG5JaTNRUXRaeWVJQk1RajN2Y3ZWQVlEZE9pSkk1?=
 =?utf-8?B?YVUwZVRsZzhxUmgzZ2FqdUlwekUrYlh5cnYrYXZhYW54bWNrV2JHWnBISHl0?=
 =?utf-8?B?SkRFbFRpVWlDelhVLzYvRGdlT0xSTXhOWC82b0VXZGhuZUNsaUl0eWhWNWhx?=
 =?utf-8?B?bFB1dENLMFdZaFpLRGlUcTMyTjNValFDTlpPWUF0V2c1bTQzZStKK3F0NmdM?=
 =?utf-8?B?KzFtT3A5TEFPVUdjdFllSS9xcjU4QUovaGxLYTRhMDN3MkJNSUlxSEdWcDRi?=
 =?utf-8?B?SjFJMVU5Q3ZHeWFnaHZ5OXFHZlkzSU1VVHkwV3lDWjJCZTM4UkVrbktmUmlq?=
 =?utf-8?B?TDloSWUwSy82a1M4T0UzQ2RxQXgycVVZR3JqeDNRck00SXhHSWwrZVVad3Zl?=
 =?utf-8?B?b2IrZ2hicWxsVjdXRHoxMllabENwSmQ4dnVBbDFrUk1hbURRWmNlS0VFZTAv?=
 =?utf-8?B?ME5lTUFEZnlJYXBENU5JZ2FXMkVCWTd0TW5HSk55ajJvc0ordHRMdUF4SzZ2?=
 =?utf-8?B?VHltMlplSUJyUFlpbkQzMC8zZDdnaXlIWUxHcjZpVEdNaUtEWWFwY291Q05V?=
 =?utf-8?B?UFo3c0UzTVQzM2R2LzZWdE5HSHZNL3dJMEJtNXNSSkQrWWVkMHpuSGFCQlR4?=
 =?utf-8?B?U3dHTWIreEFRUlVMNTU2WVdQSm1od3pRRnoweVEwc082WnRFQ21WVThiK0tE?=
 =?utf-8?B?U2VWVGJwQzFKWlFmYWQzTlpYOXVsNWozWitsSVdaVW4zZ1lLNzVFcGpyWktP?=
 =?utf-8?B?eGlDUEZtUzVnblpkWnljbkRpL2p0eDdkRlVQbFRZQUx3L0Ercmxkb0h0NCsz?=
 =?utf-8?B?OUVxNURHbS83SlpRYzJJUlg4dmxXeHJjUmRNemNZaVNiVnhtT1NPSkp3TFBW?=
 =?utf-8?B?ZjN4OUtvcnJiZnRwSVV1cXhTbkdnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <00D16B8D1D14AA44A58482DB450687A6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6a27436-ea51-4245-34c3-08de374924a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 17:34:01.9573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XpwKwXtu3rTUJKd6dXPKfZGgvrb04cwi/P3Q6Ng4cAw7NRMCHvpiYA6fAroNabuOcL6IvnrgU2aXRLR65U0biMlKSJ25GuAq1q/78VFRAms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5947
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFJl
bmFtZSB0ZXN0X3NsaWNlX2NvdW50IHRvIHNsaWNlc19wZXJfbGluZSBmb3IgY2xhcml0eS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEwICsr
KysrLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBp
bmRleCAxZDlhMTMwYmQ0MDYwLi42NTBiMzM5ZmQ3M2JjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0xMDM2LDcgKzEwMzYsNyBAQCB1OCBpbnRl
bF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3Ig
KmNvbm5lY3RvciwNCj4gwqANCj4gwqAJLyogRmluZCB0aGUgY2xvc2VzdCBtYXRjaCB0byB0aGUg
dmFsaWQgc2xpY2UgY291bnQgdmFsdWVzICovDQo+IMKgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9T
SVpFKHZhbGlkX2RzY19zbGljZWNvdW50KTsgaSsrKSB7DQo+IC0JCWludCB0ZXN0X3NsaWNlX2Nv
dW50ID0gdmFsaWRfZHNjX3NsaWNlY291bnRbaV0gKg0KPiBudW1fam9pbmVkX3BpcGVzOw0KPiAr
CQlpbnQgc2xpY2VzX3Blcl9saW5lID0gdmFsaWRfZHNjX3NsaWNlY291bnRbaV0gKg0KPiBudW1f
am9pbmVkX3BpcGVzOw0KPiDCoA0KPiDCoAkJLyoNCj4gwqAJCSAqIDMgRFNDIFNsaWNlcyBwZXIg
cGlwZSBuZWVkIDMgRFNDIGVuZ2luZXMsIHdoaWNoDQo+IGlzIHN1cHBvcnRlZCBvbmx5DQo+IEBA
IC0xMDQ2LDcgKzEwNDYsNyBAQCB1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0
IHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJCcKgwqDCoCAoIUhB
U19EU0NfM0VOR0lORVMoZGlzcGxheSkgfHwgbnVtX2pvaW5lZF9waXBlcw0KPiAhPSA0KSkNCj4g
wqAJCQljb250aW51ZTsNCj4gwqANCj4gLQkJaWYNCj4gKCEoZHJtX2RwX2RzY19zbGljZV9jb3Vu
dF90b19tYXNrKHRlc3Rfc2xpY2VfY291bnQpICYNCj4gKwkJaWYNCj4gKCEoZHJtX2RwX2RzY19z
bGljZV9jb3VudF90b19tYXNrKHNsaWNlc19wZXJfbGluZSkgJg0KPiDCoAkJwqDCoMKgwqDCoCBz
aW5rX3NsaWNlX2NvdW50X21hc2spKQ0KPiDCoAkJCWNvbnRpbnVlOw0KPiDCoA0KPiBAQCAtMTA1
OCwxMSArMTA1OCwxMSBAQCB1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJCWlmIChudW1fam9pbmVk
X3BpcGVzID4gMSAmJiB2YWxpZF9kc2Nfc2xpY2Vjb3VudFtpXQ0KPiA8IDIpDQo+IMKgCQkJY29u
dGludWU7DQo+IMKgDQo+IC0JCWlmIChtb2RlX2hkaXNwbGF5ICUgdGVzdF9zbGljZV9jb3VudCkN
Cj4gKwkJaWYgKG1vZGVfaGRpc3BsYXkgJSBzbGljZXNfcGVyX2xpbmUpDQo+IMKgCQkJY29udGlu
dWU7DQo+IMKgDQo+IC0JCWlmIChtaW5fc2xpY2VfY291bnQgPD0gdGVzdF9zbGljZV9jb3VudCkN
Cj4gLQkJCXJldHVybiB0ZXN0X3NsaWNlX2NvdW50Ow0KPiArCQlpZiAobWluX3NsaWNlX2NvdW50
IDw9IHNsaWNlc19wZXJfbGluZSkNCj4gKwkJCXJldHVybiBzbGljZXNfcGVyX2xpbmU7DQo+IMKg
CX0NCj4gwqANCj4gwqAJLyogUHJpbnQgc2xpY2UgY291bnQgMSwyLDQsLi4yNCBpZiBiaXQjMCwx
LDMsLi4yMyBpcyBzZXQgaW4NCj4gdGhlIG1hc2suICovDQoNCg==
