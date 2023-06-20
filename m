Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 426EF7376B6
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB7610E073;
	Tue, 20 Jun 2023 21:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D839410E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 21:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687297016; x=1718833016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AKRErlspWclWbk/+Ri6VBcmIe6uhlQtoLYaYNJTmy1M=;
 b=QRZmQNmuadJW8TPgGszqw5EPnoz+mH1EL8jlsvd/8ti4+ZDwcF9SuezB
 TFCCbR/mjA2KBfdFCqaQci6cBvv9X3HicAGytGkOfiAnmOmIF+LkufGf4
 AlbHoCFI20RxQP0ovEpN7dD239UpFrlwpRD9ldvmaD/O+R2f+8sZhWhiy
 fVCIilsbNtq4xooV1HcqG4RU1pVH033mFNraWZqtbymsf0H+SroZBHpLF
 WEaf7FcJnc6f7E95lz6fHA9KL+LXq9E9/iIrvgUpKtIMpOFs0wpF/+pi2
 xVx36Wu2YLj1o+BmIr+G8xHnjMKYQerXRdg7cAO5cwACPhefYp6AXnYTO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="425944900"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="425944900"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 14:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664400480"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="664400480"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 14:36:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 14:36:54 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvtHfOiWiG78eCxbF0OpamSs8Q5WiPVKKZ+YfP+A+yfYdLAhBsHMMfg0fGcjSZLBvK88/M5sTHidaCRZTk1ST5G8A9D9Z/s/tCl0LZnf8dxnXQGyNI/NLB+YmIo8Pu4+DUmLii4moe5cBDreN5lzy0gF7hOTUvRIFVweka/xekF4gj+iDPp90RqtCcemPKpSMC1FnnIM0Mz12sDpL8K/sEWNYA9TVN9ginZbZslgx5b65J2VoaJDwgWVzlPSor4XLaB2eMhlffqHgnVPr/FIh9HafxGzCsbrfSDKZW5mueEAB0Y9d+SziClN3uR1cp+GznrcXrL5FP+hpQbiYEaW8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKsP9n0+Doma8izkT6TRzQqrDR0JigiKYHKZ7nV0zLU=;
 b=AUgB69lZyBei8DMvGRSRtSvdBtsANzKB1wS7Y7F2n0F/xn1xHLU4kCTuAnRWBuV7xjLP8kZOrRc5SyypuJNvEBt0+/6scs077npWZhLFvy9jZeGTTk80dpiWyWdfCXQ/Bq+TB+U4tcQF78e6pcu1Jh74h5TKp15jlXMxBFX5tXq3fUtSQeVigqKgaTxYgE40uRS+ODgXczVZd82QF55E8Iin/d2pANojA6VtEhYrnKudsyQhSLJVmrYT0hjplQrWmDqdjReT3T8gIx1mfwmLsmIGP5u30mMwLKXCQPs2SkEN0tSGWNsJoQgD/F0xaEAI9nfRx93YdAiF9ke9EhKEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 21:36:51 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 21:36:51 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4] drm/i915/mtl: Add new vswing table for C20 phy to support
 DP 1.4
Thread-Index: AQHZmmhuxM95cRF+4UmYSH+1BiFyfK+USbig
Date: Tue, 20 Jun 2023 21:36:50 +0000
Message-ID: <DM4PR11MB5971155B28F6F35F04235671875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
 <20230609002038.11516-1-shawn.c.lee@intel.com>
