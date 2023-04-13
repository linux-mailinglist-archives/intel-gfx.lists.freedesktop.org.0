Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5259F6E12F1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F7510E380;
	Thu, 13 Apr 2023 16:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB4C10E15E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405165; x=1712941165;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lKjhJx3PQn2R3hXulb5x+ibi1GVmWleY10lFb5HCFSY=;
 b=ltGXVbAq8wS7R4eqRdKU+0e/Be6HcK9AGb3P5ymG8KLoNKCoDZvymlwE
 wd48uMEHjiwR9mmxQFpHuOG57CxYskI6AHTmvqUvkEBrjQDhKDM8m+IZc
 WqLWNLrYxgpx74q3JvD6prGeV4DxOze3HYBAgfDfTmAoQ7+biOqBeE6US
 OfZdAmvUKhvzzW8zQuqj9JlnICtZdkg8g1tFyDhH0LvcjC8IkCNRyioJH
 DAMSh6+D8K5lQnPJ0u8/FiSM2OXOaguSYAZtC3QJs2Cv4RhoAKeqWgM8v
 QskDsZDug/ceh14nIdL2yUU+lX601mnaOFyOXIXuSzdwxkFEc6nJ+Z1wu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="341738216"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="341738216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="666846142"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="666846142"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2023 09:59:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:59:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:59:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ADTZkH97k7ysFPxYSlLwiZ5uphvYKoYyOdD0nkDoYmugXrQfXsjiZtBOFUR2SPgexIDCPx4YIVi4nn8Kv4NH7FOfksu+eDvmVqzCN10k/utp4oSxtYu8LDHZyhl6ZEhwNsQOU98o4+I4TqIlqiyNLMuKbXkAgWj0B4zkAtVIqO1u2S3Sw2INPeXqnNw2fneVn7TDvAl0KKR18p9m7jnjATNMiMlNqIquOyvWQb4Fb3UCkwB3zs98fCHkxB5tDi8PrUgPlQ5LK4S9CbNrPApY4cSRYbqJAMcgwLYb94Eb/zf3zCFIwNaSyjZ3zVwv6ASAGX2aRGIVhq5ebX5BlGLreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pX4AyqYOfna4ih/4ZLfY4xqz1N62JE8A+1T1/QIlsEw=;
 b=RC1CQSmvgtc7rFF9pJFb2Dz+gzpOu9mZp0grQur6MVvGONwtBwHQMfmpAfbbHg9D8meB7bJKh1GZzVjaWvDWcPP6ZNhEhEflg8CSsejT5qNh0kgH7vKUUfxyAKGNOaUkqaca3ta+pKLO3ptjja05DwFwCFrCwBaK9zhb8MnQox0DdD7TpjEmA608S3ANiXUGkdEK9Jvb93KwdmuXSbqLp4NFUqwKNY0mhH+Zk6j03OP/gJEC1JC5r2qyMehn4Kd826SyDcGcNxOMGtWL7jZLKyHQu0uDxMOs1pul+UIrz4NIAklkPeItrpbZix0lVqRSRsb3/CCBAK57wb29zsp1fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:59:10 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:59:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3c8fb2232e8c863780e256b78253b28c7c972f2e.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <3c8fb2232e8c863780e256b78253b28c7c972f2e.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 13:59:05 -0300
