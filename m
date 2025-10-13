Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA11FBD5C59
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 20:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D56710E4C3;
	Mon, 13 Oct 2025 18:47:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBx5YLwB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E3810E4C3;
 Mon, 13 Oct 2025 18:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760381257; x=1791917257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2CW1RuAvMdKiHgxjbYglbJyOuxdzX7VRQqkp5q1nXM4=;
 b=KBx5YLwBbMioHVe1alDK5ikNsxNU5NkOuGW/PhJ9TauwbtsXujNEfBg2
 FzfnGcl/warU5Hi2sk7ethSuD/uxc3479FsapeGTH6SvvyeU+KdVS1qns
 RLq3jC/AUstKyOBZLpso7D7zoOzUSu04QHUj7Bk8YAi44jQeUu43uD4cC
 meRN+aWMzI0EtJ6m0NVoELqGz6SFibvC1XFVYG1DVODHgIThNFfmxSqsx
 uoHgDaF4DWqGgRURu1MpJM/5b2QrpX2392A5qVTV3gAWrKxIXJJsKnzLA
 14jk7lqxnd/jUVzi/jcmTV+LlN9JXcPzaIrF/s8NVPo6oPJxeD2CxRbOG g==;
X-CSE-ConnectionGUID: mlWbQ2mESGCN8obJXtdoCw==
X-CSE-MsgGUID: J4tDvX1hR9uVVZCTun6DMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61738115"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="61738115"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:47:36 -0700
X-CSE-ConnectionGUID: M035NsGwQx+4lxrJlTczaw==
X-CSE-MsgGUID: wnJA16lPQmOayqh8QtWA8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181685825"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:47:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:47:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 11:47:35 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:47:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bCDSM7FNtbSyvHe44dqNJJVc0h3hr3g8lpA4FY92KS51UXZ/nDcJbS2dEjD77I4636mP9tgF/FaMWaIGwq3LIiKMlPQLqL91SJ+XyTkaFpU1arDbaqpmFNZHE7V3Yhu8rxlOV5SSo2QM15mh4Fov3D/6ReNNbwtA1cQDnTUL8PNWTkD5CXDtAqkMtATLELUefEwWZRBp2yyODfuZanYe/2A1xqfr7sXI2WZ/v/OKY4+JzBra0zl+uoLsaU65XthfFMwg3pZSX0qcTGK0MjpsxqC8mFir/mC7Vo7Nvbb3I8+fcGRhMPUilzOqf4nNvyG/eiE+ar/VUVszP8BxRLCIOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2CW1RuAvMdKiHgxjbYglbJyOuxdzX7VRQqkp5q1nXM4=;
 b=DLdMo+byf6zVELSXKJKufBS0WU16WVQ5+1JJs79JO88vmATwE82miYC399YQe74HqNvkUMEvyPR1ri9EUKJEp016qQW4DM06cdTE9JzskpkLTVNfYYYcNUy1P6YFG6HUFiMfD9ZqMKrKStKfdrMwQ1jmCarmlS5ormLczmSjNXt8jGmiZroLVJPKR2s+8HDAgoWfJzHq3wsju6S3wP4gbIjdabUQSi3nKg97ACEX72+72qJ7mSeoVATtyzUF/V8cZkiSt7q6BqtHd4Iki0Ua7WXlOKCiqd1yLmywl5b5/xUt+7jACsHrW1lKNlso52ITXX4mQKo9DtCOOwNA1U73hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9182.20; Mon, 13 Oct 2025 18:47:33 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 18:47:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 11/11] drm/i915/prefill: Also print out the worst
 case estimates
Thread-Topic: [RFC][PATCH 11/11] drm/i915/prefill: Also print out the worst
 case estimates