In-Reply-To: <20230609002038.11516-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ1PR11MB6299:EE_
x-ms-office365-filtering-correlation-id: c7e8d83b-969f-4449-8565-08db71d67573
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qXp3iEQPqc26Sze+qRBU9JFdSDoB3FYKVHO2wm1l+pVpkl4RwyCd2NVX78GLkugejwfmAUJaIt2Hr9br0TaRnd/dT9s8fV5WQhiWDApu9FdaUMUIhRVk+GBNLlOn1t0cZvmRwBEhfEgxbfpRs7xcPieFzk9Z2SAk1i3DsqhjgQ6SlakPZbGErqd5bh455VFYL3wAfC4h9+hSAHHOzF+kx0hB1HB7BWwyXWQEbONbberQ2BPdxkF7X3XySMqA3hs4acLtkNECvbGB+PDm8YmoZswOCeSo0H9Hh+MaB/G3B87JuAyI+kHxONCWlwN+t8pPh2kKkizw9Wq4oLVlmIoozKqAqfiNL2TaFHkyhW0mB5GXSMAQDy6//66/MFfejgF0oI09T+Fx/Smd/jz3PI2KODkF7Q8RcKS9VwxGVsvBZR1egFBue+6kNVbmBvgx1YR1JkANR8mE7VQIpv9rG5fNvwC1EOuKypeGYiIBIP7HUhcLKzrBoN6aNT0L+vRlWG+8/+2kwY/FXQIpm1gNkhmj6mcLLWI7nTADGq7VTbfzaYt2E5TYDdMiycjen2K48pS4xpdFrs1u0g7XBmV2vAUiUxUtGizMn7P8osP+Rdn5nk77nHUOCcmwBktwe+Qr9Sqp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199021)(33656002)(5660300002)(52536014)(66476007)(8936002)(8676002)(41300700001)(38070700005)(86362001)(66446008)(66556008)(76116006)(64756008)(38100700002)(122000001)(316002)(82960400001)(4326008)(55016003)(66946007)(107886003)(26005)(53546011)(6506007)(2906002)(9686003)(186003)(7696005)(478600001)(110136005)(83380400001)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bh2g0f8Gkpqj0gbHWffaFkS694kc7OwPD7y8nWv969UdgCkT9FqawPmkIVsC?=
 =?us-ascii?Q?gtDJiwyUpNUM9vUMayak7xq3CEXCnNx6IT8yblIyKfgp37znUf6zymwf+dy8?=
 =?us-ascii?Q?vBbG1wCtkMLbb2NKq7jfu1DGiOZdg3pEL3zxbGh+N7pN8VXmbLQmemDAbQtb?=
 =?us-ascii?Q?+08EQstsYXK8JR/AhszdBC+I7g7XvmKUxkfIjttfgilWbaCeCnfKGoJYHZLH?=
 =?us-ascii?Q?coCZ8ytnSgVJuwFlbtkt36Y0YL6cK6SDgUp83IkpEsztlW541eDcJrW9fT4t?=
 =?us-ascii?Q?9LZC9gEh6y3PUNAjnzBs4ApZPmRXdznuivcXlWP8obKGmF48q1b3hltu4Hnl?=
 =?us-ascii?Q?f3ZtMDWGuryk9ec9MTENpgl9mcQh8+312nPsgqLUuoWfJO41WEcqVGf2C7wp?=
 =?us-ascii?Q?lK9x2UdOTY9D2vJjO+OUj77xQBJeROhkrfLXmtMFl5Xv6PoGuL+M2GYQbZlw?=
 =?us-ascii?Q?mNiCqJ7zsqPLIYRqhcc95AgnOhaBNg1JABVBu6KPLIjocRtSlZmt76xMUqsv?=
 =?us-ascii?Q?gHCAPWqMgupM5nCr941h3iDEH/t5ws16i9+0g0LHq7Ey0Hp9gMagHpd8WXHm?=
 =?us-ascii?Q?FBQIXQSl38SAfgUcdRvZSvkn69KLwFom+SPpPUObXhEM6H+8Daax4ZdyNKMz?=
 =?us-ascii?Q?AwpYVD23ZULeMLE9NzB6g49G750qymR3hgzL+ThM1xFnl63KVXeGReQWpxzQ?=
 =?us-ascii?Q?8ITjCm7BdV/is863pq4+MychUN+xGqIRUZTzH5GOr8yiorkolNaIy+vGhZYL?=
 =?us-ascii?Q?XCS+4o1LOPn2bEPktMKFcCLEt08aGdUJkWiX6g2/W6ktyvFuY5E61ZloSB1v?=
 =?us-ascii?Q?dZl2w2yhYDS9aX8VvT84AG8k5H1xHi9y0sw2y81fltkcTd7y4nQjXwOxEN+U?=
 =?us-ascii?Q?h0tBPse8QUyO6X36qcaU3cTiW6csxXSU5pmLGPLNdvE2Q2vJ+NEFO3+4+Dmj?=
 =?us-ascii?Q?yVGw3Cf5zlMgZAeXG9Lr1YIldWgeFD3tcoRjQzWjQKL/IA93puqCyCTAbE7F?=
 =?us-ascii?Q?AvTH6yH+5xSKqXguTG5c9ewxZ3/Qf9MNAUtJb+kLTlXILJcI057HhI00jg6i?=
 =?us-ascii?Q?1m11tGICG2vWqtc33bzxwfb9mEtzkI+IPbD6JWwHA+ZOAfbpVuizDlyhia9w?=
 =?us-ascii?Q?7ppQo98KPkIQJvB+oTdg7Jao3P6xpCsUH+KRwF5l6QxUPZzNozrdY9LxnylO?=
 =?us-ascii?Q?gM1Tt3NjE917Jd8l0bW6tH1/3JdUkWNE4ieEuHzPdiNGGBAV8Mnhytt9lGTP?=
 =?us-ascii?Q?tzmhpACq3eou0Wwq+LeMYBdhwlsJvPDDjz0J1Iu4NHvM+O6c4eZsS/3csHBC?=
 =?us-ascii?Q?kLcQQ9bsVfiYU2x5UDKserlNNlZdu6OqL575S8/r/9OrUozmszvGB0GK6sDg?=
 =?us-ascii?Q?IwUva2z50b8+TDaMBbEx81MUb3x9Vu6g5C05dLahNLb4sNDOOBeiiVFtU7iB?=
 =?us-ascii?Q?ijz8UqamdJyR+4mP0CBKxTUn6QlPmx7xUEc5ZDmeF5zhOtQW5Yo42bWS3uCM?=
 =?us-ascii?Q?PjwaFLPreiA/rRXaVqpNW2lcZ8+3p4zNo3vo8JG2hLYIEIMeKHPYiwoFY0ll?=
 =?us-ascii?Q?Va6CkLhbA4aj3VDdW1XX1RazTHwT/KTJA54goyR6yIXsIWdqiv90XvIsYCmc?=
 =?us-ascii?Q?cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7e8d83b-969f-4449-8565-08db71d67573
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 21:36:51.0060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p6vkgRa7Gug1MZQGesSia56orDDBDzbK7xFvmd0fcj2t5d0/uh/EU2OYOEFzXeh7m1muSR5C+b77+YE6oyBwN+EodRVwqLwIkUt2tWTn5hU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/mtl: Add new vswing table for C20 phy
 to support DP 1.4
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

