Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CF754AD80
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 11:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA41A10F561;
	Tue, 14 Jun 2022 09:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9F910F561
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 09:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655199660; x=1686735660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4JFkCEWAVoIF++X135ZK4kqHPlArmUleltzRqTq9s0c=;
 b=f9785+rTVtwr02Zsgyts/1gXGOO5oySc7uawpiB4XXOahli1jwKba17A
 MgCX6Av/nDWhW83bDejVQo0ZihpV/AAbcLraCRvpUFr33vrOiMcJ1R7qK
 rSG3485JDUq0GVjW0TgKsDdXC6rtapoDuwy3efjqgaOkXD2Sj2WHaR2QA
 t/HpzDzHck2/C2mKYkM7R9GwprGRbABlJib8RqBI1td2fKtDSL2xdTcZm
 PZwWzz0IO7w6Opx4RjwiAd+WR36jOKlWxjtyGwiAAm4k0WFujJbFe8NHz
 sCZ4efa3Bv46ge0EBytd2AbrZAjIG/1qD9SXml9omW3WvtbuT+ne/vTdh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="340232276"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="340232276"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 02:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="651937026"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2022 02:40:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 02:40:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 02:40:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 02:40:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cV7RrR3hBdFP+xiJ5+pRpAl4bTLc3PnROrTWiu3r+fuh22eNGFIUbmWYTpDYLIAilPpZUrGXaHrpE+VtzfPdDRb35ueVXx7CUpgGmeadT86mAWGWJlSOMegzi2Yzujb4pJv6mN6JV+cSFWljUh4nw8uk0XX8bGBFOkMfip/4QecIB+A3fgHvhvZHdZC81wsD9mxFmZYg4NUTclRKojVTZRNIyVriKMhYv4qVzFTF+GB3aJAXhOuUAuSwY8+XoBGP/1bZvYqog3VdAomVE4q7GMVIUNghU543r/oicav2Z4PeQuvkjYDhRWxVaD6i3TMiBGz+IDVMMogZMPrteb9X3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IemxAQYSoC5e4SF0iir2qtwgkShCyGO/z2ecbvWvIXs=;
 b=RNuUiJpSMp4G1R4zhJ/swwtZt4OmuiyivP7I0gm6vfM1PlxDrPMwqmSWSSp5ToGjTURjNBlgLWCE6F/pPbvEePxTd6zwTrj3WQ0T9+6BXCYdf02vYdteozNurkgEuhMrqO/jB/upgbi2O9OlIk95fD2M1zc9ntd0kO2XpZjfdfIpnxsKYF/VA9JkYMttgcwWd4ggl4fVEFekon+L6vStVT8UGTO+JQEpBx3iUBZoplkApoGK162TIWlLlln3AEmuRzSkgcDVBihoeJbrFkMKZq22lo5QqSWXKNqsKb3Uajikhymm5NEl+yklgcNSrnDjk6nYl3tPjDzut5TYmgyexw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN8PR11MB3761.namprd11.prod.outlook.com (2603:10b6:408:85::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.16; Tue, 14 Jun 2022 09:40:55 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::2d3b:ec34:e4d:85fa]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::2d3b:ec34:e4d:85fa%7]) with mapi id 15.20.5332.020; Tue, 14 Jun 2022
 09:40:55 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYdW+H7anuRYhycESY77YMZjZ+IK1OurWw
