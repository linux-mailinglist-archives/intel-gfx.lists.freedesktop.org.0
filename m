Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL4IAER7sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D2726F039
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2804610EA15;
	Thu, 12 Mar 2026 08:37:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MRboKRFy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B1110EA12;
 Thu, 12 Mar 2026 08:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304640; x=1804840640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FRVC8/I6kSWJif/vWXdTsiBFV2jMMyl0SZaVw05xYHQ=;
 b=MRboKRFyVIZ2OiXyVirGCQtNJZMtaGqdkPXLhQ2wiaE6V9h/3+yzjtq9
 sXFaG/LBZrSyvlQxO7w11hhAsrbt9JtdG0eRagIvIm24Uxsi/f4d23eff
 /cDGUyunnOHUnN5BYsl0TKG0R/sDhSvSqrtPx1svBDnfzy4Ows7EIEFQM
 5GaaoJMNbrmWmQygdP7rmcEaNP//wBgGoJ3b/D4HMzHMVATB1iV4TkM8o
 vwZEWT8HaCPFZLUig/MD+hNCD5MRTCZCM9xJckOZPSJU1xxYuCqnI8C07
 Fj51ao/ynPwCLwooBr9HG/3JDZZyor6bqajbZmMNpODmXJRER8p/lP+p6 Q==;
