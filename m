Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C754AD44BD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D013410E5D0;
	Tue, 10 Jun 2025 21:25:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iqac8teV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D9F10E5D0;
 Tue, 10 Jun 2025 21:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749590724; x=1781126724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YJwAGnDnt8yRXHJS9mLRxOmFHk0DhL/2tldN0k/ZCKc=;
 b=iqac8teVyeu7EXQGumea9NXGcbdbnB60dv3Gi4LDAfWYLVQt+P4Qv/B3
 ORbDciwsxKgOFQSdOfX8v69i/m44ZeiXFvR5+xcM8/UHc89zcqeEyJPoA
 9S2ZrRRycqPZ1CrLIzOJDbWpQ3qT6g5x9vBEoz9rVc0RaGAt3KIEPcxhy
 QeCyrOussHBbUmPK5iDh0uZD5oyeU1dDqa5kf3fGMGexnV1iZ/QGCxtMB
 q1qG6fkT7kwALnZmaOxYyMPzioBHnkvty5aj5648Kol0eslSMd/AU8kFM
 waIhDMbnKJmDsaW81bzu782VgyxMX1j6r9F+eVb51FAFas4gkW88hV4NY w==;
X-CSE-ConnectionGUID: 2F73yYCwSGSxTc9oUmYJLw==
X-CSE-MsgGUID: 0buKFWvETiGI2w+lTG0ZwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="74258872"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="74258872"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:25:24 -0700
X-CSE-ConnectionGUID: hoHKZMQ9RjqS/sOkG0k8MA==
X-CSE-MsgGUID: LUFGV4plRs+grzDQ7SpcJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="150808425"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:25:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:25:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:25:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.56)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 14:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sFnNilxHcoTpbpMoufQiFaRBvfg/aYzbc9N37EydVKUh++SMSlEqXHJCDQD2AIwAcsRzlc8jQnMOnTyfwrfAdZ7cxxYs0Vn9Xn3bWSrw57VURduWNLIHozVU7tJCSNISMh7CnSuTlidgYjqBTLmZmyPbW0gaUikO7X6rakNh5cEz105EikYWt5OFtzwzjZijAZ2UBRrwRR7oaA/aipkV7rwAAnr1b4nxzoDOe3rm53YE6qBRnKKDpZoDPxtZCJQclSDYssVvV/OTH0C8SnpjpdT9Qel9amC9hc8vCkum06YPMND28X4G6R0ZH3S55ikn1mp+Z5gwiK05q+GbuPcTzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJwAGnDnt8yRXHJS9mLRxOmFHk0DhL/2tldN0k/ZCKc=;
 b=l1oRSlLjBSfDGGEzr2fwelTsj5W7pD5gVQMbo4t21ZWSDEq6cC/EidNVU2O3g9y10xMHhHAThr/AsR0GISd2b4FJjTX6wQB4jRuAW3/U/UhStn88AsbSXhr0KDL0Q8sVITe07+vt+xQFmZHEFm3cFpLMYDbEwBa0zk1eJ2cZE+LLVwXzwCpRzQqbzEO3Nu40/hKW/Xz3SZm/NZlqOklHHM02FOzTGs6kJKQHNYwZrSZ8DDer1kBQ7WTl/9swzIKO5DMJj11TxPj7ufF6oqc6kZXF1eQoaX0CLuxJlknBt0qQwATLQxwmujkRtwEMWBqQER5fp+KFRUWDgUQq04lueA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6757.namprd11.prod.outlook.com (2603:10b6:806:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.22; Tue, 10 Jun
 2025 21:24:40 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:24:40 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 01/21] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Thread-Topic: [PATCH v4 01/21] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Thread-Index: AQHb2Uhbw5z1aoTFDE+obd8+YFptBbP858tg
