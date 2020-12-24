Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 444FF2E23BA
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 03:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DAD89F5F;
	Thu, 24 Dec 2020 02:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7786E89F5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 02:42:29 +0000 (UTC)
IronPort-SDR: o1Msf6EH3EfQeDhatQIWr+QqlZtdXzottd0KGmeiHiL61oEWAjeYJjXhlCsgSlz6hdeJ98h0zr
 xF0ucUaKmaKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="175325264"
X-IronPort-AV: E=Sophos;i="5.78,443,1599548400"; d="scan'208";a="175325264"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 18:42:28 -0800
IronPort-SDR: +WHAzC74LEqLnMmgON7gZ/pG81OacBOhxIu8LJug7xvVrmubgU5XBLB7osQHulpLiwnjRO0ZxH
 olvlMYXiMvMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,443,1599548400"; d="scan'208";a="357221931"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 23 Dec 2020 18:42:28 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 18:42:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Dec 2020 18:42:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 23 Dec 2020 18:42:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJ9SduVGPg+Q/Rin0KWeDPskwiiM7xQaEG67pd77NdAZJB/wHKLIQ7fpp290+ic56vx0Z7um9YzmLxTr7LA6JJbUZjymvABOLL5AMXolH9ZDjA/LCQMeWPJYNJLTEt0tlEIi+sOhpcom2yvgjdoUttpzi4ri3mCJd2BKji1DeGJkZEui0vpEwM/H87yogq+hkGA0yNcpZfY6SMKGlkfB6UvLSBU6NFYfIvRKW6QQrZOm+9qhj2TlFknNrf47Q64ythZ7aylGC+naS24CTL4kaYhgCf2Uc9RwDj2+TLN9kwg7P1CfdhvQRMpOTR8dsstwSUqsb8OO8MZ4TMIoOMMyAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dIks3L+0euNGwWjAFGdfhuHwpXrkIIxlAk3FZ/4Ypg8=;
 b=GEUy4QZbklS3nwhx3hCGV/UWrD41k7vlyGoA9YJWzSR2hH9QKiRZQxdTesUBlJaWBEBYGfxVjN8PlS39DrbmJIfrNJNHlCO5tGKheqWC05mT6xCgJ06ikJihpduAZO5lDimJCS9CKHirzlOssHBONSHs3omBBSYkaGX+cwyDLuWGy8hPti30se/kjvOiJOQKLm8b41tjow3llLkZflBmkYo5/V1nJsOG04iQKd1O9WrdZk5iw4iYsuaBZ1Jh5jN/GJjfLlF6OgL8lo1NCcqNS337nRRxRaQZH3wMgpzIOi5qVIZMhinJ2OuzTkR5FI3SgseVjGPRs2+ykROsv/y3ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dIks3L+0euNGwWjAFGdfhuHwpXrkIIxlAk3FZ/4Ypg8=;
 b=hZd9u+rYH6TVtLJtls5IG1ozupxqXMi+TibvtI6EBAMBgni6F38yYbF8JKRK5mNihV0mvI3SzNR5Cd+zuGrkWgo27T8nPd7Is57+S/UukCijiK6vyMGF1a7JmI7mioFdnCC2msSmEbQ4j+1YTpMYYts3OXiJrbtb5Q/cHQ+5mXc=
Received: from DM6PR11MB3340.namprd11.prod.outlook.com (2603:10b6:5:56::14) by
 DM6PR11MB2586.namprd11.prod.outlook.com (2603:10b6:5:c0::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3676.25; Thu, 24 Dec 2020 02:42:26 +0000
Received: from DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481]) by DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481%6]) with mapi id 15.20.3676.034; Thu, 24 Dec 2020
 02:42:25 +0000
From: "Zhang, Xiong Y" <xiong.y.zhang@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Try to guess PCH type even without ISA
 bridge
