Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 854872F211B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 21:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE6E89A8C;
	Mon, 11 Jan 2021 20:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3648E89A8C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 20:48:29 +0000 (UTC)
IronPort-SDR: 96fqB9u29DuDZxghdx0f3hoAXZHuSF1gJEEp/4+XINl/JzjviDoFXVLkYfVwbWXwZ1eUi0EIuT
 Y+JsbHN5hwxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="262714933"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="262714933"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 12:48:21 -0800
IronPort-SDR: DMaETU8A+ybtfNnjJEmnTTAP40Xwl3ZIJ4QV7wGlF7Hn+Yd4Oy9QP+brBHJUGskcI+4RJ6eOmD
 yRAGtZaUDCrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="381146055"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 11 Jan 2021 12:48:21 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 12:48:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Jan 2021 12:48:21 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.56) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 11 Jan 2021 12:48:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D13q8COKQCbAHUsLHd8y9oZ+PgGKo9usvJ/7bxu3aaEjmZIaQwYQvZb26HkveuEcCJ5YLPfSz3cpUCIMTco7/5B4NwE6mdT5eV9E0Wpi4CqqI/fqVgLTeuXOR08VnTKK2BvYCVTxVs9yGYpWm/3XKlzfz32QG6ucJCWvxeX6R0rJkFUaMJaIref23zFDVSPn86wt25+q1A1i4/6MTgWVetUDzf1GwqKODgEh5ATPAHdvReX4Ym8m2rVhZE1Akxdvs6XTHlYHT4D7xrAauGGPXLAMG2dC97x/fC/qfV9yYJTryBDWClVpAQFAn0vsypFYPeQLjdId89pebJZjj32FXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upluBbno/Fp15qRa3n707RTS7W7Ua97uEJYiP91IFos=;
 b=Ey7gDVBqIBwXMcXQp6Tp88SrKNI/zpj410vgR//A2g0cALKYGY+GYqRz2EIOAPfWU1Pa7lO/4+BSLtDHCjz6B6iIuBjHLZM9DvGlYSfo1YCwsU/g7CmGRZuqFCGhpfAHMxXAkJddEBNAetSizX4I4RIz6XJUsOz3gSNQd5tB/VIgDVfev1JX0uvQgqaUc3EDZdRlXjkcSHtOughZhyk4Qv5w/JxpSMeXbENOBMarJC9YXV+8zgfSwM0iDSjdo9+hq/eibyIjn/LqzS7NEAK6DDUYsGZcyVpMTE8jcGL9PsPl33RxNiTtDNazt9bud2ADlRFPU6Bkuo5DOfsZN4t27Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upluBbno/Fp15qRa3n707RTS7W7Ua97uEJYiP91IFos=;
 b=CC9JI6eNwlD2D4gjnHzjluaXP/nLTytmCFruxCZkhxWbWlwN22SYL9ZU7wFBh+hQTmMVSaQdiLOiD0vZKOL9ggNL4xLIj4ua1SL47m4M6zlGIPlcHTTBbBCJMesBu2El8QRp+RyUhfcxVPXHZR4zNK1VtKo3DVFALyrXIcA9PLY=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYAPR11MB3831.namprd11.prod.outlook.com (2603:10b6:a03:b0::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 20:48:19 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::d152:da83:422f:6d53]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::d152:da83:422f:6d53%5]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 20:48:18 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/gt: Restore clear-residual mitigations for
 Ivybridge, Baytrail
