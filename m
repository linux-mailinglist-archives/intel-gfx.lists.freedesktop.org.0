Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6AE4F5469
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 06:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E6910F1CB;
	Wed,  6 Apr 2022 04:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA98B10F1CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649220985; x=1680756985;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=47rmemtd8uOe0O10EDq6yQE9Na5mH7gqnrSWHArfD+A=;
 b=eXIXPj8jOX2vks8zRyygREN+mfXAPGPuRbIPPL7blRJ/wunl+JsGo6fM
 FGLkdDVZimbz2yB8UbRQUBfi+9MYGIPsRqHjLhxW41I55KEFkobl/CSZ8
 z78UTWEmxximoW8XNrG5V0llnDdQB2+oQHEgitRvtNhk3qYTDZd2WupfR
 472x4svVeeannSJ/WMR0f6cH+UZE3WfNctPrPugbb8Zr84CF8nIUkGsEl
 rJtZrheKkiAuZqWnpa90jxarIGLw8HJRQTvCjc0BiJwKx1oBEFE85AHdC
 EUCWSroM1SagBegQdW3GaLAK7acINmGTp8cdl1OiIljIScysqxGmEgAmd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260647181"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="260647181"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 21:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="505578915"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 05 Apr 2022 21:56:24 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 21:56:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 21:56:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 21:56:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 21:56:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KupLgnhtERr8XB/6PKyaAP6w4sHnCBe2eqXjYHJmF2MuHivCW6hyZ8KhUK1ErdmaO9tSIWrWXrEEfh6AYTaiu3hw/uczN5YhdWiAONxGtz927NLgcSGaz0Ez8tGy2RHMRChpITTNze9pEzWIh6EWWtCavv78mcrTb5qFu6JiyGNGDji9cLOaKP6S4TvIFyP2P2c0DPhhcMIbqxTGQOfYW6Isw03AdqF+HgTC8vWwaowVWBb1ELLZGHFCBnNn/HEMc3xikzto6JYpqfptaP3Oa2Y7e5qRxplLF4gOCsizCToqXkeUZ7Y+d3BLHKoUAizj6x8yiWrPSm0avN79gxEcIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJVsI3k4T1tMVXJsbKQJOqBH7lR80CqMrDZ6EieYksE=;
 b=BunooW/Z8QDSnhTBBovnnZ2uCpmHxRJosDiDioreYTfXcHXTJtUzYsu4Aks9M7A66OWcXLuAdYwe8HMzCkz4uDIOoNx58HRA9MPMljn2VYcNGBrXRnK5e2eGUAajgrZHxIdDMJHoi70zfgjHQqRo5ZXszjg0VY5kX8GwZ61heXACYGD2ARUbjxokK3VH71n/YqyHOenhKjVz/svfsCmxK7bH/Q44gyiBRZ4Hy297ad9KzjkhxLNeVSiZ9ip+A6OpwYP95guSJuylTmS6rgGUm/vcaOiZv43s354hwJ2aoCaovsIdHzYQN+xy7Ow/qUJmxb8q6IStWtGDUhYP1mcVHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by BL0PR11MB3457.namprd11.prod.outlook.com (2603:10b6:208:64::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Wed, 6 Apr
 2022 04:56:21 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::216d:6bf4:d46c:f133]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::216d:6bf4:d46c:f133%6]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 04:56:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH v2 0/3] i915 writeback private framework
Thread-Index: AQHYOdqjFsnTrO+xbkqo11xKV9eowKzicTGw
Date: Wed, 6 Apr 2022 04:56:21 +0000
Message-ID: <MWHPR11MB1741C4D939A22C182FBE34E0E3E79@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
 <20220317083929.1352468-1-suraj.kandpal@intel.com>
