Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C9079A6B9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2161110E1C6;
	Mon, 11 Sep 2023 09:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5AC10E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694424522; x=1725960522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nQypIJBjSGkRzlWdwz9Q38hP4kmvQnw+z5g9jGTP8wM=;
 b=EMQPE4rOVK93dyQdfrcu8vf+vkMl547lQFnAYWTOdqX/acpSJtf7slGT
 YtpuLp71NcJZA1ZW9stgr+eu1B/fmoZiQeVRBqS8ymghJ+v7KGfElArmV
 2W0Sl2/DTnWy7iTRpyd/TyYUwitOk49Vo1KBjjgIkg2nUIF/OIEPa3Nhb
 iQXWdQiz300W5rceq0QtKIIFq0Em56Ny7CGYvDQrVuybFCH6Trj3w89OK
 dBsTzMov62FWYXN7bWJT5wLJbNnLojmmxTk4nSL8kBGKa1K/XMeiKEYfC
 Oqv8obeKc0OyjDkeU5ZdNovSsONVbIZmKTEM6u3IxPxYFx/hPGnChCkhv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444453000"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="444453000"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="778326925"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="778326925"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:28:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:28:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:28:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:28:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MajiYs17zgXlxZl7U37vDXL3ggSE2ARuoaBqvma9G7l/UZB0kmBkhq4oBizTKi9ZT2QGvnV+fBGcAX9SLkqPpte2fl6I6szNOXll17HSG4pcy0Ia2GU/1CCCg0UEEkp302Nk2fwtBkgSamAZq/cmxJ9PU9S5pEWsCTIFcyAzWR9dKlmJIkFUAQZePCj5oVPsXusGtpn+rGFYku1sy0WVL06ZTyYr2zhsiSI899Q0b+cIVbvI5EPZe4NZWHdJ44MXT4Am9Fo6b4gWPplXhLC8zCUhmfbtD1I0xhP18YOuPe5mbuIoMMpkah2F0WCXW1tOiqdvOyDvZhLP1eIJUNadrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rRKfPSfSPkiSI/izsCDbnV0KNBcU5TUUPpt+Mr1P5PI=;
 b=n81DS5q8Pdf5pHWSPSoe9f7YADoUUMIoS1EnQ9IpzyD372KMbk/sPJus5tvMabvNbjXxwWO8/BIhX3UKdsa17hqRcl6t4CRc9+MCA5ZdWWNdnk+Unj5CKn3tg4MkmRNLXnnNtleDvbDXTnUHlluIoizqG5fbKWaRIZ87STluALkWoi7iezqKQyzY27X+u0JY2LvpEAFJUm6Bg2fvGQ7LW4/e4DXbJczywPfu/XnVxRpGlGBA52OE59ZmUSQitN0OdlLqqYEbzwo3kgrFOixZtPvTVkCiW/DrzmaniijjXT1M1wBK0iQq/Oo4mH0llHcWlqMVGBz9tswJI3oodip/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8163.namprd11.prod.outlook.com (2603:10b6:8:165::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:28:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:28:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/8] drm/i915/dsc/mtl: Add support for fractional bpp
