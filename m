Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F371901A19
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 06:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748E610E25E;
	Mon, 10 Jun 2024 04:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Au1yifBW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554AE10E25E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 04:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717995265; x=1749531265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6nWWUiGUqLN7xlF3mMcYnE1T0NPvcdle0SdxN/0Aza0=;
 b=Au1yifBWhpZrQzRrrJJvF66xyUZ9wM1SvrFSaZXcFrpOIKV5o1ya1Lc2
 pykDK8678EIIY1fgyc8SlecKllbeTG1/VrlbKTMBMrYF7by5nRLfKwAhf
 l/5x5O1z2U6zZMXNIKw2MbU/Dtmv8qVLcWNudsGxL7w6/4hwAdcUchFzB
 JPrXiPa7jv6YBxbzsmdEjB7lPTgNKZR9TQCRLztWnTt1dNk+38yQEgL35
 FRERqHTXz++jx0ffPxYMBFkaebZPyMKQ57RX8eCwWuuk+ONrqRoYjEtqS
 07OREZwDy7FJ6KQjRK1pWuAoGvF5SUCtBnQ6eIqaKjWWCMXPDRVZNEHmF Q==;
X-CSE-ConnectionGUID: wRIY980VTyCkQx+GSxURgQ==
X-CSE-MsgGUID: WaK0k93BTvObqehgB4Up7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14437391"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14437391"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 21:54:25 -0700
X-CSE-ConnectionGUID: rjDTGrt2QeuGfX0bO5cmRw==
X-CSE-MsgGUID: dB2iZFh6QFalyzWAGSKfQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="39066657"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jun 2024 21:54:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 9 Jun 2024 21:54:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 9 Jun 2024 21:54:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 9 Jun 2024 21:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acxOjKXJ7Q31dZpVHXtbXsHUyC3RdtIdEPsoFdNco1cHd7R8+9pDy36OCwWXOx7kg8JXYjxkBr4/4Fw7qT+UxvZbobsD1+WVHLJhM332JinkSJS66l/unOOz4FI48y2le6/9XbYjfpPedSW9ywALAr4WgV2rNPK2eUN+Q2yKXrZr8oRJ3YcxtoPTfYmajnPLuVajHy3GGHW01eW6Slc/0sCoWXlbAQ5xgD5/YUQx/3J/VcTkWbjdajjs/p9M8Kzuh7em8fk6ipd5gLtjMbnP7LmzD6gh3ZzVnO41Z/e7vp2McxJ25M40XZ0AZ34wyFgMdfl2O+UX77jz1acUmmkFMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R0mOY3VKgkBC9vei/OsGMzsyXg6jnsceUGm/A8AVx94=;
 b=ke5D5RJkB6IolOyTO5kYJTy2uLIMvZgHopkjHD3bDldIGHqmeUHnI1kWUySowtcTbaNdZWueglYiX3YDVSOnKUW3WAcKSKo9IgnJEN2keIE2/u7PRgrxhII4fxnoOxLqLLDW9mlJYj3DxoYeiiXY4BBf36g3rrmRSy1PMe8o2HhCQNVJ1GUEH72EnZNxJSkkGlU75R4uxQi2hCmMgqP40Ozy3sf7F8gb70JMZ5r/R4Y56jaS4rVvRVfZK8xNRSX2gKgN5XFtOoa6K4icuwlUFjDYJuBbR6dzzF0xeA1I9yExA14T3qFIUNjEzjqm34cukKvMTyDfchSzvjfe6TN3ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CYYPR11MB8387.namprd11.prod.outlook.com (2603:10b6:930:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 04:54:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 04:54:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHat+wX4zuzOwtOwU+RVJNyADWRfLG6lAaAgAXXiAA=
Date: Mon, 10 Jun 2024 04:54:22 +0000
Message-ID: <SN7PR11MB6750B964412CEAA41264C6CBE3C62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240606082926.1816416-2-suraj.kandpal@intel.com>
 <20240606082926.1816416-4-suraj.kandpal@intel.com> <8734pqba5u.fsf@intel.com>
In-Reply-To: <8734pqba5u.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CYYPR11MB8387:EE_
x-ms-office365-filtering-correlation-id: c99c5f24-82ac-416b-4455-08dc8909652d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?5J9aBfyox/bi+t3J4rTliUBV82JmOgTqEG4PNIKUV3Pcn7AumRe6J/pRLz6R?=
 =?us-ascii?Q?vm+NhNjC5bkgQGugOEjeB6j5Keainkadln+06sM4vVRmTZ7Jto8iQyI58tkt?=
 =?us-ascii?Q?qaFcuz39Qq4ps+7aCcr0cAK9vkeKilE4URVYWNCJQy84fXdwfyyDJnWRovdM?=
 =?us-ascii?Q?xYICny7Nk6gwmQLm4xdbW9YOI1FdgnK7CYyViScF3YeGM7VYdcPTLrcp+Mle?=
 =?us-ascii?Q?+TsuNhpYZvUawZtU3j9RCOmomdUvGQp03ZxfZEIqXIdgMjYyv0AwF3aK8DDH?=
 =?us-ascii?Q?MmsP99cw7rUIbu4ADPb43XwAB/EXcqPZ7jQquoE8uQzvT66tFAQNvkGM8N3f?=
 =?us-ascii?Q?zGW62OTcmKBPkRJiWMNTF+yXe/H6z9Pv1jzr3WYK2c/ST993JUgWyEM7+1wm?=
 =?us-ascii?Q?VlydDGN+7HIRNTeG+uzKalW2msjl98M5Bpv03Gq/m85Yz9XNuCbAM5XLUUF0?=
 =?us-ascii?Q?sFntEVUS3J3Clmioe3LwXBZA5pmXVnGVb8i3GcN1H2z0AnWiEfsUqE+brhda?=
 =?us-ascii?Q?NNYqozge6YkNXZT7UxvnouR2UFqnu4oUOM1Lm8g57eH2QmNcmyDCkgJfyBWi?=
 =?us-ascii?Q?D9iOYM0thSL7mF4mA2ojM+CratzVkQznK755P3MVHZhsOVefEABhY5EG1iii?=
 =?us-ascii?Q?xzO6Opv3hnE2c+oSb9iQkO4k1T1edrgs/PQue5bYpWPFRF7reK7HMEMreJU6?=
 =?us-ascii?Q?z/8JzvwvBYD0UUwwgw9HxoWACkzlhbkcHGNCcqR/pFhedz/6aSolg9B2gAbw?=
 =?us-ascii?Q?7SOgOGgA1GfN2MMzM2l/yiL9juVT7Jmxr3/xMTXhOeD6jjQ3+UEjjV9HxQbs?=
 =?us-ascii?Q?zhCJ/acEiSzUzKUUFb2VGTgfaXXHivrjUDuN4BRXJm4wLGyRzy1nLrlTymre?=
 =?us-ascii?Q?rCj3b+agxbrn31HrRFNFpu/i2lGBzWP9vKz7srHqlci1Ia3+AH+Td+pfJfhO?=
 =?us-ascii?Q?43usdsk4zm8xsSajCvnekdN0djO+aXu7v50N79MDqtxfDv09W4um5nzj/6b6?=
 =?us-ascii?Q?Geq2JO/ZzQ9biS7mUL43iqc8Afh1dMXkpoGCfi4FxoQotPAq3ohn3FATDzEB?=
 =?us-ascii?Q?C6S5dPWtQn3b+QeakacaSVkhA/vN7KntYaiVRq2t7uOqB7mOj5who1lwfo4k?=
 =?us-ascii?Q?WLwjXy3BTTEBn9/IsiAmW7ob/sg40MZVUTvZ/EpFgIQMG42EZaC2JkAGPVmX?=
 =?us-ascii?Q?7jmgDuTvGVCNcezBlLhBlM4myW6KjDYTL9r1K4J55b0zluJ8OGYKn9lHSePn?=
 =?us-ascii?Q?zECi2AXEc4kQTRFKe4p0lyt/FR6lHR+oLn5j/shbL6g+0i+adcWCDDzg1F7S?=
 =?us-ascii?Q?Q0KW1IiXr0EtH3mz3thEWsYjRFO6sId3melFJdGYMuluCUu2PlDmzV8MJS3K?=
 =?us-ascii?Q?J/p61Rg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WjrRM/nEi5mPcNcIi/yIlY/lfcgoTLcJfLkl1RWvr0VFxFfhry7Gehb1htRa?=
 =?us-ascii?Q?rb8C8abyAJjN2jkcrR1gfsZS3ewBMh4RxG8SF9+TuZvZYfvhEabLLZDT8Ven?=
 =?us-ascii?Q?ZlXOtqP+shX3Oxf8556kdAwtHvKtCcKZBQ/iEMMe1WksZCDU/PEEh3bD5DbM?=
 =?us-ascii?Q?5E/drrl79LEAjZv5LFsV3gv/ZcWsiWIhzNBs5eWbL9pB2udMvsv2rzF9+8N7?=
 =?us-ascii?Q?wkqK7xzF5pR0Ub1wMKgBtQ3vUKbnavsOJi6jmgr/74PF9UD1w0/ejX0gcHLz?=
 =?us-ascii?Q?4K9ODaW/62NpRZGv+dfj1Nlm7tTh5Ngt03Q3nb87VRhC3JV8J6lfR2KpZpYT?=
 =?us-ascii?Q?oDYIMjxze58U5nLUdwbnZ+FX9sLW7u+3YzW9jcf32vB24dPd9+3hd/nnewvH?=
 =?us-ascii?Q?ZkVMLkYRxFpEA53Uxr7fjVp9v9uca5zwZCUXGTl0tQEBw9Zq7O0TvSSCxIKY?=
 =?us-ascii?Q?wRQ+ldwLK7/aSRCMrUKiyXq3DdkCtl+6KDt9QW8uUM0SsfDApB692Q+KS5Kc?=
 =?us-ascii?Q?zhwHl32v1A0G0xpwOBxVJFAGbQeNdiiBvYNhgbjiavjcd2bn95WWAHQomPCr?=
 =?us-ascii?Q?eXqdtQzMLKS5Brmj6DRPd4HDy2DrVQnNkG0yc8c8zv67RegNGgTW54uLY1MQ?=
 =?us-ascii?Q?aKidA9YgZrjuwF9CKVsAZNK2kuB4K6BkO6xsg5JgvEJOtMt3n8KntXMP9O6B?=
 =?us-ascii?Q?ztH1ZUhgFmc0HvjMmpXGXfTzH+oTka4ih6YpfCwVG7344cUePieQEXY1w6KK?=
 =?us-ascii?Q?2SIMtTrKwSIkIs3fowwDc9wgXw/0qwWb51tgjZlPWyVqBQC8OP/SoNR1Mplm?=
 =?us-ascii?Q?16XKHvzyvHrMItWGLstajzCnc7udEMA9e5fzvKgmfTaQ+v/xolkgV9WzWM7/?=
 =?us-ascii?Q?AP/TuK4x/r7ORnGEOaZ7iqb+j0GEGBJakkav0XOAj5Abx9/PXz/IJpvOa5bq?=
 =?us-ascii?Q?zZuW6wfMzSwONLVSXUg7x3B6OK5KZN4AoYSY4irNqGUFbzC2Ie2Sxlm1uInZ?=
 =?us-ascii?Q?DZUUcJ6NKK4jHH/N3Ns1a2YSn93X33AzN9FgdKHmhNDNBJ0Jv97FzkjTimfq?=
 =?us-ascii?Q?FRDIkv7/htV8ij8Y7yUJsjz8R+rtOPA8owxCNwzAeO7f+Z8DesBS6z7zUAxs?=
 =?us-ascii?Q?6DQnLrseZikBontmUYnvOvwj7Rt2Ncqs7SHe7p+frUpqMEzAnm6dcpzL+SvT?=
 =?us-ascii?Q?tso+XodHUgZ89VYAX+gVUrNhfDF/vVb3io5RMdDaHzO9GGKhYtn5Z3MzIiW/?=
 =?us-ascii?Q?eZXSsaLJmyt2HxhLzztihLAnjqSP9yZT2AZzYhMIne+7fPuYS2r+JbTuI52M?=
 =?us-ascii?Q?o3hVrv4DYAfKyOQj2hlmPGFV266TBYpWE1I7mrZ7yUDDSEikPnUq0MgeuSbz?=
 =?us-ascii?Q?FHE/YQmv+UAzebwGUiwfHhR1WHs5vKDoHBXMCkX+h+kdWZX49CCBxKfmDFN0?=
 =?us-ascii?Q?9bimOgwTMQElcxPRutxg4zXzDoVPmKIWkHaPtyoMExS3nUxPyF+ZmmoZ/kVX?=
 =?us-ascii?Q?3VWkTb4hT84jJ4FSYuQOVrdpmEPI3/9w2plHEBVDXhuSHuMwMpnTxiiWVAqK?=
 =?us-ascii?Q?mhlYaMti0IawCZwJg3he2ibEcLRT6pngcIUoYnwI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c99c5f24-82ac-416b-4455-08dc8909652d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 04:54:22.4625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TL0vAc/ZFziFuLWADpWO3CLas6dBpUe80ryROb/SSPsEjAMjtzP5aeVUkXPCRutN1Hq9/UcY8UAg3ZoqJ3ewcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8387
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

> Subject: Re: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
>=20
> On Thu, 06 Jun 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > To reach PC10 when PKG_C_LATENCY is configure we must do the following
> > things
> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > entered
> > 2) Allow PSR2 deep sleep when DC5 can be entered
> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> > not happening.
> >
> > WA: 16023497226
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 75
> > +++++++++++++++++++++++-
> >  1 file changed, 73 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 6fc88f6c6b26..b22745c019df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -811,12 +811,81 @@ static u8 psr_compute_idle_frames(struct
> intel_dp *intel_dp)
> >  	return idle_frames;
> >  }
> >
> > +static bool intel_psr_check_delayed_vblank_limit(struct drm_i915_priva=
te
> *i915,
> > +						 enum transcoder
> cpu_transcoder) {
> > +	return intel_de_read(i915,
> > +TRANS_SET_CONTEXT_LATENCY(cpu_transcoder)) >=3D 6;
>=20
Hi Jani,
Thanks for the reviews

> Please don't use the hardware to preserve the state for you. It will get =
really
> complicated to maintain.
>=20

Yes wanted to calculate the delayed vblank using the following way
Adjusted_mode->vblank_start - adjusted_mode->vblank_end
But I'll need crtc_state for that and I don't see a way of deriving it
Specially when this function is called from intel_psr_work
One way could be to have this wa check function be called from=20
Intel_psr_enable_locked and save the corresponding Booleans in
Intel_psr or make in  drm_i915_private
structure and access that when intel_psr_activate is called from
Intel_psr_resume and intel_psr_work.
Do you think that could be feasible ?

> > +}
> > +
> > +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private
> > +*i915) {
> > +	return intel_de_read(i915, LNL_PKG_C_LATENCY) =3D=3D U32_MAX;
>=20
> Ditto.
>=20

Similar question as above only place that I can manage a state to see if it=
 is configured or not
would be in drm_i915_private.

> > +}
> > +
> > +static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private
> > +*i915) {
> > +	struct intel_crtc *intel_crtc;
> > +	bool ret =3D true;
> > +
> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> > +		struct intel_encoder *encoder;
> > +		struct drm_crtc *crtc =3D &intel_crtc->base;
> > +		enum pipe pipe =3D intel_crtc->pipe;
> > +
> > +		if (!crtc->active)
> > +			continue;
> > +
> > +		if (!(i915->display.irq.de_irq_mask[pipe] &
> GEN8_PIPE_VBLANK))
>=20
> You have no business looking directly at that. It's for display irq code =
*only*.
>=20

Is there another way I can ensure if the vblank interrupt for the particula=
r pipe is disabled?

> > +			ret =3D false;
> > +
> > +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
> > +			struct intel_dp *intel_dp =3D enc_to_intel_dp(_encoder);
> > +			struct intel_psr *psr =3D &intel_dp->psr;
> > +
> > +			if (!psr->enabled)
> > +				ret =3D false;
> > +		}
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static bool wa_16023497226_check(struct intel_dp *intel_dp, bool
> > +psr1) {
> > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > +	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> > +
> > +	if (DISPLAY_VER(i915) !=3D 20)
> > +		return true;
> > +
> > +	if (is_dpkg_c_configured(i915)) {
> > +		if (psr1 &&
> > +		    (intel_psr_check_delayed_vblank_limit(i915,
> cpu_transcoder) ||
> > +		     intel_psr_is_dc5_entry_possible(i915)))
> > +			return true;
> > +		else if (!psr1 && is_dc5_entry_possible(i915))
> > +			return true;
> > +		else
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static bool hsw_activate_psr1(struct intel_dp *intel_dp)  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> >  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> >  	u32 max_sleep_time =3D 0x1f;
> > -	u32 val =3D EDP_PSR_ENABLE;
> > +	u32 val =3D 0;
> > +
> > +	/* WA: 16023497226*/
> > +	if (wa_16023497226_check(intel_dp, true)) {
> > +		val =3D EDP_PSR_ENABLE;
> > +	} else {
> > +		drm_dbg_kms(&dev_priv->drm, "PSR1 was not activated\n");
>=20
> Please add reason.
>=20
> > +		return false;
> > +	}
>=20
> Switch the condition around and use early return.
>=20

Sure will do.

Regards,
Suraj Kandpal
> >
> >  	val |=3D EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> > @@ -910,7 +979,9 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >  	u32 val =3D EDP_PSR2_ENABLE;
> >  	u32 psr_val =3D 0;
> >
> > -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	/* WA: 16023497226*/
> > +	if (wa_16023497226_check(intel_dp, false))
> > +		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> >  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
>=20
> --
> Jani Nikula, Intel
