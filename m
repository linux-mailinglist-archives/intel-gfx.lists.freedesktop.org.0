Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96994A33A78
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1F310EA2F;
	Thu, 13 Feb 2025 08:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxT9Tnuv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D6910EA2F;
 Thu, 13 Feb 2025 08:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437197; x=1770973197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fXPDS6Tm3J1/M+Ak6V8Sox5Ky2+unlOXhge0xOg+5u4=;
 b=cxT9TnuvVXe36xfVNAFe+oldLu+F7rI2dlxF+YoY8MHUjOrmHHaboYO+
 QKHoMoww3WdUfjx99A2lZV+CUUDlQPDYrXkoO5Z7j/nTJG6VD5CWVNNIM
 TejoGsnxCLckQy4GjV1V6WLIEPoRThPHyG+rPbYxvSIdVhFLKlFUD/Yip
 ymhqBSh3eIo8kqMzlu5XBiC10Xxs1e5ybfjl0EeJNtS08z8f2m9NxIxKO
 Vj4zqC0oaNibyj74l9MGPkENiNjN67n1TwMiwjKLVYmMYw4Wl80HvivYG
 JRWK4mwHAl40OzA+XZArGFrT3mj7/GNN8bRsl2ekWtbxYzEklqBPn9XNp w==;
X-CSE-ConnectionGUID: kd3JqU7uSVyWoeVQG+JScA==
X-CSE-MsgGUID: S+2H58LLQRyMtroGaVGW8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40244841"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40244841"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:59:57 -0800
X-CSE-ConnectionGUID: /r5WjjD1RxSDB9c3D6G6kw==
X-CSE-MsgGUID: 6kn1VmNZT2y6pDEY2F89iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="112944030"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:59:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:59:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 00:59:55 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:59:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MJh1tEBlFrupyi9S2ZNvZN3vqCDUHS48cN866O+EjMG25uuxcAXEOG6x7u+ktn61SyDmCe7PwWJY3xzCOco6HxPJWWIHRpjvbeoxKOtQDMwrox9B4B64mTjHXEVeDLzjtUsk4S3iZQIy0Y6/wKfawvsue3hhuawSqzhYtUwbEG7FGskcWQVCeH1PtzSar9xGSVpkiJqkYrRvhhdfnexD/Uq/IQsKK2sdM6KwATmYIRGetWbsy9NLGozzkh5Py7IV7tv4kGyB1U2Bdp0fMHMk/fu8ishFoI7g2InEIhT2tNfQHMtgTKJ5H7g+SQY1Zm65fAB/xd9EqcUxtw6QHSznfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ydSTSoA+ptFLZqiAzlq8MYOtzGnLA9Mlago3R1H3ka8=;
 b=l8C2RqghleRzdaU91Yr2LeXc1q1rt9iPj5D2+NraJtVeu2ONfcLxeqlGUY6wEaJDrESH2cueHcMesAJmoCnpEn97xq2WhCG+WHSELDx5NzSJzhAIUIYZ7Eej5N3HmyBAdVgyXJJ8tJ25Cxd3xc60OuQKIXcJXaoDvv+q4LneWp9XrNJPgzQktxmLw6ezRij+mnL0lf4dlOKsp6gI3WOwnewW+WaWq/9hgVxv4rjxP36RTE5CKHbeadA2/qgdQFqne1NP8XVCjhBKeZ0SlibkQpO+22GWAfWsAOU+chvVdQUboAaTS79RcqtMkjFLnP+PlSptVdnLhyYz4/KOq9YddA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 08:59:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 08:59:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 05/14] drm/i915/display: convert assert_port_valid() to
 struct intel_display
Thread-Topic: [PATCH 05/14] drm/i915/display: convert assert_port_valid() to
 struct intel_display
