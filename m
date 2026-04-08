Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJozHLdB1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:53:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E113BB7A1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB0510E61C;
	Wed,  8 Apr 2026 11:53:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DkH5/IE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C32F10E341;
 Wed,  8 Apr 2026 11:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775649203; x=1807185203;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8EjMcx1yRGSyG2IGwiPXHzRIkCwPTN5ILsH9uwIvOjs=;
 b=DkH5/IE7LHocPlHfRbk6/B9uc8PZhrekNkbYSM2+yK5LOZhcfh4BtdYr
 SdvEbXxWs2MQS5QVTcmNhptXRo4Xb/nA2vFw2TueRLJn0PCwXmHYXVBiw
 eLtL8BEpyp8GyyALQEA6WyM0HOnauc3xuUDhqPRPl1SfFBzqN+Qxf8x+e
 G0faPQnW3DJtxdgtjxtoRglasCbVhhC6ADN5iccj0p0BNs3Myk4td5AM8
 6l2ReU+b31FUm+82AmrtfaqInF2DiMjIAkjwXy8nEgyQzbVZauCn7jK1b
 3659F1o5pnhyajABvbFzXiXrCI/ZGBiV4OcNHealBDkUII/kx1bD9IZBI A==;
X-CSE-ConnectionGUID: E9SuECItSQmtbhePa+6TbQ==
X-CSE-MsgGUID: pAaBlFrLQL++N5n4f8u/MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="75799889"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75799889"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:53:23 -0700
X-CSE-ConnectionGUID: TJsQ+ezPR/eqxH2e8mOFBQ==
X-CSE-MsgGUID: RC+A0MayQQasoljw6wcbDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228702199"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:53:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:53:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:53:22 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ABKqIzu3P7DfTxHOztINF39Xj1oekqxKjoj0TrI2sdvQACXAIGzNrt8Z/P4W5nVI7leeDLpG/Jh4XDVwHqwqiHfh6ufC69MOuI1Bkl8Ym1vLwdi0hKymoY4khQFxcYWjQ/3LkOb2aMO4HGDAYleU03stTweRUcNJjQB7PRVXVX8weQV5MOfygeHR727H9I27oliW/L1H0tpV9bJBOP8r7g5iZDf1wrgtMbt1bqfYW+48rdwKQ/rk6w9HDSnykNgH0hWacHnwYPLu3/rlaR9bZz9KZ/q785tNbyKzEow2v+J0yLUUeuLTEE0Z+/oSTbSa1r0H6u68j9lFUyVRIEg64A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8EjMcx1yRGSyG2IGwiPXHzRIkCwPTN5ILsH9uwIvOjs=;
 b=cODV4Q46utoDv1GMCitkFC2JZ/zPtsu7JpnWBpFtBJMPQw4qdC681adaXu3lw3z7uXXyVju4JAjs/SOugXOH1Ia5mBm1vQYW6GdTuKYYdVhMs4cjVdIZku84g1hlp0rLQzipOrBsjuukjmy2ztJAYPUH7cJftPj5mynM7NsqWOpZ6kk1OTNO3qlVD0WBTn1zJaYU/EGZ4QePWm9UamquvV+PdAmUVBvKJDLN7JLdr3uOZjhKK/V0iZDR2BmcQtOSl5TlnqF+MC8CujzpZdABCD0bcu1/vEokh6So9RFDACtEoLB4Mlk1sL1Yn6ICkQWAVeDPMRVmlI69mtjE+ISlSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL4PR11MB8847.namprd11.prod.outlook.com (2603:10b6:208:5a7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Wed, 8 Apr
 2026 11:53:19 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:53:19 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/9] drm/i915/wm: Verify the correct plane DDB entry