Date: Tue, 14 Jun 2022 09:40:55 +0000
Message-ID: <DM6PR11MB3177953D8DE861A1622BBEF4BAAA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220601042411.3299122-1-arun.r.murthy@intel.com>
In-Reply-To: <20220601042411.3299122-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc299659-6533-40fd-3ad5-08da4de9fa8c
x-ms-traffictypediagnostic: BN8PR11MB3761:EE_
x-microsoft-antispam-prvs: <BN8PR11MB376191F146EA786790A5DCADBAAA9@BN8PR11MB3761.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3tcNi/7mnxcNzASWtIamA2dgu86A1LgRsk21lY/aZ3GA0JrXPRRss84X4wDnnmGkxNTV7E+ibCXKyVARGNS5eRY/L13JD1na/8R80TILlgDfMmPtBfJKbsYIWsjkWgg6mIKwrnnC212pEumUyIvGh2pmApmCipaSGaEcPrcihh7pAsVaFnb5Uyl4oY6B0cqWqvbFQvcml9qruevUR5c022OtvbzlPXtc4xHAyn5eqwIDgxfIp1FoQ9wiKdBACsaXJN/FzRGb1RmNaOxbUbvmPcBLk2nSNLrbHplf6SvrKfVYCAfABH7VYfy9En4LXcd9n8tUwkb3jOmbQeqxBW8vpC1NmLMc0tRA58pOiDPY0EjVGuQTLxoevxQOyXLEMSNnAyuVydYzBYOeDxGnk+kRdOXjSxlRd7FVMKtaPP0FkSqTgdU7tJcWTs42Nep7v9YZ5dDUHLATeIswcBhyAnQJoqSoxU+qsvZHCcDV54b7AwPUBjA6KXQUOMXprbRbPq4Dgqy+83siljBYW4XSlqE4zkk5KLxnWEX5cRb/zW8IC/xuI7CcJblWkLoYSbM6Cr/1RWNwc3R4tHudUgm6Aeu1zjYgXIpjp1OH0ZVFwSgjaZSDyArWf0/xzrL/bN0Xfl+njQ6cNVMxV01of33vTs662AtFQ7CwY6Ta1ME4f24rVI8csCjH684wvOPR6VV8/1183LgC+Z2MNdn9o6nKpmXcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(9686003)(186003)(26005)(316002)(33656002)(66446008)(83380400001)(55236004)(55016003)(53546011)(7696005)(6506007)(82960400001)(38100700002)(8936002)(508600001)(5660300002)(52536014)(54906003)(71200400001)(122000001)(6916009)(4326008)(2906002)(64756008)(66476007)(66946007)(86362001)(76116006)(8676002)(66556008)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bbby4iPluvagkP6Pil/3avVoEablkDGtCR2+WPLeoTS2L3N1qKoBdtSSglh3?=
 =?us-ascii?Q?rAf33MQXzBafBBBx/KSN884GjhWsJWMeCWU/Nqbvz+K10fHymxaaTMFnTB36?=
 =?us-ascii?Q?j60plUr7zEdiLR6VdJor4+vNTVLQ6PFBmW0wPk1n9iZDVkSjEB0lpznbaxjt?=
 =?us-ascii?Q?Lgqb3clBQ1KuDqZVxfuMZ4AYUoAQS++hvLdzx8kFEWCrgFcHjS/lJxnNdm8k?=
 =?us-ascii?Q?dLzDdNE3vfcXTvxBABi+teJhECTj5tewu5UnVuQhRgzsy6/cY11uvLxTeGix?=
 =?us-ascii?Q?kX2rfaSwC94mi0cXSbcq3+jpqhmzdJ4cqGhTo0DMNhWP9IdN/PR+K2yVxBgl?=
 =?us-ascii?Q?085hTLv56j1/SXepeL2TWlamsR789EcGQPTTLIDMhY4OpxRtQkqTet8dvymJ?=
 =?us-ascii?Q?S1iOM3ZGVphBeEjfdTtAmgmM7JUYxnopP9T7lN3iXmbE9zuCMsNAIfJh0POA?=
 =?us-ascii?Q?qRIHIXGx987h0WPh166fKtP2sOHz+pj9MBamxE0XRKl+i1KqlcEK0CtL/ijO?=
 =?us-ascii?Q?tul5lYgIIq5hgwWBXGfZIAXeZirdNp/1mTWi8XiwyP6I1SW1dUlOVvKgTXzz?=
 =?us-ascii?Q?UDYt11sHNscI2GVVTC47s1Ud+O1+rbP8M7cmPKw0XafDCj2WWGnXlkcG6WlQ?=
 =?us-ascii?Q?JVsHmZanz31NEkFaecbqFtacOj9kGJwFhvL7pOcFTvljScFTReVu2rMJfQsy?=
 =?us-ascii?Q?HH/+BOX5+ZtoCpyQJmoN52p8LUPV9ISND8C8wbRvKlFh1gejfkmzotpdQx1J?=
 =?us-ascii?Q?NaqWihgxMfgUIzocLpJeDM1kXX+E/0FKxev8R8b9omTrhX+D6Ud/XF3a4HyE?=
 =?us-ascii?Q?QAkaoUoCOcK8bWQfk6nKMMrAHSDHlo2ZeaczYcWW6BjGCVDmRPxLw+hzbMt9?=
 =?us-ascii?Q?PnVPp2iedyuPY/s+9WkscCe09PxrnUwi28Uf3vcFvOPnQIwwrM2NZLpceBIU?=
 =?us-ascii?Q?JKeo5YL5hRudJC8OPU95LiTCRcD0QG5hv4atlanAT9BHssY8IeJ6cuDoFbfI?=
 =?us-ascii?Q?RkjcBr0jHDQMs83G+XtjsTUB8Y/B0BPicX2O1rwc8a7AFItIp+bpzQbxJ6dp?=
 =?us-ascii?Q?RB/6zSoJZT8KvDNRfgA4UjmZ+dW3qxOqOJ6Zwt+AZROnZ1YqSp3Ng0gSL4k/?=
 =?us-ascii?Q?Eh7fXOfZxxAmn5tLUsJvozoXEgX3KxZiMvXrGL2GksZsTdxsVcjknjhYRyba?=
 =?us-ascii?Q?QnV2sGnLnGWaHrc/YlvgOfNWf1gykCDjVkmE8O7kxaLR3lPs1wDU1KUAQqYd?=
 =?us-ascii?Q?sGlTJkt1jxN7Ib7Cbs6e+9pK+HvdoeFxc2gKRi8aSQ6lIQE5hVzhZaMRkq2q?=
 =?us-ascii?Q?CPcO5+wJykJnZGoJf0WG6yE1WRLUfgluxEsQkYQbLmQPsACRvqo35XXGUxo+?=
 =?us-ascii?Q?dLBUeJUVDaIVV98Rti/R8AIHbMffeVPtmPSQ3D1z6V1WQ6TMwgFIl7WOlNxi?=
 =?us-ascii?Q?/Q/+cEPIp0TmxK8I1H5bO8YUq4QaidqOkjOO+ewZZe6gyldvoawlY5UWB5lJ?=
 =?us-ascii?Q?nn0wmSWssxAjTwaWIoehGHxXMGNrsSe9eC0P3ez+FcrnHZFnTBnE6ZZ9+EVL?=
 =?us-ascii?Q?WZehK/LCgxcnZsaokC0Zr+YZgD0IKhhdruqgLoJnGWUIku3SbXuK8i6KALnR?=
 =?us-ascii?Q?BtHd0u4ov9nSfNmfKXk5EndTPQiVN6KGHZFZ7aInwKgsVRwJYF4GI8Ao26nA?=
 =?us-ascii?Q?nvzs88wV/oNe7+tPEz+ngG+yee57/eVZPWV7p0nR/XM0yVhGPJEhThlQiTe9?=
 =?us-ascii?Q?b6v6EifA1w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc299659-6533-40fd-3ad5-08da4de9fa8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 09:40:55.2403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Go5v783WFm0G+Bl7ewFUejN77virUQgPwtURvyF3lk9BG+UcbxlVKJ6I58qPMRHAE064Bit4B+lg/ZMqN6QHvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support Async Flip on Linear
 buffers
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

Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Wednesday, June 1, 2022 9:54 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; B S, Karthik <karthik.b.s@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
>=20
> Starting from Gen12 Async Flip is supported on linear buffers.
> This patch enables support for async on linear buffer.
>=20
> UseCase: In Hybrid graphics, for harware unsupported pixel formats it wil=
l be
> converted to linear memory and then composed.
>=20
> v2: Added use case
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e71b69425309..da2df7239353 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7524,6 +7524,13 @@ static int intel_async_flip_check_hw(struct
> intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
> +			if (DISPLAY_VER(i915) < 12) {
> +				drm_dbg_kms(&i915->drm,
> +					"[PLANE:%d:%s] Modifier does not
> support async flips\n",
> +					plane->base.base.id, plane-
> >base.name);
> +				return -EINVAL;
> +			}
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> --
> 2.25.1

