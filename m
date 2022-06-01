Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41B53A1FE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 12:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26BD10EB0D;
	Wed,  1 Jun 2022 10:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67F310EB0D
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 10:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654078089; x=1685614089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=7ZWsHH9xgmpMFxjkVRVM7t4H6io8cDtuxQGQ/R0717M=;
 b=MxjD/85HfQyTnaEPwjlKxhEBLOf9rAAJvHBcd/q3SWDDox2FDewp0u/q
 bqpxFnE2E1ktpQVWoEcEc9xWzHePuIRvxg/s5v8F0xKh23psllczPe+xV
 Gp/j0w8oAs6qLC/ED4St5Go+ResRVll2Hp++EGiMvvI/0PTLmYfKNPaec
 dm4BBSmgPSvPcWFAp8F0ow1ECkOxm6F4jzqz3hGoIifX/23+4aVwFxVGJ
 kfZ0XOf4tpDIK1zL4jdorDKO1xWbPInkdiTVltxwp31JU5iExqub9K3oT
 E0ieSFJcoOdneopVhGoaRGo5wkolVpledij7ZxPF3BoUlS12Iyx16YAw5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="273102982"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="273102982"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 03:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="706991174"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 01 Jun 2022 03:08:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 1 Jun 2022 03:08:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 1 Jun 2022 03:08:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 1 Jun 2022 03:08:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 1 Jun 2022 03:08:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTwiMReq+6tCBF1GGNHR5alz7dAK20w42LUaxP4J/Q9BPmH7wj9G7qxEWSEWWSuZp8mkp9UpSQApBqbAoE7sRf2L2JIO59TMxu+0H3m3z9LwPtj6l6cLDY+EpIfqS2boZ3Qf9MrgC38c4mrRnZeC6le0eI/FUOF4kMYxZ+cAMeDtESQoD+/MExwY4ovWJx0GmWoHuqF+eA60dxTv+ZE9ERlNwsGBS38Cz08CcGVzMF2rYs39aEcQOoE2Nv1HqwicQW78/7L9tsVtfGuic/kZxPzudt3lSsO8bMrU8/Lor0eWTXKe28Tow9m3mJ6K9+7T4aTPHLRNf1aiD0BgNZ5k4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RawUVnZxUM7RzOC7ZO+K6UPXf+iUQjGGhMoqq8A3q+s=;
 b=oS9JYZhRiarluroB85yYqvtN+Rf1YyVcRCzaZ8Wi21TddB9MTEa6QZMaCiTMIdegE3zVVcG1gKb9vlp3IcjxB7RX9rq7qh29OMjiL31aKN+dhZ2b8a1ADrRprkH64e0d1LhJUwmQQKh42/AjSD3ea5yklFVAW65jLH3oIjk3rSrg3nWAYeh7+CmAQ4i6ygTGX7On00hTEx7q1ZNrmyRmCQepC3K1vp36wnvcAUgvHKKVzJJxJTimRWs93O5CgBxOiApL9vq8IDTFsa+u8/uYm1dG4tBatRR/SeM7zbv7PmHGR6c7CBGbGg+j3c8j8Y5wRahqP9+DRiXjSFXbGXQwdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by DM4PR11MB6286.namprd11.prod.outlook.com (2603:10b6:8:a7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.13; Wed, 1 Jun 2022 10:08:01 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::9151:e836:1a4c:a04b]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::9151:e836:1a4c:a04b%7]) with mapi id 15.20.5314.012; Wed, 1 Jun 2022
 10:08:01 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/edid: ignore the CEA modes not defined
 in CEA-861-D
Thread-Index: AQHYdNciiJbwU8hrZE+m0gXMmcGkG605FIWAgAE/09A=
Date: Wed, 1 Jun 2022 10:08:00 +0000
Message-ID: <SJ0PR11MB5894A5623E807A65DC600E1DF1DF9@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20220531101322.26757-1-william.tseng@intel.com>
 <bba2681d-429e-1e21-95f3-00d1ba93078c@intel.com>
