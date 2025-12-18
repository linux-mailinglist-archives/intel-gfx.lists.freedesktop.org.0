Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C79CCB122
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 10:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98D710E7ED;
	Thu, 18 Dec 2025 09:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BiBaDZ+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C0110E7ED;
 Thu, 18 Dec 2025 09:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766048900; x=1797584900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLwk5Hz+ySsViOLCZNOkRQdPuZ7p4bvMpPHRlgs1XRg=;
 b=BiBaDZ+E0yl4+BGy3oDnoJSzbr8w8kk5sPGpj1w+uK9NTid/C/k9EksJ
 Lmsj1S7edhsE5oxxhkPaLbQoboub7Y4ZVNl+vEzCfbqpSgJAOsKhXkVew
 MTGpbXtRbkfTLy32bEaiqeQL+5BS36M+ilBR2ShLuhLsqAW1/ucxGNuFl
 1uV84zNJXI9F0zxoPtCQoXlMGg9UT6f00FHPCDdb6dpbvypEm0CrhHumh
 mkXc4RtURBhKdOxz6J6AdWgMxAS+ymxamvzMOdoHKXZeCtGh90dRpQFDR
 RF4V8r/s86QdRQrEYRHF31GCfxDmMoUhXq43pfD7PPsAXutzZkuBqFFMm A==;
X-CSE-ConnectionGUID: 76sWZLsyRwa+LwnFDFw1uA==
X-CSE-MsgGUID: K4Ju4HuvQSOHyf24I2NSlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71858556"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="71858556"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:08:20 -0800
X-CSE-ConnectionGUID: 3CaE4WBaS0eCA+8LA3u3Cg==
X-CSE-MsgGUID: dsBkF86+Q8qaqPFb1cmE+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198793868"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:08:19 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:08:19 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 01:08:19 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:08:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n1oB6W3S7frbYsfX8n4fv0q34CD4vyIRBHuv61PaPEbycEZEQQbG2La7mAni+tnrKht3DRfBDzFaYlVQPdBf1AaX/BtyaQCSB+Op6TOjIGhH1CMyw6wal22XpgfFkeBFZEHIDH81jTe4BfO8jZuC8LmkJa40/qLe20GaBJhnfaE5WwTycRvIQzZ858CUey8il/kQdzBEKxFRP9eYw7SGh508zZDaU6fs+zMZWZT22w5oZ+qoI+MAlTnTlv/c767AVIX794pemrnpOctIC6Gdu9MHljaTQHirZr68KyOrEOMjpeASWTwWxLUhJouDHTrO+YOAaVGqtCmhb1qhPIwk+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mr3/UAsU+4xQGjZ2BoQOqmSaDIfXqFfbMr3/Z2OWWMM=;
 b=eclmHvQjWEJZXd42LNUCe3q2iAtY+MMl2C4GnC4uYEurNMGp5ef7nG+D97Zdgn4LDMEmOkl7sjRBgkv27dwhOsZubUsiYgc7XU8ZcDAZp3UxBKT286zHYKHIyW85dPlKQyd2QHrHtXLkIsqyRze1g2OkB5sEAkmkk3YYPo8kGiD9xwZyfB/3orn2U/T7DXfYvG/fzqJbH0sNwiDZjIB4n4YSzcqAaqk3+WGds1i1oHTv5/1fjVBfM/7Rf40pLXrxfEKqCsZHd5WU0aB13JzBm726OmW6KbwPtZ2yXwuDaeEhniyapwh3V1aasvCwi9qfb+EOh3tmmkIpyrEKxB7V2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF93A1BBECD.namprd11.prod.outlook.com (2603:10b6:f:fc02::3c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 09:08:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 09:08:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 00/19] Make Display free from i915_reg.h
Thread-Topic: [PATCH 00/19] Make Display free from i915_reg.h
Thread-Index: AQHcbxvXsZFj6KQSBEe49S8GLZEQtrUl3mYAgAE+r2A=
Date: Thu, 18 Dec 2025 09:08:16 +0000
Message-ID: <DM4PR11MB636001A695E72F9FB1F73148F4A8A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
 <6b7ef824f738c6a4eb944c415b3107c4f8268528@intel.com>
