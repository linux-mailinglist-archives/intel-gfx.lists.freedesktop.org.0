Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A441765D730
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 16:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B7010E469;
	Wed,  4 Jan 2023 15:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A945E10E469
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672845713; x=1704381713;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l/5+CWbmz7VuGNIZw0biHeHAcO0GPlmSfjPGGpT7aLo=;
 b=Gfh2ZPVzbnHUPyBXzF9R69xtA3tYdwUWV1C1ZwWUg/W8XBM2JQJdQtJB
 ohsL6Smgman6ZdbHCD9JoejUKcLEcJUDv44B1XKuVNV83lTo9awYseCYH
 w1SmTdvF/1N4tQ/F+a+pV/BHevXk79sHnbKYeyGsBpjAbyse+ZBw7vSQ5
 sKQ+6BV7G928tR38epL3DqITGqdIWRBEBwmdx23pc6vBcYOibH0s+cz5o
 /6CxqCBR4a7yh2z+zI0meCsiPqsxtR35L+14jcDH7Es02UjNiVV8zKxkY
 sC1YWsDuw4kENZDC17bskqgc3esZb1GLWIJClc6MPJzrRy1h/hYluVk15 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="302327122"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="302327122"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 07:21:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="632817783"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="632817783"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 04 Jan 2023 07:21:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 07:21:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 07:21:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 07:21:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 07:21:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CI55+JoE3dK+73dNewCMP5WH2edigorUCFRIyZROt7Of8zTXJPUMgYTJbZ6PSHg8vCrezmVB7qLQpNWEp/ZHGEliaHHRPUgqnlFBOPIhBfZlhM73eGApkk8iO2OnvQz197BQ/Ij/Jd4oCXOEeb6PnEym/k75cVgGvsNZn+UJ2DGZw3tNXTJFf2+ZJzTdckqSWUn+1OA9eZTFZMmOrtLKeSIdX+1N9QXTvq//Q/yncI7JYj/lshwF+NDE1phQzi7JIjh4FLfFA5Ci/jifYts9zDw7hS9C54ZxTu3+5Y9Hh7Z4eH0e0FQNexD/yZRbU6zWKvjOnGcRjGSjSpTcQ9EwvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvYivXGVzNGKk0oA3r34dlDSe5UJZi3VXU7DuWs+bG8=;
 b=BZk1FC5BpEDv9aVkh26LTSxKE4G7j50jKnGFJxwTFhnOCUikHBN/MleAoD12xUyzfwwnmCstHJnBrceeGLuzo6p+CSRaO8jjs+2J8S3cdt3rtaXu0lxlaYtUvgf7stKTy6Ny+8VSlfCotq93hNe9Ic67rYJr5k4E6NB+uWOiCXm6U21PbH86Ci7sde/im4d2BTr0CqMR7gfBR1zOh3fZrA91AG0IKBdH1ZFN2FBNvKyGu/7IiByTM3zg2BUk5sQA4OSpvf2GAijfgDiRGFK3yebRE3FgnI+7Z/ea3aQEvnZgU7X1FgUb0s4NdTh/Lg9op9Aa9oZ2D3vqSV93YgOIZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:21a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.18; Wed, 4 Jan
 2023 15:21:45 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 15:21:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv7] drm/i915/dp: change aux_ctl reg read to polling read