Thread-Index: AQHZ5G51T3COpQ5MdUKLbG1jBxryfrAVWOpQ
Date: Mon, 11 Sep 2023 09:28:23 +0000
Message-ID: <SN7PR11MB675089EAABFA7138135FB3B7E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-6-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-6-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8163:EE_
x-ms-office365-filtering-correlation-id: 61ad43d7-b1ab-4bd8-32af-08dbb2a9721a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yr9TWnHGSGcGy4esRjAmVVBPRfA0tspQWWLdX39fabC2ZsQ10cbUDmY1KRTR3cNjlUBFUMrwQhoROOknm4ozWLnow7VjiZQlhlxFaVJxC+aNicflqohR9gWrIgRPDl1BT+w2syVOAlrYBCDShuaMzr000mpcEjtbSBzKDgy6rrthnnDgELz0M+xWZ6kijah67FMO0orWIy1WobWt6DaGj16t2WWnJ1aIvZi3iJcb1GKcflUscuxHrX2vn8/bHfmEabn2l1krMxAQ7uZWCRgdtSEaeVHL+hxH2/sCY3531HsHZR51zQ9qzLI1h1qpIk8T2XmHHpsc/mKF32vOux/WxU1BAKe7+z0uqf6XCmk9C1YSgDtl6TTdWEBg66gs2VoBQokE9OH1Qw0OVkQ/WB8222Y6lgRln8IF6phWArswZBmfhYFpPdThpveDo0mBUkeK/yO/pXNoGmJAQ7jpRnk91sgbKTOj+x4Ei6ktOcR0g7K2iMsHQMs3EFr9NRf9aFnN8t0TwM8p/8Ui8hqPQvnKr6DuV8PK/nJoPbNENcAidG0zIHErjK6quwVW1Q0y6+k2lGyueXEH0k7cFISoE5hC6vg5HrxX47D8+HclWuKipxW6F3mnijD0eAhRWuMD4GfU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199024)(1800799009)(186009)(122000001)(71200400001)(7696005)(6506007)(110136005)(33656002)(86362001)(82960400001)(38100700002)(38070700005)(55016003)(26005)(107886003)(9686003)(83380400001)(478600001)(41300700001)(52536014)(2906002)(4326008)(76116006)(316002)(8936002)(8676002)(5660300002)(66946007)(66556008)(66476007)(64756008)(54906003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PpFjFjCj8yK3VCD/vBnUULKdQGnbtVbZ6VKZ//TWJ+Fb2vsqJ/2jNCFP8xLh?=
 =?us-ascii?Q?0VTtkvwn+wkbZgaHArxxcHHXNVUknFyMG3t6WdvzsOT6uCMrKfCRYq8hhK5J?=
 =?us-ascii?Q?ijbUGZUSU0lqI1ZJimzDalxmjorb6dom069W+3n02WPvV0XEglZgryF4DhLp?=
 =?us-ascii?Q?apvgdkGczsHwr2a7HO05SGKbiohDxRdFcTac7vd/hqU2BUH4gskgqAmOynGp?=
 =?us-ascii?Q?bZZDqtcQLMeC7/B/vsIumoNt37AUkKQxpImGv8oZr2heMaeN+MzMOGARtyH8?=
 =?us-ascii?Q?+vSKOppWv9bw7RoVSJmMQH6EDpNygc5cfPHCXZvo33CJKbJWildl3/KcNkdM?=
 =?us-ascii?Q?Iehf9ssxBotQm6mlPFx5V98ybGSia0pkBtCxaejSCEDLvitmknwomCVz3fBX?=
 =?us-ascii?Q?NXx9kvu5Xu0b0oEe5GTnUYPLlTswdS5f7fBioOhFfalSa3/G5sG4m/Z5qYAb?=
 =?us-ascii?Q?L+wlJIzWl/PveWI3UUplY3cdlMo6zQJ9iJB0U1Py0djvgwEYy0glzTX0+zlo?=
 =?us-ascii?Q?2KYMYJPKpDkl2IGgnU6OjHG+6OTakoc2wHahFzD4giJFS3bOVQaVlMew4DrK?=
 =?us-ascii?Q?pQ9y+0AbxdUuWNhPUSXFJnZBasDgi3UEHc6Mq7454D9LDJuWTfgnHltAg0YW?=
 =?us-ascii?Q?JsstP9n5aszfhf9PWUVB+SWJzvRnYvkEsclC97cjNLGe0URLAJZ0HubVjjSg?=
 =?us-ascii?Q?YcISt6/vIM1uMU2DvyBrGuml5Xhwi0gs6X7MWBFIt3fJFOo/JyYoC9utA+jZ?=
 =?us-ascii?Q?DMkjoGanOq7qhZbfXpGSlcR82vRnp/Q55EJHwqBHoLyhg2CuiR1iHfBJifiP?=
 =?us-ascii?Q?e/orb+Ohz5mBQrn7VJQ+9Qv6GPPT2tSOUEAIApLq3hoiH2zjnnLyMiwJjQso?=
 =?us-ascii?Q?do4OWEwxBVpbsja5idGff7lQk9zdqPLxD4hwYiPlLIXpmmgyY4QRCXOoHh3j?=
 =?us-ascii?Q?SjjV143AC51GknGmvmaZhPG4Qp7PxnPPRl6oBhQ5C9j+7P/gYcx50Fbtng58?=
 =?us-ascii?Q?KpsJK5OIeZC8tuFTsgRk+cpWAPVj1TdNQ9bTKZii2cQk9dQxQ40FgH4Jnoa8?=
 =?us-ascii?Q?QHvoTxmB6SwLBl++B7Alz/HY1wzOZi0Mz37eCgrzZo423qc+anFiPlTvlesD?=
 =?us-ascii?Q?mx8sww8FtOa7G8tEkg745m+RuuFfGmc2TuxTANo5TIdk5DX/uJU+poThCe13?=
 =?us-ascii?Q?4KzNk4JaMh08V9sdoUgtXM8SZ65WLtxasBHlgzTWp8mVWJdPNuKJDm+ZPgZS?=
 =?us-ascii?Q?MW4aCMoZkaJhbn6VVQdGFncBV7R8ILx226XdyRdNwjkdLoa+gpOBQG7xwUu7?=
 =?us-ascii?Q?9hBmO2aaUBrVmGfBVh7BQs8tqyj9xY7DI1xJFnYjkIcpc77FNQMEUl5O0gCD?=
 =?us-ascii?Q?q3qTxhOSYIXPKuANl3lcDhZ4a4aX6MT6x76VLUH+BUhm3Gj56cm0RqBRJhsY?=
 =?us-ascii?Q?qHQTr6+BP+AIrpKBIIVayJ/HJ0Z+hzWbdjCYQjPwLFZvEbM8dveRHQM7oStd?=
 =?us-ascii?Q?6eKge+7E/86RurQaZ3kpPzsiU9r7OrmAoQ6NXdJbaSndJmju+54G16sYEwij?=
 =?us-ascii?Q?b+JhXZ9k0BwXd1SnYAAQpfJBGlkJzUjOr50Pzz4v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ad43d7-b1ab-4bd8-32af-08dbb2a9721a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:28:23.6181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8nu9ff22lCSdAJebXXSOARx/3lSIVWPZLx8JRc9tZwYgfbjkAMCt0GPVfV+naFdbIvjTBpe82U7Xep3uPL6Mww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/dsc/mtl: Add support for
 fractional bpp
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

> Subject: [PATCH 5/8] drm/i915/dsc/mtl: Add support for fractional bpp
>=20
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>=20
> Consider the fractional bpp while reading the qp values.
>=20
> v2: Use helpers for fractional, integral bits of bits_per_pixel. (Suraj)
>=20

LGTM.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_qp_tables.c    |  3 ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 25 +++++++++++++++----
>  2 files changed, 20 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> index 543cdc46aa1d..600c815e37e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> @@ -34,9 +34,6 @@
>   * These qp tables are as per the C model
>   * and it has the rows pointing to bpps which increment
>   * in steps of 0.5
> - * We do not support fractional bpps as of today,
> - * hence we would skip the fractional bpps during
> - * our references for qp calclulations.
>   */
>  static const u8
> rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_8BPC
> _MAX_NUM_BPP] =3D {
>  	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, =
diff --git
> a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bfc41972a0bb..d7cfb2446c13 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -77,8 +77,8 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config
> *vdsc_cfg, int buf,  static void  calculate_rc_params(struct drm_dsc_conf=
ig
> *vdsc_cfg)  {
> +	int bpp =3D to_bpp_int(vdsc_cfg->bits_per_pixel);
>  	int bpc =3D vdsc_cfg->bits_per_component;
> -	int bpp =3D vdsc_cfg->bits_per_pixel >> 4;
>  	int qp_bpc_modifier =3D (bpc - 8) * 2;
>  	int uncompressed_bpg_rate;
>  	int first_line_bpg_offset;
> @@ -148,7 +148,13 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  		static const s8 ofs_und8[] =3D {
>  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
>  		};
> -
> +		/*
> +		 * For 420 format since bits_per_pixel (bpp) is set to target bpp
> * 2,
> +		 * QP table values for target bpp 4.0 to 4.4375 (rounded to 4.0)
> are
> +		 * actually for bpp 8 to 8.875 (rounded to 4.0 * 2 i.e 8).
> +		 * Similarly values for target bpp 4.5 to 4.8375 (rounded to 4.5)
> +		 * are for bpp 9 to 9.875 (rounded to 4.5 * 2 i.e 9), and so on.
> +		 */
>  		bpp_i  =3D bpp - 8;
>  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>  			u8 range_bpg_offset;
> @@ -178,6 +184,9 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  				range_bpg_offset &
> DSC_RANGE_BPG_OFFSET_MASK;
>  		}
>  	} else {
> +		/* fractional bpp part * 10000 (for precision up to 4 decimal
> places) */
> +		int fractional_bits =3D to_bpp_frac_dec(vdsc_cfg-
> >bits_per_pixel);
> +
>  		static const s8 ofs_und6[] =3D {
>  			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
>  		};
> @@ -191,7 +200,14 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
>  		};
>=20
> -		bpp_i  =3D (2 * (bpp - 6));
> +		/*
> +		 * QP table rows have values in increment of 0.5.
> +		 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will
> have index 1,
> +		 * and so on.
> +		 * 0.5 fractional part with 4 decimal precision becomes 5000
> +		 */
> +		bpp_i  =3D ((bpp - 6) + (fractional_bits < 5000 ? 0 : 1));
> +
>  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>  			u8 range_bpg_offset;
>=20
> @@ -279,8 +295,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	/* Gen 11 does not support VBR */
>  	vdsc_cfg->vbr_enable =3D false;
>=20
> -	/* Gen 11 only supports integral values of bpp */
> -	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> +	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp_x16;
>=20
>  	/*
>  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
> --
> 2.25.1