In-Reply-To: <20220317083929.1352468-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5392c02e-7b90-4254-c9bf-08da1789cb2b
x-ms-traffictypediagnostic: BL0PR11MB3457:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL0PR11MB3457709CDFE9BAD62A192F2FE3E79@BL0PR11MB3457.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BVUmfkAGmSgIujYJYntDGfLBNxjqkf9JstObJ8tnp+RRSXZz5cd60ciaVUoI0k2Ufv4waCHFAyON7/6ZdT8vn539qBkKgjuj+xhUS+6jpY4x4bpplBaLiqr4omw2co07DneUYWqyAB83gdf6EA0EJV4AmSCHW3fY4o8T2T3PXEbO8ismmrg3ZABOd1vsfx5tPmNPcCzeLAONk8neHXyyHVZAdYNMUeS0TKFDVKpK+eifqLiOIcf34yeKVs7QU6dPSB5CmP4s8mI9Ao/iZ5UEmz3MHRnP64slikfDcxlD77Pn6JxapNk9eu2frf1WToAd5uSNAtONdZ/IU9iH+9MonAu0ip1X1mgeosuv3JrTk8/hEqMtuCLhHDUdShT9xbxfH3oFyqDvgKo5EWepl9/EPaeZb3gy6caADKKBUyKHJZrRYs7mWzpAYIxC4VJEcsVUFVavt+kSI3oGP6b/90gC+wbXSL24UWdcWDFtmX4duf3N/LcFv8Ah9NhXXe60E/rjPyeksvpPrRs+d2tviOX6NItoV+gkazK3lDFN6222YR2A4LAe6dP9IDI3Y6oP2mShoOPO/kNiExadsKbl1wRr9Xl2/ByZhjk89vC2IDiCKCPbMPc3L5hKj9JKlfFpmhwgekPcu5cEQ3wBn7tqUZkeK23ZbJBWXg+4tAcYvA2aRRRVQr+oZTlH2JhvMkissJUgA1Jfc1koelBjUsWoZLdJGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(66946007)(76116006)(33656002)(52536014)(4326008)(66556008)(7696005)(66476007)(8676002)(38100700002)(9686003)(2906002)(122000001)(6506007)(82960400001)(5660300002)(64756008)(8936002)(66446008)(186003)(55016003)(54906003)(26005)(83380400001)(38070700005)(6916009)(86362001)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EEfaiLe8xb7ZzY+Yu/NtgUvaxs2O2e7RfrRcoVNCZm2VGm9vijZuwrMGSaHM?=
 =?us-ascii?Q?L1uXH4d4x7Wsp9vKdnBUZMT/J5hE1WBA/RSfHgE4eezZm/yQ/Cr+yOyUXthC?=
 =?us-ascii?Q?/HZC8OT2LJ+aLZA6VhLw8hiyd0aGZUM8GqxQOoABoiWvBgwWVWN/yG6Ps7Cq?=
 =?us-ascii?Q?UeR10jRu8qj8loVbiXV+S0BTfn3RTB7B9bd7iW0zTaq8cQxtFVJUrmdAxZnx?=
 =?us-ascii?Q?QWIO4mvbGJTP8H/b+/7rJ4lnyyusAFVjgxRToQWvD/1zqtCnqbuR28Sw+dkB?=
 =?us-ascii?Q?PemDjYSEK/8l8cez26iE35AOjNTcboJfvyyFU7sRrw4A7/ahj5ST0dVvZ4Oi?=
 =?us-ascii?Q?g0a7tS0/85ZICHxeFIa9AcWwFdVPtk5rdtHH0dFrEISv4MTHnvWiLoOoW0DF?=
 =?us-ascii?Q?Ya907xquTW8QX9j1qJh8A7qiNEJnBfrFMRYLICdECBEzuoRR8JgHNQbafiV0?=
 =?us-ascii?Q?u6y+VEhtynCaLNU5nhHKUowJD3zAzgkExDGWICV4Za6eO4KBek4BNMdWPXfV?=
 =?us-ascii?Q?2QcPnuGkgV9NA8YcPPnE2cgWGRxwvx2lIFr0jMxK1B/YSAKqYdm1vCubtZGq?=
 =?us-ascii?Q?3i1m0dRdn6YjvCtxG+WKXtVQFDAjBkm2XWtqNBr8kf3Q/sXS1QiHa1mQNfqe?=
 =?us-ascii?Q?HCeGMJWXgohcKA1SGuaCNVnmcJAMPKohZOfAacBze9dt2WLIcgciN5Ji9LVx?=
 =?us-ascii?Q?JYVN8+6d8ivgvC4VNHBbwnMv1ki+9ox1UWbLzse4GdmicU+Qza3+CUEZa/FT?=
 =?us-ascii?Q?nxkEj2QiDhVAjh3uwN/bTXAW+0BGYQ7U09YksTD8I4YJWiBvxI3E+Jsn2mmW?=
 =?us-ascii?Q?8CLMk84dqRLeIYYV7+eeT+ZfdcDVFvahwS4YbmEcmev7B8L7NxtA+LvQNtxt?=
 =?us-ascii?Q?QCh7eHGE91zsit0ktYO5erfRK7fJos7VLF0mvWM+DUTflEOAON8FhwXdBp6e?=
 =?us-ascii?Q?W+OHy5dnGEd2N5OCYFFMsQI0uPKZKomzi5Qx+7KXIxgFxNlprcSHWDaTg1cZ?=
 =?us-ascii?Q?wEEApxCaGg1KY+an3Is0YHs7YCTM0hTDa9594IyP/pxBhZj1d8gSs6pN+/+Z?=
 =?us-ascii?Q?O3MbB4UZyRS2L8x+dVyDRzL0HpuaYgIDyIUjsosenOyxSzW0TN7gjh7PPCGn?=
 =?us-ascii?Q?geIoecr82OLyAwv8HOU65Z8rLPZWSTlsTh/pINykh+aY8e74nFn2aM860ODb?=
 =?us-ascii?Q?JpIiAqMxQcswu/WLy3SE0OsyP4Sctk+t3KTXzSQubzLszLjRnJxaU8oVFqPM?=
 =?us-ascii?Q?gXX5csCbi50RIJuyTOD49NTvbIIYYSr/tgMsuep7Cog0LixSBDlKm8eKHpzj?=
 =?us-ascii?Q?uR4gGZk2nB2tBxyZDA2rIBchzXTIZr5++x7mf2qhC6WGiv+jqPZDavSqooXr?=
 =?us-ascii?Q?/KdXobNazCBw+YsGdkYhWfKTgKIDOBuZahljIAYcl1ju87+GGMuznvU6/RCu?=
 =?us-ascii?Q?Y/A6PEHXgRLE/QLm3QN6nB9yTjEOunrndrwOEvDKfYjhkXwr3t1jKYQaCA7a?=
 =?us-ascii?Q?QbpBqUYcnvPMIVE7xG7vrBXQSAwwIdeA1cl5yU9mZ0n4Vfw2GaRzr2kx/tV/?=
 =?us-ascii?Q?BHX+rkShSUm0YL00thOU2JgbzA/zQrYmtbu/yenIzFOsG758HX9ZrVa5n4Vo?=
 =?us-ascii?Q?jEfvKEh7LGNvuvMO04cY4mNvE6quthK53EoGqCt/OSboFtA8mD8t1JFW7H49?=
 =?us-ascii?Q?9IwTM1AC7VCiWQvIgJjRWVcm5j52LaxWyIx6FV+JcyCZQsf/Iz80bp7pSA5V?=
 =?us-ascii?Q?MjR9fAzfUg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5392c02e-7b90-4254-c9bf-08da1789cb2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 04:56:21.1543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fQ0+7j0A9dZ52rCV15nt6G+cgBTlOW1JC8DItThPeYwZAJ9BN9xVQNeRAj86fy2iWlIpXTB16CdVswl48AhKlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/3] i915 writeback private framework
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,
Gentle Reminder.
++Uma

