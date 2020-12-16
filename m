Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115E62DBA37
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 05:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA34689CF9;
	Wed, 16 Dec 2020 04:51:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81FE789CF9
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 04:51:32 +0000 (UTC)
IronPort-SDR: 5M71KduRDJVt4bHIvKQEdp6JIxJH2Ge+PIJ5GxkDyQ4d/zl4SOzDXAo4yC2GiYOgM9AY3fiN48
 bHUi/1OSWcOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="239100065"
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; d="scan'208";a="239100065"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 20:51:31 -0800
IronPort-SDR: DWdMxheY8RGR12jjur8Sq6cU7cVNMKGkhy3O/etB5azQ8aWSrhfIq12kV0rO5eSE77O9JS8ERh
 SUx/mDBEzGpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; d="scan'208";a="556638988"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 15 Dec 2020 20:51:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 20:51:30 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 20:51:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 15 Dec 2020 20:51:30 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 15 Dec 2020 20:51:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lvTHgfOXJD27GkIXG+uzn1wZIWlArjV7ALv9MjdfJuiqy/LrHLR+YmU625bruI6tjNdxuaPkIGTwPZLDui3YR5EYTlkUYzxALMHMQ6lnWIvzyhL7zbAqv/yROwKYKYAcC3VydjACW4ZpJa1Ih+r23sQS687oevMDabim5MGDvUI0z0i6HoUEjzTlv3yvIbrC9NuBgZcFLjW+gfnHxITJAIWRDgiknaQ0GJHuO/EXkETdGiVHyfQWdEnXOMGBlVRW+Ei0PhnimZ0BL0OZzOR+2J5ZrX9GL566cOmaMMyitnwqW9AfpdkwBwRpxJ/kOouxzte6mH39iv4Vk0jV9HzQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BVlbmVDSQz1wxIaybKHFtP4J+96jLqRPFNnQ5AP/kRE=;
 b=MmGwwZ0NhcU8YQ2BPBtzhuIvIJs5H9x5rqwUGnhGUYeougsW3jfhpaGhGLl0avQqL5U88dOn5LOknpPgHzq1FvOzayUESyczuZT6NrOzX2nWMawbDv5etIOFzWv2JxKvjcKTWjjvldjHeoT/weO6iEtNAF/Y/rCvc3GajmxJMEyxD1H+W+sZyBPQcJmodxOzvNSvi8msBanf5eYmyBrsgLmjF8FAxf+NpDEoDvR3NRUVH9OsUQiEC5Iok4g8RZ8AKLgl4k1jDgkBt060tYxwLThx4vKKy5Cs57iaBwmCE74t/io6USSOOmY9UOSQYb+S3XEpCeBn88vPdmNKWBvEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BVlbmVDSQz1wxIaybKHFtP4J+96jLqRPFNnQ5AP/kRE=;
 b=AwgsOa/F+41jD+B8k5IHgR97ckw+omKFpdfaEw7APfoIDfB4+zsyAzbdZACViAmB/KYR7zfRQH1jc6sP90lPkKxwHQc7OJelwlPCnw+A1UsNrmy6PJ0CuezeEexhylnwu8kpTpEGn73pbpc0Uh1u3711sfCh2ouls/bqG8OJXdU=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4265.namprd11.prod.outlook.com (2603:10b6:5:1de::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Wed, 16 Dec
 2020 04:51:27 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%7]) with mapi id 15.20.3654.025; Wed, 16 Dec 2020
 04:51:27 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v4 01/21] drm/i915/pxp: Introduce Intel PXP
 component
Thread-Index: AQHWztA8CzM7BS1ciUSWc6LXZ0TzJan5Lvlg
Date: Wed, 16 Dec 2020 04:51:27 +0000
Message-ID: <DM6PR11MB45318863BED1E7EBD9F0135AD9C50@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-2-sean.z.huang@intel.com>
 <160758965509.595.13478281628499615817@build.alporthouse.com>
