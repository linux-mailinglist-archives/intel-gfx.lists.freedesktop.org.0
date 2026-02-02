Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKkVEAEIgWkCDwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:24:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4991DD1103
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2B110E27D;
	Mon,  2 Feb 2026 20:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjYR3+29";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C5510E27D;
 Mon,  2 Feb 2026 20:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770063869; x=1801599869;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wiqG4rRnDY0ijF1Lpx00yjbuJC6zmTTE/h2a9AzbV+g=;
 b=KjYR3+29/9tfsN0VRGzV6XzayznRiQE1GlIEIdgOugmHqqjz1s/2azgL
 +XC+TFpdASyhoTk322RGDDiBwMDTPnl+vrvc6uNGNATB3hiZMSIAYumZ2
 VnERgAQGZSt+hJGbRe0HU2bqhJ5KEp6dzFnOoZEgwJ1jDh61Gu6iI3gBl
 KxEOas+k4A08G48EEwyX+0Kpiil3opm7Gk4BJ+0fFeNX9Q7J0GIoWGAOP
 PMT/oB39KULUXlgHX7/MIrewphwQMYC2PCkLZpSCh1i7FelF7wuC1aGsE
 TgllblXxh9Ct4QV9EuSZlHQgHU8ApFO7kHjlzC//JWCwxH8LbHCaMlZqQ A==;
X-CSE-ConnectionGUID: 9lqsiqMAQ5OC7uQFr0lrUw==
X-CSE-MsgGUID: wQHgtOgXSpmEfCFUT7UEww==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="82599659"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="82599659"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:24:28 -0800
X-CSE-ConnectionGUID: zZV8FVw+RTaOKemYm+Ew6w==
X-CSE-MsgGUID: FOWOj4MWSfmFje1MO410MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="208728343"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:24:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:24:27 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 12:24:27 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:24:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GqY4o16Wp7s+YMbiQZpPh6BZcYZWKsypaVfUWHR4IrGAcmzwTxMLyW4MCA01SWqKeBu6x3pa+gEqy2n4JHBEJxAlnrPlwq22Y12wab2kdbNv29r6H/qYUWbJoNeRo8BzKQjEz659lBh4qKHBvdN2UwuFutMpkG5VMsv4WFY8K1u1Yy/jVuE6Z6JoT3GkwIvftNHYwY/SDlAidoQEacwCOHUt1uQsnpteS/DD3tZpiEPcnOyxeSfKzLBpcGmFz9el1+TVx3sOwyGNh3kWypHE99b/z7bAJy8OOICJqn72c+YAUf/ts50CMYTtSivVU0ZkYmyS1DplKInD2tdFLwgctw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcZejK3cqrMoA3S04fL0PGF3IFgxrzgb3YjibuantnU=;
 b=EkhxKSgktj0MAwPbfHFN/lrBgZqRg98eSmS1SEC/WrB8wATTJSbkVEyGXFhUhbG4KbdkvWAsdOWdSip1NP/WeA2THIEqilKgSOG30uwo8vEFOS0HVy4E8NEArUwZT/1WvgyrcyFvKXeu+oXTlHvooszottKt3KSQYWiaUq4D12vQKxrc9V7/NZ8TYYRiNOWqB7zvXR+zHoBifi+bNRaAeMVyYOdOopl6ZAgrdqoHQPnAy3Ulb6BSsjvcOLOVIhUMSV27GacK3/KW8LAqUGaQH97MYZeFuvVM9/4VGppYbKerf7ZE2c6Bh6Q7uY8kM21a52Wnkel9Kx5hXE2ipZy42g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7403.namprd11.prod.outlook.com (2603:10b6:208:431::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 20:24:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 20:24:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 07/21] drm/i915/display: Handle vlv dsi workaround in
 scanline_in_safe_range too
Thread-Topic: [i915-rt v5 07/21] drm/i915/display: Handle vlv dsi workaround
 in scanline_in_safe_range too
