Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960086D4B3A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 16:58:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D0610E17A;
	Mon,  3 Apr 2023 14:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A5A10E17A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680533896; x=1712069896;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qV0jyOQ+afAFmaVouuXlxDufpy6yfwSd2KPlH8drWIM=;
 b=UUT4D84vms+ulixOOEgFsIC0NaUvj5q5h+wtOhIOgsmJlASo4pLj05ks
 apusBtzpoxdWTeDzM5ZJJmgCaQbVGAOYUFygHWaIcWPvEbDg6Nmb5BKJD
 j4gFRsmLODkiAJ9JdRfxnVTQ2WuK0JE8FpwHx7aQJ2qlmmebOLTUk8TAB
 08zaaEIOkajY8bCpHUrDv4iLerufmt7ptZBk3SiYwXtVIueHMcy0cSmtH
 8h7XdIHAOqidBblHQbQA7xb82/n4z2WqJWeYgz0R04yb3jA/8XKeiWTn+
 abtZCMBBzcZpF6CNau9Sw9aOvJi9pWVc8N+0ylJ74BALqtz4Z/UCstdA8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="340648887"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="340648887"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 07:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="716309578"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="716309578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 03 Apr 2023 07:58:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 07:58:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 07:58:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 07:58:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTAWY8e/NxEbLL1kPdnW+Eh5Mo4lJZkz2oh9usDajp9YCv4Z1tM3SnazRqH0BCJsOStt7OyXrO1UGE2Zb8rTcO83yqIvKzPLOl6Lw1YHj6MR7s3xa9X99CBCHycKf/d1+H3gTEoRHBbDe/W1SRm0eOnYOtp4g6FcJz2lLbX3Q6tcSWa9CQbNRL7UhRHtIEctsAm03NM0LPybRrou/qzrX9RVcYLae9r0p+Wfz7umSKhj5xTz6yafhNa/jWCAmnPejEPLXN2fh3uUgl7g7GNIG1iSwHMWnVCZwGigU9RRxMWMi/63HGZUHm8uD6NhSs3kl+NMbW/WznRtN5X3DkL/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xg3OojD09atuvDUYS+Q9jflOT7KK47jacjc5BoYru10=;
 b=jYVAJWP5JYvnAy8Vy7hHbwN/RVmU8pTs8P9q1W7Zp39DUt3BJWEd9YoEhGzkopJDQW2xv0VT7gMYubLSVCgvHxoUzx+wfhmOT5SHhk8IdbTRnZ0qj8UHS9LpAxxAPgousE4IJUIgjkrixWYVdb5ZECJxH1Lq+CUhpINSxox9euWfEfmtwRFCc8H9TZWtA9yG49p0PA9U/cYNXIJBi9Xedzo47cq9aHu2QUiryePVP+qW2Df1KyxA0u3AQ9ZTdptI1I64UbsMJPbZMpYusjP54LznjA0fcQXsGqhR7+zS9gmfgdQn5WTaZd7SU0ekDKkbFyhIDmztYLWhnTLEugQGBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH3PR11MB7347.namprd11.prod.outlook.com (2603:10b6:610:14f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Mon, 3 Apr
 2023 14:58:13 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28%6]) with mapi id 15.20.6254.030; Mon, 3 Apr 2023
 14:58:13 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZZgKsEfou9VrAyUKetU9d9xBNca8ZrD8Q
