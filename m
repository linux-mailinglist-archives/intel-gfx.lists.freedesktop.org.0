Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D624795A0DD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 17:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB4F10E025;
	Wed, 21 Aug 2024 15:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S61ZM5o9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8429A10E025
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 15:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724252711; x=1755788711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TIynD5fyhG0mJ1bRewLsdYqqQnaESoa+9ZECdoQxV1o=;
 b=S61ZM5o9Xc1AjdPFoUlDkPqd2H5rX4XXAYnOZQUE2uW18R1OnuwD7Yeg
 6xgwGXIUIhNS3xXDAZ7z9bzm8+vZBLWzmGSUWgdNeIGY1ekJ/xf/zVGMo
 Dk3QGLvrxfpq0ce1jm3lsofX1qvwRcudTPcRlLMh8D6+rFD4Mm+IxZVdr
 q9eB0/Ku1FNfaf82UTxnee6m8hdhftw8AM0FthwMD0S5Sz+/ZBjj7Qjhb
 h2L2EbzxYB3rMcVSDRHjTWWT8bjr0Tr+NGKEbDf56mya0urFxFOrqipGp
 hVi+nKZJuclnsoY+rhAjsJ2yWy0yncTBgfd3F0XmDfhydwcmNQawouZwd w==;
X-CSE-ConnectionGUID: GAwj/2k7SuursTOj7RxURw==
X-CSE-MsgGUID: 88ruZt/UTsiIeH0rydoY0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33186106"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33186106"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 08:05:10 -0700
X-CSE-ConnectionGUID: 64wG8B7HTaunvDIx9hJiqw==
X-CSE-MsgGUID: IsWz4XouQsGYWJ+vcYOI7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60772123"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 08:05:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 08:05:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 08:05:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 08:05:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GD93KomqPf81i/qc0c+k2ehRlAylQXalc0xW1w2aKIpqmDaDAIN68sQKjIVYbGPuywl4L46KooQ+qGwYgoZpctnf+wtFvWva8RE2w9SC6J0ip/NwSHR/fQXj/GdT2upV4YowUMCG/sIXeK4s/v3HHj4Q/JHqfgtM+bFYjCIZHgVCurakmIUvH1kXVMhM/b00c6bqn7DV2mEQH6SoCZ+TLNQnCqBPeZC9+OrkGo78FkUVGXE1QxSbhqCCh2rSMioVaHQXmbN9MLd6uTPcg0KDkLbZirgmDVRtLXf0GB3lyTM2vtkIMHEpS95iEucqv8LNeViFx+1gxAcTnP8nJra3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UUelzi4yQnelAGKqGeqgyStKWIBrqqLEijU6HfD4bs8=;
 b=BsTNM8KAkBV86Qsi9RHBkDsaJj8thbyhKrVPIOQx5+oZeEEWt5q0ggVADjgKtksrGlbEv0bI0e8NTZwrv5Jtu3tXH236Y5CJl1t/QlCbuKe9pK6S1MxpRxk1sRN/J62lWw1Xpu/k9L4wee5KFEpS0qh8GwVao+/pcjfJ9KR94wf+4Tu+02AL65XDyWHLnjkYOR/rVqiIzrs2jq5ewRoJdOTRNE0A/1p7kmRzahLo0fP5ASG+B8UISSfwcC3s6nsAGdIRRJ7DYUqFCZKCpD9wUjCyPEWN3ppOKV9LzokLgA3625oe6yYjJWgNFDr0Xl6ruwJskEPnD5jDOl02cO9vWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7736.namprd11.prod.outlook.com (2603:10b6:8:f1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 15:05:05 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 15:05:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Topic: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Index: AQHaxmpjpziYxh+nP0m14qDI8j04m7Hk81JQgAAGlYCATS+YkA==
Date: Wed, 21 Aug 2024 15:05:05 +0000
Message-ID: <PH7PR11MB598121EE3773E56BD9694773F98E2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-11-ville.syrjala@linux.intel.com>
 <PH7PR11MB59816D24912D1E83CC8B4CF6F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZoVCAxHLvC_D9N1M@intel.com>
In-Reply-To: <ZoVCAxHLvC_D9N1M@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7736:EE_
x-ms-office365-filtering-correlation-id: f144038e-6b8b-46cf-28c4-08dcc1f2a3a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?K/PHxHnkP3IQ4E0SY3PvkWFyeF2usY5+C/eRHxx6t7aL/eRi8Uliy0NU6h?=
 =?iso-8859-1?Q?Lo8PIpEbvLe1pcd9beXknvzpHdPgP2T/7aG9+FJWG9D1kkVWeNLjjVVQFA?=
 =?iso-8859-1?Q?/2y/bqws/dHU6YCuR9FNYF/V2B/uLDiVCxv2xr7zJXG29lpMQGS2XlTsQB?=
 =?iso-8859-1?Q?MdYZWJqSN83YFN3AoNsg3MIlyUOz2Lbzm/lfuAFjuUywMjlWEacilaHomQ?=
 =?iso-8859-1?Q?COupg8xYv9CN08hGPXqD7nZH8VQjZ06vV41fBftJLZIbCrgHes6quN7HOz?=
 =?iso-8859-1?Q?CuSWmjsZcWzhCpwh7x+l0mImW0zaPoBn7YY7Wh36IsVvXVseP9iEMQHvHp?=
 =?iso-8859-1?Q?R/CmZxqJ+cN5WRoO4S0ZUREAqNN3RaZJVWPlr9Xgbt6yRQ3CgZJ8oz+4lH?=
 =?iso-8859-1?Q?ScZ9CgGJ91l7RT8F99mwCHGymb5TxnqJ43fXofaG4jUpjWqBT539be/fxU?=
 =?iso-8859-1?Q?/dEmYMsKUJRFmSZbqgd/1EmqGww82Ea48houLOdX6BI96ZVK9YLJNRwkEk?=
 =?iso-8859-1?Q?jBaO3upJ7KSvO+lwrTCUMO7qyvrqmdGycfFuF5ArF4soeJVXdaidiOERte?=
 =?iso-8859-1?Q?Nee90thIldCsthFMI3FGvaqxHlzY+8O8h0WXUneDjZRTIvGiLsi9dGS2JA?=
 =?iso-8859-1?Q?Zs4k+O+2CbLU1sq3r0Gs/v/dY6spwKpuS8obdM+b+Xd6h1AsqSWHfmPY7E?=
 =?iso-8859-1?Q?YW6fyzuhb8iTP93rfg/f6YXCCcJFkYfF9kU0JI2N3AENscVJgtAk/hfwYz?=
 =?iso-8859-1?Q?/ga2h7vibkEYPFla+Y7zW09Z09mK03KuXcFI59Wv5nH6ABctpGA+kkx+kY?=
 =?iso-8859-1?Q?0WdA0xyYzKudPY9u2SBr3XSwlH+/llJqYOsb7sfS7mStxxCjWIUBhFEzKz?=
 =?iso-8859-1?Q?hmXWJHUCpnT9x7mQ9rxznrC6Ir5u4/ujhNFeVS4l1mt7tIm2DMYMSttR1H?=
 =?iso-8859-1?Q?Tnc+AryBBtuxGsUQrR66VF7rzTzzOz6YPDggcFnX4ni2/VNLb1iVaSUYr0?=
 =?iso-8859-1?Q?DQ0OXSA/jxg4iTWbDVoXgs24Z1BZMZXURd6/6ekYC+0ij8uNVcp0rFAboq?=
 =?iso-8859-1?Q?RDEaXrAaPCNSu3UvlVAkMI9PJttZ5nxS1oGmgDHWtdgM5YO+BoqrMNf+rt?=
 =?iso-8859-1?Q?8SPQRmsE2bA1gUbbwVGKJBs3xUzOg9w7HWd4RlOjmyF5gKW9cCMTXSoKOm?=
 =?iso-8859-1?Q?h2KR6bB8PtL6hYxTYwn94MT0JggFR2FFqGi2eyPi5fGXZI/7udtFmUj0e1?=
 =?iso-8859-1?Q?iB9lfDoklDTTmihkfUMb5towRd1xRWX1juhvSlmCTxWXoehx8uEIG+xaRu?=
 =?iso-8859-1?Q?UBdDUowOUj3COXy7Lg4JhKGdteftYaObtz1KmBgsgU1R6NgxFNo7LXpKv0?=
 =?iso-8859-1?Q?lXB9ROrzaOya8PAq30LqYqdHHn/dCF8hGpMgm52JohTIC/+uWd/4UsltCW?=
 =?iso-8859-1?Q?x6pccY5dljx/4ason4w2PLmGhlk5G2UOenGy0w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wS45VPrO0kpLjKIhwRbRdubYnFGUHUwo/w4Lyq4SD+kZCGIuvSvFMX+tCm?=
 =?iso-8859-1?Q?Dq4pVnA5AgWuQri+kcnapwgl7rZPXksfw9BdORi+jnZJarRrQTag2AiEai?=
 =?iso-8859-1?Q?HfHRWCsz1AoI1RMQXX26mVaJixMVf95qzVICsfXBPwKaLaV9oji1pbbkCe?=
 =?iso-8859-1?Q?SUREE/fXkwf02WXb8X8+3Vay1SJFxLrT7uBNnDRQDovh9TKcDBkw6hBpbU?=
 =?iso-8859-1?Q?K0LFEy560ykqxJJbD3XJyWwvlBN77QJ2WkW6B8ob4YIJct53DduyHVf9Xm?=
 =?iso-8859-1?Q?Tk2ls+9mumhNLxxzk4f/rCq9TtVIJVllcdwL8MIXTFiTFiE4hOILUClD71?=
 =?iso-8859-1?Q?XlBu743ghodLYM4vyHR0b8EvLmAhnKV2tPm42ednvbCIaXE1o5H1dVGeUz?=
 =?iso-8859-1?Q?Oor0yVM2Si0MEi6m15TTPcUzALaYFUAJ2Y85ETE9r/5EnHcNWcqHuBncnB?=
 =?iso-8859-1?Q?NOF/lXfRKurxv6W2DlXlinw26cWOmypfVuW3bErg5++VVDhYrQeSQWAexE?=
 =?iso-8859-1?Q?cGinoIce+S9i71N3MkZVL8ETEtO4lSUGRSP8D+qxtAnkBu1EnerPpQa8M7?=
 =?iso-8859-1?Q?2ZmO8RI2yfh6YMuJgxP2CSZHhENOCws8QOnU4DoNqjzGxLSqEMQUjPryk3?=
 =?iso-8859-1?Q?qzTiG2hGEBgiVhZCpR86csC8cEilst3bwPIA2fwgt1snJbmwcteLnu/Agh?=
 =?iso-8859-1?Q?7FhzBKuL4PDzIJEWQWzQTcsltNUs0wTGVXi61uiMPu/btvWc7hwM6TbFMI?=
 =?iso-8859-1?Q?ii+nvCMstXe0gFtax1lHiLJ5pbWHwa6xNUMbJA4oDBogjADiQaBZoxRUJb?=
 =?iso-8859-1?Q?VtiLZaDDFXLea8EN8SakbobTs8XLwTC4HzBWU4bQZRtUz7jI3f8y2G8m1B?=
 =?iso-8859-1?Q?JW/jV6ixWhK51VFD2O15vDBm9ruXL0bTVmxHLVYGhcRcke8deXBz+wNooI?=
 =?iso-8859-1?Q?krcT8QDt3Qf43QefPFDti0SQLKcCKNB98P4y0YjRwd+5RXSTHjk4nQ/IfR?=
 =?iso-8859-1?Q?lfmsZKToVN5kGSjoLmuGPlFYtgL9T6dBk4QBQr4Yntdg/2aEX16kvtaol2?=
 =?iso-8859-1?Q?NaTpCsItW7ETqayPA33+9cZob+JySGeV/ihTjghG742hVxzRPOq+rm+M9j?=
 =?iso-8859-1?Q?jjWmRw87t7Kv4zzhrluC6cvRIBjrLJXRLjMCeQ6lfrxoHsZqoO4sSKjim5?=
 =?iso-8859-1?Q?tKpfJsF+GVExTOsOPZ6r1cjkxFPgW7o5RugZO4aQ4s6FyCHVyGWc6b+1xr?=
 =?iso-8859-1?Q?58G1xIUB/DbqabWTeD8rRtS+gQDRt5kSwDzgVntdvBsW96ShPyf8R2zye6?=
 =?iso-8859-1?Q?pISq/MsrwTA3mIp7ZYP2Oo/NO9BI6hHsCbZDrzrwapvvsbFXcgemgtlrTI?=
 =?iso-8859-1?Q?neW3jVeooeMCW6hls0MX38Bn+76Y8mkthODh1uk4tvu8G6ukT9RPEDmqMe?=
 =?iso-8859-1?Q?CtbFhmd01rswYNIfiPHoLQot4fUxUaLkMuCovrnnDvb7ZxUP/WLV++nefO?=
 =?iso-8859-1?Q?W36kk5cRgvA5P8FM6p2A43wHuawls748zSJaMPcHPRXsS0ljUJldy21uWr?=
 =?iso-8859-1?Q?pZ5sWXTID4Z6LNerYKIpbxIYVwZ6tTU/snEx3Iw1wlt0sm09YOGXuYKlWu?=
 =?iso-8859-1?Q?J6x0Z8mFbyLsm7MeTCfArPhwt7PlcVo87q?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f144038e-6b8b-46cf-28c4-08dcc1f2a3a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2024 15:05:05.1257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maxAov6CdMSE2AKn0ycjYX2T/xUzBnzPN1yckahSQ8wmZ0ikvQWZMIpZMvZfOf54SpbIOPISt8TIM94TzltjwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7736
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, July 3, 2024 5:50 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
>=20
> On Wed, Jul 03, 2024 at 12:10:38PM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > In order to handle the DEwake tricks without involving the CPU we
> > > need a mechanism by which one DSB can start another one. Add a basic
> > > function to do so. We'll extend it later with additional code to actu=
ally
> deal with DEwake.
> >
> > Is chained DSB concept restricting to only 2 DSB instance or can be
> extended to available/max DSB instances?
> >
> > Are we exposing full chain of DSB to user or can be restrict to primary=
 DSB
> which will control other instances?
>=20
> You can start any DSB from any other DSB.
>=20
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dsb.c | 42
> > > ++++++++++++++++++++++++ drivers/gpu/drm/i915/display/intel_dsb.h |
> > > 3 ++
> > >  2 files changed, 45 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 092cf082ac39..4c0519c41f16 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -502,6 +502,48 @@ static u32 dsb_error_int_en(struct
> > > intel_display
> > > *display)
> > >  	return errors;
> > >  }
> > >
> > > +static void _intel_dsb_chain(struct intel_atomic_state *state,
> > > +			     struct intel_dsb *dsb,
> > > +			     struct intel_dsb *chained_dsb,
> > > +			     u32 ctrl)
> >
> > I do not see any usage of ctrl variable in this patch, maybe good to ad=
d
> wherever will be using it.
>=20
> It's in the next patch.