Thread-Topic: [PATCH 4/9] drm/i915/wm: Verify the correct plane DDB entry
Thread-Index: AQHcu5ULYWlQKjpowUedmgGAOYPQuLXVJWmA
Date: Wed, 8 Apr 2026 11:53:19 +0000
Message-ID: <9e928fe9bb654df09949862fe3f725a125952589.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL4PR11MB8847:EE_
x-ms-office365-filtering-correlation-id: ec51af4e-6414-4276-eafd-08de95656d85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 6A517ddk5eYTjm7A2pwMJqHv7fp3J+3botXVm6VNu/4gELcMmYt7cFeucOIf0BIys8NKh8BcLhdruvyymfCBxAnbCkswLXzvm8xsois+SQbHAwIG0nH5lntvE9gw6/9bGbcnDHJ3Cl/ek21gootJFlzBq6MY2zZlmAPHoSIZiJYSQaUpIZ6QYjndPsSxTJ6T7Q7KolDmUwax10DpKsEtN1Vvle5k60KA6mjMNZ2Rxbe0kXBXAzjpeptD2hqkT45mTt8nJiRNOX554njEnlyoQmP4nQG2prLFQ1f3KqmhsWtdS58qUdXxJmMqGlRcKhGzQ4o1La1AeNAMzInEOiSDZPznD/6mDGmnzYFv9BCvJb68MG/yGoN7kkq6ndKP1ifgEHxwqr7UEG7l8f+1L/Aqgv3jydmf0Y1WLZN7nSHL5qbLYzWn01SLbfTwbE8MgjDrLvyOQkgzx3bN9cec72fX9/nbvPbO6ZPjtjB++UFSVSFD1w3G1AWhBVnWwp+PhLoB3SuBEj7OWZ2Q0Po5so+18AljIJeJfPn2yiHbUZeHeyMSTjssHiFGcGLj8QXqwDbNfx7RmnJbEAub/vydwJLHozLyInu43EE0rYTyJPmP9b6zaA66rSVZUb7ANSu3CeZUNR/RLc3ZFR2VTSSuH8xIu9h9MnCUoLfFZL6Nv/02CxnsSu/GiUtrra9kVQzEemS6eGWLOuv4WhTdicRjsDP1YpAK0kww3rF7LYlRwOMDiBKfyjdTZiU57VbesUyF3qPFiPc1n3egSsvdW11/KCCEFsinLxFuyBamY/O2quxf1vk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlJqMkFCYXpqcEF5R2VrVTRHcVpCSVVYdU9mVG5YblRscTA1RUJsS1RoclVz?=
 =?utf-8?B?V0JiZGxGR1J4RlRTTmtiOGJDWHBtQUFwWEVHbG83Q1QzU0tLT01FOUROcjJG?=
 =?utf-8?B?NUN3c3EvQitwbnR4aFhrUjFiQVc4RXZ3WmhZeVNqQnJiWGpGdTdNc2dqbHdG?=
 =?utf-8?B?T1JpdGhPWWNvdTI1emxhWVljQmRlWDNqaW9STGhEUHovMjZkUFZ0ZzQwUFcx?=
 =?utf-8?B?L3F0ejJUQXNpYjFnZ0QwR3c1ZjlzQjBaTzhiVnJVUzlRYytJNENGMWk4K3Zx?=
 =?utf-8?B?cTNlOG1pdkRCaFk5RXVDYStQeTgwU3h6ejRva2I4bkNOdld3eFFVSk1YemNZ?=
 =?utf-8?B?VkpZZkhBUm0rcWI1T2VPeFdBVDRPeGZmMXY0M0JSMHJDN0pxRGhPeFFuRDNq?=
 =?utf-8?B?QWNzT3ZYSTJrenFXM1FJOUQ4UzJuN2NOZjhoWkVVYmc0bDJ5QXY3VHZlNjVm?=
 =?utf-8?B?aHJ4U3VoeHBob0VEcmlwSjB6Si83T285bUxYcUs3REZzTlB5dVkrcjQvVExw?=
 =?utf-8?B?K0NGUlRrelljZHI3NnptSDh5L2lqYTF2NHpXcVVhL2pSdlhDUllFOWVoMFJk?=
 =?utf-8?B?SzRmTFIvVE9CbHEyOXVPQWNUZ3NWMUN6cUJDQ1dIOWdFa2drNGlLQXlyUEZO?=
 =?utf-8?B?UlUyTndwRVpMMWZJbTMwelNaKy93ZCtOYnNlRlFId3JUV3hvemZZb1J5NG9N?=
 =?utf-8?B?cTB6d0dPRWtkQmJVTWh0TGVDcU9ZNWFHaXdReGQ5ckRHRCtVUEZtTEtiWTV0?=
 =?utf-8?B?L3E1SW1ZQkdNSExzUnhMZlRsT0xFbFh5cUlIVlBhTHdhRElKczBBVHNoVWU5?=
 =?utf-8?B?ZUJNc1RHaVk5S3FDRDlLUVAwdldGbzNyalM3WmhNUXhERmlTT0tsblhyNjRH?=
 =?utf-8?B?Si9SUWNkVlBOTU9MWmd2b0U1TEMyTTRVeU1jZHREZnJMWURsRXE3SklCT2t0?=
 =?utf-8?B?VDl1aG9teG4yaGlOckdndzhqamhJUnY2Q1JsZlhkREVLMVdUTS8zVld5UDdy?=
 =?utf-8?B?N25WOGR6OEZtem8rUG5sRUJGZzYwRHBBWVlqa1VraXFyc0c5YnJtb0hlYWZD?=
 =?utf-8?B?dE1aTVFrblNWektsTHY1UHFScFYwWEt0N0NWZVhVeVVPcm9ISDE0akJPWjlU?=
 =?utf-8?B?QXFvc0drMnFoZHJjRVRSL3I2TGRERWFyMnNVNGtFdytCVlhkNTIvUGR5YUwz?=
 =?utf-8?B?R1AyVmczNEdmODBodDd4M2kxZjg4RVIzd2FQZXdNdU5ZUzEyVUhucFNVRVFL?=
 =?utf-8?B?L1E2VEdDcHU1c1ZIVFlJKzJIVGNVeWJwNEo5bUZYNEJmWSs1UFhkQm8vNWJS?=
 =?utf-8?B?S0tFemZyVzFXRy9wdVl1UTZJcFg3a0NBbmVUSlpQZ2htTDRHL2xmby9hcXM1?=
 =?utf-8?B?TXl5MS9aMk82aEpaR1ZmL3k4dktUVnFIc3pReFhqQ3BXNHdtbGI1MVJhd2x4?=
 =?utf-8?B?dVlsNm1MMU8ySG14ZVduU0JYeDNXdEFLT0JIYUdsaDlKdXY4U2wyRmJzeDNZ?=
 =?utf-8?B?V1RiS2h3bzNZZmdPQTJMZzFoUFV2dWdDcU9JVzJzL1NSTjJwaW14b2d5cXZs?=
 =?utf-8?B?eGN5NmFIRUhxWHcwWGhYdmNlMTVrQjNOc05paHBBcjhUNHZMRkxDREQyemVX?=
 =?utf-8?B?REtqV0FVQ0Mxc09iRWlqVkZzajZsUndFdXFHYkJoVjhFYko2a0c2NXByS0cr?=
 =?utf-8?B?R00wa0R0eFA4T3lzVTZpNjc1ZHpybG5mMGx2aXlZVEtNMXZycksxb2dkbWRx?=
 =?utf-8?B?azhzZWpBYnpRcEZJc2x6aXpYaUg4TVlJa3VlbmorekZLYlRGU3d1Qlhrb3pk?=
 =?utf-8?B?VFNrSDlVQ2JJZVc4TWgvczNwQk1XS0VaYmNRL09CQUZ0Mi91N2tvMDhxbkFN?=
 =?utf-8?B?LzczaTlmWFRMNHNPRGszZDVlQ3Z0WTZDbWNQVjRHV1RQbUVMTzVzOEJYUEs2?=
 =?utf-8?B?SkI1YzJKTXkwUTNiWGVsT2dBQ2VyVGJmMFh1RGdLeStaVGpUQ1d6bkNtMW91?=
 =?utf-8?B?b0V6WThNZXRXLzlCdmkyYUFtNGNtbWo0YTExR1hTVzVtb1p0SzJSQUlqSnBz?=
 =?utf-8?B?TjFROGtkTllySE1PY0pSRGxla25ySFB3aHFDNU03WWt3UWFpMUNuYzJCYWp6?=
 =?utf-8?B?N1hUU0F1OVJiZTVGRjY3cDVPMGgzT052dGVRMFIxdGhVeFlaaytIWUR0TkVX?=
 =?utf-8?B?VkhRaHFKWkN2UG1HS09xSFFvdlI3WjZLODR1ZWs2ejN3K2V3cVBkd0NuOFB2?=
 =?utf-8?B?MGNKWFpFVXZiWHREdjFDZmVpMTNTZ3F4a2Zwc2VzR1BXU2FSOExzbEczTTRn?=
 =?utf-8?B?MzR5Yk9SUkpkVnFHbmxvc1ZLNERSVXpqbk9EU0JKTnVYOFZrS0QydGR0TjFV?=
 =?utf-8?Q?NFSttt4bZz66kkWTO/VIrAeVL6+Almc13Odgby/Upb3yv?=