Date: Mon, 3 Apr 2023 14:58:13 +0000
Message-ID: <DM6PR11MB31779731CD8CAF899E4BCC33BA929@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
In-Reply-To: <20230403080154.1239873-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH3PR11MB7347:EE_
x-ms-office365-filtering-correlation-id: f46e0a70-18c4-4c2b-04ab-08db3453d95f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ys1GMKBnxwemXF77wsoWeLLmceFFOrPlR+n/mRX/YP/WgqotC6pMpojlOGhK3DwzFPosINUXOVYhSxYjw1pGBG33OlYVQcu4P54z+ycnJj77K5GJdpKI4fVCv0QIGVCqYZwWoGvA3Nl/lSuqJvkbq8aw4XGTJXz3sdu3713tyL2ufRvDzjyJjjs6xmxDonjmvolzR6bGzaeIf6ILc8RoVZXahgpleTI7rjfRicPW39hspAX6sED1fANAxGhMPZ5FAdenzWMeC/zHHjWgMwrP5OM3yl91q4nBIc+fzM9wEVZYRWaLmYUiPE58y+vYRn2bepP2ujeaSXRL/XhXYtVaE3s3wkM7CttuEOXn07CQIzBwSK2AsqKE+Qdxai/9jztnmhROwxWS0EeSC4nLpgJWhE0oeLPjEpgz1xl7/9EodF0dcFNwSDgJ6rGQMs+POvRgRicDNMVO9dDFnml2s9ZwK9Up8hdOUcf9Mo0PhTKjNDnGTvYTZi6WYxLZvysrWieaymXrnA4w6UGv+pszMjHbGzkDxbRmapaToPWhJ3IodEsObSGjsFtiaRpZdoIy2oVziXcuzw80g+DbLwRQv69O/qeU6Lga7MEH6ylfZBwHj1TqDy2kkHU5tmnoRPF0o8l6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199021)(2906002)(38100700002)(122000001)(5660300002)(82960400001)(66476007)(66556008)(52536014)(66946007)(38070700005)(8936002)(76116006)(66446008)(64756008)(41300700001)(4326008)(8676002)(110136005)(316002)(83380400001)(53546011)(86362001)(478600001)(33656002)(186003)(107886003)(9686003)(6506007)(26005)(55236004)(71200400001)(7696005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c1JlpP1HAkmzqv8rKbhXkRpwsf2kspG5vlCKSUQmNu5wL3vdBo8ARbMtuSqb?=
 =?us-ascii?Q?+P5UNM/DK1DoXgAkzhPdmdI2xJAfbh1C3YtJ5ID3QTK8sXU/drsJgT6IXoqV?=
 =?us-ascii?Q?KmrtHhQv0+/Ds68g04N7lAl/Cb8Qwlm4W3P2A2zgA6puuCbmVPfijRihZUDg?=
 =?us-ascii?Q?Rkc495LxXmcjvx5LpdtFymbs2Phvw2EDGP9sr0dsLWNsaM4K22LOJEmrl5Wf?=
 =?us-ascii?Q?dzX/R9/sv51ySX1Dmlmy7k/BNb6lyAAd/nFgk9nHAFIX8MyE1B3yHhsq8lQf?=
 =?us-ascii?Q?ahhqaxaqHzq6jbB1QGWPkZ8UFXyO8M6dU/cyuScAXsAIMY4F30VJ4qYXtnFc?=
 =?us-ascii?Q?neVCN6QyRYCBeEKUi6vjOefsdaFCRkhyjReIgOcM7BDgnB7yuYwcM/f6uhRZ?=
 =?us-ascii?Q?5pPmd8Wiwr1fsR9TxcWqurKlABF3qbI1dvg0M7tX+V7J6d7Umg3DXSVFBxf3?=
 =?us-ascii?Q?8y5/4zDLdoQF5fpyHdw2s96IV9CpzzNBRhZE1Gl/UwtxG3kLDLgB0mnvX/Hu?=
 =?us-ascii?Q?+9XHb6tq4kGNimCJS/jM78Dw+fLPtq6juvso26xsXhcjTzJKr2qjvwueDk2X?=
 =?us-ascii?Q?ya2N2rEc86yaW8ycg5jKaNm9YKYw5gu1T460Knpk7+DfuuT0GF9niq4Bu2yk?=
 =?us-ascii?Q?xuW+FFa6WB1baBehlHxtcFvpoqkPd8vDiIlaTjGectESObKy9vVdmIoQh6Wf?=
 =?us-ascii?Q?67/LRKMetAdJEY1b+ztAwGH2xScFAm2e9j3fftLfB716Kwd8BKLhtpA0TePi?=
 =?us-ascii?Q?t4MPlPQgdSfT16BvoR8Sr/uPAGObQYuYCFvaan0WxisyyDISaFd+kGhsvXkm?=
 =?us-ascii?Q?rdc4GBQJrJia1wkMcOsKBAlSZQ/LSV6o9rN0EksrpIi1k/Rzf9wsLbgaF0fc?=
 =?us-ascii?Q?+1b8gAGYNjmvQFFfF4kPvdHRxBJpiA+aThP3LURnm5YkUZmR0vDkdaVS8qe7?=
 =?us-ascii?Q?W7yBkeFehhpUqUs6waF1x7v1mbwpouIz6QX6lxPT0wObgpJVhVY5u3hDnzdc?=
 =?us-ascii?Q?Rf1yGwwaskF5jFOU9hYEyw2M+20X7v2KdxwSlIyZACguIwje9wvlUaU/HAaH?=
 =?us-ascii?Q?JQG4FmyqcBLA7qhv5+n5tCv8fynn9kFD5PHqkcyYuY2ll87RqKF/gOJp4PHQ?=
 =?us-ascii?Q?njud21vIS41jQ5wpq2pAzv6Iwdl2+XuSyWt0LB0hlJKd3SHFUC//hJPzF5wM?=
 =?us-ascii?Q?FR/Pr/Q2rfY11QTjPL7UY40wecL9q8BFifAsBNgNxEnAjtfi/nzMOba2xdEX?=
 =?us-ascii?Q?6nf4pS1tQ4A7UoDwj55ef+7PWxvweAY+UZIGirmPawljXgh4hhU1WRvvkroH?=
 =?us-ascii?Q?mid0v4umDsfCBSAvE3/DFPUSAdXIbH3QZ6FgztO6c5ITYue1w1e82WQsGQxN?=
 =?us-ascii?Q?PEqoCvKF+B9fqT+iNQKMUbxArpn+RpdJw6zh01H4y8UPhbsyJDJ/UwB7njAF?=
 =?us-ascii?Q?c+JZxG67ieLq/W5loVrbgSCa5IVCUee5e29faXyCWhLReCDQ0lXEkraGWN95?=
 =?us-ascii?Q?7L/pxZyzniyq/0m6Mig3rkxYhKj8fepuKWls5nzQbOOeGmMteenoZff+a9oD?=
 =?us-ascii?Q?jFPBhUkgvTFnF3xWXbJbc1PjyIB35r2at6Fcv7e4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f46e0a70-18c4-4c2b-04ab-08db3453d95f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 14:58:13.6756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njBatnl5da6aScaGinQvbSCPcqOZImQJ2IOLLMN6g7bioWIGMxa5v3AYLdH4l4ZNsyyLfYq0yO4DkksXaOT/yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Increase AUX timeout for
 Type-C
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
> Sent: Monday, April 3, 2023 1:32 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/display: Increase AUX timeout for Type-C
>=20
> Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> Workaround: Increase the timeout.
>=20
> WA: 14017271110
> Bspec: 55480
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c   | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937..357617b9b725 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -252,6 +252,7 @@ static void hsw_wait_for_power_well_enable(struct
> drm_i915_private *dev_priv,
>  					   bool timeout_expected)
>  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
> +	enum phy phy =3D icl_aux_pw_to_phy(dev_priv, power_well);
>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
>=20
>  	/*
> @@ -264,6 +265,20 @@ static void hsw_wait_for_power_well_enable(struct
> drm_i915_private *dev_priv,
>  		return;
>  	}
>=20
> +	/*
> +	 * WA: 14017271110
> +	 * Type-C Phy are taking longer than expected for AUX IO Power
> Enabling.
> +	 * Increase timeout to 500ms.
> +	 */
> +	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> +		if (intel_de_wait_for_set(dev_priv, regs->driver,
> +
> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> +			drm_dbg_kms(&dev_priv->drm, "%s power well
> enable timeout\n",
> +				    intel_power_well_name(power_well));
> +			return;
> +		}
> +	}

After execution of this on success it will again execute the wait_for() for=
 HSW_PWR_WELL_CTL_STATE.
Instead can a variable 'delay' be added that can be passed to intel_de_wait=
_for_set() and this variable 'delay' can be initialized with corresponding =
value.

Thanks and Regards,
Arun R Murthy
-------------------
> +
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
>  				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> --
> 2.25.1

