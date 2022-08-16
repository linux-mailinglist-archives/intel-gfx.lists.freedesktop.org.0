Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7786595476
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 10:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B9711BAF9;
	Tue, 16 Aug 2022 08:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC92C18AB75
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 08:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660637065; x=1692173065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TCr+ogNzPat7y31vLvJDRVELQHFHZbmsP4WnOpeWWEs=;
 b=Xoujq+8T8TEt7IyB3W0itxMiy2ts5Zmc2TcHKDSLSHN8btBjs/Q+/1o4
 LJjsFyWMpty3aZa64yvio9ubWO6MUAuMBwdpi9qs4qaVhwhxEox1gAgfI
 agQ8O2uLbENqAk4p+MhTC7u1jlodjwxzhtMHsrMbeYuKxg9TPKheNt2/z
 VML0dBhK3ZXJkn2kIYcN1XCKLANc9TKtL+LmYoiR0A+TvzXcRclfWbM5t
 jrvVUeOLbKKi5rcVm2+9kIyt1RJqUi7zD7E0QTwt7yXE/+1d1Ej9HQAho
 er1ljnFoDyTy86GHNMAhm6eARqewaCnp9XhCaBGKtzvyQnqk0Q3ku3hGe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="318147898"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="318147898"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="635795711"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2022 01:04:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 01:04:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 01:04:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 01:04:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 01:04:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWpwtzmpRFV9tfCqFDn3ktPcfUtbIPUG/390IuCPwBqFsEvtDKi04gGz2mOMJKqRiIqKIhU439gmSZo5kXwM2Ja2g7UfKn1sTuk2aO5TjHYLQvy0pA4b/Eu35l4vS+URxUda75IBToFmdSznpJFgDpA7TvZiclj7UPZ1qaWq+1XA1F0tSeDC8/ATgHZh24IB8gPycA1uxi5QZB5gsde5FcVFUZlYlWsZUbhoNxqYVjn3mIlV4/cC5MgHuxSKoVntXrttNH9QOgzzLi7zu53MDlszaU9Ia/AfdYU9Linwl4J2s4/xqmw965rpuyClkUyhaomjM/hfUNaevcWrI3B5Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4sdJfff9x45EAL8PYLmXlgAzZiM8ZW2tc/JsgwyUzY=;
 b=NeAq1sslbXvTJtnkvh8xcNBVfTPCN81n7Chinnr6KoHsaOYunedgtJnj7a+C81WVNAH/L6fBsXsEAwHCmq0jAcLbXdoBPo/Hxv7n0ZDk+D9D+P4twh9lVWb0UHs6Oj0S+MbBatie3g8KYhFvnyc0sSodAhr6b1+UeX5Jn1u8/Y92reYkq274Fpjc3kQSNdiPVFdyK9IM2iRFC2amPaKiJRafc2S8cRU30TMPzj/Jcvc3eJXzFkUdLXMdcObJD51RkkzWAFCm9bK5P1sgpo2/e0BJscvN/EjNhyqlUNMr7u7z/s+Ela76ypD8Jf99cZi2PKhFih7bsygGeawY/UIFlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR11MB1963.namprd11.prod.outlook.com (2603:10b6:3:10e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Tue, 16 Aug 2022 08:04:21 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 08:04:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus members
 under display.gmbus
Thread-Index: AQHYrZWGBLUkCX4tMUCK2Z6OaLr8Xq2qsrSAgAAjXoCABhVHcIAAQ0iAgAADdnA=
Date: Tue, 16 Aug 2022 08:04:21 +0000
Message-ID: <DM6PR11MB3177A644A3E5225BEA655486BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87sfm2rlv2.fsf@intel.com>
 <DM6PR11MB3177133F3D84617B275A7393BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87v8qsr5ie.fsf@intel.com>
In-Reply-To: <87v8qsr5ie.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40e92be6-e361-45a5-e065-08da7f5ded0d
x-ms-traffictypediagnostic: DM5PR11MB1963:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ji3xeHgCwgzlj7xsrwKAP5iBKnyL/D4iuSTomKhR5KFkQRJQSho8++VvkabRQ+K3u6AkgenRl/Z7qQxNXjRJWIYfZjJuLVbiDzg6jTPgWo0cio0yAxkI8OOOEVDhMednhhV5g8x71o+6Eat6rqhuzm59PDJNYDTAJnkTkO0JU0L50X4biCKVX7LPx9KeOJRb5I1lIEtjrN8J8eJVYQFuaT5Au7jrfBsMl3dPhFwcyVsKec0SNduzpBu+atXNRayBYKB9DRX4EdhRKQyiw8OB7jCK/Mp4DX3tZ2tbNzy2r8GxHHsyzAyabHsxjqB5hTgocrLDdNxcEFJnleVnRP+E5K8ui1SxQIsxEw+B+sN/2lxXYRemoddmlRSSlZIge3nKltKtX5AvczVLH3exNWyiWzFysyKg6cSxwTRabiFoZCzjiqhNt2VVKQIPi0Wwj7mmCgq1WVTOwJib1Q2Nbq4RMcHP4FKzlpZA4Odq0QJ7uAVuyVXfNGQaYCDQcPtccacGHP4usz7+DHC0MeVz8k1ZE5/gQ3MHShc4yfIImH5y/KlzD2a46y6CcCIxz3tmyKr9/XcFCsBDfBZidMrOFVWGRtuR3IgoYBUD5oQSQnfoj+u6wqfKJc5KMsQzKJLY6/YJrT69z9aAvHxKPmU2KaXgl4sKMD/1zJhdwJhso/Df8aLi5ucmkmCTgI9m4F5MhumTy0pCCgJ/Wb5dUKVGRBgUuo0YwKvEu2vcP9n4iyuLUBGssGYbjWfXMnkHCQ5beUxTpDowdkmkDDb31wsyxZKLqsc2IUugnSFyWlAdgvEd81SF0bsGEbSvhd1LHzdlaEHY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(346002)(376002)(39860400002)(8676002)(4326008)(66556008)(66446008)(316002)(76116006)(110136005)(66476007)(64756008)(5660300002)(55016003)(82960400001)(2906002)(52536014)(8936002)(66946007)(38100700002)(122000001)(86362001)(38070700005)(33656002)(6506007)(186003)(7696005)(55236004)(53546011)(41300700001)(478600001)(71200400001)(26005)(9686003)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7CS1X6GEUJ/26TPqwxdwyjGtztIWdxlQ9wzWkQPIsg/zqjuteObL0pAWgmUT?=
 =?us-ascii?Q?DdJNTz/+ZMgw22LNLEgCySJGHKmVs1ox8QrM3VMqcg8gSEwJir4tvWfCV33i?=
 =?us-ascii?Q?IkCbN9U2dQMN9uCm7fAEe7tlN8DFW76GujfsTn+IbECEKJd/WuQTLSvlfZad?=
 =?us-ascii?Q?RevSlWy/j+2ePBt+W8aGiQv3+Iv+XQ8+gYkxzRbA/f5XB4dt+vj/1KSuPWCz?=
 =?us-ascii?Q?t+iQYo5wmZDmQ1zjeECUkwLLVvXv+uSqg/OmUqpy0SXG2YOfQnBYhltfvyj2?=
 =?us-ascii?Q?hVJKrqwUF8e4qallHgETzLhGZrW/4V3qzuAvfO2EjqLKhh0g/96D8Xf3ILoD?=
 =?us-ascii?Q?UJb8CmhXQN3smYxxoqyoreg08bw0vco3dxZVbaWjBwOLggGblDzdPiA6dtDz?=
 =?us-ascii?Q?djgb8LvdxIFMBI7XCqXBmHDuElnKmeB2DwC7oWjkGoY+YNpkfax713UyWZaT?=
 =?us-ascii?Q?KbW1GAjXTIOZ3Xt9t8G5vZKcsIIkrfG2GToQWAXay/8ZVK3bNSvrL3DIHvnu?=
 =?us-ascii?Q?66ddmKTkYfv43DeRbE+lVMuo9d/GWHAs9V8okWwwdMs+U+0sHqCvg8pTafip?=
 =?us-ascii?Q?vKJ7X5d8/78phBft4cr3ZLz8NjJBeifc7yPlecOa9AxEv99PIVK6OFoRsotN?=
 =?us-ascii?Q?FIxnA5e42EoX2BHRFRT4s8ADhIKtn4MtWkq088PlJx2g7cmI/Io+O1Qmjhp3?=
 =?us-ascii?Q?Ev4RjGo/uFopdyfUFoEeJ6L1LDjJOEY4/zuqR5OLUfQ83buj0l++jFUR/bJR?=
 =?us-ascii?Q?RRm1Q7bmuwWEf7bPSVlzUhb3BdRXv4CbruhcmKCbfk4c7lSSoMVW2wsZvYin?=
 =?us-ascii?Q?jVUvCIxzj2aPEvmOorUluU2FAhskicNF0KRWIOnA6ihJRzaorCm5TsE6nqR2?=
 =?us-ascii?Q?6gDOhDakc7nO6/jT+EZ397HK3E0nomqjMdgmXJQppEhU6+tU0A/v5sftWQ5e?=
 =?us-ascii?Q?Mw1cIG4sLRhd9P0tNkcF97R3m4/xt1Yn6kRrVsUUTCIB1x5rTs6tPXtJq/NP?=
 =?us-ascii?Q?PpVFSjXrnfkbMzv3pVMILwv+7Ze9tVBRZyxBuqckqEpLE8WRVHEJxhWh7H7V?=
 =?us-ascii?Q?5jjgL+87D1FDYvXLPS3o5SZSzPIcnAObWFPXykWdwGAIjdCmGsFQFEJLj5S4?=
 =?us-ascii?Q?nYWgk+rtSluw51hQO4trVYRRhODaCTKW5WCuhjlUfrrxNwiEj/9CZYaMJpe7?=
 =?us-ascii?Q?JVP823ZjAxiby+judVmx3P8oEWiY/1N6m1iP9otzhDehUjGR33DDNW6HY9QQ?=
 =?us-ascii?Q?GEDTRuvgHI2eNEImZ1Le538q45o8njduonSUJ83jlDDbmLRK6DCV456yS2Ag?=
 =?us-ascii?Q?gmjE1lsiSk8vwq1gcpB03RfAdppJxHgP49KDXyAHMqIC/QlOJ8ZRamsP32xv?=
 =?us-ascii?Q?vAJig0nWKoOdTQI2usn+CUG3MoZsBPpB4LQVdW9V/V5gTt7JFEHg/DOtUlqO?=
 =?us-ascii?Q?BApbUfF5cwItAm9AqmQCrkHZMuaX/7RfNSboVVuM0QEZlzKEy8wxeF18C78w?=
 =?us-ascii?Q?F2PPZ/3kSqN0Jxo3XXP7MZ2+jAQJdK6/ipi47LS+10fjEJYTAS9d8l0ZLGhJ?=
 =?us-ascii?Q?eGx7tTw/oKO8Ziv6mfNpOgBYxf58xD33qwexAGHD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e92be6-e361-45a5-e065-08da7f5ded0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 08:04:21.1985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O5wj1yaa0iEQJKDrFotrbh7QK9uDMzvJs4YbloRU8KjBuj8Ws037y9yHxsYYCb5WwGUmbVbmGGKx5yQ5vTwGbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
 members under display.gmbus
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, August 16, 2022 1:21 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> members under display.gmbus
>=20
> On Tue, 16 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Friday, August 12, 2022 12:26 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> >> Subject: RE: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> >> members under display.gmbus
> >>
> >> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> >> -----Original Message-----
> >> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> >> >> Behalf Of Jani Nikula
> >> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> >> To: intel-gfx@lists.freedesktop.org
> >> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> >> <lucas.demarchi@intel.com>
> >> >> Subject: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> >> >> members under display.gmbus
> >> >>
> >> >> Move display related members under drm_i915_private display sub-
> >> struct.
> >> >>
> >> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
> >> >>  .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
> >> >>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
> >> >>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++------=
----
> >> >>  drivers/gpu/drm/i915/i915_drv.h               | 16 -------
> >> >>  drivers/gpu/drm/i915/i915_irq.c               |  4 +-
> >> >>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
> >> >>  7 files changed, 59 insertions(+), 52 deletions(-)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> index 6095f5800a2e..ea40c75c2986 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >> @@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct
> >> >> drm_i915_private *dev_priv,
> >> >>        * functions use cdclk. Not all platforms/ports do,
> >> >>        * but we'll lock them all for simplicity.
> >> >>        */
> >> >> -     mutex_lock(&dev_priv->gmbus_mutex);
> >> >> +     mutex_lock(&dev_priv->display.gmbus.mutex);
> >> >>       for_each_intel_dp(&dev_priv->drm, encoder) {
> >> >>               struct intel_dp *intel_dp =3D
> >> >> enc_to_intel_dp(encoder);
> >> >>
> >> >>               mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
> >> >> -                                  &dev_priv->gmbus_mutex);
> >> >> +
> >> >> + &dev_priv->display.gmbus.mutex);
> >> >>       }
> >> >>
> >> >>       intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe); @@
> >> >> -2113,7
> >> >> +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private
> >> >> +*dev_priv,
> >> >>
> >> >>               mutex_unlock(&intel_dp->aux.hw_mutex);
> >> >>       }
> >> >> -     mutex_unlock(&dev_priv->gmbus_mutex);
> >> >> +     mutex_unlock(&dev_priv->display.gmbus.mutex);
> >> >>
> >> >>       for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> >> >>               struct intel_dp *intel_dp =3D
> >> >> enc_to_intel_dp(encoder); diff -- git
> >> >> a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >> index 306584c038c9..fe19d4f9a9ab 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >> @@ -6,7 +6,11 @@
> >> >>  #ifndef __INTEL_DISPLAY_CORE_H__
> >> >>  #define __INTEL_DISPLAY_CORE_H__
> >> >>
> >> >> +#include <linux/mutex.h>
> >> >>  #include <linux/types.h>
> >> >> +#include <linux/wait.h>
> >> >> +
> >> >> +#include "intel_gmbus.h"
> >> >>
> >> >>  struct drm_i915_private;
> >> >>  struct intel_atomic_state;
> >> >> @@ -78,6 +82,25 @@ struct intel_display {
> >> >>               /* Display internal color functions */
> >> >>               const struct intel_color_funcs *color;
> >> >>       } funcs;
> >> >> +
> >> >> +     /* Grouping using anonymous structs. Keep sorted. */
> >> >> +     struct {
> >> >> +             /*
> >> >> +              * Base address of where the gmbus and gpio blocks
> >> >> + are
> >> >> located
> >> >> +              * (either on PCH or on SoC for platforms without PCH=
).
> >> >> +              */
> >> >> +             u32 mmio_base;
> >> >> +
> >> >> +             /*
> >> >> +              * gmbus.mutex protects against concurrent usage of
> >> >> + the
> >> >> single
> >> >> +              * hw gmbus controller on different i2c buses.
> >> >> +              */
> >> >> +             struct mutex mutex;
> >> >> +
> >> >> +             struct intel_gmbus *bus[GMBUS_NUM_PINS];
> >> >> +
> >> >> +             wait_queue_head_t wait_queue;
> >> >> +     } gmbus;
> >> >>  };
> >> >
> >> > Can this be moved to struct intel_dp?
> >>
> >> Well, no. The data here is shared across all of them.
> >>
> > Then maybe we might need to think on this. I somehow feel having this
> under display wont look good. Since it's a low level bus communication, c=
an
> be tagged under bus related to interface.
> > I agree from your other comments that this is just a first step to clea=
nup
> i915 and there is scope to cleanup further.
>=20
> As I've explained elsewhere, the "display" here should be taken to be ver=
y
> high level. Not "a display device", but "everything related to display
> hardware". Only display needs gmbus, nothing else.
>=20
> There may be further cleanups to be made, but this series has a very spec=
ific
> purpose of splitting the display parts to a display sub-struct of
> drm_i915_private. This is already 39 patches, it's not even complete on t=
hat
> target, so need to not lose focus here.
> =09
Totally agree, lets take it up later after this series gets merged.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
