Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AD46D7445
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AC510E06C;
	Wed,  5 Apr 2023 06:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC7010E06C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680675187; x=1712211187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hdV0YkoOnOOFLVnJwRTgMk2h9bTeB0m6GmaVy5MAezU=;
 b=n/jo+v5kH9UEQpIzTsvuy94JBPm16NMhAsQkUIFMnd+bERsI4KGbezLR
 NCe75tTO47mKXy89tvMt+pHiydiPQqVdVGZn6zjxfX5dWlSG5Z9CixUhN
 SqgiEuTTSckYDWx3R+WA9lVh+bDAC7LxUHLBgYcW3F9yX5SSSGaVkstVn
 GBd95Zpyl/bv5/v9u0yX2LxXYPAzKHVpDRFnrD8r35mu3EsjQuT1TjVNc
 mfdjxFgfk8/s1CxL7NMVoNu6Yc1bm+tOB6/LC+kLI5optLG5gdbTSJqkM
 m2/dm23kExC9Vowz3/Fiedg9U8PHOCU/yY0yZshNw7DH/o8WgtYrHfYMM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330979971"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330979971"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:13:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="686632924"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="686632924"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 04 Apr 2023 23:13:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 23:13:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 23:13:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 23:12:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqIJFeIvR+f5cV5shBAT2E4jaLsFtuCmKRc6J+1UXxnN4yBDPiiOsFACS9SgL7xcCuc2f/6nG3bNIapOq3f8/QhWAe3qOArsVGddTfxysWXiPdMFy+hY6WNimk+ME/UE0jCwb+oKaCkQEK6zaIyv1RjPH/bq7zcqj67l+Ben/IrXA3aisRsTsZKz8uL1xcQj4Tf6Yssl8vfjIkCYRAinW0l+lHcz+AQkEw+8D29swY3kTpbsCU2xdSszSFhedCpBbLbxuv48IRYWWM7JEv4tmB6jsBnv0UzWDm6api5r4z4Tp6M6676TAgL4cNzj6oUvQRQ6kEJNoObH4jMrBtFeew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VuiPgHRy2yXoFiIe+kXXSfSv8KE+mEdqg1YtFLbXHyE=;
 b=B1QZ0RjjglMUSCes7lxgIPCxXWkY/ZjgL2lpMHN5QjsPXstvcp2gLqeano3zPiJCAPgFx7Raaxv4UA6k1l+bPoQJt27P5Vgo0n7pytETcazlTjKQEf9/JpHXwzDRIy5oZ1hVbmr95YuxkGpwHyPg3qSNhaGLIy+5ATiSvit8L5KtwXKs/Mqy3RIPJhKtz9nO/jmcAoIAnnfz+qFbfEjAqwSEXpnjEqAxX2PRO1t9GjonGymMuKXLIUHvsfLTVsSHCqB75yoGDWFu06zga1AsqwYcCFDQyoUpSkdqcQy/sIYGEB2bOjBmlJhU4reyrDCvEBEY5gh4gC2f0enM7W3p+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 06:12:58 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::76bc:2b8d:98ea:239d]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::76bc:2b8d:98ea:239d%6]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 06:12:57 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v8 4/4] drm/i915/selftests: skip comparison of power for
 discrete graphics
Thread-Index: AQHZZ4P6c9vR9g8m9EGFV14oqWuOOK8cOwKw
Date: Wed, 5 Apr 2023 06:12:57 +0000
Message-ID: <CY5PR11MB621126369AD285A45A9F358195909@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230405060029.3574262-1-riana.tauro@intel.com>
 <20230405060029.3574262-5-riana.tauro@intel.com>
