Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA44976536
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A2210EB20;
	Thu, 12 Sep 2024 09:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ri4MSurU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A5410EB20
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726132149; x=1757668149;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t6Opgv1NFZKN4Z4oLwzsJeQXvLzjW+XXySxqvPPVTQs=;
 b=Ri4MSurUsqQERNv48kyGP6yjU8+9XnkH3OzGYBNI58eanqeyXJpNoJ5r
 NtjlikmE+C51AAOmQq508zU29omGg7gQHePO6rF5u/aROkvDaIZhtmsm4
 UQKKqCGZ8BfDzk1RsLi9LGwBG4TnGOd2WVYBRsX6hsrjdLQZAdTa7auv9
 +FVl3FVY4Z40Ckowj7hJWtbyUwSjIUDTOJk/vGecBHiSmkk0O1a8L/X1y
 RCQBp5s7EmmRe/u/ccjTwgu8PofsdicW3Yfu/ZaD2fZr4MsyhAMfclqtJ
 lLS3aLVCi+M3o7Ghka4e+FOe4KotSiQSzOcz/9EB29MkwNWjvJ9RLS5GT Q==;
X-CSE-ConnectionGUID: Pifx8LxwRZa/7sUs6so+HA==
X-CSE-MsgGUID: cZR1+UCqT02UERon9skJyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="13490843"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="13490843"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:09:09 -0700
X-CSE-ConnectionGUID: QhRlv5h+QtOYd31Io6NjuA==
X-CSE-MsgGUID: fejGqNyGQtambvp0THPG4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67367620"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 02:09:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 02:09:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XQc3rDENmKjskdiIY3yp3cG7en1kFWFaTjAJ9l0rjvI2waA368soVPQruAe6+VUOvC98IlZyDVFQWko+q3OE09NNRrpTZE1w0sMmS02AxP25pevnhDakl2Q22/ppDIM+xXTPJ2KwVaNWZUvQa1C2K9jF0PP6QfCRy3dwr6aR8TXVfYlY/bfjxfvwi0+EOGrrLBo+HsU750u7kicjQjJjlilcDb+wCMrMO0ov2V5bIEpCUK3x1sKSLXtmTwU8xlujls+50td1ab0AoS0xVIGGAF7dh7s2lHyWJbL7iiY6nUoMPRQzdZTq4gjkkxwVNPcwwcyD9nRmJqAJntzxKndeXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NCiWwVvk11FqgU2jd2Tdnn2amfOguIElJZ3wlxTkkQ=;
 b=h4LiZZdXir6ZZ8mkVuZXrfPtC4N1eiyzVIOnR0iwsp56NMDLFfSNsQi7YBz5ojneyy8eeWMHydWtO2Bgyqs6U7cAfDzt7Cu4BEicvgyIM7OJETuVeW4rbz8+Mtweb1tRgTzRGHEsXlbMGOgPwGAVb1fnTb640GL+aVBaF0T0pLVibi1kUtCfPMPMxtEcsYALtSc6cG94hxiAJIKdtvBQApdwSweSj5A2wRgxqJwYmYzOfRphYH71/WntEMXHDpiIaLzKn9srqIpEMlEyAKlQrmHnhAXGPmpIDqQgb7Bf6l9GLGH7L52PHPP+8JyYNmjCrqSIE7Mpox360Mjv+wjcVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 09:09:01 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 09:08:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87WZctRbqxutEUyY7MAGMhxOCrJRDakAgAEA1cA=
Date: Thu, 12 Sep 2024 09:08:57 +0000
Message-ID: <IA0PR11MB7307D98AF48A0177B9AADFD8BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
 <SJ0PR11MB67893EF32300D1B26127066F8D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB67893EF32300D1B26127066F8D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN6PR11MB8219:EE_