Thread-Index: AQHbfWxullJbBSe4dUOMXpuDWcYs17NE8FhQ
Date: Thu, 13 Feb 2025 08:59:53 +0000
Message-ID: <SN7PR11MB67509A1D8A9795CCEED0CF22E3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <e06ef0e2cc34d42918f3208362587a17ea34e28f.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <e06ef0e2cc34d42918f3208362587a17ea34e28f.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: c5a4dd71-e54b-48d0-2e91-08dd4c0cc7cd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pdvQm7SqpXKXa/EMxqLu0M7nI1DjGhdhhVsERTYc2ZZLLX3qgW0UdLZjNZ7m?=
 =?us-ascii?Q?KeDBA2iS6lLI9t/eitwTkp04P6Prve90fM457Et/0a336MCipcR3U31Z+0a/?=
 =?us-ascii?Q?ha+zqoFqLsPqCSOiyrD6klDlrIF+IU7aBxO9ibavGF2lQvH3N70HGOf+33db?=
 =?us-ascii?Q?CItrF5pWoSMlftGk3hUuQRt8b1tJAZjUm/QrePfhi7eGobelXiuCm2+YY68C?=
 =?us-ascii?Q?vbSTZB4KPu8yWWYs5kvwxfo2BsJhzgxxyTMt9mWK+rBmatKZm4XWXEkXAMZs?=
 =?us-ascii?Q?cQkAcqC80ueiJhccJit5XZXlC6t1fN5174qxkZ6cPmUWm/SbLed/jlNl3mMb?=
 =?us-ascii?Q?9Zym1wcCdniWu7Uvf9ZU28ENt/noZ7k+CQfxn6qVnmUKATMxxD6DSVbqzG8f?=
 =?us-ascii?Q?nK2lUlyTfwc/OAxTD1Whxx78cs0D0ZMDjUhNyOCNl0YdV+G3mbZFX5AL8GAF?=
 =?us-ascii?Q?CVAFzRd7mcwY6DEUNv/8YLev4j3LRqUT1edYTeqEg28MEq8bb8mmzEZgyVW9?=
 =?us-ascii?Q?rFp5pzIzUVGb42v/bPvXGD010vCSgEJup6K8TXjsnJYno4mX+HB+43FlLziN?=
 =?us-ascii?Q?bQ64QZOmzxvxI/XW6d3m4xAG2C23Uvhn01IoJrNIVp1bBFm8NAsW/VWfNXh8?=
 =?us-ascii?Q?DiNQj1Dpw63sN/u+dFo0s1fjX2AjHRHC9kS/lWBA8MNGbFQytP0ilG8OVl8h?=
 =?us-ascii?Q?40MaOX3rmYGYeVHZkNuE0nSm9Led5xpmko2Se9MvEQb0qitdnEX9YOYxwiyp?=
 =?us-ascii?Q?bgeEElxFfNZUgsvZcE4AvuSjOa764eDfrZaZ3AE9xxjZJYOpgaTlM5gaRhl1?=
 =?us-ascii?Q?dkh9DZvU+P3rlzsXpPrn+kTiQj1yneybW53iyS7cHQ/gh2gkCtHYrL0+7eRO?=
 =?us-ascii?Q?yHZdP+tmvNW6lChbYi98gSZ3B7MwLJzSEusdzoCux8f/0+Qr8E1PyLb4UZ3b?=
 =?us-ascii?Q?PtyujrEhVUFPyDa3keUx5Pj0kfXDfLvr85rBlEOy0c848FY/Cyt5SEe0pvlz?=
 =?us-ascii?Q?/Y9+5j2Z6y4PwCE+yIfqtT1lFP2zva6dlmGg+NLVlBOL+fMkGwFiva3wMk1f?=
 =?us-ascii?Q?K8nLsukfO7CsVoUUtnesn18UudVIS8XH/KHK83HzNsMEoDV03qGIA2rg3Tsq?=
 =?us-ascii?Q?O35r3SVtEHcMQdmJff/feRM5RQRxxP5O3bgmsvnFCbs0IVuCoJHY3By3SWOy?=
 =?us-ascii?Q?h2qKU5kTFlfkze4aSLI1O2Cxi01KiYkPoJS+ml2Vup5JPse9WVadaHLqJEDM?=
 =?us-ascii?Q?b54duAcfM66G/unYyk4xrd6ptPbzkNZB6GAi278DwYwnQSPgo0/bygqtBNRZ?=
 =?us-ascii?Q?VQJF64e7iKuDwMvLfU0nP5lPtreRkEcW9Qeo6QJvjhQYO2QgghnKG6qLcabh?=
 =?us-ascii?Q?8e+aR945u2+eAlWBCDb71uw+uxuLQx6Zng8saJcv/kn8f9/Iw9EJ1ML5c3yV?=
 =?us-ascii?Q?ejun/qhHV0Twq1NEDOrGZdIdyEinXFnG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EpuEH0lOyx1WErmZIiA/eCxDD1mojqnCenHoOigYl5g/4JUXg7BVnhJxdu0X?=
 =?us-ascii?Q?FkT0H3Ilkty2rIVuJ8+OFwNUlvEFV6oFBMqyKvb1d8S+nIjRhNvlVhNqjUuO?=
 =?us-ascii?Q?AabZOKG8UJAcpbHx4csKBSDGf0giAFBlWL1aBBajPtDpmaB5BmzmHtjyL3Yl?=
 =?us-ascii?Q?XCODuJPxBPsYsfkNKmGNQdyau3RaAIvg0FW1x+vhUc7T0x936qm9B5uSfDN+?=
 =?us-ascii?Q?IgQeJD4Ms2v21R/OkPboui1rhuJcf2bREQticKE11ureyyNIT9oCWdfOjMiL?=
 =?us-ascii?Q?LS5D7sHMEregOnaPwmYpYoEKjT/asWPARgFn8wuougnFXdN9ZoAd9esbiGhG?=
 =?us-ascii?Q?ejdnwOQgyFDF+y+brxxQocqZcOvnO+iljlbRhm0tSq9WiASEicGrwPQY4Ddo?=
 =?us-ascii?Q?YIyJE02+q4r4027DqU4cHbQ7gfltMt+XH4ierZRdPsvebguqImFUO318N1ZM?=
 =?us-ascii?Q?MiYBU3F/VmgXmbiC56zui8TLtz+iOxylmNy9SGsxGKiquPXIa8QOjmQ71+BB?=
 =?us-ascii?Q?XCwXayhJsKthTgE5g0om9NyA7fQaame8GKboECDV/puuTVv5ykhMMn3cFBmS?=
 =?us-ascii?Q?yYM0o4CK+66V3rLstxFUE/3GU4+UgZTvODbjJ4RNZvgrtGNLR1kJlhaMzOfr?=
 =?us-ascii?Q?ZMJUq6y2kgS7hataPr20UtzpXzE3OrUquFO/ooCE1qWu0IFmU/KVwjWVH7sx?=
 =?us-ascii?Q?hKVTW+th83r7Fo4N/J52HAERuDRjugE0wRigwlwxR4HNLSL+iLLJ65nLrLLy?=
 =?us-ascii?Q?2XAQ6E1wKg4tITR0dLELkgB7VMgUYe7DmT45JYkZA8Q7FjZMsfowHoD8Mi2R?=
 =?us-ascii?Q?o3qhtqa9ic3aRAGGmhO9XjztlkwhLfE0CRubRhADSSBnJw36R+EDMAV+FzM7?=
 =?us-ascii?Q?KYLSE4Cfd/d7oRlb61iIawAsoCR+cmRUiIJTstL14QWaEeNiSRZzrfauJHz5?=
 =?us-ascii?Q?yuVm9Mgi9VkHZFbtsVrP6J13DUCyMpQl+EU5k1gGU3r79f7cXZh/7Sl/MzH6?=
 =?us-ascii?Q?DWwszuolAzfSclXOPi5leRJdKshkti6hdeVLccB1Whg+EFkCxSWYsky/sA7r?=
 =?us-ascii?Q?HtFKfJx4fd4A8ft7tgJIBWlRnGyABuEBwLjekOX2+LY29m8ebJGKDUbBH+Sc?=
 =?us-ascii?Q?XE1cceBWflWnMGWF+dN8wIipOgv9jhX3tzSXCLnMVLaTfzd/Nf0jI275YJhU?=
 =?us-ascii?Q?fU7rTGqXwn5XLbcJ1o7uEfwjbzy4TrVYcnxWrF4GrMBbhqjjJ//JMLwfkZip?=
 =?us-ascii?Q?Fkcnga/Ft8mT0NAOPGGz2mfyaQOEHC3XBtVtqwGnI6UKm7HUchuJk2kZbCg0?=
 =?us-ascii?Q?wE4HEYXYAR7sJjZoBWShD56SlrgFugguvY40zOw/Q5pop6rgvbhpitQXzCyq?=
 =?us-ascii?Q?kJLlMmKRqqK/3KBAJR+FPNa8saruF1oCpqFhH6AzTVskd9GI3xZkM0Kxgktc?=
 =?us-ascii?Q?et/nLOMirffvFilkvFPuLi5aOpv2N0T7pUi9tdkse7wCxqimsaA/6oq/Cg7P?=
 =?us-ascii?Q?auQJRsNv7FXQf7wTVodSmrx6PMo4qDtw5uBfl/7wWYSWNdBqQd9tAs4Zv/f9?=
 =?us-ascii?Q?/5zXZOstLyn5wJ5ZhkItdPiTx4/GIQa+IP0vUwhP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5a4dd71-e54b-48d0-2e91-08dd4c0cc7cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:59:53.1819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lq4cciBRhezroj436IowD3be1eFMS5DH2ptpgC3qDZgU7QfueDxevLv9KuvVokTbii9hDxdvehD/nj/cme7SWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 05/14] drm/i915/display: convert assert_port_valid() to
> struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert the assert_port_valid() helper to struct intel_display, allowing
> further conversions elsewhere.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        | 2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
> drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 ++-
>  8 files changed, 10 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index f50ab9a3f3e9..b6cb5c74a32e 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1286,7 +1286,7 @@ bool g4x_dp_init(struct intel_display *display,
>  	struct drm_encoder *encoder;
>  	struct intel_connector *intel_connector;
>=20
> -	if (!assert_port_valid(dev_priv, port))
> +	if (!assert_port_valid(display, port))
>  		return false;
>=20
>  	devdata =3D intel_bios_encoder_data_lookup(display, port); diff --git
> a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 6670cf101b9a..5b2df1014c10 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -691,7 +691,7 @@ bool g4x_hdmi_init(struct intel_display *display,
>  	struct intel_encoder *intel_encoder;
>  	struct intel_connector *intel_connector;
>=20
> -	if (!assert_port_valid(dev_priv, port))
> +	if (!assert_port_valid(display, port))
>  		return false;
>=20
>  	if (!assert_hdmi_port_valid(display, port)) diff --git
> a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index aa46c14ce225..396846025922 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -1099,7 +1099,7 @@ void intel_crt_init(struct intel_display *display)
>  	connector->base.polled =3D connector->polled;
>=20
>  	if (HAS_DDI(display)) {
> -		assert_port_valid(dev_priv, PORT_E);
> +		assert_port_valid(display, PORT_E);
>=20
>  		crt->base.port =3D PORT_E;
>  		crt->base.get_config =3D hsw_crt_get_config; diff --git
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 2c05742d8fd1..ab382adaba56 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5132,7 +5132,7 @@ void intel_ddi_init(struct intel_display *display,
>  		return;
>  	}
>=20
> -	if (!assert_port_valid(dev_priv, port))
> +	if (!assert_port_valid(display, port))
>  		return;
>=20
>  	if (port_in_use(dev_priv, port)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a95564b499ea..2a8f53f06463 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8188,9 +8188,9 @@ static bool intel_ddi_crt_present(struct
> drm_i915_private *dev_priv)
>  	return true;
>  }
>=20
> -bool assert_port_valid(struct drm_i915_private *i915, enum port port)
> +bool assert_port_valid(struct intel_display *display, enum port port)
>  {
> -	return !drm_WARN(&i915->drm, !(DISPLAY_RUNTIME_INFO(i915)-
> >port_mask & BIT(port)),
> +	return !drm_WARN(display->drm,
> +!(DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
>  			 "Platform does not support port %c\n",
> port_name(port));  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 503e2ea1d029..9439da737f5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -579,7 +579,7 @@ void assert_transcoder(struct intel_display *display,
> #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
> #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
>=20
> -bool assert_port_valid(struct drm_i915_private *i915, enum port port);
> +bool assert_port_valid(struct intel_display *display, enum port port);
>=20
>  /*
>   * Use INTEL_DISPLAY_STATE_WARN(x) (rather than WARN() and
> WARN_ON()) for hw diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> b/drivers/gpu/drm/i915/display/intel_dvo.c
> index c310698a1a86..29f8788fb26a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -524,7 +524,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
>  		return;
>  	}
>=20
> -	assert_port_valid(i915, intel_dvo->dev.port);
> +	assert_port_valid(display, intel_dvo->dev.port);
>=20
>  	encoder->type =3D INTEL_OUTPUT_DVO;
>  	encoder->power_domain =3D POWER_DOMAIN_PORT_OTHER; diff --git
> a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 6ebd099d8861..0c3aa2e7b78b 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -3386,11 +3386,12 @@ static bool assert_sdvo_port_valid(struct
> drm_i915_private *dev_priv,  bool intel_sdvo_init(struct drm_i915_private
> *dev_priv,
>  		     i915_reg_t sdvo_reg, enum port port)  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_encoder *intel_encoder;
>  	struct intel_sdvo *intel_sdvo;
>  	int i;
>=20
> -	if (!assert_port_valid(dev_priv, port))
> +	if (!assert_port_valid(display, port))
>  		return false;
>=20
>  	if (!assert_sdvo_port_valid(dev_priv, port))
> --
> 2.39.5

