Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3998B06CC
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 12:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838AF1139C7;
	Wed, 24 Apr 2024 10:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eG0k7e24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8821139C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713952920; x=1745488920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ii3YqBREJWh+w5jb+Ahm01kAVQNR3edLY3i0KxnBoGM=;
 b=eG0k7e24yZPHrSPSJJH/im5U0qgOHuWzG1Y4zN+VXc/EkbJUklOjcgjm
 kxgriVRQvpr6OogHbhfp+39EEoF0FHs6CMPCtPbhaEOD+Dw6dnt1ZW70a
 INg5tMCc48XFg+ZofVAP/DSmYUS2eV1eB+I1QqSoW4FcbQ6k4FXhEe/rY
 JBePIJI1BlP7W3CU5jnS1Nl1OthpvKzBNT+6W5pl1bDVhLu7uAZEsYsex
 6h/OB8vVQrTxNRyiDjYv5UOyBP+4YqIu3rUVeWzRSwueWqpw723ynHt4L
 VLDoNbAAzlCXAd+piNv1SuEef1qMNOENRwicQAZKIPVuT8y/RddCRjgZk w==;
X-CSE-ConnectionGUID: Gw2T1m5IS6OkWWwwLKEWcw==
X-CSE-MsgGUID: +DzNFWveT0uikzqLf2vTYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13365638"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13365638"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 03:01:59 -0700
X-CSE-ConnectionGUID: xdgyK7jFTZ6vmHSsVKqG8g==
X-CSE-MsgGUID: KS3lqxmlRlCeYfUTikzcQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29309537"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 03:01:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 03:01:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 03:01:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 03:01:58 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 03:01:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egx8QnHE2X6Eq/KiZ70diMYNtLtrak2bVrT8odjnQGi+GGvz+bMIZRBVH+muKiF4IqhZkQWXy/YCVzQHi2nIsVDpdFQclfo5YDGoMafnT2G0EqJwpk10O3j3jlQTiiEbbmTzPYTiEdIXDA/aq3TJjMGPaVgy1Ze1cb0sB+g2CSyu0frWstWRTsdZDFUDOXw5shd6+GaNAmaPpsPCbOZ32q3YxCcdpIYl1Q1yudBAVQUkECAgpOVOAX7zf1W/lnj2dZnJdDsnhR7vDa636h84jG7+Ol8LfL2yZFfxlC4AlqUMoqlEe4RGw1Nf6Ow9Fx140FukT/Q0aqIL122BUPiNRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtv8EGCeaX0Q1mCVfeTcN37M7DbYwPA7Ewg8m/dALaQ=;
 b=NUuAUTXsaRqUnQ1XawX2s6IoWXgLk1cDkA3MOw7WbyTHo1H6aIPi9EJm/Tb4lZx2nmAPKjejOg0MIt1TcRu+PBqT11DBk4dSx56R+u40FvgORSKdEkBQWgNZs2CrSyjwOi/Cvx0B13mcqWY+fjRIEdxGqRCkqPvI7QnkjWWxrrJKOFnpLdXp37LZRlYr9Bb7Eoit3pKsDRoPH5+iyYSEO/weIkcsrDIS2HEJE8V+EOOzPfRAhIOkxaE/VDzvzmIrRktNlpjRy9hGeL07t+pLJbuQrWZe9rhsw85/l0QgrM+P5DOIuGYEgjp9UaI4y7+mYX9lfbwzUCntaP2WzFb4kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB6867.namprd11.prod.outlook.com (2603:10b6:930:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Wed, 24 Apr
 2024 10:01:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 10:01:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [RFC 0/3] Enable darkscreen detection
Thread-Topic: [RFC 0/3] Enable darkscreen detection
Thread-Index: AQHalhrZXC3sQ4QnZUOzrhPVJrLTQbF3LPgAgAACt4A=
Date: Wed, 24 Apr 2024 10:01:56 +0000
Message-ID: <SN7PR11MB67500F12177E489B8BCA6CEFE3102@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
 <87a5ljqef9.fsf@intel.com>
In-Reply-To: <87a5ljqef9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB6867:EE_
x-ms-office365-filtering-correlation-id: 4894e521-4396-4c96-f76e-08dc644592fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?UlgD2ZblyXKrVd8qyQt+7q3do9UDUEb5+4qKj6Lhf1+oe9YNBgGetQp5CnM6?=
 =?us-ascii?Q?/VAw+Xp3g1Yrqq+mQQQr8W4r0tQ984r4jJcNWMylTEs3gqBhwr9YnR/rytyH?=
 =?us-ascii?Q?cj1uVIFBeIu9LDU796oAnA/4TLDwvGrw0rprVzVioZs3r/KAJiKWHJ6wy9+y?=
 =?us-ascii?Q?bEAmdvQKgVfjw4fZP1XGlBwTCZ7l98MhxnUyYMdtbgck8R+fwPewTmImhOi4?=
 =?us-ascii?Q?4nVop+7y2JpC7HIIq/5YZt4b4d72S4z0GwJDTZ+n647arBLdBLOCsCmZ9HGQ?=
 =?us-ascii?Q?Hs8e0i8Hw7pDIwGbELtVXRU/BAoqhpMZyiwybACF/7NLL+Zhx7InICtZWI7B?=
 =?us-ascii?Q?QwvHACCOZ//S+qf5vtia9lws70L8Bnx5ivwIspV/o1oU4btnG67Hc980phSa?=
 =?us-ascii?Q?+qM6nxEmI+3Q7g+R+z5BAkmet38RbG3iu7KvxirDZnE0XpZ6cXLHoZX5SHi8?=
 =?us-ascii?Q?Dnx7VrsnQWCCrL86uHZmXS1zC9Ozy40Dcj5EE2YxskNvASEsYyxE9GfFuMpd?=
 =?us-ascii?Q?yXODijVdgujg2yK48M2j6ospQmne74iMwkHtkjz4JJ++HBXopAKJbuXZUS4V?=
 =?us-ascii?Q?3FYOIxexQQgg+h4b+TySLkwfSCyLPCHcEAkLddQJKJVvY+Mxy/0uqen+623G?=
 =?us-ascii?Q?IsiWu5vZMlWX+geBELhe7HDyhJVzL9HAOarM6FvTpC8+WURMZd5fbdCks/EF?=
 =?us-ascii?Q?bRyIpYESJutf2kDpq2Yiv4L3Bc5fCF7/DZdMI4y8Llw75gHsLFEGaJPH8Hc4?=
 =?us-ascii?Q?9OY4H37M2tjfpWj997QFSdiH/a1mp34qYcybeNMfwXWWd7if9IUBGKxTAYrk?=
 =?us-ascii?Q?a9kyrb/iefFnuuWAa4TKpi5S3O7ypG3OFoeuxA4AB0KN2EprinA0Qbh15ZD4?=
 =?us-ascii?Q?le04LXJBOzJzUMg8frQHEQgznH1MU+9V2YpgXRd1S4q1AEKRagx2/7f+GbBE?=
 =?us-ascii?Q?npv2eHliwheNdioRBQkW8YILMQp0R/ZASg/oITL2n2+5ClukfrOGxwBXIRs4?=
 =?us-ascii?Q?e2/ikIDrzHRehC+t8AV+aqFvGR5912f0bLGQGbviCvPYd3APygdsLqQnpZ3m?=
 =?us-ascii?Q?g5AyJNSPPp8AxKpcqAGge3ssT5yAcsZxUbxnrq1dRZ0XzPkKPjDq5MjqkDay?=
 =?us-ascii?Q?4O6Xuv/dnLM3BVs1duKbnNUD6ji8Xv6lDcf/zoQIldaLZODVbKq1X10KXfCx?=
 =?us-ascii?Q?/yL7k2UlgPgxEpHCxPGYfDuxOC4X9wWvKKxFr/GqMm4Bs3QFoWv1V+TItZuy?=
 =?us-ascii?Q?2yY46zF937/WMSu4xNrsuxe3fnUagElV6vf8WmCH1R5BdRRMzZvWyUwRP8Z7?=
 =?us-ascii?Q?iJd+XXvzcnMbSOdNNkPCFiosxABRIhYrwQ3dKcVWzvezsQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IH6TZ2eyax5YJPX+pPp7L8W3Q7+AXJhizm8EMWGqUDYM6175VIOjiGmYyxA0?=
 =?us-ascii?Q?5RJLyrBKwg8tulr5DvFxyVJDOAlRT20bs1ZxGlWDraMBRti6i6kY2NGdlnzQ?=
 =?us-ascii?Q?M3BXCM2WlDhAWh1dAJ6LUL7ruIWvaKA3q0AYx76jcZF8dO6ePH5SOvNsm3E0?=
 =?us-ascii?Q?D/dxnLt4CJuj3BkFvhmgMM8fojZTVsfwvYILGHimmAcK5x6CRu/jQjG/6Ha0?=
 =?us-ascii?Q?2D/UOQ0rfILLAV53EmUDmGKEiPjN2cAkGX7kGMjIQY30UOx4Zg0yfcAEu9RH?=
 =?us-ascii?Q?Gj39DiB29lbASrGTYfJthap3zyCBbdi5C+KsIcSTsyjKH7oYMIi5w8QvZBlq?=
 =?us-ascii?Q?n7/644b4JYSPeE43bXdnTTpP4uP4Fueb73yBo2f/M+U3Ly5YMiFkoLICMaME?=
 =?us-ascii?Q?kfbsyKYknsWo/jGiXKwW3ZLblT0OCwx9SZn+TBZpkv6ecYTHdsE7M+mrS7nf?=
 =?us-ascii?Q?HPy8rUwBGLBpJv6XX+5aECGfhOAglcpkClBotgS3y2HLPUwXtanMVn3t090X?=
 =?us-ascii?Q?3cUArMvGtknPAC5zLIJLZ2w7OuhSURG5Qs82V76q3z0ika8ijQ5bERqudOcE?=
 =?us-ascii?Q?NL+35Tciy70OZqlW/GG3qOLgAPHVXryMCjjVJzyyph4x4elR3b7sAaLLAKKy?=
 =?us-ascii?Q?NqBzI0jci2dG/ly3TRjY7H1FBxzBYE+eHJkgHapkTQMNYWR60+CkZeIt1E6Q?=
 =?us-ascii?Q?WmU4z3ESs3xRnRZ69HTbOlbawR3iJ5F35VhaAb9YCtgEksgnLQZENZEigiXD?=
 =?us-ascii?Q?dodmwXWEZanIbcXJDetW3LgAKOPxvz89hxAEV65MDlWkS2wlekGGfE+vYEwR?=
 =?us-ascii?Q?Q7YCW5HoCSIQE/zPueI08gWZjMYDh5ayyppfBPQ/s90cV0BCeojkX7fqvP0H?=
 =?us-ascii?Q?I3B+oWujk2lNmmwjpMx75f9c6R6VoQsOV9RyUCQoijMGB1AFrr4BdpEdGkAS?=
 =?us-ascii?Q?hZ4wE8hz1URQtHoX8ugJEcrlXOczl63GKi2+yGxEruVMuhy5o/0SWytFSp27?=
 =?us-ascii?Q?l+qdEynkoqUVUu2QlMsgnmU4kb6+lvB6r8sx+NScv6/RmEZjxHCzWZ43Zjwj?=
 =?us-ascii?Q?AXtUYxay4H5mG+p5gjKgU9t+sieFprwfAsrSJmTjScLL1TAG6d5bnIw6Yq5b?=
 =?us-ascii?Q?OV5IETagEawoVOoR5Vrvo5jwUZd9nJEZzR7eviB8fogUEuBnHyQGbEpONDeV?=
 =?us-ascii?Q?rkKqX3+uJP+dBlWKuc8cAcA2hSySJZ6RNerOFs2PbYdw9wH0ue6j4Kj/V4P3?=
 =?us-ascii?Q?8vzqetZZGLg1Q2cw9yvLfJCC1yx7Y1P62saaYfqLzyH4I8zSACa7QmAAuX1+?=
 =?us-ascii?Q?yeQ3AfN3q8KDHOcPGlXi5mXIzjBSwTH7chbRpHHOsFvSn7CD/fPPH0KZUDrr?=
 =?us-ascii?Q?dUxM2Pmyvb7iaXlPvVMvrMLWOVjZ0zI3A4EUrXG1CRNxOU1F7GHzfJyJJEpx?=
 =?us-ascii?Q?Od3aFuV6hEVbPGe3ku8+CpKfZbjnX8wNxZl1873Jlu19Du4kJSWpnDkvoZ9N?=
 =?us-ascii?Q?lcSFkfj7M8G+aV+dDT/PXcHoZ0qON6m3a9NvcQO7adEV3RyefWot8znnFQsJ?=
 =?us-ascii?Q?8MAPqjGOpckLfpu/eTbO6RsKyKzGX4/QXnh5szy1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4894e521-4396-4c96-f76e-08dc644592fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 10:01:56.1230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gDwjOe7tyrm8vY53sF5ARsVmacQUfQW4oMvmKgehlgcHyjuJ5A0nuImfi0FO9HEZmbU53NlHWxjqIA21zQ04ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6867
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, April 24, 2024 3:19 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [RFC 0/3] Enable darkscreen detection
>=20
> On Wed, 24 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Fifo underrun can lead to flicker, screen corruption and blank screen
> > in case of pipe hang.
> > This patch series aims to enable dark screen detection whenever FIFO
> > underruns are hit and in case we face a darkscreen at this point
> > instead of disabling irq and fbc we want to try reset the pipe on
> > which the underrun has occured and keep a track on the number of times
> > underrun occurs post reset and if this persists more than 5 times we
> > go ahead and reset the whole display. If this still persists we then
> > fallback to disabling irq and the fb.
> > To summarize we are using the dark screen detction feature to detect
> > the pipe hung scenario of FIFO underrun. After detection as corrective
> > measurements following is done.
> > 1)pipe reset
> > 2)display reset
> > Comments on this design and ideas on how else this can be implemented
> > or diffrent scenarios dark screen detection can be used are also
> > welcome.
>=20
> I don't know what the above has to do with the patches posted. Please don=
't
> send this raw patches even as RFC. If you only want to discuss, let's dis=
cuss,
> but in this case the patches were a distraction, sorry.
>=20
> One of the big opens is that AFAICT this still detects desired black scre=
en as
> dark screen, and flags it as a problem. Now, the patches do only log some=
thing
> to dmesg, so it's neither here or there, but if you want to do something =
more
> clever, this is a consideration.
>=20

Hi Jani,
The patches posted were a little clean up of the work we already have and w=
ant to move forward from here.
This was posted to initiate a discussion if using this dark screen detectio=
n can we reset a pipe or display based on what was written on the cover let=
ter
.So yes we do want to replace the simple print and do a pipe reset whenever=
 darkscreen is detected during FIFO underrun.
Wanted to have a consent if that would be okay before going ahead and putti=
ng efforts on that.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > Suraj Kandpal (3):
> >   drm/i915: Add Dark screen detection registers
> >   drm/i915/darkscreen: Enable darkscreen detection
> >   drm/i915: Schedule darkscreen detection work
> >
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  .../gpu/drm/i915/display/intel_darkscreen.c   | 139 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_darkscreen.h   |  25 ++++
> >  .../drm/i915/display/intel_display_types.h    |   3 +
> >  .../drm/i915/display/intel_fifo_underrun.c    |   2 +
> >  drivers/gpu/drm/i915/i915_reg.h               |   8 +
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  7 files changed, 179 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>=20
> --
> Jani Nikula, Intel
