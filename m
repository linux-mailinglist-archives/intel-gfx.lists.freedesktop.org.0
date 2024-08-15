Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2A8953A81
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86AD10E506;
	Thu, 15 Aug 2024 19:04:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtxlUwOM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B052810E501;
 Thu, 15 Aug 2024 19:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748674; x=1755284674;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zUtU/WrmK1YXMV2SsMXdW4xe0SFzNXj9VBTEPS0E9io=;
 b=LtxlUwOMi80CH2RZE64IsmcXfWsAWx9WsJUe05AyFKeqMXyVNeSafXEx
 7HO3qNm1Yh1X65zajFglbe/sHPFrGrzJAwbxHuTCH4Tt8ZfBF5FPn/Gyj
 sDD4pIyuwfUqfW1D6Ct1f6HhPx/64jHsy7VhLh00YCKRwIfQja8QlO1Q4
 qxCZfr6/v29EpUhX/uFmsKfDMFbn9pHYgm3BmDi0ln2BIP0DYMq2XldYZ
 c99alCe+cQGZ9Ouw1/KNTLpNZGhCfLFLdORgalyOu41ixz6ipVkO6C99k
 gLHqfqxvf11MRGx4n1tchoj1rJk8/fqnPxdlU7sxv0Rh3RdF6COEO8LaU A==;
X-CSE-ConnectionGUID: 4P6foLBSRs2vnJkmnOYTzw==
X-CSE-MsgGUID: FicdGPGsTlCIorxu6EPiRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="25787256"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="25787256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:04:34 -0700
X-CSE-ConnectionGUID: Bpg3E9O7Qxa0EifIT6aTKg==
X-CSE-MsgGUID: kpnUvm0cRfya4KVp7O4+jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="64336738"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:04:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:04:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:04:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:04:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gHjARyfXVe8R6z6ILX0pIN+cNaUHI4zuyasJ0fCWThcOIsSr3v2PSnlv+7amC8PLYv6O+VC1nDxPlOWeYjpntFoLq4CvcaBYdonqAkdiu1LHFzdDc+f30C53hpy2eHeUqzj0nnz0I1j6qp2v4KV5aYD4i5qfY5MDa+8LpJW5PQLBR8PqxK9RdsXq4j1qaItTyh6UE6IuhwqrO8fM+jKteto2F5Nq7TS3b/E4WstT4jy6+8Z3FNZDE7gn/JZR+6IYzduf6PJmH/JbQjJ2j2w3Nz7y+WE8cn/W06tM8z7yPPueuWNb01s8CfQwwcvP90EO+xtRIFiTIHlXVOmfna6vAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4fwevtgyudb2eYdthstFWyTGJZ0BvlemTmxuRu3jEk=;
 b=swjkcjCwsUALnEXQGnu8pWLWK5/BytlIcmd8Rk9LTX5ir+VBdJzpjhheU7zQh9JDbW4teXcbnKcAS5sH3hPuK4nn61gCriQon0oeIQVOacl2Pf425w6ap6iOAvE0eaFKc8NsdS1RpOQHu2oF+DvmzRwi3/yac2vqZsAlSup853GNeod5PaW1tHoPspJVfJqGD8T8L8xPEWzRzYkVcERIDqX3EjIjH/Z3/Lffvx/yhE5y4gypbHJnRV9nIiKqIwGCjaO5xyQ6G1OhuYt2ocXJ2OPUNabI/eVpr6qaxvxh5K/9e/DmTbfhjfrl9PZU3FvPwKwPtCULS0NDd1cfuEzWTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Thu, 15 Aug
 2024 19:04:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:04:28 +0000
Date: Thu, 15 Aug 2024 15:04:25 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915/display: convert intel_load_detect.c to
 struct intel_display