X-CSE-ConnectionGUID: z5Hlnf5YQtOpU2TI7KnmUw==
X-CSE-MsgGUID: WS8cMdzcTlGa3lS37nM/dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85016434"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85016434"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:36:20 -0700
X-CSE-ConnectionGUID: AZ0jntTXStyNkogfiEEFVA==
X-CSE-MsgGUID: yCp05Z70Q8WQZydaUlDKXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="220698368"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:36:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:36:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:36:18 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G1kkxr7pS8W58W0paQjl0C80nJdWxV2BKMXacKP6QfG7bwJqoyjYxyUlAqBn/j3vSF2mIgJBgfhckgJR5rkrYFNrl4gj9eQEefmeTPUL1fw3u0vfgh86qOMbqXjCLrQ434NlYyfAVqmE3mcUN73hzTj2meN8xJNry4mlKW/51RPqcMJDkPD5Fsm6CtFPURTVMWVY2PjdyS12IMOFheWnKsWmSprJt+dJo+PAdh+1RJfJVOtw40VIJMZYCLCeIvjoAvDt5yK4o7okEOTxw6EjlwRkRT23ei4ILgOsN6kFO/9kzyp3PXBzwKa5UI1jCd/C0hPUS1pMRjUvcM/3U7uatQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FRVC8/I6kSWJif/vWXdTsiBFV2jMMyl0SZaVw05xYHQ=;
 b=Vr32U72i9iox51PwI5sZgn76PhwwM7gc3Bra7+9Se3oBf4FyjZYr4V9+jMPJKyUeBPyhHo9WRaIpGw8AP8g24lacFxh2pk8s/SOz5SHwECcJ+Ul0SX8sYEA11mVgS2BY71oR9/6aCxhf45JTZyNqY2DATevM5k9z8inf9xk93pdI7sKNpK5ANbOyLPTb/kAQWWAIJGEGNzMEN/n1/Tk15goXcPZsnz4ug874q61/V+13Vp5eVRkP/NwpCeGlvYaWtwXBzTPfYSaHNjD5C2Rc4av0Aj9j9+g4v6pVSQViDil3zM1TKbo0jw96O4D0gdTrZuxBG2RU/TB6QfPLmEZgzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.6; Thu, 12 Mar 2026 08:36:14 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 08:36:13 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v7 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Topic: [PATCH v7 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Index: AQHcseFoXy/wUc4o5kOhLt/snEyLebWqclYAgAAgAsA=
Date: Thu, 12 Mar 2026 08:36:13 +0000
Message-ID: <DS0PR11MB804967C084AF6C6FE48925DEF944A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-2-animesh.manna@intel.com>
 <2c5fab038a854604d8009bd94c27106933f750ed.camel@intel.com>
In-Reply-To: <2c5fab038a854604d8009bd94c27106933f750ed.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6282:EE_
x-ms-office365-filtering-correlation-id: c7b8ec39-a1d5-4f04-205d-08de80126bcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ws39YgPl0TMI9P8g04TGMxPDVEtZ4cic5fw8oN3OiAUkzdG3eO/p9zHgFQJLfBcwa79RwsiACneujWZQVOMvg1ijxuFG+8y6ztnbvNb+KgTVuXmcFj9MNNIwgSSXvkueiuLW04aQ6KvH9CLh782ZijDAPNvW1GzfCycr+Hg5KLaC5fYNz3RHFC6UKhBYqTjovSODWg9HoCHS0hacGdsz2TkzwOEfXu9AD9LZDx0PP9efV4i0tRZlxuSka51HHDMAgdzqSm/KQ5eD/ObLql1cCxTIb4JmT+VK5I/WFY6OmKAPDFB61nJ3GzHIIkOYaZnV4+dE043Ov34TYBgusk2S5veXw+VjqcvneuFSzlOHlA76uAG10wAj9y6KYdHokNFbwE/9gUPLe/5COfm9OKxwuzN3vDeHpAq6QphrLgNDtJYzxkWdt7pZ7jqOccj5NbJnEyIEBlBC2lAoYimfD/XYptEJq1mpuNpIrVapv/1E4z5fDBp24ogGwCvCNW1Fh0bwryw8ldi25FPmpZX2CGfG89bYeFmmaZWNLmsD7S294Ld9brKC82Y3+JQ2lNRs+agLtUv5Vvx93WNY1rVZuFG890Vrb+8girNijaZrdxntdOBR5+WeroLCg0t/t3f7pa5Gx001+8QVUHUtyXq/1NmYXqe/MNRcQl2fTcO602bivNZuSQLGKZbxhJpUvMuoR5EP0AYpuALA3yV/j1oz2qSj+yhgW2x9gzQo8jgq2VIacvu03+fEIuJlwnVHor9/F/qx1M4i5wqhN+c0ixEG1ghXpfCOcpWR4SYM2sTFMau+oJA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlR4ZTZ5Q1J0RlljOXNKcVM5dzM4SzZYSEp2bkgxeER1dzJKb3p3Z2szVUYx?=
 =?utf-8?B?L3pSRnI3b2hDVU5uWnIxajNzQkthU2szRlBlY1BaN095QVYyK2JLYWZ1MW9F?=
 =?utf-8?B?bEt5aElzcWliT0tUSGxqNnpJTWJqZ0ppdElBS21yVzNpRnArVERuMnJNU2VV?=
 =?utf-8?B?MHpFUlRjNWVoY3M4emk1cGVqVGk0aHdsdHNTQjl4TGtCLzcvTE15L2dsVUJv?=
 =?utf-8?B?WTVqNnRFOVN3ZGplOGlKUDFRT3cwU3h4UzJERzR2cFBIa3oyck5rbFgrNkZQ?=
 =?utf-8?B?bXJhbDgzQ0FxZS92TWRzVXNlem5DVFYwWUdaNXpVbHVkQnJpeDhIRVY0UGM2?=
 =?utf-8?B?cmJDRmtzQmxwV0ZZcHVtbWtQdE9keDFOYVE3TFRrK2QrMmVzZFNRVjF2UWla?=
 =?utf-8?B?OVdIRkltMmZmNlpuTlovRTZUNUIrWUc0dkJ1cmFVYnJvTHJRVGdaUVZVUmpu?=
 =?utf-8?B?eFRsbWlNMW1BdXB5SncvL2tLZ2xtQ3NMOVJ2ZlFVSit5TXN3eXp1Y0R0SjBh?=
 =?utf-8?B?Zm9zSWdHZFpFNXU2OGFUbXJtNVpnYjA2NGVyaVJwRmdZNlR3emJ0TnJBT2VR?=
 =?utf-8?B?SjRZWmtuazZIUEQvTytwS1UyMEZvZGxUNVh0R0tUVWlZRkM3NlVOa1FBOHNh?=
 =?utf-8?B?R25CV0o4R1pEbUdRZUl5ak9nazVvRXIycFk0T3FpbTQvSGhHUEpGTFluSzEx?=
 =?utf-8?B?Ymhqcjc1QTBtVkdtdlVQYmJQaGRwRjg5VXJldndWcjNZcC9YNWthN1ZCKzJO?=
 =?utf-8?B?cmVnL2VwR3IycGcxaithMHhRbUtEZ0JxZjdDVjBWWElTeGRjbDVkQUl5MGZX?=
 =?utf-8?B?eDhqUUhCYVhUZFdnaDlDcnJPWTIrOHlrK2lmRDVycUxMbFJqTUVxVUxUWnkv?=
 =?utf-8?B?UXo5QTRRUzlLdkJHRnJkRVhRNXEwMS8yNkoyQXJSOFVCT2xkS1pEVUpMQ0RG?=
 =?utf-8?B?OVBqZFIxa01ncHNQQXZlNXFZSlRBYm5Ld0MrMVhTeDQzZjA1SWlranh5YTFG?=
 =?utf-8?B?SzRFdmxGeXJ6bFliYW90aDlxUlphN3kvNFBNem5uQm5pYldtb29uYk9NeDNk?=
 =?utf-8?B?RGhHVGJoM3BlR1ZLNUVqZWY0VDlBSUdSK2VIUzZyNlp0cVIreGZvNnR3dytT?=
 =?utf-8?B?RFp0blFnanZKbFo5cGhLNlRzSk5SaUZqaWY5blZEeW1KcW94bkpGSUJLQklm?=
 =?utf-8?B?UTVHVERtaXZjemhvRmZtZ0QwV2dXWDdKZmZqUGp2NjBIeXZGd0djNWFYNTBF?=
 =?utf-8?B?Wk8ra09oUjB4dGorQUZxVXd6U25nMmRiMDZrN09kend3aUw4bDlGTWRkVjhO?=
 =?utf-8?B?STZVOG5pL1NTY25KVkxQb2FLdXp2ODF2QTNpMmptd0I0QkVaS2pYdEVYUko4?=
 =?utf-8?B?eEorY3RzdDU5TTlCcmhFZHdJdTdmZ3A3ZFlKbGY4MzRyR0Q2V0dpSSs5ek5h?=
 =?utf-8?B?K2taUHlXMVhWMStObUhNVVdIMkhFZWlQbkhOZTArMGErcmRVbzUrUkhwSTVP?=
 =?utf-8?B?RFVVemN5YTkycTh1YkM4S2hNdm1KWURCYklDV3huRVNEUUo1S0xWUFN1VDZy?=
 =?utf-8?B?VTRUTjg3V2ZTdGpKcklrTHhxNWZXWlIxWkZaWDZBMUlDRnFmcUZDUTBHU1Zp?=
 =?utf-8?B?TlB3Sk94c21qUGttd0tKc0VVV3dOcC82bjdnQ1hhV0lDNVZ0eElRWldXQXdt?=
 =?utf-8?B?V2RoN0dIVUY1dmMwb2dNV1FjUVo2TmN0enp3a0k3emd2S28yNGFRNmF1Q2Vs?=
 =?utf-8?B?dlZ2RDlubVlzamZyUEl1WWYrR1N5bkl0eU1xU1FlOFgvZXhROGZUODFTS28r?=
 =?utf-8?B?WTBmM1BYS0FNYkdNbWtWUFdTTXFGaWV2c3c0R1NEb012VWFoUkRmdVRWRUha?=
 =?utf-8?B?YlphVTQwcG5pR2tJSFBwTXJrSElnd0k5ZjI0aHl1aWI0WXFxYVJFdE1GSDRi?=
 =?utf-8?B?YlhxTmRuVFhIVCsrRDVRTWlvME9maXYvbGpZR3hjOU8yRi9lclVFSk5yZ0JJ?=
 =?utf-8?B?UlcyeC9rOENHUDFEM1BLQ1NzYU80T0hRMGxubEZGeWpHeGQ5VzlabDluYTlv?=
 =?utf-8?B?bWw1dHFYM0ZVMEU3MW5aNlNGWjVEUCtIejR1U0hNN0p6YTU3NGo5c0FjQjRm?=
 =?utf-8?B?TjRESXROakRrN2cvRVVlUDl4QUtVY0NjZm9rWEJPVGtFL29MWU9BS05aMmZz?=
 =?utf-8?B?d28wSCtIcEl5RlV1Y1kzZlhZakJGWGx1MVZJcm9ydGVwaTdkWEUyQURKdjlB?=
 =?utf-8?B?SFpYYURDY1NzRytVNzZnUWxzZ1hXU0tTd3RMdks5TFhQY0MvUDVBRU9aS2R0?=
 =?utf-8?B?aGN3STZoUDBFeG9HbU02OERJS1F4eEpQUVFGaG9tc2orNE9qa1Uwdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZiztxR4hCXDHx49FCODiWx1iMEOJR30wj628umgbgiU0HqTa6PE8hmHVsqVtCChJVHEIqk2h3ehoLD66VwZWrXPmV0OQ7eso9AZJ0p16mLrVZtWgsiRL6B04xDGlRhJzPJ1SQlr0nR0tQ0S89QZWSUgk6EFTE8ALZ0I69wPM7gN3QOJWYrYpT5yIDKg66u+eMiAHlw/ZNIgpHQCHnTjm9Q0kaf9pQJlcc78lxkPXtXL2ov8/7iH7LpiQWjt2/V5kzknoC/ZRMfCiF5i8VDTG2Y8UvN0A5isN7GhRRoSr6xKwo7xZrNjDkdyvYAvcu8VpobS4aZQk0WU+U9NCyGekcg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7b8ec39-a1d5-4f04-205d-08de80126bcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:36:13.8809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXLH927e/D6gEp9aBuAgZrY4vBJov24LwN6K/gMns0wtQAxPiif7yChCd0s8DTF3bf4GjGoGpIZ4PsyRNHtr/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 43D2726F039
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMiwg
MjAyNiAxMjoxMCBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
dXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4g
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjcgMS8zXSBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZHJt
IGhlbHBlciB0byBjaGVjayBwcg0KPiBvcHRpbWl6YXRpb24gc3VwcG9ydA0KPiANCj4gT24gVGh1
LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IEFk
ZCBhcGkgdG8gY2hlY2sgcGFuZWwgcmVwbGF5IG9wdGltaXphdGlvbiBzdXBwb3J0ZWQgb3Igbm90
IHRvDQo+ID4gZHJtLWNvcmUgRFAgdHVubmVsaW5nIGZyYW1ld29yayB3aGljaCBjYW4gYmUgdXNl
ZCBieSBvdGhlciBkcml2ZXIgYXMNCj4gPiB3ZWxsLg0KPiA+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmPCoMKgwqDCoMKgwqDCoCB8IDE3DQo+ID4g
KysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfdHVubmVsLmMgfCAxNCArKysrKysrKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaCB8wqAgNiArKysrKysNCj4gPiDCoGluY2x1
ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
NiArKysrKysNCj4gPiDCoDQgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+ID4gaW5kZXgg
ZjQ0MjQzMGQ4ZGU3Li4zOWMwN2NiNDEyM2IgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Rp
c3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+ID4gQEAgLTE0OSw2ICsxNDksNyBAQCBzdHJ1Y3QgZHJt
X2RwX3R1bm5lbCB7DQo+ID4gwqAJYm9vbCBid19hbGxvY19lbmFibGVkOjE7DQo+ID4gwqAJYm9v
bCBoYXNfaW9fZXJyb3I6MTsNCj4gPiDCoAlib29sIGRlc3Ryb3llZDoxOw0KPiA+ICsJYm9vbCBw
cl9vcHRpbWl6YXRpb25fc3VwcG9ydDoxOw0KPiA+IMKgfTsNCj4gPg0KPiA+IMKgc3RydWN0IGRy
bV9kcF90dW5uZWxfZ3JvdXBfc3RhdGU7DQo+ID4gQEAgLTUwOCw2ICs1MDksOCBAQCBjcmVhdGVf
dHVubmVsKHN0cnVjdCBkcm1fZHBfdHVubmVsX21nciAqbWdyLA0KPiA+DQo+ID4gwqAJdHVubmVs
LT5id19hbGxvY19zdXBwb3J0ZWQgPQ0KPiA+IHR1bm5lbF9yZWdfYndfYWxsb2Nfc3VwcG9ydGVk
KHJlZ3MpOw0KPiA+IMKgCXR1bm5lbC0+YndfYWxsb2NfZW5hYmxlZCA9DQo+ID4gdHVubmVsX3Jl
Z19id19hbGxvY19lbmFibGVkKHJlZ3MpOw0KPiA+ICsJdHVubmVsLT5wcl9vcHRpbWl6YXRpb25f
c3VwcG9ydCA9IHR1bm5lbF9yZWcocmVncywNCj4gPiBEUF9UVU5ORUxJTkdfQ0FQQUJJTElUSUVT
KSAmDQo+ID4gKw0KPiA+IERQX1BBTkVMX1JFUExBWV9PUFRJTUlaQVRJT05fU1VQUE9SVDsNCj4g
Pg0KPiA+IMKgCWlmICghYWRkX3R1bm5lbF90b19ncm91cChtZ3IsIGRydl9ncm91cF9pZCwgdHVu
bmVsKSkgew0KPiA+IMKgCQlrZnJlZSh0dW5uZWwpOw0KPiA+IEBAIC0xMDM2LDYgKzEwMzksMjAg
QEAgYm9vbA0KPiBkcm1fZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQoY29uc3QNCj4gPiBz
dHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKQ0KPiA+IMKgfQ0KPiA+IMKgRVhQT1JUX1NZTUJP
TChkcm1fZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQpOw0KPiA+DQo+ID4gKy8qKg0KPiA+
ICsgKiBkcm1fZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQgLSBRdWVyeSB0aGUg
UFIgQlcNCj4gPiBvcHRpbWl6YXRpb24gc3VwcG9ydA0KPiA+ICsgKiBAdHVubmVsOiBUdW5uZWwg
b2JqZWN0DQo+ID4gKyAqDQo+ID4gKyAqIFF1ZXJ5IGlmIHRoZSBQUiBCVyBvcHRpbWl6YXRpb24g
aXMgc3VwcG9ydGVkIGZvciBAdHVubmVsLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm5zICV0cnVl
IGlmIHRoZSBQUiBCVyBvcHRpbWlhdGlvbiBpcyBzdXBwb3J0ZWQgZm9yIEB0dW5uZWwuDQo+ID4g
KyAqLw0KPiA+ICtib29sIGRybV9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChj
b25zdCBzdHJ1Y3QNCj4gPiBkcm1fZHBfdHVubmVsICp0dW5uZWwpDQo+ID4gK3sNCj4gPiArCXJl
dHVybiB0dW5uZWwgJiYgdHVubmVsLT5wcl9vcHRpbWl6YXRpb25fc3VwcG9ydDsgfQ0KPiA+ICtF
WFBPUlRfU1lNQk9MKGRybV9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCk7DQo+
ID4gKw0KPiA+IMKgc3RhdGljIGludCBjbGVhcl9id19yZXFfc3RhdGUoc3RydWN0IGRybV9kcF9h
dXggKmF1eCkNCj4gPiDCoHsNCj4gPiDCoAl1OCBid19yZXFfbWFzayA9IERQX0JXX1JFUVVFU1Rf
U1VDQ0VFREVEIHwNCj4gRFBfQldfUkVRVUVTVF9GQUlMRUQ7DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gPiBpbmRleCAxZmQx
YWM4ZDU1NmQuLjA3NWFlYTlkNmVkZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuYw0KPiA+IEBAIC0yOTYsNiArMjk2LDIwIEBA
IGJvb2wgaW50ZWxfZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQoc3RydWN0DQo+ID4gaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgCXJldHVybiBkcm1fZHBfdHVubmVsX2J3X2FsbG9jX2lz
X2VuYWJsZWQoaW50ZWxfZHAtPnR1bm5lbCk7DQo+ID4gwqB9DQo+ID4NCj4gPiArLyoqDQo+ID4g
KyAqIGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkIC0gUXVlcnkgdGhl
IFBSIEJXDQo+ID4gb3B0aW1pemF0aW9uIHN1cHBvcnQNCj4gPiArICogQGludGVsX2RwOiBEUCBw
b3J0IG9iamVjdA0KPiA+ICsgKg0KPiA+ICsgKiBRdWVyeSB3aGV0aGVyIGEgRFAgdHVubmVsIGlz
IGNvbm5lY3RlZCBvbiBAaW50ZWxfZHAgYW5kIHRoZQ0KPiA+IHR1bm5lbCBzdXBwb3J0cw0KPiA+
ICsgKiB0aGUgUFIgQlcgb3B0aW1pemF0aW9uLg0KPiANCj4gSG93IHRoaXMgaXMgY2hlY2tpbmcg
aWYgRFAgdHVubmVsIGlzIGNvbm5lY3RlZD8gVG8gbWUgaXQgbG9va3MgbGlrZSBpdCBpcyBqdXN0
DQo+IGNoZWNraW5nIGlmIFBSIEJXIG9wdGltaXphdGlvbiBpcyBzdXBwb3J0ZWQuDQo+IA0KPiA+
ICsgKg0KPiA+ICsgKiBSZXR1cm5zICV0cnVlIGlmIHRoZSBCVyBhbGxvY2F0aW9uIG1vZGUgaXMg
c3VwcG9ydGVkIG9uDQo+ID4gQGludGVsX2RwLg0KPiA+ICsgKi8NCj4gPiArYm9vbCBpbnRlbF9k
cF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAq
aW50ZWxfZHApDQo+ID4gK3sNCj4gPiArCXJldHVybiBkcm1fZHBfdHVubmVsX3ByX29wdGltaXph
dGlvbl9zdXBwb3J0ZWQoaW50ZWxfZHAtDQo+ID4gPnR1bm5lbCk7DQo+ID4gK30NCj4gDQo+IEkg
d291bGQgZ3Vlc3MgaXQgaXMgbm90IG9rIHRvIG1peCBJbnRlbCBzcGVjaWZpYyBhbmQgZ2VuZXJp
YyBkcm0gY2hhbmdlcyBpbnRvDQo+IG9uZSBwYXRjaC4NCg0KU3VyZSwgd2lsbCBzcGxpdCBpbiBk
aWZmZXJlbnQgcGF0Y2guDQoNCj4gDQo+IE1heWJlIHlvdSBjb3VsZCBhZGQ6DQo+IA0KPiBpZiAo
RElTUExBWV9WRVIoZGlzcGxheSkgPCAzNSkNCj4gCXJldHVybiBmYWxzZTsNCj4gDQo+IGludG8g
aGVyZT8gT3RoZXJ3aXNlIHlvdSBuZWVkIHRvIG1vZGlmeSBjaGVjayBpbiBwYXRjaCAzIGFzOg0K
PiANCj4gaWYgKGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2RwKSAm
Jg0KPiAgICAgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzUgfHwNCj4gICAgICAhaW50ZWxfZHBf
dHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoaW50ZWxfZHApKSkNCj4NCg0KU3VyZSwg
d2lsbCBhZGQgaW4gaW50ZWxfZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoKS4N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCiANCj4gCcKgIMKgQlIsDQo+IEpvdW5pIEjDtmdhbmRlcg0K
PiANCj4gPiArDQo+ID4gwqAvKioNCj4gPiDCoCAqIGludGVsX2RwX3R1bm5lbF9zdXNwZW5kIC0g
U3VzcGVuZCBhIERQIHR1bm5lbCBjb25uZWN0ZWQgb24gYSBwb3J0DQo+ID4gwqAgKiBAaW50ZWxf
ZHA6IERQIHBvcnQgb2JqZWN0DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfdHVubmVsLmgNCj4gPiBpbmRleCA3ZjBmNzIwZThkY2EuLjAzZTE0Nzcz
NmI2NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX3R1bm5lbC5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF90dW5uZWwuaA0KPiA+IEBAIC0zMiw2ICszMiw3IEBAIHZvaWQgaW50ZWxfZHBfdHVubmVs
X3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqB2b2lkIGludGVs
X2RwX3R1bm5lbF9zdXNwZW5kKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+DQo+ID4g
wqBib29sIGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOw0KPiA+ICtib29sIGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25f
c3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCk7DQo+ID4NCj4gPiDCoHZv
aWQNCj4gPiDCoGludGVsX2RwX3R1bm5lbF9hdG9taWNfY2xlYW51cF9pbmhlcml0ZWRfc3RhdGUo
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ID4gQEAgLTc2LDYgKzc3
LDExIEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiA+IGludGVsX2RwX3R1bm5lbF9id19hbGxvY19p
c19lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHANCj4gPiDCoAlyZXR1cm4gZmFsc2U7
DQo+ID4gwqB9DQo+ID4NCj4gPiArc3RhdGljIGlubGluZSBib29sIGludGVsX2RwX3R1bm5lbF9w
cl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gPiArew0KPiA+ICsJcmV0dXJuIGZhbHNlOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGlj
IGlubGluZSB2b2lkDQo+ID4gwqBpbnRlbF9kcF90dW5uZWxfYXRvbWljX2NsZWFudXBfaW5oZXJp
dGVkX3N0YXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIHt9DQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmgNCj4g
PiBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5oDQo+ID4gaW5kZXggODcyMTJj
ODQ3OTE1Li40YWEzY2U5ZmQ4MjkgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZGlzcGxh
eS9kcm1fZHBfdHVubmVsLmgNCj4gPiArKysgYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcF90
dW5uZWwuaA0KPiA+IEBAIC01Myw2ICs1Myw3IEBAIGludCBkcm1fZHBfdHVubmVsX2Rlc3Ryb3ko
c3RydWN0IGRybV9kcF90dW5uZWwNCj4gPiAqdHVubmVsKTsNCj4gPiDCoGludCBkcm1fZHBfdHVu
bmVsX2VuYWJsZV9id19hbGxvYyhzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKTsNCj4gPiDC
oGludCBkcm1fZHBfdHVubmVsX2Rpc2FibGVfYndfYWxsb2Moc3RydWN0IGRybV9kcF90dW5uZWwg
KnR1bm5lbCk7DQo+ID4gwqBib29sIGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChj
b25zdCBzdHJ1Y3QgZHJtX2RwX3R1bm5lbA0KPiA+ICp0dW5uZWwpOw0KPiA+ICtib29sIGRybV9k
cF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChjb25zdCBzdHJ1Y3QNCj4gPiBkcm1f
ZHBfdHVubmVsICp0dW5uZWwpOw0KPiA+IMKgaW50IGRybV9kcF90dW5uZWxfYWxsb2NfYncoc3Ry
dWN0IGRybV9kcF90dW5uZWwgKnR1bm5lbCwgaW50IGJ3KTsNCj4gPiDCoGludCBkcm1fZHBfdHVu
bmVsX2dldF9hbGxvY2F0ZWRfYncoc3RydWN0IGRybV9kcF90dW5uZWwgKnR1bm5lbCk7DQo+ID4g
wqBpbnQgZHJtX2RwX3R1bm5lbF91cGRhdGVfc3RhdGUoc3RydWN0IGRybV9kcF90dW5uZWwgKnR1
bm5lbCk7IEBADQo+ID4gLTE0MCw2ICsxNDEsMTEgQEAgc3RhdGljIGlubGluZSBib29sDQo+ID4g
ZHJtX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGNvbnN0IHN0cnVjdCBkcm1fZHBfdHVu
bmVsDQo+ID4gwqAJcmV0dXJuIGZhbHNlOw0KPiA+IMKgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbmxp
bmUgYm9vbCBkcm1fZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3QNCj4g
PiBzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gZmFs
c2U7DQo+ID4gK30NCj4gPiArDQo+ID4gwqBzdGF0aWMgaW5saW5lIGludA0KPiA+IMKgZHJtX2Rw
X3R1bm5lbF9hbGxvY19idyhzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsLCBpbnQgYncpDQo+
ID4gwqB7DQoNCg==