In-Reply-To: <20230405060029.3574262-5-riana.tauro@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: ccecdae7-dc07-4dcb-5d9f-08db359ccd2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p3XIMFbi7XJr8+HxEc7vnY4rW5b6+dYCiS6Gi0rlcJrD8kNXmacBbZEqCLXAYRHaVuBOL64lDxukd6EOeKNZH35h688FN3qSZAVHdvMz5Ap069jh81pZfm8+QrBT2b7jrItHs1xAPeigRO+rUoJYdtULBAcB0Ph+gxMFEmBoOqoGXA/6JWCMEIP/0GbnUvThyxGJ6FVFuedqI/E3PKyuE2jzutMfYBxPY4Ac1DIMfL5m/XohO6e0/0jqTXz/S1HsMiRo4GiJfNGAchVl/wDqZaa9xiicvZYpOqcw0TItwif3igglJJo5RVukus8EQe14yiPvyZm4KddCJRuxyebdxcS32w2NbCdN2EqwSTnQ2cEnPIdggcPTU1cNXCqkrHUd/LUlACfdy98SH86nyoizlisBxyJzEobM/yGE6QlRovvAo3bdZVrlds03x0+/2CSLw8RsbZtpd3Fgy6EU9zH1TVXMraI7gsMdxpx+tu+icbaHa/VTbDbMe2QQzWnByDr/pc6vHomTUINq2ndsZCz4RS9l6rrah2HuArCfkjmsuYCmqHBF6Jp1VCoGkjI8T76VZ7QJHhyw0A5SY4SZiTXinCQfrkDD8N2dQoOnrE0LDuaUcEn8lVN2ziD3JXyNncFS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(39860400002)(136003)(366004)(451199021)(38100700002)(38070700005)(5660300002)(186003)(8936002)(52536014)(2906002)(110136005)(55016003)(122000001)(26005)(82960400001)(53546011)(55236004)(6506007)(9686003)(54906003)(107886003)(66476007)(8676002)(66446008)(66556008)(41300700001)(64756008)(86362001)(76116006)(66946007)(478600001)(4326008)(316002)(71200400001)(33656002)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GTLQyHy2PCH4pHzsDC6XFrwXz/IhKyPplI8MowMHsRP3oerFARFHfLj7O/jE?=
 =?us-ascii?Q?zzltzVfea6JXEIP+SMsmaPwshxsHPbpPw5pglC/GxtRx3MgpMSdcQbtRKV66?=
 =?us-ascii?Q?GoiIwNXlRAz16O0+lMgH5iqPlaBFhu7qY0FNTtCZLsdkC+dtuBb9QGct4Wh5?=
 =?us-ascii?Q?E27lKHZ1l/OdvcEqQX27dsymulO+znV5lnjmnoRSnw3wPFnVHgFpj7cGOblE?=
 =?us-ascii?Q?qAELkq3W4uBvqbQdaobQ47mJiOaAq7cxL4JElV+MEgYBJk9/nfT8fWvGyvnN?=
 =?us-ascii?Q?vJx2oqD0vZkZlGotDB621D6HXD3HUc7RH4sKgwrKBAVRvY7Z8Out9INkvML7?=
 =?us-ascii?Q?Y/8sWLLdJjraOhYy1AUF8SgD6lQHdYuxBIxY+lUD5rZqgzVYydCruvR6jl50?=
 =?us-ascii?Q?eBmtB/98NcycQIEgEWs+i+3eLnWI5qQ/SNi+99d5Ya0AMYC8FoZs1fJeBG7C?=
 =?us-ascii?Q?bnpF4l98fzDdOESGlOgLRBFS/uo/Ezgxbj+fkLGZrhSjJ+ohZpceaK+iYRw8?=
 =?us-ascii?Q?Ukdi9O5MzRVoBiJx98FjlT4/L8vG6YEzcLJ9e3ImNAsoVAv1vhOHCwuUlYwJ?=
 =?us-ascii?Q?6luMrvLrmmeNvQKYPV4OUK3kcZ6m66+WkB1TCWuzpJVKZU85xoQdMprWzVyQ?=
 =?us-ascii?Q?r9Hk04z6puQpKNDEo7fcyMiPQiloiPpeDRROF8mQpNy+pmbEoCxEnwilwML+?=
 =?us-ascii?Q?VJgHAot47JCYAjLaBLm/9hSkBeCbp8FsbL55MSlH7vGQ11CJJ9ht8djMCiV8?=
 =?us-ascii?Q?mEW7mD7NLx3oAjpsdHS1wF525lr19djNKJFwfiIrzzDeyE70tPb8cb1dxfO9?=
 =?us-ascii?Q?prNG1gWHeTCl7ZCoAtCq2MULCkfvZZBpAB6V/gjE7oFXucoV8GZ/zsHGFRC4?=
 =?us-ascii?Q?dA6w+LRdHthVFplYh7dOraq5zRQhlJyju5ElX0zqyeXmtU1pqjBH5VobNSgx?=
 =?us-ascii?Q?gdZlJaB7HG4AiXA/wxQRrYYqFejRkwvj6vMiIKmxPMunLJG1sfO2U7fVjZUi?=
 =?us-ascii?Q?mvOMfHhFk3/gxAgHozCrhMtFSrvn4QleIacX/CFiXcVPPfYA8mguA3fOkqJG?=
 =?us-ascii?Q?jLxcVSCsjKAX49AO5g3cSTEz4nd0cSXOkIr8C0uyp1wejzP6594eY+S2Ntuc?=
 =?us-ascii?Q?N6sfj2sWcgyMSBKsiutp5bskeKzyrxOXbSAuQdYj3eNTj+Cb9TYivim3h6dS?=
 =?us-ascii?Q?ocheAnMs85JrfKCd8cc7xy6tyXGD2M0yGha408lksBDdQkTs7c3VfXw9PfXZ?=
 =?us-ascii?Q?mrwMLd1m2R/BHD81hAUtnVDrMPifCjr4hjq6+h4pWGzbnuwpPx1DJOFfexKr?=
 =?us-ascii?Q?wYF5I0He/hExDP/MLoocN/4SjW07IVKP64FeCYiOuir2jE/MPJpvZ3905lM3?=
 =?us-ascii?Q?xNxLCtFD6JlcaL5q/vBRuqQJ4pxqnoYu49DZLLJ8JQXk3Hv2GNRrEhffvRWr?=
 =?us-ascii?Q?LubKTLlWpugYKlUSK6+QbjI6tTU18w+G+I8rmmMUXefhqNDjkF6e7V1axD8C?=
 =?us-ascii?Q?7Nx80zDnlVKUXZ2i70FdBFKPwL++I7ykljDxxQgmC7qd8pB6U4z0kRmC5iuZ?=
 =?us-ascii?Q?N/3ltplGxDtC98LZRcdWmUwn8fgHIZpAGS+lmYCF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccecdae7-dc07-4dcb-5d9f-08db359ccd2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 06:12:57.5943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5CNuX6MZkfjJzW4z/saiat3bY4c1RmLQHcjx1xurbl5Vj3eNIxtMY73NSh2dlOL2j2SQ/vYk9ju3n+M7/4Te1uXhsvI0oO3yyNX8Xr0JQNs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 4/4] drm/i915/selftests: skip comparison
 of power for discrete graphics
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
> From: Tauro, Riana <riana.tauro@intel.com>
> Sent: Wednesday, April 5, 2023 11:30 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tauro, Riana <riana.tauro@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>
> Subject: [PATCH v8 4/4] drm/i915/selftests: skip comparison of power for
> discrete graphics
>=20
> skip comparison of power for discrete graphics
We need to specify the reason for doing so.
Hwmon read the energy/power consumed by discrete soc, which essentially mea=
ns
There are other non-gfx discrete devices will draw power same will be repor=
ted by
Hwmon interface. This test uses power consumed by GPU to validate the RC6=20
Power Consumption.

With that :=20
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> TODO : measure power of GT in discrete graphics and modify the condition.
>=20
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 682f2fe67b3a..57c0cb4ecc88 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -107,7 +107,13 @@ int live_rc6_manual(void *arg)
>  				      ktime_to_ns(dt));
>  		pr_info("GPU consumed %llduW in RC0 and %llduW in
> RC6\n",
>  			rc0_power, rc6_power);
> -		if (2 * rc6_power > rc0_power) {
> +
> +		/*
> +		 * Condition valid for integrated graphics
> +		 * TODO : Measure power of GT for discrete graphics and
> +		 * modify the condition
> +		 */
> +		if (!IS_DGFX(gt->i915) && (2 * rc6_power > rc0_power)) {
>  			pr_err("GPU leaked energy while in RC6!\n");
>  			err =3D -EINVAL;
>  			goto out_unlock;
> --
> 2.40.0

