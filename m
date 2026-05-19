Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJTuHgn2C2r0SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:32:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B501657776E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5845F10EA4E;
	Tue, 19 May 2026 05:32:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtNPTf5f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08E110EA42;
 Tue, 19 May 2026 05:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779168772; x=1810704772;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k8pjBISaBXz+pmuZj4sE5K4vB9xJmlncHp8LCjajm6A=;
 b=gtNPTf5fyf9ZegLcC6uRLl6qr0gPsI1vbanwQlbKFoWp+xs6AamMzEp/
 p7tWy+r8/MteS/nti4u1mumrncuHMmXU32quTk+1mgVbtGXn4tRFY4Qm/
 6K8b3FD3t/Kropaqb83U5f7f4VFgRb8t0gHX7wy+gQuHKqb0ynicNosYh
 FCWqSFJi9yuYSs8nvunnl1StjGlxVjFuGe+6C7qsPm9RSRePB1lSOqRgn
 6KRGuAaUO4zpytV8GeMOAq/ESKdmP4qDAjCcj60587U+9rjaqSnhCFgjd
 GzeqOXSETLzwGkeUT0wstnhzI0hpv9Fl5fTNGkJc2CPcZiA8GwvE6DFKV Q==;
X-CSE-ConnectionGUID: 6S1lqWiGQQSBYs9bJUjzqw==
X-CSE-MsgGUID: JV82YUzvTCKm+e/vVCqMvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="82601574"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="82601574"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:32:51 -0700
X-CSE-ConnectionGUID: w/+IUjtJSHSTEjqm7p9NvA==
X-CSE-MsgGUID: 8o7MujZMQjqONOVwzEO5eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244655343"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:32:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:32:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:32:50 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:32:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JFgBb1a7VhL41xfh+HfDpSA80LS09v5QyVp4ANFDxlq6DlZtWExogXF1uDlvNjJLrbZFlEEYk2DAzfxFazAXj39q+CNea2HsetPfUCPb7KTJUCdzQM1rl0ab/JCz65RKJhai8xkmN8wy9g0P/DEzT46zBYQI/w9WSB5IS4e3yi5kU+IPQkyoEBb+8ckhJyHJSQPVVM82z1hvXqjWBMxoCqBBEgNBOEz+yRE3j2pwFseQupvgUDZ5s88GRpNPernFhEfnmXzksAb7TvvPSoVVeri/cjqgpdcjkoeoEd6HsKryHyDT6byj+3iv/TIpAWLCtuAkV0s89qaobfsiMW763Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8pjBISaBXz+pmuZj4sE5K4vB9xJmlncHp8LCjajm6A=;
 b=nRFymWouQ8PxMAQKKJeyVYZVF9drAPGGEGjCF+FEp5D7RZ3CpR5CoaSyqFZP4v3UZgDpR5A0Qe4nxWviLkb0GtA4CAmQSrDVL1LH/zNwigonsfbNlHmFMZNQoHB41D/IhJiAx6GuGnr9bOcvz9C2x4YWRN3C2m6P9Aai0WqfYOA1+Q8FIpzPLQtmc8REqG3NHQ/lXhe7RR1cKo1wKFCzBM1nUR2bztBAHXC0MAmLKQAZsho9IdL+dkJjVcFFof9SFOvPFfjooOqhsG09a+iKex+n32ub6lfG0XcjVBrNqJ04FDc11j9vQLwtBYmsmVeKCsuEHO8lsQxukt6CARLInw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6552.namprd11.prod.outlook.com
 (2603:10b6:8:8f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 05:32:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:32:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 10/31] drm/i915/bios: print VS/PE-O port info
