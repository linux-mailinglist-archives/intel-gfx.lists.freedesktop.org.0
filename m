Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F98A8B2A72
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 23:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08AA10E5EA;
	Thu, 25 Apr 2024 21:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8pGY12g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F0B10E5EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 21:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714079429; x=1745615429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BNWiiOzxCtXsOzaxHsFFmxGJExfrOLfHGlkcA8smIn8=;
 b=f8pGY12gxQzv3++NF6zrs7XbvwOegkNioL+W5MiVaXb52bqB8mCYoIcX
 O4aH+Yk/CpKXtd4j97sgciJJKzG4V2Fs60RNYT08DwVNUw2XLn1IBlgUu
 UqR2XA2uIcy7UEOusXYUiAedbFHroOPa1+z4+GatWGZSLbNjGPJN5RUi/
 Co+8dj37E7HzqHHQblK4qIAtmjW7oj7/nRFg0uWROzbx3oGcCcpF+upCM
 z9kyR8nv01/t+DcDspSoJRo0ffyDE32/JoHpnBfSxRfB8TjJKUFNBszWw
 qsOaHCeX9TkHOJ6ESahJVEe9X6SsWB8EBkl9OPjpb1AcidVx5g0mHbcjf Q==;
X-CSE-ConnectionGUID: xMeMR6fgRIC+7wP9EXDMiw==
X-CSE-MsgGUID: CXDrnaNYROKfBnmob7XN5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="20409131"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="20409131"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 14:10:28 -0700
X-CSE-ConnectionGUID: veJCpER0RQONJHxbVuwyrA==
X-CSE-MsgGUID: duZ1xS/DQZ+NfgrvDqX1Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="25165879"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 14:10:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 14:10:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 14:10:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 14:10:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 14:10:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FsiXXrWB70XjOJBn4xlbF5O6TO2DZa4tep1VJCzXu2+vVFE5arJPxz1/xN0H5Bm/DBeqCIvsfeWysKfHnAq+NeZfGXY1Xa3eMfITYhofgyo/VUEWn5WqRmkUjLXldDZCEg60lqSQPWxwhWNhTmMx3OjLZhqg7ORgLDGUTryYfdjsEbmLYrofeJnDSYnHPknAobE6/yIJ7aVikH9BNZL7NADjG9o5Oct7u1PN76CCuEhAeEu3JUJK2pkz1YRva52dxttsZVV3wNWpnLNjE1KC3nlNZO0scs0CXR9a/uH0Qo9bd37I25slFRxFAW67gHBIjdUIxEhAEA08L6wcvF4PCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVYggcSe53pIvcuDm6spPUBuCnam5tmhnF2ZPhAfkYQ=;
 b=eynsQVQpGMz270M1WDiOabHOQ6iI2pb+56dUuwYPKAD6uPDrNeiU1LaZCd+6V2w72jqsbIh+h9d/ycVlEfGogp+Lksp9TPkiMSdbFx4r3f8W+XWlE92bRqDxg92243Pq6RTHEtC9Vo3OaM2sVn4wlWRlo+f8R1go49nUIW0uojrwNg38KnQhwl6yqvUGWodJ3VW8xCGUQiDoOGNWjNX6nAlAj1F8lXDYDuZ0RFaKZfLtY4qSW7p4MzJJx7EKjutWjJZuqeAm2LsA96Ubr+9U22c4HwY/wnuT4YrF/x7XzVhKaQT9zHWUySi6JTTisD2BZ12dHMWSQJMYCAP8PfzoZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA1PR11MB8327.namprd11.prod.outlook.com (2603:10b6:806:378::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Thu, 25 Apr
 2024 21:10:25 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c%4]) with mapi id 15.20.7519.021; Thu, 25 Apr 2024
 21:10:24 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Topic: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Index: AQHakqJwRdNC5neFykCfNE08TRWWF7Fz+N+AgAWLrsA=
Date: Thu, 25 Apr 2024 21:10:24 +0000
Message-ID: <CH0PR11MB54445A74BC7AE21906F564C2E5172@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
 <87o7a1vm16.fsf@intel.com>
