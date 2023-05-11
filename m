Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA26FEE6A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A295510E1F0;
	Thu, 11 May 2023 09:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE3410E1F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 09:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683796426; x=1715332426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=96qgTcExg++RP9wBrNgjCbNndbomBFDwVpw+ZR9Kw04=;
 b=L8t9VgepRFGI/otfGdZuv7/nM0kBnkgemv/P9SvltKLDTVqvnjYp6tDE
 ZGMStukPvH6CJXcQ8f7zpZQAA7dOzhDcZkL2BMG8QFBqJs115037D0Z1g
 F7sCgly/lvEFYi3AYM5Us5bF7HBNzve0zZ5OtLD/dnUG8VQEz72Cj7axX
 EqXeJBr7MsdToWfIbKbmwA/C8PW2kFLT0md+gfH3HdYozAvF9BdT87LEW
 BswkLecriR8mh0S/mQvSMJZtInla8WUa/0df6TTV2VeRYWQsX/XlT/eal
 cB8nhZnOLyNQ1Vv8utU8/vv8HXVIK2Sc4imzYD4yWElU0KCSXX1tmS2D9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="413774104"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="413774104"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:13:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="693720051"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="693720051"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 11 May 2023 02:13:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 02:13:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 02:13:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 02:13:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BuTPZz2KUoCUzbJU+Q0J1NNFs3NVOESFT2noMaKinXWLGfvckeBbBi1XXKVTH2n4vReL6HPV3g6waWtgxHV7HZc0kPkn9aAV/EiSpWPfUI2Yz7WMvt8mr4sP3Ut5vxOLSd/sphrZsYxb51R62D9O5MHBzbYijegSH2RrPNHrQaaHtVkzVIHMcJ2vzj8KxbXT4XRFmPlo5e6k1T5jmMdhUbHxEeR55TN9mBsR4yY3K7gf/A8yhAlxJ2y4FXaRKsyU0RrpwPraaSqapxpcDYbTqgBrM4YToUFoqqAQFqpNmS9ISqrot3q31PlSMS10vzNuy6iLCy5GWTQLlqaAibfAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H80Ck5UEnepkapVxsfgfi6AFldJllyFsz98D0YVeOng=;
 b=W8Jp6ub0whEntwZgx+LU84rZD30Rpr4gsaYgKKevGolm1ofTjIOxoqwRBcup9BOqAj8o1mCwp9NwHqcm/5csb0IzQFCEIcHKoGjpsAy7USJKM/PIjHDuv98kXhpwauwASmEUmiLDZOD/R4nJkwX//BWO/a1Ua2VIyxcnpzxmzx6che2PMo28m9cnvrw/behEUD+ZwPSYlzhrVJWNNcTXVu1J4WSrPuTN3NowedeNA/3fYbflYUMFtMl/c/PilmBq13GPGRB6i/tONypBuw/ZQdTWEFWzpiRAOaTS+Jlpe9tQMm9dmp2GvgvOmho4YoTRFMT2V8Ldw+aVXD/i8WQRcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 09:13:32 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6363.032; Thu, 11 May 2023
 09:13:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hdcp: drop display/ prefix from include
