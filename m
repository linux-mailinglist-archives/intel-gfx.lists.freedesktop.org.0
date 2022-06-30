Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF5C5618B4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 13:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AB210EE1A;
	Thu, 30 Jun 2022 11:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80F510EE1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 11:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656587248; x=1688123248;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EFKNDYFqKSb/imhkyR+foK7iEv4MOOjgDjLH14nTJdE=;
 b=MdyXDE2j0ZYhUmVH99vs7gFLXswIjJPGKXg3FgdqC8q+qs13stLTUALx
 z5/WoaDgMtn/mfC7uMY65qp4nfqkKa44bvyfEHjzxeR7Avle0XL98U+7R
 vpesOHBOioAeK9Q8cfokjJd96CSSqA1gMfJLhYB4OGODBFpR0td9Y8WKF
 cP7zixr9JBQKeMNk/NPL2i35ywqO88qdhE1uAp7bxgycJnPv3ej9edgSA
 mYKnApko0RQWusGehf8HwVxnbNT1bGYGdDUSRV+i9ILS7yiIEZ1sme8xt
 MKiGumPb3UGdT8ZKfILtPHdOT/r0OYl+UiCBytzOkNOH2iAdzpZGt4fOC g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279863067"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="279863067"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 04:07:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="565817961"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 30 Jun 2022 04:07:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 04:07:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 04:07:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 04:07:15 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 04:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HswAoNip5YywGAxGAnkNNP/1WXflyR0dsq25LlFvQt7MX4BvC+Jk3k7+i3E8xb74jx6krYhxjze85PNEq/ZDoLFwgu+KQmEuZAeXEV0LZfHg2wx5EiEkzGKxFRNsPq+VFS5IlUe4CIz1Z0LGtWlTNqUraGv4UnbKEVXEeThPhJtICXtjueu25sZTTMQlX3nCvm2Kob+Ld5CNwlx9SxPmNfECuuMBHMHuWqjfcsYbzGmc+GF8n0NZ1+0DqOfX7ATrIlQ1Sbu1NJ04Hz9A5LRo+JXJ1Z3tjajzfpWWZNhGl3DsVlQU4U2Vws/ARi06hOvyWNO5v9RMliOsfxtFlNMNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/krq2eMIj/88kTvTFbWDCcRLfTaX1pf7OAeKs8yXxSw=;
 b=QxN5yRz/Uz/LrVCm0nyxtQwz4zsBFflzaIYBO2qmteGCL0p0gJ/N6zM+chkfZSwr4owjYOIVjweDd7F0VTFMydJnHrV49A/frqysSvvolzNTyTQvw3mE6LTfqnRljP/k2g9oBXtN/CeLnBxar+0e1D9P0+0TM36ibmNiNYt2ZRrtajoQqrN/56HFC8v1K4VrYFsSFeuJ2bYcPMSbL5zzmxFK2XfaPx+MtveLtxqnvVIoj7we2IPeiySNgpQjvzP5pmncioL3QCfZKOgbS683mAsBBFEqb2p1slMknZ06AabNMrfZHhMdHM/q8bLR+93X/j8XS0gzM9akwZPnS0/aoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN6PR11MB3326.namprd11.prod.outlook.com (2603:10b6:805:bc::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Thu, 30 Jun 2022 11:07:12 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 11:07:12 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv2] drm/i915: free crtc on driver remove
Thread-Index: AQHYjE/ttYapa21zNU6JImNgVB3BLK1nklQAgAAP6ECAAA4FAIAAATKAgAAUM4CAAAKZUA==
Date: Thu, 30 Jun 2022 11:07:12 +0000
Message-ID: <DM6PR11MB31772F6C4F6F915AB451B1C6BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
 <87k08ypp9z.fsf@intel.com>
 <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87edz6pkbh.fsf@intel.com>
 <DM6PR11MB3177B8A6EEB239F74699D6F4BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <878rpepgru.fsf@intel.com>
