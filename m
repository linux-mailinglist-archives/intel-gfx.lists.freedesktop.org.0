Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907709951C6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACA210E564;
	Tue,  8 Oct 2024 14:33:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AaLSaoVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5AB10E564;
 Tue,  8 Oct 2024 14:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728398035; x=1759934035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SqvbYDqx5yhydhAPXzv8AuQnVDyTWQ2KE0qiDm2NNPE=;
 b=AaLSaoVKHdhZLrdcu+7ytteHA5FZlEXcSxuH9qXKDd0sRW9VVZNkmdgG
 Up4PsGO+lL81FKDf2Xss93MwalFndg2K+wSg5d49R3PDDdZSuS63PUemM
 XMb1o7PPYhDzk+HCxYC2UR554IBvUo2eNqMy4qJYNUbuwDSHomowAM74H
 woUJ10dLyfzL1cnADJ2LOuvtG6wn1a3IySivndCV+5TmIo3E7A/1AUcXv
 QyA0vrUXPcKQ1ozT2sS2LgqF1q+ep3jdcZp4s305tpavTgBsHRw2dtB3v
 z00ytw3mhjO+Ij3NKFXqKK+VHSvrk0OikuomOJZ2X1+yGX806KcLtDu2s w==;
X-CSE-ConnectionGUID: xZEyP+CxSYOaINBYcPuUHA==
X-CSE-MsgGUID: TN/xgAjbSjCAFfqLTIoACg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38166419"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38166419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:33:53 -0700
X-CSE-ConnectionGUID: zFgPsrOxQWu1nS/u11grWA==
X-CSE-MsgGUID: CQXv1dlxRBa33p4X8LoG8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="80644989"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:33:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:33:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:33:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:33:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/cEDAGcAZgU7TRBZcfnNfFAXZqgXMv4UhkmMKJksok4rfyC2cwmz0uZZtBH0xryGbMIPR1I82zXdZo3h3Od4++ZEp0EEJ6OzJoSy82Ly7O9CSLBHPP1HI16ahCqX7XRPlVgwqiwuBQVjW+WEwhNbMbtdBf0jbHAI6YEZiRBeudFena2trlMlPO/+6Zv5mQqEl0wyVBbqjJ+cwBcjBuLcC3TqzsNkuKp3+Z4oQtoWgbTbEhRx+T/+JyuFdmXH5SJb1FLp1w7siQ/3TeDsIZTUIDoJM4fLj50rfidnPXwYTzQ6Xd0Hl78yZ8dYP9/o+CGXUbClvQ/ebJh9zxowZ4Ohw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJYX2xWHtTR6D5FREHKA4ykeB/yf42G6g0SzfwqYX58=;
 b=qjvNUUJ+B+50gcRu5ixr3Yv0KqLb29qLeK75Rl9mOFhbD30QNMdBgTFh8G+CAnM1tPpxSlv3FE57KaQsHM74PZxE8MV1cpMl5aVTyZTiPVXyeMv/cPe/9Qb/FLCQ0M/Pbm6kKVPzx7jwTji6i6JA4qALl/fsVYwcctIGG+5i+9CcL6TYt5ZE0xqU22U3fmS8GulrrvUVzG2B6ceoiu1f6y49we0/ljSOQlTnrTIGI+U4qC5VO/Rw6k4XJhPG3pbCWtRtdotFou/mihMlvI9BJ8WcYgIbz6/R6ytrAhpAcXSP5ZHGDG/tgU9GHFYpArlvkGej+gH4cytFLWZR4Tqnyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Tue, 8 Oct
 2024 14:33:46 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:33:44 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later
 runtime stages
Thread-Topic: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later
 runtime stages
