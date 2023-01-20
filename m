Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E67675EC4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 21:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC8610E18C;
	Fri, 20 Jan 2023 20:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E95710E13D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 20:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674245674; x=1705781674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LfACj71z3CDZj2Y2MqVDpNoSPSQNcw12haCconEwXmc=;
 b=nrwcVnOhJHEThGzAsXKjlPvFacKN6Pcsj+p7lL05CLBBv0IB61yIDwPw
 sBtG6IBTvvqvXN0+7lO9dQstdDdkNhNZq8VrtgdGLq2uMvoCMunQI9/Ox
 5Fx4Z0hupHclE/IqcomhlSA8KkssS51TCjtamwr4sMRzJmyF8fLmXRRG1
 yexcP4V0XPLW0PN+iHfzjUW1b5K8+x76QTGQzBfqTpu82cE4diTevwRUJ
 kv7/XIGtWQ6tLYeIc+mFHB7sYQBYd2F0B+G/joEUz9Idkfad2RHtfx4qF
 l51LIl6uakrktrI3o/19rGEjr0Qsh8e684+D7vvI2ugkhhizBKe+VNjZL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="324373054"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="324373054"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 12:14:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="692976369"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="692976369"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2023 12:14:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 12:14:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 12:14:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 12:14:29 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 12:14:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUIUOhWmTwtHCdR9wAdMnurq5OPgcg0IbCpsSg6C1rfnIQPNrS9zGH7+P3YzEp/3sHChz3cdRmRBGTSAepUESnbNnW7cKmg9rL0rj/O4hdgg26L9BUI34587D9N5kAIFj+L83AnUJYLncGcbBgke2us7xomdGyjohUzE/qDPxHyi+lr5rR+6kw2FDae83tokfaBDu55VDxbK6xB1vTNyJGI1YYJasmEiHdbpGVO/GBELEKTouSZnskEmfHYt8XUogfrNF7egMFZZs7aOkVjQ/8Y5gFRGXnsMOPf/MnSPLJ4rCHnQsKFYc2tH78qN1EXDccSns6eaCrerAkWnXoWyPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CTknLg0fZLIMf9i9JH+uq59brt9d2B5xgwMqrc7F9m8=;
 b=SZhhJxKew/XJGtMoquFGkWXOBKsLeTX6TG3GfeGNDSwZo3SASwtsHAz958zhYmQMOy7tB0tW4hoh+zdcyWRPWEV/OtU/fMoAx0b3mD7KSMnZPJPNMDWbSf3QCY3mSDWSpHJuRvaWZxQdqdeRXt/Ow8u6iFxdPc4NjGyj36LSAJbX/VMtig9a2JPGAcUTkZU2gGYsy1cJpb9owvsUkDgovuQd5lftbBUxo1BjHAPPCdE9t0KRUuLGHWwtGjyFaBAB2+IyEDTLQ/J2jsTW/pgV4s2U6TgAMSXEn/jCu/+xn8QFnF0YXjGJSaCnldtRufP2beywZERr7AwwIe4Cqh2Vbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Fri, 20 Jan
 2023 20:14:25 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%9]) with mapi id 15.20.6002.026; Fri, 20 Jan 2023
 20:14:25 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/8] drm/i915: Fix coding style on
 DPLL*_ENABLE defines
Thread-Index: AQHZLQZ8/Nf3xe7eYU2sx/iLRxY9ia6nvVlg
Date: Fri, 20 Jan 2023 20:14:24 +0000
Message-ID: <SJ2PR11MB77157EC0646361A8C03157B4F8C59@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
 <20230120193457.3295977-3-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-3-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|IA1PR11MB6465:EE_
