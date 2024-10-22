Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781A9A97EF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 06:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974F110E1CB;
	Tue, 22 Oct 2024 04:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNQunXoW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A156E10E1CB;
 Tue, 22 Oct 2024 04:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729571861; x=1761107861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VBl6rKnHXtWE5q/VovG7VduxPH4vYhjN1a9CoyAH/z4=;
 b=BNQunXoWPTxKReW3GwcLCgtTfED2E6b0VKpvNSM0DEA53c28beZlI2JS
 F6ZkwM9UksnSBmTzX5/yPFJCuX1n1kTqc0PcIukc/uk60IxLxPKtVt8PK
 R0yL4KzmVyQwS3GyFQ4+qpZs5WbAX2JnCBROvyVnW7cFAZHQxkrcR0BO3
 DkGE1D8T5drVEj6QTlfA/m5PqoCA4dYPiWUz8qKRxyJSPIbJ/eM7XHhbq
 hvHAmTLIRKjk1Q2N7K+6kSw9XZLlq/7EYOnbQdni+xWxysGvVF3+2R/wg
 RH6wg6hc8a9Xbc73m5iXGO2oPiyd7Npf+mbEwRXEdMrdcEUQpjbFARz3i g==;
X-CSE-ConnectionGUID: hhwTxDnUT42v6hUdGWGeeQ==
X-CSE-MsgGUID: 8YDWEXORQUuZT/bwRNcVDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16714540"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="16714540"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 21:37:41 -0700
X-CSE-ConnectionGUID: iLHjjoCoSDmKqrQ1VYq3hg==
X-CSE-MsgGUID: Si2oajSURU60nA6Qz63GkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84548967"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 21:37:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 21:37:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 21:37:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 21:37:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TysvxYo6S1JK88QfaXQoV5B1WXrEQ9qL1Bxe7UjRicadMGtXTBGvZnW9cBH496LcA3tp87P3oJpmg+V/+A+eqEagd1aAWzDxKCtTysZ6ifS6I5oHhkzy3V5URciDbkm976dzR9beHGtS4wK5Je+I7IfgaqOEcIELgW5QYmJq8KC0VOMv8b0f4RRkQmsWNnrFRL7/eLRMndrnhBDOfVwUkEaDrGfhLF6hyzAsE5tgFTaGJZw06eR8o6tV4K8VpYRv0XosgShAH7gf/a80d16gdASUZ8TMyWjOaWB5sL2U4kqVZORHI7BclksbY1shYEvVC426H/xaau3i+cKvwhdo0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jwW+CS+04AUnZ2lRO8ggjJ+lr21lTOTdjzeKzVqDEpg=;
 b=VMsFi2XWSle8PN/Y6TG18bH2mfj7YP8vmnnF461/i7+PMKJ91S0CDAw7a45AElblFGe7S0Ehh0zj4WVWejbAw3tB3vDVIeGdEepqB2Z6ySEApZjsZj0nJ7RofgN30QG1H0TmtgvNz6rQhZrOkh45En4SyLNsh+Xg2pImxgvHDGAH1MhD+TiBtl659m5Vy/1NOXrCDbvTEvCwpUaHJZRoY2tmNa4tzPM+69HappSfdQNXgbSiabYpYQp1ItX0VhvFGUTFMDNwu12LUqBCcto/mFPA4aVxnaJTngyFM2T+MiMNP+kDZDbRxssWg5U1PBHCGcCZd/7HttFwm7foAq0PBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB7868.namprd11.prod.outlook.com (2603:10b6:610:12e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 04:37:32 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 04:37:32 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 01/12] drm/i915/display/ptl: Fill VRR crtc_state timings
 before other transcoder timings
Thread-Topic: [PATCH 01/12] drm/i915/display/ptl: Fill VRR crtc_state timings
 before other transcoder timings