In-Reply-To: <6b7ef824f738c6a4eb944c415b3107c4f8268528@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF93A1BBECD:EE_
x-ms-office365-filtering-correlation-id: 4dadf28d-25c3-456a-7416-08de3e14fb25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?eRgOZYu5qDlCxGHOROEybZfI04eywSzIhFlY26D3iZKMjfYVlWB2Tl1SZhHU?=
 =?us-ascii?Q?eENNR/NPjIpXH/jZII7t/GKNUabrj0Zay4ZR1tmjxDhMKhkAwYS60qyNofCj?=
 =?us-ascii?Q?wi2ew21OG1NT9hBI8u3lSDiES8gsdJFHq/2YsSdVnF1xYkhka+YSW7YNsuTM?=
 =?us-ascii?Q?gJKQKKCB0eWtWJLEFIsIyo440sKIM/uU1iZ+EXxORaH4yEpunZOlWvx7L0Zv?=
 =?us-ascii?Q?jfoUFIoUW4IRDIb1X2KnTGXwEudoHUAE9+2/e58mJfFoOj87Npl0teOivw6X?=
 =?us-ascii?Q?4Q4C8YYh0xgDOC6e9LLmSqsanjIKNfb0Z8vzbRacVvPx18jKeWWVaQr9Ke8l?=
 =?us-ascii?Q?YFJhsgqqNWAN6kapylR1cJWXyjety++1FWBrp5d6395fDBGRYF8duMDMujBe?=
 =?us-ascii?Q?khPmYlS4R04MDJf8QSRwGL16SPtBymP4PT1YHk4BpwTUuKvKrMtozC2HTbBh?=
 =?us-ascii?Q?SfD8tkgej4KcC7MCL7Sk80t9qOSIDxnwZIZLPHn7SHHvoaphkxyS2R+K+l/Q?=
 =?us-ascii?Q?U370on5vSx+wB5N8a710CGXlnApx/e+va6lPK+JpiJwMbPNYiv1/h9zpyg+4?=
 =?us-ascii?Q?cq+Palza/8869Dgfsphw17ZHEOponYOOyxIMpRr7114O/zpCA2IZCQUyvKEs?=
 =?us-ascii?Q?3l74qx5zsymbiAsPxJFtGYOL2s+cUVkvfD4uzhNn+RIYBdaK7ifkRhXU5W16?=
 =?us-ascii?Q?EutGqLw8xACOdi3qvkQfLVRb6HqD3RnBUwhlPDzL9C8v8VWFlVvCJuFobbZV?=
 =?us-ascii?Q?rRlRgJ0BnaU1SEypuZyTafjLsSqQaYt52YHnnziGufFs7kOcrG310MvTSNh7?=
 =?us-ascii?Q?us05fICHnYkctbWQQcF0ZSNYJ8om/41hCenaLw/sPrPSEJ26Enh4+HFozWIk?=
 =?us-ascii?Q?YffBolSlKRm30ACrZxNM9iOZX3zHToRUbsISGj3zyAmy9lMqZJDDOqualC0P?=
 =?us-ascii?Q?DOSdIlL4toutGre8IWaMSzarSmwZJaXHZvB96b/NXKvSN+6M+mmd9w6+eU/K?=
 =?us-ascii?Q?J8JwVtCSmyezB8KQeOeGEsHCgAbyKjEoqIodA4Ym+e9emXFoaK+RWWOosMSD?=
 =?us-ascii?Q?2UGyoTvJkojRfT1ZuPCIt4Og9VQQuM1vcRTm0IaakAKUPsT+Echuvl9HRYjH?=
 =?us-ascii?Q?itOy8J0v5MNYNqPxlG0iS088BVLQxrjGVukv/sEBJe5mbNqVVdmBAHuVPqq9?=
 =?us-ascii?Q?XV5/UBAPdv7JE+9eKEnE/5VFjZvfkaLqRwguDoVQ5FcZvbWRtkuQYsVGhyJN?=
 =?us-ascii?Q?tN0CA0Q1kRh1lNWgh5ibcZ7ndok6EhLAoTAsPhViTE7e2WDeKcckg3tH8UjU?=
 =?us-ascii?Q?El4xd6ELG/+AVvnt3rx6mtrFc1S0AEM6Q+fL5s+13qC1fnQTSwdxf526lpHF?=
 =?us-ascii?Q?yyqCPXU7wXoHp38zv46auNlIc85jjQI1V1YWqaw8HR8Wxh7/KJSowk79hmsH?=
 =?us-ascii?Q?SRj82gF6i4SYf6mfcr1ZKoZAzi49odZ1ycd0kaelCdltAlEQxE3swQf2LTNI?=
 =?us-ascii?Q?i53b7T00QgBaY+0sgU3J2YwuOl7H9HQlzfo4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AYbaCrRL26H2p+aTmMJHgCxW6ECw+nmQI9lNxFiaxApb0kynQNdg5YIod3tZ?=
 =?us-ascii?Q?8cLBLneusdEvgOcRWrZfWxEyGofUHWlqafsUJiCDNk086OsyYEfaCpv+/UY4?=
 =?us-ascii?Q?kqsCTxMpxvKQ0hQ/Ggh9iogj3xL2jFm3va6oQd5wBpJhnVx66EJZqRALzKE6?=
 =?us-ascii?Q?5uyEnJuf8I/E95jik7uOItaPMCdEVuKM/UnjIJmWOrO7Gxp8h6FESs1Ov5Vd?=
 =?us-ascii?Q?+A1N0ioSWUADtTuJPF66vAdxFuOO4SdeNWSi7L8P4g2o+O3ycKLLylBHDgZg?=
 =?us-ascii?Q?2lFHvwcQP7lChASBL34124yi8xiJZBDk7bgtBuTbIR6YkHKqksELvzjptHuS?=
 =?us-ascii?Q?3cG1q/EGSAV7wBHwk+ml83nQsqzgNft8chKNN7TElRUMKbt087xPiH0TwMCj?=
 =?us-ascii?Q?+Tcf5IdOqcKAgPDGneijSdE0OF58+tBYaVqihsjkZbhaYj7g6tAoSiWyDjh+?=
 =?us-ascii?Q?KAoGHykKvyhMy/t0AC3Te8FhpZV5aHtMtL9dvoq9nCcr+KOyOo7yInUlzZtR?=
 =?us-ascii?Q?7DcSRRW9HS5CE6iCKpGsnif+HfdO7ZnUxHCjKummCFmXS1X8kiJ1fr0JYjkQ?=
 =?us-ascii?Q?wTRuy6IzrTqgbuqAaB4GtoXW0pCo+3/mnu2BqkHf577iWbC/b/oUGY1uefUS?=
 =?us-ascii?Q?GQDsvzD71CzCaf9zLtCxKZTnG4B+53vMBOqEY1/zevzzCYl+cy+/oegPekMx?=
 =?us-ascii?Q?tGT0fVQNXY3/2Pwdp3IFNBLjOlcl+oYag0LQ1wZy2WxbJRyi3NAZOYA4RrIG?=
 =?us-ascii?Q?6WgLvoIe2Sfnqi7yqV0U9oKah9JMM4k20QuWE+PhNCzEgm2TkI7u927VKFd+?=
 =?us-ascii?Q?MzZUjwAgLqPTmf1BgRSw5jJqhSMDOuc/xTSX0kkp4K2LEAEOzXDIyNyxTTER?=
 =?us-ascii?Q?me10BflxTqMM0Eb8WKJ2rf787qpX9fp09/Qu633Dp3NAm1aLMQgBSOemaLM/?=
 =?us-ascii?Q?WLXvzKSfL7PtUA7/oAQ/M0DW/bK5D0A97IoDTRYUOP+uFhZczyOr08WpvS77?=
 =?us-ascii?Q?L80LPoDtV0yWb5+NHzut/1tybP4Xa0y8v83WcNBaz7W6N0gH2UkMR8dg1Z/U?=
 =?us-ascii?Q?OWxPuo22AHuN24dcMxHdWMr1PSw3cC5MQPHdY/tA51jRdBhpGLfEoR5MJeFt?=
 =?us-ascii?Q?CXdVRjzBQSe3SaQeZ71TDaBovICwiAghZ3k1G+tipUD3+eQ/idV77o3y1bWg?=
 =?us-ascii?Q?QwEXfLkAb+RYNEbl4zTIJRQePzW26q+dJSX2bG5Q+V5uURpE4OZSXLVBtrH0?=
 =?us-ascii?Q?G42/eBcDv9NTDSeLiwbntIvzPKqH7Z1Q1MkmlQj+ehXyuvhiDFgGrx3f1IBJ?=
 =?us-ascii?Q?YLAvRoz++XdpNR6wrwnkppJjHXDgnQVmnpZzLdTDBqOMnOl0mijxNGLxYIMl?=
 =?us-ascii?Q?/9C8RgLZu+DfKO/ljQL75+2G6ZHcBagQJdktJLgFdqE4z8H6/g22ApWFEomW?=
 =?us-ascii?Q?RpcycOrIC04xZ2MgAEy/MQbsdxcSjk0VZlbI0X/tEnNjytCb1j1V5KHxN+i2?=
 =?us-ascii?Q?RFSSakZg31V+guRgPZwTd/Avu1BQalj4Q9Zs0wta0e3xy9f37bbrYXsjEBGy?=
 =?us-ascii?Q?4JItSYDuV0VAWaImvDtV7wTqvDwKWWgwuPqdYMEZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dadf28d-25c3-456a-7416-08de3e14fb25
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 09:08:16.4783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4y5AxpFs+36llZZJcvzUqbo/fRZ0ffagsPqmlHsfnXTtRt7+W3bH6vnpXf8kcJxL5XenUA/aRlyddWg4p+9w1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF93A1BBECD
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, December 17, 2025 7:36 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 00/19] Make Display free from i915_reg.h
>=20
> On Wed, 17 Dec 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move the common register definition to a header to free up display
> > files from including i915_reg.h. This will help avoid dupicate
> > definitions and includes and can serve as a common file for xe, i915
> > and display module.
>=20
> So I commented on a number of patches, but I think the overall impression=
 is that