Thread-Index: AQHW2Qn4tGpj8zaSzkilfcSgybkQ46oFiOEg
Date: Thu, 24 Dec 2020 02:42:25 +0000
Message-ID: <DM6PR11MB33402B0C242538E819933936BBDD0@DM6PR11MB3340.namprd11.prod.outlook.com>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com> <87im8soq2w.fsf@intel.com>
In-Reply-To: <87im8soq2w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6229408d-5e29-4799-e0f9-08d8a7b58c6b
x-ms-traffictypediagnostic: DM6PR11MB2586:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB25866891817F4A54D6DECC4FBBDD0@DM6PR11MB2586.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UtkAYtegmdzW1Mr+SHpCPmv5F/UUyzpvP2MXYU9tNEcA/yjfSQ8L77UVy4xX00jCQv2Nk8SkrtG6jemVqRQ1VbmZ5KhPdDS6KEDbnCBSuHe12jAdNUpqAIPwlo2EixGoqZiyt362uLUBAYbGl7xpgiKcv1fUUj2HHsEC1L70bExnpC7kARMYqT8F6q6mEgkmKoCtfezoSNBz4iAVM4sGVn9beWNG+qX2FyuEVl2YjGlTNK3YayDWqctWDf3V4AUqRVRtR0LNO9Vl+rEScbn/aB78QryDhAnOjw9ehLKCeNdnCg+rHenVQC7KSjxZbMmvcl0LDehixRkpKwKV7EQNhEOXjSUgeye8hrEmihY2v3glZhRyjLzvSmnY+uhOlx6GMo2S3iDny3yXcWles0hM2fMpV8mvX1iVuifYSXRXWPqSh2i86LNxKuiVB1uqnlB8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3340.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(52536014)(55016002)(54906003)(8936002)(110136005)(9686003)(2906002)(6506007)(478600001)(8676002)(7696005)(316002)(86362001)(76116006)(5660300002)(186003)(26005)(66476007)(4326008)(64756008)(66946007)(33656002)(66446008)(66556008)(83380400001)(71200400001)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?lVSqixwSAEC8PpzaJ5DaIFSKz2QknUTglFJ9tsIJLKzTzKdtfUVT58VeQLCm?=
 =?us-ascii?Q?vK8S76jqw4fgv+uPisxJorwdr39VgoCcU0IA8CZg4EHLIzOoDQhxxSizPn9u?=
 =?us-ascii?Q?ejX6tT8Fhzjzfj5hJdSBVDD5maJh6HY4cZlRhgXMb8Y9Hb6nJ5UDhjxUsTcO?=
 =?us-ascii?Q?t+JdoOdlqFKAQPh+m2uP+fKn4DwqVt48aDY5wBWtG+WxvvKEgvjKibjqy39j?=
 =?us-ascii?Q?SM5PehXUeuW45UMiraiapd7TrED3iw85LyGPSGJKZ/m03iIZs1e5qw71LaeG?=
 =?us-ascii?Q?t6+UtiyA3vKxfkK3TvENs4BaD2Eh8qSMftcNI4WPQedysxIVuY/nOzSLwU8u?=
 =?us-ascii?Q?F2qZK+SnnYue1YEUGPN95+TG+Qk7biBWJedQKWzlBZ6j98LWTud9M+dYJdID?=
 =?us-ascii?Q?ABCBjXs4Y6hjfH1+EGpIRSIdH+BIz2WxdCgCVeSIjQraeSGY3erfYudF4Vq9?=
 =?us-ascii?Q?3t89tY/Sdsp0g8eeEMBUQdZebu9jZp1JRJ8u2lQ2KhXVfTpKvT2YDy0o9d3S?=
 =?us-ascii?Q?+UdFgp+K8L5EvQmt9Fm2h5RxQmAkLXgIQS5xyUPtEx9n7GKkKhIaNEx7X+27?=
 =?us-ascii?Q?uvoCtVYCKHFXd3bsf4Xz+Fez0CqhUkqR/w0NGFnwtObLAyo/DfBIwP3uVbFP?=
 =?us-ascii?Q?p2ehiWy65B5ENPeX+8gZog2kQzMJNv8ua1vLIDW8bXohsIXqXxWKSZJIpguJ?=
 =?us-ascii?Q?7fCmDbBVakir44fMd9Pa2L+CTwBgh13xrJ5ESiyQ4GUavIjSMJcDoaqvccUQ?=
 =?us-ascii?Q?BTYLucMvO4hEFpp31I6xJeCW90+ZRyHCF2QU0U+/lHVe8WeyHE/3YlPijTKY?=
 =?us-ascii?Q?9YoeVKvkm3O0X/wsT8JzMMeKl44B8JFXOycHLBdg94/18Cw9g/2PdIfBsRY+?=
 =?us-ascii?Q?aSKwTC2xbZ6wfM8pnE/hnC+8aAGk9ZuMxMNRcR59+LiuMK6rSj0tRPZj0Htn?=
 =?us-ascii?Q?6ISKVxTlHlZh/8ckmjRBDTs8t3CvPUmTCjJAr+vpGsM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3340.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6229408d-5e29-4799-e0f9-08d8a7b58c6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2020 02:42:25.8125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mDdDKoKiqvQ3oT339PwqojYSZVcgmUg9q+XbVLsP7WuprmjL8CB7m0w8Sy0cj06tmpO0kuzOvkyGPdCcR3rQjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Fri, 18 Dec 2020, Xiong Zhang <xiong.y.zhang@intel.com> wrote:
