Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D68634F56
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 06:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B079A10E4E5;
	Wed, 23 Nov 2022 05:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F30710E4E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 05:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669179846; x=1700715846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KtmALDNfg9B0INYpthfp7ksuSr4AQoZROnYflXSyzNs=;
 b=lgDW1ApYmudx/bWzyq3uqYxPFwuHRKFyt5hcEQ+BPrApovk3CXRDj+/6
 F/0gi6tWJ0gbGXJ2ZakpTJ/TvWYESRO0/AOxX0XsdTALaD6LAQ/Cc0rjd
 O7JDlW8JtrM1cb9QWbY0GYjGUzsNynEHkyrbguQ4asnt5H9q03Nu3QQ0U
 jC8iNi1k/hN73MvWPR2bnF0PD7+PDDaNWHQCwAhgGDia9fMxtvnoxT5tT
 /cz0alryGhXf+155Sp7aOpFIo1vSnJmcV6Ndj/8tvZKtT3j0cxiFS47TN
 FJm7T0OIr92LjklMu/ycB0bOve3BLFutk1fDb9322+m8AyOqD4lgMDU/V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="297340238"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="297340238"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 21:04:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="816348920"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="816348920"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2022 21:04:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 21:04:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 21:04:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 21:04:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 21:04:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZkkSn16/ZzoBpBYlURk1yl5cDxza+X2IUD5SwyyZm9mXBWfb25QeQ4dtqNEB6s/WotgA3Lglg+7NiRX8ZZxxEnYJcs5zzlnd64gvsAc1WmyMpNcX8L9PYvOXTGQx8WGSc911HigPtpMAtF+jCkh3RymdsnKUVZFBGcQmMdYb7lsJ/ZaF8jUcNVP70rZobJmldL3NuYpywgDBDCUO+T/lhrXEWRcKDtCueWA3eLgI2fUdt52+TW2d7I6ybKic3pYmBlj6tTU1MQtB8VgM3ZO7aQtm2h862ADhtVS5vLYzy7BIsVjcptQ0mSwHFwikzz1eJm2mR1MxVOnAhezv9DddQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rli/A3tCyIFn+cqveSUtJ8EuXOZ7nXQBHnSbqWQogdU=;
 b=RPG063P7MYt7xO+x9HUb6rFdfsfrQSqvQV2pGXuq6kZiGM+Bvlp2lRJDnboZty3+Q4uMxFscgC0lpMvqd/2Ys997mGjLs/n/rtfXxFNno1wkAJm+/MJ+72NpMncrW6wZDIBvd/byDnPqx3jLbysoSjrnX+aHNZnJNEy9e1xD4RYjOXOXYKmcI1qgSj58LYJF5SAJIsdWYDk5esOaFvFUulKOfuap3JRmpAU/lRSGKUJ0qAuwnsdCmWzJq2Uj2eh6xq+uoYAhqxjKsEeEnck3O345jbcN2w9ICZs4fI/bMVnIsDoRFnIMQ6AT+2ZjOHKNv3fQESh5n37iCMwYV/NVEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1469.namprd11.prod.outlook.com (2603:10b6:301:c::16)
 by SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 05:04:02 +0000
Received: from MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252]) by MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252%9]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 05:04:01 +0000
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
Thread-Index: AQHY/ZDX0KIGaRvcB0GjSOKI9tuJTq5JNymwgAK/STA=
Date: Wed, 23 Nov 2022 05:04:01 +0000
Message-ID: <MWHPR11MB146982974E532656C29435E9B30C9@MWHPR11MB1469.namprd11.prod.outlook.com>
References: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
 <CY5PR11MB6211B459E20B5EA67B310BD9950A9@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6211B459E20B5EA67B310BD9950A9@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1469:EE_|SA2PR11MB4873:EE_