Message-ID: <Zr5ROXx4PzXISX3n@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-3-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 57574684-376a-4954-b648-08dcbd5d15e7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vzZwErVNWCmyKtfvJj6UXHsHEnIQ7AS/X8iXFoZy/M+AqAcDzNyaLGgcOJRU?=
 =?us-ascii?Q?Urk89Xm6BY5FT588q9jcmyIOkipTe2Mrb2AGY9pHCm97RW+Q7my9bWlxWWHN?=
 =?us-ascii?Q?6llvgMIpTt9qaDimaejh46JRKBAPDoVhR23nIfxTCDbe95vV9+4MsvsEDZFm?=
 =?us-ascii?Q?d5+UXmsqdRBZXNdPW1iLEY+fS94Nag9/mhWwlpJ/+FYpGunyYAnGpexbljMW?=
 =?us-ascii?Q?oTfCYmiIELal5HLA+NE0UVimzMHjXfH2xrocX6dPeMQAVXwmR9XVEwnv2FBI?=
 =?us-ascii?Q?FMRlucC/WLFv/qKkPeIrIuONT6PyF1i0d8RfVe7Das+nBRCrnwIK9v/Gm4iz?=
 =?us-ascii?Q?0e3/dbrbI9qQ/o087PFsaKpjAw58LKR9CHqgyk1LCFbex6twHkNhLoXXCbCp?=
 =?us-ascii?Q?KACZgy+C+C1tB7K8Ajak419PS/TAmOBIKQKaKKuDIxix6/QSniOFMKXSjW0h?=
 =?us-ascii?Q?FX2mqMZmbG7w98l9ZU04EWjl7TDnhYZcwE0tFGRH99COgdjEf4lraMWGiIZ/?=
 =?us-ascii?Q?dX+DwmuyfNWGvU0VgUihOa8Vhv4EM59bvkvYq0PyNd4b9U0WWCf8zlC+oyZ+?=
 =?us-ascii?Q?Tgi2sCfpwf6MHr3/k9ummwc1EdDhVwMYdCmP+gLHW/3QEcgL/zeK6eHzUisA?=
 =?us-ascii?Q?keZYGuQKSzJUIRXZsJupuJ4+imXixy+xmKvzTeSW7uE9ok9iQ7fLeM9okA9w?=
 =?us-ascii?Q?vnt7FYC9Z/3fTp6E3JhVT5Ds1XOA3XodXcnzjrBj6CwJ17/sOqpNU1GPM7u8?=
 =?us-ascii?Q?bS3KKVJeIqUXyfFRJIwJRqpp5b7sJ/BpC2RvdYuql8mXA1UrFgJxYE+WGvF6?=
 =?us-ascii?Q?gCMAHRxPoNATHdJY4FFmvpDx1Vl8g0ArVEB8RdG596FVY38Omn7EoLBxu9Vn?=
 =?us-ascii?Q?NVZx/xEpWefakZvNxVa2hvYS+uVAwRo13rYXzBF+G8FifL2YlvJgM+kUbuu6?=
 =?us-ascii?Q?SQMUKCZedXGBhBSIgLXn972/VybQk2zW8Gl87TuZQuBganwc/S0da1d2vy/T?=
 =?us-ascii?Q?cVeaSXepphAHfMYynWGbdHHdZuLUeMkxEHb/DewvKeu3K81aWoELK6zpRksK?=
 =?us-ascii?Q?xT5/VkuJlf1A4pa53/DvM8YhtXxT+rqGCW8uodn6GXy8zGZAt+NI6cQ5MI2O?=
 =?us-ascii?Q?WKXlSZQsC98egoEbj2A4FKhCtW70lG9BxV7F2LBELmtHUQvA7BBRXK/zxkeL?=
 =?us-ascii?Q?aLZI/Z85IkM0M/3NaGhkweP+dPsyyyVtjfyOp+e+1YD6I5qW3PJMGqSWKaOu?=
 =?us-ascii?Q?DHBc/cQWy3tb44RDskmg0l58HFgokercjohPTzuiNt/qHvF9RF0NzQ6+MDvH?=
 =?us-ascii?Q?vLUTugb/etpo5UOaJRa6zkawC0idmdzZ8EN3Ppe0pdr1Dw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?29reyuIPJeWUaMPgmsaPrO8uoFGSjmbQZSNRMDL192Pwut3APKbgNwF7u0Zi?=
 =?us-ascii?Q?WLHMv0xX8zzLQHkejw2WExKq3EzeJevfGBr+B24oTUjryYJ+6bLSMYcF8UmL?=
 =?us-ascii?Q?JqtI009Gwwm8scaZwj6vwnEvnBQFfbY3oYQPQfE4zP0kXNWdkpKRqcEXzwJW?=
 =?us-ascii?Q?/sUXEJ5orDdcCGr1tUTTWeLoxlVz6aA5ed9mmgvE69HMF3eAoxjLoXi2zKzx?=
 =?us-ascii?Q?thdFf+bXaxKPaaNy8GMo/Vk6UQ5sWJ7fu9TAYrPJZeti1avQX7/5zy2tPVXE?=
 =?us-ascii?Q?PmUkqF64Sdd+VAnWHSuJ7r2nmWv0Xw4hxtfVGXnLIrfLyWSizGX2xKdpjAFF?=
 =?us-ascii?Q?bhBZGxhVzQBcgXQQVaavZUHl6HBgLL9Cg5+vngaYA8ejo3Kc5sZQs3GbGFOt?=
 =?us-ascii?Q?EYlzMe3gfOTqmujZ/P4lJyjrh0k6d+Fl41UpLpoFLpv1hbSkOm7Yg/jblLmI?=
 =?us-ascii?Q?cqy00b7iStsUU+f0cKcfpRUBW2FQ+NACbOLjPZmNn3u4teEhzlv19bZ2cCOt?=
 =?us-ascii?Q?IHoNsc4zQGLH4XB3I74YtRAMxwa4mZPRRz4Sw73VOB4NxO3NpaKW0Qqtum6y?=
 =?us-ascii?Q?h6d6qDl17bMeE7q2QJS+4UA6N24bPZzu0QgDdS2ir21KZ4FYmHuVlpzfJg6B?=
 =?us-ascii?Q?V7OYyqyWsds5AQceG5pvkYWoyvS4oQjiPs8uAqePl2OQ3/2igNrwZhRo2zpe?=
 =?us-ascii?Q?NksBVfCkYDw7AiTQxhRYeUVADKqpf2vQrxTVsG/JU/ly3SN6/ej4JbXg4r8F?=
 =?us-ascii?Q?SM/szjC38uxgv9re3yZI5NgDum9X7Ig+G6qzdKCnA5Ek0cfGGLUFZyh5Xdnp?=
 =?us-ascii?Q?u5cc0pNNqMPur8FXWpsSI/8dz2A6Cc6UMGEaSWh05eqSV8OFrVibzU5uj/3F?=
 =?us-ascii?Q?UT1km8FWHXJ+InjzEUhWKOtDRmCMpV3FabATrED0wtuHMXJBFwaQp8HugrWT?=
 =?us-ascii?Q?/iXbKx5Q0yKd6lM4BqaKrem8fauHB8yIJDKsaVmsx6hBE2lQCxjclPiS3ZTa?=
 =?us-ascii?Q?Y++xaJGDqt9twf4gbJ6pcxGtCBoBI3Duc9NGJ5kYGjNUMrbSj9qvHKpL4MLa?=
 =?us-ascii?Q?qwExguOcSfLPYOHS1Ps5OanPsB8NQiWKA7L7hJzj/hJXB0xFlTaEIHhxRC8o?=
 =?us-ascii?Q?LvlmSWD02pjP8lwmc1jCfVxQ8J5FiGoLFvb99vqPSLNwKJEL/MWq4MQYrn6g?=
 =?us-ascii?Q?CMdCwgCxi+JvxTaAC49ofGivhsR01Lk4spPekB85rSRu+xch9sxjBGyaVYh1?=
 =?us-ascii?Q?qAcsc8rDHjS/AWovNGtFvxBm5z61z5eoagpogjfONC3IGWHjVUoKEST5+Dl6?=
 =?us-ascii?Q?6e2JodC7XQlJQUcbdkoaywJcGs7IFf0ijx0kyTMKuF5Jg7X6rJgfv9pi/bH3?=
 =?us-ascii?Q?92Zot+HdnKQMbEohv8unYi9Ra72lU1/bmETzugmpXsTZsKf8vB0i366fevO2?=
 =?us-ascii?Q?L/CWecZUMF00Hrm5K/jrEiyPAjebtiHVOPEnY7sadEWYHsFpbthnyS459+HI?=
 =?us-ascii?Q?bxRQQ2oYeZg/Kh0Xtl9ezjYJUHOD1I34hYTeLEAC+TNVQMllSHGio1fli2IN?=
 =?us-ascii?Q?P0fVYfcQifvLhyvEbUkX5IiPoMBLNPogFr0PtsL/9bLrAhe92E9FLnRgO7he?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57574684-376a-4954-b648-08dcbd5d15e7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:04:27.9492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E73ub1NtBx4yBUZwt5Lv3wYvHkGKo30aACk+5Az0DscAK8A0oFbH3aGgEgAFHVkUd24BSZLSu7TjnGsh5poudA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
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

