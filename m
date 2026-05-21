Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2By5EOrJDmovCQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 11:01:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E65A1BC7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 11:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578E710F284;
	Thu, 21 May 2026 09:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYttLujF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D9010F2C2;
 Thu, 21 May 2026 09:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779354082; x=1810890082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nt1Fg+WYUl/No6HZYJL4d2SsL2osDA+H7In9ptEvYoo=;
 b=PYttLujFYFqNnXGC/ojJmvhiP7o9R7BAc4Echt166/nF6/J0S714LmTX
 1rN4eGNpqkl+TNW38nSkQKGtf7eN/PGxOMS/SniNTGJl1qSCSXWQeVRq+
 GF8V1PX3exaTFh1gzZJSHAo9zeDqKgFybv8QJdppdDSiL7sxysWOxQUVi
 88frwxX6AOyK1276lbGH39cqbyBf8WstdnlHqxFh0SVWGSbpBzbz6AC6v
 BXDjftSPmi0RWII2B1LzqNwlDRtv4WKNDcBULn3JBqWQEzxoaVBEmHPsJ
 8qkJrtEf83Tlha+2Vlg8D71NsYpBqIxTTXDHme0ejDRwhr6Qs4vbCuXIe Q==;
X-CSE-ConnectionGUID: iqUrPNJFRhKVg7BNW0+YzQ==
X-CSE-MsgGUID: j/5CZhd8SFqXXMNjz2LIwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80302454"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80302454"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 02:01:12 -0700
X-CSE-ConnectionGUID: 5o/adwWwSMu/EkRCVP3uvA==
X-CSE-MsgGUID: va+u5WYfSoyB3Pu0dHuBLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="240333107"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 02:01:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 02:01:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 02:01:10 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 02:01:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CeOVHV0HVflwwImqUR6RcUnKmp0s7KYH8Qi/6J+Fxgw5F7WdbaOaXMl8r71s0yabJ5LHhGulwcdoYxQWkvUEc0SjlMoCXCfANZmaW/zSexdynzXwbp7E+/JvtUKOxImVBadOfdLZNnYH2/ciPh45vbdg7QAPcvLf3BBsRhWJM6PGVP8XxmAvFhxD19CCifgrjt6Rz9DtjNGA+q5jEJvmQOqFBxYuQG/rwkE7fa81grYPQCkRj8aycTNViizvWz13naXUxRqkOVQ+z7AytKml3WIENOfCRwpkELBxNELmOL1Rnj7qakRzteUMU+6ZL/2++MI4YtWmbqY1AADPG0mBvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nt1Fg+WYUl/No6HZYJL4d2SsL2osDA+H7In9ptEvYoo=;
 b=lnsBfNdZbEeqvg530H0ioAJj6ndNk9illwHjquYMy9Qq9nD35tb0/4Ih9Zo/97hO0KP7Y/5lnwacVz7hT7GB+7/ikPwxdn5I3Il05KpT/C9ugko1wFVbTYOtA9e9Bf43CgvD7/aESV9YHByWaQFirlrI2dzPVjrjNMRfQzl6Q7+seQP633hPyjNOCQg7x3hJXLPUnHOH8LBpV3IIqw15Z4eJfS6cpCG4U5VKGxxlvz0fuUYi+3WSDY2ENwaOQIAPd8I0b9USzoL9yHlW/gN3tLB7Bde/yVq9HPdM0yETLxY9PAZILmbkfyVFJ52rdARsdYUodfoFainGiEFWbgaPXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6091.namprd11.prod.outlook.com (2603:10b6:930:2d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Thu, 21 May 2026 09:01:02 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0048.013; Thu, 21 May 2026
 09:01:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Topic: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Index: AQHc4vtkB6ZB0KdIK0yPFV/Z6JAf87YYLucAgAABIoA=
Date: Thu, 21 May 2026 09:01:02 +0000
Message-ID: <DS0PR11MB8049DBAF76058351534A3334F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-2-animesh.manna@intel.com>
 <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
In-Reply-To: <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6091:EE_
x-ms-office365-filtering-correlation-id: 7aab061d-4580-4843-ead7-08deb7177be1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|3023799007|11063799006|4143699003|22082099003|56012099003|18002099003|6133799003;
x-microsoft-antispam-message-info: AT3y+/N/DXxYaMWBvgSHFJghJKCdATFgERYJNvaerTvrgXp/I1ozB5FJTByvy3eBLoIEp+nmbLXQx6ayXSItXRvcYCWDDBgN3lnpDlJ8LGKKILakMyBZtzcpCd6jsneUhTGkrdcGAcYls0vlb9W73oEuOJI3Jdr9FKNR9YKrtsjUier0jA7aTl7crsTKyTC41i/GWLtVcWa+0VuNab0icNNYVG593z3JppaaRI+AWoiwK81JUkCfEQ+hXWTRyOwjwVgrpkMKmmTYKkg6SrAxdvgVzy6M8mU48Ja9tmo5TO4gftEmUW0HlMMwFvifFpgmiMItHXL1lMNBqy4xowt4ACgmDrq+wO6hbuKribRChC3vjMqG+9yAk1DWdle0TIkFGVk1Jqrg7kJyrJbk1jaAkd/6FqByvZV4QzClyQkOAp0E2UnOj1hmg9YvqWW8Au3wsE+SnB8naU6s1vp88usWmsuSOryoOUnKv2wEQap5N1SRUBaq1ZgDKfc2vNYYhQdAeDJbdtvaioa8OuLlCilEUpl1WOmSe4m1RgnOyhROkMT2I51wuEPdesmvXWei0J3leidW1JnE31AsS8upLgOfMgVe9ax3LryuDmVJyge05dHeMK0eElBngrBD0+D6d3l10RSzKQ1GUDEo8fMcosQJJ6u2ijhDMcCUFPxmFpl3AFIYlGHY1sJsv8R6hcXcMU7Q82BHvzkA3bZ97akN1b23r0TsmfKsY7GmpkHWxAcKu72tvObUfQi72pPMmZCFcBHA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(3023799007)(11063799006)(4143699003)(22082099003)(56012099003)(18002099003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzRNd0tBNldzaEh6T2NFSlQwZ1F2RXovMkFmY1lzaitCTWFQV0RVUGhCU1B4?=
 =?utf-8?B?eDBXZEFEN1dHSXZHeEdnR3kvYTB0c01JMWFQWEpWV1Q2OWwzZnBTcDZNNzl0?=
 =?utf-8?B?SWNIYVEvTWFISEJSaHc4KzBtTTRPYUl1QnU1bFcyWU1EOEZIeW1nVG4yUmIy?=
 =?utf-8?B?UWFkRThERTVlUERwaVFjeXFzSDJCZlc3ZFp5ZC9LVFg4WmduVVRqQkEzYkJy?=
 =?utf-8?B?bmFyVzZiS3NORWRGalptQ1d3ZjhoMjFmRm15a2Z2eVViMk55L3lCYXZQMURr?=
 =?utf-8?B?OVo1QUxiRVMrL2owbzNIazB2dFpsQ3d5V1hJYVBuMkptcUpQQ2dRZzlwaGxy?=
 =?utf-8?B?THpYWFpUTFJyTWFNcUFubitHTy9wd3NKc3o5anFvSFByYmNRNk9VM1NIRVRM?=
 =?utf-8?B?emx4cnB5MWVaTUNSTXU5cXJqVXg2c2NXbWtXWjU4Rkx1VzJUVFdub2RBRkdO?=
 =?utf-8?B?MWdlM09mUURsNVZSS3dhaDFCWHk5MDFSakwvdXQxVHFQZGZYSjhMK2gyWG90?=
 =?utf-8?B?WWo0SC93UmZ5dlV2QmlTVlRmdFA0TzJieGUwcUpWTTRGVmNNSm1Cd2drOWJC?=
 =?utf-8?B?YTAxYjlLQkZKNTVMZ09uaE1PamZzZVJyaVB1MFFCOERLVFByWXJUY2Y2YkFy?=
 =?utf-8?B?R1djTUZDZlNYSEtWWVpRdU8zK2kyQWxqa3h1Tzl1L1FrVUJGSEZYZ0tIMURJ?=
 =?utf-8?B?czFJYU9WV3JLcExlODZROWtCekkwcDF2WjJ1ODJhaXZzUFE5SGRzQUtUQ2Q3?=
 =?utf-8?B?bENEU1lIbWFwVkRVY1VZcXEyZHdxbmxxdERrMmwrZ3lYYVk3alhYaXJldnBX?=
 =?utf-8?B?NHRIbm5tOVdaN1MySU1EVUJUM0lKMGZkL1U2MmRLcGNaaFpUSlFDMjcrM2Z4?=
 =?utf-8?B?MGpoT0Jka0Z5MGZndU9LREFNQ3JtVHpSY0hjc0dkbkZJcWV4YzNCVHlEOUV4?=
 =?utf-8?B?SnhIdFVvN3lGQUpoVWE3Z3dEL1d4Z1REV3lBOG5jOGttMmh0dVROTVBQVnlp?=
 =?utf-8?B?UFpSclpXR2YxMzNJaGtsNzBiYmIwc1gvWUxxMU1YdGVQZ1Zja0pWaFBQU0pO?=
 =?utf-8?B?cHUwbWZOellvblozTVE4d2YvS3o3Zis4ZVF2dW81MTNPdXdIKzhGSFpwZjA4?=
 =?utf-8?B?V0QyWXQvR0EweEJTZlYxK3hsUmZ1Y1FOZnVVcnVkeW5yeXFMQ0hGNUtpeUxm?=
 =?utf-8?B?WVdDTlJTZmphMWkzMnQ3MFFRNGh1WHB1cDZDRFdBQjJvWWU5TDRka1NsZnBM?=
 =?utf-8?B?d2p0MkNvUUt5R1FyaVUxM2p2NEN1Z0NveFB2TG1GSUdDZHZWRDU5dWxhbFQ5?=
 =?utf-8?B?RVZka2FtNXBWS1pyeWkyN09kTW5CSXRjdGV0bmVPa3ZGZDNobjd3N3lOczhT?=
 =?utf-8?B?dmhwTDNGZXkzSzZ5UFNnZWJZYmZ2LzhseStsbEd5cW5jVHNIaUYyQ3BZTnd5?=
 =?utf-8?B?d2o2RThFc2dRNUxIelJ2MXduUFN4Y25lS2JnMTZLbVZQRUVZWWw2MHJIaUd3?=
 =?utf-8?B?SGxrbXR1VVdHNmFDdng0bkRjTk84M0dLaWYreVNQL3NXb1JGbm9JWjM2Qloy?=
 =?utf-8?B?eG0wbllhWE5sTjBOTWhIeURxbGZRd2JvSzVmQkdXZ2RONHFWMVZGR3JkSkU5?=
 =?utf-8?B?MmM5aUNpMTlXTkRxTFF6YmNVSWNYVVFEeWFiNEVWZWorQ1VuSXpmS2h0LzZD?=
 =?utf-8?B?bjBBK0pIdVhYdVR3Rkg3T096cFRyUlhManFRSHZ6L2Z4bXlkT1h5OTVLeXNj?=
 =?utf-8?B?ZkM1NE5qVkh0TVRSQmhieHRZTU1HeURhVGl2alNhRXJZUWcwY25mdHlmbVNj?=
 =?utf-8?B?MTFzNnN2U3UrMEpVcmxRVVpCZThmc1ExVDRXRHZiWnU5aGZEMDZIWm9zeTlM?=
 =?utf-8?B?SWtOMTE0M3RzYXVwRnJlRXN0Rjh2RFZLK1pVT2JmenRuaklwTGU0akd4Z0Zl?=
 =?utf-8?B?VmhockswYVVnbUp1NER6OGJqY2xJWkRKdUlMQ2l3YnFwbGlMb3hveXpsaThQ?=
 =?utf-8?B?RzMwdXI0Y3hSenpWbUtURkdaaEtJTmR6SXMvK2UzOEpqM1lVMllPdUJmMTlw?=
 =?utf-8?B?MlBycEYxN2R1VmZLU0lreGRhV2o2T1dOV1pzaFBHcGRyK2Nsa3ZhM1ZBcm1W?=
 =?utf-8?B?b1Zvc3ZlU0JJNCtLem1qMUg4UFVFU3dBd3E0aDNXeFFKZE1TdmF1WFY0ck9s?=
 =?utf-8?B?cUE1Mk9TNUhEbk91UFlNdERhc3hHTHlQaU5WK0pmaHFhOTFtM1lCNUlaaTFF?=
 =?utf-8?B?L2w0TVlFblNCeFFpL2ZzMXpyRFVRd213YlVRSUswN29HK1hodlM1WDgwZkNl?=
 =?utf-8?B?WldJMDlNaGc1Y1pmWWZObjdzWnplNmVFUDFPUWgrQ0dZVHk1dDh2UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mn3T9Wki4PS8ncwOa857rHM4TZjr5PintDNlRiapAluYsbS6F/qPQ2iqdnV7UA9vBmStD2WTaFwDdnNRiGrdAY32LTOt4f2t5nYQzbpp36wboidJZAvV90rGmGliOTqoaI6H1+nwlEiU7AwPs4NaYrI3JNXuGwFtf+yV0tgzZI6oGXegnT+RtLbJ5EPvLC95qEyFlc21+zNHLpb0HcdXllmpz9AWsK7qKs2swmTs2QBF9m86E7TcBH8Hglpjo9lnH94grxQfuivyXT7UiRtJAvKZ7tY8CX2KlgMTxXSSSSYSKK5Yt6XcgYuUQQ5Zv0pvulnKqx0JUQv3z1r04NvHaQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aab061d-4580-4843-ead7-08deb7177be1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 09:01:02.3175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3df6b35t5kzPsGJEQ6DNyXnNZIEbLd8YpLGdFUDu+ug5FF82xuZR4tHnoReIi7aDRDEvblzTerGKXTjq/nMWZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6091
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RSPAMD_URIBL_FAIL(0.00)[lists.freedesktop.org:query timed out,intel.com:query timed out];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RSPAMD_EMAILBL_FAIL(0.00)[gfx.lists.freedesktop.org:query timed out,dibin.moolakadan.subrahmanian.intel.com:query timed out,uma.shankar.intel.com:query timed out,ville.syrjala.linux.intel.com:query timed out];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA3E65A1BC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiAxOjQ5IFBNDQo+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tOw0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NiAwMS8xNl0gZHJtL2k5MTUvY210ZzogQWRkIGludGVsX2NtdGdfaXNf
YWxsb3dlZCgpDQo+IGZvciBDTVRHDQo+IA0KPiANCj4gT24gMTMtMDUtMjAyNiAyMjowOCwgQW5p
bWVzaCBNYW5uYSB3cm90ZToNCj4gPiBDTVRHIHdpbGwgYmUgZW5hYmxlZCBvbmx5IHdpdGggREMz
Y28sIHNvIGFkZCBhIHNlcGFyYXRlIGZ1bmN0aW9uDQo+ID4gaW50ZWxfY210Z19pc19hbGxvd2Vk
KCkgdG8gY2hlY2sgdGhlIHByZXJlcXVpc2l0ZXMgZm9yIGVuYWJsaW5nIENNVEcuDQo+ID4gREMz
Y28gd2lsbCBiZSBlbmFibGVkIGluIGEgc2VwYXJhdGUgcGF0Y2guDQo+ID4NCj4gPiB2MjoNCj4g
PiAtIFJlbW92ZSBzZXBhcmF0ZSBmbGFnIGZvciBEQzNjbyBmcm9tIGNydGNfc3RhdGUuIFtVbWEs
IERpYmluXQ0KPiA+DQo+ID4gdjM6DQo+ID4gLSBEbyBub3QgYWNjZXNzIHBvd2VyIGRvbWFpbiBt
ZW1iZXJzIGRpcmVjdGx5LiBbSmFuaV0NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMgfCAxNSArKysrKysrKysrKysrKy0NCj4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5oIHwgIDQgKysrKw0K
PiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
bXRnLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5jDQo+
ID4gaW5kZXggZTFmZGM2ZmU5NzYyLi5kYzAzOWJlYTQ1MmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+IEBAIC00LDcgKzQsNiBAQA0K
PiA+ICAgICovDQo+ID4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9zdHJpbmdfY2hvaWNlcy5oPg0K
PiA+IC0jaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPg0KPiA+ICAgI2luY2x1ZGUgPGRybS9k
cm1fZGV2aWNlLmg+DQo+ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiA+IEBAIC0x
Niw2ICsxNSw3IEBADQo+ID4gICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9kZXZpY2UuaCINCj4g
PiAgICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3Bvd2VyLmgiDQo+ID4gICAjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheV9yZWdzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgi
DQo+ID4NCj4gPiAgIC8qKg0KPiA+ICAgICogRE9DOiBDb21tb24gUHJpbWFyeSBUaW1pbmcgR2Vu
ZXJhdG9yIChDTVRHKSBAQCAtMTg1LDMgKzE4NSwxNg0KPiBAQA0KPiA+IHZvaWQgaW50ZWxfY210
Z19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPg0KPiA+ICAgCWlu
dGVsX2NtdGdfZGlzYWJsZShkaXNwbGF5LCAmY210Z19jb25maWcpOw0KPiA+ICAgfQ0KPiA+ICsN
Cj4gPiArYm9vbCBpbnRlbF9jbXRnX2lzX2FsbG93ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gPiArCWVudW0gdHJhbnNj
b2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICsN
Cj4gPiArCWlmICgoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9BIHx8IGNwdV90cmFuc2Nv
ZGVyID09DQo+IFRSQU5TQ09ERVJfQikgJiYNCj4gPiArCSAgICBESVNQTEFZX1ZFUihkaXNwbGF5
KSA9PSAzNSAmJiBpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsDQo+IElOVEVMX09VVFBV
VF9FRFApICYmDQo+ID4gKwkgICAgaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfY3VycmVudF9kY19z
dGF0ZShkaXNwbGF5KSA9PQ0KPiA+ICtEQ19TVEFURV9FTl9EQzNDTykNCj4gDQo+IEkgd291bGQg
ZW5hYmxlIENNVEcgYmVmb3JlIHNldHRpbmcgdGhlIERDM0NPIHN0YXRlLCBzaW5jZSBDTVRHIHJ1
bm5pbmcgaXMNCj4gYSBtdXN0IGNvbmRpdGlvbiBmb3IgREMzQ08uDQo+IERvaW5nIGl0IHRoZSBj
dXJyZW50IHdheSBjcmVhdGVzIGEgY3ljbGljIGRlcGVuZGVuY3kuDQoNCkNvcHkgLXBhc3Rpbmcg
ZnJvbSBic3BlYzoNCkNNVEcgbXVzdCBiZSBlbmFibGVkIHdpdGggZHluYW1pYyBEQyBzdGF0ZXMu
4oCL4oCL4oCLDQoNCkR5bmFtaWMgREMgc3RhdGUgcmVmZXJzIHRvIERjM2NvL0RjNnYuDQpTbyBh
ZGRlZCBhIGNoZWNrIGZvciBkYy1zdGF0ZSB3aGljaCB3aWxsIGJlIHVzZWQgaW5zaWRlIGNtdGcg
ZnVuY3Rpb25zLiBEbyBub3Qgd2FudCB0byBhbGxvdyB0b3VjaGluZyBDTVRHIHJlZ2lzdGVyIGlm
IHRhcmdldF9kY19zdGF0ZSBpcyBub3QgREMzY28uDQoNCkFnYWluIGNvcHktcGFzdGluZyBmcm9t
IGJzcGVjOg0KQ01URyBzdGF0ZSBuZWVkcyB0byBiZSBzYXZlZCBhbmQgcmVzdG9yZWQgZHVyaW5n
IHBvd2VyIHN0YXRlIHRyYW5zaXRpb25zLg0KDQpXaGljaCBtZWFucyBDTVRHIHdpbGwgbG9zZSBp
dHMgdmFsdWUgd2l0aCBEQzUvREM2LiBTbyB3YW50IHRvIGJlIGxpdHRsZSBjYXV0aW91cyB3aGls
ZSBoYW5kbGluZyBDTVRHLg0KDQpXZSBzaG91bGQgZmluYWxpemUgd2hhdCB3aWxsIGJlIHRoZSB0
YXJnZXRfZGNfc3RhdGUgYmFzZWQgdXNlIGNhc2UgbGlrZSBQU1IyL0xPQkYvUFItQUxQTSBhbmQg
c2luZ2xlIEVEUCBjb25maWd1cmF0aW9uLg0KVGhpcyBpcyB0aGUgb25seSBmbGFnIGFuZCBiYXNl
ZCBvbiB0aGF0IENNVEcgYW5kIERDM2NvIHdpbGwgYmUgZW5hYmxlZC4gU28sIG5vIGN5Y2xpYyBk
ZXBlbmRlbmN5LiBHb29kIHRvIGtub3cgaWYgSSBhbSBtaXNzaW5nIGFueXRoaW5nLg0KDQpSZWdh
cmRzLA0KQW5pbWVzaA0KDQo+IA0KPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ICsNCj4gPiArCXJl
dHVybiBmYWxzZTsNCj4gPiArfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NtdGcuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jbXRnLmgNCj4gPiBpbmRleCBiYTYyMTk5YWRhYTIuLmVkNTQwNTgxNzM4ZiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5oDQo+ID4g
QEAgLTYsOCArNiwxMiBAQA0KPiA+ICAgI2lmbmRlZiBfX0lOVEVMX0NNVEdfSF9fDQo+ID4gICAj
ZGVmaW5lIF9fSU5URUxfQ01UR19IX18NCj4gPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMu
aD4NCj4gPiArDQo+ID4gICBzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gPiArc3RydWN0IGludGVs
X2NydGNfc3RhdGU7DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfY210Z19zYW5pdGl6ZShzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gK2Jvb2wgaW50ZWxfY210Z19pc19hbGxvd2Vk
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKypjcnRjX3N0YXRlKTsNCj4gPg0K
PiA+ICAgI2VuZGlmIC8qIF9fSU5URUxfQ01UR19IX18gKi8NCg==
