Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FB159B7FE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 05:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7259297AEE;
	Mon, 22 Aug 2022 03:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA9C12AD69
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 03:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661139302; x=1692675302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GaK0B/m/eYkqqs4cevTkOaGeJ7vA06cbusmcTV5FwCQ=;
 b=jU4ix5ioqJ/EeN0zXN6W3kPexga+Yjmgol8DbGutXhTycTOmnu4mS7hs
 EuXT+w/WMidRws61Z8C3le9A/IIYmrYpTb0xMUlBwGk8ubP0mcORmzhpY
 ZjvmB6le1YsDfVeujxUeM8hj1rqLaJ1xu+CcWrlntQaWdlYeI3gMBaVRa
 pgEwgqvYdya6+s4ic2aykdTM6AHsEZarXThTq1O783Iyqw8F4dHQcjh9Y
 UKSbEK1LQgOrSQpgKshMNz3odJ+xTn0ov5udS2R0D800eTn3+E2Kr5EOT
 cWQbiMMUX6tPswVOcxFm3MIZZpVSfV9AZBdMuulVUnCVCGyflOTvHuPPx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="357294170"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="357294170"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 20:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="605156505"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 21 Aug 2022 20:35:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 20:35:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 20:35:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Sun, 21 Aug 2022 20:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nstNjaaZstXTEvoHTrXlQF4FTe25PdrXdtX5VJN6JJlF1WyLmaJturxs1RiPgXVHa70kDNpykKawAlo/m0/hvhFL4MY7GIK9Cu6xQQaiwN0vcMduB3M5UTvUNmMe45w0L7xsYS3yRih586mZeXlLCfET1EXoLCRooI5jteVX58BdFutNfdxyEzyNhYCCBcuOAb+sfmhE1IHyz6DVzLcA/2584xCZ7hCqncVq9LaPzI8RMDf57guT69B3d+GxiNn6O5CQasZ6TrIxlUsw81DzQ4rM9LeetBp4ZB06m0bE3/OX4T0sx5idte209sFWk1+2spfI/op/owCZlffGdjcC5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlNMNxuDbNnG1AO38OqR361bMVYKl2+cVj4UbZR0E2w=;
 b=Fcf/3hrX0wNEUQkxT/IaYEEwBHkJyQl5LBWVUv6dUHegbVoEj/kSl9gImrv6kHMV8SWLGYrwszYaEq1pkh6pmDRuXkNndRRq+JdXFHb+YN9FAOForfvI1yWDOciW/PUhDIn56wnTXXcMIbmIq2w69c7g6bXeDuvlIa90w/BKW2AD5hf9thcbHlim6Fom4WnZN4GLnmKL4ePKB/ZoHhjVB7WUWVgUF6g3cqyXuPha1LZwDDLiYZIozNjrBn+4x07xKeEfJ2i+KfPt2D0tA6r1stwNbrz/Rk92NbXblipuHrOGR/r1qkXd/tXiHg66c20tncz7xqJ3TjuiT4XP8YaAag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ0PR11MB4958.namprd11.prod.outlook.com (2603:10b6:a03:2ae::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Mon, 22 Aug
 2022 03:34:58 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 03:34:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915/display: add support for dual panel backlight
Thread-Index: AQHYpxHxLhgyy+9ly0Cu9FgOeCjM2a2kZ+oAgBX6GwA=
Date: Mon, 22 Aug 2022 03:34:58 +0000
Message-ID: <DM6PR11MB3177FBBE02F3E7EA9F8312BBBA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
 <20220808035750.3111046-1-arun.r.murthy@intel.com>
In-Reply-To: <20220808035750.3111046-1-arun.r.murthy@intel.com>
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
x-ms-office365-filtering-correlation-id: 36019961-a72e-4bbc-5b0c-08da83ef49f4
x-ms-traffictypediagnostic: SJ0PR11MB4958:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NgI0n+rfEgiRTcWFiAAgJUs9m4PapT1ZTpl5t5iOVUxXmlAN3YtdYC9Z/jbe7bPOJCqxyHYcTq+3o20ol/wb+I5rV0Lksqtf8tunanxbmepO+QSQOa75QCZS/O6ryK6aHFtM1pPKX6HKisU4+hmMeWGu2Pg7AAuLZ2s+yXxLVDJSFCvEG1/K3/4iKs7CTJ1zjqIP27+cRQATinHi6fV+FfbyzpXmgUu9rd3Q0bMAnlYaRg3CjBQJy0plxWYYp22Phllte/pmyuV7MRsjD77OY4DegQHpGY1QR5y84/9P9CmD1LoO+GH1K7dnCLMrvfdm3Ckj3/q2Lcd1ij+Ft5b5OAj+X05S6Ez3tJbJat64NjLXUQrqZFM3QyXOnfCalJSzv/UaonOtpeRS0IRXvqB5yvqk0eXsgBaY1dkdoBBkhhPOi7OZ2BfT3qnkpQv1C8oLfYFLzozBoLlTfjLE+gtmApk3LnsNUbDzf0UvDjH0NdlUB9Qqu2TfPiPJ/dP/qW6L1sL2lwTpyWhkDqiLewNONHxqU6Nbxyj0wK+98F0jamTiW94+kXAIjv/L2zzVcVi3jDUAkgosvyRZJFpdiXLfZIEStaawqOHRW4AVpUxZoaIkq3/CCc5SKzQF3XfJjQ/KVGsqTtVYRtbtv8sLKqHfIwjgoRsKL2p1XHp4e3yAeNM8zTViL1FAmWZziQpmE3JToLeCOOkW/AFQpvBWaVXcE9QPtpKyeMy8e7xWF/W9MTTMX4fQmKwu7l7jF3T/czIJ9wEkE8MGPDvo3aFkmuVKJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(346002)(376002)(136003)(396003)(55016003)(38100700002)(38070700005)(83380400001)(66556008)(64756008)(66476007)(66446008)(76116006)(71200400001)(316002)(4326008)(6916009)(66946007)(8676002)(9686003)(26005)(33656002)(2906002)(6506007)(7696005)(86362001)(5660300002)(107886003)(55236004)(53546011)(186003)(82960400001)(41300700001)(478600001)(52536014)(122000001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3U87/tbvOt4mtLZHjNpxIMTuUL0JUktvnCQRwTvA10wWtxzcCRN4gj0Ft+fa?=
 =?us-ascii?Q?Uz/7JuZCWuhWtpN3CmvBO5waNZi16eY4QnVg4QkeGNf9ck2qmjD80bbCAiF1?=
 =?us-ascii?Q?mxefKdXk2kfu9skbQ4WGIvn6R4Oc5CxgphvxVVCq1M0h+N8KosRCZkEuphST?=
 =?us-ascii?Q?DnZEuVEpsmRN1s/s5mmORSosAZBrISCe0tsEvFqeXhD96tfloJ9HKi4K1NMx?=
 =?us-ascii?Q?o69LtUo8iWUYK70hJ6AIHSCE7DkQUM46N315xzj0po9NU9LFZ/nDjDp2suKh?=
 =?us-ascii?Q?nSDuToo/zALeT3FAzmBRVzh0Iol+OCrDpbWKuHtICNo4+8flasQNezTt2lkW?=
 =?us-ascii?Q?WORt9Ct4WTGaeEtGcKJdClIwrZAwiXXv7b2Pu507GH2zkezJn39F6itcrWCZ?=
 =?us-ascii?Q?GP4QQ7bT5fjR2uGJ6XNBhxjrgwV5oTTj9pwrX/+RGjUBaeb+0Wd8DbEAq7Tg?=
 =?us-ascii?Q?1h7sAq1dK4u5Rt34pGujobaUgyK9gPLyXxobgajbhxPM2ByJIfvnCxcwmDke?=
 =?us-ascii?Q?/MfiQPbLa3NeqCUfIRBIyq0upnviCuMVnp3/pe7HoZtHJYkK9qwYQnhpT/vh?=
 =?us-ascii?Q?2CNT9pDRaWPL4RET0KiO1IF/nHeqJT9yNVuqvTTPUgwwoZRrcDTfXwne/ivP?=
 =?us-ascii?Q?h2mTcqf5y3kfiQfuKCUgYg2RQj46GvaRtEItIwxT3OsAEm2B1gSAca8zTzPJ?=
 =?us-ascii?Q?PItTrMt2fjnqs7E3eqYHr/16SMh0SeslZMZFI7QPt7t9oMnSRcvJT8IZFzg/?=
 =?us-ascii?Q?k3o/X0WaXXWK8dQ2WGr+il8LLOTQDH6579OeylT3hOUnQkWLFGUTs5wXByhf?=
 =?us-ascii?Q?JJ3wbtfnb1/p6/X3ZlIGjukN5ApvTa6QPsBv0kIGxg1ExEK3LE7CukMI0HGA?=
 =?us-ascii?Q?nCyv2yU+942H7gWNHbOABhctt7X8aWlcs4QS6NKyBPQcuEKh0l6eod5iyiiV?=
 =?us-ascii?Q?9EvmEc+NnMfXb5Iy3vaPiS4gbpGC7lqPWX3l73evVVN/oHRrFjuAmzRJ8wu6?=
 =?us-ascii?Q?NuXMRfwIQ+Qpaqz/2hMBP03a1KBdMR/0nJ5ojrjpofM7eyyxeN1YFcZIBgT2?=
 =?us-ascii?Q?sxWjVFIb5/DckkbtS205LjvykNd1MI8AjC+bzrIKkCpNrMEQRTCXtbHzBJBy?=
 =?us-ascii?Q?Ujto4dUWGIRPGO3s1HJ+MArLs9GE4JWj6m2Ua6xvrg3kJlU3wA4DNwLv4yk+?=
 =?us-ascii?Q?P6pClbcMRceZiwmD48sv3grOLQqh4jQCZ4ZFH4jiHQvhDGS29e/B5mwJjy97?=
 =?us-ascii?Q?bOcMynpNOKRMc1lh6TJgy/uxQ6jj9X0fh+/jLDiJyo9oF+0N+bP4duiCVOHd?=
 =?us-ascii?Q?PcYPrsaOCP0jJ37O/OlxApkrct1SHub/UwG16joxXSkoftpav/4JlnGNNwub?=
 =?us-ascii?Q?N450keqsG28pdy9dJd/JGVTWNeQPwqEepcTMAh5iMkLaqn7Qou5NsC/k8r7R?=
 =?us-ascii?Q?EMpInFxE6FIxcxohBRkFVlYdH5n0Cq866LKMiRxckksAQOYv5QCCXwpVfB+Y?=
 =?us-ascii?Q?W/Z2l32NKjkLe9RRR+6Dt3MiXg3lMh7jiITbKR297MoYnGObic+cdWBXpOqv?=
 =?us-ascii?Q?6uhxxLYYPh0E1KYzfoMWnGmbl6KyJgLJRAJUG9+w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36019961-a72e-4bbc-5b0c-08da83ef49f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 03:34:58.6894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L71/0DpR5euC1cO+KwVKq7J5161QwRPBL11LdVPyJS4AjHcUB4cIxXMjSMJGTPYCV6Z7DAC+AP9gpZ/KNiA10A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4958
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display: add support for dual
 panel backlight
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!

Thanks and Regard,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, August 8, 2022 9:28 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: [PATCHv3] drm/i915/display: add support for dual panel backlight
>=20
> The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> backlight device names") already adds support for dual panel backlight bu=
t
> with error prints. Since the patch tried to create the backlight device w=
ith the
> same name and upon failure will try with a different name it leads to fai=
lure
> logs in dmesg inturn getting caught by CI.
>=20
> This patch alternately will check if the backlight class of same name exi=
sts,
> will use a different name.
>=20
> v2: reworked on top of the patch commit 20f85ef89d94
> ("drm/i915/backlight: use unique backlight device names")
> v3: fixed the ref count leak(Jani N)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 26 +++++++++----------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 110fc98ec280..931446413372 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -971,26 +971,24 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
>  	if (!name)
>  		return -ENOMEM;
>=20
> -	bd =3D backlight_device_register(name, connector->base.kdev,
> connector,
> -				       &intel_backlight_device_ops, &props);
> -
> -	/*
> -	 * Using the same name independent of the drm device or connector
> -	 * prevents registration of multiple backlight devices in the
> -	 * driver. However, we need to use the default name for backward
> -	 * compatibility. Use unique names for subsequent backlight devices
> as a
> -	 * fallback when the default name already exists.
> -	 */
> -	if (IS_ERR(bd) && PTR_ERR(bd) =3D=3D -EEXIST) {
> +	bd =3D backlight_device_get_by_name(name);
> +	if (bd) {
> +		put_device(&bd->dev);
> +		/*
> +		 * Using the same name independent of the drm device or
> connector
> +		 * prevents registration of multiple backlight devices in the
> +		 * driver. However, we need to use the default name for
> backward
> +		 * compatibility. Use unique names for subsequent backlight
> devices as a
> +		 * fallback when the default name already exists.
> +		 */
>  		kfree(name);
>  		name =3D kasprintf(GFP_KERNEL, "card%d-%s-backlight",
>  				 i915->drm.primary->index, connector-
> >base.name);
>  		if (!name)
>  			return -ENOMEM;
> -
> -		bd =3D backlight_device_register(name, connector->base.kdev,
> connector,
> -					       &intel_backlight_device_ops,
> &props);
>  	}
> +	bd =3D backlight_device_register(name, connector->base.kdev,
> connector,
> +				       &intel_backlight_device_ops, &props);
>=20
>  	if (IS_ERR(bd)) {
>  		drm_err(&i915->drm,
> --
> 2.25.1