Thread-Index: AQHbIZ9IH5v5hEiSakmWAleX0+E0YLKNK/aAgAT+0GA=
Date: Tue, 22 Oct 2024 04:37:32 +0000
Message-ID: <IA1PR11MB63485803BDA676C21ABFB2F6B24C2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-2-matthew.s.atwood@intel.com>
 <20241018234359.GF4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241018234359.GF4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB7868:EE_
x-ms-office365-filtering-correlation-id: 14ba9ff0-6c5b-4653-a398-08dcf2533eb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zSGonnTRthsD50NtmNdTFxYcaHsys3BRvDNqjt9Fw2N2crMt49wIsp4Csnyt?=
 =?us-ascii?Q?NVosq5l9Ftf99YC7/f3VIVzIdvUFKNizjxSPeAqPaeewLFm3pl03YFj6Zn0b?=
 =?us-ascii?Q?U6JPuXbci75UUY0TW1RzS61ZUukHyXusIgUwL8lzTGOq/imIRicU1rNvOPGX?=
 =?us-ascii?Q?yblLH+RyIzramoh2rLGivtoE5NbqX8h2LRYnzu3fLm2cHg3y/5awN4jDycEn?=
 =?us-ascii?Q?OXlpOFzwtyzf+os66dmPn9CgBjMnBcOM1vs41jhMHou8Wo/3pSIkgRS4315y?=
 =?us-ascii?Q?LbAlAwxzw0JhdgCFLgGKtNA+TBhNwXKoBnt1bB8ZkpPEZjYtPsXpLhAbEl5L?=
 =?us-ascii?Q?LJMMtZl5WMV34+UJ1M3bZIaBPamLPUEnNUr+J5C3mrUc1wvkCFJxVYA/qDw1?=
 =?us-ascii?Q?RHKq3VYjesLC0gnfQF0vgglWQwV2WWYB1Vmbalj+XBPAIwLw5S/TTXIbZnQ0?=
 =?us-ascii?Q?F7qA/d/pH9geUa0sh7LgNrt0lJycJJeoaeurSAcqazUTeIauhXcGiPhtcwyF?=
 =?us-ascii?Q?nbD0ooNqYWx7onlMsLz+zXqEqZAvQp3qgGH7eSm7P7dRWIMDC1vQOQFmizia?=
 =?us-ascii?Q?k1nCwXASyuwkc5tL6AnkosNoQuwL1sSCF4sLMS8jcl3FgIk9q0AIjBggb9Wi?=
 =?us-ascii?Q?WGYgpTIiJntyYs1mLUtXIB+uUAaXe2nqyNAVE+jxCzDZ2wnYx+ki4OsmU3U+?=
 =?us-ascii?Q?SAx70jnOv30LloCGnx25jWciuejdhF8v0pcvLW7X2AhZXHm9+BLHZbT6WOhc?=
 =?us-ascii?Q?I4kFUImDjRYeMdAXaDbS00AxBrU4mpqpd+/CW4ZRfJIOXmuWdU8WoLoIpwUj?=
 =?us-ascii?Q?Q4xsNpJg/uB5BM4HAqnLW9Imyl4/MfL4h4lq+o6a4NVXh8dVclYTkD9R6ySu?=
 =?us-ascii?Q?p7k6BEJFox/Kqc289srKZJwyp7TDIU/hrAS/Z4VQqT4unsWsY4Ahz4DvlxW9?=
 =?us-ascii?Q?2ldc5hb2ATCu/0d/eAvBeOkuwlOn/o70dnjwHgzWnpW8kze5UaF7twheSpPE?=
 =?us-ascii?Q?SSsL0YW3IPq/jmg3UxljzvApdJkyEZR9FRMaCOkv9cZlpWpzDsx+byYOl2jH?=
 =?us-ascii?Q?IRqXRsr6YNJI75XNzjc0vdHylRTga/7mrRYna+eE0D1rFqOKQKrHPQnXIlqv?=
 =?us-ascii?Q?5rIGsSv7b4KIdNHVsMe2dsTxHe3xHIPNRDD8CLwQXP5yrqQvOsx8JYMi/5Sq?=
 =?us-ascii?Q?Wf3SPROgkxNrNx6zbweIPxKgjNssXi6ZYV1opyMe1db4pr4hlntlxDDNXdWc?=
 =?us-ascii?Q?rnverUVAe3j25TFJV7NIJJ5DzAD3fBzJxNsvGsOZIyFHMvbBEBb9bcT5SNnM?=
 =?us-ascii?Q?mgEvVhb7+sruK6ipK6udHGD5iXBNggyiftpGPJ7/3waPeUWMSeHa1duORQSb?=
 =?us-ascii?Q?mL4Z5bY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?10hxnzDZrHhRJnxCjCR2A5tf0N/h8c4C2FlZZW+Uk0A6kuFND6+/6gC3/2xo?=
 =?us-ascii?Q?0HYVbx9vfOZUrJmBE6xtQuKsvqwadssbxMladdvSy8OCaAU5BwqBWQEYhU9m?=
 =?us-ascii?Q?wZbHxci8/w3EJZzXctykeZOJNkZWBmE/DpNWbIhInMV2JSpqGjG9jj3XWD2T?=
 =?us-ascii?Q?mlbJ1hiR3ZQFaIcBKUA7PXgUeo4Zlepgh7ylM3S7chCYDbLbqwHIIv89UCto?=
 =?us-ascii?Q?4ZUikBOrMrfpISVjXVmIemYx0DyA4RgdCuOsvtMPDz9DJ20sQ6sy7CE2xrlH?=
 =?us-ascii?Q?mkNts364ZwNpb3Hq44TYvs/UlPGvvN9k3N+Ktv8VSAh6Fz4tqtrHLIPnL7pU?=
 =?us-ascii?Q?MXndx/DbJwIFF3tso09MzayrfiDlRY9l47kAXCRCfE6DP9MosSkKkQyw31fj?=
 =?us-ascii?Q?JR5urqOs705i78xvqyRo30EM8MBX2/Q33mf4FzDTmhpeNJvRMC8GWrc/qneW?=
 =?us-ascii?Q?08qKjZAHRxVIfdSRRMSlRhuL2ZMSh4CQlXIelMMCyATVAs/wpiOKF4L5ZtwE?=
 =?us-ascii?Q?ksfIGkpj6KYSU6uczP1IrU3+AQh5WY1Ctinbo4yTcBHmPeibDxw4u5vQbR18?=
 =?us-ascii?Q?rkW+iGicy1JHXCH8BAxZ30wiTuSc0hw0lx5kKW2ODc3GzYj5QopI0lT85EG4?=
 =?us-ascii?Q?j98Fm/QL7dzTaOPglB+FnPFPVbbc8HmQx6sg3jQvuR9DPpg212VoDka9vkgs?=
 =?us-ascii?Q?W8MB+Y2y+1wgo4iIprTUZJqTgY5YBKBqTgwmhON/XEGSLI+Le7/BEy84DTOZ?=
 =?us-ascii?Q?QU+Y8Omz7T9X+Wy8Z/C6r+8b2rIVJinMinc58jJs6sNbVYIzxLf4bJ6/CW8u?=
 =?us-ascii?Q?CZ+ciqhGur+rrsiLG0iMcMWSJxJpqAjMxswePkMyC+4TH0xicYJMn2mfhUo3?=
 =?us-ascii?Q?j4Jp2l9fhfZQujDctrfpgmEdBTC28moW6R+Ju+y73v+56+iPGJwsUl/hRG7d?=
 =?us-ascii?Q?10yTOCVM//wWyo4850OsKyK+c0s/LLqRinn3hZOPiCKfAlRt0hf4syfjiWvE?=
 =?us-ascii?Q?5zgNyfLH/mNEoq0oGcEUrHW5fwAbPDzOPAT2fegS2pKWIBE41EOLFcWzCvz4?=
 =?us-ascii?Q?KSVStM4EZZyYNj2wpM/K0xT5QB3Q/vOF+hkvl2eqwlBbC3x9l/uWRwur+K3Y?=
 =?us-ascii?Q?LaoOwh4DaTGTbV683RHCDvQrwqneNaPWD3bXUFSHZKHCBPNfKlM1f+BMAzWb?=
 =?us-ascii?Q?kwNiCr3uM4BE82MB4/TRT8anqWcgtPVxIl3WyVaCUXSYAMtBtf8/SvthBAol?=
 =?us-ascii?Q?PjNElxt7VxIMVnRviHJHI/qzl/BszD/2MoLeLcK7x0/RzXveVq6fDhhtEc46?=
 =?us-ascii?Q?iiVdJYkB1jqS7OZ2hSpp7hh5WSoIyyrvlIrlrMFlWVK32YjEA4cCd+5Lf2Vj?=
 =?us-ascii?Q?OeK7SyKbBBnGqkZdrKKI0Hi4GlgKDqULocjOd7Z1ypcvnfw+kIIA9mm5dC6o?=
 =?us-ascii?Q?Ed5Um4WMsBX0VpwmGCoO8+FNxIPP6nhZcceYxfQVhOQ1HsAQe7WsmWFKEVpE?=
 =?us-ascii?Q?LXV4QOqsbcObpRAVAZrrZcjlvyDb7yD2BhhUkXrYOYQDHWQ6m9mQ7501K//c?=
 =?us-ascii?Q?tQ5UfLZFUeOmluPaNm3iwyUdmxH0RQFhzHl+KHV8MWvhJ9e+B5TfK0bpseDe?=
 =?us-ascii?Q?9mzqybFeHokZyiQzqIcv/JY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ba9ff0-6c5b-4653-a398-08dcf2533eb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 04:37:32.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sloOUjYeN+lvfYkIVo5tmpGBb2Te5gMEQpS9wJdt26axpZ2ERt6LUuQBMJocK25eVV+Ig1UAzz+OvHQd9+5cymDQ7//IlnaX7p1XlIyyO1pGEfcnfpYHXWTsjCNmVRKw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7868
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: 19 October 2024 05:14
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Gola=
ni,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH 01/12] drm/i915/display/ptl: Fill VRR crtc_state timi=
ngs
> before other transcoder timings
>=20
> On Fri, Oct 18, 2024 at 01:49:30PM -0700, Matt Atwood wrote:
> > From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >
> > In progress to make VRR timing generator as the default timing
> > generator, rest other timings will be derived based on vrr.vmin and
> > vrr.vmax. Call
>=20
> I'm having trouble following what this first sentence is trying to say; I=
 think it