x-ms-office365-filtering-correlation-id: 35527098-f81c-4808-2e6a-08dacd102324
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BZJUEDU3d6ZHwhC0zLih1RC3mpi+//DpLRuJy8plcrhaQnIDcdOMR2/jIv/OeB9ue4G9TeSvPJke/DA/1C+2rPMWJ4NaulBbHqMzOnpaf7trfUm4q0Sx8ExhmXuI/wvn0T6x7rkYs7IRFK2X3cIRGJbqJk3GbRd/QNKeHwx0vv9d1d5s3X7fK7U+VLxPp9GOgm8ulvPPUNx1z3D92o5qOUQVoKh+jdSliq0Bo7XagVaOVfwZ080wrA8q5SAUxRoR2p+jieomJNbRVo4Ogmmf9RcdzeuOrEemuZhRzCLJz7ubAY/02TWI1QT5wIXQx6GHhaE7bJ90XfgZmKVAm5cRjcx9yR2jGXNjFcNjudiDRIhBGrTam0V2l881pHluOy/WzWhOONWDS+15eU+wdZQBddyrmn+b9MWSGc8h6AoBWXbZnw0eGDY+CTgO/6Uo5Lz51z2iycErD2IQBuzQLZFYFH1b1MV9XpcQaAPwyI6R3gIhS48sTeT6wAocD6eE2Cr9Icr+eMOxGk6SvFOREONPGXKQpPA+5EUSlgw1S2PDqE1Ap5DM69JIuk+0mWLdby619vlyprfQ2HHSklx2jrCCdPTHvAfDjpYzevY/ZCMcYazy6PhiJP+zK9UWHhH1WRApZuyyRzttnsSNu2KbuhmjFFFXb9hi8b3DFcJNAVJ52Vwk2feEdFXuyzuGEdG+BMqO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1469.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199015)(33656002)(86362001)(38070700005)(7696005)(64756008)(76116006)(55016003)(5660300002)(38100700002)(9686003)(2906002)(186003)(122000001)(82960400001)(83380400001)(53546011)(26005)(66556008)(71200400001)(66476007)(6506007)(52536014)(107886003)(4326008)(66446008)(41300700001)(478600001)(110136005)(8936002)(8676002)(66946007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?74kpenrN2V88w3gz+D/cOtr/CKG7M19hIoTt++mmJLT5QhivLwfwzP4GucUd?=
 =?us-ascii?Q?LaJiNgoStGtOx/aW3QWNGxnduK9dCgav5PzjllCpjUBqk0jl5vRbDJn5//rj?=
 =?us-ascii?Q?T84rebkJdfGsxbVtcZ/vWS4ijLUIxhBtYlXOqxwIG5fU/i/LC2MX5q5Ng4Yh?=
 =?us-ascii?Q?WLlPYmtbFwA7wdnHI89+YdjZetsbxM/eG0qVksJNHCeU+Jpa7V7TFXaBZNIp?=
 =?us-ascii?Q?TTR2ketDtKgFPGIn2+cBA6RgfDOI7tZUqRBEhj13CORbDddR4pQifZv8GsdI?=
 =?us-ascii?Q?A3saVe8liBISNI8uPj57qbIeMG9WrbtGeE5DkfxX/fG5BzHX3nj9g1M75rXk?=
 =?us-ascii?Q?PCuYEoC/Y08UWxy7rQlgmqeo9eKW5l8VWGMA/ZN5TfRZQODDZgh62C1/isiw?=
 =?us-ascii?Q?NA14IGhX+oIS3Rd3PTBTuZRYe4bvqOo2Xdv4DCf5ky2JbIaDeqDOr0oYFSHt?=
 =?us-ascii?Q?UJZJw638rTNeMgUGbcC8SAvXZOe22bQ7Pkv3/lz5YswIsjmyM5KVX0I+2qNA?=
 =?us-ascii?Q?LOQSqXI2JuCjK/fsGJ2c4YisvqdXun21x60XmhFxnwvGFDynMf8yrBgl2USx?=
 =?us-ascii?Q?OQuxuoO5jAMkr8LxB//o3uwRh/Nkzakh8c+qxpZ3AUfwj3GDMBPxKwcpjX1e?=
 =?us-ascii?Q?cpdczjOfqjgGVrmKAtfaM4U58htwpmsHI+2ppiir84ZHJHH5mc068RPkpIEg?=
 =?us-ascii?Q?5zLcXFsfWZIde11drc9q8/s1F/ALo1lNrYP0YxTHxInsay+O5dkHiMLMdO27?=
 =?us-ascii?Q?XoQALvvhl1s/1cSMA7U5w33ixrhL3GSR2scjAPBlWKpZiPYMjidZjXMvM4vV?=
 =?us-ascii?Q?7pEvvm7cLb9z8f5CNsDI5MfW8kO+ksPaHIHFPGUhaWPP9N7wlnd7qy9Pnv97?=
 =?us-ascii?Q?+N9qSwCfxyZUZjaMtJqfQulQYhepVQfsQn6W6nHmoIHmdDLYPI0eO1Rgal9Z?=
 =?us-ascii?Q?Ej156Q3aQnEKOorsyryfBuJQjg9cQ5RF/rrHzksvbLgr1NQ61q5LLJ0Lh8j1?=
 =?us-ascii?Q?CFtZ6dORwwpo1zOci/gPfwrqlugvbdVywUVPLzbj3MWTqGXadnsBdnp/4d70?=
 =?us-ascii?Q?7oq+f9QjFabVahJweTyXTKNFbaVdk+s7NYhfMOQVzGoxIch/BmMmTY3ehR9D?=
 =?us-ascii?Q?jLLz2Y+4KN3E0IsOQeX2f+uSiSjCz8Yx4AwtKsQrGB7YOeLXeYz7//Juu1D6?=
 =?us-ascii?Q?zHZcwq72ujt9eOXQW4fQPzd9wPbOfkqWGsP+0/48v1Cd5+0yfOD0whaMcXbv?=
 =?us-ascii?Q?o7cec5hO0e4tI+LvKeEKRniuPlzC6mgJV3Qd+/KXMSD4LXpugK8U1oJQALAj?=
 =?us-ascii?Q?jCgkTBUJMP4yJntrIgNNihZHvlZNDJw3YRqGygWJg5E2HfV7iOMI42OKAoQE?=
 =?us-ascii?Q?bw+wGH5ypfYbv3Zt1bUeN2hognk2SLUEfjoVyMfUk/sNCTv+B/uj/4UscQoJ?=
 =?us-ascii?Q?5sbRoecqyuqc84yLDsIT5re+5PeciJZQYrTB5mId6ZhxqizcSn4oPH6NJcqe?=
 =?us-ascii?Q?y8BaLBOmIxdD5zhb/8CL9F7ENqNYsTttsZJfhdZtQ6k+787I8ISW7nh9jovS?=
 =?us-ascii?Q?tujlyTsyVBJaH4zajwgw2n6zFuHWS2y5vHchPx5IMZQkCPxlAbH7JzSe464T?=
 =?us-ascii?Q?aQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35527098-f81c-4808-2e6a-08dacd102324
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 05:04:01.8466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jPWChKBTDc9ZoqizKdgFcA5GQT8sPUUOwWvTfcXwddrgparN/E+PKxUrPwTSPxRwo6p5reRrQVEivV+Zj4b8pAVv15AWQL6Q+3jcXIjo9p4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: 21 November 2022 16:59
> To: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Auld, Matthew <matthew.auld@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Himal Prasad Ghimiray
> > Sent: Monday, November 21, 2022 3:32 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> > bandwidth via sysfs
> >
> > Export lmem maximum memory bandwidth to the userspace via sysfs
> >
> > (v2)
> > Add TODO comment to have client parts specific condition (Anshuman)
> > Remove prelim prefix from the sysfs node name (Aravind)
> >
> > Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
> >  drivers/gpu/drm/i915/i915_sysfs.c | 28 ++++++++++++++++++++++++++++
> >  2 files changed, 30 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 8e1892d147741..1d59b84b86ad2
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6606,6 +6606,8 @@
> >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed
> > point format */
> >  #define	    POWER_SETUP_I1_DATA_MASK
> > 	REG_GENMASK(15, 0)
> > +#define	  PCODE_MEMORY_CONFIG			0x70
> Please use DG1_ prefix as this mbox started from DG1 onwards.
[Ghimiray, Himal Prasad]=20
Will address this.
>  And  please try to follow the ascending order for commands attest for th=
e new
> command we are adding.
[Ghimiray, Himal Prasad]=20
Ok.
> > +#define
> > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
> Here as well use DG1_ prefix.
[Ghimiray, Himal Prasad] OK.
> >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv,
> > pvc */
> >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */ diff --git
> > a/drivers/gpu/drm/i915/i915_sysfs.c
> > b/drivers/gpu/drm/i915/i915_sysfs.c
> > index 595e8b5749907..69df2012bd10e 100644
> > --- a/drivers/gpu/drm/i915/i915_sysfs.c
> > +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> > @@ -37,7 +37,10 @@
> >
> >  #include "i915_drv.h"
> >  #include "i915_sysfs.h"
> > +#include "i915_reg.h"
> >  #include "intel_pm.h"
> > +#include "intel_pcode.h"
> > +
> >
> >  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)  {
> > @@ -
> > 231,11 +234,36 @@ static void i915_setup_error_capture(struct device
> > *kdev) {}  static void i915_teardown_error_capture(struct device
> > *kdev) {} #endif
> >
> > +static ssize_t
> > +lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute
> > +*attr, char *buff) {
> > +	struct drm_i915_private *i915 =3D kdev_minor_to_i915(dev);
> > +	u32 val;
> > +	int err;
> > +
> > +	err =3D snb_pcode_read_p(&i915->uncore,
> > PCODE_MEMORY_CONFIG,
> > +
> > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> > +			       0x0, &val);
> > +	if (err)
> > +		return err;
> > +
> > +	return sysfs_emit(buff, "%u\n", val); }
> > +
> > +static DEVICE_ATTR_RO(lmem_max_bw_Mbps);
> > +
> >  void i915_setup_sysfs(struct drm_i915_private *dev_priv)  {
> >  	struct device *kdev =3D dev_priv->drm.primary->kdev;
> >  	int ret;
> >
> > +	/*TODO: Need to add client Parts condition check. */
> Nit use space after '/*'
[Ghimiray, Himal Prasad]=20
Will address this.
> /* TODO: Need to add client parts specific conditional check */ would be =
good.
> BR,
> Anshuman Gupta.
>=20
> > +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> > +		ret =3D sysfs_create_file(&kdev->kobj,
> > &dev_attr_lmem_max_bw_Mbps.attr);
> > +		if (ret)
> > +			drm_err(&dev_priv->drm, "Setting up sysfs to read
> > max B/W failed\n");
> > +	}
> > +
> >  	if (HAS_L3_DPF(dev_priv)) {
> >  		ret =3D device_create_bin_file(kdev, &dpf_attrs);
> >  		if (ret)
> > --
> > 2.25.1

