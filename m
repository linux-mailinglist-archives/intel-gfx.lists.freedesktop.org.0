Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9273E0EB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 15:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996E110E209;
	Mon, 26 Jun 2023 13:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C7510E209
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 13:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687787056; x=1719323056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/HE+eeEzwm7WImeN3ir6WGoKdPOXj9msjvTQpE4xCNc=;
 b=bPyys9FOyo64VG20g11DT+p9LMurNI0q0m6dLsdDOOCXSxdKAddpME3C
 zgOKKr0fhQkJ/vAA+RKs8YJ70CRNgA7fpDM+YulSc5D0pe+CQRHA6S1tb
 oqdHlb9H2u5sUcILwLWUinHC9cOx3+YaEEPdfqMZcJyJtKSneBNQTEU0D
 a5UvderWm0ODJuuh+yn89rh8K5z+qrRK4XD9+el6mM5fYjEOD32WZfzuA
 dayxoDrZQSsHnFAm1i4uZ5bBh1VAxgJ9LnSttSnZT3D5lOwptK5tlrp3d
 6h5fA2M77aTmUKZpPELbflkLYJ2F9HouMEaQBdCbsyxycx32SoiznHkPm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="358765386"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="358765386"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="781440793"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="781440793"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jun 2023 06:44:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 06:44:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 06:44:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 06:44:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 06:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DddO8fqI01L1UgxhumutVaB5hV78UBMLT31Kuu60wBiU30j7i8hExPF/nmlyPsqGhsMYq7H/AAap4wz09IiUuRCzjLQPYjDm03idSpuQPYYMKgZd97Ffgz2KPa5R+NEyxaM1vC9KzVZKgdpjEBqaqHVzcnrqjX2ENS8gFRdPaEyWQpzhmu8qZ+KengSa5BIYvznbCzAG/bS2uhGWpsu31GEcLtEg4ABKjQ+JqunWmHzr1cbqoON/XxtI10978HvL4zeF1KYJeFOykZc+dw25IOvbwXskyqktt38/2TNEndV3ijpYnFIqopDEalq5umQscIGK/J3M0sKzbN+gWZHfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtHDWjav370rt5YZvtQ2QfPe1kKn/v4uogfmcSC8pfE=;
 b=HR2Px8K+t52CZRZ/zkDcQ9pNMLjvaTgoi+zXDmUVVsV8EuZ31hhagM+ZYK4CWt5drSJxr0VriGfpZ0/5e8F4VbcKq4lHlD+HJFtLFo26+uXTWmtruUWo0SOSbntiFieGFh144q8aYSbR0R2qx5FFt1Iy5Hrn99O8KQz96wXDC9TEjXO00dbGnpgXEIbbS8nAnDqx6J1j4HiLWPQ4mIZ/C5ytjnv/iiEnJTXAPWtNGHvV4QLDuJnrLoJOvbGAUBD4/vSF5G9RyC4rvdYgJFYwjnTh5yEeCY6OUiUHdnfmfPwooVI5WpXezbNnlFXjQMFqKxI7zPO1fn4YUeuSrHuidw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB5350.namprd11.prod.outlook.com (2603:10b6:208:31c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Mon, 26 Jun
 2023 13:44:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 13:44:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Add forward declaration for struct
 seq_file
Thread-Index: AQHZqAOcRqNBe3L1hU2owMbMt6rrAq+c/V6AgAAaUfA=
Date: Mon, 26 Jun 2023 13:44:04 +0000
Message-ID: <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
 <87r0pyv34w.fsf@intel.com>
In-Reply-To: <87r0pyv34w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|BL1PR11MB5350:EE_
x-ms-office365-filtering-correlation-id: c78308a3-dda6-4155-94c6-08db764b67ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l3yDxoS3IQtzfZ4uctp9GN5vomSIlxZOFg4CM4peSKGvLFnspo3DIw/PYegFcRppy2BHAq0qxIvskzHgWJv/rnxkrkuU7wTSEM2f2BeBs0ZYCKKU5yhnzbXqo6eJwymyctg+SV2W9aW0DDkL19nQlCDBQ1AXVcsOflCByPrMykGMIIGD/h8xActHv3qpQHDkvTlGeLKx6fxA3H56IN6RJbGJp2VD7nrZOC3F+Sc6vQ05r1pBDbLxCf2Bbsa+c1zIW1zOzxtehcKz49R8ARBYaSvTyUBwcRNguCsJQtHtKWN1DF/vVG3vk7UEVneU7oFMnYYZgzOF6eHsdz5Q9N6aG7j7QOd7CemCiDobjXfXJ37Aj8q1o8C/GwRVm9aj9GpSfpI+j0a2jbK0spmkNW72RX8chmrgH5g9GNqxTLQztWDgUQaGtdpuxCLDYZNArDWH6UuvJaiyeYV3f55elXT8W5QrguCxN3GjTuqKvqzePW6Db04MvJ0XpVM7jM7Q7Q7l08tmi+9KP+0moDNna36azzSb09cuBTrVERi6RpuB3+N5EUapJ2zh5xIXzI5stfZAWYldVi0VNGR48q89qBjUE1CuPCSKcCdHfmzDVpVcmaoS/Af3SOxrfptFnCxnL6+X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(396003)(39860400002)(346002)(451199021)(478600001)(7696005)(71200400001)(54906003)(110136005)(83380400001)(53546011)(9686003)(26005)(6506007)(2906002)(186003)(5660300002)(52536014)(33656002)(38100700002)(122000001)(4326008)(55016003)(66946007)(82960400001)(76116006)(64756008)(8936002)(8676002)(41300700001)(316002)(86362001)(66476007)(66556008)(38070700005)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?luZxsgmZ+P5AZ9IuSbafG2I+Qm9/WmI4xrpiqx1EL+vjICBMRcLDe45+Z6B+?=
 =?us-ascii?Q?HlWFsgoTlzfcBKxJ9MklqZRu2lL1FWjD/tMopAIjAgOHPPj+mZS8O5L9780B?=
 =?us-ascii?Q?1VyBJBpbH+am0RubweQpuNgzRkNcczJvZLbNx3K3ZwDg8258D9T+jvt8dTJQ?=
 =?us-ascii?Q?U4Fex9uNInbyAgjJTQe2nDN/R12QGz3NhIFtnzZBgHfYIm2C4xlH965C/9BI?=
 =?us-ascii?Q?IXeMKQTzdDH62tpCSqmGLKDz6hdmcW3X9k5ydqhYCmBJwSZ5sAeSQ/LgfT08?=
 =?us-ascii?Q?0WB1kJGnqqM6F1Knc2ALJcHV1ZspU24oQGgkaw8zElrWx8a1AXbsf7eGxcnD?=
 =?us-ascii?Q?d7Esc/PQypr6Xmbt/j2UMi1PmAsOx0aZAbcj5Ct06SWSit95ekMZipjsMes/?=
 =?us-ascii?Q?G7hMh3ok0NnqhUeRheXZkyQvmVAsZpFPCORom80JX4bO88Y9EdwGAS6mHfGx?=
 =?us-ascii?Q?MSs7B6rwjDhlMiFG9FRzx87qFdfCdzclWugncCskwtxQU3vX6ZalCxR86Gvd?=
 =?us-ascii?Q?Ch6CVkEOJo04l08+y+aucURDmKh1IpkOHRWZSAwriOfu1szLuTHFjiyB8vtn?=
 =?us-ascii?Q?Lvivl026OAnpLq5yLelkc/pzZ0/h4rWasga5lhf2CWHXGZ1b5DL6WVVkTmAF?=
 =?us-ascii?Q?FGOZSNkmtW7RZlN01g5J45Rf7ApSC8xsGIFjc8P7wl4ynSRCn2zDIOrTTvMn?=
 =?us-ascii?Q?1BTRzXlXBCpmkt3vIFJfVKbxaK/qzFb+lxXK31Wj2g3XYFAB5Ilv6zZRk8Fe?=
 =?us-ascii?Q?NaQlkbSXKTNUI5atpdODrYjnyvO+YD+djSTKU0d/ZCAGVsknChUQmrriDYtT?=
 =?us-ascii?Q?JzsRO/PbDQLtqkDc9oMCQ5b6duReeCNBQZRM5Zyit72kwLKPjLgyhEpRSQxx?=
 =?us-ascii?Q?eTMfHjEMpOcVrsD6uyox82/QnOWphAhXkoUZ3Uvy/UNRxgjoWcCUGdsJHNAg?=
 =?us-ascii?Q?SVUmfCJicgENoJboPqjgIggNjwLU791v1idx5vrz/+SvqQX7iXCGvjJFUcwj?=
 =?us-ascii?Q?vkqS8fpS6VghkoLCJogEhxA16/ezN/16I7L8aoyUK0CoQ61lylQonJapvf9j?=
 =?us-ascii?Q?QTYgpy2Dd96cJWpPttc+c8j1W1h0gS+yU6p2QZ1b6LODo3geNuh/crfAiGeA?=
 =?us-ascii?Q?UQ7X0hFutg8HtwUwBEG+ktC2uwNZe+t0blPmuWzsWbxOtJ5bxN2Oz6edc73K?=
 =?us-ascii?Q?sfDld7M5Kc+XAxki+SfGvVNyWWqxQgTJu1okG6VlO6UbCKkkjFOBqIN5S0xV?=
 =?us-ascii?Q?24aHFvei8FxxmXY99iwTNRfXYRGMpRBg5hZxHJrsw86e6pIarCgWdrDJLZ5R?=
 =?us-ascii?Q?T6cwFH3LT/hDvessnuZ1KEF5CgS/iSTfM6j0G1dM5EgWQ/Uj4MxJPmZyF/7f?=
 =?us-ascii?Q?e7ebPIyMDG8NPj7Wr4qyPjXJaBUPhtO4lMVoR3mRlw6xt0T9k3/hPSiJvIl2?=
 =?us-ascii?Q?71h3qnNPxC6VhxozfOsHnUsM3u1CQnxkgnmBemrxIYvbf2BAF2p8qkfEpkCc?=
 =?us-ascii?Q?shi1qYc3FxWcOYp/D+OdK6rZVALBH83jeb/KmkgOkTvC2y1Kxj5pBs+oZ6uP?=
 =?us-ascii?Q?n1BnByaS0WObF5wIP+okSBYyEJ49Wyb4gAjClsAZbB4nIBcr0/ppoRNPzIua?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c78308a3-dda6-4155-94c6-08db764b67ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 13:44:04.2450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hDxiDATfx7IBsMPSJ1Igqd2brjpI23c4V5ixJONQ14FZWe2vFVqXnSQCQG3bUWt9ifYgxbbn5vU7dz3SFGZn197GEJwi4Klz1XfWQPwe254=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration
 for struct seq_file
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 26, 2023 5:37 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add forward declaration for struct
> seq_file
>=20
> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > With change [1], visibility of struct seq_file is lost in
> > intel_display_power.h leading to build errors. Add forward
> > declaration.
> >
> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
> > declaration")
> >
> > v2: Use forward declaration instead of headerfile inclusion [Jani]
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>=20
> Hey, thanks for the patch, this would've been fine, but looks like Imre j=
ust
> pushed commit f4fab137dd2b ("drm/i915: Add missing forward
> declarations/includes to display power headers") which adds the forward
> declaration among other things.
>=20
> Sorry for the trouble.
>=20

No problem, Thank you for the info.

Sorry for my ignorance but will this patch eventually find its way to linux=
-next or do we need to do something special here?

Regards

Chaitanya

> BR,
> Jani.
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index be1a87bde0c9..0ba268e566b0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -16,6 +16,7 @@ enum port;
> >  struct drm_i915_private;
> >  struct i915_power_well;
> >  struct intel_encoder;
> > +struct seq_file;
> >
> >  /*
> >   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain
> > instances
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
