Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A01F9A19C3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 06:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B258710E798;
	Thu, 17 Oct 2024 04:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6mLOQay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3C110E12D;
 Thu, 17 Oct 2024 04:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729139801; x=1760675801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1SEyPt69L9j5qzOtR9yXW/1xE8bMNbdBZtAWcLTx+Gw=;
 b=P6mLOQayEF0fqV7eKQ0wqd3k/UHh6lPgcsz/6/sjoBrDO5+t2Wykb+ft
 XHU0F27QW+lTGS1uXtdpsZi02djb4rtuG8a2XMoQAu5qyXFYaa2VUmIWR
 cr9ADVOBa6WdL6H9o3HwnlreQdUcIOaTU5vOoq1udok9XLXLVLNMhMfa/
 4jUwmG2UO7IjqzdJ9b37SvAUmqtOoRzyZ3XV2EN7Tl1JXr0644VL/nI8Z
 HLudELX6WL5e/JxwEZuQb1KnYaHWw8Ec6o+amn6Pw5Hgzcn8chcTKXNce
 XGixBmKjxwW0l0eEtfdwFWiiYK2VS+nz3N6mDqLYDh7oOJuSpczOzBNXq w==;
X-CSE-ConnectionGUID: H8rVNf8/SDSwLCvuHnGNTQ==
X-CSE-MsgGUID: zwQfTHxXSIqpGp56GkIMJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32301493"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32301493"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 21:36:41 -0700
X-CSE-ConnectionGUID: BWxt5S22QAeecgShZq46kQ==
X-CSE-MsgGUID: d9L8hATtSb+0cujL502VFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="109237431"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 21:36:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 21:36:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 21:36:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 21:36:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yb+tzC6WkgNxqT9p0rSdzbyw4fUK2tzQ0agGK5vjiO/BbpensjuruCNX32lON4mk83NH8XcxvrxoTRRiMtGZYIh3xcT83OTyZLHEFfNOACM/F36l8OuULiEsPWBgz+OTwAT+bYorJTLjvTMcXdN/5GnVu3LDlF/BGfnRo+AWyTQmVTw0Zix/rGDUISu4XrivU9nAFJjzBATHrSiGxxVxduKXZHNzHx7yT3Uf8fIwrJOqmdNFrVZGru9PkdvTjJAJZN9LS3Ak+NCgIQWd0uvESgy4OGoTL7EdWbp6IPznrOlejut5avh0E0YhGj2fHqbth8gkQvZBuGdsm5ja6ct7wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NZD+BzqnwKcb7apkGW4rGAS7HLfSwTGNOiPRsVwzm0=;
 b=Nebl5eX979uwN+RRx5xm79Zdeh3YIYTy4cUT4JsQhN0IbhMcik3ikwizfr7UpG4zyVZ20SiRY6ZjVTSQ0CtCTyoaUCypti02S/j9+sjqSbsxoihdxk7xOXJ21MT760y+xdUHwUZZMFQmnVb4oOrL/6AS2T5rrlK1sbxkw6RDJE33Yxo8F+BstpgHuiejFtyHbbL72pMMmprWooD8084zefyNNZMzay9gLzB/Li0ujDiBLOQ2QQ6PLPDnd9iA2gNUpKZ0SMed5WKG78gK0yQ+n8OXQcJCy8SUQfq+yNPn1+lKAF/vLtg3jHsbSf6WBSW//9UigU5Yc2nDed2B0G2o8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW5PR11MB5929.namprd11.prod.outlook.com (2603:10b6:303:194::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Thu, 17 Oct
 2024 04:36:37 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 04:36:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 3/7] drm/i915/xe3lpd: Include hblank restriction for
 xe3lpd
Thread-Topic: [PATCH v3 3/7] drm/i915/xe3lpd: Include hblank restriction for
 xe3lpd