Thread-Index: AQHW5p8PZckj9BbdvkeYzC2rK2PNeqoi6BJQ
Date: Mon, 11 Jan 2021 20:48:18 +0000
Message-ID: <BYAPR11MB3799896D55184757E14060B4A9AB0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20210109154931.10098-1-chris@chris-wilson.co.uk>
 <20210109154931.10098-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210109154931.10098-2-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [207.109.37.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a603d08-ec76-45e8-d32b-08d8b6723a13
x-ms-traffictypediagnostic: BYAPR11MB3831:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB383173CEE9E3322E7705F8B6A9AB0@BYAPR11MB3831.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 91zifrSbhTGEi4JIDWE251pVfGRQWKlrIcNyHsPrYG2wWFEkeZ0jXGBP3Qnb5y30xe3v2cilitYO55A1K8bj+GU9uYVybonVRaZWBoJU0onFUC3CPiK2Q1OHRnlyQS1y6814v5ca5v4bbPfVPYFtJhG0janaauuzCGAuTFAtJAS7i1JNRjZKe2NB3RhOU5BjYNc5xltzLxKaRU7GhhkaeRfaDnNZdajVSWyYuynfCg3Y7ClS/X7fydzhdbAM0jZXCV5h4cTx83qdTc4CGfmA2Sh6phQzv9xM/pJsSRFCarjSuyHJqnHgUjpyI+o66tLsJzsESBQ9rmp0J+lfZZkRvP8g96WGdoAJjStsJGbvnW7oDAfF3Ex6sbYelRKaj0i/MS0WrzxwA5DdQTT/faOobw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(71200400001)(54906003)(33656002)(26005)(7696005)(110136005)(316002)(4326008)(86362001)(9686003)(76116006)(8676002)(186003)(6506007)(52536014)(55016002)(64756008)(66476007)(66446008)(53546011)(2906002)(5660300002)(83380400001)(66556008)(478600001)(8936002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?HoVdudTroIV6RAd0csDR0PvFCva95AxORuGJ4bta7u0XEGQVgXSSYwaTS1PS?=
 =?us-ascii?Q?ZfpHfdTf5fHmwUAZYHWqZb4baLzMkqoc0jp09mvsaG1sOijBiM+dx2ffHUQT?=
 =?us-ascii?Q?DXlS5Jlo/q2vx197W+Rga9jG/aS7U4dxaY+Jlpj8wioTEnrwOTaJ9D7hnTQz?=
 =?us-ascii?Q?iE6QyXmffKW+SDd6DnLUTsIkByFWrl6IPMv4YgQkrnTP+za25eGA7ZAjsFBk?=
 =?us-ascii?Q?3rh6mBfq7+NpizRn5ABl86cxqTwqWU+U2SYnB3PVvSjdKtOnqpA0X6t9ReS8?=
 =?us-ascii?Q?o08jjUSNS+eLFmDhYxH1NkDADvehvadqrG1cE2bbM5e4jQ08ArvUVgEU1YHy?=
 =?us-ascii?Q?PD+BciKX1s7uptpKXdU3KWiszMPw3nSyDJKA00DnnHf9rfaYXhyBwzTO+S+K?=
 =?us-ascii?Q?xOuWlzUpHaFdfSSpc0TtbdbSAfJxZ72Ir17RcfOJuHu1/VYJQAUWabXQ4vPN?=
 =?us-ascii?Q?tgSMxYxqm8PL4Oq7i/x81jZXWChFSEjGEbbmq31G9jEAitXc8DnaHJlFi1mc?=
 =?us-ascii?Q?G+X6A+pEc1YX6CXRbgeSwpWwGeXT84Sv6Rv1xJtiZBUxKrRHr6UdaoHVpaUl?=
 =?us-ascii?Q?p4Vy9tzBsE2hEpnm+3olkqm5Mt0ci47dqWnRIpfqA4X/xlY5svHtjwq2Ucm/?=
 =?us-ascii?Q?yoohVwexwOXoindye8xx14vWb0ASlxI/+qTIe8BeAGuQnXlgEy6klP6+SMHk?=
 =?us-ascii?Q?aZEqtHHudJtEqfdKmIUbo/a68Y1SwmElEijRJcJAEL/UvsmWZ2G8D2wccRto?=
 =?us-ascii?Q?c9y8hxKWdvhS85yRLT4IHUTn+5varX0TYcEwq1LVKiPc8hvhbhSQNgS4FB7U?=
 =?us-ascii?Q?gnKJwT26f/Epu9EzzaW9A9eWl5hPJEpUuT940XheX1yieGS3yjGFPgMf7Zrc?=
 =?us-ascii?Q?HD8BU585ZUwGXSfEefHmd4oaWQXfX9EaTuKV7TiIwWpUkCD3soXbNVWGSVA7?=
 =?us-ascii?Q?+BsxbMD4issPOgJOLQP8xnJbRArckwVydt83V+z8fEk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3799.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a603d08-ec76-45e8-d32b-08d8b6723a13
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 20:48:18.8030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eKn8bzzpgXHWpmsH0ZeFPYsMRn2jueNJwTheq0fCuQidedobrmNKt63STSjF0Vthtoq0WtyOxfZCfyFx0GWS3iFsuuCeWo7m7URv4BGa5zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Restore clear-residual
 mitigations for Ivybridge, Baytrail
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



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Saturday, January 09, 2021 7:50 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Mika Kuoppala
> <mika.kuoppala@linux.intel.com>; Kumar Valsan, Prathap
> <prathap.kumar.valsan@intel.com>; Abodunrin, Akeem G
> <akeem.g.abodunrin@intel.com>; Bloomfield, Jon
> <jon.bloomfield@intel.com>
> Subject: [PATCH 2/3] drm/i915/gt: Restore clear-residual mitigations for
> Ivybridge, Baytrail
> 
> The mitigation is required for all gen7 platforms, now that it does not cause
> GPU hangs, restore it for Ivybridge and Baytrail.
> 
> Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Cc: Bloomfield Jon <jon.bloomfield@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 4ea741f488a8..72d4722441bf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1326,7 +1326,7 @@ int intel_ring_submission_setup(struct
> intel_engine_cs *engine)
> 
>  	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
> 
> -	if (IS_HASWELL(engine->i915) && engine->class == RENDER_CLASS) {
> +	if (IS_GEN(engine->i915, 7) && engine->class == RENDER_CLASS) {
>  		err = gen7_ctx_switch_bb_init(engine);
>  		if (err)
>  			goto err_ring_unpin;
> --
> 2.20.1

I tried hard to remember why checking for HSW platform specifically in this case, since mitigation is applicable to all gen 7 (including 7.5) platforms - but couldn't recall why, and see no reason in the code doing it that way - so the changes make sense...

Reviewed-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
