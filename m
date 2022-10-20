Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F09605B1B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 11:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDA810E540;
	Thu, 20 Oct 2022 09:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B550810E540
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 09:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666258150; x=1697794150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kgjqwjC0/xYpEgiFYX5q8bPoN05uXUylo02esTPLdNU=;
 b=ndmqX+r8TzbLxKUB/mhA5PxQSimp3cbq9qg7Pz7HM8h9H2sVR37u+M8C
 1Esa2jJHeFuPjJ0SboruzgeYHjdIopm4iugCJEleljm9pgxTDC67CTTAC
 U+5TmRHnkwVBNTa6KguKGNR26B2+DCBf9+ACjNWoH6gbTouWfAlZaWcoR
 kXiDWw1/CNe0RWdFkuqbkMdinMf/IIuOdvNOFgUfZ+BuxydhCafrszV10
 oqI1Do9F5vqaSXrXeRpGD9uEf6uR8vwJWx7MOmBx23OXxXBQuGnsGjMRE
 gI/esR7DugMk5S8cxRuyFI+/LEeOkbM2EhYQFdTxaRs+vuB407VOpdLZO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="333227999"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="333227999"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 02:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="624579683"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="624579683"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 20 Oct 2022 02:29:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 02:29:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 02:28:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 02:28:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 02:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kf67kzyJYltqn9HEHkp0Q/WGToWnCqMlpVyzr5w4dFJ9KCENZsX8WzwFIhQZiMKd77ADOKXyCgcuKm4B/TDGc/4UEVoywwD7kPdCQZRqblGWanfgOVHfSpzBfsQmIM6TEzYZrwJqf7tFzF0sebQy5pSVvmosYFz+IqkuZ9DSpjPSFt0LMsA+5l22FDDaDSokp8BQuyK3DuPzbCnpvDcudv5yKKSEbc8icij2z5nExCLQnT1q29K6FVOMzCbg1nO2JT33jwoBurAGWXmQK1Anulw9zwpS+08NOHg3voopCUuGkjO0ttiFn75r3KpaOJC33k21z6kez9Q3R2Ny3gQYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vKL/zva1Yt9gqiiEeCrZ9kzORdc7W5LOikLxvMS+1TY=;
 b=KQtTwBXXztTEv/Q/GQwmaQ8b2aPx6sC/9hONic2lmTASbox3W+Z4OXjLPQ4DFapi7XfY1Gjq2/XZvPHuAP8xdn9fc8tl8GwNFt6NH6LjdoaZLBvvN5fpXzEYuFT10pzYKFRzQYpDbWMlHWFr280Tdv+TouV/2+ysSpC8FR7cig54SxBxrF6ydWWOQvzriBZxcteXq/sAhEmdrRfq7RDCmHjJsW7+Hgnp3XGvJz7wyqwyBrUmTCrgYtWMzgYeXOr3Aqnsjh85+/9f02yn38SmzZjq065vT2+XD4UPBNi8KP0Qin47stDxWrfZpWKMLKJDV4FKiYP+kOrKXEaY2aPhJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Thu, 20 Oct
 2022 09:28:56 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::b969:75a9:887a:e907]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::b969:75a9:887a:e907%5]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 09:28:56 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/1] drm/i915: Removing one use macro
Thread-Index: AQHY5GV0P1ID2aV4W0iVnMze0ZdWaq4XA8AA
Date: Thu, 20 Oct 2022 09:28:56 +0000
Message-ID: <BL0PR11MB3170A29187BD04105FA3620ABA2A9@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <20221020092049.857144-1-suraj.kandpal@intel.com>
 <20221020092049.857144-2-suraj.kandpal@intel.com>
