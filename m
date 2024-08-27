Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE14C960451
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 10:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F2810E235;
	Tue, 27 Aug 2024 08:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jv6ZTI9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E1D10E235;
 Tue, 27 Aug 2024 08:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724746993; x=1756282993;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2dIB4g0BmPS07ObRHURC1A1x5aK8de7JlVtujPwO2hY=;
 b=jv6ZTI9HQ+Yp8hWNyOILM13YOFQ/OtguOGODt/e/lQju6+3X8amKc2Dr
 MgcmsG160lUaH4R52K7CKO+IQvlTrw1vy+cYxB3ZV4VWDu3otxdXNVwgu
 Oi8esjyfBHnFs0zZqAb6ngdIKAPGiFYSBHLjJVypphAn4SWK1VKDgC0us
 1jIadcIPJelt+1PCFIXcLtJegsO9fq85cayhEf3t317ADXAJu8t/bRsY+
 qBVLIhQVlGZEGpcFNHTEe/rdvJyXW0MyDnTgJavmynk7JvBzjpptFvhcI
 qQUOROgH4K8mzvkThtRUc3/4QP6Acp/d5RrE5VseNBRrNqThx7glaBZh8 A==;
X-CSE-ConnectionGUID: 3wgO7x79SNaYBHMAXLkXPg==
X-CSE-MsgGUID: dYOZFLAPTjedvhMvNmtEog==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40712679"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40712679"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:23:13 -0700
X-CSE-ConnectionGUID: SVJOeXxgRiaIaMu4TGzZmQ==
X-CSE-MsgGUID: AKaJDlbVS8u5Tmo3wXxtJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="67663817"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 01:23:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 01:23:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 01:23:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 01:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fw/LvXSyDRbP8byrncqhd6tAR/yJy0+FSX4XhGTjKsNgxYZzekuUkC+816VCtwevDYDsE1pc/vyKUJKxRPS48hX6/P04Lw3JJZ9T8+u11mf4KnRMQY/TU/KZX/sMCA0knM8o2vAZVNOhPNTIc8a/zWgR2o15RI74G8/lhgjgBj6pao9Yak3p5Iop1a5rQ+LJgWROVA1dQhwJi68SprY7E13f+WTbPi/fu/bSWbdmWrPHAQ7SxrkH94pnoYchmbnVL/sg9KwkP/YlyTJbWWkn+33yK/T0ONxAMCKGEj5aUiyLW+WBYLXFA1NvTgjO9aG/mSZnw40+sMoyU3UZhPNtOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PLoTI7VowfpcxSzyDVyTwiMCGXD/C8I3UZqZCBIIjc=;
 b=e5UHpEOOSlqh7b9f3GHmbcJLFINkywxEGj0K4kW9U90eCh57zyYpIKBwgffodiq6W7iWSXa1j74x1fhBrvWEvTviUbC/vZJBSWGZ4uOAL2UYzR0CuX9Tb8Fnv1ZAbANF7pCvvtCVsaHsmOkFXDIjfnN1a/2ZBlqTREtAOExlQteEh4R7REuXE1Pc1Lwo1yLb3VxvxT+JRkA5wY7CK7A64LoIZUzRExyrod+3ApTzPiUtngddEM3sFZdzmmIwN4/tncCtBqtJ6r0BYlhJXzwvIehiFDidzj2YFdX6XnUvT3WrsILnWzo18wyiE8pdpJT9V6UAUhQBecSbIEHzoyBrDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB8720.namprd11.prod.outlook.com (2603:10b6:8:1aa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 27 Aug
 2024 08:23:10 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 08:23:09 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: BMG supports UHBR13.5
Thread-Topic: [PATCH] drm/i915/display: BMG supports UHBR13.5
Thread-Index: AQHa+E19ccFM3DauwkmyLvTUfA2Jp7I6uDCAgAADLRCAAATEAIAAAHAAgAADSAA=
Date: Tue, 27 Aug 2024 08:23:09 +0000
Message-ID: <IA0PR11MB7307C5A4705326DAF633C509BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
 <87a5gy1ki6.fsf@intel.com>
 <IA0PR11MB7307E3C377E8F3725937B7B2BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
 <874j761j6t.fsf@intel.com> <871q2a1j47.fsf@intel.com>
In-Reply-To: <871q2a1j47.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB8720:EE_
x-ms-office365-filtering-correlation-id: 7953d831-ce72-43f4-f3c7-08dcc6717c07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?W0/llSsUWtwLSxV0nL6ABJxHB/MBgPP35qGZhJAJr63OkeIzIFCtrtWf2+ii?=
 =?us-ascii?Q?4t9VRUEsagrzElyzjLcH56PbvLCSshuN1y8JEtnD3eOlDo1Z/pWIu3yAQ+Md?=
 =?us-ascii?Q?jBeQtdih4lS1Zaq6KKAmHEuBPDdrY3W2qCwG2dfNyxhzXCdCVVaaNg0BSxVZ?=
 =?us-ascii?Q?JGS+13Z7yMSsIIsr0saAebrIJzfhefxvX4jlWqJsnl3oRGAKHD982ReZVGYM?=
 =?us-ascii?Q?Jd6TIQ4uMCjLksrVTf0ghpxYRKkGMQfnzGIdX2Lc+30cJZOUEtIywwB1Qj1Q?=
 =?us-ascii?Q?4MExOziu8QQuYY6Aus/teK9w2sYOS4KEcBJ4x5T/C/vEVxknmsIYqhXzBb9p?=
 =?us-ascii?Q?zM1nGIxCWXEievETO9KFSPpIV6slffypkA+7u8FKV+6/LjFF9b93aQrz4eJR?=
 =?us-ascii?Q?LEL6AQQBaBC0FpThLoNXE2z76Z63F95S7e/VBlV3gtkxSRbzwolSbLalmLFY?=
 =?us-ascii?Q?IOgILnCyRhXifIC+FXJ+Jl1+jVCjfxDfcdttZL/834kxtbehz/Jwoz8oKXXc?=
 =?us-ascii?Q?vloSRB5jTo1hmPhb2puDv0bHHkFbsK2CX0o+yKUrQbguCbbnAd5a1rCCipf0?=
 =?us-ascii?Q?/EQxgZYzkrVBxxSzVV+lTyM8PU3bDdCPRdibQaC4sfdqUrVFlDgnrIOk61zC?=
 =?us-ascii?Q?NkvKMvG9BQ/dTN/nq476dM0zhjFapPrB+io368qbOaHVzvXh8bm3Hf6f2Lu2?=
 =?us-ascii?Q?Or145KCT8a8BNR9wuxBlLxenXsGZiz0t1n0WfjmU+E69CK9+O7yGdkoPEgff?=
 =?us-ascii?Q?EtltA77VTxpoty9eapoZD+4adLctIVl+OY1YAan5Stk9t7bRtRzgIEq9jQgu?=
 =?us-ascii?Q?gMmGJZL1ZdWI3CCuFF4/7koD42QtOT73P3I4nT7Vbm3+QdTtAAG8HzcbkiHw?=
 =?us-ascii?Q?MUiUF/P089f6jE5fikzd6d2j6YGgChjVrz5222uzOeXkSdbTMhc75CQLS8wf?=
 =?us-ascii?Q?luKJ6D79v53csrYZbN8chMvb9wI7vyY7Pd7sOXvQNchjladv3z1p3hfHYryE?=
 =?us-ascii?Q?y2ognWwJ6QDOvZpvUU7XDwMtCtHZ7Qm8M5Jx8XzgcUg5byy+mVw0DCNiL5Np?=
 =?us-ascii?Q?eKhLVgFVXEop7BDZZWxKMhupFu818Du4YUgpVDbqZMxwdzTqkoaX7AGEmuAE?=
 =?us-ascii?Q?0JGRh60WK0nuRLBuiN5qT/5D9Io5HfbgDlPNBMxETNApM4QvL/n9k5smEJxt?=
 =?us-ascii?Q?OzFjI+k8eSJpd41RiC7BkTCJyHVBYQNMZ0Qy9XU2ZSkhEX1eCS5r8HdaGlkn?=
 =?us-ascii?Q?BOy1fOAj3Ra4SOZRNPHxsIH77uNu7qUkdnfKgFNZD1zYg9Y11BVDgY/sApuz?=
 =?us-ascii?Q?VMPHNS9FhVWK9/I0cYeJbC0EMhY5BZF5B+4CHpH7IFX2DrJQkGHmy232cCLK?=
 =?us-ascii?Q?xavnI3/5SKeWcztPdIU4Q+rYnrokOKxYMf0aZAXBIVQBj1ebqA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jlxLJCLR/Eq8X6T6rI0LdAxbs9wCKsoHtBVpxCj4oD1Yaq6xJCA/XKLS2NJQ?=
 =?us-ascii?Q?Eu2Niqd4yfEcAaJvZDnsYNnPTuIUiupWWM9L83D5KIy+eiX3vWsXTC6ujjS9?=
 =?us-ascii?Q?fJ1caqaCI6jDeUItsE1FqvjHGcg6jhh6qnNWc4bESKOlmL5gy/IpLdfk0B3c?=
 =?us-ascii?Q?BvQCbRndlDzF0durBgly6Zldn1zcdzx2dQbNsWbk50Awm6KfbqfOrcy9zsGi?=
 =?us-ascii?Q?blKIgHlOjM6lDsSP7EupbzkPqCP28NKYJ7mc+/v4fa3wjJ44MP7t1X2zxwf5?=
 =?us-ascii?Q?z+uBs2zQYws+7Y8+9d01/xdnup4ZwOJ0xjoYX/xFR/PVR6RaTPzXIDzdIkg8?=
 =?us-ascii?Q?IXvhGhoGSct2N0I0ynw/UIhLyedHV60rJ+hCqKFJ6DMzvpBGM1kHd682a1B1?=
 =?us-ascii?Q?6nAXQUS6OHuWcyKki7+WKo6b4DGWmQShOgq7cyglkJH25Fzd0W8l42gWe91b?=
 =?us-ascii?Q?yjM/CJeWL3U+S+t5v+pxf5aSh+r2xzt4AT1GMo0z6vdVvZbDitJ31tE2StIr?=
 =?us-ascii?Q?2wXMri9530oWs6WqTntvQTLs/LNOtglqOrJ2KQmd9IGTkJmjpwFCSwVe9VYv?=
 =?us-ascii?Q?ujaCggWEQHJdPDJteUH3GSvtexEpSddSiqfr2OghdCx3vxuknKFN9CHYoGYY?=
 =?us-ascii?Q?+lITURlFB18cVtncrS1ZzOs/M0O/fykYMXKXPzF4YPkQUSyzrV5dMYPtVBGL?=
 =?us-ascii?Q?x7NcfG1ud7mkotcPko731gSrebz0JbprOFWb9KAvwOH4OMkB3fGOykkuKmGU?=
 =?us-ascii?Q?IgNjcTGuWF6pzeP383xx6Qx4w9q/GY5wwwauWKwXdCZ/tOe5EQd1hvT+MMAF?=
 =?us-ascii?Q?wlaOSfilRqgCvEeBUWys5AChT3rmZySLlICPsmFFg38+U0W8Dh0FMaPAbLWZ?=
 =?us-ascii?Q?K7pu1Odlh7TObZQkFmdWKG22cfDcypEZTLTWLpxbayHeghye1UCsXDts312u?=
 =?us-ascii?Q?XHjakL5ri/9eHIIbOyCTDK3QwgUjpEKqtHZaYNFmTUnw9Dzr9zL785MPl2d/?=
 =?us-ascii?Q?7g1rcaZQ3tHCytBrO/ahwRGE6VdRA7ILREkJs6RL1GRsOYn6NFvXuzc6NgFo?=
 =?us-ascii?Q?1Yis2YCdmxEs/YYvtKpd6F5ALd+143KiXEMr1mBIKqj5lg5IZvED9toj3nJM?=
 =?us-ascii?Q?5+50ev0oCnrjNQMaaFIXUN17hzP/Fim9lRVVeC1CkItvNO9jiE1D76KQeBMH?=
 =?us-ascii?Q?6VSd5B3ttYwa2VJsDluT374VXWhj4xrxE2L9YbeX0UvJWNmO5XNTIl/GvvY3?=
 =?us-ascii?Q?3tHp+EUr2We7o2NkrgRZTp3pQj47iwbp5E3XP5d4Dh2ZT8oXPNPZPTPDYun/?=
 =?us-ascii?Q?v3CN5ypeWQE2x0KANIeJHUQZEHafC58tVY9ObpEII9bHhzubg9VHd108havB?=
 =?us-ascii?Q?2loIOnlwmzKIfe1t78/VoGoO9nH8G47gyam4ZvzOdRCJLnvs3r1yzSci0sQF?=
 =?us-ascii?Q?kblW1TMqUVg2zsmyowhPsHyYT8m6SBiAPEf0KbqEW8CPDX3EzF4TOYynxD/E?=
 =?us-ascii?Q?xPZHp33k/nCRFGNxzTbz7BiMkFKrYEyP71GywAU7SPLTvVmATd9oLaVQBBAa?=
 =?us-ascii?Q?QjVhjuz4Etm7b377YAcfSbEqNBDrfbSZ4fdM3fQiAJLioXvsyXYAdMBoN/qy?=
 =?us-ascii?Q?ymCKsAD9BIRqWp/r9K1JUrB59lZWJEiOlSd8m+BDxXio?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7953d831-ce72-43f4-f3c7-08dcc6717c07
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 08:23:09.4190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dICQE9G4NN2CRHllefagoGVo3MnmhLzJpbcJ7ST7m8rkPuKkYbmGw2cGds7+pK9UYXEFkDu4TzPDLrWDXC4Q4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8720
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
> Sent: Tuesday, August 27, 2024 1:41 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: BMG supports UHBR13.5
>=20
> On Tue, 27 Aug 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Tue, 27 Aug 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >>> -----Original Message-----
> >>> From: Jani Nikula <jani.nikula@linux.intel.com>
> >>> Sent: Tuesday, August 27, 2024 1:11 PM
> >>> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >>> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >>> Subject: Re: [PATCH] drm/i915/display: BMG supports UHBR13.5
> >>>
> >>> On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >>> > UHBR20 is not supported by battlemage and the maximum link rate
> >>> > supported is UHBR13.5
> >>> >
> >>> > HSD: 16023263677
> >>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >>> > ---
> >>> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
> >>> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >>> >
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > index 789c2f78826d..3232ec4b2889 100644
> >>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > @@ -528,6 +528,10 @@ static void
> >>> >  intel_dp_set_source_rates(struct intel_dp *intel_dp)  {
> >>> >  	/* The values must be in increasing order */
> >>> > +	static const int bmg_rates[] =3D {
> >>> > +		162000, 216000, 243000, 270000, 324000, 432000, 540000,
> >>> 675000,
> >>> > +		810000,	1000000, 1350000,
> >>> > +	};
> >>> >  	static const int mtl_rates[] =3D {
> >>> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000,
> >>> 675000,
> >>> >  		810000,	1000000, 2000000,
> >>> > @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp
> *intel_dp)
> >>> >  		    intel_dp->source_rates || intel_dp->num_source_rates);
> >>> >
> >>> >  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> >>> > -		source_rates =3D mtl_rates;
> >>> > -		size =3D ARRAY_SIZE(mtl_rates);
> >>> > +		if (IS_DGFX(dev_priv)) {
> >>>
> >>> Why dgfx instead of bmg? Should be explained in commit message at
> >>> the very least.
> >>>
> >> Likewise IS_DH2 / IS_MTL we don't have IS_BMG as its Display 14.1. One=
 of
> the way to differentiate this is DISPLAY < 14 are integrated and this BMG=
 is
> discrete and hence using IS_DGFX() for identifying BMG platform.
> >
> > But isn't dgfx completely incidental here?
>=20
> We can check for display 14.1 and we can check for IS_BATTLEMAGE().
>=20
Thanks, will use IS_BATTLEMAGE and since the platform check is available, I=
 don't think DISPLAY 14.1 may not be required at the moment.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> >
> >>
> >> Will add this in the commit message if not other comments and get Rb o=
n
> this patch.
> >>
> >> Thanks and Regards,
> >> Arun R Murthy
> >> -------------------
> >>
> >>> BR,
> >>> Jani.
> >>>
> >>> > +			source_rates =3D bmg_rates;
> >>> > +			size =3D ARRAY_SIZE(bmg_rates);
> >>> > +		} else {
> >>> > +			source_rates =3D mtl_rates;
> >>> > +			size =3D ARRAY_SIZE(mtl_rates);
> >>> > +		}
> >>> >  		max_rate =3D mtl_max_source_rate(intel_dp);
> >>> >  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >>> >  		source_rates =3D icl_rates;
> >>>
> >>> --
> >>> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