In-Reply-To: <160758965509.595.13478281628499615817@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51065b76-e36e-4f2d-3a0e-08d8a17e3f7b
x-ms-traffictypediagnostic: DM6PR11MB4265:
x-microsoft-antispam-prvs: <DM6PR11MB42650F01F13F8B85B752D8CAD9C50@DM6PR11MB4265.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2s1L2QyQWV3NNa/o1XYk726twPq5GV7CPb8idTv/ODfeOW6KZiEamqzLaztU3PViTJ+BXxsp4Jpn/5DnAbwjAuLHVn+4SOpZE8RbCWVZTMgPwAtcWCgC0GfhELq/VyZvgTChJ2sbSRBXQE5d0b2qsQ+yx9w8PyRIGUfTqK+ErbwxFL1BPWQ4mKmXJhvfG4KroXMVuj0/RgdTiIR3Bp/QrchIlaAMt5tsJXv9eNhuGEDpYFlXsqeMkov6o2B07HDJ0qNikeEpQhbo/Z3NXQPOQU180RJQhuKP4/wkePPOLnNoAYN7w7O4CzwVoeAKisnb4KDwelKjLu01QY+PGRAEsza1xh6TWxJJaZ3gLdQ0czQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(9686003)(33656002)(83380400001)(8936002)(55016002)(71200400001)(26005)(8676002)(86362001)(186003)(7696005)(4001150100001)(64756008)(110136005)(478600001)(66946007)(52536014)(76116006)(30864003)(66446008)(6506007)(966005)(53546011)(66556008)(5660300002)(66476007)(2906002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TlNXakRzWVhRM1pEYktWM1Z1cEt1WnMyVER3UWFhMWRvdU1BVWRSVTBnQ2Fl?=
 =?utf-8?B?UmNsdVVmWXBxY3VLZ25QMm1xcmN0SThXTmdwOXo3QnpVVlFEWFQ0dld0WnUx?=
 =?utf-8?B?T1pwSDZqZ0VrUGJ4VEF3QnRIenFPc3lzZVJqdjdSTENmNmJXWTVyNEJ5Tm9X?=
 =?utf-8?B?amhhSFFTMVduaHVMdDBKc1oxR1RMQnhlNzVhTWdSRUw1UG9pY3Zwakx6R0Y2?=
 =?utf-8?B?cnFEaUZ0cUlSTVNoajkybTdPdDg5aVlxMmpUdElkM2cwSDAwSVpZK0JnVlUy?=
 =?utf-8?B?TzhmMEtnN0pDQzk5U3VRa1E3T09RRmhXNFJEMUJQU1M2UTh4Q3YwaGJma2tw?=
 =?utf-8?B?d0p2U3JVWFJ6cEYzbzEwcFNFdEpwNTIzMzdvaGF2Sm9EWXNLejNKUUxXeHF5?=
 =?utf-8?B?RlR6eUVBenNSRzVxdjZRa24rU0UvL3lWUHpmaG5RUy93STFYWGY2WHhZUUJx?=
 =?utf-8?B?Z05SWkZneGdIVUMveUs2WHY5N2ZMbFMvek1TZWJCQm4yQnkwRmVMR2NjUTZo?=
 =?utf-8?B?Zk93RDN5cHRGZlNyL2N0dGJ6Q2toRnFDQnNFT3NXRWZock5PSWt3eC9PWTZu?=
 =?utf-8?B?c3Z0WXIxdFNIQkd1dE41SDRnT3FhdU51Y3BQTmYySkIxQlowdnRucng4ck5u?=
 =?utf-8?B?a2FqY2FQSkp6Y0VndXpueGpZRk5KcWtmaDhsYzhFYzlpSVpsUEpGSTc2SlpK?=
 =?utf-8?B?eWpmeStaU2dhZDNoZ1lXMklPcUJ1Vm01T1RtQVB3cHZkQXlaem1XOFA2Ym45?=
 =?utf-8?B?S3ZMUDl0T1NNa2pCbWlqWnp0MFdTM1F1QjhmdDl3bmZNOTljcmRUS3N1UGRS?=
 =?utf-8?B?OVJEL0JITmN1a1lIYmJza0k4b29YQ3h1UGZRcTVST0hUdzAwVjd4NGFxYWxY?=
 =?utf-8?B?ZmYxU1RTMkk4R3JyOVF0ZlBSOUNWNjlQYTFWNFIrcHV0NHZRY0MzemJNOVZM?=
 =?utf-8?B?Y3d6eXQ3T245ZnlTOTlHQTYxTTV5bitpM1JaNGUrNENRcVg4aVhaL0ZwazZk?=
 =?utf-8?B?ditqVVZJVmk4SWo0L2lZNEdlamM5eCtLeUpxNjVLREUvWUpyaWxGZDJCUjls?=
 =?utf-8?B?V0Z0MEFyVE5CQ3JBaG9BN2VUSlBUTVBTVWltblhoR2ZySU1MZngwZUpzY2pa?=
 =?utf-8?B?ZEw0V2E3RjhCWnVLSnM5K3M3cFd4aTBFSkdBWDFXT2NJR0ZWYkZxRUNDcG1s?=
 =?utf-8?B?MWF3QWdOK0hPZlQ1R3IrMVJXK1YxckZJanNUOG5nUnA0SHd2MjQ5K1c4SnNN?=
 =?utf-8?B?NE5nenZQQXNreDczN1l4N0RpOStqVjgrblUzb1lDK3FaamU0STJ1NVlMWFZo?=
 =?utf-8?Q?6qyf4K8xWnoMY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51065b76-e36e-4f2d-3a0e-08d8a17e3f7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2020 04:51:27.4582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4YnSzQsESQjjzSlUcDAHG/eV9NOcRBRkd0+XCBaExx4AUT8RkdXbvwT+yJujxbNzwTj8T6cmTSm7RLTvxKBqdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v4 01/21] drm/i915/pxp: Introduce Intel PXP
 component
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Wilson,

