Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MnMF4fxHWotgAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 22:54:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B353625659
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 22:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFF010E99A;
	Mon,  1 Jun 2026 20:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1d+UlIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57DAC10E999;
 Mon,  1 Jun 2026 20:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780347266; x=1811883266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HRfJEygJ/Di8LZrGWDinmUaEJh6uZLzWPZioUu1UhsU=;
 b=U1d+UlIkAbwElF8qOf8GrB1QG/ip9TH20T9UOCEL93yesv8cNVsn0jlP
 SaOuhb+vCkpJTdEYxv8Zm5WhtaGeiF6/XEDFu0UPU9xg5eP/Q8e5pFl8I
 YG4ws7eXDSoZw7mwE3B6525UNnqhp0v6O1ZQU1posu8ugNcaBd5KSxHW/
 eF2Dh6R8KTMa1Hp26f9VwAV3QLAOBt46siI2gE4NkbdLZh1PmfBTnqa5j
 IUPn+kd17dZfhVzDX/ITJ9wa/5j9PDOcPpqh2NLsZ/FIpp/RCtH7IVG2s
 FLxPIltp3v44Zk8QOXfuusELATJSUGBFyqZFI2tcbqXlKWMrBqatqkn7V g==;
X-CSE-ConnectionGUID: wmtxf+dwTGeW/KxrERRvgg==
X-CSE-MsgGUID: nvVPtepXRaOJf6nEIjWBLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81145363"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="81145363"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 13:54:26 -0700
X-CSE-ConnectionGUID: GX7Va6wGSp6jCbP6rjwlcg==
X-CSE-MsgGUID: yhuaR5F3RFqRHqJDUHGvwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="243786111"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 13:54:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 13:54:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 13:54:25 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 13:54:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BMKfASZBH49swxdKzop6uTjE+ADKbd92lH+LKyzB/oQcHFYhzHXD2fChB3ONXYnEjl/mLZBbAazeZIZQuBXL6EGb0P7W3nGHTxzEKVHcwKo186IQkZTv7DPuKPr6QuyrbhQm96LRdUYp6ro3TL6f2kiwzbGDu06yDpynK9dVBx1WRfxspUsG8v+1HcYKkuGAwgzJMUO/ZZGfdA7/NFjY16phorGQEHGKQjAZYxFvgXJ3+nvLkpUyuGp8tYz3lVLD3NNvbB8XePccwq+BhuB/q6Fq3rCPhwlAxV/hi8GJCD1Xz3b1Tl5vTwezC7Lgo1f6HUE7mtEROBlE398drcb52g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRfJEygJ/Di8LZrGWDinmUaEJh6uZLzWPZioUu1UhsU=;
 b=j0g7q0PY+Azo9hwHfChL0RTBV8KsDDZBv+WA2xhk24COp/21reXcoIJnNPpBiKcKBm5TOI0gaLK86n0K4MDM9SKp2ZgyQF3UEPOgLqMqQgfyZZ6QRCXsE7ZecRpoNesD2R93Z3tFwZcaSlkD2vM5E1MqgLKk4z3kivmPARBcmDODIjEzZlY60TBD7T78tUuvcXMxP4f064fIQFaAPhc8lQxAv0T7YG+3e+W9KX79ulaJrLHOB7HKOzop3y9wrFCxMjLlydXZ0Nj8k8B+lgyeHRV3UZFgcugqdKka7hBS/+/ddNpuXo6RH03XcvrsB8oNqR3gBwhWK+/+MXQM3vXc2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CYYPR11MB8332.namprd11.prod.outlook.com (2603:10b6:930:be::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 20:54:21 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 20:54:21 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 01/11] drm/i915/bw: Don't memcpy() pointlessly