Regards
Suraj Kandapal

> A patch series was floated in the drm mailing list which aimed to change =
the
> drm_connector and drm_encoder fields to pointer in the
> drm_connector_writeback structure, this received a huge pushback from the
> community but since i915 expects each connector present in the drm_device
> list to be a intel_connector but drm_writeback framework forces us to use=
 a
> drm_connector which is not embedded in intel_connector the current
> drm_writeback framework becomes very unfeasible to us as it would mean a
> lot of checks at a lot of places to take into account the above issue. On=
e of
> the solutions is to make our own writeback pipeline bypassing one provide=
d
> by drm which is what these patches do.
>=20
> -----
> Version 2:
> adding fixes to avoid regression in previous gen and some basic checkpatc=
h
> changes.
>=20
> Suraj Kandpal (3):
>   drm/i915: Creating writeback pipeline to bypass drm_writeback
>     framework
>   drm/i915: Define WD trancoder for i915
>   drm/i915: Enabling WD Transcoder
>=20
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  89 +-
> drivers/gpu/drm/i915/display/intel_display.h  |  15 +
>  .../drm/i915/display/intel_display_types.h    |  18 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +
>  drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>  .../gpu/drm/i915/display/intel_wb_connector.c | 296 ++++++
> .../gpu/drm/i915/display/intel_wb_connector.h |  99 ++
>  drivers/gpu/drm/i915/display/intel_wd.c       | 978 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wd.h       |  82 ++
>  drivers/gpu/drm/i915/i915_drv.h               |   5 +
>  drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 139 +++
>  15 files changed, 1742 insertions(+), 3 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_wb_connector.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
>=20
> --
> 2.35.1