x-ms-office365-filtering-correlation-id: d6742421-aedb-429a-7f8b-08dcd30a8890
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?9v5W9jTSKYH5oJPsEFSo0lxdhxXtm2h4IVhMYP585ci9utGLLusGewrY1A?=
 =?iso-8859-1?Q?YNqM2SktHH1mCvpviQ0cAmoYJyRaXqJnQRdbTV9mooT+owUiXPfLdLugDq?=
 =?iso-8859-1?Q?kLtAJldwMMhOA4WY2d9Sr34QGCgg5SzMNrlTZXTtB5uyEuQH0/eYg6Tdnz?=
 =?iso-8859-1?Q?ubnt13ph+2qu4gRwE5uK4nZoF2tusjalBToJaeVSSPEhfGz5PS/NUPYe4a?=
 =?iso-8859-1?Q?WZKaJHQOgAgz87/dvr2BpHxhopM6RiRWmFSJguaM9yVdHRoqJ5EZiZurlJ?=
 =?iso-8859-1?Q?gLin2i6/NAk3OrByQMCbHHSgdHYfp/5LmhjP9cQQ9Zipj2Bh2OklPTaeuI?=
 =?iso-8859-1?Q?Rnl6cuS2dIMHipNZxJVr3mUbS/aK2KfXPs1Zr/bHJZcKXUXl7W0OEe2Hxn?=
 =?iso-8859-1?Q?ko3QIaS7q1SGwCNJ2v435XDKfub/xTiWtgStwGLtn1cjRA1oLs6IDevvCh?=
 =?iso-8859-1?Q?AKfgtBaJCV0D4Jy/JVq81VM8r8Uq/bTQElsr4MseVBTUxZ2SZlSgw4KPpb?=
 =?iso-8859-1?Q?QUY8fCCj6ya2J2mrSdezSZ/gT5mjgcsOQvR2+cqEIA+KSyQorzcmfPfygQ?=
 =?iso-8859-1?Q?22lrT8n7OYlB37etZvL4XE+1Z+4V6C+8MGXq2BiWgqVsETtRtRUzKkiobB?=
 =?iso-8859-1?Q?1mxDB3aX22bArXTRYzKRCcbnITQaluP5pB1Re2Hg2fetE2+L4qw+Knbaui?=
 =?iso-8859-1?Q?TVSR/j5X0g7kDGRJMTu6OT4kMNz4lT13osGixJ9OF8i9y1qp/DJnAxKS8W?=
 =?iso-8859-1?Q?6JcvMv6TfUYYdA7AMqkwpXE4CeKg7ErrYYPgYKsoka1VBVl8PIvRNl6gVh?=
 =?iso-8859-1?Q?N+54jPh0Gb/DsPxvDEfd8CfdF/yPgu/9Blt7sNEOktDtygUSHQvv8mwvc/?=
 =?iso-8859-1?Q?h9PPKeZMRCI+vF4PdnyDRKMI56DTUsWGC32tv314bv3DjFN/TLpWYIIHfu?=
 =?iso-8859-1?Q?Z1XeanD0+PjijjD2Axfg0mSHoWMZGeOLfhIxkQ0bAsnh4vgsrvdW5IJozW?=
 =?iso-8859-1?Q?iLFuafVgUHZxCkhWp3ZxZaVgOAWV6kXTvIXsBoCnA01xlMAhIZYYoscDm4?=
 =?iso-8859-1?Q?8F9ACgdC2MOTB6IYDwZZQkpQXsWs3C5i6rFBmWVd6QQ6YbL07f2VFs8W1B?=
 =?iso-8859-1?Q?+XWTRQxw+lSaecQIv5nw/yaTfcfuqI97Vs+TM2VS8ZXnvbfaqtuGiSEOnw?=
 =?iso-8859-1?Q?gwr9YfCVHgU9G6R0xkWTU6Ki0hjQ7//WzvGwkOh9iWqRnvFUse/maxE9sy?=
 =?iso-8859-1?Q?2piz9exsbYTi/OrxSjpNX6jxQcKAxIeLny0M1ImOQCT/4hfyVliOypU0VG?=
 =?iso-8859-1?Q?D5hC8Kcgzbc6wdIuhUB6K9U3lTrdPxqVBpN60ALpZRhNfL8GtipgOz1KcG?=
 =?iso-8859-1?Q?EGtoSfClQqbJ8Dy3G9kSmu7UAD2ofO0T/VE83z7myHx3WpBRtPFn1oUCaK?=
 =?iso-8859-1?Q?FSwJX23u7146Q/Ixif0EW4fGcbxnVNURDWdi1w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?cueCI4OANXpiufo5EjAZIPevEY44vWCgbAcsIcB7E7Hy9uIN1cU6Aqp/zV?=
 =?iso-8859-1?Q?vrf4ehuNnSO4480yZ1/O/1T6AZywQG+MR8BipMz86lT4Rux0mgGFekAoEZ?=
 =?iso-8859-1?Q?9xo7gDCQsCMzU0FDzk/W2CZKj9BVoWSBNWF+lShu4Q9R8Y2X/8OoW6KWZ0?=
 =?iso-8859-1?Q?VBmiO2rdSjaydI6JxP1Is/154h4eABUrFs6fIE/6U2QuOGsrqI9f/2m0BM?=
 =?iso-8859-1?Q?RYFbDb45D/irGMOEeSMlnICHMfc6U8wUzuMOtq0aitWURzXm4GjW/C98KH?=
 =?iso-8859-1?Q?GDp5HmC6C82rWDAcwGerkVgZnnSIJp1Z4LgKQqJWW7PP7JDM/WKlbsInas?=
 =?iso-8859-1?Q?RNJb3Uf1PianoRKqD/Wl92qxKQJgVtZ/xXUnZeigCB2uasojt3nl2awLoL?=
 =?iso-8859-1?Q?xtxagsqfOzk8zJuKfsOD9ucseEC/jRSwzVBo9IuNhfi52q2uzBhf+zj6V+?=
 =?iso-8859-1?Q?9mqmnc+3JgCZBabq1b/P5TXaM1FavyddZkeLLgbmwrzljjk77P253/IU2w?=
 =?iso-8859-1?Q?qkRghEdD+OPhJoUahlt2sB8XD1Om3zwiie+5XEL4YIEfLv+U7vTK0Qkn27?=
 =?iso-8859-1?Q?wG/lPR9hQ82YO514sI3V7Eoq/c3u0wv7d+hDNAUBaCFlQkKW0BU8rR+jAu?=
 =?iso-8859-1?Q?tKxAh0UWxSw5rWROQJpglwhxEmN0+Yiy1EUKslFE75XTuFVMLBKH/5E9Vk?=
 =?iso-8859-1?Q?21IMG1MrZdI3X+6h84im1GAhqgESG+3AGacEPoTXnxO+/2Uwe9wcX3gfZA?=
 =?iso-8859-1?Q?DAgl4qyVH9l2fDpV6GWoIwiJMnDCFd3w355lvde0x6bRcadpZ6aBFt/OGW?=
 =?iso-8859-1?Q?rT4q50nT5hk+k2xt5zEnsbI/gHe7HGWPjnBzon9knBdpT+nr/u6nFM5yOQ?=
 =?iso-8859-1?Q?fNQ6Gv8Tu1A0T583HDoDM73oZZHzjRWo9tYYovJM4L7XSdgHRz5UHwJpGe?=
 =?iso-8859-1?Q?jod6GXmemDKRJmGpJ0mLGZLKIU7JzlvsFM74y8zJ6q3nxi520egnkrjohn?=
 =?iso-8859-1?Q?pf/IZd5k+RkShPG2eg6kD+1jeSZ4AuFBmqjtJohmtQ3qGdB1ZVPXq4tjye?=
 =?iso-8859-1?Q?7cA7F9nIFCLzYoWrDCQ6JhVjpi0200NDzLEbnxYLF5nfZjMgyyCq3yWxwt?=
 =?iso-8859-1?Q?hmn2Ap3R8Re7sWcheD+Qt+ff3Y9tJNEfhtMOfDHMpKmxwDq8J4v0Una7r8?=
 =?iso-8859-1?Q?DHDKJlLncs7H/syWNoHJEzjp011pWPsEoDjjydn0e4VrPxZIdn3BGqR0oB?=
 =?iso-8859-1?Q?SGQ5jX9fZy5nCw//bndiCSLRpUOppn473smxlDD5l7VtfipeQbgVci18pI?=
 =?iso-8859-1?Q?hNeb5ewTq33YGmaUr6klRDS7mWY4ld6VcfkgNO7KGeWHWKvepE3JpNHw4A?=
 =?iso-8859-1?Q?hOv71zL/c1xo3rAESbm/mrRS002ikZbcF3FHNdug/yym23/oCdEw1+jJPf?=
 =?iso-8859-1?Q?8zhBZHbWgVNZtoJRqxdEgFFZImsr90cwMTkER7y0kXeN7Lu+G5BfjRowT6?=
 =?iso-8859-1?Q?PdCbDw/igLRgYSgAl8zkAb0oa3ApJFAPV0WnAtXuBFAvle1H06BlQb9s8Y?=
 =?iso-8859-1?Q?bo8gxRUTGquXxKSt8uOqByc6YZH61WVTHRS+0ghntSTGRtha41mmkXjjni?=
 =?iso-8859-1?Q?hpIqbDHBUTKcQ0C91V6ZjjkGs2sMOLsMOz5CVJMNNkGeYfC9ghnW6p/hyI?=
 =?iso-8859-1?Q?26H4ppbCEYVDV/WcAg3OODFLGpuzdkZKx+V85gv3?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6742421-aedb-429a-7f8b-08dcd30a8890
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 09:08:57.3576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYyKAOGmTdvz4SdGKmdfAT6gEeH9I/t5NKx6VG3+wB0rmBm6hiHzthc6xchQRwc4BfLzAikDa85J4fKA2ZDOwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Wednesday, August 21, 2024 3:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCHv2 1/5] drm/i915/display: Add support for histogram
> >
> > Statistics is generated from the image frame that is coming to display
> > and an event is sent to user after reading this histogram data.
> > This statistics/histogram is then shared with the user upon getting a
> > request from user. User can then use this histogram and generate an
> > enhancement factor. This enhancement factor can be multiplied/added
> > with the incoming pixel data frame.
> >
> > v2: forward declaration in header file along with error handling
> > (Jani)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  .../drm/i915/display/intel_display_types.h    |   2 +
> >  .../gpu/drm/i915/display/intel_histogram.c    | 205 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  5 files changed, 287 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..03caf3a24966
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -264,6 +264,7 @@ i915-y +=3D \
> >  	display/intel_hdcp.o \
> >  	display/intel_hdcp_gsc.o \
> >  	display/intel_hdcp_gsc_message.o \
> > +	display/intel_histogram.o \
> >  	display/intel_hotplug.o \
> >  	display/intel_hotplug_irq.o \
> >  	display/intel_hti.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index bd290536a1b7..79d34d6d537d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1537,6 +1537,8 @@ struct intel_crtc {
> >  	/* for loading single buffered registers during vblank */
> >  	struct pm_qos_request vblank_pm_qos;
> >
> > +	struct intel_histogram *histogram;
> > +
> >  #ifdef CONFIG_DEBUG_FS
> >  	struct intel_pipe_crc pipe_crc;
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > new file mode 100644
> > index 000000000000..45e968e00af6
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -0,0 +1,205 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =C2=A9 2024 Intel Corporation  */
> > +
> > +#include <drm/drm_device.h>
> > +#include <drm/drm_file.h>
> > +
> > +#include "i915_reg.h"
> > +#include "i915_drv.h"
> > +#include "intel_display.h"
> > +#include "intel_histogram.h"
> > +#include "intel_display_types.h"
> > +#include "intel_de.h"
> > +
> > +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of
> > the pipe's current pixel count.
> > +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision
> > factor for threshold guardband.
> > +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> > +
> > +struct intel_histogram {
> > +	struct drm_i915_private *i915;
> > +	bool enable;
> > +	bool can_enable;
> > +	enum pipe pipe;
> > +	u32 bindata[HISTOGRAM_BIN_COUNT];
> > +};
> > +
> > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	/* TODO: Restrictions for enabling histogram */
> > +	histogram->can_enable =3D true;
> > +
> > +	return 0;
> > +}
> > +
> Looks like we are totally bypassing crtc_state->dither.
> Also I see some comments on dither not being enabled on anything which is
> not 6bpc. Is that constraint resolved now?
>=20

Crtc_state->dither is used for enabling dithering during the crtc_enable an=
d at this point we are far ahead of that.
That restriction is for older platforms(ironlake) and we don't have any suc=
h for ADLP+

> > +static void intel_histogram_enable_dithering(struct drm_i915_private
> > *dev_priv,
> > +					     enum pipe pipe)
> > +{
> > +	intel_de_rmw(dev_priv, PIPE_MISC(pipe),
> > PIPE_MISC_DITHER_ENABLE,
> > +		     PIPE_MISC_DITHER_ENABLE);
> > +}
> > +
> > +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	int pipe =3D intel_crtc->pipe;
> > +	u64 res;
> > +	u32 gbandthreshold;
> > +
> > +	if (!histogram)
> > +		return -EINVAL;
> > +
> > +	if (!histogram->can_enable) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (histogram->enable)
> > +		return 0;
> > +
> I don't see in the spec that dither should be enabled, any quick bspec
> references?
Dithering should be enabled by default for ADL+ for DPST. This is an enhanc=
ement to avoid artifacts.

Thanks and Regards,
Arun R Murthy
--------------------
