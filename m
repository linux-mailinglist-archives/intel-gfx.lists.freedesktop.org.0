Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D012E869F88
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799B910E7B5;
	Tue, 27 Feb 2024 18:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vw3zVx0g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5898410E7B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709059919; x=1740595919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hRAnEUx0OdONt4KL/1cxB94/sVzjoUpshXaLcyPLEVk=;
 b=Vw3zVx0gFlAzyL6pEwgk195glsn2wXjzcElhKvZxk9Ob5ZkgCxkET1y0
 S6wB6Jnf8KeTaxfZY7x5zVmYWgnq5CSaOnJ8bMy96cASlkGyImuJGKrQs
 k1v/2a+nrnaPjB7wIeus+VOOQeDUqIPi8wKaCH8JuTjdzCanKEZoqMFIh
 5JmqGmGVnRwf88/8whpRHzn7mt034kCDMIWsFj3zC+Wcn3eipZmCSdusa
 Tsn8tutZRBY0EXf+HqMdyF07oVm4Z2hO5XdHbSUpq/0cpjl3NiuM4yII+
 ceG9ZEpRcXvT/D1IRSJkTdfqFw1dl2cb59RZYzmfLZAMm6epMAVHRH2YV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14134290"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14134290"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 10:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7578353"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 10:51:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 10:51:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 10:51:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 10:51:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nCVCXNMeRQvyOU6niQxb6tlfaB9b6AykG/mUzcnDjhTRqpqsI8xyCJ1QImbePOPPghLfJ37dkYJMP4zw908N9YnveVMChVhS1keUzYJCAsWtEQtzr26BKFRUGZApFCUIoHxqsVKedjcQHarKL/mgNvgTwmpUe4Mle6rC2dBBSyHrRC1d1GR3sJN6dDk5DUKEkiaD4SsP0qCdW22RayRTxnw+50PgpjyTzjpWuWOJnRMHMmEdggatq7AWYslBNeB99PEXADWE7jaA8ZwSyini0rRVOOraCWNRw41CJ1VKI3am50RoFX1qih+S2T2yL5RDQlWtNwnmZLLkq7xD+BYzew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8oqy37qzuITN4gu96R/jv16Lv3dXPeZk0POLzzKxRQ=;
 b=npYCwr1YN50/nnKqIIwXj4mE2CJbiL9QCQ/miB9U8f7XHuB/4OQboCix2bbSaZZxjZ1uW6cMQfycBqceAnGCSwWfPT4aYcImu8j1muXWq/5OxoVRPMCYOgNY37KBxkmnJ8eoTwwAWkB9Hlqd3QON0DpWJlMCEG+OE87lmfbqZ/mHqUOz88vWHZ7zjTejqwuXYzkSPM72kUhXW7T5MjyssIAK2Odek9+rwgt2hN9eEdu5KIPuGAiScRuLuZt1Mwia9WyEiFvzuREOA29QSxa8FQca6ccQ43sI9RJxYN4K2rch+GvteAch98MsZQz3fkA1MV81EUdYIueSdNsyaNPNEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by MW4PR11MB5912.namprd11.prod.outlook.com (2603:10b6:303:18a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Tue, 27 Feb
 2024 18:51:54 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 18:51:54 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Topic: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Index: AQHaZPsMkY6C5PjSmEynxD5FK6AnqrEdEbkAgADcP4CAAAA4IIAAApQAgACgo+A=
Date: Tue, 27 Feb 2024 18:51:54 +0000
Message-ID: <PH7PR11MB8252B6264B1677A9B48B35AE89592@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
 <87o7c3knj9.fsf@intel.com> <Zd2lm8uC1WsjEpcO@intel.com>
 <PH7PR11MB8252B76C0200A73FF029C76289592@PH7PR11MB8252.namprd11.prod.outlook.com>
 <Zd2n9Cc9v3YV88xg@intel.com>
In-Reply-To: <Zd2n9Cc9v3YV88xg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|MW4PR11MB5912:EE_
x-ms-office365-filtering-correlation-id: bdd64618-e8f3-4937-420c-08dc37c52ae8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MkS8+tf43B1kO8l1RdoOmE04RZhb54cLimuChLgCqxc9DpfhwOcs7HN2VsMTcY4F26Je5tJ0HdhZOWGCsKIF0q8oogdG3UkQHLnD0qxcQvs1sNACBj5MoGNDXtd5nfvQlA3MQ9nL+l7s1u70LysA/DK0eLvW3IjopM6JKRNTneEBIfp0m8gki1B286eFK5C0jBpzoossokaNcXizWeg/YvmhkFNYErHpLoQokqAteEuVXGLvf8UIYqPhuTIYngDQu8/xrdpf0bGcp2zBMs/9n5LStYnl16bMV2JmJkWnNSwOFCu1jKKN5WwkRkoKI5KWCJCp/blF8IkbA8DTHlGLIRINl9p7A70BcDHIC4o5blo/odk+ttBgBvheRKWKbQ8kRMiXjexUZLyLJ4an3gABDUZnQEgDTlBpmOgTxdPXn4ERpK6c6pa9jH9XtxsREaqVLjsf5k+Q9Awfws9pAwiEKLcOf1yLwYN4/b7YNAGjpH9Zuigje29BX16+YzwENn3DRIZG3iboAVeR6GDCihWNNG+pAG0eBTFy04Dk0EvYLOl94UMOhjp8n2oxGJx40WddK/G0GjnP4M2Lp/o/An9a6m1/j6aitm934XDlseWlQQr1w0qgNsVLvk3jZCwqwGdAuBAjNn60Kaq01lhmgYTpENss/JopYFeQ0Kvr6F3la5d3nAD7XWg6FKVOS5eTBFuxlDKX9ln8AIji2JjNdKlgUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9+Xrdu8alPU/QWn4RHGBSOjebMzytliWViAV3dASxhQ49s8s2D+hk1C8TsNM?=
 =?us-ascii?Q?v/Sd77HVVUEObMOI9MbkF36+Xf0LyX9yaawyCXq7D6yHP8bipkJ1e5O0c32D?=
 =?us-ascii?Q?YfwzfWQtmeTGhljWWDhTSh3U8pTD11irOPfrsvTtv489lH0OD0TH4l1uj3wV?=
 =?us-ascii?Q?5htJ+HC36N/h32IiNO8BLKTEa/nl2HKHdxPP/dIbBvY8iQEnWn6PnZLCJsLX?=
 =?us-ascii?Q?HxI2UN/rSa+fIEegStZiHjjjrZxLu518RUfBkSffUXm+h9+7AaSD2YBmQer9?=
 =?us-ascii?Q?TyPfy2E77TbdCkLwZlbR56bbPthuE3gu32ZurVicD9oTkrA/sRfjZqDc8GZw?=
 =?us-ascii?Q?LW+sz4iCOIlbladeFbdgkMNhmQWIbEgNvQ0LcQ3kzBQ2RRVxL/Jvw7E2hhb6?=
 =?us-ascii?Q?Huol3wPWDoGsqC/sucICHzqEUzX59tvRSQMef2jCDKhwXLa1YqXwsaiu76Sr?=
 =?us-ascii?Q?i6EdC3FEB/ZRhexu4+kkzdZ5dDMAlr+hESr7bvgLYDA6S0pHM53WIE3uzV+y?=
 =?us-ascii?Q?IPBchdthSjA6ICVQfiY9y19lKaE16iyO1/n66pSLaLLBb6FkmyG5HH5Me6w4?=
 =?us-ascii?Q?ikk3DtgRBUHPMMtaz5qdilTEmrC87bcsvzoT+PkqzDV6R4CfZYHVIHBZ0SnA?=
 =?us-ascii?Q?IpENcmq5S22+yG7aU2nUQde7sAlEMcEr/v+9Avy2lq4QVXwS9bONNciGh750?=
 =?us-ascii?Q?fxqwF0pFrSoVELOJKOAS4jjvhN/b2bBng27HL/g1/hLj3ijG1aMRVTefIufy?=
 =?us-ascii?Q?gSEDZLQIR7VI5p7fADAhMbrx4+cqF8gyW/3lO0Bf1Q8t8CKFKiCplAXzBkCB?=
 =?us-ascii?Q?mwHVLxvwem51bgR8ezmX8VcEG1dtuwDdhw+VIxkzAT51KGQax7s+wMeODiFm?=
 =?us-ascii?Q?HvDwNl4RC4a5ho8n6XdaIXm1LHBMN4hD5Bbr+d0i5hyRJZ2rlTjPk2MS/Tm6?=
 =?us-ascii?Q?Xr4I5e8GbqcFFjidFcYwZSSzlCB+sSyCpS05aeA8o8ooKP9hVP6ZJCRgKjyX?=
 =?us-ascii?Q?rBtftLIK9MsahL9zgnibqCZjpMGvMON+iq36bLQkX3aYYmnlXpSodW0RMobr?=
 =?us-ascii?Q?Cx0V3hrwoO54Ls+Ra7kq8e//SaKHKyAi6eIV261QvlaYaHwwb43OGDa/aiNH?=
 =?us-ascii?Q?oLeTQZLDQAuyCVaztMof1QlYmGD+gkf5eL/HLUZlIAEWMQ6d/C+2WZ+s+fiQ?=
 =?us-ascii?Q?DwjFF4cp0UQWqvZT7C/OkYHUIMYTu4O+KxhZeCYu5Nf++s7Fbd7kZ9ztoK0e?=
 =?us-ascii?Q?Sn1KxGo/pbm5wIT/ktrqACatBMBSZqSoSsAuaa3e8Wf0rJWapjX1hpiDzUzg?=
 =?us-ascii?Q?wOuzqAboMWohfMrhO3jEg5GKvMOgZJSSd5hjCJyOUGSEgJyqtFKrNyTSY1Ay?=
 =?us-ascii?Q?SF0g0RWbN1ZL0YTLRa1oW+V545OZSwdQB//aaAtBJ/hfJVjdwtGC+xLqfInm?=
 =?us-ascii?Q?hCGgRnea7Tmu35KYhgPIyQTYw2UbayUukNP3CnGp7m+8PvVdWIDwim1MvHDg?=
 =?us-ascii?Q?ENr9nYmYhOwYYcsGZF6ECMn4Nf1qjHJ5h2xbhJbq5SDpg7vyU3UcE9EENotx?=
 =?us-ascii?Q?O/tPCqV9IwsefkSzQqyzQ/rH3c1+p/KB+jc1vlMn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdd64618-e8f3-4937-420c-08dc37c52ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 18:51:54.7149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: od6LB5RDdI0Gj/7SMlXA6SDD7i+QDGZ7sNyIMKBEdgLXczCYNc/iA0ZEjDuYpnMLoI3mhgJMSNnAS6ynwfD0eWnrFoOEfgRl9qazvMIUqCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5912
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



> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Tuesday, February 27, 2024 2:44 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org;
> Saarinen, Jani <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
>=20
> On Tue, Feb 27, 2024 at 11:06:16AM +0200, Srinivas, Vidya wrote:
> >
> >
> > > -----Original Message-----
> > > From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > > Sent: Tuesday, February 27, 2024 2:34 PM
> > > To: Jani Nikula <jani.nikula@linux.intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Saarinen, Jani
> > > <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com; Srinivas,
> > > Vidya <vidya.srinivas@intel.com>
> > > Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
> > >
> > > On Mon, Feb 26, 2024 at 09:56:10PM +0200, Jani Nikula wrote:
> > > > On Wed, 21 Feb 2024, Stanislav Lisovskiy
> > > > <stanislav.lisovskiy@intel.com>
> > > wrote:
> > > > > Patch calculates bigjoiner pipes in mst compute.
> > > > > Patch also passes bigjoiner bool to validate plane max size.
> > > >
> > > > Please use the imperative mood in commit messages, e.g. "calculate"
> > > > intead of "calculates".
> > > >
> > > > Please do not refer to "patch". We know it's a patch, until it
> > > > isn't, and then it's a commit.
> > > >
> > > > Please explain *why* the changes are being done, not just *what*
> > > > is being done.
> > > >
> > > > In the subject, what is "bigjoiner case for DP2.0"? DP 2.0 is a
> > > > spec version, and as such irrelevant for the changes being done.
> > > >
> > > > > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > > >
> > > > ?
> > >
> > > Hi Jani, I just added that patch from Vidya to my series, to be
> > > honest, didn't have time at all to look much into it.
> > > Looks like its me who is going to fix that.
> >
> > Hello Stan
> > My sincere apologies. I dint want to disturb your series, so I did not =
fix it.
> > Please let me know if I should fix it. Sorry again.
> > Thank you Jani for the comments.
> >
> > Regards
> > Vidya
>=20
> Hi Vidya,
>=20
> it is a bit unclear for me as well now, how do we proceed, since your pat=
ch is
> part of my series, I was explicitly asked to add it, does it mean you are=
 fixing it
> now or me?
> Well if you address Jani's comments, I definitely dont mind :)

Hello Stan
Thank you so much. Just so that I don't disturb your series,
I have pushed this series https://patchwork.freedesktop.org/series/130449/
After addressing comments from Jani Nikula.

Many thanks Jani for the review
and apologies for the commit message errors. Kindly help check if this seri=
es
is okay. Thank you.

Regards
Vidya
=20
>=20
> > >
> > > >
> > > > > Signed-off-by: Stanislav Lisovskiy
> > > > > <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19
> > > > > ++++++++++++-------
> > > > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > index 5307ddd4edcf5..fd27d9976c050 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > @@ -523,6 +523,7 @@ static int
> > > > > intel_dp_mst_compute_config(struct
> > > intel_encoder *encoder,
> > > > >  				       struct drm_connector_state *conn_state)
> > > {
> > > > >  	struct drm_i915_private *dev_priv =3D
> > > > > to_i915(encoder->base.dev);
> > > > > +	struct intel_crtc *crtc =3D
> > > > > +to_intel_crtc(pipe_config->uapi.crtc);
> > > > >  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > > > >  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > > > >  	const struct intel_connector *connector =3D @@ -540,6 +541,10 @=
@
> > > > > static int intel_dp_mst_compute_config(struct intel_encoder *enco=
der,
> > > > >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > > >  		return -EINVAL;
> > > > >
> > > > > +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode-
> >crtc_hdisplay,
> > > > > +				    adjusted_mode->crtc_clock))
> > > > > +		pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe
> + 1,
> > > > > +crtc->pipe);
> > > > > +
> > > > >  	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > > > >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > > > >  	pipe_config->has_pch_encoder =3D false; @@ -1318,12 +1323,6 @@
> > > > > intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > > >  	 *   corresponding link capabilities of the sink) in case the
> > > > >  	 *   stream is uncompressed for it by the last branch device.
> > > > >  	 */
> > > > > -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > > -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) >
> port-
> > > >full_pbn) {
> > > > > -		*status =3D MODE_CLOCK_HIGH;
> > > > > -		return 0;
> > > > > -	}
> > > > > -
> > > > >  	if (mode->clock < 10000) {
> > > > >  		*status =3D MODE_CLOCK_LOW;
> > > > >  		return 0;
> > > > > @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct
> > > drm_connector *connector,
> > > > >  		return 0;
> > > > >  	}
> > > > >
> > > > > +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > > +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) >
> port-
> > > >full_pbn) {
> > > > > +		*status =3D MODE_CLOCK_HIGH;
> > > > > +		return 0;
> > > > > +	}
> > > > > +
> > > > >  	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> > > > >  	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
> > > > >  		/*
> > > > > @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct
> > > drm_connector *connector,
> > > > >  		return 0;
> > > > >  	}
> > > > >
> > > > > -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> false);
> > > > > +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> > > > > +bigjoiner);
> > > > >  	return 0;
> > > > >  }
> > > >
> > > > --
> > > > Jani Nikula, Intel
