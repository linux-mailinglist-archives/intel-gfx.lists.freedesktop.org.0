Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B55BE821E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 12:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42CF10E176;
	Fri, 17 Oct 2025 10:50:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bc3q1467";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E7610E176;
 Fri, 17 Oct 2025 10:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760698250; x=1792234250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oxu2XQMikVj+itGYG0wHz6wyF2pp/TnfWJ6TO0fiF18=;
 b=bc3q1467LE/Em9H1/MOHyCHFja5ueZdrIq6A7eXfTYOiQYvMKB81d2yN
 MbVsefMHEyHwaiBQbgsSFNa72B6XabULf7ZKiwYHjqEXZ9kRo+oaT7ylR
 UmlpScz9SpCQYeTdOHA3sY03hfdnDzrnaqlTHsABtD9tqSVOGIxvxfeHM
 vhlzUJNra3QuFgnfjCv/jetcFI87PeC/Jh6gMKkl1Q90w/4u4FrzWcxFS
 w9u0RIFiUviCEYYSVFx9bL2R8Tmsb98pBeECuQ+sTx977TEcSK4nbpP0w
 QXTbdc0RxcGKZJRwF+vWRCO6je91Lf7oZk2TjIrOnvGAntKpA8hl9goIc w==;
X-CSE-ConnectionGUID: MceDsFw8S1O+CA5svFRrlg==
X-CSE-MsgGUID: PqvVIZTkTcu7iw7YqEAbIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62829432"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62829432"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:50:49 -0700
X-CSE-ConnectionGUID: 32CZTJhZTTqYzYXfvF/gWQ==
X-CSE-MsgGUID: FKaL/8xQRsG7HdLN0IYp2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187976707"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:50:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:50:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 03:50:48 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:50:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j4dRLdemeRO91hR7D+3NCJU2wwqx93iURZOVWxquRah8Ym3lfGbXTPSq7o6tzrKVWr9Nv7Ys0s4HdxU0e9D5QvMuKiA+6cBfyXb79b1MDeqs1afgPGe51n6sEfFGKcAm9am4Slupnwc7qqWbTLKuOGSJtR/38GrjGc4ouVUzzKvV2QQ/aNEko21i0ajuJCW0uAZEHxBOingD8bb5ThQZPAOSGMUhz1PumYOS6xuXL2uRAovIjc3XVbWe8C5VGnihLJ3Bsew1UHf1s7/Yldn3trCu1ABK2nmKcb5/VNFCxNH3NhB+06YWDozTmDn5GHE2L30cnc3R5yJUz6AVvZscqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oxu2XQMikVj+itGYG0wHz6wyF2pp/TnfWJ6TO0fiF18=;
 b=n3wGzxQg0Gxj2HaujtegOAj10/ZtLsa5dLABIFJoM/Pin/u13iBhoHkuFa/24VJeBtW4PowetMLwYxAj7FgcmIYEaFDhROPFSZUMJn3xbX1csAFocX6zv9BHLjU+3/NVVJBlAnlPKnOlJdvxKmzixgaCLpYXZsPywa8QBRFX2msF2TXf/LS2FjdUiLPvwTMgNqSryFw9Zux1hg8I/Gkp6ooQmoorVMsjaEYf8QE/wNGHsddmoBWpIyOAqQy0hLIf96Ez0BsKejH8AO+4BNobDcubyuCaQZT19Y9b1PhxTX9PBnCH9tZ2QuvBPozL7bNmSAjDk+EDkxDOAredHSlW6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7267.namprd11.prod.outlook.com (2603:10b6:930:9a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.13; Fri, 17 Oct 2025 10:50:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 10:50:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Thread-Topic: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Thread-Index: AQHcPyUVwZ+IzViNwEGTx8DHNzO6J7TGKXcA
Date: Fri, 17 Oct 2025 10:50:41 +0000
Message-ID: <ef18e6ca3eaa07953feda2cc8e7b9c53f7db6ab6.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251017050202.2211985-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7267:EE_
x-ms-office365-filtering-correlation-id: a238b09c-2ee0-4578-a8b9-08de0d6b0418
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dXZXUXpOb3JlTmhwT2RJNWZNbDZ6b0RSUE5LbUwyUTBXckdtR0VRdHBFdXBL?=
 =?utf-8?B?dEVmMDgvRnBDMlk5R09CbDE5V1hhdCtoazkzWjRkUWtlZnZjRDFNQTFLR1N3?=
 =?utf-8?B?eUlzR1UzelhWcU54R0dDVnpxNDNyb0RKemw2MmtwTzloQU9qRjRGaFNsN21p?=
 =?utf-8?B?Unc3c0U4akw4dmsrTkpwNFluVENxWW12VnpqUnMxWEg2K09ENUZIUG45ZzlY?=
 =?utf-8?B?a1JQbHVZM3JpNEFqM3hicmE4ZHV2SFVhVTRyVHJnVG4rWjZkNi9qbGpBZk94?=
 =?utf-8?B?NkhrRHdsbWQvZ2d3Q3QxbzJxaStlS2x0ekQ0VW9kejNPa0h3dERlQVJ6aC9D?=
 =?utf-8?B?c2pML1JUWHMrVVBoTjgzakdYUDFKdmxIaUgzdVdSNTg4ckJCVFhHdFBHenZn?=
 =?utf-8?B?WXFYVVljT0lveFNnZTQzaXcwSFlFTVI5ei9rVndsRDk1YjRDeHFMc09wbGNy?=
 =?utf-8?B?YjBZM2hyWGxaVUtISk5qcE1iNURuaHJIaTJBaEM0OHZXaFhHQ1BVOGdTaW9S?=
 =?utf-8?B?cmtQU2N2VUREUlVwRFlQL2kyMWY1QmIxL0FQblc2ekJoMGhCeDVyRGUxSzdj?=
 =?utf-8?B?TVgwWUpaWjM4M1EwbXVLUFhtdlZHYTc2eW9vejJRc3kzMnh0WUl3RTFNcTVU?=
 =?utf-8?B?K05lQmVsRkF4QjN6ZlREYm1CNWNGeXFTRUtLbGt2MzVVNEhsWU5KcGJMb0pF?=
 =?utf-8?B?Q05qSzdZMUZMbnFHc2xuaUk4eHhhMllRenh3bGhucGN4WnRIQ09tRVc3ZTl6?=
 =?utf-8?B?a2lualdmU2I2aXB6N3dCL00vN3QvbjZjcGRtbDl4SEhsUzVUSzdweFFHY2dy?=
 =?utf-8?B?MVVMUkcrNFlzNkM5QUZlempReDRYNTQ3SGJtVGI3OEJqb3dINTc2QkZ5VVdp?=
 =?utf-8?B?UjFpNmhra1pTaTFpOEVqTjIyRHczUUt2WkVmelUvY0tVN1F0MFZ0ZzZtQmtN?=
 =?utf-8?B?VGhPSytOd2s0TlluYmFiMlNTNVVtb3VaZGRkeW41aTArNTBJWC9xdUpWOHhT?=
 =?utf-8?B?Z0FDMERWWUQ3Tkw5S2taR2dPZEhGdmVFL2c3QXZKcUpMSWRpb2FpNThVS1pi?=
 =?utf-8?B?UzJHakluL0JUdERtZWlnUWpBM1hYOE14azM0WC9LSFNBSkNRdlZEQkdScXVk?=
 =?utf-8?B?TGV6M0hQZG9oTHdKMUdGOEVWditCVTdZZ0JYeEpkWlVUdXlpakNrTTRoV0l3?=
 =?utf-8?B?TVBid1E1OUU1K0ZJNzMrWkVmK1dobENERVdxZkVBS0Z0a3NoekcySDJQNlV3?=
 =?utf-8?B?NUZDd0x0WHVFTG1nMm1hRklZemRmN1lPNzZYb2x0YWZsUk5Dek5lS2tJZFFW?=
 =?utf-8?B?Z1JuTERPbUgwcUVPU0pvQ1VpYTNKVW1DKzJjUU92RDdWZDFhRXBnQngwNDc0?=
 =?utf-8?B?SG03dHJpQ0FaYTdpbEhsU3RUZzRhYitEcjQ5NHh2cFN1SUJERkx0aFNhSEFV?=
 =?utf-8?B?NzZsaGUrT3dYTXJVSjQrbUVNamU5YSsxTy93cjVQRklrVjd0OTQxNGF6aEtk?=
 =?utf-8?B?emZmc0llRlVFVUFUeFFYdjJjUVQrcDlVam9tOU1FSGRaemxmN3ViL1JOcDhG?=
 =?utf-8?B?QzNQT3hyRWlsSElaNlFLbWhWcGM5bTZXSDBUZytxeERFTzRDK0doaUtLTkpR?=
 =?utf-8?B?UWtDRzFvc1JpN2o2eWJyejBrOW1za2lhZUZBQ0s1WE5GT2VXelZhZUpGN28z?=
 =?utf-8?B?eGZtQVZvY3l6WlVUdlU1SVNWK0s5MGIzMzR2MDBhRUFGYXM4bUc0bFVFQ3Fq?=
 =?utf-8?B?VFhGaHhqVW9xREc3ZTVpa1pQbWxyYVg5RDE2eDQ5cVVhY3hjZHRVUjB1R0RY?=
 =?utf-8?B?VTlwS0cxSFRCQjVMRHJyc2l3MjcwN2EzV2I4cHdna3hwSlpWTlB3UGNRUDBm?=
 =?utf-8?B?dHJyZVMyOWVoRU5yNndtNGx6dVFuN3cxOHdrZ0lTZnJIc1M1SDVFOTZZZjdp?=
 =?utf-8?B?UDZTQ3dSWGNlekJpWTljV0xrRXBZZXM1WXhZRWpHaTRaQjhScS9oTXNhWlBD?=
 =?utf-8?B?cjNMNnBUQStnR1I4VnFzTkZMcXIwWkoyUmxFbmViY0VDcTBsVXNvT0g2NmVW?=
 =?utf-8?Q?STqdvG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTg1dzVoeTRDSTd4QWN4UDlvQ3JvMzQyQjhZNzRYNThPVzhHZW9YUFRZeWhR?=
 =?utf-8?B?aHZjVGJyWlp2Rm5sUkRpcnR0YW4rWTM3bHI2NFdOcXdGTFI0ZTQ1c25MWDBG?=
 =?utf-8?B?ZmJKeWRxejdTZXNDVE9kc2p2RUNkdzNCREtHQlNwdW00eHlpRy9zcXlpajV4?=
 =?utf-8?B?Sm1Ybkh0eEZsS21EUlNEenpwSkVIRXd2Z09ibUpKQlhybUlvNlY0SWwycElH?=
 =?utf-8?B?dHlLY0NBblVoWUlJRVE3MmFzZDV4MUFyQllSbS9GZldrRkJ0WmZIRXFJMEdh?=
 =?utf-8?B?VkFYc1FwM2huZDdLSzVHZ2pLRGlDUW1QSTIvSWdlUmY4Y3dlblhpR2djWnBi?=
 =?utf-8?B?ay9USmg3dDRwbkFRVUlka3Fnekptdkt5OVhpSVIzVkVManUveE5obHNxeVcz?=
 =?utf-8?B?K3A2akxjOUliV2ltZGovUm9FbUs2QTNCU1ZwMnEzNDBsSFoyNlc2T1RXbmt4?=
 =?utf-8?B?Z1JyOXM3eW8zQmIrd3FRNjc3cUxXelNPUUt1QTZpU09ERkxkZ3phMDEwMytS?=
 =?utf-8?B?SUYvK1hRZURQVVR2ckNqd0Z3UGh1WXpvT25PTURqaXI0SHBKRExWZTBaa0sw?=
 =?utf-8?B?VUJ5NjMwT1VEZGVvQjhtT0l3c3BHbkwrV2F3TW9RNnIrZjBGSEJnWXVNTlZ0?=
 =?utf-8?B?Q2NRQ0dhWVgwd3FST3ZUSk1qUTZYMFNYb0JYZmxIYUlRdzFpMy9UeFUzcXJW?=
 =?utf-8?B?R01lZ2dpaDM2UlBVaUlmTStpTXBiS1NmbWF6d21QOVkzeGlNZDM5NE5Ud3Rr?=
 =?utf-8?B?K0dkL3d0Q3pkZFZGUmM2akh2N3kybjN2MXRTRU0rMmJjUGdoQ3RrNnVBZG1l?=
 =?utf-8?B?V2tFYTlWMGxOek5xaDNqTWdWakE0dXhoY2toK2cyL0E4N3locTdmM2RHaHA1?=
 =?utf-8?B?UjlGUGZvMVpDcHhZWjU1L1hiMVZxcmFEOTJhL1R4ZlJOVXB2VGE3SHBEUVps?=
 =?utf-8?B?bGFnT0dnYm92WDh1cTlNWXFpenZnVmxYd2RxUlFyandPR1E3S1ZOS2RPcUo1?=
 =?utf-8?B?VHZEVjNRSVZqUzNzV3d2ZlZBUW5FWE1Jc3JZUm5xL3k2SjRNZTBpcENISGNI?=
 =?utf-8?B?QStoNzRtYit6eDBtcjhDVEovR3M2d1VqdG8vRk5TTElPWWduT2FQMmdIK1hx?=
 =?utf-8?B?S2p0cWxDdndland4YW9TMUxtMlViK3BzclFjMC9xc29wN1JEbEVKL1d6KzV1?=
 =?utf-8?B?ZTI2MjZzZXZrTmw2VDF6SSs5VEhKQVhsZUZaWEpVZGdpcWpkSWZuaHoxUy9M?=
 =?utf-8?B?K21hYTVGYzBJNlFlZTFZY1NRTkpJT3g3eHpKTHN3b2NKeDk0WnRBQ29JOCtI?=
 =?utf-8?B?WktiTVd1VzhHRnBpS0VocnRCQkVjSCtMQnpKeFdzWmYveHlsK2pwQVIzVGg2?=
 =?utf-8?B?OXo0R20wWmU4eGt3L2hEUm5vam5XUGo2dzd1WWdEdHFJQWN4RmtQLytBRXRt?=
 =?utf-8?B?cEpLRjNLSDRERTROeXFQMmdxczN2aThtSGdaL0pDKzk5Q2JlcUV0SGFXalVa?=
 =?utf-8?B?M0hqTDF2RUdsRktONVYzSWo5bnpWTzNFYUozWXVMNFN2enk3VFlsbzdQZHc3?=
 =?utf-8?B?aFZnY0pJUExrRFJDN29WdGdHMHJaVVBNb0JoVTZvMU9yT2grMkQvUHFuMkxq?=
 =?utf-8?B?TmpKeCtSdTQ5UEh4WFEvRkdpWFdCVE5mWDlDSmxaODJ0d3hNRFN3TUxobklE?=
 =?utf-8?B?QUtmRDBRRFFOV1IyTGtaNnA5aGpiVUs4UEo2V0ZUb05SQXo2ZWxtWmpKeUhV?=
 =?utf-8?B?OG4xY1F3TGhYeE9oc1BLOEFwRkxGWUdvTjlNOXY2cjdlZndFakhZdUMvQlFt?=
 =?utf-8?B?VXUyZWtNTCt0dmllZjJ0Tk1RVFlvNWpFdWxjYTJzSEJNQU9oVmNPV0ZjNjYw?=
 =?utf-8?B?RmwvQU0wR1VwbXVsYktyYXZDd0Z0U3dUVk43dVpQYlpVUitYaC9tSTExa3pS?=
 =?utf-8?B?c3UxZDdXOTlZM3pQVkhVTDU1U2gwOFBmRGJ1TGF5RHBFN0toVFA2ZkJkeThM?=
 =?utf-8?B?Zm9waUhmZFRUZlVFbmMvOExZaVVNNk85M1Y1d3g3dUNnNnNpMUx1R2pGcmNo?=
 =?utf-8?B?ZUtoT0luQy81TXh1anFZYVg2S3oxTEZWUHJLZ2l4dWk0WHVzekZpZkJMcnpT?=
 =?utf-8?B?UjRGSHNZZzRZK215em9HWDJjQ1UyclN1WHBZUG14QVRON055OC9XQkhUTyt4?=
 =?utf-8?B?SEIxMjNwU0RwbkVRYU5LWnI1LzBYS09DU3FKRkZpOWhIU2EycWlGZzFBU2Fz?=
 =?utf-8?B?SWFSMWh5Q1JlUURFOHRVWjJnL1J3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3813E494F6500A4FBCC3B6E4D5B5BFA5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a238b09c-2ee0-4578-a8b9-08de0d6b0418
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 10:50:41.4358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ueAqN4qYT70h6+RfBJTcPQf2QRkF1x8uYYUOw8Hy9TTpZaFf/sYsvId4CF+IrU55jtSR5z4Qgn0IrFBWl2GXy5z6EZNOmEX9u7gGQmNQ5fU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7267
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDEwOjMxICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQWRkIGEgaGVscGVyIHRvIGNvbXB1dGUgdmJsYW5rIHRpbWUgbmVlZGVkIGZvciB0cmFuc21p
dHRpbmcgc3BlY2lmaWMNCj4gRGlzcGxheVBvcnQgU0RQcyBsaWtlIFBQUywgR0FNVVRfTUVUQURB
VEEsIGFuZCBWU0NfRVhULiBMYXRlbmN5IGlzDQo+IGJhc2VkIG9uIGxpbmUgY291bnQgcGVyIHBh
Y2tldCB0eXBlLg0KPiANCj4gVGhpcyB3aWxsIGJlIHVzZWQgdG8gZW5zdXJlIGFkZXF1YXRlIGd1
YXJkYmFuZCB3aGVuIGZlYXR1cmVzIGxpa2UNCj4gRFNDL0hEUg0KPiBhcmUgZW5hYmxlZC4NCj4g
DQo+IEJzcGVjOiA3MDE1MQ0KPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQu
ay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyB8IDM2DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggfMKgIDIgKysNCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNzA1OWQ1NTY4N2NmLi4zZjJjMzE5ZTNkNmYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTY5
OTAsMyArNjk5MCwzOSBAQCBpbnQgaW50ZWxfZHBfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QN
Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gwqANCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0K
PiArDQo+ICtzdGF0aWMNCj4gK2ludCBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcCh1MzIgdHlw
ZSkNCj4gK3sNCj4gKwlzd2l0Y2ggKHR5cGUpIHsNCj4gKwljYXNlIERQX1NEUF9WU0NfRVhUX1ZF
U0E6DQo+ICsJY2FzZSBEUF9TRFBfVlNDX0VYVF9DRUE6DQo+ICsJCXJldHVybiAxMDsNCj4gKwlj
YXNlIEhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEE6DQo+ICsJCXJldHVybiA4Ow0KPiAr
CWNhc2UgRFBfU0RQX1BQUzoNCj4gKwkJcmV0dXJuIDY7DQoNCkkgZm91bmQgdmFsdWUgNyBpbiB0
aGUgQnNwZWMgeW91IGFyZSByZWZlcnJpbmcgaW4gY29tbWl0IG1lc3NhZ2U/DQoNCkJSLA0KDQpK
b3VuaSBIw7ZnYW5kZXINCg0KPiArCWRlZmF1bHQ6DQo+ICsJCWJyZWFrOw0KPiArCX0NCj4gKw0K
PiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50ZWxfZHBfc2RwX21pbl9ndWFyZGJh
bmQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ICsJCQnC
oMKgwqDCoMKgwqAgYm9vbCBhc3N1bWVfYWxsX2VuYWJsZWQpDQo+ICt7DQo+ICsJaW50IHNkcF9n
dWFyZGJhbmQgPSAwOw0KPiArDQo+ICsJaWYgKGFzc3VtZV9hbGxfZW5hYmxlZCB8fA0KPiArCcKg
wqDCoCBjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSAmDQo+ICsJwqDCoMKgDQo+IGludGVs
X2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKSkN
Cj4gKwkJc2RwX2d1YXJkYmFuZCA9IG1heChzZHBfZ3VhcmRiYW5kLA0KPiArCQkJCcKgwqDCoA0K
PiBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFE
QVRBKSk7DQo+ICsNCj4gKwlpZiAoYXNzdW1lX2FsbF9lbmFibGVkIHx8DQo+ICsJwqDCoMKgIGNy
dGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpDQo+ICsJCXNkcF9ndWFyZGJhbmQgPSBt
YXgoc2RwX2d1YXJkYmFuZCwNCj4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoRFBfU0RQX1BQ
UykpOw0KPiArDQo+ICsJcmV0dXJuIHNkcF9ndWFyZGJhbmQ7DQo+ICt9DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXggMjgxY2VkM2EzYjM5Li43ZWU1
YWViMjhmZTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgN
Cj4gQEAgLTIyMSw1ICsyMjEsNyBAQCBib29sIGludGVsX2RwX2luX2hkcl9tb2RlKGNvbnN0IHN0
cnVjdA0KPiBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsNCj4gwqBpbnQgaW50ZWxf
ZHBfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4g
wqAJCQkJIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiDCoAkJCQkg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpOw0KPiAraW50IGludGVs
X2RwX3NkcF9taW5fZ3VhcmRiYW5kKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlLA0KPiArCQkJwqDCoMKgwqDCoMKgIGJvb2wgYXNzdW1lX2FsbF9lbmFibGVkKTsN
Cj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9EUF9IX18gKi8NCg0K
