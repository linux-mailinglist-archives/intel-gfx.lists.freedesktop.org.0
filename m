Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBED717CF8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 12:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19C310E1BF;
	Wed, 31 May 2023 10:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AB610E1BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 10:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685528051; x=1717064051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZJdO9SOSkkuV9zGjxIwkk/sarPqq9CPyjPWQVvqc4Z4=;
 b=Q/rndJ2XK3ckocax/o6GO/TpX8aG1KFiXh8tK/sY6tKJ5T1AyqVQeeY9
 WzvOThJ6pqv+oA+tsM61FE+no4MQo0SKjoiOIwSs/mfr1WP/Z7rAAofFh
 qu60YpKX3QYPhR6BQPzboCWqfh3GhINRTUaLkfRqK2vdwK6jiviFi8Ppm
 GY+6qEPbiU/O8cyCLB7hzVx9YL9xqPnRwUSGkDC7jWmb8wvNkg+xMOPDm
 UllRCLhI2AlxLxmHgLOr1sRoDAlAN5NROlzU9LC/skTj3nX+mDjiwNT75
 dMoM7exkXYocVHiTOv3AmlxJqeugLBpS6wym3kqMcaKgIGTEEwpMyJeRU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="334815138"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="334815138"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 03:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="953570436"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="953570436"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 31 May 2023 03:14:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 03:14:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 03:14:03 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 03:14:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tz9pSsnN2z1OZ7sS/CIVVXAaEUGaedfbZX9LKjGVpGqtru9eZt31j6+jP3hyuZ8PWDyHm5u140oNoA8Ta61wuTVK/SIPWci/PScYw5EQ3fY7lzkAmHxUqcX4u0lLy2fLzo+3LlrBm/G0d8STR+BSOsqUaslJZ0kEfyXzrhobqEUqavqz4e2DFTl/bPZSEsvIpqlcm8I1XtfLTATRYdZCAVXU/0eHgBuu35OxaY3Xl17d0dY7V/PJG2iEWQByBGiTElXxxFOqWWGa5e0biXNekxhvrZoMfTzn0u68/4JCapLdvi4cDHUoc1vADcahgsHfgr/rsdBKVaZOcaDXyuab5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNRmBc7oYIBS0Ty745a0CgWT4ujNpYxwn71pSJ8cv0M=;
 b=fZRD7VzyA+8m0DQfHEz6bw9uLcIuSpHKDa0YzFjteUcJTVSiJUkRlMfKaO7xqORzOh7dAfoytYX7AcBQRLvL4uZJ1TOpIdv0fDnb+vSRmTQmIHRkSzDBPV9JAY0mcIhn+bSBIaljVvPBjwTJMO1PEzL1q3P7TNZldaEhk9bYEmig5F20Dh7+F4FXu+JEBWDUoNo0IEahNfIKYaD4hAEar2eEnC71S/DwcwYU4HJo51oAGW7dtlGpXU/eSTSouKv+wXoDX28ZPmTauTU3XVT5Gc8Auf/2jP4HXOnX4PVAc9RLEQM88+7SQ2tMi3Ork0M5/++kOS1bgr4pfi8tV2I4qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by PH7PR11MB6499.namprd11.prod.outlook.com (2603:10b6:510:1f0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Wed, 31 May
 2023 10:14:01 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8%6]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 10:14:01 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
Thread-Index: AQHZiMHro30hnxPkcUm5pPtMc+NjOK9zY3YAgADatUA=
Date: Wed, 31 May 2023 10:14:00 +0000
Message-ID: <SJ1PR11MB6204E0F351F3BDA0727E71EA81489@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
 <ZHZlJFaIZNOTmFVN@ashyti-mobl2.lan>