On Tue, Aug 13, 2024 at 07:41:19PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_load_detect.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_load_detect.c  | 27 +++++++++----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
> index d5a0aecf3e8f..b457c69dc0be 100644
> --- a/drivers/gpu/drm/i915/display/intel_load_detect.c
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
> @@ -48,23 +48,22 @@ struct drm_atomic_state *
>  intel_load_detect_get_pipe(struct drm_connector *connector,
>  			   struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_encoder *encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
>  	struct intel_crtc *possible_crtc;
>  	struct intel_crtc *crtc = NULL;
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct drm_mode_config *config = &dev->mode_config;
> +	struct drm_mode_config *config = &display->drm->mode_config;
>  	struct drm_atomic_state *state = NULL, *restore_state = NULL;
>  	struct drm_connector_state *connector_state;
>  	struct intel_crtc_state *crtc_state;
>  	int ret;
>  
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
> +	drm_WARN_ON(display->drm, !drm_modeset_is_locked(&config->connection_mutex));
>  
>  	/*
>  	 * Algorithm gets a little messy:
> @@ -89,7 +88,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	}
>  
>  	/* Find an unused one (if possible) */
> -	for_each_intel_crtc(dev, possible_crtc) {
> +	for_each_intel_crtc(display->drm, possible_crtc) {
>  		if (!(encoder->base.possible_crtcs &
>  		      drm_crtc_mask(&possible_crtc->base)))
>  			continue;
> @@ -111,15 +110,15 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	 * If we didn't find an unused CRTC, don't use any.
>  	 */
>  	if (!crtc) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "no pipe available for load-detect\n");
>  		ret = -ENODEV;
>  		goto fail;
>  	}
>  
>  found:
> -	state = drm_atomic_state_alloc(dev);
> -	restore_state = drm_atomic_state_alloc(dev);
> +	state = drm_atomic_state_alloc(display->drm);
> +	restore_state = drm_atomic_state_alloc(display->drm);
>  	if (!state || !restore_state) {
>  		ret = -ENOMEM;
>  		goto fail;
> @@ -164,7 +163,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	if (!ret)
>  		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Failed to create a copy of old state to restore: %i\n",
>  			    ret);
>  		goto fail;
> @@ -172,7 +171,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  
>  	ret = drm_atomic_commit(state);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "failed to set mode on load-detect pipe\n");
>  		goto fail;
>  	}
> @@ -204,13 +203,13 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
>  				    struct drm_atomic_state *state,
>  				    struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_encoder *intel_encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
> -	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
>  	struct drm_encoder *encoder = &intel_encoder->base;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.id, encoder->name);
>  
> @@ -219,7 +218,7 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
>  
>  	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>  	if (ret)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Couldn't release load detect pipe: %i\n", ret);
>  	drm_atomic_state_put(state);
>  }
> -- 
> 2.39.2
> 
