Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C819A5D55B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3FC10E097;
	Wed, 12 Mar 2025 05:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cXOcusW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E07710E097;
 Wed, 12 Mar 2025 05:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741756412; x=1773292412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GNkWUx6IVy7182yh/W4kn/+Qk+7QHub5SM3k035MQ4g=;
 b=cXOcusW06xaFr5rQfKMISJN0M45gULOmJVfFIHQ874rfpotIlTuzP9eV
 W5uVmIlwXE1LSb09CJOtp/ZhQNBFSv1KleGgLU6XORMAJ793BxjVaZWHD
 Nq5GDtrx5IRpMA3qpxDwb2XRutr/ac6j4qG/hfMsy1g0QYELaIlirDKJR
 KW3xdD5jvlLJgPYdK70lhKYqVhRK1SIVzAGCZAuLY3N2Kx6RjYC77YBV7
 6A4DLCrgfrseTPlnEw2t6IPJ4sljWg2WTxKBAIP/hZSDIkCYl3RJBTtNz
 o12hQ6prUOew0/qEGBOsIJ0trP5VBmp1R4p3TXDjwHCbdMWlhiXE0XQXU g==;
X-CSE-ConnectionGUID: nGw7SHZ1RBKPP/PHUSZlSw==
X-CSE-MsgGUID: WQ8Q/zn0T12KQKru75Tqgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="68181955"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="68181955"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:13:32 -0700
X-CSE-ConnectionGUID: d59oejZzSEOZE8cmxq3cjg==
X-CSE-MsgGUID: m2NsCqBeRmSQ6ixFuCqsgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120344168"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:13:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 22:13:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:13:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:13:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ooZVCIEZ3qF7lIgDccGeSbrhYx4eGZWube+DuU3XhfiL+jWsVXtJzO+LdyFDUvFlikIITGVm7TwMuNX421nXxeCDsZqGvrBSoKFZNAZsoU1Z0aM/UpRqlZpTDwFQgYjlwZ+CLYqKMGoz+7QI+cOWO8DqmE/aXKhr0raR7ZX1Trej2xS1AoDWI/xROSPB9UbiubxINxphiltWU4qIYrb63m73VY2FcAKnQG/9KB8/LWLhazGNp4LJO9Eiby09dRoFFSyt3ao4vhds/Ed0eQGyLIv3FK2vuhnitdF02CgW+DlhR1HqgRPpa2QAntCBiEbXoSDntfqCbGgCxZsncTPiiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ac/385gLBylLsgnS6TQUuPSdXVuZHMQ4xWFM7ImneWQ=;
 b=gHhvGuJylKknCmKyXgyL5TuKlWgfyiYobfVV+LmOm1j4DqkNjHl6ZEmOv+1wSXKrex0B9N5htsmNbI5W5+nqs7rEuabKfWyBO1l//WE5oN9XTE2VZPoNulsvVQl3eePhfvjuKGXrsIJmkwHa0B+iWpQuezC8WZ0WyB2fY/oADNTU0013k8nS1KD9VUxy9qpwpXjiYuhyDqkz0uWctOc/+/j1qaoiDkvWrhZasAJMQMh8fqb6DEskHp9t59GWLggDkOd+a8PoNmx18DCUICXbairYCooeIimbxP2h/mQnEUx4/s0y/J2P/aP2hJZy3N72usaAE3tp/ggvr9oUM3xGXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6440.namprd11.prod.outlook.com (2603:10b6:930:33::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:13:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:13:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/9] drm/i915/hotplug: convert intel_hotplug.[ch] to
 struct intel_display
Thread-Topic: [PATCH 3/9] drm/i915/hotplug: convert intel_hotplug.[ch] to
 struct intel_display
