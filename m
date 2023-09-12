Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC1879C41E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 05:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A5610E009;
	Tue, 12 Sep 2023 03:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF39910E009
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 03:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694489229; x=1726025229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YWQvSRZDeId9pqmL9f5fagH0EUEN5y3L8Czo2tlbL+4=;
 b=BcWE/C96EUIg7kbCPc65GrEtXOoocQ2ttg9xDiSNgz40PLZBdRobbNnJ
 KTr98euf3ixu3UiZIbM6terA+CaZZFnLoH3LwIdPbdoGpW1JL0LHxRVyM
 QWNzGhEBOtATbqwULoxRpTXBLpjuKtsCpWwOL3nn1O7Wy8qAtlawMSqWN
 nHeHl/bd07r7zrf+c6/RAaJYLDY13RtL3gRrY57wGYoTied+cXg2MprPk
 2QB3XK9v7r4RxGt7FH9nWmIe4ootqBMDKXPqjtGU6RSS9Dkb22z1NlSS6
 HEaZ1TKLxZa4YiB3Zos1j+qULMfOD/A4jGmVMwRkZrtVb2SI0ZmtjZVa/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377180616"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="377180616"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 20:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833740173"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="833740173"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 20:27:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 20:27:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 20:27:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 20:27:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 20:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oM2BhnbnF9fXgFbNrJa68r/AmmN3rY5OILjqLZFpBhpilKD+5Hx20c3pKbYpyl0Hs99XqvewyZmE2UDU2GCBIMT1E2wpveQTP1+GpmZMYgimpsSd2NoaPO9Zc1lIvrGUMRHjoKCtWJV+N3pXM3rxFDTEpE5yMGorHQaZckZP9BFhtt0LDiwCCYnc1f3DxzM/8c4ejfSRg0EqAadUX4YQqFrCNrB25FoUmXx3j9rWfDQ3GDV/JiMDaaQY7OvhqsweLY/C8IriJBS4ajgSgEYEKWNbMk5DHdvE2V3xKK5z8aZMVjqAIiC2zM2IWgwmYV0bSM3L3TgRLuO3NXelp/pp1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFNqCB7Slqnns8bcul0aSZSD4344o6L0GfqLpVasHN4=;
 b=F8QSG6Z7FZDGvoNI3qXhvQCHyEvtszKQgnVne5jX8ojCiHAJ42f3Cpngs7Dpq7aJMeuZlSslzOvh3hnfzI/od5H5rjfh1mXMUnF2IEwrfhy0hu7Sa7JzvbnrPBQb7A7QgbCbSZYnVmv5o8O1cafco8tcP99JXPDd1DNrL4DDFKQrM2J56zNy6ppYtZaHnrrqXmS1+jatDXf6YD4rpXwcAIkhTGWtBcOHzNR8Wvgw4L4jbdXX8fbMe3fjN976CadNwRMB+SFqkOxIzeKsgC2e/RX0Y2cTtSQdLbq/5NDQoXWENuDasYAT1Y6tm0UUwa4ej4Q5TWByL3d+Kx0ZjOFbAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB7770.namprd11.prod.outlook.com (2603:10b6:610:129::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 03:27:05 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%6]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 03:27:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsc: Fix pic_width readout
Thread-Index: AQHZ4hDxq5DM2dS/mkOuJpgEOEZuvbAWCruAgACB5AA=
Date: Tue, 12 Sep 2023 03:27:04 +0000
Message-ID: <SJ1PR11MB61297B2BD2F8CC71B7EA54DDB9F1A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230908045538.806063-1-suraj.kandpal@intel.com>
 <20230911193742.836063-1-suraj.kandpal@intel.com>