Thread-Topic: [PATCH 01/11] drm/i915/bw: Don't memcpy() pointlessly
Thread-Index: AQHc7o27e/JnMQz+4kGdE3WYicJyT7YqNIcA
Date: Mon, 1 Jun 2026 20:54:21 +0000
Message-ID: <77dac7000355d4770b13f1edcd9d9a89a90f008c.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CYYPR11MB8332:EE_
x-ms-office365-filtering-correlation-id: 4449bbef-043d-4bd8-6a83-08dec01ff4ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021|4143699003|18002099003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: xlDap/Jr8wJ4jGI3w86tciIqn/6JeEwZs3ubnQqVazjtd5vls6EqxBUJAh75J4aKL7gYItN1tv8kNhBR9c8L6gOOX75efLGnayNVle8o3Y0cT8cOm9KlbsEKFRpZyQc2FLMzLvrFBYOSuj/HAfyxi4SYers+pdabvx1SyAyI0Ufe8bM2BteDAPjiu4hKxJiQasNrUFtY+4CZ7slmW/OB2luO7+h4ffXVXeIuHl46JZ0MkXTSGtIlGUtRBOprCucXdwgRJCv176AVQvf6l4Rf8j3FjPCJuwsLuSWple+cXT1293t4c6IyW6yg8k4nvZpa0naymb5+kH8NDCpYlSMJr3cS9FLjHTOph75GgGP0L34Eip5jsvMcYjQPFNPbiGvb0W+mDtWYJIyBcUSTbhGdWhHbtUoAA9+1xPoJVM5ORdw2U+806fdBj7Nn7oZMI6XqdY9DBnOeLzJmlIvoKDhFchDTFYG1a7V4agrmwb4ksmOZ0ZhZ7p0DidAKdXr+7gMycxCX7lTNKKLCSIAXnN9/3bjLC+6qTvHTdXzmqzqWGLtq0WdO4ELJMXKVE4fateSLSfzXK8ioOsR4B3raj8XCHwjtaZGDN/ZwzKDKQJweF9Zjj8tkDSHhwKDvOF1PvgomLucGam0BGJfN/hwInRpiMhzSZ1fXufPL9sHes/Th4l72Vyilsm2+lbRC7qAsEc+KsghWgc9JpU4aOVckd9vN/Q+uzP8Sk9FTGiohxfwFfHU00F2LrtoyiuChS11Svfjf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021)(4143699003)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zy9MRTlPcG9ldVFHa1Bha3FLTTdnaXo3UUVoWHI0OGdKRVVNMDlBaUd0UEJG?=
 =?utf-8?B?ZlB2bnFDL1EzMVUyN3lhZHZkNTRlQVk5VTNOMVpWSnNyenVzdjRGSnRreWJi?=
 =?utf-8?B?V2hXdEw3di9KaWlYUlRrUCtLaHFGSFRRNTQvN0pOcCtJd3FyemNNSG9BVDVi?=
 =?utf-8?B?NXl2dkFBeWcwM0x0YTN6cVU4UTd5anhzN0tJdGg0enBEcnFrQTJNUExSZmEz?=
 =?utf-8?B?MmxIKzdVVEF0SncrY0hvNHpLd3lDWGM0M08rYklsN1NuV25PRDdPclk1d0Zi?=
 =?utf-8?B?ZFF4NjJkM3dhd0RMRTlzcFArVjIyc0ZEZks0cklYTGREYkhHc2ZJVkpGS0do?=
 =?utf-8?B?KzNsaC9NL1RnNTNuUXhiSUlkTHUyOGR1VjVVUElIY0dqcVdwd0pTaXdITGU1?=
 =?utf-8?B?UnJZNXpONkhqMGVuMDIzU2h4anJOUDdDcGIvcm1PWE1YNzlVajZaMUtvb3ZE?=
 =?utf-8?B?KzA2WmNYTXVLSGszZGdVZW5oUzdPU3FwU3Z4dDR0alRJSGFqNFRkc01kdGRH?=
 =?utf-8?B?aGRrY3U1T2RXWTA5WDBMNDdWUnZ5K2lodXROU3lPNW40ZTVOeFVUOWRhYzlr?=
 =?utf-8?B?SFkrZCtpMjhTekt6SFVWQ0ZGNUc0a2xBUzA1Y0YyWHNoVWRUK0JBUWF1NmlI?=
 =?utf-8?B?TEdGMzFGUHVVZHNHMVNkM3lvaWttREF4dElPdWJrZW16a2hnTzB2NzQxTjdR?=
 =?utf-8?B?UEs1c2JLQTU4VHBmalJ1bEhZLzlENkVpa29kSFdabGNkSHZEYSs0aEYybnlE?=
 =?utf-8?B?azF0L2lWTmRqR1M1WktNNHN1dlNPbFRqMmQ4aElWY2hUZDdPMTBiQ2hubHVV?=
 =?utf-8?B?TnMzTy9WQzVxa1J0TmphejJiUUJGYlVUUXZ1ZElkTUgrWHF4ZFVyNHpCTE0y?=
 =?utf-8?B?cHBOUGVPbm9RVnpzSUdwZ3p4TCtocW9udWNDMnBHWVhMbEp4cCtKMTJqcUhX?=
 =?utf-8?B?Ti9HMTljMXpnWGd3czdZbC9WcUJoKzdRTkhQSzE1NVVybFNCcm5iN3p0K2tx?=
 =?utf-8?B?b1ZKbTgyOGFRak1mZHVJNnV4MlRZdldNTTJjTEl3T1owbjhEcTlKRUpZTUtr?=
 =?utf-8?B?bzZzYU9scEJKdHlIMlNtTXU4dFNvaXQyeHZrNFR6THNZL3JpdFBqUGx0ckpS?=
 =?utf-8?B?Ny80MTRKM2pwNTBQeHl2UkN5eU4rbnFsL09yYVhQRENQaHFEOWpKeUJ0djI1?=
 =?utf-8?B?SlEyQ1MzeE0xS01EOUhEU00zYlduR2Q5akVwa21HWGhzK3NEeU9TS0ZIU2po?=
 =?utf-8?B?N1RmenBsa1NzRE11RXUxcmRkZVVrbDRHSzRjLzNrVFo3aDBWdVI5akRkM3Zr?=
 =?utf-8?B?WEhkbWVpV0FpakwxUXNBMTZKSVNoSlJnNjRGNXZ3V0FoSzZSVllhOEs2OG8x?=
 =?utf-8?B?OW9NRlR6R3MrSmNJem1XSzdQWStBVGVoUWw4blJnbzhhd1NCZ3lyelNrb2pm?=
 =?utf-8?B?akxkTmN6Q1F0ZkQ2cTRXWjJqbXViQ21TcW03WTd4MURVVndabjdGQ1BRZGZZ?=
 =?utf-8?B?NDU2VTdJWkMvQ0tTYlFiRjYvZmRyRGc2TlpUbGVlT2RQR2FSRk4wRjlKa1Zw?=
 =?utf-8?B?SWhpbEZJamZ4NlVRd2s0SFEyM1ltOXZpcFhaNTJoUDFNRHdFbys3TUJHbzFS?=
 =?utf-8?B?VXdZbmlkbktDcEl0S2d2c25DQW41VmQxTS8xL05mS2tNS2ZvNlJHYUIvbHJV?=
 =?utf-8?B?Q0g3R1VnU1N0a0E2aXhzL1NOeU1va2t3OWh3Mml6eWlKRnF1L2R5Y2NHSFJt?=
 =?utf-8?B?eFlaQlJWZmtWamF3S2xkZENNc1ZIOFp5Rm1YbkZtR25YR0NqZThVN3FDZkxw?=
 =?utf-8?B?OUU1QnRSOWRUajBnUCt1VjV0ajQvWm41MENvQ216ZDlCSS90NEN2blg0YWov?=
 =?utf-8?B?UGQ2am9TS2swOFRyUHJpeFpGa0V2V3ZUOXI5RGZucUdCRUJ0d0s5UnE5c1hQ?=
 =?utf-8?B?MjNUKzRlZ2c0Smh6Z0U0ckxWT1BnUDJwZ3NOMWk3RWJ0aUxjblk0V1h5T1c3?=
 =?utf-8?B?UDVJWGw3bzNaU0hlbmw4VFp5eGlGSjNpbEdXanZNNW93ZERRWTJVZnJ4dGpC?=
 =?utf-8?B?a2JNSFhKUWZlbWRjeG84VldiWUtGSmdjREZRWFJkZXFkNW9ibkZzYTlmSlc3?=
 =?utf-8?B?SUZGdlNWNWVIeGRGQUVPb0JSbElwLytvTitwaUZtWUZHa3ZqRjE4SWl4L3VR?=
 =?utf-8?B?Yk5uaHVSTEIyRi8yUytVSHBObER3aTdiRjArYVhDdXZMRXlnblJObXY5M1dS?=
 =?utf-8?B?YzdPSnExQmJOTHlHYnA5cVh4aEdvUndVRjJJMHJzeXRCQ0FZUUhuVko5TWhi?=
 =?utf-8?B?U0NuNVFNcHJnbmpESVBIOGY2VCtDRFhUSG9wRTZSOWtCV0MyUFFSbUV3eHVz?=
 =?utf-8?Q?bv8zWsS3HkCQBC1st/xNXyuCiNScEcnIRSIuGGAssd/82?=