> > From: Zhenyu Wang <zhenyuw@linux.intel.com>
> >
> > Some vmm like hyperv and crosvm don't supply any ISA bridge to their
> > guest, when igd passthrough is equipped on these vmm, guest i915
> > display may couldn't work as guest i915 detects PCH_NONE pch type.
> >
> > When i915 runs as guest, this patch guess pch type through gpu type
> > even without ISA bridge.
> >
> > v2: Fix CI warning
> >
> > Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
> > drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
> >  2 files changed, 32 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 5a7df5621aa3..df0b8f9268b2
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private
> > *dev_priv)  #define INTEL_DISPLAY_ENABLED(dev_priv) \
> >  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),
> > !(dev_priv)->params.disable_display)
> >
> > +static inline bool run_as_guest(void) {
> > +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > +}
> > +
> >  static inline bool intel_vtd_active(void)  {  #ifdef
> > CONFIG_INTEL_IOMMU @@ -1766,7 +1771,7 @@ static inline bool
> > intel_vtd_active(void)  #endif
> >
> >  	/* Running as a guest, we assume the host is enforcing VT'd */
> > -	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > +	return run_as_guest();
> >  }
> >
> >  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private
> > *dev_priv) diff --git a/drivers/gpu/drm/i915/intel_pch.c
> > b/drivers/gpu/drm/i915/intel_pch.c
> > index f31c0dabd0cc..a73c60bf349e 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct
> drm_i915_private *dev_priv)
> >  	return id;
> >  }
> >
> > +static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
> > +{
> > +	unsigned short id;
> > +	enum intel_pch pch_type;
> > +
> > +	id = intel_virt_detect_pch(dev_priv);
> 
> intel_detect_pch_virt() calls intel_virt_detect_pch()... the naming should be
> clarified to make some difference.
[Zhang, Xiong Y] Indeed the naming is confusing. How about deleting this new added function, then move intel_pch_type() calling into original intel_virt
> 
> > +	pch_type = intel_pch_type(dev_priv, id);
> > +
> > +	/* Sanity check virtual PCH id */
> > +	if (drm_WARN_ON(&dev_priv->drm,
> > +			id && pch_type == PCH_NONE))
> > +		id = 0;
> > +
> > +	dev_priv->pch_type = pch_type;
> > +	dev_priv->pch_id = id;
> 
> Previously the pch type and id assignments were all done in
> intel_detect_pch(), so moving this to a separate function in *some* but not
> all cases reduces clarity too.
> 
> BR,
> Jani.
> 
> > +}
> > +
> >  void intel_detect_pch(struct drm_i915_private *dev_priv)  {
> >  	struct pci_dev *pch = NULL;
> > @@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
> >  			break;
> >  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
> >  					     pch->subsystem_device)) {
> > -			id = intel_virt_detect_pch(dev_priv);
> > -			pch_type = intel_pch_type(dev_priv, id);
> > -
> > -			/* Sanity check virtual PCH id */
> > -			if (drm_WARN_ON(&dev_priv->drm,
> > -					id && pch_type == PCH_NONE))
> > -				id = 0;
> > -
> > -			dev_priv->pch_type = pch_type;
> > -			dev_priv->pch_id = id;
> > +			intel_detect_pch_virt(dev_priv);
> >  			break;
> >  		}
> >  	}
> > @@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
> >  		dev_priv->pch_id = 0;
> >  	}
> >
> > -	if (!pch)
> > -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > +	if (!pch) {
> > +		if (run_as_guest()) {
> > +			drm_dbg_kms(&dev_priv->drm, "No PCH found in
> vm, try guess..\n");
> > +			intel_detect_pch_virt(dev_priv);
> > +		} else {
> > +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > +		}
> > +	}
> >
> >  	pci_dev_put(pch);
> >  }
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