Date: Tue, 10 Jun 2025 21:24:40 +0000
Message-ID: <DM4PR11MB6360749A298786E505ACBE34F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6757:EE_
x-ms-office365-filtering-correlation-id: 43cac508-d33c-4cde-d31e-08dda86535cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ODc4ZlFLbE9la1FwdjBrcmptQm53SVdYMVovaHdRaFR1a0JYdTJkY0hzQVRX?=
 =?utf-8?B?Ym9HNHZpRm9PbElhR051U21TOXFTdWVPRzZSRktiS3l4VmZXdklRUExvVWV4?=
 =?utf-8?B?cE9sMDFQemhob1dQcVQvSXhiY1lMZDFwQ1o1MjZxU21jd1lUUFVocVNtQmkz?=
 =?utf-8?B?Z25xcGdvaUFIWjBCYmJmclZqN2NsMS8wTWtjaDcwQ0ZjdjFCc2M3bTBnaVlB?=
 =?utf-8?B?VlF6aEx3VEx3ZHNUcE8xbGtRekdmZ1FEUVNqdjRHVm85M3VERTFOUi9FajRS?=
 =?utf-8?B?K0phNmRsdHZmU2ZrM01NaFh3aVBZcFdSc0dDUjg3VkhDNGdVaFAwcVBOSHBt?=
 =?utf-8?B?SUtib3ZXQTNVRVZyTlRWVEFUUjB0a0FCREhrRFNVam42cS9CVjlOLytTS0I5?=
 =?utf-8?B?WFR6STl5S0tTdzI5M3RabEVodjNjSkJRYjRkY0pia0FLN3JDMUhLT2JrekR6?=
 =?utf-8?B?YVVLTDMrcnM0VmE2aS9qcFk3cXRqRzJnYU1OTWxJUUpXRnpmbFM0ZTBBVE9P?=
 =?utf-8?B?ZldaWEdmQVE2VGozZE50YWM5SnVXZXU3MGZEWFpaRWttSEpXaExUSU1wN3RS?=
 =?utf-8?B?bW9mQXJzTUh1MlU1VGtITURmdVRPemx4SGlDYUxGYzBYSHdxbHoxbXFxRlp0?=
 =?utf-8?B?Mml5OVlIUUVJd3YwSWxzYVQxR3VNUVJ0OEl6ejNDUml2YUkwSnl0TjNYbnJ5?=
 =?utf-8?B?cWY4Rm5IeWFFWWFoUTdpd25mN0g2VklScEdZWmpZZEVZYlY2QkNtUDRpbVdS?=
 =?utf-8?B?QWw1MGIzK0U1TDg3TlJiWHNkQ2lUQlkydWRNVGc5K0FMWkFCTmFsb05CeGhz?=
 =?utf-8?B?SmhhYXhWcGlMcGFUeDBpcGxWLzY3WmZoQW1lcVJLZUlOYk1SeWxuZFlmWDI3?=
 =?utf-8?B?VHhBSUY1VXNWbnlubE9sZ2hjby83akJzSHh1SjQ1dnJTWXUwaXJCVXkyQzUv?=
 =?utf-8?B?S1VGc0dpVjVyU3NBbXJmWnRQUHVDaVFsOVAxdHVvd25yMnZmTUYveW5ZQlZr?=
 =?utf-8?B?eFhzOE54ZWFFc1gvQTl3dDdqdisyYW42YjladGVrYUVVWURDTHM1YlFXTG5p?=
 =?utf-8?B?Z3dBa3E5SXl2bWJvUlFPVmlGODR1UE96eVB2VUREaS85bTl1aHlsSlFGM2E2?=
 =?utf-8?B?NlJJdlhYTFhkUWxZYW9rek9Oek5HVVdVUDd5cmc0VXRwU0EvQWdmNDRlbXlF?=
 =?utf-8?B?TFowNWNhNTFnamo3dTBZZGg4c3dGd3I2SC9FNTZYQmV2a0FFS0tRRzNrWlNN?=
 =?utf-8?B?VjViVDdpSFJsWExieExwTFNSTUZHWi96UVRYZTNtNGRVZG1oeTYrUWZneldr?=
 =?utf-8?B?QVQyNWFReVFTSnVtYnJaSEMyc2FTUWVia1g5YTcwSEw2R3dMZlNDTzBLQ0dm?=
 =?utf-8?B?TGduckZ1SzFweHRZQk9QWlBDcVovWGpqc1Vneitmb0hVTUhqNG9aNkg2S2xK?=
 =?utf-8?B?S1hlR1ByRm1VaGl6NWNVMEE0VjYwbTFxSEJsTEVlQTU0dVRLanV2MVdYTUVP?=
 =?utf-8?B?aEZZU1Q3UnBtYit0a0tIQThacCtpMmhPYjhCSEFTTkJhNjFqaThJVkN3Nzk1?=
 =?utf-8?B?VjNpQVViTkpVeTdHK1B3WGxsUm9rU0loR1EyQXJERGoxM1RPNlNFalRmcFhZ?=
 =?utf-8?B?TC9DeXdYWFFobGd0TnZldUU4SC9PeFR5aTYzNUpkZURTMDFLZERBZWtVck5B?=
 =?utf-8?B?a1ZrMHkwdzNObU5ZZVdPbjV3Q3Jzck5WZ2pBRThVWGFadDQrNXNLZGZOQjht?=
 =?utf-8?B?eVJKbWtjY2ZXaHV6TGt4RVVuVGwwd2xFTzFvR1I3cldVZnBMRnVxQUNGU1ox?=
 =?utf-8?B?Y21yZG9VNFY3TXdpNTZKWFZZbUVkVXZaWkpGUGN2aG5LbmE5Qlg5Z1Q4cGpP?=
 =?utf-8?B?dFFZQTZzQnIyM29nby9NaGNCalpOM2xubGRoNTJETlB0MHFHV2oxN2FEZ2s3?=
 =?utf-8?B?dW1jVlNjQ25TdndRUUNvSFlaczVxY3pINjNYLy9vR0lOZzhGUlVGWjNtK0RZ?=
 =?utf-8?B?cjNxa2NBdDhRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cERXN3VrNHdGd0hQckpEYnRjdUNiM0lYU0Y3ZHVBSE4wN2NVaS8vck5vQjJt?=
 =?utf-8?B?T2FSYU8xeE5GVjJIOU12ZFk4cm8rQWVqZGVuSndlRE9NcXJTRS90dWVSaXFx?=
 =?utf-8?B?d25admtzSmoybmJhRkxIUXB2RkFrcGxTdHRhdTdXTysyVWplWnRTUTY4R0FN?=
 =?utf-8?B?U1V6OHZWaWIyNVBOeEU3TUdHWnJoWm9nUUhZYnp2T2lEdCt3YnJDZ2pPcmY3?=
 =?utf-8?B?QmVRQmUwcHgzWXIvWVJyN1EvYkcxaEw3N2VhU002VTRkdnFOUTJOWEg1OFBB?=
 =?utf-8?B?clpPV0ZlSEtrbjk5dXZkYWtxNm1CaFhHaEZlalZqQXJyalNtL1REelRuVWFs?=
 =?utf-8?B?VUdYMzF2L3lybEVsRG9jVGorWE02bnZ1Ujcvamt0bXlsaGRqY2lPSEdRM2pU?=
 =?utf-8?B?RUpiSDdDTDloZjhTalhIOFg2R2hidnhVRFI1UDhuSitFbS9KdllsaVFjdmx4?=
 =?utf-8?B?cS9FdzhQb0g2UkZtRzNwZmVtK2RpcUNaalkrdGdQbExickNyUHFmRG1hZHZw?=
 =?utf-8?B?RENxZVBKS0ZGWmJCZi85ckdYcTgyZHBYWDdjQnptdndVTXpZa0I3ZlVqRFk3?=
 =?utf-8?B?Wk9LTkwwQjc1eTE5WGNKelE3Nm8vWS9zUTQ4emQ3V0lQK2tFL0dBN1QvOWZJ?=
 =?utf-8?B?SHVLZWo4NEVCWWpJdmpWL21PVW5seHFxK05JRWJEUzlMaXhJS25sdG92UjFm?=
 =?utf-8?B?UHNxZDFLRnI5elg2eVhTbkVMZHV0Y0MyOG5jMmYvOW02WmQxTHFiZTJmVG4v?=
 =?utf-8?B?cG5aUDlsNzVDa21wTjV5YWVXNGJvb250YWFLVE0vbnhNZjJtNmpIU0RUbDJs?=
 =?utf-8?B?MGFHY2ZqSHU1YTB5QWFJdC9ONzZxZ2MySm1qZG10L2ZuRE5iOTBlTGdxRjFE?=
 =?utf-8?B?SDAybDc1UmdrR0VzTzFseTMrRi9CcTVLdWxEZVhyOUxicHBaZXZNTXlsSHp0?=
 =?utf-8?B?bVM4bkljcGpINFJRVVdaTTUrWVZkUjlFLzJkZ253UEppRVNoVGd1K0NURWhW?=
 =?utf-8?B?RnJDdUhXWlNHV0ZNTEEwalV3bk41TkZEZTgvWjdkWllkRHJmMUt5a0ZCdkhv?=
 =?utf-8?B?dHEzVzJmck5JTk10OGpNQVNYRGM1a0toOUh4alVKSFJXTGtRYktwc3c1ZS9O?=
 =?utf-8?B?aEFTN0tyTU1DMzAxTVNtZmJmRjdIT1JIRjc5VHp2SjVTazBydFk0MGdnZUNj?=
 =?utf-8?B?bSt3ZXRONlZuNzBVeFNYOUx1VUViaDBRQXVGbG55TFI1cDBpT1JhNGRaYmVa?=
 =?utf-8?B?ZTRmcDlBUDZDM2tka2J2ZzM1WWp0Sy9VcjZJMkptRnp0ZnJIcDRjZ0JtOXZq?=
 =?utf-8?B?aTNkdU8xdlFxS0pDWWNkdDBtcmVyR2haanhoODNZK3l5YUF5ODZzM0Y5cDgz?=
 =?utf-8?B?UUx4WXZNQWhRTmx6QncwMjBOdG1FcERvN0l3R1ZRZEdlcWpTbE15bEI4RGNP?=
 =?utf-8?B?VTdDL0ErcExkMHcycjNtUytwUEh4ZzBwRGlkNEFxTkZiVXJndnM2V2pZcmd2?=
 =?utf-8?B?eW1NNDFQb203ZVFWNUhucVVBcVNMbnRiZTNTSVdBanhoL0g0R0syR29mMnh1?=
 =?utf-8?B?RTc2N1U2dXE2NmpIbXJ3NnNmQTU2clhVczNZcllTbkNuZXFhd203NzhUYmUz?=
 =?utf-8?B?TXNlRHI1a3ZpcHVjVlZzTEU0WTdrQjdOMjNyYVY4ckRXWE5ZRVp3QlEvTHdv?=
 =?utf-8?B?Tm9jTmFEZFJrY3luSlFDVTNENVRwd1NwWUFGcVRHT0VDckx2emdwN3l0SXNl?=
 =?utf-8?B?ejd1MXhsMW1wWTlpdWZpOHpFVnYwVHBpdVZkZDNoaXJ3cnRTVnFIYXNtdkxn?=
 =?utf-8?B?d3BPQWljQ1d0Q095ek1WTG0wQ0lDWjJXYURYb01seThWVDg2QVZsdmh1a3g5?=
 =?utf-8?B?NWgwSmUzM3RJS1RYYWxPWnU5a0J3L1loOGViYmhVU1pEcTVNVnZyMkUxRUFI?=
 =?utf-8?B?dTFDZHF1TXlhWFNOUnE1WU5vK2g2VmE3TzhZNWl0WkxuQlJuR3ViSGxVUVM5?=
 =?utf-8?B?aUZuT0VadS9Wbk1xejdGaGtEM0c5OUNjRzU5aWFxNXNWQ1oxK3h6blZmRFFS?=
 =?utf-8?B?eFpIWUI1a1I4YllHbVk3dU5PKy93TVBVQVpRdDc2bUVTUzdiOXNXaHQyTTZH?=
 =?utf-8?Q?w9ZaXE3IXzKyZ/H6ChhqvFp4D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43cac508-d33c-4cde-d31e-08dda86535cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:24:40.3745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2S6qi8B8SdbibXjNDp4YtdnaWIfllkURlSnEu4YNcLMnbgmQVJ0990FmRHPbg8mOEIRDxO4SRvucTjAY8fP+tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6757
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDEvMjFdIGRybS9pOTE1L2RzYjogVXNl
IGludGVsX2RzYl9pbnNfYWxpZ24oKSBpbg0KPiBpbnRlbF9kc2JfYWxpZ25fdGFpbCgpDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSWYgdGhlIGZyZWVfcG9zdCBpcyBub3QgUVcgYWxpZ25lZCB3ZSBkb24ndCBoYXZlIHRv
IG1lbXNldCB0aGUgZXh0cmEgRFcgbmVlZGVkDQo+IHRvIG1ha2UgaXQgc28sIGFzIHRoZSBvbmx5
IHdheSB0aGF0IGNhbiBoYXBwZW4gaXMgdmlhDQo+IGludGVsX2RzYl9yZWdfd3JpdGVfaW5kZXhl
ZCgpIHdoaWNoIGFscmVhZHkgbWFrZXMgc3VyZSB0aGUgbmV4dCBEVyBpcyB6ZXJvZWQuDQo+IA0K
PiBOb3QgYSBiaWcgZGVhbCwgYnV0IHRoaXMgaXMgbW9yZSBjb25zaXN0ZW50IGhvdyBhbGwgdGhl
IG90aGVyIHN0dWZmIG9wZXJhdGVzIHRoYXQgcHV0cw0KPiBpbnN0cnVjdGlvbnMgaW50byB0aGUg
RFNCIGJ1ZmZlciwgYW5kIHdlJ2xsIGdldCBhIGZldyBtb3JlIG9mIHRob3NlIHNvb24uDQoNCkxv
b2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgfCAyICsrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5k
ZXggMWEwM2MwZWYyMDU0Li5hYmRhMDRkOTY5YzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNTI4LDYgKzUyOCw4IEBAIHN0YXRpYyB2b2lk
IGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgIHsNCj4gIAl1MzIg
YWxpZ25lZF90YWlsLCB0YWlsOw0KPiANCj4gKwlpbnRlbF9kc2JfaW5zX2FsaWduKGRzYik7DQo+
ICsNCj4gIAl0YWlsID0gZHNiLT5mcmVlX3BvcyAqIDQ7DQo+ICAJYWxpZ25lZF90YWlsID0gQUxJ
R04odGFpbCwgQ0FDSEVMSU5FX0JZVEVTKTsNCj4gDQo+IC0tDQo+IDIuNDkuMA0KDQo=