Thread-Index: AQHZg+Zp0jRjabbSBUyiYh8VtN0dva9UyagQ
Date: Thu, 11 May 2023 09:13:31 +0000
Message-ID: <SN7PR11MB675091535530A23122E56593E3749@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230511085553.799321-1-jani.nikula@intel.com>
In-Reply-To: <20230511085553.799321-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6121:EE_
x-ms-office365-filtering-correlation-id: e001206c-0450-4d66-8244-08db51fffdaf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z8AixlU4Z5v9zQxScuW/hPabc/OMeFTpCd9dqemMos0XwmmqS5Ac00v4CXqw+UYN0QRZt9gygUFmRCUR7iBbPUkGKtyym6lGSEJXA79nCoX8hGqxJzi5V/mAPRzPsEzHjuQoW5sRYFu4y3xsPMQzI9U+sW96hLC6f4UL9tACVsk9/8EtmQ3ayb7omzHNaxH865aIsbeZQeyCOpoGrrhaUAzIqBGUqlnEAVKENaf8cJtvkxtQIWK14PSU7O4z8N5K6joG589QjPEBjDkxyvj7ogm7sysRaLLmZONbUEO66pNF5nKAuDVRJ2toaXCJH9vilNB15e0vXs3imtB7Bn09qAiBjt+ma1PhyCjcDbuWlAE6tlDEoZYtSP8Ae3C8wigEQdGJ1Ixf+9b3WzJR7qR4O+QEE3AJPEe2jz8KPjmqZ2/1EMry2UwMnhmF3ve5Esz3C5buEK/Y2MmH0AtLgSIz+up+Ym3dr/z0kQkshfdJhEACfU75XHNvvL2w5NdhWGa1gk+0x9cWUo9McYto9YP2PLjDfx3lRaryTidTa9MIpwK92lZtaBY5UlHvQ6gSgY/Fw6XWwRUHElRrFg1U7d4bw3B5RZoaQTKyiF2ow4Q3Qn2d+0plXJFrc/If/DL5eBWx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199021)(5660300002)(52536014)(8676002)(8936002)(83380400001)(2906002)(186003)(82960400001)(122000001)(38100700002)(38070700005)(86362001)(33656002)(55016003)(53546011)(9686003)(107886003)(26005)(6506007)(316002)(66476007)(66556008)(76116006)(66946007)(66446008)(64756008)(71200400001)(54906003)(110136005)(4326008)(478600001)(41300700001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tHPgBcSI7bijbXzYxn3PONwyau7o9hSFpHGfBAq6fBXCl0MgrMMLwyXIdLku?=
 =?us-ascii?Q?iikMmG3Hbs3Zu9BT/Zwx0eRNsfuY+OxJD+QFGdomRmhKEfJ8QnIPiX3B7Dyw?=
 =?us-ascii?Q?DgyxWiEf5cB6p6fR7ykXeqg86pgeO9MzP8k59T5u5VeNZn6axxxz+G4g1ag5?=
 =?us-ascii?Q?mzLTERKofoeVjVUu5X9zgnG2OhkmIoP8kue3lIBCWXQ1DoQWsAbagoW9xUFy?=
 =?us-ascii?Q?OIm+degnmVaKhoqwpSOwTdt8t7eDVbpJ+cRwYco/nsxV7hy5HLcevH8EwXY5?=
 =?us-ascii?Q?/ZcbtOv+XMuftDKKq70mne2iuFqqnXvCdZ1c5OaZ8bYnSmdXoFHtgAq/oeKp?=
 =?us-ascii?Q?ggyLYSQV+uK9iTQ7jpFarNfywJ47/YGaCTP5Od5ca5VO18Falg0fEbKLpi6c?=
 =?us-ascii?Q?ZXmv/Xc2SkUpdaDxWd12kkb16LtqtIQ/4bZu7xCcf7VohnxxZG9Dq99IG7ro?=
 =?us-ascii?Q?k6n/x/oMOag8ICyyaXHi2TH1Sry+pjbWTCA3782zXh4HnpvTE3o2Us6pjhZi?=
 =?us-ascii?Q?xmfnRxjMaiQDLCVJJCiun0QiQ8GDOvUDWwK6MA7C43ZOadKlqw0UGw0lrUmG?=
 =?us-ascii?Q?WXjCSD97nLVP4PVvCl39y+0eo/5jRF3UvhyBPR2EM4yFKNRLSkhXE9N6SYfI?=
 =?us-ascii?Q?naf1a5P/aUGg0/nYjK3bHuxGOzyamMDZ5qcLAOfszuXu3TXbopjiZji5q9uZ?=
 =?us-ascii?Q?mlHQchTQJYTgI2cOOQTAi1gTpY/D18Yphl+oyP+kUh7O86w7C6iv3X70S69w?=
 =?us-ascii?Q?2rcdFazTBtGaJWrHQH0hZaxlBbOqDNvEnsSpFsb4WcANoQy8wqq/6SRNjUkN?=
 =?us-ascii?Q?I0L30dhKEqjXwZN7jMsZTBfT+pIZZZkhGbV9KX52fZQnf9jGcaIGYYPMSuEK?=
 =?us-ascii?Q?1J55pDoEdakBQ7islNTU+zwy7hJBqzOEYC8Dl79/GLJFAatciqIIUPIQNs7k?=
 =?us-ascii?Q?vbnwstztUyyTTUqaDNV8gaQsh0N6PtjlfDbOoMDGKWfaZ8B1B7FRyqtCDOmM?=
 =?us-ascii?Q?K9wzLaqEh37vqaNbtWA9Do6R3NQAeg/fLaZCQk/jD7e7XQkXn4h3fVaO2es3?=
 =?us-ascii?Q?CR1wxfl+y+lpPbCJr27azxnEgNWeVFLrE7051+PRQ6NvXY+kVLbeg/HkxXAa?=
 =?us-ascii?Q?+8yQ22SMcVvW6hy8xgl1bwcW1pNYRlTEMUy2AKF4QKsVD4Xc7VT+XJRsO75O?=
 =?us-ascii?Q?Shv2TN/0yDO1LZpk2EWd48qA+FzfB7oZ2BCLqsJtcH4DfLbcim5LfW2T5ukK?=
 =?us-ascii?Q?zmsIA/15L9FIh0CmWLF5REpRS22ReQ94P7XYIk44ZVoU77CGeH98UVk6qMBi?=
 =?us-ascii?Q?sLb8o/iU3s2a0YlbmZ5aVAnOOo1umZ3uQOn7yuyiVsw2cVN7UuF3htQTWo12?=
 =?us-ascii?Q?6W1RweI50VC8CDMA+QvR0iFrhzmLc86j4JIViBaN+zrSQY1c3H8HLdRLtQnq?=
 =?us-ascii?Q?kkxIzQ4i78/nFNgiM/+9rA3B2D0DtrWXnNq+bLMFZkgrT+neJF0nrUVLsga9?=
 =?us-ascii?Q?BOZhBZW5D3NEA3F1FzODEcB+NrT2pw+10F0ixcImXIBcQkba6DoC9OxBrw7j?=
 =?us-ascii?Q?DicWnTzOERG858W6WDBet61mDqvLubXEt+B/s2CZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e001206c-0450-4d66-8244-08db51fffdaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 09:13:31.7424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lK7rhrgTule+RpSo4xGyDUGmzuPtwdZVpHSyIfVQAbuAIGTKOFOs77T1h1SXLzdIdGIls7vRSyKtJj0Q9joSQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: drop display/ prefix from
 include
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, May 11, 2023 2:26 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Teres Alexis, Alan Previn
> <alan.previn.teres.alexis@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/hdcp: drop display/ prefix from include
>=20
> The display prefix is unnecessary within the display sub-directory.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 7e52aea6aa17..4056bb2323ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -5,11 +5,11 @@
>=20
>  #include <drm/i915_hdcp_interface.h>
>=20
> -#include "display/intel_hdcp_gsc.h"
>  #include "gem/i915_gem_region.h"
>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> +#include "intel_hdcp_gsc.h"
>=20
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)  {
> --
> 2.39.2

