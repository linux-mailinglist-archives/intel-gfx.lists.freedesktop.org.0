Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A32A479F8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB72510EA98;
	Thu, 27 Feb 2025 10:16:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KGlpY5/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9966210EAA8;
 Thu, 27 Feb 2025 10:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651400; x=1772187400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kgn8x1z1e68zXkfQWDFsumsR8yO+Lb4EfxWjBBDV0n8=;
 b=KGlpY5/+c0DvDUJ9/f373aV8iq3Z2+PbiaA9InRqkHF/+Tjs0rJZMqPz
 WhbewPMKL3j+YaiTXosCuq69akZ0oraH6oznxgRnvsd5052XrJ9CS6VDX
 l/n/2zQ7tWwJjzdQTz15n0WM2qMeJLYpSzps7hCD3+LK4ggwyRycpOl0s
 YencFlH8iQ2LaLyCf8dS6curCZq2ASgTOjCgytkdbh+I9af3xoOVidPGN
 1sPdwRzR9rhtBDC6QLk3f3GjXfcRohscHpKcKNcOMFzeZ8X3JuY7kp4nj
 BFuzsIoMSMHLsy7x5eKBZVDKbHzja80doc6pP8EOKlklr/Hhdc6AVMgNu g==;
X-CSE-ConnectionGUID: YjyA6cQvR+eX+0bPEvo/Vw==
X-CSE-MsgGUID: 0/QcsXijTnW7TIkAuZaUdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52520499"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52520499"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:16:39 -0800
X-CSE-ConnectionGUID: TZ58D8c3Q+e7eHbl17abrg==
X-CSE-MsgGUID: S/tYbJ0KQrGll9mIukr0/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="117160258"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:16:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 27 Feb 2025 02:16:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 02:16:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:16:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n9ihe8Uky7diCeF5+6P+sMm2kSaTfW1MM2lFmKgCRUpaob+bPlWFFLz/Ivh0OhcefMloAJfmcB+O9oXz2gttAMBE7B013TEJL1kJiwWq6RCtIMcuxvZhpUhJVwLl/vwBqJ4uiWUix75q9KjAQR9o3jeItJ5thIvxnj0jlEnRLgEh4g32zCvH69NpGoa2KxFNvVLOKjqKXQ/UB4EolVvilqMjPR7baZSH893nQBYUzmQEfrEfZd0BW12xCQSroXUVoWEmMMh/hD7DO6on60pYBUjWxcjIDylUFDeYsVgYcd+v25YIGMF5EAPVODQQoCQtuaJwk7aynhobH5Q/oops8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7IbxOA/dcn89uqWCoXTXNTNVvI8ZZLOyqdL1Wr0M0E=;
 b=mzc7bbcqARqC03w0L8o+DASkLrNKb5jUE+4d/Thed7utg1uXnRIZpW701vViFtdp9EXZuAYD/N08zMwNk2au7NsTak0t2PVv97XTABREVJQVxqPgyRUMzo4ktWfYoN3nzJAMLXXVlvnV6o2EXbszk0YK9qCFZWW0kmfBQ8ikaUcrtuts4h61uVIh3FnG+mwZozVJDmHfeNB3mZ4seruwnIiyuw6OUPLyKvUi3HS8y6KYqGlW2tevJYtkzTCpMw4wO1B42Z97NOgyLvX7XwCel+NBbXnWyvUDLccOJyQ+OFrbC8Nic4xiRqTHMDFgOoAfx8EPGI48sII2s5a3SKQtNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5274.namprd11.prod.outlook.com (2603:10b6:408:133::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.21; Thu, 27 Feb
 2025 10:16:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 10:16:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 00/12] drm/i915: struct intel_display conversions, part
 2434235
Thread-Topic: [PATCH 00/12] drm/i915: struct intel_display conversions, part
 2434235