In-Reply-To: <ZHZlJFaIZNOTmFVN@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|PH7PR11MB6499:EE_
x-ms-office365-filtering-correlation-id: a0bdcb6e-ee06-4f42-43f7-08db61bfc10b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rWKrhR4+XMOL30WzF+fYopfZpgiBcKFxvNbG2RpuLbSD3J0aNexA79Z/wzsHEKyDWxgtZ4W0HPikDqhD7NHQO/xSVATF3TUvlHOR0MtaFCZZoyH10/RF3vvkRbD+RjRxz7vPM2WXi0G1PS8ty2Y8BtPi3G25Cu7nzIxsUW5ov/zZYWIt5U+gLaMagzt8fVzpuUidRKWUsZWFCdf3BtaXwdsegfawVKgTNAXDcpaU8s/qDDpY3/HHuw0AXQ8BORF7wQIv5nv2ajqQAUpwySWBS1HwjfBrWSN3acOOxgRuxVp2gLU+mCUNeDsssIZeWOGia/icVpb2VVrhlUxrZz+IKZC+b5tJ1vyZ03JMe6LXjgRXJeDpeHW/IAic9lBdrqL2qHt7uj2zY/Xiy/UmRhZmwdt19N9e2/sGo4Q9S9n+M9NjVfQzzldbvhcISCvWgXuwFMvwZVGQEBPNFZIt+cgXxa2IMxn6SRxXqrshuVdls2BuY7sBgoGe6lw6iZ6ozgkBI9eBf8gb2j6OkQ9+QsNiCKz+pW6xD6hBID31D8+C+L/9JNZEvjAaPLkVhfcj+y92ypfud20a3jXAxqTGUtFtRCfXrdMwWd10rCYSHh4fIhw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199021)(71200400001)(478600001)(66446008)(66556008)(52536014)(8676002)(86362001)(8936002)(5660300002)(2906002)(38070700005)(33656002)(66476007)(76116006)(66946007)(6916009)(64756008)(4326008)(55016003)(316002)(122000001)(82960400001)(38100700002)(41300700001)(186003)(53546011)(966005)(6506007)(9686003)(26005)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+X3Vm5gWzHRRM7By7axc6GvX87Vhi3Tnc/6zHDR2sG+dVMouAl8Ohh5VsJq0?=
 =?us-ascii?Q?PvgIvVFNKcwGC2AswxJJMN8BsZh+xT/NEIQHNI1Pg9W86yTJ12IWNX0ScMr0?=
 =?us-ascii?Q?fpseCrisVl1JuY2I9EhZuqf5Khn2DhwChSP/TSRQHCSnlRJretNVbLk13KyV?=
 =?us-ascii?Q?mQWju96AhAyvKLcefM+9rf7V8gDLMOURKl9RjhNvLGxi2x1CHaiSocHeS9r5?=
 =?us-ascii?Q?U+Re2TjwpONKUYFfAgfl3aiehxeJq/uc3kVWzXUJEAx0nis9S25HB3w6QhGW?=
 =?us-ascii?Q?2Falh+8aPJqeRwv2R15s6eByi8kFkdDGaxXHHEHl6QEunCKTBgNT10Oq8qfz?=
 =?us-ascii?Q?t2+g9JCuXSlXfEdPYbvrnP/tk+0uL1OqKqBOmauc2n8ZOUiMYK7oV7llbYvr?=
 =?us-ascii?Q?dAyS0J9XnfgxKhQi+1MQtEVu2fnDytpatwmCnG3oZh+Cbh0EXRyv/pmnWOhk?=
 =?us-ascii?Q?I41WTCU+WrlnVjijD/Z3gCVkcUf0L1y0f4PUkDMjOiqJSN3yVUn3BfQBMDT5?=
 =?us-ascii?Q?rTS1tjscPrK8SiFjfme4B5vKWOYkYgSpht6hK9igxocp0rcJBQlWLEJgS+Vo?=
 =?us-ascii?Q?epvkF5YjcirR49bPNtA9LZlN+8ypJ6AhrUd9xnwa8QRDpLl/j64zeQ8uaFpI?=
 =?us-ascii?Q?SBTJYyHj3iNBWmh9MberHeS6rEOmiJgt6pGAv/Jy8ZBzvYIWNBtzG0XEF9Q5?=
 =?us-ascii?Q?0sNQzBuwA0ZzNRCHPh7VrvSExdjErdMGVKfqbXG0YTQyHQ2K7+kq/B5nykS/?=
 =?us-ascii?Q?u+zp6bhqf7U4e8isyDaD1lt2cc3+yqeggSEuD8jHLhR+UqIzFxhCJJ8uyuob?=
 =?us-ascii?Q?xPjN4Unai5TGo0PWISymSrvtBfg0CsaZ2TmDewmjGBEuxnI3nQRz6RMIghAD?=
 =?us-ascii?Q?HfTNhh22hadHR2ThekKN4JAIa/+38764DtzzKQlflro94A3/E4ez+w3D4IF3?=
 =?us-ascii?Q?fiN4zJ0HvGNbV9u/GGopcnZUsxETz2cZkdM5QFMh9kRlJsss58WE3w21IaJ/?=
 =?us-ascii?Q?oCaajlMhoMWPpuZaZrPgX7WA+vM2MFnO5QrY/L4uevqjqRAejLwdauTf2kU0?=
 =?us-ascii?Q?WYYj0QwLy9MPIhVCSZkK92Xg6YTLo6XtK77F/gzPRReFrDU0U7C01f84G7RS?=
 =?us-ascii?Q?KGG1xzQe9EAJ51qqJGJoLSPZ0SgGDFF5vfCUrckvT1geXHqbRiy11OjvL/R7?=
 =?us-ascii?Q?IKK+gwdi8y1pVYi8XJEw8nLtNSBifGRNUQzpF+SshAdsrBccQAcDbA/rQK5P?=
 =?us-ascii?Q?i07acjk7VUxJ+kv8Vbuyxf4KagBHsgv1r3rnCWDqyABrhOvyp3VguF/bzZF1?=
 =?us-ascii?Q?djPXSKTfgNJmDY+ALlNsUW608xCtyPwfAjzlT+yLc8Dn7WnvxaqmL18RRVaG?=
 =?us-ascii?Q?OhqzOdHjYJ3BjECGx1O8Q9VI3eXNY52CB/DaIWT8yvas8jmBXiTPN7S6TmVP?=
 =?us-ascii?Q?qg/8drLBIoJRAUCFkTn536uQ8zIUbr6zWcTjJtX3fLFdGujKCIBogRkopYuv?=
 =?us-ascii?Q?2CvbKDnnoR3oH2Lkud0IxDDt20DrClS+oJxA6oXYDolIqUZl/8Rv8ij9tbP7?=
 =?us-ascii?Q?sZpMy68n6jqU5xwAZkaNQO+w/99pT6TMYGJbZFb+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0bdcb6e-ee06-4f42-43f7-08db61bfc10b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 10:14:00.8420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IfEdCiGyg5Q7sL7rThuoyB+Z1j0OWm8x9kAoX/jGzmN4tfsKElr0uJZIuRqEqxHa7CvsqkMFCRb33EegPpS39YijGT3uf7PRGIZzLHXmxkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Wednesday, May 31, 2023 2:36 AM
