Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C513589EAF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 17:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033979B5BC;
	Thu,  4 Aug 2022 15:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38929B5A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 15:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659626989; x=1691162989;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LcwKA7hbaOrkWnRZ8zrdcKLNCzn8fNqamoI+lAvRChg=;
 b=C11A83LAWDKO8a17eQSO3+73rfT9jPhY+0XKOP8gpc/gbXS7bMIrCyk6
 CH5e9azN4gWIIcuDPYjD0t/ifbNKdQybtv5Tq9rwbzWkUbiLaWjjFG5Pa
 dJJYuK6yz1S6/Fmtj2cOt5ncZivsaVrAzf9eXAbjRJ7TYOsbwWgonTBBR
 9D5NtIK2aGWVOwydj2jKUeDzjb4wlXb/u/Ups1nC+2Fa86ctODI5G5Alj
 z3AgiAcUWnQJfKUEFzbfk6+86SxfJGI7AkD1l1ORMc5epP9QGLY//1dH7
 irP3S0HZgqTATsL66eNK7F/6AA6c+T/vihvTiyoJm0kgjxlGQGnq8L6Gh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="288723139"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="288723139"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 08:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="631629306"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 04 Aug 2022 08:29:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 08:29:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 08:29:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 08:29:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 08:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LplU+2u/sVy4eeVmio08j6ZyzH6QO05A2vCtuW2kCIvNGJhYO9f9Z8EBHYMlqHIINU7RGdgEVtVla9WgBBDKjykvF7NY5cnj+j6yiLD4j3794MNz6PF2s+07i37DjS7NbGs2DK/udvXgMti9wHs3otpaWy/iNJqO5ndhnLdYPFmOhvzNQCiSgpn+X8MIzTbbNtOypwbeIkD7KQ/Soy7qGM/HBdMuMftwhjj+n5j7IqLYqJyyDBmk0itEcSmofxi0vIoUXmdmgOFOxfSDle+fZOCg31sh6gbxTsBMtWn1qQA7uITcdQwFweeLsKdhIk0qIiqO5XiElaK8F7YBGDjZGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOeNtCD+4JzeqAm+qlydZJRqXwh2a1xRadU7mBhqFdk=;
 b=gtfgYty2X6p0YbV/TqfhRN4MIiOQPOGgHffTatGdDJWDJJQo5isP3K1/Zz9U0UyHYGB/ftPmkmI9HyX3X3R34VfSi4a5wYrE1e8cQ746STG5Ans38ylcjQj9sCNl07zvhdqq/CJoRek123r3tmSBxKGpzUlEY2zISCyw3P132C0XRm1T+veAWwt4uLtXlWX/7zyFGIGkcyYyYN/hlVV+pu4ni/7o94WB/TRNqVYihc3WuQ99bb1TalKFG9O3N0U8WS/rhr0WoPZX7WLrMAwvkiN5BzdV4Y7WPZiE3vSWH0d8qGy2AR9Sv68yIE2NQDGySbEryU01k1aM1ZOt1B1xIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MN2PR11MB4094.namprd11.prod.outlook.com (2603:10b6:208:152::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Thu, 4 Aug
 2022 15:29:42 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5%4]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 15:29:42 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Ewins, Jon"
 <jon.ewins@intel.com>, "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nilawar, Badal" <badal.nilawar@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Iddamsetty, Aravind"
 <aravind.iddamsetty@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 8/8] drm/i915 : Add D3COLD OFF support