In-Reply-To: <87o7a1vm16.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA1PR11MB8327:EE_
x-ms-office365-filtering-correlation-id: 747e1446-43f8-4a56-e5ea-08dc656c201c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?qn9WRrt1A/wFrEfYAk7MZ2HuI22LVo6taADAX1unblIcMd9zyR3nIbXVQSL3?=
 =?us-ascii?Q?+CxCAiIiqR76ohhQbvROAbG2zBaFIF0uhQOJjmFu/SlsjNOc+nKy/bLqc73+?=
 =?us-ascii?Q?HASyVu3/qexC1TLEHG4oPlmHnZu1qUe6EdEKeJbVv35fzyHu7/J5ZYVpMU5V?=
 =?us-ascii?Q?ScI6JvqtfyDwRcBJzTJ2AKzsuc4VUp0hyVZ820c7SBtgayVQedRZapUpT+1t?=
 =?us-ascii?Q?1vuIrxjCRtTlUqOzeCrr7dNnizlOOsYzlZSOXM19+5/N0VmbOt55UnPBQ6fA?=
 =?us-ascii?Q?w3avXyuZP7FqAVcjDTZcuulyHuSNtC27okTcgO8AOnWR1gTPkxbFZFNwIX31?=
 =?us-ascii?Q?NYOoRmslZ2LzSpgW+V5YwMkptpwxgbUUJuQFV2TnbzPcQpflaOqGgqtG2Eoa?=
 =?us-ascii?Q?x4IJG+9zJlK694iKWir1I9mhDdfs3/fuV9U8DUh6B600l65tgO/UAO/MG3+3?=
 =?us-ascii?Q?iGr2OsZ4dLYNO1ppZvMHD+WC8Fw6DZ4r6SoMBxfg2AEpdnDa90K0S93bCfF8?=
 =?us-ascii?Q?0PKcnpUIRaP1q/2G3fxkeShaBPqgx7r6Lg9n3zwWL4HwP9JodmqoCkoatt4q?=
 =?us-ascii?Q?TkCA8wEzmf2JgiJazGIREzByVlGrk+g5j1qDfsmbFLQiH27uvGIHYEiLuAHm?=
 =?us-ascii?Q?OpM+zrUglJXD7PAVz71qtMsVLLxqS0tHaftDNmImfi2Q3002wfgbj03sp9Za?=
 =?us-ascii?Q?OKRJhJ2ZWb6imavJPcv59TFU7s32lCvP86rjpO2WRXmSqjIQudRL/oM0FppM?=
 =?us-ascii?Q?IUFN1iC261rV8jCFTqGmIWJsrDNok8803Ov6ev+6+C5d23Exj0MUKI+CQWRk?=
 =?us-ascii?Q?tG1WaLU98k1Ri5WHktNTVOW3AYuahVLgqw/L5tfQoUflYjL1NHIaPfWTj4sf?=
 =?us-ascii?Q?2InYqMRDlw8SkBHT5os7GnmTiM4c/Kn7fQmdtqX5KnVnzcUHxympnJIggVis?=
 =?us-ascii?Q?W0+Dcec3o1uoRdkjGp8xoNujywtze1nmU5KCuo130wHPGfKf563gSmQ3WYVr?=
 =?us-ascii?Q?7uyQSWJkofWoCyZmb+vjtcig9WfWUXSPKkBadmvaWktwKhcuhfgAfydeTK+W?=
 =?us-ascii?Q?eyCLaAvUcU5/Aec6wRBapvcVEvgv3wp4edzeOsHXupgHIAsG/YBZgSNiePri?=
 =?us-ascii?Q?QJm/laU/jai2XTXgZJ/ysWVEC+T3jeaKaztE8wA8aD7NYrGifISj/xnn8ZBk?=
 =?us-ascii?Q?5SG6S7OOCmKchntd446dsX+vQgwSNY7hxi2oFMt+1SYgmAD3p70ZoF+nwPQs?=
 =?us-ascii?Q?KaVLxJWvknP/7HPIeI66/MvrtYxyxZJ7OwmC1WBbdA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uH9iJbn8yyxot2e/25Ed0bEJTNzvghxuqz+Jjr6hKksWdc1JuAhaC7gK2h62?=
 =?us-ascii?Q?P0zwx+lgSuHthB0oTw4dbBHtps8aKTW6/zowfwfAVpH5FdcLdrdDUrbvVAjL?=
 =?us-ascii?Q?sYF+KVkUflSuyJqWXTbFCcVg5AVXIgQymAc/nxhzO292WzQdEOQ+Uz1E3zrD?=
 =?us-ascii?Q?83duICY680dOit6lGAmjCALQ1QssgxY2frfsSvLAcbTF0npur0BtnaFWawfi?=
 =?us-ascii?Q?rxK5L6SIPLHVPmnb82FnZjN+lj46tLIbo+oKEn5ZfO5HP3vDA1I5RNtVMI19?=
 =?us-ascii?Q?KD5hDc8UU8gpTJCez1XoKDNf1FdtQ7PNchntWQLUorsONzT9wFr9H/Qf6SCE?=
 =?us-ascii?Q?X/wfmlaMqIPjX8RyGzhZC/YnFZTDtW753xD6MU9vAYQ9sE2u+q5fKIf5uTmK?=
 =?us-ascii?Q?NNFrBMugNyIjfJ0IqsszvVgZx0WfYUQklome8kXzGStPiF9ob2MWKEtCycjx?=
 =?us-ascii?Q?AEm/TeEjdXJzBVDAtUehLPWDMRiWMzfKt4N8v/neeNvqmAYNnpnPn3rpNPx5?=
 =?us-ascii?Q?ZAU9+62U3BdMx9li2yPmMczMdNwpYeV8yu6rsUL9xSeMTu3yySCYkJbFSGtu?=
 =?us-ascii?Q?E9vXv8EtLlxZCcyXohO99M3h32ACAkosSIBYtLA5dLyW5YUc2j7YVKxHfwTN?=
 =?us-ascii?Q?mr9nNc6rxBd765CuQOAw5/H7iFJ/3WLrq+X7JPh4hwNkBkbTYk9b+97AZCwd?=
 =?us-ascii?Q?zaFDNhiM9BDgXh43rsnapnlTxMGoQ8xKTR0MjfNfwxzCrIv4jXp+r3yoLyXd?=
 =?us-ascii?Q?gZIX8Pjz7xbhyiNaqsvaEW+Tb0uoXCbJHMJlDb9I4aKeBufUNDDha6k0nfdu?=
 =?us-ascii?Q?tMwpoxNGlMlO+BhLZQW5YDYLD8vwCyx9SP8cxxtpHqCTnY5MhDAJvK1GrdWe?=
 =?us-ascii?Q?2i7MPy0SoRuYAt1yjgWh83rN0AecH3REcEM5gJHzzQnQ33qYc2nPa7WehBgP?=
 =?us-ascii?Q?2eVIxMSOVBgHtq8PhMidsAK8MouMV3ad7WZFp576W4wBG+6C/z0sKiecz6mH?=
 =?us-ascii?Q?ZOaZXAvPbJUioliEP9UpJgGFvrvxRWKwkoLwcuhA6A0rB+3x9FItZ5Zw+6kw?=
 =?us-ascii?Q?Xma7pAtY2S6nxa67Z1OUVArBTg4qtnYlleyCfbvGpbr+qP1DHjYAEIPJlOZf?=
 =?us-ascii?Q?YlzK3jasnGHcmLkPJLY07E8pd2YAnLXRQrOgeeBTnI5dNh5Cwf+eeyFol8pp?=
 =?us-ascii?Q?YFCY7sPq30IHF5GCxxh6lsBalp7sNjVImVA5DmKkKp8fOYrIW3s+ldrGSjVw?=
 =?us-ascii?Q?dnBaLV94rfRrDHQKrlO7ZIRdZLdVUW5o39XFU9fdyVXVymF6tteSO9iP7Jms?=
 =?us-ascii?Q?XhL61hrDYBci1M3d+COaqtALWn2TpbEsRNLzCc1DVAqU14IGaBOHSlGzs3s7?=
 =?us-ascii?Q?JMVJ6u+8J6QBhTQbgiE/ZwwXh8B/QE+DcAOAM3RwwJtC9CNyY25cvGV7WEtr?=
 =?us-ascii?Q?gRc0XtLCaffLazL6W5lfuun67pJCxu2RrCG0tL6IjmmU5encAxxwNgQUJPxn?=
 =?us-ascii?Q?rYXNF/6JNq6k+pq1cgWYVXW0XFezY283TM+yXjbl/rSm3zrozPP+fr3qTn1D?=
 =?us-ascii?Q?VL3TqyALNdD2qeYhylbMkhGbWKhh2VnOFGIfE/P3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 747e1446-43f8-4a56-e5ea-08dc656c201c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 21:10:24.9345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5T83NrQ3zES/EpkCbqa1xtUsjZO+2mnAxpGmOJh4TzZCYiYl8JI7/rkJOIA6jmxw4KaQHnvxG3Z1BZHLgmG/eIkU/1iVB9Ru485/5ZObayE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8327
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

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Monday, April 22, 2024 1:29 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; Harrison, John C <john.c.harrison@intel.com>; chris.p.wi=
lson@linux.intel.com; andi.shyti@linux.intel.com; Das, Nirmoy <nirmoy.das@i=
ntel.com>
Subject: Re: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
>=20
> On Fri, 19 Apr 2024, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > In the case where lmem_size < dsm_base, hardware is reporting that
> > stolen lmem is unusable.  In this case, instead of throwing a warning,
> > we can continue execution as normal by disabling stolen LMEM support.
> > For example, this change will allow the following error report from
> > ATS-M to no longer apply:
> >
> > <6> [144.859887] pcieport 0000:4b:00.0: bridge window [mem 0xb1000000-0=
xb11fffff]
> > <6> [144.859900] pcieport 0000:4b:00.0: bridge window [mem 0x3bbc000000=
00-0x3bbc17ffffff 64bit pref]
> > <6> [144.859917] pcieport 0000:4c:01.0: PCI bridge to [bus 4d-4e]
> > <6> [144.859932] pcieport 0000:4c:01.0: bridge window [mem 0xb1000000-0=
xb11fffff]
> > <6> [144.859945] pcieport 0000:4c:01.0: bridge window [mem 0x3bbc000000=
00-0x3bbc17ffffff 64bit pref]
> > <6> [144.859984] i915 0000:4d:00.0: [drm] BAR2 resized to 256M
> > <6> [144.860640] i915 0000:4d:00.0: [drm] Using a reduced BAR size of 2=
56MiB. Consider enabling 'Resizable BAR' or similar, if available in the BI=
OS.
> > <4> [144.860719] -----------[ cut here ]-----------
> > <4> [144.860727] WARNING: CPU: 17 PID: 1815 at drivers/gpu/drm/i915/gem=
/i915_gem_stolen.c:939 i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
> > <4> [144.861430] Modules linked in: i915 snd_intel_dspcfg snd_hda_codec=
 snd_hwdep snd_hda_core snd_pcm vgem drm_shmem_helper prime_numbers i2c_alg=
