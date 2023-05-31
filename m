Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA5071803F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 14:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B9610E1C6;
	Wed, 31 May 2023 12:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D73E710E1C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 12:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685537330; x=1717073330;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qOUdVh4nD7igzKGy5wSVKPSR/f0fI+xVu5yTRMCIP74=;
 b=kgCG+hL2lMI05ICKriz1J+UZpUE0nUv4xWEcDfOXhAFdBsXbwChI4RUO
 O9D6d16RydY9lNnMIbDau/LG1yf6ipptNbDHom4MMBmkYxMe7HB8Wke8j
 ZRuiiqF1xRHo1hg5iyNCo4YafNZqDCM3odjz7G+RMkT6my0o4SYIJYG08
 HunSPxN+vz4J3mZAZKrp0NIFPYxFS3Vo+rudVh81+ZQsFfeim1d3/ZRTh
 yCJjrFE81qylekRSAHl56Zux8D86WP4a23JIkyJmJ8aY39onIzIMkeRUd
 TZSb9eVsSaz1tyv2roaJHdFtjRqdWqWDnqbOsYqHd2gSFIEez5zXrM0bl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="344736818"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="344736818"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:48:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="881162144"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="881162144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 31 May 2023 05:48:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 05:48:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 05:48:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 05:48:49 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 05:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5OsAyaO1KceHEWE7S1C9jQbIzTGnWT3eXaMXBcpgHioXEIy8clFjWvHFMjs3XVqe1EIUnCldEYauwDx69QgeP6Tf19W2H4rBlEpZEctBE51xObpI2oaYy/DZH9jNVlsDqD4yijkbHu2xhiQftCQ1bRfwuurTMC5tmxoXoFtLPvLkJHK7sZmOwmgAE3uy247cFQuuWntjMPpQjuOnuvzvvrSteCP7Ku4qm4YRwD9teEj0JBotTi2QBA4jAXr+bAfcI2nn9QddOKCwPVNzOZB6h0ifAZ3Y+lmaAWTUTpN+6mr7lXchecPr2Wm/WK/26wWAmw5KRnWnaeWXZJLuWJzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHoTVZJZQqCPKDPGqp0DyHOLxTnFPnFEZ4zOkgs0iJU=;
 b=Qh8P0a587BHYdUgkE6ZtUDtscUPFPFyCE0ikq+ZKzySaDBirGIHRya2CTHeCshLyLzTsmQMRxDUsghgmmVFyPTIGILg7OgURqhKQ5uQQW1vMkaWbB/Gq7vJWwk/w5CYMEFA89uH319/LhhBv37P4polYtP2yS9toL3RWTfIBkGG5gnir23MXXb9uZxQ9jU5bjSa7jMtZ3dbOoDZP6auHWnMRbtrFuRnTw8GirJlrkNdfr/fgAbKMHzdQjxZr8TNoOoTFamfy5Uqym5PoE2hxL0scz/ObfFOWjzhl9U6mr2LlRm+m5eNa5T64u/bE+ixKjv3H7Kw1R7K18bbSjsqK9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by DM4PR11MB5566.namprd11.prod.outlook.com (2603:10b6:5:39c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Wed, 31 May
 2023 12:48:47 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8%6]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 12:48:47 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, "Hajda, Andrzej"
 <andrzej.hajda@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
Thread-Index: AQHZiMHro30hnxPkcUm5pPtMc+NjOK90WxwAgAAGYoCAAAkKgA==
Date: Wed, 31 May 2023 12:48:46 +0000
Message-ID: <SJ1PR11MB620419582420B6CCB14460CF81489@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
 <f03e077a-538b-5ff2-5932-f2d2c2ec0662@intel.com>
 <ZHc6PX+ejjVHN8Lx@ashyti-mobl2.lan>