Merged. Thank you for the patch and review.

--Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Thursday, June 8, 2023 5:21 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>;
> Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [v4] drm/i915/mtl: Add new vswing table for C20 phy to support D=
P 1.4
>=20
> Add vswing table to support DP 1.4 for C20 phy.
>=20
> v2: rename mtl_c10_trans
> v3: add default_entry for mtl_c20_trans_dp14
> v4: rename mtl_cx0_trans_dp14
>=20
> Bspec: 74104
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 26 +++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index b7d20485bde5..8d2932d079cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1049,12 +1049,26 @@ static const union intel_ddi_buf_trans_entry
> _mtl_c10_trans_dp14[] =3D {
>  	{ .snps =3D { 62, 0, 0  } },      /* preset 9 */
>  };
>=20
> -static const struct intel_ddi_buf_trans mtl_cx0_trans =3D {
> +static const struct intel_ddi_buf_trans mtl_c10_trans_dp14 =3D {
>  	.entries =3D _mtl_c10_trans_dp14,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c10_trans_dp14),
>  	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
>  };
>=20
> +/* DP1.4 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D {
> +	{ .snps =3D { 20, 0, 0  } },      /* preset 0 */
> +	{ .snps =3D { 24, 0, 4  } },      /* preset 1 */
> +	{ .snps =3D { 30, 0, 9  } },      /* preset 2 */
> +	{ .snps =3D { 34, 0, 14 } },      /* preset 3 */
> +	{ .snps =3D { 29, 0, 0  } },      /* preset 4 */
> +	{ .snps =3D { 34, 0, 5  } },      /* preset 5 */
> +	{ .snps =3D { 38, 0, 10 } },      /* preset 6 */
> +	{ .snps =3D { 36, 0, 0  } },      /* preset 7 */
> +	{ .snps =3D { 40, 0, 6  } },      /* preset 8 */
> +	{ .snps =3D { 48, 0, 0  } },      /* preset 9 */
> +};
> +
>  /* DP2.0 */
>  static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> @@ -1090,6 +1104,12 @@ static const struct intel_ddi_buf_trans
> mtl_c20_trans_hdmi =3D {
>  	.hdmi_default_entry =3D 0,
>  };
>=20
> +static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 =3D {
> +	.entries =3D _mtl_c20_trans_dp14,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_dp14),
> +	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c20_trans_dp14) - 1,
> +};
> +
>  static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr =3D {
>  	.entries =3D _mtl_c20_trans_uhbr,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr),
> @@ -1678,8 +1698,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder
> *encoder,
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> !(intel_is_c10phy(i915, phy)))
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> +	else if (!intel_is_c10phy(i915, phy))
> +		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>  	else
> -		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
> +		return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
>  }
>=20
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
> --
> 2.17.1