Thread-Topic: [PATCH v3 10/31] drm/i915/bios: print VS/PE-O port info
Thread-Index: AQHc3cFVXY1OsOOt3Eac/yhWYd28vLYU5f+w
Date: Tue, 19 May 2026 05:32:45 +0000
Message-ID: <DM3PPF208195D8DF061746EB10D258D55A5E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-11-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-11-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6552:EE_
x-ms-office365-filtering-correlation-id: b0f5018f-ff76-44bd-9858-08deb5680ea9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021|3023799003|4143699003|11063799003;
x-microsoft-antispam-message-info: aiEwYj3qAH0l5VEwnHuKgv+yh38VJFOKhHfLKS7zdPN1bRrGpz302dubHvBqZzLSs/I1S1e+wvVFPfbMCUqIdzhKEza52j6ZCYJvTJO2ZnyT24YjiJUVG0I+o8NvnBRwUgI5vcpmqPIEP3bPyQKGZLtdCZv/m7JUoOfyqFpYC6FN2F8AylP3MW8U8gCWdol/pP3eb135+9ED4Dz+hN5eFTS3amEpN0QtA+gZqUbMDtcqPeCJ3ozoj0s7uS3JQ68ALhp7PjVWmAMEu/DXwq+HkAdLLgzMG+nxYwDgvEen+0b/xrcdPgLuaO8nLimWzdKqs6ugzg4+emUJ7Xrp7iK5JHHdJf47OpHgCuBMjXfpo41pYFcEwkmNnutAQQZVhi4qP6nMz1wQNib8aOE84IoB10LgfXyWcA67DPjrvsgVEuot+zH8OXlzSwrfIeGe7l2KyFS6qqGnw11vYEqusTUmQzF8u7EJQllZVUve5mlH1RBqavtF3MhDhzyW+V+bkex+YISiZoNmmzcfM4CaueDTz94kTcJkllLf8bQqqXQjl5hHOjl8RvfdlBSboOS+hZroXlqjpk6tcneOXFvHHeZb1G4yVne3CzM4Zdhx8irPxA86l3UCcSOVFqJ/x5/YW8kuPduOqVBNZYhrn/DBZgk+4+t1S6//3nGunx/GDb4FKEXBJHXUUQThLNfZLD9jrI52leIOj0zJW7kjT4fdD/I0z+dbLJSL2VwDD7/hmrI286SKFn0HbllO60AtAdaU667d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021)(3023799003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVlOMnBMRWdCQjZQb3Y3OFpTb3hvTmdhdW1aeExwTk9mUHJ5dVRrRWhMRXYv?=
 =?utf-8?B?eFl0Mm9RTlJMRGFIeUUwQUU4eFZpQ1Yzb28yK0RKaFN0aHBDaFdWeEYyYjVH?=
 =?utf-8?B?bmNRODYrVXhycU9KZmZxdFo0bkMxOGNzOW5yQWVmV0s2UnZYNHdBdEFTcVlq?=
 =?utf-8?B?dWNBam9mb043MGo4V0VuNFlqcjI4OENTUjk5WnFaQXBVcis4SU1NSGxGWExE?=
 =?utf-8?B?Q3dZcjdYZFB4SDBtcW10ejVvY0tqL0oyeHN4aTBGL1JsejNvV2FRa0VUSGcv?=
 =?utf-8?B?UG5pQi9Ca2ZpRjdnbFk0bFlzMnp5RHhIKzNkcnVwUXUvbnJsaUNjYmxHendu?=
 =?utf-8?B?THdzMHVTWnprbzJWSWI0Smp6RVlBaVFPNWIvUkdNYU9Gbjl0elZuVThPc1V2?=
 =?utf-8?B?MUlCSE9JS05nd2Y4cmNBQmp1b1BBQi92bDExNWJGcDBHWjczZGppRmNQOWU0?=
 =?utf-8?B?Z2JYS1dlOXZUdXphTU5kN29PYmtqSkRMdGhsK0Z4VkdkOU5ZdU1YeStTL2Nh?=
 =?utf-8?B?TGc5ZExSTGJnL1pSTlkxNjY1WXN6amQ4cFlteFR2THpKSnNhdUJVdS9JNGFs?=
 =?utf-8?B?ZHNCcHVUTFRidlM0SXlpSk50Q3BZYVJ4ZjczWnlNdXhHUVM2dXYzNmh0VFJX?=
 =?utf-8?B?WXFsRUZGWmg0K0c2bmtMQVQzNXN5eW90WUlobkNEdkY0K21TOGh1VUduTWhH?=
 =?utf-8?B?SlQyTkV2ZHVMekZFejhodjQ1WmRBM3VxSitLVm82MWIvT2Q0cFFGN1JjaGF2?=
 =?utf-8?B?QVpYeWpjckFNeDNYbXAwcGRYTUQ5QkhtYVdwNXA5TjRKeG9pRndYMXB4dUpN?=
 =?utf-8?B?UnVXYU5yY2NmRWpPMDZJZFlaTUdaeDdLbno5RWpBTzhiYmtDRG14TnRvbUpX?=
 =?utf-8?B?NWU0TjBGbEhIa1JBL3ZqSW15NWtkR1ZxSEs2WWg3ZTROQ1QveDdXcUowRnQ2?=
 =?utf-8?B?UStMSWVMSTJmalpQNlVFcjdRV1dydkI4ZlZVTWZkL3JMdGNHVWVPVmFNb25J?=
 =?utf-8?B?UTNYWVgxK1prQ3h4K1JjUHlVRldaR09pRkd2aWprZXhKZXhHYW9ZRjRDOVM0?=
 =?utf-8?B?eEJUSjRtUnJkZXJNdnVGWnAxSUtXSWt1OFZIaFFZL3pEUE1HM1BKRi95U0g0?=
 =?utf-8?B?QlFkRTN0a2cya0VBaDhPQzZPMnNCbVo2Q1I1a3BLU05GVG5XWGE3SmtINXd1?=
 =?utf-8?B?UjJJTEZ1dHZ2b2JGT1RUVENFMElmTjlRT3NIS1N0c2hRTG05bzI5SU12Nkds?=
 =?utf-8?B?ZkVMamFCQld2TzJwZlkrR05FY0lSSE1ick1ORjgzVHlDK2pCcnJRTTFla081?=
 =?utf-8?B?amtvRkVPdG9hd25oeml6c0svZjV2SUY4N2Nyc253QWdoeUtWTkJZR1Q5bytO?=
 =?utf-8?B?bVBmTVBTemE3Y1pNZWcxdWFmUVBrV1RIbFc1aTZkdUsxMFFMUGNHQVdyQnVO?=
 =?utf-8?B?dExEQXYraFZCYzJ3ZG1UL2llcDUraVN2ajBPbkJkSExWSVlZUmdYUXkvSVg3?=
 =?utf-8?B?N2NWSnZQV0Z3RVpKY1FqNW10UXdwVkdGamdEbzFzbzFvOGkyVWhoRnk3U2RO?=
 =?utf-8?B?c3NYUGpYYXRaMUZSd1FYZXJsc3U0TWRoUHlYdStUcEdjREFFdDA2UFVZNmNp?=
 =?utf-8?B?S1E2N00yOTdPbGlIazdxbWF6c2Q2alg4NlZSNkpLdFBDM0Y0K3lqMWw5MFRr?=
 =?utf-8?B?Y0RlQ3gzSDBaUThBQXk5M0d1L2hVRFNRMS8rdU9adEVtNGd1M0pQSElxMm11?=
 =?utf-8?B?NTNpWnZ1dVdNTXNnQXRWUi85c2F5bTd0THFLNHQ0MkczdTZWTzJPVWNrSzFC?=
 =?utf-8?B?bHd4OWFvTGxUWGlScmxxTFkyTzVMMitLZSszZ0pCcjVBZWp6cnpxTTZNb3FE?=
 =?utf-8?B?ZUdCNkx5MjBCTzFITnVRVzVSTzJSQWlYK1EyNzlDc0FiNG1RQldLUkhTV0dZ?=
 =?utf-8?B?R2xkUkcxRktHVWdUSlFvTEFYRER6a3BHblNERWVRckgwc1E2c1FnMG9sNDlt?=
 =?utf-8?B?VGdBYzE0d1hNUXdSMzRjR0RoamxuU0M5eUJnOWZRMjE4OUdUck93ZVBpRmp6?=
 =?utf-8?B?cW9DeXFLRHFUMGNkWDJwZ2lGREdWRHVMQ1hGQzVMakxJYVVCcU9Kd2wvNHp5?=
 =?utf-8?B?c0x0SnhYU2FiVVk1cExFZEpUNXMycms2K3FmMzBiTVU1NlRHcnJyUyt1dnB6?=
 =?utf-8?B?TWxpZSs1anBINm1PS1ppOWplUXlwKzVTSEZ2eEw0bHg2bnoxSjhQQzdobE5D?=
 =?utf-8?B?U3B3Zi9EaC94TkdlYndpbzFaSERQL0JMZStJK0dZMHA4cVdMYUN2blRIY05Q?=
 =?utf-8?B?L2NGSXAyVlFQRkRTU3FHdFJlcm1PMStmdFNLbzlTckY1ejhHaDhDZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PkW6Sb2+euKSyvmVY/DYswXvUZlQ9I5mX57rsDh3jVE69u+i3WFsorWiT3EJSzWJ+wxJMtxbdpxsYDbY5YY4blqoDL7C2egBErTJ+3ucXOlOvD9/GNC3jAJqnbtKEd77RRTf7Qkh0GPGI7QbquwLUTbd3k8lwwndPIOo0Io4nCCU6QFRQ10Zpfa5qvjLQVfQGZ8Zm17I9He567emKbmvxEA0DUxRonuXNsYyaNvLb2/kcv0jrU5r10+C2RMduvpEZALYQh4hOoOsYcN56hNs8qaP0j8rITmW4pamUMUDGGOrRDY7hp1Cd75G9qwUwVGQ1SGofJkE4wPZlW87v4GHkQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f5018f-ff76-44bd-9858-08deb5680ea9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:32:46.0094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: by3etUJPyhaYV3ZKi17a+5rY6il7WJ42AZ04q8oeMF2O6oaIszPP/Bl3ayXcplPja2UB2uFCTigPLXIdJr1dDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B501657776E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTAvMzFdIGRybS9pOTE1L2Jpb3M6IHByaW50IFZTL1BFLU8g