Thread-Index: AQHbH1eZuINcH+6I+0qRo8UjvFDndrKJgUSAgADZxCA=
Date: Thu, 17 Oct 2024 04:36:37 +0000
Message-ID: <SN7PR11MB6750F7C4112E7D20A45F7256E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-4-matthew.s.atwood@intel.com>
 <20241016152757.GY4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241016152757.GY4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW5PR11MB5929:EE_
x-ms-office365-filtering-correlation-id: 7e1ea139-9f33-435a-8cd7-08dcee65499b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JlwjB6EBYEJQD2aMwTgrHHrwyimS52/SHUVf1zY0ivBdg0WMWk2jr2M9Vh5L?=
 =?us-ascii?Q?n/xZKCZjfLpS5F0IV9L5xdiscFYtmzwrGqziMtx53+YoEe8/vRxgk+mvTnnX?=
 =?us-ascii?Q?29joGM4bjeZe4Om+BWu8DYYe8q6DfTpOy0uhGUbF8ly7fVh7+PakUxIYcGWR?=
 =?us-ascii?Q?q4MGbYetO0f/XtZVuAku/ozbkCYkKhFaN+IoK1umWfihPDyW54Jra5CBdgan?=
 =?us-ascii?Q?v9p1cPy3LrAhW0vEF2p8qcNK7J2KEW6HvvyCLR4NYwbGwntIHa2w5+QowPx7?=
 =?us-ascii?Q?mhbnBMPF0A/F1EAEw1xXIkpZ+o9inu3H/eYuCkcO70mUjG8rJHzFy5U3Uhem?=
 =?us-ascii?Q?T4MOaOQLi5NIfpa1v/eBxyoFjgkbRAq7jhi8FzhF2lc/5lzNRhatfp81SsDj?=
 =?us-ascii?Q?mgsCLr8fieS8lYUXfdqXwCmPYnAcM5CrfxnlBdwZj1kOJTT/8kMJTXdwttsJ?=
 =?us-ascii?Q?7fXjhkXxkOuZ80angDHtzHA+XkHFvvX9lPhbIIWG4jTMPDiwcRTT0cLbUOhG?=
 =?us-ascii?Q?mO++mH5hVtgtOu3pT5yFFc8yzGrXSAR+9S9jcGgwyHmE3kxEeezbk9hHDz9z?=
 =?us-ascii?Q?TGnIBO2wgLYpaNcko/22eEXR7Br5+FVWuUGhKWlEhcFtGiuqyM8mz5ZdvkQd?=
 =?us-ascii?Q?Hly0IElz5G0MCs+lUn1N8spJByftebGKhmEsAlyTUDpU6do/qavSWL9kORVj?=
 =?us-ascii?Q?tBaXnszlvQMhRyoUqkZv4eeJLgDVIUu58nefno9NjS5VIC81TnsDrgejeLgO?=
 =?us-ascii?Q?4B/3pnl++Qcdv9eLvEtlNp9ibq+REx3mSyU8Xhk3/ltBRHSpUb6frkw+qtBm?=
 =?us-ascii?Q?6Ka6KOkWEL5qMopgjoev9fK7ZRClURHOom3dWFtuYoARr1/GQHFQfXVDYEzK?=
 =?us-ascii?Q?onToUU+2flSEbZLO24R6E0zMYflo4kTJWAIZXK8QtbXfC5oxcAWBb+BddCq4?=
 =?us-ascii?Q?zAUWs4geYkZGlTtfGwT7h49wEkvzcR5rgYUMlhxxccFyf3erfBZwg+EpUiGQ?=
 =?us-ascii?Q?g31O6uqTbgR5arawSBH6wobOGOHv0GSxHqsfg+efEWjSjJcv4VNzCj63wIPK?=
 =?us-ascii?Q?6egRmyBuxmpspGiyByHQXzp68gLPILXwenG4QAwhAktKmnm+I8OIzYvIYGAD?=
 =?us-ascii?Q?0O1HPi6Nswm60TovIyD4CpHGt4avsJjFLlA9c8/eGoFFPAvozSleaQq14CuR?=
 =?us-ascii?Q?QQG6oXogGdHE7208JTy1g4x95XetcEUkizBgWeQN50sQ8ss0kPzuguxN31xW?=
 =?us-ascii?Q?4YW3BasvLKYAMrCI2e8pr6UkdZHVRNM+th2Kfs/wqNVOT6gI5CIttXVJRTq1?=
 =?us-ascii?Q?BMZzZIGLG3m3ydZACaWA7vSNq5kC/4YKWL8JH/9I6fyOxPmHFXNaYf0zsBQS?=
 =?us-ascii?Q?g3crzZQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1LKql2kHAP8xHk736eV6nTRpXsu2dDClnlGhGYlfcvaJVpBfAi9jTG+B0GOt?=
 =?us-ascii?Q?I0Uz72V1Ypcr6WVwHopYQXF/P+pPWwOovl+bXSi2CeaZs2KdQekUKA3rrEsz?=
 =?us-ascii?Q?WDe1CaQ23aGAGLs+JJnrUb8OWju4fCo8VfMNVp8OzmdIIQnFN+RNQvpQ3NqD?=
 =?us-ascii?Q?ne74aJmdP9MLqTynLEKOuR8dSs2/d1RAo0bMSrd/fCwPd3k+2RWTOIjM9vZ6?=
 =?us-ascii?Q?jn1TQNcLTU3CxAKQy5KJpS9VvHFG4j24sVcuzw4TIXbOORl20UMaO5Cz8bxU?=
 =?us-ascii?Q?d6uq9w8nk0ObPw0B0cODT2stWrsnfXs7HbA7JqUZwMvRU0q5LrzCa4ztRdiP?=
 =?us-ascii?Q?x8t6T7KXEqT9UvwaBE8/1kfxL4/2mlIU5sBDomsdaSRjYaIKenA5yqm9/Qmg?=
 =?us-ascii?Q?znFSIai9cDGImIDXmrhEtNP2RbtWrqHbb5+agPT9mu10G3ZjMNRyw0fKNKc+?=
 =?us-ascii?Q?JjtBN/cNRT5iImcex9QV+3epg5pZSDoX/IFg3AHRVxul1B22l5SsbIbWbwzR?=
 =?us-ascii?Q?vGUrhhShm1H1ddffsOeCKdmPRGdrQ5kdDTdvB1m+PeIEq9gc30Le/SoDERga?=
 =?us-ascii?Q?/2VrB4BFdAg3zgzt9nNFwBUJ1IiuDRo5FgPSYRf52ZnaSr6Xmaj4KypArxzA?=
 =?us-ascii?Q?pS41e7M5sSMN08GJFzrOOAxwqTWsR8SY5gM3SKXfyTvrp0cuEJxFoI5i6ooX?=
 =?us-ascii?Q?HOZM1/WDFyCtmv8C3KRe+Wl5zL9n/GesZVoS3BICrCEW6kBYy0lXm04Q8MME?=
 =?us-ascii?Q?x8PneixWeYlJh/tg5CpyiLtOb0U5vBUnnnF2gBGrGiqwm15tXeW0KKsWBIkb?=
 =?us-ascii?Q?6XFLQ9+LAKXdZ/kZyz8Y7VruvTTXakWNtd+Xeqg6pmo8BQdb1w2PYuH4hZHV?=
 =?us-ascii?Q?gmCJajFoe11FraEZMCL0TFQ+aHd2ZZpB0e8q+Pj3bP0++WvOg1TW7psgFBH7?=
 =?us-ascii?Q?gKAXABZKM5x4IBdmxPDY5G8/oPTRfI7zlYLNxwQ/5s8Ynk8RusZ/sb/kFOm4?=
 =?us-ascii?Q?4wuBEOzdSH8jX6rUKUjKSymUxViMxIL0F5Xfh/kOv/mKVh4a1NuyEfmSUxuQ?=
 =?us-ascii?Q?1SAP+LnlLm4g+j4+4wYwUX0Kx+pvXsbP5p2nfVvkHcZsDhPG37bngiGAA+Zp?=
 =?us-ascii?Q?EDr0cudGSRBU5OsYVdsA3aM2BDdGhh2b2/QNVpwmP4ZHrfClZ3W6263yAKvQ?=
 =?us-ascii?Q?Ak0mGFHHw/JjFzIgewbkF+x2xtML0VlCk3Do/PPEQQM4OIOX4rNDanm0AIr7?=
 =?us-ascii?Q?eRWdLvstrrFETJWJ/2bfBsJttQWESJAAgjYaGlIOCVqN4ctYg4OUqL1y8ono?=
 =?us-ascii?Q?FdoxqVdIGa1wr0w+rUQ0iBUJhbCy9TN2+6ib4tGsdg6x9/NuAzEj2wJ8zTip?=
 =?us-ascii?Q?WhIobEpV3haBL9mk6Mf25Pn9bRGEwMacS+BK4HX1heffOXAktzLC//UQcLsT?=
 =?us-ascii?Q?qCq3iLx6HpFBkFGuuw5O5ByeYeA/vz/uinmDjQYDfkDZWer8LMHxitz00uzF?=
 =?us-ascii?Q?0PSpLyPPkKB6FApR+APGTB/lqlvImFNJF3JcAbxOzLW361YtF6OsNh3qMGC7?=
 =?us-ascii?Q?qsNEBub+UzwczV9VOhOzcioFsSXMi0FJis4nRu2T?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e1ea139-9f33-435a-8cd7-08dcee65499b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 04:36:37.3468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTb75ez/r4tPWwcIlP/YXv7ANb8nBg9tTDjDRScYAdi5tjcv6xxLWTYLBd20mu7YX65MShHEB8cy+3/Ua5R+zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5929
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
> Sent: Wednesday, October 16, 2024 8:58 PM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH v3 3/7] drm/i915/xe3lpd: Include hblank restriction f=
or
> xe3lpd
>=20
> On Tue, Oct 15, 2024 at 04:11:20PM -0700, Matt Atwood wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > hblank restriction now includes all of xe3.
> >
> > v2: add additional definition instead of function, commit message typo
> > fix and update.
> > v3: restore lost conditional from v2.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++++
> >  drivers/gpu/drm/i915/i915_reg.h           | 1 +
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..a99b41f258e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -51,6 +51,10 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  			intel_de_rmw(display,
> >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> >  				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +		else if (DISPLAY_VER(display) >=3D30)
>=20
> We might want to take this opportunity to update the if/else ladder with
> standard "newest platform first" rather than continuing to stack these th=
ings
> in the wrong order.  Also, you're missing a space after the comparison he=
re.

Okay got it will get the if ladder fixed here

>=20
> But more fundamentally I still think there needs to be more justification=
 in
> the commit message for this.  Right now we're editing a function that's
> labelled "/* WA: 16022217614 */" which implies we shouldn't be doing real
> work here on platforms that the workaround doesn't apply to (as is the ca=
se
> for Xe3).  So we probably need to move that comment down to the specific
> conditions for the older platforms that are impacted (and maybe re-write =
it
> in standard Wa_16022217614 notation to make it more greppable), and also
> add a bspec reference to the commit message that reviewers can check to
> confirm that we really should be disabling rekeying on platforms not
> impacted by the workaround.

You are right this the commit message and subject here should have been
"Disable HDCP Line Rekeying for Xe3"

And "We need to disable HDCP Line Rekeying for Xe3 when we are using an HDM=
I encoder"
as this is what the bspec expects of us and really not the WA (which was ap=
plied only for a few gen for the early stepping versions)
we are really not restricting the hblank here since this pruning modes base=
d on if HDCP is enabled at this point wont be possible.
As HDCP get enabled after modes are already pruned so when modes are being =
pruned HDCP will not be disabled.

Regards,
Suraj Kandpal
>=20
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +				     0,
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index d30459f8d1cb..fc30e0056b07
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3833,6 +3833,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> >  #define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>=20
> This line isn't sorted properly.
>=20
>=20
> Matt
>=20
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
> 	REG_GENMASK(11, 10)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
