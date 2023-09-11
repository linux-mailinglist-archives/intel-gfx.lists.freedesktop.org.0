Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2DE79A6D3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBDF10E20D;
	Mon, 11 Sep 2023 09:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10AE10E20D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694425409; x=1725961409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UsPka2ks1/zj+kJgQmBjbVWTn93pBA/gsGpMsX+dmcI=;
 b=TWJz0usRx8LPPftWPZV+sTRiV5n+p0Am9qyD2DTyFeb0SwaNpfY+l9mI
 gp3SNHrPDfo6zZ0bviulArT4D1LppmyTw65W+SqEoOW31wCiBtoMJB2uH
 8P0aMdNx0npPh+uNH6oKW1eOIm7VSnL1X0eB7f9FVFOjhrWnFyx9pmWeR
 VIjpoKaKRVEp9fxPgkhrufOtd/mqcwQ1+Tlm7G9MIqotcVHYGXyW1nkpv
 t4Fr1lqMWwaKZD1zC9Sq3nVYuCwcDKA44fGdwxHLyZhZYClhAt9i6kb8X
 Q3wqAaLJMZSWHM54TwxBvMbnXI6PVzjBvUJ0SwPaPyxZuITiFQpY+ks+Z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377955830"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="377955830"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="693031461"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="693031461"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:43:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:43:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:43:27 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PRVm7MNCD5Ph41vT/G20Le1iSxknsCstGtZw2iw3DutFjwnVt3gPFhivv4SpLbkpQ97t7MJLfCUhrerqO+Gt5/ABDmfBpj66fXYsOzVC794BSF5DAJShOpjibIpaPtUhyNYpc+MXGGfbbLDbFgF7V+0xoUCa4Eg9yq1eO4aZHQgFTuVablXOJiBwDTMRj3u1sJ8cgXTCw5jCYRtSDhFOA7zozChhN9kuWbEBaSFaBhB8vdHlrw+wDKlIcbl9HV4pPbNZSS3IBvRLVRIXlDJ8vw9FiJjlywNpXs2/+FTQQoxhBLLf+/k2Vns71N8+m582FWyrDIaPLtHZqLFhlhVVOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EdCut8LCEk6+AnEyOxbnsPZWMNwUZTjKLYUMFow+vWA=;
 b=EyeE+nczAdlkqQXL2TZ2Xh/CieZimCWQI2HTNBHcBNhOl2QWm2GXO8ghjgn7chDPhrALS0/GOOGV8hROA+t1FWRqFpNrMgc7LYJ2XBkdK9Qe//t6p76ezE8GIHMa/G7d47DMYQcRmnifRDITCcLyNWgI51TA4R6LlDDCmqoqkULz+PpFl3EOmkkETJCMKDDgH8UGQ3XA5sNOTrMSw0+SRrHbZ2zGBp8MLA5+fp0qzAOPIZi8Utj6xVTD3Lv5aO2x3I6uAAcBSLZLKBf4OFV6PCy7nbbotVyAKiXV7HbRwCfXK/y9dSI6YFNdFJRQopi36lTTPgPoIWUIIBPRFFFYiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:43:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:43:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 7/8] drm/i915/dsc: Add debugfs entry to validate DSC
 fractional bpp