Thread-Index: AQHbh6VE6JZpD52fDUSyr/WecW4sdrNa8etw
Date: Thu, 27 Feb 2025 10:16:35 +0000
Message-ID: <SN7PR11MB675029123F2C57E96A96CB27E3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5274:EE_
x-ms-office365-filtering-correlation-id: eaf20edb-2ed8-491a-12ec-08dd5717d0fa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Q6WIa4NCl5QWlC1NwbMaYTYd8JDhLEVj0gqdz34DEvmGZDaw6DbgxW5Q3hcF?=
 =?us-ascii?Q?W4Ao8Oo2pGHZ8ez4IgN0wQ3NAy1UCNboiCr+AAhJfBZA8CelARb2BDwypw2+?=
 =?us-ascii?Q?1DLXkPQMNQ9fEgvsz49WOxgj8+mRlfUk7LMwlBT8Uw4kyTni67MDuTw6ZUNU?=
 =?us-ascii?Q?ubEZo5IMnn927f+jFc0k8UJ+tcmXmldaUFk4oBtSpNpVsN6eFyC1ND3XGf75?=
 =?us-ascii?Q?Vn93jMY9J2yMI9x+oEaNdW6d5PW1xmfpWuhfL+dDHMqjsd6Cr+LGDtxNWCl0?=
 =?us-ascii?Q?YjOjnXGslq/OCwXff5g8MbMSshSrDcwAlC6Q2XAEANu8aMyOFKPPYa+yT/O7?=
 =?us-ascii?Q?n4KcxNfRfA7q1s2UM5zDwc5waVDMhobYLt4F/vWtnatEGWDzgPLPoPT6W6Gx?=
 =?us-ascii?Q?002NT3YfNV5W1pVvncuFdrvIxW+AXu8ggLSF/HN7QVwLCzEA0HgofTSMSg6+?=
 =?us-ascii?Q?b3KJLDHa+kQM/yPAoCdQU5ljEjBBwRkIcSYe+sgrJhIcDV8qIXY4AK43kmTH?=
 =?us-ascii?Q?PmvbaWwDgEDmHEehUOi9ou0jC72dwIv7L/l5ApbrSP9jAQ4Y/zgbxnUMXftX?=
 =?us-ascii?Q?aiR8XkGlVLTkUyXu+iDetPCAA7KBKE/4WPK3o6l1i7C6itQH3RUndyJ0y4sW?=
 =?us-ascii?Q?Nwh31ahA9RUduiBdKFGl6oUvwHXLcq7AHFvWXUFQ7W2tqp16Lt/9p0dKkbvd?=
 =?us-ascii?Q?tBoUpmz53Byup7zIT/eDwCef8MA3tqVzFZ4K4pxpgqhK5r3KcwAWJGxs3J5P?=
 =?us-ascii?Q?BcBjU1PIZ38txzVLmASZ13/NiH0wdfdtCD5vWBbP/u0ahtYBCwF093kwbX4V?=
 =?us-ascii?Q?IXShEXWH3eJKNdnDm/PUN/qA1FkQ+IFRcOwBbSpfhErYU4X2h6voDOEpfRY0?=
 =?us-ascii?Q?pQKaLgPIJbBU5PdqLawbZC2OqPFjvtafiA8qIKFARn9fPR8bqOe91U1P2SMp?=
 =?us-ascii?Q?fLklzczOtWyG7R87rMBRSpyBJx62j5zVHdxd54rbfb1KDGH9SQ3YTDa6Jo81?=
 =?us-ascii?Q?ObZuJKBMEHpSN13pPsTAFaHjGx5wr0TyvFui9LLLcdV2FQrjHMVi0ZLxOvTG?=
 =?us-ascii?Q?keC6p0Vb7VwXQICIZDOZgkuG1pRNcMviDP/dnbMX+o6hcLrLT3t8S0QcAKOd?=
 =?us-ascii?Q?axNI/CchQGli7UEEoDiLiF5s+VECogZTAhSLwZ2sDtxZHqtr4l3fA7OjtA8v?=
 =?us-ascii?Q?pIYOXMTPwFuqUlwHROjwLK4uRNx3+wryBE9NiqeRI3cirEpwld/PJN2UHSHp?=
 =?us-ascii?Q?Rek2ZRkExFNWjt21d1hKqTp7f/Zw9Mxp8YGLx+7eMS87wjHj5UHnvuDzF4m6?=
 =?us-ascii?Q?e9FAYDMQo79K6jW5ZJ36A4PzwiMs4RcARXUTc4w5SApklARpyk7SQcgyKbvb?=
 =?us-ascii?Q?rBVYHOLIVQeaDL6LPeBXvjT5lr6MQfYIpOpwUiJsSSeBTKre9dNyBARE9ZbK?=
 =?us-ascii?Q?9YgBnBUTjyvg8IJLJ2vnProj7ziE0ioX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2NzZ7inIgF1tYWk4OnBOZs1ilxFinf7g94MqrtgV6XLIq/dMcvkDkxhf2A4w?=
 =?us-ascii?Q?NGr+8yfSaRL7D+aAqISkYCdIqAqjkegAG1/WJDhk/kgJxBpI0WBfN/3KENLx?=
 =?us-ascii?Q?0KGGPjuQVYXThNBUGGAu/71/+xenE10aFiYd2aAloy0s92PTJmg6QyXpYkqx?=
 =?us-ascii?Q?V64suRoAV/wZVlciW0BZFM+iUeQ5aYeYFJVaBPNlQzw54K3cPnL3beHg8XtQ?=
 =?us-ascii?Q?KgfwcaN4jzBA+10TEG2Jaf0HvPvchzifr9W5TxiP9dFcvBtcSz5bo2as7+EO?=
 =?us-ascii?Q?iOPG9ykROJyVJoMrs0mCqYHJXeToWRf/RXYgBkJsVEE4CTUkyaamq8wgzWjv?=
 =?us-ascii?Q?ciRZQ4rgUlasAkiAkaIU1ZYpi4qPo7YhjbCXF7U/JrhrSaghynfIZKGYjkMN?=
 =?us-ascii?Q?af/6G/NxIwVTqgYWIuH9BOR4ZLrSuKK+/772ArGeblArp5DWc+NSta3bUnnC?=
 =?us-ascii?Q?tEdD7/sQGfWyXBTfLxE24qqFW6lOm/GpCokpeYlJdxonNfLswvgAEK4LQDch?=
 =?us-ascii?Q?CEoiISNBRA3tvy+ZgF7+boYDSBZXVu9CsUH89nJzc8XGn9UN1ii3kj3KFFRl?=
 =?us-ascii?Q?ZoWmf9qQ1tj35LlcdD35lnoolDVmeAJA8RIlVy/Z4yatgXVUmMQ1+KMSEwPw?=
 =?us-ascii?Q?3NASprNrnYovb5AiMxxnbYzpux6TMyCr2yRg39+lepWiwv06/OFi31/DjXlS?=
 =?us-ascii?Q?+ChB4XwUs9MoljbDPWHAIpNyYCc6izq0nYNZqEfTAforDxpHO2TFrWbHd0lG?=
 =?us-ascii?Q?DaWZJMeIb4438RES5LB1+9aBqt4om87amfGUWzkm0matU0YLjrbZjCOU4Omm?=
 =?us-ascii?Q?OR/tnPDvhmra4TxQXTO1n4T4L0L1Wy9i6uOcNaU55bzLEXcvJvuOXuLS7GYU?=
 =?us-ascii?Q?zVbAMNwkqicaFn+DDVvGKi2Qhk/xvfsR8J4ySStZLmdYSAaimWdq4Qq0l/wu?=
 =?us-ascii?Q?mKGa34/vDtDQHG+jEzcOt+lwk9fPvLb7dw4wUqU+21HSK2PR9eeGZEkiCa0T?=
 =?us-ascii?Q?BKVFvcpT45Mfy/VUwRcjCxvWRLjzydo5g/mRWnCtaTtTAZ0sVXPvKsSIUigO?=
 =?us-ascii?Q?ugjNydhzbOzhV3tx1mZII8i6PWQEsvaQ3JpXTxycgcj0+wiTZXq1OqRUwT0L?=
 =?us-ascii?Q?kiW8fKn/j6MJo/nDBWOIGjS2OxrdttDZfu4av54Ktg78kJmzkJyKZGMJsvDb?=
 =?us-ascii?Q?D29oPDLc/tQjP+ipJhiIzHekwtDRUvSnFMlglCGilFwNzuiVNgQZl7+xqGb9?=
 =?us-ascii?Q?7GftWP54Z/2sl4npeLb9MWr3Io+9DZd9TAwfFi52r0XMqNoJfKm4iCjm9gCO?=
 =?us-ascii?Q?8dqlhh1jqt8r50eSN1Qoiva8pO94RfLLA9dkwDBGIMAKLqXUdbjvla0ePBc8?=
 =?us-ascii?Q?azcp4MGN1w+7/Mc4Z5nbBrt302/FhwKD+kzqPYDUowwveZjMl+MBZg8OEfR5?=
 =?us-ascii?Q?0vVILTJvu3GBHQcKbysfFU4ffiUAbxx6FUbl1/X8zvVw1ZwrUVfZvSK9sgsr?=
 =?us-ascii?Q?ovZHDhlf5UAhQhDMJjc7NgsUPmEMRYmz/ReReeJ8O6pLy2yYpLNUyyC+QWGn?=
 =?us-ascii?Q?hfHuCSXVT2g99p4FnSNEsLkBAlrCHwWlF9Ez674r?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf20edb-2ed8-491a-12ec-08dd5717d0fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 10:16:35.8340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f228XBEbgAVKn0CBP27wzbl0tOznWRmoStYqv0skb5yHVEW2/4o8rcl+pR3zc+vBnNIvhwdPJZ4lKsuRcjQJFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5274
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Tuesday, February 25, 2025 10:19 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 00/12] drm/i915: struct intel_display conversions, part
> 2434235
>=20
> More of the same.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
For the whole series