o_bit ttm video drm_display_helper drm_buddy fuse x86_pkg_temp_thermal core=
temp kvm_intel kvm ixgbe mdio irqbypass ptp crct10dif_pclmul crc32_pclmul g=
hash_clmulni_intel pps_core i2c_i801 mei_me i2c_smbus mei wmi acpi_power_me=
ter [last unloaded: i915]
> > <4> [144.861611] CPU: 17 PID: 1815 Comm: i915_module_loa Tainted: G U 6=
.8.0-rc5-drmtip_1515-g78f49af27723+ #1
> > <4> [144.861624] Hardware name: Intel Corporation WHITLEY/WHITLEY, BIOS=
 SE5C6200.86B.0020.P41.2109300305 09/30/2021
> > <4> [144.861632] RIP: 0010:i915_gem_stolen_lmem_setup+0x38c/0x430 [i915=
]
> > <4> [144.862287] Code: ff 41 c1 e4 05 e9 ac fe ff ff 4d 63 e4 48 89 ef =
48 85 ed 74 04 48 8b 7d 08 48 c7 c6 10 a3 7b a0 e8 e9 90 43 e1 e9 ee fd ff =
ff <0f> 0b 49 c7 c4 ed ff ff ff e9 e0 fd ff ff 0f b7 d2 48 c7 c6 00 d9
> > <4> [144.862299] RSP: 0018:ffffc90005607980 EFLAGS: 00010207
> > <4> [144.862315] RAX: fffffffffff00000 RBX: 0000000000000003 RCX: 00000=
00000000000
> >
> > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/10833
> >
>=20
> No blank lines between trailers please.
>=20
> BR,
> Jani.

Fixed in latest revision.  Thank you for the revision notes.
-Jonathan Cavitt

>=20
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_stolen.c
> > index ad6dd7f3259bc..efa632a9e61c6 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > @@ -936,8 +936,12 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private=
 *i915, u16 type,
> >  	} else {
> >  		/* Use DSM base address instead for stolen memory */
> >  		dsm_base =3D intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_=
MASK;
> > -		if (WARN_ON(lmem_size < dsm_base))
> > +		if (lmem_size < dsm_base) {
> > +			drm_dbg(&i915->drm,
> > +				"Disabling stolen memory support due to OOB placement: lmem_size =
=3D %lli vs dsm_base =3D %lli\n",
> > +				lmem_size, dsm_base);
> >  			return ERR_PTR(-ENODEV);
> > +		}
> >  		dsm_size =3D ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> >  	}
>=20
> --=20
> Jani Nikula, Intel
>=20
