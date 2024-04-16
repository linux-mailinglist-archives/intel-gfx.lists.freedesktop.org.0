Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8250C8A6753
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 11:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9161E112B5A;
	Tue, 16 Apr 2024 09:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWezoTlH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E7D112B5A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 09:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713260535; x=1744796535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ypSIA66glcqaDSK/b+a32NP8k3In5fi/BT2v48tfi2o=;
 b=HWezoTlH6hfCZLAU/Rc39YbRgZ2Q3Vi+Qxh7/B0HZDht3JvPfpdNDVK/
 1XKVXqQhMwGVVTu8zMoLYSddwcAB/Iib5aOGokEMdxaQ4EmKiHomnWHsC
 XfpqwK8g6uiX44l20pVkm6AQtZs33V3P4XAD+0NFKVGlu1JT13so4jtvl
 tbNCYXIaXnRJhJ7Wtw7xs4YItVvJEIvlS3Ms0imdOANeq/YtxZd2h2Ztp
 gXJ5Y9dHzCdK02MFp2VqT9pCmyGo5BaWAU43jqYwFGe8ZUrOZ9yp+6e16
 NKHKp9Kzy7Cb9s2kKZEoYXrvQnZ+2afQWKZ5clR1OnQcJeaKjl1GoK8KA A==;