Thread-Index: AQHcOIKMJllzVznm3kOl7XHfsOel97TAcpIw
Date: Mon, 13 Oct 2025 18:47:33 +0000
Message-ID: <DM4PR11MB636011119AB24A41C8361C93F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4852:EE_
x-ms-office365-filtering-correlation-id: e731cd79-57d9-42a3-2053-08de0a88f895
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bFJVV2lVaUtTSGM5ejlIcjVVc1JhTXRqYnlGNDFJR1FhQVBiMWcyZzgwZURY?=
 =?utf-8?B?SFFxY1ArOXlaeG9yazVRR0YvbjJSbGFPV1d6WTdVcTQweFdVaWZlTWxFdG0v?=
 =?utf-8?B?U2UxV1A4dDROWXE3MWw0anBoZE1lMC83M3BuR3VvdmVKUTdVSUd6WkdPOHNK?=
 =?utf-8?B?L2VwYVFYR25OalFzV29nN1dOUHVxSjBhQ1VMYWhLWkVmS0srOTVlTlJ1WUhk?=
 =?utf-8?B?bWtKK0FXT29SSlc4Y2FWQmYvMG1uQi9uazRLaE1NbkZWa1ZBeTcvOHRWcTFZ?=
 =?utf-8?B?YjVUUFhIY1k2U1M3bi9lbzdheXkyT252ekRGdDdZQ3JpeENCb0pSMU5aT25h?=
 =?utf-8?B?TitEYlJiQ2tIR2VsVXN6VWpxN25Ca0pSdWdoL3g2WUlJWE9sUEpnT042OGpF?=
 =?utf-8?B?SXMveU5zTFZSa1Yrd2hHTGMvZXVDSiswKzhZQS9hYlhXbkY3ZjNNeW9teUFx?=
 =?utf-8?B?bWIvV2E1TE9QQk1XSW5XM2FwaGY5eE1CSlRORy91OHRGUmFIOU9lSUwyKzFv?=
 =?utf-8?B?UDhmVkw4NGlCNktJMTlZdzVoWEtodG5Ic3JFVlNiNU5xNExCK2MvWXBDUFBy?=
 =?utf-8?B?K2d2eEQ0WGZOQjZIb3Bla2gvVTQveUNpVFcvZEVqTlJUL2FlSmY0MXlDSWlO?=
 =?utf-8?B?aEJ2QTQ4TEF3bCthQlA0c28xT2NKTHF5TEVvbWNmY0RGS3pZSHlCN0tHSEFZ?=
 =?utf-8?B?d2J2REl1MXpSSWt2VEZkTkp1UjNBZlM5NExaOGdydHl3SVJqSlQ5djFKNmJJ?=
 =?utf-8?B?dk52bjNXcU41d0JSdm1kWmRXbzJzRzh2RVhPMG5ySElLUDZNVmxTSzQ2c05s?=
 =?utf-8?B?WitiSDJGbkcveENjQU4yNy9IQTFXYlBpZzhDeS9hRVNqc3oyQUduUHZFYVhk?=
 =?utf-8?B?dUJOUmd5OHRiVGJZTmNtOHVPMHhIaXZKbmVWOVdHdjRDd1g4em4xWDNDV0JE?=
 =?utf-8?B?R2VyaU5VaEFyQS9tczUrZ1YzL1JQU2NPblErWTVTa2I5dzE3YmZUS2ZVNnIw?=
 =?utf-8?B?Qk94MjcxSDhsWmp5WjhiclhvRkgzVklrQnh4WmtYNEhIME4yWHdYbEVqT1Jz?=
 =?utf-8?B?Q0lKVGwvaklsQ1pYSXpjOTVEaGhWOVczSURzL0VwODFBOE13U0NaL2dQUzdD?=
 =?utf-8?B?R2JGbHlvSEM1R3duMjgwc0M2aXorZWU4MjdwWGtqNm1pM05NMkM0RG1pbkpn?=
 =?utf-8?B?enRURWVJbTlQbjlFTy9sekpPM3JidnJqbHo1QjF6c0Y0aDlmNVpoZldkaDNI?=
 =?utf-8?B?L0tnWGtFSDdhRkdGcHRjYzVkK0srOWNqNmFQSndJWDNkbmpURlhXbGFWdlRT?=
 =?utf-8?B?V0svTXRkTjE5MUFvR3lJUnMzTE5sZXFYV3ZGM21nUE9aZFgzeURDN2o4R1h5?=
 =?utf-8?B?NTJZcXZoem5mWjdMTk14Um5QbHFQNm5Tc2IxbHlkZEpycVRNMHVOZUZacDc4?=
 =?utf-8?B?cytHTUFxTkNtYzR5WkpEQXVRd1JFMzdScUVoRmRvak91VGJpYUpQSmoxM1ZT?=
 =?utf-8?B?djlIbkpGZXdxK2dHbzE2b3F2NE84Z0l3OXUxcjRvUEJuSTJKQlF6WTAwZFcz?=
 =?utf-8?B?UFlSSTlsN0lmbktvdWRnZVVEV3B0dTFXUGhLd1RoczBjQld0Z0xaS2ZjYkVa?=
 =?utf-8?B?QnU1Y3RIR2tCRmhGd1dKd2NjNUU1azAwRmp6NGk3b05QOWlScWpoSXZSOVVs?=
 =?utf-8?B?anJhS0cvZUxxdHlvU0RCOGZLSFJuNWZ0TFRLTGNEOFlZYnk3NXlEQlFFZlF4?=
 =?utf-8?B?MVc2TW9jUmptSWRKTElLTWVvMWRmemVKclp3SGNXSmxtOG0zaktadTN0eVJO?=
 =?utf-8?B?RWlNSVdzS1ZaY2N1RDhhOFd2UitNUkUvUktUOGFUbXBtcXNkSXdBbzMzczU3?=
 =?utf-8?B?eEZqSjBFNWUrTzB2NURjNjhXU0dCdGtLWTlVQ0k2NlJ5aXl3T0tmU3U5S0l0?=
 =?utf-8?B?S0tHWUFiUUw5akNhRzA5cHpweVlnWi9IQTZRS3N1K3h3aUlhNis3VlRtUUxN?=
 =?utf-8?B?Skx1NzNOZ3dNSkcrVmRlcmlmT3R3eGlsTXJ0YlQrQ001aXhDa0Z3bjdCNHVQ?=
 =?utf-8?Q?jZM4we?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjBBRFZZVyttcitKVnY1Um54R0VDaXZZVzMyaGUxQWhTVXZkRnhiWGtJaE9w?=
 =?utf-8?B?VEphSjhHOWJCTmlLRzkwR3I0Rng4N2k0L0hIQzE2c0hHbG83a0FyQTRXNDhZ?=
 =?utf-8?B?aFlxS081M09WcTd5QmhwVXd5QSt0a2RNQVg3cXh2VTh4cU9WMGlaYm50clF4?=
 =?utf-8?B?MGs2UzRFMUtmalhXdC9mbngwelFJVmpjYlRpbXF4aTZORGFBMUFKbFVCK0xh?=
 =?utf-8?B?bnBPK2o1eHBvMjVtY0pNa21ia0w3cUNCeDFDQmxaTzFzTURlNTY4Zko4V1h0?=
 =?utf-8?B?MjV3Q3NaSitFOUpEd0tBb1pRbkRIT0lHa3pIM2JyZkwzYXlTU01lRUhueW5P?=
 =?utf-8?B?b1ZwZ1huUDZGNldqb1JKQnprYmFtTllRR1dhVmM4Y3NvWVA2SnhHKzJ0TjVE?=
 =?utf-8?B?N0NNN3VGLzVMRGtwRWZkTkZvQXFTNWgxUFFTQVg0dU4zMWFSdVBDb3BGVlpX?=
 =?utf-8?B?djVSV3RFS2E1b2FTYnU5MWtvSEZvM2J2N3lwUkVwN0hKS00vb3hpdXhMSW84?=
 =?utf-8?B?NitabjllOFhRN3M4KzlYSG9MRWxhWGtZQytiZDBIMW4yWDdPWEdNQk8wUGd3?=
 =?utf-8?B?WDVVc2RNbENHZ0l0d1NSNDdLQW5ZQWthRitDMjdTeHF0UUxGK2VvR1Y3ZjVl?=
 =?utf-8?B?TGY1RFhGenRYb1VUOVY5U3UzR3MzbUZwc3M3SjRDU2RyMU5NY1VlSlQyZFJE?=
 =?utf-8?B?T2laYTZib1grcDJRSXI2UVRLSUdiTnp6ak56aWJ0d0dsRUxVVTU2cUdJdVNK?=
 =?utf-8?B?U3UydWZ5ODdKZ2tUNlQxdXdhQUIvTFBleVRobHBpSGRZYlU2UURwdmVQUG5r?=
 =?utf-8?B?azdIK1NBUGRMaFlNZWsramNPcjJ6RXBYM0hBbnNrQlN6ekp0Y2Z3dXdpZnM4?=
 =?utf-8?B?SGdidzZDc2duZklvRVg2dDdlNEllMGcxay9JQ2IweWIySmhmNnQzcWIzWDdu?=
 =?utf-8?B?UWF0U21YNFJ4VzREYTVvNzFjWGpJZ3A2MFM2S2JCODI1Uks3U09kYyt2ZnND?=
 =?utf-8?B?WkdER3l4UGQ3eFlOYTk3SHo1b1pLS2FjamNFYUg5YmkvcVN1TVNCUmt3WExO?=
 =?utf-8?B?MGluOU1NcVR2TkZqaS95L3FjR0FwVUlpMnAweiswUW5VZGQwNGNtL2dncDFh?=
 =?utf-8?B?dUpKdExmZkQrT3dPRDAzVy9Ta0h0WklEdTNQYmQ0NWI1ZnoyTVBJNFB0R0Iv?=
 =?utf-8?B?Yi9OMFNpUFZJRTIrbm9SN2UwZUl1Z1FzYlNGZ3QwWE43ci9oaHhMZkVuYmM0?=
 =?utf-8?B?VzgvbElTRDRpNmVMbUlzSGc1KzhiRzE0VGNKM0tzR3BVNTVQWTJLVmFNVjlT?=
 =?utf-8?B?bXI3bFI1UFFNTmMrSTMxNEZxT1dYWXBOZnh3SzVvcnh5bmJXc1RINFladFBm?=
 =?utf-8?B?WTQzbGFSVHc5dU1zb0dERTVjRkk0T2FUa3B3Yk16OHRIM3JIM2Y1SkRiRlJY?=
 =?utf-8?B?U3MxQWFLSHIwdXYwb1N4MkNFRm9JcDRqNk5zR1VJcGVoSmE1STFRcGw2dmJ6?=
 =?utf-8?B?Nmd2WTB3dVFPOVp3aGFQNGVkSXpQN2tmRWtRV0dtbk94QmJSeTdWU2xNSlZN?=
 =?utf-8?B?SEx1Tk5UTmlGeXpKQWd6WHFMSkhkN25oWHE3TU84N0poNFZFbkZwZjRhZU9B?=
 =?utf-8?B?VTZEK0ZpelRCV1Ixck5ZbThGbkdMRkdvWU9ZNUFqNXFmeERLZnRmaVhYMk03?=
 =?utf-8?B?OElHVmZHbUt0MDRxd3IvTnY5M1FhcVYzMzFGd2JHMFN6VTVwUXh4ZmNWOFJU?=
 =?utf-8?B?dDFXSHVadStkcHRBQ2g0aXBLZHdQMDdYVFNsQTRBK0tvSk4xTHQvMk5BZG52?=
 =?utf-8?B?TW9BQ014ZFBtWGZuRHoxbE1QdTFVcmRSRUlpQnVEdVZGU2wvZjRuaFZOS1R6?=
 =?utf-8?B?NUxCTFdXeDJ1VEdqWXpEcWVSRXFNTVlXVys5c2laNFdVUWZCSVpGRmM0cVVZ?=
 =?utf-8?B?SThvYjNnd1h6WkdwWGRkSk44NmxpVGZqcE90WlB4TkxaYVpBamI5T1NoK0dj?=
 =?utf-8?B?QmVxRlE1REpVUWhINXQ2VE9MREgzKzZuQ3JsN05Bdy96cjdsSExJUGJpc3lz?=
 =?utf-8?B?ZWhnWDk3N1ZDSHVZTkxtT1EzMEQ4eHFydWJ5SWRHbmFEMzJFVXd0UHUzV0cx?=
 =?utf-8?Q?JbWXICDwHEgODjWwp+AxQqm+u?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e731cd79-57d9-42a3-2053-08de0a88f895
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 18:47:33.5180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cQFdUxr6mS29qydB6r04ZRaOhHzPpcFDbMjgEgvr2AxQqJfmrmDBAw/0A1HmRIAkynYVna7qJ4riXFwQL0MfwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4852
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMTEvMTFdIGRybS9pOTE1
L3ByZWZpbGw6IEFsc28gcHJpbnQgb3V0IHRoZSB3b3JzdCBjYXNlDQo+IGVzdGltYXRlcw0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IFdlIGRvbid0IHVzZSB0aGUgd29yc3QgY2FzZSBwcmVmaWxsIGVzdGltYXRlcyB5ZXQg
Zm9yIGFueXRoaW5nLg0KPiBQcmludCB0aGVtIG91dCBhbG9uZ3NpZGUgdGhlIGFjdHVhbCBwcmVm
aWxsIGRldGFpbHMgdG8gaGVscCBjb25tZmlybSB0aGV5IGFyZSBhdCBsZWF0DQo+IGdldHRpbmcg
Y29tcHV0ZWQgc29tZXdoYXQgc2FuZWx5Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDExICsr
KysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXgg
YjNlOWUyYTBkYWIzLi43YmZkNjFjYjQxY2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0yMzIyLDYgKzIzMjIsMTcgQEAgc3Rh
dGljIGludCBza2xfd21fY2hlY2tfdmJsYW5rKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgCQl9DQo+ICAJfQ0KPiANCj4gKwkvKiBoYWNrIHRvIGR1bXAgdGhlIHdvcnN0
IGNhc2UgYXMgd2VsbCAqLw0KPiArCW1lbXNldCgmY3R4LCAwLCBzaXplb2YoY3R4KSk7DQo+ICsJ
aW50ZWxfcHJlZmlsbF9pbml0X3dvcnN0KCZjdHgsIGNydGNfc3RhdGUpOw0KPiArDQo+ICsJbGV2
ZWwgPSBza2xfbWF4X3dtX2xldmVsX2Zvcl92YmxhbmsoY3J0Y19zdGF0ZSwgJmN0eCk7DQo+ICsN
Cj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTIgJiYNCj4gKwkgICAgZGlzcGxheS0+
c2Fndi5ibG9ja190aW1lX3VzKQ0KPiArCQlpbnRlbF9wcmVmaWxsX3ZibGFua190b29fc2hvcnQo
JmN0eCwgY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICAgICAgIGRpc3BsYXktPnNhZ3YuYmxvY2tfdGlt
ZV91cyk7DQo+ICsNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