In-Reply-To: <bba2681d-429e-1e21-95f3-00d1ba93078c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c547901a-cb6a-48fd-0100-08da43b69c37
x-ms-traffictypediagnostic: DM4PR11MB6286:EE_
x-microsoft-antispam-prvs: <DM4PR11MB6286EBB73854C3D66849E487F1DF9@DM4PR11MB6286.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pXQj+sgNegSHrGdjwSNb69+Nsq1bIjLoLSxT1ikYzG9YcdXJv8VXl56mCQz8xAkennUBi3O5OeWUvGLchcaRIw0LrQNU3AnWaTGkG0kKQxjjCx+kq55WfaWB5TT5qFPhA5EE1zshN871s+SF46ameHkAajkWlrSl80EoRfxmSn93hDvAM6/57DRod+cx2upKw5nB+/UK/wjxD0S1RWFGgFeXGMCKXwRUbW4bzAX9JziF2LYxcYkXpQefsIKw7y1OMHo9bhI/jw9AY3OMqU0vAmKYQ+UdmbTcYk6aZrl1G2LHL45Lo+tZwXkx0r9FpWjAaFBJwDUgF23y5ertlkWehcxJgQgOFvfxesIWZFLwSBoNvQ2RQLCh/ptA2jS9+qUCYYfyXoB1Nrh9e7f6X53mSpTJuBbETojI2r0g7HQPEhNNWku9uFMW9R9n97Ad2Aza3aV0Gv7BSPYLcCGN0MYTX9OvektLa10SArnIQeh56wVZL1FmvFSHiK2qvVeqqu/XIPNiUm4HEYWtqpa3aQLZG04DG8L4PIkhKeYaVnqPicK54BLYAeVJ6XbIvPAYp1qr+uG8piGD3G71LdjVaiWGDS38k9VnNwmb+XBKd+wGRcJtjTKJru1j8yRYWujPvi9R77mN6X3z7Vtp8BBP0s9roO5HyJmaF3fROry3f5goHW9AzU9DjveHy7yO8fLX8BVXk+Rr4jqG00kE3nnkJnfQQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(53546011)(9686003)(7696005)(26005)(186003)(76116006)(66946007)(66476007)(8676002)(4326008)(64756008)(66556008)(66446008)(86362001)(71200400001)(110136005)(55016003)(508600001)(316002)(122000001)(5660300002)(33656002)(38100700002)(2906002)(83380400001)(52536014)(66574015)(8936002)(8796002)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xnfZIzZ3wLFZbxxeYGrodXzjV63Y+wZ/FBnuND1w8r8vEvKXPh+3T3m4TG?=
 =?iso-8859-1?Q?nc92otmJcsJ9M1qHAyjrjawIRqQqzmmcrjUMknSEdX5y3nbcZDIBE1Nf2N?=
 =?iso-8859-1?Q?Ckfbkwu50NPy571MJQaXtT5DoIFEcKyDEHD6KSa21OEQY1OXiL3XSeccbO?=
 =?iso-8859-1?Q?y0RBqcgVHFhB1EtNFKWl1nYXGst5T/FhY3cm5IkvH8ftZ/w8sGBmlCefUG?=
 =?iso-8859-1?Q?OYliF2wr/0HRACSdq4S3IsMOQvJ0stIsOBBPVCki4OtYzk/vdM0d+cfPsm?=
 =?iso-8859-1?Q?8WGVL5imPtTVqf+QlGp1LZuF3xxh+QnlDQf5q8MrhYaxxQVN08fX+4BWYX?=
 =?iso-8859-1?Q?nMWvT+IJ86sCfiTB/m4zH3Q3MSA6JtcvkYn+LFOOAZq7/g6MKLS2jWr9nC?=
 =?iso-8859-1?Q?3bb5Mb7F9AjhNn4jLb7RmrhOs6cCFBi4mupLk4f+LmbJMWFcw/GohgtYYB?=
 =?iso-8859-1?Q?/GwEIl5Ufhg7kTod8fK8lsckbRXRg+SEKO3F+gv0QgGBlrgCaolDvgqggO?=
 =?iso-8859-1?Q?meHrtAwacjvKJQAJmOq6cyrI7jKK/Vm+0yiwBE3gqR7oZwYYsyOHV+4+Va?=
 =?iso-8859-1?Q?ms7xiJnFxZgxzKJGq1yR7A2DvZv3iKxnNDibToLcmh4lrRXORBYNNz10zt?=
 =?iso-8859-1?Q?tl29D1t++07N6raF/5C65pZegEh7YDBka/660GP/hDSmY1ZSK/CjmcqDPZ?=
 =?iso-8859-1?Q?PKRbMpDqtA7mbmI9RDBAOwbrBBlRcsUq3tD4GEGLUsOw22j/e9M8QVM1Oq?=
 =?iso-8859-1?Q?U+ejI39pUk/Q9Nn6yEXSWkTCk+MsRTmvkOCH2us+4rDUJBy5MURwT955bR?=
 =?iso-8859-1?Q?ohHxgp4AJtIzKRADsgPJFzG4guq2HH3NvAG9h+sEgF0sx4HOeJ1kQLIQEe?=
 =?iso-8859-1?Q?Xj5hnUA8Cz4KJUoi3ixl57ZXXkJlgUjYgJActCAK1i3HfKZU0Xo5iHw9sI?=
 =?iso-8859-1?Q?sYM+iAby5ga6G4rQk8xLX2gPuRY/okPUzQX5LakPKzyIet6ltLss7Exnnh?=
 =?iso-8859-1?Q?uKxMWLyCCOr8BxnoTszjHtDMg0OzkujY/CGVGTVcediBWEH8IfIH9KqqbI?=
 =?iso-8859-1?Q?C0qRXTnt6i4gxizf7RrOB0A3EvGeZrWqk7TbATdnIMiByT2R2e7At6Lthz?=
 =?iso-8859-1?Q?sY/9s7F1gPthfbgTVAX1VePVFA5YXJK7tHswopoc2bs0Jwtl7ByrUUKgp0?=
 =?iso-8859-1?Q?XcHyjnN0ZzXmGcvEO2MWAce3eOdMbRgglW2jNIR+qBewY7yP5Dq0zp9iEZ?=
 =?iso-8859-1?Q?C7a9FyGpI2sMpgI/ykDHFyZY3rwPsugu2fpfhzKwCuVlOIAHBdUge/O3yH?=
 =?iso-8859-1?Q?+VS/gbREMz54B+lVDGo23eA6e3DwtZfdo+0Epnil8qIzFXY5rsMoVPRAGm?=
 =?iso-8859-1?Q?Jpm/l2nN2z0NepKQtI4WewIlCpVL9B/RdOlVF1QLMBcy0Yy8zs10zYabCx?=
 =?iso-8859-1?Q?RwFw7r8TarPyMNMErKjY1ygGixUgkuW1mhLzT8wt24OazR8EN3SHjrIkMy?=
 =?iso-8859-1?Q?1TuVpDh/0Qg/YkNpTNx18CTUe+Yr7e7phxIPOoRRrfTVqEg0ecavRq/QQc?=
 =?iso-8859-1?Q?wUNjhkVaeMLat4XJ9YmOb6yimUXLFRmjH3fZQ51cQ56ksxSL3j4lCTHOCa?=
 =?iso-8859-1?Q?Er+eXgAF7Q4RJtLPZUv5/3Y9jE/jQoAUvzfeZwxgQW0tvIRRa9cvfx304O?=
 =?iso-8859-1?Q?5BWc3cW/J+ZNgsAy7YIy4v2CahfKmxB5IgK6wYjByWBiE/dcbIDRscBO/6?=
 =?iso-8859-1?Q?A+UuaHhzEuqSJPIm/w7cqBF+NTA1MWi9pHXSXx1YlHQCZDZZLOqDzw1LwP?=
 =?iso-8859-1?Q?92Jdj4/sMQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c547901a-cb6a-48fd-0100-08da43b69c37
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 10:08:00.9993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W8haU0EhQLenuV+4bq6OkHEPYC4DglKppNLb2MpIGZHkmyveSccFH3xjZrXvWHzuYOrVifla5CyLcLK2UGmOMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/edid: ignore the CEA modes not defined
 in CEA-861-D
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
Reply-To: "20220531101322.26757-1-william.tseng@intel.com"
 <20220531101322.26757-1-william.tseng@intel.com>