> To: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround
> 14016712196
>=20
> Hi Tejas,
>=20
> On Wed, May 17, 2023 at 06:52:30PM +0530, Tejas Upadhyay wrote:
> > Wa_14016712196 implementation for mtl
> >
> > Bspec: 72197
> >
> > V2:
> >   - Fix  kernel test robot warnings
> >
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes:
> > https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.
> > com/
> > Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 41
> > ++++++++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index e1c76e5bfa82..737eb515544b 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -177,14 +177,38 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt
> *gt, u32 *cs, const i915_reg_t inv
> >  	return cs;
> >  }
> >
> > +static int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs) {
> > +	if (IS_ERR(cs))
> > +		return PTR_ERR(cs);
> > +	cs =3D gen12_emit_pipe_control(cs,
> > +				     0,
> > +				     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> > +				     LRC_PPHWSP_SCRATCH_ADDR);
> > +	intel_ring_advance(rq, cs);
> > +
> > +	return 0;
> > +}
> > +
> >  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)  {
> >  	struct intel_engine_cs *engine =3D rq->engine;
> > +	int err;
> >
> >  	if (mode & EMIT_FLUSH) {
> >  		u32 flags =3D 0;
> >  		u32 *cs;
> >
> > +		/* Wa_14016712196 */
> > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> > +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0,
> STEP_B0)) {
> > +			/* dummy PIPE_CONTROL + depth flush */
> > +			cs =3D intel_ring_begin(rq, 6);
> > +			err =3D mtl_dummy_pipe_control(rq, cs);
> > +			if (err)
> > +				return err;
> > +		}
> > +
> >  		flags |=3D PIPE_CONTROL_TILE_CACHE_FLUSH;
> >  		flags |=3D PIPE_CONTROL_FLUSH_L3;
> >  		flags |=3D PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> > @@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request *rq,
> u32 mode)
> >  		u32 flags =3D 0;
> >  		u32 *cs, count;
> >
> > +		/* Wa_14016712196 */
> > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> > +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0,
> STEP_B0)) {
> > +			/* dummy PIPE_CONTROL + depth flush */
> > +			cs =3D intel_ring_begin(rq, 6);
> > +			err =3D mtl_dummy_pipe_control(rq, cs);
> > +			if (err)
> > +				return err;
> > +		}
> > +
>=20
> as the two blocks are basically identical, why not put both of them insid=
e
> mtl_dummy_pipe_control() and you would basically have something like:
>=20
> 		/* Wa_14016712196 */
> 		cs =3D mtl_dummy_pipe_control(rq, cs);
> 		if (IS_ERR(cs))
> 			return PTR_ERR(cs);
>=20
I agree initially I had same, but problem I have is kernel bot is complaini=
ng for uninitialized "cs" passed to mtl_dummy_pipe_control. I did not get s=
imple solution to it. Suggestions!
=20
> Besides, you check the err value from intel_ring_begin inside
> mtl_dummy_pipe_control(), which looks a bit weird to me.

Yes it looks weird. I will change it.

>=20
> I'm wondering, though, if we can put both dummy pipe and real pipe in the
> same command and advance the ring only once at the end... nevermind.

As we have conditional ring increments, we cant decide ring size at start i=
n ring begin for whole bunch at once. Though double checking.

Thanks,
Tejas

>=20
> Andi
