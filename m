Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3ED995259
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B880810E56C;
	Tue,  8 Oct 2024 14:50:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQJWMy+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105EC10E568;
 Tue,  8 Oct 2024 14:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728399019; x=1759935019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DT8gL938ERQXUo7zCo7O86frUTuzHwps0lTy66EteDg=;
 b=GQJWMy+OP5TWWP4wEt/G0+GFNAwE5bB3mt7b9kbEZovdb3UE/OxZXqWF
 TwSAIs/PwdtWsbfLGM3gojxpZ752G6AESgHKDk6muk0inOa5yv3Etk6Wq
 4bk1T7eNSRsBgeCntmGTvdeH0orRZSQFVfBtlAIcE9T7McBhkpizfDU1K
 ot/v8j+aV6d/KQgDkHcqwQiAo3jfi3iX+/vw8S0LYPyaWkTb4IiDFtqB2
 DOsys0gb6Av0vSRQTeQg8OCVhf+ZnNyOpg+9BgIPCL5nuXoOs4qxRX9ae
 /G38kCqz9Jg7QRzes0//jVE4NJB+hRLUjM8TG9lArQjBs1Vo3q/vduln0 Q==;
X-CSE-ConnectionGUID: dy4ZDiIGSTmXg3J5P3UdgQ==
X-CSE-MsgGUID: VDHQCJVbTr2ojr2m1THq+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31386804"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="31386804"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:50:11 -0700
X-CSE-ConnectionGUID: a6ADKe3cSAi0v1HPOyssAA==
X-CSE-MsgGUID: UXFpp5a1TFqGg7UwKP7Rrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75539841"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:50:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:50:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:50:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:50:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q/xjy4NZI8JiOJUlzWr8FBAp9ldBKaHKwirQ48E9cZ/Tc4MIBHIG0MprTE0qzaFoBR7pjvPz4F1EcA1sfXHKUmbPZPw3Qgf65q2ae2yxKHhk/CJt5Z7TPjI4YiOljS6wta2fZR121L/0f3KS71/xwjYWj1IPnpTo1w65gQpeGJqOEdQmgmbCMERaZXmnT8sMet/q6v94xX9sHbBkb8yEefaA0/m+gt3ErsXr9Jlw1vfiVgSOTRxHAh+PEM7rg7bbQMEkdw3RMlHicjr3t7Bkelb75ATq0SK5V1tPIMLtKoe/dZ8GrhK/W2froztXTBKL5Cqq8yI9hmm3nzwguguU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2F7IPcU7U5RKUFz7KHz2BZHkhDDxu0XTN98tt+moitI=;
 b=eN+CN5sNEU1UfMxoxN7/p8sjou9uPOAZT1fh7+glIjr8vUjeh3pN8hmzrffe4YALuDKQ3B3/JvM4BeNqiuSRR9j1E//deTM3v+3+3mzZPweEgQy/X0ZJhcPVEEbuZOoHiCeoIyPmHgyczTMFGAPQig/sj5meMsY1v5QAs9vRnccQGZsHBTIbQVhAK2bEDTejIYBycHoaqJ+zVGfYy3ZDiufqC2agsVsW4+we4ffEOomEaotq0AE9R9WntOGabX24j1pFkTiHiuJN31IkpGWVaWp6JqhrMKlzslcDAnpGpXHdPeD6gTTncvXRp5q9N/tlF8iZrx4XZUCosTFEsKon6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB8068.namprd11.prod.outlook.com (2603:10b6:806:2e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Tue, 8 Oct
 2024 14:50:08 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:50:08 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 29/31] drm/xe/display: Kill crtc commit flush