Message-ID: <168140514511.4412.10192244483452719365@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0122.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::7) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: bbbc60e0-8005-4afa-f567-08db3c406657
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pjKfaxGi3HKXDnUDh+qOZX8cvXneUwRgqF5Fv/1smeLH819TqX6bAcadys+tZiGE/8WlRFo0BDHBzy8LmBaXupgw+swLhM0RD+HV0VhULjVlWJMBhoBye+ymxcJRJdNVFiRDjMcltLRKMrCPcqbWqtEAAlKVCmrA/vRrGIbx1hDqO38U/UcfACA7VOT7W2t/rUa/7me+foiSIinp39nx61kLCbTsKE8EmZXsRWf8PaTxax5WIXn6A4Pv7FNqaau+IKWqk18b91jveYcTcIm4l6NsMw0WyVoQVykiom4TcDVwUtnej1OvaRpOSRUb4VbzYvAy1InNFPViOonNny+RS52g6ncwCFGm1yGZiHSnve2S6Fmy/1Juz08sn6lUV5uS7/29VniMRogvQ3ajCZhsru7IDUlBipcDo00eME+rCFqT0hwdzmtIxpv/CQ4BvW+f528vKJNn2cA2MU8CdA4ToqXnSkTxjNGI1ibXCQxJr0XvxtfsffoN0Gw9CW9nu/2OFXs0OdTPQJOE1gOmuDcCR6TN95ZrDZRn8CKjQGbZa1i5vhIdWYIs1DAoCdhcB8J9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(136003)(366004)(346002)(376002)(39860400002)(451199021)(83380400001)(6506007)(4326008)(26005)(6486002)(6666004)(478600001)(6512007)(107886003)(186003)(9686003)(33716001)(38100700002)(30864003)(2906002)(44832011)(5660300002)(316002)(66556008)(66946007)(66476007)(41300700001)(82960400001)(8936002)(86362001)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3VmQUhudTJLTTVmR0JHZEF3KzYyUUZ5SmhCVVZtc0g3a1JyZVd0ZEg0eEh3?=
 =?utf-8?B?MnpSSEpGVlZVRTJGNEx6STV4TlIvbC92R2lpcldUUEZRZ1ExcUZ6QXRGRFBZ?=
 =?utf-8?B?blJEZlA2RVdsdDErVlZDQWVuOWZlWXlFa3FOSldIMHJxK0xIWFU0S3QxV1h0?=
 =?utf-8?B?aERGVVduMWlMRWRObVppeC9XU3NJUUtSZ3JSQ1F0Qk1iV3dWWmtUQmZFNlh3?=
 =?utf-8?B?N3NqZ25TZk5iUG1WRncvYWRTL0prcmNtZDNFQTRwcDlYWkJxbkR0Vm9aNXd2?=
 =?utf-8?B?L1l2cnVrbmZGUU1DOUZBVnVkbWRsZDAwZWdHc1pFY09YZUt0SDJMb2xNaGpJ?=
 =?utf-8?B?M3pPZnBERVkveWJKRFV1Yjk5d3ZaU2x0b3U4MXpxVXlTV1hDbGxOOGY2bXV6?=
 =?utf-8?B?NzJtcjlCdWdIa0d1ZW05cVRyaGtEbVFCMzRaUFBNYk5icUEzeTA0aUVvSUVR?=
 =?utf-8?B?NVQyUDVPMWh0K0FCa0lEWGk2QlV3VUs3RXAwU1kzYWRKUVk4Vlc2UHB4YUNm?=
 =?utf-8?B?T25TbnB3MTRPa0E4ajYxdmN0ako1ZW9qVlVmbzdrVlUxZzNqZVVjUDZNRDJU?=
 =?utf-8?B?Z1VObXEwSGxhODV1RVdDK0duMDRPc2lPbVpjak9vRTRVWUZ2c3hUMFJISEMv?=
 =?utf-8?B?bWUrT09QRmV4Z1RRWlZwZTlMRDVrTHoxNzlGb1JuYWV4bmo4c2t0QnVuVVNR?=
 =?utf-8?B?d1VlY3ZzTmhSa2xnMlZtVlJ6dGlTRHd6Sm5kbEEvanoxV0RxTFFnRklEc2JE?=
 =?utf-8?B?YXpRYVFSU1VzeGtzYmovQTJOQTMvRklSRkZ0aW5uWU5YemR2Qis3WWNUUzRQ?=
 =?utf-8?B?R1ovQjUyaXRnazl2YXNiZ0NvZnBxNWtHSkNWY0JYa1pPeGdvQnhOajB2M3JX?=
 =?utf-8?B?b2JrL1YrZitHZ0VNSkVQQmV2LysvcUJIWThrTnB2T1lZN0FZTy9GSC9WN1dl?=
 =?utf-8?B?VTJLcGF5ZzBZcnFFVlNJSmFSUStobVJTT0F1TktlTUdERW12a25qbVVJaXZC?=
 =?utf-8?B?OUZJYWd4cTZUYlREWVUwMkJMTFR1K2I4eTUwWmVZVmtXUG5ZSk9jZHBocFZs?=
 =?utf-8?B?QUh5WXlWb2FHbFIyQjVKL3g0bWpJV1JXWGJxWUxKZ3hIWVNycXdDOWt5aEhn?=
 =?utf-8?B?MDJXdG1GenphMnlqelN6clE1bExMTXB4dCtvdzBpY0NlTDVZSXRFV0NOeVlF?=
 =?utf-8?B?YzFEbDI5a2ZXRDRwRlpHa2NiOHkyUkJuUmhKNStQWXB2bHQzb05VbFFYczIz?=
 =?utf-8?B?c1Bobktobmg1M2VHSGxseG9LWkxXUFhOaXJsS1BvMnQ0cm9zQlRPam03akZO?=
 =?utf-8?B?bGpSUDQ3b1FJaENRRGcvSXJWemEzLytaUWxRZ1RQSjlibXRTOHFYN0JCRENB?=
 =?utf-8?B?TENkQ1ZLamJTclRRSE9WalFrYkhDdWxKRlpnM21CdnZVeitxNWNUY3grbEo5?=
 =?utf-8?B?a3V0YWoxTVAyUGk1YXNXVXBNLzdNNXFBNld2LzhzUm5qaCsrMHlrYUVhbEpU?=
 =?utf-8?B?R2E1WUFmcnFJYVNzNFMyaWYvTnRqSE5vWk54UnJnN1NyMzhHUVAvVkg4YU1q?=
 =?utf-8?B?MFRrTzN0NDlJQzAzb2ZRZDE3dzhOQjRtWXVLdVhKTGZOZUR0Zkc4MGxMdUQy?=
 =?utf-8?B?eTB2aCtFL1NkZGlaUVJoQmM3bGxKc0xsT3BnSUNsbXBZMWNQS0g2S3JraktV?=
 =?utf-8?B?a3JMR0s3R1VZL1JWZVYvYjF4blhnMU9idmlQNllrakdyOGtETTM4NFROL1ox?=
 =?utf-8?B?S0RNb0dYcGQ5eVV3SE9RR3ZsdUtNN1JVVk8zZVRoUlZWVjB1YnJ6eFBxeXNi?=
 =?utf-8?B?d1JRYVRKS1RXMXRTdXVGejFrNGMrcjBHQWJHYWU2UFVMRmd6VHpKSGZWQ0kr?=
 =?utf-8?B?ZWJwSTJrbEI3cW8vQ3NzR3BJVnVHQS85ZEZ1S0p3SUUvZEpaUWF6MXlkNzB1?=
 =?utf-8?B?bkJ5RUhST0xDZnlXL3o2dGhuL2VkUENZWVlnWm83SVdzMXZHSGFTcDN1MndS?=
 =?utf-8?B?c25vUFg1VlBnQ2xjSmR2TDVDczV1Zi8zMGFaNGxqTWl2LzhwMml6UkM5d0pw?=
 =?utf-8?B?TFlzZ0ZoZDFYcFYzSU40YXpqOFFicVhiVXYxSk52WlcyVkg4QkxlQ0lhVTZR?=
 =?utf-8?B?bk81S1FWR2VraEhRdlZsc1pvMDMzaXhiNW14dUJ4ejZpYkVzQWdkWUZZMnVj?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbc60e0-8005-4afa-f567-08db3c406657
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:59:09.8660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gSstacbIl75/PwfRBNgcOJg664FIh2EICUW+zfw/xWgEtTohKRJrgN3Ucw3b18SFeQJz3caroNPvL+/UARmoyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/display: add
 intel_display_reset.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-13 06:47:33)