> we should avoid moving stuff to intel_gmd_common_regs.h if at all possibl=
e.
>=20
> There *may* be cases that benefit from having a file like that, but I don=
't think
> most of these cases here require it.

Thanks Jani for the feedback and review.
I will re-check and review all these again and re-send a new version.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> > Uma Shankar (19):
> >   drm/{i915, xe}: Extract common registers into a separate file
> >   drm/{i915, xe}: Extract South chicken registers
> >   drm/{i915, xe}: Extract display interrupt definitions
> >   drm/{i915, xe}: Extract DSPCLK_GATE_D
> >   drm/{i915, xe}: Extract pcode definitions
> >   drm/{i915, xe}: Remove i915_reg.h from intel_display_device.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
> >   drm/{i915, xe}: Removed i915_reg.h from intel_display.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
> >   drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
> >   drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
> >   drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_fifo_underrun.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_display_irq.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_display_power_well.c
> >   drm/{i915, xe}: Remove i915_reg.h from intel_modeset_setup.c
> >   drm/{i915, xe}: Removed i915_reg.h from display
> >
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
> >  drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
> >  drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
> >  drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
> >  .../gpu/drm/i915/display/intel_backlight.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
> >  drivers/gpu/drm/i915/display/intel_casf.c     |   1 -
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
> >  .../drm/i915/display/intel_display_device.c   |   2 +-
> >  .../gpu/drm/i915/display/intel_display_irq.c  |   2 +-
> >  .../drm/i915/display/intel_display_power.c    |   2 +-
> >  .../i915/display/intel_display_power_well.c   |   2 +-
> >  .../gpu/drm/i915/display/intel_display_regs.h |  90 +++-
> >  .../gpu/drm/i915/display/intel_display_rps.c  |   2 +-
> >  .../gpu/drm/i915/display/intel_display_wa.c   |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dmc.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dram.c     |   3 +-
> >  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
> >  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
> >  .../gpu/drm/i915/display/intel_hotplug_irq.c  |   2 +-
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   |   2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_overlay.c  |   2 +-
> >  .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
> >  drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_rom.c      |   4 +-
> >  drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
> >  drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
> >  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
> >  drivers/gpu/drm/i915/i915_reg.h               | 463 +-----------------
> >  include/drm/intel/intel_gmd_common_regs.h     | 419 ++++++++++++++++
> >  40 files changed, 534 insertions(+), 514 deletions(-)  create mode
> > 100644 include/drm/intel/intel_gmd_common_regs.h
>=20
> --
> Jani Nikula, Intel