Thread-Index: AQHZ5G53gosiqCPMsEG52u/IvkG4xbAVXyyw
Date: Mon, 11 Sep 2023 09:43:25 +0000
Message-ID: <SN7PR11MB67507126D1C309DF7E977856E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-8-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-8-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4837:EE_
x-ms-office365-filtering-correlation-id: 9a3f5e66-939d-4b33-c19a-08dbb2ab8bb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FswcPXqn19yvC7xeOgJYGerIe1STii5xvwu+U1EDtl/2413XULQLLUbs3mhdCOdzlpapfdRmqa/i/pc/gHEwZSWI1vtNgQU8aQGgvhSwR8mQYY+S2AuBtFwCgzfkAEVoqyDtEYj2TDiLKCm+4ovI8gfLYqpXl+Ycc/Ta5QTWNb66tml5qmDag+WY3uPmkgx8+kFZkw3SfZ6mTWgjUqSwVkFSMSFb4KwwipysL+k1XPEQwuICFgqeCN1c6wtvZoO+ajOQBeJrHkBU+UKkvsmfJoFHEiP5/LTXUFiX9N4bCKSZp8Ea/Z8UaKjU0FmDV0jd4v0NlbSvLcO/MaVexKTvoZX4vsbyku3otPR+LAFH5DgciurBT1Fo1QtEC7C+oyygd+yvg80g+wgzCjp6h87PdZIpo1sI/zkGjkpyjA3UDUmuVYbxwVGeFCZGujnzpefycEj39x4+0UQZ6Q666Ulf+1MJYWK4sOFbPeDLq1PMRWFRdiYRmVfTe5tFSFb+6b0oEhOuSeCkYPCUvmMASxogn9BbSlpSsJg9T1Qdciy21AaEYvBSVC54RLN35M+JxUqCffKd47SQWeQakngpM/fFx4EBgriBFTWdNq/C6iwx+UsSRat9suqY+aZANSmZpr4Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(136003)(366004)(186009)(1800799009)(451199024)(41300700001)(122000001)(7696005)(6506007)(71200400001)(86362001)(38100700002)(38070700005)(33656002)(55016003)(82960400001)(107886003)(2906002)(9686003)(83380400001)(478600001)(110136005)(52536014)(316002)(76116006)(8936002)(8676002)(4326008)(5660300002)(15650500001)(26005)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZRnWbV9nw5mdATZYEc+urFWeSzK3xwWPbz16d/R8fiU3LHUiwdcTYKX5u4Z7?=
 =?us-ascii?Q?Kat/YqpVxFoaI2gKIyIrjcJlrnqBLWrQ4cn8LtWpl1HDlrzMkRHG7zKUlRXc?=
 =?us-ascii?Q?wsbfxzXbMx5s4kxkr37x5Usig88OlnC+vonQMBfH2Q4DwXpL3tU9gbKMeZfD?=
 =?us-ascii?Q?8gLbVcL01tBbMcI4Jg7frpCzdjK5ifnQ3jvfA0zzJJg0ykpd0EiROWFzxqs1?=
 =?us-ascii?Q?tKHY2N0+yqq+3+CVLnpWH8sneyUIhbU3g0TSycvnNGVvUFLOqU2M/Gj4KwiX?=
 =?us-ascii?Q?7lSu89JGecXg+Z2rWZNNFhRqIIDC46i3bzJVWBPlKot9GPhh0VVJkUvib0c+?=
 =?us-ascii?Q?5yzkDoHbp/cX7yKwJeQdzYLJFa5H3upn0lIt4BCkvPlK6Ct6wn4M2oMyTOzP?=
 =?us-ascii?Q?ALgsyV+TixfMnA3+nHowAgmxUhCLAMYsxDzDNBj6sA7KraoLrk4KcdyFLKkn?=
 =?us-ascii?Q?b5LsOZanJ1qEWy72AnGCSnVCmF3MGn3EjV9vhfosbURoEvuc/2A+CZ09rzz9?=
 =?us-ascii?Q?3/fL+gkaW8/Y6y0kwSTjwr1wlF5FSoocW5Kh6XBZrnbT4xxPIanfSDChFcwu?=
 =?us-ascii?Q?EKs5KVMr2M3vsN1jTk6+daUZs97Wb0MxF7Py8PxJuSHHsqjqAu9RQrRuf/UR?=
 =?us-ascii?Q?6t3L7b+g31EBlcgakMiMCIMQ7sDe+APkD4h7ADdGMOAyTJwkxFl4iv+sDTDy?=
 =?us-ascii?Q?WvWtDs35KkpWrTqRNe2NSH7jF0hyeOpCHT0tcNRnPpHlNga1xGPbt1TeCPh8?=
 =?us-ascii?Q?niQ5GOnZ3gbPe2mj3dPPvekxRcjdOGrgBa9maQiiwCpBP2pEzwqSYbD/IQkn?=
 =?us-ascii?Q?U++SPn9skJt1MLkRMaa2N68bmPkzyY0Ql6yvYLuYtx4jvhT/Cq8jhYSkkyWY?=
 =?us-ascii?Q?FkdRJd9hFUcV8oAL03fS3Py6ji4OKTlHSqWVHIreJLFXzo+jRAxJn1p3h501?=
 =?us-ascii?Q?YP0RMegFSKGOoiAhhkDQNzXOY+ZIzJIM7ibjbSyYcpPnQhKmY8BXBnGbTSbr?=
 =?us-ascii?Q?877/PsQ7BO0Z1DsGtA5NpJOpGz2i7/tCnq2TVvet5AiRC4JePIXUSO3m2CWZ?=
 =?us-ascii?Q?VatW5YsRXEII0FGK00dqszTr/tJbOKpYLNcQl+q3otOZCOg9pqv5IKKwdEv/?=
 =?us-ascii?Q?t+RILofxo5TBrw9GJC/eO5pcyUUdN0ehFLyi5ZSbQwL0VIc+HtEWP087AAkE?=
 =?us-ascii?Q?sm2IHY4pC38pP6mrpAmwU830XNxYZ/A3pevEwnRMWz1piYZ7mf98bmxenQlE?=
 =?us-ascii?Q?AF5TS1UJS0bY15Q9zQH9QXKfIt8ZD4bgRsdCNN/Bp5n93QBP+aGgXQUJQpwb?=
 =?us-ascii?Q?9fmegUixlElAcgoPLYefP6/JvtR4UONEAdOctba0tZjb0zia8Lgy1ZVhVP8m?=
 =?us-ascii?Q?Nfc70PTqEJcLqmw6sLW73j7aEXoU8Np5fIFbz3nmLXKGvTWvA4nRXdTeDFPH?=
 =?us-ascii?Q?p6OUYwT3hilJMqhSfYTAL9iSFA+4UG/L5MMLzr9SSTkdrn08S653sY42wnnM?=
 =?us-ascii?Q?iVhHnnugvfdbHwaIZatcBOfIgGSZYgyuMKvCRIWY74YbezLlFDaJdwl6kOH/?=
 =?us-ascii?Q?XYIvMzllzw/pnZ+eomya01L0L6mu0PfYUuM34zQl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a3f5e66-939d-4b33-c19a-08dbb2ab8bb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:43:25.6070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A5It9F2wcgttvWN3KoO1nRNrRIz7nRunv/6MHj4RfDO/DhJxwp2yGZUFR5TaCmmguQEAjuXv43TI30w8ow7BAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/dsc: Add debugfs entry to
 validate DSC fractional bpp
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

