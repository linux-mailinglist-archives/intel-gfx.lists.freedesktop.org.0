Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED5E94988C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 21:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3649F10E3EA;
	Tue,  6 Aug 2024 19:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDFZEBtV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76BB10E3EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 19:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722973267; x=1754509267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xZxYvL71JhSCF4THq6492Nioad/84SwnFBR+qy98J4w=;
 b=hDFZEBtVjTVZKbtWpTmmr0jh2hV5LsfrkjE84rF3WBAqhMG1D4Db22TZ
 fJycRpIZukTNcWTpfFDSN7p41iqmRVXhLxyyRLldEqjH01D1QwBJ4EBMY
 h/GpAZllKkC3xTuKt6MWRYlQEQv5MxG+NBUCCZ46vGS/74jKM9ZEqzv0Z
 6QqZ57nPKLOq4LiBSoaADD8iR7DPdrWLGsmp2oPDRol92UsZGM9ZNyVWD
 GrFXRaWsLL15j8LCBZGkR+Ztx48Zj+U1zCEuXahTBC5t6sRRmHNayp5b4
 MKJ0Cy1Rz7wW2YSjnSx1fUAP0kTyTkIWeXKEUMjlYQKiLY/pe32NSexsJ w==;
X-CSE-ConnectionGUID: /8z9KcXsRPW0kobVAWW/Sw==
X-CSE-MsgGUID: MMaxfi1uRNuYsYcPp4G8JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31646716"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31646716"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 12:41:07 -0700
X-CSE-ConnectionGUID: erBp+msYTZ+qpmGKZDYwmw==
X-CSE-MsgGUID: 1v8vmMlrQ7KrxzJTXg3hjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="57171990"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 12:41:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 12:41:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 12:41:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 12:41:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 12:41:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=idY9EH+jt3ge6UKIheCMH3igjTwi8r9sePfk09TIG2EmYdNxv7isBMYGPI6gQPr9OFMSBhLJswcu7JeIlZa+649+41DwTi0VMw/uSoWd7OQLv3gREGDlYFNN3SwidM9s9a+vYiOGV8IIU7JppTz1MQ0Vpq4GWHSkNklzBD9kZC7MeNZ8IwF+7Me/dPjfN9scjCq+XnN0pHS2dkuMwMrAk7gjjLwLaIwpwi+VLST/Nyf6cnTLJn4IoZbmsYrlOXJrJXSIyG7fz/or92PMFAMf5ST7URfAedy2N4T3gLVR8eot4Ft4kUKvwgyL1jPcmWxNNFSIjg4wiR/RaPcx9CYw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SBhoxlDKuGTxmV8Ws8ALEj+w47eMXNbti0aZPMfQEik=;
 b=V6dMUuxdKSZDlLMF75EBff51HvAMUTFeJY6sxblRTz00UuTqD6anhOSAsSq+2BqkW65B7igQrQA+hmLRRhdIDI/kcwqdCledTN2BuGJuRH1P9cv9luJRBUtuDYKb2W7irlPUyC+bTtvLzSuyEocwcvxkQueNFfTDy3j5zXLCfWpxiRVGQe7LoWOST99je2qfYIdasDmYC0d+XKaPEMB3QcfUTnjhhaR6bkBHtnMQLkB+2VhDwEqn76ilsYXUVOQ8ftVo5+2GG9SjSf7i3h3DHn/PX1U0jfYfa4OoOTtOabq7Qn3siBeTuxR52awpUogMfI7+ABKKK1WAPYEv5bsHjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ2PR11MB8323.namprd11.prod.outlook.com (2603:10b6:a03:53f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Tue, 6 Aug
 2024 19:41:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 19:41:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 3/3] drm/i915: remove __i915_printk()