In-Reply-To: <ZHc6PX+ejjVHN8Lx@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|DM4PR11MB5566:EE_
x-ms-office365-filtering-correlation-id: 2f43ecc5-ee94-4c11-728e-08db61d55ffb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d7J6Y+PJPhBqRBnZz22MLdORTcBLErxfbwNLAIb9X6DzXHGUfF4jnD8W511xi9MVMKhi34+rgpqJX+LCD1nFwTVN0s50nlKZTK3eDMb8OVWGJryQTA6Z5Ometc8UXfxFjYzgDFB1bL+3lNX9J0famAMCVsnhiCEY20fxPqUPAClt3lqMBW9xf19jQEGSEOGd0G6b2u+2ldyBT3UFWeEDm0YknfxJcdzXvMibiWPQaqoCTVOJDQxARzoULz+96eNRMW+9NM8nNBMMD1hdREJJsEugzRtDjUBUqEx4+4ibZS2VJxzWKyjtLsfyF8Ey3hhtVIDJQ0WONHKTT6wKvHsG3wiyRySsxoJ1c4WeEK6kIHL4nENFBRyYsCrwYhxL5FTUuhID9Izq8k8H8EaaQxuNCl/gsIKqnPRwVzV/p1RfU+2pef7N30PvMVB9Dpw5dH7fCp+/69zL0zbDRnVSRy8VOlJvsG51KhWnWlr5QM0ySpc6YyFWzl6weqBKb5nwJUnpwATnti6T+rtAhrRK6XXFArfQgitNn/agxi0Joy4abNcr2q5pcrS7SmbeWIuHWelL8y7TLQ7Hx8d/HzNm/0sbv5dkn1vah6f3P7+37uKtW192OG4DquHBfG+0bD9uJObX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(39860400002)(366004)(396003)(451199021)(66446008)(110136005)(71200400001)(478600001)(52536014)(76116006)(66946007)(6636002)(4326008)(64756008)(66476007)(66556008)(316002)(9686003)(6506007)(41300700001)(8936002)(5660300002)(8676002)(2906002)(186003)(53546011)(83380400001)(82960400001)(122000001)(86362001)(38100700002)(38070700005)(55016003)(33656002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aaltkmKvdlWDtf3BoeyXOL8p86BcFRdXxNxcGl/jJIPulKhv7sjZ+23S8SkZ?=
 =?us-ascii?Q?TtWQAv2zn3XNVN9gwfqT/GI4Vrae1cgT+A4Gj/io1Zflw4/zmJTUWDZC4y4t?=
 =?us-ascii?Q?fcVABWtU8X3t5C1xDkp5kSp62JAk0gP14Vh67CTOuzHBBnCQwTKXol3cN8p6?=
 =?us-ascii?Q?w/v1OEtiYDdHSjq6vMg5DceyosyxPOPYrUrvYHSrMUJmqRToV/l0HYsJ1XiC?=
 =?us-ascii?Q?y5QHH2v9DtCfPE/sDbUAvGQ+9PX1oDPN3LNtqja1pPn9tqBptV26J2aNwoKD?=
 =?us-ascii?Q?HB93zePUMS017YbnJ6/UqhuDw9ZwulEQFsQ5/+e3LmxzVR/zfxNOwym67vz/?=
 =?us-ascii?Q?uHB8QJBjqauiJb1CwzSi7dL6lTVVxFXMQqQQNseeLhy1UdcdhAuWDUl9uTkh?=
 =?us-ascii?Q?3oOTQgjNYzS9cKIOUJVe3L2r8COeQjbL6RKID9SVCzTztXWrkg8S9KmTbTjr?=
 =?us-ascii?Q?M3y4vThmvndsfPJ7VvSzUxcRryUBZ/PoTlsZGG5/C1SFLxUsgykK6GnZ/1D1?=
 =?us-ascii?Q?2nLqpLZ4nM8uu7a9dLroqL/YdZ177Av/1vuEweODv0pI7Am90feTrv42S0Zq?=
 =?us-ascii?Q?dGze6mhnf0iPdbZMSIzElCet4D96CS0h7WCS4ZlOyWWp/cet0HoMm0ntNhMR?=
 =?us-ascii?Q?ykvip0VkXINSzzabnnRoF3Xn3Djpn60mEAD2ORpQy/O+6uS0eCK86vx2KPPF?=
 =?us-ascii?Q?jUDVnZrr6Eo3BIkp2dvwhI0c3xCoevH4i30346RJWSo/Uoz6ezEztDOzYCr/?=
 =?us-ascii?Q?2Sa6H7a3BmJSigyJ+1KwkEdTfKCfg5xnaLe1SMLOiJi9XxTObIbiBrFxifrS?=
 =?us-ascii?Q?shb+IEjHfSWUFozL8ngcSG5/qFsTTmM8x2TrOQ/ZemyIUS8sGHV6f/fhvvUd?=
 =?us-ascii?Q?Q1eM2LnpGVaW+VT5VdpIdwHPj6nPgc6SxS9F5fMGqPmoVriipJQ4rejrBej8?=
 =?us-ascii?Q?GkmvckZkaNXN4JSUKqL8It+I01T7l2wI8/Sw1/DYjp8fBsz7vUBgSeNYY7LC?=
 =?us-ascii?Q?ZiCpIMQXPOq0wU2XmlMWT2KHNDFCSzv6rAlH0KkPtqJs/GJ0OqzIsbIvM0Bl?=
 =?us-ascii?Q?p53UCfT00+73vtoX+6gUcvY3k4Uc2OM0TIG8f2BWzPjzOPp+QtFZ/TOAPz9z?=
 =?us-ascii?Q?wWhgqniSLFyBLQ+5DvwzlxTm1kbWYDkhDv/J+uHVy8TOqGm8gYo47Iu+UF53?=
 =?us-ascii?Q?cIkgi3qtTDGmmDAH+T7hs5nYX7l8s1kZaT7i4ickB2Vhb1tH4WRTw21B7nYp?=
 =?us-ascii?Q?6hO+sYgQnp0LuxNKXTqfQQz0NzS63Ik5gEtyFKeP0SykQqEZ0B8t0tgS4UX4?=
 =?us-ascii?Q?e18xPol6ZKkZiihCE23SW2Emf5MGFkM2JThtYZZrZ71yS9jFVMvu7Fc9ZptA?=
 =?us-ascii?Q?R0xSDF/wDJvgnALUZ/f909doWAUIm5buqZWKXiL8EjAUCDeHoqWpLBQWLzaH?=
 =?us-ascii?Q?dVkZt3zlqEOi4IIAayieqWDAUkz8lM/fHH+z9Wbzzv/hVl2jzQJLLeKVcJx/?=
 =?us-ascii?Q?uvl08FOKZuVDKB0jNW8NONPhvQS8yHQVN/k09xg+44Mz1FmN1XPSozPnoU6U?=
 =?us-ascii?Q?3OEGO0/GExOKl6GEoGa/DaCwHChPx0uRRE/6/XML9EdnAr4gbjVli2AeXwYv?=
 =?us-ascii?Q?hL5YW4NrPpE/E8TRBCTaNZUegw1ybYR/v5EDTREKoNwA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f43ecc5-ee94-4c11-728e-08db61d55ffb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 12:48:46.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lN0jp6DYls09D7iJLdrsnRQCxw/lXPvor911VvPpJs3bI9PrKS9vwTIbyhooDzWJaS2zwMHxLrcvqbLZ35p/kOiYx6WM5kt2fd5KYDzN8eg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5566
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
> Sent: Wednesday, May 31, 2023 5:45 PM
> To: Hajda, Andrzej <andrzej.hajda@intel.com>
> Cc: Upadhyay, Tejas <tejas.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround
> 14016712196
>=20
> Hi Andrzej,
>=20
> > > @@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request
> *rq, u32 mode)
> > >   		u32 flags =3D 0;
> > >   		u32 *cs, count;
> > > +		/* Wa_14016712196 */
> > > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> > > +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0,
> STEP_B0)) {
> > > +			/* dummy PIPE_CONTROL + depth flush */
> > > +			cs =3D intel_ring_begin(rq, 6);
> > > +			err =3D mtl_dummy_pipe_control(rq, cs);
> > > +			if (err)
> > > +				return err;
> > > +		}
> > > +
> >
> > In case gen12_emit_flush_rcs is called with EMIT_BARRIER =3D
> > (EMIT_INVALIDATE
> > | EMIT_FLUSH) dummy pipe will be inserted twice, is it OK?
>=20
> good point... I also meant to ask this, indeed. I assumed that before the=
 pipe
> control we needed the dummy pipe. Is that the case, Tejas?

Yes before any DEPTH flush + pipe control we need dummy pipe control.

Thanks,
Tejas
>=20
> > >   		flags |=3D PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
> > >   		flags |=3D PIPE_CONTROL_TLB_INVALIDATE;
> > >   		flags |=3D PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
> > > @@ -733,6 +767,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct
> i915_request *rq, u32 *cs)
> > >   		     PIPE_CONTROL_DC_FLUSH_ENABLE |
> > >   		     PIPE_CONTROL_FLUSH_ENABLE);
> > > +	/* Wa_14016712196 */
> > > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +		/* dummy PIPE_CONTROL + depth flush */
> > > +		cs =3D gen12_emit_pipe_control(cs, 0,
> > > +
> PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> >
> > How do we know there is enough space for dummy pipe?
>=20
> This should be ensured by intel_ring_begin().
>=20
> Andi
>=20
> > Regards
> > Andrzej
> >
> > > +
> > >   	if (GRAPHICS_VER(i915) =3D=3D 12 && GRAPHICS_VER_FULL(i915) <
> IP_VER(12, 50))
> > >   		/* Wa_1409600907 */
> > >   		flags |=3D PIPE_CONTROL_DEPTH_STALL;
