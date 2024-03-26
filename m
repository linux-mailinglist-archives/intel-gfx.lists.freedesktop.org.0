Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1388C03B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 12:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5A910E662;
	Tue, 26 Mar 2024 11:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KxvPta/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610C210E698
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 11:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711451394; x=1742987394;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bbqIx4WoZExmba/N5NDQxM7yyWUOGr4ncTBkihgI8Eg=;
 b=KxvPta/FR/igqBUIfTiRvtp7uJpNlj5QP75qJ3RGUxueNvtHo+3vl0TD
 sy1S1EwDoSP8QoaS4XWp8YbSmwVcS906qOnVKs3eKALgJghPSmpbHBnz8
 /igkuuDXv9sGSZsyDr9Pl4xFradTSK1nHgKY8DB7HFdMCRvLXtzhJwhS3
 nFmd0H68SnQW5O4QFY9F+NgefQYWS+799hsHdrj1YQun0jJI5XWLvCqAE
 Ao9hMyLKboGoWsGT4mUOSpGWRbabm0FoNT6y7gycRlCJz84hldd3l7QFW
 aM2TKj1Q00WHrwFQsZ4z6dE+RNNaFqcBqzc5CbPsAbTnIObwKF2z5CDWQ g==;
X-CSE-ConnectionGUID: KGyRaq28RqeJAG2bHHWehQ==
X-CSE-MsgGUID: 47N0UCEGT0S+xrW6nd8Pag==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6607965"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6607965"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 04:09:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20630381"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 04:09:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 04:09:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 04:09:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 04:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0ejtFiSLQGeOOGJ8qWJM+iQqF9cwy7/BhWeoWHL4DrXC9mGdAD0sAKsF1+y+mnDvblT7sQrA8I/Rb+/ssb7lQx2avTBsiGxHj0EMYCUDu1Lb0Do5hcoxxItX5hU14g9EolOFXN8W2CgiT4jgmqdxFSpQWpp0a8uXnY75ghfusaElCVTIj2L85IfGuODFDc20GAanC7iATjOW4cswxJTBwtqAvJ5jyEOp5Ia+58JaKtWt8hTypuC1lKz2ECxEXdIlE+bnzYQ/vgfXUMIVhLwA+C21bfPzyp7y7UdiHAVmB5kxwMTiVSGpNbJL5987SDsT8b6+m2greUBuAcJISWD+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbu/QnV6FRhrZeM0uWmYUN9ttwtRNh3VN6NI/ajl7A8=;
 b=ZFaz/59VmMw8ADqdyOt+IEH4whblCBzBCjiCGXelAAQL2OvXp+YFHMAkK3VKdMvQ5eHq/RH/N6jfzCRltj4Lz/17tdWR7JRkHxDieQ/2QR73vv+4V5j+UpzJuJmkkAMz15AiRZ7yQK4HvTNgQy/nR/48y3eAj7uIJLFe1GlU9wv/8JPcOKznJhxy8OBPc3msIl6PStKkT2D+nrdVbpUe93VN988VLKFQN+bSlwLT7qxzo8V7He/4aMooo67wjrW3zBXZZtJJGbCpQma5nnCGprfXZ3Ss7s6O22FlE+pwOQXKro0lxx48Nsl2JagQq7qphrscFWUr6YJkwW+4xX+w/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB7432.namprd11.prod.outlook.com (2603:10b6:510:272::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 11:09:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 11:09:51 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Topic: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Index: AQHafz0Dm7KJo1aaaUKgVamndeTCubFJ1TnA
Date: Tue, 26 Mar 2024 11:09:51 +0000
Message-ID: <SJ1PR11MB61291435D7434453169B69C8B9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240326051454.193181-2-suraj.kandpal@intel.com>
In-Reply-To: <20240326051454.193181-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB7432:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: REXpD+Xn51a11LaDmmu8iIqQvwHEXZBcAGB4RtQTwi6SSSUqqcwpTJwPDRqxYsM23SQBBamhbFbwQyTOlE7U6ac+Z08AsFmTGT27a5kZLKPELzrr/uRSzDTr1SpFP5yu2Kxy8zLyk770B6cERwa6zo3dLqvM/ObozFggVoqy38wvxJxCxGGtSXMEiUdimlAyoJwsgMA0H3603VVVTgoYaJayI0Gqnl3UuUVI+tMDSIVMwaTS/uAVXiRH97bMnkkK0jsjlcEkRlGxyJh2A0g6j2aE2g71N3/VgTfVC+gFDX0wIJpsBVJMJY0Oo4f5mTusyT++VJKtI4QnsL74gCzBO8xwBGvVuZGm9BKjKakRgBbsllociEZsZg49I2m0r8EHeo2I0rpMpHej31qdxELNw0D/2AfDSp5LB5QLH/HPva0Puho4oVgcONEAyOrYozCK3ZafBM6+k+KYWr9AOhzdoJTvwK9tMZFYUdaWWmxu+OmlfiSIgjBAtBnNQzdxlARRDcIu6ZLQYlwkM6iiyq7ckWmFbUuMfH9vWuNvQ0eWl3p2ePOyWGXI6JHU8rUn6HavFuL6ufNRo/u7+taE04LYcFqKm+UxT/IaEX7x5jV7xnIE7LAb83usdQqJHMxphUYlgjtz0XKBw3LQW88wqDFK4u39r/3n15MF3i82QVBp5Vs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ius/KEqrZRFu+9FFIRyiCYMaGD60IBmxUSwf2bHwaQMudnG8tI5FAAXk7zqi?=
 =?us-ascii?Q?pOun/w7XpBfjNbbVOqBKYUeSLmI4Yhu2gGCS3CuhPTC8I0i90ztPPHuHWqQa?=
 =?us-ascii?Q?CEvYj4WarzQsRiF/Rkix29vsgP1XVYcKonGmPaJhveC4GakK35h3qpEsiCbg?=
 =?us-ascii?Q?LO1FEY7Jb/SiOU2WxOIRWia0yNTzA3YdnMYcMLiS2dUWVmJw5zOVGfGjL6CL?=
 =?us-ascii?Q?g338pBrgHk+EkH84P6ok1Wca2RAqAnvWUGPw5xdm5zaKqXWsCeYpY7hAAcJH?=
 =?us-ascii?Q?DebQQwofoyFQNPgQXTQEtnL2cSraTWR1KWq6OBZHk/kFypxNd5I3Ck8POTox?=
 =?us-ascii?Q?SUCVp7C9PsGBbQV4K9fjhInM1xrDWBtMT3jvkwvanK25NZUPWHv/4PLCIRyY?=
 =?us-ascii?Q?+axbM04s2KuNdqffmZ9hUdzy8w2h9ttyQInMNnGEfL/vHogk9JnvbZ/NvEw4?=
 =?us-ascii?Q?kWI1Xiiw+7qvjyLUa4sUKq7fIIaKie4nSrA0KNTvKWqzItzyVOaClTRPOZiP?=
 =?us-ascii?Q?Trqi9CoIFQblLruxJrgYuOGd35r2ZA9pQ+9oVW9b8q9anw/G000nNqTMlK6d?=
 =?us-ascii?Q?OMjifNHyE7IKBWv+wrlR62aS2xVszNA8Z+hmZ3G78iYxXS2+zQ2Xy90wxhim?=
 =?us-ascii?Q?RG9AS/O6WcgFDQ93uRwhV9F6eRp/GwU0C8vBlJt54SQKjaTs5sELvF6KKwUi?=
 =?us-ascii?Q?19OWvN886eBUgTSQae7GPZ7YWX9FQIfGnfXWaGZIWw//9glnlbKirGLW7rdP?=
 =?us-ascii?Q?6EhF1UF788lmQPWuhRd5LEj9Zcg5NqBk4lRpj48in7c1LzCwIZcgvb2GdNi7?=
 =?us-ascii?Q?cIdBLfOVR2DzhR7EKEKw8IXMLksa7VZyI4vYbeeyivOStSQXAUU+tiZmYdqJ?=
 =?us-ascii?Q?4x2h/LU+QLrUmIMwsQOZfZaDDvMqz84tnqwhbmBUT1R7aK5lMmI70nrb+97z?=
 =?us-ascii?Q?wxFoeLDgrQZZ8yLi/gIisYB+WWmKU+BA5K64c6SBX4WFwMQDgDlxlOHnCzsF?=
 =?us-ascii?Q?hhfIkS3O28aOJdDfhosolg7jpNn7N0ZVcjZtBH5GwK1Lz3Zmq0FJOTJSHB3g?=
 =?us-ascii?Q?bbg1ybptRASw/pVoJJkCxyFV1Uy0XAeORLRZvqEJZBv+q1d803Oe48wsiPuM?=
 =?us-ascii?Q?dtAkrBiZANOcCNpbNc3jIC6JJpmXI+RDomTHcihW8+hWJrlrEH0KMhNqo4Dg?=
 =?us-ascii?Q?yrjR4WK9T0ye9XowcGfGt6spAUCbP+zGUvDqtzDSktbmjL/f7Ir2fl6kjGNV?=
 =?us-ascii?Q?2rv5XalpO8ieJTcyY4e8KQIIML5JKMPRF7wXIG0SIctjh4FDuQXfc3BY+KPM?=
 =?us-ascii?Q?k4gZIfw3wN52/frdaONJUjHk93J6nJrR0rPXMq1RSh+62JCcLSfViyFCZ7+a?=
 =?us-ascii?Q?7m4H4NVhQMMjca8TkP+Vdeuj3G+UTqFgzHqWhvMMRKTGwq/xXp0HYn+7zaEw?=
 =?us-ascii?Q?tIHLZaJBEHngbjcBRXzZuunj0Ucb7jmu2RGDpg8ggJK9HDdnVYeCiQj1Qjby?=
 =?us-ascii?Q?Pm4At60K596RtB5uDxRzOe6/YRoTONw+vaa3Qh31tK+iNsNZRa8diE6U6K2P?=
 =?us-ascii?Q?jrgZ1aBRGQflqQREnN5vcKDFaWrAXlxCSajFgamCSx8t0Y2C2awIaXdQnN8E?=
 =?us-ascii?Q?EQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a70d001-da30-4cd2-9ede-08dc4d85422c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 11:09:51.5545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BxTa4wfIom/aAbrcvQIzEEGKBCwnzzaW4nh2LFyczX2ieitBODk/I6GjrlRhVPdomkJPzirlKnKNwKUR/TUKAX4fPQYm98aOVUn+XgU1T9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7432
X-OriginatorOrg: intel.com
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

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, March 26, 2024 10:45 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/display: Initalizalize capability variables

Typo: Initialize=20

> Initialize HDCP capability variables to false to avoid UBSAN warning in
> boolean value.
>=20

I can see a case where hdcp_cap remains unassigned in case intel_dp_hdcp_ge=
t_remote_capability() returns without assigning it a value.

Is that intended/expected?

Regards

Chaitanya

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index b99c024b0934..95d14dab089e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
>  			    struct intel_connector *intel_connector,
>  			    bool remote_req)
>  {
> -	bool hdcp_cap, hdcp2_cap;
> +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
>=20
>  	if (!intel_connector->hdcp.shim) {
>  		seq_puts(m, "No Connector Support");
> --
> 2.43.2