Appreciate your code review feedback and apologize for the late replying.
I have made those modification as below and the change will reflect in the next version. (v10)

Best regards,
Sean



1.
> So this is dead code then?
> If the recommendation is not to enable it, and you don't even add it to CI for testing, what's it for?
Yes, I have changed it to default.

2.
> Mesa is but one user; the first but not last.
DONE

3.
> Just call it.
DONE

4.
> Not an error; the system can survive without, and userspace can detect the feature.
DONE

5.
> How often have we used uninit?
I expected uninit is called only when power of or i915 off, very rare chance.

6.
> Only include the types from a types.h
Got it, added intel_pxp_types.h accordingly

7.
> You are not inside gt/, wise not to bake in such embedded assumptions.
> i.e. all the container_of(pxp)>i915>pxp will be far less fragile with a pxp->global = &gt->i915->pxp.
I see, so container_of() isn't preferred, may I know if it's okay to keep the pointer of gt in the pxp init call, so later I can use pxp->gt->i915?

8.
> Reconsider; this should only be at most once per device.
It is called only for pxp init during the boot time. so hopefully I can still keep this log, but please let me know if you still suggest to remove it, thanks!

9.
> System includes first.
DONE

10.
> As already stated, this randomisation does not add any security; and does not mean you can safely have multiple contexts without collision.
> What you had in mind was an ida.
Got it, I have removed the ctx.id, instead I just need ctx.inited bool


-----Original Message-----
From: Chris Wilson <chris@chris-wilson.co.uk> 
Sent: Thursday, December 10, 2020 12:41 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v4 01/21] drm/i915/pxp: Introduce Intel PXP component

Quoting Huang, Sean Z (2020-12-10 07:24:15)
> PXP (Protected Xe Path) is an i915 componment, available on GEN12+, 
> that helps to establish the hardware protected session and manage the 
> status of the alive software session, as well as its life cycle.
> 
> This patch series is to allow the kernel space to create and manage a 
> single hardware session (a.k.a default session or arbitrary session). 
> So Mesa can allocate the protected buffer, which is encrypted with the 
> leverage of the arbitrary hardware session.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig                 | 19 +++++++++++++
>  drivers/gpu/drm/i915/Makefile                |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  7 +++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         | 29 ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 27 ++++++++++++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 22 +++++++++++++++
>  8 files changed, 139 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig 
> b/drivers/gpu/drm/i915/Kconfig index 1e1cb245fca7..a42b9b031455 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI_PXP

Doesn't exist.

Kconfig dependency resolution is not recursive; you probably will need a depends on INTEL_MEI

> +       default n

So this is dead code then?
If the recommendation is not to enable it, and you don't even add it to CI for testing, what's it for?

