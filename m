Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5EAE03D9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DAA10EA08;
	Thu, 19 Jun 2025 11:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIHorXI5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D496610E9FA;
 Thu, 19 Jun 2025 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750332986; x=1781868986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nOaQZaZdwVtjjTM/lSjxgWMJzj9YOEAak9UxKSqcO2w=;
 b=IIHorXI5zM4RXQ/oyORAaYMkS3PA4KbLCF11iVSAUxAORabc878vSFM4
 iB5x7AxVA6v4TXocv0CkYQpbjUebaEkpFSpYyrXNtdqY0NcvOMm0e2cNd
 wdF2yuuo9g9eqVZXCdZEU5hsbonob7MHtXrz/EVYtmeG9a1k9cAPz/17g
 L7l0PEnpGUI/+n7wV34ZmeZE6cnhhWvp+HDBciLOclipG0VU74qWjGSXI
 Obwye9qGF46Kjv0GxSdkr3nXLqhZc3ANPcG82v0Pm3hgqi4Ui/TEL7PnS
 TOEC8bnbqCSrvr2e1JQulU2zTcOZJ/CzuJuNn1jFNdlTaWZ2G/bqAyMCf A==;
X-CSE-ConnectionGUID: 179gosLLRLK4vUvbAEYn0Q==
X-CSE-MsgGUID: twHNqdhORGqnWFbOlH4ZmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="51815366"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="51815366"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:36:26 -0700
X-CSE-ConnectionGUID: /uQYjJg0RhC1JoF9boSXYw==
X-CSE-MsgGUID: YSdqDrh4SGG6fJIwKy6EEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="151315040"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:36:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:36:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 04:36:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:36:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zUdHwvWqxc5wzJFykHKo3EqL1lI/KhS6pWFsU8Ogf6hW7nud2gHkeSwY9FHrpL/CjQ7gz4b8OYJZDzxt76oczfIq/SypektXQNm+QQitjVpQKtoMtlrX16IFpH+g18+dBGgLwx8wtgMGq/+PG6W4NdymexsXjLhDzP49hRqMpp0CRrcpItupS6OFyeWjZ6ugfnm872CJ5dlg1dqFSotTsghaOtRACRIvAwhVqUexQhEK+6hNv5zL+B9GPsdlyWsomPuuSpdWSsKIhBacOebxfEXNbnoQ2PH3wVylf76TSWyIi1qAt1QfyIdbuzTt6c6MDuModyup2N93BRjSEx54PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUEEmz0FGDqpaGi2BMcSMIF4xJAF7oIgztAUyFe1NUU=;
 b=PvPRGkvVKphrXVXK2Wq8YfD7NAa6fQtFjbb1+gqDLCihCMHHIu2lfW72fvXdFnlM1UAmJWmPRJvFZ47IEwGunCv+pQT4BHUtb8IWDyNCcLY/Mz5u0sTN1VgOfSUToVriYZxTZNiALmbzuIr4xs+92DunwilSG05STXRYBEuCz7bfJdUhiNIAQ2aok8Jj13r1++EhzUgPD6N3nglkzxlmUv8whZTJwudDPoWolsYyPDNwf8ugsGmHauRwLX9xUzlEErcMh0DDhf5fPgVwMzy2XfLTUKXtDDov7JHP6Y6ypn4ySu+k600N8wofsDNPA/DopD1MElj9uRwa/iCKXCWtNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB8096.namprd11.prod.outlook.com
 (2603:10b6:610:155::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Thu, 19 Jun
 2025 11:36:03 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.020; Thu, 19 Jun 2025
 11:36:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
Thread-Index: AQHb4QTydEF4Lrksmk+4wHg3NgCgoLQKUEmAgAAKO8A=
Date: Thu, 19 Jun 2025 11:36:03 +0000
Message-ID: <DM3PPF208195D8DA840B1625349B1F027F2E37DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250619102804.3377807-1-suraj.kandpal@intel.com>
 <20250619102804.3377807-2-suraj.kandpal@intel.com>
 <c8af491ced7eba64ffcd7ad84d260948f3fd0f01@intel.com>
In-Reply-To: <c8af491ced7eba64ffcd7ad84d260948f3fd0f01@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB8096:EE_
x-ms-office365-filtering-correlation-id: 01030f80-eec0-41c0-392a-08ddaf2578d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?A3b7oRnHfm6I5C0dYb5EHohDHTHqfWedQwmyiUocxqtUObIYdVIJARpgqtcX?=
 =?us-ascii?Q?ZUt0JFlucvwDm0mWabBB403VJugraO4VZ31p2K4phZ7LvhStFUA/hKTgAFHH?=
 =?us-ascii?Q?kqeq5KWEqpIHJl7SBqAtjN1HciHpUwM9otiEkH9I4yJQMH7Q1gv4y/VsWcuB?=
 =?us-ascii?Q?a9T2zzY5fNQ+GhCZ7XsFnpWyEhKKLZ9uIpW5Xp3mk+pzcBv7XgZYp1UHXRYa?=
 =?us-ascii?Q?NzgIc2RGV5OY8RFWka5RJDXmc/O5dQgTojtuIA4ZIIEFApgYNzz4nVM+W6Wc?=
 =?us-ascii?Q?g98OxiAXl3X1oiNSqvIcf1Tc0bjOSQecnETIAdN2YHmkHcO/2yevRGlQo8WM?=
 =?us-ascii?Q?sV4NnR8NzAvnBL2EoAto8Z6MuGMSYzuZ6vChB+ecH7aAByv43tvfjBZJ4PKJ?=
 =?us-ascii?Q?eNDMgH/nM9JxsxZ3G2FEhDmoVGUJu+5qfMNN5f/Qk9JKRw7kI/vlEnE7n7Rb?=
 =?us-ascii?Q?u4YwqbMgXDZcsP83o+GGpgdzfvTkoH8xnyFqrIGLXzzSRNxqEPhcJDIhIiPh?=
 =?us-ascii?Q?ERE0pHaeXM44BsDDYvDTgFAKWGZne6NZSNDwwYBG6akj/uNMfNDb9y66MfB2?=
 =?us-ascii?Q?IPrDB3jTcUWjoWpk2pN2/jKtxxyPTjA0XzwP0HZsL3iBoiQKZXr3sYhQWQPN?=
 =?us-ascii?Q?SLFOX56uxLdBoDDkat+ZZWzDkO2IaPhLDbG/8HBdWEk6FQ3S9deeEy+X+Q6U?=
 =?us-ascii?Q?/0RJfwTTf5I0IvZoqvN5OvqBiuCgHA84fGf/sLlLtLetR+N+BY/HzUVhw0PN?=
 =?us-ascii?Q?9JBAXP0hlpgNwvO/l4ff9i9XPi8/EiZfdYw0FN3iO744rJoPIsO3WruBiELc?=
 =?us-ascii?Q?b7qFldhV1DHn6AoDabGap7JdF7sr49Gzjk/NQvVLlEtLu/bG5bUFTbM/vkha?=
 =?us-ascii?Q?DkuwBgjM9oQFSThp3pZjJJWiQM83w5zCdav+qcRs7NEe5TMN6gqJHYG9DRV8?=
 =?us-ascii?Q?RrNSQOOoKXG0Jjk14oVdrwrWFO68yG5ID0zViyO6KADfXRX27ZCDxRGBhjlN?=
 =?us-ascii?Q?5GZ8GkBZNiW1NSmpnHmG2MOE2qVsWDRsyG3Zt8HDQgG+kZk0Zd+fDtxl4r2a?=
 =?us-ascii?Q?jdTyls/tiSe+3/Oq8cxo2nC/WXamM7xzzPezdo/ojbTdItcVNUssECB2LY/E?=
 =?us-ascii?Q?IQFxZaF2nYeHfGvI7k5l1MhQKgO7XfzT8KM7I4Fm+TQxBGzTKPI0RQORTQtZ?=
 =?us-ascii?Q?vK+J6HiNzFkXz9yNxLihVgpBGI87vmZyu2+K3OHeGBrSeRrmyjkH5aPbMmuh?=
 =?us-ascii?Q?SWtOQKRwTwcnF9xkn4Cg6pWob8Zzmfq9lqCyVC5KKlKnIIBaB6YzjZTPqmP5?=
 =?us-ascii?Q?d43GP9WaRKekSE+s71P6XlyVT5kD1tg01Xrds8TdjlKde9eZFZB7JPLkNtlE?=
 =?us-ascii?Q?yqVHf0IurQtqZpCir+5eOm5SBQrp83Ovnf7AAqw53J4rcDtMa+y8naEJiI4u?=
 =?us-ascii?Q?AxOH9IgVEA7Zh5meI2D5vnJWeaYpEdpm7q9YXNYzkgGZ+UG+wwXRilRIkddN?=
 =?us-ascii?Q?TY06dBD+s0qU7G4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W7uEyRnXAmCaI4H6x69C0cbrm38UwLkJrx8hY+cUM9mx8jTmlli7BM8O2lPx?=
 =?us-ascii?Q?pgSRZPmLZlG67cMKT1Z8Q4kHUwoYlI6Hu+AKhWxDDiv6Px0zZNMPeELsTXew?=
 =?us-ascii?Q?4iDPgB7T3Msy0ZnYSVi42YyfrJ673A/HWw4tJ/SyOpzpxrZKBFg5gf8fQtrI?=
 =?us-ascii?Q?+KwcnkZXLYrzkpz6I0k9Qh8i4ngCzSKlmH7VDyahVcOv6H+5+ewNXue8UWib?=
 =?us-ascii?Q?SqF2DIgYQHgBOnPKUYXE+35IiV9M2aqWY0vb63Ap48wWbHmqwF77bTJCGnVx?=
 =?us-ascii?Q?p2HCIAZeiAYnDahOEXI5MidU4lnvv8lkKlByy3YJR5sSy5y2YMlq2bKoVfRJ?=
 =?us-ascii?Q?250r7fyNcX2TcOc/TnaNxeCspMLfdUn86p3+56hTJy0cisy4GtQuBBntekNF?=
 =?us-ascii?Q?+pQWCCkRBbIkAbn+wvLXW6J4hsNel0Hh96fYqQ/yZOZS8R+/Ms/T9gmq7iPE?=
 =?us-ascii?Q?eQahmb92wUncEnjJPAcjhf8RRb6szMmAIkwQ9IYE6gADtWIYfgG63Sv4FzUj?=
 =?us-ascii?Q?INN7Gjr0rGTPNx8wHJx3QaQ2Xk2Becf87ZsD+bdE1/G8poWsGRzMoAQbgYdd?=
 =?us-ascii?Q?I6v8bIe1VMyNRVqJIr0tJ/4ZH8WJPLHk6B34iMzelEwqX/pSSau6NbXqu4/G?=
 =?us-ascii?Q?nIJw/0IZYbcbi/41VxQQ7pGzVaBV2nhsaLEQAlz3dtcw+y5yWrzcjUei1TsR?=
 =?us-ascii?Q?kYOUXAhqHPhDU1NIZqqsTt8mbiojKO7sJApB7ULEZTAx9AOfceGJy95lEewc?=
 =?us-ascii?Q?fm1ie9j6wuQxEIZQ0Wromf9sjvBt8sELfHSLilJwP3u7JiE8EL+YJYioBm72?=
 =?us-ascii?Q?DyIf8kX7woqpbP7m5uRkrh0+JdexYpPwg9wbvXCDE49lAANtIl68p6jkGrfm?=
 =?us-ascii?Q?uaI6J3SIFvduP8jObMPPO8TYaGhxgfDExpdLiCy7uFZeiBtzRKe865F/EZpY?=
 =?us-ascii?Q?INhiIg7A67/+iY4d4+3E9FVNxY4NYXz3a/LXomTlvAY/JamBxTPonWuZlwff?=
 =?us-ascii?Q?I5O1nXPGhYGuKlVFL/dkpgzZLsRkjNRvOPjatXBauhtDPKhRDc0lRe7JSsUn?=
 =?us-ascii?Q?kogS1Dbt5gHzKcT978noWpV6OBC72x7zlxtiXYvcV2q2kaDQb6cZv4mHcCZi?=
 =?us-ascii?Q?WoZSLup9Gv+T0fy3invThNaXQ2e3zkuQCW/j8zaMPDlPW094F9FDXTsPGx9w?=
 =?us-ascii?Q?S5f8N2JzdbbA6pEyoPXxUTfnKqvEQJ6LVyLREYUTvULx8zw1K0AgrDLCIBRv?=
 =?us-ascii?Q?AEszQsT8kp2OzZsxne2si0pkN1zHCRwyB0AYnyBZ8dlO7+x6jRRw7sRRoAZY?=
 =?us-ascii?Q?w1coB3r/2zCok/rap63P7CiO3QmipOn6HAtNAV0g1hf9Xqpl4pUkHfKC7hgD?=
 =?us-ascii?Q?rkp7gbX8nDHiK4ZFFv3ZeVAYeuu+Q2qP8+7dHIdGtDuqfqm6J4czYPTEKbC9?=
 =?us-ascii?Q?F3Z2TSA/Fmza7TGWRBM/A/I3A6wEr+rLal5dj6MqBlVMwjHsqBoVJCLAusSr?=
 =?us-ascii?Q?13Gkbe6+f0HYzfeRSIiPyjO+qr3WyIsC4gHb9cq9rJwSoHEc7/9YH++t0jDg?=
 =?us-ascii?Q?lKmg6opuC9MwnKR+G2t7hhFXgKL6MFUrs5wHsfSb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01030f80-eec0-41c0-392a-08ddaf2578d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2025 11:36:03.2202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cLdmPeamjbJUSj/iBQl+iGM88lGIchiiQOaCi020QFkwbjlOIniH/4Fcv3pgk5dSAy6HT2MsesQ5fQgmUN/ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8096
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
> Sent: Thursday, June 19, 2025 4:29 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hdcp: Do not use inline intel_de_read
>=20
> On Thu, 19 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Do not use intel_de_read() inline in the WARN_ON functions.
> > While we are at it make the comparision for stream_type u8 to u8.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 7bd775fb65a0..3620f7853c8f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -805,10 +805,13 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
> >  	enum pipe pipe =3D (enum pipe)cpu_transcoder;
> >  	enum port port =3D dig_port->base.port;
> >  	int ret;
> > +	u32 val;
> > +	u8 stream_type;
> >
> > +	val =3D intel_de_read(display, HDCP2_AUTH_STREAM(display,
> cpu_transcoder, port));
> > +	stream_type =3D REG_FIELD_GET8(AUTH_STREAM_TYPE, val);
>=20
> The size in GET8 is not really about the size of the field, it's about th=
e size of
> the register/value, and how the field is defined.
>=20
> It should be REG_FIELD_GET() for 32-bit registers.
>=20
> But then should AUTH_STREAM_TYPE be defined via REG_GENMASK()?
>=20
> #define   AUTH_STREAM_TYPE_MASK		REG_GENMASK(31, 31)
>=20
> Would be more consistent:
>=20
> 	stream_type =3D REG_FIELD_GET(AUTH_STREAM_TYPE_MASK, val);
>=20
> >  	drm_WARN_ON(display->drm, enable &&
> > -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display,
> cpu_transcoder, port))
> > -		    & AUTH_STREAM_TYPE) !=3D data->streams[0].stream_type);
> > +		    stream_type =3D=3D data->streams[0].stream_type);
>=20
> Comparing it like this certainly makes much more sense, but shouldn't it
> remain !=3D instead of =3D=3D?

Right fixed these and sent a new version

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >
> >  	ret =3D intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
> >  	if (ret)
>=20
> --
> Jani Nikula, Intel
