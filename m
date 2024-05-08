Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3338BFC78
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 13:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8465A10F53B;
	Wed,  8 May 2024 11:43:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJdjNPhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC60410F53B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 11:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715168613; x=1746704613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=23C0h641o+pOnvmSQpz8mXvUm3WiPzjuGXKjlLIjqK8=;
 b=aJdjNPhbkS0EjRtb3j/xaS5BpZ0LfKnQPowmRH48eatl7ZaVw6x+hxT4
 P9rcd4XYf5x4inGUthfSubEL4qxvw91szRuFfUqaQ3TZLxKFfMQHpKSMQ
 5YwGuV/c23+5An4b2590rQWexy+qVAmONzfDvSBlnyTfSfReIDrSwEW4+
 wfk+o2Ic714FnP9KK1eu9pHji1nUlxKZws8JJBSIiGdxMaYHNDvCI4xYt
 Czk76ftvgKb7VPFivjOg2YZoHklBjVfpcLxclkuUb0pj+kTHkU0U1Bfib
 XVghgz+245ZvIAmBKqL1OxNUAodTwwQMg8H/tCOcqP5hMr8v2pNm6u++S Q==;
X-CSE-ConnectionGUID: wm6cDx5hSEW1l7QcvtM2+A==
X-CSE-MsgGUID: yzO6f/AgRM6OGpL/2hj35Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="10889166"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10889166"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:43:32 -0700
X-CSE-ConnectionGUID: Jjx5p8onRyq80Gnzeob7eQ==
X-CSE-MsgGUID: jqIdyJVLTe26TyZwZL2PkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28731593"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 04:43:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 04:43:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 04:43:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 04:43:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 04:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2f26qxfBs73f3xgPk91jB7W4cP9Usv6fd+tgHQLO1ViabczSc+o7QeE93Qo4UbBlm/iCeZAl6dWAZGxtLRvwkXOEFXFe6tQC0vNUf1lGvPc7Nj5R1NRU7bXCo9EbcQ6TXPuDtWaIDkki38dvqW4Q+QloWLGIOjoogaP+YhXIZTajUQ9JAfAKjztUyXQ9YouFv63xTneJFUQeasRxTTtHFzAjB1mX/7lKq252Of6tGNCtN5SGr4AahITniigYutlHTk3O4DDehejWclumSRj0TVH1tKTOT2TPB7jEOpT9Qcn+8p6He86fPG+1DzwfvqBQ7nDq6awvPrbZu+P9dIG2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=23C0h641o+pOnvmSQpz8mXvUm3WiPzjuGXKjlLIjqK8=;
 b=F6ZZlxDhdZh+IpIKNiEGdAZ4VVTiFmRvZ54955IpNtduieNNfNbsWN1ixOBcyFbJ4GkwT71eUMtqaxL6OdnJ+WLu8580gUALR70tof2NIBO3LL86qax66WWo3wUHfdnQUO4ZZg5piumYUl1merHnhs3N4fBK8WNGmEFlD/xAajuuUsnb2js7dgZ/ts6s7lxcUkREMGJ+iKVEo1Sxx/KASTJWM+qmIA9OmjF/mW8vsiE27F3fJkVq9zMWydz86M0IUGYMu4v4ehPcTA/vQNRWPpSmtLuQerd14kiAKz2VVehTbzWmSgq8serBLQzyay52H0dqO/XCjNZ+LBDTGFbCLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Wed, 8 May
 2024 11:43:27 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.045; Wed, 8 May 2024
 11:43:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Topic: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Index: AQHan5YSD3Ayhk4uokappAeuaODKUrGKHESAgAAAclCAAAPJAIACjBPQgABw4wCAABu3MA==