x-ms-office365-filtering-correlation-id: e419d5b4-0c90-4dae-6643-08dafb22ecb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yqv8jEtmWYfujZ05KpUOx+rnM5QaUbKFUxXbujFODmrBelpY3H9VZ6bnMzEetAQGsn7fHHf37jxNp+Gf0OGT/6bOeJTLRZf/p1NCTcibQqNkjErvUTxfVmCmFp0fB+E/kVGEm5/TOSbcdL3LoZuOVUuxMJu21SHZnl5JPVVzI8nbLTml27QGXrOChqA8iZrP0Ex8LT9NgZ0f7rZBB6JcI0wgBN3O6++m6NrVgmC3UjmP8bpIRaVCnCgxJU3Q0gMXMyn3u5GTrIuXv9cRpf7CXc8/Me62rLI3iLn71wHDgc0LDtLpJRPoKxuJGf3Er8Rb81SyRNzgrKezTc7HDY0ht/PlJwdv9pKRkWqbsFmlLUmyi4m1KfNI2GsJrw3r5Q55kkHf5iwPmyXovzPLbV91gRk0xA/5E/69sR0vUOVG9unlWkkMMyEkV8VRdlsSHPamVrnv6MejEHt2jPYKfVYsu4IasL4s8PweQh9y7GDhNExEl2gqgqrybo06MptjTfwoqaxhGh9/Bmy0NFQqciBpij0REsLXoF1RIZkQzkeBnHKCmgRBjTgUQVVaviHMQovOa6Jf4gxTKujRW9iAndnZ9VDB5lF+mu1Gwq1+z8uScAWDoNDInJu3TYNmWlVbZY2KOwXsAiaV9O5xPSthP2QsAd1ckzIaPlXv4sQmDJCX+EK6+OLeOR1JdEVHrllMA4fbZQ9ldVVXyHYLz2SwjSJKhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199015)(86362001)(53546011)(64756008)(82960400001)(6506007)(7696005)(478600001)(52536014)(5660300002)(33656002)(122000001)(316002)(8936002)(450100002)(9686003)(4326008)(76116006)(71200400001)(66556008)(66446008)(38100700002)(66946007)(41300700001)(186003)(26005)(8676002)(38070700005)(66476007)(83380400001)(55016003)(54906003)(110136005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I7vCEPaZG5aMHVFN8lJK0neFEWvewQkmxwLqTD8tDQ8K8E+VXqzP9invl5NO?=
 =?us-ascii?Q?2rPrLJIwXJA2ZpKKqly4xDclOJZR0o4gAoW/giUjXNgGFLvFdN+AOe5N4t0g?=
 =?us-ascii?Q?f0Cq/aGVuoA1UltpKzvXUawL2af+hnmipScgxP8M38k5KU6yxST3wptdlmqm?=
 =?us-ascii?Q?aHObzRgmohK14xZJpU9GE0blZJ7torjbgCoJhCPRqfDEotFsjDJfqTBxlAoS?=
 =?us-ascii?Q?LgJXeE2cWQ7SWMzsgxHXZFynXIKT+FMtciCJWIYUC9ZRXqRlGkZ0FaSA6q4q?=
 =?us-ascii?Q?S9j5ldX+vUF7G4YMjn/gA0wfHF2uwSJFHLo7VWlmUXSzEfw5jZNjTrvH8RqJ?=
 =?us-ascii?Q?Xsa13ZbMmcs8UXnIpLSRYfvnn3kuCQoFUq6ZP8yFSPWDr/NVrfqWY/QG5UcK?=
 =?us-ascii?Q?H14+sRewhYWiQJFgYXiCRxc1ZJuLGbEtoifDaVjguZMRUsIJ6D/JiaLiRbOj?=
 =?us-ascii?Q?FpdbjOa/msLwMwWEMdtNKL7EH82+VGh8uoRPcZoOPn+M9wLUIXJZ1I4vxMyX?=
 =?us-ascii?Q?zjdU2RGKBhqTsCpB/a/DiaCQr4g+huCYN1S0zKu0k2bA7UCb6jeEMXx2HtaY?=
 =?us-ascii?Q?BlJcYs24xMx+l1pwaFLaecZ+axnJ8KCI5pzWSkMuzsCDU3PR3KXEYllMA8V4?=
 =?us-ascii?Q?yDBgmr8VzJlJSLpjqFikWsxqKrePAx/eKFgf9RoOO8NN4l2T9Io4W5923J67?=
 =?us-ascii?Q?CRjr3Bbtd8zkY3IYvII1nYGXV8X2QH+lFQbcQiobRW9qJjb5b7U7Vrjm6k5u?=
 =?us-ascii?Q?JRdF6UaSko2z+MUBL7D9Wy7hPsgkxHHz/sVC1/3qu/UXvO157S2CQhGJeiiA?=
 =?us-ascii?Q?/oAunrk/2PkWX9LDlM8VMmU4IekMjg9yyZuhf6ZDYDq75I6PqwbOXqdeAUtQ?=
 =?us-ascii?Q?qsTsDpu6aznTzHcc0ClqkH8DtaFh3KOb673maNgIr0VMql3CWfT+agl2MzI7?=
 =?us-ascii?Q?Y+Qxzg5twrtaF4LkQZlni9sr0OTakcxM90uoXIJnnj4t2yxMJyL3JM4ZFqFv?=
 =?us-ascii?Q?xXVsxBW4PcWYxueHNnT/AAbHCwJIJ6KT1iBSYMftTMPTrGTcxdcWm8mH4CmG?=
 =?us-ascii?Q?+/Fs/2WlktcwGQX9AtXTTvz1r8VrDImLychiLniWE6v+zP2YrAPJPnFqFZ3I?=
 =?us-ascii?Q?J4dB5awCjwAjVCXZxpfl6ikyow3FevbRPK+P9vXyjgIu0A4Q484IkgJ9oFP/?=
 =?us-ascii?Q?qmPAMb4c+fxAHTv4A8hOzp/t2lEEzq718F3bkRt1zZ3O2dMR+QdKwBPOEzdh?=
 =?us-ascii?Q?6jFIT7T9SE3UlRq4b9WwuG5uG/FYFHGBnLWuF8V1+w/4wxu9cWQtY+KcPWYJ?=
 =?us-ascii?Q?Y/ag9UxHGHQ/Nccm1Jro8y8FshFLKAcsl+sJjOwRWIl/77973VR7N2XbVAcX?=
 =?us-ascii?Q?nZtGX0+r6KEdnZQPKCuIcZZQVr+y3cuFy9KBDoJDDrRj2GuFu4YC2T31yg29?=
 =?us-ascii?Q?J1/t6Tv7iJMHqs/zNvAuJepS2yO6ktcv/Z3cyXLeU2vJvixmbGpkBJzCeiJN?=
 =?us-ascii?Q?SqFxY6YYGRN6Lrw4FRUuUggM7rj2KTdBHQPIggymstsozwcPWyWDgsOJW4cu?=
 =?us-ascii?Q?SFUaL4BfMdIH5QUA9RWb7kwSPiOwZpfwdM/5gtqJsof+7GaYbcuLMgWF5qub?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e419d5b4-0c90-4dae-6643-08dafb22ecb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2023 20:14:24.4754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BRzwDoVrsfvI/bfT5XAsLr8iFZnp/qTL5hhmKBq/kIloRXnZVUoXOiV4hNHjhKpiuGsmlo3qIugUzoa5eLsQQN/0rG9ojzxFJO8W6TeDXCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/8] drm/i915: Fix coding style on
 DPLL*_ENABLE defines
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Changes look good.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas
> De Marchi
> Sent: Friday, January 20, 2023 11:35 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; dri-
> devel@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915: Fix coding style on DPLL*_E=
NABLE
> defines
>=20
> Abide by the rules in the top of the header: 2 spaces for bitfield, prefi=
x offsets
> with underscore and prefer the use of REG_BIT().
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 3b2642397b82..8da3546d82fb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7224,20 +7224,20 @@ enum skl_power_gate {
>=20
> 	ADLS_DPCLKA_DDIK_SEL_MASK)
>=20
>  /* ICL PLL */
> -#define DPLL0_ENABLE		0x46010
> -#define DPLL1_ENABLE		0x46014
> +#define _DPLL0_ENABLE		0x46010
> +#define _DPLL1_ENABLE		0x46014
>  #define _ADLS_DPLL2_ENABLE	0x46018
>  #define _ADLS_DPLL3_ENABLE	0x46030
> -#define  PLL_ENABLE		(1 << 31)
> -#define  PLL_LOCK		(1 << 30)
> -#define  PLL_POWER_ENABLE	(1 << 27)
> -#define  PLL_POWER_STATE	(1 << 26)
> -#define ICL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, DPLL0_ENABLE,
> DPLL1_ENABLE, \
> +#define   PLL_ENABLE		REG_BIT(31)
> +#define   PLL_LOCK		REG_BIT(30)
> +#define   PLL_POWER_ENABLE	REG_BIT(27)
> +#define   PLL_POWER_STATE	REG_BIT(26)
> +#define ICL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, _DPLL0_ENABLE,
> _DPLL1_ENABLE, \
>  					   _ADLS_DPLL2_ENABLE,
> _ADLS_DPLL3_ENABLE)
>=20
>  #define _DG2_PLL3_ENABLE	0x4601C
>=20
> -#define DG2_PLL_ENABLE(pll) _MMIO_PLL3(pll, DPLL0_ENABLE,
> DPLL1_ENABLE, \
> +#define DG2_PLL_ENABLE(pll) _MMIO_PLL3(pll, _DPLL0_ENABLE,
> +_DPLL1_ENABLE, \
>  				       _ADLS_DPLL2_ENABLE,
> _DG2_PLL3_ENABLE)
>=20
>  #define TBT_PLL_ENABLE		_MMIO(0x46020)
> @@ -7246,12 +7246,12 @@ enum skl_power_gate {
>  #define _MG_PLL2_ENABLE		0x46034
>  #define _MG_PLL3_ENABLE		0x46038
>  #define _MG_PLL4_ENABLE		0x4603C
> -/* Bits are the same as DPLL0_ENABLE */
> +/* Bits are the same as _DPLL0_ENABLE */
>  #define MG_PLL_ENABLE(tc_port)	_MMIO_PORT((tc_port),
> _MG_PLL1_ENABLE, \
>  					   _MG_PLL2_ENABLE)
>=20
>  /* DG1 PLL */
> -#define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, DPLL0_ENABLE,
> DPLL1_ENABLE, \
> +#define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, _DPLL0_ENABLE,
> _DPLL1_ENABLE, \
>  					   _MG_PLL1_ENABLE,
> _MG_PLL2_ENABLE)
>=20
>  /* ADL-P Type C PLL */
> --
> 2.39.0