Thread-Index: AQHcit1j9K8GKi6jfkWY4kkpK3RdfLVv7fMQ
Date: Mon, 2 Feb 2026 20:24:22 +0000
Message-ID: <DM4PR11MB6360EF1E1C9CE78EE0AB0C7BF49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-8-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-8-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7403:EE_
x-ms-office365-filtering-correlation-id: dfbbd27a-cc55-4733-033e-08de62990d54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Rhlny6gvFgVX/X+vWfQLSGWieMl2ysaIkM4lkMbH/9Ow7YdCGkXWOPjem4Ub?=
 =?us-ascii?Q?3N1+I6898v6Qu1d6t7Bw2ygpzuH/3WnWeQCtt1/77B5ckLLFGSIRE7ccfdAN?=
 =?us-ascii?Q?eBrpVL757kIjzx2ptZDlAAr1fIKJzyLxVr6EaKKxiIvQ7RBNTzxTMf5RgsvX?=
 =?us-ascii?Q?/XwPsVsMdcT9JZe2OuubybJCWoDn0/Mi7CIajHmcRUp48cC9fCtMIcaAthrx?=
 =?us-ascii?Q?SA/CLgQ59mLBQM11FwV10Gc9mSPARZarVZSNtVgOTgxy34gF0SymLHv2B2Ym?=
 =?us-ascii?Q?KnmIQeflwwB4ZIjIoKWPufUsduozHH5s+LNnnqtH13N0Vk3WJLm5dzBmhyIT?=
 =?us-ascii?Q?8D3KXulFFO88xKB10m+7TltIIvwBg/7QYIxMTilrsIXiJbupCkiya/KAcJkJ?=
 =?us-ascii?Q?bUNAZ377zTWLDLkwoh5TMfCr31/nBtSMW6mqgRIb7c8vQC3GCpXoWTrfBMwp?=
 =?us-ascii?Q?0bcheMDxpCgPIb9rDUcM24uKMOFAkXOhl9x+84etT1hDk1IwlFQyggz4DnsU?=
 =?us-ascii?Q?ptKr+KDsWEurHjIBpbHOA+raomz6XIM6KKtGjAvE8McgBU/E2J2sQSWj1XtP?=
 =?us-ascii?Q?BXfyVsfUQ7a1g3klQmmvg/+QBmRw6l2Wl3hBXpZk0rgxgsSy/FQADvUZV9VA?=
 =?us-ascii?Q?63xsNJpT+NS/D5Ky7eDgPirxD3mxL6YOPdba/3cJG7AJxda5PYQ98aY/4quG?=
 =?us-ascii?Q?rtmXpvvehy/M+/lb64y1yqMjHW6NV4TwOANFvJHJupxM7fUVBiMVUIpuB2hR?=
 =?us-ascii?Q?oJbejNWp9GYC0BMlEspIbaDriIbszPqBSAuvZDoWVjypFv3VkkqfOgZyrRfj?=
 =?us-ascii?Q?0uMzX7dgNf0Io0qmCLoYCj3UXuLLx9k7yLpngtC1dY/WFgdwFQrXdP2UxF4K?=
 =?us-ascii?Q?cJhejS4p080BeVWxZ1KXviDmAnJPXf0v9uCoW57MHxshGtZhlEBpMOx38/mH?=
 =?us-ascii?Q?VX9hdauim7VjoStQNLeLLOrv0C0eIMu8mM3Uma5EAx1ktQqpbU81nUvrIoPQ?=
 =?us-ascii?Q?W6EtQsGI5YIe/Tx48fmRxrCXeTT89bJ/+hJd0O4gSnc58Un1zY5xBY+NjcNo?=
 =?us-ascii?Q?p4t2/VhEKzmPSe5yU8olDrSGIUE1dqA47S6QI9gUAW571cqnFSfZJhzU7Ugy?=
 =?us-ascii?Q?Ru7jtmeBGa9c5DkXAhmt0bCcGiFIJ2MTxTctSdD950DpA6Iw4/0FcKYR7hXS?=
 =?us-ascii?Q?JvQj+olLD5JL765azVCnO3pLwWyuag7n1iDFpIuTFuVgOxb5KY/aWL8sljAC?=
 =?us-ascii?Q?8l4gASGan/Bd+J8OJ5Gj6xHTdqoBzPcx898Sy4mxoDNIOKfx5Xs/rMe5XL70?=
 =?us-ascii?Q?rODL74dqf3kdTkpKpH42YSUPkCbSfIGUlS1Q9hdIPptJhJxQVC8iCvak1Iif?=
 =?us-ascii?Q?JskmMG2y8teLngqiqOLOMT7OI12YiLRX+xhChH60MosTj+hOUC3W+1TmDBmw?=
 =?us-ascii?Q?09tAxEUE67sWfxpRF9DYtP09epZJa/eoxzmlssU30PMMNULCj1YdFCKxFufz?=
 =?us-ascii?Q?T7K8pMyzTHbGXBFZqDPf8qvjTD9IhIn6zblY7t7682T7ixMQnLdb+WpNlnQ6?=
 =?us-ascii?Q?CuPJVEs8AX5FaziEbIWpohjelDqkU05KVFlaB6x4MeTpquTTk/dYAk/5kp6r?=
 =?us-ascii?Q?7LDmSpNbN5oAkWirteismtc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oLRgt7qYeCaI7AUXkUXa23eqNpNhjU+uQl6hWyQGz7wchVjc5uU6rjdnM7+R?=
 =?us-ascii?Q?UAJ3ovB5xjff3GTrn76bMi4n5Y7oAPkNBpc7AqLlagaYl7x/KTTqIuPNl0nw?=
 =?us-ascii?Q?3W6g3ch/d3cLwdWE4qr79kji86ibrQpCeLsoFFQkyCBr86ZJguulYD2xHYWx?=
 =?us-ascii?Q?G2JLb+5dSiRFGzy/OgsBb+lnhrr/XlxsXUP1c0FmmIA2AY/ZkUd8qqfoPsF6?=
 =?us-ascii?Q?l/xA3rcAM3wZJwOrK3wbelAO0JCSEwV82rjGLz8xIikeIsDffYoxHVlCvexH?=
 =?us-ascii?Q?7hPBX3oo0wiQ6CXUa+ZKeh4vpg5y72RQOFZgWCD+Nyvo1w1BAqs2F8pCFOkV?=
 =?us-ascii?Q?HTx22HSckOYQYblUYJFaT2DS1SpvloS1jc1jpPqoN1sAsEm2X060M5d31p6Q?=
 =?us-ascii?Q?C6nSDTySehqw9cFKyEaYbs+luh1aslT+hr8iUmB/WsE0eC11HLpNP+UoIMQV?=
 =?us-ascii?Q?q8aK0soCK9bWDTq9a8XPnBie8EnePCZfd/Src/WOhAaQLBBz/y5DGqWQLKEk?=
 =?us-ascii?Q?nmF7POAmr3khGi1j1YIaihCXcsSy/WqTC2Tj1dcbX+4MYvmJ0MdyVm/FLmYq?=
 =?us-ascii?Q?iFxu9QlwrHYI4JcaPcGhXoBaHN31i2TVsQm5oW+KeP277BkyOeC1VlTy33mr?=
 =?us-ascii?Q?cuITdJ9j6G58OfmMzbDgoB8C9b4i2i/1AsGS7PH4MOV72c0FaQpjfRmWHgCW?=
 =?us-ascii?Q?8MGrYIfwZ354ukMMEsT2nXUdqj1ZDtyzZGFt6bEq5EVSWr0Mep4UA1Ko8dV4?=
 =?us-ascii?Q?qOimOnZbQNrVIj2nbN8ELLhlRr66nHqY1L3Q7XrPW0xVX+KQRc/DXvLG5bZa?=
 =?us-ascii?Q?zSAFcOQ44RP973wvdXwTLZ1WUBMusIsgDuJ+Qvol3tF9RJfM23Z0MGhxy4oL?=
 =?us-ascii?Q?Hnc4XUNMSUbyJSjQhWZhN8lnyt8E0KNVGqbJcEf8Vk7imfTz9wUerV6icEMR?=
 =?us-ascii?Q?MIHC/8hrcDZe4X320NpWAp/hgaIpC0L7LD53W5LR+9dEoeJQEKOMiKNrL1Op?=
 =?us-ascii?Q?8sELycAyStom4XCQ1RtsSztJ+rI1dTmypWW/fd2d/8iaRfpLYkHdF7q2X68R?=
 =?us-ascii?Q?lTDQs8zTFtgsm1TGiYQYI5QOalPfQLfYHmfn5U/pX3TZ3jcZisDJNh+XsrcY?=
 =?us-ascii?Q?HBIWQrOMcXTUyxRh/2obXTSSGUKHj2dzRcWYuzlzL6jafiAx0ediI1Tn/bOW?=
 =?us-ascii?Q?pgWwS8pYg/znXzEunrSoeN3Kll5V7DuhjHgUmQ6jcokf+gIsXOOiMSiegVtf?=
 =?us-ascii?Q?xSwmV6g8s+e/F4EXaIhAe4iv/aLwBUDTZrMJvaRUgh7pvqY00tSqnllQJ8+l?=
 =?us-ascii?Q?2nhChUKc0i9sj11WrVut1HbRUIdy7EoxCnYyeFqXVSz0R7k9tzoKojLwjnIF?=
 =?us-ascii?Q?ZNxqn+oAZ0oZK2oy71hVTy7qRZEG4dARZMVYSexIaI9kubF069euj85/xHDr?=
 =?us-ascii?Q?owzHQdSc4MTq3vAmM10tdmE4wvurAYvUNel7JwiUkB7v3a20QbRWpibo1Nrn?=
 =?us-ascii?Q?UWF9Md0Yq+Sst1jabboX494THKbw1wUSTJv5EjCiCIbg2HJhHFXgGr0iq1sX?=
 =?us-ascii?Q?lwc4Eje1lVPVn+dVVJsOh2+qOPTDiN6H6Fw+ay53b1EZxGENGhW8W5outZYs?=
 =?us-ascii?Q?UlwPDIFU2KUf4HYVzqZUcMEG9WImdZX1YPTJH6gE7PoCR0sIpVk7ra4olh89?=
 =?us-ascii?Q?xStJfgFcT6kHUXA1ku/j+xfHwyYxGhp5ajvmVIMZjI/nAwiWdFuuFpI4uJt6?=
 =?us-ascii?Q?ReAn8sDUEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbbd27a-cc55-4733-033e-08de62990d54
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 20:24:22.6258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8HYZln2ZaHoCq9tkZORsg+exWqwqL6ku49fGHoYNH8hm+WFMpuq87viSyOticksc7RErCxniyOGY/sl0YLgpaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7403
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4991DD1103
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 07/21] drm/i915/display: Handle vlv dsi workaround i=
n
> scanline_in_safe_range too
>=20
> Now that we have a macro, might as well handle the VLV dsi workaround too=
.
>=20
> This makes the vblank evasion code slightly more deterministic, by not lo=
oping
> with interrupts disabled.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 36 ++++++++++-----------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 58c374a7530fe..6bc784563a7c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -739,6 +739,24 @@ static bool scanline_in_safe_range(struct
> intel_vblank_evade_ctx *evade, int *sc
>  	else
>  		*scanline =3D __intel_get_crtc_scanline(evade->crtc);
>=20
> +	/*
> +	 * On VLV/CHV DSI the scanline counter would appear to
> +	 * increment approx. 1/3 of a scanline before start of vblank.
> +	 * The registers still get latched at start of vblank however.
> +	 * This means we must not write any registers on the first
> +	 * line of vblank (since not the whole line is actually in
> +	 * vblank). And unfortunately we can't use the interrupt to
> +	 * wait here since it will fire too soon. We could use the
> +	 * frame start interrupt instead since it will fire after the
> +	 * critical scanline, but that would require more changes
> +	 * in the interrupt code. So for now we'll just do the nasty
> +	 * thing and poll for the bad scanline to pass us by.
> +	 *
> +	 * FIXME figure out if BXT+ DSI suffers from this as well
> +	 */
> +	if (evade->need_vlv_dsi_wa && *scanline =3D=3D evade->vblank_start)
> +		return false;
> +
>  	return *scanline < evade->min || *scanline > evade->max;  }
>=20
> @@ -769,24 +787,6 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx
> *evade)
>  		local_irq_disable();
>  	}
>=20
> -	/*
> -	 * On VLV/CHV DSI the scanline counter would appear to
> -	 * increment approx. 1/3 of a scanline before start of vblank.
> -	 * The registers still get latched at start of vblank however.
> -	 * This means we must not write any registers on the first
> -	 * line of vblank (since not the whole line is actually in
> -	 * vblank). And unfortunately we can't use the interrupt to
> -	 * wait here since it will fire too soon. We could use the
> -	 * frame start interrupt instead since it will fire after the
> -	 * critical scanline, but that would require more changes
> -	 * in the interrupt code. So for now we'll just do the nasty
> -	 * thing and poll for the bad scanline to pass us by.
> -	 *
> -	 * FIXME figure out if BXT+ DSI suffers from this as well
> -	 */
> -	while (evade->need_vlv_dsi_wa && scanline =3D=3D evade->vblank_start)
> -		scanline =3D intel_get_crtc_scanline(crtc);
> -
>  	return scanline;
>  }
>=20
> --
> 2.51.0