Thread-Index: AQHYnOcSBgPExCItykGeU0ufVj1Crq2e7egA
Date: Thu, 4 Aug 2022 15:29:42 +0000
Message-ID: <CY5PR11MB6211CC351EC9A35F44E8B478959F9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-9-tilak.tangudu@intel.com>
In-Reply-To: <20220721095955.3986943-9-tilak.tangudu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81c00a45-4e60-4664-180e-08da762e272f
x-ms-traffictypediagnostic: MN2PR11MB4094:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EiWMvYsrrAdejKWOkKEnG2QqGhepX4qYIICH07/wXu3JL0HEP11nZ7+UbZn9nUTaOucjH1gxg8WyEaTuMKCw2utARe7HPKCH7sIIXh5StDzY0TrYSPanaCOth/jhJznpJHisefIuC0GFhvAuWT/2mos6EWvJySPOkcZx9Owf9cGOVLSV3i1Q9TL/uuKwm6Q8co0Xb31xJWox26nfCat9Vnbobuf9wOJoxunvf7rishD6s/I5BITf3w8hm6oUe6PD7zhnUVs+TYsRo2BujkK2qZzqxrowCCe/03WRhmE6XfJCjgera9OZWW6298KX7gqSApq1rfXVZzpMF6Epc04xGrUGU8JUvhUnVb/lZHXI0+GPr9ITiE6XKJ928mMJSA8/35nuq9o/l2/vCRuBqJ5eet+iJHWcao13UPdrQFZnd8sn1uFLxoS+ieF9OKNXue4fbUX+Bp7Dg6n50EDUZLu3gQASkMGfa79ukbyK2GI3e3ip5tgwLg73I+b1R3YNLF4gEVkS95rxnXUEkVxhfpyOlNorp/aoxHWunLUiU34QeTr+Bv91n1zCf/7wBoE09Y9+7IPNMOgsZwwX2p4nBte1FUXV+8FN2BfOgXSgH/xivNbos+2sobIv/U6KvGXo/m923G1hXsU8PiN53NR+wd/G2jqe4+Y83SJJoQ4sYon1lUOQr3+t5OdJwQLZ3Vvi/C5LYY5SQ1HIrsyJ78+TlV0To9VUGoy4kXhYWwErrTdrG4QzZlAm/5AJnM8E6K+b1T2QiKcq4j9hzqPB13C4S/W+p6RYsM8niaTXg05MxaCngaugwh04WBmGTINmyFBv8GzN2LmqYlLGNDPHPM2CqQHVaXLNoXyEJx0ITbQmIQ6lV6M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(366004)(376002)(136003)(122000001)(71200400001)(38100700002)(186003)(83380400001)(2906002)(33656002)(5660300002)(478600001)(8936002)(55016003)(921005)(86362001)(316002)(52536014)(110136005)(9686003)(26005)(55236004)(6506007)(53546011)(7696005)(41300700001)(82960400001)(38070700005)(66476007)(66446008)(8676002)(64756008)(66556008)(76116006)(66946007)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WzPoZ/aw4ypnJAiH0OWMgBPvnczr9LEn3UwIKAq7J5QhVbX9zG1uNnsmXhud?=
 =?us-ascii?Q?No2bddMsEwKHtQLPeEkKcVXg/DFAShtnnQpzvxvBwmdMWj/g93G5LWNhbb/a?=
 =?us-ascii?Q?3cWDIXp5q61qp79QLF1PZe+cvhIywZv+A1k7T90jaIzHaN0NwZbxdU2zpMbP?=
 =?us-ascii?Q?qf/m9Llm/lUxwAox0fbIUWKjnXuQ/Nm9CGadG4l+tygYv9bCQCN8p5LFH36a?=
 =?us-ascii?Q?l5agePjqI3ctgTLpt/lXQkjUSa4DEBg/iW9mBr1YpjmLnpVXBT3mTFN5T885?=
 =?us-ascii?Q?d92D1YyTgOgXZreWOJFb7h9F/cMK1kOH67pQYQzhL5nldrXVS0bNZMpBDhSw?=
 =?us-ascii?Q?6pM9DfSVmRW2wfhnrMpui3waXTfLFAJ016xOAitS5CK1SlxumXpBIQeWIrN8?=
 =?us-ascii?Q?3cgeyDRb2MqfR09hnNmztYPZk11a/x3ebfMa3hVdyLl3kCiDHEG8g6ReujnI?=
 =?us-ascii?Q?a0MmuhP4Axw2yND02aUycQgrk4O85jXepHK4ZAB675HFNkCgVt1hCNuQd0Tw?=
 =?us-ascii?Q?vb2+4EF8c356FVO0tSeuoEZTnfje+f9Lg+IymqKOJVCo1iND7hnDj/a7FCdy?=
 =?us-ascii?Q?gF4Ayixri+Nj/r65q/V70bXynzwwf936Ahis26zAfhLQuFsUPEEOuPEgeGZW?=
 =?us-ascii?Q?E8g357QZS9wOqtgbP2w6FA/kJFJSw4CfDdrhXvQ0OWDL9IBqN4EFazY8EDnx?=
 =?us-ascii?Q?dIc5DsFI6dlGW9/s5acxz7zLSi1HNraHogmegQMBq0ms4+sUIgd4Do8miZic?=
 =?us-ascii?Q?U4Hg5ohe8Pkw6Phx/0+N9PZIlO+vo4wgvHc6CgsvVDMgIV4iztdKb2+zikaZ?=
 =?us-ascii?Q?oasBa19c8/3+kV9ESnd7Sb2Wj+cZq3+ZSEvcNzTHPZYIkhwBOjfaAsmFoFXT?=
 =?us-ascii?Q?K+URKkQW9/i/a1Ez/q2LQ5uI0TVBTw3g32kL6d438dlTJ0r+lZwoS7NZdhkz?=
 =?us-ascii?Q?IVwwUpHrMepDDEIzVKTVYx1itKmx+vOWL4QwesNLAoZhx7P43GpdfhUf4yva?=
 =?us-ascii?Q?0ieQrnFuLkQ0aj9XXdQJoFOobiF1hhCU+KGOgdmyIcSW0jKqgSgSyTCllrsL?=
 =?us-ascii?Q?B9n41td4DU4yx66+tdOvRRJzuL7ZZxoriBlqEORzOeEBdNUK3OMLIPW1OAqq?=
 =?us-ascii?Q?Ixxj6X4POsaqN7xYknO4KcAG3E092N8zuo/I73WdQbAihYVC7y8NESLq4JqF?=
 =?us-ascii?Q?6Kw2jb2xKGm4X8P4jKmVo5hP/hi6iRCE173ElH+KoxYO47z8BQPh9loXS5PJ?=
 =?us-ascii?Q?2G9e4z+xe0lrgpbShvhRff8OJ7DRPAQpNtKYuYpvkyRnTaScIUXbWOzR8oHu?=
 =?us-ascii?Q?edT/HD1aDpiQYrk3WXhroEIf2G48DxvpNgq738nJHy/KIbTr+8JKCO0iRCXw?=
 =?us-ascii?Q?2+kQvrsEGIt5J2rjyc4+Mv/aSuWiF4kulxgXYfsn91dMNC0WBexmOm7Lgukk?=
 =?us-ascii?Q?llidICyn7yeROFZPPVhn4qx8OyNh5W0cNF/nL1XyrV5nbpoyPaoAKumWnm0U?=
 =?us-ascii?Q?mZNGdAQCytxjrEuX2fTCz6lwTvhYhsnTOc8Dub7JUiQYoDOgDZ63rH1AyaZo?=
 =?us-ascii?Q?9JGyO7XIh2zkTYtrrs0KQxmE9FO4t6uHmKz5KQWK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81c00a45-4e60-4664-180e-08da762e272f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 15:29:42.3692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07DY+R+HftXrCwY6v0GnEi/1E6B+lHbPcKkExjLiFAuADma0BVdT2daWanHp43TdJJMJYnvMpzbIJWmYuzu+Wmmt+oia5zlvXMHhInw9S74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915 : Add D3COLD OFF support
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
> From: Tangudu, Tilak <tilak.tangudu@intel.com>
> Sent: Thursday, July 21, 2022 3:30 PM
> To: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta=
,
> Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Tangudu, Tilak <tilak.tangudu@intel.com>; Deak=
,
> Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 8/8] drm/i915 : Add D3COLD OFF support
>=20
> From: Tilak Tangudu <tilak.tangudu@intel.com>
>=20
> Added lmem deep suspend/resume, which covers lmem eviction and added
> GT/GUC deep suspend/resume using i915_gem_backup_suspend,
> i915_gem_suspend_late and i915_gem_resume.
>=20
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 74 ++++++++++++++++++++++++------
>  1 file changed, 61 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 3697ecb2c138..608287bb27ea 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1630,6 +1630,7 @@ static int intel_runtime_idle(struct device *kdev)
> static int intel_runtime_suspend(struct device *kdev)  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
>  	int ret;
>=20
> @@ -1644,9 +1645,14 @@ static int intel_runtime_suspend(struct device *kd=
ev)
>  	 * We are safe here against re-faults, since the fault handler takes
>  	 * an RPM reference.
>  	 */
> -	i915_gem_runtime_suspend(dev_priv);
> -
> -	intel_gt_runtime_suspend(to_gt(dev_priv));
> +	if (rpm->d3_state =3D=3D INTEL_D3COLD_OFF) {
> +		i915_gem_backup_suspend(dev_priv);
> +		i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
> +		i915_gem_suspend_late(dev_priv);
		We should use the *runtime* naming convention rather then system wide sus=
pend naming convention here.=20
> +	} else {
> +		i915_gem_runtime_suspend(dev_priv);
> +		intel_gt_runtime_suspend(to_gt(dev_priv));
> +	}
>=20
>  	intel_runtime_pm_disable_interrupts(dev_priv);
>=20
> @@ -1691,14 +1697,18 @@ static int intel_runtime_suspend(struct device
> *kdev)
>  		 */
>  		intel_opregion_notify_adapter(dev_priv, PCI_D3hot);
>  	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect
> (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(dev_priv, PCI_D1);
> +		if (rpm->d3_state =3D=3D INTEL_D3COLD_OFF) {
> +			intel_opregion_suspend(dev_priv, PCI_D3cold);
			Not needed.
> +		} else {
> +			/*
> +			 * current versions of firmware which depend on this
> opregion
> +			 * notification have repurposed the D1 definition to
> mean
> +			 * "runtime suspended" vs. what you would normally
> expect (D3)
> +			 * to distinguish it from notifications that might be sent
> via
> +			 * the suspend path.
> +			 */
> +			intel_opregion_notify_adapter(dev_priv, PCI_D1);
			I have also provided the comment on rev1, this is not needed anymore.
                                           This particular opregion is depr=
ecated.
> +		}
>  	}
>=20
>  	assert_forcewakes_inactive(&dev_priv->uncore);
> @@ -1706,6 +1716,12 @@ static int intel_runtime_suspend(struct device *kd=
ev)
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
>  		intel_hpd_poll_enable(dev_priv);
>=20
> +	if (rpm->d3_state =3D=3D INTEL_D3COLD_OFF) {
> +		i915_save_pci_state(pdev);
> +		pci_disable_device(pdev);
> +		pci_set_power_state(pdev, PCI_D3cold);
		This is not needed, it can set max up to d3hot by config space write.
		PCI core set the device sate or , it is not required by driver.
                             I had provided the same comment on Rev1, pleas=
e try to address all the comment before floating
                             next revision.

		Thanks,
		Anshuman Gupta.
				=09
> +	}
> +
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
>  }
> @@ -1713,6 +1729,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
> static int intel_runtime_resume(struct device *kdev)  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
>  	int ret;
>=20
> @@ -1724,7 +1741,25 @@ static int intel_runtime_resume(struct device *kde=
v)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> >wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
>=20
> -	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	if (rpm->d3_state =3D=3D INTEL_D3COLD_OFF) {
> +		ret =3D pci_set_power_state(pdev, PCI_D0);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +				"failed to set PCI D0 power state (%d)\n", ret);
> +			goto out;
> +		}
> +
> +		i915_load_pci_state(pdev);
> +
> +		ret =3D pci_enable_device(pdev);
> +		if (ret)
> +			goto out;
> +		pci_set_master(pdev);
> +		intel_opregion_resume(dev_priv);
> +	} else {
> +		intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	}
> +
>  	rpm->suspended =3D false;
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		drm_dbg(&dev_priv->drm,
> @@ -1742,8 +1777,20 @@ static int intel_runtime_resume(struct device *kde=
v)
>  	 * No point of rolling back things in case of an error, as the best
>  	 * we can do is to hope that things will still work (and disable RPM).
>  	 */
> -	intel_gt_runtime_resume(to_gt(dev_priv));
> +	if (rpm->d3_state =3D=3D INTEL_D3COLD_OFF) {
> +		ret =3D i915_pcode_init(dev_priv);
> +		if (ret)
> +			goto out;
>=20
> +		sanitize_gpu(dev_priv);
> +		ret =3D i915_ggtt_enable_hw(dev_priv);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "failed to re-enable
> GGTT\n");
> +		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
> +		i915_gem_resume(dev_priv);
> +	} else {
> +		intel_gt_runtime_resume(to_gt(dev_priv));
> +	}
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For @@ -1756,6
> +1803,7 @@ static int intel_runtime_resume(struct device *kdev)
>=20
>  	intel_enable_ipc(dev_priv);
>=20
> +out:
>  	enable_rpm_wakeref_asserts(rpm);
>=20
>  	if (ret)
> --
> 2.25.1

