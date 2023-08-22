Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E8378383E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F6D10E2D1;
	Tue, 22 Aug 2023 03:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB20D10E2CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692673316; x=1724209316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=seSAO2dAuxzT4b96PL3GaTTbnQIORLk7rWjdaK5OIzU=;
 b=MlPYb9u0SjUhJHAmGx1qdNbzeZ9pos+kwbRVXRdTKSf92nosMPwc4fiN
 PMjJL73vdHIhmIN5HWDtcWV6L+b4uK5uu1gPheL44KOmYDbIqzdS5E/yQ
 DJncgsNhYEBNHjKxDJDJaGOSebjiMsQzxFIDJdgNRtBRG1iICGDLDDJTr
 P8fG/5/dzSPGWmxYq/0v9orvvxNlaF9Epl1CEo0K3Ww0wK+/jo48J2cTJ
 At86OdUI4+YrRqm60qHRIPpPD9qJCRQZ8w3NgyQKynEC6GWupR7knC8vm
 Ad0AmVhq/yyHkPMWjpVh0ghwmKl0O2kuL5wXgnblKlrE9fKDn+ot8OJRa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377515643"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="377515643"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="712993011"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="712993011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 21 Aug 2023 20:01:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:01:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:01:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:01:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:01:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Om2d2q5Op7M+9WpXywMY/3sYWTbhwzdpTh6YTeMe4RArzVsk46p9LPdXDoqM0dkSw6mcRoEqNIK1GLusx5oqbvJwGlJzYssLjkW6hh3E64kgeLFtZtXAaTDFFenzvSGOR4eAiKZ1jtIvgJrhYW6QZ0RThXkbdn8YTfXucWB+rL2y0EHjZee4QjRrYK3maqcA7cfRMXhPdBhm69S4HbFIoxK4Mbr0wL7x3sYikaStiJvrUk4UznPEgwUARtYyBEPA1SLkaS/oZa0lJ94KudiJmn0gFcPqItYcWX9SDDeB4emBCIPwyrPJhRdn/Pkv/5Fo+ODdCLuEhmC1Eq1DxztvWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YP6Y7LtJXLBYliuU/Cm4GR5NERBvFq3jguixK7hsMsw=;
 b=CN+8+Vs2bw9oMSRqW69hwxdXFLxrS7EK7rnb1f+/kOml0WweBtMV3nm1O/YOMlLIBaluEXqF+eMybY5vEaDWeOhL2URwQdB3PKlfVgM1XUbQRzMxlbxbxaASdQ6oKqVyrNyLDsj6BYwC/WH2NxTnJZd5t4HYlOfY5izEnRtaZc2q5ngVs+PpDzbs8glauhprFYKwXztdbzRJSM7MH8z2N2gl3CQIuYwoehPDCgaT1WDKJ6+Pxg6M3w3C8v05T0TVq5iECxAEdbepTx5CN/1htyAvEdc1GpsITg1W2wSgVVA9f0G8NRr9WDBgTR4yu6To8EEZpUBrXoYWwiWL00kkMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Tue, 22 Aug
 2023 03:01:52 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:01:51 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/4] drm/i915/hdcp: Propagate aux info in DP HDCP
 functions
Thread-Index: AQHZy19IfuhmVBLhsE23ffZObLN/Da/1sDJA
Date: Tue, 22 Aug 2023 03:01:51 +0000
Message-ID: <DM6PR11MB317708D45A13FF4E0CD25EA4BA1FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
 <20230810074758.154968-3-suraj.kandpal@intel.com>
