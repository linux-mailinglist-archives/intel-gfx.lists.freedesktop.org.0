Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318C672C360
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 13:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA8A10E010;
	Mon, 12 Jun 2023 11:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25EB10E010
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 11:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686570464; x=1718106464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+WJyz0SlBAiSFXOEXTa4hDKs2++E+1n9nKjrKa4ajVw=;
 b=g88Z7QCKQjXnpkN9WkCPsQxYtQtdCDWIq7oFwMJDJ8DuKz/AQBDMLxiO
 7hkTL54fK2Xc/veI7h3+jXriWEDI0HB/Trm22HOhw83CFhlyMse/rnraN
 50tO6UqWTeac1cD37nPnDekBTfmp84kB405gf5WyTLdWRSd3HrtS+HQ4u
 lH7J+UVcI1fVcz8qnvpTlpX3lE+/hhHdpZbfYdGq39rEUhBrrNTRHhqjH
 9kFBcIs3lLWyQZKI+tS8RVGLVdhHoKdaWGDrYMWsJVyDWvSOia462NqJb
 bMWukwGgF32QUkxOI2wNKdDf8AbipfajyCt+IUBK9TeiEV0Uy3fNKnKF6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="386401689"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="386401689"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 04:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="705347844"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="705347844"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 12 Jun 2023 04:47:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 04:47:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 04:47:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 12 Jun 2023 04:47:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 12 Jun 2023 04:47:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMmgdEK6IMHMpMy7rA/CFtZYdi2/0ZpzFxwsm04hUI5iAmMnwVaw9GgvG1AsU1e3zn8iwIDBOcCdZDzGGKAwKudgLuK08h2b+h2KNpTkkcSbqcafvayUMxB2zk6UY3Ek9imhSSAT6nch1zv5RHRrca3ofes5SlVz/gq3n+h6akQ3EiPb6l4Ts4Eqf/FSZCn38FkS0Ib5BScGTI0qAmrWHwWaai4envOPxvq9QqbEsOSy9anx73lmfkP4G/486Sm27IrBcy1pcqX1ZSBF0mYoCgvhkHrRkyIyoMrwbCuoTPbB7wtPiwdEU0rxTm2+W9Y03RR2CwuC046faOvdMSJIGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wG4+zHFz2YEZZ0T2RSrk/31dcLlQwXvs6SXIlUPPVC4=;
 b=B54BMsD+/JWWOZHCsQyqiwdFjGR70XlaihV9bDcLIejEP6xDCC1JW8YkNvXOJshICb9pEHI6cPXZF5ppc5DZXW+7QP06yMLna+Ky3piDFjZ4N78cDWKUaeJ0PoopxaphbVgMpyymExWJNovvjAwanViI3P9RzNjPWgURk3aO/mN3fUXdZHs4dxKSyVaCScS32zq/MoT9wsty5odR3CLEYqxeFIOm1NqAaZxu9+C7u9qR36KUemOFF7xNNtdjpSXJctcnfV410BTbjELcgWZc/ZmbRp/cmZKHQND1whu9sFTvZXCfSbICtg0lwvIV9Gs+a2vBE1ZCub5Gl7vFuGRY7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN9PR11MB5370.namprd11.prod.outlook.com (2603:10b6:408:11b::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.38; Mon, 12 Jun 2023 11:47:39 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6455.030; Mon, 12 Jun 2023
 11:47:38 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
Thread-Index: AQHZme0yC/NkmFN2FEiQ2MXXWzgCiq+HEGgAgAAA0PA=
Date: Mon, 12 Jun 2023 11:47:37 +0000
Message-ID: <DM6PR11MB31774C433DD62845A0732F52BA54A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230608093218.511280-1-arun.r.murthy@intel.com>
 <ZIcDPqQ9V1qgkLh1@ideak-desk>
In-Reply-To: <ZIcDPqQ9V1qgkLh1@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BN9PR11MB5370:EE_
x-ms-office365-filtering-correlation-id: e0fc9d18-675b-48bc-f2de-08db6b3ad216
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1TIvb8te9T8rFoSLBL0QD/4ABU6OC5etot2HpljU53JxKwZfqybgpE2ZI448SOAfHXlb2nECljRwJUde76zIxv68OC8G95NJKTPGh+FSEluhU9APHD1jOcLQhjR+7N3LRS8jqbkkqTt2290JpWeT+n1ZpgybyrvhDZJC/5tQSh+WoFgGOR/JYz34X4Hp2sRitqDPgKHSNzLaFCiNQwb+bJ1rpkJJ6w3IXjI2LJE9RbIQk7qjr7yzFskApCK6nMzdNorfNwVBlR+7RLcPmf8438fL5CsxTCAPvbHyVF1Hi8SKRjOy/y0aM5jTxsPrzvViNgnAy/Ph0KQ9agaoV9wgCypywyY6E9BtFJUPt9Sj6iRFQCdRmn2QwgUx8+lkryrfrPW7Dc7O5ccDJBYokgC6go8d9lunUrK5iypKaje4IpteeG6ERz5rtfbSnvUyeo07AXuif+LGBPHo+NxnbLUx10MI1VEeHexh1i7Ojrpy1UsWxMon3tUVfkzihdQTul2fEAlLYgOsjjMFm6VF10v/YRR3rDtt6C3IQphLxmj8HI2Sq8CKlWPruOfUYqU+jWmKEgKSFvEiWBNP97HDIn7zmbf/XdpC2W/wqOhvrKW+1FsLBt3Z5zR1DbtEPocGTJwJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(396003)(366004)(376002)(451199021)(71200400001)(7696005)(478600001)(33656002)(26005)(6506007)(53546011)(9686003)(83380400001)(186003)(38100700002)(86362001)(38070700005)(122000001)(82960400001)(55016003)(52536014)(5660300002)(8936002)(8676002)(6862004)(316002)(41300700001)(2906002)(4326008)(6636002)(76116006)(66556008)(64756008)(66476007)(66446008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FYTStYaqJ5DB3BiV9zpMRv0Ln1ToauuR8czucc9C7tdo+EFYQZKvJrNjgBzR?=
 =?us-ascii?Q?v4H+p6t+IAQy5OFrVkax+/8TsltITZx6Qu6FBNPQ2NReDwYnX2XQVqeUS5hJ?=
 =?us-ascii?Q?sFii431FCPg4ReyoxFMBeJXI4QNzaBfylaS59coxOSXvVJPMM7QF8Thfp3vT?=
 =?us-ascii?Q?CTpuMkQu73PElvdXmlwIpTtvqcrcwbf0VCZHMrUfAU/AF3VhLz0hO6q+D4QF?=
 =?us-ascii?Q?6PZybV4h0WFs1mdNvd7BvjKgxP3dxuvnnoFqQE80xfn/G/mS7TnXPJoHTezu?=
 =?us-ascii?Q?xKT+5Fd2qxWnjMolxXXN/uq9INY2405tTB8S0Fk2ZO3B2T2U5Z2tkiFC+298?=
 =?us-ascii?Q?bkSVVj9kjzccgOuYv7sd2E//3RiYwKXM3VBJjgJcIvxFVpOB5Bqn6o0+esRH?=
 =?us-ascii?Q?V9jL+Kl0MvUGTp9ovyjqlfVSWdUnXYnchmXL9cqHzj6TmViCfnmTctPHyc+8?=
 =?us-ascii?Q?K6cmOk5M8LBvzku1eh4sVsBzDybAjF0vxlAfdxKKukpilGugbPCr7S76M7uZ?=
 =?us-ascii?Q?rUDXDcGRcl+iPZs3SJXkawuw7LWCDHirhxpG7Q2q/jSQrk+C1frvdu6VYREq?=
 =?us-ascii?Q?AC5OanHZO+otB0F58H2mvQ+YAI7iQ8pbAdZrCmkhjmeWbwQ7GlUsrnoRvFx0?=
 =?us-ascii?Q?LfaDExj3G1VlgbU2rJsLQQ+sPXrhqvYOMsOHEra2JtyCbItm5+Y3WmK2lxk8?=
 =?us-ascii?Q?Zih7IfK1wQzfThNJeDqfnUpyF6pNDi+IEQRV6MUfONneNdUICPywE2rZBGwS?=
 =?us-ascii?Q?9fGuVHzIkRQbBylVZQxbReRxwiQA5Ppm5GPfZWNO/RNHavv7MvPEtQN81p4x?=
 =?us-ascii?Q?NfUer7pSfHBr2f6q6k+/evgZZnN0j7Y1Gnaxr/hS8QeKvrVMZda9cgIZ2aBk?=
 =?us-ascii?Q?pOr1aaDJcrO8hXDsm+72Hrt+rZz0V+SZSdSthqVF94OspqhUuYCvmtaesNQh?=
 =?us-ascii?Q?a3BnDmt1g2LCgXYlPsIb2AXa+vvYmt8r7BZE/B2FocfUmS3Xbysrvif2Gb8U?=
 =?us-ascii?Q?8us7dcmZ5nbR8xpj2pHIJXaJPXOamgqjE2HdpvWCmmG2kk0+GHYy78d0i/Hi?=
 =?us-ascii?Q?2VyoiKoiH3JflvjiLGlhLrmualvPRGNznNYF2dK80bi5s7bsR7khzjHrIyyj?=
 =?us-ascii?Q?sDMBx8YHeAhwKdWWhlYGAqdL/QgSYxDeA36/mGkVRD8Pg0lv1qo4mqp/J9iQ?=
 =?us-ascii?Q?JBHceKTb6Pf0PotqpzfQEuwiG4NwOsPFo+jD8vnNNh8NPVZUde6PTzZ2r9xY?=
 =?us-ascii?Q?XxXcqwPUFy2lPi1O7czAwEqlZ5hHTpIBKDMWqeCk1MHOKYZoAm/w2UiBWSYO?=
 =?us-ascii?Q?jEIFXgZysdk8vlFZ2lEPOdrGxBjvIa0cwc4Re9WZUFEvX17nhWU6sjrhPNXH?=
 =?us-ascii?Q?q+TxmCbilhLQvtRtw+1plVxJgz60aln/RAoqzPgUmsb84qGwarzsXdoxS52m?=
 =?us-ascii?Q?EF51Z5b1eTUpWHJfQDq1M9BcbQ+RQXLR6o6azTR+NBBIETlIyp4c3cVa6Wmd?=
 =?us-ascii?Q?9QIl8fqrOzkHA46vL9h2gCWGo2YEYjhhmLlDHl713p6aRDNKx2FCByfm2Uc6?=
 =?us-ascii?Q?2RjcdwgNRXM5eMTmVSMhp/kZwuE/ilqxfAbjOUSv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0fc9d18-675b-48bc-f2de-08db6b3ad216
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 11:47:37.9966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FgqdazJkLuPRiuojXP8gB+0hZKl0UntJjrOfg+Ipkb7kbwrmpZ7aYbdrXfy1z/fBz6OCFeHfEm2dv6h+WnDv3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5370
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, June 12, 2023 5:07 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeo=
ut
> restart freshly
>=20
> On Thu, Jun 08, 2023 at 03:02:18PM +0530, Arun R Murthy wrote:
> > At the begining of the aux transfer a check for aux control busy bit
> > is done. Then as per the spec on aux transfer timeout, need to retry
> > freshly for 3 times with a delay which is taken care by the control
> > register.
> > On each of these 3 trials a check for busy has to be done so as to
> > start freshly.
> >
> > v2: updated the commit message
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 50
> > +++++++++------------
> >  1 file changed, 22 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 197c6e81db14..25090542dd9f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -273,30 +273,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	 * it using the same AUX CH simultaneously
> >  	 */
> >
> > -	/* Try to wait for any previous AUX channel activity */
> > -	for (try =3D 0; try < 3; try++) {
> > -		status =3D intel_de_read_notrace(i915, ch_ctl);
> > -		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -			break;
> > -		msleep(1);
> > -	}
> > -	/* just trace the final value */
> > -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > -
> > -	if (try =3D=3D 3) {
> > -		const u32 status =3D intel_de_read(i915, ch_ctl);
> > -
> > -		if (status !=3D intel_dp->aux_busy_last_status) {
> > -			drm_WARN(&i915->drm, 1,
> > -				 "%s: not started (status 0x%08x)\n",
> > -				 intel_dp->aux.name, status);
> > -			intel_dp->aux_busy_last_status =3D status;
> > -		}
> > -
> > -		ret =3D -EBUSY;
> > -		goto out;
> > -	}
> > -
> >  	/* Only 5 data registers! */
> >  	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
> >  		ret =3D -E2BIG;
> > @@ -304,14 +280,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	}
> >
> >  	while ((aux_clock_divider =3D intel_dp-
> >get_aux_clock_divider(intel_dp, clock++))) {
> > -		u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> > +		/* Must try at least 3 times according to DP spec */
> > +		for (try =3D 0; try < 5; try++) {
> > +			u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> >  							  send_bytes,
> >  							  aux_clock_divider);
> >
> > -		send_ctl |=3D aux_send_ctl_flags;
> > +			send_ctl |=3D aux_send_ctl_flags;
>=20
> Why is send_ctl recomputed in each iteration?

This can be moved outside the loop, since the value doesn't tend to change.

>=20
> > +
> > +			/* Try to wait for any previous AUX channel activity
> */
> > +			status =3D intel_dp_aux_wait_done(intel_dp);
>=20
> How does it help to wait here for the same condition that was already wai=
ted
> for at the end of the loop?

Here we are checking for busy bit so as to ensure that the previous transfe=
r is complete and only then the new transfer is initiated.

In the latter case, we sent the data and then wait to get the acknowledgeme=
nt(busy/error/timeout).

Check for busy is to be done before sending the data. Here it was done befo=
re this loop.
The spec limits the trials for sending data to 3 in case of failure and in =
each of this iteration it has to be started freshly. So we need to ensure t=
hat the previous transfer is completed before sending the new data.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> > +			/* just trace the final value */
> > +			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status),
> true);
> > +
> > +			if (status & DP_AUX_CH_CTL_SEND_BUSY) {
> > +				drm_WARN(&i915->drm, 1,
> > +					 "%s: not started, previous Tx still in
> process (status 0x%08x)\n",
> > +					 intel_dp->aux.name, status);
> > +				intel_dp->aux_busy_last_status =3D status;
> > +				if (try > 3) {
> > +					ret =3D -EBUSY;
> > +					goto out;
> > +				} else
> > +					continue;
> > +			}
> >
> > -		/* Must try at least 3 times according to DP spec */
> > -		for (try =3D 0; try < 5; try++) {
> >  			/* Load the send data into the aux channel data
> registers */
> >  			for (i =3D 0; i < send_bytes; i +=3D 4)
> >  				intel_de_write(i915, ch_data[i >> 2], @@ -
> 321,6 +314,7 @@
> > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  			/* Send the command and wait for it to complete */
> >  			intel_de_write(i915, ch_ctl, send_ctl);
> >
> > +			/* TODO: if typeC then 4.2ms else 800us. For DG2
> add 1.5ms for
> > +both cases */
> >  			status =3D intel_dp_aux_wait_done(intel_dp);
> >
> >  			/* Clear done status and any errors */
> > --
> > 2.25.1
> >