Thread-Index: AQHZFOzJQW3u+4DJ3Ee+rsp4Exd4n66OVtiAgAAfkjA=
Date: Wed, 4 Jan 2023 15:21:44 +0000
Message-ID: <DM6PR11MB31770EC23D94ACD273A75418BAF59@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221221033209.1284435-1-arun.r.murthy@intel.com> <87wn62wht2.fsf@intel.com>
In-Reply-To: <87wn62wht2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|MW4PR11MB7077:EE_
x-ms-office365-filtering-correlation-id: f165cb0b-4a24-456b-f691-08daee6763a4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G0w8elUNHiryPzLcwrz2krlYvrx0zTvU2qPmLp3xh1ITe2jqlPBtZPVh9L1mAsvdH2F/wCv/8ZqQ1n+oH3vgSOWlK+AQQiwYXDOUJ0WawfEsgR5upEiIGF3Nd8IyhzyMOZHEJwBi2OoU7KJhigif11ThVUeWQrZRGMtDUleBeSN4VycVNOUxmDv6ZLUu52jtVwMn2kbTE2ojN6Es42q7tkSxTFAydvsC6AQ6xiYLXI0r23/ELloowZ4mNCdD2jRdOC+oD8dgogBdSKhr+uHFEfhW0PQYDlLfMcPYd1TGD6soQjdDAmoASbsKNkVskJB2Cxybqs2Ge4Zb40S8Z0vYSo7A4+WJ7GKJWPfOz21B5QmZHa1wbM6ltG/81T2kJUwaCrudRxzryIQT2BV5jvRqyp2fB+ZTiX01+XdbJQwV84J6pRkwjERqeDVtu5fRvlSDYmq4LgWsIOvSS4aMzrpWbb0Tx5Pw1vL3Kt3i0gabXhq50DGKjdLFQa3tUPVxPZtAmm27XWgTf9LxwQw1dAZxFE8AQtRZ9WRzRjpfiXSKQh0tyO1mzVYz1tgTKvN61WsOeI6nz3y6AH+FnmJNWO5nb56wZ5B4WqVRCkyxaM4IikH3VMY+7ZuJV6UzzwTzKaBQ3nYjC42cuu5UULf+xee1o3Y7ZCvVsZzT7OV6jTV8GUBIs76WRLHf2YNyEpLA2p1C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199015)(122000001)(55236004)(38070700005)(38100700002)(6506007)(41300700001)(186003)(52536014)(478600001)(53546011)(82960400001)(5660300002)(66946007)(6636002)(9686003)(86362001)(7696005)(64756008)(66476007)(66556008)(71200400001)(66446008)(76116006)(55016003)(26005)(8936002)(2906002)(33656002)(316002)(110136005)(8676002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+mFm0NeCge2JHwzdv+S03su8YyIVD4ATByV/ClVCQ0WPuTIHHrMas5ey/G+Q?=
 =?us-ascii?Q?hOxewWdCKDEF22fNuBqTXTfz8RwFOxFD6j7adHc+LcNnIgr+I/PX7rH3jdu7?=
 =?us-ascii?Q?HIlfcELQGveFpUpANeimZTQv7rxVQIqBk/ObX+CJzyr2oyPaTLL5/KvETgyK?=
 =?us-ascii?Q?TXgUJnF5erCt58n+nuCpKFYunxDATP1c1+DrkoR3QY+LAIfOSWczCtOIOQfJ?=
 =?us-ascii?Q?zCQ7QFTrJ/t9wffVAX1mf06AWPYlSPBI3jtwGGbkw3t/KMgjFXxLBr7SNYPj?=
 =?us-ascii?Q?MzCSgvfLSHZeDZjJRYywUZjgaybrMyMdwvD3GOktHHAJmLqTkEfdxDdkQmOZ?=
 =?us-ascii?Q?dXgcM1a0D9qB0a3cjwRhG5cls+xAIQk/bgzis3IExUl3vIyhIgvXmAbztZHd?=
 =?us-ascii?Q?XVJ5BSKMqX/QM9XSDzPDCp7E67tbcIBsrQrReYUJrAXt/ZRuq6jhW3hCR3Kj?=
 =?us-ascii?Q?AanwGH28SCMUi4LX8r538U9IMYzuRiFxcGUgcRq3oF1szkoB+T7ezWPActnx?=
 =?us-ascii?Q?JqR2Yua2Au+hPmXZ40WRtHxtXyNc0QtR46F9Ed0+yxNPt4fV1r4+REIap1Ry?=
 =?us-ascii?Q?QutgxO2REMpriWOPqgFuToXVSLRJ9ApvuWAL5h75AdOKL3o1tiEfXqQWWd/W?=
 =?us-ascii?Q?o/6Ba+/8vb9rD6IcJwcF5Z0bQeMf8xfWS4ydLAnK12MhUbZBkUTG35d1CKnD?=
 =?us-ascii?Q?HxsJZ0gRtpaO3vVzMNs0XChVaQrBHsF60X5cqnbtMRqd/A5LjQ39w/kUGz26?=
 =?us-ascii?Q?LpjM6EAnlOq1dbl0mvH6CcGl3zLL/rB1KvqGauSNbW1clRoH647OQkP/rMaj?=
 =?us-ascii?Q?cv/T0bpviUTTbe5MeSt15XQimR18pwZBQuu+SJLKxyQLWP42nko/0NEgzMTW?=
 =?us-ascii?Q?alzw3slI+r7HN9b3UgF/3oudM6ZF3ufb6tIYbijtQ4P3YG8K4/b79a1urfQ7?=
 =?us-ascii?Q?gWTLqTv0XNxaandyX+sRcAQPm2hsYnntnC34FCUxmPqsR3jw5LShIP05tbJd?=
 =?us-ascii?Q?3yFTgB9d6u1daiKk2h8RHKAi8XmuRHYt/wPrT1qReajWBTkfGa2tEq6ZoYf1?=
 =?us-ascii?Q?IRExszajk4JXRyqqvQ/g8RWSehRHtcLaCTt1kZ0TlBKoepctoszgHvgur7i9?=
 =?us-ascii?Q?FkrfaT9R7V1Z6Vvp9zH4pnAxu85y9ZY93ItbvEnF7kOCuzNuovL8cnOGXLcT?=
 =?us-ascii?Q?Tc66k2Ego3oSdU6CS3T2NhOkq/KZ0dqcQxj1CDHAIkCoCUwsLeJcsDNBWlvT?=
 =?us-ascii?Q?kRdWn+AAfsFJ4+dBqZnl0XpzwiJn6SYUOXVEDD94U/BY2B9O2Rpk37Q8wQVY?=
 =?us-ascii?Q?cujpE1q8cW3V+2knvz0hz8M8JX2Ahq8h5WSFLQmZWtwTqrvMJdh3r7pzpwor?=
 =?us-ascii?Q?S7KvkoV+tjrY8K7qreIvmfsvR68wUN02xZFSudGK6fHPOco3iei9ab2Z7NsA?=
 =?us-ascii?Q?kAK0ibwfSpTW62zjHdRmOOeypwWtItrSSUNxqlmsLSl+uz3T5KAjVHHWe9Tp?=
 =?us-ascii?Q?EkwNjwBeYoTDyA4lBgiWp/6i/cidjW3alX4eWz6FUzrV5DgZPmXLMZBGxcLi?=
 =?us-ascii?Q?Jn6vPXNG0AeSPXEt1JV20wDyj+4k9dG43VlyHAr/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f165cb0b-4a24-456b-f691-08daee6763a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 15:21:44.6987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rcgi8Nw61Nm6u7+N9bD7D8qv/RDa6GDMHyDDA3aSCX5e1c0GFSN2YkOHZJFA8kjBp2DrL5tB8BBosfoOBKuX3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv7] drm/i915/dp: change aux_ctl reg read to
 polling read
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, January 4, 2023 6:58 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
> <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv7] drm/i915/dp: change aux_ctl reg read to polling re=
ad
>=20
> On Wed, 21 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The busy timeout logic checks for the AUX BUSY, then waits for the
> > timeout period and then after timeout reads the register for BUSY or
> > Success.
> > Instead replace interrupt with polling so as to read the AUX CTL
> > register often before the timeout period. Looks like there might be
> > some issue with interrupt-on-read. Hence changing the logic to polling
> read.
> >
> > v2: replace interrupt with polling read
> > v3: use usleep_rang instead of msleep, updated commit msg
> > v4: use intel_wait_for_regiter internal function
> > v5: use __intel_de_wait_for_register with 500us slow and 10ms fast
> > timeout
> > v6: check return value of __intel_de_wait_for_register
> > v7: using default 2us for intel_de_wait_for_register
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Pushed to drm-intel-next, thanks for the patch.

Thanks!

>=20
> How about replacing the other open coded try loop in intel_dp_aux_xfer()
> with intel_de_wait_for_register() too?

Sure will float a patch for that too.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
> >  1 file changed, 5 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 91c93c93e5fc..5a176bfb10a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> >  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >  	const unsigned int timeout_ms =3D 10;
> >  	u32 status;
> > -	bool done;
> > -
> > -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> > -				  msecs_to_jiffies_timeout(timeout_ms));
> > +	int ret;
> >
> > -	/* just trace the final value */
> > -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > +	ret =3D __intel_de_wait_for_register(i915, ch_ctl,
> > +					   DP_AUX_CH_CTL_SEND_BUSY, 0,
> > +					   2, timeout_ms, &status);
> >
> > -	if (!done)
> > +	if (ret =3D=3D -ETIMEDOUT)
> >  		drm_err(&i915->drm,
> >  			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
> >  			intel_dp->aux.name, timeout_ms, status); -#undef C
> >
> >  	return status;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