Thread-Topic: [PATCH 3/3] drm/i915: remove __i915_printk()
Thread-Index: AQHa6AYd1HQc3IYgb06ksqBSnCJTSbIaoL7A
Date: Tue, 6 Aug 2024 19:41:03 +0000
Message-ID: <CH0PR11MB5444CFE6544C68E9B99FE106E5BF2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
In-Reply-To: <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ2PR11MB8323:EE_
x-ms-office365-filtering-correlation-id: 5cc8baf2-e5a4-4d39-1687-08dcb64fb4f8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gj5tQ2XCBb639NSFiilWuzIFR8xg0bi9yomki9EfdINQ5sG+ETDrtGqPra9w?=
 =?us-ascii?Q?hJUFce24uMizPAlN4nF7ciPYDzKBIgmLbGie6eMZopz8cDarF6PR+lpiryHX?=
 =?us-ascii?Q?sqB2MZN6VKYGnSnB6+SUaPT+BocraEcZcdwpiBqYYpApiiQF93sl+M8+RKDJ?=
 =?us-ascii?Q?L0IQXcKA8yCf1h1pdg7AxhzBbgi2w39DD+CN7INXVXGpe3WajEk4BWRqs30v?=
 =?us-ascii?Q?S7eg++PPe6wuABvOLvrhHsGXE+mwON0VyjzpPD/IgBFnTIjiLbAqxUAbg+yD?=
 =?us-ascii?Q?1F5mkobenYEX1UlTbQHCiin7K1ZDKI5+2okR83PWqvuGFvewJJMoo2AastQk?=
 =?us-ascii?Q?IGg5u6oUmfbSu/y+y4qRvfnmA+AtiR7jvsUhoMCXx7WCXqngVJfGzfZ6gVgA?=
 =?us-ascii?Q?iOJoqsDQmWhYw7qUW2KXieSNL38KFZ6YXogAGgbhk2JdcBKYqoWTPF/2i6jp?=
 =?us-ascii?Q?TDRiYc95XbKhSXx+y4jP7Vrf2kWOq24GWiXP1IzPHw05uQJe+2NVTbEtmaRf?=
 =?us-ascii?Q?M3T5cW20PzNwKu43qhYwRDDCh9mmsdoarZRrz00dQ8tgPFalIwvMy45TPwcF?=
 =?us-ascii?Q?W11ZnSpLUSPykO1mEo9sEN3USb8zgQO8+6u5D7wCGkK+EyCd23xb61ywbF2J?=
 =?us-ascii?Q?caSACn8IptAvKsfj0yhsgbaMBlWZCXjI/fGXbygaZtDKQWRZn7LqlebTKck0?=
 =?us-ascii?Q?UT869eiCxKq+AyRg0/oyjlbwwpgxh2CWj4CGEm48Y9IVLob2wICctELvhsfv?=
 =?us-ascii?Q?XJx6CPQUk6jLv3Jtul0igOYOU74o3gK+bbmM+x7Hu38CvX3Jnbb5wZE68Pl9?=
 =?us-ascii?Q?Pzm66YEQoDWcHshLZQ5LjXh/e1IZh6Xy+sur/gaz4msphE3H7RiHU6V9lXfo?=
 =?us-ascii?Q?rp9mo5lm5OnMwE6WqOTHd5fDwQyqc+4GQR3GAv1+0qKyU1e5gDS/I8rY2AVS?=
 =?us-ascii?Q?2JqHjyydRnv03oZ0IPzkM1BRNB98cPkbJpp97XHpgaezRaUo7paVG6bqFYAQ?=
 =?us-ascii?Q?4RebguWG6vy1GbSwxwlrh8oVdpaKEketHdaD7Uyb6ZivmXwkOBJhlfhY8+kk?=
 =?us-ascii?Q?Fd3eJdCf5y2iQdIqWimhMPcszZtUQ4kenPxmIfwxkOx16Rfpr2eacApwwfcy?=
 =?us-ascii?Q?gGIYQt2g5HrUcmMxQ9jZFrSKM/ZIHdKxJeGtbqdSYs3pxApY98UZ4zvCsJ0m?=
 =?us-ascii?Q?WDZa9tU88Fx5csSsTSTokA0H7zOBuDGWbHP4HEcg9RTIeQ2SKyqR4V9Dcbkh?=
 =?us-ascii?Q?U1Z2aj5fq8Uirt8O5AWfgBSGVyqcjqpi91BJUguCrzLV+AAzOOA6JVKKLBH3?=
 =?us-ascii?Q?44cTAufQPLiCYC60zfKZgW3u6PChdnxUR68DWDM82ZgUULAGxst6aNRg8bA9?=
 =?us-ascii?Q?MBtWVKD1oiF+q2STB8kvoxQWFbuHY1/Tx6DLyWVMnGDYkIzxww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qboZxHQy8BOiN5EuEVpOIlH2L0q/dO4EMIM22Nm5DjYNyyeTD51/zPw47Mg9?=
 =?us-ascii?Q?4RuvWkhtL1+QmcNTodrfVnnUsi7tTKxdTQwPaVhFe3wvJCxkyXPWzMF5Rum5?=
 =?us-ascii?Q?wrVPWxuzjqssWanVt04wRFdIwrnNZ/c8yWEEaDqnzVHcml/icrwKlO8aiBk+?=
 =?us-ascii?Q?rmcwvZTw8XhShOs2/j1rNcMEI00jXGpw0R4EjHC9JZvekKU4aQh7BagqJLMC?=
 =?us-ascii?Q?1BPhYPNV2xQmDCoHbdwoz1G9gbw4kcDvWESA5CH5gqTaxpYktyAHBkLJqOa9?=
 =?us-ascii?Q?bB+WXmDAgETKm/Nm8fhgLy+QQEiwfSl9zpiucD/SbqOaDaLhQ0un+qK/Hiac?=
 =?us-ascii?Q?i5wnp8f806snbq4ZtPpDg9Sx04ErsBJ/gCgO49nnkM0RvuKA+5h+YRl7nYAz?=
 =?us-ascii?Q?K0x2GeMM/T3RO/n3Gme7e+ToW2rps4YLbQXghuD/2rMoY0PyYSv3U+THBXOk?=
 =?us-ascii?Q?nVG6YhkowvyXnP8lQ0Tq2Mlh67KXU/3Gqz5LjgUKclPfa4PIn0oF4+vq/Wh8?=
 =?us-ascii?Q?C9j0AYndLPMGIu+AAsdjM3XSNzhoyAVjmlNubSxAFGTIVfuikhnijkqu/loL?=
 =?us-ascii?Q?BLzrqMxlfrsPhjsjW+g0o4ie9w26xC8LZcNkdNrPygnGojX0MhCqOOlRVxrS?=
 =?us-ascii?Q?j/5dn4JglGBhV5Oe0LEkWt9RJaR0ABkk2UrOhLquE4SLjXHTvuw0xnm2s3Yl?=
 =?us-ascii?Q?zda6WsGm/qfXq/w9x7FQwipTtQQN0eW58VCt+ScRcf5cgLXs5Tvb5Ei9xRzu?=
 =?us-ascii?Q?ouKPtJQOOadqQVajfkzebeGI9DejCrxfZoMx2cG7zIKZBNWmqptPYd4oSgNA?=
 =?us-ascii?Q?iy30NlU30H1M17OPdJLykTUgogg77BXxSxPPR0wAdS9qW5B3+1HuC6g6VMNo?=
 =?us-ascii?Q?MVBsN7BnFJkzy351FhM02GFqQTLZtkpG96ockHHrVH+mlJTrTzi4INQhfF+c?=
 =?us-ascii?Q?z4s7JylDQwBk5sao4/HKRHjXtOrzdlarTFP7cuU5hICmx6bxAL040LjXsqGA?=
 =?us-ascii?Q?h8VXBFXqpYNWvcjGLQSiRwNPzpyeSP65EyzVKyiq9X4ljEyJVj6QxRtFo8zU?=
 =?us-ascii?Q?2ptkZ47yOFitYemu0mw5mPwTrPVy2OlotisZfJ80K/Ka055vgSyMPwhrNOym?=
 =?us-ascii?Q?O2nobjTT2ia10VW0VP+9E38IHfofkVBV/e6zlcDBRs02RdIOv3zpSdRruuPW?=
 =?us-ascii?Q?keuFMW/jZsbB5BJG4TwfNXXmPz48qtEurWRAOpaqa8u9TYEVVvGe5oDGsPWg?=
 =?us-ascii?Q?Wv94NM5JHbJfS1Lls6aM5p3Eej6CNf/Tj9+OGaAAdSUOVsY9X695SQPFnhW5?=
 =?us-ascii?Q?JxFVA/L2Ui7c8QEXmh11VPV5388/3OaNIcCHO2zeMgupctjQoVnwXOqM37SC?=
 =?us-ascii?Q?d+sbuEEJ/SZy96Z8Ak7ocuIkTYbGkReKAkLOCkWdiirhvAK+5a6glzu9P/2U?=
 =?us-ascii?Q?lvDzCMJdJeYhGeTS2TcPgY+6U85ztqxi5Cp8btRDwzLqkp/7eo6ZHTnuW5Eh?=
 =?us-ascii?Q?4wlhP+9/7zusYTqWcKn9vBHAyni3oG4mSdIzmttugzJV7OyneV9P/e+4WnOU?=
 =?us-ascii?Q?C2IFIEQeKIgzlNVsNlIN1+zAhTZd+J+kVgAbqK9M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cc8baf2-e5a4-4d39-1687-08dcb64fb4f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2024 19:41:03.4361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: otFsT2n7+AN5EaEJmLTSeCn4HiRzgLLm9sM/3u1Zh4ZPJOrhgZw0OGEQDo6pmHQybe80IpCTU8atAmniTc2XIraWK8OEIiAu39dRe+7tUjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8323
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
Sent: Tuesday, August 6, 2024 6:39 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>
Subject: [PATCH 3/3] drm/i915: remove __i915_printk()
>=20
> With the previous cleanups, the last remaining user of __i915_printk()
> is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
> instead, dropping the request to report bugs in the few remaining
> specific cases.

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_utils.c | 41 -------------------------------
>  drivers/gpu/drm/i915/i915_utils.h | 13 +++++-----
>  2 files changed, 6 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i91=
5_utils.c
> index bee32222f0fd..b34a2d3d331d 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -11,47 +11,6 @@
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> =20
> -#define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " =
for details."
> -
> -void
> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
> -	      const char *fmt, ...)
> -{
> -	static bool shown_bug_once;
> -	struct device *kdev =3D dev_priv->drm.dev;
> -	bool is_error =3D level[1] <=3D KERN_ERR[1];
> -	bool is_debug =3D level[1] =3D=3D KERN_DEBUG[1];
> -	struct va_format vaf;
> -	va_list args;
> -
> -	if (is_debug && !drm_debug_enabled(DRM_UT_DRIVER))
> -		return;
> -
> -	va_start(args, fmt);
> -
> -	vaf.fmt =3D fmt;
> -	vaf.va =3D &args;
> -
> -	if (is_error)
> -		dev_printk(level, kdev, "%pV", &vaf);
> -	else
> -		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
> -			   __builtin_return_address(0), &vaf);
> -
> -	va_end(args);
> -
> -	if (is_error && !shown_bug_once) {
> -		/*
> -		 * Ask the user to file a bug report for the error, except
> -		 * if they may have caused the bug by fiddling with unsafe
> -		 * module parameters.
> -		 */
> -		if (!test_taint(TAINT_USER))
> -			dev_notice(kdev, "%s", FDO_BUG_MSG);
> -		shown_bug_once =3D true;
> -	}
> -}
> -
>  void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>  {
>  	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i91=
5_utils.h
> index feb078ae246f..71bdc89bd621 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -45,10 +45,6 @@ struct timer_list;
>  #define MISSING_CASE(x) WARN(1, "Missing case (%s =3D=3D %ld)\n", \
>  			     __stringify(x), (long)(x))
> =20
> -void __printf(3, 4)
> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
> -	      const char *fmt, ...);
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
> =20
>  int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
> @@ -66,9 +62,12 @@ bool i915_error_injected(void);
> =20
>  #define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), =
-ENODEV)
> =20
> -#define i915_probe_error(i915, fmt, ...)				   \
> -	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
> -		      fmt, ##__VA_ARGS__)
> +#define i915_probe_error(i915, fmt, ...) ({ \
> +	if (i915_error_injected()) \
> +		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
> +	else \
> +		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
> +})
> =20
>  #define range_overflows(start, size, max) ({ \
>  	typeof(start) start__ =3D (start); \
> --=20
> 2.39.2
>=20
>=20
