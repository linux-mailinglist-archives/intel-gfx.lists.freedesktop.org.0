Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884AB8D1595
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 09:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9608610E59B;
	Tue, 28 May 2024 07:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZAk15tB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90AE810E3BE;
 Tue, 28 May 2024 07:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716883004; x=1748419004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5X7A+AoTqh5EUTKCg/blckid17F3fIYd3wciA6jQhIU=;
 b=YZAk15tBzyOOfsns0oMktwKq5mU4BuT+SGe01Heq7ugFiROr6QDTYZjX
 wXKm9X2EisGOfa/TeIiDNnPS5Wpt1+zgjXJd7wuhGAq5atN4sMa/PBnMM
 lcifiBVHdZ+nDEmupUBwfuUnmNQts6GkDqQQRxXuI0VLJMdRVd5erR369
 DpEKZafgv0AykmqlTceP7CT8ziteD0TGwFEHvgpLag0Zxew6vV9yR6WEd
 ukQGozh79w5iFS5MlUyurjprFlewb5bILvtLa1ovquLTbHZ08r/ywKwPu
 Ed/KFv1BJEpC1TO4nyq+BNMdfq0hmkp8DHXomasa4A09qdxQrq4XD0SNa Q==;
X-CSE-ConnectionGUID: ZQwgGF5AQTOzFrU+lYmyHA==
X-CSE-MsgGUID: n4sTDdjARziue9gcAMXx1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13398871"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13398871"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:56:43 -0700
X-CSE-ConnectionGUID: aqHkns43RR6Ey7yKk6wIAw==
X-CSE-MsgGUID: WKRoXSwQQyi+3kkXdiujFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39954518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 00:56:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:56:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 00:56:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 00:56:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbrZdppC1JwiPc5tcYi9noWDobicWjYhoWExG70jzVlOGm0pxUn+S261PRez2gFhQzNH8kM6Jtw1a+CZNvXpkN+AiKlp1wYA9MwJs/52Pl0Rf+4GPIM2SY5YCUQqoW7qz7HmAy1nwkPeaW0Z8HtyCv0hARBS/z0oSYBx0S1m+2A3n/3UuMV1g+tA7AJN1M6xTdJBvBss6lakr5L1PoK8zN/1F0S5ZUwqcIIph/kvXp/zkOOzKFwUG7V1Pnj6qaZpdnwjNk4HM1PgmLI0TKfbUPUdEWPRCYy7tPfE75jwToK16gltEtw2TxNdqwHYJhCTQKpMP+wzU8E4SPoqG7bQBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGsElokbLB5rVjlAhofDF6TkyFfnYzo3UwJTWwDTsDE=;
 b=YBKBlo2LZxq205+tuz6ftQseXhTHMUZ6Umfpa5YkrcTrT3fhD4s7hjpp0rGlw5+gDLT4FSGRh+5i3ikuDEFJ7Q3y2h32BQc6ea6Ar6Us7FNpR4Hf8J7wAmiYEfMNNkreySA8FnUoEONz/SNq8aPuO6OP2iKt5/XN24SzLkEJsE3boe8D/HNREBnZpp4jz69JSxwfZY6NRw8OH3ImLhzFbMvN1egJbpDqYSr2P6yvtPAyp1ccrgdOqM7Q87qvDhvBwzAs8S5QIdmZFzePVkkvD2QRXEeQoScfebKUxVG5Rna6wcFlC294YJMlxC/DdPDWM/KYd+tK8542FGZT8OflPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB6936.namprd11.prod.outlook.com (2603:10b6:303:226::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 07:56:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 07:56:39 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [v6 3/3] drm/i915: Use the same vblank worker for atomic unpin
Thread-Topic: [v6 3/3] drm/i915: Use the same vblank worker for atomic unpin
Thread-Index: AQHarAma+3jWmQ5gbUqFlTJ8iozi4bGsUKlw
Date: Tue, 28 May 2024 07:56:39 +0000
Message-ID: <DM4PR11MB63607A7BDB73311F8EC0FD48F4F12@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
 <20240522053341.137592-4-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-4-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB6936:EE_
x-ms-office365-filtering-correlation-id: 8220a647-c041-4bba-7179-08dc7eebb4cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?s0/wdP4D/N89tUTcDdUj1Z6ewg3/l/5hev9eBeKzgHhnp2I4rRYgmqAzCCXu?=
 =?us-ascii?Q?n83KY/M0SlES5BkIh1YPDND8iKhilEWP2VyU4I3iLY+HbbO6PDNAWgoMolws?=
 =?us-ascii?Q?mVJdWPb+Uphn9TDbz7xOl/Q5HlaVSBvhNMaDcxUM68MG1h+dSUGQULDtGfE8?=
 =?us-ascii?Q?oGsHkrIEMuotWCmdktEMR3dX4qiVxnKJNksKnJMWDMSz1mdkknOmU8PwnqLd?=
 =?us-ascii?Q?aI9YIEYaZoNpkuWXBT4ItJdZqBZHdvzxvjD1c+DnnuZVeGE6ifFZItIbyOFJ?=
 =?us-ascii?Q?1zeoPsMS8/uuUMWK9rfTY+8JIl08w2RZjtoDGSBSPe9ZvuiyFlHnQq4H1cQy?=
 =?us-ascii?Q?/qEsFWl4XeDQGIVz+a4GV5JZQ2lmMr2IQFTldYV/8eC/r9C5/0mWVhqxveMn?=
 =?us-ascii?Q?uznNARijWWuj4YSPzmGazzAlH/wQzcGzATGF6EN/IAS9Exq1g67hB8JDWvIi?=
 =?us-ascii?Q?8mJ2HewfeW/lP2t+6/6kukALsyCuCMmBXElHpEzkBdmk0doYGe3HFXkrmbJk?=
 =?us-ascii?Q?1tDKmak98v1k0gseq0Xsu1YaTIgDVENiMF5bqYjaXv93a76qpq8cq9+tGck0?=
 =?us-ascii?Q?RsLJWD7pEeanRNDWqhwTcHEhHM3V2ldswvXE6XocCepclHdTJikjqJMUwSqS?=
 =?us-ascii?Q?ygBqD+64YiqWShuyNrAr8/muN5YDfEz3ARmKvv3ChydgUhMkCwdrq5/9LEaE?=
 =?us-ascii?Q?YxZSsXw2dy8lTS5ldu5qvWAhiygYRAwMpL+WKoNOuVN8tWuHaRfE/vXr0mBa?=
 =?us-ascii?Q?CME+nbYiLTR3az2Fl+iZsFYst3WvNmHrpGGLv478/36djTYCNeSZOX074HcA?=
 =?us-ascii?Q?dNHKctTdn4FqLnfQqqrA0G0kv9I8KqLVCABczTOM6v1W8GtzEHEZFBc16vEL?=
 =?us-ascii?Q?owXMKE6Oyv2jxS7Fg1epVAya2LSXxzkEmp2eP7kdD63GD0Ljs0WgfvbJ+39S?=
 =?us-ascii?Q?Z0d6uHeDVAlK2WaOJYBgqyyCMYIeEoJ/sGD9wDxcRmQuJr/rg3W3BDw5fBHH?=
 =?us-ascii?Q?PMF6S4QiWZtEciWPaADxqAHKz/zLFkUBBvqkGqC7aGdlyIooCJ0x4e9TNJ2W?=
 =?us-ascii?Q?ocBmFCzSSn2LSfIo/AqJk+KYpB7EtdEChTq1/ZvKewe0gRsXumWN9eymQjK1?=
 =?us-ascii?Q?fU9dIWUy2vPUhJtnHh1aWf6nxOjigJ3FbLWKXBhdcirgT1Kv2R7OMlTGB3uH?=
 =?us-ascii?Q?r4MI7TE6jx6/35NGLJH8nCZ+4cwbQNttgZJw0b+LAJB0NjbXWRbq32T0Otzk?=
 =?us-ascii?Q?g2dH31i0xrGTLeoltgxpjwKoupq1/bVHlmWxSo62cpnWTHDUfvaf13P8vOx0?=
 =?us-ascii?Q?VBe4Y4+IGowN2YKa81lCPyOw/a7iUTrxO6EwDDrSsnUGqg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?USHD1C3i3jvpvRfOx8OA/t7Uc4Ff10Bfw2jMeNoXy776kgRl1+PgJIR4YejV?=
 =?us-ascii?Q?9fonsYvogscI9DGKuZk4VP22hHgUuYqqMTlTZoHnzXBzPta8ERzAEG9OTJQZ?=
 =?us-ascii?Q?YbYf9rOLp02q3YnXBnkD377BazdRN00W4KFE0GsNDXaolrtlfYk+OYHPivZc?=
 =?us-ascii?Q?jtQgN26iZPZ2oMysToVYaOsWFS98tLLdu3A4MHJK6a/BrG+71IUstjx+exWA?=
 =?us-ascii?Q?B8rUtH81EMPIdrY/PpLqAwuepmDIx5xdCpMAewN9Ir1ENj3q34+aREGc7EEa?=
 =?us-ascii?Q?gNZ+kRRI1NTNv7LrF2z7300kuhxXj3X8PiL9fsRf66vxjJtptQgS0sCbMsw1?=
 =?us-ascii?Q?FeDdkgT7Qx4BPeeIY9+Z0Y7PAAFnR/0S4474ydEIOmjKbnjCuO6rwi7XLdO3?=
 =?us-ascii?Q?HhfoTRuanaXxykxl8/zhi8ZsIS3YeL7/SY+1IkGBNTAAnQ+StfIpnZ5fW/kI?=
 =?us-ascii?Q?kEsvOudgJM68gMvSJjZ2sN6kQUM9UggZc/3cQU5Zjue1ery4w3XZ5gkhCWxX?=
 =?us-ascii?Q?MrP3RvCG4Wt5iKxVCWRe1f+mkKinGJGHpi0PaFddjf8oP7eFxwG4ce19u6cs?=
 =?us-ascii?Q?Yvc4wZCnFLyquTFQm4hvtxzKEU6ejdC6znR85Js8Q4eRfUKK8BEJW6m49wqf?=
 =?us-ascii?Q?sLjwDDd2oID9HBYAJaE4Y21JfXsDmcnvupm8GXFCNfsC/F6QsrPidyrZqRQR?=
 =?us-ascii?Q?1prE4s3LisrA/+B3h4S3T7FkMjLsFnAEcFHi08rzLFX6bEE1BZbQrdBGcHIQ?=
 =?us-ascii?Q?TU5+aSOd1jmm8AcmkWP3ejJwUiLA2lYDxyyVlMtWcr4zFRFSK2MHKWHSNPLd?=
 =?us-ascii?Q?PN7umisVenFWtYvKv8ycDe2gRhAk+gGrTaiyT3cA3S1YCUSmIdoN+4GyMx/I?=
 =?us-ascii?Q?aLmnyuE27Hz3kG3eOl82WqYBfGNiSkUkJsDBc30wafySrLpGuZBws+RKNv8A?=
 =?us-ascii?Q?7gdPGlOCgNAbr9MLlbKaEFGCNcKDwJN3qenbfJiMkr9DEAJ1wAJEmYgoMAZb?=
 =?us-ascii?Q?WJd6v8X100HTkr12tC8wtHSsA6d0C7Wk1GZQOGO/ZVHygzK/h8/3596M/VlJ?=
 =?us-ascii?Q?nFyROBy2TcpoOHnbRFGE0Xy6ViGoUREUSYFI/Onquw3pmHX6ewdxfY1HX5lu?=
 =?us-ascii?Q?3D+amw2RabHaxtYFy43jKB0z2YW34ImOUjgSnbnpW16sv0lBXmdGbJqwq7yB?=
 =?us-ascii?Q?Qd7d9Hol5bbqkdtUDIPlcrqX4GGlgmXQQqmE7zkTkMq1EWXWC4/QHkukQ5OF?=
 =?us-ascii?Q?L2Jtmb/7lwBU8GSzGAdUvjo9Hrf4ko1AvAz1uyvfzi+YnZ/1P6hCHKxQAtib?=
 =?us-ascii?Q?iSb/gxDJ6m1j8b/5ORIk4fjwzpJbhXeFZ8JDPKyGEA7tlpnbKGN2k9djBKjV?=
 =?us-ascii?Q?F8SlCDSL06p0Mn/oYL8VMw2TmY6yVyQFFQ7kLy5upuECO71FgRA2mvTAby0u?=
 =?us-ascii?Q?UWvZWAINXJIqG6gmbYa9HpeLB04gYhFSFW9lKYEhThA67CZmI6YiWTHQMzL7?=
 =?us-ascii?Q?xI2gwnVi6FC41BkrV4NgZHuqul+TIUaZu+pQfuVl6FrYWFjWvBXWFvr/KUTQ?=
 =?us-ascii?Q?eyBdHuzVc0aYyqMmjEYDIHHRZ4r6KqNfPEWH1PBE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8220a647-c041-4bba-7179-08dc7eebb4cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 07:56:39.5393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q/GWYLMVppi0rGuVOofaJZdl9P9Ay3qP+Agc+wWDUUwkrlNjaeuVhjenqC8HF8CkEBMzuR9dPTJxP2qGnLK5nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6936
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, May 22, 2024 11:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com>
> Subject: [v6 3/3] drm/i915: Use the same vblank worker for atomic unpin
>=20
> In case of legacy cursor update, the cursor VMA needs to be unpinned only=
 after
> vblank. This exceeds the lifetime of the whole atomic commit.
>=20
> Any trick I attempted to keep the atomic commit alive didn't work, as
> drm_atomic_helper_setup_commit() force throttles on any old commit that
> wasn't cleaned up.
>=20
> The only option remaining is to remove the plane from the atomic commit, =
and
> use the same path as the legacy cursor update to clean the state after vb=
lank.
>=20
> Changes since previous version:
> - Call the memset for plane state immediately when scheduling vblank,
>   this prevents a use-after-free in cursor cleanup.

Have checked and followed the changes along with testing the same with
Chaitanya. This looks good now.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++-
> .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
>  5 files changed, 49 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 27224ecdc94c..a06c676c9bb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -42,6 +42,7 @@
>  #include "i915_reg.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_cdclk.h"
> +#include "intel_cursor.h"
>  #include "intel_display_rps.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> @@ -1188,7 +1189,6 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
>=20
>  	intel_display_rps_mark_interactive(dev_priv, state, false);
>=20
> -	/* Should only be called after a successful intel_prepare_plane_fb()! *=
/
>  	intel_plane_unpin_fb(old_plane_state);
>  }
>=20
> @@ -1201,3 +1201,14 @@ void intel_plane_helper_add(struct intel_plane
> *plane)  {
>  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);  }
> +
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state
> *old_plane_state,
> +					 struct intel_plane_state
> *new_plane_state) {
> +	if (!old_plane_state->ggtt_vma ||
> +	    old_plane_state->ggtt_vma =3D=3D new_plane_state->ggtt_vma)
> +		return;
> +
> +	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state-
> >uapi.crtc,
> +			     intel_cursor_unpin_work);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index e7a0699f17c8..4c2031fc3504 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -67,5 +67,7 @@ void intel_plane_set_invisible(struct intel_crtc_state
> *crtc_state,
>  			       struct intel_plane_state *plane_state);  void
> intel_plane_helper_add(struct intel_plane *plane);  bool
> intel_plane_needs_physical(struct intel_plane *plane);
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state
> *old_plane_state,
> +					 struct intel_plane_state
> *new_plane_state);
>=20
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 339010384b86..283106558b2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -499,6 +499,19 @@ void intel_pipe_update_start(struct intel_atomic_sta=
te
> *state,
>  	if (intel_crtc_needs_vblank_work(new_crtc_state))
>  		intel_crtc_vblank_work_init(new_crtc_state);
>=20
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state, *new_plane_state;
> +		int i;
> +
> +		for_each_oldnew_intel_plane_in_state(state, plane,
> old_plane_state,
> +						     new_plane_state, i) {
> +			if (old_plane_state->uapi.crtc =3D=3D &crtc->base)
> +
> 	intel_plane_init_cursor_vblank_work(old_plane_state,
> +
> new_plane_state);
> +		}
> +	}
> +
>  	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
>=20
>  	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc-
> >base)))
> @@ -615,6 +628,24 @@ void intel_pipe_update_end(struct intel_atomic_state
> *state,
>  		new_crtc_state->uapi.event =3D NULL;
>  	}
>=20
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state;
> +		int i;
> +
> +		for_each_old_intel_plane_in_state(state, plane,
> old_plane_state, i) {
> +			if (old_plane_state->uapi.crtc =3D=3D &crtc->base &&
> +			    old_plane_state->unpin_work.vblank) {
> +				drm_vblank_work_schedule(&old_plane_state-
> >unpin_work,
> +
> drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> +							 false);
> +
> +				/* Remove plane from atomic state,
> cleanup/free is done from vblank worker. */
> +				memset(&state->base.planes[i], 0, sizeof(state-
> >base.planes[i]));
> +			}
> +		}
> +	}
> +
>  	/*
>  	 * Send VRR Push to terminate Vblank. If we are already in vblank
>  	 * this has to be done _after_ sampling the frame counter, as diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_cursor.c
> b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 36e2dcbe3614..a6dcc4d95ff2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -710,7 +710,7 @@ static bool intel_cursor_format_mod_supported(struct
> drm_plane *_plane,
>  	return format =3D=3D DRM_FORMAT_ARGB8888;
>  }
>=20
> -static void intel_cursor_unpin_work(struct kthread_work *base)
> +void intel_cursor_unpin_work(struct kthread_work *base)
>  {
>  	struct drm_vblank_work *work =3D to_drm_vblank_work(base);
>  	struct intel_plane_state *plane_state =3D diff --git
> a/drivers/gpu/drm/i915/display/intel_cursor.h
> b/drivers/gpu/drm/i915/display/intel_cursor.h
> index ce333bf4c2d5..e2d9ec710a86 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.h
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.h
> @@ -9,9 +9,12 @@
>  enum pipe;
>  struct drm_i915_private;
>  struct intel_plane;
> +struct kthread_work;
>=20
>  struct intel_plane *
>  intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe);
>=20
> +void intel_cursor_unpin_work(struct kthread_work *base);
> +
>  #endif
> --
> 2.43.0