x-ms-exchange-antispam-messagedata-1: JIr7FT6flemXo+yBefJoYILix1qBOWZO6KA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E2866E5980EA046BD55CB61AF361226@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kILXoyJPeCGz4HeuBEYp+hoolYL5INxCiPY09Y1s9O24YBde/m04814FLMxGcJLceaiQEb6HFU7jhjzbASxPpJqXfTMgxj0GikJFBsyDKOOdj1zIoJSVylBFWX03LljTorh9Wxt5MxwABp0bWXnTRpXMdpuOcJn2dZjqpZlAzKTH9oZ/ETR048SQg4D9Qh2MsdR9cNLgSlgJMc2ii2uYfM8vKR4chDeICebTZcu/FXanP/wQ9ECULv6PueTsMUY3IXgHUv58uwboO+HxNe/x7+vDNWCNWWygG7J4IIOfukQZFhsh4ptC00TdGVCoBr9IgCn7DJZOnuFlUCoJyd3NqQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec51af4e-6414-4276-eafd-08de95656d85
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:53:19.4440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1rLH7fkGk0OTehH+342kq+n/i3B2PBsS6Hv8vqJjL52b/fCfmMYRJs1rCh16VmBopGSi+T1Qqm6BdbtK0pSCXDLg/0GseC5LvWWMBSkNlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8847
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A9E113BB7A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWN0dWFsbHkgdmVyaWZ5IHRoZSBEREIgZW50cnkgZm9yIHRoZSBwbGFuZSB3ZSdyZSBs
b29raW5nDQo+IGF0IGluc3RlYWQgb2YgYWx3YXlzIHZlcmlmeWluZyB0aGUgY3Vyc29yIEREQi4N
Cj4gDQo+IEZpeGVzOiA3ZDQ1NjE3MjJjM2IgKCJkcm0vaTkxNTogVHdlYWsgcGxhbmUgZGRiIGFs
bG9jYXRpb24gdHJhY2tpbmciKQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDQgKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXgg
ZTM3ZmRlOWY3NjVkLi5jYmMwMzkzODQ0MmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC00MDI2LDggKzQwMjYsOCBAQCB2b2lk
IGludGVsX3dtX3N0YXRlX3ZlcmlmeShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gwqAJCX0NCj4gwqANCj4gwqAJCS8qIEREQiAqLw0KPiAtCQlod19kZGJfZW50cnkgPSAm
aHctPmRkYltQTEFORV9DVVJTT1JdOw0KPiAtCQlzd19kZGJfZW50cnkgPSAmbmV3X2NydGNfc3Rh
dGUtDQo+ID53bS5za2wucGxhbmVfZGRiW1BMQU5FX0NVUlNPUl07DQo+ICsJCWh3X2RkYl9lbnRy
eSA9ICZody0+ZGRiW3BsYW5lLT5pZF07DQo+ICsJCXN3X2RkYl9lbnRyeSA9ICZuZXdfY3J0Y19z
dGF0ZS0NCj4gPndtLnNrbC5wbGFuZV9kZGJbcGxhbmUtPmlkXTsNCj4gwqANCj4gwqAJCWlmICgh
c2tsX2RkYl9lbnRyeV9lcXVhbChod19kZGJfZW50cnksDQo+IHN3X2RkYl9lbnRyeSkpIHsNCj4g
wqAJCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCg0K