x-ms-exchange-antispam-messagedata-1: UweBicTrFJhUhYMqm3upuE2x5LPLJ4hCOz0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F77C217A45E82042A8AC857C2F4B5A6E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KenhuJt5OfvWIBAJWOVrrf8x9GzitNmDH7zq6EcztwzT3Qx6miuNWkm8yRS1QMuJ7IqLpmi40tuaKj1svKovW2PGg39zUDctKtZhomW5vRUpPN0mkqwLa9xOr5vdlMtK8+VQcUsHP65myKaj/I1b/9en0qGkpmMyVrfrhAwhAG5lONSd3rwYow1Hf6+fDBMyfFI/F3DQ90pFsl6gJ4iljZd1bWZNaWzzNFGX0wK9Al1d5gH6moY3Cv7FRKxiYwkOi80adWhjNqQ9ZROkBLhsjuD2gfclb6Mfk3woKc+mWGXYJVrkehkvKLLlUXLSpk3O2vne4cQbUm8YwB9BzIAEXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4449bbef-043d-4bd8-6a83-08dec01ff4ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 20:54:21.4580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jtYvjLcy728+872tGe7YLQfdgMWEpi5nVJ6S60AYeJVI9TIuK0B1qh+jbeBiszZgBqxgYqOWOfAg2B6jawfC2ZOfnb4gD5j1B0lMxH7nAWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8332
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1B353625659
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU3RydWN0cyBjYW4gYmUgY29waWVkIHdpdGggYSBzaW1wbGUgYXNzaW5nbWVudC4gRWxp
bWluYXRlDQo+IHRoZSBwb2ludGxlc3MgbWVtY3B5KCkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAzICstLQ0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQoNClJldmll
d2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT4NCg==