In-Reply-To: <20230810074758.154968-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SN7PR11MB7018:EE_
x-ms-office365-filtering-correlation-id: 4ec3d4ef-c0a4-44af-9b3d-08dba2bc2252
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JpoBIrBbJS7KwBifbubqAdw+Z9NklcQQ7ZzyXKKPY9XZHSyczw+ImQThHdgzUu8ybx1lg4Y7/SUv/kUGnT35TmJD73QjiBhhr4gds4Tqi1R4nlYoRpn0/J/SzEtvWUVCekJ8/cQYGMBGGtNI4kPiviEarWWdo/JwK8RVFttoG+RvgyLgBy8q6r7VDKnwCH73kMQIVOYIwL2KBodRI0Yn8qv0rKOdKksFgd5un6ODg+6umYd/0rdYLRhhYY3j3yuHFMvWkURt0GkUKEQc+oOWNh7URQ/yXYQfVy6Mwe3nxGFdtDau+eILAJlOootok8PzC+2aDhiZUmjFPszfRgPtkhionkGYrUkYKHyNrdRqnQaamGf15MK9bEIImWHWI2yooPCJ945M3FJHwevGfsxPsCO+y8VE4tKBSrVXkjxwdGlTocLTzbUd78tZH3sEhYi7pipi0fFt71k39REbnAoaKgmZA3drN+5B/sFk4lLwI1CqNw+agmTeDYeAmHleUtaQBUd343hBhcWV9BiYYiZRgun4suzN0CbwLaQK2un7zoK5G+wJygUE4bjQV6GU6uNr7EMM3FQmypC72HjHf8p0WNbyx2TsagOIE2s1VcqAIzY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(66446008)(76116006)(66476007)(66556008)(64756008)(316002)(66946007)(9686003)(82960400001)(110136005)(8676002)(8936002)(107886003)(4326008)(41300700001)(122000001)(478600001)(55016003)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(83380400001)(2906002)(86362001)(7696005)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i3YmFqf8expBobl3Ed4Lgr5b5+I3ICKt0Py+idntpF9jr+kJ28q8sy6O+eAB?=
 =?us-ascii?Q?u2fUQAR5LGE4IhX8Be8P7KVGESMey7vLKugDkioTDnlZDHNKPpg+7TYs1LwF?=
 =?us-ascii?Q?Z9mf8BSjPagihtX/PDUrEtNhYTUMeFRjrhhJXi568P+2WHuAWkUdg2UTlsw2?=
 =?us-ascii?Q?Nw4xtESX/7JupMGDTO329GYDwtPdERECaQGLBsmm0N8OnZRay424/6WL9pJq?=
 =?us-ascii?Q?7FvpRtLOA68kEkZNh7l4vs6cPLk/BIzAef8yG7rvp0c/DeUK8RPOVKwVyzXT?=
 =?us-ascii?Q?CQuDfFFwJ/joPU7UVbW+9MHQa5Xh86oCHsWTDpmm6/pk4c/o8tkpq1twYHA6?=
 =?us-ascii?Q?5xlfXHFwB+gphxzae+Ropl2yvWUzjJRmlbOfWqp14xaEzd2AdDoyZdaoYBAz?=
 =?us-ascii?Q?K1IQKfJj5iECPIUHRXQyAZRRIG6MXMlvDmWrfZrYCTWydbfo6hh6a2k2smNJ?=
 =?us-ascii?Q?iDdgDkNutO7HcUG6aTpY8Ev2c8pbfZSs312p0Dc0BjW1U379vQE9w2GaV050?=
 =?us-ascii?Q?3Pl8AIweij7gli/uBpA6cGc5WrgGYBrxCzkmorMGKJ0ctkPahicl4/f7zp/n?=
 =?us-ascii?Q?q1tRqPudxj++bPEUBlOwRbRAgd9XXWJlSv+QjMabPILO4szfqsZDcKaGMgNZ?=
 =?us-ascii?Q?zxqkdd3/J2MBpTMRCItcMrT0VHV2lgbcKZpl5RJUt9kaFsDIy2Yhb31wj+lR?=
 =?us-ascii?Q?Mv047bbpkoFkopY1MLsP88lEgEWXND8jeVT4REldhSrQJ1EWEW/2Yug5n8rG?=
 =?us-ascii?Q?wOBMsUrpymM4/roBK87IRMemfaQ+Vc3TfsS670/TGZkpc4nmNjt2vJp7j2o8?=
 =?us-ascii?Q?RPkoNy0+H4e7jou4kWalGGVQFvygFvxussdXVhhU5oi6RHmZ5nWW9e2+d3K4?=
 =?us-ascii?Q?0nLtr9K4Unrj8MgFmfnnlO/Q6ozyyTbHVBHL2DgXKo9yTzniI3haZh0zf6lH?=
 =?us-ascii?Q?9hh/+Wn2nthbfiYLqVO2o2i19l0+IMZIgRW0ImZ2k3d9bnAtrNAeb9/v55ca?=
 =?us-ascii?Q?PdvGTsOAy/7jSJyHyISW1eZPfcKJm7kY2PFCcxXogUs/q31zTGvQIMtJrZtn?=
 =?us-ascii?Q?Gguh2bgrEAw0DUu58KlwuCpfRYoPQERHh+rpldYnKumC0iVL3N5zQVN5vb91?=
 =?us-ascii?Q?UkFAA9dc2pD6QSJcLsB26QeH10BaG7UbRL4G5lukyNB9DVxUo9qMPGGZ4wWN?=
 =?us-ascii?Q?QrU7jFpDTT4WnX4RFHpZv3/1eiYJMXeG7jvsIYgNeuq0hwfdfV7kVCTW388R?=
 =?us-ascii?Q?8195CyWnBkS6UYdUcNMPxS5v/wVK84mv3Tf0L6PT74cyN6Zt9UGc29kEgCtN?=
 =?us-ascii?Q?gi6joTQ7LMVabx1DwdWuw9Dj7b0xzzMs+F5Z1DdLVBkjFkjjSozM1iuVSEmL?=
 =?us-ascii?Q?HB4o5iR/Te79bylwPsmpp89OBn4CjH9sE07nZWzFDnsXXDPUUjOoJvB87qxw?=
 =?us-ascii?Q?RctytzFzEsrPwsQrnOO8mt/GXOyfQYxaqK7zJysVSaQWQqZKHf5ON5LboIPj?=
 =?us-ascii?Q?HuGft2NzYiUnHMuFpRrufnCmiDhP+P/xmgIqr6COpjr4OC15fEG6628J1HLe?=
 =?us-ascii?Q?78q1UAFi9wZdO7QF6tACRr4ND/fJfnoMjz5IVow8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ec3d4ef-c0a4-44af-9b3d-08dba2bc2252
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 03:01:51.5845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5TxvPXDHyeVHAkbHOTv/NSO2XK2zNU65wH6F0PT5ptCOuxBJZ0yEwJXOZRZSbefA6C2zQqfVPrEvaFR0m7Kn1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/hdcp: Propagate aux info in DP
 HDCP functions
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
Cc: "uma.shakar@intel.com" <uma.shakar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, August 10, 2023 1:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 2/4] drm/i915/hdcp: Propagate aux info in DP HDCP
> functions
>=20
> We were propagating dig_port info to dp hdcp2 specific functions.
> Let us clean that up and send drm_dp_aux instead n functions:
Typo.
Its not a good convention to pass the drm_dp core struct in i915 functions.
We have been using i915 wrapper functions for this. Feel its better to
continue the same convention. On the other hand, intel_dp can help in
getting the drm_dp_aux.