Thread-Index: AQHbkq+uBFXvjh6POEqapKio4tNKmLNu9WeA
Date: Wed, 12 Mar 2025 05:13:27 +0000
Message-ID: <DM4PR11MB636011A882349DDE425B45CEF4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <36abad1ae08a76978ac5a2011d89a1dacbf0ac2a.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <36abad1ae08a76978ac5a2011d89a1dacbf0ac2a.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6440:EE_
x-ms-office365-filtering-correlation-id: 20c7f826-7fb3-495b-f746-08dd61249f45
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?edT9h/ntU+wqkYsrn8QOIjBV77+GvxGoV9iMqeN5Ua62dtYv67AZb/nM3Jyi?=
 =?us-ascii?Q?DOOr8VZR4f7BAPWQ1Mf8CPEuLHdB+FQqg6LcyKrIwfaeQ+op5GVvpOebgKp2?=
 =?us-ascii?Q?HZVn1zWrS4VjHgu6Trw51f0rdLGgmvxpSzMZcaJvYmn899TNZht3HpTIluyP?=
 =?us-ascii?Q?28BRmTaW6kYLTiIlR5uK8Tcq0JHOJPa4TNFfDsa9Hb8/G3jjLGbAOeHB73/x?=
 =?us-ascii?Q?kdh4BaLfqHYxMiULtAkyRRj7bjzWsQE7RDQ+ZCGsqXSlCGMhJqQKSETHbZq5?=
 =?us-ascii?Q?HLSfbtY2POQF2Tuwv6LZy9IuoqQS7NFJBN1yyp/PHVlOkvuv85Dhm7MHIrM1?=
 =?us-ascii?Q?BiL8pwzudti7kPmZHbsHmSuM54g1UNFVRLLLHIHixe+hTRGNBB05kNedVBRc?=
 =?us-ascii?Q?8eYy4SVCsQMA/gIb1lHVqByEex5g0mbT4CqQJx/NboJpAgRz/t9m3u2dpoNj?=
 =?us-ascii?Q?6ObXfm0pSLoDCAFrGSG4NqscriCos0vwJDKVOa/NkPkmQwI25ml+R8/u+jGF?=
 =?us-ascii?Q?xLveLXUbY/D42pl/g1Rhm5F04ZPetJ0geGztu2GzrzXLnvkH15YX8fXSI6Go?=
 =?us-ascii?Q?Xic5kpicLqM59TeCgmjjXKG1Dt+8IXLG8HL+BeZZS4wM3VllSU1I6oqJrBHT?=
 =?us-ascii?Q?U6Z3WNfMWfy4H5edfTPjosBMjZKe8zgruPVQsQfVyassLPua3vKV6Xfk+dVc?=
 =?us-ascii?Q?pIm1XCDf2Rag0tZswGUUn0mJPlEt7gFGLqYaqGLn4sTYtw/tWKnTanV1JH3O?=
 =?us-ascii?Q?En14+336nQHKXGMzMYfWGn85aZMgmI2711URLFr3o9QZePROqT9qle16lsix?=
 =?us-ascii?Q?+RBx29M0amT0ZKULohCTTtHhqrvFvFlNo22ZqMagvJaJV0ByHKJgqf1z08Xe?=
 =?us-ascii?Q?qKHl8nNRxQmXpKzq/COT5DfrBLfmCbFV1Y2zugMwlmoNzQekYw1j4RfY+Yf1?=
 =?us-ascii?Q?Irk3+Ddg+xew2Mt9lykoRaJHao4CsI/o+yHXio86QT7Obwm4OGLIIpivc70F?=
 =?us-ascii?Q?Xp/5zY0Q0+MXJxrweiV0vZDy5dPB8Jbm/s3A7RTvhRGoSZBbhxJ/VccjoeDA?=
 =?us-ascii?Q?5xUs/DiMuCqYoNE1rapw2zqYJeTt9v7nlKgaggHG1A+R5MifNtfnz3PPIuHu?=
 =?us-ascii?Q?ippK06LrU6qd+LvGv8D7gAKI41dJ4b1LuVCtP0dJaGGoJ5pGTsD9mTMvnZUX?=
 =?us-ascii?Q?PZNieWl8YFEU8BKN65obY0+VANeqj8lSG3mIq914+UNLZzHT2e+sopz6tn8S?=
 =?us-ascii?Q?o7JXmA99vb9DCwAkrrygswHyqSR8/QEQkMC5VpWMs5sn+DOYegk226CXw9/G?=
 =?us-ascii?Q?AyePB8hpzxxmslgqCFj5jtAxPydkxFzn2GRhyjcp6lDYEGxiDQ3PhbsKxWH1?=
 =?us-ascii?Q?1E9EORMX66lHo7qcRfLOrv+gDC634Cq+EnLCfgTmpKoYsNTSwEZGhpOH71kw?=
 =?us-ascii?Q?M5oHsEO9AOlQT8EQb2vfFaAWuOgG1rbD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ggddiWXbLKHdn1sAoUxz7gxzWMubIt6m5yPHqSwZZwo3oZu4W67YNglO9Vpi?=
 =?us-ascii?Q?ZsNCgLcTrow1e/Yg0XMj56sPxYVc3PaNefNQgWP//n9S36JRVFps3w1iBIEi?=
 =?us-ascii?Q?Ujf5mDoyRQN7yRNAo6WG1KFRCTfwNsTxtRW/kYZs5kU8WGEuul/DA3/SvhO0?=
 =?us-ascii?Q?VPgM0iE/3j2YdOoy9Dm786ZWEAZtJ/qcwwNozWxNLw6rV2o0WA6/oPq+n9dz?=
 =?us-ascii?Q?19WGKn6uxj/ty/h4a72FoCuLJmHChkc59/Mu55IQmKmkFzbiqG4kh2a6Z5tB?=
 =?us-ascii?Q?63XLhoZIqOiPxyhLh7qiIMd/eW8uWKM7608YB9ZBszPod8OEAF89kxNqu37z?=
 =?us-ascii?Q?fr1x71RP06QIDsTb3IIoDtN2UE5pc858GyU1UNRuBOxLJDsRHr0uIaINQSmO?=
 =?us-ascii?Q?dNMBewDukviIgCLp5b3Q0r7UdhslNbPQHDn7Jw9LV7M8JQjf/llD9MSQXDey?=
 =?us-ascii?Q?lUznZ5vr12bNN/nVGdXmu42DZP90BiZn6ZpoqV2Sm4e+MLW2hoJ0EDuy9QpK?=
 =?us-ascii?Q?uyjwd+VM44yu3ikVZpTJ/Eiain0k+Bays6ovQGtzeiJ890/3XoYxRKUzJJ4B?=
 =?us-ascii?Q?Ev4BJxzbQo61dgLc3y6R0QqDp44BRo6L1PXut0nHmkXla5PzJcyXVqTxwan2?=
 =?us-ascii?Q?z3AIQjkkAnIO9+2dv6Sxa2GXxlQMve2m4TdCJTPmrt/Xdhv8eq7UY7vjaOz6?=
 =?us-ascii?Q?33Vwm0oSRbAcLO1fKWSHKSzNVIjCO0ExskQRTQ1WJL7EmjJQOPBf7hCo5865?=
 =?us-ascii?Q?LvBhTYp9dwHYrapOE32WNOYOCVlvxCDUDDjl+66XtgwuNihXBRoANU8CJsD7?=
 =?us-ascii?Q?fYiusbQghEAWYk23DGS5XBmoUDIpmd4MsBLW+lUgv3Iy9vTOLA+nl+Fva8ZQ?=
 =?us-ascii?Q?mQxgIHFH1TT7QhoJu2vTMubdENrtOG+fIYp9xY2XvOClLZQ542BJyqwGqFqi?=
 =?us-ascii?Q?iVfFxo8Z/cXjmA1YEX17JJ6ZcGH0HDSCDSVWFPcXqUwZdKacDBC+L7OwTaXU?=
 =?us-ascii?Q?0dVc11kxzIaHgdOlbWgPkjjqlXDvJEEE377qkv3agnnyRthIaJtkDuLVZgJ0?=
 =?us-ascii?Q?wK6WErtaDvXdA6OULFqDrrI8vOvgN9uCjhXxRJqpvQBoEnzuNEWoP3OC243o?=
 =?us-ascii?Q?yxQbwCYb+QQy7BTvMX7exs7Net8PFYjPCEvjmzy5LiCGMV5VCwBOgr2nIZ/X?=
 =?us-ascii?Q?ouvHlcycbMHYyKWSpFet2XyjEaAinCwZ4hLnKQrTXju5gKGAK2TMqMqZfHI2?=
 =?us-ascii?Q?6VVnqcI69Ez1sXXr6ROOS9q9RWSfe1KxuLkhAzJH3Cj3vc/lHwhVREeuu1AQ?=
 =?us-ascii?Q?ht7X+WG85qb6LbiLLaOC4Sojvv5RqMjg7jXlySyCHVjeKQ33nRrs9wV+vZKe?=
 =?us-ascii?Q?hDappJxaN4azkZlgtgOvQog4Kd8A9dAt3GPMKGlNOuqqiYM9az1iVwtdGpcz?=
 =?us-ascii?Q?C/OAFo2xFcJ4jhhT3gD0uPzGqSjBZYGf+vMpdo1+Ra4N9CQMj6Uf7bBOyXEW?=
 =?us-ascii?Q?TDP8LyFbVSuvPI6maaIlLKkb3NUp8+dw3dJ3Fk/ns+Qj4/NyPIj/AjRSmPgz?=
 =?us-ascii?Q?GRGkvQDeMZ/kLgRFIfWm4VVExL+vdxe/oEbBSV2b?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c7f826-7fb3-495b-f746-08dd61249f45
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:13:27.5178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zoXz9daFmiqa3lF1GofKD+Ijvn8Ik9gANf1iaei4pnYmIvi/ySUk1lzg1wTByrJRgbGJbo18HoVV1o/ViYcSfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6440
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
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 3/9] drm/i915/hotplug: convert intel_hotplug.[ch] to stru=
ct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data
> pointer. Convert as much as possible of intel_hotplug.[ch] to struct
> intel_display.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  .../drm/i915/display/intel_display_driver.c   |  14 +-
>  .../i915/display/intel_display_power_well.c   |   6 +-
>  .../drm/i915/display/intel_display_reset.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 332 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |  26 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  24 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  14 +-
>  drivers/gpu/drm/i915/i915_irq.c               |   3 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |  26 +-
>  11 files changed, 240 insertions(+), 213 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fdedf65bee53..f42b5a69eed5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -844,7 +844,7 @@ void intel_display_debugfs_register(struct intel_disp=
lay
> *display)
>  	intel_dmc_debugfs_register(display);
>  	intel_dp_test_debugfs_register(display);
>  	intel_fbc_debugfs_register(display);
> -	intel_hpd_debugfs_register(i915);
> +	intel_hpd_debugfs_register(display);
>  	intel_opregion_debugfs_register(display);
>  	intel_psr_debugfs_register(display);
>  	intel_wm_debugfs_register(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 31740a677dd8..ae60ccb21520 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -315,11 +315,9 @@ static void set_display_access(struct intel_display
> *display,
>   */
>  void intel_display_driver_enable_user_access(struct intel_display *displ=
ay)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	set_display_access(display, true, NULL);
>=20
> -	intel_hpd_enable_detection_work(i915);
> +	intel_hpd_enable_detection_work(display);
>  }
>=20
>  /**
> @@ -341,9 +339,7 @@ void intel_display_driver_enable_user_access(struct
> intel_display *display)
>   */
>  void intel_display_driver_disable_user_access(struct intel_display *disp=
lay)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	intel_hpd_disable_detection_work(i915);
> +	intel_hpd_disable_detection_work(display);
>=20
>  	set_display_access(display, false, current);
>  }
> @@ -524,7 +520,7 @@ int intel_display_driver_probe(struct intel_display
> *display)
>  	intel_overlay_setup(display);
>=20
>  	/* Only enable hotplug handling once the fbdev is fully set up. */
> -	intel_hpd_init(i915);
> +	intel_hpd_init(display);
>=20
>  	skl_watermark_ipc_init(i915);
>=20
> @@ -558,7 +554,7 @@ void intel_display_driver_register(struct intel_displ=
ay
> *display)
>  	 * fbdev->async_cookie.
>  	 */
>  	drm_kms_helper_poll_init(display->drm);
> -	intel_hpd_poll_disable(i915);
> +	intel_hpd_poll_disable(display);
>=20
>  	intel_fbdev_setup(i915);
>=20
> @@ -600,7 +596,7 @@ void intel_display_driver_remove_noirq(struct
> intel_display *display)
>  	 * Due to the hpd irq storm handling the hotplug work can re-arm the
>  	 * poll handlers. Hence disable polling after hpd handling is shut down=
.
>  	 */
> -	intel_hpd_poll_fini(i915);
> +	intel_hpd_poll_fini(display);
>=20
>  	intel_unregister_dsm_handler();
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 8ec87ffd87d2..daf2a0cbb157 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1236,8 +1236,8 @@ static void vlv_display_power_well_init(struct
> intel_display *display)
>  	if (display->power.domains.initializing)
>  		return;
>=20
> -	intel_hpd_init(dev_priv);
> -	intel_hpd_poll_disable(dev_priv);
> +	intel_hpd_init(display);
> +	intel_hpd_poll_disable(display);
>=20
>  	/* Re-enable the ADPA, if we have one */
>  	for_each_intel_encoder(display->drm, encoder) {
> @@ -1265,7 +1265,7 @@ static void vlv_display_power_well_deinit(struct
> intel_display *display)
>=20
>  	/* Prevent us from re-enabling polling on accident in late suspend */
>  	if (!display->drm->dev->power.is_suspended)
> -		intel_hpd_poll_enable(dev_priv);
> +		intel_hpd_poll_enable(display);
>  }
>=20
>  static void vlv_display_power_well_enable(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c
> b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 1f2798404f2c..1dbd3e841df3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -107,14 +107,14 @@ void intel_display_reset_finish(struct intel_displa=
y
> *display, bool test_only)
>  		intel_display_driver_init_hw(display);
>  		intel_clock_gating_init(i915);
>  		intel_cx0_pll_power_save_wa(display);
> -		intel_hpd_init(i915);
> +		intel_hpd_init(display);
>=20
>  		ret =3D __intel_display_driver_resume(display, state, ctx);
>  		if (ret)
>  			drm_err(display->drm,
>  				"Restoring old state failed with %i\n", ret);
>=20
> -		intel_hpd_poll_disable(i915);
> +		intel_hpd_poll_disable(display);
>  	}
>=20
>  	drm_atomic_state_put(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index a236b5fc7a3d..7d074770d793 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6117,7 +6117,7 @@ static void intel_dp_oob_hotplug_event(struct
> drm_connector *connector,
>  	spin_unlock_irq(&i915->irq_lock);
>=20
>  	if (need_work)
> -		intel_hpd_schedule_detection(i915);
> +		intel_hpd_schedule_detection(display);
>  }
>=20
>  static const struct drm_connector_funcs intel_dp_connector_funcs =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index c69b1f5fd160..9bde28ce1979 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -118,7 +118,7 @@ intel_connector_hpd_pin(struct intel_connector
> *connector)
>=20
>  /**
>   * intel_hpd_irq_storm_detect - gather stats and detect HPD IRQ storm on=
 a pin
> - * @dev_priv: private driver data pointer
> + * @display: display device
>   * @pin: the pin to gather stats on
>   * @long_hpd: whether the HPD IRQ was long or short
>   *
> @@ -127,13 +127,13 @@ intel_connector_hpd_pin(struct intel_connector
> *connector)
>   * responsible for further action.
>   *
>   * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD
> is
> - * stored in @dev_priv->display.hotplug.hpd_storm_threshold which defaul=
ts to
> + * stored in @display->hotplug.hpd_storm_threshold which defaults to
>   * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this
> threshold, and
>   * short IRQs count as +1. If this threshold is exceeded, it's considere=
d an
>   * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
>   *
>   * By default, most systems will only count long IRQs towards
> - * &dev_priv->display.hotplug.hpd_storm_threshold. However, some older
> systems also
> + * &display->hotplug.hpd_storm_threshold. However, some older systems al=
so
>   * suffer from short IRQ storms and must also track these. Because short=
 IRQ
>   * storms are naturally caused by sideband interactions with DP MST devi=
ces,
>   * short IRQ detection is only enabled for systems without DP MST suppor=
t.
> @@ -145,10 +145,10 @@ intel_connector_hpd_pin(struct intel_connector
> *connector)
>   *
>   * Return true if an IRQ storm was detected on @pin.
>   */
> -static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv=
,
> +static bool intel_hpd_irq_storm_detect(struct intel_display *display,
>  				       enum hpd_pin pin, bool long_hpd)
>  {
> -	struct intel_hotplug *hpd =3D &dev_priv->display.hotplug;
> +	struct intel_hotplug *hpd =3D &display->hotplug;
>  	unsigned long start =3D hpd->stats[pin].last_jiffies;
>  	unsigned long end =3D start +
> msecs_to_jiffies(HPD_STORM_DETECT_PERIOD);
>  	const int increment =3D long_hpd ? 10 : 1;
> @@ -156,7 +156,7 @@ static bool intel_hpd_irq_storm_detect(struct
> drm_i915_private *dev_priv,
>  	bool storm =3D false;
>=20
>  	if (!threshold ||
> -	    (!long_hpd && !dev_priv->display.hotplug.hpd_short_storm_enabled))
> +	    (!long_hpd && !display->hotplug.hpd_short_storm_enabled))
>  		return false;
>=20
>  	if (!time_in_range(jiffies, start, end)) {
> @@ -167,11 +167,11 @@ static bool intel_hpd_irq_storm_detect(struct
> drm_i915_private *dev_priv,
>  	hpd->stats[pin].count +=3D increment;
>  	if (hpd->stats[pin].count > threshold) {
>  		hpd->stats[pin].state =3D HPD_MARK_DISABLED;
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "HPD interrupt storm detected on PIN %d\n", pin);
>  		storm =3D true;
>  	} else {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Received HPD interrupt on PIN %d - cnt: %d\n",
>  			      pin,
>  			      hpd->stats[pin].count);
> @@ -180,56 +180,65 @@ static bool intel_hpd_irq_storm_detect(struct
> drm_i915_private *dev_priv,
>  	return storm;
>  }
>=20
> -static bool detection_work_enabled(struct drm_i915_private *i915)
> +static bool detection_work_enabled(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&i915->irq_lock);
>=20
> -	return i915->display.hotplug.detection_work_enabled;
> +	return display->hotplug.detection_work_enabled;
>  }
>=20
>  static bool
> -mod_delayed_detection_work(struct drm_i915_private *i915, struct
> delayed_work *work, int delay)
> +mod_delayed_detection_work(struct intel_display *display, struct delayed=
_work
> *work, int delay)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&i915->irq_lock);
>=20
> -	if (!detection_work_enabled(i915))
> +	if (!detection_work_enabled(display))
>  		return false;
>=20
>  	return mod_delayed_work(i915->unordered_wq, work, delay);
>  }
>=20
>  static bool
> -queue_delayed_detection_work(struct drm_i915_private *i915, struct
> delayed_work *work, int delay)
> +queue_delayed_detection_work(struct intel_display *display, struct
> delayed_work *work, int delay)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&i915->irq_lock);
>=20
> -	if (!detection_work_enabled(i915))
> +	if (!detection_work_enabled(display))
>  		return false;
>=20
>  	return queue_delayed_work(i915->unordered_wq, work, delay);
>  }
>=20
>  static bool
> -queue_detection_work(struct drm_i915_private *i915, struct work_struct
> *work)
> +queue_detection_work(struct intel_display *display, struct work_struct *=
work)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&i915->irq_lock);
>=20
> -	if (!detection_work_enabled(i915))
> +	if (!detection_work_enabled(display))
>  		return false;
>=20
>  	return queue_work(i915->unordered_wq, work);
>  }
>=20
>  static void
> -intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
> +intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	bool hpd_disabled =3D false;
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		enum hpd_pin pin;
>=20
> @@ -238,15 +247,15 @@ intel_hpd_irq_storm_switch_to_polling(struct
> drm_i915_private *dev_priv)
>=20
>  		pin =3D intel_connector_hpd_pin(connector);
>  		if (pin =3D=3D HPD_NONE ||
> -		    dev_priv->display.hotplug.stats[pin].state !=3D
> HPD_MARK_DISABLED)
> +		    display->hotplug.stats[pin].state !=3D HPD_MARK_DISABLED)
>  			continue;
>=20
> -		drm_info(&dev_priv->drm,
> +		drm_info(display->drm,
>  			 "HPD interrupt storm detected on connector %s: "
>  			 "switching from hotplug detection to polling\n",
>  			 connector->base.name);
>=20
> -		dev_priv->display.hotplug.stats[pin].state =3D HPD_DISABLED;
> +		display->hotplug.stats[pin].state =3D HPD_DISABLED;
>  		connector->base.polled =3D DRM_CONNECTOR_POLL_CONNECT |
>  			DRM_CONNECTOR_POLL_DISCONNECT;
>  		hpd_disabled =3D true;
> @@ -255,18 +264,18 @@ intel_hpd_irq_storm_switch_to_polling(struct
> drm_i915_private *dev_priv)
>=20
>  	/* Enable polling and queue hotplug re-enabling. */
>  	if (hpd_disabled) {
> -		drm_kms_helper_poll_reschedule(&dev_priv->drm);
> -		mod_delayed_detection_work(dev_priv,
> -					   &dev_priv-
> >display.hotplug.reenable_work,
> +		drm_kms_helper_poll_reschedule(display->drm);
> +		mod_delayed_detection_work(display,
> +					   &display->hotplug.reenable_work,
>=20
> msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
>  	}
>  }
>=20
>  static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>  {
> -	struct drm_i915_private *dev_priv =3D
> -		container_of(work, typeof(*dev_priv),
> -			     display.hotplug.reenable_work.work);
> +	struct intel_display *display =3D
> +		container_of(work, typeof(*display),
> hotplug.reenable_work.work);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	intel_wakeref_t wakeref;
> @@ -276,15 +285,15 @@ static void intel_hpd_irq_storm_reenable_work(struc=
t
> work_struct *work)
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		pin =3D intel_connector_hpd_pin(connector);
>  		if (pin =3D=3D HPD_NONE ||
> -		    dev_priv->display.hotplug.stats[pin].state !=3D HPD_DISABLED)
> +		    display->hotplug.stats[pin].state !=3D HPD_DISABLED)
>  			continue;
>=20
>  		if (connector->base.polled !=3D connector->polled)
> -			drm_dbg(&dev_priv->drm,
> +			drm_dbg(display->drm,
>  				"Reenabling HPD on connector %s\n",
>  				connector->base.name);
>  		connector->base.polled =3D connector->polled;
> @@ -292,8 +301,8 @@ static void intel_hpd_irq_storm_reenable_work(struct
> work_struct *work)
>  	drm_connector_list_iter_end(&conn_iter);
>=20
>  	for_each_hpd_pin(pin) {
> -		if (dev_priv->display.hotplug.stats[pin].state =3D=3D HPD_DISABLED)
> -			dev_priv->display.hotplug.stats[pin].state =3D
> HPD_ENABLED;
> +		if (display->hotplug.stats[pin].state =3D=3D HPD_DISABLED)
> +			display->hotplug.stats[pin].state =3D HPD_ENABLED;
>  	}
>=20
>  	intel_hpd_irq_setup(dev_priv);
> @@ -407,7 +416,7 @@ static void i915_digport_work_func(struct work_struct
> *work)
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +	for_each_intel_encoder(display->drm, encoder) {
>  		struct intel_digital_port *dig_port;
>  		enum hpd_pin pin =3D encoder->hpd_pin;
>  		bool long_hpd, short_hpd;
> @@ -433,9 +442,9 @@ static void i915_digport_work_func(struct work_struct
> *work)
>=20
>  	if (old_bits) {
>  		spin_lock_irq(&dev_priv->irq_lock);
> -		dev_priv->display.hotplug.event_bits |=3D old_bits;
> -		queue_delayed_detection_work(dev_priv,
> -					     &dev_priv-
> >display.hotplug.hotplug_work, 0);
> +		display->hotplug.event_bits |=3D old_bits;
> +		queue_delayed_detection_work(display,
> +					     &display->hotplug.hotplug_work, 0);
>  		spin_unlock_irq(&dev_priv->irq_lock);
>  	}
>  }
> @@ -481,8 +490,8 @@ static void i915_hotplug_work_func(struct work_struct
> *work)
>  	int changed_connectors =3D 0;
>  	u32 blocked_hpd_pin_mask;
>=20
> -	mutex_lock(&dev_priv->drm.mode_config.mutex);
> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
> +	mutex_lock(&display->drm->mode_config.mutex);
> +	drm_dbg_kms(display->drm, "running encoder hotplug functions\n");
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
> @@ -493,18 +502,18 @@ static void i915_hotplug_work_func(struct work_stru=
ct
> *work)
>  	hotplug->retry_bits &=3D ~hpd_retry_bits;
>=20
>  	/* Enable polling for connectors which had HPD IRQ storms */
> -	intel_hpd_irq_storm_switch_to_polling(dev_priv);
> +	intel_hpd_irq_storm_switch_to_polling(display);
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	/* Skip calling encode hotplug handlers if ignore long HPD set*/
> -	if (dev_priv->display.hotplug.ignore_long_hpd) {
> -		drm_dbg_kms(&dev_priv->drm, "Ignore HPD flag on - skip
> encoder hotplug handlers\n");
> -		mutex_unlock(&dev_priv->drm.mode_config.mutex);
> +	if (display->hotplug.ignore_long_hpd) {
> +		drm_dbg_kms(display->drm, "Ignore HPD flag on - skip encoder
> hotplug handlers\n");
> +		mutex_unlock(&display->drm->mode_config.mutex);
>  		return;
>  	}
>=20
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		enum hpd_pin pin;
>  		u32 hpd_bit;
> @@ -523,7 +532,7 @@ static void i915_hotplug_work_func(struct work_struct
> *work)
>  			else
>  				connector->hotplug_retries++;
>=20
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "Connector %s (pin %i) received hotplug
> event. (retry %d)\n",
>  				    connector->base.name, pin,
>  				    connector->hotplug_retries);
> @@ -546,12 +555,12 @@ static void i915_hotplug_work_func(struct work_stru=
ct
> *work)
>  		}
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
> -	mutex_unlock(&dev_priv->drm.mode_config.mutex);
> +	mutex_unlock(&display->drm->mode_config.mutex);
>=20
>  	if (changed_connectors =3D=3D 1)
>=20
> 	drm_kms_helper_connector_hotplug_event(first_changed_connector);
>  	else if (changed_connectors > 0)
> -		drm_kms_helper_hotplug_event(&dev_priv->drm);
> +		drm_kms_helper_hotplug_event(display->drm);
>=20
>  	if (first_changed_connector)
>  		drm_connector_put(first_changed_connector);
> @@ -560,10 +569,10 @@ static void i915_hotplug_work_func(struct work_stru=
ct
> *work)
>  	retry &=3D ~changed;
>  	if (retry) {
>  		spin_lock_irq(&dev_priv->irq_lock);
> -		dev_priv->display.hotplug.retry_bits |=3D retry;
> +		display->hotplug.retry_bits |=3D retry;
>=20
> -		mod_delayed_detection_work(dev_priv,
> -					   &dev_priv-
> >display.hotplug.hotplug_work,
> +		mod_delayed_detection_work(display,
> +					   &display->hotplug.hotplug_work,
>=20
> msecs_to_jiffies(HPD_RETRY_DELAY));
>  		spin_unlock_irq(&dev_priv->irq_lock);
>  	}
> @@ -572,7 +581,7 @@ static void i915_hotplug_work_func(struct work_struct
> *work)
>=20
>  /**
>   * intel_hpd_irq_handler - main hotplug irq handler
> - * @dev_priv: drm_i915_private
> + * @display: display device
>   * @pin_mask: a mask of hpd pins that have triggered the irq
>   * @long_mask: a mask of hpd pins that may be long hpd pulses
>   *
> @@ -586,10 +595,10 @@ static void i915_hotplug_work_func(struct work_stru=
ct
> *work)
>   * Here, we do hotplug irq storm detection and mitigation, and pass furt=
her
>   * processing to appropriate bottom halves.
>   */
> -void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> +void intel_hpd_irq_handler(struct intel_display *display,
>  			   u32 pin_mask, u32 long_mask)
>  {
> -	struct intel_display *display =3D to_intel_display(&dev_priv->drm);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  	bool storm_detected =3D false;
>  	bool queue_dig =3D false, queue_hp =3D false;
> @@ -608,7 +617,7 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>  	 * as each pin may have up to two encoders (HDMI and DP) and
>  	 * only the one of them (DP) will have ->hpd_pulse().
>  	 */
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +	for_each_intel_encoder(display->drm, encoder) {
>  		bool long_hpd;
>=20
>  		pin =3D encoder->hpd_pin;
> @@ -620,7 +629,7 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>=20
>  		long_hpd =3D long_mask & BIT(pin);
>=20
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(display->drm,
>  			"digital hpd on [ENCODER:%d:%s] - %s\n",
>  			encoder->base.base.id, encoder->base.name,
>  			long_hpd ? "long" : "short");
> @@ -630,10 +639,10 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>=20
>  		if (long_hpd) {
>  			long_hpd_pulse_mask |=3D BIT(pin);
> -			dev_priv->display.hotplug.long_hpd_pin_mask |=3D
> BIT(pin);
> +			display->hotplug.long_hpd_pin_mask |=3D BIT(pin);
>  		} else {
>  			short_hpd_pulse_mask |=3D BIT(pin);
> -			dev_priv->display.hotplug.short_hpd_pin_mask |=3D
> BIT(pin);
> +			display->hotplug.short_hpd_pin_mask |=3D BIT(pin);
>  		}
>  	}
>=20
> @@ -644,20 +653,20 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>  		if (!(BIT(pin) & pin_mask))
>  			continue;
>=20
> -		if (dev_priv->display.hotplug.stats[pin].state =3D=3D HPD_DISABLED)
> {
> +		if (display->hotplug.stats[pin].state =3D=3D HPD_DISABLED) {
>  			/*
>  			 * On GMCH platforms the interrupt mask bits only
>  			 * prevent irq generation, not the setting of the
>  			 * hotplug bits itself. So only WARN about unexpected
>  			 * interrupts on saner platforms.
>  			 */
> -			drm_WARN_ONCE(&dev_priv->drm,
> !HAS_GMCH(dev_priv),
> +			drm_WARN_ONCE(display->drm, !HAS_GMCH(display),
>  				      "Received HPD interrupt on pin %d although
> disabled\n",
>  				      pin);
>  			continue;
>  		}
>=20
> -		if (dev_priv->display.hotplug.stats[pin].state !=3D HPD_ENABLED)
> +		if (display->hotplug.stats[pin].state !=3D HPD_ENABLED)
>  			continue;
>=20
>  		/*
> @@ -668,15 +677,15 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>  		if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin)))
> {
>  			long_hpd =3D long_hpd_pulse_mask & BIT(pin);
>  		} else {
> -			dev_priv->display.hotplug.event_bits |=3D BIT(pin);
> +			display->hotplug.event_bits |=3D BIT(pin);
>  			long_hpd =3D true;
>=20
>  			if (!hpd_pin_is_blocked(display, pin))
>  				queue_hp =3D true;
>  		}
>=20
> -		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
> -			dev_priv->display.hotplug.event_bits &=3D ~BIT(pin);
> +		if (intel_hpd_irq_storm_detect(display, pin, long_hpd)) {
> +			display->hotplug.event_bits &=3D ~BIT(pin);
>  			storm_detected =3D true;
>  			queue_hp =3D true;
>  		}
> @@ -696,17 +705,17 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>  	 * deadlock.
>  	 */
>  	if (queue_dig)
> -		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv-
> >display.hotplug.dig_port_work);
> +		queue_work(display->hotplug.dp_wq, &display-
> >hotplug.dig_port_work);
>  	if (queue_hp)
> -		queue_delayed_detection_work(dev_priv,
> -					     &dev_priv-
> >display.hotplug.hotplug_work, 0);
> +		queue_delayed_detection_work(display,
> +					     &display->hotplug.hotplug_work, 0);
>=20
>  	spin_unlock(&dev_priv->irq_lock);
>  }
>=20
>  /**
>   * intel_hpd_init - initializes and enables hpd support
> - * @dev_priv: i915 device instance
> + * @display: display device instance
>   *
>   * This function enables the hotplug support. It requires that interrupt=
s have
>   * already been enabled with intel_irq_init_hw(). From this point on hot=
plug and
> @@ -718,16 +727,17 @@ void intel_hpd_irq_handler(struct drm_i915_private
> *dev_priv,
>   *
>   * Also see: intel_hpd_poll_enable() and intel_hpd_poll_disable().
>   */
> -void intel_hpd_init(struct drm_i915_private *dev_priv)
> +void intel_hpd_init(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	int i;
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
>  	for_each_hpd_pin(i) {
> -		dev_priv->display.hotplug.stats[i].count =3D 0;
> -		dev_priv->display.hotplug.stats[i].state =3D HPD_ENABLED;
> +		display->hotplug.stats[i].count =3D 0;
> +		display->hotplug.stats[i].state =3D HPD_ENABLED;
>  	}
>=20
>  	/*
> @@ -739,19 +749,19 @@ void intel_hpd_init(struct drm_i915_private *dev_pr=
iv)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
> -static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i91=
5)
> +static void i915_hpd_poll_detect_connectors(struct intel_display *displa=
y)
>  {
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	struct intel_connector *first_changed_connector =3D NULL;
>  	int changed =3D 0;
>=20
> -	mutex_lock(&i915->drm.mode_config.mutex);
> +	mutex_lock(&display->drm->mode_config.mutex);
>=20
> -	if (!i915->drm.mode_config.poll_enabled)
> +	if (!display->drm->mode_config.poll_enabled)
>  		goto out;
>=20
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		if (!(connector->base.polled & DRM_CONNECTOR_POLL_HPD))
>  			continue;
> @@ -769,7 +779,7 @@ static void i915_hpd_poll_detect_connectors(struct
> drm_i915_private *i915)
>  	drm_connector_list_iter_end(&conn_iter);
>=20
>  out:
> -	mutex_unlock(&i915->drm.mode_config.mutex);
> +	mutex_unlock(&display->drm->mode_config.mutex);
>=20
>  	if (!changed)
>  		return;
> @@ -777,25 +787,24 @@ static void i915_hpd_poll_detect_connectors(struct
> drm_i915_private *i915)
>  	if (changed =3D=3D 1)
>=20
> 	drm_kms_helper_connector_hotplug_event(&first_changed_connector-
> >base);
>  	else
> -		drm_kms_helper_hotplug_event(&i915->drm);
> +		drm_kms_helper_hotplug_event(display->drm);
>=20
>  	drm_connector_put(&first_changed_connector->base);
>  }
>=20
>  static void i915_hpd_poll_init_work(struct work_struct *work)
>  {
> -	struct drm_i915_private *dev_priv =3D
> -		container_of(work, struct drm_i915_private,
> -			     display.hotplug.poll_init_work);
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_display *display =3D
> +		container_of(work, typeof(*display), hotplug.poll_init_work);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	intel_wakeref_t wakeref;
>  	bool enabled;
>=20
> -	mutex_lock(&dev_priv->drm.mode_config.mutex);
> +	mutex_lock(&display->drm->mode_config.mutex);
>=20
> -	enabled =3D READ_ONCE(dev_priv->display.hotplug.poll_enabled);
> +	enabled =3D READ_ONCE(display->hotplug.poll_enabled);
>  	/*
>  	 * Prevent taking a power reference from this sequence of
>  	 * i915_hpd_poll_init_work() -> drm_helper_hpd_irq_event() ->
> @@ -805,14 +814,14 @@ static void i915_hpd_poll_init_work(struct work_str=
uct
> *work)
>  	if (!enabled) {
>  		wakeref =3D intel_display_power_get(display,
>=20
> POWER_DOMAIN_DISPLAY_CORE);
> -		drm_WARN_ON(&dev_priv->drm,
> -			    READ_ONCE(dev_priv-
> >display.hotplug.poll_enabled));
> -		cancel_work(&dev_priv->display.hotplug.poll_init_work);
> +		drm_WARN_ON(display->drm,
> +			    READ_ONCE(display->hotplug.poll_enabled));
> +		cancel_work(&display->hotplug.poll_init_work);
>  	}
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		enum hpd_pin pin;
>=20
> @@ -820,7 +829,7 @@ static void i915_hpd_poll_init_work(struct work_struc=
t
> *work)
>  		if (pin =3D=3D HPD_NONE)
>  			continue;
>=20
> -		if (dev_priv->display.hotplug.stats[pin].state =3D=3D HPD_DISABLED)
> +		if (display->hotplug.stats[pin].state =3D=3D HPD_DISABLED)
>  			continue;
>=20
>  		connector->base.polled =3D connector->polled;
> @@ -834,16 +843,16 @@ static void i915_hpd_poll_init_work(struct work_str=
uct
> *work)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	if (enabled)
> -		drm_kms_helper_poll_reschedule(&dev_priv->drm);
> +		drm_kms_helper_poll_reschedule(display->drm);
>=20
> -	mutex_unlock(&dev_priv->drm.mode_config.mutex);
> +	mutex_unlock(&display->drm->mode_config.mutex);
>=20
>  	/*
>  	 * We might have missed any hotplugs that happened while we were
>  	 * in the middle of disabling polling
>  	 */
>  	if (!enabled) {
> -		i915_hpd_poll_detect_connectors(dev_priv);
> +		i915_hpd_poll_detect_connectors(display);
>=20
>  		intel_display_power_put(display,
>  					POWER_DOMAIN_DISPLAY_CORE,
> @@ -853,7 +862,7 @@ static void i915_hpd_poll_init_work(struct work_struc=
t
> *work)
>=20
>  /**
>   * intel_hpd_poll_enable - enable polling for connectors with hpd
> - * @dev_priv: i915 device instance
> + * @display: display device instance
>   *
>   * This function enables polling for all connectors which support HPD.
>   * Under certain conditions HPD may not be functional. On most Intel GPU=
s,
> @@ -867,15 +876,14 @@ static void i915_hpd_poll_init_work(struct work_str=
uct
> *work)
>   *
>   * Also see: intel_hpd_init() and intel_hpd_poll_disable().
>   */
> -void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
> +void intel_hpd_poll_enable(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
> -	if (!HAS_DISPLAY(dev_priv) ||
> -	    !intel_display_device_enabled(display))
> +	if (!HAS_DISPLAY(display) || !intel_display_device_enabled(display))
>  		return;
>=20
> -	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
> +	WRITE_ONCE(display->hotplug.poll_enabled, true);
>=20
>  	/*
>  	 * We might already be holding dev->mode_config.mutex, so do this in a
> @@ -884,14 +892,14 @@ void intel_hpd_poll_enable(struct drm_i915_private
> *dev_priv)
>  	 * this worker anyway
>  	 */
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	queue_detection_work(dev_priv,
> -			     &dev_priv->display.hotplug.poll_init_work);
> +	queue_detection_work(display,
> +			     &display->hotplug.poll_init_work);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
>  /**
>   * intel_hpd_poll_disable - disable polling for connectors with hpd
> - * @dev_priv: i915 device instance
> + * @display: display device instance
>   *
>   * This function disables polling for all connectors which support HPD.
>   * Under certain conditions HPD may not be functional. On most Intel GPU=
s,
> @@ -908,26 +916,28 @@ void intel_hpd_poll_enable(struct drm_i915_private
> *dev_priv)
>   *
>   * Also see: intel_hpd_init() and intel_hpd_poll_enable().
>   */
> -void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
> +void intel_hpd_poll_disable(struct intel_display *display)
>  {
> -	if (!HAS_DISPLAY(dev_priv))
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
> -	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
> +	WRITE_ONCE(display->hotplug.poll_enabled, false);
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	queue_detection_work(dev_priv,
> -			     &dev_priv->display.hotplug.poll_init_work);
> +	queue_detection_work(display,
> +			     &display->hotplug.poll_init_work);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
> -void intel_hpd_poll_fini(struct drm_i915_private *i915)
> +void intel_hpd_poll_fini(struct intel_display *display)
>  {
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>=20
>  	/* Kill all the work that may have been queued by hpd. */
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		intel_connector_cancel_modeset_retry_work(connector);
>  		intel_hdcp_cancel_works(connector);
> @@ -935,70 +945,70 @@ void intel_hpd_poll_fini(struct drm_i915_private
> *i915)
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>=20
> -void intel_hpd_init_early(struct drm_i915_private *i915)
> +void intel_hpd_init_early(struct intel_display *display)
>  {
> -	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
> +	INIT_DELAYED_WORK(&display->hotplug.hotplug_work,
>  			  i915_hotplug_work_func);
> -	INIT_WORK(&i915->display.hotplug.dig_port_work,
> i915_digport_work_func);
> -	INIT_WORK(&i915->display.hotplug.poll_init_work,
> i915_hpd_poll_init_work);
> -	INIT_DELAYED_WORK(&i915->display.hotplug.reenable_work,
> +	INIT_WORK(&display->hotplug.dig_port_work, i915_digport_work_func);
> +	INIT_WORK(&display->hotplug.poll_init_work, i915_hpd_poll_init_work);
> +	INIT_DELAYED_WORK(&display->hotplug.reenable_work,
>  			  intel_hpd_irq_storm_reenable_work);
>=20
> -	i915->display.hotplug.hpd_storm_threshold =3D
> HPD_STORM_DEFAULT_THRESHOLD;
> +	display->hotplug.hpd_storm_threshold =3D
> HPD_STORM_DEFAULT_THRESHOLD;
>  	/* If we have MST support, we want to avoid doing short HPD IRQ storm
>  	 * detection, as short HPD storms will occur as a natural part of
>  	 * sideband messaging with MST.
>  	 * On older platforms however, IRQ storms can occur with both long and
>  	 * short pulses, as seen on some G4x systems.
>  	 */
> -	i915->display.hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(i915);
> +	display->hotplug.hpd_short_storm_enabled =3D !HAS_DP_MST(display);
>  }
>=20
> -static bool cancel_all_detection_work(struct drm_i915_private *i915)
> +static bool cancel_all_detection_work(struct intel_display *display)
>  {
>  	bool was_pending =3D false;
>=20
> -	if (cancel_delayed_work_sync(&i915->display.hotplug.hotplug_work))
> +	if (cancel_delayed_work_sync(&display->hotplug.hotplug_work))
>  		was_pending =3D true;
> -	if (cancel_work_sync(&i915->display.hotplug.poll_init_work))
> +	if (cancel_work_sync(&display->hotplug.poll_init_work))
>  		was_pending =3D true;
> -	if (cancel_delayed_work_sync(&i915->display.hotplug.reenable_work))
> +	if (cancel_delayed_work_sync(&display->hotplug.reenable_work))
>  		was_pending =3D true;
>=20
>  	return was_pending;
>  }
>=20
> -void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
> +void intel_hpd_cancel_work(struct intel_display *display)
>  {
> -	struct intel_display *display =3D to_intel_display(&dev_priv->drm);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
>  	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
>=20
> -	dev_priv->display.hotplug.long_hpd_pin_mask =3D 0;
> -	dev_priv->display.hotplug.short_hpd_pin_mask =3D 0;
> -	dev_priv->display.hotplug.event_bits =3D 0;
> -	dev_priv->display.hotplug.retry_bits =3D 0;
> +	display->hotplug.long_hpd_pin_mask =3D 0;
> +	display->hotplug.short_hpd_pin_mask =3D 0;
> +	display->hotplug.event_bits =3D 0;
> +	display->hotplug.retry_bits =3D 0;
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
> -	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
> +	cancel_work_sync(&display->hotplug.dig_port_work);
>=20
>  	/*
>  	 * All other work triggered by hotplug events should be canceled by
>  	 * now.
>  	 */
> -	if (cancel_all_detection_work(dev_priv))
> -		drm_dbg_kms(&dev_priv->drm, "Hotplug detection work still
> active\n");
> +	if (cancel_all_detection_work(display))
> +		drm_dbg_kms(display->drm, "Hotplug detection work still
> active\n");
>  }
>=20
> -static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
> +static void queue_work_for_missed_irqs(struct intel_display *display)
>  {
> -	struct intel_display *display =3D to_intel_display(&i915->drm);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	bool queue_hp_work =3D false;
>  	u32 blocked_hpd_pin_mask;
> @@ -1011,7 +1021,7 @@ static void queue_work_for_missed_irqs(struct
> drm_i915_private *i915)
>  		queue_hp_work =3D true;
>=20
>  	for_each_hpd_pin(pin) {
> -		switch (i915->display.hotplug.stats[pin].state) {
> +		switch (display->hotplug.stats[pin].state) {
>  		case HPD_MARK_DISABLED:
>  			queue_hp_work =3D true;
>  			break;
> @@ -1019,7 +1029,7 @@ static void queue_work_for_missed_irqs(struct
> drm_i915_private *i915)
>  		case HPD_ENABLED:
>  			break;
>  		default:
> -			MISSING_CASE(i915->display.hotplug.stats[pin].state);
> +			MISSING_CASE(display->hotplug.stats[pin].state);
>  		}
>  	}
>=20
> @@ -1027,7 +1037,7 @@ static void queue_work_for_missed_irqs(struct
> drm_i915_private *i915)
>  		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
>=20
>  	if (queue_hp_work)
> -		queue_delayed_detection_work(i915, &i915-
> >display.hotplug.hotplug_work, 0);
> +		queue_delayed_detection_work(display, &display-
> >hotplug.hotplug_work, 0);
>  }
>=20
>  static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pi=
n)
> @@ -1121,7 +1131,7 @@ void intel_hpd_unblock(struct intel_encoder *encode=
r)
>  	spin_lock_irq(&i915->irq_lock);
>=20
>  	if (unblock_hpd_pin(display, encoder->hpd_pin))
> -		queue_work_for_missed_irqs(i915);
> +		queue_work_for_missed_irqs(display);
>=20
>  	spin_unlock_irq(&i915->irq_lock);
>  }
> @@ -1156,30 +1166,35 @@ void intel_hpd_clear_and_unblock(struct
> intel_encoder *encoder)
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
> -void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
> +void intel_hpd_enable_detection_work(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	spin_lock_irq(&i915->irq_lock);
> -	i915->display.hotplug.detection_work_enabled =3D true;
> -	queue_work_for_missed_irqs(i915);
> +	display->hotplug.detection_work_enabled =3D true;
> +	queue_work_for_missed_irqs(display);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
> -void intel_hpd_disable_detection_work(struct drm_i915_private *i915)
> +void intel_hpd_disable_detection_work(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	spin_lock_irq(&i915->irq_lock);
> -	i915->display.hotplug.detection_work_enabled =3D false;
> +	display->hotplug.detection_work_enabled =3D false;
>  	spin_unlock_irq(&i915->irq_lock);
>=20
> -	cancel_all_detection_work(i915);
> +	cancel_all_detection_work(display);
>  }
>=20
> -bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
> +bool intel_hpd_schedule_detection(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	unsigned long flags;
>  	bool ret;
>=20
>  	spin_lock_irqsave(&i915->irq_lock, flags);
> -	ret =3D queue_delayed_detection_work(i915, &i915-
> >display.hotplug.hotplug_work, 0);
> +	ret =3D queue_delayed_detection_work(display, &display-
> >hotplug.hotplug_work, 0);
>  	spin_unlock_irqrestore(&i915->irq_lock, flags);
>=20
>  	return ret;
> @@ -1188,14 +1203,15 @@ bool intel_hpd_schedule_detection(struct
> drm_i915_private *i915)
>  static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_hotplug *hotplug =3D &dev_priv->display.hotplug;
> +	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>=20
>  	/* Synchronize with everything first in case there's been an HPD
>  	 * storm, but we haven't finished handling it in the kernel yet
>  	 */
>  	intel_synchronize_irq(dev_priv);
> -	flush_work(&dev_priv->display.hotplug.dig_port_work);
> -	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
> +	flush_work(&display->hotplug.dig_port_work);
> +	flush_delayed_work(&display->hotplug.hotplug_work);
>=20
>  	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
>  	seq_printf(m, "Detected: %s\n",
> @@ -1210,7 +1226,8 @@ static ssize_t i915_hpd_storm_ctl_write(struct file
> *file,
>  {
>  	struct seq_file *m =3D file->private_data;
>  	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_hotplug *hotplug =3D &dev_priv->display.hotplug;
> +	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	unsigned int new_threshold;
>  	int i;
>  	char *newline;
> @@ -1235,11 +1252,11 @@ static ssize_t i915_hpd_storm_ctl_write(struct fi=
le
> *file,
>  		return -EINVAL;
>=20
>  	if (new_threshold > 0)
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Setting HPD storm detection threshold to %d\n",
>  			    new_threshold);
>  	else
> -		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm
> detection\n");
> +		drm_dbg_kms(display->drm, "Disabling HPD storm detection\n");
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>  	hotplug->hpd_storm_threshold =3D new_threshold;
> @@ -1249,7 +1266,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file
> *file,
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	/* Re-enable hpd immediately if we were in an irq storm */
> -	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
> +	flush_delayed_work(&display->hotplug.reenable_work);
>=20
>  	return len;
>  }
> @@ -1271,9 +1288,10 @@ static const struct file_operations
> i915_hpd_storm_ctl_fops =3D {
>  static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D m->private;
> +	struct intel_display *display =3D &dev_priv->display;
>=20
>  	seq_printf(m, "Enabled: %s\n",
> -		   str_yes_no(dev_priv-
> >display.hotplug.hpd_short_storm_enabled));
> +		   str_yes_no(display->hotplug.hpd_short_storm_enabled));
>=20
>  	return 0;
>  }
> @@ -1291,7 +1309,8 @@ static ssize_t i915_hpd_short_storm_ctl_write(struc=
t
> file *file,
>  {
>  	struct seq_file *m =3D file->private_data;
>  	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_hotplug *hotplug =3D &dev_priv->display.hotplug;
> +	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	char *newline;
>  	char tmp[16];
>  	int i;
> @@ -1312,11 +1331,11 @@ static ssize_t
> i915_hpd_short_storm_ctl_write(struct file *file,
>=20
>  	/* Reset to the "default" state for this system */
>  	if (strcmp(tmp, "reset") =3D=3D 0)
> -		new_state =3D !HAS_DP_MST(dev_priv);
> +		new_state =3D !HAS_DP_MST(display);
>  	else if (kstrtobool(tmp, &new_state) !=3D 0)
>  		return -EINVAL;
>=20
> -	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
> +	drm_dbg_kms(display->drm, "%sabling HPD short storm detection\n",
>  		    new_state ? "En" : "Dis");
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> @@ -1327,7 +1346,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struc=
t
> file *file,
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	/* Re-enable hpd immediately if we were in an irq storm */
> -	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
> +	flush_delayed_work(&display->hotplug.reenable_work);
>=20
>  	return len;
>  }
> @@ -1341,14 +1360,15 @@ static const struct file_operations
> i915_hpd_short_storm_ctl_fops =3D {
>  	.write =3D i915_hpd_short_storm_ctl_write,
>  };
>=20
> -void intel_hpd_debugfs_register(struct drm_i915_private *i915)
> +void intel_hpd_debugfs_register(struct intel_display *display)
>  {
> -	struct drm_minor *minor =3D i915->drm.primary;
> +	struct drm_minor *minor =3D display->drm->primary;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>  	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
>  			    i915, &i915_hpd_storm_ctl_fops);
>  	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor-
> >debugfs_root,
>  			    i915, &i915_hpd_short_storm_ctl_fops);
>  	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor-
> >debugfs_root,
> -			    &i915->display.hotplug.ignore_long_hpd);
> +			    &display->hotplug.ignore_long_hpd);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h
> b/drivers/gpu/drm/i915/display/intel_hotplug.h
> index f189b871904e..edc41c9d3d65 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -8,31 +8,31 @@
>=20
>  #include <linux/types.h>
>=20
> -struct drm_i915_private;
> +enum port;
>  struct intel_connector;
>  struct intel_digital_port;
> +struct intel_display;
>  struct intel_encoder;
> -enum port;
>=20
> -void intel_hpd_poll_enable(struct drm_i915_private *dev_priv);
> -void intel_hpd_poll_disable(struct drm_i915_private *dev_priv);
> -void intel_hpd_poll_fini(struct drm_i915_private *i915);
> +void intel_hpd_poll_enable(struct intel_display *display);
> +void intel_hpd_poll_disable(struct intel_display *display);
> +void intel_hpd_poll_fini(struct intel_display *display);
>  enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *enc=
oder,
>  					       struct intel_connector *connector);
> -void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> +void intel_hpd_irq_handler(struct intel_display *display,
>  			   u32 pin_mask, u32 long_mask);
>  void intel_hpd_trigger_irq(struct intel_digital_port *dig_port);
> -void intel_hpd_init(struct drm_i915_private *dev_priv);
> -void intel_hpd_init_early(struct drm_i915_private *i915);
> -void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
> +void intel_hpd_init(struct intel_display *display);
> +void intel_hpd_init_early(struct intel_display *display);
> +void intel_hpd_cancel_work(struct intel_display *display);
>  enum hpd_pin intel_hpd_pin_default(enum port port);
>  void intel_hpd_block(struct intel_encoder *encoder);
>  void intel_hpd_unblock(struct intel_encoder *encoder);
>  void intel_hpd_clear_and_unblock(struct intel_encoder *encoder);
> -void intel_hpd_debugfs_register(struct drm_i915_private *i915);
> +void intel_hpd_debugfs_register(struct intel_display *display);
>=20
> -void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
> -void intel_hpd_disable_detection_work(struct drm_i915_private *i915);
> -bool intel_hpd_schedule_detection(struct drm_i915_private *i915);
> +void intel_hpd_enable_detection_work(struct intel_display *display);
> +void intel_hpd_disable_detection_work(struct intel_display *display);
> +bool intel_hpd_schedule_detection(struct intel_display *display);
>=20
>  #endif /* __INTEL_HOTPLUG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 2137ac7b882a..e6320838df59 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -472,7 +472,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_status)
>  				   dev_priv->display.hotplug.hpd,
>  				   i9xx_port_hotplug_long_detect);
>=20
> -		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	}
>=20
>  	if ((IS_G4X(dev_priv) ||
> @@ -483,6 +483,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_status)
>=20
>  void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	/*
> @@ -509,7 +510,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  			   dev_priv->display.hotplug.pch_hpd,
>  			   pch_port_hotplug_long_detect);
>=20
> -	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
>  void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
> @@ -543,7 +544,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private
> *i915, u32 iir)
>  			"pica hotplug event received, stat 0x%08x, pins 0x%08x,
> long 0x%08x\n",
>  			hotplug_trigger, pin_mask, long_mask);
>=20
> -		intel_hpd_irq_handler(i915, pin_mask, long_mask);
> +		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	}
>=20
>  	if (trigger_aux)
> @@ -587,7 +588,7 @@ void icp_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>  	}
>=20
>  	if (pin_mask)
> -		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +		intel_hpd_irq_handler(display, pin_mask, long_mask);
>=20
>  	if (pch_iir & SDE_GMBUS_ICP)
>  		intel_gmbus_irq_handler(display);
> @@ -624,7 +625,7 @@ void spt_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>  	}
>=20
>  	if (pin_mask)
> -		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +		intel_hpd_irq_handler(display, pin_mask, long_mask);
>=20
>  	if (pch_iir & SDE_GMBUS_CPT)
>  		intel_gmbus_irq_handler(display);
> @@ -632,6 +633,7 @@ void spt_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>=20
>  void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
> @@ -641,11 +643,12 @@ void ilk_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  			   dev_priv->display.hotplug.hpd,
>  			   ilk_port_hotplug_long_detect);
>=20
> -	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
>  void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> PCH_PORT_HOTPLUG, 0, 0);
> @@ -655,11 +658,12 @@ void bxt_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  			   dev_priv->display.hotplug.hpd,
>  			   bxt_port_hotplug_long_detect);
>=20
> -	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
>  void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	u32 trigger_tc =3D iir & GEN11_DE_TC_HOTPLUG_MASK;
>  	u32 trigger_tbt =3D iir & GEN11_DE_TBT_HOTPLUG_MASK;
> @@ -687,7 +691,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  	}
>=20
>  	if (pin_mask)
> -		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> +		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	else
>  		drm_err(&dev_priv->drm,
>  			"Unexpected DE HPD interrupt 0x%08x\n", iir);
> @@ -1467,9 +1471,11 @@ void intel_hpd_irq_setup(struct drm_i915_private
> *i915)
>=20
>  void intel_hotplug_irq_init(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
> +
>  	intel_hpd_init_pins(i915);
>=20
> -	intel_hpd_init_early(i915);
> +	intel_hpd_init_early(display);
>=20
>  	if (HAS_GMCH(i915)) {
>  		if (I915_HAS_HOTPLUG(i915))
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index ce3cc93ea211..510e240c000b 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -981,7 +981,7 @@ void i915_driver_shutdown(struct drm_i915_private
> *i915)
>  	intel_dp_mst_suspend(display);
>=20
>  	intel_irq_suspend(i915);
> -	intel_hpd_cancel_work(i915);
> +	intel_hpd_cancel_work(display);
>=20
>  	if (HAS_DISPLAY(i915))
>  		intel_display_driver_suspend_access(display);
> @@ -1064,7 +1064,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_display_driver_suspend(display);
>=20
>  	intel_irq_suspend(dev_priv);
> -	intel_hpd_cancel_work(dev_priv);
> +	intel_hpd_cancel_work(display);
>=20
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_suspend_access(display);
> @@ -1227,7 +1227,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_resume_access(display);
>=20
> -	intel_hpd_init(dev_priv);
> +	intel_hpd_init(display);
>=20
>  	intel_display_driver_resume(display);
>=20
> @@ -1235,7 +1235,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  		intel_display_driver_enable_user_access(display);
>  		drm_kms_helper_poll_enable(dev);
>  	}
> -	intel_hpd_poll_disable(dev_priv);
> +	intel_hpd_poll_disable(display);
>=20
>  	intel_opregion_resume(display);
>=20
> @@ -1575,7 +1575,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	assert_forcewakes_inactive(&dev_priv->uncore);
>=20
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> -		intel_hpd_poll_enable(dev_priv);
> +		intel_hpd_poll_enable(display);
>=20
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
> @@ -1633,8 +1633,8 @@ static int intel_runtime_resume(struct device *kdev=
)
>  	 * everyone else do it here.
>  	 */
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
> -		intel_hpd_init(dev_priv);
> -		intel_hpd_poll_disable(dev_priv);
> +		intel_hpd_init(display);
> +		intel_hpd_poll_disable(display);
>  	}
>=20
>  	skl_watermark_ipc_update(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 37ca4a35daf2..de53615571be 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1280,6 +1280,7 @@ int intel_irq_install(struct drm_i915_private *dev_=
priv)
>   */
>  void intel_irq_uninstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	int irq =3D to_pci_dev(dev_priv->drm.dev)->irq;
>=20
>  	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
> @@ -1289,7 +1290,7 @@ void intel_irq_uninstall(struct drm_i915_private
> *dev_priv)
>=20
>  	free_irq(irq, dev_priv);
>=20
> -	intel_hpd_cancel_work(dev_priv);
> +	intel_hpd_cancel_work(display);
>  	dev_priv->irqs_enabled =3D false;
>  }
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c
> b/drivers/gpu/drm/xe/display/xe_display.c
> index 0b0aca7a25af..263459323bf7 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -173,7 +173,7 @@ static void xe_display_fini(void *arg)
>  	struct xe_device *xe =3D arg;
>  	struct intel_display *display =3D &xe->display;
>=20
> -	intel_hpd_poll_fini(xe);
> +	intel_hpd_poll_fini(display);
>  	intel_hdcp_component_fini(display);
>  	intel_audio_deinit(display);
>  	intel_display_driver_remove(display);
> @@ -305,7 +305,7 @@ static void xe_display_enable_d3cold(struct xe_device
> *xe)
>  	intel_dmc_suspend(display);
>=20
>  	if (has_display(xe))
> -		intel_hpd_poll_enable(xe);
> +		intel_hpd_poll_enable(display);
>  }
>=20
>  static void xe_display_disable_d3cold(struct xe_device *xe)
> @@ -322,10 +322,10 @@ static void xe_display_disable_d3cold(struct xe_dev=
ice
> *xe)
>=20
>  	intel_display_driver_init_hw(display);
>=20
> -	intel_hpd_init(xe);
> +	intel_hpd_init(display);
>=20
>  	if (has_display(xe))
> -		intel_hpd_poll_disable(xe);
> +		intel_hpd_poll_disable(display);
>=20
>  	intel_opregion_resume(display);
>=20
> @@ -355,7 +355,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>=20
>  	xe_display_flush_cleanup_work(xe);
>=20
> -	intel_hpd_cancel_work(xe);
> +	intel_hpd_cancel_work(display);
>=20
>  	if (has_display(xe)) {
>  		intel_display_driver_suspend_access(display);
> @@ -385,7 +385,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>=20
>  	xe_display_flush_cleanup_work(xe);
>  	intel_dp_mst_suspend(display);
> -	intel_hpd_cancel_work(xe);
> +	intel_hpd_cancel_work(display);
>=20
>  	if (has_display(xe))
>  		intel_display_driver_suspend_access(display);
> @@ -400,6 +400,8 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>=20
>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
>  {
> +	struct intel_display *display =3D &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>=20
> @@ -408,7 +410,7 @@ void xe_display_pm_runtime_suspend(struct xe_device
> *xe)
>  		return;
>  	}
>=20
> -	intel_hpd_poll_enable(xe);
> +	intel_hpd_poll_enable(display);
>  }
>=20
>  void xe_display_pm_suspend_late(struct xe_device *xe)
> @@ -482,7 +484,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	if (has_display(xe))
>  		intel_display_driver_resume_access(display);
>=20
> -	intel_hpd_init(xe);
> +	intel_hpd_init(display);
>=20
>  	if (has_display(xe)) {
>  		intel_display_driver_resume(display);
> @@ -491,7 +493,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	}
>=20
>  	if (has_display(xe))
> -		intel_hpd_poll_disable(xe);
> +		intel_hpd_poll_disable(display);
>=20
>  	intel_opregion_resume(display);
>=20
> @@ -502,6 +504,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>=20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
> +	struct intel_display *display =3D &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>=20
> @@ -510,8 +514,8 @@ void xe_display_pm_runtime_resume(struct xe_device
> *xe)
>  		return;
>  	}
>=20
> -	intel_hpd_init(xe);
> -	intel_hpd_poll_disable(xe);
> +	intel_hpd_init(display);
> +	intel_hpd_poll_disable(display);
>  	skl_watermark_ipc_update(xe);
>  }
>=20
> --
> 2.39.5