> +       help
> +         This option selects INTEL_MEI_ME if it isn't already selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
> +         that helps to establish the hardware protected session and manage
> +         the status of the alive software session, as well as its life cycle.
> +
> +         This patch series is to allow the kernel space to create and
> +         manage a single hardware session (a.k.a default session or
> +         arbitrary session). So Mesa can allocate the protected buffer,
> +         which is encrypted with the leverage of the arbitrary hardware
> +         session.

Mesa is but one user; the first but not last.

> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index e5574e506a5c..99efac469cc2 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,11 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +       pxp/intel_pxp.o \
> +       pxp/intel_pxp_context.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \ diff --git 
> a/drivers/gpu/drm/i915/gt/intel_gt.c 
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 44f1d51e5ae5..d8e20ede7326 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -584,6 +584,12 @@ int intel_gt_init(struct intel_gt *gt)
>         if (err)
>                 goto err_gt;
>  
> +       if (INTEL_GEN(gt->i915) >= 12) {

Just call it.

> +               err = intel_pxp_init(&gt->pxp);
> +               if (err)

Not an error; the system can survive without, and userspace can detect the feature.

> +                       goto err_gt;
> +       }
> +
>         goto out_fw;
>  err_gt:
>         __intel_gt_disable(gt);
> @@ -638,6 +644,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
>         if (vm) /* FIXME being called twice on error paths :( */
>                 i915_vm_put(vm);
>  
> +       intel_pxp_uninit(&gt->pxp);

How often have we used uninit?

>         intel_gt_pm_fini(gt);
>         intel_gt_fini_scratch(gt);
>         intel_gt_fini_buffer_pool(gt); diff --git 
> a/drivers/gpu/drm/i915/gt/intel_gt_types.h 
> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 6d39a4a11bf3..05255632c2c0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp.h"

Only include the types from a types.h

Includes from other layers in their own section.
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -120,6 +121,8 @@ struct intel_gt {
>                 /* Slice/subslice/EU info */
>                 struct sseu_dev_info sseu;
>         } info;
> +
> +       struct intel_pxp pxp;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..ba43b2c923c7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +
> +int intel_pxp_init(struct intel_pxp *pxp) {
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);

You are not inside gt/, wise not to bake in such embedded assumptions.
i.e. all the container_of(pxp)->i915->pxp will be far less fragile with a pxp->global = &gt->i915->pxp.

> +       /* PXP only available for GEN12+ */
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return -ENODEV;
> +
> +       intel_pxp_ctx_init(&pxp->ctx);
> +
> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected 
> + content support initialized\n");

Reconsider; this should only be at most once per device.

> +       return 0;
> +}
> +
> +void intel_pxp_uninit(struct intel_pxp *pxp) {
> +       intel_pxp_ctx_fini(&pxp->ctx); }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..7c3d49a6a3ab
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_context.h"
> +
> +struct intel_pxp {
> +       struct pxp_context ctx;
> +};
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +int intel_pxp_init(struct intel_pxp *pxp); void 
> +intel_pxp_uninit(struct intel_pxp *pxp); #else static inline int 
> +intel_pxp_init(struct intel_pxp *pxp) {
> +       return 0;
> +}
> +
> +static inline void intel_pxp_uninit(struct intel_pxp *pxp) { } #endif
> +
> +#endif /* __INTEL_PXP_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> new file mode 100644
> index 000000000000..5ffaf55dc7df
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +#include <linux/random.h>

System includes first.

> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx) {
> +       get_random_bytes(&ctx->id, sizeof(ctx->id));

As already stated, this randomisation does not add any security; and does not mean you can safely have multiple contexts without collision.

What you had in mind was an ida.

> +
> +       mutex_init(&ctx->mutex);
> +}
> +
> +/**
> + * intel_pxp_ctx_fini - To finish the pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_fini(struct pxp_context *ctx) {
> +       ctx->id = 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> new file mode 100644
> index 000000000000..953a2e700931
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/mutex.h>
> +
> +/* struct pxp_context - Represents combined view of driver and 
> +logical HW states. */ struct pxp_context {
> +       /** @mutex: mutex to protect the pxp context */
> +       struct mutex mutex;
> +
> +       int id;
> +};
> +
> +void intel_pxp_ctx_init(struct pxp_context *ctx); void 
> +intel_pxp_ctx_fini(struct pxp_context *ctx);
> +
> +#endif /* __INTEL_PXP_CONTEXT_H__ */
> --
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