Date: Wed, 8 May 2024 11:43:27 +0000
Message-ID: <IA0PR11MB7307289257C865A660C59A73BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87v83ok4kp.fsf@intel.com>
In-Reply-To: <87v83ok4kp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: 7bea21b5-6d15-495d-6eac-08dc6f54135c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?cVbOUG7cubDDtR0HnQ4RTexbERGJflSUdfA9etUAB5F0zqj8Zo3YxAiQxG?=
 =?iso-8859-1?Q?QAEI/dyN5gFLV4eUz5C2kFgXEa0Bh3UVV/Xkq7a+l4HNrnoV99gjKk7cwG?=
 =?iso-8859-1?Q?worTnnA9fnm/cKpPT/47MNkN/nKE+RyGFpPC7zVJ9UhFduk+i0NepP7VBN?=
 =?iso-8859-1?Q?1IcvkR1k7sNlvqLiWRwjSs/bFPsAlrgqXkisTRVYfVIal4A9YIOjYsKCQM?=
 =?iso-8859-1?Q?Yn4BgaI45C0pcClbyI97LXYe8oVpHU9kb5UAB7oTE8WxtKex02B6944BUL?=
 =?iso-8859-1?Q?LrdA4u/xCgJVht2iRChv7VjukaLX5wNe6PMPxJca8JprOaqbKuwgIlPd//?=
 =?iso-8859-1?Q?kYBB6lTD3IYNzEBNh1RX0jkhGG9hTNEuXilPcO4h3PqOzciIGCARVOPuUI?=
 =?iso-8859-1?Q?/r2TJcn4yOQemo/zCznlThynXb+OTkymPa+nzDjScNrSyeDKb6CoWXMqd0?=
 =?iso-8859-1?Q?SO4f1X/qnvZvWgUQ3yK1WE+aSIG12r3UIvAr934276xvuw7MxXW2aT0dhd?=
 =?iso-8859-1?Q?+wqQeLqe0uqU3KADk8gwqPPcpI0V94dI16yfLut280KFHxhX/aVwLwXdeL?=
 =?iso-8859-1?Q?mMPR8GhwPzTrJLUB0+l2Cr8+wg61Azfmjis7kYHkmPxviv5erUV/T2mfUU?=
 =?iso-8859-1?Q?zFDAc4Tr8HefzMUt36c15puEw8TvwYjTWkt1rADKCx5s5l5sNyCskPxJ9Z?=
 =?iso-8859-1?Q?xBXhw72NL1dug0BHyxhqe6GRzYde2Mguj5ZpTgqI2pI6rkC88pMFZROEFT?=
 =?iso-8859-1?Q?eW0LsRKx5AQRTltNThrNRJmqzWcgoxckwSEtZyH8qNeO0nF5I2W7piHYxI?=
 =?iso-8859-1?Q?mmU2s5YVMDA4JQi2Q2GeLzDNWbintmUVn1KWGC7O7CtRioJG0a4Z+g48Dj?=
 =?iso-8859-1?Q?FrOdaMqAe7X6olfyxLXWL8/2/28I2J58UWe7WKp4YDrzzVkFzsnWqeghgN?=
 =?iso-8859-1?Q?6/tyK59bDNvsgr8xdnfxJvKQQ5OsiZZlid+UFfYUzy+jWqAPufVureSjC2?=
 =?iso-8859-1?Q?PH/3Nda/mlSaHPGRE3iTls8bQwxPOvKYVy5ys1kYy1KkBnvXWWW5YlLdDb?=
 =?iso-8859-1?Q?9UzsGoscEt2pDJthKFoRx94WK4KOtsxEsMoGgsWTuGME9+nuGaLMh2L70D?=
 =?iso-8859-1?Q?MjiJXIIXR58Iu0X02EQY7JpomBROG2kpB8DOHw179K19NW85DfcWjfIok9?=
 =?iso-8859-1?Q?aOwPm7aW05S0k8bUe7fAIMpxKZn37iqExhhxRkQH2ojLXHd/CnFrcPVvXM?=
 =?iso-8859-1?Q?aZHLiipVHjoBH0F2S/iBRZvOaRBN5WgitDKRmWW/YOtEurJWXTGMO9UjdA?=
 =?iso-8859-1?Q?C+cqs8tSHQPcVPjDdNoq0Y93eMj4sCI0+Zi79SCqj5XKPdIv96q7Hxax4w?=
 =?iso-8859-1?Q?L5SoUY0hxsf1hTJnfxAVc13JYWnnyyPg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?uyDHrYvow6osCKNNBvs6xmRFMsYLiCXhFnTCDxh54cdlt/suDK3jyh3K9/?=
 =?iso-8859-1?Q?L6y3skotzjXp1voqHJnj2xyyQqDMb9m6UgrL9dgWcnWPczaIIvCfGFEl+k?=
 =?iso-8859-1?Q?Ba+8b9FaSZHt1X6y9wLJh4OnK9kKKZFdfYT5Vqz89hmnReq7yvwT9pBfNV?=
 =?iso-8859-1?Q?aRikKWNxS7qGTbW4vTU6o/AyIzXHcTAKbZht1VTC54KKwV6DO5+qlWHjA2?=
 =?iso-8859-1?Q?uQ6lCEldYAz49qegCt1GqjgB9u+aAUHsHZyHuwUTjGGsQc3iudx7uGAtuq?=
 =?iso-8859-1?Q?n5suPfJq8S1ntk03xNQncOPZ60zfaw++BXW4PEJ0I43pIO0zDAY9sVBjaV?=
 =?iso-8859-1?Q?SJoAl/kjFXcRrpVIEm5M/kOtdkQNv1HcsPFX7av1VhHdwHH9KEiyjvdFpB?=
 =?iso-8859-1?Q?abSU70XZ+rDtLC62I/mAfUygLkHzPS+oLgQ6xldpxR5Mah0u1iiDweoXAC?=
 =?iso-8859-1?Q?yeWnKfpNepO2idxaJ2FMzl3DWKywwZJR3U6hNU/6SmSoaIdzN2HTFY0aAL?=
 =?iso-8859-1?Q?kS0605ahlw1J7PrJG10NpZU/1W5dUWTmzTqAGBzB527PKLv+n7ut7comdv?=
 =?iso-8859-1?Q?JdgR8qPYbgb8QnLVTweelmFKPjBUcJkgGIqHvLJT46ZCPCu6bmK0KZrBMc?=
 =?iso-8859-1?Q?OMIonJ7Puc+pwKdIFrAPFKA9xisK860Dj+dTiGqeXRnfPOq+cbZlG+WOd3?=
 =?iso-8859-1?Q?d5kgEIzvgHTpOhzjjzRemKAA1R9EcEHqX3kqBdhrPq+qIVlzx+aF5KIKIk?=
 =?iso-8859-1?Q?HJNrz42+fGXYRGr/gasd/LaNTj9bumXvnV8DQp3v7fjp44OL+W/nl/2NDS?=
 =?iso-8859-1?Q?cdpghOUQ38c6eWNAHtEZiM1/rg0EmM6L8qHE/9NBwLHYkZiWrGPAQ7GaFh?=
 =?iso-8859-1?Q?Q8ThPcBPFZsCXknvNythT7jjrVsHQHVXiZO0OPoQd/BurnWM7o9cW8G9cM?=
 =?iso-8859-1?Q?MKjyq6zD9T1lYV5zuhYEK1L5QzAaWRpJYsmipiaKw/2IJUfz4XN81up1x1?=
 =?iso-8859-1?Q?gWnLmcj5L75sWXq/K/O71C/ELM5v5FF5Ta8n3PiJ3KQlR3JakrQUsPctL9?=
 =?iso-8859-1?Q?yDN4tRQSpKr15EhGIl6+mMC0OkZOzhPbTbkSTteAtYcv+/tk29z9c9vi0r?=
 =?iso-8859-1?Q?F+hZ09GrmBSChJ1tyLEQP+gO6vZm4GgdNTKi8vullyGB4aARwLZMvzoeNk?=
 =?iso-8859-1?Q?QbdpnjiL0jJ03MuOLIVKnG4XyQ4IeaK0JoK53j5wb0fZgMStyJEMdIrNyF?=
 =?iso-8859-1?Q?rBa5mDpFTwmfxOg+0Vgyc33ojzV1OQMeCDrwJVPmNUZulkG1IZ5iXt0+Kx?=
 =?iso-8859-1?Q?5zgKMMPJ6erKpuRHkGJLGTXud5u5Hv6XkTYWr1PxPBs65R993dNFawksAX?=
 =?iso-8859-1?Q?2c2llWLAZJN3MoxZUW9u1v6DThIjeOLSy3pkr5wm/Lg/B7V+XGLDwjr54z?=
 =?iso-8859-1?Q?RafSz0IVPa1DNTlhf2hikZvLZYd0yH7QvzLrJxyKrUdtMQsh1hA9OEuXzV?=
 =?iso-8859-1?Q?/qQIsQnCekubSNeGfosupo018bFakO5MVhF0YHKB5tv4XUB46yUIF+cFoj?=
 =?iso-8859-1?Q?wdk6MGaoIWiWOVHzHM704EsBkr2SmnrDdpcY6rb5NwMD1Et2XkYsOvYMib?=
 =?iso-8859-1?Q?cGG0FMyzTGjARtV9pLFb1udI1wFZrkKK/KCfcXj4Ykr2n+hPjPPr3NrUoe?=
 =?iso-8859-1?Q?6wBz+36nt/aY+IhjiRQgOER+lKVS8kVmMx+f1V+0?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bea21b5-6d15-495d-6eac-08dc6f54135c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 11:43:27.2353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f9zm5qcGBABaPLA+BhUJySkaf94zQG9avnkjrJiUoKu0hp3rZbds3OvwTVuB19z7HqpIJx8AGYIzYSPDDuMZaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
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
> Sent: Wednesday, May 8, 2024 3:29 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>=20
> On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> > This is the limitation from the retimer hardware.
>=20
> The commit message needs to reflect this.
>=20
> Do all units have a retimer with the limitation? Or could you have a DG2
> without the limitation? Do we need to check for that instead of blanket r=
emoval
> of UHBR 13.5 for DG2?
>=20
Changed the commit msg as below

Display 12+ hardware supports UHBR13.5 but due to the retimer constraints p=
latform doesn't support UHBR13.5. This is the same for mtl and UHBR13.5 is =
removed as part of the commit caf3d748f646 ("drm/i915/dp: Remove support fo=
r UHBR13.5")
This patch removes UHBR13.5 support for icl/dg2.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