> Subject: [PATCH 7/8] drm/i915/dsc: Add debugfs entry to validate DSC frac=
tional
> bpp
>=20
> From: Swati Sharma <swati2.sharma@intel.com>
>=20
> DSC_Sink_BPP_Precision entry is added to i915_dsc_fec_support_show to
> depict sink's precision.
> Also, new debugfs entry is created to enforce fractional bpp.
> If Force_DSC_Fractional_BPP_en is set then while iterating over output bp=
p
> with fractional step size we will continue if output_bpp is computed as i=
nteger.
> With this approach, we will be able to validate DSC with fractional bpp.
>=20
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 82 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  2 files changed, 83 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f05b52381a83..d1b202e14e5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1244,6 +1244,8 @@ static int i915_dsc_fec_support_show(struct seq_fil=
e
> *m, void *data)
>=20
> DP_DSC_YCbCr420_Native)),
>=20
> str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
>=20
> DP_DSC_YCbCr444)));
> +		seq_printf(m, "DSC_Sink_BPP_Precision: %d\n",
> +			   drm_dp_dsc_sink_bpp_incr(intel_dp->dsc_dpcd));
>  		seq_printf(m, "Force_DSC_Enable: %s\n",
>  			   str_yes_no(intel_dp->force_dsc_en));
>  		if (!intel_dp_is_edp(intel_dp))
> @@ -1436,6 +1438,83 @@ static const struct file_operations
> i915_dsc_output_format_fops =3D {
>  	.write =3D i915_dsc_output_format_write
>  };
>=20
> +static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct drm_device *dev =3D connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_dp *intel_dp;
> +	struct intel_encoder *encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
> +	int ret;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret =3D drm_modeset_lock_single_interruptible(&dev-
> >mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc =3D connector->state->crtc;
> +	if (connector->status !=3D connector_status_connected || !crtc) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
> +	intel_dp =3D intel_attached_dp(to_intel_connector(connector));
> +	seq_printf(m, "Force_DSC_Fractional_BPP_Enable: %s\n",
> +		   str_yes_no(intel_dp->force_dsc_fractional_bpp_en));
> +
> +out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> +

The above function should be on a new line and the extra new line can be re=
moved
return and modeset_unlock

With that fixed
LGTM.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> +	return ret;
> +}
> +
> +static ssize_t i915_dsc_fractional_bpp_write(struct file *file,
> +					     const char __user *ubuf,
> +					     size_t len, loff_t *offp)
> +{
> +	struct drm_connector *connector =3D
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_encoder *encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	bool dsc_fractional_bpp_enable =3D false;
> +	int ret;
> +
> +	if (len =3D=3D 0)
> +		return 0;
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to force fractional bpp for
> DSC\n", len);
> +
> +	ret =3D kstrtobool_from_user(ubuf, len, &dsc_fractional_bpp_enable);
> +	if (ret < 0)
> +		return ret;
> +
> +	drm_dbg(&i915->drm, "Got %s for DSC Fractional BPP Enable\n",
> +		(dsc_fractional_bpp_enable) ? "true" : "false");
> +	intel_dp->force_dsc_fractional_bpp_en =3D dsc_fractional_bpp_enable;
> +
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +
> +static int i915_dsc_fractional_bpp_open(struct inode *inode,
> +					struct file *file)
> +{
> +	return single_open(file, i915_dsc_fractional_bpp_show,
> +inode->i_private); }
> +
> +static const struct file_operations i915_dsc_fractional_bpp_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_dsc_fractional_bpp_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_dsc_fractional_bpp_write };
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1513,6 +1592,9 @@ void intel_connector_debugfs_add(struct
> intel_connector *intel_connector)
>=20
>  		debugfs_create_file("i915_dsc_output_format", 0644, root,
>  				    connector, &i915_dsc_output_format_fops);
> +
> +		debugfs_create_file("i915_dsc_fractional_bpp", 0644, root,
> +				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>=20
>  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9eb7b8912076..6e76f1274b0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1797,6 +1797,7 @@ struct intel_dp {
>  	/* Display stream compression testing */
>  	bool force_dsc_en;
>  	int force_dsc_output_format;
> +	bool force_dsc_fractional_bpp_en;
>  	int force_dsc_bpc;
>=20
>  	bool hobl_failed;
> --
> 2.25.1

