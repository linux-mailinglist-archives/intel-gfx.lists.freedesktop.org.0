Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DB7931FA8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 06:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E441410E56A;
	Tue, 16 Jul 2024 04:22:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpBFxK7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B37210E56A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 04:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721103740; x=1752639740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PXSObvTFlHyOitTZnhhKXLnyDzu9EbwPZi+hqFfXoxU=;
 b=UpBFxK7ELUFmo2262wKNNSFWkO+/vc8a/MTx87CsnCxOfTG3mu9Z6RRC
 VkpklF588zrQmdBYT1BBv+vBr8W7tc5uq7TYxXA3i3ZS5RGjmruqoln3Y
 m6utMFviS4nRGD+iztmqmTt/qqdILpJ2yIm3Mxk9FLG+2rkDTiYky3YqA
 gfGrkiuyrAx4klfjMy2Qw3MHTegi3LlTvV/hUT4/85h4WHq5tv84zNIeK
 70/vH0xz3ojsARLCZzAGhacCy4NvEjEtNVvh1bH+yiJQxg1ku2LFiwJEo
 okpDXoqOZrft41FzzYl2BnFtmb7ORGl5zW4H6h5LNTwPp09LIWHGAYEzY g==;
X-CSE-ConnectionGUID: 2LVOIVQZQOuoK/ezvCrurw==
X-CSE-MsgGUID: PPmNfn0XQgupZczPa2M9fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18130560"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18130560"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 21:22:20 -0700
X-CSE-ConnectionGUID: IqYPWEMPRAqFjey6TxDLZQ==
X-CSE-MsgGUID: rsyafVnwQrq/fHYVoW3PVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="49798780"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 21:22:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 21:22:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 21:22:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 21:22:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vbI29WfTDSMPIbeq6Tc/xGFvWXiHpdJAECOlMxYt/tXtfteLz6myeNB/NqbaLbY1SAyYM1pUOzvC/DmhE5gkcncCvghkq2HaJcozVWreZSuAIs2fnkLkhxXGsOM9+k8JZHWVIQWH/gHCxnHxiseZ0YDjIhPTdEu1TFWOELObNiKkfM4/KntdIwMpzBmeEPBrtQ/6WffhltJpaaeBKIUSb0yibEoi7/NaKFaP/llceC5AO/DG08mHpyylMvZIYGdR6lAj7sfrByofQ8k2/iZJ1l3vrT+bnzqBdR9sj6fsDpnKKCLVwVohYihgZ5IXmrLl/Rqx4UtoDB+3b94wDnKQKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOAgmIMkzFUeyaqDI4t1HD9z9u9I+aq5HP/4OLZWdGs=;
 b=JpIe7tyi3i7JK5cwfzpAIl2yEFfmo8da2Ld8TdcgUjX5Wc4JCpc/gLxcijWLDUBgrclm7A7YOUv+Yoz0XmrFAYaVv6W3imAN1RLVnKXbJ+BgB9dpr6tTtuZuvTVCyqVWuDW9HzrxaEBd6AVROZvHC4VYfhYLWzfVfOh/7JQiaQUsB5/4R9dJF7YIGuRHP6sqbIby0KdR502t1BU7glWeZVUeIfTknFVPNtHOp9GSt9BUSv4GTt3wXUhsepG5s28ZaY6hAAHpWDltRonVoKr4+4fa1x5tCnkUn2/B8KOjMaC4H7otlbKqn02IRea8j/7Npa1+idC9nBdgdaba2VWmiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM6PR11MB4547.namprd11.prod.outlook.com (2603:10b6:5:2a1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 16 Jul
 2024 04:22:17 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Tue, 16 Jul 2024
 04:22:17 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 08/10] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