In-Reply-To: <20221020092049.857144-2-suraj.kandpal@intel.com>
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
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|PH0PR11MB5013:EE_
x-ms-office365-filtering-correlation-id: 318aecca-3f6f-42f1-7bbf-08dab27d831a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: csYRNJeElyHqJTisKiP8WpmHNPnH5tSCubozS95BOj96vuw09ysPWZNQ/Dnh+QJ6Y0X81tgIe9lFtzREy41wJKTfQNgaXRQlERQyFJReFsJJ+/yZaolX7q9LeDpNnX7Bum6ATh/pr/0uOpAjCNEIwIfj82x6mUPBim+MIbXbMoBfLQc1kc4ApFLq8SnEkx52SNs09PBdnfU6ZUGQz+InLVZl4pPQAZ9v+/iLt2baTdVcpWZi2KdjeDWiZzyjwpAz9/QzQaZrplPgIKRGTtBsqcbFAHXGELJpeJ0aqCqx2+mxhYo8SQlLlHs/TxtLqAZxfv4qCUu1tzCRHrd0v+IeQT3IqbAK7dX6IVo0bfsICiN5E1He8DVHYiidiNjad/B+Gsm/XgUqrbFyp2XXTI46dFtReF5gNF3camSR5u4NikVTkrHgueAgltA8tQ2OhPo96Lj5/3v45wpteQVwmgL+yqNq3CE9e8E9xGmL9LTnQpK4zWn3Mi5wY9qQLa4go6PrehCOp3XQlUz6ogfuTjdBWnxL4swubiCeikKHMs4BQhs7W0rMxC5zGWXpXIbQvtmZqV9XsMsgfgrU3otsRWCR42aPepoi79ZhyxvA++cFucXx/Kv/n6CkX28Nskv2JLvDM2rngZgU+JuPD9+iM2I590POQPgTmeraBA1UmNobIbD1DBYecmSQBp3JOWYdtygyMvUhHPA3nXFUyXTB4jrXIVqb5HRbTdwE+kia5FtA6SyJRx22D3j9rOyWTlMUa50tNCiuUR7U19GNqonXEov8wA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199015)(26005)(71200400001)(41300700001)(2906002)(186003)(33656002)(38100700002)(54906003)(478600001)(6506007)(110136005)(7696005)(53546011)(55236004)(66556008)(8676002)(64756008)(66446008)(66476007)(4326008)(66946007)(82960400001)(76116006)(83380400001)(5660300002)(107886003)(316002)(86362001)(55016003)(122000001)(9686003)(38070700005)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zR3CCQER5w/Qlwsr+IqP5Vzxm1KDz4DZBqQq0CYFb5Xx84TqRdaN0ox5bUn3?=
 =?us-ascii?Q?xQKxMdU435azZMUA5Oy/G+Hob5qT77G02pfOc5D2CFhDpfIi1HOM4uQ+bhVR?=
 =?us-ascii?Q?PtwbHFA3NVZ6rxT++nBxfYdwtL4zv3KGUinUVU9Yvlkv+sXIcZkYybDFqo9R?=
 =?us-ascii?Q?gZVVa9kuGvPuM+qiy7MdSHL+syytA/RWQfjz6myRIoSrkFpIpLRU7ERepuhx?=
 =?us-ascii?Q?Wo4O7zGXaLLRbZi/8dATdHB/KVodCIPO2rKaVd1TAWHHfFQAjbKVNwqMSMLd?=
 =?us-ascii?Q?QeIIYU5keqsNYzIvNguTQzeoFppnnOOwSWeAora7HfDPe5apGECf2IqfeYA7?=
 =?us-ascii?Q?NekycxC/0XKgWNPWtWW81Cuq0YRRb9CXxc5PnhCe4zmoRqlEGAoGQ3NkQ4Li?=
 =?us-ascii?Q?rQ8+YZW5ASE/OPuRlSChgH+xgNpc7DVMzPid0/u7nIcGJ5PpDurJe0OoXT9I?=
 =?us-ascii?Q?QRkfTn/iY45W6AHB44KUaozJJeIw4Of54URV0OQVAEn+D2ViXyR6JjE1sisg?=
 =?us-ascii?Q?TS10pGHl+hNAFoQlfdGI8EqHkotWD8HCNuUK5Ht86UjqDuC0AlgXm2DGsKTx?=
 =?us-ascii?Q?cMF8Jx+O2izJHPLGs0OKM9qodTy3Y/D7m9Onp2tJ+mVKl1QEtqhonzmEstd7?=
 =?us-ascii?Q?cyvRAmy6zRYFu78bU8PhMlpqtsvI7EIlbj27TCUofFbZTKRn/FHpCncNpIs7?=
 =?us-ascii?Q?5cM4IQTJBhrmQyC5TkWl4CG2EzdFfQjG9uw9qdh5LWcTBJxkbM2CRdfkmiPw?=
 =?us-ascii?Q?ACCLy/5F7wQOnB4/CYCvq+3cIHGufaFGQTj8KedB9ieOwURm1xAaPSmWAeqV?=
 =?us-ascii?Q?kbjq2FTNEN539JSbfPdlQv/TnVVGR+aGRxifACfpidYD6CNwOeNro+hQCfNF?=
 =?us-ascii?Q?uq/Iy+8vkyLzlJvjQUakS4qnl1kheLEx2xK/KB9nHn0eQjE0ELpTL2T+3+Ju?=
 =?us-ascii?Q?9smzCOjYuFwTmZ0jWRQS1ElNEhapJCTXXjyxbnAO/qJ9+ysga/yJn/BtSpc/?=
 =?us-ascii?Q?7kP+PODo8BG9BUlcVClA+Seh3whm1x/2HMaijWjkge5AdyhXu6/3TMyvMBFW?=
 =?us-ascii?Q?IhMX4QS9T2y6hz32Qitcm7nT+eDdizxlHuUgBrBFSE8hWia6TNBafiurYhUB?=
 =?us-ascii?Q?3YRGgqrlmLH6ZgEU/iCXMx5MhPrkkof2/yt3bTQ4YvblBqxiLehEnoclb83I?=
 =?us-ascii?Q?0Xl+9ZOX+jMFsSSIJib3ZnGOP/3aBNl45lYZ98AYzNAAjKPXKw/ZaQsj9kSM?=
 =?us-ascii?Q?kNHkioutwkgToo6iEQWte8aFQKSb1xDuuzP3ucDOYU61sRQkynM3q/3tb7r+?=
 =?us-ascii?Q?kNqQHCbaAmRFO6xLG6M2LwhlUhtzUhab5elM5rnGbRpLL+QWKUQkRgZSv8M2?=
 =?us-ascii?Q?8+Xgz36vY9Af6qW9OonRL/Rn2986jydXlfACLC0cyg3qBvf6vuxq5DsDNxSh?=
 =?us-ascii?Q?8kAwl8s0M7WUsV40jD/MXrxpHW1KxSPzHslVa7MwvAdU05W4w0fKt23vaO2I?=
 =?us-ascii?Q?uSiRjNOaXwO84gs4G0bwEA7TQv1l5tcGAw6liLHjoBHuZo7KnXg0gQS3WH8u?=
 =?us-ascii?Q?J/vyd7b0WbaxHE1cQ3V7Xj/sBFRxkGcsEeuj0DSM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 318aecca-3f6f-42f1-7bbf-08dab27d831a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 09:28:56.5928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y8Ov6wIFW+5XfdalK1XFiagGkfp9kjSzgjBlE/8fnbN/i0wZ0j/JkVLxa+NB+Ufprd/mWUlS5ljyGP/L6opMag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Removing one use macro
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

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, October 20, 2022 2:51 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/1] drm/i915: Removing one use macro
>=20
> Removing one use macro for_each_connector_on_encoder which is only
> being used at intel_encoder_find_connector.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards
Arun R Murthy
--------------------
>  drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
>  .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 +++++++++++++---
>  2 files changed, 13 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 2af4a1925063..c803330a276d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -469,10 +469,6 @@ enum hpd_pin {
>  	list_for_each_entry((intel_encoder), &(dev)-
> >mode_config.encoder_list, base.head) \
>  		for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
>=20
> -#define for_each_connector_on_encoder(dev, __encoder, intel_connector)
> \
> -	list_for_each_entry((intel_connector), &(dev)-
> >mode_config.connector_list, base.head) \
> -		for_each_if((intel_connector)->base.encoder =3D=3D (__encoder))
> -
>  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_stat=
e,
> __i) \
>  	for ((__i) =3D 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index cbfabd58b75a..31ce4ac4059c 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct
> intel_crtc *crtc)
>=20
>  static struct intel_connector *intel_encoder_find_connector(struct
> intel_encoder *encoder)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	bool found_connector =3D false;
>=20
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +		for_each_intel_connector_iter(connector, &conn_iter) {
> +			if (&encoder->base =3D=3D connector->base.encoder) {
> +				found_connector =3D true;
> +				break;
> +			}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
>=20
> +	if (found_connector)
> +		return connector;
>  	return NULL;
>  }
>=20
> --
> 2.25.1