In-Reply-To: <878rpepgru.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 88f022ae-adba-4931-148e-08da5a88af0a
x-ms-traffictypediagnostic: SN6PR11MB3326:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: znKPk5n+i6dM5K0QfHVYlmkkH65ccrDyPOqdsOEjRluy/OHl5mZel9kyLGlGVRfN1Vmp674meuDV0YImRojx88syKSRrFBumjdyhZNV7wGYhW9S/EXeQQ5GrAD+3SUL7VWRSJqBP2D6/S4dxJ0ksP5WUuL8zfIKqlX041JhrKCdIbG+Sa4XQ4g4akhVLuGM+ORUXBOeOIOR9tvO044olodOE8DbeeNZGNA54c3Ih1Vv1vo94+tdVsxVVJ2hkYZKhMbytANvgCFzZh8A4UuejbOdHmq7oReGXh4wgLX23Sm2o7ESFfuNHCpDZEtjjFuXa4ErO7kcA+KwPx9S63/Zj6hpG0cbRqDflI+KRr76Kc2d6yMGtA97dVmNEyc9N40Gx2Wi9uSdv6sgRdfc3xCird+1c/bvkD1SAKBYCcT8tuTG/zLEyfmtvBYB5mmZV8cMlyhSiIvBEDJEYEMg3PyV3jaJTd/MGI7Cgm09KGxxXZJSACmSyKOKksjUrgYNJbCwWLFAYLSRhcUcsqN6yKl8SpD09VdpvuI5ONVs2fPhKoiFc9dts61YGS1DDenD63xZ7frjNUTczRq9UIXwZiHwTt21sE/8buCT1aD/nMeOe5MGX8FHNLkF9l0nK9+d8ac6RUGsapAneJFW/LEnAs5NDUKiymu4BjDq+f/b7yi7NGl8gFTRxgJSoa2dKHZknGZxFC9eQS4PeXhXWafs8swRhxXR+fCdR0TEcATB4HiUZwEZbJ73QMBCs9Su7sO3vA9F9yMmzynxLbC7YwKhxj6SZ28iyvck/Jt2k3MGBusNXozpRDbAE4Qsmhtyr7C8tSXGo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(366004)(376002)(346002)(39860400002)(76116006)(38100700002)(316002)(110136005)(26005)(9686003)(54906003)(55016003)(82960400001)(86362001)(38070700005)(71200400001)(186003)(2906002)(66476007)(66556008)(64756008)(41300700001)(4326008)(478600001)(7696005)(66946007)(55236004)(8936002)(33656002)(122000001)(6506007)(83380400001)(8676002)(5660300002)(66446008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cGLT4IYGiRkRfi1jS+Oqa998ZCuEHK63pwIVN6y9EE99vgjgDlRaqvI2U7EE?=
 =?us-ascii?Q?pI8DcViT/5eDVBBV2dqPAto4gbHZRHgDlrXz5w1/fXjpCZuLURHkbGjQPOK1?=
 =?us-ascii?Q?qj2CvzudXzf/ZbX5hnaUPaAQFMp9DT5n7wtj4CH14YDZpZaNZz1QqseXrbCm?=
 =?us-ascii?Q?0MwxWVE7IIBt780NGWTK12wkOS1YKJRlUSHQknubMRH83X46Act4BtRMWk2U?=
 =?us-ascii?Q?YV0bpaF1rHx2DB7asxWN4Z+TKfXx6WL4CCFG6OioJMEhYsObnF3is6/27TTe?=
 =?us-ascii?Q?9ZJzszlVQOx4QsqkbdwVF04LIbpFKF8Hd3JhF4JUmuS1bPlXhnT55MjEGT1B?=
 =?us-ascii?Q?DQuLrA72AGy5TCTHtR6Do1lUP/v4nXKVCH9g8HuQKSYO6jBGAKRYufowX9xf?=
 =?us-ascii?Q?aDD6vxKQ0MQ+DuJmloymRIs8QqpESyI3Ap78h0ZB0ceKq5L4IVvQhE4ujECt?=
 =?us-ascii?Q?JniucZCitoV2ga6konvGKeRSoKDDHv2TEv9dOWWCUQiE335hLfvIBbKqAe2I?=
 =?us-ascii?Q?nljkZHfL1ycn6EMZsNiMBFJbq3ikBoR5K9D2yPETxHBcFPxGtYWUePiqnLOx?=
 =?us-ascii?Q?nONeJPkRCndpDjkPdHh4TJLTQmsPfi4+53JwFFkDAeWKGnNR6HJt39VuwmcS?=
 =?us-ascii?Q?5lFEHJm6rqKdFZbMTB5HLeaL47/bO4EmivKUcbmfrc+IGF6eCZFWS9XsOXOh?=
 =?us-ascii?Q?tKpuzBxNhot/yqusq4SxZARRFSdalIRigsOTal1wTS/jjN38JDeaOiislgu6?=
 =?us-ascii?Q?ltqKt4F+fOPw5OYnUCu6JMnHEc+y4y4DsAjULTRYiF+I5Goau9WyJ4xUKBRS?=
 =?us-ascii?Q?BlUMYl3LrP56gC9QCbo4xrFBhOpWgyRki+USwTAfMEnfKQENwqnBTWQWj08M?=
 =?us-ascii?Q?EJk71HUjoXgqoYXIs/MZTDAFezl8zoNPa8UeS9bUJfx93pfMHs5q5SXTeFuY?=
 =?us-ascii?Q?tgLu/2VpmEv3MvpUzFrHz0t9t364y0bu/1Rp1DtDJGVCF/OnaVrSKezTz43q?=
 =?us-ascii?Q?tgo8FDfW7SGcfj3JjmL8dEL174y43/DfzcyjH++fyG8QbdlFyPsk+55VUCxc?=
 =?us-ascii?Q?lnGX+nXMudnwajbL8S4wFL4NrAxKsmSVz2D1U1h/GFNF2j0DWUEvuNfRhaQ7?=
 =?us-ascii?Q?Ao+ACpKoAKZjvDy2FI5kJ5NXGZNv9eUUkfrWNFLyCJGwccXhQELLsRMGJK22?=
 =?us-ascii?Q?ynFjJvggLOpJHipD96zukcuMgQz0u1aa+WREMKGecDHWNzLknPXKW5+g3N4w?=
 =?us-ascii?Q?52KQN5JuhYEuA/MYpnnmyp7Pt4ns8VnurU0I6GWxvSnt9BU2oslhtVBWTWP/?=
 =?us-ascii?Q?p+L3+7zkEd4uCW0hURa0IAU5Lbk2RGu/hhAhnxqT98bjIeJS86fcHjE8UqO9?=
 =?us-ascii?Q?Bi5H5t2nr8ZzBeL6a0HvFEMfuvADMv5PAcRX8dWNLUVgqbYhHuXmz6l2pF+x?=
 =?us-ascii?Q?bg2z3hYdASVz6uIdTnqXo5BxqCxem4BcJRalNYbGI5g8CEjR7z0RbAPDCXjh?=
 =?us-ascii?Q?+AhWj6dm+wDSSBtjL0LypxFK3caGcgCihqpgTvOTKOz2yuur3ciROkYZGZem?=
 =?us-ascii?Q?Ni4MoEUN8Tg3yvmSN/5tSW0OMCHtGA/yxvgaT+tT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f022ae-adba-4931-148e-08da5a88af0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 11:07:12.4915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ER8b6bmzm7ZApWLo4EGN6+4wzcT3furPtB8TJqG32rpODILSKkg4dtq3iyHLliu49JvS6bhUES4a0xDTNc4yLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

> >> >> > intel_crtc is being allocated as part of
> >> >> > intel_modeset_init_nogem and not freed as part of driver remove.
> This will lead to memory leak.
> >> >> > Hence free up the allocated crtc on driver remove as part of
> >> >> > intel_modeset_driver_remove_nogem.
> >> >>
> >> >> No, there's no leak and this is not needed.
> >> >>
> >> >> See drm_mode_config_cleanup() calling crtc->funcs->destroy() on
> >> >> each
> >> crtc.
> >> >
> >> > Sorry, I didn't notice this function.
> >> >
> >> > intel_crtc_alloc() is called as part of
> >> > probe->intel_modeset_init_nogem->intel_crtc_init
> >> > on similar basis cleanup/free should be done in  driver
> >> > remove->intel_modeset_driver_remove_nogem->intel_crtc_free
> >>
> >> It's just an error prone extra burden for the drivers to take care of
> >> this manually, so we have drm_mode_config_cleanup(). Which also
> >> cleans up encoders and encoders etc.
> >>
> >> > Does this look cleaner?
> >> >
> >> > Kfree(crtc) which is called in crtc->funcs->destroy is intended for
> >> > cleanup and hence
> >> > drm_crtc_cleanup() is being called from intel_crtc_destroy(). The
> >> > comments added in drm_crtc_funcs say that cleanup resources on
> destroy.
> >> >
> >> > Again looking at the driver design, intel_crtc_alloc is not done as
> >> > part of any drm_crtc_funcs, rather on probe->modeset_init_nogem, so
> >> > calling intel_crtc_free from remove->modeset_driver_remove_nogem
> >> would make more sence.
> >>
> >> That would add another ordering dependency between calling
> >> drm_mode_config_cleanup() and freeing the individual crtcs separately
> >> afterwards. And looking at the cleanup code, I'm sure that's not what
> >> we want.
> >>
> > This is for sure ordering and not dependency. This ordering is being
> > followed all over the drivers across the kernel. Just like simple probe=
 and
> remove.
> > So the usual tendency would be to see as whatever
> > initialization/allocation being done in probe in the same order
> > deinitialization/deallocation being done in remove.
> > Usually in probe multiple initializations are done and so on each
> > failures a goto will be used to cleanup the respective initialized
> > stuff. Eventually these functions mentioned in the cleanup under the go=
to
> will be the one called in remove.
>=20
> Well, ordering is mostly driven by dependency, and as I said it's not pur=
ely
> reverse ordering for cleanup, because of non-trivial interdependencies...
>=20

I am also trying to bring in the same reverse ordering, considering the dep=
endencies
so as to make the code more readable.
While getting to this patch, I didn't notice the .destroy part, after consi=
dering that
I agree this patch makes no sense, but it just opens up opportunity to clea=
nup
remove so as to follow the reverse ordering to that being done in probe.

If maintainers feel that its not required and would survive with what exist=
s, I will
just drop this patch.

Thanks and Regards,
Arun R Murthy
--------------------