X-CSE-ConnectionGUID: dI+7vSpGQv+LnRV9DEohgg==
X-CSE-MsgGUID: WG9bX3P3QWCYFDrbKwtSxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="26143388"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26143388"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 02:42:14 -0700
X-CSE-ConnectionGUID: kMKu9IZkR2mBY61LYTyS7g==
X-CSE-MsgGUID: ctWEkyMhTcWlI8mEKdirGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26779480"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 02:42:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 02:42:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 02:42:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 02:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxyZ/kzR+izbo29534XUp2isNjJwjNY0fL58oNY7Pr8AecMIU/1HBoom5kDXg4181+Eb0Dj7lNR8wCEnPMzIj1hS74uIo6wwBTIEiS2zT2KpqZAVM+PFVYlrWtqTqhiIN1i+fCki/n+DEtOXKI/COE/p5VZSvEtabltQvOoy1AZMarqenYMTSn+KJIreCqXDj1Nt+/zLzfwD2oaJB+c5u7+SW1k17wml6L0RhhXDloahUPE1zwUAaqfl9PjWquA34cCx4CApMVRb+MrIrzl+L2fIkDT91aOhhhQWvYY87ZuCJe0vD24vqRhcr2yrYgZYmPaiZMJJp1t9AWquzbGjGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZRR/DddOHZoZV5vF8EXdYzFz+kt80ch+KPtmZTFplfo=;
 b=ZeslOvYYYk5bihjZ/VliWOIlJuEdEjmpy0nDautyWlQUnmT+Q3SSziS10YSftGKYO1iMWnpK7gOoTGUqb5bomExnY+FmA47d+20osIj7qshZGlW1dC7RlxlnC+jpi3ouTWqOBOUlNnFjVGpAoX4lPtubT6RmBuRvtA2B0bFdtzLEBGdb2xa0HfTtEJbYbXChKZVuS4D7CYjRLygkpxKEAWd3uKbJG2ulimb96/kt4gCrnE51ni0/TMefhkPr1oHY5OSGS8e6IYt03MBpnwhwxcAZbhi90GYXczmiAj8sZ3Rw7H5LJ+d/VMy6mbay07h/l6Wy7Rsl1G9KkOjB29jqMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7751.namprd11.prod.outlook.com (2603:10b6:208:43a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 09:42:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Tue, 16 Apr 2024
 09:42:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CK39Yl/XAuhESkHYWTg6z4CrFqi2EAgAANlACAAAwKIA==
Date: Tue, 16 Apr 2024 09:42:11 +0000
Message-ID: <SN7PR11MB6750A1365C691624F6D66985E3082@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240416033918.567386-2-suraj.kandpal@intel.com>
 <20240416080917.625155-2-suraj.kandpal@intel.com> <87plupznu5.fsf@intel.com>
In-Reply-To: <87plupznu5.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7751:EE_
x-ms-office365-filtering-correlation-id: 97a7c8bd-5970-4ae4-42a3-08dc5df97db2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?+JA3LF+m3SQU18+JtMRqoI6GaXgeH0aXZah8+P2B9uojJblejHebW1PNQfsB?=
 =?us-ascii?Q?qj2AOsdfZaoVDT7JNsICgbDi6IXjrtBMU30JNJU5oMx1tQip1HvTa6yzI0SB?=
 =?us-ascii?Q?o8CiJv3m9pZuHEUxodzIglZBW1GKRrrTYjK3Fqe805bKlqgtHGoS1byBB82F?=
 =?us-ascii?Q?uSIzn0i7H6G8mzLYgPr73OynMDvEFNeWvnNC6n0TrlAVFkm33SYo80OHFrBm?=
 =?us-ascii?Q?G0NG3cuEh6Zz8XqIDS1l1naCPp4QfmBDoNNgLUUrZIM6a3BYYsVeWz27YFAT?=
 =?us-ascii?Q?w1HHMr3mIo1a5cguj5mX2I1hcoabsF5CmZDAzq6G8BOMoiKzalkI1lW6bxfI?=
 =?us-ascii?Q?K2cdc57AJNF3tq60BYHcOXxGj4l96xSLlz5/cJ2/lnAQea5LzAwg5hVUWatD?=
 =?us-ascii?Q?46Wi2SaMroX1aPjjdMzgx+Y6uZNm8g02uC1QA/bKc6gRO+vB3uzBCSlDJ/Sq?=
 =?us-ascii?Q?RaIqPu3mokaZ7aQg3W6skkADzMXXKA7BPzmYf2ii2+pmfKGX7almGQj4KhBM?=
 =?us-ascii?Q?DIwwGqZknnvNV5WtCWpu9HGFKGV5nt0Ex53afkfTpmPXRtVRynz3Ksr0btIi?=
 =?us-ascii?Q?KRYWYmPa9yblWR7443o6KhinVaM9QqoRpgxHIfBNiAABQWG4J/QILHrqcyil?=
 =?us-ascii?Q?Wf3TV5SdE1VTttMSFWCGjqSbTZ3JgmJRS7q+iTfcNEQUHsnBmaghZAA96gmh?=
 =?us-ascii?Q?cj9ToG380590uIG3Lay4MNisN73yPHuFB/TgUrHL5wIZ0JgizskVSTCwc+A+?=
 =?us-ascii?Q?MXQuL/2bixYtBCSuApRHkxPGP6TPpIOgiElHIxcdQ9ni6ebyvpisOUjGrmve?=
 =?us-ascii?Q?gW+PBxxAuu42FxSbPJ+zuodRmqibLGyaZ3DXrCDdoVEugK4nmFe0RsDnXPIu?=
 =?us-ascii?Q?aH9zkXblRMoAY3saKWgZBrUwJp3U6MsYnLkm+3Zdarm7d9Wx6IuX2M+yXmpY?=
 =?us-ascii?Q?Wf6l7QCpy7Zj+G7jBbhYC0so+aotVv+9Ff0qZeUfTn5/90bQEKmNJR4clC6C?=
 =?us-ascii?Q?FUG/9NWlEibBb9142bV02ywoQnt133Eb6YaY5viqwQMhH3/tqhAIXAgeWMgN?=
 =?us-ascii?Q?5RrzCCQzMsqx9PhVgjcUHJCkNyt4Jn3KFeiLAkJ9IW4OwWp2SuF6NX5fox4V?=
 =?us-ascii?Q?fP7OTXi83g9TgcmaEpz/Sq+EPDyt4sliHD3qDtTVa3J/IXZVy7uecbpMURv4?=
 =?us-ascii?Q?pRm01d8wevFZVTFWdDwSCSKejs7xmfzXijbJheWOMoVxJdmso60m0qPwCntR?=
 =?us-ascii?Q?PJozahTHyXpiT/tGFyT7lGjakt78bNuaiyNpGJE9mxz/lX82sv93tOJSvZ9x?=
 =?us-ascii?Q?uI18eHziyCOJeLCHzXBNGWsPx1l/PTu1UxPMZD/5IxY8DA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QZUUjOGfwc64Di3R6o9cGW/F3k3sf758VyWEAGXDOya0FE/uLR/Gx49TS3Zm?=
 =?us-ascii?Q?5ceVPCK2g1tOqY62UMNa5VPr6ydC3hMtqcvG99jvNG3d7OWHPvTDCYjnTIbr?=
 =?us-ascii?Q?XfdePw+0QuwZp8DhtjIzRwUPAnbIPLhB4skQtpewsTykF+1PaocZK5O2bpIo?=
 =?us-ascii?Q?jH2dynANzCwRNXgN+9YsZV/no/eCcqieG6G9oTJkTis46L1YYdgp65vUTL6r?=
 =?us-ascii?Q?3J3v+DLwxzPInwDopOynzhxu11GDquVWA4XaEmFO1qPfOfS3WoeF8nPrrs+N?=
 =?us-ascii?Q?fNG3yRsxHahvx821sQe+q3qZDozImPzuy+eQBnxzorsQkqzSVyNhSg4EE0zl?=
 =?us-ascii?Q?XXuPC9Nh5SAlNktJtPEcIZ2soB5g2Gd/Z0AX38DIEHBnffpekCW6jex9AXGG?=
 =?us-ascii?Q?7qp/c4DtNTyoXRVoyI8LWxTUbyAG06l82mEFf5UmdOX+29KPCTStVOY0tymF?=
 =?us-ascii?Q?LPJfTFJWxkbqxJCY7hKYZUO32suv7xmbpDdyuUsMxm9ml62yAHncjnmgxjME?=
 =?us-ascii?Q?Xq9EWpDMfQLFa+bSrH0iO9upB8rQbgwyOIp9IW86llAYnANE0nr5gblQM1mW?=
 =?us-ascii?Q?WNx3adUpsGvX5Lwl7eHX+d0n68qlyCiPvoIkGQ9Wye1rwR4IUy4tYWcyI/Ef?=
 =?us-ascii?Q?avshWc2G9VtP9bjgZkeWGffC7xbKXIeGrbNxTX8vl+6spyJfDyA1+yLq4jGR?=
 =?us-ascii?Q?wvD8s+GNeE3KBRxiLK56Antis0s/Tn57FBHVCJ+xN5Eq4zHbf4I0wVYnop+q?=
 =?us-ascii?Q?63tFC+v06foi2Q9PGDEKlojhqY8sGcfTGJIj6xz0QaYfTddQgt6KbjWbDfT6?=
 =?us-ascii?Q?KhGUkt5tnYjpaX7GsKwWufKMdxxVdXxLEsGZaoWHT7q8CdRi9lYRO5aIs+ye?=
 =?us-ascii?Q?b2hRp2dkg8EBsJWHHlCMbFR9blzLCJz2e4oQJTYEdBHS9iQYh1D31YCsz051?=
 =?us-ascii?Q?PWPRUTDRyd/nI8jOIcODxCuzuQlgpBurW6GmzPFoSd30orgrfgOGzs21hXsC?=
 =?us-ascii?Q?wub8gL6W/6EyKW15dLiA8j9SnbQn4ekgHMEvK9QXhh1UCdPcVK9z7xWZncwT?=
 =?us-ascii?Q?6Oek2GcasULBP6iU26hF4TgakTJZE1izy5S0LwlzkDBr+3nUfJASU2mbCF6h?=
 =?us-ascii?Q?N2eXP6ujIADlMB/fhgIx8ni2w4/xSxGkFDfzBCzJJF5g0nDUfymGJVjYSyqR?=
 =?us-ascii?Q?YVKJSj8J1ffc3NgxZ5NYr4egXvgOv0oUbBkcXDdRbd9dzw/VAEHwLLeHg0UI?=
 =?us-ascii?Q?3bcD7w2Z8hNAqeuL8BEFUVErEMdaoISXmAlWLPvAK/xtD6cGmYTuuoDzBQbB?=
 =?us-ascii?Q?ztkcSujdKtNBJxEZLGxi+eniVEwO4Qdl+RUu2e6R+mDJyqmVyarcw02sQUay?=
 =?us-ascii?Q?7YVAxx+1yXJ+vKhKJxxuVM9BgVxN8A9f8E+GFVb4xOk07pj8Txm71PawHf99?=
 =?us-ascii?Q?0LSeXXBGxVwhSO21gS/IXExWYBVdLEO2SqXe9FGI1TeVl2+z/mPTj6RgjhmU?=
 =?us-ascii?Q?OHdRs2OP8wsDLj0YHTokROqgVq1rOu6SpYvz349Xvr1+cTO/9P98gV2yl6uT?=
 =?us-ascii?Q?VZecjz1tTdgZIbnttJ6R5hmp5PQUk/I5M4jm6ERp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a7c8bd-5970-4ae4-42a3-08dc5df97db2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 09:42:11.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XkaPkHiGxcyn0vk7AvuKXHRV63H7XVX8337irAbq5M92CKJvwaFWL/5YE8JbXmzcdEIxF1B5+uiTrWM+HgwOCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7751
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
> Sent: Tuesday, April 16, 2024 2:28 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.=
2
> on HDMI
>=20
> On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on
> HDMI
> > TMDS operation for DISPLAY_VER >=3D 14.
> >
> > --v2
> > -Wa to be mentioned in comments not in commit message [Jani] -Remove
> > blankline [Jani]
> >
> > Bspec: 49273
> > Bspec: 69964
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> >  2 files changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index d5ed4c7dfbc0..4b1833742245 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -30,6 +30,26 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > +/*
> > + * WA: 16022217614
> > + * Disable HDCP Line Rekeying when HDCP ver > 1.4
> > + * and when we are on HDMI TMDS operation
> > + * for DISPLAY_VEY >=3D 14.
>=20
> Sorry to be nitpicking here, but we really don't want to duplicate in com=
ments
> what the code is already saying.
>=20
Would just mentioning the WA no. suffice or just drop the comment al togeth=
er ?

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> > + */
> > +static void
> > +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > +				      struct intel_hdcp *hdcp)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +
> > +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> > +		return;
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 14)
> > +		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
> > +			     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1); }
> > +
> >  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
> >  			      struct intel_connector *connector)  { @@ -2005,6
> +2025,8 @@
> > static int _intel_hdcp2_enable(struct intel_atomic_state *state,
> >  		    connector->base.base.id, connector->base.name,
> >  		    hdcp->content_type);
> >
> > +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> > +
> >  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
> >  	if (ret) {
> >  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n",
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..fbf4623cd536
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -5630,6 +5630,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> > +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
> 	REG_GENMASK(11, 10)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
>=20
> --
> Jani Nikula, Intel
