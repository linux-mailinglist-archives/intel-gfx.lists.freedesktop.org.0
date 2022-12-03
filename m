Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E529641565
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 10:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2D610E1B8;
	Sat,  3 Dec 2022 09:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979FA10E1B8
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Dec 2022 09:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670060622; x=1701596622;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5b0TaYf6zKl339ofzvzXSpa9qDZh7nibrOD0iKGrQeQ=;
 b=RrO4SdJLPmL39cD7vjroQXcENSu+TnDaYk0cRM0Noje5ymSHtmM4j3VC
 H3D7+AU9BLgwHMYP1ixQ8I8vebwodonnAA0ukzbaQP3RcmpEucKzsd0AI
 e6B2oW55l4PdyaeoYyL6brH+Wq6+Acqytimk3/lR1NzzRFQIj90DGHnJG
 GvW7kfEYvKR0U33aZGFldsPhnBfJBLo8cIP/SYYQnmJ9Fq/tPdp2N0HdI
 KA9eAYETcJh8YihZe0CqsN5y+46bFdurJWtbuS9n3i5IAra3RJiEd0MEc
 jYlW6YkqeZ6MQSLoLtyoNIdCMt8mPzq2KdDhpNIGhBEniKFpkquW3zqMZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="380400848"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="380400848"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 01:43:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="734082537"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="734082537"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Dec 2022 01:43:41 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 3 Dec 2022 01:43:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 3 Dec 2022 01:43:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sat, 3 Dec 2022 01:43:40 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sat, 3 Dec 2022 01:43:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOFiKRXrcvJhGdqtTmIIchSjINqhjOmnArlfO5SOIywP1KIZWdu2oXfgEaTySdRcQUo87MTmgl2vd1WT0lHFMLrO/97nkEB+ofKoSoXV+4PnZ9GLEl03ThZKwaRAaXvKdSXe/5/NZLMLknW6YGKf4JOiKVTrtrV25qkcmZB1O2Rp09nqUW2fYUXVL5lhGi+1kV41zh2Fo+avZaBC5tDao2kNxdboIpHPSFN2sLs6fwNdU9PwGAWjmErClANsBcjt7qyp83AUvG3brHRZBpO51qzHqnviAj5b0fon9ZFhrc+18BhRJTV8v9z4dlgyeiieyHpQ3Pqvj/Ju2X+fTX+0vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qVZzF8lt6Qm/xSAYBl3y2OUp0foBwR2wvxZ+6v8Q1I=;
 b=Htgq4o+C1a51K/xS1rTmq0WNtlTS2Tf/yaJ9iZvVbT5j8CAXLnzhhTfxPLZJRuxlTOgoCXc1Cl2MvTlDwY+xVURjbglKV6LiPAYhnMQH+uwZ7Hz9x+01FBPInBDLuxht1ZmQeYYV0Hf5CKUqtl6KOlHm4jgNF620VVHGRK+fGo5bFMuD0tz4ZOrTvUPwkDUjI9JYa7UeY8ho4Ps9/jTT78cYSbP2Wpp46uLD7F1kLIwXezpoQcULKemZysLj7UaZpp3Ak3V50Frd/0rUQdDEeboAporuLSonTFiOCbqyLkC++gmBI2dSKlYkDb4/LxWmUDcJ9I4ADiZgd9owuY7CAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Sat, 3 Dec
 2022 09:43:32 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%9]) with mapi id 15.20.5880.010; Sat, 3 Dec 2022
 09:43:32 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hwmon: Silence "mailbox access failed" warning
 in snb_pcode_read