In-Reply-To: <20230911193742.836063-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB7770:EE_
x-ms-office365-filtering-correlation-id: f7499d42-d086-4382-f1f6-08dbb34022fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p/zq4HhtY8TQNBKH/C0hrnnkcg9r21Klmk81SDy3jSGZ3KsslOAkujKEGDKSN/6i0R17DGFSdazvyPY+Tl4sMF5I2aSylKZwKukBjY8Er00c+JGJxYUe69IcbH/99pwVjF5OGONLoIkz7jwacNfeH8pFBRsJUInD0MmOj1PftUfd0VgF/tFsvgkwl/y4gURaEsjQ3kaGuMPaE/SEnnA8FoPLMaDUIBP0d6zcaCXEyWi5slDNZzZc9/4YF6qzakmprqSCp5yundR19EaCeWRwbRcr9dMcx7s4498vAeAi/bH4yHWRDFzOUaYrIw7DygiMfvNeXK0IJ2EuuMwt6vnszkuVvNZ0w2dYpKoaa6bPnKmG6szBQDDVCm4x4/z1rquXD8AX8lEj1XKOWVa9oGzD1UMM/XHb9zNE5cTxVI7GJWN3saZuLENklr8RNhBpnpGR9wTGIkazkpY+rpiuj7FUXlpxBWhfZ9UJcIGA+a/Tl/CN0hK+BQ6+E0eyicPUGG1gMrQOr1WVGIVSEJ4MraVeDaa/BBjA7mXXfOCROKlHWdZ6o6doHaXQ/80mPgL5hHack7SulfQDy47F/Ype/4PtFYOwhKM85N/ElPV1p1mRlQCAiptaCqUFHbLpm893jEwx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199024)(1800799009)(186009)(4326008)(64756008)(8676002)(107886003)(76116006)(66446008)(8936002)(110136005)(7696005)(54906003)(478600001)(122000001)(316002)(6506007)(55016003)(66946007)(66556008)(53546011)(41300700001)(9686003)(66476007)(26005)(5660300002)(52536014)(71200400001)(83380400001)(2906002)(86362001)(38100700002)(33656002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?amlgkeb2whSlvHzj0noFDsaWzqCbVUMLFMfo2Q2yCq1tH0k6yAFGYSZip2+A?=
 =?us-ascii?Q?ixbKNuXqG0akvHS/8L91gfBKfAntaF3BT4wOkSMpVuwlxKpj8gNv7Ui4gdhL?=
 =?us-ascii?Q?nwhmvqUZ7CO5CvxCPBH5612CIAODJiZv+gl+70bBInHYZ/f2M32eKDaytoaL?=
 =?us-ascii?Q?5msjW2/X7VS+2fDZMsNCKG0EjLenDIbQ+9e0d7DW/tpeqloa+tMp6gCBmGST?=
 =?us-ascii?Q?6P4VRd+u+Z9ppbcHGpa90rnWK1srRVfHAc4rm0k+AGwTvh5x8trEAiceXpqo?=
 =?us-ascii?Q?f0XY4tOaDlN8JKObNJCVsoFJoMD4Bvb1lI61S8176GeUqufIKTwCQggSkxzD?=
 =?us-ascii?Q?i2kbsOc+sBZQhEAB1yHEnXa+iJJBwL6J8zzL4XK/blRpqOpyd0qnuME7Bsfo?=
 =?us-ascii?Q?0zRwsHrZmjJgBJjRiIUwKNuCqXz6a+CZiuqpOZa1RZIBggjw2aSO8fpX/HmQ?=
 =?us-ascii?Q?nnqW2lwr9q1HYERGL0ZT3nGFPin8othGTLhMUGgaxsiu7nk3hDlmW7n2YW1J?=
 =?us-ascii?Q?7pJZk0UJ7CtUxldFJLEtPLZpcLpYSLGGhDjTayH6u0HOPiMm5DTCp3TN2UWF?=
 =?us-ascii?Q?pBVlWetplMxczLDkj6QAbz9JmqdoL7hOpYwY4i400q0d5rMUhfZipOUkMK7H?=
 =?us-ascii?Q?9/0tn1WrYlt0IXoosg8H7WnT3YH7d2ameNR4KZGwWdsZwUa7eL6v4SlJRk0V?=
 =?us-ascii?Q?mALcTRERC+620C/4r3zO0oXw4oKDQLuxnvaF7PXDCXe0hNPZ1t/9leWgWeYV?=
 =?us-ascii?Q?cuenToP+cO/HTdAqT5tmkbYLniRo7/lzPOmtVOZkcBbKSXYNV5yD4JVsXi4p?=
 =?us-ascii?Q?Nz1x0iFYpw/UDBPC0K/TY1CLSL0pWXjEsFaq8kRVrwz3rPNm0L+E5A/m+Brq?=
 =?us-ascii?Q?e5fK5zcDJLTIZYe7W0ndf5JCGBZXW1h5zYAeDjVQVYnAFRO0su1BSNKq0usS?=
 =?us-ascii?Q?nmA4Oa66zW2p4MlWe6id1aF80+TWG2Bp0KCjwhCVF8Z3FEHcInKUbFpUYpbc?=
 =?us-ascii?Q?0Iqxm255/Of262jsYDXU2KSc60Jobc0INsr3JoH2J//4luxyw0Qd+fo2G8fH?=
 =?us-ascii?Q?jhhK56tduQNGuVE8RickaUNUYv3887wxsDEOpLIj1+li7gE668tWCWOBT34I?=
 =?us-ascii?Q?NgzClEmwomL80EE6vCuRA9WaPihcxjDlO9TTvp1ZaJ79msjfqeznvK6v41zP?=
 =?us-ascii?Q?I3Xo1xvx8CPh8OgbDBbZr+z97RCER0aMUvJv/Vu7+QTZckQd1OTpNdODL144?=
 =?us-ascii?Q?qxAo1d+PgXwiBBLeOGgCQctgGuH8cWcbirHZwx5FLp3kI/FZtx/QwVdgKnzK?=
 =?us-ascii?Q?/rKMBwphHgcm0gqlmFjRXz2xeQCbTCZDIVj/sOtxRStRvbEshFF+gSfoh9hU?=
 =?us-ascii?Q?h+oP+51WZcVAg144AeF5NdifYS7hVDRSMQkGc14tD37fBRhAkgcIa1dveVCP?=
 =?us-ascii?Q?ptvJ/oL3n2cE1wYf07eMY1FY2CjT1w6rrc/GB9PyTkBAaiZgpPzeG+mg1o4y?=
 =?us-ascii?Q?QmRluSziMMI1qQedWhoqVGDcVVmhWWVtr+u6CWK7c6ARm8ImMq34vIVcL46U?=
 =?us-ascii?Q?ohtvARYsgo+LZcDhu5H7U5ngGkD4OOX44DcRKszV1RrLSq6zxEgxmsB1N9ed?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7499d42-d086-4382-f1f6-08dbb34022fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 03:27:04.9157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t/MOL7Uy7ELKON82BXl9OVoJBhdaymC7WZ4Wvga4j6kAu9bju1O6UU6TMwsUn+Syy3YAwurc/1aA+4hG6pwL4OOrcAPgZ49udMhkf4dSCmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7770
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Fix pic_width readout
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, September 12, 2023 1:08 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dsc: Fix pic_width readout
>=20
> pic_width when written into the PPS register is divided by the no.
> of vdsc instances first but the actual variable that we compare it to doe=
s not
> change i.e vdsc_cfg->pic_width hence when reading the register back for
> pic_width it needs to be multiplied by num_vdsc_instances rather than bei=
ng
> divided.
>=20
> Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config
> function")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Regards
Chaitanya

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 5c00f7ccad7f..6757dbae9ee5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -879,7 +879,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	/* PPS 2 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 2);
>=20
> -	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
> +	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK,
> pps_temp)
> +* num_vdsc_instances;
>  	vdsc_cfg->pic_height =3D
> REG_FIELD_GET(DSC_PPS2_PIC_HEIGHT_MASK, pps_temp);
>=20
>  	/* PPS 3 */
> --
> 2.25.1

