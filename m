Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C49AA41E7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 06:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D80810E6CE;
	Wed, 30 Apr 2025 04:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y9vttG3v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A0610E6CE;
 Wed, 30 Apr 2025 04:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745987716; x=1777523716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T43rLBCCyGT/uZ0i84xHe4q05pMzS202KA23maMVJV4=;
 b=Y9vttG3v7UhjB7m5xMwBQks6/XgXuizbc2qiSQy+t0KHC016FVF7qJXE
 fZcb5e0Xp6nVUm+/teoR/7vvZgj3UuPLM9LO1lDCA1jcFm1jLCKUFTy06
 ohayZbh792Vp4RHU6l2kibqJNQZfM45UlpJEwJnWlGn/K4huOSezL29d3
 bn45bnAAdRdOE3qVUN/7zt6/rLaEA3aAcjWqiw5PsHWf1wtsE/AghWQey
 wid8mdH7YjXmaHu/r9V980C5CUWd29yuiYtCrWIWyoIACyvaimej6RJEn
 w9ozFbgqOnHotj1dbUXQuP0nmaNsXBAUzROiNUHLoIoAk6+NMVdX/ApyE A==;
X-CSE-ConnectionGUID: aZrEkvKBTEuk26gQvFQ0WA==
X-CSE-MsgGUID: rOrw1LnMSP2MGNtLyeCFPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47645487"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="47645487"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:35:15 -0700
X-CSE-ConnectionGUID: iBfZPt9oQC2vVzJPPNmElw==
X-CSE-MsgGUID: OiXKMHzHThWsBJv0bQTyTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="165101067"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:35:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 21:35:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 21:35:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 21:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fcWV2hfvV4rOTVdPyJtuQlFPvl1jC5SZr1mamyqE2oqgnUeLkcj1UvycbpGS5qfrGJje2CRIjQISmd2pLsAcTFd44QpULIfcZ0QaiBWQxkCgChA3iOhqew9lyUb7p+PKZVIZHRYQQJxz2DhDUO6BsNPz3oFqVtbDN0IHz9WXP2jMBLzzahYnxM2G/ODZ2Y6E9fkia7Y38qKZ3evJ19kGUNU+FluwKubUBRV3JfQVbXutWDVI++yus5sLGFaJoiQdiDki6dggv/N7C2gGNI2pGD6g9SfOOxQr6SaqceIkgkGWIa3P3Yl2HefbcFH2vvVf/rFE8do1nobWGvIXQpeyPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HGTBbAiuezuqlIyajcsTAVLEIm+EVBIM6z4HUCO1ny4=;
 b=xTpKP8Q5reoQVx1xhj5uoDP2oxSrwWR2qQr2AUHk1cpf4MYbrnD/dCZm2RFh3IQoTaa9RJt5jQYLhpCO9qF6NWcxLFPXhvq9njTpQ4pq+gOqyzDU2Kmx5qG5HPntCDK+MCTfDSBgVlv3AbByMEwfqXfdRliGC0iK/J/QB3wgEQv20qKIDsBwYUP/mlijmIwtK1JZHAhjHz+qJxXIgnhskzAKzwlMF4wgXMG7GT4s7nPnjtIm2QYowZYvvfUMX3ysFHV/bFJXt4bYlW1+wLCZL6VT4s0nMryyel9KVGdqJFxUrX8F9DPqi1zsB6UbUgzpcy8t218y1Xbg84YnYco5/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Wed, 30 Apr
 2025 04:35:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Wed, 30 Apr 2025
 04:35:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 04/10] drm/i915/hdcp: rename struct intel_hdcp_gsc_message
 to intel_hdcp_gsc_context
Thread-Topic: [PATCH 04/10] drm/i915/hdcp: rename struct
 intel_hdcp_gsc_message to intel_hdcp_gsc_context