> intel_dp_hdcp2_wait_for_msg, get_receiver_id_list_rx_info,
> intel_dp_hdcp2_read_rx_status this optimises mst scenarios where aux ends
> up being remote and not stored in dig_port.
Can this sentence be broken?

Thanks and Regards,
Arun R Murthy
--------------------

>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 43 ++++++++++++--------
>  1 file changed, 25 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 6cd42363837a..5304aa73b23f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -331,13 +331,13 @@ static const struct hdcp2_dp_msg_data
> hdcp2_dp_msg_data[] =3D {  };
>=20
>  static int
> -intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
> +intel_dp_hdcp2_read_rx_status(struct drm_i915_private *i915,
> +			      struct drm_dp_aux *aux,
>  			      u8 *rx_status)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	ssize_t ret;
>=20
> -	ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
> +	ret =3D drm_dp_dpcd_read(aux,
>  			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET,
> rx_status,
>  			       HDCP_2_2_DP_RXSTATUS_LEN);
>  	if (ret !=3D HDCP_2_2_DP_RXSTATUS_LEN) { @@ -350,14 +350,15 @@
> intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,  }
>=20
>  static
> -int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
> +int hdcp2_detect_msg_availability(struct drm_i915_private *i915,
> +				  struct drm_dp_aux *aux,
>  				  u8 msg_id, bool *msg_ready)
>  {
>  	u8 rx_status;
>  	int ret;
>=20
>  	*msg_ready =3D false;
> -	ret =3D intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
> +	ret =3D intel_dp_hdcp2_read_rx_status(i915, aux, &rx_status);
>  	if (ret < 0)
>  		return ret;
>=20
> @@ -383,12 +384,10 @@ int hdcp2_detect_msg_availability(struct
> intel_digital_port *dig_port,  }
>=20
>  static ssize_t
> -intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
> +intel_dp_hdcp2_wait_for_msg(struct drm_i915_private *i915, struct
> drm_dp_aux *aux,
> +			    struct intel_hdcp *hdcp,
>  			    const struct hdcp2_dp_msg_data
> *hdcp2_msg_data)  {
> -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> -	struct intel_dp *dp =3D &dig_port->dp;
> -	struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
>  	u8 msg_id =3D hdcp2_msg_data->msg_id;
>  	int ret, timeout;
>  	bool msg_ready =3D false;
> @@ -411,7 +410,7 @@ intel_dp_hdcp2_wait_for_msg(struct
> intel_digital_port *dig_port,
>  		 * the timeout at wait for CP_IRQ.
>  		 */
>  		intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
> -		ret =3D hdcp2_detect_msg_availability(dig_port,
> +		ret =3D hdcp2_detect_msg_availability(i915, aux,
>  						    msg_id, &msg_ready);
>  		if (!msg_ready)
>  			ret =3D -ETIMEDOUT;
> @@ -445,6 +444,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector
> *connector,
>  	u8 *byte =3D buf;
>  	ssize_t ret, bytes_to_write, len;
>  	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> +	struct drm_dp_aux *aux;
>=20
>  	hdcp2_msg_data =3D get_hdcp2_dp_msg_data(*byte);
>  	if (!hdcp2_msg_data)
> @@ -452,6 +452,8 @@ int intel_dp_hdcp2_write_msg(struct intel_connector
> *connector,
>=20
>  	offset =3D hdcp2_msg_data->offset;
>=20
> +	aux =3D &dig_port->dp.aux;
> +
>  	/* No msg_id in DP HDCP2.2 msgs */
>  	bytes_to_write =3D size - 1;
>  	byte++;
> @@ -460,7 +462,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector
> *connector,
>  		len =3D bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
>  				DP_AUX_MAX_PAYLOAD_BYTES :
> bytes_to_write;
>=20
> -		ret =3D drm_dp_dpcd_write(&dig_port->dp.aux,
> +		ret =3D drm_dp_dpcd_write(aux,
>  					offset, (void *)byte, len);
>  		if (ret < 0)
>  			return ret;
> @@ -474,12 +476,12 @@ int intel_dp_hdcp2_write_msg(struct
> intel_connector *connector,  }
>=20
>  static
> -ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port=
, u32
> *dev_cnt, u8 *byte)
> +ssize_t get_receiver_id_list_rx_info(struct drm_dp_aux *aux, u32
> +*dev_cnt, u8 *byte)
>  {
>  	ssize_t ret;
>  	u8 *rx_info =3D byte;
>=20
> -	ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
> +	ret =3D drm_dp_dpcd_read(aux,
>  			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
>  			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
>  	if (ret !=3D HDCP_2_2_RXINFO_LEN)
> @@ -501,7 +503,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_dp *dp =3D &dig_port->dp;
> -	struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
> +	struct intel_hdcp *hdcp =3D &connector->hdcp;
> +	struct drm_dp_aux *aux;
>  	unsigned int offset;
>  	u8 *byte =3D buf;
>  	ssize_t ret, bytes_to_recv, len;
> @@ -515,7 +518,9 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  		return -EINVAL;
>  	offset =3D hdcp2_msg_data->offset;
>=20
> -	ret =3D intel_dp_hdcp2_wait_for_msg(dig_port, hdcp2_msg_data);
> +	aux =3D &dp->aux;
> +
> +	ret =3D intel_dp_hdcp2_wait_for_msg(i915, aux, hdcp,
> hdcp2_msg_data);
>  	if (ret < 0)
>  		return ret;
>=20
> @@ -525,7 +530,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  	byte++;
>=20
>  	if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) {
> -		ret =3D get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
> +		ret =3D get_receiver_id_list_rx_info(aux, &dev_cnt, byte);
>  		if (ret < 0)
>  			return ret;
>=20
> @@ -547,7 +552,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  			msg_end =3D ktime_add_ms(ktime_get_raw(),
>  					       hdcp2_msg_data-
> >msg_read_timeout);
>=20
> -		ret =3D drm_dp_dpcd_read(&dig_port->dp.aux, offset,
> +		ret =3D drm_dp_dpcd_read(aux, offset,
>  				       (void *)byte, len);
>  		if (ret < 0) {
>  			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
> @@ -606,10 +611,12 @@ static  int intel_dp_hdcp2_check_link(struct
> intel_digital_port *dig_port,
>  			      struct intel_connector *connector)  {
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	u8 rx_status;
>  	int ret;
>=20
> -	ret =3D intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
> +	ret =3D intel_dp_hdcp2_read_rx_status(i915, &dig_port->dp.aux,
> +					    &rx_status);
>  	if (ret)
>  		return ret;
>=20
> --
> 2.25.1

