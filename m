Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1a+fGJwVKGqs9gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:31:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032CA66092F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:31:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OYN70q56;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3E610E2EB;
	Tue,  9 Jun 2026 13:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A04B10E2EB;
 Tue,  9 Jun 2026 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781011865; x=1812547865;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=upVZEEAXtAtMQ+Z7sYgWpyCbZsY62Qk3QkDizJIBF9s=;
 b=OYN70q56CCaC1Eqs1EHajZAkM3w9XWssfsWIQSb8aqXz8RYTDF8V5Dk9
 ko6zxBrkNM6/4W16Eu24Iuc5bjQREX8hczwXlTxZa8tUqSChYMb6XVTdB
 7aosnw8DcRT9D8RYIma4sEDtFb0IjPzMbQGvLbFOJPfPWp8PymQNsg+WK
 9M4zSKZnngi+P4OVs2evYAkyQ4gKgRjTZRLiI2M9cZIIWabvX9iTCZIYV
 6uq3DKLR+Bng5FMgtvio+IqQErR3bNSeVClYYpM6lORkF3r3A9glwdVyH
 C7ZYuWqKpFfTUQqjBa4er+dPiWlnr6cbQUSI/H6uDliSDfx30CxyJteSF g==;
X-CSE-ConnectionGUID: VqrEGtoQRY+RaY5ILkJfuQ==
X-CSE-MsgGUID: urmcE6uIS76COZLgoe3k/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81882837"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="81882837"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:31:05 -0700
X-CSE-ConnectionGUID: OKQp0o1HR0GdEZZjAm3TCQ==
X-CSE-MsgGUID: +75LaE8hRfaEFdk+plaxmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="245710500"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:31:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:31:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 06:31:04 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:31:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PSar9qC5KpdCE8Z8XuVl2v5pnW9u3EfzZkFqseTSeD5Tq/++ymZnd6RIL/tSrOUKM5g1vD6ZuHYCfQfyU8KS58SD9xCzjf7bDsE6tfL/5/Dxt8FKJdQgM5GdlXCnLawzZGPCVUtoj73GwBlWOIaAk86MmTKX14/usMlEA/qWllslLcDwBpZwWACrUzNyK71CGIdTVzTK0LYTtZMbpX7ogRBwWDdAuPGb9lHfZluiipbtQmEqNHdH6p44tzvzK89BZTr2qVisDtLV0b1IryVirTNcNgPyIbuQoJUatFi1l8f/uk5zIx6JvtRSc+pyW+pVCZHM9saz7kOdkn9ZDn2Irg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upVZEEAXtAtMQ+Z7sYgWpyCbZsY62Qk3QkDizJIBF9s=;
 b=AiGz25Rud11xT1qt0+Db7Y86kPP3ldhm5L2VNQ6giq6U2A9ShtZnMLX2q/a9z5nMQ77OS+sAB/m6TqnNHqAFrWSukYqmxyqVFpJWB6DMonI8lZ64chkHRHkGzTMoOcATySSRRahm4EgX+P6vq/NP3G1CuNuyvaxGHDM37tEEBt1PaNdhurIm912t7jjbI48cVpF8G4OpclZW8RN5ceq3PbUadxHwSG5nGuI5FBKlqROeXwIhcQAiwB1RyMf3642dDxz4eAg+7c6wL71B+sYOvJLitMP24JksQzCZnxoAD2JQVjJXodb9sgsbECGJdLm4+2gSovoSQf+OhkAAVZefpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7173.namprd11.prod.outlook.com (2603:10b6:208:41b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 13:30:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 13:30:59 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link to
 detect crtc DSC status
Thread-Topic: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link
 to detect crtc DSC status
Thread-Index: AQHc91DYRa1dsJuUsUOZ+YA0FJYtabY2JEyAgAAVeoA=
Date: Tue, 9 Jun 2026 13:30:59 +0000
Message-ID: <a70165a374cc9f07f562d84b76e680134ea0a13b.camel@intel.com>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
 <20260608141124.144878-3-jouni.hogander@intel.com>
 <52f74617-93ff-417c-a48d-4a2c58262e1f@intel.com>
In-Reply-To: <52f74617-93ff-417c-a48d-4a2c58262e1f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7173:EE_
x-ms-office365-filtering-correlation-id: 01cae8e9-ca61-4f01-8773-08dec62b57c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: I3/mV8JpjX/v7Dfs7Ar+JWgFt+rM7fGXbHMhkjYhfn9txZ3wwVJgBJfudOFP3SX8FZP6vKu20f1jiIRUjlGSC5FmUfN2yREt3VVOnaDL2U3KevQgcpyiXIl1ziI8yADHRTVu5BJhqtHLIqaLHIfHbgSHEiVtYUYMjkKH04R1EuiDtvLVqHOjH1r+EOYk+OqtGR6wGu9loS036SmFabwhV53N9etEJBdHq2b2tHVhrY5oHowsVmg91hhraaBdkZEZEAjii5oCGNPCevIsCtMGzQ+yiuNWQvkKHZontEs0kKjstBGJg7oAZE3FNRDZNZyjGuRepkv4Ann+bI1+TzFbtc29NTYF4ITTqtqYE78teGS7yq/9u5lgfd/G06ntzCR0me14pKcRe7b43pz3ZClupYKs3rcZ8HpYXEasPkBDYvt6SbLaFwAqkTf3XCdLYhtt7J+F1tCQWolwluCJTjrcyHuZM5W7Rr3WAIT411oBl1vvy1M0ocwWcrtwDZbwgsIX8HTlH54vIKX1JUHmd26mt0jwYNoPV9X1H0cpgH/hBiIcvsEK5SLgJgMORNlR8CDKcM1JRQB4iSG09v9Lpw9XDo1/plrzKXB7hdhYVgOc6HL+5EQWy5cVOW5HBP04TNjd0YrBXmZlq8zjtkorYnRSrYsXW3ZQuWmDBo4iKLvDImq+4RXbkG0oGBZz2fEIVeuxzJrKjwZs+hQJQDwb6AaQEkZ/0YpWQtyZb4syyCNblFUgPtBL8wztQhaqceYNnt8j
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THlLcDR0ZUZGNlFxRVdlSnpJOFhSVGU1VXI1YTAyUjl6T1JyWUhiMCs5Mmsv?=
 =?utf-8?B?Q1NHSTE5TGxRQi85MlJneFFiWEt4aFZxVVNGUXhCRTBMMUpXaDRjSEszcCtW?=
 =?utf-8?B?WEdmYngvNldaazl3aHJxcncyUDhMN0psM0ExZHhlT0JzWXBDMU93Y1VvVzZT?=
 =?utf-8?B?SUZ6ZXIzaGEwUGw3QUJQT21BRlJQSmRBcC94U3pXLzgxbUNZZ2MvQVhjQ3dz?=
 =?utf-8?B?TUNHOUluZSt3MXhyUmdmdnJhWjM2QWQwc2xMU0FWSEU2UmZjdzE3SXZpTzAx?=
 =?utf-8?B?bUVqUk9wekRWZG45UFkyL2FRQXNYc3kxYjQxS0J2a1pyazI4cjVmeWZqUGhD?=
 =?utf-8?B?cGhXYWRHS1NEQWoxTXd1K3MxbnlZRGFqTmNFWkRVZnZEYnljOTFLR1RTZlZo?=
 =?utf-8?B?NHI2NzkzbU9BS0RNOVlkYkxKMi8rUitET2QvWlFrVFM5eGo0RmFuQkxONDk1?=
 =?utf-8?B?ZlBLVlFDNllYTDNEOFVQRG9VVENvZGdKU21iTklkajlEZ1lrcjdxR0RtQXNO?=
 =?utf-8?B?T3FiOENmK1hXaGc3TE96NHRKNXlyOEhkblNBK1hVbGhRdHoySDkrTE1HYmRz?=
 =?utf-8?B?bG9Kb0IzcVBsRmVKSU5JM1Q1b3VyL2Y4L21Cd1RjRDRZOFR2UHV1Ykg0L0lF?=
 =?utf-8?B?QmhxbnBwLzZnMC9hR1RmdXRiak5jQk44WjRCQVh3VU0wYlQvNXRGRFAxQm85?=
 =?utf-8?B?Qkp1ZGMxZk81aWJRZFFQaW1pOExmV01DVHBKOUlNT2pzWVR0eXora09lMjFK?=
 =?utf-8?B?Q1hKalpQWUk2SlYycE10emt2c0t1Njl6RjJEVGNiYUhuaVFibFVCMFJtTEpF?=
 =?utf-8?B?RThIYkhVS0JOOFpyYkFMYnVGRyszWGVlN1hTdndlcGxlV0ZKT2JZSUZUNXpH?=
 =?utf-8?B?UGpURlJXRUwzckVXV3FrbFFiYVMxZ0g0dE1kVDV0NlZ3ZlFVc0w1QytjbDFB?=
 =?utf-8?B?cWlzYzVPamhWR3F3cmJiUUhnd0RCSjdEQWZ3b0w5NU1zb25pRmZIY3dBc29n?=
 =?utf-8?B?V0Vra0t3bHppcG9BODhTNU0zKy9BcW9yamtKTllrQ2E5NDV1K2MwZTR1cnFm?=
 =?utf-8?B?RklMZVdLV1g0NUZxSkpHSWpCZzhFVWg3ZmdSV1RzVXY3MzJXZ3BKcGhzSXFE?=
 =?utf-8?B?SG9rc0g5WnRsaEpYL0R6dEQveVhKZHJiaVpNZ1ZPUDhxN3Y1MVgzWGFMZytU?=
 =?utf-8?B?SXhZbGlleUErd3psOWpEMGlFYU1SNEdyRFZ3OHRFc2w3TmlZNXpwNkZMOC9y?=
 =?utf-8?B?WlQ3MVdsenl2WkhrZVUzTlUvRHpaQ3FORThYRjBkb2gxQ1dmT2hhVjdvbjlK?=
 =?utf-8?B?bmhXWFNjN3Mrb2NWNFFnK3l5WitHLzIySUFJWEZwbFRONS9DYmRubW82U29N?=
 =?utf-8?B?c0E5ZDFCdCtkTmdrVGxtcXZRZTE5ZmhnNEdUa3VkZWVMUGpXTnlKUVpJbVo3?=
 =?utf-8?B?SHpGM1VhRXU3NU4rcXd6QWEzejZFcktOaGVMemtkU0JvbGJURlNwa2F1dmw3?=
 =?utf-8?B?MUtMT1pkQS9HVmxHZm41TDFRUzVtbVorWmlZYmVnT3ArK0NobTJnSjBaRFBn?=
 =?utf-8?B?cjZuS2duQzFYeDFodjJjOXN2VUxlWjc4NjRmQlpVOTZGaWpzY1M1aHJYMXlY?=
 =?utf-8?B?djAzYzNKQW8rWk5xc2xWZ1kxcjhRUlRVZElrQWVxKzI4cnR6YXFjZ29uOVpE?=
 =?utf-8?B?ZkRTcHRuZG1iN2gvNVpSbDJKRjV0RU1xdFIyc2pvSWNaRUFzZEM1bzBwYjVQ?=
 =?utf-8?B?Ynp2bGVaNncrR3VralBKMnZtVUJ5dXR5b014enFERTFUNFFWVnhLR2pNb0Nn?=
 =?utf-8?B?VnlZNTA3YUNxV2VCcXF2aXNwVkJ0RjVIdnFkb0hCdno5MWdUMXg5U29kdmQ5?=
 =?utf-8?B?TDE0K1M2K00xbE1USlVwOXgzNzFXdzU2eTdDdHdXM0dJcHNqMEVTelFUUFBs?=
 =?utf-8?B?NEtnRlFEcVlCUWwyVVJlRnZjd1RDZy9pb2FXeW9tZU1WNU9vQVhqUjZ3UzU1?=
 =?utf-8?B?d25yR3kxMEUzZklmWkJkTXMyNVpaTkJ5TDJmVnBtSnkvVkNZQjdIWWQ1ZUF2?=
 =?utf-8?B?MitRenB6a3hkQklQalFJbE1JQnAvRzR5THpTeDByYjVWcnJmMVR5dFNlNjJZ?=
 =?utf-8?B?QlBoclJvelhCY2RzeTFqNmV3S1hhcVdSZ3phdXQ4emROaFFvOUdXRXNZK0k0?=
 =?utf-8?B?Nk1pcDhtT2FpMk9iRFBSM0xGTU1JVVhLY0dDOGdsakVUaGhEeGF5S0RQNFRK?=
 =?utf-8?B?Ym04OVhRamlCSXlwcVB1YVVoNXI2TTR3YnMySGZQZEhLMDBDTDZQeGMwTElU?=
 =?utf-8?B?TmQ2NGxHanFaVjFPWHZsOUFCMnpScFc0bXpBSjlvYUdZODlmdVk5YTVYcU56?=
 =?utf-8?Q?PIBjhrFyCh7TdYmDF0bKJsBv4ISHSPI1MUBlcZEowZFAm?=
x-ms-exchange-antispam-messagedata-1: nqyo6n11rtKKIlu0cq9NpQfmM4g+hFvK1aQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7725B7B92AF578448D34FBF2AD8AFA48@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VLSKFKF/fH69yAij25RrRPOwJtHnAa5nQu9rgD5/+HuKHUXva7LX10kG3NZcdj/Bbuoos+tmoKL6rcKgQ8TijEFVA7xGGpyB7GT5ANK6T+6Y724YBb3J59h1fdjI9dZ3rGQCtgv+jJIXwuj4YI2K4Vk2QHeeTSeCWBfYO76UIVPGS4gq7UeHrUdnylK4i/uO06rCNX1nnWDfWAf1m/9gdRrg5xmzBMLXgo5FwINEsIc447CdjLdvuL+shyfIWFBOuUd0/HkDX7FLgxXFB/P3CARu+MKUDwhtwqwi36yCuVuyX7uQFWGgCSmXm0AmucrAmDeNz0sPUUi03bnOzya/Tg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01cae8e9-ca61-4f01-8773-08dec62b57c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 13:30:59.1122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uTwRMiZ2sFHI7vhRnLpcopJ/UwUNbEri6tS5NZRcPy90NHJk9i6PNZHTz4mZ16hj9h97UbK+osDT34kL0KOuDrp9t8T8QuUlQkJBARoYHBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7173
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 032CA66092F

T24gVHVlLCAyMDI2LTA2LTA5IGF0IDE3OjQ0ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDYvOC8yMDI2IDc6NDEgUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBJbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rIGlzIG5vdCByZWFsbHkgYWJvdXQgRFNDIGJlaW5n
IGVuYWJsZWQgb24NCj4gPiBjcnRjLiBJdA0KPiA+IGlzIHRlbGxpbmcgaWYgRkVDIGlzIGVuYWJs
ZWQgb24gbGluay4NCj4gDQo+IEhtbS4uLiBUaGlzIGlzIGEgYml0IHVuY2xlYXIgdG8gbWUuDQo+
IA0KPiBBcyBwZXIgY29tbWl0IDQ3MGI4NGFmNDU3ZSAoImRybS9pOTE1L2RwX21zdDogUmVjb21w
dXRlIGFsbCBNU1QgbGluayANCj4gQ1JUQ3MgaWYgRFNDIGdldHMgZW5hYmxlZCBvbiB0aGUgbGlu
ayIpDQo+IA0KPiBXZSB3YW50ZWQgdG8gZG8gYXdheSB3aXRoIEZFQyB0cmFja2luZywgYW5kIGlu
c3RlYWQgdHJhY2tlZCBEU0MuIEZFQw0KPiBmb3IgDQo+IFVIQlIgd2FzIG5vdCBnZXR0aW5nIGZp
bGxlZCBzbyBpdCBtYWtlcyBzZW5zZSB0byB0cmFjayBEU0MgKEZFQyBiZWluZw0KPiBtYW5kYXRv
cnkgZm9yIERQIERTQykuDQo+IA0KPiDCoEZyb20gY29tbWl0IG1lc3NhZ2UgZm9yIGNvbW1pdMKg
NDcwYjg0YWY0NTdlDQo+IA0KPiAiLi4uDQo+IA0KPiBCYXNlZCBvbiB0aGUgYWJvdmUsIHRvIGJl
IGFibGUgdG8gZGV0ZXJtaW5lIHRoZSBEU0Mgc3RhdGUgb24gYm90aA0KPiANCj4gbm9uLVVIQlIg
YW5kIFVIQlIgTVNUIGxpbmtzLCB0cmFjayB0aGUgbW9yZSBnZW5lcmljIERTQy1lbmFibGVkLW9u
LQ0KPiBsaW5rDQo+IA0KPiBzdGF0ZSAoaW5zdGVhZCBvZiB0aGUgRkVDLWVuYWJsZWQtb24tbGlu
ayBzdGF0ZSkgZm9yIGVhY2ggQ1JUQyBpbg0KPiANCj4gaW50ZWxfbGlua19id19saW1pdHMuIg0K
PiANCj4gU28gdG8gbWUgaXQgYXBwZWFycyB0aGF0IHdlIHdlcmUgYWN0dWFsbHkgY29uY2VybmVk
IGFib3V0IERTQyBhbmQgbm90DQo+IEZFQyBhbmQgc3RhcnRlZCB1c2luZyBpbnRlbF9kc2NfZW5h
YmxlZF9vbl9saW5rKCkNCj4gDQo+IChsYXRlciwgZmVjX2VuYWJsZSB3YXMgdW51c2VkIGFuZCBy
ZW1vdmVkKS4NCj4gDQo+IFBlcmhhcHMgSSBhbSBtaXNzaW5nIHNvbWUgY29udGV4dD8NCg0KSXQg
c2VlbXMgSSBtYWRlIG1pc3Rha2UgaW4gd2hpY2ggcGF0Y2ggSSBwbGFjZWQgdGhpcyBjaGFuZ2Uu
IEkgd2lsbCBmaXgNCnRoaXMgaW4gbmV4dCB2ZXJzaW9uLiBJIHdpbGwgcHJvcGFibHkgbW92ZSB0
aGlzIHBhcnQgdG8gbmV4dCBwYXRjaC4NCg0KQW55d2F5cyBpZiB5b3UgbG9va3MgYXQgd2hhdCBj
cnRjX3N0YXRlLQ0KPmRzYy5jb21wcmVzc2lvbl9lbmFibGVkX29uX2xpbmsgaXMgYWJvdXQgeW91
IGZpbmQgdGhhdCBpdCBpcyByZWFsbHkNCmFib3V0IEZFQyBiZWluZyBlbmFibGVkIG9uIGEgbGlu
ay4gSWYgYW55IHNpbmdsZSBzdHJlYW0gd2l0aGluIGxpbmsNCm5lZWRzIEZFQyB0aGVuIEZFQyBu
ZWVkcyB0byBiZSBlbmFibGVkIG9uIHRoYXQgbGluayB3aGVyZSB0aGUgc3RyZWFtIGlzDQppbi4N
Cg0KRFNDIGlzIGEgZmVhdHVyZSB0aGF0IG5lZWRzIEZFQyBiZWluZyBlbmFibGVkLiBUaGlzIGZh
ciBtaXhpbmcgRkVDIGFuZA0KRFNDIGhhdmVuJ3QgY2F1c2VkIGFueSBwcm9ibGVtcyBiZWNhdXNl
IERTQyB3YXMgdGhlIG9ubHkgZmVhdHVyZSB3aGljaA0KbmVlZHMgRkVDLg0KDQpOb3cgYXMgUGFu
ZWwgUmVwbGF5IGNvbWVzIGludG8gcGljdHVyZSBhcyBhIGFub3RoZXIgZmVhdHVyZSB3aGljaCBh
bHNvDQpyZXF1aXJlcyBGRUMgYmVpbmcgdXNlZCB3ZSBuZWVkIHRvIGRpZmZlcmVudGlhdGUgRkVD
IGFuZCBEU0MuIFBhdGNoIDINCmFuZCAzIGluIHRoaXMgc2V0IGFyZSBhYm91dCB0aGlzLiBIb3Bl
ZnVsbHkgdGhpcyBoZWxwcy4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiBJbnN0
ZWFkIG9mIGludGVsX2RzY19lbmFibGVkX29uX2xpbmsNCj4gPiBjaGVjayBzdGF0dXMgZGlyZWN0
bHkgZnJvbSBjcnRjLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlLg0KPiANCj4gSSBhZ3JlZSB0byB0
aGlzIHBhcnQgdGhvdWdoLiBXZSBjYW4gc2VwYXJhdGUgaXQgb3V0IGluIGFueSBjYXNlLg0KPiAN
Cj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBBbmtpdA0KPiANCj4gPiANCj4gPiBBbHNvIHJlbmFtZSBp
bnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rIGFzIGludGVsX2ZlY19lbmFibGVkX29uX2xpbmsuDQo+
ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgIHwgNiArKystLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYyB8IDIgKy0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuaCB8IDIgKy0NCj4gPiDCoCAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGFkMmY2Yzc5ZjU4MDguLmY1ODIwMGQz
OGFjMmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiBAQCAtMTc0MCw3ICsxNzQwLDcgQEAgc3RhdGljIGJvb2wNCj4gPiBpbnRlbF9zZWxf
dXBkYXRlX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwN
Cj4gPiDCoMKgCQlpZiAoIWNvbm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuc3Vfc3VwcG9y
dCkNCj4gPiDCoMKgCQkJZ290byB1bnN1cHBvcnRlZDsNCj4gPiDCoCANCj4gPiAtCQlpZiAoaW50
ZWxfZHNjX2VuYWJsZWRfb25fbGluayhjcnRjX3N0YXRlKSAmJg0KPiA+ICsJCWlmIChjcnRjX3N0
YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+ID4gwqDCoAkJwqDCoMKgIGNvbm5lY3Rv
ci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHNjX3N1cHBvcnQgIT0NCj4gPiDCoMKgCQnCoMKgwqAg
SU5URUxfRFBfUEFORUxfUkVQTEFZX0RTQ19TRUxFQ1RJVkVfVVBEQVRFKSB7DQo+ID4gwqDCoAkJ
CWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiBAQCAtMTg0MCw3ICsxODQwLDcgQEAgc3Rh
dGljIGJvb2wNCj4gPiBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+IMKgwqAJCXJldHVybiBmYWxzZTsNCj4gPiDCoMKg
CX0NCj4gPiDCoCANCj4gPiAtCWlmIChpbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rKGNydGNfc3Rh
dGUpICYmDQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSAmJg0K
PiA+IMKgwqAJwqDCoMKgIGNvbm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHNjX3N1cHBv
cnQgPT0NCj4gPiDCoMKgCcKgwqDCoCBJTlRFTF9EUF9QQU5FTF9SRVBMQVlfRFNDX05PVF9TVVBQ
T1JURUQpIHsNCj4gPiDCoMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gQEAgLTMy
MzUsNyArMzIzNSw3IEBAIHZlcmlmeV9wYW5lbF9yZXBsYXlfZHNjX3N0YXRlKGNvbnN0IHN0cnVj
dA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqDCoAkJcmV0dXJuOw0K
PiA+IMKgIA0KPiA+IMKgwqAJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiA+IC0JCcKgwqDC
oCBpbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rKGNydGNfc3RhdGUpICYmDQo+ID4gKwkJwqDCoMKg
IGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUgJiYNCj4gPiDCoMKgCQnCoMKgwqAg
Y3J0Y19zdGF0ZS0+cGFuZWxfcmVwbGF5X2RzY19zdXBwb3J0ID09DQo+ID4gwqDCoAkJwqDCoMKg
IElOVEVMX0RQX1BBTkVMX1JFUExBWV9EU0NfTk9UX1NVUFBPUlRFRCk7DQo+ID4gwqAgfQ0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPiBpbmRl
eCA4ZjA2YzNhNGQ1NmRmLi4zNWM5M2ZjYmI2NDI3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPiBAQCAtNDMxLDcgKzQzMSw3IEBAIHZv
aWQgaW50ZWxfZHNjX2VuYWJsZV9vbl9jcnRjKHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpDQo+ID4gwqDCoAljcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxl
ID0gdHJ1ZTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gLWJvb2wgaW50ZWxfZHNjX2VuYWJsZWRf
b25fbGluayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0K
PiA+ICtib29sIGludGVsX2ZlY19lbmFibGVkX29uX2xpbmsoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiDCoCB7DQo+ID4gwqDCoAlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsN
Cj4gPiDCoCANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5oDQo+ID4gaW5kZXggMzM3MmY4Njk0MDU0ZC4uNjBkODYzOTk4MDhjMCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+ID4gQEAgLTI4LDcg
KzI4LDcgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+IMKgIHZvaWQgaW50ZWxfZHNjX2Rpc2FibGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgaW50
IGludGVsX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpw
aXBlX2NvbmZpZyk7DQo+ID4gwqAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlX29uX2NydGMoc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gLWJvb2wgaW50ZWxfZHNj
X2VuYWJsZWRfb25fbGluayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRj
X3N0YXRlKTsNCj4gPiArYm9vbCBpbnRlbF9mZWNfZW5hYmxlZF9vbl9saW5rKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IMKgIHZvaWQgaW50ZWxf
ZHNjX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+
IMKgIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gPiDCoCBpbnRlbF9kc2NfcG93
ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBlbnVtIHRyYW5zY29kZXINCj4gPiBj
cHVfdHJhbnNjb2Rlcik7DQoNCg==