Thread-Index: AQHbtVPOkAStphsPY0WSEwVWuUoIJLO7pwBg
Date: Wed, 30 Apr 2025 04:35:10 +0000
Message-ID: <SN7PR11MB675092961315E4E251FEB699E3832@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <ca0a802a81ba4e96e7c40646a32386d4351d6ff4.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <ca0a802a81ba4e96e7c40646a32386d4351d6ff4.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7646:EE_
x-ms-office365-filtering-correlation-id: 516f2ec3-cb82-4e00-1f80-08dd87a0644f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ycYEZBsck/k132pkS2ui78TfvVvId0AmQ0Hkeqy3tcGQ7u8X3uSLhMJU2Rri?=
 =?us-ascii?Q?PfNM4ss3576ONyzL/jfJm91qayMztmO7fBiX1nHUY0G5lhfUe2DnVyGYV+CP?=
 =?us-ascii?Q?HLTYJOYLnBmBzXSRzbptW7VJYCNUyv28v33h0U+eOReEHEToevNQLEho32iR?=
 =?us-ascii?Q?qVkTlsFzZ+Kg1zw/yM1imTlOVy0yrY0GUASqAvoLvLV80X/xcOgA31isO+wh?=
 =?us-ascii?Q?GNSBYNzQueirXosbuPe6UI93TU2O7WFelKnnV5KiHo9HYr7o4ISz/jfMjx8X?=
 =?us-ascii?Q?qlB4QrDUopZdL0c7EDS25OMKDcHw93XKtm8AsVPAHP4f+9n6RjVibipDT5Cv?=
 =?us-ascii?Q?/s/zwOLqO7lVcoaRRqlA0ZC9rvimu225gksEnOskY/8qBu8iU+oNEhdVoEHT?=
 =?us-ascii?Q?l0nBOHj7aIrK7JDRO1W2BjzEB9TVxHvUQEbt1Lxhaf/WCBCWgUns4wlZE7jk?=
 =?us-ascii?Q?oCUabecwoj1LvmpiIOLdEvY8ZLwG+qcTLNevuDit2GqL5dkjEV1jnBkwMUgt?=
 =?us-ascii?Q?h0IbUsx9+yEZig2HdVhMM8tG4dheXvwpzpiqoRH1wuleLJXBo+GwVNvlpNpb?=
 =?us-ascii?Q?+2ebp88RzD8k4zaU4qP2BfC+sloU/VDdKavd4y2B5WOm7eyCPG55o1SfyCKR?=
 =?us-ascii?Q?KkfY5YzA43W12t8esUUHhEB36JBOnEldrZAvbHwxdAvknHBlOngQc3dPXRZ/?=
 =?us-ascii?Q?CSbvakg3Zg3utAhjqzAvIJREndWocuTObvMckzj2IJKuam5ukCF3P+DFzqCX?=
 =?us-ascii?Q?xD/yiE0u44DruTSl2ibzQmPENvwlhklfuJZkEKG3FbfYI/n0CU618CQ+jOKG?=
 =?us-ascii?Q?TMmxU6gMbQuadlcXTj3H2qu4QccSUXf+JYcVnrKT8L99br6eOoq+pFOyWCKr?=
 =?us-ascii?Q?vWtXdaIxi3C9drXAzFYjsID7jn1TGW2K/WszFID34JMWZlwi4ckEh5Wym9hU?=
 =?us-ascii?Q?k6J31Qnbiqm1PNBl9SwLRw57HeLprqpTbpqcmX8ZupeS6f3tgyDisSmqJHq2?=
 =?us-ascii?Q?lgp9/GcdyFab+MSA3hbw9qoEX5GMjaiOAZj05r1+feMRQjtohptVASLKWuoH?=
 =?us-ascii?Q?7duMtra6rZ1vEkDA1As0P/RLlbbUIz78PBLg9y8q/+DH24C/xzTelLRc7sZr?=
 =?us-ascii?Q?s+Sbeh7BifRDsGoKoWAGLpHhppRJSwOqb5t8PWMpoyCNFr6Y7yIVxXGIU9/x?=
 =?us-ascii?Q?2vxERMPFCWZbBhBXHjHElMRH61FIi3GBSgUOWH7oP+uj2ceTDwSbsBkPghLC?=
 =?us-ascii?Q?+aAMM2ynHLnu2VXA2Rftn9EiyYy0tzqUdczu+53UGE2KpHZy/dH2Tyoefjir?=
 =?us-ascii?Q?Y3x47XJHsbGUVPJlcwoL3B+G0Kc53pnrnABBrs1e+uVvH53PrudemBCfJTXw?=
 =?us-ascii?Q?ogbA+x+VFLoWHTFcYdA3Ehu1LXhxrVnLAVcyVFW343aef1ei67WlTHPR6zKd?=
 =?us-ascii?Q?sRBdXy+9DEt9qaj5mMs4+Sn/9UaQu1wYU8++uY5ElAplr5ApSVHltGyaBr56?=
 =?us-ascii?Q?geE5SRN3UGDi6Eo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0oTBpf7zl1YWKeoY7yyc72kRA5dz3rteeEo72jBtlWhAqYIbhCoF64Op56ZP?=
 =?us-ascii?Q?SuPh3OxaObmWQMOHkRNHTSAQZWJNibeGQ9BNW3barXlb51d1g6nZiQoWWRKP?=
 =?us-ascii?Q?7vK7g0UkHeYlPoH/+6CblRt97TcHkSXEZpXkDuVSYb7naUS5WyGQBlhIq32a?=
 =?us-ascii?Q?nBVGUmeFrpcLRXvnlyB7jfeEmKBZ0qs6ee3mQFsMm1MKoiqMBIuFkJ7nDIOt?=
 =?us-ascii?Q?cASk0CQrRITLcgERi2BUH7v9HDtqzJp9apOYEnbtM0/gpj3Tz2cDjOv/BFih?=
 =?us-ascii?Q?c4ehFGCB5F01nmdFQx53sj7dTu8THWNaW7UN+9DkOGNPmdT1l5rsA1uQ69DX?=
 =?us-ascii?Q?1G3AnF/dXrgiqtN6uG0GRLWSuqnbHpj7NSgLrSSGjByAbuylHWpnjmouLaaL?=
 =?us-ascii?Q?/hka1YVG3zY5yq32d2hd+JWDkM2PdAInuVrCtfAyOhqFDyF9jrWHYZEhq65/?=
 =?us-ascii?Q?By6xLQFk9YJK3649MC0nYf3DnEUQBsp96FRXPh4uiKJA/qEFCCW7Du9ehkmh?=
 =?us-ascii?Q?12dOxcRVz5RLBKwzvGUXTiQtHOiZ6QX55sXXdsKOLO0Zp4gn0cN84rprTD1C?=
 =?us-ascii?Q?lQUdJ236I3G4EGz3DOQzm1NnypalsOi3ta6jThkPuhCE7wUl9s0C1Uz+OckR?=
 =?us-ascii?Q?gw8Ad1jaHgV4gvSIvtdbK9ji5PtNeYKDdKS+/7KF3oABsZimX5Rco2n77E9J?=
 =?us-ascii?Q?FEKeK0blkU0clZOrK8D9dhs3hnLOcmcSm5vMSHwYdHBDr3f9l6nuKpYkoyu/?=
 =?us-ascii?Q?HDUJxqWnd3cNeWWV099n+BmcsqdfbCX8embMFvfVlXagr3y+8ip9Rx1YJhYt?=
 =?us-ascii?Q?+r5t9kpxhlK/ha8b8PHlr12b90lmUJylGVZGO+gmnkWpMeKxMp22nqm/6yzK?=
 =?us-ascii?Q?n54QawHU+aKLtv4P8cjVs1VzTdYk7Z7pZ9xaAbbL64ce2ecYSrORHnYVFTol?=
 =?us-ascii?Q?yTsuqOQKqBWJU5ghuRF6uqC8rrlLHUuOPxf78dwxw9zuO5jbIoP8zr922ihN?=
 =?us-ascii?Q?Y1U1vAYXZveoDN4zlEBAR0iCLBe4UtE7TEbKm7JKkl+9piERZjtCKxU90YZN?=
 =?us-ascii?Q?pV1ryfezopZdcRt5RZv3R4aS/i53pLFsr7fRTvSCkbQJ4/CacKkacNUko4RQ?=
 =?us-ascii?Q?pS1U+aDWLUTS51UtCT9vej3/3+LXv6bGiqkiZ8SdnncM4NkCyB9GOmq9hN8J?=
 =?us-ascii?Q?zClUW2dKX1ZFJf1K6m1cf0fBbORdaimZndgvevR3X/CbHOIwAfiR6ZJ9mdYp?=
 =?us-ascii?Q?outXKgzPyCDJJQl1f4K4qCfWtAfFQmsjsuF33mdjWYdwuRQ72biKG91gv+ev?=
 =?us-ascii?Q?fgy/VhNspKymLoWow1W2aWO3XpWDYyLLQ786njejlkKS9CoIuPakQApouIGO?=
 =?us-ascii?Q?P6OaksjJrBLJwyUpNYryuvVXgYy1F3C3YmzyzQz2ibSiLXhNmwTrgl4SoEfG?=
 =?us-ascii?Q?Cca5HZjiLtgA03ElHgLGn4yTiO6jcI/FthHJJrkxEjITzzBqhjpo03UHMsUY?=
 =?us-ascii?Q?RIRRdikmPnfXEoKvGf1ij51m/NWiBQmf+Pxys+uOJj/DzjLcfHdigpsD/CAB?=
 =?us-ascii?Q?yHQqIY491BLZiWRF1frxrq+N02hfQvqrVO0qwo58?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 516f2ec3-cb82-4e00-1f80-08dd87a0644f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 04:35:10.3688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iUxqj+Y2F5D7dY6Jxaz1YPvdLlLRX4XT+emO45FEF+4IhNcjM3x/0bsVyNeK6G6qjIjsPDYt+IQ4UvHqk+y31g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
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
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 04/10] drm/i915/hdcp: rename struct intel_hdcp_gsc_messag=
e
> to intel_hdcp_gsc_context
>=20
> It's really about the context more than about the message.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 52 ++++++++---------
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  6 +-
> .../drm/i915/display/intel_hdcp_gsc_message.c | 14 ++---
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 58 +++++++++----------
>  5 files changed, 66 insertions(+), 66 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 613af57abd1b..dc834cef75c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -430,7 +430,7 @@ struct intel_display {
>  		 * reused when sending message to gsc cs.
>  		 * this is only populated post Meteorlake
>  		 */
> -		struct intel_hdcp_gsc_message *hdcp_message;
> +		struct intel_hdcp_gsc_context *gsc_context;
>  		/* Mutex to protect the above hdcp related values. */
>  		struct mutex hdcp_mutex;
>  	} hdcp;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 68d912dbd658..3e1dc2f7310c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -12,7 +12,7 @@
>  #include "i915_utils.h"
>  #include "intel_hdcp_gsc.h"
>=20
> -struct intel_hdcp_gsc_message {
> +struct intel_hdcp_gsc_context {
>  	struct i915_vma *vma;
>  	void *hdcp_cmd_in;
>  	void *hdcp_cmd_out;

I feel this should be message_context if we are renaming it since the data =
inside it will contain
Hdcp message specific data once filled out and the addresses where this mes=
sage is store so
If we really have to rename it then message_context over just context.
That way we also leave the hdcp_message variable name alone not having to r=
ename it at every use.

Regards,
Suraj Kandpal

> @@ -40,7 +40,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display
> *display)
>=20
>  /*This function helps allocate memory for the command that we will send =
to
> gsc cs */  static int intel_hdcp_gsc_initialize_message(struct drm_i915_p=
rivate
> *i915,
> -					     struct intel_hdcp_gsc_message
> *hdcp_message)
> +					     struct intel_hdcp_gsc_context
> *gsc_context)
>  {
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct drm_i915_gem_object *obj =3D NULL; @@ -77,9 +77,9 @@ static
> int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>=20
>  	memset(cmd_in, 0, obj->base.size);
>=20
> -	hdcp_message->hdcp_cmd_in =3D cmd_in;
> -	hdcp_message->hdcp_cmd_out =3D cmd_out;
> -	hdcp_message->vma =3D vma;
> +	gsc_context->hdcp_cmd_in =3D cmd_in;
> +	gsc_context->hdcp_cmd_out =3D cmd_out;
> +	gsc_context->vma =3D vma;
>=20
>  	return 0;
>=20
> @@ -90,37 +90,37 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	return err;
>  }
>=20
> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	int ret;
>=20
> -	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> -	if (!hdcp_message)
> +	gsc_context =3D kzalloc(sizeof(*gsc_context), GFP_KERNEL);
> +	if (!gsc_context)
>  		return ERR_PTR(-ENOMEM);
>=20
>  	/*
>  	 * NOTE: No need to lock the comp mutex here as it is already
>  	 * going to be taken before this function called
>  	 */
> -	ret =3D intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> +	ret =3D intel_hdcp_gsc_initialize_message(i915, gsc_context);
>  	if (ret) {
> -		drm_err(display->drm, "Could not initialize hdcp_message\n");
> -		kfree(hdcp_message);
> -		hdcp_message =3D ERR_PTR(ret);
> +		drm_err(display->drm, "Could not initialize gsc_context\n");
> +		kfree(gsc_context);
> +		gsc_context =3D ERR_PTR(ret);
>  	}
>=20
> -	return hdcp_message;
> +	return gsc_context;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> *hdcp_message)
> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> +*gsc_context)
>  {
> -	if (!hdcp_message)
> +	if (!gsc_context)
>  		return;
>=20
> -	i915_vma_unpin_and_release(&hdcp_message->vma,
> I915_VMA_RELEASE_MAP);
> -	kfree(hdcp_message);
> +	i915_vma_unpin_and_release(&gsc_context->vma,
> I915_VMA_RELEASE_MAP);
> +	kfree(gsc_context);
>  }
>=20
>  static int intel_gsc_send_sync(struct drm_i915_private *i915, @@ -167,7
> +167,7 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
>  /*
>   * This function can now be used for sending requests and will also hand=
le
>   * receipt of reply messages hence no different function of message retr=
ieval
> - * is required. We will initialize intel_hdcp_gsc_message structure then=
 add
> + * is required. We will initialize intel_hdcp_gsc_context structure
> + then add
>   * gsc cs memory header as stated in specs after which the normal HDCP
> payload
>   * will follow
>   */
> @@ -178,7 +178,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct intel_gsc_mtl_header *header_in, *header_out;
>  	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header_in);
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	u64 addr_in, addr_out, host_session_id;
>  	u32 reply_size, msg_size_in, msg_size_out;
>  	int ret, tries =3D 0;
> @@ -191,10 +191,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>=20
>  	msg_size_in =3D msg_in_len + sizeof(*header_in);
>  	msg_size_out =3D msg_out_len + sizeof(*header_out);
> -	hdcp_message =3D i915->display.hdcp.hdcp_message;
> -	header_in =3D hdcp_message->hdcp_cmd_in;
> -	header_out =3D hdcp_message->hdcp_cmd_out;
> -	addr_in =3D i915_ggtt_offset(hdcp_message->vma);
> +	gsc_context =3D i915->display.hdcp.gsc_context;
> +	header_in =3D gsc_context->hdcp_cmd_in;
> +	header_out =3D gsc_context->hdcp_cmd_out;
> +	addr_in =3D i915_ggtt_offset(gsc_context->vma);
>  	addr_out =3D addr_in + PAGE_SIZE;
>=20
>  	memset(header_in, 0, msg_size_in);
> @@ -202,7 +202,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  	get_random_bytes(&host_session_id, sizeof(u64));
>  	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in,
> HECI_MEADDRESS_HDCP,
>  					      msg_size_in, host_session_id);
> -	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in), msg_in,
> msg_in_len);
> +	memcpy(gsc_context->hdcp_cmd_in + sizeof(*header_in), msg_in,
> +msg_in_len);
>=20
>  	/*
>  	 * Keep sending request in case the pending bit is set no need to add
> @@ -236,7 +236,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  			    reply_size, (u32)msg_out_len);
>  	}
>=20
> -	memcpy(msg_out, hdcp_message->hdcp_cmd_out +
> sizeof(*header_out), msg_out_len);
> +	memcpy(msg_out, gsc_context->hdcp_cmd_out + sizeof(*header_out),
> +msg_out_len);
>=20
>  err:
>  	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index f3362720d742..31080df80097 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -11,7 +11,7 @@
>=20
>  struct drm_i915_private;
>  struct intel_display;
> -struct intel_hdcp_gsc_message;
> +struct intel_hdcp_gsc_context;
>=20
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display);  ssize_t
> intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in, @@ -
> 19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private
> *i915, u8 *msg_in,
>  				size_t msg_out_len);
>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display); -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_messag=
e
> *hdcp_message);
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display); void intel_hdcp_gsc_free_message(struct
> +intel_hdcp_gsc_context *gsc_context);
>=20
>  #endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 11aa6772f272..94ca571ab481 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -633,7 +633,7 @@ static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
>=20
>  int intel_hdcp_gsc_init(struct intel_display *display)  {
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret =3D 0;
>=20
> @@ -643,9 +643,9 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  	mutex_lock(&display->hdcp.hdcp_mutex);
>=20
> -	hdcp_message =3D intel_hdcp_gsc_hdcp2_init(display);
> -	if (IS_ERR(hdcp_message)) {
> -		ret =3D PTR_ERR(hdcp_message);
> +	gsc_context =3D intel_hdcp_gsc_hdcp2_init(display);
> +	if (IS_ERR(gsc_context)) {
> +		ret =3D PTR_ERR(gsc_context);
>  		kfree(arbiter);
>  		goto out;
>  	}
> @@ -653,7 +653,7 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>  	display->hdcp.arbiter =3D arbiter;
>  	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
>  	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> -	display->hdcp.hdcp_message =3D hdcp_message;
> +	display->hdcp.gsc_context =3D gsc_context;
>=20
>  out:
>  	mutex_unlock(&display->hdcp.hdcp_mutex);
> @@ -663,8 +663,8 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  void intel_hdcp_gsc_fini(struct intel_display *display)  {
> -	intel_hdcp_gsc_free_message(display->hdcp.hdcp_message);
> -	display->hdcp.hdcp_message =3D NULL;
> +	intel_hdcp_gsc_free_message(display->hdcp.gsc_context);
> +	display->hdcp.gsc_context =3D NULL;
>  	kfree(display->hdcp.arbiter);
>  	display->hdcp.arbiter =3D NULL;
>  }
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index d15565bf2f9f..68fac12ac666 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -21,7 +21,7 @@
>=20
>  #define HECI_MEADDRESS_HDCP 18
>=20
> -struct intel_hdcp_gsc_message {
> +struct intel_hdcp_gsc_context {
>  	struct xe_bo *hdcp_bo;
>  	u64 hdcp_cmd_in;
>  	u64 hdcp_cmd_out;
> @@ -69,7 +69,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display
> *display)
>=20
>  /*This function helps allocate memory for the command that we will send =
to
> gsc cs */  static int intel_hdcp_gsc_initialize_message(struct intel_disp=
lay
> *display,
> -					     struct intel_hdcp_gsc_message
> *hdcp_message)
> +					     struct intel_hdcp_gsc_context
> *gsc_context)
>  {
>  	struct xe_device *xe =3D to_xe_device(display->drm);
>  	struct xe_bo *bo =3D NULL;
> @@ -92,57 +92,57 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	cmd_out =3D cmd_in + PAGE_SIZE;
>  	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
>=20
> -	hdcp_message->hdcp_bo =3D bo;
> -	hdcp_message->hdcp_cmd_in =3D cmd_in;
> -	hdcp_message->hdcp_cmd_out =3D cmd_out;
> +	gsc_context->hdcp_bo =3D bo;
> +	gsc_context->hdcp_cmd_in =3D cmd_in;
> +	gsc_context->hdcp_cmd_out =3D cmd_out;
>  out:
>  	return ret;
>  }
>=20
> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display)
>  {
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	int ret;
>=20
> -	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> -	if (!hdcp_message)
> +	gsc_context =3D kzalloc(sizeof(*gsc_context), GFP_KERNEL);
> +	if (!gsc_context)
>  		return ERR_PTR(-ENOMEM);
>=20
>  	/*
>  	 * NOTE: No need to lock the comp mutex here as it is already
>  	 * going to be taken before this function called
>  	 */
> -	ret =3D intel_hdcp_gsc_initialize_message(display, hdcp_message);
> +	ret =3D intel_hdcp_gsc_initialize_message(display, gsc_context);
>  	if (ret) {
> -		drm_err(display->drm, "Could not initialize hdcp_message\n");
> -		kfree(hdcp_message);
> -		hdcp_message =3D ERR_PTR(ret);
> +		drm_err(display->drm, "Could not initialize gsc_context\n");
> +		kfree(gsc_context);
> +		gsc_context =3D ERR_PTR(ret);
>  	}
>=20
> -	return hdcp_message;
> +	return gsc_context;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> *hdcp_message)
> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> +*gsc_context)
>  {
> -	if (!hdcp_message)
> +	if (!gsc_context)
>  		return;
>=20
> -	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> -	kfree(hdcp_message);
> +	xe_bo_unpin_map_no_vm(gsc_context->hdcp_bo);
> +	kfree(gsc_context);
>  }
>=20
>  static int xe_gsc_send_sync(struct xe_device *xe,
> -			    struct intel_hdcp_gsc_message *hdcp_message,
> +			    struct intel_hdcp_gsc_context *gsc_context,
>  			    u32 msg_size_in, u32 msg_size_out,
>  			    u32 addr_out_off)
>  {
> -	struct xe_gt *gt =3D hdcp_message->hdcp_bo->tile->media_gt;
> -	struct iosys_map *map =3D &hdcp_message->hdcp_bo->vmap;
> +	struct xe_gt *gt =3D gsc_context->hdcp_bo->tile->media_gt;
> +	struct iosys_map *map =3D &gsc_context->hdcp_bo->vmap;
>  	struct xe_gsc *gsc =3D &gt->uc.gsc;
>  	int ret;
>=20
> -	ret =3D xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in,
> msg_size_in,
> -				       hdcp_message->hdcp_cmd_out,
> msg_size_out);
> +	ret =3D xe_gsc_pkt_submit_kernel(gsc, gsc_context->hdcp_cmd_in,
> msg_size_in,
> +				       gsc_context->hdcp_cmd_out,
> msg_size_out);
>  	if (ret) {
>  		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
>  		return ret;
> @@ -162,7 +162,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe,
> u8 *msg_in,
>  				size_t msg_out_len)
>  {
>  	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	u64 host_session_id;
>  	u32 msg_size_in, msg_size_out;
>  	u32 addr_out_off, addr_in_wr_off =3D 0;
> @@ -175,15 +175,15 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device
> *xe, u8 *msg_in,
>=20
>  	msg_size_in =3D msg_in_len + HDCP_GSC_HEADER_SIZE;
>  	msg_size_out =3D msg_out_len + HDCP_GSC_HEADER_SIZE;
> -	hdcp_message =3D xe->display.hdcp.hdcp_message;
> +	gsc_context =3D xe->display.hdcp.gsc_context;
>  	addr_out_off =3D PAGE_SIZE;
>=20
>  	host_session_id =3D xe_gsc_create_host_session_id();
>  	xe_pm_runtime_get_noresume(xe);
> -	addr_in_wr_off =3D xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo-
> >vmap,
> +	addr_in_wr_off =3D xe_gsc_emit_header(xe, &gsc_context->hdcp_bo-
> >vmap,
>  					    addr_in_wr_off,
> HECI_MEADDRESS_HDCP,
>  					    host_session_id, msg_in_len);
> -	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap,
> addr_in_wr_off,
> +	xe_map_memcpy_to(xe, &gsc_context->hdcp_bo->vmap,
> addr_in_wr_off,
>  			 msg_in, msg_in_len);
>  	/*
>  	 * Keep sending request in case the pending bit is set no need to add
> @@ -192,7 +192,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe,
> u8 *msg_in,
>  	 * 20 times each message 50 ms apart
>  	 */
>  	do {
> -		ret =3D xe_gsc_send_sync(xe, hdcp_message, msg_size_in,
> msg_size_out,
> +		ret =3D xe_gsc_send_sync(xe, gsc_context, msg_size_in,
> msg_size_out,
>  				       addr_out_off);
>=20
>  		/* Only try again if gsc says so */
> @@ -206,7 +206,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe,
> u8 *msg_in,
>  	if (ret)
>  		goto out;
>=20
> -	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo-
> >vmap,
> +	xe_map_memcpy_from(xe, msg_out, &gsc_context->hdcp_bo->vmap,
>  			   addr_out_off + HDCP_GSC_HEADER_SIZE,
>  			   msg_out_len);
>=20
> --
> 2.39.5