> Split out the display reset functionality to a separate file to
> declutter intel_display.c. Rename the functions accordingly. The minor
> downside is having to expose __intel_display_resume().
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 123 +---------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
>  .../drm/i915/display/intel_display_reset.c    | 135 ++++++++++++++++++
>  .../drm/i915/display/intel_display_reset.h    |  14 ++
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
>  6 files changed, 160 insertions(+), 127 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 91f0c214ef28..39e22cf85e55 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -241,6 +241,7 @@ i915-y +=3D \
>         display/intel_display_power.o \
>         display/intel_display_power_map.o \
>         display/intel_display_power_well.o \
> +  display/intel_display_reset.o \
>         display/intel_display_rps.o \
>         display/intel_dmc.o \
>         display/intel_dpio_phy.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f425e5ed155b..e89e9473a744 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -693,7 +693,7 @@ intel_plane_fence_y_offset(const struct intel_plane_s=
tate *plane_state)
>         return y;
>  }
> =20
> -static int
> +int
>  __intel_display_resume(struct drm_i915_private *i915,
>                        struct drm_atomic_state *state,
>                        struct drm_modeset_acquire_ctx *ctx)
> @@ -733,127 +733,6 @@ __intel_display_resume(struct drm_i915_private *i91=
5,
>         return ret;
>  }
> =20
> -static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv=
)
> -{
> -  return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
> -          intel_has_gpu_reset(to_gt(dev_priv)));
> -}
> -
> -void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
> -{
> -  struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->display.restore.res=
et_ctx;
> -  struct drm_atomic_state *state;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(dev_priv))
> -          return;
> -
> -  /* reset doesn't touch the display */
> -  if (!dev_priv->params.force_reset_modeset_test &&
> -      !gpu_reset_clobbers_display(dev_priv))
> -          return;
> -
> -  /* We have a modeset vs reset deadlock, defensively unbreak it. */
> -  set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
> -  smp_mb__after_atomic();
> -  wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> -
> -  if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
> -          drm_dbg_kms(&dev_priv->drm,
> -                      "Modeset potentially stuck, unbreaking through wed=
ging\n");
> -          intel_gt_set_wedged(to_gt(dev_priv));
> -  }
> -
> -  /*
> -   * Need mode_config.mutex so that we don't
> -   * trample ongoing ->detect() and whatnot.
> -   */
> -  mutex_lock(&dev_priv->drm.mode_config.mutex);
> -  drm_modeset_acquire_init(ctx, 0);
> -  while (1) {
> -          ret =3D drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
> -          if (ret !=3D -EDEADLK)
> -                  break;
> -
> -          drm_modeset_backoff(ctx);
> -  }
> -  /*
> -   * Disabling the crtcs gracefully seems nicer. Also the
> -   * g33 docs say we should at least disable all the planes.
> -   */
> -  state =3D drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
> -  if (IS_ERR(state)) {
> -          ret =3D PTR_ERR(state);
> -          drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
> -                  ret);
> -          return;
> -  }
> -
> -  ret =3D drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
> -  if (ret) {
> -          drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> -                  ret);
> -          drm_atomic_state_put(state);
> -          return;
> -  }
> -
> -  dev_priv->display.restore.modeset_state =3D state;
> -  state->acquire_ctx =3D ctx;
> -}
> -
> -void intel_display_finish_reset(struct drm_i915_private *i915)
> -{
> -  struct drm_modeset_acquire_ctx *ctx =3D &i915->display.restore.reset_c=
tx;
> -  struct drm_atomic_state *state;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  /* reset doesn't touch the display */
> -  if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
> -          return;
> -
> -  state =3D fetch_and_zero(&i915->display.restore.modeset_state);
> -  if (!state)
> -          goto unlock;
> -
> -  /* reset doesn't touch the display */
> -  if (!gpu_reset_clobbers_display(i915)) {
> -          /* for testing only restore the display */
> -          ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> -          if (ret) {
> -                  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> -                  drm_err(&i915->drm,
> -                          "Restoring old state failed with %i\n", ret);
> -          }
> -  } else {
> -          /*
> -           * The display has been reset as well,
> -           * so need a full re-initialization.
> -           */
> -          intel_pps_unlock_regs_wa(i915);
> -          intel_display_driver_init_hw(i915);
> -          intel_clock_gating_init(i915);
> -          intel_hpd_init(i915);
> -
> -          ret =3D __intel_display_resume(i915, state, ctx);
> -          if (ret)
> -                  drm_err(&i915->drm,
> -                          "Restoring old state failed with %i\n", ret);
> -
> -          intel_hpd_poll_disable(i915);
> -  }
> -
> -  drm_atomic_state_put(state);
> -unlock:
> -  drm_modeset_drop_locks(ctx);
> -  drm_modeset_acquire_fini(ctx);
> -  mutex_unlock(&i915->drm.mode_config.mutex);
> -
> -  clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
> -}
> -
>  static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_sta=
te)
>  {
>         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index f82987fbc94a..e5bf8ef8e06b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -468,8 +468,6 @@ intel_framebuffer_create(struct drm_i915_gem_object *=
obj,
> =20
>  bool intel_fuzzy_clock_check(int clock1, int clock2);
> =20
> -void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
> -void intel_display_finish_reset(struct drm_i915_private *dev_priv);
>  void intel_zero_m_n(struct intel_link_m_n *m_n);
>  void intel_set_m_n(struct drm_i915_private *i915,
>                    const struct intel_link_m_n *m_n,
> @@ -545,6 +543,12 @@ int intel_atomic_check(struct drm_device *dev, struc=
t drm_atomic_state *_state);
> =20
>  void intel_hpd_poll_fini(struct drm_i915_private *i915);
> =20
> +/* interface for intel_display_reset.c */
> +int
> +__intel_display_resume(struct drm_i915_private *i915,
> +                 struct drm_atomic_state *state,
> +                 struct drm_modeset_acquire_ctx *ctx);
> +
>  /* modesetting asserts */
>  void assert_transcoder(struct drm_i915_private *dev_priv,
>                        enum transcoder cpu_transcoder, bool state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> new file mode 100644
> index 000000000000..166aa0cab1fc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +
> +#include "i915_drv.h"
> +#include "intel_clock_gating.h"
> +#include "intel_display_driver.h"
> +#include "intel_display_reset.h"
> +#include "intel_display_types.h"
> +#include "intel_hotplug.h"
> +#include "intel_pps.h"
> +
> +static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv=
)
> +{
> +  return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
> +          intel_has_gpu_reset(to_gt(dev_priv)));
> +}
> +
> +void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
> +{
> +  struct drm_modeset_acquire_ctx *ctx =3D &dev_priv->display.restore.res=
et_ctx;
> +  struct drm_atomic_state *state;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(dev_priv))
> +          return;
> +
> +  /* reset doesn't touch the display */
> +  if (!dev_priv->params.force_reset_modeset_test &&
> +      !gpu_reset_clobbers_display(dev_priv))
> +          return;
> +
> +  /* We have a modeset vs reset deadlock, defensively unbreak it. */
> +  set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
> +  smp_mb__after_atomic();
> +  wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> +
> +  if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
> +          drm_dbg_kms(&dev_priv->drm,
> +                      "Modeset potentially stuck, unbreaking through wed=
ging\n");
> +          intel_gt_set_wedged(to_gt(dev_priv));
> +  }
> +
> +  /*
> +   * Need mode_config.mutex so that we don't
> +   * trample ongoing ->detect() and whatnot.
> +   */
> +  mutex_lock(&dev_priv->drm.mode_config.mutex);
> +  drm_modeset_acquire_init(ctx, 0);
> +  while (1) {
> +          ret =3D drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
> +          if (ret !=3D -EDEADLK)
> +                  break;
> +
> +          drm_modeset_backoff(ctx);
> +  }
> +  /*
> +   * Disabling the crtcs gracefully seems nicer. Also the
> +   * g33 docs say we should at least disable all the planes.
> +   */
> +  state =3D drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
> +  if (IS_ERR(state)) {
> +          ret =3D PTR_ERR(state);
> +          drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
> +                  ret);
> +          return;
> +  }
> +
> +  ret =3D drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
> +  if (ret) {
> +          drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> +                  ret);
> +          drm_atomic_state_put(state);
> +          return;
> +  }
> +
> +  dev_priv->display.restore.modeset_state =3D state;
> +  state->acquire_ctx =3D ctx;
> +}
> +
> +void intel_display_reset_finish(struct drm_i915_private *i915)
> +{
> +  struct drm_modeset_acquire_ctx *ctx =3D &i915->display.restore.reset_c=
tx;
> +  struct drm_atomic_state *state;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  /* reset doesn't touch the display */
> +  if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
> +          return;
> +
> +  state =3D fetch_and_zero(&i915->display.restore.modeset_state);
> +  if (!state)
> +          goto unlock;
> +
> +  /* reset doesn't touch the display */
> +  if (!gpu_reset_clobbers_display(i915)) {
> +          /* for testing only restore the display */
> +          ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> +          if (ret) {
> +                  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> +                  drm_err(&i915->drm,
> +                          "Restoring old state failed with %i\n", ret);
> +          }
> +  } else {
> +          /*
> +           * The display has been reset as well,
> +           * so need a full re-initialization.
> +           */
> +          intel_pps_unlock_regs_wa(i915);
> +          intel_display_driver_init_hw(i915);
> +          intel_clock_gating_init(i915);
> +          intel_hpd_init(i915);
> +
> +          ret =3D __intel_display_resume(i915, state, ctx);
> +          if (ret)
> +                  drm_err(&i915->drm,
> +                          "Restoring old state failed with %i\n", ret);
> +
> +          intel_hpd_poll_disable(i915);
> +  }
> +
> +  drm_atomic_state_put(state);
> +unlock:
> +  drm_modeset_drop_locks(ctx);
> +  drm_modeset_acquire_fini(ctx);
> +  mutex_unlock(&i915->drm.mode_config.mutex);
> +
> +  clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers=
/gpu/drm/i915/display/intel_display_reset.h
> new file mode 100644
> index 000000000000..f06d0d35b86b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_RESET_H__
> +#define __INTEL_RESET_H__
> +
> +struct drm_i915_private;
> +
> +void intel_display_reset_prepare(struct drm_i915_private *i915);
> +void intel_display_reset_finish(struct drm_i915_private *i915);
> +
> +#endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 797ea8340467..6194212e8650 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -7,7 +7,7 @@
>  #include <linux/stop_machine.h>
>  #include <linux/string_helpers.h>
> =20
> -#include "display/intel_display.h"
> +#include "display/intel_display_reset.h"
>  #include "display/intel_overlay.h"
> =20
>  #include "gem/i915_gem_context.h"
> @@ -1370,11 +1370,11 @@ static void intel_gt_reset_global(struct intel_gt=
 *gt,
> =20
>         /* Use a watchdog to ensure that our reset completes */
>         intel_wedge_on_timeout(&w, gt, 60 * HZ) {
> -          intel_display_prepare_reset(gt->i915);
> +          intel_display_reset_prepare(gt->i915);
> =20
>                 intel_gt_reset(gt, engine_mask, reason);
> =20
> -          intel_display_finish_reset(gt->i915);
> +          intel_display_reset_finish(gt->i915);
>         }
> =20
>         if (!test_bit(I915_WEDGED, &gt->reset.flags))
> --=20
> 2.39.2
>