Thread-Topic: [PATCH 29/31] drm/xe/display: Kill crtc commit flush
Thread-Index: AQHbDsKViXP9aMIFUE6qMgOqkJ9AmLJ9AfCQ
Date: Tue, 8 Oct 2024 14:50:08 +0000
Message-ID: <CH0PR11MB544437F9774986662253A070E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-30-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-30-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB8068:EE_
x-ms-office365-filtering-correlation-id: e0ea3fd6-5786-4749-72ea-08dce7a880c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GWwcGIKiOuPkzQq62OvmZJIcSgpjrgGZGweycK3YXA16HREg7pjrGNaqVTmZ?=
 =?us-ascii?Q?JLZRJ0/o0WKg+oW5sY/gSztwJaBK3ABB+qubN6j1Xr7t0QiGmvC94ICqxhp9?=
 =?us-ascii?Q?RGiUYa+Fh4rNr8IoyywsUJb7m/6H9CDtZfFNmFHFj6kn7FfiD7gUhKVm3uEy?=
 =?us-ascii?Q?iEg41iotbhA+66bTiSiCGy3MIgXMU2vN4gOCferBwUBUWkuY4scPz8GLKa0U?=
 =?us-ascii?Q?wnsKv9l4Ylik6kfmGZ7sHX4QYTL2faGbNub2ltcMmLi+47Pqxh1eABj8/f5G?=
 =?us-ascii?Q?79MVu61TCYXaQwZyL2HrK3/sVQBsfpLGSUYlyTOpMoFTkW9VmXGx1LH1YKqA?=
 =?us-ascii?Q?dsnrFEZig72+C0cPv8YOnEXS4TiczbzoP+fniaWJs9hbCpT0HWxSWeDyXGrX?=
 =?us-ascii?Q?mFElSUoghViEczjkYLuZ//YTGMe/xISfbzD8NTpvHJItKEJObwBEjwb2iyL1?=
 =?us-ascii?Q?WcxqxPgSuJoeU6PF1K6ubPadMdZUcq8dCgpzr0rNNIxvEE9qJ2WIEboq+Wz/?=
 =?us-ascii?Q?ZV9fmat0zqHOk6ARRVijZhHt4/+BCSQiGrSPvPAnc1kbBH4drk1Bn0+TgFzG?=
 =?us-ascii?Q?lBVUPVjHhwHyrkAfft/zVGdPzH19hC1x0R7Qz1V3YG99u2w7MsXAen99ksN1?=
 =?us-ascii?Q?Pa7+7xJH0UymPtCZxvit+t6iJuQvvq3LLtStC1DxVv0YPXDik3GcFiXFlEBl?=
 =?us-ascii?Q?W1EOxn3pZKTwwg44FekZd5Xw3X5BysAe/RXwffh9LTJUEgM2PGyW0MfttzkG?=
 =?us-ascii?Q?Pjo8yvipAZbLnky4vNIlO62ya6e6GONvkoqgnOlLwPDcyfWFHXf7zg7r3ULN?=
 =?us-ascii?Q?OviGFki+GGjtQWlnKwbhS/+6wzOcRaj2w0ZJxLDV9Zhtu+2YdnBvP/CPOPqC?=
 =?us-ascii?Q?DUOyUftuO2iN4xd7q4/9R2Rw/j3ymt1QKtf0zWgk0p8LVobGu5Nafj800HkH?=
 =?us-ascii?Q?5JHxrLVdKtuAp1a8lGldDUEFTylcTuYV3rVfBBnkTkf8+ZZbxJRFwJidJqIP?=
 =?us-ascii?Q?F9TM4nqbvebCxHC0Qbmmll3ErDA8rqKQgnD68SfhShh3m1t2ihOb8naCs8dZ?=
 =?us-ascii?Q?k5Wq3uibIcjQtuUckyMwXHyl8BDdxwamia72iYp7fcyNpupelKTf9iE9jWmg?=
 =?us-ascii?Q?3g3UEskgfMVmI1HLygf/su3l6wcKsB1J7mdJxC/MofVZJawPPofIAZ5oSXI7?=
 =?us-ascii?Q?+9SwRuWluWoKGNVwSB5926qRQqzC1VTjDgu/rXF0o/QLj0GH23syxNMHVKF0?=
 =?us-ascii?Q?8TQgp5l1ElGTZIBhtiQwkRf8KLaJQmipFYP60ZE2stKlUDV3zZzKpBpmz7gD?=
 =?us-ascii?Q?FV/7dBSo22PZ8qWuFnca2OSbjaBLIC6lkekFYVA0WAtxHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uSLCjKJVbI4yV0nFG5kXVx4qY3W5wfF3MKrWZ3ZIeoFFGPrqk6wEz/o16Myj?=
 =?us-ascii?Q?UsPXelAhGK4GgFakFmaEr7FvTZJL7MLJY4RuUJaX2avjoRic+EBNQkXzG8Tr?=
 =?us-ascii?Q?RiV39QZLDYPCIvMCsG2uwUFaOE1F0Q6iY5mH7TJ9mi0MPFoq5FPY5O6y5Kh1?=
 =?us-ascii?Q?r8DrwtKF+aR7yR3kU447zSd/LFIVg7TDbZ5M2+pJhuxW66o7gHZ8FlOPL58z?=
 =?us-ascii?Q?X/65JezvOaCNjHI/eR42+OZ3uCTjfbHfD73tikvGsFYas+L+6m/vNygJHirc?=
 =?us-ascii?Q?m00FEJAZulHeAti73k8u8YY7h5PHaVnG4aZqgiSFfvmJKfGe5kQOJ7lWG26u?=
 =?us-ascii?Q?dlpdTqVFwYDqlo2ExR5ElkvErQQMFzldxzEpRWMsjJFiTEeD2VJ2DIZo/EUV?=
 =?us-ascii?Q?KL3qMifOFMu05puZicVkBIvyQmumhluQXf6XhbGMER7qa9DXQr8DHwTgkgld?=
 =?us-ascii?Q?NQlMmeEu9K/w1/+9lVUG4HGZVNJysy8N1Nncr16NggMEQXS0Vw8f5ZD3nIbv?=
 =?us-ascii?Q?E2tKSi1otfgzkE8Y4sSZQ+sxQt3xsKsJnKFfYqthrkmhVs9+MzBcj7LgQA+7?=
 =?us-ascii?Q?v2TqHZdo/vYStF4TSgun6qFY1l22fXk0RKKHSDPacVMATA+7GknPVVrSZXlm?=
 =?us-ascii?Q?Xj8LF88ImX6aQM383I5lQGINV4G5AXm+qCWQs0BrDQhAe8BNqH33hGZuVp06?=
 =?us-ascii?Q?MCNMV9WM1EIx/Sn9GOn9lmZw/BblkS6tckZm5/HiRNrKUwrHx6yUStcGTjX7?=
 =?us-ascii?Q?T36/rqz4+XRbPKdoHVOzZnuRpS1dR3BXzQ7yyd6U1oTm4wA6ABoSoGjTwnE0?=
 =?us-ascii?Q?QeqROfcATJ7PNWgSRnSZlspl8yQDgdxAJIoK2EC34UO7A5ECKuueV77TwEWq?=
 =?us-ascii?Q?8hXpMuxHftMsqBwmTd0vNWt34PZzx525tjTLUOUKnmrv/r5qJR0Hbwb0rxDs?=
 =?us-ascii?Q?6jGhDGuApaflL2K3AhHwL2EQNfY0YaaASbtuD8V0vgXQhIhcvYx9qz9Z8ZoA?=
 =?us-ascii?Q?vZcwpVa9Oq0Ms1hdvbzWzrkgrR3kz0vj0bSvYGzcO2otTrYueXw2pCZxHHmw?=
 =?us-ascii?Q?eZCelrBotcW2OWsoDhYmwIMQ3sX8T9D6uKbGthDym7jen0XhKO5g4VZWcfQo?=
 =?us-ascii?Q?CE+Kvh53S8pitWwxYXKdNzR+SeuMRd8OQymUWZQSoXS/ylivT7Fp11e0rkuS?=
 =?us-ascii?Q?Rfm4KmF+VXOstmFMBCekLwrgKiMRzh4thSpy3fi8khdbk2F0ITrcwIE0Vup7?=
 =?us-ascii?Q?tSzjytIg5G64Jk/hN+aHjvC5ubsfnQkG6m6T80VqHlXanXJSfJwTF1zkXYyH?=
 =?us-ascii?Q?F9g9wa8DNyG9EOlS8BZuv9kx0Mfs9arFkF+7gPV3vqlbYXTsAYA34C936Xs7?=
 =?us-ascii?Q?CnkRO6PkWz+si4K0SmEbBe9RpL2XuPaxiXf1FujLZ3ZccpV6/L1SdkFtORiI?=
 =?us-ascii?Q?GQuAWPYc6tfY1w80scS5101hlaylql8HcG52JRM3nt0z7LvCXYXfFmbVghHo?=
 =?us-ascii?Q?6GtHkjjvYptY6AzCQS4SqF/Oi4fjeShlnreX2TdqaFHbO7jwRhVGjFrvsKBZ?=
 =?us-ascii?Q?PpTKVP8OkpNEiwPqOIpbwBygdtio3qIMQpBsXJVoU4d62QiI1seJSKKe3yzt?=
 =?us-ascii?Q?cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0ea3fd6-5786-4749-72ea-08dce7a880c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:50:08.0213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOgNpebR2MEfEHiJ1trf+3S95vNhe/+YzdQcjVJcMu001WQXElsCfqocf8GNeHektpcBAbHI16fkkFlT9rkltWTSYdZibBoUaZUL9pvO9Cg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8068
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
Subject: [PATCH 29/31] drm/xe/display: Kill crtc commit flush
>=20
> This flush was needed in regular suspend cases in the past.
> After the clean-up and reconciliation with the i915 it was
> not needed anymore and removed. However this remained here
> in the runtime suspend path.
>=20
> However, the runtime pm flow ensures that there won't be any
> flying or pending crtc commit when the runtime_suspend is
> called. So this is not needed here. Clean it up.
>=20