Thread-Topic: [PATCH 08/10] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
Thread-Index: AQHa0a/R6D/7StKEnEuYA7C7DW2apLH4y/hA
Date: Tue, 16 Jul 2024 04:22:17 +0000
Message-ID: <IA1PR11MB63482132F796D2F08DDF794BB2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240709032651.1824185-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM6PR11MB4547:EE_
x-ms-office365-filtering-correlation-id: 3d58c221-e28d-423c-6259-08dca54ee066
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iAL/cBAmWXXj5iTIMQiW8NNinWlC/SfKESL+bbraCpKZ0fRYI4oG/a6HHWSG?=
 =?us-ascii?Q?vw08aioyH5sFrt04YBxtIo8lCtDBzwv91WF9omcgzwE08Ian4lHPR4UQQF/k?=
 =?us-ascii?Q?q3pnP0I4u84SYbr9y7x+VbFd1OJfMn905ysjzN7BWgnHaCKn8/mTtSiRY2oV?=
 =?us-ascii?Q?Ku/ryDDuADv+I6y+/MxDY1xVbOFE6Lbf5/A82yOAeGoXk+Begvd6EW2YaydC?=
 =?us-ascii?Q?1tjSRKu4L7pulVDMqzf6R+b4sRyDz5bqTdOMtMhlpjGfvj1mMYfyU7l9y+/T?=
 =?us-ascii?Q?GchgQegPNxhfdv71mVZpDsKn+H4kNPHviaJIv5L/QePeXZBDgGs6XC9uxF6m?=
 =?us-ascii?Q?2e2PJFoHrBDXdFsZ0EA5n4mK+il81O8tUkPtVNeKH+NtxRLwtcTGZhjIXSRV?=
 =?us-ascii?Q?36+YRDcINegDOn3vDohJIq6Fm4/pudbmP2dneavEMbnDZlNtPJWaycxtDGzc?=
 =?us-ascii?Q?T1os3kDK8Geq0wxoIUcpO6S27WHXEQHJqWWvMbrBdUfrS5jEK+QYAIa0gPU+?=
 =?us-ascii?Q?JlLCwx3Wh6Y2CAkhYPfaKt4NX6BMraWZL+W0T5YriFc1ab1iCC/5xMrBIhsb?=
 =?us-ascii?Q?xTRl0xtIbIKSvQw0VHbqNcNCu66oNW3vt7PdIy7uIlFgo0a5r3qbOASarmbB?=
 =?us-ascii?Q?BkTv4zAPfs4FRDNNK3n7/LH6S3xQLSDy8IEw9rvcBuMgElOwRzUOGQ7GgLmZ?=
 =?us-ascii?Q?/uDp6XPVIfi20XDWHS/AkvdIXw6g5YNIVjv1WWFCwfdjOKX5HmdOs1R5JtEV?=
 =?us-ascii?Q?U7mcCtwsm+p/83V4e882SJGba4xbEHWrrhB1n7wSLy7jwQO1frznqqE1Q+L/?=
 =?us-ascii?Q?nEyRl/BUue65eBFyP364mHv8ucldsI3UYuHPfbCbsu4z+OO+n6RBcZVlgB9+?=
 =?us-ascii?Q?ZDJu6COeLiBU0wUJBm/JmB7d7uW5fQEeMKlJ0MOM2Kl3fwKOC6+KR1AtvQZl?=
 =?us-ascii?Q?ZFCGUp3ADNq5XHA4/Sp+CZBT3ijvkDpbv5m/VAh1BUm3twZ0HMnmAHtPioYH?=
 =?us-ascii?Q?6vGftealE6m34GdZtmrrpLVZHhcXvdslCOEjEr2IPPxDsTy9AcFwzTOei6q1?=
 =?us-ascii?Q?E8LFkvqWRiX+8Ven2+ZR0hlPWpchUXMhsfSoLdvsKf/vtGc3zIRsuCHcH6YA?=
 =?us-ascii?Q?ExleFkb0h3KaBbH4pr9X0V69F1myS/xkgUuqw23tgKDUR3/E6xp5vr50nODx?=
 =?us-ascii?Q?xlzvk6dPf692dtVarW35USGK5NGPHPD2KfxBkzEymQm3hhV4hIvaPp8GId4w?=
 =?us-ascii?Q?+GXrfyMkytuODoHSTY9/ifwZPjwHs47K1XsE2NDLcxwjdQyHzeeKXnhDGWD9?=
 =?us-ascii?Q?YaWVIupbypGRf9JsQkL+q0npSRMn06mmvX7Z4JWs//m9gLHGT5fSR2a/Zkfm?=
 =?us-ascii?Q?Ez742n+wpozhQwxfQKGEjAoUvHp1EZ2iX09NBTfSeCP6DV2pIA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QD6XQb4Mh7LXWXaWhVXr60JfoAxHdskNHN1jtMlfLUF+VTCLUmk2EaDgZSyo?=
 =?us-ascii?Q?cmFGESEIflw0ka+AT196FSUgAdR8/mIaa3j2Pzv2+r66QNGwXVZiQy311FoK?=
 =?us-ascii?Q?RFrszqC/vhYnPkrenlil0aU0nH9g8d3pANth0B94R6sbDJvd2bxOFQ/9bSBb?=
 =?us-ascii?Q?80XLBtL0Ho2pcnZTZbnHeX0Qgi2NiEGGSA4HFcRDmwFAoe5ChLRHU9Zhryn9?=
 =?us-ascii?Q?w5fm8Mcj1FJZYRHMpBHOtdX596Lx7YQGegOcJV47iamJsVE3GI2IheSawpLK?=
 =?us-ascii?Q?T0f9b07o7FlvgkCe0oq+t13F7582xZNAfn39quSNeDHpXeZPIN+nrk7GpeX2?=
 =?us-ascii?Q?hjaE0xrrecLUAvq51X3dU8Qkya5PSz+wzAhNJgmb+qc4xWzuTCEiE+WwcRkT?=
 =?us-ascii?Q?+YRAehTStFzDLuvAct+bBUuXd9Jzwuf22NJaOzykmxjsvHTKCSO1gSPrx2Wr?=
 =?us-ascii?Q?gv4xWVrXEI78ZUgwWzkFXk0DvYKkghfkYeRsxi2anbGOw7pUBulNsRVNlp97?=
 =?us-ascii?Q?7LcXMSDIYUp7gPVcMCSyirI+nRbNBNpnN6Goi3ZggUAlxckh1WVrPyP5WNid?=
 =?us-ascii?Q?nFbiPi/euZ/evuWzRPJP6hJY5w7Vd4NDAP2/vKMjx97Au+zHIYb2WswXk6s8?=
 =?us-ascii?Q?l6Xt3rTYzd5ySl4sHpQu/gDMSam5Q3pfu2x+dyD0KgOPKdwldEMYJz1zbw2T?=
 =?us-ascii?Q?ToFx1lkMyl1u3sb0+D3A3KpE8f5OPcNzM/0D3eV/jC1s3htBeygLYFh9U4is?=
 =?us-ascii?Q?w0zZ96Lm8YpxltI8nfs4BuBE2LOiwTkgAWPIX+tWjA+25+wi+pXlYOF9Nwo3?=
 =?us-ascii?Q?8ZBP0X/9rQt5Pc7B09VCuCfZJoYIujR38yxn74xrNHUOLSbHQXI90QDUNDdr?=
 =?us-ascii?Q?4HUHCraWIcfiemxx24VkqxKTIzdBV7Lc72rv5fND45I2yka6ZVE4VSf3bSTy?=
 =?us-ascii?Q?Wf2b258xJzaOvgGqMoA/agkj/qXzfkbUdXhZc6vCn+vdIsCS9biTHlllauhh?=
 =?us-ascii?Q?eOdNDsKxAN4PJcoDqR6xQ/OJjYptlJy1RBg45ueo1yREfS0Wk+kjPU4kBM6E?=
 =?us-ascii?Q?43NOaaw3QegRPwFsBzmDTFDrtdD/y8/22j5YIc29XyMIPSUFqlYiD0tDqJ/K?=
 =?us-ascii?Q?45ZE1kcCLaHnr7lR5kG8toFomM/w2ilswNYpd98MGJJ5bperpRDdwVwzk+wV?=
 =?us-ascii?Q?tv3DI9r1w6NqJFbS6KnqgWhxGcjz9GHFrx3gtIjesHgDWbnsZ8tE2QZTPblH?=
 =?us-ascii?Q?W4nhE4lLBFkZFTI8QJFUKfQnxu+1zVVA1dnZO9381PW6HkGXn8I9vS3slTro?=
 =?us-ascii?Q?Q/A7e7eO6WgpDghckt0DKt1PO41POuLnfjnrBCySFn78Gu7pYaCK+CfjNHmm?=
 =?us-ascii?Q?NvBI2Cb1WjpJjt9w5CBX1kqVCgbPP0RSoNjPNmVvB5MJVB1QdTw4ZsYSoSkt?=
 =?us-ascii?Q?Tv8OuauqJhnDka+cIccofphvHwTHeU4zzz3HaJIIgste/eFhmHTgALQx8IAC?=
 =?us-ascii?Q?P3NGUx6BIR3KAVuZS5ph4XCrdpHMYbSo/Cz4PyF5hVYy9/ewyNRHXSAn7lOB?=
 =?us-ascii?Q?EQH8xgezk1dIVRW1IbzgbN4NNzhxX9BkbWjrMGCRjotKQdpgJTJHkMGlnm+w?=
 =?us-ascii?Q?WZnQzJ5ed2IyRAF8akKb6P4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d58c221-e28d-423c-6259-08dca54ee066
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 04:22:17.0144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XQtClx2TK99UpjFakcuasQ45ohbos52qJ8f6ycy6VXYESNXatN/7eUxRKm4B9WnNXYXMz3rl/eN081yHLUz0CJTWzq+8zDb54nOdjvW41WCm9OAk6bQX6tIreEZXs9m8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4547
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, July 9, 2024 8:57 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 08/10] drm/i915/vrr: Avoid sending PUSH when VRR TG is us=
ed
> with Fixed refresh rate
>=20
> As per Bspec:68925: Push enable must be set if not configuring for a fixe=
d
> refresh rate (i.e Vmin =3D=3D Flipline =3D=3D Vmax is not true).
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 43b772f91556..43ade1c24784 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -316,7 +316,7 @@ void intel_vrr_send_push(const struct intel_crtc_stat=
e
> *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>  		return;
>=20
>  	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), @@
> -329,7 +329,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_stat=
e
> *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>  		return false;
>=20
>  	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv,
> cpu_transcoder)) & TRANS_PUSH_SEND; @@ -343,8 +343,9 @@ void
> intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>=20
> -	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	if (!crtc_state->vrr.fixed_rr)
> +		intel_de_write(dev_priv, TRANS_PUSH(dev_priv,
> cpu_transcoder),
> +			       TRANS_PUSH_EN);
>=20

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	if (HAS_AS_SDP(dev_priv))
>  		intel_de_write(dev_priv,
> --
> 2.40.1