>=20
> Jani Nikula (12):
>   drm/i915/display: remove leftover struct drm_i915_private forward
>     declarations
>   drm/i915/debugfs: continue display debugfs struct intel_display
>     conversion
>   drm/i915/tdf: convert intel_tdf.[ch] to struct intel_display
>   drm/i915/snps: convert intel_snps_phy.[ch] to struct intel_display
>   drm/i915/dkl: convert intel_dkl_phy.[ch] to struct intel_display
>   drm/i915/drrs: convert intel_drrs.[ch] to struct intel_display
>   drm/i915/display: convert the M/N functions to struct intel_display
>   drm/i915/dpt: convert intel_dpt.[ch] interfaces to struct
>     intel_display
>   drm/i915/fbc: convert intel_fbc.[ch] to struct intel_display
>   drm/i915/rps: convert intel_display_rps.[ch] to struct intel_display
>   drm/i915/ddi: convert intel_wait_ddi_buf_idle() to struct
>     intel_display
>   drm/i915/fdi: convert intel_fdi.[ch] to struct intel_display
>=20
>  drivers/gpu/drm/i915/display/intel_atomic.h   |   1 -
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +-
>  .../drm/i915/display/intel_ddi_buf_trans.h    |   1 -
>  drivers/gpu/drm/i915/display/intel_display.c  | 102 ++--
>  drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  26 +-
>  .../drm/i915/display/intel_display_debugfs.h  |   6 +-
>  .../drm/i915/display/intel_display_driver.c   |   8 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  .../gpu/drm/i915/display/intel_display_rps.c  |   4 +-
>  .../gpu/drm/i915/display/intel_display_rps.h  |   4 +-
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   8 +-
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h  |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  24 +-
>  drivers/gpu/drm/i915/display/intel_dpt.h      |   7 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  45 +-
>  drivers/gpu/drm/i915/display/intel_drrs.h     |  10 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 113 ++---
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 464 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_fdi.h      |  16 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  11 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 -
>  .../drm/i915/display/intel_modeset_verify.c   |   3 +-
>  drivers/gpu/drm/i915/display/intel_overlay.h  |   1 -
>  .../gpu/drm/i915/display/intel_pch_display.c  |  35 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.h |   1 -
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  75 ++-
>  drivers/gpu/drm/i915/display/intel_snps_phy.h |   6 +-
>  drivers/gpu/drm/i915/display/intel_tdf.h      |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   4 +-
>  drivers/gpu/drm/xe/display/xe_display_rps.c   |   2 +-
>  drivers/gpu/drm/xe/display/xe_tdf.c           |   6 +-
>  36 files changed, 493 insertions(+), 546 deletions(-)
>=20
> --
> 2.39.5