Cc: Wayne Lin <waynelin@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks, Andrzej.

Sounds good.  It is better to make drm_display_mode_from_vic_index() return=
 a mode with valid VIC.
So it ends up with that all probed modes have valid VICs for HDMI 1.4 and 2=
.0 respectively.


Regards
William

-----Original Message-----
From: Hajda, Andrzej <andrzej.hajda@intel.com>=20
Sent: Tuesday, May 31, 2022 11:00 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Wayne Lin <waynelin@amd.com>
Subject: Re: [Intel-gfx] [PATCH] drm/edid: ignore the CEA modes not defined=
 in CEA-861-D

On 31.05.2022 12:13, William Tseng wrote:
> This is a workaround for HDMI 1.4 sink which has a CEA mode with=20
> higher vic than what is defined in CEA-861-D.
>=20
> As an example, a HDMI 1.4 sink has the video format 2560x1080p to be=20
> displayed and the video format is indicated by both SVD (with vic 90=20
> and pictuure aspect ratio 64:27) and DTD.  When connecting to such=20
> sink, source can't output the video format in SVD because an error is=20
> returned by drm_hdmi_avi_infoframe_from_display_mode(), which can't=20
> fill the infoframe with pictuure aspect ratio 64:27 and the vic, which=20
> is originally 90 and is changed to 0 by drm_mode_cea_vic().
>=20
> To work around it, this patch ignores such CEA modes in do_cea_modes()=20
> so the modes won't be processed in drm_hdmi_avi_infoframe_from_display_mo=
de().
> And only the video format in DTD can be dispalyed.
>=20
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Wayne Lin <waynelin@amd.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>   drivers/gpu/drm/drm_edid.c | 39 +++++++++++++++++++++++++-------------
>   1 file changed, 26 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c=20
> index bc43e1b32092..a93f68878bfd 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -3982,6 +3982,19 @@ drm_display_mode_from_cea_vic(struct drm_device *d=
ev,
>   }
>   EXPORT_SYMBOL(drm_display_mode_from_cea_vic);
>  =20
> +static bool is_hdmi2_sink(const struct drm_connector *connector) {
> +	/*
> +	 * FIXME: sil-sii8620 doesn't have a connector around when
> +	 * we need one, so we have to be prepared for a NULL connector.
> +	 */
> +	if (!connector)
> +		return true;
> +
> +	return connector->display_info.hdmi.scdc.supported ||
> +		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;=20
> +}
> +
>   static int
>   do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
>   {
> @@ -3993,6 +4006,19 @@ do_cea_modes(struct drm_connector *connector,=20
> const u8 *db, u8 len)
>  =20
>   		mode =3D drm_display_mode_from_vic_index(connector, db, len, i);
>   		if (mode) {
> +			u8 vic =3D svd_to_vic(db[i]);
> +
> +			if (!drm_valid_cea_vic(vic))
> +				continue;

It duplicates check from drm_display_mode_from_vic_index

> +
> +			/*
> +			 * HDMI 1.4 VIC range: 1 <=3D VIC <=3D 64 (CEA-861-D) but
> +			 * HDMI 2.0 VIC range: 1 <=3D VIC <=3D 107 (CEA-861-F). So we
> +			 * have to make sure we dont break HDMI 1.4 sinks.
> +			 */
> +			if (!is_hdmi2_sink(connector) && vic > 64)
> +				continue;

So maybe adding this check to drm_display_mode_from_vic_index would be enou=
gh?

Regards
Andrzej

> +
>   			/*
>   			 * YCBCR420 capability block contains a bitmap which
>   			 * gives the index of CEA modes from CEA VDB, which @@ -5846,19=20
> +5872,6 @@ void drm_set_preferred_mode(struct drm_connector *connector,
>   }
>   EXPORT_SYMBOL(drm_set_preferred_mode);
>  =20
> -static bool is_hdmi2_sink(const struct drm_connector *connector) -{
> -	/*
> -	 * FIXME: sil-sii8620 doesn't have a connector around when
> -	 * we need one, so we have to be prepared for a NULL connector.
> -	 */
> -	if (!connector)
> -		return true;
> -
> -	return connector->display_info.hdmi.scdc.supported ||
> -		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;
> -}
> -
>   static u8 drm_mode_hdmi_vic(const struct drm_connector *connector,
>   			    const struct drm_display_mode *mode)
>   {