> might be missing some words?  Can you reword it to be more clear?
>=20
> We may want to elaborate more on what "VRR timing generator as the
> default timing generator" means and how/why that's happening.
>=20
>=20
> Matt

Hello Matt,

When using VRR timing generator and reading back transcoder timing, purpose=
 is to source correct vtotal value based on vrr panel timings.
That thought put into calling intel_vrr_get_config before intel_get_transco=
der_timings. We are planning to add this patch to separate=20
VRR timing generator series, I will tweak the commit message during that.

- Mitul

>=20
> > intel_vrr_get_config before intel_get_transcoder_timings to accomodate
> > values getting pre-filled.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index ef1436146325..01466611eebe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4134,13 +4134,13 @@ static bool hsw_get_pipe_config(struct
> intel_crtc *crtc,
> >  	intel_joiner_get_config(pipe_config);
> >  	intel_dsc_get_config(pipe_config);
> >
> > +	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config-
> >cpu_transcoder))
> > +		intel_vrr_get_config(pipe_config);
> > +
> >  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> >  	    DISPLAY_VER(dev_priv) >=3D 11)
> >  		intel_get_transcoder_timings(crtc, pipe_config);
> >
> > -	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config-
> >cpu_transcoder))
> > -		intel_vrr_get_config(pipe_config);
> > -
> >  	intel_get_pipe_src_size(crtc, pipe_config);
> >
> >  	if (IS_HASWELL(dev_priv)) {
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
