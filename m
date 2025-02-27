Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50A1A47AA7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AB310E30E;
	Thu, 27 Feb 2025 10:46:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcTU/e+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0AA710E30E;
 Thu, 27 Feb 2025 10:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740653167; x=1772189167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ONpeHL9WJ9brmGZF/Nx8P9Uoas/5/0DbPylB/URQmM=;
 b=dcTU/e+XRrJDNN4GSgX17VoTaFvVXIahbmLB77w8M6grHUhuXEDvd+C3
 2SK6DOuagU8kQa+5b9/bxa/AYnqbTkgnGzNNl5NuNlCR8biDxIquzx32U
 AwjmS5pM7xwg1+7GD8ATpJByLYhqbvlvjVLVPTWX27V3zxhLGzDFs/gOL
 bF+fLi0elTYyt9sSyEpoGlh8Rn2uRr2ODgyAUrvU9kdzTxPvOg8eX5g+d
 rGbYfb0FVPcF/dvWs7FbLDvB0O7B2idd2GggHGBWi0pD+IFRZOaU6qQai
 E4zQCes6Bf2DRoHf/iBnIGEJ1GYVvM6j0o6gshAVCG3LCFis8jkYeaKft g==;
X-CSE-ConnectionGUID: 7+4yHrIcRXOkmMdPpz2WPw==
X-CSE-MsgGUID: hcta+ul+TQ+LIcuT0FA33g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41663318"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41663318"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:46:07 -0800
X-CSE-ConnectionGUID: vYL8EvOZRMClsVCDcgXN/A==
X-CSE-MsgGUID: 4paYzhl5SNq7hKRhOlvQFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122234954"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:46:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:46:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:46:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:46:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auF2cN4X0LJK1VXnB6RGoOyuIWhbynb8dD2ICsZh4qzrZ49Q5F4k2ol0hER5ayBcg1TLIToQMMXtABCb40i7way9qv0JfTljx8SpJNQJK23vSdAggn68q9DPVA8WtWh1gPGh8r2AdeyuKQA1TVc0EzT/zJrXRQRZd805uh9zUw4bMP/gX0/tDKQNSAZ1hVuK7k3R+6YHVnFsG9KngBJkIcTsn0Jof5pszUUl1tETf7ruqtMl8HYqr3I6xIioXIb11/DC3tdjriL/HbJYStZd3GQvSd0CQjDHBm9wlvX9yy9z06ZnRrjGKD2B0354zrDIs++lnu1l7eas4nyp1YbdVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpjV5IkiwnH7Za9tPckltifbnu2FSYWKxYH1/s8fwjo=;
 b=hDuaw0ALspme2QZyZNA1AlH02VMU9umSwub38GS52GetmBl2e48oQ4IF4nuCrcCpNJdRgg5xz0lSPLjDrAxlWuMY6J/0m2MSpBLVwUwZkyMy5JPs54W6yAhPf1/9E7PiPkhVy2ETUj8nWuj80Gw7h2Pl6H8PfX3U7WKwArc5N9K2WqV6yMssMns44MNr0QIE4XbKTVsqX81fLQZSPm7n+oK+1Tr9FEZ7PB0AqL+ObEeGbnZ4GhpjIA15BMRTLxpqauhCXhmptAjk1/JrRGudWAEGi9t7ohWLQNiU/xe32KXKQ8eJ+6TFEs9C2XjgVmfI1SYR7M1TlVt44RC/kIUeoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB5893.namprd11.prod.outlook.com (2603:10b6:a03:429::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Thu, 27 Feb
 2025 10:45:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 10:45:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Tseng, William" <william.tseng@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Thread-Topic: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Thread-Index: AQHbiP1+iB8hwvpdU06YlELqDKsL0rNa9qeAgAAAnJA=
Date: Thu, 27 Feb 2025 10:45:35 +0000
Message-ID: <SN7PR11MB675092F4F51D5413A6DA1B0DE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250227095337.263091-1-suraj.kandpal@intel.com>
 <87v7sv3bz6.fsf@intel.com>
In-Reply-To: <87v7sv3bz6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB5893:EE_
x-ms-office365-filtering-correlation-id: 2676ef44-24cc-4b17-f3e0-08dd571bddb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zQfi/dpKLR8+YdoqKing4DYIMna4koicZNZp6aoQzFZdvcgJ9AxpukDF/E3q?=
 =?us-ascii?Q?AwbNk8sLLBzNmDN9epdEZiP6wQMU1V0VPiBMbrnPGpx4Ic3C1yo3qXzk7rwd?=
 =?us-ascii?Q?At+ib1oyVi8ZMmuPuPhLo6vukXjfej6M99ZXvmfUwFHgdwjosaJ2wOGplaKa?=
 =?us-ascii?Q?RSY+o7lDtjI7S4Qmt6yMNAlZtb3Nu1k8yE4wpft6ZfImDCR7j0dyWl95wZrQ?=
 =?us-ascii?Q?Rbq9rWA26qFExQRPVDcv8+vfqt+UAGZybU9S0Vl4IQpr2EfTM4vzfFTNMn3d?=
 =?us-ascii?Q?iXvZXkpHQvQq11LDHig/mJgTlWz1/g8+0DMVZl+XgkMvz5DndGKJAutPeocA?=
 =?us-ascii?Q?f9mgLtcJ8cn4H7BV8v796FGDF8rDOSHlHe4mFuXpTPc69vvr6eU4B1DpjH7R?=
 =?us-ascii?Q?d0FCQ4QTMyCTUZyxGWvV6r69+eG1yRWghP6i6l232F8raiIebDVGAOgzZ1Sw?=
 =?us-ascii?Q?Xl44HSGmbyC8H9E2OeYyjySx4OzMVGWWaJePTOKEARVO+zybueaT97N7INBS?=
 =?us-ascii?Q?vSaxfrTCCCr8atbuWb4bjNJVoAvEXtcY3Jigcr7xTSTBlHjPJ64FW4FBSv2Q?=
 =?us-ascii?Q?uNKoAB+r+vOfvUJ+G6e+UhHsKt8yFv49nZFo9CFmLjRaOQhw6EJa23h6wRHW?=
 =?us-ascii?Q?5Nf48bguhOdipieQQLLlDcQ8DzHYXgvkauf82PyZUGtnoXAZCY7F6o1vFa2+?=
 =?us-ascii?Q?n5VTkWcpMQKeN3bOUVGTbZosySm8UQKxZivWBUSBnLWJBaLChcDWKYZWnWW5?=
 =?us-ascii?Q?+i/KhwsPFj9NjgAHYWgD9tHQzb1hca31N9AWDDOE1sJIUvauU5MUHYDb+XkS?=
 =?us-ascii?Q?rAgE1sFWOEEuJmijw2vCLVBznZ2aPP5zArH74B2o+vyRFJba9k+2Sd4+QcyQ?=
 =?us-ascii?Q?oCJ7AynY4YMNHph5fsVpk1OLuxM9P7GpEQg1QV7WF3dGH5wI9+DNsWcsB6rK?=
 =?us-ascii?Q?yk+YTmMVeaQZdnltGjOSMHNJXwqo9xFMmc6k0n1yedEq2U03qq4akSwyoHIq?=
 =?us-ascii?Q?m/a7r6J8Pw6KXcfRDWRiR4yn+ZWF687UoKSTZw2sXakSDWnN/ZafYNJMRjke?=
 =?us-ascii?Q?ELDAbc+ZW2h7yPukqcDCexdz5BLdNoU27tGNw6c/GFKADPr/xZ1AP9ig/qNu?=
 =?us-ascii?Q?jjdZI8TAxIlOgR7glGl9xj9MMtMXohcHxELvYuUfWwxDBYFyuZTbmvNN/Vm5?=
 =?us-ascii?Q?sq66Cr13Kze9fld/i9jWLck3tWhQ5b30GvfE0R0FL9EJLsMKo3W4l/+7jfQk?=
 =?us-ascii?Q?o9ETUWV9JtOztUP723voUgNgfm4/fZ3HE+tgI/GtTB/eYtJOU0lb+Sp9P6JN?=
 =?us-ascii?Q?0aS0+yKttYLsON2TRiwW7sknayWeICJ+BfEiR4zQmibZQq1LpOM+S+0oihhV?=
 =?us-ascii?Q?UUwQuNSLfMZo+4LjNKdeI+A2MUNK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cYda/FPZx/khEkhgYmwV1XSP1I0v4pHtu9PrU/2GMg7htmLMjIOoH6GVE9qt?=
 =?us-ascii?Q?lJMI+A690eUWn3zwfm6QW5EWrTfwI71uAyXWIp5zGODdBFBCnn2WdsHGNGO1?=
 =?us-ascii?Q?4ZTOLaBJ/n9NmINvPtF/gNOb/pqCQxRqLcCBX6m4lep/832DDB/dNBPHdzeD?=
 =?us-ascii?Q?ThrLBEaSWQcj61/28GZKrqhjZnWXS4eo02h8VjxZ3IkZy28pTeZKZLrzS3yM?=
 =?us-ascii?Q?Ad616UJ7q+oBFoZed+2fwyxq7twEB/8D5RUUNktLZCrVUsEtuH6NIRn7Al4H?=
 =?us-ascii?Q?LK/7XNznkNK0se4bxV2xIgrXy66to3N1QoDniuag0W6ppHTV23HkTs+SRNEV?=
 =?us-ascii?Q?6HXKo1+9MzgnOS25MSy/tT8teHFBuqxwOiIS+dxQJscKDYr2gMkW9u2uyUac?=
 =?us-ascii?Q?SYoAUpljwXrR9fFoUKElTZ/oTeK2+xIl3MdTnmCOC2Q1H0rfTCXjkH0kG7AP?=
 =?us-ascii?Q?p1OzGV6taXZ3PP7dIWJcwPZv65e+qKKHeJyI45x9sntmAaU1cUfFhbWvKTzm?=
 =?us-ascii?Q?N+bqKXEMSaWrNpQuQUXQZBkBURHo/d4lCF2iFE0fUR6phQ+FqF47RV9yfvYO?=
 =?us-ascii?Q?1Wbdp1KpZBtfjuy3Uw0XdtF+DBObqVQKHgrEqgNq5NNMfwQ438L0ebwAfca9?=
 =?us-ascii?Q?+eTo53lHs0DoFPbZphZPkL9pLeeZaTM1KU+d17J7GxnlsBp/XcpzSoIpn5r2?=
 =?us-ascii?Q?DK6xzpS7eXusbI5LcW5z+C6WgGlr3Np6zI5jaAkctWPzHS8M6AY5YpdhFL6B?=
 =?us-ascii?Q?Vsbo2JqyUS9QvcJyULHauyifkFabjKeX//4wF1IJH9FmVy/Sq4E7XxAMR9eo?=
 =?us-ascii?Q?GWMtUJUaeS9eXiMxm/rRZuXKfqcEb5+LkQSlJrn+AhY+d0zY1b1fVcoOKglW?=
 =?us-ascii?Q?1RVuosV2IdupkdQeVzEw13B9gzSPvMaPf/xZv+Rg6vgaYzaXfdakpvrrvNMI?=
 =?us-ascii?Q?u1ON+KUxW6wSJh9+t+4okyihEUfCem9TBgcb3U18YsdA5KK3ZMCycGheDNEg?=
 =?us-ascii?Q?I+uWKjiF0FpIF6zaEqiLuvNBBPXZVCojLEKiwixQvaOlHRKNyK+m6OsSXQra?=
 =?us-ascii?Q?4lo2sDJq3VneS0Qx3J0XSeVhOJPlAW5f16ofQf8+lRMq3dOsql/U4JvPuIJe?=
 =?us-ascii?Q?c9Q23K/znsp/e6+F3MJqSExXZvWo5d8O2EBvM1M3UF4knPEx7x5sVB3kAeoZ?=
 =?us-ascii?Q?wfmBR3otP/ozWVeVgpgu2cYrF+Ci8q2lhHakMgz39e1crKOYDJ9l9EFD6nSU?=
 =?us-ascii?Q?N5O/Q49ssIU61SiOQjvbzILg5oxvFnmyTVl03otwKGAMkH/ZYcSXafThR2hb?=
 =?us-ascii?Q?r513RYewJzfTyAoCAl7bfQWCntoVVp/UvHLWc4/PvnkWERU+eyV9051FaJON?=
 =?us-ascii?Q?kpGeiRCgg+60XNVnDUi8h9WOYkDYV6PlpzBUo7L9bbduB3iKTgSMeGjjvrtr?=
 =?us-ascii?Q?I71wNaTJGGR2F2lkRV414aF7hY9P2+TGdqcQA0VL+h0f1/ZWx/FhLqtVYL5p?=
 =?us-ascii?Q?sqvdz9Iy04wGZpjqx64dx3gsKQDAGa5YAQdvINhfiKzvzs9nEP8iVM1RmnI+?=
 =?us-ascii?Q?pABUu663kQVGfEYukXh/40da3f7xnnFp2WySEFv1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2676ef44-24cc-4b17-f3e0-08dd571bddb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 10:45:35.1244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zB4LTONi4fHoxXaPxnFgiCdySoaea3d6/QkglLKf35VT4vWK8zZDCMYA73vka49AHXvA/fjoJXJNPrOVkEJS7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5893
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, February 27, 2025 4:13 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Tseng, William <william.tseng@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI pan=
els
>=20
> On Thu, 27 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Some DSI panel vendors end up hardcoding PPS params because of which
> > it does not listen to the params sent from the source. We use the
> > default config tables for DSI panels when using DSC 1.1 rather than
> > calculate our own rc parameters.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    | 2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 3 ++-
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 7 +++++--
> > drivers/gpu/drm/i915/display/intel_vdsc.h | 3 ++-
> >  4 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 5d3d54922d62..9022692c86ef 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1607,7 +1607,7 @@ static int gen11_dsi_dsc_compute_config(struct
> > intel_encoder *encoder,
> >
> >  	vdsc_cfg->pic_height =3D crtc_state->hw.adjusted_mode.crtc_vdisplay;
> >
> > -	ret =3D intel_dsc_compute_params(crtc_state);
> > +	ret =3D intel_dsc_compute_params(crtc_state, encoder);
> >  	if (ret)
> >  		return ret;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 03ca2e02ab02..14a8cdcd1762 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1856,6 +1856,7 @@ static int intel_dp_dsc_compute_params(const
> > struct intel_connector *connector,  {
> >  	struct intel_display *display =3D to_intel_display(connector);
> >  	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > +	struct intel_encoder *encoder =3D connector->encoder;
> >  	int ret;
> >
> >  	/*
> > @@ -1869,7 +1870,7 @@ static int intel_dp_dsc_compute_params(const
> > struct intel_connector *connector,
> >
> >  	vdsc_cfg->slice_height =3D
> > intel_dp_get_slice_height(vdsc_cfg->pic_height);
> >
> > -	ret =3D intel_dsc_compute_params(crtc_state);
> > +	ret =3D intel_dsc_compute_params(crtc_state, encoder);
> >  	if (ret)
> >  		return ret;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 6e7151346382..fd8602c1fa7d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -260,7 +260,8 @@ static int intel_dsc_slice_dimensions_valid(struct
> intel_crtc_state *pipe_config
> >  	return 0;
> >  }
> >
> > -int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
> > +int intel_dsc_compute_params(struct intel_crtc_state *pipe_config,
> > +			     struct intel_encoder *encoder)
> >  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@
> > -320,7 +321,9 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 13 &&
> > +	    (vdsc_cfg->dsc_version_minor !=3D 1 ||
> > +	     encoder->type !=3D INTEL_OUTPUT_DSI)) {
>=20
> What's wrong with this:
>=20
> 	intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI)
>=20
> Saves the trouble of passing the encoder around.

Sure will use that instead

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h
> > b/drivers/gpu/drm/i915/display/intel_vdsc.h
> > index 9e2812f99dd7..50681fb3c129 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> > @@ -19,7 +19,8 @@ bool intel_dsc_source_support(const struct
> > intel_crtc_state *crtc_state);  void
> > intel_uncompressed_joiner_enable(const struct intel_crtc_state
> > *crtc_state);  void intel_dsc_enable(const struct intel_crtc_state
> > *crtc_state);  void intel_dsc_disable(const struct intel_crtc_state
> > *crtc_state); -int intel_dsc_compute_params(struct intel_crtc_state
> > *pipe_config);
> > +int intel_dsc_compute_params(struct intel_crtc_state *pipe_config,
> > +			     struct intel_encoder *encoder);
> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);  enum
> > intel_display_power_domain  intel_dsc_power_domain(struct intel_crtc
> > *crtc, enum transcoder cpu_transcoder);
>=20
> --
> Jani Nikula, Intel