Thread-Index: AQHZBsV2ZgW7F9dgmk+JnuKXeyjHPq5b6EWw
Date: Sat, 3 Dec 2022 09:43:32 +0000
Message-ID: <CY5PR11MB62116199075E689C273AD41E95169@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ1PR11MB6228:EE_
x-ms-office365-filtering-correlation-id: 0f350adc-2dda-4a02-8219-08dad512d785
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 38iItjpAMHngbo8oyYNFdCWGNvTJnPm1o90sUvKCWbn7Rja/Bbsywp5JFk7kXaEploAeqX64L5maaLUV1mBcc+I87x71UhtHc9tKjlAKz3LvrYvg5xFPQ2NwYvgNnpWo+BySulewijrtiqT9RT1tLqKm2tWrmNaz3P77aElIcsMzjVnl/EOEuZ0FOqTY+OJ8eb8NbFCZLyYuf6DUS+Iv+8SQAmyPuqjmmKXZryX7ZHfJhBiyg0vD/nCL31sBhSx3ub8h86jELLaNXXRENA7vhV08HR3LedKxoTogxvZH6UHapFPDTjLEBFRf0p+t3S9e5rndesKcO14+nEAE+ASqFsTCMidOwBUUxLC/6bDeGt8Y1YCEfmp0ZOq0b2OY0HMsMxvDMhFd9Hu737RK4Ny4sf2IddRMIcXbKgH1q8a2LJWHMURv2mQhFP0aMKG22OxUL8QMvlr+AvVpzDRWM55vGa7uwCjwI7pwkByvK+tbXkx55V+Bp3fuAateVdeFKYuCDyyC75rVDoPKw+yO4FGeBdpOo6azHBik3MGezONTAl1IgUC6tx3SXDK1LUuXcaEE4dBpb7T/uPXRC/7lX5/SWxxc8+JD2HFyT8k0IVCptFoABc/7ugoRAgvhJKB1bxZ7eQa3WTGqLiBS3N70TBdojrzPEtOnggF8BYNtTtSPE+hoT6rxyU1lh1tB7nGUxxEBMuEbeSVPwFQxEx73E6QuMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199015)(186003)(38100700002)(54906003)(316002)(110136005)(82960400001)(33656002)(86362001)(55016003)(26005)(38070700005)(2906002)(122000001)(53546011)(7696005)(83380400001)(6506007)(9686003)(55236004)(107886003)(66556008)(478600001)(41300700001)(8936002)(71200400001)(76116006)(5660300002)(15650500001)(66946007)(52536014)(4326008)(64756008)(8676002)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jucuI0dVk5yNk+uNWRl8CnJ3c2qOiHOM7DbzEshaMIA9yecbqj28VRmgXNbl?=
 =?us-ascii?Q?3fwx34xZbfgGxOQzXj8GJUlABViLtBa08qbkJ6PNCe/bkMnrDO+DDDRxWJIE?=
 =?us-ascii?Q?BCZhUIxod/EgAjL4Ud9EZN+ZleaJgvaNnGam7H4C+pgDD4uvNdHWOr405r/l?=
 =?us-ascii?Q?gWEnJHLNbSCsscUSyo1dL5/3cFOwIP/gJMVrHafvQ1O9LH6bk5KTtev/b50C?=
 =?us-ascii?Q?aUTlOI/yqLRPfN5jh6QkypSWPvPvAK77JjiVi+ZSR4aGopC/05EF8/N7/yCB?=
 =?us-ascii?Q?Maj+NeGn4RQ7raBCadjneH8GBKSKiIp3E3K1/DiBEM8Lj0zUMeqMclfZm666?=
 =?us-ascii?Q?2NLBm/x3Y9xeFvoT+/CQakPNPulWrh9FoJo4eG9zI5Ig3u+5Kn8ZUiypfnwH?=
 =?us-ascii?Q?W4merdbuRY7giqKaUKsd4hVgd3M75nKjlIlyOfJUMFfLEczHi3a2Y+XF+f4W?=
 =?us-ascii?Q?XFipBe9m89eNITHU7x3P3QLcTAcq91LOg/OtLzFgX3ApnyjpZY0w8EnPFOVg?=
 =?us-ascii?Q?tJ21DYp863q1ywZBWEQ7GS2W6JZxRw4fyjp+AkNIalx6HGUlQui0aEyiUVXh?=
 =?us-ascii?Q?ZltIv83LDTAgMa7FJwdGSDj34vN2WX6yuwFY0B4Dw5b+RhmWG4VbqnBL6bij?=
 =?us-ascii?Q?U/itZizB8WAsQNGohM4nefRdaiWUbX/VlQgF4P8BXeFTk/ymudkN6Ci3unmY?=
 =?us-ascii?Q?+Q0X1jVyKxA+sbwJrsPOQMcebOInqnVveI8puSvJ3wN7xU3SVhhepy5bXRxm?=
 =?us-ascii?Q?hyfBaee/P+aMv+NIhfKjV6AQ3dV+bAXd22d/YPOpXrIiQDLkPluwKuIxk+yA?=
 =?us-ascii?Q?a4RHl7y8M3pmdmHbC3JrTx4TYevsreCHWT0xGz4n1+hKI4zVFQI6fHsf3DQX?=
 =?us-ascii?Q?zg39kGyCDM9DRmBciDQ1n2GVanz1NoM3d9SIoojIBThtGHTXO9AWD0Own53s?=
 =?us-ascii?Q?r2cgpkgsj22FpGnUW6I9eUa9Wfi+UKVUNapURtZeyG0CyaQ5LWvv22drD0zA?=
 =?us-ascii?Q?H+RlKM5jG6BAVnfrTzlgHJJsKiyi+rsnS7EvIuLd5PE86wkYM14gV+cujE5r?=
 =?us-ascii?Q?5ktWiIksoSixgvP+oDrzwOSyAfkF803DlFdRwcneUjHo8QtT6YfOPkf5/89Y?=
 =?us-ascii?Q?c2N9Bhwbd/ogil7ZftPqYUgLkicfrxk9ib/zwaH/TzXIzYo7KXNUi254hoMK?=
 =?us-ascii?Q?OiPZBAUUKTpKXOIWRuF6K117IO8WFM7r/6H+TUsXvvT4FlHdkJbXQk/d4YC1?=
 =?us-ascii?Q?mFEO1pzQoeNiopBUqr93VZCwygatnUYFC2P/QNaQE5iKmN36Th2GnSx3aXiw?=
 =?us-ascii?Q?tgExZMV6aFgSpoyXhXUy1wdWRU0YMXfY09qPFo/4r2EPfypivWcQ2l0cCJ97?=
 =?us-ascii?Q?UACQ/ZyCxVQMQ+ETp7vIWtaAXFsA90HKJqUAS+4Z3LF7ZNXyRDNxqPrAnpfz?=
 =?us-ascii?Q?2Q47poFZFp9h1HrS35Hh0SADlB/Ni24awGjbxrZxxJ1uqN/oxYqih6ufQp2z?=
 =?us-ascii?Q?+1KHXoPcRFooITcPxHAZXnrUGPYzRuEY/sBl2js/oP/cD2i+PLhKFrGuWb6c?=
 =?us-ascii?Q?7PR/O5iwqFxRRQMAxQkN+QxB8CEX7clPj1DKiZc9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f350adc-2dda-4a02-8219-08dad512d785
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2022 09:43:32.8012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GqgCSt3tOM/2NEExXbyaqM1x0VSW6v/WDsZE+v5413ujE6ulCoQ4QNfSGTJddl7rgOIhCdQo5OXWLeutray404kHV7L458GG4q0SEwVjLNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Silence "mailbox access
 failed" warning in snb_pcode_read
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Saturday, December 3, 2022 8:45 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>
> Subject: [PATCH] drm/i915/hwmon: Silence "mailbox access failed" warning
> in snb_pcode_read
>=20
> hwm_pcode_read_i1 is called during i915 load. This results in the followi=
ng
> warning from snb_pcode_read because
> POWER_SETUP_SUBCOMMAND_READ_I1 is unsupported on DG1/DG2.
>=20
> [drm:snb_pcode_read [i915]] warning: pcode (read from mbox 47c) \
> 				mailbox access failed for snb_pcode_read_p
> [i915]: -6
>=20
> The code handles the unsupported command but the warning in dmesg is a
> red herring which has resulted in a couple of bugs being filed. Therefore
> silence the warning by avoiding calling snb_pcode_read_p for DG1/DG2.
>=20
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index c588a17f97e98..cca7a4350ec8f 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -293,6 +293,10 @@ static const struct hwmon_channel_info
> *hwm_gt_info[] =3D {
>  /* I1 is exposed as power_crit or as curr_crit depending on bit 31 */  s=
tatic int
> hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)  {
> +	/* Avoid ILLEGAL_SUBCOMMAND "mailbox access failed" warning in
> snb_pcode_read */
> +	if (IS_DG1(i915) || IS_DG2(i915))
> +		return -ENXIO;
AFAIK it is specific to client specific parts, how about declaring a is_cli=
ent intel_runtime_info flag to
distinguish between client and server part. That will also cover  any futur=
e platform as well. =20

BR ,
Anshuman=20
> +
>  	return snb_pcode_read_p(&i915->uncore, PCODE_POWER_SETUP,
>  				POWER_SETUP_SUBCOMMAND_READ_I1, 0,
> uval);  }
> --
> 2.38.0

