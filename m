Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 698EB590B56
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42060A52B1;
	Fri, 12 Aug 2022 04:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46B99A791
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660280003; x=1691816003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YdGpJFi6MLFR23g3B6GlPKP4BBSMgMrJhoEiG4AR74k=;
 b=VL7V1fF/CMPCdALLvsgAAI06zxBITo778kP4aHpiL0uHJnaxIB0skM7O
 6zDPnAGSSYWg8CX9QjnI/byXm2tnHdIpclHjfvE/y9Hri992xItt0Hvpo
 MLIyTqDOAoGBC5acy8rYYCZPjFSm2FU+WytEGjA0OMpB+v6ninSvJ5JeT
 YUzMee3KiOVn8jbgNcLcyVEDDangx6c+gmtLY+ln2Bu60FczuyI/TfA04
 PtrtVPg6oTImCvANeKGb03JfK50pFuoZpU+uYY7q6Oua6hzI8oi7DPdCK
 eijsMQtIU4QHTl6609RyBlYwgD6X2UeSucMOxxtXQ+RymCVlz1SxkT7OQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292784730"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292784730"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="695146431"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2022 21:53:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:53:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:53:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:53:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X11SOiQHPPSr6567HWxkbqldM1Ca+MN14j42B2Qp7hW2QNPbZbRYYO00cNExYfgptifBheBA0YOhUpMRd/WGxW7I95LxqocSkn0CBU5K8RgAZN7zXUQs+9S+JWx10GBRR8QEMoATVXGnvoChNkkSh7V6/uqFOuFhqWyJSmKEENMLGE+jJEqHdGLwDCDgaiK25gqkZQplGIqbum2MY7dDJWBmAZU7eIAGAYSNL16/3iZuNVpJ1+/bCFpCjaO6YAdZ7BQIh7FfhFm0epu6MGnavVdeetKgbkFbwtiRWWDaOYLhRuAXjgMf8ape6SS+koqCkkgIjA5ijmlMgPOCvT/LWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63zcA9uz9CUgYSkj4mv3Hj7KLTkTpXzALaSwvlQf+go=;
 b=UVunhYTheYVUigArQ4Nqm33iLCF4mh8d167X0QolfLewTfxZoZZuJjl6vftDb58ansHBKY4AJDqCOfa5UXpArgz4nvgf07s5DuDSFvL19Z1mp7psNeH8ygwAIP8apJiSZlzv6UysNA8ifPmBU/pprFg/WTy6sNPMogdak1g1GXoVLrC/dUIecNzwgA9kk4d2wCrBWufAu0SqxVYdMzQqMRg283FVj9xbbJVCFeyS9Y5ghUQKHmGgQVuNPmhO0Nld1YpnGENIMj8+PERhqAlJRkLJW2F8QmwDx8QuOlCHO+eBooHIx9OyJT3rVBw0vVOcL4LH/EsJw2d4yLXS9P3yYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3287.namprd11.prod.outlook.com (2603:10b6:a03:1c::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Fri, 12 Aug 2022 04:53:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:53:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus members
 under display.gmbus
Thread-Index: AQHYrZWGBLUkCX4tMUCK2Z6OaLr8Xq2qsrSA
Date: Fri, 12 Aug 2022 04:53:19 +0000
Message-ID: <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: f6aa8c17-f9d5-4174-835d-08da7c1e93c4
x-ms-traffictypediagnostic: BYAPR11MB3287:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ixFv7KnW9Cfn2szQVGALu3URDGJ7LnpU9dugEkH5R/IfrcRNxd3Af/yz5N0MKFyKtdPAojBZOdUTWM/V0817Dmp/nODxEBGPWeETqBYbBnwNYx6fnrXSDMGz71WLYmCSnzhr4FkqiD6rxGc6x9528HkynF/FGjrKSV2fWEnzYWiuYtsKNNZiEGgFyzn2yaNOlCz7u6Xc//QemZyuKtUR8m0CfYWPvIriHC9Nu/uizmdQ/Pzyp84qb+/v7cvdcOFvEo0fGcwGW3J/J4jpIKc2qxfu4EBS6gJqL9MQSoaH6nXWTlY/5sf09fwQxmC9YyRSWoaRW/SPiLpo0x7QWFEoDEoIATmzMbHc90TMTK3CKE0st+tfs4zH1dXJ3bbAx2GwTzCMJD8NYYU1HtnbS3qoEGHBbWnx7/rkK3G9Lq3S3/cvyAJgXVKy7+np+DVE1r82IXuBSRQcWF7fc2kFnioL8Pdrjnot+uTQ1RfsKQh1+Gamfm/mOvJiXLR40AQWacUX7AIUm8ePR/jiT4G8+PDTnVsdU71GK/W5uJ1xVePnL+maeQvUh7eJxgZkgTsvssjUVGZvcqDufAY9zB59qb46lwb4qYPxSE2qI74H70mPMy9RshU4sbI1EFE3vUs3fiLptPCBlSP0T7M0fNahzyKCWfdd9o5tOE+4EkvbhGiPIOaVV7kaTAC1uvL2DO3Og3p67P7oehNDRNC3gAiSS+eV7GuY1U6+pObC0tWmKzX3y+cV8CubmkXHmXPl1FzkAgl+CZ2EcJEj0ZK/lwO4u2bgKd2pi5qyIjywXr9sXXn3BDgcD7IjoPLmDGnpJbJrJY1h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(39860400002)(396003)(376002)(5660300002)(52536014)(38070700005)(54906003)(110136005)(316002)(66556008)(41300700001)(76116006)(66476007)(86362001)(6506007)(33656002)(4326008)(7696005)(66446008)(8936002)(2906002)(66946007)(8676002)(53546011)(9686003)(64756008)(55236004)(26005)(83380400001)(82960400001)(186003)(107886003)(478600001)(71200400001)(55016003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bLFKQ5e75f/4ZTOlXlMM+5dTJacaThZvZA+VsO6ZyfnFvfdY8UCxq3byzgqr?=
 =?us-ascii?Q?OYGwKLSTz6NS3iuCJfZDU3xI8snq4e6G+ISlZf12x2Lrg3y6blGIZaRMw5ZL?=
 =?us-ascii?Q?FC123esNcIdf7+HH7ycX5MZfCoMtiYrCy2em9AhA/xpFhidDhHUP3GL1nCur?=
 =?us-ascii?Q?/v6hkcCHix0ypAyx9gDcGlUZvSaa00hdTUE8AgmLmEcvq8x+0wnJe/nQsgyx?=
 =?us-ascii?Q?2z8ZoYKczxMzfuLSGh3uEalKwHgQFjMIFAakZmc2+COWskX5zvB0OWzbp4jt?=
 =?us-ascii?Q?3KuH8//GrDadcAMqRwWcUyEIvQS/ggfjzQwW9FLx1yUGmENDqXdYl3C744EA?=
 =?us-ascii?Q?dkH1/MSe9stg58q+2NkK3lGsSZ5bgF8HYJaFWk6lJPY2yHVCyhYiyFFqitjo?=
 =?us-ascii?Q?qpBkdCNi+Vnk9iNTkqivq12K8VFYaXahMqtGmenoZ1lhC3TuqXCIEYH5dlIJ?=
 =?us-ascii?Q?gsqnP7Qx/a3wKwkLfqrB/Oc1n9AmN4JF+d6HJF8mKmzNBX/ZY/fZAwjH1Eef?=
 =?us-ascii?Q?grGDpB83/Uce6cvXIWATeTdF0uVJGiMgGEISVLTKwkVmbfIFmvmPgpxfIFvS?=
 =?us-ascii?Q?gyhQY/LIr0rzbIwBSkUO7NQWvan5Siqj2gH2GiyTki80hW2+AX1anU8iOOpD?=
 =?us-ascii?Q?iFDkULOTnylLJprEztgndLso8uoliWWWB4CD/HfGUZzGYJ+3o8tM4knsSoXn?=
 =?us-ascii?Q?y4LOgFlXqc9TjNVd4w1cn6K51LDq0nsxskjmNq3o7EunKFkBPhf9k3B5tJHk?=
 =?us-ascii?Q?0p0LdEj8I5imXtdonNlwUXbDbddNbyXFX73aaiA/fJAZ6734C9/wBK/NAO8V?=
 =?us-ascii?Q?jeu1cvAcPTGJAIBtI7N7N3JDZDio0MHIQPj64VrvaJxtkYwdxbPYtm5+UuV6?=
 =?us-ascii?Q?cFKQDSiE3JO7mLTfF7eLeADQSIiUqp1btKAjekq3IWDd3QT+UjmafNKHkMtO?=
 =?us-ascii?Q?m729YDI61DHT1qqZqXkqKuss0O3NzC2n4KFuuum5p9ydXhYE/1sqyuA4gFFb?=
 =?us-ascii?Q?xiC7/QHY0/Gaa6AjQa0H43qkF7yQbiq2OWkqZG1V8yd6KmYEQl4pcG2Ave9W?=
 =?us-ascii?Q?hrQmIhscUy1n2t5Pf68e3xHdNoZlSCifFLrYdCBqTgQB9iry7HRPNDcAku1D?=
 =?us-ascii?Q?B1SV2qRD8FuWuTe7QWGRnLwWOXr1N0nSw6ZQsDNiE1nbpFBlp86ATcEjaz6k?=
 =?us-ascii?Q?AX5UUNHQkwsARpe7wYmUIXXWRXDWU/f7+ZFfemHhnqYv+Lvk7bFTNWcawYAE?=
 =?us-ascii?Q?ZZTwiK9SIP5NsKYmGUK0GTKUq4lIBHt9rGUS/4khKYpgoN71j+BPCxiJZXr+?=
 =?us-ascii?Q?eGjpAjU2e122cfP1WvYCNrFlrM2gE6X9Q+TjH19DjmAobwCqN27l7GRRJ1s+?=
 =?us-ascii?Q?8Zww+vwJ5qjGk2xag4ZsDo/DKNM/t4mJJfcK1oAeRtc+mCRGgzkW20ntTeaw?=
 =?us-ascii?Q?Dmb0pazIkMbCRsroDTM9LadWJ3lDDuYTC1iXkMxjiweuN9lhtjnhkzOcCy5A?=
 =?us-ascii?Q?qK7D917L0tAYRTzfeLZUEBiT1Vs1Lvm6cuUz0MHmsQsZjXgWIe2lqoHLn/o/?=
 =?us-ascii?Q?4RCF0NVPaiZbZmiqTMzcRFuaEzGRnrEp1oKPeRwz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6aa8c17-f9d5-4174-835d-08da7c1e93c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:53:19.5870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nvPuunnUwgVAfeD/8Aaakk5ubp9wU4YM1HHHJ0QhJaFwhCPAsdqIr+thgL7Lldhtb+cF9+F+HcsWXKuVphQU6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3287
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> members under display.gmbus
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
>  .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++----------
>  drivers/gpu/drm/i915/i915_drv.h               | 16 -------
>  drivers/gpu/drm/i915/i915_irq.c               |  4 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
>  7 files changed, 59 insertions(+), 52 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 6095f5800a2e..ea40c75c2986 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct
> drm_i915_private *dev_priv,
>  	 * functions use cdclk. Not all platforms/ports do,
>  	 * but we'll lock them all for simplicity.
>  	 */
> -	mutex_lock(&dev_priv->gmbus_mutex);
> +	mutex_lock(&dev_priv->display.gmbus.mutex);
>  	for_each_intel_dp(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20
>  		mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
> -				     &dev_priv->gmbus_mutex);
> +				     &dev_priv->display.gmbus.mutex);
>  	}
>=20
>  	intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe); @@ -2113,7
> +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>=20
>  		mutex_unlock(&intel_dp->aux.hw_mutex);
>  	}
> -	mutex_unlock(&dev_priv->gmbus_mutex);
> +	mutex_unlock(&dev_priv->display.gmbus.mutex);
>=20
>  	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder); diff --
> git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 306584c038c9..fe19d4f9a9ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -6,7 +6,11 @@
>  #ifndef __INTEL_DISPLAY_CORE_H__
>  #define __INTEL_DISPLAY_CORE_H__
>=20
> +#include <linux/mutex.h>
>  #include <linux/types.h>
> +#include <linux/wait.h>
> +
> +#include "intel_gmbus.h"
>=20
>  struct drm_i915_private;
>  struct intel_atomic_state;
> @@ -78,6 +82,25 @@ struct intel_display {
>  		/* Display internal color functions */
>  		const struct intel_color_funcs *color;
>  	} funcs;
> +
> +	/* Grouping using anonymous structs. Keep sorted. */
> +	struct {
> +		/*
> +		 * Base address of where the gmbus and gpio blocks are
> located
> +		 * (either on PCH or on SoC for platforms without PCH).
> +		 */
> +		u32 mmio_base;
> +
> +		/*
> +		 * gmbus.mutex protects against concurrent usage of the
> single
> +		 * hw gmbus controller on different i2c buses.
> +		 */
> +		struct mutex mutex;
> +
> +		struct intel_gmbus *bus[GMBUS_NUM_PINS];
> +
> +		wait_queue_head_t wait_queue;
> +	} gmbus;
>  };

Can this be moved to struct intel_dp?

Thanks and Regards,
Arun R Murthy
--------------------