cG9ydCBpbmZvDQo+IA0KPiBJc3N1ZSBhIGRlYnVnIG1lc3NhZ2Ugd2hlbiBwb3J0IGFza3MgdG8g
b3ZlcnJpZGUgZGVmYXVsdCBWc3dpbmcgLw0KPiBQcmVlbXBoYXNpcyB0YWJsZXMuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDUg
KysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IGIwMWU0ODUyODM0
NTkuLjVmZjdmMjUyNzBjZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jDQo+IEBAIC0yODAxLDYgKzI4MDEsMTEgQEAgc3RhdGljIHZvaWQgcHJpbnRf
ZGRpX3BvcnQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRh
KQ0KPiAgCQkJICAgICJQb3J0ICVjIHN1cHBvcnRzIGR5bmFtaWMgRERJIGFsbG9jYXRpb24gaW4N
Cj4gVENTU1xuIiwNCj4gIAkJCSAgICBwb3J0X25hbWUocG9ydCkpOw0KPiANCj4gKwlpZiAoaW50
ZWxfYmlvc19lbmNvZGVyX292ZXJyaWRlc192c3dpbmcoZGV2ZGF0YSkpDQo+ICsJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gKwkJCSAgICAiUG9ydCAlYyBvdmVycmlkZXMgVlMvUEUgdGFi
bGVzXG4iLA0KDQpOaXQ6DQpQb3J0ICVjIHJlcXVlc3RzIFZCVCBWUy9QRSBvdmVycmlkZQ0KDQpS
ZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICsJCQkgICAgcG9ydF9uYW1lKHBvcnQpKTsNCj4g
Kw0KPiAgCWhkbWlfbGV2ZWxfc2hpZnQgPSBpbnRlbF9iaW9zX2hkbWlfbGV2ZWxfc2hpZnQoZGV2
ZGF0YSk7DQo+ICAJaWYgKGhkbWlfbGV2ZWxfc2hpZnQgPj0gMCkgew0KPiAgCQlkcm1fZGJnX2tt
cyhkaXNwbGF5LT5kcm0sDQo+IC0tDQo+IDIuNDUuMg0KDQo=