LGTM, though maybe the commit message could use some
refactoring.  Something like:

"""
xe_display_flush_cleanup_work was originally needed for
regular suspend cases.  After the clean-up and reconciliation
with the i915, however, it was no longer needed and removed.
Despite this, the function remained as a part of the runtime
suspend path.

Since the runtime pm flow ensures that there won't be any
flying or pending crtc commits when the runtime_suspend
is called, calling xe_display_flush_cleanup_work here is no
longer necessary.  With no other use cases, this function
can safely be removed.
"""

Just a suggestion.  Not blocking.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 23 -----------------------
>  1 file changed, 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 780c8d7f392d..23bdd8904c44 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -283,27 +283,6 @@ static bool suspend_to_idle(void)
>  	return false;
>  }
> =20
> -static void xe_display_flush_cleanup_work(struct xe_device *xe)
> -{
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(&xe->drm, crtc) {
> -		struct drm_crtc_commit *commit;
> -
> -		spin_lock(&crtc->base.commit_lock);
> -		commit =3D list_first_entry_or_null(&crtc->base.commit_list,
> -						  struct drm_crtc_commit, commit_entry);
> -		if (commit)
> -			drm_crtc_commit_get(commit);
> -		spin_unlock(&crtc->base.commit_lock);
> -
> -		if (commit) {
> -			wait_for_completion(&commit->cleanup_done);
> -			drm_crtc_commit_put(commit);
> -		}
> -	}
> -}
> -
>  static void xe_display_to_d3cold(struct xe_device *xe)
>  {
>  	struct intel_display *display =3D &xe->display;
> @@ -311,8 +290,6 @@ static void xe_display_to_d3cold(struct xe_device *xe=
)
>  	/* We do a lot of poking in a lot of registers, make sure they work pro=
perly. */
>  	intel_power_domains_disable(xe);
> =20
> -	xe_display_flush_cleanup_work(xe);
> -
>  	intel_hpd_cancel_work(xe);
> =20
>  	intel_opregion_suspend(display, PCI_D3cold);
> --=20
> 2.46.0
>=20
>=20