If we agree that intel_dsb_chain() will always work with DSB_WAIT_FOR_VBLAN=
K, this ctrl variable will not be needed.

Regards,
Animesh

>=20
> >
> > Regards,
> > Animesh
> > > +{
> > > +	struct intel_display *display =3D to_intel_display(state->base.dev)=
;
> > > +	struct intel_crtc *crtc =3D dsb->crtc;
> > > +	enum pipe pipe =3D crtc->pipe;
> > > +	u32 tail;
> > > +
> > > +	if (drm_WARN_ON(display->drm, dsb->id =3D=3D chained_dsb->id))
> > > +		return;
> > > +
> > > +	tail =3D chained_dsb->free_pos * 4;
> > > +	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail,
> > > CACHELINE_BYTES)))
> > > +		return;
> > > +
> > > +	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
> > > +			    ctrl | DSB_ENABLE);
> > > +
> > > +	intel_dsb_reg_write(dsb, DSB_CHICKEN(pipe, chained_dsb->id),
> > > +			    dsb_chicken(state, crtc));
> > > +
> > > +	intel_dsb_reg_write(dsb, DSB_INTERRUPT(pipe, chained_dsb->id),
> > > +			    dsb_error_int_status(display) |
> > > DSB_PROG_INT_STATUS |
> > > +			    dsb_error_int_en(display));
> > > +
> > > +	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> > > +			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > >dsb_buf));
> > > +
> > > +	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> > > +			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > >dsb_buf) + tail); }
> > > +
> > > +void intel_dsb_chain(struct intel_atomic_state *state,
> > > +		     struct intel_dsb *dsb,
> > > +		     struct intel_dsb *chained_dsb) {
> > > +	_intel_dsb_chain(state, dsb, chained_dsb,
> > > +			 0);
> > > +}
> > > +
> > >  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> > >  			      int hw_dewake_scanline)
> > >  {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > index d0737cefb393..e59fd7da0fc0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > @@ -45,6 +45,9 @@ void intel_dsb_wait_scanline_in(struct
> > > intel_atomic_state *state,  void intel_dsb_wait_scanline_out(struct
> > > intel_atomic_state *state,
> > >  				 struct intel_dsb *dsb,
> > >  				 int lower, int upper);
> > > +void intel_dsb_chain(struct intel_atomic_state *state,
> > > +		     struct intel_dsb *dsb,
> > > +		     struct intel_dsb *chained_dsb);
> > >
> > >  void intel_dsb_commit(struct intel_dsb *dsb,
> > >  		      bool wait_for_vblank);
> > > --
> > > 2.44.2
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