Thread-Index: AQHbDsKGUJr4wi3Lx0e/E5fRIApvo7J9AHRQ
Date: Tue, 8 Oct 2024 14:33:44 +0000
Message-ID: <CH0PR11MB5444F44AB386CF712B3F0519E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-26-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-26-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MN0PR11MB6279:EE_
x-ms-office365-filtering-correlation-id: de115a90-2b7e-4ed6-2612-08dce7a63672
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?793Zj9DHqzSbC1UyDHJgv2qaThSz+6+qAnDdTY4PFBg62jiSNBSTEzjt+a+/?=
 =?us-ascii?Q?Hy9Z72aTF8zMUidRBrjIA65qoU47o8B+VAxpkUE8OJMBt+AESkD91ESbmglO?=
 =?us-ascii?Q?on5oq3sgJzz1l6NZjVsJEj21xs3XmVaxy/rZA8HORyFghuYHWJ8+eeeQeEcp?=
 =?us-ascii?Q?s6rfvktDxD8p/+vxooTV3RJX62fp3p9jxXS9/ViI89CA9eiLkrrBd1sU56r1?=
 =?us-ascii?Q?KRq0jxCbyh9Wscrh67c9VHA+scdk6OZOC8p9MhHCTt4a3tZU77M4hhSz6hZ6?=
 =?us-ascii?Q?mYKLPeurROP+j3G4HXsyVFjM+mCfOThbO7OsEvAxaiVDJ96pzcAhxzlZgm57?=
 =?us-ascii?Q?yRAnUgc8F56GvZKGTqUdko2bBgOq/xxLStlWKUMBbxrbndGPlaq7VnOQ1dwC?=
 =?us-ascii?Q?vFdix94Gq4k56EaXSbDCRG5BMqY7vmQJHlBNkxC+IHZqOIfrVVXP5Cs9j+UR?=
 =?us-ascii?Q?UHBQYYvhJ+KhyrxqRkgYAJvgEvfkYcNPYHgaq3AvGGUz7GOjvuxAonIxjsNV?=
 =?us-ascii?Q?ICt9kMX8eTIbRIfPjnW+G8kYBXYcDH6A81EAQJcl3xkwTdr4H4TZBk/tC5wZ?=
 =?us-ascii?Q?nKgOb6YCd0cr8zJHDo4RgeKTXbq48NAu5DFuXG4NRLO1DDXPFyhBaflVbJ+G?=
 =?us-ascii?Q?ludPVC6hvY7ENJKNuJ9quEA7eDFwqIS8HvS47h/0p3WqhfkIBvB+Tmgj1Haz?=
 =?us-ascii?Q?JzAg/CYeUeX2HvF8EEfLaMl30rsRxkTvlmGrzK3oJ9pqHiRuVF43LeDNWLql?=
 =?us-ascii?Q?JKgjUdmUSR6xBY+PwrkQOk7AdKIGHOoaQc2hJOSOIbWGjJ6e92FDC0s8zI8I?=
 =?us-ascii?Q?UQtqHzjhic9G/q4YEm0xlKrDzZNGUVkkZN7LA9C89kn8d0kQhW9/IIIi62ZF?=
 =?us-ascii?Q?6Afu4QskhqvgOIKcuchWSpswdo7YKF3r4e8TrM48uYFIiVt8ZwKe+ar9J7rr?=
 =?us-ascii?Q?mlVN+0xwyjvtgYtdTlHmfGGt8RYpip3CXuP/c0PTzqPVIvrfHOeiWv02XrOM?=
 =?us-ascii?Q?AOIPRLUdjL/keinFXzEXNYr72Mxhrb+MWR7poSVw2i2beSg7JMGxJFJx3No3?=
 =?us-ascii?Q?WxyCU/wFeYqF6rKb8zbJtfVOziGBi/TQYbIRmcJ4E+iTzsPPvWdSSzq/S2pA?=
 =?us-ascii?Q?m3qr6JMbK3d6B9YU2zuSv9AuUbof5wQSQw/XeXmLZkNbBmQE+y/HKKyteQBt?=
 =?us-ascii?Q?NY8nfqDxEI+ZwW2uK9OqfvoDKvArtaUM2WNnEYJwu7jWpyeK2/rgZy9CGspF?=
 =?us-ascii?Q?1q2CRgg+z/x2lancRgtx4uGa2u+gu/T1OfE1G5ho06EYT6W8WRZgBKbuVKBz?=
 =?us-ascii?Q?KZx/EU0kgQsqbwysvSqJJC5SXQan9qtm0oykbUBPLKXchg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bOVHggYybXi14HX6j1qldtALjHQ6kl5+yQbw0Yu84Xj7js37liOQTQIPlsS/?=
 =?us-ascii?Q?Q+HSQwU5AMWLJbcYdDlY9Zf8NWlUf3IEhJTjw7hQghAL6rW9/+W5HLqfe9g0?=
 =?us-ascii?Q?/d5evTusQZz1KaEqA3FDl0YKh7yUOUaU54kGl3kitxn1+mx2lAsKMUjg16OI?=
 =?us-ascii?Q?kt2wa9PTcMq04/QEdwOiE71P220bPUsvRe8BTEyvzKRANkk4iV/UeY6oQObO?=
 =?us-ascii?Q?V/xjpb0Wv7q9jHyYZxPcfcvZli4Aiqf1kngXjSiXTvhNeDzQCNh4Tb2y6BrT?=
 =?us-ascii?Q?RGMIPgVlFE2huRja99JAYg+Zn3rokiMTkxXa54D8gvR7bM3xsq8vS6aDwEsF?=
 =?us-ascii?Q?TmqF9aDYKUDzIwCa1Q8RPNSp0uU8/fv/Ca3jwLVFvrtlNV9JIIPq+48fx8Ag?=
 =?us-ascii?Q?B3az5OaCjBPw9P+orG386aqr3lnqHHbpqjJneFscHGHzCUM9ZCSXYTV09JvR?=
 =?us-ascii?Q?iIHOgnvKnhpZJzeHiNi/vleiK8EeOBP7S18Xk1LxpSh8Iix2GQcXwA4Ln36M?=
 =?us-ascii?Q?vGQZn+p3jTLG69tnkQfa08CMgY1+6e+o0ieq7XcbniIVXvmEJmmhoDsVEOYv?=
 =?us-ascii?Q?67HQIpEtb3hiS1CgfrwuQpGLG7qGwJBUfoBtUEiy37zMbxCoJrG/muUyJypj?=
 =?us-ascii?Q?jY/qlmdxa7kdIX2j93ZbmBpaoqMy57OSRnwoXXIJy+XbKd/1pEO8qxWPqKW3?=
 =?us-ascii?Q?qNp9jIPO+v1MP7/k8U3d+zKwrUMEOd85/mzLeDJnxqggFaS6lx1eQL38YjhL?=
 =?us-ascii?Q?Z1USvPGhd/XKCFhBXWYRxQuwjyEauKhD8g0w63xKu6+50iBzsf7RL5KKQMIz?=
 =?us-ascii?Q?ebaztkf4v4rR/RY1lteXkeQDrzXej/kgNa16+SmeWrfLPN2L9dVt+8tEp6mJ?=
 =?us-ascii?Q?SmC4CKMVaX25vkh2ZOnwbzpA0m8x6XdrCfa1aPWYe7y6gqQBP0Io04YzoYt4?=
 =?us-ascii?Q?IVNZAsx13r/0gJUhwZhoK373uZifEDXPdRONeGYA25r3275bAulkQRfWzoiC?=
 =?us-ascii?Q?2Kc5mSnKSDTnq3kikolIrP44w2nC/y4NhFCAdFYQMdGYN7B9z4DQBTZ/8e7Q?=
 =?us-ascii?Q?jFDooX++1TzPw5cK+CR1mqVGEFEYWIHi7k2y0JVdhwDAbWyDF1qG89ai/7rK?=
 =?us-ascii?Q?sTlKV71aGf0XfaoarkvKYOtYElafphp8obiNSgWQIGGGajExx+KmNsb26z1e?=
 =?us-ascii?Q?MKVhXSgu4+BUqZ3eYdyJmDi4Ck5OMMaYfizbUQI6kixwMwXM3frnspu084kO?=
 =?us-ascii?Q?2AI7LIbA3oHavEjLv9alTekQemjnqkRINJ2RQXaLkt96r+dii2MEVSZEtux+?=
 =?us-ascii?Q?eDYb/EiYhIg+teR4HyT+TURok9MpiBhH8dtfp493u7E9RV2m2rNBXkU0sSuI?=
 =?us-ascii?Q?JVPihSdbkOY7jAfplBc1F4wJmd7MSHMkEm2Ca31i2vh1LU6Ax3AVbR4WOpt+?=
 =?us-ascii?Q?yGJaRoEVObgwYPQ8J2jHsAq+ASdskvdRNyr6GnpTbSy1qiF9NKp4e48WPmoi?=
 =?us-ascii?Q?G4hdY6+gP8X9+P05esor6Iy7npeeFiaY9t46bSAJ+QE5w0R9Npyp1xtVkan/?=
 =?us-ascii?Q?j6VW/L24CiTS9rHTHqzK2fDrOq2CodjPkCgMvwwJ5YGCjs1+hMsHnPwX5SjH?=
 =?us-ascii?Q?ig=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de115a90-2b7e-4ed6-2612-08dce7a63672
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:33:44.3201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s5tDqqT0swSsEcv5k5quKVv/T8sa4IwUBtHSDqRI/NDNyE0FkIbNYh0Ag/A3O7CErshY/q2yhLmb/3JsHREdJhjGGNedE/HvNyY4mkoUyJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later runtime=
 stages
>=20
> Align placement of HDP poll calls with i915.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 4d1dd5294b89..c758874a9059 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -437,8 +437,6 @@ void xe_display_pm_runtime_suspend(struct xe_device *=
xe)
> =20
>  	if (xe->d3cold.allowed)
>  		xe_display_to_d3cold(xe);
> -
> -	intel_hpd_poll_enable(xe);
>  }
> =20
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> @@ -448,6 +446,8 @@ void xe_display_pm_runtime_suspend_late(struct xe_dev=
ice *xe)
> =20
>  	if (xe->d3cold.allowed)
>  		intel_display_power_suspend_late(xe, false);
> +
> +	intel_hpd_poll_enable(xe);
>  }
> =20
>  void xe_display_pm_runtime_resume_early(struct xe_device *xe)
> @@ -464,12 +464,11 @@ void xe_display_pm_runtime_resume(struct xe_device =
*xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_hpd_poll_disable(xe);
> -
>  	if (xe->d3cold.allowed)
>  		xe_display_from_d3cold(xe);
> =20
>  	intel_hpd_init(xe);
> +	intel_hpd_poll_disable(xe);
>  }
> =20
>  static void display_device_remove(struct drm_device *dev, void *arg)
> --=20
> 2.46.0
>=20
>=20
